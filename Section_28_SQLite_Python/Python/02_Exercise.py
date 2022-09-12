"""
Exercise No. 02

The following code is given:

    import sqlite3

    # Create a connection to the database
    conn = sqlite3.connect('../Database/app.db')

    # Create a cursor object
    cur = conn.cursor()

    # Create the customer table
    cur.execute('''CREATE TABLE IF NOT EXISTS customer (
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

Create a connection to the app.db database again, run a query extracting all the data from the customer table, and print
to the console.

Expected result:

    [(1, 'John', 'Smith', 'john.smith@esmardata.org')]
"""
import sqlite3

# Create a connection to the database
conn = sqlite3.connect('../Database/app.db')

# Create a cursor object
cur = conn.cursor()

# Create the customer table
cur.execute('''CREATE TABLE IF NOT EXISTS customer (
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

# Selecting data from table
cur.execute('''SELECT * FROM customer;''')

# showing selected data
rows = cur.fetchall()
print(rows)

# Commit the changes in the database
conn.commit()

# Close the connection
conn.close()
