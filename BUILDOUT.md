# TutorZero Full Buildout — Step-by-Step Execution Guide

> Every prompt below is copy-paste ready. Run them in order.
> Each phase builds on the previous one. Don't skip ahead.

---

## Phase 0: Pre-Flight Setup

### Step 0.1 — Configure Deployment

Open Claude Code in the TutorZero directory and run:

```
/setup-deploy
```

When prompted, confirm:
- Platform: Cloudflare Workers
- Production URL: (your workers.dev URL)
- Deploy command: `npx wrangler deploy`
- Health check: `GET /api/tutor/usage`

**Done when:** CLAUDE.md has a deploy config section.

---

### Step 0.2 — Baseline QA Report

```
/qa-only
```

When prompted for the URL, provide your production URL.

**Done when:** You have a QA report with health score and screenshots of all pages. This is your "before" snapshot.

---

### Step 0.3 — Security Audit

```
/cso
```

**Done when:** You have a security report. Save the output — it tells you which TODOS.md bugs are still open vs already fixed.

---

## Phase 1: Fix All Critical Bugs

Start a new Claude Code session (or continue the same one) and paste this prompt:

```
Fix all 7 bugs listed in TODOS.md. For each bug:

1. First verify if it's already been fixed in recent commits (check the actual code, don't assume)
2. If still broken, fix it with one atomic commit per bug
3. Run `npm run check` after each fix to verify the build passes
4. After all fixes, update TODOS.md to mark what was fixed and remove resolved items

The 7 bugs are:
1. Spoofable quota checks — AI endpoints trust caller-supplied userId/browserId
2. Non-atomic chat rate limiting — incrementChatUsage uses check-then-increment
3. Markdown rendering incomplete — FeedbackCard ExpandableFeedbackLayer uses whitespace-pre-line
4. Pro/Premium naming mismatch — backend "premium" vs frontend "pro"
5. ExplanationChat localStorage key — reads sat_user_data but AuthProvider doesn't write it
6. Browser ID inconsistency — tz_browser_id vs sat_browser_id
7. Missing server-side auth on explain-differently endpoint

Key files:
- Worker: TutorZero/src/worker/index.ts
- FeedbackCard: TutorZero/src/react-app/components/feedback/FeedbackCard.tsx
- ExplanationChat: TutorZero/src/react-app/components/feedback/ExplanationChat.tsx
- AITutor: TutorZero/src/react-app/pages/AITutor.tsx
- Next migration number: 14.sql in TutorZero/migrations/
```

### Phase 1 Verification

After bugs are fixed, run:

```
/qa
```

**Done when:** All bugs are fixed, TODOS.md is updated, and QA passes.

---

## Phase 2: Feature Buildout with Loki Mode

### Step 2.1 — Write the PRD

Paste this into Claude Code:

