-- Set the database as the current database for further actions
USE learning_mysql;

-- Get the list of tables
SHOW TABLES;

-- Find all customer first names starting with a
SELECT * FROM customers
WHERE first_name LIKE "a%";

-- Find all customer last names ending with a
SELECT * FROM customers
WHERE last_name LIKE "%a";

-- Find pattern of letter any where in the word
SELECT * FROM customers
WHERE first_name LIKE "%av%";

-- Try finding exact matching
SELECT * FROM sales
WHERE sale_date LIKE "____-__-01";

-- Combining % and _ to find second letter has to be a
SELECT * FROM customers
WHERE first_name LIKE "_a%";