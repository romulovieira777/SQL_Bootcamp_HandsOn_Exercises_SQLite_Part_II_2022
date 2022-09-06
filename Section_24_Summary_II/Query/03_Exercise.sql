/*
Exercise No. 03

Two tables are given:

    CREATE TABLE game (
        game_id INTEGER NOT NULL
      , game_date TEXT NOT NULL
      , stadium TEXT NOT NULL
      , opponent TEXT NOT NULL
      , own_score INTEGER NOT NULL
      , opponent_score INTEGER NOT NULL
      , PRIMARY KEY (game_id)
    );

    CREATE TABLE player (
        player_id INTEGER NOT NULL
      , first_name TEXT NOT NULL
      , last_name TEXT NOT NULL
      , age INTEGER NOT NULL
      , number INTEGER NOT NULL
      , position TEXT NOT NULL
      , PRIMARY KEY (player_id)
    );

Create a third table named game_player containing the columns:

    - game_id (INTEGER)
    - player_id (INTEGER)
    - rating (INTEGER, add CHECK constraint that checks if the inserted value is greater than 0 and less than or equal 10)

Create a primary key consisting of two columns: game_id and player_id.
*/
CREATE TABLE game_player (
    game_id INTEGER NOT NULL
  , player_id INTEGER NOT NULL
  , rating INTEGER CHECK (rating > 0 AND rating <= 10)
  , PRIMARY KEY (game_id, player_id)
);