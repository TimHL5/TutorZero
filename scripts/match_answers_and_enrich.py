#!/usr/bin/env python3
"""Phase 3: Match answers, generate explanations, create enriched output."""

import json
import os
import re

OUTPUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "output")

# Topic display names for auto-generated explanations
TOPIC_NAMES = {
    "algebra": "Algebra",
    "advanced_math": "Advanced Math",
    "problem_solving": "Problem-Solving and Data Analysis",
    "geometry": "Geometry and Trigonometry",
    "information_ideas": "Information and Ideas",
    "craft_structure": "Craft and Structure",
    "expression": "Expression of Ideas",
    "conventions": "Standard English Conventions",
}

SUBTOPIC_NAMES = {
    "linear_equations_one_var": "Linear Equations in One Variable",
    "linear_equations_two_var": "Linear Equations in Two Variables",
    "linear_functions": "Linear Functions",
    "linear_inequalities": "Linear Inequalities",
    "systems_of_equations": "Systems of Linear Equations",
    "equivalent_expressions": "Equivalent Expressions",
    "nonlinear_equations": "Nonlinear Equations and Systems",
    "nonlinear_functions": "Nonlinear Functions",
    "statistical_claims": "Evaluating Statistical Claims",
    "one_var_data": "One-Variable Data",
    "percentages": "Percentages",
    "probability": "Probability",
    "ratios_rates": "Ratios, Rates, and Proportions",
    "inference": "Statistical Inference and Margin of Error",
    "two_var_data": "Two-Variable Data",
    "area_volume": "Area and Volume",
    "circles": "Circles",
    "lines_angles_triangles": "Lines, Angles, and Triangles",
    "right_triangles_trig": "Right Triangles and Trigonometry",
    "central_ideas": "Central Ideas and Details",
    "evidence": "Command of Evidence",
    "inferences": "Inferences",
    "cross_text": "Cross-Text Connections",
    "text_structure_purpose": "Text Structure and Purpose",
    "words_context": "Words in Context",
    "rhetorical_synthesis": "Rhetorical Synthesis",
    "transitions": "Transitions",
    "boundaries": "Sentence Boundaries",
    "form_structure_sense": "Form, Structure, and Sense",
}

# ID ranges — expanded to fit actual question counts
ID_RANGES = {
    ("math", "algebra"): (1001, 1399),
    ("math", "advanced_math"): (1400, 1699),
    ("math", "problem_solving"): (1700, 1999),
    ("math", "geometry"): (2000, 2199),
    ("reading_writing", "information_ideas"): (2200, 2499),
    ("reading_writing", "craft_structure"): (2500, 2749),
    ("reading_writing", "expression"): (2750, 2949),
    ("reading_writing", "conventions"): (2950, 3149),
}


def generate_auto_explanation(q, section, topic, subtopic):
    """Generate placeholder explanation for question bank questions."""
    topic_name = TOPIC_NAMES.get(topic, topic)
    subtopic_name = SUBTOPIC_NAMES.get(subtopic, subtopic)

    answer_letter = q.get("correct_answer", "")
    if re.match(r"^[A-D]$", answer_letter):
        explain_why = f"The correct answer is {answer_letter}. This question requires understanding of {subtopic_name.lower()} concepts."
    elif answer_letter:
        explain_why = f"The correct answer is {answer_letter}. This is a student-produced response question testing {subtopic_name.lower()}."
    else:
        explain_why = f"This question tests {subtopic_name.lower()} within {topic_name.lower()}."

    explain_concept = f"This question tests your understanding of {subtopic_name}. {topic_name} is one of the key content domains on the SAT."
    explain_next = f"Practice more {subtopic_name} problems to strengthen your skills in this area."

    return explain_why, explain_concept, explain_next


