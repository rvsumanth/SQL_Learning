-- ============================================================
-- SQL Basics Practice — Sample Data
-- Matches the schema used in SQL_100_Practice_Questions.md
-- Works on MySQL / PostgreSQL / SQLite (minor syntax tweaks may
-- be needed for AUTO_INCREMENT vs SERIAL depending on your DB)
-- ============================================================

-- ------------------------------------------------------------
-- TABLE STRUCTURE
-- ------------------------------------------------------------

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Departments (
    department_id   INT PRIMARY KEY,
    department_name VARCHAR(50),
    location        VARCHAR(50)
);

CREATE TABLE Employees (
    emp_id         INT PRIMARY KEY,
    first_name     VARCHAR(50),
    last_name      VARCHAR(50),
    department_id  INT,
    salary         INT,
    hire_date      DATE,
    manager_id     INT,
    email          VARCHAR(100)
);

CREATE TABLE Products (
    product_id     INT PRIMARY KEY,
    product_name   VARCHAR(100),
    category       VARCHAR(50),
    price          INT,
    stock_quantity INT
);

CREATE TABLE Customers (
    customer_id    INT PRIMARY KEY,
    customer_name  VARCHAR(100),
    city           VARCHAR(50),
    country        VARCHAR(50),
    signup_date    DATE
);

CREATE TABLE Orders (
    order_id       INT PRIMARY KEY,
    customer_id    INT,
    product_id     INT,
    order_date     DATE,
    quantity       INT,
    order_status   VARCHAR(20)
);

-- ------------------------------------------------------------
-- DEPARTMENTS (6 rows)
-- ------------------------------------------------------------

INSERT INTO Departments (department_id, department_name, location) VALUES
(1, 'Engineering', 'Hyderabad'),
(2, 'Sales', 'Mumbai'),
(3, 'Marketing', 'Bangalore'),
(4, 'HR', 'Delhi'),
(5, 'Finance', 'Chennai'),
(6, 'Support', 'Pune');

-- ------------------------------------------------------------
-- EMPLOYEES (30 rows) — includes manager_id self-references
-- ------------------------------------------------------------

