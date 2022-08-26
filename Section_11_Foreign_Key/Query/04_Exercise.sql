/*
Exercise No. 04

Two tables are given:

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

Add an appropriate clause to the foreign key constraint of the category_id column in the product table that allows you to
automatically update matching records from the product table (child table) when we update rows from the category table
(parent table).
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
  , FOREIGN KEY (category_id) REFERENCES category(category_id) ON UPDATE CASCADE
);