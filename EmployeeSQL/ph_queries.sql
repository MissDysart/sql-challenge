-- 1) List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, salaries.salary
FROM employees e
INNER JOIN salaries ON
	salaries.emp_no = e.emp_no;
	
	
-- 2) List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE e.hire_date LIKE '%1986';


-- 3) List the manager of each department along with their department number, department name, employee number, last name, and first name.
-- 3a) This lists all the managers for each department:
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d on
	dm.dept_no = d.dept_no
INNER JOIN employees e on
	dm.emp_no = e.emp_no;

-- 3b) Create a view to list one manager for each department (using MAX function to, presumably, get the last person to hold that title):
CREATE VIEW manager AS
SELECT dept_no, MAX(emp_no) AS "Employee"
FROM dept_manager
GROUP BY dept_no
ORDER BY dept_no;

-- 3c) Use the view created to list the manager for each department ,
-- their department number, department name, employee number, last name, and first name:
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM manager dm
INNER JOIN departments d ON
	dm.dept_no = d.dept_no
INNER JOIN employees e ON
	dm."Employee" = e.emp_no;


-- 4) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e ON
de.emp_no = e.emp_no
INNER JOIN departments d ON
de.dept_no = d.dept_no;


-- 5) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- 6) List each employee in the Sales department, including their employee number, last name, and first name.
SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no IN
  (
  SELECT emp_no
  FROM dept_emp
  WHERE dept_no IN
	(
    SELECT dept_no
	FROM departments
	WHERE dept_name = 'Sales'
	)
  );
  

-- 7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON
	e.emp_no = de.emp_no
INNER JOIN departments d ON
	de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


-- 8) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;
