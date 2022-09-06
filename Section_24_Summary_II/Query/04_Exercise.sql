/*
The tables are given:

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

    CREATE TABLE game_player (
        game_id INTEGER NOT NULL
      , player_id INTEGER NOT NULL
      , rating INTEGER CHECK (rating > 0 AND rating <= 10)
      , PRIMARY KEY (game_id, player_id)
    );

Add a few players to the player table by inserting the following data:

    - 1, 'Manuel', 'Neuer', 35, 1 'goalkeeper'
    - 2, 'Joshua', 'Kimmich', 26, 6, 'midfielder'
    - 3, 'Robert', 'Lewandowski', 33, 9, 'forward'
*/
INSERT INTO player (player_id, first_name, last_name, age, number, position)
VALUES (1, 'Manuel', 'Neuer', 35, 1, 'goalkeeper')
     , (2, 'Joshua', 'Kimmich', 26, 6, 'midfielder')
     , (3, 'Robert', 'Lewandowski', 33, 9, 'forward');