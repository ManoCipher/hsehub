-- Migration: Add first_name and last_name to profiles table
-- Date: 2025-12-22
-- Description: Adds first_name and last_name as primary name fields while keeping full_name for backward compatibility

-- Add new columns to profiles table (nullable for backward compatibility)
ALTER TABLE profiles
ADD COLUMN IF NOT EXISTS first_name TEXT,
ADD COLUMN IF NOT EXISTS last_name TEXT;

-- Add column comments for documentation
COMMENT ON COLUMN profiles.first_name IS 'User first name (primary name field)';
COMMENT ON COLUMN profiles.last_name IS 'User last name (primary name field)';
COMMENT ON COLUMN profiles.full_name IS 'Full name (legacy field, used as fallback when first/last names are not set)';

-- Migrate existing full_name data to first_name and last_name
-- This splits the full_name on the first space
UPDATE profiles
SET 
  first_name = CASE 
    WHEN full_name IS NOT NULL AND full_name != '' THEN 
      SPLIT_PART(full_name, ' ', 1)
    ELSE NULL
  END,
  last_name = CASE 
    WHEN full_name IS NOT NULL AND full_name != '' AND POSITION(' ' IN full_name) > 0 THEN 
      SUBSTRING(full_name FROM POSITION(' ' IN full_name) + 1)
    ELSE NULL
  END
WHERE first_name IS NULL AND last_name IS NULL AND full_name IS NOT NULL;

-- Create a function to auto-update full_name when first_name or last_name changes
CREATE OR REPLACE FUNCTION update_profile_full_name()
RETURNS TRIGGER AS $$
BEGIN
  -- Update full_name based on first_name and last_name
  IF NEW.first_name IS NOT NULL OR NEW.last_name IS NOT NULL THEN
    NEW.full_name := TRIM(CONCAT(COALESCE(NEW.first_name, ''), ' ', COALESCE(NEW.last_name, '')));
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger to auto-update full_name
DROP TRIGGER IF EXISTS trigger_update_profile_full_name ON profiles;
CREATE TRIGGER trigger_update_profile_full_name
  BEFORE INSERT OR UPDATE OF first_name, last_name ON profiles
  FOR EACH ROW
  EXECUTE FUNCTION update_profile_full_name();

-- Verification query to check columns were added and data was migrated
SELECT
    id,
    email,
    first_name,
    last_name,
    full_name,
    created_at
FROM profiles
ORDER BY created_at DESC
LIMIT 10;
