USE employees;

#Exercise 2, 7 rows
SELECT DISTINCT title
    FROM titles;

#Exercise 3, 5 rows
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
    GROUP BY last_name;

#Exercise 4, 846 rows
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
GROUP BY last_name, first_name;

#Exercise 5, 3 rows
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
    GROUP BY last_name;

#Exercise 6, 8 rows
SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE 'E%e'
    OR (last_name LIKE '%q%'
        AND last_name NOT LIKE '%qu%')
        GROUP BY last_name
        ORDER BY last_name;


#Exercise 7, 2 rows
SELECT COUNT(gender), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
    GROUP BY gender;

