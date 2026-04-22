-- Migration: AI Diagnostician output storage.
--
-- `ai_diagnoses` holds one row per diagnostic completion. History is preserved
-- across re-runs (never DELETE; future diagnoses insert as new rows).
-- `ai_weakness_verifications` captures the student's confirm / misread / maybe
-- response on each weakness the Diagnostician surfaced — the HAI feedback loop.

CREATE TABLE IF NOT EXISTS ai_diagnoses (
  id                  BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id             UUID,
  session_id          BIGINT,
  weaknesses          JSONB NOT NULL,
  strengths           JSONB NOT NULL,
  estimated_math      INT NOT NULL,
  estimated_rw        INT NOT NULL,
  calibration_score   NUMERIC NOT NULL,
  top_focus           TEXT NOT NULL,
  summary             TEXT NOT NULL,
  created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_ai_diagnoses_user    ON ai_diagnoses(user_id);
CREATE INDEX IF NOT EXISTS idx_ai_diagnoses_created ON ai_diagnoses(created_at DESC);

CREATE TABLE IF NOT EXISTS ai_weakness_verifications (
  id            BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  diagnosis_id  BIGINT NOT NULL REFERENCES ai_diagnoses(id) ON DELETE CASCADE,
  skill         TEXT NOT NULL,
  user_response TEXT NOT NULL CHECK (user_response IN ('confirmed', 'misread', 'maybe')),
  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_weak_verif_diagnosis ON ai_weakness_verifications(diagnosis_id);
