-- Set the database as the current database for further actions
USE learning_mysql;

-- Show current indexes for the table
SHOW INDEXES FROM customers;

-- Create an index
CREATE INDEX first_name_idx
ON customers(first_name);

CREATE INDEX last_name_idx
ON customers(last_name);

-- Show current indexes for the table
SHOW INDEXES FROM customers;

-- Select the data from table
SELECT * FROM customers
WHERE last_name =  "Bose";

-- Drop index
ALTER TABLE customers
DROP INDEX last_name_idx;

ALTER TABLE customers
DROP INDEX first_name_idx;

-- Create a multicolumn index
CREATE INDEX last_name_first_name_idx
ON customers(last_name, first_name);

-- Show current indexes for the table
SHOW INDEXES FROM customers;

-- Select the data from table
SELECT * FROM customers
WHERE last_name = "Bose" AND first_name = "Neha";