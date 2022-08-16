/*
Exercise No. 03

The following command is given:

    CREATE TABLE customer (
        customer_id INTEGER
      , first_name TEXT
      , last_name TEXT
      , email TEXT
      , PRIMARY KEY (customer_id)
    );

Running the above command when the customer table already exists in the database will return an error.

To the above CREATE TABLE command, add an appropriate clause that will not raise an error if the table already exists in
the database.
*/
CREATE TABLE IF NOT EXISTS customer (
    customer_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , PRIMARY KEY (customer_id)
);