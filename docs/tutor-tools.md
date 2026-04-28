# Tutor tools

The AI Tutor at `/tutor` (`src/react-app/pages/AITutor.tsx`) has 12 tools available via function calling. All tools are defined in `src/worker/tools/index.ts` and registered in the `tutorTools` array. The runner (`src/worker/agents/tool_runner.ts`) executes them in parallel per round; the tutor agent (`src/worker/agents/tutor.ts`) allows up to 6 rounds.

## Student context tools (auth required)

- **`getStudentProfile`** — name, estimated scores, target, test date, streak.
- **`getRecentSessions`** — recent practice/diagnostic sessions with accuracy.
- **`getWeakAreas`** — weaknesses from the latest diagnosis; falls back to skill scores.
- **`getRecentMistakes`** — recent wrong answers with topic, skill, difficulty.
- **`getRecentExplainerMisconceptions`** — patterns flagged by the Explainer agent.
- **`getDiagnosticResults`** — latest `ai_diagnoses` row (scores, weaknesses, summary).
- **`getStudyPlan`** — active `ai_study_plans` row, with today's focus extracted.

## Reference / action tools

- **`getQuestionDetails`** — full stem, options, answer, rationale by hex `questionId`.
- **`findSimilarQuestionsInBank`** — search `sat_questions` by skill/domain/difficulty.
- **`searchWeb`** — Tavily-backed web search. Always-on; used for SAT dates, score release, College Board policy, external study resources, general facts. See Tavily section below.
- **`calculateScoreProjection`** — deterministic math (no DB, no LLM); projects math/rw totals from current scores + hours/week + weeks until test.
- **`suggestPracticeSession`** — emits a proactive action button the student can click to start a session. Also fires a `suggested_action` SSE event that the frontend renders as a Link card below the assistant message.

## Environment variables

| Var | Required | Purpose |
|---|---|---|
| `OPENAI_API_KEY` | yes | All chat-completion calls. |
| `SUPABASE_SECRET_KEY`, `SUPABASE_ID`, `SUPABASE_PUBLISHABLE_KEY` | yes | Supabase auth + data. |
| `TAVILY_API_KEY` | no (recommended) | Enables `searchWeb`. When missing, the tool returns a "web search temporarily unavailable" response — tutor will still answer, just can't cite live sources. |

See `.env.local.example` for placeholders.

## Tavily free tier

- 1000 queries/month free ([tavily.com](https://tavily.com)).
- The prompt tells the tutor to reserve `searchWeb` for queries that actually need live info (dates, policy, external resources). Typical load: < 1 `searchWeb` call per student message.
- All search calls are logged as tool calls in the `ai_tutor_turns.tool_calls` JSONB, so usage can be audited at `/admin/agents`.

## Proactive actions (`suggested_action` SSE event)

`suggestPracticeSession` returns `{ suggestion: { label, rationale, url } }`. The runner intercepts this result (only for this tool name) and emits a second SSE event of type `suggested_action` alongside the normal `tool_result`. The frontend's `applyEvent` handler appends the suggestion to the current assistant message's `suggestedActions` array; render logic shows it as a clickable card between the message content and `FeedbackThumbs`.

URL shape:
- `skillSlug` set → `/practice/session?skills=<slug>` (plural — `/practice/session` accepts `?skills=<csv>` and `?topic=<slug>` but not singular `?skill=`).
- `topicSlug` set → `/practice/session?topic=<slug>`.
- Neither set → `/practice`.
