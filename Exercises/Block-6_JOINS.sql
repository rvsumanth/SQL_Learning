-- Block 6: JOINS (Q66–Q80)
USE SAMPLE_DB;

-- 66. List all employees along with their department names (INNER JOIN `Employees` and `Departments`).
SELECT e.first_name AS 'Employee name',
	   d.department_name AS 'Department'
FROM employees e
INNER JOIN DEPARTMENTS d
ON e.department_id = d.department_id;

-- 67. List all employees and their department location.
SELECT emp.first_name AS 'Employee Name',
	   dept.location AS 'Deparment Location'
FROM employees emp
INNER JOIN departments dept
ON emp.department_id = dept.department_id;

-- 68. List all orders along with the customer name who placed them.
SELECT cust.customer_name AS 'Customer Name',
	   prod.product_name AS 'Ordered'	
FROM orders ord
INNER JOIN customers cust
ON ord.customer_id = cust.customer_id
INNER JOIN products prod
ON ord.product_id = prod.product_id;

-- 69. List all orders along with the product name ordered.
SELECT ord.order_id AS 'Order Id',
	   prd.product_name AS 'Product Name'
FROM orders ord
JOIN PRODUCTS prd
ON ord.product_id = prd.product_id;

-- 70. List all employees along with their manager's name (self-join on `Employees`).
SELECT emp.first_name AS 'Employee Name',
	   mang.first_name AS 'Manager Name'
FROM employees emp
LEFT JOIN employees mang
ON emp.manager_id = mang.emp_id;

-- 71. List all departments and the count of employees in each (JOIN + GROUP BY).
SELECT dept.department_name AS 'Department Name',
	   COUNT(emp.emp_id) AS 'No Of Employees'
FROM employees emp
JOIN departments dept
ON emp.department_id = dept.department_id
GROUP BY dept.department_name;

-- 72. List all customers and their orders, including customers with NO orders (LEFT JOIN).
SELECT 	cust.customer_name AS 'Customer Name',
		prod.product_name AS 'Ordered Product'
FROM customers cust
LEFT JOIN orders ord
ON cust.customer_id = ord.customer_id
JOIN products prod
ON prod.product_id  = ord.product_id;

-- 73. List all products and their order quantities, including products never ordered (LEFT JOIN).
SELECT prod.product_name AS 'Product Name',
	   ord.quantity AS 'Quantity'	
FROM products prod
LEFT JOIN orders ord
ON prod.product_id = ord.product_id;

-- 74. List all departments and their employees, including departments with NO employees (LEFT JOIN).
SELECT  emp.first_name AS 'Employee name',
		dept.department_name AS 'Department'
FROM departments dept
LEFT JOIN employees emp
ON emp.department_id = dept.department_id;

-- 75. List all employees along with department name, only for departments located in 'Hyderabad'.
SELECT 	emp.first_name AS 'Employee Name',
		dept.department_name AS 'Department Name',
        dept.location AS 'Location'
FROM employees emp
LEFT JOIN departments dept
ON emp.department_id = dept.department_id
WHERE dept.location = 'Hyderabad';

-- 76. List customer name, order date, and product name for every order (3-table JOIN).
SELECT 	cust.customer_name AS 'Customer Name',
		ord.order_date AS 'Date of Order',
        prod.product_name AS 'Product Name'
FROM orders ord
LEFT JOIN customers cust
ON ord.customer_id = cust.customer_id
JOIN products prod
ON ord.product_id = prod.product_id;

-- 77. List all employees who work in the same department as employee with `emp_id` = 101 (self-join or subquery).

-- 78. Find employees who earn more than their manager (self-join).
SELECT 	emp.first_name AS 'Employee Name',
		manager.first_name AS 'Manager Name',
        emp.salary AS 'Salary'
FROM employees emp
LEFT JOIN employees manager
ON emp.manager_id = manager.emp_id
where emp.salary > manager.salary;

-- 79. List all orders with customer name and order status, sorted by order date descending.
SELECT 	cust.customer_name AS "Customer Name",
		ord.order_date AS "Order date",
        ord.order_status AS "Order Status"
FROM orders ord
LEFT JOIN customers cust
ON ord.customer_id = cust.customer_id
ORDER BY ord.order_date DESC;

-- 80. List department name along with the average salary of employees in that department (JOIN + GROUP BY).
SELECT 	dept.department_name AS 'Department Name', 
		AVG(emp.salary) AS 'Average salary'
FROM employees emp
JOIN departments dept
ON emp.department_id = dept.department_id
GROUP BY dept.department_name;


