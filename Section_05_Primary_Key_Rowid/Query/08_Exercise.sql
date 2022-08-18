/*
Exercise No. 08

The following code is given:

    CREATE TABLE company (
        company_name TEXT
      , stock_exchange TEXT
      , price REAL
      , PRIMARY KEY (company_name, stock_exchange)
    );

    INSERT INTO company (company_name, stock_exchange, price) VALUES ('CD Projekt', 'WSE', 250);
    INSERT INTO company (company_name, stock_exchange, price) VALUES ('Playway', 'WSE', 600);
    INSERT INTO company (company_name, stock_exchange, price) VALUES ('Ten Square Games', 'WSE', 550);

The following query is given:

    SELECT
        *
    FROM
        company
    WHERE
        stock_exchange = 'WSE';

Using the EXPLAIN QUERY PLAN command, check how SQLite filters records for the above query.

Expected conclusion: Full table scan.

        SCAN TABLE company;
*/
EXPLAIN QUERY PLAN SELECT * FROM company WHERE stock_exchange = 'WSE';