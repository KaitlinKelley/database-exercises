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

