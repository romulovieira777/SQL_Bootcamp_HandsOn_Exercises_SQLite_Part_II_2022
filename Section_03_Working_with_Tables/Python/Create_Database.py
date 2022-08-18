import sqlite3

conn = sqlite3.connect('../Database/customer.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS customer;
                     CREATE TABLE IF NOT EXISTS customer (
                         customer_id INTEGER PRIMARY KEY
                       , first_name TEXT
                       , last_name TEXT
                       , email TEXT
                     );''')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the cursor