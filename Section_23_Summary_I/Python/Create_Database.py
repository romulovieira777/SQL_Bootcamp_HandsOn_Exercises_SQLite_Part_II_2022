import sqlite3

conn = sqlite3.connect('../Database/sct23.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS producer;
                    CREATE TABLE producer (
                        producer_id INTEGER
                      , company_name TEXT NOT NULL
                      , country TEXT NOT NULL
                      , PRIMARY KEY (producer_id)
                    );
                    
                    DROP TABLE IF EXISTS movie;
                    CREATE TABLE movie (
                        movie_id INTEGER
                      , producer_id INTEGER NOT NULL
                      , title TEXT NOT NULL
                      , duration INTEGER NOT NULL
                      , rating TEXT NOT NULL
                      , PRIMARY KEY (movie_id)
                      , FOREIGN KEY (producer_id) REFERENCES producer (producer_id) ON DELETE CASCADE ON UPDATE CASCADE
                    );
                    
                    DROP TABLE IF EXISTS customer;
                    CREATE TABLE customer (
                        customer_id INTEGER
                      , first_name TEXT NOT NULL
                      , last_name TEXT NOT NULL
                      , email TEXT NOT NULL
                      , PRIMARY KEY (customer_id)
                    );
                    
                    DROP TABLE IF EXISTS customer_movie;
                    CREATE TABLE customer_movie (
                        movie_id INTEGER NOT NULL
                      , customer_id INTEGER NOT NULL
                      , date_rented TEXT NOT NULL
                      , due_date TEXT NOT NULL
                      , PRIMARY KEY (movie_id, customer_id)
                      , FOREIGN KEY (movie_id) REFERENCES movie (movie_id) ON DELETE CASCADE ON UPDATE CASCADE
                      , FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE CASCADE ON UPDATE CASCADE
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
                    ''')

print('tables created successfully!\n')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
