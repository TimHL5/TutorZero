#!/usr/bin/env python3
"""
Upload extracted images to Supabase Storage, then rewrite JSON files
in-place so HTML references point at real public URLs.

Setup:
  1. In Supabase dashboard, create a Storage bucket called 'sat-images'
     with public read access.
  2. pip install supabase
  3. export SUPABASE_URL='...'
  4. export SUPABASE_SERVICE_KEY='...'
  5. python3 upload_images_to_supabase.py

Safe to re-run: skips images already uploaded. Rewrites are idempotent.
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
BUCKET = os.environ.get("SUPABASE_IMAGE_BUCKET", "sat-images")

if not (SUPABASE_URL and SUPABASE_KEY):
    print("Set SUPABASE_URL and SUPABASE_SERVICE_KEY env vars.", file=sys.stderr)
    sys.exit(1)

DATA_DIR = Path(__file__).parent
IMAGES_DIR = DATA_DIR / "images"

CONTENT_TYPES = {
    ".png": "image/png",
    ".jpg": "image/jpeg",
    ".jpeg": "image/jpeg",
    ".gif": "image/gif",
    ".svg": "image/svg+xml",
}


def public_url_for(qid: str, filename: str) -> str:
    """Public Storage URL for a file. Adjust pattern if your bucket is private."""
    return f"{SUPABASE_URL}/storage/v1/object/public/{BUCKET}/{qid}/{filename}"


def main():
    client = create_client(SUPABASE_URL, SUPABASE_KEY)
    storage = client.storage.from_(BUCKET)

    # 1. Upload all images
    question_dirs = [d for d in IMAGES_DIR.iterdir() if d.is_dir()]
    print(f"Uploading images from {len(question_dirs)} question folders...")

    uploaded = 0
    skipped = 0
    failed = 0
    for i, qdir in enumerate(sorted(question_dirs), 1):
        qid = qdir.name
        for img_file in qdir.iterdir():
            ext = img_file.suffix.lower()
            content_type = CONTENT_TYPES.get(ext, "application/octet-stream")
            storage_path = f"{qid}/{img_file.name}"
            try:
                with open(img_file, "rb") as f:
                    storage.upload(
                        path=storage_path,
                        file=f,
                        file_options={
                            "content-type": content_type,
                            "upsert": "true",
                        },
                    )
                uploaded += 1
            except Exception as e:
                # If the error is a duplicate, count as skipped
                if "already exists" in str(e).lower() or "duplicate" in str(e).lower():
                    skipped += 1
                else:
                    print(f"    FAIL {storage_path}: {e}", file=sys.stderr)
                    failed += 1
        if i % 50 == 0:
            print(f"  [{i}/{len(question_dirs)}] uploaded={uploaded} skipped={skipped} failed={failed}")

    print(f"\nUpload summary: uploaded={uploaded} skipped={skipped} failed={failed}")

    # 2. Rewrite JSON files — replace "images/{qid}/..." with full Storage URLs
    print("\nRewriting JSON files with public URLs...")
    rewritten = 0
    for folder in ["algebra", "advanced_math", "problem_solving_and_data_analysis", "geometry_and_trigonometry"]:
        for p in (DATA_DIR / folder).glob("*.json"):
            with open(p) as f:
                d = json.load(f)
            qid = d["questionId"]
            if d.get("image_count", 0) == 0:
                continue

            old_prefix = f"images/{qid}/"
            new_prefix = f"{SUPABASE_URL}/storage/v1/object/public/{BUCKET}/{qid}/"

            changed = False
            for field in ["stem", "stimulus", "rationale"]:
                if d.get(field) and old_prefix in d[field]:
                    d[field] = d[field].replace(old_prefix, new_prefix)
                    changed = True
            if d.get("answerOptions"):
                for opt in d["answerOptions"]:
                    if opt.get("content") and old_prefix in opt["content"]:
                        opt["content"] = opt["content"].replace(old_prefix, new_prefix)
                        changed = True

            if changed:
                with open(p, "w") as f:
                    json.dump(d, f, indent=2, ensure_ascii=False)
                rewritten += 1

    print(f"Rewrote {rewritten} JSON files")

    # 3. Also rebuild consolidated files
    print("\nRebuilding consolidated files...")
    consolidated = DATA_DIR / "_consolidated"
    all_records = []
    for folder in ["algebra", "advanced_math", "problem_solving_and_data_analysis", "geometry_and_trigonometry"]:
        records = [json.load(open(p)) for p in sorted((DATA_DIR / folder).glob("*.json"))]
        with open(consolidated / f"{folder}.json", "w") as f:
            json.dump(records, f, indent=2, ensure_ascii=False)
        all_records.extend(records)
    with open(consolidated / "all_math_questions.json", "w") as f:
        json.dump(all_records, f, indent=2, ensure_ascii=False)
    print(f"Rebuilt consolidated ({len(all_records)} records total)")

    print("\nDone. Now run: python3 import_to_supabase.py")


if __name__ == "__main__":
    main()
