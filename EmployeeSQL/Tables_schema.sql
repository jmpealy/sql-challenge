--Create titles table
CREATE TABLE titles (
title_id VARCHAR(5) PRIMARY KEY,
title VARCHAR(25) NOT NULL);
  
--check that data was imported properly
SELECT * 
FROM titles;

--Create departments table
CREATE TABLE departments (
dept_no VARCHAR(5) PRIMARY KEY,
dept_name VARCHAR(25) NOT NULL);
  
--check that data was imported properly
SELECT * 
FROM titles;

--Create Employees table
CREATE TABLE employees(
emp_no INT,
emp_title_id VARCHAR(10) NOT NULL,
birth_date VARCHAR(10) NOT NULL,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
sex VARCHAR(5) NOT NULL,
hire_date VARCHAR(10) NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

--check that data was imported properly
SELECT * 
from employees;

--Create salaries table
CREATE TABLE salaries (
emp_no INT PRIMARY KEY,
salary INT,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

--check that the data was imported properly
SELECT *
FROM salaries

--Create dept_emp junction table
CREATE TABLE dept_emp (
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR(5) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

--check that the data was imported properly
SELECT *
FROM dept_emp

--Create dept_manager junction table
CREATE TABLE dept_manager (
dept_no VARCHAR(5) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no  INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

--check that the data was imported properly
SELECT *
FROM dept_manager