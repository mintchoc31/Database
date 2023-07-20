#날짜: 2023/06/16
#이름: 조유빈
#내용: 2. 테이블 제약조건 실습

#실습 2-1
CREATE TABLE `User2` (
		`uid`			VARCHAR(10) PRIMARY KEY,
		`name`		VARCHAR(10),
		`hp`			CHAR(13),
		`age` 		INT
);

#실습 2-2

#실습 2-3
CREATE TABLE `User3` (
		`uid`			VARCHAR(10) PRIMARY KEY,
		`name`		VARCHAR(10),
		`hp`			CHAR(13) UNIQUE,
		`age`			INT
);

#실습 2-4

#실습 2-5
CREATE TABLE `Parent` (
		`pid`			VARCHAR(10) PRIMARY KEY,
		`name`			VARCHAR(10),
		`hp`			CHAR(13) UNIQUE
);

CREATE TABLE `Child` (
		`cid`			VARCHAR(10) PRIMARY KEY,
		`name`		VARCHAR(10),
		`hp`			CHAR(13) UNIQUE,
		`pid`			VARCHAR(10),
		FOREIGN KEY (`pid`) REFERENCES `Parent` (`pid`)		
);

#실습 2-6

#실습 2-7
CREATE TABLE `User4` (
		`seq`			INT AUTO_INCREMENT PRIMARY KEY,
		`name`		VARCHAR(10),
		`gender`		TINYINT,
		`age`			INT,
		`addr`		VARCHAR(255)
);

#실습 2-8

#실습 2-9
CREATE TABLE `User5` (
		`name`		VARCHAR(10) NOT NULL,
		`gender`		TINYINT,
		`age`			INT DEFAULT 1,
		`addr`		VARCHAR(10)
);

#실습 2-10

#실습 2-11
ALTER TABLE `User5` ADD `hp` VARCHAR(20);
ALTER TABLE `User5` AND `birth` CHAR(10) DEFAULT '0000-00-00' AFTER `name`;

#실습 2-12
ALTER TABLE `User5` MODIFY `hp` CHAR(13);
ALTER TABLE `User5` MODIFY `age` TINYINT;

#실습 2-13
ALTER TABLE `User5` CHANGE COLUMN `addr`, `address` VARCHAR(100);

#실습 2-14
ALTER TABLE `User5` DROP `gender`;

#실습 2-15
CREATE TABLE `User6` LIKE `User5`;
 
#실습 2-16
INSERT INTO `User6` SELECT * FROM `User5`;