INSERT INTO Employees (emp_id, first_name, last_name, department_id, salary, hire_date, manager_id, email) VALUES
(1,  'Aditya',  'Sharma',     1, 95000,  '2019-03-15', NULL, 'aditya.sharma@gmail.com'),
(2,  'Ananya',  'Rao',        1, 72000,  '2020-06-01', 1,    'ananya.rao@gmail.com'),
(3,  'Arjun',   'Mehta',      1, 68000,  '2021-01-10', 1,    'arjun.mehta@yahoo.com'),
(4,  'Aakash',  'Verma',      1, 55000,  '2022-05-20', 2,    'aakash.verma@gmail.com'),
(5,  'Bhavna',  'Iyer',       2, 85000,  '2019-07-23', NULL, 'bhavna.iyer@gmail.com'),
(6,  'Chetan',  'Nair',       2, 60000,  '2020-11-05', 5,    'chetan.nair@yahoo.com'),
(7,  'Divya',   'Kapoor',     2, 58000,  '2021-08-14', 5,    'divya.kapoor@gmail.com'),
(8,  'Esha',    'Malhotra',   2, 47000,  '2023-02-01', 6,    'esha.malhotra@outlook.com'),
(9,  'Farhan',  'Ali',        3, 78000,  '2019-09-09', NULL, 'farhan.ali@gmail.com'),
(10, 'Gauri',   'Deshpande',  3, 64000,  '2020-03-18', 9,    'gauri.deshpande@gmail.com'),
(11, 'Harsh',   'Patel',      3, 51000,  '2022-07-25', 9,    'harsh.patel@yahoo.com'),
(12, 'Isha',    'Bose',       3, 49500,  '2023-04-11', 10,   'isha.bose@gmail.com'),
(13, 'Jatin',   'Chawla',     4, 90000,  '2018-12-01', NULL, 'jatin.chawla@gmail.com'),
(14, 'Kavya',   'Reddy',      4, 62000,  '2021-02-20', 13,   'kavya.reddy@gmail.com'),
(15, 'Lakshay', 'Sethi',      4, 45000,  '2023-06-30', 13,   'lakshay.sethi@outlook.com'),
(16, 'Meera',   'Joshi',      5, 99000,  '2019-01-05', NULL, 'meera.joshi@gmail.com'),
(17, 'Nikhil',  'Bansal',     5, 71000,  '2020-09-12', 16,   'nikhil.bansal@gmail.com'),
(18, 'Ojas',    'Trivedi',    5, 53000,  '2021-11-22', 16,   'ojas.trivedi@yahoo.com'),
(19, 'Priya',   'Nambiar',    5, 48000,  '2022-10-03', 17,   'priya.nambiar@gmail.com'),
(20, 'Rohan',   'Kulkarni',   6, 56000,  '2020-04-17', NULL, 'rohan.kulkarni@gmail.com'),
(21, 'Sana',    'Khan',       6, 44000,  '2021-06-09', 20,   'sana.khan@outlook.com'),
(22, 'Tarun',   'Ghosh',      6, 39000,  '2023-01-15', 20,   'tarun.ghosh@gmail.com'),
(23, 'Uma',     'Pillai',     1, 61000,  '2022-02-28', 2,    'uma.pillai@gmail.com'),
(24, 'Varun',   'Saxena',     2, 67000,  '2021-05-05', 5,    'varun.saxena@yahoo.com'),
(25, 'Wafa',    'Sheikh',     3, 52000,  '2023-08-19', 9,    'wafa.sheikh@gmail.com'),
(26, 'Xavier',  'Dsouza',     4, 58000,  '2022-12-12', 13,   'xavier.dsouza@gmail.com'),
(27, 'Yamini',  'Rajan',      5, 74000,  '2020-07-07', 16,   'yamini.rajan@gmail.com'),
(28, 'Zoya',    'Ahmed',      6, 41000,  '2024-01-10', 20,   'zoya.ahmed@outlook.com'),
(29, 'Aman',    'Gupta',      1, 105000, '2018-05-01', NULL, 'aman.gupta@gmail.com'),
(30, 'Neha',    'Singh',      2, 112000, '2017-11-11', NULL, 'neha.singh@gmail.com');

-- ------------------------------------------------------------
-- PRODUCTS (25 rows) — 5 categories
-- ------------------------------------------------------------

INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES
(1,  'Wireless Mouse',        'Electronics', 599,   150),
(2,  'Mechanical Keyboard',   'Electronics', 2499,  80),
(3,  '27-inch Monitor',       'Electronics', 15999, 40),
(4,  'USB-C Hub',             'Electronics', 1299,  100),
(5,  'Bluetooth Speaker',     'Electronics', 1999,  60),
(6,  'Office Chair',          'Furniture',   7999,  35),
(7,  'Standing Desk',         'Furniture',   18999, 20),
(8,  'Bookshelf',             'Furniture',   4999,  25),
(9,  'Filing Cabinet',        'Furniture',   6499,  15),
(10, 'Desk Lamp',             'Furniture',   899,   90),
(11, 'Notebook Pack',         'Stationery',  149,   500),
(12, 'Ballpoint Pens (Box)',  'Stationery',  99,    400),
(13, 'Sticky Notes',          'Stationery',  59,    600),
(14, 'Whiteboard Markers',    'Stationery',  129,   300),
(15, 'A4 Paper Ream',         'Stationery',  249,   250),
(16, 'Men''s T-Shirt',        'Clothing',    499,   200),
(17, 'Women''s Jacket',       'Clothing',    2499,  90),
(18, 'Running Shoes',         'Clothing',    3499,  70),
(19, 'Formal Shirt',          'Clothing',    1299,  120),
(20, 'Winter Sweater',        'Clothing',    1799,  60),
(21, 'Basmati Rice 5kg',      'Grocery',     599,   300),
(22, 'Olive Oil 1L',          'Grocery',     799,   150),
(23, 'Green Tea Pack',        'Grocery',     349,   220),
(24, 'Almonds 500g',          'Grocery',     649,   180),
(25, 'Organic Honey',         'Grocery',     449,   140);

