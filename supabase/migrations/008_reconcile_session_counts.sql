-- Reconcile per-session counts so the Progress page's history list, heatmap,
-- and by-topic mastery view all agree.
--
-- Two drifts had developed:
--   1. user_sessions.questions_total / questions_correct were denormalized
--      at write time and no longer match the underlying attempts table for
--      legacy / seeded sessions. attempts is the authoritative event log;
--      bring user_sessions in line with it.
--   2. The diagnostician backfill (migration 007 follow-up) inserted skill-
--      aware user_skill_scores rows with session_id=NULL because the
--      diagnostician agent_call doesn't carry one. Tie those rows to the
--      user's first diagnostic session in user_sessions so per-session
--      heatmap aggregation produces sensible counts.
--
-- Both UPDATEs are idempotent and safe to re-run.

-- 1. Bring user_sessions counts in sync with the real attempts log.
UPDATE user_sessions us
SET
  questions_total   = sub.attempted,
  questions_correct = sub.correct,
  updated_at        = NOW()
FROM (
  SELECT session_id,
         COUNT(*)::INT             AS attempted,
         SUM((is_correct)::INT)::INT AS correct
  FROM attempts
  GROUP BY session_id
) sub
WHERE us.id = sub.session_id
  AND (us.questions_total   IS DISTINCT FROM sub.attempted
       OR us.questions_correct IS DISTINCT FROM sub.correct);

-- 2. Attach diagnostician-backfilled skill rows to the user's diagnostic
--    session (the earliest user_sessions row of type 'diagnostic'). After
--    this the heatmap's per-session aggregation produces the right number
--    of skill-tracked questions for that session.
UPDATE user_skill_scores uss
SET session_id = first_diag.id, updated_at = NOW()
FROM (
  SELECT DISTINCT ON (user_id) user_id, id
  FROM user_sessions
  WHERE session_type = 'diagnostic'
  ORDER BY user_id, started_at ASC
) first_diag
WHERE uss.session_id IS NULL
  AND uss.skill IS NOT NULL
  AND uss.user_id = first_diag.user_id;
