# SQL Basics — 100 Practice Questions

Use this alongside the revision schedule (10:55 AM – 1:00 PM). Questions are grouped in the same order you'll study the topics, so solve each block right after learning that concept.

## Sample Schema (use this for all questions)

```sql
Employees (emp_id, first_name, last_name, department_id, salary, hire_date, manager_id, email)
Departments (department_id, department_name, location)
Products (product_id, product_name, category, price, stock_quantity)
Orders (order_id, customer_id, product_id, order_date, quantity, order_status)
Customers (customer_id, customer_name, city, country, signup_date)
```

---

## Block 1: SELECT Basics (Q1–Q10)

1. Select all columns from the `Employees` table.
2. Select only `first_name` and `last_name` from `Employees`.
3. Select `product_name` and `price` from `Products`.
4. Select `first_name` from `Employees` and rename the column to `Employee Name` using an alias.
5. Select `department_name` from `Departments`, aliased as `Dept`.
6. Select all distinct `department_id` values from `Employees`.
7. Select all distinct `category` values from `Products`.
8. Select all distinct `country` values from `Customers`.
9. Select `emp_id`, `salary`, and a calculated column `salary * 12` aliased as `annual_salary`.
10. Select `customer_name` and `city`, combined into one aliased column `Location` (concept only — you'll use CONCAT properly in Block 8; try a simple version now).

## Block 2: WHERE Clause & Operators (Q11–Q25)

11. Find all employees with `salary` greater than 50000.
12. Find all employees in `department_id` = 3.
13. Find all products with `price` less than or equal to 500.
14. Find all employees NOT in `department_id` = 2.
15. Find all employees with `salary` between 40000 and 80000.
16. Find all employees whose `department_id` is either 1, 2, or 5 (use IN).
17. Find all customers from `country` = 'India' OR `country` = 'USA'.
18. Find all products where `category` = 'Electronics' AND `price` > 1000.
19. Find all employees whose `first_name` starts with 'A' (use LIKE).
20. Find all employees whose `last_name` ends with 'n' (use LIKE).
21. Find all employees whose `email` contains 'gmail'.
22. Find all employees where `manager_id` IS NULL.
23. Find all orders where `order_status` IS NOT NULL.
24. Find all employees with `salary` NOT between 30000 and 60000.
25. Find all customers whose `city` is NOT 'Mumbai'.

## Block 3: ORDER BY & LIMIT (Q26–Q35)

26. List all employees ordered by `salary` in descending order.
27. List all products ordered by `price` in ascending order.
28. List all customers ordered by `signup_date`, newest first.
29. List all employees ordered by `department_id` ascending, then `salary` descending.
30. List the top 5 highest paid employees.
31. List the 3 cheapest products.
32. List all orders sorted by `order_date` descending, limited to 10 rows.
33. List all employees with `salary` > 40000, ordered by `first_name` alphabetically.
34. List the top 3 employees by `hire_date` (earliest hired first).
35. List all products in category 'Electronics', ordered by `price` descending, limited to 5.

## Block 4: Aggregate Functions (Q36–Q50)

36. Count the total number of employees.
37. Count the total number of products.
38. Find the total (sum) of all employee salaries.
39. Find the average salary of all employees.
40. Find the minimum salary in the `Employees` table.
41. Find the maximum salary in the `Employees` table.
42. Find the average price of all products.
43. Count how many employees have `salary` greater than 50000.
44. Find the total quantity ordered across all `Orders`.
45. Find the highest priced product in category 'Furniture'.
46. Find the lowest priced product in category 'Electronics'.
47. Count how many distinct departments exist in `Employees`.
48. Count how many distinct countries exist in `Customers`.
49. Find the average salary of employees hired after '2022-01-01'.
50. Find the total number of orders placed with `order_status` = 'Delivered'.

## Block 5: GROUP BY & HAVING (Q51–Q65)

51. Find the number of employees in each department.
52. Find the average salary per department.
53. Find the total salary paid per department.
54. Find the number of products in each category.
55. Find the average price of products per category.
56. Find the total quantity ordered per product (`product_id`).
57. Find the number of orders placed by each customer (`customer_id`).
58. Find departments having more than 5 employees (use HAVING).
59. Find categories where the average product price is greater than 1000.
60. Find customers who placed more than 3 orders.
61. Find departments where the total salary exceeds 500000.
62. Find product categories with more than 10 products.
63. Find the number of employees hired per year (group by year from `hire_date`).
64. Find countries with more than 20 customers.
65. Find products (`product_id`) where total quantity ordered exceeds 100.

## Block 6: JOINS (Q66–Q80)

66. List all employees along with their department names (INNER JOIN `Employees` and `Departments`).
67. List all employees and their department location.
68. List all orders along with the customer name who placed them.
69. List all orders along with the product name ordered.
70. List all employees along with their manager's name (self-join on `Employees`).
71. List all departments and the count of employees in each (JOIN + GROUP BY).
72. List all customers and their orders, including customers with NO orders (LEFT JOIN).
73. List all products and their order quantities, including products never ordered (LEFT JOIN).
74. List all departments and their employees, including departments with NO employees (LEFT JOIN).
75. List all employees along with department name, only for departments located in 'Hyderabad'.
76. List customer name, order date, and product name for every order (3-table JOIN).
77. List all employees who work in the same department as employee with `emp_id` = 101 (self-join or subquery).
78. Find employees who earn more than their manager (self-join).
79. List all orders with customer name and order status, sorted by order date descending.
80. List department name along with the average salary of employees in that department (JOIN + GROUP BY).

## Block 7: Subqueries (Q81–Q90)

81. Find employees whose salary is greater than the average salary of all employees.
82. Find employees who work in the department with the highest total salary.
83. Find products priced above the average price of all products.
84. Find customers who have never placed an order (use NOT IN or subquery).
85. Find the employee(s) with the highest salary using a subquery in WHERE.
86. Find all orders placed by customers located in 'Mumbai' (subquery on `Customers`).
87. Find products that have never been ordered (use NOT IN with subquery on `Orders`).
88. Find departments that have at least one employee earning more than 100000 (use EXISTS).
89. Find the second highest salary among employees (subquery approach).
90. Find customers who placed more orders than the average number of orders per customer.

## Block 8: String & Date Functions (Q91–Q100)

91. Display all employee `first_name` values in uppercase.
92. Display all employee `last_name` values in lowercase.
93. Concatenate `first_name` and `last_name` into a single column called `full_name`.
94. Find the length of each `product_name`.
95. Extract the first 3 characters of each `customer_name`.
96. Find all employees hired in the year 2023 (use YEAR() or equivalent on `hire_date`).
97. Find all orders placed in the month of January (any year).
98. Calculate how many days each employee has worked (current date minus `hire_date`).
99. Find all customers who signed up in the last 30 days (use `signup_date`).
100. Format and display each employee's `hire_date` as just the year (e.g., 2023).

---

**Tip for the last 15 minutes (12:45–1:00):** Don't attempt all 100 again — randomly pick 2–3 from each block and solve them without looking at the concept notes. That's the fastest way to check what's actually retained.
