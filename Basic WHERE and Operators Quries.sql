USE sample_db;
SHOW TABLES;
-- Where clause and different type of operators
Select * from employees;
-- WHERE Clause
SELECT * FROM employees WHERE department_id = 1; -- Return employees data who are working in department Id 1

-- Conditional Operators

-- Equals to
SELECT * FROM employees WHERE department_id = 1; 

-- Not Equalsto
SELECT * FROM employees WHERE department_id != 1; 

-- Less than
SELECT * FROM employees WHERE salary < 50000; -- Returns the employee data whose salary is less than 50000/-

-- Greaterthan
SELECT * FROM employees WHERE salary > 90000; -- Return the employee data whose salary is greater than 90000/-

-- Greater than or Equal to
SELECT * FROM employees WHERE salary >= 90000; -- Return the employee data whose salary is greater than or equals 90000/-

-- Less tha or equal to
SELECT * FROM employees WHERE SALARY <= 50000; -- Return the employee data whose salary is LESS than OR EQUAL TO 50000/-

-- LOGICAL OPERATORS(AND, OR, NOT)

-- AND Operator
SELECT * FROM employees WHERE salary >= 5000 AND department_id = 2;	-- Returns the employee data whose salary is greater than or equal to 50000 and whose department id is 2

-- OR Operator
SELECT * FROM employees WHERE department_id = 2 OR department_id = 5; -- Returns the employee data whose department id is 2 or 5

-- NOT Operator
SELECT * FROM employees WHERE NOT department_id = 5; -- Return the employee data who are not in department id 5

-- Pattern Matching
SELECT * FROM employees WHERE last_name LIKE 'k%'; -- Return the employee data whose last name starts with letter 'k'

SELECT * FROM employees WHERE first_name LIKE '%ya'; -- Return the employee data whose first name ends with letter 'ya'

SELECT * FROM employees WHERE first_name LIKE 'P___a'; -- Return the employe data whose first name starts with p followed by two characters and ends with ya

-- Handling Missing Values (IS NULL, IS NOT NULL)
SELECT * FROM employees WHERE manager_id IS NULL; -- Returns the employee data whose manager id is null
SELECT * FROM employees WHERE department_id IS NOT NULL; -- Returns the employee data whose DEPARTMENT ID id is NOT null

