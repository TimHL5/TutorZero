// Vercel serverless function that mounts the Hono worker. This is Hono's
// documented pattern: `api/index.ts` + a vercel.json rewrite that sends every
// `/api/*` path to `/api`. Hono then routes off the original request URL.

import { handle } from "hono/vercel";
import app from "../src/worker/index";

export default handle(app);
