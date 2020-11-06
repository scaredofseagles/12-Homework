## SCHEMA
CREATE DATABASE employee_manager;
USE employee_manager;

CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INTEGER,
    manager_id INTEGER
)

CREATE TABLE `role` (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INTEGER
)

CREATE TABLE departement (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(30)
)

SELECT employee.role_id, employee.manager_id FROM employee RIGHT OUTER JOIN `role` ON employee.role_id=`role`.id

SELECT `role`.department_id FROM `role`  RIGHT OUTER JOIN department ON  `role`.department_id=department.id
