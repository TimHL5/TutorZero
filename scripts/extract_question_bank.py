#!/usr/bin/env python3
"""Phase 1: Extract questions from SAT Question Bank PDFs using OCR."""

import fitz
import json
import os
import re
import subprocess
import tempfile
import sys

SAT_DIR = os.path.join(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
    "TutorZero — Your tutor. Zero cost.",
    "SAT Questions",
)
BANK_DIR = os.path.join(SAT_DIR, "SAT Question Bank")
OUTPUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "output")

# Topic/subtopic mapping from folder names
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

SECTION_MAP = {
    "Math": "math",
    "Reading and Writing": "reading_writing",
}


def get_difficulty(pdf_number, question_pos):
    """Assign difficulty based on PDF number (1-3) and position within PDF."""
    if pdf_number == 1:
        if question_pos <= 10:
            return "easy"
        else:
            return "medium"
    elif pdf_number == 2:
        if question_pos <= 20:
            return "medium"
        else:
            return "hard"
    else:  # PDF 3
        if question_pos <= 15:
            return "medium"
        elif question_pos <= 25:
            return "hard"
        else:
            return "advanced"


def ocr_image(image_bytes, ext="jpg"):
    """Run Tesseract OCR on image bytes."""
    with tempfile.NamedTemporaryFile(suffix=f".{ext}", delete=False) as f:
        f.write(image_bytes)
        tmp_path = f.name
    try:
        result = subprocess.run(
            ["tesseract", tmp_path, "-", "--psm", "6"],
            capture_output=True,
            text=True,
            timeout=30,
        )
        return result.stdout.strip()
    except Exception as e:
        return f"[OCR_ERROR: {e}]"
    finally:
        os.unlink(tmp_path)


def parse_page_metadata(page_text):
    """Parse question numbers, IDs, and difficulty scores from page metadata text."""
    entries = []
    lines = page_text.strip().split("\n")

    # Find question number patterns like "1.1", "2.15", etc.
    i = 0
    while i < len(lines):
        line = lines[i].strip()
        # Match question number pattern: N.M
        m = re.match(r"^(\d+\.\d+)$", line)
        if m:
            q_num = m.group(1)
            q_id = ""
            q_score = 0
            # Next line should be ID (hex string)
            if i + 1 < len(lines):
                id_line = lines[i + 1].strip()
                if re.match(r"^[0-9a-f]{6,}$", id_line):
                    q_id = id_line
                    # Next line should be score
                    if i + 2 < len(lines):
                        score_line = lines[i + 2].strip()
                        try:
                            q_score = int(score_line)
                        except ValueError:
                            pass
            entries.append(
                {"question_number": q_num, "question_id": q_id, "difficulty_score": q_score}
            )
        i += 1
    return entries


def parse_ocr_text(ocr_text, section):
    """Parse OCR text into question components."""
    result = {
        "question_text": "",
        "passage_text": "",
        "options": [],
        "is_spr": False,
        "has_figure": False,
    }

    text = ocr_text.strip()
    if not text:
        return result

    # Detect figures/graphs
    figure_indicators = [
        "[figure", "[graph", "[table", "[diagram", "[chart",
        "figure not", "image not", "see figure", "see graph",
    ]
    if any(ind in text.lower() for ind in figure_indicators):
        result["has_figure"] = True

    # Check if this looks like it has a figure (very short text with no options)
    # or if OCR produced garbage
    if len(text) < 20:
        result["has_figure"] = True
        result["question_text"] = text
        return result

    # Try to extract options A-D
    # Pattern: line starting with A) or A. followed by text
    option_pattern = re.compile(
        r"^([A-D])[\.\)]\s*(.*?)$", re.MULTILINE
    )
    options_found = option_pattern.findall(text)

    if len(options_found) >= 2:
        # Has multiple choice options
        # Find where options start to separate question text from options
        first_option_match = re.search(r"^A[\.\)]\s", text, re.MULTILINE)
        if first_option_match:
            pre_options = text[: first_option_match.start()].strip()

            # For R&W: detect passage text
            if section == "reading_writing":
                result = parse_rw_question(pre_options, result)
            else:
                result["question_text"] = clean_text(pre_options)

            # Extract clean options
            result["options"] = extract_options(text[first_option_match.start() :])
        else:
            result["question_text"] = clean_text(text)
    else:
        # SPR question (no multiple choice) or parsing issue
        # Check if it's truly SPR or just OCR failure
        result["is_spr"] = True
        if section == "reading_writing":
            result = parse_rw_question(text, result)
            result["is_spr"] = False  # R&W shouldn't be SPR
        else:
            result["question_text"] = clean_text(text)

    return result


