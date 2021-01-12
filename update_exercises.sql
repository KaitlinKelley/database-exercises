Use codeup_test_db;

SELECT 'Show all albums' AS '';
SELECT * FROM albums;

UPDATE albums
SET sales = sales*10;

SELECT 'AFTER UPDATE: Show all albums' AS '';
SELECT * FROM albums;




SELECT 'Show all albums release before 1980' AS '';
SELECT name, release_date FROM albums WHERE release_date < 1980;

UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;

SELECT 'AFTER UPDATE: Show all albums release before 1980' AS '';
SELECT name, release_date FROM albums WHERE release_date < 1980;






SELECT 'All Michael Jackson albums' AS '';
SELECT name, artist FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'AFTER UPDATE: All Michael Jackson albums' AS '';
SELECT name, artist FROM albums WHERE artist = 'Michael Jackson';