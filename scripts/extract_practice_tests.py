#!/usr/bin/env python3
"""Phase 2: Extract questions from full-length SAT practice test PDFs."""

import fitz
import json
import os
import re

SAT_DIR = os.path.join(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
    "TutorZero — Your tutor. Zero cost.",
    "SAT Questions",
)
OUTPUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "output")


def parse_scoring_answer_key(scoring_pdf_path):
    """Extract answer key from scoring PDF."""
    doc = fitz.open(scoring_pdf_path)
    answers = {"rw_module1": {}, "rw_module2": {}, "math_module1": {}, "math_module2": {}}

    for page in doc:
        text = page.get_text()
        if "Answer Key" not in text:
            continue
        lines = text.split("\n")
        module_sections = []
        current_start = None
        for idx, line in enumerate(lines):
            if re.match(r"^QUESTION\s*#$", line.strip()):
                if current_start is not None:
                    module_sections.append((current_start, idx))
                current_start = idx
        if current_start is not None:
            module_sections.append((current_start, len(lines)))

        for sec_idx, (start, end) in enumerate(module_sections):
            section_lines = lines[start:end]
            pairs = {}
            j = 0
            while j < len(section_lines):
                line = section_lines[j].strip()
                if re.match(r"^\d+$", line):
                    q_num = int(line)
                    k = j + 1
                    while k < len(section_lines) and not section_lines[k].strip():
                        k += 1
                    if k < len(section_lines):
                        answer = section_lines[k].strip()
                        if answer and not re.match(r"^(QUESTION|MARK|CORRECT|READING|MATH|Module|RAW)", answer):
                            pairs[q_num] = answer
                            j = k + 1
                            continue
                j += 1

            keys = ["rw_module1", "rw_module2", "math_module1", "math_module2"]
            if sec_idx < len(keys):
                answers[keys[sec_idx]] = pairs

    doc.close()
    return answers


def parse_explanations(answers_pdf_path):
    """Extract answer explanations from the answers PDF."""
    doc = fitz.open(answers_pdf_path)
    explanations = {}
    current_section = None
    current_module = None
    current_question = None
    current_text = []

    for page in doc:
        text = page.get_text()
        for line in text.split("\n"):
            stripped = line.strip()

            if "READING AND WRITING: MODULE 1" in stripped.upper():
                current_section, current_module = "rw", 1
            elif "READING AND WRITING: MODULE 2" in stripped.upper():
                current_section, current_module = "rw", 2
            elif "MATH: MODULE 1" in stripped.upper():
                current_section, current_module = "math", 1
            elif "MATH: MODULE 2" in stripped.upper():
                current_section, current_module = "math", 2

            q_match = re.match(r"^QUESTION\s+(\d+)\s*$", stripped)
            if q_match and current_section:
                if current_question and current_text:
                    key = f"{current_section}_{current_module}_{current_question}"
                    explanations[key] = "\n".join(current_text).strip()
                current_question = int(q_match.group(1))
                current_text = []
                continue

            if any(s in stripped.upper() for s in ["SAT ANSWER EXPLANATION", "PRACTICE TEST #", "SAT PRACTICE TEST"]):
                continue

            if current_question and stripped:
                current_text.append(stripped)

    if current_question and current_text:
        key = f"{current_section}_{current_module}_{current_question}"
        explanations[key] = "\n".join(current_text).strip()

    doc.close()
    return explanations


