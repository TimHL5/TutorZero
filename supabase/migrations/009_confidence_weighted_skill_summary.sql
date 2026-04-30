-- Confidence-weighted score column on user_skill_scores.
--
-- Adds `weighted_correct` (nullable double) so the deterministic estimated
-- score can fold confidence into mastery without losing the raw correct
-- count for accuracy displays. Per-attempt weighting:
--   guessing  → 0.5 (lucky guesses count as half)
--   somewhat  → 1.0 (normal)
--   confident → 1.0 (full credit; correct is correct)
--   missing   → 1.0 (legacy rows treat unknown confidence as somewhat)
--
-- Going forward the worker writes this on every attempt batch; legacy
-- rows leave it NULL and the section formula falls back to the raw
-- `correct` count derived from `score * questions_n`.

ALTER TABLE user_skill_scores
  ADD COLUMN IF NOT EXISTS weighted_correct DOUBLE PRECISION NULL;

-- Backfill weighted_correct for rows we can mine: rows tied to a session
-- that has a reviewer or diagnostician agent_call carrying per-attempt
-- (skill, topic, confidence, isCorrect). We aggregate the matching
-- attempts per (session, topic, skill) and write the weighted sum.
WITH ranked_calls AS (
  SELECT DISTINCT ON (user_id, session_id, agent)
    user_id, session_id, agent, input_json
  FROM ai_agent_calls
  WHERE agent IN ('reviewer','diagnostician')
    AND user_id IS NOT NULL
  ORDER BY user_id, session_id, agent, (error IS NULL) DESC, created_at DESC
),
exploded AS (
  SELECT
    c.user_id::TEXT AS user_id,
    -- diagnostician calls don't carry session_id, but migration 008
    -- already attached the user's diagnostic session_id to the
    -- corresponding user_skill_scores rows; for those rows the
    -- weighted_correct backfill needs to find the diagnostic session
    -- on the user side, so look it up.
    COALESCE(c.session_id, (
      SELECT id FROM user_sessions s
      WHERE s.user_id = c.user_id::TEXT AND s.session_type='diagnostic'
      ORDER BY s.started_at ASC LIMIT 1
    )) AS session_id,
    COALESCE(a.value->>'topic', a.value->>'domain') AS topic,
    a.value->>'skill' AS skill,
    (a.value->>'isCorrect')::BOOLEAN AS is_correct,
    a.value->>'confidence' AS confidence
  FROM ranked_calls c,
    jsonb_array_elements(c.input_json::jsonb -> 'attempts') a
  WHERE a.value->>'skill' IS NOT NULL
    AND COALESCE(a.value->>'topic', a.value->>'domain') IS NOT NULL
),
aggregated AS (
  SELECT
    user_id, session_id, topic, skill,
    SUM(
      CASE
        WHEN is_correct AND confidence = 'guessing' THEN 0.5
        WHEN is_correct THEN 1.0
        ELSE 0.0
      END
    ) AS w_correct
  FROM exploded
  WHERE session_id IS NOT NULL
  GROUP BY user_id, session_id, topic, skill
)
UPDATE user_skill_scores uss
SET weighted_correct = a.w_correct,
    updated_at = NOW()
FROM aggregated a
WHERE uss.user_id = a.user_id
  AND uss.session_id = a.session_id
  AND uss.topic = a.topic
  AND uss.skill = a.skill
  AND uss.weighted_correct IS NULL;
