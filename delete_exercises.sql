USE codeup_test_db;

SELECT 'Albums released after 1991' AS '';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Disco Albums' AS '';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'Whitney Houston Albums' AS '';
DELETE FROM albums WHERE artist LIKE '%Whitney Houston%';

