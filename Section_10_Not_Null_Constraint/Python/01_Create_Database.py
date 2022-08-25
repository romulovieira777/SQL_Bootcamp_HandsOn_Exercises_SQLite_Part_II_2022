import sqlite3

conn = sqlite3.connect('../Database/sct10.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS category;
                     CREATE TABLE category (
                        category_id INTEGER
                      , category_name TEXT NOT NULL
                      , PRIMARY KEY (category_id)
                    );
                    
                    DROP TABLE IF EXISTS product;
                    CREATE TABLE product (
                        product_id INTEGER
                      , product_name TEXT NOT NULL
                      , list_price REAL NOT NULL
                      , category_id INTEGER NOT NULL
                      , PRIMARY KEY (product_id)
                    );
                    
                    DROP TABLE IF EXISTS producer;
                    CREATE TABLE producer (
                        producer_id INTEGER
                      , company_name TEXT NOT NULL
                      , country REAL NOT NULL
                      , PRIMARY KEY (product_id)
                    );
                    
                    INSERT INTO producer (producer_id, company_name, country) VALUES ('101', 'The Walt Disney Studios', 'United States');
                    INSERT INTO producer (producer_id, company_name, country) VALUES (NULL, 'Warner Bros.', 'United States');
                    INSERT INTO producer (producer_id, company_name, country) VALUES ('103', 'BBC Films', 'United Kingdom');
                    ''')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
