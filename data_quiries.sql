-- quiry 1
SELECT employees.emp_no, last_name, first_name, sex, salary FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- quiry 2
SELECT last_name, first_name, EXTRACT(year FROM hire_date) FROM employees
WHERE EXTRACT(year FROM hire_date)=1986
ORDER BY last_name;

-- quiry 3
SELECT dept_manager.dept_no, dept_name, dept_manager.emp_no, last_name, first_name
FROM dept_manager INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- quiry 4
SELECT dept_emp.dept_no, dept_name, dept_emp.emp_no, last_name, first_name
FROM dept_emp INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no;

-- quiry 5
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;

-- quiry 6
-- get dept_no for sales
SELECT dept_no FROM departments
WHERE dept_name = 'Sales';
--dept_no d007 = Sales
SELECT dept_emp.emp_no, last_name, first_name, dept_name
FROM dept_emp INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_emp.dept_no = 'd007';

-- quiry 7
-- get dept_no for Development
SELECT dept_no FROM departments
WHERE dept_name = 'Development';
--dept_no d005 = Sales
SELECT dept_emp.emp_no, last_name, first_name, dept_name
FROM dept_emp INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_emp.dept_no = 'd007' OR dept_emp.dept_no = 'd005';

-- quiry 8
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name 
ORDER BY COUNT(last_name) DESC;