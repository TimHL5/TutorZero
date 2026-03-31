
CREATE TABLE chat_usage (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT,
  browser_id TEXT,
  month_year TEXT NOT NULL,
  message_count INTEGER DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_chat_usage_user ON chat_usage(user_id, month_year);
CREATE INDEX idx_chat_usage_browser ON chat_usage(browser_id, month_year);

CREATE TABLE subscriptions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL UNIQUE,
  tier TEXT DEFAULT 'free',
  started_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  expires_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_subscriptions_user ON subscriptions(user_id);
