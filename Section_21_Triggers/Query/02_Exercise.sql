/*
Exercise No. 02

The player table and validate_position trigger are given:

    CREATE TABLE player (
        player_id INTEGER NOT NULL
      , first_name TEXT NOT NULL
      , last_name TEXT NOT NULL
      , age INTEGER NOT NULL
      , number INTEGER NOT NULL UNIQUE
      , position TEXT NOT NULL
      , PRIMARY KEY (player_id)
    );

    CREATE TRIGGER
        validate_position
    BEFORE INSERT ON
        player
    BEGIN
        SELECT
            CASE
                WHEN NEW.position NOT IN ('goalkeeper', 'defender', 'midfielder', 'forward') THEN
                    RAISE(ABORT, 'Invalid position');
            END;
    END;

Try to insert a record into the player table with the given values:

    INSERT INTO player (first_name, last_name, age, number, position)
    VALUES (1, 'Robert', 'Lewandowski', 33, 9, 'center forward');

Expected Action: Raising the error.
*/
INSERT INTO player (first_name, last_name, age, number, position)
VALUES (1, 'Robert', 'Lewandowski', 33, 9, 'center forward');