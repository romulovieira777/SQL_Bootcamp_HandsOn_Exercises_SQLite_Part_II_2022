/*
Exercise No. 01

Create a table named location with columns:

    - location_id (INTEGER - PRIMARY KEY)
    - name (TEXT - set the NOT NULL and UNIQUE constraints)

Define the primary key constraint at the table level.
*/
CREATE TABLE location (
    location_id INTEGER
  , name TEXT NOT NULL UNIQUE
  , PRIMARY KEY (location_id)
);