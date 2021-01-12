USE codeup_test_db;

SELECT name AS 'All albums by Pink Floyd'
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Year of Release for Sgt. Pepper''s Lonely Hearts Club Band'
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Genre for Nevermind'
FROM albums
WHERE name = 'Nevermind';

SELECT name AS '90s Albums'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'Albums with less that 20 million in sales'
FROM albums
WHERE sales < 20;

SELECT name AS 'Rock Albums'
FROM albums
WHERE genre = 'Rock';
