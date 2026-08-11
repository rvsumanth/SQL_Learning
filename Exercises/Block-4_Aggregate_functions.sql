-- Block 4: Aggregate Functions (Q36–Q50)
USE  sample_db;
-- 36. Count the total number of employees.
SELECT COUNT(*) AS 'TOTAL NO OF EMPLOYEES' FROM employees;

-- 37. Count the total number of products.
SELECT COUNT(*) AS 'TOTAL NO OF PRODUCTS' FROM products;

-- 38. Find the total (sum) of all employee salaries.
SELECT SUM(salary) AS 'TOTAL SUM OF SALARIES' FROM employees;

-- 39. Find the average salary of all employees.
SELECT AVG(salary) as 'AVERAGE SALARY' FROM employees;

-- 40. Find the minimum salary in the `Employees` table.
SELECT MIN(salary) AS 'MINIMUM SALARY' FROM employees;

-- 41. Find the maximum salary in the `Employees` table.
select max(salary) as 'maximum salary' from employees;

-- 42. Find the average price of all products.
SELECT AVG(price) AS 'AVERAGE PRICE' FROM  products;

-- 43. Count how many employees have `salary` greater than 50000.
SELECT COUNT(first_name) AS 'NO OF EMPLOYEES' FROM employees WHERE salary > 50000; 

-- 44. Find the total quantity ordered across all `Orders`.
SELECT SUM(quantity) AS 'TOTAL QUANTITY' FROM orders;

-- 45. Find the highest priced product in category 'Furniture'.
SELECT MAX(price) AS 'HEIGHEST PRICED PRODUCT' FROM  products WHERE category = 'Furniture';

-- 46. Find the lowest priced product in category 'Electronics'.
SELECT MIN(price) as 'minimum price' from products where category = 'Electronics';

-- 47. Count how many distinct departments exist in `Employees`.
SELECT COUNT(DISTINCT department_id) AS 'DISTINCT DEPARMENTS' FROM	employees;

-- 48. Count how many distinct countries exist in `Customers`.
SELECT COUNT(DISTINCT country) AS 'COUNT OF DICTINCT COUNTRIES' FROM customers;

-- 49. Find the average salary of employees hired after '2022-01-01'.
SELECT AVG(salary) AS 'AVERAGE SALARY' FROM  employees WHERE hire_date >= '2022-01-01';

-- 50. Find the total number of orders placed with `order_status` = 'Delivered'
SELECT COUNT(ORDER_ID) AS 'TOTAL NO OF ORDERS PLACED' FROM orders WHERE order_status = 'Delivered';

