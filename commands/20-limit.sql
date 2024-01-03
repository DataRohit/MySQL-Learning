-- Set the database as the current database for further actions
USE learning_mysql;

-- Select / view records from table
SELECT * FROM customers
LIMIT 5;

-- Combine limit with order by
SELECT * FROM customers
ORDER BY last_name DESC LIMIT 5;

-- Limit with ofset <ofset, start>
SELECT * FROM customers
LIMIT 5;

-- Next 5 customers
SELECT * FROM customers
LIMIT 5, 5;

-- Next 5 customers
SELECT * FROM customers
LIMIT 10, 5;