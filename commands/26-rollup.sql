-- Set the database as the current database for further actions
USE learning_mysql;

-- Get the min sales amount for every car
SELECT car_name, MIN(price), MIN(sale_amount)
FROM full_sales_view
GROUP BY car_name WITH ROLLUP;

-- Get the max sales amount for every car
SELECT car_name, MAX(price), MAX(sale_amount)
FROM full_sales_view
GROUP BY car_name WITH ROLLUP;