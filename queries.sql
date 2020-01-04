--Data Analysis
-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, first_name, last_name, gender, salary
FROM employees e
JOIN salaries s on e.emp_no = s.emp_no;

--List employees who were hired in 1986.
SELECT emp_no, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.

SELECT dm.emp_no, dm.dept_no, e.first_name, e.last_name, d.dept_name,from_date, to_date
FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dm.dept_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no;

---List all employees whose first name is "Hercules"
---and last names begin with "B."
SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

---List all employees in the Sales department, 
---including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales';

---List all employees in the Sales and Development departments, 
---including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name IN ('Sales','Development');

---In descending order, list the frequency count of employee last names,
---i.e., how many employees share each last name.
SELECT COUNT(*) as count_names,last_name
FROM employees
GROUP BY 2
ORDER BY 1 DESC;






