/*
Exercise No.03

The car table is given:

    CREATE TABLE car (
        car_id INTEGER
      , brand TEXT NOT NULL
      , model TEXT NOT NULL
      , year TEXT NOT NULL
      , horsepower INTEGER CHECK (horsepower > 0)
      , PRIMARY KEY (car_id)
    );

Note the default value for the year column.

Insert record into the car table passing the given values:
    - brand -> 'Mazda'
    - model -> 'CX-5'
    - horsepower -> 165

Then insert the second record into the car table passing the given:
    - brand -> 'Volvo'
    - model -> 'XC 60'
    - horsepower -> 211
*/
INSERT INTO car (brand, model, horsepower) VALUES ('Mazda', 'CX-5', 165);
INSERT INTO car (brand, model, horsepower) VALUES ('Volvo', 'XC 60', 211);
