#!/usr/bin/env python3
"""
Audit question quality across all TypeScript data files.
Scans for OCR corruption, merged options, missing figures, template explanations, etc.

Reads the enriched JSON (same data as the TS files) and produces a detailed report.
"""

import json
import re
import sys
from collections import Counter, defaultdict

INPUT_FILE = "output/questions_enriched.json"
REPORT_FILE = "output/audit_report.json"


# ---------- Detectors ----------

def detect_merged_options(q):
    """Options that contain text from other answer choices merged in."""
    issues = []
    section = q.get("section", "")
    for i, opt in enumerate(q.get("options", [])):
        if not opt or len(opt) < 10:
            continue
        # Look for mid-option answer letter markers like " B. ", " c. ", " C)", " G."
        # Common OCR patterns: "24 G. 12" or "5(x+10) c. 5+15) b. 5(x+20)"
        if re.search(r'\s+[B-Hb-h][\.\):\s]\s*\S', opt):
            # R&W false-positive rate is high (species names, temperatures)
            severity = "broken" if section == "math" else "low"
            issues.append({
                "type": "merged_options",
                "severity": severity,
                "detail": f"Option {i} appears to contain merged answers: '{opt[:80]}'"
            })
    return issues


def detect_ocr_pi_corruption(q):
    """π misread as 7, z, or other characters in geometry/volume context."""
    issues = []
    text = q.get("questionText", "") + " ".join(q.get("options", []))

    # Contexts where π is expected: cylinder, circle, volume, circumference, area
    pi_context = re.search(
        r'(cylinder|circle|circumference|sphere|cone|radius|diameter|volume.*prism)',
        text, re.IGNORECASE
    )
    if not pi_context:
        return issues

    for i, opt in enumerate(q.get("options", [])):
        if not opt:
            continue
        # Numbers ending in lone 7 or z that look like they should be π
        # e.g. "16,0007" → "16,000π", "20,000 7" → "20,000π", "25,000z" → "25,000π"
        if re.search(r'\d[,\s]?\d{3}[7z]\b', opt) or re.search(r'\d+\s*[7z]$', opt):
            issues.append({
                "type": "ocr_pi_corruption",
                "severity": "broken",
                "detail": f"Option {i} likely has π misread as 7/z: '{opt}'"
            })

    # Also check question text for things like "317 centimeters" → "31π centimeters"
    qtext = q.get("questionText", "")
    if pi_context and re.search(r'\b\d+7\s*(centimeters|cm|inches|meters|feet)', qtext):
        issues.append({
            "type": "ocr_pi_corruption",
            "severity": "broken",
            "detail": f"Question text likely has π misread as 7"
        })

    return issues


def detect_ocr_symbol_substitutions(q):
    """Common OCR misreads: x* for x², cm® for cm³, etc."""
    issues = []
    all_text = q.get("questionText", "") + " " + " ".join(q.get("options", []))

    patterns = [
        (r'[a-z]\*', "x* likely should be x² (superscript)"),
        (r'[a-z]\?', "x? likely should be x² (superscript)"),
        (r'cm®', "cm® should be cm³"),
        (r'cm\^', "cm^ should be cm² or cm³"),
        (r'x®', "x® should be x³"),
        (r'\d+\s*22\?', "22? likely should be ²z² or similar"),
        (r'=o\b', "=o likely should be √n or similar"),
        (r'~~"', "~~\" is garbled math notation"),
        (r'Gy\b', "Gy likely should be 6x or similar variable"),
        (r'Pn\b', "Pn likely garbled variable"),
        (r'\bME\b(?=\s*=)', "ME likely should be DE"),
        (r'8%\s*[+\-]', "8% likely should be 8x"),
    ]

    for pattern, desc in patterns:
        if re.search(pattern, all_text):
            issues.append({
                "type": "ocr_symbol_substitution",
                "severity": "misleading",
                "detail": desc
            })

    return issues


