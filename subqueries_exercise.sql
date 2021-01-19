USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
          );

SELECT title
FROM titles AS t
JOIN employees e ON e.emp_no = t.emp_no
WHERE first_name IN(
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod');

SELECT title
FROM titles AS t
JOIN employees e ON e.emp_no = t.emp_no
WHERE first_name IN(
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod')
GROUP BY title;




SELECT e.first_name AS first_name, e.last_name AS last_name
FROM employees AS e
JOIN titles AS t ON t.emp_no = e.emp_no
WHERE e.gender = 'F' AND t.title IN(
    SELECT title
    FROM titles
    WHERE title = 'Manager'
    AND t.to_date = '9999-01-01'
    );

SELECT d.dept_name AS dept_name
FROM departments AS d
JOIN dept_emp AS de ON d.dept_no = de.dept_no
JOIN employees e ON de.emp_no = e.emp_no
JOIN titles t on e.emp_no = t.emp_no
WHERE e.gender = 'F' AND t.title IN(
    SELECT title
    FROM titles
    WHERE title = 'Manager'
    AND t.to_date = '9999-01-01'
    )
GROUP BY dept_name;

