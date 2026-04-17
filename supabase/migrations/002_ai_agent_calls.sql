-- Migration: create ai_agent_calls table for OpenAI agent call logging

CREATE TABLE IF NOT EXISTS ai_agent_calls (
  id            UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
  agent_name    TEXT        NOT NULL,
  input         TEXT        NOT NULL,
  output        TEXT        NOT NULL,
  model         TEXT        NOT NULL,
  input_tokens  INTEGER,
  output_tokens INTEGER,
  latency_ms    INTEGER,
  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  user_id       UUID        REFERENCES auth.users(id) ON DELETE SET NULL
);

CREATE INDEX IF NOT EXISTS idx_ai_agent_calls_user
  ON ai_agent_calls(user_id);

CREATE INDEX IF NOT EXISTS idx_ai_agent_calls_agent
  ON ai_agent_calls(agent_name);

CREATE INDEX IF NOT EXISTS idx_ai_agent_calls_created
  ON ai_agent_calls(created_at DESC);
