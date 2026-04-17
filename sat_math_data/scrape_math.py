#!/usr/bin/env python3
"""
Scrape all SAT Math questions from College Board.

Math is split between TWO endpoints:
  1. qbank-api /get-question  (ibn null or empty) — MathML content, same shape as R&W
  2. saic /disclosed/{ibn}.json (ibn has value) — different shape, base64 PNG equations

Output:
  /home/claude/sat_math_data/
    _list.json                          — raw list response
    {domain_folder}/{questionId}.json   — one JSON per question (normalized)
    images/{questionId}/img_{N}.png     — extracted PNGs from disclosed items
    _consolidated/*.json                — per-domain + all-in-one
    _failures.json                      — any failed fetches
"""
import json
import time
import os
import sys
import re
import base64
import hashlib
from pathlib import Path
import urllib.request
import urllib.error

LIST_URL = "https://qbank-api.collegeboard.org/msreportingquestionbank-prod/questionbank/digital/get-questions"
QBANK_DETAIL_URL = "https://qbank-api.collegeboard.org/msreportingquestionbank-prod/questionbank/digital/get-question"
DISCLOSED_URL_TEMPLATE = "https://saic.collegeboard.org/disclosed/{ibn}.json"

HEADERS = {
    "accept": "application/json, text/plain, */*",
    "content-type": "application/json",
    "origin": "https://satsuiteeducatorquestionbank.collegeboard.org",
    "referer": "https://satsuiteeducatorquestionbank.collegeboard.org/",
    "user-agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36",
}

OUT_DIR = Path("/home/claude/sat_math_data")
OUT_DIR.mkdir(exist_ok=True)
IMAGES_DIR = OUT_DIR / "images"
IMAGES_DIR.mkdir(exist_ok=True)

DOMAIN_FOLDERS = {
    "H": "algebra",
    "P": "advanced_math",
    "Q": "problem_solving_and_data_analysis",
    "S": "geometry_and_trigonometry",
}

# Base64 data URL pattern for image extraction
DATA_URL_RE = re.compile(
    r'data:image/(?P<ext>png|jpeg|jpg|gif|svg\+xml);base64,(?P<data>[A-Za-z0-9+/=]+)',
    re.IGNORECASE,
)


def post_json(url: str, payload: dict, retries: int = 3, backoff: float = 2.0) -> dict:
    body = json.dumps(payload).encode("utf-8")
    req = urllib.request.Request(url, data=body, headers=HEADERS, method="POST")
    return _do_request(req, retries, backoff)


def get_json(url: str, retries: int = 3, backoff: float = 2.0) -> dict:
    req = urllib.request.Request(url, headers=HEADERS, method="GET")
    return _do_request(req, retries, backoff)


def _do_request(req, retries: int, backoff: float) -> dict:
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


def extract_and_replace_images(html: str, question_id: str, img_dir: Path, counter: list) -> str:
    """Find base64 data URLs, save them to img_dir, replace URLs with file paths.

    counter is a list with a single int to track image index across multiple calls
    per question (since body, prompt, choices, rationale are handled separately).
    """
    if not html:
        return html

    def replace(match):
        ext = match.group('ext').lower()
        if ext == 'jpeg':
            ext = 'jpg'
        elif ext == 'svg+xml':
            ext = 'svg'
        data = match.group('data')
        try:
            img_bytes = base64.b64decode(data)
        except Exception:
            return match.group(0)  # leave as-is if decode fails

        # Deterministic filename via content hash to dedupe identical images
        content_hash = hashlib.md5(img_bytes).hexdigest()[:8]
        idx = counter[0]
        counter[0] += 1
        filename = f"img_{idx:03d}_{content_hash}.{ext}"
        filepath = img_dir / filename
        if not filepath.exists():
            filepath.write_bytes(img_bytes)
        # Return a relative URL-like path the frontend can rewrite later
        return f"images/{question_id}/{filename}"

    return DATA_URL_RE.sub(replace, html)


