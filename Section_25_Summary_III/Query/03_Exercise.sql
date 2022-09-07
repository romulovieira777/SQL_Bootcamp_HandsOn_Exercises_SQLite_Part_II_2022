/*
Exercise No. 03

The following tables are given:

    CREATE TABLE location (
        location_id INTEGER
      , name TEXT NOT NULL UNIQUE
      , PRIMARY KEY (location_id)
    );

    CREATE TABLE album (
        album_id INTEGER
      , title TEXT NOT NULL
      , description TEXT
      , PRIMARY KEY (album_id)
    );

Create a table named tag containing columns:

    - tag_id (INTEGER - PRIMARY KEY)
    - tag_name (TEXT - set the NOT NULL constraint)

Define the primary key constraint at the table level.
*/
CREATE TABLE tag (
    tag_id INTEGER
  , tag_name TEXT NOT NULL
  , PRIMARY KEY (tag_id)
);