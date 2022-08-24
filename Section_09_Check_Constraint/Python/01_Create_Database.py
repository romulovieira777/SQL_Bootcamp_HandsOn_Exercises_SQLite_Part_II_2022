import sqlite3

conn = sqlite3.connect('../Database/sct09.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS staff;
                     CREATE TABLE staff (
                        staff_id INTEGER
                      , first_name TEXT CHECK (first_name <> '')
                      , last_name TEXT CHECK (last_name <> '')
                      , email TEXT UNIQUE
                      , country TEXT DEFAULT 'USA'
                      , phone TEXT UNIQUE
                      , PRIMARY KEY (staff_id)
                    );
                    
                    DROP TABLE IF EXISTS customers;
                    CREATE TABLE customer (
                        customer_id INTEGER
                      , first_name TEXT
                      , last_name TEXT
                      , phone TEXT
                      , email TEXT
                      , city TEXT
                      , discount REAL DEFAULT 0 CHECK (discount >= 0 AND discount <= 1)
                      , id_card TEXT UNIQUE
                      , PRIMARY KEY (customer_id)
                    );''')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
