USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date INT(4) UNSIGNED NOT NULL,
    sales FLOAT(10,2),
    genre VARCHAR(50),
    PRIMARY KEY (id)
);