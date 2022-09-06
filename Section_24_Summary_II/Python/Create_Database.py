import sqlite3

conn = sqlite3.connect('../Database/sct24.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS game;
                    CREATE TABLE game (
                        game_id INTEGER NOT NULL
                      , game_date TEXT NOT NULL
                      , stadium TEXT NOT NULL
                      , opponent TEXT NOT NULL
                      , own_score INTEGER NOT NULL
                      , opponent_score INTEGER NOT NULL
                      , PRIMARY KEY (game_id)
                    );
                    
                    DROP TABLE IF EXISTS player;
                    CREATE TABLE player (
                        player_id INTEGER NOT NULL
                      , first_name TEXT NOT NULL
                      , last_name TEXT NOT NULL
                      , age INTEGER NOT NULL
                      , number INTEGER NOT NULL
                      , position TEXT NOT NULL
                      , PRIMARY KEY (player_id)
                    );
                    
                    DROP TABLE IF EXISTS customer;
                    CREATE TABLE customer (
                        customer_id INTEGER
                      , first_name TEXT NOT NULL
                      , last_name TEXT NOT NULL
                      , email TEXT NOT NULL
                      , PRIMARY KEY (customer_id)
                    );
                    
                    DROP TABLE IF EXISTS game_player;
                    CREATE TABLE game_player (
                        game_id INTEGER NOT NULL
                      , player_id INTEGER NOT NULL
                      , rating INTEGER CHECK (rating > 0 AND rating <= 10)
                      , PRIMARY KEY (game_id, player_id)
                    );''')

print('tables created successfully!\n')  # Print a message to the console

cur.executescript(''' -- GOALKEEPERS
                    INSERT INTO player (player_id, first_name, last_name, age, number, position)
                    VALUES (1, 'Manuel', 'Neuer', 35, 1, 'goalkeeper')
                         , (2, 'Joshua', 'Kimmich', 26, 6, 'midfielder')
                         , (3, 'Robert', 'Lewandowski', 33, 9, 'forward');
                    
                    -- DEFENDERS
                    INSERT INTO player (player_id, first_name, last_name, age, number, position)
                    VALUES (4, 'Niklas', 'Sule', 26, 4, 'defender')
                         , (5, 'Benjamin', 'Pavard', 25, 5, 'defender')
                         , (6, 'Jerome', 'Boateng', 33, 17, 'defender')
                         , (7, 'Alphonso', 'Davies', 21, 19, 'defender')
                         , (8, 'Bouna', 'Sarr', 29, 20, 'defender')
                         , (9, 'Lucas', 'Hernández', 25, 21, 'defender')
                         , (10, 'Tanguy', 'Nianzou', 19, 23, 'defender')
                         , (11, 'David', 'Alaba', 29, 27, 'defender');
                     
                    -- MIDFIELDERS
                    INSERT INTO player (player_id, first_name, last_name, age, number, position)
                    VALUES (12, 'Joshua', 'Kimmich', 26, 6, 'midfielder')                   
                         , (13, 'Javi', 'Martinez', 33, 8, 'midfielder')
                         , (14, 'Leon', 'Goretzka', 26, 18, 'midfielder')
                         , (15, 'Marc', 'Roca', 25, 22, 'midfielder')
                         , (16, 'Corentin', 'Tolisso', 27, 24, 'midfielder')
                         , (17, 'Tiago', 'Dantas', 21, 28, 'midfielder');
                     
                    -- FORWARDS
                    INSERT INTO player (player_id, first_name, last_name, age, number, position)
                    VALUES (18, 'Serge', 'Gnabry', 26, 7, 'forward')
                         , (19, 'Robert', 'Lewandowski', 33, 9, 'forward')
                         , (20, 'Leroy', 'Sane', 25, 10, 'forward')
                         , (21, 'Douglas', 'Costa de Souza', 31, 11, 'forward')
                         , (22, 'Eric Maxim', 'Choupo-Moting', 32, 13, 'forward')
                         , (23, 'Thomas', 'Müller', 32, 25, 'forward')
                         , (24, 'Kingsley', 'Coman', 25, 29, 'forward')
                         , (25, 'Jamal', 'Musiala', 18, 42, 'forward');
                   
                    -- GAME
                    INSERT INTO game (game_id, game_date, stadium, opponent, own_score, opponent_score)
                    VALUES (1, '2021-02-20', 'Deutsche Bank Park (Frankfurt)', 'Eintracht Frankfurt', 1, 2);
                    
                    -- GAME PLAYER
                    INSERT INTO game_player (game_id, player_id, rating)
                    VALUES (1, 1, 7)
                         , (1, 4, 5)
                         , (1, 6, 6)
                         , (1, 11, 6)
                         , (1, 7, 6)
                         , (1, 12, 6)
                         , (1, 15, 4)
                         , (1, 22, 4)
                         , (1, 20, 7)
                         , (1, 19, 6)
                         , (1, 24, 6);''')

print('data inserted successfully!\n')  # Print a message to the console

cur.executescript('''CREATE VIEW
                    game_player_details_v AS
                SELECT
                    game.game_id
                  , game.opponent
                  , game.stadium
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
                    game_player.player_id = player.player_id;''')

print('view created successfully!\n')  # Print a message to the console

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
