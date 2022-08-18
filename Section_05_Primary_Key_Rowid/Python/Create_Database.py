import sqlite3

conn = sqlite3.connect('../Database/user.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS company;
                     CREATE TABLE company (
                         company_name TEXT
                       , stock_exchange TEXT
                       , price REAL
                       , PRIMARY KEY (company_name, stock_exchange)
                     );''')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
