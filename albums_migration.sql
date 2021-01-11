USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    name VARCHAR(100) NOT NULL DEFAULT 'Untitled' UNIQUE,
    release_date INT(4) UNSIGNED,
    genre VARCHAR(50),
    sales FLOAT UNSIGNED,
    PRIMARY KEY (id)
);