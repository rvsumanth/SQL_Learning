SHOW DATABASES;
USE sql_practice;
SHOW TABLES;
-- DDL Commads

-- CREATE Command
CREATE TABLE details(
	id INT,
    name VARCHAR(50),
    age INT
);

-- ALTER Command
ALTER TABLE details ADD COLUMN ( 
				address VARCHAR(50)
                );

-- RENAME Command
RENAME TABLE details TO employee_details;

-- TRUNCATE Command
INSERT INTO employee_details VALUES (1, 'Sumanth', 22, 'India');
SELECT * FROM EMPLOYEE_DETAILS;
TRUNCATE TABLE employee_details;

-- DROP Command
DROP TABLE employee_details;
SHOW TABLES;



                









