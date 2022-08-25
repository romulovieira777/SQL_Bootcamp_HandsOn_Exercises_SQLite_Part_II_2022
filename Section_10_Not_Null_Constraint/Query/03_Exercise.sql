/*
Exercise No. 03

Create a table named producer with the following columns:
    - product_id (INTEGER - primary key)
    - company_name (TEXT - set the NOT NULL constraint)
    - country (REAL - set the NOT NULL constraint)

The expected data type and constraints are provided in parentheses. Note the column type for the primary key -> INTEGER

Define the primary key constraint at the table level.
*/
CREATE TABLE producer (
    producer_id INTEGER
  , company_name TEXT NOT NULL
  , country REAL NOT NULL
  , PRIMARY KEY (product_id)
);