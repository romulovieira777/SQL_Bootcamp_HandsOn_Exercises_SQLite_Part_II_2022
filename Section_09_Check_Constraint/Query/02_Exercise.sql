/*
Exercise No. 02

Create a table named customer with columns:
    - customer_id (INTEGER primary key)
    - first_name (TEXT)
    - last_name (TEXT)
    - phone (TEXT)
    - email (TEXT)
    - city (TEXT)
    - discount (REAL, default 0, before inserting, check if the value is within the range [0, 1])
    - id_card (TEXT, unique)

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the table level. Define the CHECK constraint at the column level.
*/
CREATE TABLE customer (
    customer_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , phone TEXT
  , email TEXT
  , city TEXT
  , discount REAL DEFAULT 0 CHECK (discount >= 0 AND discount <= 1)
  , id_card TEXT UNIQUE
  , PRIMARY KEY (customer_id)
);