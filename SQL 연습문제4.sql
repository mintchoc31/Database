#날짜 : 2023/06/23 
#이름 : 조유빈
#내용: SQL 연습문제4

#실습 4-1
CREATE DATABASE `BookStore`;
CREATE USER 'admin4'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `BookStore`.* TO 'admin4'@'%';
FLUSH PRIVILEGES;

#실습 4-2
CREATE TABLE `Customer` (
	`custId`		INT			PRIMARY KEY AUTO_INCREMENT,
	`name`		CHAR(10)		NOT NULL,
	`address`	CHAR(20)		NULL,
	`phone`		CHAR(13)		NULL
);

CREATE TABLE `Book` (
	`bookId`			INT			PRIMARY KEY,
	`bookName`		CHAR(20)		NOT NULL,
	`publisher`		CHAR(20)		NOT NULL,
	`price`			INT			NULL
);

CREATE TABLE `Order` (
	`orderId`		INT		PRIMARY	AUTO_INCREMENT,
	`custId`			INT		NOT NULL,
	`bookId`			INT		NOT NULL,
	`salePrice`		INT		NOT NULL,
	`orderDate`		DATE		NOT NULL
);

#실습 4-3
INSERT INTO `Customer` (`custid`, `name`, `address`, `phone`) 
VALUES ('1', '박지성',  '영국 맨체스타', '000-5000-0001');

INSERT INTO `Customer` (`custid`, `name`, `address`, `phone`) 
VALUES ('2', '김연아',  '대한민국 서울', '000-6000-0001');

INSERT INTO `Customer` (`custid`, `name`, `address`, `phone`) 
VALUES ('3', '장미란',  '대한민국 강원도', '000-7000-0001');

INSERT INTO `Customer` (`custid`, `name`, `address`, `phone`) 
VALUES ('4', '추신수',  '미국 클리블랜드', '000-8000-0001');

INSERT INTO `Customer` (`custid`, `name`, `address`) 
VALUES ('5', '박세리',  '대한민국 대전');


INSERT INTO `Book` (`bookId`, `bookName`, `publisher`, `price`)
 VALUES ('1', '축구의 역사', '굿스포츠', '7000');
 
INSERT INTO `Book` (`bookId`, `bookName`, `publisher`, `price`) 
VALUES ('2', '축구아는 여자', '나무수', '13000');

INSERT INTO `Book` (`bookId`, `bookName`, `publisher`, `price`) 
VALUES ('3', '축구의 이해', '대한미디어', '22000');

INSERT INTO `Book` (`bookId`, `bookName`, `publisher`, `price`) 
VALUES ('4', '골프 바이블', '대한미디어', '35000');

INSERT INTO `Book` (`bookId`, `bookName`, `publisher`, `price`) 
VALUES ('5', '피겨 교본', '굿스포츠', '8000');

INSERT INTO `Book` (`bookId`, `bookName`, `publisher`, `price`) 
VALUES ('6', '역도 단계별기술', '굿스포츠', '6000');

INSERT INTO `Book` (`bookId`, `bookName`, `publisher`, `price`) 
VALUES ('7', '야구의 추억', '이상미디어', '20000');

INSERT INTO `Book` (`bookId`, `bookName`, `publisher`, `price`) 
VALUES ('8', '야구를 부탁해', '이상미디어', '13000');

INSERT INTO `Book` (`bookId`, `bookName`, `publisher`, `price`) 
VALUES ('9', '올림픽 이야기', '삼성당', '7500');

INSERT INTO `Book` (`bookId`, `bookName`, `publisher`, `price`) 
VALUES ('10', 'Olympic Champions', 'Pearson', '13000');


INSERT INTO `Order`(`orderId`, `custId`, `bookId`, `salePrice`, `orderDate`) 
VALUES ('1', '1', '1', '6000', '2014-07-01');

INSERT INTO `Order`(`orderId`, `custId`, `bookId`, `salePrice`, `orderDate`) 
VALUES ('2', '1', '3', '21000', '2014-07-03');

INSERT INTO `Order`(`orderId`, `custId`, `bookId`, `salePrice`, `orderDate`) 
VALUES ('3', '2', '5', '8000', '2014-07-03');

INSERT INTO `Order`(`orderId`, `custId`, `bookId`, `salePrice`, `orderDate`) 
VALUES ('4', '3', '6', '6000', '2014-07-04');

INSERT INTO `Order`(`orderId`, `custId`, `bookId`, `salePrice`, `orderDate`) 
VALUES ('5', '4', '7', '20000', '2014-07-05');

INSERT INTO `Order`(`orderId`, `custId`, `bookId`, `salePrice`, `orderDate`) 
VALUES ('6', '1', '2', '12000', '2014-07-07');

INSERT INTO `Order`(`orderId`, `custId`, `bookId`, `salePrice`, `orderDate`) 
VALUES ('7', '4', '8', '13000', '2014-07-07');

