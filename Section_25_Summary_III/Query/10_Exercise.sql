/*
Exercise No. 10

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

    CREATE TABLE tag_photo (
        photo_id INTEGER NOT NULL
      , tag_id INTEGER NOT NULL
      , PRIMARY KEY (photo_id, tag_id)
      , FOREIGN KEY (photo_id) REFERENCES photo (photo_id) ON DELETE CASCADE ON UPDATE CASCADE
      , FOREIGN KEY (tag_id) REFERENCES tag (tag_id) ON DELETE CASCADE ON UPDATE CASCADE
    );

    CREATE VIEW
        photo_details_v AS
    SELECT
        photo.photo_id
      , photo.title
      , photo.is_private
      , photo.image_path
      , tag.tag_name
    FROM
        photo
    LEFT JOIN
        tag_photo
    ON
        photo.photo_id = tag_photo.photo_id
    LEFT JOIN
        tag
    ON
        tag_photo.tag_id = tag.tag_id;

Create a query to the photo_details_v view that calculates the number of tags for each photo (do the appropriate grouping).

The output table should contain two columns:

    - photo_id
    - number_of_tags
*/
SELECT
    photo_id
  , COUNT(tag_name) AS number_of_tags
FROM
    photo_details_v
GROUP BY
    photo_id;