/*
Exercise No. 02

The following SQL code is given:

    CREATE TABLE employee (
        employee_id INTEGER
      , first_name TEXT
      , last_name TEXT
      , email TEXT
      , country TEXT DEFAULT 'Poland'
      , PRIMARY KEY (employee_id)
    );

Modify the given query by adding on more column to the table called created_at (as the last column in the table), which
by default inserts the date the record was inserted into the table.

Tip: Use CUURENT_DATE.
*/
CREATE TABLE employee (
    employee_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , country TEXT DEFAULT 'Poland'
  , created_at DATE DEFAULT CURRENT_DATE
  , PRIMARY KEY (employee_id)
);