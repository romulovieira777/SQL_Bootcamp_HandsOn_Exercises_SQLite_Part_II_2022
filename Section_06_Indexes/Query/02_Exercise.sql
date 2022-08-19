/*
Exercise No. 02

The following table is given:

    CREATE TABLE user (
        user_id INTEGER
      , first_name TEXT
      , last_name
      , email TEXT
      , PRIMARY KEY (user_id)
    );

Drop the index named idx_email.
*/
CREATE TABLE user (
        user_id INTEGER
      , first_name TEXT
      , last_name
      , email TEXT
      , PRIMARY KEY (user_id)
    );


CREATE INDEX idx_email ON user (email);


DROP INDEX idx_email;