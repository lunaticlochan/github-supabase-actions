DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS secure_notes;


-- 1. Create customer table
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
