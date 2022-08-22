/*
Exercise No. 07

The following SQL code is given:

    CREATE TABLE employee (
        employee_id INTEGER
      , first_name TEXT
      , last_name TEXT
      , email TEXT
      , created_at TEXT DEFAULT CURRENT_TIME
      , PRIMARY KEY (employee_id)
    );

Insert a record into the employee table, passing only the given values (leave the rest of the values as default):

    - first_name -> 'John'
    - last_name -> 'Snow'
    - email -> 'john.snow@esmartdata.org'

Display the employee table and take a look at the default values that have been inserted.
*/
CREATE TABLE employee (
    employee_id INTEGER
  , first_name TEXT
  , last_name TEXT
  , email TEXT
  , created_at TEXT DEFAULT CURRENT_TIME
  , PRIMARY KEY (employee_id)
);

INSERT INTO employee (
    first_name
  , last_name
  , email
) VALUES (
    'John'
  , 'Snow'
  , 'john.snow@esmartdata.org'
);

SELECT
    *
FROM
    employee;