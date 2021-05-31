
# Ex.11 Movie Database

CREATE DATABASE `movies`;
USE `movies`;

CREATE TABLE `directors` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `director_name` VARCHAR(30) NOT NULL,
    `notes` TEXT
);

CREATE TABLE IF NOT EXISTS `genres`(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    genre_name VARCHAR(30) NOT NULL,
    notes TEXT
);	

CREATE TABLE `categories` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `category_name` VARCHAR(30) NOT NULL,
    `notes` TEXT
);

CREATE TABLE `movies` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `director_id` INT REFERENCES directors (id),
    `copyright_year` YEAR,
    `length` INT,
    `genre_id` INT REFERENCES genres (id),
    `category_id` INT REFERENCES categories (id),
    `rating` INT,
    `notes` TEXT
);

INSERT INTO `directors`
VALUES
(1, 'Ivan', " "),
(2, 'Petar', " "),
(3, 'Gerfi', " "),
(4, 'Gosho', " "),
(5, 'Pena', " ");

INSERT INTO `categories`
VALUES
(1, 'comedy', " "),
(2, 'action', " "),
(3, 'adventure', " "),
(4, 'triller', " "),
(5, 'romance', " ");

INSERT INTO `genres`
VALUES
(1, 'comedy', " "),
(2, 'action', " "),
(3, 'adventure', " "),
(4, 'triller', " "),
(5, 'romance', " ");

INSERT INTO `movies`
VALUES
(1, 'comedy', " "),
(2, 'action', " "),
(3, 'adventure', " "),
(4, 'triller', " "),
(5, 'romance', " ");

INSERT INTO `movies` VALUES
	(1,"titanic",2,'2008',2,2,1,6,"note1"),
    (2,"mr bean",2,'2005',2,2,1,6,"note2"),
    (3,"mr bean",2,'2008',2,2,3,6,"note3"),
    (4,"mr bean",2,'2003',2,1,2,6,"note4"),
    (5,"mr bean",2,'2006',2,2,2,6,"note5");

