USE codeup_test_db;

SELECT 'All albums by Pink Floyd' AS '';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Year of Release for Sgt. Pepper''s Lonely Hearts Club Band' AS '';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Genre for Nevermind' AS '';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT '90s Albums' AS '';
SELECT * from albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums with less that 20 million in sales' AS '';
SELECT name, sales from albums where sales < 20;

SELECT 'Rock Albums' AS '';
SELECT name, genre from albums where genre = 'Rock';
