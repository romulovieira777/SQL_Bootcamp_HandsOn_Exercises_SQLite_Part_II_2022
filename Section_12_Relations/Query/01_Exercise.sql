/*
Exercise No. 01

The following ERD diagram is given:

          user                      photo
    user_id: INTEGER (PK)       photo_id: INTEGER (PK)
    first_name: TEXT            user_id: INTEGER (FK)
    last_name: TEXT             description: TEXT
    gender: TEXT                privacy: TEXT
    birth_date: TEXT            upload_date: TEXT
                                image_path: TEXT

Implement the tables described in the diagram above. Set the primary and foreign key constraints as specified in the
schema (at table level) and the NOT NULL constraints for the following columns:
    - first_name
    - last_name
    - privacy
    - upload_date
    - image_path

Also set the UNIQUE constraint on the user_id column of the photo table.
*/
CREATE TABLE IF NOT EXISTS user (
    user_id INTEGER
  , first_name TEXT NOT NULL
  , last_name TEXT NOT NULL
  , gender TEXT
  , birth_date TEXT
  , PRIMARY KEY (user_id)
);

CREATE TABLE IF NOT EXISTS photo (
    photo_id INTEGER
  , user_id INTEGER UNIQUE
  , description TEXT
  , privacy TEXT NOT NULL
  , upload_date TEXT NOT NULL
  , image_path TEXT NOT NULL
  , PRIMARY KEY (photo_id)
  , FOREIGN KEY (user_id) REFERENCES user(user_id)
);