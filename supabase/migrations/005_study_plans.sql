-- Migration: ai_study_plans — persists Planner agent output. Each user has at
-- most one active plan per week_start. Regenerating creates a new row and
-- flips the previous one to active=false (history preserved). The
-- original_plan_json column is the agent's untouched output; plan_json is the
-- live, editable version reflecting the student's drag/drop changes.

CREATE TABLE IF NOT EXISTS ai_study_plans (
  id                  BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id             UUID,
  week_start          DATE NOT NULL,
  plan_json           JSONB NOT NULL,
  original_plan_json  JSONB NOT NULL,
  generated_by        TEXT DEFAULT 'planner',
  active              BOOLEAN DEFAULT TRUE,
  created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_study_plans_user
  ON ai_study_plans(user_id);
CREATE INDEX IF NOT EXISTS idx_study_plans_user_active
  ON ai_study_plans(user_id, active);
CREATE INDEX IF NOT EXISTS idx_study_plans_week
  ON ai_study_plans(week_start);
