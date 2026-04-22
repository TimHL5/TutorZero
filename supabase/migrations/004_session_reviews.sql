-- Migration: ai_session_reviews — persists Reviewer agent output for each
-- practice/diagnostic session. Drives the PracticeSummary page and the
-- Dashboard "Recent insights" section. Patterns the student dismisses are
-- appended to dismissed_patterns so they don't resurface in summaries.

CREATE TABLE IF NOT EXISTS ai_session_reviews (
  id                  BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  session_id          BIGINT NOT NULL,
  user_id             UUID,
  highlights          JSONB NOT NULL,
  patterns            JSONB NOT NULL,
  calibration_score   NUMERIC,
  estimated_math      INTEGER,
  estimated_rw        INTEGER,
  next_session_focus  JSONB,
  summary             TEXT,
  dismissed_patterns  TEXT[] DEFAULT '{}',
  created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_session_reviews_user
  ON ai_session_reviews(user_id);
CREATE INDEX IF NOT EXISTS idx_session_reviews_session
  ON ai_session_reviews(session_id);
CREATE INDEX IF NOT EXISTS idx_session_reviews_created
  ON ai_session_reviews(created_at DESC);
