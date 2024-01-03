-- Set the database as current database for futher actions
USE learning_mysql;

# Disable the safe updates
SET SQL_SAFE_UPDATES = 0;

-- Select all rows from the data
SELECT * FROM cars;

-- Update table to fill in null values
UPDATE cars
SET launch_date = "2020-06-22", horse_power = 135.10
WHERE make = "Hyundai" AND MODEL = "Venue";

-- Update table data
UPDATE cars
SET launch_date = "2019-02-14", horse_power = 110.25
WHERE make = "Maruti Suzuki" AND MODEL = "Vitara Brezza";

-- Select all rows from the data
SELECT * FROM cars;

-- Set column value to NULL for
UPDATE cars
SET horse_power = NULL
WHERE make = "Maruti Suzuki" AND MODEL = "Baleno";

-- Select all rows from the data
SELECT * FROM cars;

-- Delete row from table with condition
DELETE FROM cars
WHERE model = "Baleno";

-- Delete row from table with condition
DELETE FROM cars
WHERE model = "Rav4";

-- Select all rows from the data
SELECT * FROM cars;