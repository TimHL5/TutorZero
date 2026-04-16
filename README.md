# TutorZero — Your tutor. Zero cost.

Free, adaptive SAT prep web app. React 19 + Hono + Supabase + Stripe, deployed on Vercel.

## Development

```bash
npm install
npm run dev
```

## Scripts

- `npm run dev` — start Vite dev server
- `npm run build` — type-check and build for production
- `npm run test` — run Vitest test suite
- `npm run lint` — run ESLint
- `npm run knip` — find unused files, exports, and dependencies

## Project structure

- `src/react-app/` — React 19 + Vite frontend
- `src/worker/` — Hono API (shared between Vercel serverless and any future edge deploy)
- `api/[[...route]].ts` — Vercel serverless entry point that wraps the Hono app
- `src/data/` — compiled SAT question banks (TypeScript, generated from `SAT Questions/`)
- `scripts/` — Python pipeline for extracting questions from source PDFs into `src/data/`
- `supabase/` — Supabase migrations and config
