import sqlite3

conn = sqlite3.connect('../Database/sct13.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS car;
                    CREATE TABLE IF NOT EXISTS car (
                        car_id INTEGER
                      , brand TEXT NOT NULL
                      , model TEXT NOT NULL
                      , year INTEGER NOT NULL
                      , driver_id INTEGER
                      , PRIMARY KEY (car_id)
                      , FOREIGN KEY (driver_id) REFERENCES driver(driver_id)
                    );''')

print('tables created successfully!')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
