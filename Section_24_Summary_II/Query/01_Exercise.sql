/*
Exercise No. 01

Create a table named game with columns:

    - game_id (INTEGER - PRIMARY KEY)
    - game_date (TEXT)
    - stadium (TEXT)
    - opponent (TEXT)
    - own_score (INTEGER)
    - opponent_score (INTEGER)

Set the NOT NULL constraint on all columns. Define the primary key constraint at the table level.
*/
CREATE TABLE game (
    game_id INTEGER NOT NULL
  , game_date TEXT NOT NULL
  , stadium TEXT NOT NULL
  , opponent TEXT NOT NULL
  , own_score INTEGER NOT NULL
  , opponent_score INTEGER NOT NULL
  , PRIMARY KEY (game_id)
);