#!/usr/bin/env node
// Generate batched INSERT ... ON CONFLICT DO UPDATE SQL files for sat_questions.
// Uses Postgres dollar-quoting ($SATQ$...$SATQ$) to sidestep HTML/JSON escaping.
//
// Run: node scripts/import-sat/generate-sql-batches.mjs
// Output: scripts/import-sat/out/batch-001.sql ... batch-NNN.sql

import { readFile, writeFile, mkdir, readdir, unlink } from "node:fs/promises";
import { join } from "node:path";

const ROOT = new URL("../../", import.meta.url).pathname;
const OUT_DIR = new URL("./out/", import.meta.url).pathname;
const BATCH_SIZE = 25;
const DELIM = "SATQ";

const COLUMNS = [
  { col: "question_id", src: (r) => r.questionId, type: "text", nullable: false },
  { col: "external_id", src: (r) => r.external_id, type: "uuid" },
  { col: "vault_id", src: (r) => r.vaultid, type: "uuid" },
  { col: "disclosed_item_id", src: (r) => r.disclosed_item_id, type: "text" },
  { col: "source", src: (r) => r.source ?? "qbank", type: "text", nullable: false },
  { col: "program", src: (r) => r.program, type: "text" },
  { col: "test_type", src: (r) => r.test_type, type: "int" },
  { col: "test_type_desc", src: (r) => r.test_type_desc, type: "text" },
  { col: "domain", src: (r) => r.domain, type: "text" },
  { col: "primary_class_cd", src: (r) => r.primary_class_cd, type: "text" },
  { col: "skill_cd", src: (r) => r.skill_cd, type: "text" },
  { col: "skill_desc", src: (r) => r.skill_desc, type: "text" },
  { col: "difficulty", src: (r) => r.difficulty, type: "text" },
  { col: "score_band_range_cd", src: (r) => r.score_band_range_cd, type: "int" },
  { col: "question_type", src: (r) => r.type, type: "text" },
  { col: "stimulus_html", src: (r) => r.stimulus, type: "text" },
  { col: "stem_html", src: (r) => r.stem, type: "text" },
  { col: "answer_options", src: (r) => r.answerOptions, type: "jsonb" },
  { col: "correct_answer", src: (r) => r.correct_answer, type: "jsonb" },
  { col: "answer_keys", src: (r) => r.keys, type: "jsonb" },
  { col: "rationale_html", src: (r) => r.rationale, type: "text" },
  {
    col: "correct_answer_extracted_from_rationale",
    src: (r) => !!r.correct_answer_extracted_from_rationale,
    type: "bool",
  },
  { col: "image_count", src: (r) => r.image_count ?? 0, type: "int" },
  { col: "parent_template_name", src: (r) => r.parenttemplatename, type: "text" },
  { col: "parent_template_id", src: (r) => r.parenttemplateid, type: "text" },
  { col: "template_cluster_id", src: (r) => r.templateclusterid, type: "uuid" },
  { col: "template_cluster_name", src: (r) => r.templateclustername, type: "text" },
  { col: "origin", src: (r) => r.origin, type: "text" },
  { col: "position", src: (r) => r.position, type: "text" },
  { col: "answer_style", src: (r) => r.answer_style, type: "text" },
  { col: "section", src: (r) => r.section, type: "text" },
  { col: "raw_payload", src: (r) => r, type: "jsonb" },
  { col: "created_date", src: (r) => r.createDate, type: "bigint" },
  { col: "updated_date", src: (r) => r.updateDate, type: "bigint" },
];

const UPDATE_COLS = COLUMNS.filter((c) => c.col !== "question_id")
  .map((c) => `${c.col} = excluded.${c.col}`)
  .concat(["scraped_at = now()"])
  .join(",\n    ");

const COL_LIST = COLUMNS.map((c) => c.col).join(", ");

function sqlLiteral(value, type) {
  // Normalize empty-string UUIDs to null
  if (type === "uuid" && value === "") value = null;
  if (value === null || value === undefined) return "NULL";

  if (type === "int" || type === "bigint") {
    if (typeof value !== "number" || !Number.isFinite(value)) {
      if (typeof value === "string" && /^-?\d+$/.test(value)) return value;
      return "NULL";
    }
    return String(Math.trunc(value));
  }
  if (type === "bool") return value ? "true" : "false";

  const cast =
    type === "uuid" ? "::uuid" : type === "jsonb" ? "::jsonb" : "";
  const body = type === "jsonb" ? JSON.stringify(value) : String(value);

  if (body.includes(`$${DELIM}$`)) {
    throw new Error(
      `Dollar-quote delimiter collision in value (type=${type}): choose a longer DELIM.`
    );
  }
  return `$${DELIM}$${body}$${DELIM}$${cast}`;
}

function rowToValuesSql(record) {
  const parts = COLUMNS.map((c) => sqlLiteral(c.src(record), c.type));
  return "    (" + parts.join(", ") + ")";
}

function batchToSql(batch, batchIdx, totalBatches) {
  const valuesSql = batch.map(rowToValuesSql).join(",\n");
  return `-- batch ${batchIdx}/${totalBatches} (${batch.length} rows)
INSERT INTO sat_questions (${COL_LIST}) VALUES
${valuesSql}
ON CONFLICT (question_id) DO UPDATE SET
    ${UPDATE_COLS};
`;
}

async function clean(dir) {
  try {
    const files = await readdir(dir);
    await Promise.all(
      files.filter((f) => f.endsWith(".sql")).map((f) => unlink(join(dir, f)))
    );
  } catch {
    // dir may not exist yet
  }
}

async function main() {
  await mkdir(OUT_DIR, { recursive: true });
  await clean(OUT_DIR);

  const rwPath = join(ROOT, "sat_rw_data/_consolidated/all_rw_questions.json");
  const mathPath = join(
    ROOT,
    "sat_math_data/_consolidated/all_math_questions.json"
  );
  const rw = JSON.parse(await readFile(rwPath, "utf8"));
  const math = JSON.parse(await readFile(mathPath, "utf8"));
  console.log(`Loaded rw=${rw.length} math=${math.length} total=${rw.length + math.length}`);

  // Interleave so each batch has a mix (keeps per-batch size more uniform)
  const all = [...rw, ...math];
  const totalBatches = Math.ceil(all.length / BATCH_SIZE);
  const pad = String(totalBatches).length;

  let totalBytes = 0;
  for (let i = 0; i < totalBatches; i++) {
    const batch = all.slice(i * BATCH_SIZE, (i + 1) * BATCH_SIZE);
    const sql = batchToSql(batch, i + 1, totalBatches);
    const name = `batch-${String(i + 1).padStart(pad, "0")}.sql`;
    await writeFile(join(OUT_DIR, name), sql);
    totalBytes += sql.length;
  }
  console.log(
    `Wrote ${totalBatches} batch files (~${(totalBytes / 1024 / 1024).toFixed(2)} MB total).`
  );
  const avgKb = (totalBytes / totalBatches / 1024).toFixed(1);
  console.log(`Average batch size: ${avgKb} KB.`);
}

main().catch((e) => {
  console.error("Fatal:", e);
  process.exit(1);
});
