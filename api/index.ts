// Vercel serverless function that mounts the Hono worker. Under Vite (not
// Next.js), Vercel routes /api requests directly to api/index.ts and does
// not expand [[...catch-all]] filenames; vercel.json's `/api/(.*) -> /api`
// rewrite funnels every API path to this single function, and Hono routes
// off the original request URL (rewrites preserve the URL).
//
// At deploy time scripts/build-api.mjs replaces this file with a self-
// contained ESM bundle, because Vercel's @vercel/node builder skips its
// esbuild bundling step under "type": "module" — without the prebundle the
// cross-directory import to ../src/worker/ fails with ERR_MODULE_NOT_FOUND.

import { handle } from "hono/vercel";
import app from "../src/worker/index";

export default handle(app);
