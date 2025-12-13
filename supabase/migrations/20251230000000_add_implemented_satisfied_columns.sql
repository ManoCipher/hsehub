-- Add implemented and satisfied columns to audit_checklist_items table
ALTER TABLE audit_checklist_items
ADD COLUMN IF NOT EXISTS implemented BOOLEAN DEFAULT false,
ADD COLUMN IF NOT EXISTS satisfied BOOLEAN DEFAULT false;

-- Create indexes for better query performance
CREATE INDEX IF NOT EXISTS idx_audit_checklist_items_implemented ON audit_checklist_items (implemented);

CREATE INDEX IF NOT EXISTS idx_audit_checklist_items_satisfied ON audit_checklist_items (satisfied);