import sqlite3

conn = sqlite3.connect('../Database/user.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS user;
                     CREATE TEMPORARY TABLE user (
                         user_id INTEGER
                       , first_name TEXT
                       , last_name TEXT
                       , email TEXT
                       , PRIMARY KEY (user_id)
                     );''')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
