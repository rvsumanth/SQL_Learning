-- BLOCK 2: WHERE Clause & Operators
-- 11. Find all employees with `salary` greater than 50000.
SELECT * FROM employees WHERE salary > 50000;

-- 12. Find all employees in `department_id` = 3.
SELECT * FROM employees WHERE department_id = 3;

-- 13. Find all products with `price` less than or equal to 500.
SELECT * FROM products WHERE price <= 500;

-- 14. Find all employees NOT in `department_id` = 2.
SELECT * FROM employees WHERE NOT department_id = 2;

-- 15. Find all employees with `salary` between 40000 and 80000.
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 80000;

-- 16. Find all employees whose `department_id` is either 1, 2, or 5 (use IN).
SELECT * FROM employees WHERE department_id IN (1,2,5);

-- 17. Find all customers from `country` = 'India' OR `country` = 'USA'.
SELECT * FROM customers WHERE country = 'India' OR country = 'USA';

-- 18. Find all products where `category` = 'Electronics' AND `price` > 1000.
SELECT * FROM products WHERE category = 'Electronics' AND price > 1000;

-- 19. Find all employees whose `first_name` starts with 'A' (use LIKE).
SELECT * FROM employees WHERE first_name LIKE 'A%';

-- 20. Find all employees whose `last_name` ends with 'n' (use LIKE).
SELECT * FROM employees WHERE last_name LIKE '%n';

-- 21. Find all employees whose `email` contains 'gmail'.
SELECT * FROM employees WHERE email LIKE '%gmail%';

-- 22. Find all employees where `manager_id` IS NULL.
SELECT * FROM EMPLOYEES WHERE manager_id IS NULL;

-- 23. Find all orders where `order_status` IS NOT NULL.
SELECT * FROM orders WHERE order_status IS NOT NULL;

-- 24. Find all employees with `salary` NOT between 30000 and 60000.
SELECT * FROM employees WHERE salary NOT BETWEEN 30000 AND 60000;

-- 25. Find all customers whose `city` is NOT 'Mumbai'.
SELECT * FROM customers WHERE NOT city = 'Mumbai';
-- OR
SELECT * FROM customers WHERE city != 'Mumbai';