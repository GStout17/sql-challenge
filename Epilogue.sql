-- find employee 499942 information
SELECT first_name,last_name, e.emp_no AS employee_id,
	to_char(hire_date, 'MM/DD/YYYY'),
	d.dept_name,
	d.dept_no,
	title,
	salary
FROM employees e JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no
JOIN titles t ON t.title_id = e.emp_title_id
JOIN salaries s ON s.emp_no = e.emp_no
WHERE e.emp_no = '499942';