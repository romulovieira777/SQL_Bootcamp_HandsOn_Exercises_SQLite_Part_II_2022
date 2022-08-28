/*
Exercise No. 05

The following table is given:

    CREATE TABLE car (
        car_id INTEGER
      , car_brand TEXT NOT NULL
      , model TEXT NOT NULL
      , year TEXT NOT NULL
      , country TEXT DEFAULT 'USA'
      , horsepower INTEGER CHECK (horsepower > 0)
      , PRIMARY KEY (car_id)
    );

Change the table name to vehicle using the ALTER TABLE command.
*/
ALTER TABLE car RENAME TO vehicle;