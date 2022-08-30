/*
Exercise No. 01

The following SQL code is given:

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
      , number INTEGER NOT NULL UNIQUE
      , position TEXT NOT NULL
      , PRIMARY KEY (player_id)
    );

    CREATE TABLE game_player (
        game_id INTEGER NOT NULL
      , player_id INTEGER NOT NULL
      , rating INTEGER CHECK (rating > 0 AND rating <= 11)
      , PRIMARY KEY (game_id, player_id)
    );

    -- GOALKEEPERS
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (1, 'Manuel', 'Neuer', 35, 1, 'goalkeeper');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (2, 'Alexander', 'Nübel', 25, 35, 'goalkeeper');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (3, 'Ron-Thorben', 'Hoffmann', 35, 39, 'goalkeeper');

    -- DEFENDERS
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (4, 'Niklas', 'Sule', 26, 4, 'defender');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (5, 'Benjamin', 'Pavard', 25, 5, 'defender');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (6, 'Jerome', 'Boateng', 33, 17, 'defender');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (7, 'Alphonso', 'Davies', 21, 19, 'defender');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (8, 'Bouna', 'Sarr', 29, 20, 'defender');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (9, 'Lucas', 'Hernández', 25, 21, 'defender');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (10, 'Tanguy', 'Nianzou', 19, 23, 'defender');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (11, 'David', 'Alaba', 29, 27, 'defender');

    -- MIDFIELDERS
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (12, 'Joshua', 'Kimmich', 26, 6, 'midfielder');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (13, 'Javi', 'Martinez', 33, 8, 'midfielder');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (14, 'Leon', 'Goretzka', 26, 18, 'midfielder');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (15, 'Marc', 'Roca', 25, 22, 'midfielder');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (16, 'Corentin', 'Tolisso', 27, 24, 'midfielder');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (17, 'Tiago', 'Dantas', 21, 28, 'midfielder');

    -- FORWARDS
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (18, 'Serge', 'Gnabry', 26, 7, 'forward');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (19, 'Robert', 'Lewandowski', 33, 9, 'forward');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (20, 'Leroy', 'Sane', 25, 10, 'forward');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (21, 'Douglas', 'Costa de Souza', 31, 11, 'forward');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (22, 'Eric Maxim', 'Choupo-Moting', 32, 13, 'forward');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (23, 'Thomas', 'Müller', 32, 25, 'forward');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (24, 'Kingsley', 'Coman', 25, 29, 'forward');
    INSERT INTO player (player_id, first_name, last_name, age, number, position) VALUES (25, 'Jamal', 'Musiala', 18, 42, 'forward');

    INSERT INTO game (game_id, game_date, stadium, opponent, own_score, opponent_score) VALUES (1, '2021-02-20', 'Deutsche Bank Park (Frankfurt)', 'Eintracht Frankfurt', 1, 2);

    INSERT INTO game_player (game_id, player_id, rating) VALUES (1, 1, 7);
    INSERT INTO game_player (game_id, player_id, rating) VALUES (1, 4, 5);
    INSERT INTO game_player (game_id, player_id, rating) VALUES (1, 6, 6);
    INSERT INTO game_player (game_id, player_id, rating) VALUES (1, 11, 6);
    INSERT INTO game_player (game_id, player_id, rating) VALUES (1, 7, 6);
    INSERT INTO game_player (game_id, player_id, rating) VALUES (1, 12, 6);
    INSERT INTO game_player (game_id, player_id, rating) VALUES (1, 15, 4);
    INSERT INTO game_player (game_id, player_id, rating) VALUES (1, 22, 4);
    INSERT INTO game_player (game_id, player_id, rating) VALUES (1, 20, 7);
    INSERT INTO game_player (game_id, player_id, rating) VALUES (1, 19, 6);
    INSERT INTO game_player (game_id, player_id, rating) VALUES (1, 24, 6);

Create a LEFT JOIN of the tables:

    - game_player
    - game
    - player

Use the game_id and player_id columns, respectively. Display all columns in the output table.
*/
-- Method 1
SELECT
    game_player.game_id
  , game_player.player_id
  , game.game_date
  , game.stadium
  , game.opponent
  , game.own_score
  , game.opponent_score
  , player.first_name
  , player.last_name
  , player.age
  , player.number
  , player.position
  , game_player.rating
FROM
    game_player
LEFT JOIN
    game
ON
    game_player.game_id = game.game_id
LEFT JOIN
    player
ON
    game_player.player_id = player.player_id;


-- Method 2
SELECT
    *
FROM
    game_player
LEFT JOIN
    game
ON
    game_player.game_id = game.game_id
LEFT JOIN
    player
ON
    game_player.player_id = player.player_id;