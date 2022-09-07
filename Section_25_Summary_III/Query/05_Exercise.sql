/*
Exercise No. 05

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

Create a table named tag_photo with columns:

    - photo_id (INTEGER - set the NOT NULL constraint and the foreign key constraint referring to the photo_id column of
                the photo table, add ON DELETE CASCADE, ON UPDATE DELETE CASCADE clauses)
    - tag_id (INTEGER - set the NOT NULL constraint and the foreign key constraint referring to the tag_id column of the
              tag table, add ON DELETE CASCADE, ON UPDATE DELETE CASCADE clauses)

Also create primary key for this table consisting of two columns: photo_id and tag_id.

Define the primary key and foreign key constraints at the table level.
*/
CREATE TABLE tag_photo (
    photo_id INTEGER NOT NULL
  , tag_id INTEGER NOT NULL
  , PRIMARY KEY (photo_id, tag_id)
  , FOREIGN KEY (photo_id) REFERENCES photo (photo_id) ON DELETE CASCADE ON UPDATE CASCADE
  , FOREIGN KEY (tag_id) REFERENCES tag (tag_id) ON DELETE CASCADE ON UPDATE CASCADE
);