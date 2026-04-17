-- Schema for SAT question bank (R&W + future Math)
-- Run this in your Supabase SQL editor first.

create table if not exists sat_questions (
  question_id text primary key,
  external_id uuid unique not null,
  vault_id uuid,

  -- Taxonomy
  program text,                       -- "SAT"
  test_type int,                      -- 1 = R&W, 2 = Math
  test_type_desc text,                -- "Reading and Writing" | "Math"
  domain text,                        -- "Information and Ideas"
  primary_class_cd text,              -- "INI"
  skill_cd text,                      -- "INF"
  skill_desc text,                    -- "Inferences"
  difficulty text,                    -- "E" | "M" | "H"
  score_band_range_cd int,

  -- Content
  question_type text,                 -- "mcq" | "spr"
  stimulus_html text,                 -- passage (R&W); null for most Math
  stem_html text,                     -- question prompt
  answer_options jsonb,               -- [{id, content}] — null for spr
  correct_answer jsonb,               -- ["B"] or ["403"]
  answer_keys jsonb,                  -- option IDs for correct answer
  rationale_html text,

  -- Template metadata
  parent_template_name text,
  parent_template_id text,
  template_cluster_id uuid,
  template_cluster_name text,
  origin text,
  position text,

  -- Raw payloads (insurance)
  raw_payload jsonb,

  -- Timestamps
  created_date bigint,
  updated_date bigint,
  scraped_at timestamptz default now()
);

create index if not exists idx_sat_domain on sat_questions (domain);
create index if not exists idx_sat_skill on sat_questions (skill_cd);
create index if not exists idx_sat_difficulty on sat_questions (difficulty);
create index if not exists idx_sat_test_type on sat_questions (test_type);
create index if not exists idx_sat_domain_difficulty on sat_questions (domain, difficulty);
