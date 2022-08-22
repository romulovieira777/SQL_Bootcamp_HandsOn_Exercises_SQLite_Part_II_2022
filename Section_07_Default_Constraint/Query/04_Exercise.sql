/*
Exercise No. 04

Create a table named employee with columns:

    - employee_id (INTEGER primary key)
    - first_name (TEXT)
    - last_name (TEXT)
    - email (TEXT)
    - country (TEXT, default 'USA')
    - created_at (TEXT, by default, the date of insertion of the record)

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the table level.
*/
CREATE TABLE employee (
    employee_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , country TEXT DEFAULT 'USA'
  , created_at TEXT DEFAULT CURRENT_DATE
  , PRIMARY KEY (employee_id)
);