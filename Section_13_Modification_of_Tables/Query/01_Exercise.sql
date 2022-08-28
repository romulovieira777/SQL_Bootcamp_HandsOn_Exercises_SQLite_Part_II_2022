/*
Exercise No. 01

The following table is given:

    CREATE TABLE car (
        car_id INTEGER
      , brand TEXT NOT NULL
      , model TEXT NOT NULL
      , year TEXT NOT NULL
      , PRIMARY KEY (car_id)
    );

Using the ALTER TABLE command, add a column named country with the expected TEXT data type to this table.
*/
ALTER TABLE car ADD COLUMN country TEXT;