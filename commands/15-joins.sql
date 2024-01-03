-- Set the database as the current database for further actions
USE learning_mysql;

-- Get the list of tables
SHOW TABLES;

-- Select and view all the records
SELECT * FROM cars;
SELECT * FROM agents;
SELECT * FROM sales;
SELECT * FROM customers;

-- Inner join
SELECT sales.sale_id, sales.sale_date, sales.sale_amount, customers.first_name, customers.last_name, customers.phone_number
FROM sales INNER JOIN customers
ON sales.customer_id = customers.customer_id;

-- Left join
SELECT sales.sale_id, sales.sale_date, sales.sale_amount, customers.first_name, customers.last_name, customers.phone_number
FROM sales LEFT JOIN customers
ON sales.customer_id = customers.customer_id;

-- Right join
SELECT sales.sale_id, sales.sale_date, sales.sale_amount, customers.first_name, customers.last_name, customers.phone_number
FROM sales RIGHT JOIN customers
ON sales.customer_id = customers.customer_id;