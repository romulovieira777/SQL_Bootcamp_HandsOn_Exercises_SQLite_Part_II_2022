/*
Exercise No. 06

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

Create a query that displays a record for a company named 'Playway'.
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


SELECT
    *
FROM
    company
WHERE
    company_name = 'Playway';