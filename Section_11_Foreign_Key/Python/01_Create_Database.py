import sqlite3

conn = sqlite3.connect('../Database/sct11.db')  # Create a database or connect to one
cur = conn.cursor()  # Create a cursor to execute SQL commands

cur.executescript('''DROP TABLE IF EXISTS category;
                     CREATE TABLE category (
                        category_id INTEGER
                      , category_name TEXT NOT NULL
                      , PRIMARY KEY (category_id)
                    );
                    
                    DROP TABLE IF EXISTS product;
                    CREATE TABLE product (
                        product_id INTEGER
                      , product_name TEXT NOT NULL
                      , list_price REAL NOT NULL
                      , category_id INTEGER NOT NULL
                      , PRIMARY KEY (product_id)
                      , FOREIGN KEY (category_id) REFERENCES category(category_id)
                    );
                    
                    DROP TABLE IF EXISTS customer;
                    CREATE TABLE customer (
                        customer_id INTEGER
                      , first_name TEXT NOT NULL
                      , last_name TEXT NOT NULL
                      , phone TEXT NOT NULL
                      , email TEXT NOT NULL
                      , PRIMARY KEY (customer_id)
                    );
                    
                    DROP TABLE IF EXISTS shop;
                    CREATE TABLE shop (
                        shop_id INTEGER
                      , shop_name TEXT NOT NULL
                      , city TEXT NOT NULL
                      , street TEXT NOT NULL
                      , zip_code TEXT NOT NULL
                      , PRIMARY KEY (shop_id)
                    );
                    
                    DROP TABLE IF EXISTS order;
                    CREATE TABLE order (
                        order_id INTEGER
                      , customer_id INTEGER NOT NULL
                      , order_status TEXT NOT NULL
                      , order_date TEXT NOT NULL
                      , shop_id INTEGER NOT NULL
                      , PRIMARY KEY (order_id)
                      , FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE CASCADE ON UPDATE CASCADE
                      , FOREIGN KEY (shop_id) REFERENCES shop (shop_id) ON DELETE CASCADE ON UPDATE CASCADE
                    );''')

conn.commit()   # Commit the changes to the database
cur.close()    # Close the
