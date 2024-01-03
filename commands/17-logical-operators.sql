-- Set the database as the current database for further actions
USE learning_mysql;

-- Get the list of tables
SHOW TABLES;

-- Select and view all the records
SELECT * FROM cars;
SELECT * FROM agents;
SELECT * FROM sales;
SELECT * FROM customers;

-- AND operator
SELECT * FROM sales
WHERE sale_amount >= 500000 AND agent_id = 1000;

-- OR operator
SELECT * FROM sales
WHERE agent_id = 1000 OR agent_id = 1001;

-- NOT operator
SELECT * FROM sales
WHERE NOT agent_id = 1000;

-- Combining operators
SELECT * FROM sales
WHERE sale_amount >= 500000 AND (agent_id = 1000 OR agent_id = 1001);

-- BETWEEN operator
SELECT * FROM sales
WHERE sale_date BETWEEN "2022-06-03" AND "2022-06-08";

-- IN operator
SELECT * FROM customers
wHERE agent_id in (1001, 1002);