```
Create a file at TutorZero/.loki/prd.md with the following PRD content. Create the .loki directory if it doesn't exist.

---

# TutorZero Feature Buildout PRD

## Project Context
SAT tutoring web app deployed on Cloudflare Workers.
- Frontend: React 19 + Tailwind + Radix UI in src/react-app/
- Backend: Hono monolith in src/worker/index.ts (1600 lines)
- Database: D1 (SQLite) with 13 tables, migrations in migrations/
- Auth: Supabase Google OAuth
- Payments: Stripe ($9.99/mo, $79.99/yr)
- AI: OpenAI GPT-4o-mini
- All code in TutorZero/ subdirectory

## Constraints
- Do NOT modify .dev.vars or wrangler.json bindings
- All new D1 migrations go in TutorZero/migrations/ with sequential numbering (start at 14.sql or next available)
- All API routes MUST use authMiddleware or optionalAuthMiddleware
- npm run check MUST pass after every change (runs tsc + vite build + wrangler deploy --dry-run)
- npm run test MUST pass
- No new npm dependencies without explicit justification
- One logical change per commit
- Commit messages use conventional commits format (fix:, feat:, refactor:, test:, ci:)

## Feature 1: AI-Generated Study Plan [HIGH PRIORITY]

### Current State
StudyPlan.tsx (src/react-app/pages/StudyPlan.tsx) has a complete drag-and-drop weekly calendar UI with:
- 7-day grid with draggable study blocks
- Block completion toggling
- Week navigation
- Score progress bar
- Test date countdown
- Pro-only gating (free users see locked preview)

BUT it uses generateInitialWeekPlan() (lines 22-48) which produces hardcoded seeded data. No backend, no AI, no persistence.

### Requirements
1. Create study_plans D1 table:
   - id, user_id, week_start_date, plan_data (JSON), created_at, updated_at
   - Index on user_id + week_start_date

2. Add API endpoints:
   - POST /api/study-plan/generate — Auth + Pro required
     - Reads user's diagnostic results (user_diagnostic_results), skill scores (user_skill_scores), profile (target_score, test_date, study_hours_per_week)
     - Calls GPT-4o-mini to generate a personalized 7-day plan with topics weighted by weakness
     - Saves to study_plans table
     - Returns the plan
   - GET /api/study-plan — Auth required
     - Returns current week's plan (or most recent)
   - PATCH /api/study-plan/block/:blockId — Auth required
     - Toggle block completion
     - Update plan_data JSON in place

3. Wire StudyPlan.tsx to real API:
   - On mount: GET /api/study-plan. If no plan exists, show "Generate Plan" button
   - Generate button calls POST /api/study-plan/generate
   - Block completion calls PATCH endpoint
   - Remove generateInitialWeekPlan() function entirely
   - Keep all existing drag-and-drop UI

4. AI prompt for plan generation should consider:
   - Weakest topics get more study time
   - Respect study_hours_per_week preference
   - Balance math and reading/writing
   - Increase intensity as test date approaches
   - Max 500 tokens, temperature 0.7

## Feature 2: Worker Modularization [MEDIUM PRIORITY]

### Current State
src/worker/index.ts is a 1600-line monolith with all routes, middleware, helpers.

### Requirements
Split into modules with zero behavior change:
- src/worker/index.ts — imports and mounts all route groups, exports default app
- src/worker/routes/auth.ts — /api/users/me, /api/user/profile, /api/logout
- src/worker/routes/tutor.ts — /api/tutor/usage, /api/tutor/chat, /api/tutor/explain-differently
- src/worker/routes/chat.ts — /api/chat/usage, /api/chat
- src/worker/routes/progress.ts — /api/user/progress, /api/user/sessions, /api/user/diagnostic
- src/worker/routes/subscription.ts — /api/subscription, /api/subscription/checkout, /api/subscription/portal, /api/stripe/webhook
- src/worker/routes/anonymous.ts — /api/progress/:browserId, /api/anonymous/sessions, /api/anonymous/diagnostic
- src/worker/routes/study-plan.ts — /api/study-plan/* (new from Feature 1)
- src/worker/middleware/auth.ts — authMiddleware, optionalAuthMiddleware
- src/worker/lib/openai.ts — fetchOpenAI helper
- src/worker/lib/usage.ts — incrementTutorUsage, incrementChatUsage, getTutorUsage

Each route file exports a Hono sub-app. Verify with npm run check after refactor.

## Feature 3: Expanded Test Suite [MEDIUM PRIORITY]

### Current State
Only src/data/questions.test.ts exists (question bank validation).

### Requirements
Add tests using vitest + @testing-library/react (already in package.json):

1. Worker route tests (src/worker/__tests__/):
   - Auth routes: /api/users/me returns profile, rejects without token
   - Tutor routes: usage tracking, rate limiting, premium check
   - Subscription routes: checkout creates session, webhook processes events
   - Mock D1 with in-memory SQLite or simple object mocks

2. Component tests (src/react-app/__tests__/):
   - FeedbackCard: renders 3 explanation sections, Pro badge shows for free users
   - QuestionCard: displays question, options, handles selection
   - Timer: counts correctly, displays formatted time

3. Integration tests:
   - Auth middleware rejects invalid tokens
   - Rate limiting enforces daily/monthly caps

## Feature 4: GitHub Actions CI/CD [MEDIUM PRIORITY]

### Requirements
Create .github/workflows/ at the PROJECT ROOT (not inside TutorZero/):

1. .github/workflows/ci.yml — runs on push and PR to main:
   ```yaml
   - checkout
   - setup node 20
   - npm ci (in TutorZero/ directory)
   - npm run lint
   - npm run test
   - npm run check
   ```

2. .github/workflows/deploy.yml — runs on push to main (after CI passes):
   ```yaml
   - checkout
   - setup node 20
   - npm ci
   - npx wrangler deploy (in TutorZero/ directory)
   - requires secrets: CLOUDFLARE_API_TOKEN, CLOUDFLARE_ACCOUNT_ID
   ```

Document required GitHub secrets in the PR description.

## Feature 5: Question Quality Cleanup [LOW PRIORITY]

### Current State
~5% of questions have OCR garbage. A garbage density filter exists but some slip through.

### Requirements
1. Add stricter test assertions in questions.test.ts:
   - Flag questions with 3+ consecutive non-ASCII characters
   - Flag questions where any option is under 2 characters
   - Flag questions with unbalanced parentheses/brackets

2. Add a "Report Question" button to QuestionCard:
   - Small flag icon in corner
   - On click, saves question ID + reason to localStorage (no backend needed yet)
   - Shows "Reported" confirmation

---
```

**Done when:** The PRD file exists at `TutorZero/.loki/prd.md`.

---

### Step 2.2 — Launch Loki Mode

Open a NEW terminal and start Claude Code with dangerous permissions:

