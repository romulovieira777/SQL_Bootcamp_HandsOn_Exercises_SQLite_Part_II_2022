/*
Exercise No. 01

Create a temporary table named user with columns:
    - user_id (INTEGER - primary key)
    - first_name (TEXT)
    - last_name (TEXT)
    - email (TEXT)

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the table level.
*/
-- Method 01
CREATE TEMP TABLE user (
    user_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , PRIMARY KEY (user_id)
);


-- Method 02
CREATE TEMPORARY TABLE user (
    user_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , PRIMARY KEY (user_id)
);


-- Method 03
CREATE TABLE temp.user (
    user_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , PRIMARY KEY (user_id)
);