-- ------------------------------------------------------------
-- CUSTOMERS (25 rows)
-- ------------------------------------------------------------

INSERT INTO Customers (customer_id, customer_name, city, country, signup_date) VALUES
(1,  'Ravi Kumar',      'Mumbai',      'India',      '2021-01-15'),
(2,  'Sneha Patil',     'Pune',        'India',      '2021-03-22'),
(3,  'John Smith',      'New York',    'USA',        '2020-11-05'),
(4,  'Emily Davis',     'Chicago',     'USA',        '2021-06-18'),
(5,  'Wei Chen',        'Shanghai',    'China',      '2022-02-10'),
(6,  'Yuki Tanaka',     'Tokyo',       'Japan',      '2021-09-30'),
(7,  'Ahmed Hassan',    'Cairo',       'Egypt',      '2022-05-14'),
(8,  'Maria Garcia',    'Madrid',      'Spain',      '2020-08-01'),
(9,  'Liam O''Brien',   'Dublin',      'Ireland',    '2023-01-20'),
(10, 'Priya Menon',     'Bangalore',   'India',      '2021-04-11'),
(11, 'David Miller',    'London',      'UK',         '2022-07-25'),
(12, 'Sara Ahmed',      'Dubai',       'UAE',        '2023-03-09'),
(13, 'Carlos Silva',    'Sao Paulo',   'Brazil',     '2021-12-02'),
(14, 'Anna Kowalski',   'Warsaw',      'Poland',     '2022-10-17'),
(15, 'Rahul Verma',     'Delhi',       'India',      '2020-06-27'),
(16, 'Sophie Martin',   'Paris',       'France',     '2021-08-08'),
(17, 'Tom Wilson',      'Sydney',      'Australia',  '2022-01-30'),
(18, 'Neha Joshi',      'Hyderabad',   'India',      '2023-05-05'),
(19, 'Michael Brown',   'Toronto',     'Canada',     '2021-02-14'),
(20, 'Lisa Wong',       'Singapore',   'Singapore',  '2022-09-19'),
(21, 'Arjun Nair',      'Chennai',     'India',      '2020-12-25'),
(22, 'Emma Wilson',     'Manchester',  'UK',         '2023-07-01'),
(23, 'Ivan Petrov',     'Moscow',      'Russia',     '2021-11-11'),
(24, 'Fatima Ali',      'Karachi',     'Pakistan',   '2022-04-03'),
(25, 'Grace Lee',       'Seoul',       'South Korea','2020-03-16');

-- ------------------------------------------------------------
-- ORDERS (60 rows)
-- Note: customers 23, 24, 25 have NO orders (useful for Q84)
-- Note: products 20 (Winter Sweater) and 25 (Organic Honey)
--       are NEVER ordered (useful for Q73, Q87)
-- ------------------------------------------------------------

