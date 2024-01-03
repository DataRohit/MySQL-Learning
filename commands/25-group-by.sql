-- Set the database as the current database for further actions
USE learning_mysql;

-- Select the data from the view
SELECT * FROM full_sales_view;

-- Get the total sales amount for every car
SELECT car_name, SUM(price), SUM(sale_amount)
FROM full_sales_view
GROUP BY car_name;

-- Get the avg sales amount for every car
SELECT car_name, AVG(price), AVG(sale_amount)
FROM full_sales_view
GROUP BY car_name;

-- Get the max sales amount for every car
SELECT car_name, MAX(price), MAX(sale_amount)
FROM full_sales_view
GROUP BY car_name;

-- Get the min sales amount for every car
SELECT car_name, MIN(price), MIN(sale_amount)
FROM full_sales_view
GROUP BY car_name;

-- Get the count sales amount for every car
SELECT car_name, COUNT(price), COUNT(sale_amount)
FROM full_sales_view
GROUP BY car_name;

-- Get the count sales amount for every car
SELECT agent_name, car_name, COUNT(car_name)
FROM full_sales_view
GROUP BY agent_name, car_name
HAVING COUNT(car_name) >= 2;