/*
Exercise No. 07

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
        company_name = 'Playway';

Using the EXPLAIN QUERY PLAN command, check how SQLite filters records for the above query.

Expected conclusion: Searching a table using an automatically created index.

    SEARCH TABLE company USING INDEX sqlite_autoindex_company_1 (company_name=?);
*/
CREATE TABLE company (
        company_name TEXT
      , stock_exchange TEXT
      , price REAL
      , PRIMARY KEY (company_name, stock_exchange)
    );


INSERT INTO company (company_name, stock_exchange, price) VALUES ('CD Projekt', 'WSE', 250);
INSERT INTO company (company_name, stock_exchange, price) VALUES ('Playway', 'WSE', 600);
INSERT INTO company (company_name, stock_exchange, price) VALUES ('Ten Square Games', 'WSE', 550);


EXPLAIN QUERY PLAN SELECT * FROM company WHERE company_name = 'Playway';