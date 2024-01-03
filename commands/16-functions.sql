-- Set the database as the current database for further actions
USE learning_mysql;

-- Get the list of tables
SHOW TABLES;

-- Select and view all the records
SELECT * FROM cars;
SELECT * FROM agents;
SELECT * FROM sales;
SELECT * FROM customers;

-- COUNT function
SELECT COUNT(sale_amount)
FROM sales;

-- MAX function
SELECT MAX(sale_amount)
FROM sales;

-- MIN function
SELECT MIN(sale_amount)
FROM sales;

-- SUM function
SELECT SUM(sale_amount)
FROM sales;

-- CONCAT
SELECT CONCAT(first_name, " ", last_name) as full_name
FROM customers;