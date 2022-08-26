/*
Exercise No. 07

Three tables are given:

    CREATE TABLE customer (
       customer_id INTEGER
     , first_name TEXT NOT NULL
     , last_name TEXT NOT NULL
     , phone TEXT NOT NULL
     , email TEXT NOT NULL
     , PRIMARY KEY (customer_id)
    );

   CREATE TABLE shop (
      shop_id INTEGER
    , shop_name TEXT NOT NULL
    , city TEXT NOT NULL
    , street TEXT NOT NULL
    , zip_code TEXT NOT NULL
    , PRIMARY KEY (shop_id)
   );

   CREATE TABLE order (
      order_id INTEGER
    , customer_id INTEGER NOT NULL
    , order_status TEXT NOT NULL
    , order_date TEXT NOT NULL
    , shop_id INTEGER NOT NULL
    , category_id INTEGER NOT NULL
    , PRIMARY KEY (order_id)
    , FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
    , FOREIGN KEY (shop_id) REFERENCES shop(shop_id)
   );

Add a clause to the customer_id column of the order table that allows for automatic deletion of matching records from the
child table (order) when a row is deleted from parent table (customer).

Adda a clause to the shop_id column of the order table that automatically inserts NULL values into matching records in the
order table when a row is removed from the parent table (shop).
*/
CREATE TABLE customer (
    customer_id INTEGER
  , first_name TEXT NOT NULL
  , last_name TEXT NOT NULL
  , phone TEXT NOT NULL
  , email TEXT NOT NULL
  , PRIMARY KEY (customer_id)
);

CREATE TABLE shop (
   shop_id INTEGER
 , shop_name TEXT NOT NULL
 , city TEXT NOT NULL
 , street TEXT NOT NULL
 , zip_code TEXT NOT NULL
 , PRIMARY KEY (shop_id)
);

CREATE TABLE order (
   order_id INTEGER
 , customer_id INTEGER NOT NULL
 , order_status TEXT NOT NULL
 , order_date TEXT NOT NULL
 , shop_id INTEGER NOT NULL
 , category_id INTEGER NOT NULL
 , PRIMARY KEY (order_id)
 , FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE CASCADE
 , FOREIGN KEY (shop_id) REFERENCES shop(shop_id) ON DELETE SET NULL
);