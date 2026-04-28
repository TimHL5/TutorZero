// Vercel serverless catch-all that mounts the Hono worker.
// Restored after accidental deletion in commit 3b4cc686 ("Task 1"). Every
// `/api/*` request hits this file thanks to vercel.json's rewrite rule.

import { handle } from "hono/vercel";
import app from "../src/worker/index";

export default handle(app);
