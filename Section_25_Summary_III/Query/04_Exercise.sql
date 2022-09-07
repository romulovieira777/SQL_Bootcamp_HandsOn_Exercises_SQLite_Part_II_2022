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

    CREATE TABLE tag (
        tag_id INTEGER
      , tag_name TEXT NOT NULL
      , PRIMARY KEY (tag_id)
    );

Create a table named photo with columns:

    - photo_id (INTEGER - PRIMARY KEY)
    - album_id (INTEGER - set the NOT NULL constraint and the foreign key constraint referring to the album_id column of
                the album table, add ON DELETE CASCADE, ON UPDATE DELETE CASCADE clauses)
    - location_id (INTEGER - set the NOT NULL constraint and the foreign key constraint referring to the location_id
                    column of the location table, add ON DELETE CASCADE, ON UPDATE DELETE CASCADE clauses)
    - title (TEXT - set the NOT NULL constraint)
    - description (TEXT)
    - is_private (INTEGER - set the NOT NULL constraint, default 1)
    - upload_date (TEXT - set the NOT NULL constraint, default is CURRENT_TIMESTAMP)
    - image_path (TEXT - set the NOT NULL constraint and the UNIQUE constraint)

Define the primary key constraint at the table level.
*/
CREATE TABLE photo (
    photo_id INTEGER
  , album_id INTEGER NOT NULL
  , location_id INTEGER NOT NULL
  , title TEXT NOT NULL
  , description TEXT
  , is_private INTEGER NOT NULL DEFAULT 1
  , upload_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
  , image_path TEXT NOT NULL UNIQUE
  , PRIMARY KEY (photo_id)
  , FOREIGN KEY (album_id) REFERENCES album (album_id) ON DELETE CASCADE ON UPDATE CASCADE
  , FOREIGN KEY (location_id) REFERENCES location (location_id) ON DELETE CASCADE ON UPDATE CASCADE
);