def detect_untagged_figures(q):
    """Questions referencing figures/graphs but not tagged has_figure."""
    if "has_figure" in q.get("tags", []) or "figure_required" in q.get("tags", []):
        return []

    issues = []
    qtext = q.get("questionText", "")

    figure_patterns = [
        r'[Ff]igure\s+(shows|shown|above|below|not drawn)',
        r'[Gg]raph\s+(shows|shown|above|below|of)',
        r'[Dd]iagram\s+(shows|shown|above|below)',
        r'[Tt]he\s+graph\s+of',
        r'[Ss]hown\s+(above|below)',
        r'\[Figure\s+described',
        r'the\s+figure\s+shown',
        r'in\s+the\s+xy-plane',
        r'the\s+table\s+(shows|above|below)',
        r'the\s+scatterplot',
        r'the\s+bar\s+graph',
        r'the\s+line\s+graph',
        r'the\s+histogram',
    ]

    # Also detect OCR artifacts from graph axis rendering
    graph_artifacts = [
        r'SERRE',
        r'NTT\s*ETT',
        r'TTT\s*ttt',
        r'COCO',
        r'Piaf',
        r'eds¢ey',
        r'dake',
        r'Tei\s+Td',
    ]

    for pattern in figure_patterns:
        if re.search(pattern, qtext):
            issues.append({
                "type": "untagged_figure",
                "severity": "broken",
                "detail": f"Question references a figure but lacks has_figure tag"
            })
            break

    for pattern in graph_artifacts:
        if re.search(pattern, qtext):
            issues.append({
                "type": "graph_ocr_artifact",
                "severity": "broken",
                "detail": f"Question contains graph OCR artifacts (axis labels/grid)"
            })
            break

    return issues


def detect_spr_dummy_options(q):
    """Student-produced response questions with placeholder [answer, 0, 1, -1] options."""
    issues = []
    tags = q.get("tags", [])
    opts = q.get("options", [])

    if "student_produced_response" not in tags:
        return issues

    dummy_values = {"0", "1", "-1"}
    dummy_count = sum(1 for o in opts if o.strip() in dummy_values)

    if dummy_count >= 2:
        issues.append({
            "type": "spr_dummy_options",
            "severity": "misleading",
            "detail": f"SPR question with {dummy_count} dummy options ({', '.join(o for o in opts)})"
        })

    return issues


def detect_template_explanations(q):
    """Generic template explanations with no educational value."""
    issues = []
    explain = q.get("explainWhy", "")

    if re.search(r'This question requires understanding of .* concepts', explain):
        issues.append({
            "type": "template_explanation",
            "severity": "low",
            "detail": "Generic template explanation with no step-by-step reasoning"
        })
    elif re.search(r'This is a student-produced response question testing', explain):
        issues.append({
            "type": "template_explanation",
            "severity": "low",
            "detail": "Generic SPR template explanation"
        })

    return issues


def detect_variable_mismatch(q):
    """Question uses variable x but options use a, z, etc."""
    issues = []
    qtext = q.get("questionText", "")
    opts = q.get("options", [])

    if q.get("section") != "math":
        return issues

    # Find primary variable in question text (most common single letter after coefficients)
    q_vars = set(re.findall(r'(?<!\w)([a-z])(?=\s*[²³\+\-\=\)\(]|\s+[+\-=])', qtext))
    opt_vars = set()
    for opt in opts:
        opt_vars.update(re.findall(r'(?<!\w)([a-z])(?=\s*[²³\+\-\=\)\(]|\s+[+\-=])', opt))

    # If question uses 'x' but options use 'a' or 'z' (not both)
    if 'x' in q_vars and ('a' in opt_vars or 'z' in opt_vars) and 'x' not in opt_vars:
        mismatched = opt_vars - q_vars - {'a', 'b', 'c', 'd', 'e'}  # exclude common answer labels
        if mismatched:
            issues.append({
                "type": "variable_mismatch",
                "severity": "misleading",
                "detail": f"Question uses vars {q_vars} but options use {opt_vars}"
            })

    return issues


def detect_fraction_artifacts(q):
    """Multi-line fraction layout broken by OCR: x\\n—\\n5."""
    issues = []
    qtext = q.get("questionText", "")

    # Pattern: short text, then a line of dashes/em-dashes, then short text
    if re.search(r'\w{1,4}\n[—–\-]+\n\w{1,4}', qtext):
        issues.append({
            "type": "fraction_artifact",
            "severity": "broken",
            "detail": "Question contains broken fraction layout (multi-line OCR artifact)"
        })

    return issues


