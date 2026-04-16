#!/usr/bin/env python3
"""
Step 1 of the new pipeline: Extract each PDF page as a PNG image.

This replaces the old Tesseract-based extraction. We don't try to parse text
here — we just produce clean page images that Claude Code can read with vision.

Output layout:
  extracted/
    question-bank/
      math/
        algebra/
          linear_equations_one_var/
            pdf1_page01.png
            pdf1_page02.png
            pdf3_page01.png
            ...
      reading_writing/
        ...
    practice-tests/
      test-4/
        rw_module1_page01.png
        math_module2_page04.png
        ...
    answer-keys/
      <subtopic>_1.txt   (text extracted from answer PDFs; these are text-based)
      practice-test-4-answers.txt

Usage:
  cd scripts
  python3 extract_images.py                      # extract everything
  python3 extract_images.py --subtopic algebra   # extract just one topic (useful for dry-run)
  python3 extract_images.py --practice-only      # just the 8 practice tests
"""

import argparse
import os
import re
import sys
from pathlib import Path

try:
    import fitz  # PyMuPDF
except ImportError:
    print("ERROR: PyMuPDF not installed. Run: pip3 install --break-system-packages pymupdf")
    sys.exit(1)

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------
SCRIPT_DIR = Path(__file__).resolve().parent
PROJECT_ROOT = SCRIPT_DIR.parent
SAT_DIR = PROJECT_ROOT / "SAT Questions"
BANK_DIR = SAT_DIR / "SAT Question Bank"
OUT_DIR = SCRIPT_DIR / "extracted"

# Render DPI: 220 gives crisp math/superscripts without huge filesizes.
# Claude Code vision handles images up to ~2000px edge well.
RENDER_DPI = 220

# ---------------------------------------------------------------------------
# Folder name → snake_case keys (mirrors your TypeScript data)
# ---------------------------------------------------------------------------
SECTION_MAP = {
    "Math": "math",
    "Reading and Writing": "reading_writing",
}

TOPIC_MAP = {
    "Algebra": "algebra",
    "Advanced Math": "advanced_math",
    "Problem-Solving and Data Analysis": "problem_solving",
    "Geometry and Trigonometry": "geometry",
    "Information and Ideas": "information_ideas",
    "Craft and Structure": "craft_structure",
    "Expression of Ideas": "expression",
    "Standard English Conventions": "conventions",
}

SUBTOPIC_MAP = {
    "Linear Equations in One Variable": "linear_equations_one_var",
    "Linear Equations in Two Variables": "linear_equations_two_var",
    "Linear Functions": "linear_functions",
    "Linear Inequalities": "linear_inequalities",
    "Systems of Linear Equations": "systems_of_equations",
    "Equivalent Expressions": "equivalent_expressions",
    "Nonlinear Equations and Systems": "nonlinear_equations",
    "Nonlinear Functions": "nonlinear_functions",
    "Evaluating Statistical Claims": "statistical_claims",
    "One-Variable Data": "one_var_data",
    "Percentages": "percentages",
    "Probability": "probability",
    "Ratios, Rates, Proportions, and Units": "ratios_rates",
    "Sample Statistics and Margin of Error": "inference",
    "Two-Variable Data": "two_var_data",
    "Area and Volume": "area_volume",
    "Circles": "circles",
    "Lines, Angles, and Triangles": "lines_angles_triangles",
    "Right Triangles and Trigonometry": "right_triangles_trig",
    "Central Ideas and Details": "central_ideas",
    "Command of Evidence": "evidence",
    "Inferences": "inferences",
    "Cross-Text Connections": "cross_text",
    "Text Structure and Purpose": "text_structure_purpose",
    "Words in Context": "words_context",
    "Rhetorical Synthesis": "rhetorical_synthesis",
    "Transitions": "transitions",
    "Boundaries": "boundaries",
    "Form, Structure, and Sense": "form_structure_sense",
}


def render_pdf_pages(pdf_path: Path, out_dir: Path, prefix: str) -> int:
    """Render every page of a PDF as a PNG. Returns number of pages rendered."""
    out_dir.mkdir(parents=True, exist_ok=True)
    doc = fitz.open(pdf_path)
    zoom = RENDER_DPI / 72
    matrix = fitz.Matrix(zoom, zoom)

    for page_num in range(len(doc)):
        page = doc[page_num]
        pix = page.get_pixmap(matrix=matrix, alpha=False)
        out_path = out_dir / f"{prefix}_page{page_num + 1:02d}.png"
        pix.save(out_path)

    doc.close()
    return len(doc)


def extract_pdf_text(pdf_path: Path, out_path: Path) -> None:
    """Extract plain text from a text-layer PDF (answer keys have clean text)."""
    doc = fitz.open(pdf_path)
    chunks = []
    for page in doc:
        chunks.append(page.get_text())
    doc.close()
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text("\n\n=== PAGE BREAK ===\n\n".join(chunks), encoding="utf-8")


