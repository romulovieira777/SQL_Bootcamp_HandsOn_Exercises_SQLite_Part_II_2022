/*
Exercise No. 09

The following SQL code is given:

    CREATE TABLE customer (
        customer_id INTEGER
      , first_name TEXT
      , last_name TEXT
      , phone TEXT
      , email TEXT
      , city TEXT
      , discount REAL DEFAULT 0
      , created_at TEXT DEFAULT CURRENT_TIMESTAMP
      , PRIMARY KEY (customer_id)
    );

Insert a record into the customer table, passing only the given values (leave the rest of the values as default):

    - first_name -> 'John'
    - last_name -> 'Snow'
    - phone -> 'john.snow@esmartdata.org'

Display the customer table and take a look at the default values that have been inserted.
*/
CREATE TABLE customer (
    customer_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , phone TEXT
  , email TEXT
  , city TEXT
  , discount REAL DEFAULT 0
  , created_at TEXT DEFAULT CURRENT_TIMESTAMP
  , PRIMARY KEY (customer_id)
);

INSERT INTO customer (
    first_name
  , last_name
  , phone
  , email
  , city
) VALUES (
    'John'
  , 'Snow'
  , 'john.snow@esmartdata.org'
);

SELECT
    *
FROM
    customer;