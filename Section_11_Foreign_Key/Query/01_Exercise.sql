/*
Exercise No. 01

Create two tables: category and product.

The category table contains the following columns:
    - category_id (INTEGER - primary key)
    - category_name (TEXT - set the NOT NULL constraint)

The product table contains the following columns:
    - product_id (INTEGER - primary key)
    - product_name (TEXT - set the NOT NULL constraint)
    - list_price (REAL - set the NOT NULL constraint)
    - category_id (INTEGER - set the NOT NULL constraint and a foreign key constraint referring to the category_id
                   column of the category table)

The expected data type and constraints are provided in parentheses.

Define the primary key and foreign key constraints at the column level.
*/
CREATE TABLE category (
    category_id INTEGER
  , category_name TEXT NOT NULL
  , PRIMARY KEY (category_id)
);

CREATE TABLE product (
    product_id INTEGER
  , product_name TEXT NOT NULL
  , list_price REAL NOT NULL
  , category_id INTEGER NOT NULL
  , PRIMARY KEY (product_id)
  , FOREIGN KEY (category_id) REFERENCES category(category_id)
);