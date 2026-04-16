#!/usr/bin/env python3
"""
Step 3 of the new pipeline: merge all questions.json files Claude Code produced,
pair them with answer keys, and write fresh .ts files to src/data/.

Expects this layout (produced by extract_images.py + Claude Code runs):
  scripts/extracted/
    question-bank/<section>/<topic>/<subtopic>/questions.json
    practice-tests/test-<N>/questions.json
    answer-keys/question-bank/<subtopic>_<n>.txt
    answer-keys/practice-tests/test-<N>-scoring.txt
    answer-keys/practice-tests/test-<N>-explanations.txt

Output .ts files land in src/data/ and match the Question interface in src/data/questions.ts.

Usage:
  python3 merge_to_typescript.py              # merge everything
  python3 merge_to_typescript.py --dry-run    # show stats, write nothing
"""

import argparse
import json
import re
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
PROJECT_ROOT = SCRIPT_DIR.parent
EXTRACTED_DIR = SCRIPT_DIR / "extracted"
SRC_DATA_DIR = PROJECT_ROOT / "src" / "data"

# Stable ID ranges per (section, topic). Keep IDs inside their bucket so later
# regeneration doesn't reshuffle every question's ID.
ID_RANGES = {
    ("math", "algebra"): (1001, 1499),
    ("math", "advanced_math"): (1500, 1799),
    ("math", "problem_solving"): (1800, 2099),
    ("math", "geometry"): (2100, 2399),
    ("reading_writing", "information_ideas"): (2400, 2699),
    ("reading_writing", "craft_structure"): (2700, 2949),
    ("reading_writing", "expression"): (2950, 3149),
    ("reading_writing", "conventions"): (3150, 3349),
}

# (section, topic) → output filename + exported TS variable name
BANK_FILES = {
    ("math", "algebra"): ("questions-bank-math-algebra.ts", "bankMathAlgebraQuestions"),
    ("math", "advanced_math"): ("questions-bank-math-advanced.ts", "bankMathAdvancedQuestions"),
    ("math", "problem_solving"): ("questions-bank-math-problem-solving.ts", "bankMathProblemSolvingQuestions"),
    ("math", "geometry"): ("questions-bank-math-geometry.ts", "bankMathGeometryQuestions"),
    ("reading_writing", "information_ideas"): ("questions-bank-rw-information.ts", "bankRwInformationQuestions"),
    ("reading_writing", "craft_structure"): ("questions-bank-rw-craft.ts", "bankRwCraftQuestions"),
    ("reading_writing", "expression"): ("questions-bank-rw-expression.ts", "bankRwExpressionQuestions"),
    ("reading_writing", "conventions"): ("questions-bank-rw-conventions.ts", "bankRwConventionsQuestions"),
}


# ---------------------------------------------------------------------------
# Answer-key parsing
# ---------------------------------------------------------------------------
def parse_bank_answer_key(text: str) -> dict[str, str]:
    """
    Parse a bank answer-key text file into {question_number: answer_letter_or_value}.

    The format is roughly:
        1.1
        a9c3f01b
        C
        1.2
        b1f7...
        14
    (Triples of question-number, ID, and answer.)
    """
    out: dict[str, str] = {}
    lines = [l.strip() for l in text.splitlines()]
    i = 0
    while i < len(lines):
        qn_match = re.match(r"^(\d+\.\d+)$", lines[i])
        if qn_match:
            q_num = qn_match.group(1)
            # Answer is 1–2 lines below (there's an ID in between)
            for offset in (2, 1, 3):
                if i + offset < len(lines):
                    candidate = lines[i + offset]
                    if re.match(r"^[A-D]$", candidate) or re.match(r"^[\d\.\-\/; ,]+$", candidate):
                        if candidate.strip():
                            out[q_num] = candidate.strip()
                            break
        i += 1
    return out


def parse_practice_scoring(text: str) -> dict[tuple[str, int, int], str]:
    """
    Parse a practice test scoring PDF text dump.

    Returns {(section, module, question_num): answer}.
    Sections appear in order: R&W Mod 1, R&W Mod 2, Math Mod 1, Math Mod 2.
    """
    out: dict[tuple[str, int, int], str] = {}
    section_order = [
        ("reading_writing", 1),
        ("reading_writing", 2),
        ("math", 1),
        ("math", 2),
    ]
    # Split the text into chunks starting at each "QUESTION #" header.
    chunks = re.split(r"\bQUESTION\s*#\b", text)[1:]  # drop preamble
    for idx, chunk in enumerate(chunks[: len(section_order)]):
        section, module = section_order[idx]
        # Pull (q_num, answer) pairs out of the chunk
        lines = [l.strip() for l in chunk.splitlines() if l.strip()]
        j = 0
        while j < len(lines):
            if re.match(r"^\d+$", lines[j]):
                q_num = int(lines[j])
                if j + 1 < len(lines):
                    ans = lines[j + 1]
                    if re.match(r"^[A-D]$", ans) or re.match(r"^[\d\.\-\/ ,;]+$", ans):
                        out[(section, module, q_num)] = ans
                        j += 2
                        continue
            j += 1
    return out


