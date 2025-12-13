-- ============================================================
-- DIAGNOSTIC: Check why RLS is blocking
-- Run these queries one by one in Supabase SQL Editor
-- ============================================================

-- 1. Check your current user ID
SELECT auth.uid () as my_user_id;

-- 2. Check if you have an employee record
SELECT * FROM employees WHERE user_id = auth.uid ();

-- 3. Check your company_id
SELECT company_id FROM employees WHERE user_id = auth.uid ();

-- 4. Check if the audit exists and belongs to your company
SELECT
    a.id,
    a.title,
    a.company_id,
    a.iso_code,
    e.company_id as my_company_id,
    CASE
        WHEN a.company_id = e.company_id THEN 'MATCH ✓'
        ELSE 'NO MATCH ✗'
    END as company_match
FROM audits a
    CROSS JOIN (
        SELECT company_id
        FROM employees
        WHERE
            user_id = auth.uid ()
    ) e
WHERE
    a.id = 'ed491cec-50b6-4651-9c21-981ca476e69d';

-- ============================================================
-- FIX OPTIONS
-- ============================================================

-- OPTION 1: If you don't have an employee record, create one
-- Replace 'YOUR_COMPANY_ID' with your actual company_id
/*
INSERT INTO employees (user_id, company_id, full_name, email)
VALUES (
auth.uid(),
'YOUR_COMPANY_ID',
'Your Name',
'your.email@example.com'
);
*/

-- OPTION 2: Temporarily disable RLS (NOT RECOMMENDED FOR PRODUCTION!)
-- Only use this for testing/development
/*
ALTER TABLE audit_checklist_items DISABLE ROW LEVEL SECURITY;
*/

-- OPTION 3: Create a more permissive policy temporarily
/*
DROP POLICY IF EXISTS "Users can insert checklist items for their company's audits" ON audit_checklist_items;

CREATE POLICY "Users can insert checklist items for their company's audits" 
ON audit_checklist_items 
FOR INSERT
WITH CHECK (true); -- WARNING: This allows ANY authenticated user to insert!
*/

-- After inserting, you can restore the proper policy:
/*
DROP POLICY IF EXISTS "Users can insert checklist items for their company's audits" ON audit_checklist_items;

CREATE POLICY "Users can insert checklist items for their company's audits" 
ON audit_checklist_items 
FOR INSERT
WITH CHECK (
audit_id IN (
SELECT id FROM audits WHERE company_id IN (
SELECT company_id FROM employees WHERE user_id = auth.uid()
)
)
);
*/