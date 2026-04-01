ALTER TABLE user_profiles ADD COLUMN target_score INTEGER;
ALTER TABLE user_profiles ADD COLUMN test_date TEXT;
ALTER TABLE user_profiles ADD COLUMN math_confidence INTEGER;
ALTER TABLE user_profiles ADD COLUMN reading_confidence INTEGER;
ALTER TABLE user_profiles ADD COLUMN study_hours_per_week TEXT;
ALTER TABLE user_profiles ADD COLUMN has_completed_onboarding BOOLEAN DEFAULT 0;
