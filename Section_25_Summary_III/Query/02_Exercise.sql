/*
Exercise No. 02

The following table is given:

    CREATE TABLE location (
        location_id INTEGER
      , name TEXT NOT NULL UNIQUE
      , PRIMARY KEY (location_id)
    );

Create a table named album with columns:

    - album_id (INTEGER - PRIMARY KEY)
    - title (TEXT - set the NOT NULL constraint)
    - description (TEXT)

Define the primary key constraint at the table level.
*/
CREATE TABLE album (
    album_id INTEGER
  , title TEXT NOT NULL
  , description TEXT
  , PRIMARY KEY (album_id)
);