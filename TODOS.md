# TODOS

## Audit all content rendering for markdown support
**What:** Check every place in the app that renders text from AI or enriched data sources and ensure it uses ChatMarkdown (or equivalent) instead of plain text with whitespace-pre-wrap.
**Why:** The AI chatbot fix only covered 3 surfaces (AITutor, ExplanationChat, FeedbackCard "Explain Differently"). Other surfaces (e.g., FeedbackCard detailed explanation at line 376, any future AI-generated content) may still render markdown syntax as literal text.
**Context:** The ChatMarkdown component now exists at src/react-app/components/ui/ChatMarkdown.tsx. Grep for `whitespace-pre-wrap` and `whitespace-pre-line` in the codebase to find remaining plain-text renders of potentially formatted content.
**Depends on:** Nothing. Can be done independently.

## Fix Pro/Premium subscription gating mismatch
**What:** The UI checks `subscriptionTier === "pro"` (FeedbackCard.tsx:26), the worker checks `tier === 'premium'` (index.ts:273, 504), and `/api/users/me` never returns a `subscriptionTier` field at all.
**Why:** Legit paid users could be locked out of Pro features because the frontend and backend use different tier names. This is a paying-customer-facing bug.
**Context:** Pick one canonical tier name ("premium" or "pro"), use it everywhere. Update the `/api/users/me` endpoint to return the subscription tier.
**Depends on:** Nothing.

## Add server-side auth to /api/tutor/explain-differently
**What:** The "Explain Differently" endpoint has no auth middleware and no entitlement check. It's a Pro feature gated only by the frontend UI.
**Why:** Anyone can call the endpoint directly via curl and burn OpenAI tokens. This is a cost exposure and security issue.
**Context:** Add the same premium check pattern used in `/api/tutor/chat`. Consider adding authMiddleware or at least the premium entitlement check.
**Depends on:** Fix Pro/Premium naming first.

## Fix ExplanationChat localStorage key for signed-in users
**What:** ExplanationChat reads `sat_user_data` from localStorage (ExplanationChat.tsx:36-47), but AuthProvider never writes that key (uses a different storage mechanism).
**Why:** Signed-in users silently fall back to anonymous browser-based tracking. Their usage limits and premium status won't be recognized in the ExplanationChat.
**Context:** Either update ExplanationChat to use the AuthProvider context (like AITutor does), or ensure AuthProvider writes to `sat_user_data`.
**Depends on:** Nothing.

## Fix spoofable quota checks on AI endpoints
**What:** All AI endpoints trust caller-supplied `userId` and `browserId` from the request body. There's no server-side validation that the userId matches the authenticated session.
**Why:** Anyone can spoof a paid userId to get unlimited messages, rotate browserIds to reset free quotas, or burn someone else's quota by sending their userId.
**Context:** Use the auth cookie / Supabase session to determine userId server-side. For anonymous users, consider rate-limiting by IP as a secondary check.
**Depends on:** Auth middleware changes.

## Consolidate anonymous browser ID keys
**What:** AITutor uses `tz_browser_id` (AITutor.tsx:40-47), ExplanationChat uses `sat_browser_id` (ExplanationChat.tsx:26-33). The same anonymous student gets two different identities.
**Why:** Usage limits, progress tracking, and personalization are inconsistent across the two chat surfaces. A student could hit limits on one surface while having fresh quota on the other.
**Context:** Pick one key name (recommend `tz_browser_id`), use it everywhere. Migrate existing `sat_browser_id` data if needed.
**Depends on:** Nothing.

## Non-atomic rate limiting on AI endpoints
**What:** The check-then-increment pattern (read count, check limit, then increment after response) uses separate DB operations with no transaction.
**Why:** Concurrent requests can all pass the limit check before any increment, overshooting the quota. At scale, this means uncontrolled OpenAI spend.
**Context:** Use a D1 transaction or a single atomic SQL statement (INSERT ... ON CONFLICT UPDATE with RETURNING) to check and increment in one operation. Low priority until traffic grows.
**Depends on:** Nothing.
