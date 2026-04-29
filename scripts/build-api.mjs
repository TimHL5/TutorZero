#!/usr/bin/env node
// Pre-bundle the Vercel serverless function so cross-directory imports into
// src/worker/ resolve at runtime. Without bundling, ESM strict mode rejects
// the project's extension-less relative imports (~30 files), so we let esbuild
// inline everything into a single self-contained ESM module.
//
// Output is written in place over api/index.ts. The original is preserved at
// api/_index.ts.original (gitignored) for local re-runs / restore. Writing in
// place — instead of renaming the .ts away — avoids the "File not found" error
// Vercel raises when its function builder can't find the registered entry.

import { build } from "esbuild";
import { copyFile, readFile, writeFile, rm, mkdir } from "node:fs/promises";
import { existsSync } from "node:fs";
import path from "node:path";

const root = path.resolve(import.meta.dirname, "..");
const entry = path.join(root, "api", "index.ts");
const backup = path.join(root, "api", "_index.ts.original");
const tmpOut = path.join(root, "api", ".bundle.mjs");

async function run() {
  if (!existsSync(entry)) {
    console.error(`[build-api] missing entry: ${entry}`);
    process.exit(1);
  }

  if (!existsSync(backup)) await copyFile(entry, backup);

  // Always start the bundle from the pristine source — re-running on an
  // already-bundled file would double the banner and cause TS2300 duplicate
  // identifier errors at deploy time.
  await copyFile(backup, entry);

  console.log(`[build-api] bundling ${path.relative(root, entry)} → ${path.relative(root, tmpOut)}`);

  await build({
    entryPoints: [entry],
    bundle: true,
    platform: "node",
    format: "esm",
    target: "node22",
    outfile: tmpOut,
    packages: "external",
    banner: {
      // @ts-nocheck on the first line tells Vercel's post-bundle `tsc` pass
      // to skip type-checking this file. The bundled output is concatenated
      // generated JS — Hono's `Hono<AppEnv>` type parameters and per-handler
      // `c.get<...>("user")` annotations don't survive the inlining, so
      // every `c.get("user")` resolves to `unknown`, every destructured
      // tool arg widens to `{}`, and our `AgentError` extra fields disappear.
      // None of these are real bugs — esbuild has already produced valid JS
      // by this point. The original sources still get strict checks via
      // `tsc -b` during the Vite build, so suppression here is scoped only
      // to the generated artifact.
      js: "// @ts-nocheck\nimport { createRequire as __createRequire } from 'module'; const require = __createRequire(import.meta.url);",
    },
    logLevel: "info",
  });

  const bundled = await readFile(tmpOut, "utf8");
  await writeFile(entry, bundled, "utf8");
  await rm(tmpOut, { force: true });

  console.log(`[build-api] ${path.relative(root, entry)} replaced with ${(bundled.length / 1024).toFixed(1)} KB bundled output`);
}

await mkdir(path.join(root, "api"), { recursive: true });
run().catch((err) => {
  console.error("[build-api] failed:", err);
  process.exit(1);
});
