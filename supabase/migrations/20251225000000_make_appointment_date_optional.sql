-- Make appointment_date optional in health_checkups table
-- This allows check-ups to be created without an appointment date initially
-- The appointment date can be added later when scheduled

-- Drop the NOT NULL constraint on appointment_date
ALTER TABLE public.health_checkups 
ALTER COLUMN appointment_date DROP NOT NULL;

-- Update the comment to reflect the change
COMMENT ON COLUMN public.health_checkups.appointment_date IS 'Optional appointment date - can be set when scheduling the check-up';
