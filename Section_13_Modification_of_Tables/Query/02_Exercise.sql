/*
Exercise No. 02

The following table is given:

    CREATE TABLE car (
        car_id INTEGER
      , brand TEXT NOT NULL
      , model TEXT NOT NULL
      , year TEXT NOT NULL
      , PRIMARY KEY (car_id)
    );

Using the ALTER TABLE command, add a column named country to this table with the expected TEXT data type and the default
value set to 'USA'.
*/
ALTER TABLE car ADD COLUMN country TEXT DEFAULT 'USA';