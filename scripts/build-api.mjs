#!/usr/bin/env node
// Pre-bundle the Vercel serverless function so cross-directory imports into
// src/worker/ resolve at runtime. Vercel's @vercel/node builder skips its
// esbuild bundling step under `"type": "module"` (set in package.json), so
// without this the deployed function crashes on cold start with
// ERR_MODULE_NOT_FOUND when it tries to load `../src/worker/index`.
//
// Strategy: bundle the entry into a self-contained ESM module, then write
// the result back over the source file in place. The source is preserved at
// `_route.ts.original` (gitignored) so a re-run or local restore can recover.
// Writing in place — instead of renaming the .ts away — avoids the
// "File not found: api/[[...route]].ts" error Vercel raises when the
// function-builder step can't locate the original entry it registered.

import { build } from "esbuild";
import { copyFile, readFile, writeFile, rm, mkdir } from "node:fs/promises";
import { existsSync } from "node:fs";
import path from "node:path";

const root = path.resolve(import.meta.dirname, "..");
const entry = path.join(root, "api", "[[...route]].ts");
const backup = path.join(root, "api", "_route.ts.original");
const tmpOut = path.join(root, "api", ".bundle.mjs");

async function run() {
  if (!existsSync(entry)) {
    console.error(`[build-api] missing entry: ${entry}`);
    process.exit(1);
  }

  if (!existsSync(backup)) await copyFile(entry, backup);

  console.log(`[build-api] bundling ${path.relative(root, entry)} → ${path.relative(root, tmpOut)}`);

  await build({
    entryPoints: [entry],
    bundle: true,
    platform: "node",
    format: "esm",
    target: "node22",
    outfile: tmpOut,
    // Keep node_modules deps external — Vercel resolves them at runtime.
    packages: "external",
    // CommonJS shim so bundled deps that call require() still work in ESM.
    banner: {
      js: "import { createRequire as __createRequire } from 'module'; const require = __createRequire(import.meta.url);",
    },
    logLevel: "info",
  });

  const bundled = await readFile(tmpOut, "utf8");
  await writeFile(entry, bundled, "utf8");
  await rm(tmpOut, { force: true });

  console.log(`[build-api] ${path.relative(root, entry)} replaced with ${(bundled.length / 1024).toFixed(1)} KB bundled output`);
  console.log(`[build-api] original preserved at ${path.relative(root, backup)} (gitignored)`);
}

await mkdir(path.join(root, "api"), { recursive: true });
run().catch((err) => {
  console.error("[build-api] failed:", err);
  process.exit(1);
});