```bash
cd ~/Documents/TutorZero
claude --dangerously-skip-permissions
```

Then paste this prompt:

```
Loki Mode

Use the PRD at TutorZero/.loki/prd.md. Build all 5 features in priority order.

After each feature, run npm run check and npm run test to verify.

Commit atomically — one logical change per commit with conventional commit messages.
```

**Control points while Loki is running:**
- Create `TutorZero/.loki/PAUSE` to pause and review progress
- Create `TutorZero/.loki/STOP` to halt completely
- Check `TutorZero/.loki/state/orchestrator.json` to see current phase

**Done when:** Loki Mode reports completion. Then verify:

```bash
cd TutorZero && npm run check && npm run test
```

---

### Step 2.3 — Review Loki Mode Output

In a normal Claude Code session, paste:

```
Review all commits made by Loki Mode. Run git log --oneline to see them.
For each commit:
1. Does npm run check still pass?
2. Does npm run test still pass?
3. For the worker modularization — verify zero behavior change by diffing API routes
4. For the study plan — verify the endpoint uses authMiddleware + premium check
5. For CI/CD — verify the workflow files are at the project root .github/workflows/

If anything is broken, fix it.
```

---

## Phase 3: Comprehensive QA

### Step 3.1 — Full QA Sweep

```
/qa
```

When prompted, provide the production URL. The QA skill will:
- Test all anonymous, authenticated, and Pro user flows
- Find and fix bugs automatically
- Commit each fix atomically with before/after screenshots

**Specific flows to request if not covered automatically:**

```
Make sure to test these specific flows:
1. Landing page -> Start Practice -> answer 5 questions -> check feedback renders with markdown
2. Diagnostic test -> complete all 20 questions -> verify score estimation
3. AI Tutor -> send messages -> verify markdown rendering and usage counter
4. Study Plan -> verify AI-generated plan loads (or generate button appears)
5. Pricing -> click upgrade -> verify Stripe checkout redirect
6. Settings -> verify profile and subscription display
7. Mobile responsive at 375px width for all pages
8. Onboarding flow for new users
```

---

### Step 3.2 — Design Review

```
/design-review
```

**Done when:** Visual issues are fixed with before/after evidence.

---

## Phase 4: Ship and Deploy

### Step 4.1 — Ship

```
/ship
```

This will lint, test, build, review diff, bump version, update changelog, and create a PR.

---

### Step 4.2 — Land and Deploy

```
/land-and-deploy
```

This merges the PR, deploys to Cloudflare Workers, and verifies production health.

---

### Step 4.3 — Update Documentation

```
/document-release
```

Updates README, CLAUDE.md, TODOS.md, and CHANGELOG to reflect what shipped.

---

## Phase 5: Production Monitoring

### Step 5.1 — Canary Monitoring

```
/canary
```

Watches production for console errors, takes screenshots, compares against pre-deploy baselines.

---

### Step 5.2 — Performance Benchmarks

```
/benchmark
```

Establishes baselines for page load times and Core Web Vitals.

---

### Step 5.3 — Recurring QA (Optional)

```
/loop 30m /qa-only
```

Polls production every 30 minutes with report-only output.

---

## Quick Reference: Skill Cheat Sheet

| Skill | What it does | When to use |
|-------|-------------|-------------|
| `/setup-deploy` | Configure deploy settings | Once, before first ship |
| `/qa-only` | QA report without fixes | Baseline snapshots |
| `/qa` | QA + auto-fix bugs | After code changes |
| `/cso` | Security audit | Before fixing security bugs |
| `/ship` | Lint, test, build, create PR | When ready to deploy |
| `/land-and-deploy` | Merge PR + deploy + verify | After /ship |
| `/design-review` | Visual audit + fixes | After QA, before ship |
| `/document-release` | Update all docs | After deploying |
| `/canary` | Post-deploy monitoring | After every deploy |
| `/benchmark` | Performance baselines | After deploy, before PRs |
| `/review` | Code review a PR | Before merging |
| `/investigate` | Debug a specific bug | When something breaks |
| `/browse` | Open headless browser | Manual testing |
| `Loki Mode` | Autonomous multi-agent build | Big feature buildouts |

---

## GitHub Secrets Needed (for CI/CD)

After Phase 2, go to GitHub repo Settings > Secrets and add:
- `CLOUDFLARE_API_TOKEN` — from Cloudflare dashboard > API Tokens
- `CLOUDFLARE_ACCOUNT_ID` — from Cloudflare dashboard > Overview

---

## Notes

- Bugs 5, 6, 7 from TODOS.md may already be fixed by recent commits — Phase 1 verifies first
- Loki Mode requires `--dangerously-skip-permissions` — review all output carefully
- Always run `npm run check` after any code changes (it does tsc + vite build + wrangler dry-run)
- The PRD for Loki Mode is a separate file — edit it before launching if you want to change scope