def parse_practice_explanations(text: str) -> dict[tuple[str, int, int], str]:
    """
    Parse the explanations PDF text into {(section, module, q_num): explanation_text}.
    """
    out: dict[tuple[str, int, int], str] = {}
    section = None
    module = None
    current_q = None
    buffer: list[str] = []

    def flush():
        if section and module and current_q is not None and buffer:
            out[(section, module, current_q)] = "\n".join(buffer).strip()

    for raw_line in text.splitlines():
        line = raw_line.strip()
        upper = line.upper()

        if "READING AND WRITING: MODULE 1" in upper:
            flush(); section, module, current_q, buffer = "reading_writing", 1, None, []
            continue
        if "READING AND WRITING: MODULE 2" in upper:
            flush(); section, module, current_q, buffer = "reading_writing", 2, None, []
            continue
        if "MATH: MODULE 1" in upper:
            flush(); section, module, current_q, buffer = "math", 1, None, []
            continue
        if "MATH: MODULE 2" in upper:
            flush(); section, module, current_q, buffer = "math", 2, None, []
            continue

        qm = re.match(r"^QUESTION\s+(\d+)\s*$", line)
        if qm and section:
            flush()
            current_q = int(qm.group(1))
            buffer = []
            continue

        if current_q is not None and line:
            buffer.append(line)

    flush()
    return out


# ---------------------------------------------------------------------------
# Difficulty mapping
# ---------------------------------------------------------------------------
def map_difficulty(source_difficulty: str) -> str:
    """Claude Code outputs E/M/H; your schema uses foundation/easy/medium/hard/advanced."""
    return {"E": "easy", "M": "medium", "H": "hard"}.get(source_difficulty, "medium")


# ---------------------------------------------------------------------------
# TypeScript emission
# ---------------------------------------------------------------------------
def escape_for_backtick(s: str) -> str:
    """Escape a string for a TS template literal."""
    if not s:
        return ""
    return s.replace("\\", "\\\\").replace("`", "\\`").replace("${", "\\${")


def format_question_ts(q: dict) -> str:
    lines = ["  {"]
    lines.append(f'    id: {q["id"]},')
    lines.append(f'    section: "{q["section"]}",')
    lines.append(f'    module: {q["module"]},')
    lines.append(f'    topic: "{q["topic"]}",')
    lines.append(f'    subtopic: "{q["subtopic"]}",')
    lines.append(f'    difficulty: "{q["difficulty"]}",')
    lines.append(f"    questionText: `{escape_for_backtick(q['questionText'])}`,")
    if q.get("passageText"):
        lines.append(f"    passageText: `{escape_for_backtick(q['passageText'])}`,")
    opts = ", ".join(f"`{escape_for_backtick(o)}`" for o in q["options"])
    lines.append(f"    options: [{opts}],")
    lines.append(f'    correctIndex: {q["correctIndex"]},')
    lines.append(f"    explainWhy: `{escape_for_backtick(q['explainWhy'])}`,")
    lines.append(f"    explainConcept: `{escape_for_backtick(q['explainConcept'])}`,")
    lines.append(f"    explainNext: `{escape_for_backtick(q['explainNext'])}`,")
    lines.append(f'    isCalculatorAllowed: {"true" if q["isCalculatorAllowed"] else "false"},')
    lines.append(f'    estTimeSec: {q["estTimeSec"]},')
    tags = ", ".join(f'"{t}"' for t in q.get("tags", []))
    lines.append(f"    tags: [{tags}],")
    lines.append("  }")
    return "\n".join(lines)


def write_ts_file(path: Path, export_name: str, questions: list[dict]) -> None:
    header = 'import type { Question } from "./questions";\n\n'
    header += f"export const {export_name}: Question[] = [\n"
    body = ",\n".join(format_question_ts(q) for q in questions)
    footer = "\n];\n"
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(header + body + footer, encoding="utf-8")


# ---------------------------------------------------------------------------
# Merge logic
# ---------------------------------------------------------------------------
def load_extracted(path: Path) -> list[dict]:
    if not path.exists():
        return []
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except json.JSONDecodeError as e:
        print(f"  ⚠ Could not parse {path}: {e}")
        return []


