"""
Exercise No. 05

Using the sqlite3 package create a SQLite database named apps.db. Create a Cursor object and execute the command that
creates a category table:

    CREATE TABLE IF NOT EXISTS category (
        category_id INTEGER
      , category_name TEXT NOT NULL
      , PRIMARY KEY (category_id)
    );

Then insert the following records into the category table by executing the following commands (each separately):

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

# Create the category table
cur.execute('''CREATE TABLE IF NOT EXISTS category (
    category_id INTEGER
  , category_name TEXT NOT NULL
  , PRIMARY KEY (category_id)
);''')

# Showing the success message on the screen
print('Table created successfully!\n')

# Insert a record into the category table
cur.executescript('''INSERT INTO category (category_name) VALUES ('technology');
                     INSERT INTO category (category_name) VALUES ('e-commerce');
                     INSERT INTO category (category_name) VALUES ('gaming');''')

# Showing the success message on the screen
print('Record inserted successfully!')

# Commit the changes in the database
conn.commit()

# Close the connection
conn.close()
