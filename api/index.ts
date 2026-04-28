// At deploy time scripts/build-api.mjs replaces this file with a self-contained
// ESM bundle (esbuild) so the cross-directory import below resolves under
// Node ESM strict resolution at runtime.

import { handle } from "hono/vercel";
import app from "../src/worker/index";

export const config = {
  runtime: "edge",
};

export default handle(app);