def build_bank_questions(dry_run: bool) -> dict[tuple[str, str], list[dict]]:
    """Walk extracted/question-bank/ and build question lists keyed by (section, topic)."""
    buckets: dict[tuple[str, str], list[dict]] = {}
    answer_keys_dir = EXTRACTED_DIR / "answer-keys" / "question-bank"
    bank_root = EXTRACTED_DIR / "question-bank"
    if not bank_root.is_dir():
        return buckets

    # Preload answer keys: {subtopic_key: {q_num: answer}}
    answer_keys: dict[str, dict[str, str]] = {}
    if answer_keys_dir.is_dir():
        for f in answer_keys_dir.glob("*.txt"):
            m = re.match(r"^(.+?)_(\d+)$", f.stem)
            if not m:
                continue
            subtopic_key = m.group(1)
            pdf_num = int(m.group(2))
            parsed = parse_bank_answer_key(f.read_text(encoding="utf-8"))
            # Remap keys to include pdf number: "1.5" → ("1.5", pdf_num)
            answer_keys.setdefault(subtopic_key, {}).update(
                {f"{pdf_num}.{qn.split('.')[1]}": a for qn, a in parsed.items()}
            )

    # Walk section/topic/subtopic
    for section_dir in sorted(bank_root.iterdir()):
        if not section_dir.is_dir(): continue
        section = section_dir.name
        for topic_dir in sorted(section_dir.iterdir()):
            if not topic_dir.is_dir(): continue
            topic = topic_dir.name
            key = (section, topic)
            start_id, max_id = ID_RANGES.get(key, (5000, 5999))
            next_id = start_id

            for subtopic_dir in sorted(topic_dir.iterdir()):
                if not subtopic_dir.is_dir(): continue
                subtopic = subtopic_dir.name
                qs_path = subtopic_dir / "questions.json"
                raw = load_extracted(qs_path)
                if not raw:
                    print(f"  (no questions.json) {section}/{topic}/{subtopic}")
                    continue

                sub_answers = answer_keys.get(subtopic, {})

                for eq in raw:
                    if next_id > max_id:
                        print(f"  ⚠ {section}/{topic}: exceeded ID range, skipping remaining")
                        break

                    # Answer matching: source_order lines up with PDF position,
                    # but bank answer keys use "pdf_num.q_pos" keys.
                    # Claude Code doesn't know pdf_num → we leave correct_index as-is
                    # if we can't match, and warn.
                    answer = None
                    for k, v in sub_answers.items():
                        if k.endswith(f".{eq.get('source_order', 0)}"):
                            answer = v
                            break

                    is_spr = eq.get("is_spr", False)
                    options = eq.get("options", [])
                    correct_index = 0

                    if is_spr:
                        options = [str(answer) if answer else "?", "0", "1", "-1"]
                    elif answer and re.match(r"^[A-D]$", answer):
                        correct_index = ord(answer) - ord("A")
                    elif len(options) == 4:
                        correct_index = 0  # unknown; default to A

                    while len(options) < 4:
                        options.append("")
                    options = options[:4]

                    tags = []
                    if is_spr: tags.append("student_produced_response")
                    if eq.get("has_figure"): tags.append("has_figure")

                    buckets.setdefault(key, []).append({
                        "id": next_id,
                        "section": section,
                        "module": 1,  # Bank PDFs don't really split modules
                        "topic": topic,
                        "subtopic": subtopic,
                        "difficulty": map_difficulty(eq.get("source_difficulty", "M")),
                        "questionText": eq.get("question_text", ""),
                        "passageText": eq.get("passage_text"),
                        "options": options,
                        "correctIndex": correct_index,
                        "explainWhy": "See the College Board answer key for the official explanation.",
                        "explainConcept": f"This question tests {subtopic.replace('_', ' ')}.",
                        "explainNext": "Review similar questions in this subtopic to reinforce the concept.",
                        "isCalculatorAllowed": section == "math",
                        "estTimeSec": 120 if section == "math" else 90,
                        "tags": tags,
                    })
                    next_id += 1

    return buckets


