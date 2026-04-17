-- Unified schema for SAT question bank (R&W + Math)
-- Run this in your Supabase SQL editor before importing.

create table if not exists sat_questions (
  question_id text primary key,
  external_id uuid unique,              -- null for disclosed Math items
  vault_id uuid,
  disclosed_item_id text,               -- e.g. "029477-DC", only for disclosed Math
  source text not null,                 -- "qbank" | "disclosed"

  -- Taxonomy
  program text,
  test_type int,                        -- 1 = R&W, 2 = Math
  test_type_desc text,
  domain text,
  primary_class_cd text,
  skill_cd text,
  skill_desc text,
  difficulty text,
  score_band_range_cd int,

  -- Content
  question_type text,                   -- "mcq" | "spr"
  stimulus_html text,
  stem_html text,
  answer_options jsonb,                 -- [{id, content}]
  correct_answer jsonb,                 -- ["B"] or ["22.4", "22.40"] or [".1764", ".1765", "3/17"]
  answer_keys jsonb,
  rationale_html text,

  -- Flags
  correct_answer_extracted_from_rationale boolean default false,
  image_count int default 0,            -- how many extracted images in images/{question_id}/

  -- Template metadata (qbank only)
  parent_template_name text,
  parent_template_id text,
  template_cluster_id uuid,
  template_cluster_name text,
  origin text,
  position text,

  -- Disclosed-only
  answer_style text,
  section text,

  -- Raw payloads
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
create index if not exists idx_sat_source on sat_questions (source);
create index if not exists idx_sat_type on sat_questions (question_type);
create index if not exists idx_sat_domain_difficulty on sat_questions (domain, difficulty);
