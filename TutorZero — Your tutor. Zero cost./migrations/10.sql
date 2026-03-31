CREATE TABLE tutor_usage (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT,
  browser_id TEXT,
  date TEXT NOT NULL,
  message_count INTEGER DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_tutor_usage_user ON tutor_usage(user_id, date);
CREATE INDEX idx_tutor_usage_browser ON tutor_usage(browser_id, date);