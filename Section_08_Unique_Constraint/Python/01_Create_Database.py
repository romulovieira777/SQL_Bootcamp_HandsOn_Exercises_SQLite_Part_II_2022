import sqlite3

conn = sqlite3.connect('../Database/sct08.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS staff;
                     CREATE TABLE staff (
                        staff_id INTEGER
                      , first_name TEXT
                      , last_name TEXT
                      , email TEXT UNIQUE
                      , country TEXT DEFAULT 'USA'
                      , phone TEXT UNIQUE
                      , PRIMARY KEY (staff_id)
                    );
                    
                    DROP TABLE IF EXISTS customers;
                    CREATE TABLE customer (
                        customer_id INTEGER
                      , first_name TEXT NOT NULL
                      , last_name TEXT NOT NULL
                      , email TEXT UNIQUE
                      , street TEXT NOT NULL
                      , city TEXT NOT NULL
                      , state TEXT NOT NULL
                      , zip_code TEXT NOT NULL
                      , PRIMARY KEY (customer_id)
                    );
                    
                    INSERT INTO customer (first_name, last_name, email, street, city, state, zip_code) VALUES ('Debra', 'Burks', 'deb.bur@esmartdata.org', '9273 Thorne Ave.', 'Orchard Park', 'NY', 14127);
                    INSERT INTO customer (first_name, last_name, email, street, city, state, zip_code) VALUES ('Kasha', 'Todd', 'kas.tod@esmartdata.org', '910 Vine Street', 'Campbell', 'CA', 95008);
                    INSERT INTO customer (first_name, last_name, email, street, city, state, zip_code) VALUES ('Tameka', 'Fisher', 'tam.fis@esmartdata.org', '769C Honey Creek St.', 'Redondo Beach', 'CA', 90278);
                    INSERT INTO customer (first_name, last_name, email, street, city, state, zip_code) VALUES ('Daryl', 'Spence', 'dar.spe@esmartdata.org', '988 Pearl Lane', 'Uniondale', 'NY', 11553);
                    INSERT INTO customer (first_name, last_name, email, street, city, state, zip_code) VALUES ('Charolette', 'Rice', 'char.ric@esmartdata.org', '107 River Dr.', 'Sacramento', 'CA', 95820);
                    ''')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
