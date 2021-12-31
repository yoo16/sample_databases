DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id bigint UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) NOT NULL,
    email varchar(255) UNIQUE NOT NULL,
    password varchar(255) NOT NULL,
    gender varchar(16) DEFAULT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NULL
);