def clean_page_text(text):
    """Clean a single page's text, removing headers and footers."""
    lines = text.split("\n")

    # Remove footer: last lines matching "N\nCONTINUE" or just page numbers
    while lines:
        last = lines[-1].strip()
        if not last or last == "CONTINUE" or re.match(r"^\d{1,3}$", last):
            lines.pop()
        elif last.startswith("Unauthorized"):
            lines.pop()
        else:
            break

    # Remove header: "Module\nN" at start, but only the "Module" label + module number
    # when they appear as a consecutive pair (not standalone question numbers)
    while lines and not lines[0].strip():
        lines.pop(0)
    if len(lines) >= 2 and lines[0].strip() == "Module" and re.match(r"^[12]$", lines[1].strip()):
        lines.pop(0)  # Remove "Module"
        lines.pop(0)  # Remove module number
    elif lines and lines[0].strip() == "Module":
        lines.pop(0)
    while lines and not lines[0].strip():
        lines.pop(0)

    # Remove dotted separator lines and directions boilerplate
    cleaned = []
    for line in lines:
        stripped = line.strip()
        if re.match(r"^\.{10,}$", stripped):
            continue
        if "If you finish before time" in line:
            continue
        if "Do not turn to any other" in line:
            continue
        if stripped in ("Reading and Writing", "Math", "CONTINUE", "CO NTI N U E"):
            continue
        if re.match(r"^\d+\s+QUESTIONS?$", stripped):
            continue
        if "The questions in this section address" in line:
            continue
        if "includes one or more passages" in line:
            continue
        if "single best answer" in line:
            continue
        if "multiple-choice with four answer choices" in line:
            continue
        if "Each question has a" in stripped:
            continue
        if "Read each passage" in line:
            continue
        if "and question carefully" in line:
            continue
        if "best answer to the question" in line:
            continue
        if "reference information" in line.lower() and "math" in line.lower():
            continue
        if "questions do not refer" in line.lower():
            continue
        cleaned.append(line)

    return "\n".join(cleaned)


def parse_questions_pdf(questions_pdf_path):
    """Extract questions from practice test PDF."""
    doc = fitz.open(questions_pdf_path)

    # Phase 1: Classify each page
    page_info = []  # (page_idx, type, section, module)
    current_section = None
    current_module = None

    for page_idx in range(len(doc)):
        text = doc[page_idx].get_text()
        text_lower = text.lower()

        ptype = "unknown"

        # Detect section headers using specific pattern: "Module N" + section + question count
        module_match = re.search(r"Module\s*\n?\s*(\d)", text)
        is_rw_header = (
            module_match
            and "reading and writing" in text_lower
            and "33 questions" in text_lower
        )
        is_math_header = (
            module_match
            and "27 questions" in text_lower
            and "math" in text_lower
            and "reading" not in text_lower
        )

        if is_rw_header:
            current_section = "reading_writing"
            current_module = int(module_match.group(1))
            ptype = "directions"
        elif is_math_header:
            current_section = "math"
            current_module = int(module_match.group(1))
            ptype = "directions"
        elif "for multiple-choice questions" in text_lower:
            ptype = "instructions"
        elif re.search(r"\bSTOP\b", text):
            ptype = "stop_content"  # May have questions AND stop marker
        elif "test begins" in text_lower or not text.strip() or "practice\ntest" in text_lower:
            ptype = "cover"
        elif "general directions" in text_lower:
            ptype = "back_cover"
        elif current_section:
            # Content page with questions
            if re.search(r"[A-D]\)", text):
                ptype = "content"

        page_info.append((page_idx, ptype, current_section, current_module))

    # Phase 2: Group content pages by module
    modules = {}  # (section, module) -> [page_indices]
    for page_idx, ptype, section, module in page_info:
        # Include directions pages that also contain questions (options A-D)
        if ptype in ("content", "stop_content", "directions") and section and module:
            key = (section, module)
            if key not in modules:
                modules[key] = []
            modules[key].append(page_idx)

    print(f"    Modules found: {[(k, len(v)) for k, v in modules.items()]}")

    # Phase 3: Extract questions per module
    all_questions = []

    for (section, module_num), page_indices in sorted(modules.items()):
        max_q = 33 if section == "reading_writing" else 27

        # Process each page individually, track question numbers
        page_questions = []

        for page_idx in page_indices:
            text = doc[page_idx].get_text()
            # Remove STOP and everything after it
            text = re.sub(r"\bSTOP\b.*", "", text, flags=re.DOTALL)
            cleaned = clean_page_text(text)

            if not cleaned.strip():
                continue

            # Find question numbers on this page
            lines = cleaned.split("\n")
            q_starts = []  # (line_index, question_number)

            for i, line in enumerate(lines):
                stripped = line.strip()
                if re.match(r"^\d{1,2}$", stripped):
                    num = int(stripped)
                    if 1 <= num <= max_q:
                        # Verify this looks like a question start:
                        # Look ahead more lines with lower threshold to catch
                        # math questions with fraction notation (short lines)
                        for j in range(i + 1, min(i + 8, len(lines))):
                            next_line = lines[j].strip()
                            if next_line and len(next_line) > 2:
                                q_starts.append((i, num))
                                break

            # Extract question blocks from this page
            for idx, (start_line, q_num) in enumerate(q_starts):
                end_line = q_starts[idx + 1][0] if idx + 1 < len(q_starts) else len(lines)
                block = "\n".join(lines[start_line + 1 : end_line]).strip()
                if block:
                    page_questions.append((q_num, block))

        # Deduplicate and sort by question number (keep first occurrence)
        seen = set()
        unique_questions = []
        for q_num, block in page_questions:
            if q_num not in seen:
                seen.add(q_num)
                unique_questions.append((q_num, block))

        # Parse each question block
        for q_num, block in sorted(unique_questions):
            parsed = parse_question_block(block, section)
            all_questions.append({
                "question_number": q_num,
                "module": module_num,
                "section": section,
                **parsed,
            })

    doc.close()
    return all_questions


