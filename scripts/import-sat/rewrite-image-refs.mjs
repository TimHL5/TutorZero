#!/usr/bin/env node
// Rewrite `images/{qid}/` in sat_math_data per-question JSONs to full Storage
// public URLs, then rebuild _consolidated/*.json.
//
// Idempotent: running twice leaves the URLs unchanged.
//
// Run: node --env-file=.env.local scripts/import-sat/rewrite-image-refs.mjs

import { readFile, writeFile, readdir } from "node:fs/promises";
import { join } from "node:path";

const SUPABASE_ID = process.env.SUPABASE_ID;
if (!SUPABASE_ID) {
  console.error("Missing SUPABASE_ID in env.");
  process.exit(1);
}
const STORAGE_PREFIX = `https://${SUPABASE_ID}.supabase.co/storage/v1/object/public/sat-images/`;

const DATA_DIR = new URL("../../sat_math_data/", import.meta.url).pathname;
const DOMAINS = [
  "algebra",
  "advanced_math",
  "problem_solving_and_data_analysis",
  "geometry_and_trigonometry",
];

function rewriteString(s, qid) {
  if (!s) return { value: s, changed: false };
  const needle = `images/${qid}/`;
  if (!s.includes(needle)) return { value: s, changed: false };
  return { value: s.split(needle).join(`${STORAGE_PREFIX}${qid}/`), changed: true };
}

function rewriteRecord(d) {
  if (!d || typeof d !== "object") return false;
  const qid = d.questionId;
  if (!qid || !d.image_count || d.image_count === 0) return false;
  let changed = false;
  for (const field of ["stem", "stimulus", "rationale"]) {
    if (typeof d[field] === "string") {
      const r = rewriteString(d[field], qid);
      if (r.changed) {
        d[field] = r.value;
        changed = true;
      }
    }
  }
  if (Array.isArray(d.answerOptions)) {
    for (const opt of d.answerOptions) {
      if (opt && typeof opt.content === "string") {
        const r = rewriteString(opt.content, qid);
        if (r.changed) {
          opt.content = r.value;
          changed = true;
        }
      }
    }
  }
  return changed;
}

async function main() {
  const perDomain = {};
  let rewrittenCount = 0;
  let totalRecords = 0;

  for (const domain of DOMAINS) {
    const dir = join(DATA_DIR, domain);
    const files = (await readdir(dir)).filter((f) => f.endsWith(".json"));
    files.sort();
    const records = [];
    for (const f of files) {
      const p = join(dir, f);
      const d = JSON.parse(await readFile(p, "utf8"));
      const changed = rewriteRecord(d);
      if (changed) {
        await writeFile(p, JSON.stringify(d, null, 2) + "\n");
        rewrittenCount++;
      }
      records.push(d);
    }
    perDomain[domain] = records;
    totalRecords += records.length;
    console.log(`  ${domain}: ${records.length} records`);
  }
  console.log(`\nRewrote ${rewrittenCount} per-question JSONs in place.`);

  // Rebuild consolidated files
  const consolidated = join(DATA_DIR, "_consolidated");
  const all = [];
  for (const domain of DOMAINS) {
    const out = join(consolidated, `${domain}.json`);
    await writeFile(out, JSON.stringify(perDomain[domain], null, 2) + "\n");
    all.push(...perDomain[domain]);
  }
  await writeFile(
    join(consolidated, "all_math_questions.json"),
    JSON.stringify(all, null, 2) + "\n"
  );
  console.log(
    `Rebuilt 5 consolidated files (total ${all.length} records, expected 1756).`
  );

  // Sanity: ensure no remaining `"images/<8hex>/` patterns in per-question JSONs
  console.log(
    `\nTo verify: grep -rE '\"images/[0-9a-f]{8}/' ${DOMAINS.map((d) => `sat_math_data/${d}/`).join(" ")} | head`
  );
}

main().catch((e) => {
  console.error("Fatal:", e);
  process.exit(1);
});
