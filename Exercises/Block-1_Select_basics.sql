use sample_db;
-- BLOCK 1: SELECT Basics
-- 1. Select all colums from the employees table
SELECT * FROM employees;

-- 2. Select only first_name and last_name from Employees.
SELECT first_name, Last_name FROM employees;

-- 3. Select product_name and price from Products.
SELECT product_name, price FROM products;

-- 4. Select first_name from Employees and rename the column to Employee Name using an alias.
SELECT first_name AS 'Employee Name' FROM employees;

-- 5. Select department_name from Departments, aliased as Dept.
SELECT department_name AS dept FROM departments;

-- 6. Select all distinct department_id values from Employees.
SELECT DISTINCT department_id FROM employees;

-- 7. Select all distinct category values from Products.
SELECT DISTINCT category FROM products;

-- 8. Select all distinct country values from Customers.
SELECT DISTINCT country FROM customers;

-- 9. Select emp_id, salary, and a calculated column salary * 12 aliased as annual_salary.
SELECT emp_id, salary, salary * 12 AS Annual_salary FROM employees;

-- 10. Select customer_name and city, combined into one aliased column Location (concept only — you'll use CONCAT properly in Block 8; try a simple version now).
SELECT customer_name, city AS 'Location' FROM customers; -- Simple Version.