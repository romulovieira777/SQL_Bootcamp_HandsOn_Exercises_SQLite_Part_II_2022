/*
Exercise No. 02

The following ERD diagram is given:

            driver                           car
        driver_id: INTEGER (PK)       car_id: INTEGER (PK)
        country: TEXT                 brand: TEXT
        zip_code: TEXT                model: TEXT
                                      year: INTEGER
                                      driver_id: INTEGER (FK)

Implement the tables described in the diagram above. Set the primary and foreign key constraints as specified in the
schema (at table level) and the NOT NULL constraints for the following columns:
    - country
    - zip_code
    - brand
    - model
    - year
    - driver_id (car)
*/
CREATE TABLE IF NOT EXISTS driver (
    driver_id INTEGER
  , country TEXT NOT NULL
  , zip_code TEXT NOT NULL
  , PRIMARY KEY (driver_id)
);

CREATE TABLE IF NOT EXISTS car (
    car_id INTEGER
  , brand TEXT NOT NULL
  , model TEXT NOT NULL
  , year INTEGER NOT NULL
  , driver_id INTEGER NOT NULL
  , PRIMARY KEY (car_id)
  , FOREIGN KEY (driver_id) REFERENCES driver(driver_id)
);