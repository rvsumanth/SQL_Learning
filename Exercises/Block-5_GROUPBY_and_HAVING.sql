-- Block 5: GROUP BY & HAVING (Q51–Q65)
USE sample_db;

-- 51. Find the number of employees in each department.
SELECT department_id, COUNT(emp_id) AS "Employee Count" FROM employees GROUP BY department_id;

-- 52. Find the average salary per department.
SELECT department_id, AVG(salary) AS 'Average Salary' FROM employees GROUP BY department_id;

-- 53. Find the total salary paid per department.
SELECT department_id, SUM(salary) AS 'Total Salary' FROM employees GROUP BY department_id;

-- 54. Find the number of products in each category.
SELECT category, COUNT(product_id) FROM products GROUP BY category;  

-- 55. Find the average price of products per category.
SELECT category , AVG(price) AS 'AVERAGE PRICE' FROM products GROUP BY category; 

-- 56. Find the total quantity ordered per product (`product_id`).
SELECT product_id AS 'PRODUCT', SUM(quantity) AS 'TOTAL QUANTITY' FROM orders GROUP BY product_id ORDER BY product_id ASC; 

-- 57. Find the number of orders placed by each customer (`customer_id`).
SELECT customer_id, COUNT(order_id) AS 'ORDERS PLACED' FROM orders GROUP BY customer_id ORDER BY customer_id ASC;

-- 58. Find departments having more than 5 employees (use HAVING).
SELECT DEPARTMENT_ID AS DEPARTMENTS, COUNT(EMP_ID) AS 'NO OF EMPLOYEES' FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING COUNT(EMP_ID)>5;

-- 59. Find categories where the average product price is greater than 1000.
SELECT CATEGORY, AVG(PRICE) AS 'AVERAGE PRICE' FROM PRODUCTS GROUP BY CATEGORY HAVING AVG(PRICE)>1000;

-- 60. Find customers who placed more than 3 orders.
SELECT CUSTOMER_ID AS CUSTOMERS FROM ORDERS GROUP BY CUSTOMER_ID HAVING COUNT(ORDER_ID)>3;

-- 61. Find departments where the total salary exceeds 500000.
SELECT DEPARTMENT_ID AS DEPARTMENT FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING SUM(SALARY)>500000;

-- 62. Find product categories with more than 10 products.
SELECT CATEGORY FROM PRODUCTS GROUP BY CATEGORY HAVING COUNT(PRODUCT_ID)>10;

-- 63. Find the number of employees hired per year (group by year from `hire_date`) *********DOUBT.
SELECT YEAR(HIRE_DATE) AS 'YEAR', COUNT(EMP_ID) AS 'NUMBER OF EMPLOYEES' FROM EMPLOYEES GROUP BY YEAR(HIRE_DATE); 

-- 64. Find countries with more than 20 customers.
SELECT COUNTRY FROM CUSTOMERS GROUP BY COUNTRY HAVING COUNT(CUSTOMER_ID)>20;
SELECT COUNTRY, COUNT(CUSTOMER_ID) FROM CUSTOMERS GROUP BY COUNTRY; -- TO CHECK ACTUAL CUSTOMER COUNT ON EACH COUNTRY

-- 65. Find products (`product_id`) where total quantity ordered exceeds 100.
SELECT PRODUCT_ID AS 'PRODUCT' FROM ORDERS GROUP BY PRODUCT_ID HAVING COUNT(QUANTITY)>100;
SELECT PRODUCT_ID AS 'PRODUCT', COUNT(QUANTITY) AS 'QUANTITY' FROM ORDERS GROUP BY PRODUCT_ID ORDER BY PRODUCT_ID ASC ; -- TO CHECK EVERY PRODUCT AND ITS TOTAL QUANTITY
