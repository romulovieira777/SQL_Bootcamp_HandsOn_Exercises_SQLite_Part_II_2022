import sqlite3

conn = sqlite3.connect('../Database/sct21.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS player;
                    CREATE TABLE player (
                        player_id INTEGER NOT NULL
                      , first_name TEXT NOT NULL
                      , last_name TEXT NOT NULL
                      , age INTEGER NOT NULL
                      , number INTEGER NOT NULL UNIQUE
                      , position TEXT NOT NULL
                      , PRIMARY KEY (player_id)
                    );''')

print('tables created successfully!\n')

cur.execute('''CREATE TRIGGER 
                        validate_position
                    BEFORE INSERT ON
                        player
                    BEGIN
                        SELECT
                            CASE
                                WHEN NEW.position NOT IN ('goalkeeper', 'defender', 'midfielder', 'forward') THEN
                                    RAISE(ABORT, 'Invalid position')
                            END;
                    END;''')

print('trigger created successfully!')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
