/*
Exercise No. 01

Create a table named category with the following columns:
    - category_id (INTEGER - primary key)
    - category_name (TEXT - set the NOT NULL constraint)

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the table level.
*/
CREATE TABLE category (
    category_id INTEGER
  , category_name TEXT NOT NULL
  , PRIMARY KEY (category_id)
);