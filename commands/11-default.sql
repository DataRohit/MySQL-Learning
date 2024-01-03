-- Set the database as current database for futher actions
USE learning_mysql;

-- Describe the tables
DESC cars;
DESC sales;

-- Drop the cars table
DROP TABLE cars;

-- Create a the table
CREATE TABLE cars (
	car_id INT UNIQUE NOT NULL,
    make VARCHAR(50),
    model VARCHAR(50) UNIQUE,
    launch_date DATE,
    horse_power DECIMAL(10, 2) DEFAULT 100.00,
    CONSTRAINT chk_horse_power CHECK (horse_power >= 100.00)
);

-- Describe the table
DESC cars;

-- Inserting 10 records into the 'cars' tables
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

-- Drop the cars table
DROP table cars;

-- Create a the table again
CREATE TABLE cars (
	car_id INT UNIQUE NOT NULL,
    make VARCHAR(50),
    model VARCHAR(50) UNIQUE,
    launch_date DATE,
    horse_power DECIMAL(10, 2),
    CONSTRAINT chk_horse_power CHECK (horse_power >= 100.00)
);

-- Add check constraint to existing table
ALTER TABLE cars
ALTER horse_power SET DEFAULT 100.00;

-- Describe the table
DESC cars;

-- Inserting 10 records into the 'cars' tables
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

-- Inserting 2 more records into the 'cars' table with original launch dates
INSERT INTO cars (car_id, make, model, launch_date) VALUES
(11, 'Hyundai', 'Venue', '2020-06-22'),
(12, 'Maruti Suzuki', 'Vitara Brezza', '2019-02-14');

-- Select and view all records from the table
SELECT * FROM cars;