/*
Exercise No. 01

The following table is given:

    CREATE TABLE user (
        user_id INTEGER
      , first_name TEXT
      , last_name
      , email TEXT
      , PRIMARY KEY (user_id)
    );

Create an index named idx_email for the email column.
*/
CREATE TABLE user (
        user_id INTEGER
      , first_name TEXT
      , last_name
      , email TEXT
      , PRIMARY KEY (user_id)
    );


CREATE INDEX idx_email ON user (email);