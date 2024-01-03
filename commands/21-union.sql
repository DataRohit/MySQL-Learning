-- Set the database as the current database for further actions
USE learning_mysql;

-- Union operator to combine output
SELECT first_name, last_name, email, phone_number FROM customers
UNION
SELECT first_name, last_name, email, phone_number FROM agents;

-- Union all operator to combine output including duplicates
SELECT first_name, last_name, email, phone_number FROM customers
UNION ALL
SELECT first_name, last_name, email, phone_number FROM agents;