-- 1. Create customer table
DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
  id uuid PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. Add a foreign key from customer.id to auth.users.id
ALTER TABLE customer
ADD CONSTRAINT fk_customer_user
FOREIGN KEY (id) REFERENCES auth.users (id);
