#!/usr/bin/env python3
"""Generate batch prompt files for explanation generation via Claude.ai."""

import json
import os

OUTPUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "output")
PROMPTS_DIR = os.path.join(OUTPUT_DIR, "prompts")
BATCH_SIZE = 20


def main():
    os.makedirs(PROMPTS_DIR, exist_ok=True)

    with open(os.path.join(OUTPUT_DIR, "questions_enriched.json")) as f:
        questions = json.load(f)

    # Only generate prompts for question bank questions (practice tests already have explanations)
    bank_questions = [q for q in questions if q["source"] == "question_bank"]
    print(f"Generating prompts for {len(bank_questions)} question bank questions")

    batch_num = 0
    for i in range(0, len(bank_questions), BATCH_SIZE):
        batch = bank_questions[i : i + BATCH_SIZE]
        batch_num += 1

        lines = [
            "Generate explanations for these SAT questions. Return valid JSON array.",
            'For each question, provide: {"id": N, "explainWhy": "...", "explainConcept": "...", "explainNext": "..."}',
            "",
            "- explainWhy (2-3 sentences): Why the correct answer is right",
            "- explainConcept (2-3 sentences): The underlying concept tested",
            "- explainNext (1-2 sentences): What to practice next",
            "",
        ]

        for q in batch:
            lines.append("---")
            answer_letter = ""
            ci = q.get("correctIndex", 0)
            if 0 <= ci <= 3 and q.get("options"):
                answer_letter = chr(ord("A") + ci)

            lines.append(
                f"[Question] ID: {q['id']} | Topic: {q['topic']} / {q['subtopic']}"
            )

            if q.get("passageText"):
                passage = q["passageText"][:300]
                lines.append(f"Passage: {passage}...")

            lines.append(f"Q: {q['questionText'][:300]}")

            if q.get("options") and any(q["options"]):
                opts = "  ".join(
                    f"{chr(ord('A')+j)}) {o[:80]}" for j, o in enumerate(q["options"]) if o
                )
                lines.append(opts)

            if answer_letter:
                lines.append(f"Correct: {answer_letter}")
            elif q.get("options") and q["options"][0]:
                lines.append(f"Correct: {q['options'][0]}")

            lines.append("")

        filepath = os.path.join(PROMPTS_DIR, f"batch_{batch_num:03d}.txt")
        with open(filepath, "w") as f:
            f.write("\n".join(lines))

    print(f"Generated {batch_num} batch files in {PROMPTS_DIR}")
    print(f"To use: paste each batch into Claude.ai, copy the JSON response,")
    print(f"save to scripts/output/explanations/batch_NNN.json")


if __name__ == "__main__":
    main()
