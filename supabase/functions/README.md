# Supabase Edge Functions - Email Service

This directory contains Supabase Edge Functions for the HSE Hub email system.

## Functions

### 1. `send-invitation-email`
Sends invitation emails to new team members with secure token links to view their notes.

**Endpoint**: `/send-invitation-email`

**Request Body**:
```json
{
  "to": "user@example.com",
  "name": "John Doe",
  "inviteUrl": "https://yourdomain.com/notes/abc123token"
}
```

### 2. `send-note-notification`
Sends notification emails when users are @mentioned in notes.

**Endpoint**: `/send-note-notification`

**Request Body**:
```json
{
  "to": "user@example.com",
  "name": "John Doe",
  "noteContent": "The note content with @mention",
  "from": "Jane Smith"
}
```

## Setup Instructions

### 1. Install Supabase CLI
```bash
npm install -g supabase
```

### 2. Login to Supabase
```bash
supabase login
```

### 3. Link to your project
```bash
supabase link --project-ref YOUR_PROJECT_REF
```

### 4. Set Environment Variables
You need to set the `RESEND_API_KEY` secret:

```bash
supabase secrets set RESEND_API_KEY=your_resend_api_key_here
```

### 5. Deploy Functions
```bash
# Deploy all functions
supabase functions deploy

# Or deploy individually
supabase functions deploy send-invitation-email
supabase functions deploy send-note-notification
```

### 6. Test Functions Locally
```bash
# Start local development
supabase functions serve

# Test with curl
curl -i --location --request POST 'http://localhost:54321/functions/v1/send-invitation-email' \
  --header 'Authorization: Bearer YOUR_ANON_KEY' \
  --header 'Content-Type: application/json' \
  --data '{"to":"test@example.com","name":"Test User","inviteUrl":"http://localhost:3000/notes/test123"}'
```

## Email Provider Setup

These functions use **Resend** as the email provider. To set up:

1. Go to [resend.com](https://resend.com) and create an account
2. Create an API key
3. Verify your domain (required for production)
4. Set the API key using the command above

**Note**: Update the `from` field in both functions with your verified domain:
```typescript
from: "HSE Hub <noreply@yourdomain.com>"
```

## Alternative Email Providers

If you prefer a different provider, modify the fetch call in both functions. Examples:

### SendGrid
```typescript
const res = await fetch("https://api.sendgrid.com/v3/mail/send", {
  method: "POST",
  headers: {
    "Content-Type": "application/json",
    Authorization: `Bearer ${SENDGRID_API_KEY}`,
  },
  body: JSON.stringify({
    personalizations: [{ to: [{ email: to }] }],
    from: { email: "noreply@yourdomain.com", name: "HSE Hub" },
    subject: "Your HSE Hub Notes",
    content: [{ type: "text/html", value: emailHtml }],
  }),
});
```

### AWS SES, Mailgun, etc.
Refer to their respective API documentation for implementation.

## Security

- Functions use CORS headers to allow cross-origin requests
- API keys are stored as Supabase secrets (never in code)
- Email content is sanitized and validated
- Rate limiting should be configured in production

## Monitoring

View function logs:
```bash
supabase functions logs send-invitation-email
supabase functions logs send-note-notification
```

## Troubleshooting

**Issue**: "RESEND_API_KEY not configured"
- **Solution**: Ensure you've set the secret using `supabase secrets set`

**Issue**: Emails not sending
- **Solution**: Check function logs for errors, verify domain is verified in Resend

**Issue**: CORS errors
- **Solution**: Ensure OPTIONS method handler is working, check browser console
