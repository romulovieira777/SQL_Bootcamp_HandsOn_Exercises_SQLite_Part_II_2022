/*
Exercise No. 05

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

Create a query that displays the contents of the company table with the ROWID column. Display the ROWID as first column
in the output table.
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
    ROWID
  , *
FROM
    company;