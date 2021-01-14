use employees;

# what are the names of the 10 most recently hired females in the company? the first 10? (no group by needed)
select hire_date, concat(first_name, ' ', last_name) from employees
where gender = 'F'
order by hire_date desc
limit 10;

# what are the top three most common job titles?

select title, count(*) from titles
group by title
order by count(*) desc
limit 3;

describe titles;

# what is the most common 'from date' for job titles? for staff only?

select from_date, count(*) from titles
where title = 'staff'
group by from_date
order by count(*) desc
limit 1;

# what is the highest employee number for an engineer?

select title, max(emp_no) from titles
where title = 'engineer'
group by title;

# what is the most common birthday?

select birth_date, count(*) from employees
group by birth_date
order by count(*) desc
limit 1;

# what is the most common female birthday? male?



# what is the most common hire date for female and male employees?
# what is the longest last name of someone born on March 8, 1952?
# what is the lowest employee number for the first senior engineers in the company?
select title, from_date, min(emp_no), count(*) from titles
where title = 'senior engineer'
group by from_date, title
order by from_date;