def parse_practice_test_explanation(raw_explanation):
    """Parse practice test explanation into explainWhy, explainConcept, explainNext."""
    if not raw_explanation:
        return "", "", ""

    # The explanation typically starts with "Choice X is the best answer because..."
    # Use the first paragraph as explainWhy
    paragraphs = raw_explanation.split("\n")

    # Find the "best answer" paragraph
    best_answer_lines = []
    other_lines = []
    in_best = True

    for line in paragraphs:
        if in_best:
            if line.startswith("Choice") and "is incorrect" in line:
                in_best = False
                other_lines.append(line)
            else:
                best_answer_lines.append(line)
        else:
            other_lines.append(line)

    explain_why = " ".join(best_answer_lines).strip()
    # Truncate if too long
    if len(explain_why) > 500:
        explain_why = explain_why[:497] + "..."

    explain_concept = "This is a College Board practice test question. Review the official explanation for detailed analysis."
    explain_next = "Work through more practice test questions in this section to build familiarity with the test format."

    return explain_why, explain_concept, explain_next


def assign_practice_test_topic(q):
    """Assign topic/subtopic for practice test questions based on section and content."""
    section = q["section"]

    if section == "math":
        text = (q.get("question_text", "") + " " + " ".join(q.get("options", []))).lower()

        # Heuristic topic assignment based on question content
        if any(w in text for w in ["linear", "slope", "y-intercept", "y = mx"]):
            return "algebra", "linear_functions"
        elif any(w in text for w in ["system", "simultaneous"]):
            return "algebra", "systems_of_equations"
        elif any(w in text for w in ["inequality", "inequalities"]):
            return "algebra", "linear_inequalities"
        elif any(w in text for w in ["quadratic", "x²", "x^2", "parabola", "vertex"]):
            return "advanced_math", "nonlinear_equations"
        elif any(w in text for w in ["polynomial", "factor", "equivalent expression"]):
            return "advanced_math", "equivalent_expressions"
        elif any(w in text for w in ["exponential", "growth", "decay", "f(x)", "function"]):
            return "advanced_math", "nonlinear_functions"
        elif any(w in text for w in ["percent", "%"]):
            return "problem_solving", "percentages"
        elif any(w in text for w in ["ratio", "rate", "proportion", "per "]):
            return "problem_solving", "ratios_rates"
        elif any(w in text for w in ["probability", "likely", "chance"]):
            return "problem_solving", "probability"
        elif any(w in text for w in ["mean", "median", "standard deviation", "data"]):
            return "problem_solving", "one_var_data"
        elif any(w in text for w in ["scatterplot", "scatter", "line of best fit", "correlation"]):
            return "problem_solving", "two_var_data"
        elif any(w in text for w in ["sample", "survey", "margin of error", "confidence"]):
            return "problem_solving", "inference"
        elif any(w in text for w in ["triangle", "angle"]):
            if any(w in text for w in ["sin", "cos", "tan", "right triangle"]):
                return "geometry", "right_triangles_trig"
            return "geometry", "lines_angles_triangles"
        elif any(w in text for w in ["circle", "radius", "diameter", "arc"]):
            return "geometry", "circles"
        elif any(w in text for w in ["area", "volume", "surface"]):
            return "geometry", "area_volume"
        elif any(w in text for w in ["equation", "solve", "value of x", "solution"]):
            return "algebra", "linear_equations_one_var"
        else:
            return "algebra", "linear_equations_one_var"

    else:  # reading_writing
        text = (q.get("question_text", "")).lower()

        if "completes the text" in text and ("word" in text or "phrase" in text):
            return "craft_structure", "words_context"
        elif "main purpose" in text or "structure" in text or "function" in text:
            return "craft_structure", "text_structure_purpose"
        elif "text 1" in q.get("passage_text", "").lower() or "text 2" in q.get("passage_text", "").lower():
            return "craft_structure", "cross_text"
        elif "main idea" in text or "central" in text or "primarily" in text:
            return "information_ideas", "central_ideas"
        elif "according to the text" in text or "based on the text" in text:
            return "information_ideas", "inferences"
        elif "evidence" in text or "quotation" in text or "finding" in text or "data" in text:
            return "information_ideas", "evidence"
        elif "most effectively" in text or "notes" in q.get("passage_text", "").lower():
            return "expression", "rhetorical_synthesis"
        elif "transition" in text or "connect" in text:
            return "expression", "transitions"
        elif "convention" in text or "punctuation" in text:
            return "conventions", "boundaries"
        elif "completes the text" in text:
            return "conventions", "form_structure_sense"
        else:
            return "information_ideas", "central_ideas"


