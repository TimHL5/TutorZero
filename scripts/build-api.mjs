#!/usr/bin/env node
// Pre-bundle the Vercel serverless function so Vercel's @vercel/node builder
// doesn't have to follow the cross-directory import into src/worker/. Without
// this, ESM resolution at runtime fails with ERR_MODULE_NOT_FOUND because
// `package.json` has `"type": "module"` and Vercel skips its esbuild bundling
// step under that mode.
//
// Output: api/index.mjs — a self-contained ESM bundle Vercel deploys as the
// function. The .ts source is renamed away first so Vercel only sees .mjs.

import { build } from "esbuild";
import { rm, rename, mkdir } from "node:fs/promises";
import { existsSync } from "node:fs";
import path from "node:path";

const root = path.resolve(import.meta.dirname, "..");
const srcEntry = path.join(root, "api", "index.ts");
const tmpEntry = path.join(root, "api", "_index.ts.bak");
const outFile = path.join(root, "api", "index.mjs");

async function run() {
  if (!existsSync(srcEntry)) {
    console.error(`[build-api] missing entry: ${srcEntry}`);
    process.exit(1);
  }

  console.log(`[build-api] bundling ${path.relative(root, srcEntry)} → ${path.relative(root, outFile)}`);

  // 1) Bundle .ts entry into a single self-contained ESM file.
  await build({
    entryPoints: [srcEntry],
    bundle: true,
    platform: "node",
    format: "esm",
    target: "node22",
    outfile: outFile,
    // Let Vercel's runtime resolve npm deps from node_modules. Bundling them
    // would balloon the function and lose dynamic-require support some
    // packages need (e.g. native bindings).
    packages: "external",
    // Required for ESM output that uses dynamic require() shims.
    banner: {
      js: "import { createRequire as __createRequire } from 'module'; const require = __createRequire(import.meta.url);",
    },
    logLevel: "info",
  });

  // 2) Rename the .ts source out of api/ so Vercel sees only the .mjs bundle.
  //    (Vercel deploys every .ts/.js/.mjs in api/ as a separate function.)
  await rm(tmpEntry, { force: true });
  await rename(srcEntry, tmpEntry);
  console.log(`[build-api] moved ${path.relative(root, srcEntry)} → ${path.relative(root, tmpEntry)} (will not be deployed)`);
  console.log(`[build-api] done`);
}

await mkdir(path.join(root, "api"), { recursive: true });
run().catch((err) => {
  console.error("[build-api] failed:", err);
  process.exit(1);
});