def parse_rw_question(text, result):
    """Parse R&W question to separate passage from question stem."""
    # Common question stem indicators
    stem_indicators = [
        "Which choice",
        "What is the main",
        "Which finding",
        "According to the text",
        "Based on the text",
        "What is the most",
        "Which quotation",
        "The text most strongly",
        "Which choice best",
        "Which statement",
        "What function",
        "Which choice most",
        "The main purpose",
        "The primary purpose",
        "As used in the text",
        "What does the text",
        "Which choice completes",
    ]

    # Try to find where the question stem starts
    best_pos = len(text)
    for indicator in stem_indicators:
        pos = text.find(indicator)
        if pos != -1 and pos < best_pos:
            best_pos = pos

    if best_pos < len(text) and best_pos > 50:
        # Found a split point — text before is passage, after is question
        result["passage_text"] = clean_text(text[:best_pos])
        result["question_text"] = clean_text(text[best_pos:])
    else:
        # Can't clearly separate — treat all as question text
        result["question_text"] = clean_text(text)

    return result


def extract_options(text):
    """Extract A-D options from text."""
    options = []
    # Split by option markers
    parts = re.split(r"\n(?=[A-D][\.\)])", text)

    for part in parts:
        part = part.strip()
        m = re.match(r"^[A-D][\.\)]\s*(.*)", part, re.DOTALL)
        if m:
            opt_text = m.group(1).strip()
            # Clean up multiline option text
            opt_text = re.sub(r"\s+", " ", opt_text)
            options.append(opt_text)

    # Pad to 4 if needed (OCR might miss some)
    while len(options) < 4:
        options.append("")

    return options[:4]


def clean_text(text):
    """Clean up OCR text artifacts."""
    # Fix common OCR issues
    text = text.replace("—", "—")
    text = text.replace("'", "'")
    text = text.replace(""", '"').replace(""", '"')
    # Collapse excessive whitespace but preserve paragraph breaks
    text = re.sub(r"[ \t]+", " ", text)
    text = re.sub(r"\n{3,}", "\n\n", text)
    return text.strip()


def extract_answer_keys():
    """Parse all answer key PDFs."""
    answers = {}  # keyed by "SubtopicName N" -> {question_number: answer}
    answers_dir = os.path.join(BANK_DIR, "Answers")

    for section_dir in ["Math", "Reading and Writing"]:
        section_path = os.path.join(answers_dir, section_dir)
        if not os.path.isdir(section_path):
            continue
        for fname in os.listdir(section_path):
            if not fname.endswith(".pdf") or fname == "Inferences 3~Key(1).pdf":
                continue
            # Parse name: "SubtopicName N~Key.pdf"
            name_match = re.match(r"^-?(.+?)(\d+)~Key\.pdf$", fname)
            if not name_match:
                print(f"  Warning: Can't parse answer key filename: {fname}")
                continue
            subtopic_name = name_match.group(1).strip()
            pdf_num = int(name_match.group(2))
            key_name = f"{subtopic_name} {pdf_num}"

            pdf_path = os.path.join(section_path, fname)
            doc = fitz.open(pdf_path)
            full_text = ""
            for page in doc:
                full_text += page.get_text() + "\n"
            doc.close()

            # Parse answers: look for question_number, ID, answer patterns
            key_answers = {}
            lines = full_text.split("\n")
            i = 0
            while i < len(lines):
                line = lines[i].strip()
                m = re.match(r"^(\d+\.\d+)$", line)
                if m:
                    q_num = m.group(1)
                    # Skip ID line, get answer
                    if i + 2 < len(lines):
                        # Next line is ID (hex), line after is answer
                        answer_line = lines[i + 2].strip()
                        if answer_line and (
                            re.match(r"^[A-D]$", answer_line)
                            or re.match(r"^[\d\.\-\/;, ]+$", answer_line)
                        ):
                            key_answers[q_num] = answer_line
                i += 1

            answers[key_name] = key_answers
            print(f"  Answer key: {key_name} -> {len(key_answers)} answers")

    return answers


def process_question_bank():
    """Main extraction pipeline for question bank PDFs."""
    all_questions = []
    stats = {"total_pdfs": 0, "total_questions": 0, "ocr_errors": 0, "spr_count": 0, "figure_count": 0}

    print("Extracting answer keys...")
    answer_keys = extract_answer_keys()

    print("\nProcessing question bank PDFs...")
    for section_dir in ["Math", "Reading and Writing"]:
        section = SECTION_MAP[section_dir]
        section_path = os.path.join(BANK_DIR, section_dir)
        if not os.path.isdir(section_path):
            continue

        for topic_dir in sorted(os.listdir(section_path)):
            topic_path = os.path.join(section_path, topic_dir)
            if not os.path.isdir(topic_path):
                continue
            topic = TOPIC_MAP.get(topic_dir, topic_dir.lower().replace(" ", "_"))

            for subtopic_dir in sorted(os.listdir(topic_path)):
                subtopic_path = os.path.join(topic_path, subtopic_dir)
                if not os.path.isdir(subtopic_path):
                    continue
                subtopic = SUBTOPIC_MAP.get(subtopic_dir, subtopic_dir.lower().replace(" ", "_"))

                pdfs = sorted(
                    [f for f in os.listdir(subtopic_path) if f.endswith(".pdf")]
                )

                for pdf_file in pdfs:
                    # Extract PDF number from filename
                    num_match = re.search(r"(\d+)\.pdf$", pdf_file)
                    if not num_match:
                        continue
                    pdf_number = int(num_match.group(1))

                    pdf_path = os.path.join(subtopic_path, pdf_file)
                    stats["total_pdfs"] += 1

                    # Get answer key for this PDF
                    key_name = f"{subtopic_dir} {pdf_number}"
                    pdf_answers = answer_keys.get(key_name, {})

                    print(f"  Processing: {section_dir}/{topic_dir}/{subtopic_dir}/{pdf_file}")

                    try:
                        questions = extract_pdf_questions(
                            pdf_path, pdf_number, section, topic, subtopic, pdf_answers
                        )
                        for q in questions:
                            stats["total_questions"] += 1
                            if q.get("is_spr"):
                                stats["spr_count"] += 1
                            if q.get("has_figure"):
                                stats["figure_count"] += 1
                            if "[OCR_ERROR" in q.get("question_text", ""):
                                stats["ocr_errors"] += 1
                        all_questions.extend(questions)
                    except Exception as e:
                        print(f"    ERROR: {e}")

    return all_questions, stats


