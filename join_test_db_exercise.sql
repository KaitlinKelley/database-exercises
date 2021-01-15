CREATE DATABASE IF NOT EXISTS join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),
('lucy', 'lucy@example.com', null),
('schroeder', 'schroeder@example.com', 2),
('snoopy', 'lucy@example.com', 2),
('snoopy', 'lucy@example.com', 2);

#7 results
SELECT users.name AS name, roles.name AS role
FROM users
JOIN roles ON users.role_id = roles.id;

#10 results
SELECT users.name AS name, roles.name AS role
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

#8 results
SELECT users.name AS name, roles.name AS role
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

#1 admin, 4 author, 2 reviewers
SELECT COUNT(users.name) AS num_of_names, roles.name AS role
FROM users
JOIN roles ON users.role_id = roles.id
GROUP BY role;
