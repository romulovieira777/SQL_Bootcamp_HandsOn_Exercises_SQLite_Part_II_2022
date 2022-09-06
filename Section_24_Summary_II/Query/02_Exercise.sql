/*
Exercise No. 02

The game table is given:

    CREATE TABLE game (
        game_id INTEGER NOT NULL
      , game_date TEXT NOT NULL
      , stadium TEXT NOT NULL
      , opponent TEXT NOT NULL
      , own_score INTEGER NOT NULL
      , opponent_score INTEGER NOT NULL
      , PRIMARY KEY (game_id)
    );

Create a table named player with columns:

    - player_id (INTEGER - PRIMARY KEY)
    - first_name (TEXT)
    - last_name (TEXT)
    - age (INTEGER)
    - number (INTEGER)
    - position (TEXT)

Add a NOT NULL constraint to al columns. Define the primary key constraint at the table level.
*/
CREATE TABLE player (
    player_id INTEGER NOT NULL
  , first_name TEXT NOT NULL
  , last_name TEXT NOT NULL
  , age INTEGER NOT NULL
  , number INTEGER NOT NULL
  , position TEXT NOT NULL
  , PRIMARY KEY (player_id)
);