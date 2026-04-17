#!/usr/bin/env python3
"""
Import scraped SAT R&W questions into Supabase.

Usage:
  1. pip install supabase
  2. Set env vars:
       export SUPABASE_URL='https://<project>.supabase.co'
       export SUPABASE_SERVICE_KEY='<service_role_key>'  # NOT the anon key
  3. Run: python3 import_to_supabase.py

Safe to re-run: uses upsert on question_id.
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
BATCH_SIZE = 100  # Supabase has a 1MB request limit; 100 R&W rows is ~400KB


def transform(record: dict) -> dict:
    """Map scraped JSON -> DB columns."""
    return {
        "question_id": record["questionId"],
        "external_id": record["external_id"],
        "vault_id": record.get("vaultid"),

        "program": record.get("program"),
        "test_type": record.get("test_type"),
        "test_type_desc": record.get("test_type_desc"),
        "domain": record.get("domain"),
        "primary_class_cd": record.get("primary_class_cd"),
        "skill_cd": record.get("skill_cd"),
        "skill_desc": record.get("skill_desc"),
        "difficulty": record.get("difficulty"),
        "score_band_range_cd": record.get("score_band_range_cd"),

        "question_type": record.get("type"),
        "stimulus_html": record.get("stimulus"),
        "stem_html": record.get("stem"),
        "answer_options": record.get("answerOptions"),
        "correct_answer": record.get("correct_answer"),
        "answer_keys": record.get("keys"),
        "rationale_html": record.get("rationale"),

        "parent_template_name": record.get("parenttemplatename"),
        "parent_template_id": record.get("parenttemplateid"),
        "template_cluster_id": record.get("templateclusterid") or None,
        "template_cluster_name": record.get("templateclustername"),
        "origin": record.get("origin"),
        "position": record.get("position"),

        "raw_payload": record,

        "created_date": record.get("createDate"),
        "updated_date": record.get("updateDate"),
    }


def main():
    client = create_client(SUPABASE_URL, SUPABASE_KEY)

    # Load all records
    all_file = DATA_DIR / "_consolidated" / "all_rw_questions.json"
    with open(all_file) as f:
        records = json.load(f)
    print(f"Loaded {len(records)} records from {all_file.name}")

    rows = [transform(r) for r in records]

    # Batch upsert
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
            # Fall back to one-by-one for this batch
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
