/*
Exercise No. 03

The following table is given:

    CREATE TABLE car (
        car_id INTEGER
      , brand TEXT NOT NULL
      , model TEXT NOT NULL
      , year TEXT NOT NULL
      , country TEXT DEFAULT 'USA'
      , PRIMARY KEY (car_id)
    );

Using the ALTER TABLE command, add a column named horsepower to the car table with the expected INTEGER data type and the
CHECK constraint that checks if the inserted value is greater than zero.
*/
ALTER TABLE car ADD COLUMN horsepower INTEGER CHECK (horsepower > 0);