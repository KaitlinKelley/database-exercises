USE employees;

#709 rows
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

#refactor to use OR, 709 rows
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

#add condition to check for male employees too, 441 rows
SELECT first_name, last_name, gender
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%12-25%';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
   OR last_name LIKE '%Q%';

#Last name starts or ends with E/e, 30723 rows
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e';

#899 rows
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

#362 rows
SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
  AND (birth_date LIKE '%12-25%');

#547 rows
SELECT first_name, last_name
FROM employees
WHERE (last_name LIKE '%q%'
    OR last_name LIKE '%Q%')
  AND (last_name NOT LIKE '%qu%'
    OR last_name NOT LIKE '%Qu%');