-- List all the available databases
SHOW DATABASES;

-- Create new database
CREATE DATABASE learning_mysql;

-- Try creating a new database with same name
CREATE DATABASE learning_mysql;

-- Drop an existing database
DROP DATABASE learning_mysql;

-- Try dropping and non-existing database
DROP DATABASE learning_mysql;

-- Recreate the database for further actions
CREATE DATABASE learning_mysql;

-- Alter database to set the mode to read only
ALTER DATABASE learning_mysql READ ONLY = 1;

-- Try dropping the database in read only mode
DROP DATABASE learning_mysql;

-- Set the database back to the default mode
ALTER DATABASE learning_mysql READ ONLY = 0;

-- Set the database as current database for futher actions
USE learning_mysql;