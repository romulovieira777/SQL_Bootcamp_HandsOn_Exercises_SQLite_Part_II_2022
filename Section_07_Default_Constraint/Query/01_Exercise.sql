/*
Exercise No. 01

Create a table named employee with columns:

    - employee_id (INTEGER primary key)
    - first_name (TEXT)
    - last_name (TEXT)
    - email (TEXT)
    - country(TEXT, default 'Poland')

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the table level.
*/
CREATE TABLE employee (
    employee_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , country TEXT DEFAULT 'Poland'
  , PRIMARY KEY (employee_id)
);
