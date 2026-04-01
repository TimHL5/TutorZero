
CREATE TABLE skill_scores (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  anon_session_id INTEGER,
  session_id INTEGER,
  topic TEXT NOT NULL,
  score REAL NOT NULL,
  questions_n INTEGER,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_skill_scores_anon ON skill_scores(anon_session_id, topic);
