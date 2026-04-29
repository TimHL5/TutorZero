-- Add skill-level granularity to practice score aggregation.
-- The existing `topic` column stores domain slugs (e.g. "algebra"); the new
-- `skill` column stores the finer skill slug (e.g. "linear_equations_one_var")
-- so the heatmap, suggestions, and planner can align on a single signal.
-- Pre-existing rows have skill=NULL — they remain valid for domain rollups
-- but won't surface in skill-level views.

ALTER TABLE user_skill_scores
  ADD COLUMN IF NOT EXISTS skill TEXT NULL;

CREATE INDEX IF NOT EXISTS idx_user_skill_scores_user_skill
  ON user_skill_scores(user_id, skill);

-- Skill-level summary RPC. Aggregates user_skill_scores rows that have a
-- non-null skill, returning slug values directly so no worker-side mapping
-- is required. Legacy rows (skill=NULL, written before this migration)
-- continue to power the existing get_user_skill_summary domain rollup;
-- they intentionally don't appear here because the source attempts never
-- recorded which specific skill they were for, so we cannot retroactively
-- attribute them. New sessions land here automatically once the worker's
-- (topic, skill) aggregation runs.
CREATE OR REPLACE FUNCTION get_user_skill_summary_by_skill(p_user_id TEXT)
RETURNS TABLE(
  domain TEXT,
  skill TEXT,
  total_attempted BIGINT,
  avg_score DOUBLE PRECISION,
  last_practiced TIMESTAMPTZ
) AS $$
  SELECT
    topic AS domain,
    skill,
    SUM(questions_n)::BIGINT AS total_attempted,
    SUM(score * questions_n) / NULLIF(SUM(questions_n), 0) AS avg_score,
    MAX(created_at) AS last_practiced
  FROM user_skill_scores
  WHERE user_id = p_user_id AND skill IS NOT NULL
  GROUP BY topic, skill;
$$ LANGUAGE SQL STABLE;
