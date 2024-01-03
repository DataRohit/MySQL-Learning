-- Set the database as the current database for further actions
USE learning_mysql;

-- Sort the data in ascending order based on column
SELECT * FROM customers
ORDER BY first_name;

-- Sort the data in descending order based on column
SELECT * FROM customers
ORDER BY first_name DESC;

-- Sort the data based on date
SELECT * FROM sales
ORDER BY sale_date;

-- Sort the data based on multiple column
SELECT * FROM sales
ORDER BY sale_amount DESC, sale_date ASC;