--DATA ANALYSIS
--List the employee number, last name, first name, sex, and salary of each employee using an inner join
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salaries as s
INNER JOIN employees as e ON
e.emp_no=s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT emp_no, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

--Use multiple innter joins to list the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager as m
INNER JOIN departments as d ON
d.dept_no=m.dept_no
INNER JOIN employees as e ON
e.emp_no=m.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT d.dept_no, d.emp_no, e.last_name, e.first_name, t.dept_name
FROM dept_emp as d
INNER JOIN employees as e ON
e.emp_no=d.emp_no
INNER JOIN departments as t ON
t.dept_no=d.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT d.emp_no, e.last_name, e.first_name
FROM dept_emp as d
INNER JOIN employees as e ON
e.emp_no=d.emp_no
INNER JOIN departments as t ON
t.dept_no=d.dept_no
WHERE t.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT d.emp_no, e.last_name, e.first_name, t.dept_name
FROM dept_emp as d
INNER JOIN employees as e ON
e.emp_no=d.emp_no
INNER JOIN departments as t ON
t.dept_no=d.dept_no
WHERE t.dept_name = 'Sales' or t.dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;
