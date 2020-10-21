# sql-challenge background!

Conduct a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

Design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data

Data Modeling
Data Engineering
Data Analysis
Objectives/Insights


# Modeling
Inspect the CSVs and sketch out an ERD of the tables. Feel free to use a tool like http://www.quickdatabasediagrams.com.
![ERD](ERD_INFO/ERD.png)

# Data Analysis
Conducted the following
1. Listed the following details of each employee: employee number, last name, first name, sex, and salary.
2. Listed first name, last name, and hire date for employees who were hired in 1986.
3. Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. Listed the department of each employee with the following information: employee number, last name, first name, and department name.
5. Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. Listed all employees in the Sales department, including their employee number, last name, first name, and department name.
7. Lised all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, listed the frequency count of employee last names, i.e., how many employees share each last name.


# BONUS

![](Chart%20PNG's/Salary-Histogram.png)
- The common salary ranges for employee's is heavily skewed. The typical range is around 40 to 50k

![](Chart%20PNG's/Avgerage%20Salary%20by%20title.png)
- Histrogram shows that staff and senior staff have a higher average salary compared to the other job positions

# Epilogue
Searching the ID number 499942
- employee id: 499942
- first name: April
- last name: Foolsday
- hire date: Februray 10th, 1997
- department: Development
- department id: d005
- title: Technique Leader
- salary: $40,000
