CREATE DATABASE `File`;

CREATE TABLE `FileTest` (
 	`fno`			INT AUTO_INCREMENT PRIMARY KEY,
 	`oName`		VARCHAR(100),
 	`sName`		VARCHAR(100),
 	`rdate`		DATETIME 
);

ALTER TABLE `Product` CHANGE `cate` `type` TINYINT;
DELETE FROM `Product`;