/*
Exercise No. 01

Create a table named staff with columns:
    - staff_id (INTEGER primary key)
    - first_name (TEXT, check if the text is non-empty before inserting)
    - last_name (TEXT, check if the text is non-empty before inserting)
    - email (TEXT, unique)
    - country (TEXT, default 'USA')
    - phone (TEXT, unique)

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the table level.
*/
CREATE TABLE staff (
    staff_id INTEGER
  , first_name TEXT CHECK (first_name <> '')
  , last_name TEXT CHECK (last_name <> '')
  , email TEXT UNIQUE
  , country TEXT DEFAULT 'USA'
  , phone TEXT UNIQUE
  , PRIMARY KEY (staff_id)
);