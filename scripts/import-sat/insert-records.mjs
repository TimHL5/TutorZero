#!/usr/bin/env node
// Upsert all 3,444 SAT question records into sat_questions via the Supabase
// JS client. Reads consolidated JSONs (Math JSONs are expected to already
// have Storage URLs — run rewrite-image-refs.mjs first).
//
// Idempotent: upsert on question_id. Safe to re-run.
//
// Run: node --env-file=.env.local scripts/import-sat/insert-records.mjs

import { readFile } from "node:fs/promises";
import { join } from "node:path";
import { createClient } from "@supabase/supabase-js";

const SUPABASE_ID = process.env.SUPABASE_ID;
const SUPABASE_SECRET_KEY = process.env.SUPABASE_SECRET_KEY;
if (!SUPABASE_ID || !SUPABASE_SECRET_KEY) {
  console.error("Missing SUPABASE_ID or SUPABASE_SECRET_KEY in env.");
  process.exit(1);
}

const SUPABASE_URL = `https://${SUPABASE_ID}.supabase.co`;
const client = createClient(SUPABASE_URL, SUPABASE_SECRET_KEY, {
  auth: { persistSession: false },
});

const ROOT = new URL("../../", import.meta.url).pathname;
const BATCH_SIZE = 100;

function transform(r) {
  const emptyToNull = (v) => (v === "" ? null : v);
  return {
    question_id: r.questionId,
    external_id: emptyToNull(r.external_id) ?? null,
    vault_id: emptyToNull(r.vaultid) ?? null,
    disclosed_item_id: r.disclosed_item_id ?? null,
    source: r.source ?? "qbank",

    program: r.program ?? null,
    test_type: r.test_type ?? null,
    test_type_desc: r.test_type_desc ?? null,
    domain: r.domain ?? null,
    primary_class_cd: r.primary_class_cd ?? null,
    skill_cd: r.skill_cd ?? null,
    skill_desc: r.skill_desc ?? null,
    difficulty: r.difficulty ?? null,
    score_band_range_cd: r.score_band_range_cd ?? null,

    question_type: r.type ?? null,
    stimulus_html: r.stimulus ?? null,
    stem_html: r.stem ?? null,
    answer_options: r.answerOptions ?? null,
    correct_answer: r.correct_answer ?? null,
    answer_keys: r.keys ?? null,
    rationale_html: r.rationale ?? null,

    correct_answer_extracted_from_rationale: !!r.correct_answer_extracted_from_rationale,
    image_count: r.image_count ?? 0,

    parent_template_name: r.parenttemplatename ?? null,
    parent_template_id: r.parenttemplateid ?? null,
    template_cluster_id: emptyToNull(r.templateclusterid) ?? null,
    template_cluster_name: r.templateclustername ?? null,
    origin: r.origin ?? null,
    position: r.position ?? null,

    answer_style: r.answer_style ?? null,
    section: r.section ?? null,

    raw_payload: r,

    created_date: r.createDate ?? null,
    updated_date: r.updateDate ?? null,
  };
}

async function upsertBatch(batch, attempt = 1) {
  const { error } = await client
    .from("sat_questions")
    .upsert(batch, { onConflict: "question_id" });
  if (error) {
    const transient = /fetch failed|timeout|502|503|504|ECONNRESET|network/i.test(
      String(error.message ?? error)
    );
    if (transient && attempt < 5) {
      await new Promise((r) => setTimeout(r, 500 * 2 ** (attempt - 1)));
      return upsertBatch(batch, attempt + 1);
    }
    throw error;
  }
}

async function main() {
  const rw = JSON.parse(
    await readFile(
      join(ROOT, "sat_rw_data/_consolidated/all_rw_questions.json"),
      "utf8"
    )
  );
  const math = JSON.parse(
    await readFile(
      join(ROOT, "sat_math_data/_consolidated/all_math_questions.json"),
      "utf8"
    )
  );
  const rwMcq = rw.filter((r) => r.type !== "spr");
  const mathMcq = math.filter((r) => r.type !== "spr");
  const all = [...rwMcq, ...mathMcq].map(transform);
  console.log(
    `Loaded rw=${rw.length}→${rwMcq.length} math=${math.length}→${mathMcq.length} total=${all.length} (SPR excluded). Upserting in batches of ${BATCH_SIZE}...`
  );

  const t0 = Date.now();
  let done = 0;
  const failures = [];
  for (let i = 0; i < all.length; i += BATCH_SIZE) {
    const batch = all.slice(i, i + BATCH_SIZE);
    try {
      await upsertBatch(batch);
      done += batch.length;
    } catch (e) {
      console.error(
        `  batch ${i}-${i + batch.length} failed after retries: ${e.message ?? e}`
      );
      // Fall back to 1-by-1 so we can continue past a single bad record
      for (const row of batch) {
        try {
          await upsertBatch([row]);
          done++;
        } catch (e2) {
          failures.push({ qid: row.question_id, error: String(e2.message ?? e2) });
        }
      }
    }
    if (i % (BATCH_SIZE * 5) === 0 || i + BATCH_SIZE >= all.length) {
      console.log(`  [${done}/${all.length}]`);
    }
  }
  const secs = ((Date.now() - t0) / 1000).toFixed(1);
  console.log(
    `\nDone in ${secs}s. upserted=${done} failed=${failures.length} total=${all.length}`
  );
  if (failures.length) {
    console.error(`\nFailures:`);
    for (const f of failures.slice(0, 20)) {
      console.error(`  ${f.qid}: ${f.error}`);
    }
    process.exit(1);
  }
}

main().catch((e) => {
  console.error("Fatal:", e);
  process.exit(1);
});
