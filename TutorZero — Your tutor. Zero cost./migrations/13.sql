ALTER TABLE attempts ADD COLUMN confidence TEXT;
ALTER TABLE attempts ADD COLUMN explanation_strategies TEXT;
ALTER TABLE attempts ADD COLUMN student_understood BOOLEAN;
ALTER TABLE attempts ADD COLUMN explanation_attempts INTEGER DEFAULT 0;
