import { createClient } from "@supabase/supabase-js";

const supabaseUrl = "https://bkmyfcolrdumyrwktjrr.supabase.co";
const supabaseAnonKey =
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJrbXlmY29scmR1bXlyd2t0anJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM5NDg3NTcsImV4cCI6MjA4OTUyNDc1N30.ClqyVHYOazJduEi6NTfENRcz2fdlDbiN2vBOJ937oHQ";

export const supabase = createClient(supabaseUrl, supabaseAnonKey);
