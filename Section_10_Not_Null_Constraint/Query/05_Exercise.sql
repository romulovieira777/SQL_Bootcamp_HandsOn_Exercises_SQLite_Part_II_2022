/*
Exercise No. 05

Create a table named producer with columns:
    - producer_id (TEXT - primary key, set the NOT NULL constraint)
    - company_name (TEXT - set the NOT NULL constraint)
    - country (TEXT - set the NOT NULL constraint)

The expected data type and constraints are provided in parentheses. Note the column type for the primary key -> TEXT

Define the primary key constraint at the table level.
*/
CREATE TABLE producer (
    producer_id TEXT NOT NULL
  , company_name TEXT NOT NULL
  , country TEXT NOT NULL
  , PRIMARY KEY (producer_id)
);