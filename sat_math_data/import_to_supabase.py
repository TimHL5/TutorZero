#!/usr/bin/env python3
"""
Import scraped SAT Math questions into Supabase.

Usage:
  pip install supabase
  export SUPABASE_URL='https://<project>.supabase.co'
  export SUPABASE_SERVICE_KEY='<service_role_key>'
  python3 import_to_supabase.py

Safe to re-run: uses upsert on question_id.

NOTE: If you want image URLs in the HTML to resolve, run
upload_images_to_supabase.py FIRST to upload PNGs and rewrite paths.
"""
import json
import os
import sys
from pathlib import Path

try:
    from supabase import create_client
except ImportError:
    print("Missing dependency. Run: pip install supabase", file=sys.stderr)
    sys.exit(1)

SUPABASE_URL = os.environ.get("SUPABASE_URL")
SUPABASE_KEY = os.environ.get("SUPABASE_SERVICE_KEY")
if not (SUPABASE_URL and SUPABASE_KEY):
    print("Set SUPABASE_URL and SUPABASE_SERVICE_KEY env vars.", file=sys.stderr)
    sys.exit(1)

DATA_DIR = Path(__file__).parent
BATCH_SIZE = 50  # Math records are larger than R&W due to disclosed raw payloads


def transform(r: dict) -> dict:
    return {
        "question_id": r["questionId"],
        "external_id": r.get("external_id"),
        "vault_id": r.get("vaultid"),
        "disclosed_item_id": r.get("disclosed_item_id"),
        "source": r.get("source"),

        "program": r.get("program"),
        "test_type": r.get("test_type"),
        "test_type_desc": r.get("test_type_desc"),
        "domain": r.get("domain"),
        "primary_class_cd": r.get("primary_class_cd"),
        "skill_cd": r.get("skill_cd"),
        "skill_desc": r.get("skill_desc"),
        "difficulty": r.get("difficulty"),
        "score_band_range_cd": r.get("score_band_range_cd"),

        "question_type": r.get("type"),
        "stimulus_html": r.get("stimulus"),
        "stem_html": r.get("stem"),
        "answer_options": r.get("answerOptions"),
        "correct_answer": r.get("correct_answer"),
        "answer_keys": r.get("keys"),
        "rationale_html": r.get("rationale"),

        "correct_answer_extracted_from_rationale": bool(r.get("correct_answer_extracted_from_rationale")),
        "image_count": r.get("image_count", 0),

        "parent_template_name": r.get("parenttemplatename"),
        "parent_template_id": r.get("parenttemplateid"),
        "template_cluster_id": r.get("templateclusterid") or None,
        "template_cluster_name": r.get("templateclustername"),
        "origin": r.get("origin"),
        "position": r.get("position"),

        "answer_style": r.get("answer_style"),
        "section": r.get("section"),

        "raw_payload": r,

        "created_date": r.get("createDate"),
        "updated_date": r.get("updateDate"),
    }


def main():
    client = create_client(SUPABASE_URL, SUPABASE_KEY)

    all_file = DATA_DIR / "_consolidated" / "all_math_questions.json"
    with open(all_file) as f:
        records = json.load(f)
    print(f"Loaded {len(records)} records")

    rows = [transform(r) for r in records]

    total = len(rows)
    for i in range(0, total, BATCH_SIZE):
        batch = rows[i:i + BATCH_SIZE]
        try:
            client.table("sat_questions").upsert(
                batch, on_conflict="question_id"
            ).execute()
            print(f"  upserted {i + len(batch)}/{total}")
        except Exception as e:
            print(f"  batch {i}-{i+len(batch)} failed: {e}", file=sys.stderr)
            for row in batch:
                try:
                    client.table("sat_questions").upsert(
                        row, on_conflict="question_id"
                    ).execute()
                except Exception as e2:
                    print(f"    row {row['question_id']} failed: {e2}", file=sys.stderr)

    print("Done.")


if __name__ == "__main__":
    main()