def normalize_disclosed(disclosed_data: dict, list_item: dict, img_dir: Path) -> dict:
    """Convert disclosed format to the unified schema."""
    # Disclosed responses come back as either a list with one item or a single object
    if isinstance(disclosed_data, list):
        d = disclosed_data[0] if disclosed_data else {}
    else:
        d = disclosed_data

    qid = list_item["questionId"]
    img_dir.mkdir(exist_ok=True)
    counter = [0]  # image index counter, shared across all fields of this question

    answer = d.get("answer", {}) or {}
    choices = answer.get("choices", {}) or {}

    # Normalize choices to match qbank shape: [{id, content}]
    answer_options = []
    for letter in ["a", "b", "c", "d"]:
        if letter in choices:
            choice_body = choices[letter].get("body", "") or ""
            answer_options.append({
                "id": letter,
                "content": extract_and_replace_images(choice_body, qid, img_dir, counter),
            })

    # correct_choice is like "c" → normalize to ["C"] to match qbank
    correct_letter = answer.get("correct_choice")
    correct_answer = [correct_letter.upper()] if correct_letter else []

    body = extract_and_replace_images(d.get("body", "") or "", qid, img_dir, counter)
    prompt = extract_and_replace_images(d.get("prompt", "") or "", qid, img_dir, counter)
    rationale = extract_and_replace_images(answer.get("rationale", "") or "", qid, img_dir, counter)

    return {
        "questionId": qid,
        "external_id": list_item.get("external_id"),  # null for disclosed
        "disclosed_item_id": d.get("item_id"),
        "source": "disclosed",

        # Taxonomy
        "program": list_item.get("program"),
        "test_type": 2,
        "test_type_desc": "Math",
        "primary_class_cd": list_item.get("primary_class_cd"),
        "domain": list_item.get("primary_class_cd_desc"),
        "skill_cd": list_item.get("skill_cd"),
        "skill_desc": list_item.get("skill_desc"),
        "difficulty": list_item.get("difficulty"),
        "score_band_range_cd": list_item.get("score_band_range_cd"),

        # Content (normalized)
        "type": "mcq" if answer.get("style") == "Multiple Choice" else "spr",
        "stimulus": body if body.strip() else None,
        "stem": prompt,
        "answerOptions": answer_options if answer_options else None,
        "keys": None,
        "correct_answer": correct_answer,
        "rationale": rationale,

        # Disclosed-specific
        "answer_style": answer.get("style"),
        "section": d.get("section"),

        # Image count
        "image_count": counter[0],

        # Raw payloads
        "raw_list": list_item,
        "raw_detail": d,

        # Dates
        "createDate": list_item.get("createDate"),
        "updateDate": list_item.get("updateDate"),
    }


def normalize_qbank(detail: dict, list_item: dict, img_dir: Path) -> dict:
    """Normalize qbank detail response. Math qbank items have MathML, not base64 PNGs,
    but we still scan for any data URLs just in case."""
    qid = list_item["questionId"]
    counter = [0]

    # qbank items rarely have base64 images, but check anyway
    def maybe_extract(html):
        if html and "data:image/" in html:
            img_dir.mkdir(exist_ok=True)
            return extract_and_replace_images(html, qid, img_dir, counter)
        return html

    stem = maybe_extract(detail.get("stem"))
    stimulus = maybe_extract(detail.get("stimulus"))
    rationale = maybe_extract(detail.get("rationale"))

    answer_options = detail.get("answerOptions")
    if answer_options:
        answer_options = [
            {"id": opt.get("id"), "content": maybe_extract(opt.get("content"))}
            for opt in answer_options
        ]

    return {
        "questionId": qid,
        "external_id": list_item["external_id"],
        "disclosed_item_id": None,
        "source": "qbank",
        "vaultid": detail.get("vaultid"),
        "uId": list_item.get("uId"),

        # Taxonomy
        "program": list_item.get("program"),
        "test_type": 2,
        "test_type_desc": "Math",
        "primary_class_cd": list_item.get("primary_class_cd"),
        "domain": list_item.get("primary_class_cd_desc"),
        "skill_cd": list_item.get("skill_cd"),
        "skill_desc": list_item.get("skill_desc"),
        "difficulty": list_item.get("difficulty"),
        "score_band_range_cd": list_item.get("score_band_range_cd"),

        # Content
        "type": detail.get("type"),
        "stimulus": stimulus,
        "stem": stem,
        "answerOptions": answer_options,
        "keys": detail.get("keys"),
        "correct_answer": detail.get("correct_answer"),
        "rationale": rationale,

        # Template metadata
        "parenttemplatename": detail.get("parenttemplatename"),
        "parenttemplateid": detail.get("parenttemplateid"),
        "templateclusterid": detail.get("templateclusterid"),
        "templateclustername": detail.get("templateclustername"),
        "origin": detail.get("origin"),
        "position": detail.get("position"),

        # Image count
        "image_count": counter[0],

        # Raw payloads
        "raw_list": list_item,
        "raw_detail": detail,

        # Dates
        "createDate": list_item.get("createDate"),
        "updateDate": list_item.get("updateDate"),
    }


