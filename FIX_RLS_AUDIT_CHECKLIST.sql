-- ============================================================
-- FIX RLS POLICY FOR AUDIT_CHECKLIST_ITEMS
-- Run this in your Supabase SQL Editor
-- ============================================================

-- Drop the restrictive INSERT policy
DROP POLICY IF EXISTS "Users can insert checklist items for their company's audits" ON audit_checklist_items;

-- Create the correct INSERT policy
CREATE POLICY "Users can insert checklist items for their company's audits" ON audit_checklist_items FOR INSERT
WITH
    CHECK (
        audit_id IN (
            SELECT id
            FROM audits
            WHERE
                company_id IN (
                    SELECT company_id
                    FROM employees
                    WHERE
                        user_id = auth.uid ()
                )
        )
    );

-- Also ensure the UPDATE policy exists
DROP POLICY IF EXISTS "Users can update checklist items for their company's audits" ON audit_checklist_items;

CREATE POLICY "Users can update checklist items for their company's audits" ON audit_checklist_items FOR
UPDATE USING (
    EXISTS (
        SELECT 1
        FROM audits
        WHERE
            audits.id = audit_checklist_items.audit_id
            AND audits.company_id IN (
                SELECT company_id
                FROM employees
                WHERE
                    user_id = auth.uid ()
            )
    )
)
WITH
    CHECK (
        EXISTS (
            SELECT 1
            FROM audits
            WHERE
                audits.id = audit_checklist_items.audit_id
                AND audits.company_id IN (
                    SELECT company_id
                    FROM employees
                    WHERE
                        user_id = auth.uid ()
                )
        )
    );

-- Verify the policies were created
SELECT
    schemaname,
    tablename,
    policyname,
    permissive,
    roles,
    cmd
FROM pg_policies
WHERE
    tablename = 'audit_checklist_items'
ORDER BY cmd, policyname;