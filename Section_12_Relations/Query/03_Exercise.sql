/*
Exercise No. 03

The following ERD diagram is given:

           driver                           car                     car_accident
        driver_id: INTEGER (PK)       car_id: INTEGER (PK)      car_id: INTEGER (PK, FK1)
        country: TEXT                 brand: TEXT               accident_id: INTEGER (PK, FK2)
        zip_code: TEXT                model: TEXT               compensation: REAL
                                      year: INTEGER
                                      driver_id: INTEGER (FK)


                                            accident
                                      accident_id: INTEGER (PK)
                                      accident_date: TEXT
                                      location: TEXT

Implement the tables described in the diagram above. Set the primary and foreign key constraints as specified in the
schema (at table level) and the NOT NULL constraints for the following columns:
    - country
    - zip_code
    - brand
    - model
    - year
    - accident_date
    - location
    - car_id (car_accident)
    - accident_id (car_accident)
    - compensation
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
  , driver_id INTEGER
  , PRIMARY KEY (car_id)
  , FOREIGN KEY (driver_id) REFERENCES driver(driver_id)
);

CREATE TABLE IF NOT EXISTS accident (
    accident_id INTEGER
  , accident_date TEXT NOT NULL
  , location TEXT NOT NULL
  , PRIMARY KEY (accident_id)
);

CREATE TABLE IF NOT EXISTS car_accident (
    car_id INTEGER NOT NULL
  , accident_id INTEGER NOT NULL
  , compensation REAL NOT NULL
  , PRIMARY KEY (car_id, accident_id)
  , FOREIGN KEY (car_id) REFERENCES car (car_id)
  , FOREIGN KEY (accident_id) REFERENCES accident (accident_id)
);