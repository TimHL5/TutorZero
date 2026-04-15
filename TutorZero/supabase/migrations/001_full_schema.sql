-- TutorZero PostgreSQL Schema (migrated from Cloudflare D1/SQLite)
-- Run this in the Supabase SQL Editor to create all tables

-- ============================================
-- Anonymous User Tracking
-- ============================================

CREATE TABLE IF NOT EXISTS anon_sessions (
  id SERIAL PRIMARY KEY,
  browser_id TEXT NOT NULL,
  streak_days INTEGER DEFAULT 0,
  streak_last_date DATE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_anon_sessions_browser ON anon_sessions(browser_id);

CREATE TABLE IF NOT EXISTS sessions (
  id SERIAL PRIMARY KEY,
  anon_session_id INTEGER REFERENCES anon_sessions(id),
  session_type TEXT NOT NULL,
  started_at TIMESTAMPTZ DEFAULT NOW(),
  completed_at TIMESTAMPTZ,
  score_reading INTEGER,
  score_math INTEGER,
  score_total INTEGER,
  questions_total INTEGER,
  questions_correct INTEGER,
  metadata TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_sessions_anon ON sessions(anon_session_id);
CREATE INDEX idx_sessions_type ON sessions(session_type);

CREATE TABLE IF NOT EXISTS attempts (
  id SERIAL PRIMARY KEY,
  session_id INTEGER NOT NULL,
  question_id INTEGER NOT NULL,
  selected_index INTEGER NOT NULL,
  is_correct BOOLEAN NOT NULL,
  time_spent_sec INTEGER,
  confidence TEXT,
  explanation_strategies TEXT,
  student_understood BOOLEAN,
  explanation_attempts INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_attempts_session ON attempts(session_id);
CREATE INDEX idx_attempts_question ON attempts(question_id);

CREATE TABLE IF NOT EXISTS skill_scores (
  id SERIAL PRIMARY KEY,
  anon_session_id INTEGER REFERENCES anon_sessions(id),
  session_id INTEGER,
  topic TEXT NOT NULL,
  score DOUBLE PRECISION NOT NULL,
  questions_n INTEGER,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_skill_scores_anon ON skill_scores(anon_session_id, topic);

CREATE TABLE IF NOT EXISTS diagnostic_results (
  id SERIAL PRIMARY KEY,
  anon_session_id INTEGER REFERENCES anon_sessions(id),
  session_id INTEGER,
  skills TEXT NOT NULL,
  gaps TEXT,
  recommended_plan TEXT,
  estimated_score INTEGER,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_diagnostic_anon ON diagnostic_results(anon_session_id);

-- ============================================
-- Authenticated User Tables
-- ============================================

CREATE TABLE IF NOT EXISTS user_profiles (
  id SERIAL PRIMARY KEY,
  user_id TEXT NOT NULL UNIQUE,
  email TEXT,
  display_name TEXT,
  picture_url TEXT,
  has_completed_diagnostic BOOLEAN DEFAULT FALSE,
  streak_days INTEGER DEFAULT 0,
  streak_last_date DATE,
  estimated_math_score INTEGER DEFAULT 400,
  estimated_rw_score INTEGER DEFAULT 400,
  target_score INTEGER,
  test_date TEXT,
  math_confidence INTEGER,
  reading_confidence INTEGER,
  study_hours_per_week TEXT,
  has_completed_onboarding BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_user_profiles_user_id ON user_profiles(user_id);

CREATE TABLE IF NOT EXISTS user_sessions (
  id SERIAL PRIMARY KEY,
  user_id TEXT NOT NULL,
  session_type TEXT NOT NULL,
  started_at TIMESTAMPTZ DEFAULT NOW(),
  completed_at TIMESTAMPTZ,
  questions_total INTEGER,
  questions_correct INTEGER,
  metadata TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_user_sessions_user_id ON user_sessions(user_id);

CREATE TABLE IF NOT EXISTS user_skill_scores (
  id SERIAL PRIMARY KEY,
  user_id TEXT NOT NULL,
  session_id INTEGER,
  topic TEXT NOT NULL,
  score DOUBLE PRECISION NOT NULL,
  questions_n INTEGER,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_user_skill_scores_user_id ON user_skill_scores(user_id);

CREATE TABLE IF NOT EXISTS user_diagnostic_results (
  id SERIAL PRIMARY KEY,
  user_id TEXT NOT NULL,
  session_id INTEGER,
  skills TEXT NOT NULL,
  gaps TEXT,
  recommended_plan TEXT,
  estimated_score INTEGER,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_user_diagnostic_results_user_id ON user_diagnostic_results(user_id);

-- ============================================
-- Subscriptions (Stripe)
-- ============================================

CREATE TABLE IF NOT EXISTS subscriptions (
  id SERIAL PRIMARY KEY,
  user_id TEXT NOT NULL UNIQUE,
  tier TEXT DEFAULT 'free',
  stripe_customer_id TEXT,
  stripe_subscription_id TEXT,
  cancel_at_period_end BOOLEAN DEFAULT FALSE,
  started_at TIMESTAMPTZ DEFAULT NOW(),
  expires_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_subscriptions_user ON subscriptions(user_id);

-- ============================================
-- Rate Limiting
-- ============================================

CREATE TABLE IF NOT EXISTS chat_usage (
  id SERIAL PRIMARY KEY,
  user_id TEXT,
  browser_id TEXT,
  month_year TEXT NOT NULL,
  message_count INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE UNIQUE INDEX idx_chat_usage_user_month ON chat_usage(user_id, month_year);
CREATE UNIQUE INDEX idx_chat_usage_browser_month ON chat_usage(browser_id, month_year);

CREATE TABLE IF NOT EXISTS tutor_usage (
  id SERIAL PRIMARY KEY,
  user_id TEXT,
  browser_id TEXT,
  date TEXT NOT NULL,
  message_count INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE UNIQUE INDEX idx_tutor_usage_user_date ON tutor_usage(user_id, date);
CREATE UNIQUE INDEX idx_tutor_usage_browser_date ON tutor_usage(browser_id, date);

-- ============================================
-- PostgreSQL Functions for Aggregate Queries
-- ============================================

-- Skill summary for authenticated users
CREATE OR REPLACE FUNCTION get_user_skill_summary(p_user_id TEXT)
RETURNS TABLE(topic TEXT, total_attempted BIGINT, avg_score DOUBLE PRECISION) AS $$
  SELECT topic, SUM(questions_n)::BIGINT, SUM(score * questions_n) / NULLIF(SUM(questions_n), 0)
  FROM user_skill_scores WHERE user_id = p_user_id GROUP BY topic;
$$ LANGUAGE sql;

-- Skill summary for anonymous users
CREATE OR REPLACE FUNCTION get_anon_skill_summary(p_anon_session_id INTEGER)
RETURNS TABLE(topic TEXT, total_attempted BIGINT, avg_score DOUBLE PRECISION) AS $$
  SELECT topic, SUM(questions_n)::BIGINT, SUM(score * questions_n) / NULLIF(SUM(questions_n), 0)
  FROM skill_scores WHERE anon_session_id = p_anon_session_id GROUP BY topic;
$$ LANGUAGE sql;
