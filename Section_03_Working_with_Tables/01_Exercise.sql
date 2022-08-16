/*
Exercise No. 01

Using the CREATE TABLE command, create a table named customer with the following columns:
    - customer_id (INTEGER - primary key)
    - first_name (TEXT)
    - last_name (TEXT)
    - email (TEXT)

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the column level.
*/
CREATE TABLE customer (
    customer_id INTEGER PRIMARY KEY
  , first_name TEXT
  , last_name TEXT
  , email TEXT
);
