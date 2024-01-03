-- Set the database as the current database for further actions
USE learning_mysql;

-- Subquery to compare sale amount to average sale amount
SELECT sale_id, agent_id, sale_amount,
	   (SELECT AVG(sale_amount) FROM sales) as avg_sale_amount
FROM sales;

-- Subquery to filter out sales that have amount higher than average
SELECT sale_id, car_id, agent_id, customer_id sale_amount
FROM sales
WHERE sale_amount >= (SELECT AVG(sale_amount) FROM sales);

-- Subquery to find the customers that spent more than average sale amount
SELECT first_name, last_name
FROM customers
WHERE customer_id IN
(SELECT customer_id FROM sales
WHERE sale_amount >= (SELECT AVG(sale_amount) FROM sales));