def parse_question_block(text, section):
    """Parse a question block into components."""
    options = []
    question_text = text
    passage_text = ""
    is_spr = False

    # Find options A) B) C) D)
    option_match = re.search(r"^[A-D]\)\s", text, re.MULTILINE)

    if option_match:
        pre_options = text[: option_match.start()].strip()
        options_text = text[option_match.start():]

        # Extract individual options
        opt_parts = re.split(r"\n(?=[A-D]\)\s)", options_text)
        for part in opt_parts:
            part = part.strip()
            m = re.match(r"^[A-D]\)\s*(.*)", part, re.DOTALL)
            if m:
                opt = re.sub(r"\s+", " ", m.group(1).strip())
                options.append(opt)

        while len(options) < 4:
            options.append("")
        options = options[:4]

        # For R&W: separate passage from stem
        if section == "reading_writing":
            passage_text, question_text = split_rw_passage(pre_options)
        else:
            question_text = pre_options
    else:
        is_spr = True

    return {
        "question_text": clean_text(question_text),
        "passage_text": clean_text(passage_text),
        "options": options,
        "is_spr": is_spr,
    }


def split_rw_passage(text):
    """Split R&W text into passage and question stem."""
    indicators = [
        "Which choice", "What is the main", "Which finding", "According to the text",
        "Based on the text", "What is the most", "Which quotation",
        "The text most strongly", "Which choice best", "Which statement",
        "What function", "Which choice most", "The main purpose",
        "The primary purpose", "As used in the text", "What does the text",
        "Which choice completes", "Which choice most effectively",
        "What can most reasonably", "Mark for Review",
    ]
    best_pos = len(text)
    for ind in indicators:
        pos = text.find(ind)
        if pos != -1 and pos < best_pos:
            best_pos = pos

    if best_pos < len(text) and best_pos > 30:
        return text[:best_pos].strip(), text[best_pos:].strip()
    return "", text


def clean_text(text):
    """Clean extracted text."""
    if not text:
        return ""
    text = text.replace("\u200b", "")
    text = re.sub(r"[ \t]+", " ", text)
    text = re.sub(r"\n{3,}", "\n\n", text)
    text = text.replace("dollar sign", "$")
    text = text.replace("percent sign", "%")
    text = re.sub(r"\bb\s*l\s*a\s*n\s*k\b", "______", text)
    return text.strip()


