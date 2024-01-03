-- Set the database as current database for futher actions
USE learning_mysql;

-- Create a table for car sales
CREATE TABLE sales (
	car_id INT UNIQUE,
    make VARCHAR(50),
    model VARCHAR(50),
    sales INT
);

-- Describe the table
DESC sales;

-- Modify the cars table to make card id unique
ALTER TABLE cars
MODIFY car_id INT UNIQUE;

-- Describe the table
DESC cars;

-- Another method to add unique constraint to the column
ALTER TABLE sales
ADD CONSTRAINT
UNIQUE(model);

ALTER TABLE cars
ADD CONSTRAINT
UNIQUE(model);

-- Describe the tables
DESC sales;
DESC cars;

-- Select and view records from cars table
SELECT * from cars;

-- Add data to sales table
INSERT INTO sales VALUES
(1, "Toyota", "Camry", 150),
(4, "Toyota", "Corolla", 275),
(6, "Maruti Suzuki", "Swift", 1500),
(9, "Maruti Suzuki", "Dzire", 1120),
(10, "Toyota", "Highlander", 117),
(12, "Maruti Suzuki", "Vitara Brezza", 842);

-- Select and view records from sales table
SELECT * from sales;

-- Drop the table
DROP TABLE sales;