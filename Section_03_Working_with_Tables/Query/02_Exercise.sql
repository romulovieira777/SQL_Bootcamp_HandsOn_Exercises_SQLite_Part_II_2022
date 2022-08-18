/*
Exercise No. 02

The following command is given:

    CREATE TABLE customer (
        customer_id INTEGER PRIMARY KEY
      , first_name TEXT
      , last_name TEXT
      , email TEXT
    );

Modify this command to define the primary key constraint at the table level.
*/
CREATE TABLE customer (
    customer_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , PRIMARY KEY (customer_id)
);
