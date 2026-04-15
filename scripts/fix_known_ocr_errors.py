#!/usr/bin/env python3
"""
Fix known OCR errors in the enriched questions data.
Targets specific, mechanically-correctable patterns that are causing questions
to be filtered out or displayed incorrectly.

Run BEFORE clean_and_load.py to fix the source data.
"""

import json
import re
from collections import Counter

INPUT_FILE = "output/questions_enriched.json"
OUTPUT_FILE = "output/questions_enriched.json"  # overwrite in place


def fix_pi_in_options(q: dict) -> tuple[dict, list[str]]:
    """Fix π misread as 7 or z in circle/cylinder/sphere contexts."""
    fixes = []
    text = q.get("questionText", "") + " ".join(q.get("options", []))

    # Only apply in geometry contexts where π is expected
    pi_context = re.search(
        r'(cylinder|circle|circumference|sphere|cone|radius|diameter|'
        r'volume.*prism|area.*circle|πr)',
        text, re.IGNORECASE
    )
    if not pi_context:
        return q, fixes

    # Fix options: trailing 7 or z that should be π
    new_opts = []
    for i, opt in enumerate(q.get("options", [])):
        if not opt:
            new_opts.append(opt)
            continue

        original = opt

        # Pattern: "16,0007" → "16,000π"
        opt = re.sub(r'(\d),(\d{3})([7z])$', r'\1,\2π', opt)
        # Pattern: "20,000 7" → "20,000π"
        opt = re.sub(r'(\d),(\d{3})\s+([7z])$', r'\1,\2π', opt)
        # Pattern: "607" at end where 60π is intended
        opt = re.sub(r'(\d{2,})([7z])$', lambda m: m.group(1) + 'π' if not m.group(1).endswith('7') else m.group(0), opt)
        # Pattern: "1207" → "120π"
        opt = re.sub(r'^(\d+)7$', r'\1π', opt)
        # Pattern: isolated "7" or "z" at end after space
        opt = re.sub(r'(\d+)\s+7$', r'\1π', opt)
        opt = re.sub(r'(\d+)\s+z$', r'\1π', opt)

        if opt != original:
            fixes.append(f"Option {i}: '{original}' → '{opt}'")
        new_opts.append(opt)

    q["options"] = new_opts

    # Fix question text: "317 centimeters" → "31π centimeters"
    qtext = q.get("questionText", "")
    original_text = qtext
    qtext = re.sub(r'(\d+)7\s+(centimeters|cm|inches|meters|feet)', r'\1π \2', qtext)
    if qtext != original_text:
        fixes.append(f"Question text: fixed π in measurement")
        q["questionText"] = qtext

    return q, fixes


def fix_cm_cubed(q: dict) -> tuple[dict, list[str]]:
    """Fix cm® → cm³, cm2 → cm²."""
    fixes = []

    for field in ["questionText"]:
        text = q.get(field, "")
        if not text:
            continue
        original = text
        text = text.replace("cm®", "cm³")
        text = text.replace("cm2", "cm²")
        if text != original:
            fixes.append(f"{field}: fixed unit notation")
            q[field] = text

    new_opts = []
    for i, opt in enumerate(q.get("options", [])):
        if not opt:
            new_opts.append(opt)
            continue
        original = opt
        opt = opt.replace("cm®", "cm³")
        opt = opt.replace("cm2", "cm²")
        if opt != original:
            fixes.append(f"Option {i}: fixed unit notation")
        new_opts.append(opt)
    q["options"] = new_opts

    return q, fixes


def fix_volume_formula(q: dict) -> tuple[dict, list[str]]:
    """Fix 'π wh' OCR artifact where π should be l (length) in volume formulas."""
    fixes = []
    qtext = q.get("questionText", "")

    # "The volume V of a right rectangular prism is π wh" → "V = lwh"
    if "rectangular prism" in qtext.lower() and "π wh" in qtext:
        qtext = qtext.replace("π wh", "lwh")
        fixes.append("Question text: fixed volume formula π→l")
        q["questionText"] = qtext

    # "€" used as "l" in formulas
    if "rectangular prism" in qtext.lower() and "€" in qtext:
        qtext = qtext.replace("€", "l")
        fixes.append("Question text: fixed €→l in formula")
        q["questionText"] = qtext

    return q, fixes


def fix_variable_names(q: dict) -> tuple[dict, list[str]]:
    """Fix common single-character OCR misreads in variable names."""
    fixes = []

    # Only for math questions
    if q.get("section") != "math":
        return q, fixes

    qtext = q.get("questionText", "")

    # "ME =2AB" → "DE = 2AB" (in similar triangles context)
    if "similar" in qtext.lower() and "ME" in qtext and "AB" in qtext:
        qtext = qtext.replace("ME", "DE")
        fixes.append("Question text: fixed ME→DE")
        q["questionText"] = qtext

    return q, fixes


def main():
    print("=" * 60)
    print("Fix Known OCR Errors")
    print("=" * 60)

    with open(INPUT_FILE) as f:
        questions = json.load(f)
    print(f"\nLoaded {len(questions)} questions")

    total_fixes = Counter()
    all_fixes_log = []

    for q in questions:
        q_fixes = []

        q, fixes = fix_pi_in_options(q)
        q_fixes.extend(fixes)

        q, fixes = fix_cm_cubed(q)
        q_fixes.extend(fixes)

        q, fixes = fix_volume_formula(q)
        q_fixes.extend(fixes)

        q, fixes = fix_variable_names(q)
        q_fixes.extend(fixes)

        if q_fixes:
            all_fixes_log.append({
                "id": q.get("id"),
                "topic": q.get("topic"),
                "fixes": q_fixes,
            })
            for fix in q_fixes:
                fix_type = fix.split(":")[0]
                total_fixes[fix_type] += 1

    # Report
    print(f"\nFixed {len(all_fixes_log)} questions:")
    for fix_type, count in total_fixes.most_common():
        print(f"  {fix_type}: {count}")

    print(f"\nDetailed fixes:")
    for entry in all_fixes_log:
        print(f"  id={entry['id']} [{entry['topic']}]")
        for fix in entry["fixes"]:
            print(f"    -> {fix}")

    # Write back
    with open(OUTPUT_FILE, "w") as f:
        json.dump(questions, f, indent=2, ensure_ascii=False)
    print(f"\nWrote {OUTPUT_FILE}")
    print("Run clean_and_load.py next to regenerate TypeScript files.")


if __name__ == "__main__":
    main()
