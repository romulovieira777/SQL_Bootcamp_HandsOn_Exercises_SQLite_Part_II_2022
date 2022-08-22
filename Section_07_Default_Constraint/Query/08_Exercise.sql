/*
Exercise No. 08

Create a table named customer with columns:

    - customer_id (INTEGER primary key)
    - first_name (TEXT)
    - last_name (TEXT)
    - phone (TEXT)
    - email (TEXT)
    - city (TEXT)
    - discount (REAL, default 0)
    - created_at (TEXT, by default, the date and time when the record was inserted)

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the table level.
*/
CREATE TABLE customer (
    customer_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , phone TEXT
  , email TEXT
  , city TEXT
  , discount REAL DEFAULT 0
  , created_at TEXT DEFAULT CURRENT_TIMESTAMP
  , PRIMARY KEY (customer_id)
);