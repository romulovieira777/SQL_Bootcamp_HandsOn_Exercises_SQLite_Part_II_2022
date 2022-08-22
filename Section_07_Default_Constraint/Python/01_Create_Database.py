import sqlite3

conn = sqlite3.connect('../Database/sct07.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS employee;
                     CREATE TABLE employee (
                        employee_id INTEGER
                      , first_name TEXT
                      , last_name TEXT
                      , email TEXT
                      , country TEXT DEFAULT 'Poland'
                      , created_at DATE DEFAULT CURRENT_DATE
                      , PRIMARY KEY (employee_id)
                    );
                     
                     DROP TABLE IF EXISTS customer;
                     CREATE TABLE customer (
                        customer_id INTEGER
                      , first_name TEXT
                      , last_name TEXT
                      , phone TEXT
                      , email TEXT
                      , city TEXT
                      , discount REAL DEFAULT 0
                      , PRIMARY KEY (customer_id)
                    );''')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
