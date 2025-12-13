-- Create member_invitation_tokens table
CREATE TABLE IF NOT EXISTS member_invitation_tokens (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  team_member_id UUID REFERENCES team_members(id) ON DELETE CASCADE,
  token TEXT UNIQUE NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  expires_at TIMESTAMPTZ DEFAULT NOW() + INTERVAL '30 days',
  used_at TIMESTAMPTZ NULL
);

-- Create indexes for fast token lookup
CREATE INDEX IF NOT EXISTS idx_member_tokens_token ON member_invitation_tokens(token);
CREATE INDEX IF NOT EXISTS idx_member_tokens_team_member ON member_invitation_tokens(team_member_id);

-- Add RLS (Row Level Security) policies
ALTER TABLE member_invitation_tokens ENABLE ROW LEVEL SECURITY;

-- Allow public read for valid tokens (needed for public notes page)
CREATE POLICY "Public can read valid tokens" ON member_invitation_tokens
  FOR SELECT
  USING (expires_at > NOW());

-- Only authenticated users can insert/update tokens
CREATE POLICY "Authenticated users can insert tokens" ON member_invitation_tokens
  FOR INSERT
  WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can update tokens" ON member_invitation_tokens
  FOR UPDATE
  USING (auth.role() = 'authenticated');

-- Comments for documentation
COMMENT ON TABLE member_invitation_tokens IS 'Stores secure tokens for member email invitations and public notes access';
COMMENT ON COLUMN member_invitation_tokens.token IS 'Secure random token for URL access';
COMMENT ON COLUMN member_invitation_tokens.expires_at IS 'Token expiration date (default 30 days from creation)';
COMMENT ON COLUMN member_invitation_tokens.used_at IS 'First time the token was used to access notes';
