/*
Exercise No. 04

The following SQL code is given:

    CREATE TABLE producer (
        producer_id INTEGER
      , company_name TEXT NOT NULL
      , country REAL NOT NULL
      , PRIMARY KEY (product_id)
    );

    INSERT INTO producer (producer_id, company_name, country)
    VALUES ('101', 'The Walt Disney Studios', 'United States');
    INSERT INTO producer (producer_id, company_name, country)
    VALUES (NULL, 'Warner Bros.', 'United States');
    INSERT INTO producer (producer_id, company_name, country)
    VALUES ('103', 'BBC Films', 'United Kingdom');

Note the NULL value in the second command for the producer_id column. Then create a command that displays the producer
table.

Take a look at the second record of the output table and the value for the producer_id column.
*/
SELECT
    *
FROM
    producer;