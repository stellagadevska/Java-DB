CREATE DATABASE `minions`;
USE `minions`;

CREATE TABLE `minions` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `age` INT
);