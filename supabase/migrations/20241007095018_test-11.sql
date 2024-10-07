-- Create the table
CREATE TABLE secure_notes (
  id SERIAL PRIMARY KEY,
  user_id UUID NOT NULL,
  title VARCHAR(255) NOT NULL,
  content TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES auth.users(id)
);

-- Enable RLS for the table
ALTER TABLE secure_notes ENABLE ROW LEVEL SECURITY;

-- Create a policy that only allows users to access their own notes
CREATE POLICY user_notes_policy ON secure_notes
  USING (auth.uid() = user_id);