INSERT INTO Orders (order_id, customer_id, product_id, order_date, quantity, order_status) VALUES
(1,  1,  1,  '2023-01-05', 2,  'Delivered'),
(2,  1,  11, '2023-01-06', 5,  'Delivered'),
(3,  2,  3,  '2023-01-10', 1,  'Delivered'),
(4,  2,  6,  '2023-01-12', 1,  'Pending'),
(5,  3,  2,  '2023-01-15', 1,  'Delivered'),
(6,  3,  16, '2023-01-16', 3,  'Shipped'),
(7,  4,  4,  '2023-01-20', 2,  'Delivered'),
(8,  4,  21, '2023-01-21', 4,  'Delivered'),
(9,  5,  5,  '2023-02-01', 1,  'Cancelled'),
(10, 5,  17, '2023-02-02', 1,  'Delivered'),
(11, 6,  7,  '2023-02-05', 1,  'Delivered'),
(12, 6,  12, '2023-02-06', 10, 'Delivered'),
(13, 7,  8,  '2023-02-10', 1,  'Pending'),
(14, 7,  22, '2023-02-11', 3,  'Delivered'),
(15, 8,  9,  '2023-02-15', 1,  'Delivered'),
(16, 8,  13, '2023-02-16', 8,  'Shipped'),
(17, 9,  10, '2023-02-20', 2,  'Delivered'),
(18, 9,  18, '2023-02-21', 1,  'Delivered'),
(19, 10, 1,  '2023-03-01', 3,  'Delivered'),
(20, 10, 23, '2023-03-02', 5,  'Delivered'),
(21, 11, 2,  '2023-03-05', 1,  'Cancelled'),
(22, 11, 19, '2023-03-06', 2,  'Delivered'),
(23, 12, 3,  '2023-03-10', 1,  'Delivered'),
(24, 12, 24, '2023-03-11', 4,  'Delivered'),
(25, 13, 4,  '2023-03-15', 2,  'Pending'),
(26, 13, 14, '2023-03-16', 6,  'Delivered'),
(27, 14, 5,  '2023-03-20', 1,  'Delivered'),
(28, 14, 15, '2023-03-21', 3,  'Delivered'),
(29, 15, 6,  '2023-04-01', 1,  'Delivered'),
(30, 15, 1,  '2023-04-02', 4,  'Shipped'),
(31, 16, 7,  '2023-04-05', 1,  'Delivered'),
(32, 16, 11, '2023-04-06', 10, 'Delivered'),
(33, 17, 8,  '2023-04-10', 1,  'Pending'),
(34, 17, 12, '2023-04-11', 15, 'Delivered'),
(35, 18, 9,  '2023-04-15', 1,  'Delivered'),
(36, 18, 13, '2023-04-16', 7,  'Delivered'),
(37, 19, 10, '2023-04-20', 2,  'Cancelled'),
(38, 19, 16, '2023-04-21', 2,  'Delivered'),
(39, 20, 1,  '2023-05-01', 2,  'Delivered'),
(40, 20, 21, '2023-05-02', 6,  'Delivered'),
(41, 21, 2,  '2023-05-05', 1,  'Delivered'),
(42, 21, 22, '2023-05-06', 4,  'Shipped'),
(43, 1,  3,  '2023-05-10', 1,  'Delivered'),
(44, 2,  4,  '2023-05-11', 2,  'Delivered'),
(45, 3,  17, '2023-05-15', 1,  'Pending'),
(46, 4,  18, '2023-05-16', 1,  'Delivered'),
(47, 5,  19, '2023-05-20', 1,  'Delivered'),
(48, 6,  1,  '2023-06-01', 3,  'Delivered'),
(49, 7,  11, '2023-06-02', 8,  'Delivered'),
(50, 8,  6,  '2023-06-05', 1,  'Cancelled'),
(51, 9,  7,  '2023-06-06', 1,  'Delivered'),
(52, 10, 8,  '2023-06-10', 1,  'Delivered'),
(53, 11, 9,  '2023-06-11', 2,  'Delivered'),
(54, 12, 12, '2023-06-15', 20, 'Delivered'),
(55, 13, 13, '2023-06-16', 5,  'Shipped'),
(56, 14, 1,  '2023-06-20', 2,  'Delivered'),
(57, 15, 21, '2023-06-21', 3,  'Delivered'),
(58, 16, 22, '2023-07-01', 2,  'Delivered'),
(59, 17, 23, '2023-07-02', 4,  'Pending'),
(60, 18, 24, '2023-07-05', 3,  'Delivered');
