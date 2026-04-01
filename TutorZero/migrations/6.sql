
CREATE TABLE diagnostic_results (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  anon_session_id INTEGER,
  session_id INTEGER,
  skills TEXT NOT NULL,
  gaps TEXT,
  recommended_plan TEXT,
  estimated_score INTEGER,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_diagnostic_anon ON diagnostic_results(anon_session_id);
