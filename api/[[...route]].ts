// Vercel serverless catch-all that mounts the Hono worker. The cross-directory
// import to ../src/worker/index does not resolve at runtime under
// "type": "module" because Vercel's @vercel/node builder skips its esbuild
// bundling step in that mode. scripts/build-api.mjs runs as part of
// vercel.json's buildCommand and replaces this file with a self-contained
// ESM bundle before deploy, so what's deployed does not need import resolution.

import { handle } from "hono/vercel";
import app from "../src/worker/index";

export default handle(app);
