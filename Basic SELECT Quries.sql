use sample_db;
show tables;
-- BASIC SELECT OPERATIONS

-- Retriving all data from table employees 
SELECT * FROM employees;

-- Rename colum Alias
SELECT first_name AS Name FROM employees;

-- Retriving Unique elements [Distinct departments in employees]
SELECT DISTINCT department_id AS "Department ID's" FROM employees;

-- Arthematic Operations
SELECT 
product_name AS PRODUCT,
price AS "Original Price",
price * 1.16 AS "Price with tax"
FROM products;

-- Hard coded values
SELECT 
first_name AS Name,
"Active" AS Status
FROM employees;
