/*
Exercise No. 04

The following command is given:

    CREATE TABLE IF NOT EXISTS customer (
        customer_id INTEGER
      , first_name TEXT
      , last_name TEXT
      , email TEXT
      , PRIMARY KEY (customer_id)
    );

Use the appropriate command to delete the customer table.
*/
CREATE TABLE IF NOT EXISTS customer (
    customer_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , PRIMARY KEY (customer_id)
);

DROP TABLE customer;