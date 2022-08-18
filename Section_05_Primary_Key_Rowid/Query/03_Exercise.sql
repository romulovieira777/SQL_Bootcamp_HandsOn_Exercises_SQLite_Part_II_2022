/*
Exercise No. 03

Create a table named company with columns:
    - company_name (TEXT)
    - stock_exchange (TEXT)
    - price (REAL)

The expected data type and constraints are provided in parentheses.

Define the primary key constraints on two following columns:
    - company_name
    - stock_exchange
*/
CREATE TABLE company (
    company_name TEXT
  , stock_exchange TEXT
  , price REAL
  , PRIMARY KEY (company_name, stock_exchange)
);