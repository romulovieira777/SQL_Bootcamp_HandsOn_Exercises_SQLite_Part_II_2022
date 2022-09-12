"""
Exercise No. 08

Using the sqlite3 package create a SQLite database named app.db. Create a Cursor object and execute the following SQL
commands:

    DROP TABLE IF EXISTS category;

    CREATE TABLE category (
        category_id   INTEGER
      , category_name TEXT    NOT NULL
      , PRIMARY KEY (category_id)
    );

    INSERT INTO category (category_name) VALUES ('technology');
    INSERT INTO category (category_name) VALUES ('e-commerce');
    INSERT INTO category (category_name) VALUES ('gaming');

Commit the changes in the database and close the connection.
"""
import sqlite3

# Create a connection to the database
conn = sqlite3.connect('../Database/apps.db')

# Create a cursor object
cur = conn.cursor()

# Deleting a table if it exists in the database
cur.executescript('''DROP TABLE IF EXISTS category;                     
                     
                     CREATE TABLE category (
                        category_id   INTEGER
                      , category_name TEXT    NOT NULL
                      , PRIMARY KEY (category_id));
                   
                    INSERT INTO category (category_name) VALUES ('technology');
                    INSERT INTO category (category_name) VALUES ('e-commerce');
                    INSERT INTO category (category_name) VALUES ('gaming');
                    ''')

# Showing the success message on the screen
print('Table deleted successfully!\n')

# Showing the success message on the screen
print('Table created successfully!\n')

# Showing the success message on the screen
print('Record inserted successfully!')

# Commit the changes in the database
conn.commit()

# Close the connection
conn.close()
