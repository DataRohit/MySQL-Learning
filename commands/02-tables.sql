-- Set the database as current database for futher actions
USE learning_mysql;

-- Create a new table
CREATE TABLE cars (
    model VARCHAR(50),
    make VARCHAR(50),
    launch_date DATE,
    horse_power DECIMAL(10, 2)
);

-- Describe the table
DESC cars;

-- Change name of the table
RENAME TABLE cars TO cars_table;

-- Drop the table
DROP TABLE cars_table;

-- Create a the table again
CREATE TABLE cars (
    model VARCHAR(50),
    make VARCHAR(50),
    launch_date DATE,
    horse_power DECIMAL(10, 2)
);

-- Describe the table
DESC cars;

-- Alter table to add new column
ALTER TABLE cars
ADD transmission VARCHAR(15);

-- Describe the table after adding new column
DESC cars;

-- Alter table to change the column name
ALTER TABLE cars
RENAME COLUMN transmission to fuel_type;

-- Describe the table after renaming the column
DESC cars;

-- Alter table to modify a column
ALTER TABLE cars
MODIFY COLUMN fuel_type VARCHAR(50);

-- Describe the table after modifying the column
DESC cars;

--  Move the position of column in table
ALTER TABLE cars
MODIFY fuel_type VARCHAR(50)
AFTER launch_date;

-- Describe the table after reordering the columns
DESC cars;

-- Make a column the first column in table
ALTER TABLE cars
MODIFY make VARCHAR(50)
FIRST;

-- Describe the table after reordering the columns
DESC cars;

-- Drop a column from the tabme
ALTER TABLE cars
DROP COLUMN fuel_type;

-- Describe the table after dropping the column
DESC cars;

-- Alter table to add new column
ALTER TABLE cars
ADD car_id INT;

-- Make a column the first column in table
ALTER TABLE cars
MODIFY car_id INT
FIRST;

-- Describe the table after reordering the columns
DESC cars;