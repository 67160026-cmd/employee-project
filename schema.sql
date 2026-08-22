CREATE DATABASE IF NOT EXISTS employee_db;

USE employee_db;

CREATE TABLE departments (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    department_code VARCHAR(20) NOT NULL,

    PRIMARY KEY (id),
    UNIQUE KEY unique_department_code (department_code)
);

CREATE TABLE positions (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    position_code VARCHAR(20) NOT NULL,

    PRIMARY KEY (id),
    UNIQUE KEY unique_position_code (position_code)
);

CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    employee_code VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    position_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id),

    UNIQUE KEY unique_employee_code (employee_code),
    UNIQUE KEY unique_employee_email (email),

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_employee_position
        FOREIGN KEY (position_id)
        REFERENCES positions(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);