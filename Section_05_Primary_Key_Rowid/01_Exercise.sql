/*
Exercise No. 01

Create a table named company with columns:
    - company_id (INTEGER - primary key)
    - company_name (TEXT)
    - stock_exchange (TEXT)
    - price (REAL)

The expected data type and constraints are provided in parentheses.

Define the primary key constraints at the column level.
*
-- Method 01
CREATE TABLE company (
    company_id INTEGER PRIMARY KEY
  , company_name TEXT
  , stock_exchange TEXT
  , price REAL
);


-- Method 02
CREATE TABLE company (
    company_id INTEGER
  , company_name TEXT
  , stock_exchange TEXT
  , price REAL
  , PRIMARY KEY (company_id)
);