# SAT R&W Question Bank — Scraped Data

1,688 questions scraped from College Board's public question bank API, organized by domain.

## Counts
- Information and Ideas: 507
- Craft and Structure: 437
- Expression of Ideas: 365
- Standard English Conventions: 379

## Contents
- `information_and_ideas/` etc. — one JSON file per question (filename = questionId)
- `_consolidated/` — one JSON file per domain + `all_rw_questions.json` with all 1,688
- `_list.json` — the raw list endpoint response (metadata only, no content)
- `schema.sql` — Supabase table schema
- `import_to_supabase.py` — bulk upsert script (run locally with service role key)
- `scrape_rw.py` — the scraper itself, resumable, rerun anytime

## Record shape
Each question has: questionId, external_id, domain, skill_desc, difficulty,
type, stimulus (passage HTML), stem (question HTML), answerOptions (4 choices),
correct_answer (["B"] style), rationale (explanation HTML), plus template metadata.

## Running the import
```
pip install supabase
export SUPABASE_URL='https://<project>.supabase.co'
export SUPABASE_SERVICE_KEY='<service_role_key>'
# First: run schema.sql in the Supabase SQL editor
python3 import_to_supabase.py
```

## To scrape Math next
Change the list endpoint payload in scrape_rw.py:
  {"asmtEventId": 99, "test": 2, "domain": "H,P,Q,S"}
Domains: H=Algebra, P=Problem-Solving & Data Analysis,
         Q=Advanced Math, S=Geometry & Trigonometry
