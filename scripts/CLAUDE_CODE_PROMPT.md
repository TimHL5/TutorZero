# Claude Code Extraction Prompts

Copy-paste these prompts into Claude Code. Use them from inside the `scripts/extracted/` directory (or adjust paths as noted).

---

## Prompt A: Question Bank subtopic (standard case)

Use this once per subtopic folder. Replace `<PATH>` with the actual path.

```
I need you to extract SAT question data from the PNG images in `<PATH>`.

Read the schema in `scripts/SCHEMA.md` first — follow it exactly.

Then:
1. List all PNG files in `<PATH>` in order.
2. Process them in batches of 10. For each batch, look at the images and extract every complete question you see. Questions may span multiple pages; merge them when that happens.
3. After each batch, append the new questions to `<PATH>/questions.json` (create it if it doesn't exist, preserving existing entries).
4. After all batches, print a summary: how many questions you extracted, how many you skipped, and why.

Math rule (critical): wrap ALL math in LaTeX delimiters. Never write `x^2`, `3x+5`, or `≤` as plain text. Always `$x^2$`, `$3x+5$`, `$\leq$`. If you see a Unicode math character like `≤` in your own output, you did it wrong — fix it.

Figure rule: if a question has a graph, chart, or diagram, set `has_figure: true` and describe the figure in brackets at the start of `question_text`. Do not skip figure questions.

If a question is too damaged to extract cleanly, skip it and note why in the summary.
```

---

## Prompt B: Practice test (single bundle)

Practice tests have more structure — two sections (R&W + Math), each split into two modules. Use this once per test.

```
I need you to extract SAT practice test questions from the PNG images in `scripts/extracted/practice-tests/test-<N>/`.

Read the schema in `scripts/SCHEMA.md` first — follow it exactly.

The test has this structure, in this page order:
  1. Cover / directions pages (skip)
  2. Reading and Writing Module 1 (33 questions)
  3. Break page (skip)
  4. Reading and Writing Module 2 (33 questions)
  5. Break page (skip)
  6. Math Module 1 (27 questions)
  7. Break page (skip)
  8. Math Module 2 (27 questions)
  9. End-of-test page (skip)

Please:
1. Identify which pages correspond to which module. Pages with "STOP" at the end are the last page of a module. Pages that say "Reading and Writing" or "Math" with "Module 1" or "Module 2" and "33 QUESTIONS" or "27 QUESTIONS" are section-start pages.
2. Extract all questions into `scripts/extracted/practice-tests/test-<N>/questions.json`.
3. Add two extra fields to each question beyond the schema:
     - `practice_test_section`: "reading_writing" or "math"
     - `practice_test_module`: 1 or 2
4. Number each question with its in-module number as `source_order` (1-33 for R&W, 1-27 for math).
5. Print a summary of how many you got per module. Target: 33 + 33 + 27 + 27 = 120 questions per test.
```

---

## Prompt C: Quick validation

After Claude Code finishes a subtopic, run this to sanity-check:

```
Validate the questions.json at `<PATH>/questions.json` against the schema in `scripts/SCHEMA.md`.

Check each question for:
1. question_text >= 15 chars
2. If is_spr is false, options has exactly 4 non-empty strings
3. If is_spr is true, options is []
4. No raw Unicode math characters (≤, ≥, ², ³, ×, ÷, π, θ) — everything should be LaTeX in $...$
5. has_figure=true questions include a bracket-description like [Figure: ...] at the start of question_text

Print a report listing any questions that fail these checks by source_order, and show the problem. Don't auto-fix — just report.
```

---

## Tips for using these prompts

- **One subtopic per Claude Code session.** Opening a fresh session for each subtopic keeps context focused and results cleaner.
- **Check `questions.json` visually after each run.** Open it, scroll through 5-10 random questions, see if they look right. If they do, move on. If they don't, re-run Prompt A with stronger emphasis on whatever broke.
- **Expect ~5-15% of questions to need manual fixes.** That's normal. The time you save vs. typing them out is still 50x.
- **If Claude Code produces garbage on a subtopic,** check: (a) are the PNGs actually readable? Open one. (b) Is the subtopic all figure-heavy? (Geometry often is.) Those may need a lower quality bar.
- **Save your prompts.** Keep a log of what you asked and what worked. When you re-run for the next subtopic, you want to reproduce your best run, not your average run.

---

## After extraction

Once every subtopic has its `questions.json`:

```bash
cd scripts
python3 merge_to_typescript.py
```

That merges everything, pairs with answer keys, and writes new `.ts` files to `src/data/`.
