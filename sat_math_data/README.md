# SAT Math Question Bank — Scraped Data

1,756 questions scraped from College Board, organized by domain.

## Counts
- Algebra: 582
- Advanced Math: 501
- Problem-Solving and Data Analysis: 389
- Geometry and Trigonometry: 284

## Two sources, one schema
- **1,297 qbank items** (`source: "qbank"`): fetched from `qbank-api.collegeboard.org/.../get-question`. Math rendered as **MathML** inside HTML (clean, renderable with MathJax/KaTeX).
- **459 disclosed items** (`source: "disclosed"`, from released SAT exams): fetched from `saic.collegeboard.org/disclosed/{item_id}.json`. Math rendered as **PNG images**. All PNGs have been extracted to `images/{question_id}/` and the HTML rewritten to point at those paths.

Both sources are normalized into the same record shape (stem, stimulus, answerOptions, correct_answer, rationale, etc.).

## Question types
- 1,335 `mcq` (multiple choice, 4 options labeled A–D)
- 421 `spr` (student-produced response / grid-in, `correct_answer` is an array of acceptable forms like `[".1764", ".1765", "3/17"]`)

## Contents
- `algebra/`, `advanced_math/`, `problem_solving_and_data_analysis/`, `geometry_and_trigonometry/` — one JSON file per question, filename = `questionId`
- `images/{question_id}/img_XXX_HASH.{png,jpg,svg}` — 4,040 extracted PNGs from disclosed items (8.7 MB total). The HTML in `stem`, `stimulus`, `answerOptions`, and `rationale` already points at these paths.
- `_consolidated/` — one JSON per domain, plus `all_math_questions.json` (44 MB, everything)
- `_list.json` — raw list endpoint response
- `schema.sql` — Supabase table schema (unified with R&W)
- `import_to_supabase.py` — bulk upsert script
- `upload_images_to_supabase.py` — uploads extracted PNGs to Supabase Storage and rewrites HTML paths to public URLs
- `scrape_math.py` — the scraper, resumable

## Answer extraction note
81 disclosed items had their correct answer encoded inside a base64 PNG (not as text). Their `correct_answer` was extracted from the rationale text (e.g., "The correct answer is 22.4" or "Note that 3/2 and 1.5 are examples of ways to enter a correct answer"). These records have `correct_answer_extracted_from_rationale: true` so you can audit them if needed.

## Running the import
1. First run the R&W schema (`../sat_rw_data/schema.sql`) OR this one — they define the same table.
2. Create a Supabase Storage bucket called `sat-images` (public read).
3. Install deps:
   ```
   pip install supabase
   export SUPABASE_URL='https://<project>.supabase.co'
   export SUPABASE_SERVICE_KEY='<service_role_key>'
   ```
4. Upload images and rewrite paths:
   ```
   python3 upload_images_to_supabase.py
   ```
   This rewrites the JSON files in-place with full Storage URLs.
5. Import records:
   ```
   python3 import_to_supabase.py
   ```

## Rendering in TutorZero
- **MathML (qbank items):** Render HTML directly with MathJax or KaTeX's mhchem extension. MathJax handles MathML natively.
- **Images (disclosed items):** Just render HTML — the `<img src="...">` tags will point at Supabase Storage URLs after you run the upload script.

## Re-scraping
If you need to re-run (e.g., to pick up new questions):
```
python3 scrape_math.py
```
It skips any questionId that already has a JSON file.

## IP note
Disclosed items (source=disclosed) are from released SAT exams — more clearly College Board IP than qbank items, which are educator-bank practice content. Worth considering for student-facing TutorZero features.
