#!/usr/bin/env python3
"""
Scrape all SAT R&W questions from College Board's question bank API.
Organizes output by domain. Resumable — skips questions already saved.
"""
import json
import time
import os
import sys
from pathlib import Path
import urllib.request
import urllib.error

LIST_URL = "https://qbank-api.collegeboard.org/msreportingquestionbank-prod/questionbank/digital/get-questions"
DETAIL_URL = "https://qbank-api.collegeboard.org/msreportingquestionbank-prod/questionbank/digital/get-question"

HEADERS = {
    "accept": "application/json, text/plain, */*",
    "content-type": "application/json",
    "origin": "https://satsuiteeducatorquestionbank.collegeboard.org",
    "referer": "https://satsuiteeducatorquestionbank.collegeboard.org/",
    "user-agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36",
}

OUT_DIR = Path("/home/claude/sat_rw_data")
OUT_DIR.mkdir(exist_ok=True)

# Domain code -> folder-friendly name
DOMAIN_FOLDERS = {
    "INI": "information_and_ideas",
    "CAS": "craft_and_structure",
    "EOI": "expression_of_ideas",
    "SEC": "standard_english_conventions",
}


def post_json(url: str, payload: dict, retries: int = 3, backoff: float = 2.0) -> dict:
    """POST with retries and exponential backoff."""
    body = json.dumps(payload).encode("utf-8")
    req = urllib.request.Request(url, data=body, headers=HEADERS, method="POST")
    for attempt in range(retries):
        try:
            with urllib.request.urlopen(req, timeout=30) as resp:
                return json.loads(resp.read().decode("utf-8"))
        except (urllib.error.URLError, urllib.error.HTTPError, TimeoutError) as e:
            if attempt == retries - 1:
                raise
            wait = backoff ** attempt
            print(f"    retry {attempt + 1}/{retries} after {wait}s: {e}", file=sys.stderr)
            time.sleep(wait)
    raise RuntimeError("unreachable")


def fetch_list() -> list:
    """Fetch the full R&W question list."""
    print("Fetching R&W question list...")
    data = post_json(LIST_URL, {
        "asmtEventId": 99,
        "test": 1,
        "domain": "INI,CAS,EOI,SEC",
    })
    print(f"  -> {len(data)} questions\n")
    return data


def fetch_detail(external_id: str) -> dict:
    """Fetch a single question's full content."""
    return post_json(DETAIL_URL, {"external_id": external_id})


def main():
    # 1. Get list
    list_data = fetch_list()

    # Save the full list
    with open(OUT_DIR / "_list.json", "w") as f:
        json.dump(list_data, f, indent=2)

    # Set up domain folders
    for folder in DOMAIN_FOLDERS.values():
        (OUT_DIR / folder).mkdir(exist_ok=True)

    # 2. Fetch details
    total = len(list_data)
    done = 0
    skipped = 0
    failed = []
    start = time.time()

    for i, q in enumerate(list_data, 1):
        domain_cd = q.get("primary_class_cd")
        folder = DOMAIN_FOLDERS.get(domain_cd, "unknown")
        qid = q["questionId"]
        ext_id = q["external_id"]

        out_path = OUT_DIR / folder / f"{qid}.json"

        # Resumability: skip if already saved
        if out_path.exists():
            skipped += 1
            if i % 100 == 0:
                print(f"[{i}/{total}] (cached) {folder}/{qid}")
            continue

        try:
            detail = fetch_detail(ext_id)
        except Exception as e:
            print(f"[{i}/{total}] FAIL {qid}: {e}", file=sys.stderr)
            failed.append({"questionId": qid, "external_id": ext_id, "error": str(e)})
            continue

        # Merge list metadata + detail content into single record
        record = {
            # Identifiers
            "questionId": qid,
            "external_id": ext_id,
            "vaultid": detail.get("vaultid"),
            "uId": q.get("uId"),

            # Taxonomy (from list)
            "program": q.get("program"),
            "test_type": 1,
            "test_type_desc": "Reading and Writing",
            "primary_class_cd": domain_cd,
            "domain": q.get("primary_class_cd_desc"),
            "skill_cd": q.get("skill_cd"),
            "skill_desc": q.get("skill_desc"),
            "difficulty": q.get("difficulty"),
            "score_band_range_cd": q.get("score_band_range_cd"),

            # Content (from detail)
            "type": detail.get("type"),
            "stimulus": detail.get("stimulus"),
            "stem": detail.get("stem"),
            "answerOptions": detail.get("answerOptions"),
            "keys": detail.get("keys"),
            "correct_answer": detail.get("correct_answer"),
            "rationale": detail.get("rationale"),

            # Template metadata
            "parenttemplatename": detail.get("parenttemplatename"),
            "parenttemplateid": detail.get("parenttemplateid"),
            "templateclusterid": detail.get("templateclusterid"),
            "templateclustername": detail.get("templateclustername"),
            "origin": detail.get("origin"),
            "position": detail.get("position"),

            # Dates
            "createDate": q.get("createDate"),
            "updateDate": q.get("updateDate"),
        }

        with open(out_path, "w") as f:
            json.dump(record, f, indent=2, ensure_ascii=False)

        done += 1

        # Progress
        if i % 25 == 0 or i == total:
            elapsed = time.time() - start
            rate = done / elapsed if elapsed > 0 and done > 0 else 0
            remaining = (total - i) / rate if rate > 0 else 0
            print(f"[{i}/{total}] {folder}/{qid}  "
                  f"(new={done} cached={skipped} fail={len(failed)})  "
                  f"~{remaining:.0f}s left")

        # Rate limit: be polite
        time.sleep(0.25)

    # 3. Save failure log
    if failed:
        with open(OUT_DIR / "_failures.json", "w") as f:
            json.dump(failed, f, indent=2)
        print(f"\n{len(failed)} failures logged to _failures.json")

    elapsed = time.time() - start
    print(f"\nDone in {elapsed:.1f}s")
    print(f"  New:    {done}")
    print(f"  Cached: {skipped}")
    print(f"  Failed: {len(failed)}")


if __name__ == "__main__":
    main()
