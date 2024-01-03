-- Set the database as current database for futher actions
USE learning_mysql;

-- Select all rows from the data
SELECT * FROM cars;

-- Set AUTOCOMMIT to OFF so no transcation will directly affect database/table
SET AUTOCOMMIT = OFF;

-- Create a save point / checkpoint
COMMIT;

-- Deleting all the rows from the database
DELETE FROM cars;

-- Select all rows from the data
SELECT * FROM cars;

-- ROLLBACK to previous checkpoint
ROLLBACK;

-- Select all rows from the data
SELECT * FROM cars;

-- Deleting all the cars for Hyundai
DELETE FROM cars
WHERE make = "Hyundai";

-- Select all rows from the data
SELECT * FROM cars;

-- COMMIT the changes permenantly to the database/table
COMMIT;

-- Select all rows from the data
SELECT * FROM cars;