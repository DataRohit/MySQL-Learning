-- Drop the database
DROP DATABASE IF EXISTS learning_mysql;

-- Create the database again
CREATE DATABASE learning_mysql;

-- Set the database as the current database for further actions
USE learning_mysql;

# Set safe mode to 0
SET SQL_SAFE_UPDATES = 0;

-- Table to store agents
CREATE TABLE agents (
    agent_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    hire_date DATE,
    commission_rate DECIMAL(4, 2)
) AUTO_INCREMENT = 1000;

-- Table to store cars
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    launch_date DATE,
    horsepower DECIMAL(6, 2),
    price DECIMAL(10, 2)
) AUTO_INCREMENT = 1000;

-- Table to store the sales made
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT NULL,
    agent_id INT NULL,
	customer_id INT NULL,
    sale_date DATE,
    sale_amount DECIMAL(10, 2),
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (agent_id) REFERENCES agents(agent_id)
) AUTO_INCREMENT = 1000;

-- Table to store customers data
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    car_id INT NULL,
    agent_id INT NULL,
    sale_id INT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(car_id) ON DELETE SET NULL,
    FOREIGN KEY (agent_id) REFERENCES agents(agent_id) ON DELETE SET NULL,
    FOREIGN KEY (sale_id) REFERENCES sales(sale_id) ON DELETE CASCADE
) AUTO_INCREMENT = 1000;

-- Insert data into agents table
INSERT INTO agents (first_name, last_name, email, phone_number, hire_date, commission_rate)
VALUES
    ('Rahul', 'Verma', 'rahul.verma@example.in', '+91 98765-43210', '2022-01-01', 2),
    ('Priya', 'Gupta', 'priya.gupta@example.in', '+91 87654-32109', '2022-02-15', 3.5),
    ('Vikram', 'Sharma', 'vikram.sharma@example.in', '+91 76543-21098', '2022-03-10', 2.5);


-- Insert data into cars table
INSERT INTO cars (brand, model, horsepower, price, launch_date)
VALUES
    ('Maruti Suzuki', 'Swift', 82, 600000.00, '2022-01-15'),
    ('Maruti Suzuki', 'Baleno', 88, 800000.00, '2022-02-20'),
    ('Maruti Suzuki', 'Vitara Brezza', 103, 950000.00, '2022-03-25'),
    ('Hyundai', 'i20', 85, 850000.00, '2022-04-30'),
    ('Hyundai', 'Creta', 120, 1200000.00, '2022-05-15');
    
-- Insert data into sales table with unique customer_id
INSERT INTO sales (car_id, agent_id, customer_id, sale_date, sale_amount)
VALUES
    (1000, 1000, 1000, '2022-06-01', 650000.00),
    (1001, 1001, 1001, '2022-06-02', 780000.00),
    (1002, 1002, 1002, '2022-06-03', 920000.00),
    (1003, 1000, 1003, '2022-06-04', 820000.00),
    (1004, 1001, 1004, '2022-06-05', 1150000.00),
    (1000, 1002, 1005, '2022-06-06', 630000.00),
    (1002, 1000, 1006, '2022-06-07', 910000.00),
    (1001, 1001, 1007, '2022-06-08', 760000.00),
    (1003, 1002, 1008, '2022-06-09', 800000.00),
    (1004, 1000, 1009, '2022-06-10', 1180000.00),
    (1000, 1001, 1010, '2022-06-11', 670000.00),
    (1001, 1002, 1011, '2022-06-12', 790000.00),
    (1002, 1000, 1012, '2022-06-13', 930000.00),
    (1003, 1001, 1013, '2022-06-14', 840000.00),
    (1004, 1002, 1014, '2022-06-15', 1220000.00);

-- Insert data into customers table
INSERT INTO customers (first_name, last_name, email, phone_number, car_id, agent_id, sale_id)
VALUES
    ('Aarav', 'Kumar', 'aarav.kumar@example.in', '+91 98765-43210', 1000, 1000, 1000),
    ('Bhavya', 'Sharma', 'bhavya.sharma@example.in', '+91 87654-32109', 1001, 1001, 1001),
    ('Chetan', 'Patel', 'chetan.patel@example.in', '+91 76543-21098', 1002, 1002, 1002),
    ('Divya', 'Singh', 'divya.singh@example.in', '+91 65432-10987', 1003, 1000, 1003),
    ('Esha', 'Verma', 'esha.verma@example.in', '+91 54321-09876', 1004, 1001, 1004),
    ('Farhan', 'Gupta', 'farhan.gupta@example.in', '+91 43210-98765', 1000, 1002, 1005),
    ('Gauri', 'Yadav', 'gauri.yadav@example.in', '+91 32109-87654', 1002, 1000, 1006),
    ('Hari', 'Rajput', 'hari.rajput@example.in', '+91 21098-76543', 1001, 1001, 1007),
    ('Ishaan', 'Mishra', 'ishaan.mishra@example.in', '+91 10987-65432', 1003, 1002, 1008),
    ('Juhi', 'Joshi', 'juhi.joshi@example.in', '+91 98765-43210', 1004, 1000, 1009),
    ('Kunal', 'Malhotra', 'kunal.malhotra@example.in', '+91 87654-32109', 1000, 1001, 1010),
    ('Lavanya', 'Kaur', 'lavanya.kaur@example.in', '+91 76543-21098', 1001, 1002, 1011),
    ('Mohit', 'Singhania', 'mohit.singhania@example.in', '+91 65432-10987', 1002, 1000, 1012),
    ('Neha', 'Bose', 'neha.bose@example.in', '+91 54321-09876', 1003, 1001, 1013),
    ('Omkar', 'Gupta', 'omkar.gupta@example.in', '+91 43210-98765', 1004, 1002, 1014);

-- Add a foreign key constraint
ALTER TABLE sales
ADD CONSTRAINT sales_ibfk_3
FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE SET NULL;

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

-- Add commission column to sales table
ALTER TABLE sales
ADD COLUMN commission DECIMAL(10, 2) NULL;

-- Update commission values using the formula
UPDATE sales
SET commission = (SELECT (agents.commission_rate / 100) * sales.sale_amount
FROM agents
WHERE agents.agent_id = sales.agent_id);

-- View the sales table
SELECT * FROM sales;

-- Drop the existing trigger
DROP TRIGGER IF EXISTS calculate_commission_amount;

-- Create a new trigger
DELIMITER $$
CREATE TRIGGER calculate_commission_amount
BEFORE INSERT ON sales
FOR EACH ROW
BEGIN
    SET NEW.commission = (SELECT (agents.commission_rate / 100) * NEW.sale_amount
    FROM agents
    WHERE agents.agent_id = NEW.agent_id);
END $$
DELIMITER ;

-- Create a new customer
INSERT INTO customers (first_name, last_name, email, phone_number, car_id, agent_id, sale_id)
VALUES
    ('Ritika', 'Agarwal', 'ritika.agarwal@example.in', '+91 98765-43210', 1003, 1002, NULL);
    
-- Get the customer id for the new customer
SELECT * FROM customers
WHERE first_name = 'Ritika' AND last_name = 'Agarwal';
    
-- Create a new sale and customer
INSERT INTO sales (car_id, agent_id, customer_id, sale_date, sale_amount)
VALUES
    (1003, 1002, 1015, '2022-07-01', 950000.00);
    
-- Update the customer table with sale_id
UPDATE customers
SET sale_id = 1017
WHERE customer_id = 1015;

-- View the sales table
SELECT * FROM sales;

-- View the updated customers table
SELECT * FROM customers;

-- View the existing triggers
SHOW TRIGGERS;