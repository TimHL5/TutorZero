-- Add unique indexes to chat_usage for atomic INSERT ON CONFLICT
CREATE UNIQUE INDEX IF NOT EXISTS idx_chat_usage_user_month ON chat_usage(user_id, month_year);
CREATE UNIQUE INDEX IF NOT EXISTS idx_chat_usage_browser_month ON chat_usage(browser_id, month_year);
