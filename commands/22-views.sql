-- Set the database as the current database for further actions
USE learning_mysql;

-- Select all data from table
SELECT * FROM agents;
SELECT * FROM customers;

-- Create a view for customer emails
CREATE VIEW customer_email AS
SELECT first_name, last_name, email
FROM customers;

-- View data in view
SELECT * FROM customer_email;

-- Drop a view
DROP VIEW customer_email;

-- Create a view to track agents
CREATE VIEW agent_attendance AS
SELECT first_name, last_name, email
FROM agents;

-- View data in view
SELECT * FROM agent_attendance;

-- Add a new agent to table
INSERT INTO agents (first_name, last_name, email, phone_number, hire_date)
VALUES
    ('Sonia', 'Singh', 'sonia.singh@example.in', '+91 87654-12345', '2022-04-05');
    
-- Check if view is updated
SELECT * FROM agent_attendance;

-- Drop a view
DROP VIEW agent_attendance;

-- Create a view to track full detail for a sale
CREATE VIEW full_sales_view AS
SELECT
	sales.sale_id,
    CONCAT(agents.first_name, " ", agents.last_name) AS agent_name,
    CONCAT(cars.brand, " ", cars.model) AS car_name,
    CONCAT(customers.first_name, " ", customers.last_name) as customer_name,
    sales.sale_date,
    cars.price,
    sales.sale_amount
FROM
	agents, cars, customers, sales
WHERE
	customers.car_id = cars.car_id AND customers.agent_id = agents.agent_id AND
    customers.sale_id = sales.sale_id AND sales.car_id = cars.car_id AND
    sales.agent_id = agents.agent_id AND sales.customer_id = customers.customer_id;
    
-- Check if view is updated
SELECT * FROM full_sales_view;