def main():
    # 1. Fetch list
    print("Fetching Math question list...")
    list_data = post_json(LIST_URL, {
        "asmtEventId": 99, "test": 2, "domain": "H,P,Q,S",
    })
    print(f"  -> {len(list_data)} questions\n")

    with open(OUT_DIR / "_list.json", "w") as f:
        json.dump(list_data, f, indent=2)

    for folder in DOMAIN_FOLDERS.values():
        (OUT_DIR / folder).mkdir(exist_ok=True)

    # Classify each question
    disclosed = []
    qbank = []
    for q in list_data:
        if q.get("ibn"):
            disclosed.append(q)
        else:
            qbank.append(q)
    print(f"Disclosed (saic): {len(disclosed)}")
    print(f"Qbank:            {len(qbank)}\n")

    done = 0
    skipped = 0
    failed = []
    start = time.time()
    total = len(list_data)
    i = 0

    # 2. Process all questions (qbank first — faster)
    for q in qbank + disclosed:
        i += 1
        domain_cd = q.get("primary_class_cd")
        folder = DOMAIN_FOLDERS.get(domain_cd, "unknown")
        qid = q["questionId"]
        out_path = OUT_DIR / folder / f"{qid}.json"

        # Resumability
        if out_path.exists():
            skipped += 1
            if i % 200 == 0:
                print(f"[{i}/{total}] (cached)")
            continue

        img_dir = IMAGES_DIR / qid

        try:
            if q.get("ibn"):
                # Disclosed
                url = DISCLOSED_URL_TEMPLATE.format(ibn=q["ibn"])
                disclosed_data = get_json(url)
                record = normalize_disclosed(disclosed_data, q, img_dir)
            else:
                # Qbank
                detail = post_json(QBANK_DETAIL_URL, {"external_id": q["external_id"]})
                record = normalize_qbank(detail, q, img_dir)
        except Exception as e:
            print(f"[{i}/{total}] FAIL {qid}: {e}", file=sys.stderr)
            failed.append({
                "questionId": qid,
                "ibn": q.get("ibn"),
                "external_id": q.get("external_id"),
                "error": str(e),
            })
            continue

        with open(out_path, "w") as f:
            json.dump(record, f, indent=2, ensure_ascii=False)

        done += 1

        if i % 50 == 0 or i == total:
            elapsed = time.time() - start
            rate = done / elapsed if elapsed > 0 and done > 0 else 0
            remaining = (total - i) / rate if rate > 0 else 0
            src = "disclosed" if q.get("ibn") else "qbank"
            print(f"[{i}/{total}] {src} {folder}/{qid}  "
                  f"(new={done} cached={skipped} fail={len(failed)})  "
                  f"~{remaining:.0f}s left")

        time.sleep(0.25)

    # 3. Save failures
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
