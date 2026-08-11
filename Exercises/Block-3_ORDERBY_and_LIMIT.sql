-- Block 3: ORDER BY & LIMIT (Q26–Q35)
USE sample_db;
SHOW TABLES;
-- 26. List all employees ordered by `salary` in descending order.
SELECT * FROM employees ORDER BY salary DESC;

-- 27. List all products ordered by `price` in ascending order.
SELECT * FROM products ORDER BY price ASC;

-- 28. List all customers ordered by `signup_date`, newest first.
SELECT * FROM customers ORDER BY signup_date DESC;

-- 29. List all employees ordered by `department_id` ascending, then `salary` descending.
SELECT * FROM employees ORDER BY department_id ASC, salary DESC;

-- 30. List the top 5 highest paid employees.
SELECT first_name, department_id, salary FROM employees ORDER BY salary DESC LIMIT 5;

-- 31. List the 3 cheapest products.
SELECT product_id, product_name, price FROM products ORDER BY price ASC LIMIT 3;

-- 32. List all orders sorted by `order_date` descending, limited to 10 rows.
SELECT * FROM orders ORDER BY order_date DESC LIMIT 10;

-- 33. List all employees with `salary` > 40000, ordered by `first_name` alphabetically.
SELECT first_name, last_name, salary FROM employees  WHERE salary > 40000 ORDER BY first_name ASC;

-- 34. List the top 3 employees by `hire_date` (earliest hired first).
SELECT first_name, department_id, hire_date FROM employees ORDER BY hire_date DESC LIMIT 3;

-- 35. List all products in category 'Electronics', ordered by `price` descending, limited to 5.
SELECT product_id, product_name, category, price FROM products WHERE category = 'Electronics' ORDER BY price DESC LIMIT 5;
