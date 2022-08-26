/*
Exercise No. 05

Create three tables: customer, shop and order.

The customer table contains the following columns:
    - customer_id (INTEGER - primary key)
    - first_name (TEXT - set the NOT NULL constraint)
    - last_name (TEXT - set the NOT NULL constraint)
    - phone (TEXT - set the NOT NULL constraint)
    - email (TEXT - set the NOT NULL constraint)

The shop table contains the following columns:
    - shop_id (INTEGER - primary key)
    - shop_name (TEXT - set the NOT NULL constraint)
    - city (TEXT - set the NOT NULL constraint)
    - street (TEXT - set the NOT NULL constraint)
    - zip_code (TEXT - set the NOT NULL constraint)

The order table contains the following columns:
    - order_id (INTEGER - primary key)
    - customer_id (INTEGER - set the NOT NULL constraint)
    - order_status (TEXT - set the NOT NULL constraint)
    - order_date (TEXT - set the NOT NULL constraint)
    - shop_id (INTEGER - set the NOT NULL constraint and the foreign key constraint referring to the shop_id column of
               the shop table)
    - category_id (INTEGER - set the NOT NULL constraint and the foreign key constraint referring to the category_id
                  column of the category table)

The expected data type and constraints are provided in parentheses.

Define the primary key and foreign key constraints at the table level.
*/
CREATE TABLE customer (
    customer_id INTEGER
  , first_name TEXT NOT NULL
  , last_name TEXT NOT NULL
  , phone TEXT NOT NULL
  , email TEXT NOT NULL
  , PRIMARY KEY (customer_id)
);

CREATE TABLE shop (
    shop_id INTEGER
  , shop_name TEXT NOT NULL
  , city TEXT NOT NULL
  , street TEXT NOT NULL
  , zip_code TEXT NOT NULL
  , PRIMARY KEY (shop_id)
);

CREATE TABLE order (
    order_id INTEGER
  , customer_id INTEGER NOT NULL
  , order_status TEXT NOT NULL
  , order_date TEXT NOT NULL
  , shop_id INTEGER NOT NULL
  , category_id INTEGER NOT NULL
  , PRIMARY KEY (order_id)
);

ALTER TABLE
    order
ADD CONSTRAINT
    fk_order_shop_id
FOREIGN KEY
    (shop_id)
REFERENCES
    shop(shop_id);

ALTER TABLE
    order
ADD CONSTRAINT
    fk_order_category_id
FOREIGN KEY
    (category_id)
REFERENCES
    category(category_id);