INSERT INTO `Order`(`orderId`, `custId`, `bookId`, `salePrice`, `orderDate`) 
VALUES ('8', '3', '10', '12000', '2014-07-08');

INSERT INTO `Order`(`orderId`, `custId`, `bookId`, `salePrice`, `orderDate`) 
VALUES ('9', '2', '10', '7000', '2014-07-09');

INSERT INTO `Order`(`orderId`, `custId`, `bookId`, `salePrice`, `orderDate`) 
VALUES ('10', '3', '8', '13000', '2014-07-10');

#실습 4-4 /
SELECT `custId`,`name`,`address` FROM `Customer`;

#실습 4-5
SELECT `bookName`, `price` FROM `Book`;

#실습 4-6
SELECT `price`, `bookname` FROM `Book`;

#실습 4-7
SELECT * FROM `Book`;

#실습 4-8
SELECT `publisher` FROM `Book`;

#실습 4-9
SELECT DISTINCT `publisher` FROM `Book`;
#SELECT `publisher` FROM `Book` GROUP BY `publisher`;

#실습 4-10
SELECT * FROM `Book` WHERE `price` >= 20000;

#실습 4-11 / '미만' 주의
SELECT * FROM `Book` WHERE `price` < 20000;

#실습 4-12
SELECT * FROM `Book` WHERE `price` >= 10000 AND `price` <= 20000;
#SELECT * FROM `Book` WHERE `price` BETWEEN 10000 AND 20000;

#실습 4-13
SELECT `bookId`,`bookName`,`price` FROM `BooK` WHERE `price` >= 15000 AND `price` <= 30000;

#실습 4-14 // IN
SELECT * FROM `Book` WHERE `bookId` IN (2, 3, 5);
# SELECT * FROM `Book` WHERE `bookId`=2 OR `bookId` = 3 OR `bookId` = 5 ;

#실습 4-15 // MOD
SELECT * FROM `Book` WHERE MOD(bookId, 2) = 0;
# SELECT * FROM `Book` WHERE `bookId` % 2 = 0;

#실습 4-16
SELECT * FROM `Customer` WHERE `name` LIKE '박%';

#실습 4-17
SELECT * FROM `Customer` WHERE `address` LIKE '대한민국 %';

#실습 4-18
SELECT * FROM `Customer` WHERE `phone` IS NOT NULL;

#실습 4-19
SELECT * FROM `Book` WHERE `publisher` = '굿스포츠' OR `publisher` = '대한미디어'; 
# SELECT * FROM `Book` WHERE `publisher` IN('굿스포츠', '대한미디어');

#실습 4-20
SELECT `publisher` FROM `Book` WHERE `bookName` = '축구의 역사';

#실습 4-21
SELECT `publisher` FROM `Book` WHERE `bookName` LIKE '%축구%'; # 축구% -> %축구%

#실습 4-22 //
SELECT `bookName` FROM `Book` WHERE `bookName` LIKE '?구%'; # ? -> _
# SELECT * FROM `Book` WHERE SUBSTR(bookName, 2, 1) LIKE '구%'; 

#실습 4-23
SELECT * FROM `Book` WHERE `bookName` LIKE '축구%' AND price >= 20000; # 축구% -> %축구%

#실습 4-24 /
SELECT * FROM `Book` ORDER BY `bookName`;

#실습 4-25 /
SELECT * FROM `Book` ORDER BY `price`, `bookName`;

#실습 4-26 /
SELECT * FROM `Book` ORDER BY `price` DESC, `publisher` ASC; # publisher - > bookname

#실습 4-27
SELECT * FROM `Book` ORDER BY `price` DESC LIMIT 3;

#실습 4-28
SELECT * FROM `Book` ORDER BY `price` ASC LIMIT 3;

#실습 4-29 //
SELECT SUM (salePrice) AS `` FROM `Order`;
#SELECT SUM (`salePrice`) AS `총판매액` FROM `Order`;

#실습 4-30


#실습 4-31
#SELECT COUNT(*) AS `판매건수` FROM `Order`;
#SELECT COUNT(`orderId`) AS `판매건수` FROM `Order`;
#* 보다 `` 가 성능이 더 좋음

#실습 4-32

#실습 4-33
#group by에 사용되는 컬럼이 출력되어야 함

#실습 4-34

#실습 4-35

#실습 4-36

#실습 4-37

#실습 4-38

#실습 4-39

#실습 4-40

#실습 4-41

#실습 4-42

#실습 4-43
# SELECT `name` FROM `Customer` WHERE `custId` NOT IN(SELECT DISTINCT `custId` FROM `Order`); 

#실습 4-44 // INSERT INTO `` SET `` = 
INSERT INTO `Book` (`bookName`, `pulisher`, `price`) VALUES ('스포츠 의학', '한솔의학서적', NULL);
#실습 4-45

#실습 4-46


