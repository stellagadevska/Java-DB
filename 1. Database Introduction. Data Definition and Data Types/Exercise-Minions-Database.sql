CREATE DATABASE `minions`;
USE `minions`;

# Ex.1
CREATE TABLE `minions` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `age` INT
);

CREATE TABLE `towns` (
    `town_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL
);

# Ex.2
ALTER TABLE `minions`
ADD COLUMN `town_id` INT,
ADD CONSTRAINT fk_minions_towns
FOREIGN KEY (`town_id`)
REFERENCES `towns` (`id`); 

# Ex.3
INSERT INTO `towns`
VALUES 
(1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna');

INSERT INTO `minions`
VALUES 
(1, 'Kevin', 22, 1),
(2, 'Bob', 15, 3),
(3, 'Steward', NULL, 2);

# Ex.4
TRUNCATE `minions`;

# Ex.5
DROP TABLE `minions`;
DROP TABLE `towns`;

# Ex.6
CREATE TABLE `people` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(200) NOT NULL,
`picture` BLOB,
`height` FLOAT(5,2),
`weight` FLOAT(5, 2),
`gender` CHAR(1) NOT NULL,
`birthdate` DATE NOT NULL,
`biography` TEXT
);

#insert records 
INSERT INTO `people`
VALUES 
(1, 'Ivana', 'picture1', 1.2, 1.21, 'm', '2004-01-10', 'rereererer' ),
(2, 'Ivan', 'picture2', 1.2, 1.22, 'f', '2002-01-10', 'rereererer' ),
(3, 'Greta', 'picture3', 1.2, 1.23, 'm', '2002-01-10', 'rereererer' ),
(4, 'Preslava', 'picture4', 1.2, 1.24, 'm', '2010-01-10', 'rereererer' ),
(5, 'Simon', 'picture5', 1.2, 1.25, 'f', '2001-01-10', 'rereererer' );

DROP TABLE `people`;
# Ex.7
CREATE TABLE `users` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`username` VARCHAR(30) NOT NULL,
`password` VARCHAR(26) NOT NULL,
`profile_picture` BLOB,
`last_login_time` TIMESTAMP,
`is_deleted` BOOL
);

#insert records
INSERT INTO `users`
VALUES 
(1, 'Ivana', 'pass1', 'pic', NULL, FALSE ),
(2, 'Ivan', 'pass2', 'pic', NULL, TRUE ),
(3, 'Greta', 'pass3', 'pic',  NULL, FALSE ),
(4, 'Preslava', 'pass4', 'pic', NULL, FALSE ),
(5, 'Simon', 'pass5', 'pic', NULL, TRUE );

# Ex.8
ALTER TABLE `users`
DROP PRIMARY KEY,
ADD CONSTRAINT pk_users
PRIMARY KEY (`id`, `username`);

# Ex.9
ALTER TABLE `users`
CHANGE COLUMN `last_login_time` `last_login_time` DATETIME DEFAULT CURRENT_TIMESTAMP;
