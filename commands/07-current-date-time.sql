-- Set the database as current database for futher actions
USE learning_mysql;

-- Create a new table to store date, time and datetime
CREATE TABLE datetime_table (
	date_col DATE,
    time_col TIME,
    datetime_col DATETIME
);

-- Describe the table
DESC datetime_table;

-- Insert data into table
INSERT INTO datetime_table VALUES
(CURRENT_DATE() - 2, CURRENT_TIME() - 1, NOW() - 1),
(CURRENT_DATE() - 1, CURRENT_TIME() - 2, NOW() - 2),
(CURRENT_DATE(), CURRENT_TIME(), NOW()),
(CURRENT_DATE() + 1, CURRENT_TIME() + 1, NOW() + 1),
(CURRENT_DATE() + 2, CURRENT_TIME() + 2, NOW() + 2);

-- Select and view all the records from the table
SELECT * from datetime_table;

-- Drop the table
DROP TABLE datetime_table;