def main():
    print("=" * 60)
    print("Phase 3: Match Answers & Enrich")
    print("=" * 60)

    # Load raw data
    with open(os.path.join(OUTPUT_DIR, "question_bank_raw.json")) as f:
        bank_questions = json.load(f)
    with open(os.path.join(OUTPUT_DIR, "practice_tests_raw.json")) as f:
        practice_questions = json.load(f)

    print(f"Loaded {len(bank_questions)} bank questions, {len(practice_questions)} practice questions")

    # Filter and enrich questions
    enriched = []
    report = {"bank": {}, "practice": {}, "summary": {}}

    # Process question bank
    id_counters = {}
    skipped = 0
    for q in bank_questions:
        section = q["section"]
        topic = q["topic"]
        subtopic = q["subtopic"]

        # Skip questions with no usable content
        if not q.get("question_text") or len(q["question_text"]) < 10:
            skipped += 1
            continue

        # Skip if answer key couldn't be matched
        if q.get("correct_index", -1) < 0 and not q.get("is_spr"):
            skipped += 1
            continue

        # Assign ID
        range_key = (section, topic)
        if range_key not in id_counters:
            id_counters[range_key] = ID_RANGES.get(range_key, (5000, 5999))[0]

        qid = id_counters[range_key]
        id_counters[range_key] = qid + 1

        # Check ID range overflow
        max_id = ID_RANGES.get(range_key, (3000, 3999))[1]
        if qid > max_id:
            skipped += 1
            continue

        # Handle SPR questions — create 4 options with correct at index 0
        options = q.get("options", [])
        correct_index = q.get("correct_index", 0)
        is_spr = q.get("is_spr", False)

        if is_spr:
            correct_val = q.get("correct_answer", "0")
            options = [str(correct_val), "0", "1", "-1"]
            correct_index = 0
            # Tag as student_produced_response
            tags = q.get("tags", [])
            if "student_produced_response" not in tags:
                tags = list(tags) + ["student_produced_response"]
        else:
            tags = []

        if q.get("has_figure"):
            tags.append("has_figure")
            if "[Figure" not in q.get("question_text", ""):
                q["question_text"] = q["question_text"] + " [Figure described in original]"

        # Ensure we have 4 options
        while len(options) < 4:
            options.append("")
        options = options[:4]

        # Generate explanations
        explain_why, explain_concept, explain_next = generate_auto_explanation(
            q, section, topic, subtopic
        )

        # Estimated time
        est_time = 90 if section == "reading_writing" else 120
        if q.get("difficulty") in ("hard", "advanced"):
            est_time += 30

        enriched.append({
            "id": qid,
            "source": "question_bank",
            "section": section,
            "module": q.get("module", 1),
            "topic": topic,
            "subtopic": subtopic,
            "difficulty": q.get("difficulty", "medium"),
            "questionText": q.get("question_text", ""),
            "passageText": q.get("passage_text", "") or None,
            "options": options,
            "correctIndex": correct_index,
            "explainWhy": explain_why,
            "explainConcept": explain_concept,
            "explainNext": explain_next,
            "isCalculatorAllowed": section == "math",
            "estTimeSec": est_time,
            "tags": tags,
        })

    print(f"Bank: {len([e for e in enriched if e['source'] == 'question_bank'])} enriched, {skipped} skipped")

    # Process practice tests
    practice_skipped = 0
    for q in practice_questions:
        section = q["section"]

        # Skip if no answer
        if q.get("correct_index", -1) < 0 and not q.get("is_spr"):
            practice_skipped += 1
            continue

        # Accept all questions that have an answer, even with short/garbled text
        # (math questions with figures/formulas often have poorly extracted text)

        test_num = q["test_number"]
        q_num = q["question_number"]

        # Practice test IDs: test_num * 1000 + sequential
        base_id = test_num * 1000
        module_offset = 0 if q["module"] == 1 else 50
        section_offset = 0 if section == "reading_writing" else 100
        # Avoid collisions: unique within each module+section
        qid = base_id + section_offset + module_offset + q_num

        # Assign topic/subtopic
        topic, subtopic = assign_practice_test_topic(q)

        # Parse explanation
        explain_why, explain_concept, explain_next = parse_practice_test_explanation(
            q.get("explanation", "")
        )
        if not explain_why:
            explain_why, explain_concept, explain_next = generate_auto_explanation(
                q, section, topic, subtopic
            )

        # Handle SPR
        options = q.get("options", [])
        correct_index = q.get("correct_index", 0)
        is_spr = q.get("is_spr", False)
        tags = []

        if is_spr:
            correct_val = q.get("correct_answer", "0")
            options = [str(correct_val), "0", "1", "-1"]
            correct_index = 0
            tags.append("student_produced_response")

        if q.get("has_figure"):
            tags.append("has_figure")

        while len(options) < 4:
            options.append("")
        options = options[:4]

        est_time = 90 if section == "reading_writing" else 120
        difficulty = q.get("difficulty", "medium")
        if difficulty in ("hard", "advanced"):
            est_time += 30

        enriched.append({
            "id": qid,
            "source": f"practice_test_{test_num}",
            "section": section,
            "module": q.get("module", 1),
            "topic": topic,
            "subtopic": subtopic,
            "difficulty": difficulty,
            "questionText": q.get("question_text", ""),
            "passageText": q.get("passage_text", "") or None,
            "options": options,
            "correctIndex": correct_index,
            "explainWhy": explain_why,
            "explainConcept": explain_concept,
            "explainNext": explain_next,
            "isCalculatorAllowed": section == "math",
            "estTimeSec": est_time,
            "tags": tags,
        })

    print(f"Practice: {len([e for e in enriched if 'practice' in e['source']])} enriched, {practice_skipped} skipped")

    # Check for ID collisions
    ids = [q["id"] for q in enriched]
    unique_ids = set(ids)
    if len(ids) != len(unique_ids):
        print(f"WARNING: {len(ids) - len(unique_ids)} ID collisions detected!")
        # Fix collisions by reassigning
        seen = set()
        max_id = max(ids) + 1
        for q in enriched:
            if q["id"] in seen:
                q["id"] = max_id
                max_id += 1
            seen.add(q["id"])

    # Save enriched output
    output_path = os.path.join(OUTPUT_DIR, "questions_enriched.json")
    with open(output_path, "w") as f:
        json.dump(enriched, f, indent=2, ensure_ascii=False)

    # Generate extraction report
    report_data = {
        "total_questions": len(enriched),
        "bank_questions": len([e for e in enriched if e["source"] == "question_bank"]),
        "practice_questions": len([e for e in enriched if "practice" in e["source"]]),
        "by_section": {},
        "by_topic": {},
        "by_difficulty": {},
        "by_source": {},
    }

    for q in enriched:
        for key_name, key_field in [("by_section", "section"), ("by_topic", "topic"),
                                      ("by_difficulty", "difficulty"), ("by_source", "source")]:
            val = q[key_field]
            report_data[key_name][val] = report_data[key_name].get(val, 0) + 1

    report_path = os.path.join(OUTPUT_DIR, "extraction_report.json")
    with open(report_path, "w") as f:
        json.dump(report_data, f, indent=2)

    print(f"\n{'=' * 60}")
    print(f"Enrichment Complete!")
    print(f"  Total: {len(enriched)} questions")
    print(f"  By section: {report_data['by_section']}")
    print(f"  By topic: {report_data['by_topic']}")
    print(f"  By difficulty: {report_data['by_difficulty']}")
    print(f"  Output: {output_path}")
    print(f"  Report: {report_path}")
    print(f"{'=' * 60}")


if __name__ == "__main__":
    main()
