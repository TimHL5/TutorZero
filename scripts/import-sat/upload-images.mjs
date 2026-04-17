#!/usr/bin/env node
// Uploads sat_math_data/images/{qid}/* to Supabase Storage bucket `sat-images`
// at path {qid}/{filename}. Idempotent (upsert=true).
//
// Run: node --env-file=.env.local scripts/import-sat/upload-images.mjs

import { readdir, readFile, stat } from "node:fs/promises";
import { join } from "node:path";
import { createClient } from "@supabase/supabase-js";

const SUPABASE_ID = process.env.SUPABASE_ID;
const SUPABASE_SECRET_KEY = process.env.SUPABASE_SECRET_KEY;
if (!SUPABASE_ID || !SUPABASE_SECRET_KEY) {
  console.error("Missing SUPABASE_ID or SUPABASE_SECRET_KEY in env.");
  process.exit(1);
}

const SUPABASE_URL = `https://${SUPABASE_ID}.supabase.co`;
const BUCKET = "sat-images";
const CONCURRENCY = 12;
const IMAGES_ROOT = new URL("../../sat_math_data/images/", import.meta.url)
  .pathname;

const CONTENT_TYPES = {
  ".png": "image/png",
  ".jpg": "image/jpeg",
  ".jpeg": "image/jpeg",
  ".gif": "image/gif",
  ".svg": "image/svg+xml",
};

const client = createClient(SUPABASE_URL, SUPABASE_SECRET_KEY, {
  auth: { persistSession: false },
});
const storage = client.storage.from(BUCKET);

async function collectFiles() {
  // If argv has "{qid}/{name}" paths, upload only those. Otherwise walk all.
  const args = process.argv.slice(2).filter((a) => a.includes("/"));
  if (args.length) {
    return args.map((rel) => {
      const [qid, name] = rel.split("/", 2);
      const ext = name.slice(name.lastIndexOf(".")).toLowerCase();
      return { qid, name, ext, path: join(IMAGES_ROOT, qid, name) };
    });
  }
  const qdirs = await readdir(IMAGES_ROOT, { withFileTypes: true });
  const files = [];
  for (const d of qdirs) {
    if (!d.isDirectory()) continue;
    const qid = d.name;
    const entries = await readdir(join(IMAGES_ROOT, qid), {
      withFileTypes: true,
    });
    for (const e of entries) {
      if (!e.isFile()) continue;
      const ext = e.name.slice(e.name.lastIndexOf(".")).toLowerCase();
      files.push({
        qid,
        name: e.name,
        ext,
        path: join(IMAGES_ROOT, qid, e.name),
      });
    }
  }
  return files;
}

async function uploadOne(file, attempt = 1) {
  const buf = await readFile(file.path);
  const storagePath = `${file.qid}/${file.name}`;
  const contentType = CONTENT_TYPES[file.ext] ?? "application/octet-stream";
  const { error } = await storage.upload(storagePath, buf, {
    contentType,
    upsert: true,
  });
  if (error) {
    const msg = String(error?.message ?? error);
    const transient = /bad gateway|gateway timeout|fetch failed|timeout|ECONNRESET|network/i.test(
      msg
    );
    if (transient && attempt < 5) {
      await new Promise((r) => setTimeout(r, 500 * 2 ** (attempt - 1)));
      return uploadOne(file, attempt + 1);
    }
    throw error;
  }
}

async function runWithLimit(items, limit, worker) {
  let i = 0;
  let uploaded = 0;
  let failed = 0;
  const total = items.length;
  const failures = [];

  async function runNext() {
    while (true) {
      const idx = i++;
      if (idx >= total) return;
      try {
        await worker(items[idx]);
        uploaded++;
      } catch (err) {
        failed++;
        failures.push({
          path: `${items[idx].qid}/${items[idx].name}`,
          error: String(err?.message ?? err),
        });
      }
      const done = uploaded + failed;
      if (done % 250 === 0 || done === total) {
        console.log(
          `  [${done}/${total}] uploaded=${uploaded} failed=${failed}`
        );
      }
    }
  }

  const workers = Array.from({ length: Math.min(limit, total) }, () =>
    runNext()
  );
  await Promise.all(workers);
  return { uploaded, failed, failures };
}

async function main() {
  await stat(IMAGES_ROOT);
  const files = await collectFiles();
  console.log(`Found ${files.length} image files across qdirs. Uploading...`);

  const t0 = Date.now();
  const { uploaded, failed, failures } = await runWithLimit(
    files,
    CONCURRENCY,
    uploadOne
  );
  const secs = ((Date.now() - t0) / 1000).toFixed(1);

  console.log(
    `\nDone in ${secs}s. uploaded=${uploaded} failed=${failed} total=${files.length}`
  );
  if (failures.length) {
    console.error(`\nFailures (${failures.length}):`);
    for (const f of failures.slice(0, 20)) {
      console.error(`  ${f.path}: ${f.error}`);
    }
    if (failures.length > 20) {
      console.error(`  ... and ${failures.length - 20} more`);
    }
    process.exit(1);
  }
}

main().catch((e) => {
  console.error("Fatal:", e);
  process.exit(1);
});
