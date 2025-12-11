-- Explore all objects in the database
SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- Explore all columns in the database
SELECT * FROM INFORMATION_SCHEMA.COLUMNS;

-- Explore all columns in the database
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim.customers';
