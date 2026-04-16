# Question Extraction Schema

This document defines the exact JSON schema Claude Code must produce when extracting SAT questions from PDF page images. Follow it precisely.

## Output format

Output a **single JSON array** of question objects. Each object must match this TypeScript interface exactly:

```ts
interface ExtractedQuestion {
  // Order this question appeared in the source PDF (starts at 1)
  source_order: number;

  // The question's ID as printed in the PDF (hex string like "a9c3f01b") if visible.
  // Leave as empty string "" if not visible.
  source_id: string;

  // Difficulty as printed on the page: "E" (easy), "M" (medium), or "H" (hard)
  // Look for 1, 2, or 3 filled circles/bars next to the question number.
  // Leave as "M" if not visible.
  source_difficulty: "E" | "M" | "H";

  // Full passage text, if the question has a passage. Otherwise null.
  // Only reading/writing questions have passages.
  passage_text: string | null;

  // The main question text. Preserve mathematical notation as LaTeX
  // wrapped in single dollars ($...$) for inline or double dollars ($$...$$) for display.
  // Example: "If $3x + 5 = 20$, what is the value of $x$?"
  // NEVER write "x^2" — always write "$x^2$".
  // NEVER write "2 ≤ x" — always write "$2 \leq x$".
  question_text: string;

  // 4 answer options. Order them A, B, C, D as printed.
  // For multiple-choice questions: 4 non-empty strings.
  // For student-produced-response (SPR) questions (no A/B/C/D, just a blank): empty array [].
  // Apply the same LaTeX rules as question_text.
  options: string[];

  // True if this is a student-produced-response question (fill-in-the-blank, no A/B/C/D).
  is_spr: boolean;

  // True if the question depends on a figure, graph, table, or diagram that appears in the PDF.
  // Be generous here — if the question refers to "the graph" or "the table", mark true.
  has_figure: boolean;

  // The student-facing question (e.g. "What value of x satisfies the equation?").
  // This is the same as question_text for most questions, but for passage-based
  // questions it's just the stem after the passage.
  // Leave as null if there is no separate stem.
  question_stem: string | null;
}
```

## Mathematical notation rules (critical)

These are the most common extraction mistakes. Get them right.

1. **Variables and coefficients:** `3x`, `2y`, `x+5` — always wrap in `$...$`. Write `$3x$` not `3x`.
2. **Superscripts:** `$x^2$`, `$n^{10}$`, `$10^{-3}$`. Curly braces required when exponent has more than one character.
3. **Fractions:** `$\frac{a}{b}$`. Not `a/b` unless the PDF genuinely shows a slash.
4. **Square roots:** `$\sqrt{16}$`, `$\sqrt[3]{8}$`.
5. **Inequalities:** `$\leq$`, `$\geq$`, `$\neq$`. Never use `≤`, `≥`, or `≠` characters directly — the rendering will break.
6. **Greek letters:** `$\pi$`, `$\theta$`, `$\alpha$`.
7. **Degrees:** `$30°$` or `$30^\circ$`.
8. **Plus/minus:** `$\pm$`.
9. **Multi-character variables or function names:** wrap the whole math expression: `$f(x) = 3x + 1$`.
10. **Equations on their own line in the PDF (display math):** wrap in `$$...$$`.

## When the question has a passage

For reading/writing questions with a passage, split it:

- `passage_text` = the passage (the block of prose above the question)
- `question_stem` = the actual question (usually starts with "Which choice...", "What is the main...", etc.)
- `question_text` = full text including both, with passage first, blank line, then stem

For math questions, `passage_text` is almost always null.

## Figures and tables

If the question includes a figure, graph, chart, or table:

1. Set `has_figure: true`.
2. In `question_text`, describe the figure in brackets at the start: `[Figure: scatterplot showing x vs y with points at (1,2), (3,5), (5,8)]`.
3. If the figure is the entire question (e.g. "According to the graph..."), transcribe the data as accurately as you can from the image.

Do NOT skip questions with figures. Extract what you can see.

## Quality checklist before outputting

For each question, verify:
- ✓ `question_text` is at least 15 characters
- ✓ If `is_spr` is false, `options` has exactly 4 non-empty strings
- ✓ If `is_spr` is true, `options` is an empty array `[]`
- ✓ All math is wrapped in `$...$` or `$$...$$`
- ✓ No `x²`, `≤`, `≥`, `π` Unicode characters — always use LaTeX
- ✓ No stray OCR garbage like `≤`, `¥`, single letters that look like they replaced a variable

If a question on the page is too damaged, cut off, or illegible to extract cleanly, **skip it entirely** — do not include a half-broken object in the output.

## Output instruction

Write the JSON array to a file named `questions.json` in the current working directory. Do not print it to terminal — the array will be large.
