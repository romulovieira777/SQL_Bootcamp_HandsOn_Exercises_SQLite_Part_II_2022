/*
Exercise No 02

Create a table named product with the following columns:
    - product_id (INTEGER - primary key)
    - product_name (TEXT - set the NOT NULL constraint)
    - list_price (REAL - set the NOT NULL constraint)
    - category_id (INTEGER - set the NOT NULL constraint)

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the table level.
*/
CREATE TABLE product (
    product_id INTEGER
  , product_name TEXT NOT NULL
  , list_price REAL NOT NULL
  , category_id INTEGER NOT NULL
  , PRIMARY KEY (product_id)
);