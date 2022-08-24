/*
Exercise No. 03

The following SQL code is given:

    CREATE TABLE customer (
        customer_id INTEGER
      , first_name TEXT
      , last_name TEXT
      , phone TEXT
      , email TEXT
      , city TEXT
      , discount REAL DEFAULT 0 CHECK (discount >= 0 AND discount <= 1)
      , id_card TEXT UNIQUE
      , PRIMARY KEY (customer_id)
    );

Modify the code above so that the CHECK constraint for the discount column is defined at the table level.
*/
CREATE TABLE customer (
    customer_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , phone TEXT
  , email TEXT
  , city TEXT
  , discount REAL DEFAULT 0
  , id_card TEXT UNIQUE
  , PRIMARY KEY (customer_id)
  , CHECK (discount >= 0 AND discount <= 1)
);