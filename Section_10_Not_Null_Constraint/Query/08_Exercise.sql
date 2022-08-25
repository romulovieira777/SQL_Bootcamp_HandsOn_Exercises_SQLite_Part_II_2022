/*
Exercise No. 08

The following SQL code is given:

    CREATE TABLE producer (
        producer_id TEXT NOT NULL
      , company_name TEXT NOT NULL
      , country REAL NOT NULL
      , PRIMARY KEY (product_id)
    );

Please try to insert the record (contains NULL for the producer_id column):
    INSERT INTO producer (producer_id, company_name, country)
    VALUES (NULL, 'Warner Bros.', 'United States');

Expected result -> NOT NULL constraint violation
*/
INSERT INTO producer (producer_id, company_name, country)
VALUES (NULL, 'Warner Bros.', 'United States');