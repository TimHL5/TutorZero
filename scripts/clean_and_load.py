#!/usr/bin/env python3
"""
Clean enriched questions, load into D1-ready format, and regenerate TypeScript files.

Phase 1: Clean - filter broken questions, fix OCR artifacts
Phase 2: Export - generate clean TypeScript data files
Phase 3: D1 SQL - generate SQL INSERT statements for Cloudflare D1
"""

import json
import re
import os
import sys
from collections import Counter

INPUT_FILE = "output/questions_enriched.json"
MANIFEST_FILE = "output/figures_manifest.json"
OUTPUT_DIR = "/Users/Timmy/Documents/TutorZero/TutorZero/src/data"
SQL_OUTPUT = "output/d1_seed.sql"
REPORT_FILE = "output/cleaning_report.json"
FIGURES_URL_PREFIX = "/figures/"  # Served from public/figures/

# OCR artifact replacements
OCR_FIXES = {
    "£": "π",       # Common OCR misread
    "§": "≥",
    "©": "°",
    "¢": "≤",
    "«": "≪",
    "»": "≫",
    "ﬁ": "fi",
    "ﬂ": "fl",
    "—": "—",
    "\u2019": "'",
    "\u201c": '"',
    "\u201d": '"',
    "\u2018": "'",
    "\u2013": "–",
    "\u00a0": " ",
}

# Characters that indicate OCR garbage when in high density
GARBAGE_CHARS = set("£§©¢«»ﬁﬂ~@^`")


def fix_ocr_text(text: str) -> str:
    """Apply OCR artifact fixes to text."""
    if not text:
        return text
    for old, new in OCR_FIXES.items():
        text = text.replace(old, new)
    # Collapse multiple newlines
    text = re.sub(r"\n{3,}", "\n\n", text)
    # Collapse multiple spaces
    text = re.sub(r" {2,}", " ", text)
    return text.strip()


def garbage_density(text: str) -> float:
    """Calculate ratio of garbage characters to total characters."""
    if not text or len(text) == 0:
        return 1.0
    garbage_count = sum(1 for c in text if c in GARBAGE_CHARS)
    return garbage_count / len(text)


def is_clean_question(q: dict) -> tuple[bool, str]:
    """
    Validate a question. Returns (is_clean, rejection_reason).
    """
    qtext = q.get("questionText", "")
    opts = q.get("options", [])
    correct = q.get("correctIndex")
    explain = q.get("explainWhy", "")

    # Must have question text >= 15 chars
    if not qtext or len(qtext.strip()) < 15:
        return False, "question_text_too_short"

    # Must have at least 2 non-empty options (4 for multiple choice)
    non_empty = [o for o in opts if o and o.strip() and len(o.strip()) > 0]
    if len(non_empty) < 2:
        return False, "insufficient_options"

    # Correct index must be valid
    if correct is None or correct < 0 or correct >= len(opts):
        return False, "invalid_correct_index"

    # The correct answer option must not be empty
    if correct < len(opts) and (not opts[correct] or not opts[correct].strip()):
        return False, "correct_option_empty"

    # Reject if garbage density > 5% in question text
    if garbage_density(qtext) > 0.05:
        return False, "ocr_garbage_text"

    # Reject if any non-empty option has garbage density > 10%
    for opt in non_empty:
        if garbage_density(opt) > 0.10:
            return False, "ocr_garbage_option"

    return True, "ok"


def clean_question(q: dict) -> dict:
    """Clean a single question's text fields."""
    cleaned = dict(q)
    cleaned["questionText"] = fix_ocr_text(q.get("questionText", ""))
    cleaned["passageText"] = fix_ocr_text(q.get("passageText", "")) if q.get("passageText") else None
    cleaned["options"] = [fix_ocr_text(o) if o else "" for o in q.get("options", [])]
    cleaned["explainWhy"] = fix_ocr_text(q.get("explainWhy", ""))
    cleaned["explainConcept"] = fix_ocr_text(q.get("explainConcept", ""))
    cleaned["explainNext"] = fix_ocr_text(q.get("explainNext", ""))
    return cleaned


def escape_ts(text: str) -> str:
    """Escape text for TypeScript template literals."""
    if not text:
        return ""
    return text.replace("\\", "\\\\").replace("`", "\\`").replace("${", "\\${")


def generate_typescript_question(q: dict) -> str:
    """Generate TypeScript object literal for a question."""
    tags_str = json.dumps(q.get("tags", []))
    passage = f'    passageText: `{escape_ts(q["passageText"])}`,\n' if q.get("passageText") else ""
    figure = f'    figureUrl: "{q["figureUrl"]}",\n' if q.get("figureUrl") else ""
    options = ",\n    ".join(f'`{escape_ts(o)}`' for o in q["options"])

    return f"""  {{
    id: {q["id"]},
    section: "{q["section"]}",
    module: {q.get("module", 1)},
    topic: "{q["topic"]}",
    subtopic: "{q.get("subtopic", "")}",
    difficulty: "{q["difficulty"]}",
    questionText: `{escape_ts(q["questionText"])}`,
{passage}{figure}    options: [
    {options}
  ],
    correctIndex: {q["correctIndex"]},
    explainWhy: `{escape_ts(q["explainWhy"])}`,
    explainConcept: `{escape_ts(q["explainConcept"])}`,
    explainNext: `{escape_ts(q["explainNext"])}`,
    isCalculatorAllowed: {"true" if q.get("isCalculatorAllowed") else "false"},
    estTimeSec: {q.get("estTimeSec", 90)},
    tags: {tags_str},
  }}"""


