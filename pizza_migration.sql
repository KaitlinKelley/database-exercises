USE codeup_test_db;

CREATE TABLE IF NOT EXISTS pizza_order (
    name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    pizza_size INT UNSIGNED NOT NULL,
    pizza_name VARCHAR(25),
    crust_type VARCHAR(25),
    sauce_type VARCHAR(25),
    toppings_list TEXT(255),
    total_cost DECIMAL UNSIGNED (10,2) NOT NULL,
    description VARCHAR(255),
    isDelivered TINYINT DEFAULT 0,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (email)
);

CREATE TABLE IF NOT EXISTS zoo_animals (
    id INT UNSIGNED NOT NULL,
    name VARCHAR(50) NOT NULL,
    age INT UNSIGNED NOT NULL,
    common_name VARCHAR (50),
    genus VARCHAR(50) NOT NULL,
    species VARCHAR(50) NOT NULL,
    diet_type VARCHAR(50) NOT NULL,
    zoo_section VARCHAR(25) NOT NULL,
    enclosure_num INT UNSIGNED NOT NULL,
    assigned_vet VARCHAR(50) NOT NULL,
    has_eaten_people TINYINT NOT NULL DEFAULT 0,
    has_current_vaccs TINYINT NOT NULL
);

-- CREATE TABLE IF NOT EXISTS doctor_visits (
--
-- );