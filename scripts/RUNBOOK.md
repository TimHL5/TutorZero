# SAT Question Extraction Runbook

This replaces the old OCR pipeline with a Claude-Code-vision-based one. The old pipeline produced garbled data (`x²` → `x2`, `≤` → `x`, etc). This one works.

## Pipeline overview

```
SAT Questions/*.pdf                           (your source files)
         ↓  extract_images.py
scripts/extracted/*.png + *.txt               (page images + answer-key text)
         ↓  Claude Code with CLAUDE_CODE_PROMPT.md
scripts/extracted/.../questions.json          (structured question JSON per folder)
         ↓  merge_to_typescript.py
src/data/questions-*.ts                       (drop-in replacement files)
```

**Three scripts, one for each stage. Claude Code does the hard part (vision OCR with math) in the middle.**

---

## Before you start — one-time setup

```bash
cd ~/Documents/TutorZero/scripts

# Only dependency you need. Everything else is in Python stdlib.
pip3 install --break-system-packages pymupdf

# Confirm Claude Code is installed and up to date
claude --version
```

**Commit before starting.** Copy and paste these lines one at a time to avoid zsh eating them:

```bash
cd ~/Documents/TutorZero
git add -A
git commit -m "Pre-extraction checkpoint"
```

---

## Stage 1: render PDFs as PNG images

This is fast and local, no AI involved.

**Dry run first — just one subtopic (~2 minutes):**

```bash
cd ~/Documents/TutorZero/scripts
python3 extract_images.py --subtopic linear_equations_one_var
```

You should see output like:
```
  [6 pages] math/algebra/linear_equations_one_var/pdf1.pdf
  [6 pages] math/algebra/linear_equations_one_var/pdf3.pdf
  [text]    linear_equations_one_var_1
  [text]    linear_equations_one_var_3
```

Open one of the PNGs in Finder: `scripts/extracted/question-bank/math/algebra/linear_equations_one_var/pdf1_page01.png`. If it looks crisp and you can read every equation and answer choice clearly, the rendering works. If it looks blurry or too small, tell me and I'll bump up `RENDER_DPI` in `extract_images.py`.

**If dry run looks good, render everything (~10-20 minutes):**

```bash
python3 extract_images.py
```

Expect ~500-1000 PNG files produced, totaling maybe 500MB. That's fine; they're gitignored.

---

## Stage 2: run Claude Code to extract questions

**Do ONE subtopic first as a real test.** The smallest one is probably a good starting point. Let me show you the command.

Open Claude Code in the extracted folder:

```bash
cd ~/Documents/TutorZero/scripts/extracted/question-bank/math/algebra/linear_equations_one_var
claude
```

Then paste this prompt (from `scripts/CLAUDE_CODE_PROMPT.md`, Prompt A, with path filled in):

```
I need you to extract SAT question data from the PNG images in this directory.

Read the schema in ../../../../SCHEMA.md first — follow it exactly.

Then:
1. List all PNG files in this directory in order.
2. Process them in batches of 10. For each batch, look at the images and extract every complete question you see. Questions may span multiple pages; merge them when that happens.
3. After each batch, append the new questions to ./questions.json (create it if it doesn't exist, preserving existing entries).
4. After all batches, print a summary: how many questions you extracted, how many you skipped, and why.

Math rule (critical): wrap ALL math in LaTeX delimiters. Never write "x^2", "3x+5", or "≤" as plain text. Always "$x^2$", "$3x+5$", "$\leq$".

Figure rule: if a question has a graph, chart, or diagram, set has_figure: true and describe the figure in brackets at the start of question_text. Do not skip figure questions.
```

Claude Code will chew on this for maybe 10-15 minutes and produce `questions.json` in that directory.

**Spot-check the output:**

```bash
# Open questions.json and look at 5-10 random entries
cat questions.json | python3 -m json.tool | less
```

You're looking for:
- Math wrapped in `$...$` (not plain `x^2`)
- 4 real options for multiple-choice questions (not `["answer", "0", "1", "-1"]` garbage)
- No mangled characters

If it looks 90%+ clean, you're good — move to the next subtopic. If it's bad, tell me and we'll tune the prompt.

**Then repeat for every other subtopic.** There are 25+ of them. Realistically this is 4-6 hours of kick-off-and-check, done in parallel with other work.

---

## Stage 3: merge into TypeScript files

**Dry run first:**

```bash
cd ~/Documents/TutorZero/scripts
python3 merge_to_typescript.py --dry-run
```

This prints how many questions will end up in each output file, without writing anything. Sanity-check the numbers before committing.

**Then for real:**

```bash
python3 merge_to_typescript.py
```

This overwrites `src/data/questions-*.ts` with fresh data. Commit immediately:

```bash
cd ~/Documents/TutorZero
git add src/data/
git commit -m "Regenerate question data from Claude Code extraction"
```

---

## Stage 4: verify in the app

```bash
cd ~/Documents/TutorZero
npm run build    # must pass — catches typos in the generated TS
npm run dev      # test practice flow; verify math renders correctly
```

Open a practice session, click through ~10 questions per math subtopic. If math renders, figures have descriptions, and no questions are blank — you're done.

---

## Recovering from mistakes

**"Claude Code produced bad JSON for this one subtopic."**
Delete that subtopic's `questions.json` and re-run Claude Code on it with a more specific prompt.

**"The `.ts` file has 5 questions with weird options."**
Open the `.ts` file, fix those 5 by hand. No need to re-run the whole pipeline.

**"I want to add more from a different source later."**
The pipeline is idempotent — re-running stage 3 will overwrite. Any hand-edits to `.ts` files will be lost. If you've made hand-edits you want to keep, make them in `.json` instead and re-merge.

---

## Known limits

- **Practice test topic assignment is a stub.** The merge script puts everything into `algebra`/`linear_equations_one_var` for math questions and `information_ideas`/`central_ideas` for R&W. That's because the practice test PDFs don't tell you each question's official subtopic, and we don't yet have a classifier. For the showcase this is fine — users will pick "Practice Test 4" not "linear equations from Practice Test 4". Worth improving later if we build a subtopic picker that spans practice tests too.
- **Bank answer-key pairing uses position.** The merge relies on `source_order` lining up with the PDF's internal numbering. Claude Code has to get this right; spot-check a few answers in the final `.ts` output before trusting it.
- **No automated validation yet.** Prompt C in `CLAUDE_CODE_PROMPT.md` is your safety net. Use it on every subtopic.
