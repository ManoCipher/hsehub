// @ts-nocheck - This is a Deno Edge Function with URL imports
import { serve } from "https://deno.land/std@0.168.0/http/server.ts";

// Use Brevo (Sendinblue) API instead of Resend
const BREVO_API_KEY = Deno.env.get("BREVO_API_KEY");

serve(async (req) => {
  // Handle CORS preflight requests
  if (req.method === "OPTIONS") {
    return new Response(null, {
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "POST, OPTIONS",
        "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
      },
    });
  }

  try {
    const { to, name, noteContent, from } = await req.json();

    if (!to || !name || !noteContent || !from) {
      return new Response(
        JSON.stringify({ error: "Missing required fields: to, name, noteContent, from" }),
        {
          status: 400,
          headers: { "Content-Type": "application/json" },
        }
      );
    }

    if (!BREVO_API_KEY) {
      console.error("BREVO_API_KEY not configured");
      return new Response(
        JSON.stringify({ error: "BREVO_API_KEY not configured" }),
        {
          status: 500,
          headers: { "Content-Type": "application/json" },
        }
      );
    }

    const emailHtml = `
      <!DOCTYPE html>
      <html>
        <head>
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <style>
            body {
              font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
              line-height: 1.6;
              color: #333;
              max-width: 600px;
              margin: 0 auto;
              padding: 20px;
            }
            .container {
              background-color: #ffffff;
              border-radius: 8px;
              padding: 40px;
              box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }
            h1 {
              color: #2563eb;
              margin-bottom: 20px;
            }
            p {
              margin-bottom: 16px;
            }
            .note-content {
              background-color: #f3f4f6;
              border-left: 4px solid #2563eb;
              padding: 16px;
              margin: 20px 0;
              border-radius: 4px;
              white-space: pre-wrap;
              word-wrap: break-word;
            }
            .from-info {
              color: #6b7280;
              font-size: 14px;
              margin-top: 8px;
            }
            .footer {
              margin-top: 40px;
              padding-top: 20px;
              border-top: 1px solid #e5e7eb;
              font-size: 12px;
              color: #6b7280;
            }
          </style>
        </head>
        <body>
          <div class="container">
            <h1>You were mentioned in a note</h1>
            <p>Hello ${name},</p>
            <p>You were mentioned in a note on HSE Hub:</p>
            <div class="note-content">
              ${noteContent}
            </div>
            <div class="from-info">
              <strong>From:</strong> ${from}
            </div>
            <p style="margin-top: 20px; font-size: 14px; color: #6b7280;">
              This is a notification that you were @mentioned in a note. Please log in to HSE Hub to view the full context.
            </p>
            <div class="footer">
              <p>This is an automated message from HSE Hub.</p>
            </div>
          </div>
        </body>
      </html>
    `;

    // Send email via Brevo API
    const res = await fetch("https://api.brevo.com/v3/smtp/email", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "api-key": BREVO_API_KEY,
      },
      body: JSON.stringify({
        sender: {
          name: "HSE Hub",
          email: "noreply@hse-hub.com", // This will work with Brevo's default sender
        },
        to: [
          {
            email: to,
            name: name,
          },
        ],
        subject: `You were mentioned in a note by ${from}`,
        htmlContent: emailHtml,
      }),
    });

    const data = await res.json();

    if (!res.ok) {
      console.error("Brevo API error:", data);
      return new Response(JSON.stringify({ error: "Failed to send email", details: data }), {
        status: res.status,
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*",
        },
      });
    }

    return new Response(JSON.stringify({ success: true, data }), {
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*",
      },
    });
  } catch (error) {
    console.error("Error in send-note-notification function:", error);
    return new Response(
      JSON.stringify({ error: error.message || "Internal server error" }),
      {
        status: 500,
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*",
        },
      }
    );
  }
});
