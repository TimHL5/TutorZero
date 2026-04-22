-- Migration: typed agent framework. The 002_ai_agent_calls migration was
-- never applied to remote (verified via information_schema), so this CREATE
-- defines the canonical schema. If the 002 table is ever found in another
-- environment, it must be dropped manually before this migration runs.

CREATE TABLE IF NOT EXISTS ai_agent_calls (
  id                BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id           UUID,
  session_id        BIGINT,
  agent             TEXT NOT NULL,
  input_json        JSONB NOT NULL,
  output_json       JSONB,
  model             TEXT NOT NULL,
  prompt_tokens     INTEGER,
  completion_tokens INTEGER,
  latency_ms        INTEGER,
  error             TEXT,
  created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_agent_calls_user    ON ai_agent_calls(user_id);
CREATE INDEX IF NOT EXISTS idx_agent_calls_agent   ON ai_agent_calls(agent);
CREATE INDEX IF NOT EXISTS idx_agent_calls_session ON ai_agent_calls(session_id);
CREATE INDEX IF NOT EXISTS idx_agent_calls_created ON ai_agent_calls(created_at DESC);
