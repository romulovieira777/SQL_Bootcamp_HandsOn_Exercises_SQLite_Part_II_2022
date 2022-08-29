import sqlite3

conn = sqlite3.connect('../Database/sct15.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS car;
                    CREATE TABLE IF NOT EXISTS car (
                        car_id INTEGER
                      , brand TEXT NOT NULL
                      , model TEXT NOT NULL
                      , year INTEGER NOT NULL
                      , horsepower INTEGER CHECK (horsepower > 0)
                      , PRIMARY KEY (car_id)
                    );
                    
                    INSERT INTO car (car_id, brand, model, year, horsepower) VALUES (1, 'Mazda', 'CX-5', 2020, 165);
                    INSERT INTO car (car_id, brand, model, year, horsepower) VALUES (2, 'Mazda', 'CX-30', 2020, 122);
                    INSERT INTO car (car_id, brand, model, year, horsepower) VALUES (3, 'Volvo', 'XC 30', 2021, 211);
                    ''')

print('tables created successfully!')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
