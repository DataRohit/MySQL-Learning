-- Set the database as the current database for further actions
USE learning_mysql;

-- Create a simple store procedure
DELIMITER $$
CREATE PROCEDURE get_full_sales()
BEGIN
	SELECT * FROM full_sales_view;
END$$
DELIMITER ;

-- Call the stored procedure
CALL get_full_sales();

-- Drop stored procedure
DROP PROCEDURE get_full_sales;

-- Create a procedure with parameters
DELIMITER $$
CREATE PROCEDURE find_customer(IN id INT)
BEGIN
	SELECT * FROM customers
    WHERE customer_id = id;
END$$
DELIMITER ;

-- Call stored procedure
CALL find_customer(1000);

-- Drop stored procedure
DROP PROCEDURE find_customer;

-- Create a procedure with parameters
DELIMITER $$
CREATE PROCEDURE find_customer(IN f_name VARCHAR(50), IN l_name VARCHAR(50))
BEGIN
	SELECT * FROM customers
    WHERE first_name = f_name AND last_name = l_name;
END$$
DELIMITER ;

-- Call stored procedure
CALL find_customer("Neha", "Bose");

-- Drop stored procedure
DROP PROCEDURE find_customer;