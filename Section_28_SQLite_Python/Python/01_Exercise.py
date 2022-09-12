"""
Exercise No. 01

Using the sqlite3 package create a SQLite database named app.db.

Create a Cursor object and execute the command that creates the customer table:

    CREATE TABLE customer (
        customer_id INTEGER PRIMARY KEY
      , first_name TEXT
      , last_name TEXT
      , email TEXT
    );

Then insert the following record into the customer table:

    ('John', 'Smith', 'john.smith@esmardata.org')

Commit the changes in the database and close the connection.
"""
import sqlite3

# Create a connection to the database
conn = sqlite3.connect('../Database/app.db')

# Create a cursor object
cur = conn.cursor()

# Create the customer table
cur.execute('''CREATE TABLE customer (
    customer_id INTEGER PRIMARY KEY
  , first_name TEXT
  , last_name TEXT
  , email TEXT
);''')

# Showing the success message on the screen
print('Table created successfully!')

# Insert a record into the customer table
cur.execute('''INSERT INTO customer (first_name, last_name, email)
VALUES ('John', 'Smith', 'john.smith@esmardata.org');''')

# Showing the success message on the screen
print('Record inserted successfully!')

# Commit the changes in the database
conn.commit()

# Close the connection
conn.close()
