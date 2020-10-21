-- Data Analysis!
-- Use Aliases for cleaner code

-- 1. List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.

SELECT e.emp_no,
	last_name,
	first_name,
	sex,
	salary
-- Create a join here and order by!
FROM employees e JOIN salaries s on e.emp_no = s.emp_no
ORDER BY e.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- Need to change date format

SELECT first_name,
	last_name,
	to_char(hire_date, 'MM/DD/YYYY')
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = '1986'
ORDER BY hire_date,
	first_name,
	last_name;

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

SELECT d.dept_no, dept_name, dm.emp_no, first_name, last_name
-- Two Joins!!
FROM departments d 
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
ORDER BY d.dept_no, first_name, last_name;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, dept_name
-- Similiar to last example
FROM employees e 
	JOIN dept_emp de ON e.emp_no = de.emp_no
	JOIN departments d ON d.dept_no = de.dept_no
ORDER BY dept_name, last_name, first_name;
	
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
-- Need to use wild card %
WHERE first_name = 'Hercules'
AND last_name like 'B%'
ORDER BY last_name;

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY last_name, first_name, e.emp_no;

-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT e.emp_no,last_name, first_name, d.dept_name
FROM employees e JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development'
ORDER BY last_name, first_name, e.emp_no;

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name) AS "count_last_name"
FROM employees
GROUP BY last_name
ORDER BY count_last_name DESC;