-- Multi-turn tutor conversations (ai_tutor_turns) and thumbs feedback
-- (ai_agent_feedback) for both one-shot agents and tutor turns.
-- The tutor agent now lives inside the framework and streams via SSE; each
-- turn (user / assistant / tool) is persisted for replay, audit, and eval.

CREATE TABLE IF NOT EXISTS ai_tutor_turns (
  id                BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id           UUID,
  browser_id        TEXT,
  conversation_id   UUID NOT NULL,
  role              TEXT NOT NULL CHECK (role IN ('user','assistant','tool')),
  content           TEXT,
  tool_calls        JSONB,
  model             TEXT,
  prompt_tokens     INTEGER,
  completion_tokens INTEGER,
  latency_ms        INTEGER,
  error             TEXT,
  created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_tutor_turns_conv ON ai_tutor_turns(conversation_id, created_at);
CREATE INDEX IF NOT EXISTS idx_tutor_turns_user ON ai_tutor_turns(user_id, created_at DESC);

CREATE TABLE IF NOT EXISTS ai_agent_feedback (
  id              BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  agent_call_id   BIGINT REFERENCES ai_agent_calls(id) ON DELETE CASCADE,
  tutor_turn_id   BIGINT REFERENCES ai_tutor_turns(id) ON DELETE CASCADE,
  user_id         UUID,
  rating          SMALLINT NOT NULL CHECK (rating IN (-1, 1)),
  free_text       TEXT,
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  CHECK ((agent_call_id IS NOT NULL) OR (tutor_turn_id IS NOT NULL))
);

CREATE INDEX IF NOT EXISTS idx_feedback_call   ON ai_agent_feedback(agent_call_id);
CREATE INDEX IF NOT EXISTS idx_feedback_turn   ON ai_agent_feedback(tutor_turn_id);
CREATE INDEX IF NOT EXISTS idx_feedback_rating ON ai_agent_feedback(rating, created_at DESC);
