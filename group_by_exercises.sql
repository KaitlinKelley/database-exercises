USE employees;

#7 rows
SELECT DISTINCT title
    FROM titles;

#5 rows
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
    GROUP BY last_name;

#846 rows
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
GROUP BY last_name, first_name;

#3 rows
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
    GROUP BY last_name;

# SELECT last_name, COUNT(last_name)
# FROM employees
# WHERE last_name LIKE 'E%'
#   AND last_name LIKE '%e'
#     AND last_name LIKE '%q%'
#         AND last_name NOT LIKE '%qu%';


#2 rows
SELECT COUNT(*), gender
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
    GROUP BY gender;

