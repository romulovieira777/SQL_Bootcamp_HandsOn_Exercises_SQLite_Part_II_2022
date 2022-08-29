/*
Exercise No. 04

The following SQL code is given:

    CREATE TABLE car (
        car_id INTEGER
      , brand TEXT NOT NULL
      , model TEXT NOT NULL
      , year TEXT NOT NULL
      , horsepower INTEGER CHECK (horsepower > 0)
      , PRIMARY KEY (car_id)
    );

    INSERT INTO car (car_id, brand, model, year, horsepower) VALUES (1, 'Mazda', 'CX-5', 2020, 165);
    INSERT INTO car (car_id, brand, model, year, horsepower) VALUES (2, 'Mazda', 'CX-30', 2020, 122);
    INSERT INTO car (car_id, brand, model, year, horsepower) VALUES (3, 'Volvo', 'XC 60', 2021, 211);
    INSERT INTO car (car_id, brand, model, year, horsepower) VALUES (4, 'Volvo', 'XC 40', 2021, 156);
    INSERT INTO car (car_id, brand, model, year, horsepower) VALUES (5, 'Hyundai', 'Tucson', 2021, 150);

Update the year column for all records and set it to 2019.
*/
UPDATE
    car
SET
    year = 2019;