USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    name VARCHAR(50) NOT NULL DEFAULT 'Untitled',
    release_date INT(4) UNSIGNED NOT NULL,
    sales FLOAT UNSIGNED,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);