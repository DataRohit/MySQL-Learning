-- Set the database as current database for futher actions
USE learning_mysql;

-- Describe the tables
DESC cars;
DESC sales;

-- Create a table for car sales with unique and non null constraint
CREATE TABLE sales (
	car_id INT UNIQUE NOT NULL,
    make VARCHAR(50),
    model VARCHAR(50) UNIQUE,
    sales INT
);

-- Describe the table
DESC sales;

-- Add not null constraint to the car id in cars table
ALTER TABLE cars
MODIFY car_id INT UNIQUE NOT NULL;

-- Describe the tables
DESC cars;
DESC sales;

-- Try adding a new record without the car_id
INSERT INTO cars VALUES
(NULL, 'Hyundai', 'Venue', '2020-06-22', 120.8);