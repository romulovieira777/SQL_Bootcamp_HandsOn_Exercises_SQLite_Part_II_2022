"""
Exercise No. 07

The following code is given:

    import sqlite3


    conn = sqlite3.connect('apps.db')
    cur = conn.cursor()

    cur.execute('''DROP TABLE IF EXISTS category''')
    conn.commit()

    cur.execute('''CREATE TABLE category (
        category_id   INTEGER,
        category_name TEXT    NOT NULL,
        PRIMARY KEY (category_id));''')

    cur.execute('''INSERT INTO category (category_name) VALUES ('technology')''')
    cur.execute('''INSERT INTO category (category_name) VALUES ('e-commerce')''')
    cur.execute('''INSERT INTO category (category_name) VALUES ('gaming')''')

    conn.commit()
    conn.close()

Connect to the apps.db database. Update the value for category_id = 2 to 'online shop'. Then display all data from the
category table to the console as show below.

Expected result:

    (1, 'technology')
    (2, 'online shop')
    (3, 'gaming')
"""
import sqlite3

# Create a connection to the database
conn = sqlite3.connect('../Database/apps.db')

# Create a cursor object
cur = conn.cursor()

# Run a query updating the data from the categories table
cur.execute('''UPDATE category SET category_name = 'online shop' WHERE category_id = 2;''')

# Run a query extracting all the data from the category table
cur.execute('''SELECT * FROM category''')

# Storing select data in variable
rows = cur.fetchall()

# Showing the success message on the screen
for row in rows:
    print(row)

# Commit the changes in the database
conn.commit()

# Close the connection
conn.close()
