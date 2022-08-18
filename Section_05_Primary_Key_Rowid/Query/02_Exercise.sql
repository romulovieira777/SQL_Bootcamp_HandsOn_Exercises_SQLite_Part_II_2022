/*
Exercise No. 02

Create a table named company with columns:
    - company_id (INTEGER - primary key)
    - company_name (TEXT)
    - stock_exchange (TEXT)
    - price (REAL)

The expected data type and constraints are provided in parentheses.

Define the primary key constraints at the table level.
*/
CREATE TABLE company (
    company_id INTEGER
  , company_name TEXT
  , stock_exchange TEXT
  , price REAL
  , PRIMARY KEY (company_id)
);