def detect_empty_options(q):
    """Any answer option that is empty or near-empty."""
    issues = []
    opts = q.get("options", [])

    empty_count = sum(1 for o in opts if not o or len(o.strip()) < 1)
    if empty_count > 0:
        issues.append({
            "type": "empty_options",
            "severity": "broken",
            "detail": f"{empty_count} of {len(opts)} options are empty"
        })

    return issues


def detect_garbled_question_text(q):
    """Question text that is unintelligible due to OCR corruption."""
    issues = []
    qtext = q.get("questionText", "")

    # Very short question text (not enough to be a real question)
    if len(qtext.strip()) < 25:
        issues.append({
            "type": "too_short",
            "severity": "broken",
            "detail": f"Question text only {len(qtext.strip())} chars: '{qtext.strip()[:50]}'"
        })

    # High ratio of non-alphanumeric characters in a math question
    if q.get("section") == "math":
        alpha = sum(1 for c in qtext if c.isalnum() or c.isspace())
        if len(qtext) > 20 and alpha / len(qtext) < 0.5:
            issues.append({
                "type": "garbled_text",
                "severity": "broken",
                "detail": f"Low alphanumeric ratio ({alpha/len(qtext):.0%}): '{qtext[:60]}'"
            })

    return issues


def detect_wrong_correct_answer(q):
    """Correct answer index points to an empty or suspicious option."""
    issues = []
    opts = q.get("options", [])
    correct = q.get("correctIndex", -1)

    if correct < 0 or correct >= len(opts):
        issues.append({
            "type": "invalid_correct_index",
            "severity": "broken",
            "detail": f"correctIndex {correct} out of range for {len(opts)} options"
        })
        return issues

    correct_opt = opts[correct]
    if not correct_opt or len(correct_opt.strip()) < 1:
        issues.append({
            "type": "empty_correct_answer",
            "severity": "broken",
            "detail": f"Correct answer (index {correct}) is empty"
        })

    return issues


# ---------- Main ----------

def audit_question(q):
    """Run all detectors on a single question."""
    all_issues = []
    all_issues.extend(detect_merged_options(q))
    all_issues.extend(detect_ocr_pi_corruption(q))
    all_issues.extend(detect_ocr_symbol_substitutions(q))
    all_issues.extend(detect_untagged_figures(q))
    all_issues.extend(detect_spr_dummy_options(q))
    all_issues.extend(detect_template_explanations(q))
    all_issues.extend(detect_variable_mismatch(q))
    all_issues.extend(detect_fraction_artifacts(q))
    all_issues.extend(detect_empty_options(q))
    all_issues.extend(detect_garbled_question_text(q))
    all_issues.extend(detect_wrong_correct_answer(q))
    return all_issues


