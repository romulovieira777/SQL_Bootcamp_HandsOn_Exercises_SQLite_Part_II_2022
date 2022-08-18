/*
Exercise No. 05

The following command is given:

    CREATE TABLE customer (
        customer_id INTEGER
      , first_name TEXT
      , last_name TEXT
      , email TEXT
      , PRIMARY KEY (customer_id)
    );

Before creating the table, add a command that deletes the customer table when such a table exists in the database.
*/
DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
    customer_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , PRIMARY KEY (customer_id)
);