def generate_bank_file(topic: str, section: str, questions: list[dict]) -> str:
    """Generate a TypeScript bank file for a topic."""
    import_name = f"{topic}Questions"
    items = ",\n".join(generate_typescript_question(q) for q in questions)
    return f"""import type {{ Question }} from "./questions";

export const {import_name}: Question[] = [
{items}
];
"""


def generate_practice_test_file(test_num: int, questions: list[dict]) -> str:
    """Generate a TypeScript practice test file."""
    items = ",\n".join(generate_typescript_question(q) for q in questions)
    return f"""import type {{ Question }} from "./questions";

export const practiceTest{test_num}Questions: Question[] = [
{items}
];
"""


def escape_sql(text: str) -> str:
    """Escape text for SQL strings."""
    if not text:
        return ""
    return text.replace("'", "''")


def generate_sql_insert(q: dict) -> str:
    """Generate SQL INSERT for a question."""
    figure_url = f"'{escape_sql(q['figureUrl'])}'" if q.get("figureUrl") else "NULL"
    return f"""INSERT INTO questions (id, section, module, topic, subtopic, difficulty, question_text, passage_text, figure_url, options, correct_index, explain_why, explain_concept, explain_next, is_calculator_allowed, est_time_sec, tags) VALUES ({q["id"]}, '{q["section"]}', {q.get("module", 1)}, '{q["topic"]}', '{escape_sql(q.get("subtopic", ""))}', '{q["difficulty"]}', '{escape_sql(q["questionText"])}', {f"'{escape_sql(q['passageText'])}'" if q.get("passageText") else "NULL"}, {figure_url}, '{escape_sql(json.dumps(q["options"]))}', {q["correctIndex"]}, '{escape_sql(q["explainWhy"])}', '{escape_sql(q["explainConcept"])}', '{escape_sql(q["explainNext"])}', {1 if q.get("isCalculatorAllowed") else 0}, {q.get("estTimeSec", 90)}, '{escape_sql(json.dumps(q.get("tags", [])))}');"""


# Topic to file mapping
TOPIC_FILE_MAP = {
    ("math", "algebra"): "questions-bank-math-algebra",
    ("math", "advanced_math"): "questions-bank-math-advanced",
    ("math", "problem_solving"): "questions-bank-math-problem-solving",
    ("math", "geometry"): "questions-bank-math-geometry",
    ("reading_writing", "information_ideas"): "questions-bank-rw-information",
    ("reading_writing", "craft_structure"): "questions-bank-rw-craft",
    ("reading_writing", "expression"): "questions-bank-rw-expression",
    ("reading_writing", "conventions"): "questions-bank-rw-conventions",
}

TOPIC_EXPORT_NAMES = {
    "algebra": "algebraQuestions",
    "advanced_math": "advancedMathQuestions",
    "problem_solving": "problemSolvingQuestions",
    "geometry": "geometryQuestions",
    "information_ideas": "informationIdeasQuestions",
    "craft_structure": "craftStructureQuestions",
    "expression": "expressionQuestions",
    "conventions": "conventionsQuestions",
}