def extract_pdf_questions(pdf_path, pdf_number, section, topic, subtopic, answers):
    """Extract all questions from a single question bank PDF."""
    doc = fitz.open(pdf_path)
    questions = []

    # Collect all metadata and images across pages
    all_metadata = []
    all_images = []

    for page in doc:
        page_text = page.get_text()
        metadata = parse_page_metadata(page_text)
        images = page.get_images(full=True)

        # Extract image data for each image on the page
        page_images = []
        for img_info in images:
            xref = img_info[0]
            try:
                base_image = doc.extract_image(xref)
                page_images.append(base_image)
            except Exception:
                page_images.append(None)

        all_metadata.extend(metadata)
        all_images.extend(page_images)

    doc.close()

    # Match metadata entries to images (1:1 correspondence)
    for i, meta in enumerate(all_metadata):
        q_num = meta["question_number"]
        # Extract position within PDF (e.g., "1.5" -> 5)
        pos_match = re.match(r"\d+\.(\d+)", q_num)
        question_pos = int(pos_match.group(1)) if pos_match else i + 1

        # OCR the corresponding image
        ocr_text = ""
        if i < len(all_images) and all_images[i] is not None:
            img_data = all_images[i]
            ocr_text = ocr_image(img_data["image"], img_data.get("ext", "jpg"))
        else:
            ocr_text = "[OCR_ERROR: no image found]"

        # Parse OCR text
        parsed = parse_ocr_text(ocr_text, section)

        # Get answer from key
        answer = answers.get(q_num, "")
        correct_index = -1
        is_spr = parsed["is_spr"]

        if answer:
            if re.match(r"^[A-D]$", answer):
                correct_index = ord(answer) - ord("A")
                is_spr = False
            else:
                # Numeric answer — SPR
                is_spr = True
                correct_index = 0  # Will be set after generating options

        # Determine difficulty
        difficulty = get_difficulty(pdf_number, question_pos)

        # Module assignment: odd questions = module 1, even = module 2
        module = 1 if question_pos % 2 == 1 else 2

        # Determine extraction confidence
        confidence = "high"
        if "[OCR_ERROR" in ocr_text or len(parsed["question_text"]) < 10:
            confidence = "low"
        elif parsed["has_figure"]:
            confidence = "medium"
        elif not parsed["options"] or all(o == "" for o in parsed["options"]):
            if not is_spr:
                confidence = "low"

        question = {
            "question_number": q_num,
            "question_id": meta["question_id"],
            "difficulty_score": meta["difficulty_score"],
            "pdf_number": pdf_number,
            "question_pos": question_pos,
            "section": section,
            "topic": topic,
            "subtopic": subtopic,
            "difficulty": difficulty,
            "module": module,
            "question_text": parsed["question_text"],
            "passage_text": parsed["passage_text"],
            "options": parsed["options"],
            "correct_answer": answer,
            "correct_index": correct_index,
            "is_spr": is_spr,
            "has_figure": parsed["has_figure"],
            "extraction_confidence": confidence,
            "ocr_raw": ocr_text,
        }
        questions.append(question)

    return questions


if __name__ == "__main__":
    os.makedirs(OUTPUT_DIR, exist_ok=True)

    print("=" * 60)
    print("Phase 1: Extract SAT Question Bank")
    print("=" * 60)

    questions, stats = process_question_bank()

    # Save results
    output_path = os.path.join(OUTPUT_DIR, "question_bank_raw.json")
    with open(output_path, "w") as f:
        json.dump(questions, f, indent=2, ensure_ascii=False)

    print(f"\n{'=' * 60}")
    print(f"Extraction Complete!")
    print(f"  Total PDFs: {stats['total_pdfs']}")
    print(f"  Total questions: {stats['total_questions']}")
    print(f"  SPR questions: {stats['spr_count']}")
    print(f"  Questions with figures: {stats['figure_count']}")
    print(f"  OCR errors: {stats['ocr_errors']}")
    print(f"  Output: {output_path}")
    print(f"{'=' * 60}")
