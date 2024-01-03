-- Set the database as current database for futher actions
USE learning_mysql;

-- Select all rows from the data
SELECT * FROM cars;

-- Select only model and make of the cars
SELECT model, make from cars;

-- Order of columns can be controlled with the select command
SELECT make, model from cars;

-- Select rows from table with condition based on a column
SELECT * FROM cars
WHERE horse_power > 180;

-- Select rows from table with condition based on a column
SELECT * FROM cars
WHERE launch_date <= "2020-06-01";

-- Select rows from table with condition based on a column
SELECT * FROM cars
WHERE make != "Maruti Suzuki";

-- Select rows with condition using IS keyword
SELECT * FROM cars
WHERE launch_date IS NULL;

-- Select rows with condition using IS NOT keyword
SELECT * FROM cars
WHERE launch_date IS NOT NULL;