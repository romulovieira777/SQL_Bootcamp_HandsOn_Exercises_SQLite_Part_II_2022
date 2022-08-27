import sqlite3

conn = sqlite3.connect('../Database/sct12.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS product;
                     CREATE TABLE user (
                        user_id INTEGER
                      , first_name TEXT NOT NULL
                      , last_name TEXT NOT NULL
                      , gender TEXT
                      , birth_date TEXT
                      , PRIMARY KEY (user_id)
                    );
                    
                     DROP TABLE IF EXISTS photo;
                     CREATE TABLE IF NOT EXISTS photo (
                        photo_id INTEGER
                      , user_id INTEGER UNIQUE
                      , description TEXT
                      , privacy TEXT NOT NULL
                      , upload_date TEXT NOT NULL
                      , image_path TEXT NOT NULL
                      , PRIMARY KEY (photo_id)
                      , FOREIGN KEY (user_id) REFERENCES user(user_id)
                    );
                    
                    DROP TABLE IF EXISTS driver;
                    CREATE TABLE driver (
                        driver_id INTEGER
                      , country TEXT NOT NULL
                      , zip_code TEXT NOT NULL
                      , PRIMARY KEY (driver_id)
                    );
                    
                    DROP TABLE IF EXISTS car;
                    CREATE TABLE IF NOT EXISTS car (
                        car_id INTEGER
                      , brand TEXT NOT NULL
                      , model TEXT NOT NULL
                      , year INTEGER NOT NULL
                      , driver_id INTEGER
                      , PRIMARY KEY (car_id)
                      , FOREIGN KEY (driver_id) REFERENCES driver(driver_id)
                    );
                    
                    DROP TABLE IF EXISTS accident;
                    CREATE TABLE accident (
                        accident_id INTEGER
                      , accident_date TEXT NOT NULL
                      , location TEXT NOT NULL
                      , PRIMARY KEY (accident_id)
                    );
                    
                    DROP TABLE IF EXISTS car_accident;
                    CREATE TABLE IF NOT EXISTS car_accident (
                        car_id INTEGER NOT NULL
                      , accident_id INTEGER NOT NULL
                      , compensation REAL NOT NULL
                      , PRIMARY KEY (car_id, accident_id)
                      , FOREIGN KEY (car_id) REFERENCES car (car_id)
                      , FOREIGN KEY (accident_id) REFERENCES accident (accident_id)
                    );''')

print('tables created successfully!')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
