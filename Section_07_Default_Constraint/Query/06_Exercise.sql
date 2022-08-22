/*
Exercise N0. 06

Create a table named employee with columns:

    - employee_id (INTEGER primary key)
    - first_name (TEXT)
    - last_name (TEXT)
    - email (TEXT)
    - created_at (TEXT, by default, the time when the record was inserted)

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the table level.
*/
CREATE TABLE employee (
    employee_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , created_at TEXT DEFAULT CURRENT_TIME
  , PRIMARY KEY (employee_id)
);