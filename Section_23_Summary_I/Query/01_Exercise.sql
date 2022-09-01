/*
Exercise No. 01

Create a table named producer with columns:

    - producer_id (INTEGER - PRIMARY KEY)
    - company_name (TEXT - set the NOT NULL constraint)
    - country (TEXT - set the NOT NULL constraint)

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the level table.
*/
CREATE TABLE producer (
    producer_id INTEGER
  , company_name TEXT NOT NULL
  , country TEXT NOT NULL
  , PRIMARY KEY (producer_id)
);