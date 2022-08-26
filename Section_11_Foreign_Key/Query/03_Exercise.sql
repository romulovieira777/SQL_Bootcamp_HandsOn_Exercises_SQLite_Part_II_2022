/*
Exercise No. 03

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

Add an appropriate foreign key constraint clause to the product table that allows you to automatically remove matching
records from the product table (child table) when we delete rows from the category table (parent table).
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
  , FOREIGN KEY (category_id) REFERENCES category(category_id) ON DELETE CASCADE
);