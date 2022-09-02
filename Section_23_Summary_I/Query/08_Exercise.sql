/*
Exercise No. 08

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

Insert four records into the customer_movie table based on the following information:

    - on 2021-02-10 movie with movie_id = 4 was bought by customer with customer_id = 3 until the end of this month
    - on 2021-02-11 movie with movie_id = 1 was bought by customer with customer_id = 2 until the end of this month
    - on 2021-02-13 movie with movie_id = 4 was bought by customer with customer_id = 1 until the end of this month
    - on 2021-02-17 movie with movie_id = 3 was bought by customer with customer_id = 2 until the end of this month
*/
INSERT INTO customer_movie (movie_id, customer_id, date_rented, due_date)
VALUES (4, 3, '2021-02-10', '2021-02-28')
     , (1, 2, '2021-02-11', '2021-02-28')
     , (4, 1, '2021-02-13', '2021-02-28')
     , (3, 2, '2021-02-17', '2021-02-31');