# ---------------------------------------------------------------------------
# Question Bank extraction
# ---------------------------------------------------------------------------
def process_question_bank(subtopic_filter: str | None = None) -> None:
    print(f"\n{'='*60}\nExtracting Question Bank PDFs\n{'='*60}")
    total_pages = 0
    total_pdfs = 0

    for section_name, section_key in SECTION_MAP.items():
        section_path = BANK_DIR / section_name
        if not section_path.is_dir():
            continue

        for topic_dir in sorted(section_path.iterdir()):
            if not topic_dir.is_dir():
                continue
            topic_key = TOPIC_MAP.get(topic_dir.name, topic_dir.name.lower().replace(" ", "_"))

            for subtopic_dir in sorted(topic_dir.iterdir()):
                if not subtopic_dir.is_dir():
                    continue
                subtopic_key = SUBTOPIC_MAP.get(
                    subtopic_dir.name, subtopic_dir.name.lower().replace(" ", "_")
                )

                if subtopic_filter and subtopic_filter != subtopic_key:
                    continue

                out_subdir = OUT_DIR / "question-bank" / section_key / topic_key / subtopic_key

                for pdf_path in sorted(subtopic_dir.glob("*.pdf")):
                    # Filename looks like "Linear Equations in One Variable 3.pdf"
                    m = re.search(r"(\d+)\.pdf$", pdf_path.name)
                    pdf_num = int(m.group(1)) if m else 1
                    prefix = f"pdf{pdf_num}"
                    pages = render_pdf_pages(pdf_path, out_subdir, prefix)
                    total_pages += pages
                    total_pdfs += 1
                    print(f"  [{pages} pages] {section_key}/{topic_key}/{subtopic_key}/{pdf_path.name}")

    # Answer keys (text-only extraction; no rendering needed)
    print(f"\nExtracting answer keys as text...")
    answers_root = BANK_DIR / "Answers"
    for section_name in ["Math", "Reading and Writing"]:
        section_path = answers_root / section_name
        if not section_path.is_dir():
            continue
        for pdf_path in sorted(section_path.glob("*.pdf")):
            # Filename like "Linear Equations in One Variable 1~Key.pdf"
            m = re.match(r"^(.+?) (\d+)~Key\.pdf$", pdf_path.name)
            if not m:
                print(f"  Warning: could not parse answer-key filename: {pdf_path.name}")
                continue
            subtopic_name = m.group(1).strip()
            pdf_num = int(m.group(2))
            subtopic_key = SUBTOPIC_MAP.get(
                subtopic_name, subtopic_name.lower().replace(" ", "_")
            )
            if subtopic_filter and subtopic_filter != subtopic_key:
                continue
            out_path = OUT_DIR / "answer-keys" / "question-bank" / f"{subtopic_key}_{pdf_num}.txt"
            extract_pdf_text(pdf_path, out_path)
            print(f"  [text]    {subtopic_key}_{pdf_num}")

    print(f"\n  → {total_pdfs} PDFs, {total_pages} pages rendered")


# ---------------------------------------------------------------------------
# Practice test extraction
# ---------------------------------------------------------------------------
def process_practice_tests() -> None:
    print(f"\n{'='*60}\nExtracting Practice Tests\n{'='*60}")
    total_pages = 0

    for bundle_num in range(4, 12):
        bundle_dir = SAT_DIR / f"full-length-sat-paper-practice-test_-bundle-{bundle_num}"
        if not bundle_dir.is_dir():
            print(f"  Skipping test {bundle_num} (bundle not found)")
            continue

        questions_pdf = bundle_dir / f"sat-practice-test-{bundle_num}-digital.pdf"
        answers_pdf = bundle_dir / f"sat-practice-test-{bundle_num}-answers-digital.pdf"
        scoring_pdf = bundle_dir / f"scoring-sat-practice-test-{bundle_num}-digital.pdf"

        # Render the question PDF as page images
        if questions_pdf.exists():
            out_dir = OUT_DIR / "practice-tests" / f"test-{bundle_num}"
            pages = render_pdf_pages(questions_pdf, out_dir, "q")
            total_pages += pages
            print(f"  [{pages} pages] test-{bundle_num} questions")

        # Extract answer key + explanation PDFs as text (they have a text layer)
        if answers_pdf.exists():
            out_path = OUT_DIR / "answer-keys" / "practice-tests" / f"test-{bundle_num}-explanations.txt"
            extract_pdf_text(answers_pdf, out_path)
            print(f"  [text]    test-{bundle_num} explanations")

        if scoring_pdf.exists():
            out_path = OUT_DIR / "answer-keys" / "practice-tests" / f"test-{bundle_num}-scoring.txt"
            extract_pdf_text(scoring_pdf, out_path)
            print(f"  [text]    test-{bundle_num} scoring")

    print(f"\n  → {total_pages} practice-test pages rendered")


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
def main() -> None:
    parser = argparse.ArgumentParser(description="Render SAT PDFs into page images for Claude Code to consume.")
    parser.add_argument("--subtopic", help="Only render this subtopic key (e.g. 'linear_equations_one_var'). Useful for dry-runs.")
    parser.add_argument("--practice-only", action="store_true", help="Skip question bank, only render the 8 practice tests.")
    parser.add_argument("--bank-only", action="store_true", help="Skip practice tests, only render the question bank.")
    args = parser.parse_args()

    if not SAT_DIR.is_dir():
        print(f"ERROR: SAT Questions directory not found at {SAT_DIR}")
        sys.exit(1)

    OUT_DIR.mkdir(parents=True, exist_ok=True)

    if not args.practice_only:
        process_question_bank(subtopic_filter=args.subtopic)

    if not args.bank_only and not args.subtopic:
        process_practice_tests()

    print(f"\n{'='*60}\nDone. Output at: {OUT_DIR}\n{'='*60}")


if __name__ == "__main__":
    main()