def get_difficulty(module, q_num, section):
    """Assign difficulty based on position."""
    if section == "reading_writing":
        if q_num <= 8: return "easy"
        elif q_num <= 20: return "medium"
        elif q_num <= 28: return "hard"
        else: return "advanced"
    else:
        if q_num <= 5: return "easy"
        elif q_num <= 15: return "medium"
        elif q_num <= 22: return "hard"
        else: return "advanced"


def process_practice_test(bundle_num):
    """Process a single practice test bundle."""
    bundle_dir = os.path.join(SAT_DIR, f"full-length-sat-paper-practice-test_-bundle-{bundle_num}")
    questions_pdf = os.path.join(bundle_dir, f"sat-practice-test-{bundle_num}-digital.pdf")
    answers_pdf = os.path.join(bundle_dir, f"sat-practice-test-{bundle_num}-answers-digital.pdf")
    scoring_pdf = os.path.join(bundle_dir, f"scoring-sat-practice-test-{bundle_num}-digital.pdf")

    print(f"  Parsing questions...")
    questions = parse_questions_pdf(questions_pdf)
    print(f"    Found {len(questions)} questions")

    print(f"  Parsing answer key...")
    answer_keys = parse_scoring_answer_key(scoring_pdf)

    print(f"  Parsing explanations...")
    explanations = parse_explanations(answers_pdf)
    print(f"    Found {len(explanations)} explanations")

    results = []
    for q in questions:
        section_key = "rw" if q["section"] == "reading_writing" else "math"
        module_key = f"module{q['module']}"
        answer_dict = answer_keys.get(f"{section_key}_{module_key}", {})
        answer = answer_dict.get(q["question_number"], "")
        correct_index = -1
        is_spr = q["is_spr"]

        if answer:
            if re.match(r"^[A-D]$", answer):
                correct_index = ord(answer) - ord("A")
                is_spr = False
            else:
                is_spr = True
                correct_index = 0

        exp_key = f"{section_key}_{q['module']}_{q['question_number']}"
        explanation = explanations.get(exp_key, "")
        difficulty = get_difficulty(q["module"], q["question_number"], q["section"])

        result = {
            "test_number": bundle_num,
            "question_number": q["question_number"],
            "section": q["section"],
            "module": q["module"],
            "question_text": q["question_text"],
            "passage_text": q["passage_text"],
            "options": q["options"],
            "correct_answer": answer,
            "correct_index": correct_index,
            "is_spr": is_spr,
            "difficulty": difficulty,
            "explanation": explanation,
            "has_figure": False,
        }

        combined = (q["question_text"] + " " + q.get("passage_text", "")).lower()
        if any(ind in combined for ind in ["graph", "figure", "table shown", "chart", "diagram", "shown in the", "bar graph", "line graph", "scatterplot"]):
            result["has_figure"] = True

        results.append(result)

    return results


def main():
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    print("=" * 60)
    print("Phase 2: Extract Practice Tests")
    print("=" * 60)

    all_questions = []
    for bundle_num in [4, 5, 6, 7, 8, 9, 10, 11]:
        print(f"\n--- Practice Test {bundle_num} ---")
        try:
            questions = process_practice_test(bundle_num)
            all_questions.extend(questions)
            rw = sum(1 for q in questions if q["section"] == "reading_writing")
            math = sum(1 for q in questions if q["section"] == "math")
            print(f"  Total: {len(questions)} ({rw} R&W, {math} Math)")
        except Exception as e:
            print(f"  ERROR: {e}")
            import traceback
            traceback.print_exc()

    output_path = os.path.join(OUTPUT_DIR, "practice_tests_raw.json")
    with open(output_path, "w") as f:
        json.dump(all_questions, f, indent=2, ensure_ascii=False)

    print(f"\n{'=' * 60}")
    print(f"Total questions: {len(all_questions)}")
    answered = sum(1 for q in all_questions if q["correct_index"] >= 0)
    explained = sum(1 for q in all_questions if q["explanation"])
    print(f"With answers: {answered}, With explanations: {explained}")
    print(f"Output: {output_path}")
    print(f"{'=' * 60}")


if __name__ == "__main__":
    main()
