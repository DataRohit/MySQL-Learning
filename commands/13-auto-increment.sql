-- Set the database as the current database for further actions
USE learning_mysql;

-- Drop the cars table if it exists
DROP TABLE IF EXISTS cars;

-- Drop the sales table if it exists
DROP TABLE IF EXISTS sales;

-- Create cars table
CREATE TABLE cars (
	car_id INT PRIMARY KEY AUTO_INCREMENT,
    make VARCHAR(50),
    model VARCHAR(50) UNIQUE,
    launch_date DATE,
    horse_power DECIMAL(10, 2) DEFAULT 100.00,
    CONSTRAINT chk_horse_power CHECK (horse_power >= 100.00)
);

-- Create sales table
CREATE TABLE sales (
	sales_id INT PRIMARY KEY AUTO_INCREMENT,
    make VARCHAR(50),
    model VARCHAR(50),
    sale_date DATE
);

-- Set auto increment start to 1000
ALTER TABLE cars
AUTO_INCREMENT = 1000;

ALTER TABLE sales
AUTO_INCREMENT = 1000;

-- Describe the tables
DESC cars;
DESC sales;

-- Insert 10 records into the 'cars' table
INSERT INTO cars (make, model, launch_date, horse_power) VALUES
('Toyota', 'Camry', '2022-01-01', 200.5),
('Hyundai', 'Elantra', '2021-11-15', 160.3),
('Maruti Suzuki', 'Baleno', '2019-07-20', 102.8),
('Toyota', 'Corolla', '2018-05-12', 150.2),
('Hyundai', 'Tucson', '2017-09-08', 180.6),
('Maruti Suzuki', 'Swift', '2016-12-03', 112.4),
('Toyota', 'Rav4', '2020-03-25', 220.7),
('Hyundai', 'Sonata', '2018-08-18', 200.9),
('Maruti Suzuki', 'Dzire', '2015-06-10', 105.0),
('Toyota', 'Highlander', '2019-10-30', 270.1);

-- Insert 20 records into the 'sales' table with 2 sales records for each car
INSERT INTO sales (make, model, sale_date) VALUES
('Toyota', 'Camry', '2022-02-01'),
('Toyota', 'Camry', '2022-03-15'),
('Hyundai', 'Elantra', '2022-02-05'),
('Hyundai', 'Elantra', '2022-04-20'),
('Maruti Suzuki', 'Baleno', '2022-03-10'),
('Maruti Suzuki', 'Baleno', '2022-05-25'),
('Toyota', 'Corolla', '2022-04-15'),
('Toyota', 'Corolla', '2022-06-30'),
('Hyundai', 'Tucson', '2022-05-20'),
('Hyundai', 'Tucson', '2022-07-05'),
('Maruti Suzuki', 'Swift', '2022-06-25'),
('Maruti Suzuki', 'Swift', '2022-08-10'),
('Toyota', 'Rav4', '2022-07-30'),
('Toyota', 'Rav4', '2022-09-14'),
('Hyundai', 'Sonata', '2022-08-05'),
('Hyundai', 'Sonata', '2022-10-20'),
('Maruti Suzuki', 'Dzire', '2022-09-15'),
('Maruti Suzuki', 'Dzire', '2022-11-30'),
('Toyota', 'Highlander', '2022-10-10'),
('Toyota', 'Highlander', '2022-12-25');

-- Select and view records from tables
SELECT * FROM cars;
SELECT * FROM sales;

-- -- Add PRIMARY KEY constraint to existing table
-- ALTER TABLE cars
-- ADD CONSTRAINT
-- PRIMARY KEY(car_id);

-- ALTER TABLE sales
-- ADD CONSTRAINT
-- PRIMARY KEY(car_id);