def build_practice_test_questions() -> dict[int, list[dict]]:
    """Walk extracted/practice-tests/ and build per-test question lists."""
    tests: dict[int, list[dict]] = {}
    pt_root = EXTRACTED_DIR / "practice-tests"
    ak_root = EXTRACTED_DIR / "answer-keys" / "practice-tests"
    if not pt_root.is_dir():
        return tests

    for test_dir in sorted(pt_root.iterdir()):
        if not test_dir.is_dir(): continue
        m = re.match(r"test-(\d+)", test_dir.name)
        if not m: continue
        test_num = int(m.group(1))

        qs_path = test_dir / "questions.json"
        raw = load_extracted(qs_path)
        if not raw:
            print(f"  (no questions.json) practice test {test_num}")
            continue

        # Load scoring + explanations
        scoring_text = ""
        explanations_text = ""
        scoring_file = ak_root / f"test-{test_num}-scoring.txt"
        explanations_file = ak_root / f"test-{test_num}-explanations.txt"
        if scoring_file.exists(): scoring_text = scoring_file.read_text(encoding="utf-8")
        if explanations_file.exists(): explanations_text = explanations_file.read_text(encoding="utf-8")

        scoring = parse_practice_scoring(scoring_text) if scoring_text else {}
        explanations = parse_practice_explanations(explanations_text) if explanations_text else {}

        for eq in raw:
            section = eq.get("practice_test_section", "math")
            module = eq.get("practice_test_module", 1)
            q_num = eq.get("source_order", 0)

            # Topic/subtopic assignment for practice tests: punt to a heuristic.
            # We don't know the official categorization from the practice PDF,
            # so we put everything in a neutral bucket per section.
            topic = "algebra" if section == "math" else "information_ideas"
            subtopic = "linear_equations_one_var" if section == "math" else "central_ideas"

            answer = scoring.get((section, module, q_num), "")
            is_spr = eq.get("is_spr", False)
            options = eq.get("options", [])
            correct_index = 0

            if is_spr:
                options = [str(answer) if answer else "?", "0", "1", "-1"]
            elif answer and re.match(r"^[A-D]$", answer):
                correct_index = ord(answer) - ord("A")

            while len(options) < 4: options.append("")
            options = options[:4]

            tags = []
            if is_spr: tags.append("student_produced_response")
            if eq.get("has_figure"): tags.append("has_figure")

            explanation = explanations.get((section, module, q_num), "")
            explain_why = explanation[:500] if explanation else \
                f"The correct answer is {answer or '?'}."
            explain_concept = "This is a real College Board practice test question."
            explain_next = "Keep working through practice tests to build test-taking stamina."

            # Practice test IDs: keep them distinct from bank IDs
            qid = 10000 + test_num * 1000 + (0 if section == "reading_writing" else 500) + \
                  (0 if module == 1 else 250) + q_num

            # Difficulty by position (same heuristic as old code)
            if section == "reading_writing":
                difficulty = "easy" if q_num <= 8 else "medium" if q_num <= 20 else "hard" if q_num <= 28 else "advanced"
            else:
                difficulty = "easy" if q_num <= 5 else "medium" if q_num <= 15 else "hard" if q_num <= 22 else "advanced"

            tests.setdefault(test_num, []).append({
                "id": qid,
                "section": section,
                "module": module,
                "topic": topic,
                "subtopic": subtopic,
                "difficulty": difficulty,
                "questionText": eq.get("question_text", ""),
                "passageText": eq.get("passage_text"),
                "options": options,
                "correctIndex": correct_index,
                "explainWhy": explain_why,
                "explainConcept": explain_concept,
                "explainNext": explain_next,
                "isCalculatorAllowed": section == "math",
                "estTimeSec": 120 if section == "math" else 90,
                "tags": tags,
            })

    return tests


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--dry-run", action="store_true", help="Show stats, write nothing")
    args = parser.parse_args()

    if not EXTRACTED_DIR.is_dir():
        print(f"ERROR: {EXTRACTED_DIR} does not exist. Run extract_images.py and Claude Code first.")
        sys.exit(1)

    print("=" * 60)
    print("Merging extracted questions into TypeScript files")
    print("=" * 60)

    print("\n--- Question Bank ---")
    bank = build_bank_questions(dry_run=args.dry_run)
    for key, questions in bank.items():
        filename, export_name = BANK_FILES.get(key, (f"{key[0]}-{key[1]}.ts", "questions"))
        print(f"  {key}: {len(questions)} questions → {filename}")
        if not args.dry_run:
            write_ts_file(SRC_DATA_DIR / filename, export_name, questions)

    print("\n--- Practice Tests ---")
    tests = build_practice_test_questions()
    for test_num, questions in sorted(tests.items()):
        filename = f"questions-practice-test-{test_num}.ts"
        export_name = f"practiceTest{test_num}Questions"
        print(f"  test {test_num}: {len(questions)} questions → {filename}")
        if not args.dry_run:
            write_ts_file(SRC_DATA_DIR / filename, export_name, questions)

    total = sum(len(v) for v in bank.values()) + sum(len(v) for v in tests.values())
    print(f"\n{'=' * 60}\nTotal: {total} questions{'  (dry run, nothing written)' if args.dry_run else ''}\n{'=' * 60}")


if __name__ == "__main__":
    main()
