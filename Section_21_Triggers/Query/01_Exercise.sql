/*
Exercise No. 01

The following SQL code is given:

    CREATE TABLE player (
        player_id INTEGER NOT NULL
      , first_name TEXT NOT NULL
      , last_name TEXT NOT NULL
      , age INTEGER NOT NULL
      , number INTEGER NOT NULL UNIQUE
      , position TEXT NOT NULL
      , PRIMARY KEY (player_id)
    );

Create a trigger called validate_position that validades the inserted values for the position column before inserting the
record into the player (BEFORE INSERT) table.

Allowed values for the position column:
    - 'goalkeeper'
    - 'defender'
    - 'midfielder'
    - 'forward'

If a different value is passed, disallow row insertion and raise an error with the message 'Invalid position'.
*/
-- Method 1
CREATE TRIGGER
    validate_position
BEFORE INSERT ON
    player
FOR EACH ROW
BEGIN
    IF NEW.position NOT IN ('goalkeeper', 'defender', 'midfielder', 'forward') THEN
        RAISE(ABORT, 'Invalid position');
    END IF;
END;


-- Method 2
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