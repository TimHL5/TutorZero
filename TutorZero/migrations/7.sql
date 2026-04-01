
CREATE TABLE user_profiles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL UNIQUE,
  email TEXT,
  display_name TEXT,
  picture_url TEXT,
  has_completed_diagnostic BOOLEAN DEFAULT 0,
  streak_days INTEGER DEFAULT 0,
  streak_last_date DATE,
  estimated_math_score INTEGER DEFAULT 400,
  estimated_rw_score INTEGER DEFAULT 400,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_sessions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  session_type TEXT NOT NULL,
  started_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  completed_at DATETIME,
  questions_total INTEGER,
  questions_correct INTEGER,
  metadata TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_skill_scores (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  session_id INTEGER,
  topic TEXT NOT NULL,
  score REAL NOT NULL,
  questions_n INTEGER,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_diagnostic_results (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  session_id INTEGER,
  skills TEXT NOT NULL,
  gaps TEXT,
  recommended_plan TEXT,
  estimated_score INTEGER,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_user_profiles_user_id ON user_profiles(user_id);
CREATE INDEX idx_user_sessions_user_id ON user_sessions(user_id);
CREATE INDEX idx_user_skill_scores_user_id ON user_skill_scores(user_id);
CREATE INDEX idx_user_diagnostic_results_user_id ON user_diagnostic_results(user_id);
