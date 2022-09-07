import sqlite3

conn = sqlite3.connect('../Database/sct25.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS location;
                    CREATE TABLE location (
                        location_id INTEGER
                      , name TEXT NOT NULL UNIQUE
                      , PRIMARY KEY (location_id)
                    );
                    
                    DROP TABLE IF EXISTS album;
                    CREATE TABLE album (
                        album_id INTEGER
                      , title TEXT NOT NULL
                      , description TEXT
                      , PRIMARY KEY (album_id)
                    );
                    
                    DROP TABLE IF EXISTS tag;
                    CREATE TABLE tag (
                        tag_id INTEGER
                      , tag_name TEXT NOT NULL
                      , PRIMARY KEY (tag_id)
                    );
                    
                    DROP TABLE IF EXISTS photo;
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
                    
                    DROP TABLE IF EXISTS tag_photo;
                    CREATE TABLE tag_photo (
                        photo_id INTEGER NOT NULL
                      , tag_id INTEGER NOT NULL
                      , PRIMARY KEY (photo_id, tag_id)
                      , FOREIGN KEY (photo_id) REFERENCES photo (photo_id) ON DELETE CASCADE ON UPDATE CASCADE
                      , FOREIGN KEY (tag_id) REFERENCES tag (tag_id) ON DELETE CASCADE ON UPDATE CASCADE
                    );''')

print('tables created successfully!\n')  # Print a message to the console

cur.executescript('''-- location
                    INSERT INTO location (location_id, name) VALUES (1, 'France');
                    INSERT INTO location (location_id, name) VALUES (2, 'USA');
                    INSERT INTO location (location_id, name) VALUES (3, 'Canada');
                    INSERT INTO location (location_id, name) VALUES (4, 'Germany');
                    INSERT INTO location (location_id, name) VALUES (5, 'India');
                    INSERT INTO location (location_id, name) VALUES (6, 'Egypt');
                     
                    -- album
                    INSERT INTO album (album_id, title, description) VALUES (1, 'Summer Camp', NULL);
                    INSERT INTO album (album_id, title, description) VALUES (2, 'Mountain Trip', 'Alps, Isere');
                     
                    -- tag
                    INSERT INTO tag (tag_id, tag_name) VALUES (1, 'mountains');
                    INSERT INTO tag (tag_id, tag_name) VALUES (2, 'sun');
                    INSERT INTO tag (tag_id, tag_name) VALUES (3, 'landscape');
                    INSERT INTO tag (tag_id, tag_name) VALUES (4, 'nature');
                    INSERT INTO tag (tag_id, tag_name) VALUES (5, 'travel');
                    INSERT INTO tag (tag_id, tag_name) VALUES (6, 'winter');
                    INSERT INTO tag (tag_id, tag_name) VALUES (7, 'trip');
                    INSERT INTO tag (tag_id, tag_name) VALUES (8, 'snow');
                    INSERT INTO tag (tag_id, tag_name) VALUES (9, 'ski');
                    INSERT INTO tag (tag_id, tag_name) VALUES (10, 'snowboard');
                     
                    -- photo
                    INSERT INTO photo (photo_id, album_id, location_id, title, description, is_private, image_path) VALUES (1, 2, 1, 'First skiing', NULL, 1, 'https://drive.google.com/file/img_4345.jpg');
                    INSERT INTO photo (photo_id, album_id, location_id, title, description, is_private, image_path) VALUES (2, 2, 1, 'Next day', NULL, 1, 'https://drive.google.com/file/img_4346.jpg');
                    INSERT INTO photo (photo_id, album_id, location_id, title, description, is_private, image_path) VALUES (3, 1, 4, 'Summer in city', NULL, 0, 'https://drive.google.com/file/img_4468.jpg');
                    INSERT INTO photo (photo_id, album_id, location_id, title, description, is_private, image_path) VALUES (4, 1, 2, 'Quick trip', NULL, 1, 'https://drive.google.com/file/img_4826.jpg');
                     
                    -- tag_photo
                    INSERT INTO tag_photo (photo_id, tag_id) VALUES (1, 1);
                    INSERT INTO tag_photo (photo_id, tag_id) VALUES (1, 3);
                    INSERT INTO tag_photo (photo_id, tag_id) VALUES (1, 6);
                    INSERT INTO tag_photo (photo_id, tag_id) VALUES (1, 8);
                    INSERT INTO tag_photo (photo_id, tag_id) VALUES (1, 9);
                    INSERT INTO tag_photo (photo_id, tag_id) VALUES (2, 8);
                    INSERT INTO tag_photo (photo_id, tag_id) VALUES (2, 9);
                    INSERT INTO tag_photo (photo_id, tag_id) VALUES (2, 10);
                    INSERT INTO tag_photo (photo_id, tag_id) VALUES (4, 2);
                    INSERT INTO tag_photo (photo_id, tag_id) VALUES (4, 3);
                    INSERT INTO tag_photo (photo_id, tag_id) VALUES (4, 5);''')

print('data inserted successfully!\n')  # Print a message to the console

cur.executescript('''CREATE VIEW
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
                    tag_photo.tag_id = tag.tag_id;''')

print('view created successfully!\n')  # Print a message to the console

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
