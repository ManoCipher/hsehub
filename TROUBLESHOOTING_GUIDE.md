# 🔧 TROUBLESHOOTING GUIDE - Audit Details & ISO Selection Issues

## Issues to Fix:

1. ❌ ISO criteria selected in Settings unselects on page reload
2. ❌ Audit Details page doesn't show the checklist table

## Root Causes:

1. **Missing Database Columns**: The `implemented` and `satisfied` columns don't exist in `audit_checklist_items`
2. **Missing ISO Criteria Data**: ISO criteria haven't been imported into the database
3. **Audit Created Before Columns Existed**: Existing audits don't have the new columns

---

## 🚀 STEP-BY-STEP FIX

### Step 1: Run SQL Migration ⚠️ REQUIRED

Open Supabase SQL Editor and run:

```sql
ALTER TABLE audit_checklist_items
ADD COLUMN IF NOT EXISTS implemented BOOLEAN DEFAULT false,
ADD COLUMN IF NOT EXISTS satisfied BOOLEAN DEFAULT false;

CREATE INDEX IF NOT EXISTS idx_audit_checklist_items_implemented ON audit_checklist_items(implemented);
CREATE INDEX IF NOT EXISTS idx_audit_checklist_items_satisfied ON audit_checklist_items(satisfied);
```

### Step 2: Check Browser Console 🔍

1. Open browser DevTools (F12)
2. Go to Settings page
3. Look for these console logs:
   - `"Fetched ISO standards from DB:"` - Should show your selected ISOs
   - `"Selected ISOs:"` - Should show array like `["ISO_45001"]`
   - `"Fetching criteria for:"` - Should show each ISO code

### Step 3: Import ISO Criteria (If Not Done Yet) 📥

1. Go to **Settings** page
2. Click **"Intervals and Deadlines"** in left sidebar
3. Scroll down to **"Audits & checklists"** section
4. You should see buttons to import ISO criteria
5. Click **"Import ISO 45001"** (or your desired ISO)
6. Wait for success message

### Step 4: Select Your ISO ✅

1. In the same section, you'll see ISO checkboxes
2. Click on **ISO 45001** (or your desired ISO)
3. It should turn blue with "active" label
4. Check console for: `"Fetching criteria for: ISO_45001"`

### Step 5: Verify ISO Selection Persists 🔄

1. Reload the page (F5)
2. The ISO should still be selected (blue background)
3. Check console logs again
4. If it persists ✅ - Issue fixed!

### Step 6: Create New Audit (or Recreate Old One) 📋

**Important**: Old audits created before the fix won't have checklist items!

1. Go to **Audits** page
2. Click **"Create Audit"**
3. Fill in:
   - Title: "Test Audit"
   - ISO Code: Select "ISO_45001" (the one you imported)
   - Scheduled Date: Today
4. Click **Create**
5. Check console for:
   - `"Generating checklist for audit:"`
   - `"Found sections:"` - Should show number > 0
   - `"Creating checklist items:"` - Should show number > 0

### Step 7: Open Audit Details 👁️

1. Click **"Details"** button on your new audit
2. You should see:
   - Audit File Explanation table
   - Main sections (1. Context of organization, etc.)
   - Subsections with questions
   - Implemented and Satisfied checkboxes

---

## 🐛 Still Having Issues?

### Issue: ISO Unselects on Reload

**Check in Browser Console:**

```
"Fetched ISO standards from DB:" []  ← This means nothing in database!
```

**Solution:**

1. Make sure you CLICKED the ISO checkbox (it saves to database)
2. Check in Supabase dashboard: `company_iso_standards` table
3. Should have row with your `company_id` and `iso_code: "ISO_45001"`

### Issue: No Checklist Items in Audit Details

**Check in Browser Console:**

```
"Checklist items loaded: 0 items"  ← No items!
```

**Possible Causes:**

1. ❌ **ISO Criteria Not Imported**
   - Solution: Import in Settings
2. ❌ **Audit Created with Wrong ISO Code**
   - Solution: Delete and recreate audit
3. ❌ **Audit Created Before ISO Criteria Import**
   - Solution: Delete old audit, import criteria, create new audit

### Issue: Table Shows But Checkboxes Don't Save

**Check:**

1. Run the SQL migration above
2. Check console for errors when clicking checkbox
3. Verify columns exist:

```sql
SELECT column_name FROM information_schema.columns
WHERE table_name = 'audit_checklist_items'
AND column_name IN ('implemented', 'satisfied');
```

---

## 📊 Diagnostic SQL Queries

Run these in Supabase SQL Editor to diagnose issues:

### Check if ISO Criteria is Imported:

```sql
SELECT iso_code, COUNT(*) as sections
FROM iso_criteria_sections
GROUP BY iso_code;
```

**Expected**: Should show `ISO_45001`, `ISO_14001`, etc. with counts

### Check Selected ISOs:

```sql
SELECT cis.iso_code, cis.is_active, c.name as company
FROM company_iso_standards cis
JOIN companies c ON c.id = cis.company_id
WHERE cis.is_active = true;
```

**Expected**: Should show your selected ISOs

### Check Audit Checklist Items:

```sql
SELECT
  a.title,
  a.iso_code,
  COUNT(aci.id) as items,
  COUNT(CASE WHEN aci.implemented THEN 1 END) as implemented_count,
  COUNT(CASE WHEN aci.satisfied THEN 1 END) as satisfied_count
FROM audits a
LEFT JOIN audit_checklist_items aci ON aci.audit_id = a.id
GROUP BY a.id, a.title, a.iso_code;
```

**Expected**: Should show audits with item counts > 0

---

## ✅ Success Checklist

- [ ] SQL migration run successfully
- [ ] ISO criteria imported (check Supabase dashboard)
- [ ] ISO selected in Settings (blue background, says "active")
- [ ] ISO selection persists after page reload
- [ ] Console shows: "Fetched ISO standards from DB: [...]"
- [ ] Console shows: "Selected ISOs: ['ISO_45001']"
- [ ] New audit created with ISO_45001
- [ ] Console shows: "Creating checklist items: [number > 0]"
- [ ] Audit Details page shows table with criteria
- [ ] Checkboxes in table work and save

---

## 🆘 Contact Points

If still having issues, provide:

1. Screenshots of browser console logs
2. Screenshot of Supabase `company_iso_standards` table
3. Screenshot of Supabase `iso_criteria_sections` table (first few rows)
4. Screenshot of Audit Details page

The debugging console logs will help identify exactly where the issue is!
