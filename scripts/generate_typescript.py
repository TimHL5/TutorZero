#!/usr/bin/env python3
"""Phase 4: Generate TypeScript data files from enriched questions."""

import json
import os
import re

OUTPUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "output")
SRC_DATA_DIR = os.path.join(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
    "TutorZero — Your tutor. Zero cost.",
    "src",
    "data",
)

# File mapping: (source_type, filter_key) -> (filename, export_name)
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

PRACTICE_TESTS = [4, 5, 6, 7, 8, 9, 10, 11]


def escape_ts_string(s):
    """Escape a string for TypeScript template literal or string."""
    if s is None:
        return ""
    s = s.replace("\\", "\\\\")
    s = s.replace("`", "\\`")
    s = s.replace("${", "\\${")
    return s


def format_question_ts(q):
    """Format a single question as TypeScript object literal."""
    section = q["section"]
    module = q["module"]
    topic = q["topic"]
    subtopic = q["subtopic"]
    difficulty = q["difficulty"]
    q_text = escape_ts_string(q["questionText"])
    passage = q.get("passageText")
    options = q["options"]
    correct_idx = q["correctIndex"]
    explain_why = escape_ts_string(q["explainWhy"])
    explain_concept = escape_ts_string(q["explainConcept"])
    explain_next = escape_ts_string(q["explainNext"])
    is_calc = "true" if q.get("isCalculatorAllowed") else "false"
    est_time = q.get("estTimeSec", 90)
    tags = q.get("tags", [])

    # Format options array
    opts_str = ", ".join(f'`{escape_ts_string(o)}`' for o in options)

    # Format tags
    tags_str = ", ".join(f'"{t}"' for t in tags)

    lines = [
        f"  {{",
        f'    id: {q["id"]},',
        f'    section: "{section}",',
        f"    module: {module},",
        f'    topic: "{topic}",',
        f'    subtopic: "{subtopic}",',
        f'    difficulty: "{difficulty}",',
        f"    questionText: `{q_text}`,",
    ]

    if passage:
        lines.append(f"    passageText: `{escape_ts_string(passage)}`,")

    lines.extend([
        f"    options: [{opts_str}],",
        f"    correctIndex: {correct_idx},",
        f"    explainWhy: `{explain_why}`,",
        f"    explainConcept: `{explain_concept}`,",
        f"    explainNext: `{explain_next}`,",
        f"    isCalculatorAllowed: {is_calc},",
        f"    estTimeSec: {est_time},",
        f"    tags: [{tags_str}],",
        f"  }}",
    ])

    return "\n".join(lines)


def generate_bank_file(questions, filename, export_name):
    """Generate a TypeScript file for a question bank category."""
    header = f'import type {{ Question }} from "./questions";\n\n'
    header += f"export const {export_name}: Question[] = [\n"

    body = ",\n".join(format_question_ts(q) for q in questions)

    footer = "\n];\n"

    filepath = os.path.join(SRC_DATA_DIR, filename)
    with open(filepath, "w") as f:
        f.write(header + body + footer)

    return filepath


def generate_practice_test_file(questions, test_num):
    """Generate a TypeScript file for a practice test."""
    filename = f"questions-practice-test-{test_num}.ts"
    export_name = f"practiceTest{test_num}Questions"

    header = f'import type {{ Question }} from "./questions";\n\n'
    header += f"export const {export_name}: Question[] = [\n"

    body = ",\n".join(format_question_ts(q) for q in questions)

    footer = "\n];\n"

    filepath = os.path.join(SRC_DATA_DIR, filename)
    with open(filepath, "w") as f:
        f.write(header + body + footer)

    return filepath


def main():
    print("=" * 60)
    print("Phase 4: Generate TypeScript Files")
    print("=" * 60)

    with open(os.path.join(OUTPUT_DIR, "questions_enriched.json")) as f:
        all_questions = json.load(f)

    print(f"Loaded {len(all_questions)} enriched questions")

    # Separate bank and practice questions
    bank_questions = [q for q in all_questions if q["source"] == "question_bank"]
    practice_questions = [q for q in all_questions if "practice" in q["source"]]

    files_created = []

    # Generate bank files
    print("\nGenerating bank files:")
    for (section, topic), (filename, export_name) in BANK_FILES.items():
        qs = [q for q in bank_questions if q["section"] == section and q["topic"] == topic]
        qs.sort(key=lambda x: x["id"])
        if qs:
            filepath = generate_bank_file(qs, filename, export_name)
            files_created.append(filepath)
            print(f"  {filename}: {len(qs)} questions")
        else:
            print(f"  {filename}: SKIPPED (no questions)")

    # Generate practice test files
    print("\nGenerating practice test files:")
    for test_num in PRACTICE_TESTS:
        source_key = f"practice_test_{test_num}"
        qs = [q for q in practice_questions if q["source"] == source_key]
        qs.sort(key=lambda x: (x["section"], x["module"], x["id"]))
        if qs:
            filepath = generate_practice_test_file(qs, test_num)
            files_created.append(filepath)
            print(f"  questions-practice-test-{test_num}.ts: {len(qs)} questions")
        else:
            print(f"  questions-practice-test-{test_num}.ts: SKIPPED (no questions)")

    print(f"\n{'=' * 60}")
    print(f"Generated {len(files_created)} TypeScript files")
    print(f"{'=' * 60}")


if __name__ == "__main__":
    main()