def main():
    print("=" * 60)
    print("TutorZero Question Quality Audit")
    print("=" * 60)

    # Load enriched data (same content as TypeScript files)
    print(f"\nLoading {INPUT_FILE}...")
    with open(INPUT_FILE) as f:
        questions = json.load(f)
    print(f"Loaded {len(questions)} questions")

    # Simulate the runtime filter to know which questions students see
    # (mirrors isUsableQuestion from questions.ts — tightened version)
    garbage_chars = set("¥€®™~°@#£§©¢«»ﬁﬂ")

    figure_pattern = re.compile(
        r'figure\s+(shows|shown|above|below|not drawn)|graph\s+(shows|shown|above|below|of)'
        r'|diagram\s+(shows|shown)|the\s+graph\s+of|shown\s+(above|below)'
        r'|\[Figure\s+described|the\s+figure\s+shown|in\s+the\s+xy-plane'
        r'|the\s+table\s+(shows|summarizes|above|below)|the\s+scatterplot'
        r'|the\s+bar\s+graph|the\s+line\s+graph|the\s+histogram', re.IGNORECASE
    )
    graph_artifact = re.compile(r'SERRE|NTT\s*ETT|TTT\s*ttt|COCO|Piaf|eds¢ey|dake|Tei\s+Td')
    merged_pattern = re.compile(r'\s+[B-Hb-h][\.\):\s]\s*\S')

    def garbage_density(text):
        if not text or len(text) == 0:
            return 1.0
        return sum(1 for c in text if c in garbage_chars) / len(text)

    def passes_current_filter(q):
        opts = q.get("options", [])
        non_empty = [o for o in opts if o and o.strip()]
        if len(non_empty) < 4:
            return False
        qtext = q.get("questionText", "")
        if not qtext or len(qtext.strip()) < 25:
            return False
        if "has_figure" in q.get("tags", []) or "figure_required" in q.get("tags", []):
            return False
        # Untagged figure references
        if figure_pattern.search(qtext):
            return False
        if graph_artifact.search(qtext):
            return False
        # Merged options (math only)
        if q.get("section") == "math":
            if any(o and len(o) > 15 and merged_pattern.search(o) for o in opts):
                return False
        # Duplicate options
        unique_opts = set(o.strip() for o in opts if o and o.strip())
        non_empty_ct = len([o for o in opts if o and o.strip()])
        if len(unique_opts) < non_empty_ct:
            return False
        dummy_values = {"0", "1", "-1"}
        dummy_count = sum(1 for o in opts if o.strip() in dummy_values)
        if dummy_count >= 3:
            return False
        if garbage_density(qtext) > 0.05:
            return False
        if any(o.strip() and garbage_density(o) > 0.15 for o in opts):
            return False
        return True

    # Audit every question
    print("\nRunning audit detectors...\n")

    audit_results = []
    issue_counts = Counter()
    severity_counts = Counter()
    issues_by_source = defaultdict(Counter)
    issues_shown_to_students = Counter()  # issues on questions that pass the current filter

    questions_with_issues = 0
    questions_shown_with_issues = 0

    for q in questions:
        issues = audit_question(q)
        passes_filter = passes_current_filter(q)
        source = q.get("source", "unknown")

        if issues:
            questions_with_issues += 1
            if passes_filter:
                questions_shown_with_issues += 1

        for issue in issues:
            issue_counts[issue["type"]] += 1
            severity_counts[issue["severity"]] += 1
            issues_by_source[source][issue["type"]] += 1
            if passes_filter:
                issues_shown_to_students[issue["type"]] += 1

        audit_results.append({
            "id": q.get("id"),
            "section": q.get("section"),
            "topic": q.get("topic"),
            "source": source,
            "passes_current_filter": passes_filter,
            "issue_count": len(issues),
            "issues": issues,
        })

    # Summary
    total = len(questions)
    shown = sum(1 for q in questions if passes_current_filter(q))

    print("SUMMARY")
    print("-" * 60)
    print(f"Total questions:                    {total}")
    print(f"Pass current filter (shown):        {shown}")
    print(f"Questions with any issue:           {questions_with_issues}")
    print(f"Shown questions with issues:        {questions_shown_with_issues}")
    print()

    print("ISSUES BY TYPE (all questions):")
    print("-" * 60)
    for issue_type, count in issue_counts.most_common():
        shown_count = issues_shown_to_students.get(issue_type, 0)
        print(f"  {issue_type:35s}  total={count:4d}  shown_to_students={shown_count:4d}")
    print()

    print("ISSUES BY SEVERITY:")
    print("-" * 60)
    for severity, count in severity_counts.most_common():
        print(f"  {severity:15s}  {count:4d}")
    print()

    print("BROKEN ISSUES SHOWN TO STUDENTS (critical):")
    print("-" * 60)
    broken_shown = 0
    for r in audit_results:
        if r["passes_current_filter"]:
            broken = [i for i in r["issues"] if i["severity"] == "broken"]
            if broken:
                broken_shown += 1
                print(f"  id={r['id']:4d} [{r['section']:15s}] [{r['topic']:20s}]")
                for issue in broken:
                    print(f"    -> {issue['type']}: {issue['detail'][:80]}")
    print(f"\n  Total broken questions shown to students: {broken_shown}")

    # Write full report
    report = {
        "total_questions": total,
        "shown_to_students": shown,
        "questions_with_issues": questions_with_issues,
        "shown_with_issues": questions_shown_with_issues,
        "issue_counts": dict(issue_counts.most_common()),
        "issues_shown_to_students": dict(sorted(issues_shown_to_students.items(), key=lambda x: -x[1])),
        "severity_counts": dict(severity_counts.most_common()),
        "questions": audit_results,
    }

    with open(REPORT_FILE, "w") as f:
        json.dump(report, f, indent=2)
    print(f"\nFull report written to {REPORT_FILE}")


if __name__ == "__main__":
    main()