def main():
    print("=" * 60)
    print("TutorZero Question Cleaning Pipeline")
    print("=" * 60)

    # Load enriched data
    print(f"\n1. Loading {INPUT_FILE}...")
    with open(INPUT_FILE) as f:
        raw_questions = json.load(f)
    print(f"   Loaded {len(raw_questions)} questions")

    # Phase 1: Clean
    print("\n2. Cleaning and validating questions...")
    cleaned = []
    rejected = Counter()
    rejected_by_source = Counter()

    for q in raw_questions:
        # Apply OCR fixes first
        q_clean = clean_question(q)
        q_clean["_original_id"] = q["id"]  # Preserve for figure mapping

        # Validate
        is_ok, reason = is_clean_question(q_clean)
        if is_ok:
            cleaned.append(q_clean)
        else:
            rejected[reason] += 1
            rejected_by_source[q.get("source", "unknown")] += 1

    print(f"   Clean: {len(cleaned)} | Rejected: {sum(rejected.values())}")
    print(f"   Rejection reasons:")
    for reason, count in rejected.most_common():
        print(f"     {reason}: {count}")

    # Re-assign sequential IDs
    print("\n3. Re-assigning sequential IDs...")
    for i, q in enumerate(cleaned, start=1):
        q["id"] = i

    # Load figure manifest and attach figureUrls
    print("\n3b. Attaching figure URLs from manifest...")
    figures_attached = 0
    if os.path.exists(MANIFEST_FILE):
        with open(MANIFEST_FILE) as f:
            manifest = json.load(f)
        fig_mappings = manifest.get("mappings", {})

        # Build old_id -> new_id mapping (IDs were reassigned above)
        # The manifest uses original enriched IDs, we need to match by original ID
        original_id_map = {}
        for i, q in enumerate(raw_questions):
            original_id_map[q["id"]] = None  # will map to new ID if question survived cleaning

        # Match by position: figure manifest uses original IDs
        # We need to find cleaned questions that correspond to original IDs
        for q_orig, q_clean in zip(raw_questions, [None] * len(raw_questions)):
            pass  # need different approach

        # Simpler: iterate cleaned questions, check if their original ID has a figure
        for q in cleaned:
            orig_id = str(q.get("_original_id", q["id"]))
            if orig_id in fig_mappings:
                q["figureUrl"] = FIGURES_URL_PREFIX + fig_mappings[orig_id]
                figures_attached += 1

    print(f"   Attached {figures_attached} figure URLs")

    # Phase 2: Split by source and generate TypeScript
    print("\n4. Generating TypeScript files...")

    # Split into bank questions and practice test questions
    bank_questions = [q for q in cleaned if q.get("source", "").startswith("question_bank")]
    practice_questions = {}

    for q in cleaned:
        src = q.get("source", "")
        if src.startswith("practice_test_"):
            test_num = int(src.split("_")[-1])
            practice_questions.setdefault(test_num, []).append(q)

    # Generate bank files by topic
    bank_by_topic = {}
    for q in bank_questions:
        key = (q["section"], q["topic"])
        bank_by_topic.setdefault(key, []).append(q)

    files_written = 0
    for (section, topic), qs in sorted(bank_by_topic.items()):
        file_key = TOPIC_FILE_MAP.get((section, topic))
        if file_key:
            export_name = TOPIC_EXPORT_NAMES.get(topic, f"{topic}Questions")
            content = generate_bank_file(export_name.replace("Questions", ""), section, qs)
            filepath = os.path.join(OUTPUT_DIR, f"{file_key}.ts")
            with open(filepath, "w") as f:
                f.write(content)
            print(f"   Wrote {filepath} ({len(qs)} questions)")
            files_written += 1

    # Generate practice test files
    for test_num in sorted(practice_questions.keys()):
        qs = practice_questions[test_num]
        content = generate_practice_test_file(test_num, qs)
        filepath = os.path.join(OUTPUT_DIR, f"questions-practice-test-{test_num}.ts")
        with open(filepath, "w") as f:
            f.write(content)
        print(f"   Wrote {filepath} ({len(qs)} questions)")
        files_written += 1

    print(f"   Total files written: {files_written}")

    # Phase 3: Generate D1 SQL
    print("\n5. Generating D1 seed SQL...")
    sql_lines = [
        "-- TutorZero Questions Seed Data",
        f"-- Generated from {len(cleaned)} clean questions",
        "-- Run: wrangler d1 execute tutorzero-prod --local --file=scripts/output/d1_seed.sql",
        "",
        "DELETE FROM questions;",
        "",
    ]

    for q in cleaned:
        sql_lines.append(generate_sql_insert(q))

    with open(SQL_OUTPUT, "w") as f:
        f.write("\n".join(sql_lines))
    print(f"   Wrote {SQL_OUTPUT} ({len(cleaned)} INSERT statements)")

    # Write cleaning report
    report = {
        "input_total": len(raw_questions),
        "output_total": len(cleaned),
        "rejected_total": sum(rejected.values()),
        "rejection_reasons": dict(rejected.most_common()),
        "rejected_by_source": dict(rejected_by_source.most_common()),
        "output_by_section": dict(Counter(q["section"] for q in cleaned).most_common()),
        "output_by_topic": dict(Counter(q["topic"] for q in cleaned).most_common()),
        "output_by_difficulty": dict(Counter(q["difficulty"] for q in cleaned).most_common()),
        "output_by_source": dict(Counter(q.get("source", "unknown") for q in cleaned).most_common()),
        "bank_questions": len(bank_questions),
        "practice_test_questions": {
            f"test_{num}": len(qs) for num, qs in sorted(practice_questions.items())
        },
        "files_written": files_written,
    }

    with open(REPORT_FILE, "w") as f:
        json.dump(report, f, indent=2)
    print(f"   Wrote {REPORT_FILE}")

    # Summary
    print("\n" + "=" * 60)
    print("SUMMARY")
    print("=" * 60)
    print(f"Input:    {len(raw_questions)} questions")
    print(f"Output:   {len(cleaned)} clean questions ({100*len(cleaned)//len(raw_questions)}%)")
    print(f"Rejected: {sum(rejected.values())} questions")
    print(f"Bank:     {len(bank_questions)} questions across {len(bank_by_topic)} topics")
    print(f"Practice: {sum(len(qs) for qs in practice_questions.values())} questions across {len(practice_questions)} tests")
    print(f"Files:    {files_written} TypeScript files + 1 SQL file")
    print()
    for test_num in sorted(practice_questions.keys()):
        print(f"  Practice Test {test_num}: {len(practice_questions[test_num])} clean questions")


if __name__ == "__main__":
    main()
