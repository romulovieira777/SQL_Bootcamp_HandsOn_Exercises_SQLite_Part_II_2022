/*
Exercise No. 02

The following command create the user temporary table:

    CREATE TEMPORARY TABLE user (
        user_id INTEGER
      , first_name TEXT
      , last_name TEXT
      , email TEXT
      , PRIMARY KEY (user_id)
    );

Add a command that deletes the user temporary table, if it exists.
*/
CREATE TEMPORARY TABLE user (
    user_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , PRIMARY KEY (user_id)
);

DROP TABLE IF EXISTS user;