-- Drop titles table if it exists
DROP TABLE titles

-- Create titles table
CREATE TABLE titles (
	title_id VARCHAR(5),
	title VARCHAR(50)
);

-- Make sure tables were made properly
Select *
from titles;

-- Drop employees table if it exists
DROP TABLE employees

-- Create employees table with foreign key as the emp_title_id
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Make sure tables were made properly
select *
from employees;

-- Drop salaries table if it exists
DROP TABLE salaries

-- Create salaries table with the foreign key as the employee_n0
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Make sure tables were made successfully
select *
from salaries;

-- Drop department_name table if it exists
DROP TABLE departments

-- Create departments table
CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(30)
);

-- Make sure that table was successfully generated
select *
from departments;

-- Drop dept_emp table if it exists already
DROP TABLE dept_emp

-- Create dept_emp table with emp_no and dept_no as composite keys
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(4),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Double check that the tables were created successfully
select *
from dept_emp;

-- Drop dept_manager table if it exists
DROP TABLE dept_manager

-- Create department_manager table with emp_no and dept_no as composite keys (again)
CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES department_name(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Make sure that tables were made properly
select *
from department_manager;
