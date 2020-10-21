-- Creating Schema

-- Drop tables if they are already created
DROP TABLE departments;
DROP TABLE titles;
DROP TABLE employees;
DROP TABLE dept_manager;
DROP TABLE salaries;
DROP TABLE dept_emp;

-- Table creations
-- ADD PRIMARY KEY(S) & FOREIGN KEY(S)

CREATE TABLE departments (
	dept_no VARCHAR (4) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR (5) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
	emp_no int NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(3),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Two FOREIGN KEYS here
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no int NOT NULL,
	salary DEC,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


-- Import data and check! (Sucessfull)
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM dept_emp;