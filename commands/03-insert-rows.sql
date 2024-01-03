-- Describe the table
DESC cars;

-- Inserting 10 records into the 'cars' table
INSERT INTO cars VALUES
(1, 'Toyota', 'Camry', '2022-01-01', 200.5),
(2, 'Hyundai', 'Elantra', '2021-11-15', 160.3),
(3, 'Maruti Suzuki', 'Baleno', '2019-07-20', 90.8),
(4, 'Toyota', 'Corolla', '2018-05-12', 150.2),
(5, 'Hyundai', 'Tucson', '2017-09-08', 180.6),
(6, 'Maruti Suzuki', 'Swift', '2016-12-03', 82.4),
(7, 'Toyota', 'Rav4', '2020-03-25', 220.7),
(8, 'Hyundai', 'Sonata', '2018-08-18', 200.9),
(9, 'Maruti Suzuki', 'Dzire', '2015-06-10', 75.0),
(10, 'Toyota', 'Highlander', '2019-10-30', 270.1);

-- Select and view all records from the table
SELECT * FROM cars;

-- Try adding data with missing column values
INSERT INTO cars VALUES
(11, 'Hyundai', 'Elantra', 160.2);

-- Add data for selected columns
INSERT INTO cars (car_id, make, model, horse_power) VALUES
(11, 'Hyundai', 'Venue', 120.8),
(12, 'Maruti Suzuki', 'Vitara Brezza', 103.5);

-- Select and view all records from the table
SELECT * FROM cars;