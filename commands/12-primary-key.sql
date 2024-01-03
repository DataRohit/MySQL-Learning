-- Set the database as the current database for further actions
USE learning_mysql;

-- Drop the cars table if it exists
DROP TABLE IF EXISTS cars;

-- Drop the sales table if it exists
DROP TABLE IF EXISTS sales;

-- Create the cars table
CREATE TABLE cars (
    car_id INT PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50) UNIQUE,
    launch_date DATE,
    horse_power DECIMAL(10, 2) DEFAULT 100.00,
    CONSTRAINT chk_horse_power CHECK (horse_power >= 100.00)
);

-- Create the sales table
CREATE TABLE sales (
    sales_id INT PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    sale_date DATE
);

-- Describe the tables
DESC cars;
DESC sales;

-- Insert 10 records into the 'cars' table
INSERT INTO cars VALUES
(1, 'Toyota', 'Camry', '2022-01-01', 200.5),
(2, 'Hyundai', 'Elantra', '2021-11-15', 160.3),
(3, 'Maruti Suzuki', 'Baleno', '2019-07-20', 102.8),
(4, 'Toyota', 'Corolla', '2018-05-12', 150.2),
(5, 'Hyundai', 'Tucson', '2017-09-08', 180.6),
(6, 'Maruti Suzuki', 'Swift', '2016-12-03', 112.4),
(7, 'Toyota', 'Rav4', '2020-03-25', 220.7),
(8, 'Hyundai', 'Sonata', '2018-08-18', 200.9),
(9, 'Maruti Suzuki', 'Dzire', '2015-06-10', 105.0),
(10, 'Toyota', 'Highlander', '2019-10-30', 270.1);

-- Insert 20 records into the 'sales' table with 2 sales records for each car
INSERT INTO sales VALUES
(1, 'Toyota', 'Camry', '2022-02-01'),
(2, 'Toyota', 'Camry', '2022-03-15'),
(3, 'Hyundai', 'Elantra', '2022-02-05'),
(4, 'Hyundai', 'Elantra', '2022-04-20'),
(5, 'Maruti Suzuki', 'Baleno', '2022-03-10'),
(6, 'Maruti Suzuki', 'Baleno', '2022-05-25'),
(7, 'Toyota', 'Corolla', '2022-04-15'),
(8, 'Toyota', 'Corolla', '2022-06-30'),
(9, 'Hyundai', 'Tucson', '2022-05-20'),
(10, 'Hyundai', 'Tucson', '2022-07-05'),
(11, 'Maruti Suzuki', 'Swift', '2022-06-25'),
(12, 'Maruti Suzuki', 'Swift', '2022-08-10'),
(13, 'Toyota', 'Rav4', '2022-07-30'),
(14, 'Toyota', 'Rav4', '2022-09-14'),
(15, 'Hyundai', 'Sonata', '2022-08-05'),
(16, 'Hyundai', 'Sonata', '2022-10-20'),
(17, 'Maruti Suzuki', 'Dzire', '2022-09-15'),
(18, 'Maruti Suzuki', 'Dzire', '2022-11-30'),
(19, 'Toyota', 'Highlander', '2022-10-10'),
(20, 'Toyota', 'Highlander', '2022-12-25');

-- Select and view records from tables
SELECT * FROM cars;
SELECT * FROM sales;
