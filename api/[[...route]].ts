// Vercel serverless catch-all that mounts the Hono worker. The `[[...route]]`
// filename pattern triggers Vercel's auto-bundling for the function (esbuild
// follows the cross-directory import into src/worker/). A plain `index.ts`
// here would skip bundling under "type": "module" and crash with
// ERR_MODULE_NOT_FOUND at runtime — see commits aab0c99d / l0izz93f0 deploy.

import { handle } from "hono/vercel";
import app from "../src/worker/index";

export default handle(app);
