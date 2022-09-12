CREATE TABLE IF NOT EXISTS customer (
    customer_id INTEGER PRIMARY KEY
  , first_name TEXT
  , last_name TEXT
  , email TEXT
);


CREATE TABLE IF NOT EXISTS category (
    category_id INTEGER
  , category_name TEXT NOT NULL
  , PRIMARY KEY (category_id)
);