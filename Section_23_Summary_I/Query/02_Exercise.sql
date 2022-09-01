/*
Exercise No. 02

The producer table is given:

    CREATE TABLE producer (
        producer_id INTEGER
      , company_name TEXT NOT NULL
      , country TEXT NOT NULL
      , PRIMARY KEY (producer_id)
    );

Create a table named movie with columns:

    - movie_id (INTEGER - PRIMARY KEY)
    - producer_id (INTEGER - set the NOT NULL constraint and the foreign key constraint referring to the producer_id
                   column of the producer table, add the ON DELETE CASCADE and ON UPDATE CASCADE clauses)
    - title (TEXT - set the NOT NULL constraint)
    - duration (INTEGER - set the NOT NULL constraint)
    - rating (TEXT - set the NOT NULL constraint)

The expected data type and constraints are provided in parentheses.

Define the primary key and foreign key constraints at the level table.
*/
CREATE TABLE movie (
    movie_id INTEGER
  , producer_id INTEGER NOT NULL
  , title TEXT NOT NULL
  , duration INTEGER NOT NULL
  , rating TEXT NOT NULL
  , PRIMARY KEY (movie_id)
  , FOREIGN KEY (producer_id) REFERENCES producer (producer_id) ON DELETE CASCADE ON UPDATE CASCADE
);