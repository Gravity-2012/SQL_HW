-- Question 1) Detail of each Employee
-- INNER Join employees and salries table on emp_no. Sort by emp_no, ASC.
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	e.gender,
	s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY e.emp_no ASC;

-- Question 2) Employees hired in 1986
-- Use WHERE clause to find employees hired in 1986
SELECT emp_no,
	last_name,
	first_name,
	birth_date,
	gender,
	hire_date
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31';

-- Question 3) Manager of each department
-- INNER JOIN dept_manager table with departments with employees with salaries
-- Question was a little vague on the start and end employment date
-- For this query I used start and end employment date from salaries and not start and end from the dept_manager table
SELECT dm.dept_no,
	dep.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name,
	s.from_date,
	s.to_date
FROM dept_manager dm
INNER JOIN departments dep ON dm.dept_no = dep.dept_no
INNER JOIN employees e ON dm.emp_no = e.emp_no
INNER JOIN salaries s ON dm.emp_no = s.emp_no
ORDER BY dm.dept_no;

-- Question 4) Department of each employee
-- INNER JOIN dept_emp table with employees and departments
SELECT dm.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp dm
INNER JOIN employees e ON dm.emp_no = e.emp_no
INNER JOIN departments d ON dm.dept_no = d.dept_no;

-- Question 5) All employees whose first name is "Hercules" and last name begin with "B"
-- Use the '=' to find Hercules
-- Use the Like 'B%' to find all names that begin with 'B'
SELECT emp_no,
	first_name,
	last_name,
	birth_date,
	gender,
	hire_date
FROM employees
WHERE first_name = 'Hercules' AND
	last_name LIKE 'B%';
	
-- Question 6) Employees in the Sales department
-- INNER JOIN dept_emp with departments with employees
-- Filter 'dept_name' column to 'Sales'
SELECT dm.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp dm
INNER JOIN departments d ON dm.dept_no = d.dept_no
INNER JOIN employees e ON dm.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

-- Question 7) Employees in the Sales and Development departments
-- INNER JOIN dept_emp with departments with employees
-- Filter 'dept_name' column to 'Sales' and 'Development' using the 'OR' syntex
SELECT dm.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp dm
INNER JOIN departments d ON dm.dept_no = d.dept_no
INNER JOIN employees e ON dm.emp_no = e.emp_no
WHERE d.dept_name = 'Sales' OR
	d.dept_name = 'Development';
	
-- Question 8) Count of employee last names
-- Use count to find the count of last name and call this new column last_name_count
-- Group by last_name_count
SELECT last_name,
	COUNT(last_name) AS last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;

-- Run a query to see what #499942
-- HA! Very funny
SELECT *
FROM employees
WHERE emp_no = 499942;

	