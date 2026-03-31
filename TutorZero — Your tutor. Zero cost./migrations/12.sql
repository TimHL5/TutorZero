CREATE UNIQUE INDEX IF NOT EXISTS idx_tutor_usage_user_date ON tutor_usage(user_id, date);
CREATE UNIQUE INDEX IF NOT EXISTS idx_tutor_usage_browser_date ON tutor_usage(browser_id, date);
