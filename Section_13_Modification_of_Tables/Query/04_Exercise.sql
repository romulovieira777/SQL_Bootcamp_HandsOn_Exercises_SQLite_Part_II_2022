/*
Exercise No. 04

The following table is given:

    CREATE TABLE car (
        car_id INTEGER
      , brand TEXT NOT NULL
      , model TEXT NOT NULL
      , year TEXT NOT NULL
      , country TEXT DEFAULT 'USA'
      , horsepower INTEGER CHECK (horsepower > 0)
      , PRIMARY KEY (car_id)
    );

Rename the brand column to car_brand using the ALTER TABLE command.
*/
ALTER TABLE car RENAME COLUMN brand TO car_brand;