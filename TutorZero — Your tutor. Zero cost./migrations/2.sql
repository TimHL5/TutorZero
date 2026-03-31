
CREATE TABLE anon_sessions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  browser_id TEXT NOT NULL,
  streak_days INTEGER DEFAULT 0,
  streak_last_date DATE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_anon_sessions_browser ON anon_sessions(browser_id);
