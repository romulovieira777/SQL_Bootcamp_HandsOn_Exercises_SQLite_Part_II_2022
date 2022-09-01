/*
Exercise No. 04

Three tables are given:

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

    CREATE TABLE customer (
        customer_id INTEGER
      , first_name TEXT NOT NULL
      , last_name TEXT NOT NULL
      , email TEXT NOT NULL
      , PRIMARY KEY (customer_id)
    );

Create a fourth table named customer_movie with columns:

    - movie_id (INTEGER - set the NOT NULL constraint and the foreign key constraint referring to the movie_id
                column of the movie table, add the ON DELETE CASCADE and ON UPDATE CASCADE clauses)
    - customer_id (INTEGER - set the NOT NULL constraint and the foreign key constraint referring to the customer_id
                   column of the customer table, add the ON DELETE CASCADE and ON UPDATE CASCADE clauses)
    - date_rented (TEXT - set the NOT NULL constraint)
    - due_date (TEXT - set the NOT NULL constraint)

Create a primary key with two columns: movie_id and customer_id.

Define the primary key and foreign key constraints at the level table.
*/
CREATE TABLE customer_movie (
    movie_id INTEGER NOT NULL
  , customer_id INTEGER NOT NULL
  , date_rented TEXT NOT NULL
  , due_date TEXT NOT NULL
  , PRIMARY KEY (movie_id, customer_id)
  , FOREIGN KEY (movie_id) REFERENCES movie (movie_id) ON DELETE CASCADE ON UPDATE CASCADE
  , FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE CASCADE ON UPDATE CASCADE
);