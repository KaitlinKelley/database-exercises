USE employees;

#dept no is primary (index 1)
DESCRIBE departments;

#dept no and emp no are primary (indices 1,2)
DESCRIBE dept_emp;

#dept no and emp no are primary (indices 1,2)
DESCRIBE dept_manager;

#emp no is primary (index 1)
DESCRIBE employees;

#emp no and from date are primary (indices 1,3)
DESCRIBE salaries;

#emp no, title, and from date are primary (indices 1,2,3)
DESCRIBE titles;

#------------------------


USE codeup_test_db;

DESCRIBE albums;

ALTER TABLE albums
    ADD UNIQUE (name, artist);

INSERT INTO albums (artist, name)
VALUES ('Michael Jackson', 'Thriller');

INSERT INTO albums (artist, name)
VALUES ('AD/DC', 'Back in Black');

SELECT * FROM albums;
