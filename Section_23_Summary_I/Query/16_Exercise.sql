/*
Exercise No. 16

The following SQL code is given:

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

    CREATE TABLE rental (
        rental_id INTEGER
      , customer_id INTEGER NOT NULL
      , movie_id INTEGER NOT NULL
      , rental_date TEXT NOT NULL
      , return_date TEXT
      , PRIMARY KEY (rental_id)
      , FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE CASCADE ON UPDATE CASCADE
      , FOREIGN KEY (movie_id) REFERENCES movie (movie_id) ON DELETE CASCADE ON UPDATE CASCADE
    );

    INSERT INTO producer (producer_id, company_name, country)
    VALUES (101, 'The Walt Disney Studios', 'United States')
         , (102, 'Warner Bros.', 'United States')
         , (103, 'BBC Filmes', 'United Kingdom');

    INSERT INTO movie (movie_id, producer_id, title, duration, rating)
    VALUES (1, 101, 'The Lion King', 118, 7)
         , (2, 101, 'Captain Marvel', 124, 7)
         , (3, 102, 'Sherlock Holmes', 129, 8)
         , (4, 102, 'Cats & Dogs', 83, 6)
         , (5, 103, 'Saving Mr. Banks', 125, 7);

    INSERT INTO customer (customer_id, first_name, last_name, email)
    VALUES (1, 'John', 'Smith', 'john.smith@esmardata.org')
         , (2, 'Mike', 'Smith', 'mike.smith@esmardata.org')
         , (3, 'Mike', 'Doe', 'mike.doe@esmardata.org');

    INSERT INTO customer_movie (movie_id, customer_id, date_rented, due_date)
    VALUES (4, 3, '2021-02-10', '2021-02-28')
         , (1, 2, '2021-02-11', '2021-02-28')
         , (4, 1, '2021-02-13', '2021-02-28')
         , (3, 2, '2021-02-17', '2021-02-31');

    SELECT
        customer_movie.movie_id
      , customer_movie.due_date
      , movie.title
      , movie.rating
      , producer.company_name
    FROM
        customer_movie
    LEFT JOIN
        movie
    ON
        customer_movie.movie_id = movie.movie_id
    LEFT JOIN
        producer
    ON
        movie.producer_id = producer.producer_id;

Create a view named movie_details_v from the above query.
*/
CREATE VIEW
    movie_details_v AS
SELECT
    customer_movie.movie_id
  , customer_movie.due_date
  , movie.title
  , movie.rating
  , producer.company_name
FROM
    customer_movie
LEFT JOIN
    movie
ON
    customer_movie.movie_id = movie.movie_id
LEFT JOIN
    producer
ON
    movie.producer_id = producer.producer_id;