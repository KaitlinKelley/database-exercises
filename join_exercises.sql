USE employees;

# write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm on e.emp_no = dm.emp_no
JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

#Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_manager AS dm on e.emp_no = dm.emp_no
JOIN departments AS d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

#Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS title, COUNT(e.emp_no) AS Count
FROM employees as e
JOIN titles as t on e.emp_no = t.emp_no
JOIN dept_manager AS dm ON dm.emp_no = t.emp_no
JOIN departments AS d ON  dm.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY title;

SELECT * FROM departments
LIMIT 10;

SELECT * FROM titles
LIMIT 10;



#Find the current salary of all current managers
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Name', MAX(s.salary)
FROM employees AS e
         JOIN dept_manager AS dm on e.emp_no = dm.emp_no
         JOIN departments AS d on dm.dept_no = d.dept_no
         JOIN salaries AS s on s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
GROUP BY d.dept_name, Name;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name',

