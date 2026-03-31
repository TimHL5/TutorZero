
CREATE TABLE sessions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  anon_session_id INTEGER,
  session_type TEXT NOT NULL,
  started_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  completed_at DATETIME,
  score_reading INTEGER,
  score_math INTEGER,
  score_total INTEGER,
  questions_total INTEGER,
  questions_correct INTEGER,
  metadata TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_sessions_anon ON sessions(anon_session_id);
CREATE INDEX idx_sessions_type ON sessions(session_type);
