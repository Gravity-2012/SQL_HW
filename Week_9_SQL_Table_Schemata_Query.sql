-- create a table for departments
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR(30)
);

-- test to see if departments.csv successfully imported
SELECT *
FROM departments;


-- create a table for dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

-- test to see if dept_emp.csv successfully imported
SELECT *
FROM dept_emp;


-- create a table for dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT PRIMARY KEY,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

-- test to see if dept_emp.csv successfully imported
SELECT *
FROM dept_manager;


-- create a table for employees
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(5) NOT NULL,
	hire_date DATE NOT NULL
);

-- test to see if employees.csv successfully imported
SELECT *
FROM employees;


-- create a table for salaries
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

-- test to see if salaries.csv successfully imported
SELECT *
FROM salaries;


-- create a table for titles
CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR(30) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

-- test to see if titles.csv successfully imported
SELECT *
FROM titles;