/*
Exercise No. 03

Two tables are given:

    CREATE TABLE producer (
        producer_id INTEGER
      , company_name TEXT NOT NULL
      , country TEXT NOT NULL
      , PRIMARY KEY (producer_id)
    );

    CREATE TABLE movie (
        movie_id INTEGER
      , producer_id INTEGER NOT NULL
      , title TEXT NOT NULL
      , duration INTEGER NOT NULL
      , rating TEXT NOT NULL
      , PRIMARY KEY (movie_id)
      , FOREIGN KEY (producer_id) REFERENCES producer (producer_id) ON DELETE CASCADE ON UPDATE CASCADE
    );

Create a third table named customer with columns:

    - customer_id (INTEGER - PRIMARY KEY)
    - first_name (TEXT - set the NOT NULL constraint)
    - last_name (TEXT - set the NOT NULL constraint)
    - email (TEXT - set the NOT NULL constraint)

The expected data type and constraints are provided in parentheses.

Define the primary key constraint at the level table.
*/
CREATE TABLE customer (
    customer_id INTEGER
  , first_name TEXT NOT NULL
  , last_name TEXT NOT NULL
  , email TEXT NOT NULL
  , PRIMARY KEY (customer_id)
);