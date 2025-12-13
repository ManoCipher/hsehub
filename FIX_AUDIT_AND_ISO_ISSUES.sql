-- ============================================================
-- FIX AUDIT DETAILS AND ISO SELECTION ISSUES
-- Run this SQL in your Supabase SQL Editor
-- ============================================================

-- STEP 1: Add missing columns to audit_checklist_items
-- ============================================================
ALTER TABLE audit_checklist_items
ADD COLUMN IF NOT EXISTS implemented BOOLEAN DEFAULT false,
ADD COLUMN IF NOT EXISTS satisfied BOOLEAN DEFAULT false;

-- Create indexes for better query performance
CREATE INDEX IF NOT EXISTS idx_audit_checklist_items_implemented ON audit_checklist_items (implemented);

CREATE INDEX IF NOT EXISTS idx_audit_checklist_items_satisfied ON audit_checklist_items (satisfied);

-- STEP 2: Check if you have ISO criteria data
-- ============================================================
-- Run this to see if you have ISO criteria imported:
SELECT iso_code, COUNT(*) as section_count
FROM iso_criteria_sections
GROUP BY
    iso_code;

-- If the above returns empty, you need to import ISO criteria first!
-- Go to Settings > Intervals and Deadlines > Import ISO Criteria

-- STEP 3: Check your company_iso_standards
-- ============================================================
-- Run this to see which ISOs are selected for your company:
SELECT c.name as company_name, cis.iso_code, cis.iso_name, cis.is_active, cis.is_custom
FROM
    company_iso_standards cis
    JOIN companies c ON c.id = cis.company_id
WHERE
    cis.is_active = true;

-- STEP 4: Check audit_checklist_items
-- ============================================================
-- Run this to see if your audits have checklist items:
SELECT
    a.title as audit_title,
    a.iso_code,
    COUNT(aci.id) as checklist_item_count
FROM
    audits a
    LEFT JOIN audit_checklist_items aci ON aci.audit_id = a.id
GROUP BY
    a.id,
    a.title,
    a.iso_code
ORDER BY a.created_at DESC;

-- STEP 5: If you have audits but no checklist items, regenerate them
-- ============================================================
-- You'll need to delete the old audit and create a new one after:
-- 1. Importing ISO criteria in Settings
-- 2. Running the migration above
-- 3. Selecting your ISO in Settings

-- STEP 6: Verify the columns exist
-- ============================================================
SELECT
    column_name,
    data_type,
    is_nullable
FROM information_schema.columns
WHERE
    table_name = 'audit_checklist_items'
    AND column_name IN ('implemented', 'satisfied')
ORDER BY ordinal_position;