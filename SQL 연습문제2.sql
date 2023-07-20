#날짜: 2023/06/21
#이름: 조유빈
#내용: SQL 연습문제2

#실습 2-1
CREATE DATABASE `Bank`;
CREATE USER `admin2`@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `Bank`.* TO 'admin2'@'%'; 
FLUSH PRIVILEGES; 




#실습 2-2
CREATE TABLE `bank_customer` (
	`c_no`		CHAR(14)		PRIMARY KEY,
	`c_name` 	CHAR(20)		NOT NULL,
	`c_dist`		INT			DEFAULT 0,
	`c_phone`	CHAR(20)		NOT NULL,
	`c_addr`		CHAR(100)	NULL
);

CREATE TABLE `bank_account` (
	`a_no`			CHAR(11)	PRIMARY KEY
	`a_item_dist`	CHAR(2)	NOT NULL,
	`a_item_name`	CHAR(20)	NOT NULL,
	`a_c_no`			CHAR(14)	NOT NULL,
	`a_balance`		INT		DEFAULT 0,
	`a_open_date`	DATE		NOT NULL
);

CREATE TABLE `bank_transaction` (
	`t_no`			INT	PRIMARY KEY AUTO_INCREMENT,
	`t_a_no`			CHAR	NOT NULL,
	`t_dist`			INT	NOT NULL,
	`t_amount`		INT	DEFAULT 0,
	`t_datetime`	DATE	NOT NULL
);

#실습 2-3
INSERT INTO `bank_customer` VALUES('101-22-51094', '부산의원',2 ,'051-518-1010','부산시 남구');
INSERT INTO `bank_customer` VALUES('220-82-52237', '(주)한국전산',2 ,'02-134-1045','서울시 강서구');
INSERT INTO `bank_customer` VALUES('361-22-4287', '(주)정보산업',2 ,'031-563-1253','경기도 광명시');
INSERT INTO `bank_customer` VALUES('730423-1000001', '김유신',1 ,'010-1234-1001','경기도 수원시');
INSERT INTO `bank_customer` VALUES('750210-1000002', '김춘추',1 ,'010-1234-1002','경기도 광주시');
INSERT INTO `bank_customer` VALUES('830513-2000003', '선덕여왕',1 ,'010-1234-1003','서울시 마포구');
INSERT INTO `bank_customer` VALUES('870830-1000004', '강감찬',1 ,'010-1234-1004','서울시 영등포구');
INSERT INTO `bank_customer` VALUES('910912-2000005', '신사임당',1 ,'010-1234-1005','강원도 강릉시');
INSERT INTO `bank_customer` VALUES('941127-1000006', '이순신',1 ,'010-1234-1006','부산시 영도구');

INSERT INTO `bank_account` VALUES ('101-11-1001', 'S1', '자유저축예금', '730423-1000001', '420000', '2005-07-21');
INSERT INTO `bank_account` VALUES ('101-11-1003', 'S1', '자유저축예금', '870830-1000004', '53000', '2007-02-17');
INSERT INTO `bank_account` VALUES ('101-11-2001', 'S1', '자유저축예금', '220`82-52237', '23000000', '2003-04-14');
INSERT INTO `bank_account` VALUES ('101-11-2002', 'S1', '자유저축예금', '361`22-42687', '4201000', '2008-12-30');
INSERT INTO `bank_account` VALUES ('101-11-2003', 'S1', '자유저축예금', '102`22-51094', '8325010', '2010-06-07');
INSERT INTO `bank_account` VALUES ('101-12-1002', 'S2', '정기정립예금', '830513-2000003', '1020000', '2011-05-13');
INSERT INTO `bank_account` VALUES ('101-13-1005', 'S3', '주택청약예금', '941127-1000006', '720800', '2012-10-15');
INSERT INTO `bank_account` VALUES ('101-21-1004', 'L1', '고객신용대출', '910912-2000005', '1200500', '2009-08-25');
INSERT INTO `bank_account` VALUES ('101-22-1006', 'L2', '예금담보대출', '730423-1000001', '25000', '2013-12-11');
INSERT INTO `bank_account` VALUES ('101-23-1007', 'L3', '주택담보대출', '750210-1000002', '2700000', '2020-09-23');

INSERT INTO `bank_transcation` VALUES (1 ,'101-11-1001', 1 , '50000', '2022-08-21 04:26:52');
INSERT INTO `bank_transcation` VALUES (2 ,'101-11-1003', 2 , '120000', '2022-08-21 04:26:52');
INSERT INTO `bank_transcation` VALUES (3 ,'101-11-2001', 2 , '300000', '2022-08-21 04:26:52');
INSERT INTO `bank_transcation` VALUES (4 ,'101-12-1002', 1 , '1000000', '2022-08-21 04:26:52');
INSERT INTO `bank_transcation` VALUES (5 ,'101-11-1001', 3 , '0', '2022-08-21 04:26:52');
INSERT INTO `bank_transcation` VALUES (6 ,'101-13-1005', 1 , '200000', '2022-08-21 04:26:52');
INSERT INTO `bank_transcation` VALUES (7 ,'101-11-1001', 1 , '450000', '2022-08-21 04:26:52');
INSERT INTO `bank_transcation` VALUES (8 ,'101-11-2002', 2 , '32000', '2022-08-21 04:26:52');
INSERT INTO `bank_transcation` VALUES (9 ,'101-11-2003', 3 , '0', '2022-08-21 04:26:52');
INSERT INTO `bank_transcation` VALUES (10 ,'101-11-1003', 1 , '75000', '2022-08-21 04:26:52');

#실습 2-4
SELECT * FROM `bank_account`;

#실습 2-5
SELECT * FROM `bank_customer`;

#실습 2-6
SELECT * FROM `bank_transaction`;

#실습 2-7
SELECT `c_name`, `c_no` FROM `bank_customer`;

#실습 2-8
SELECT `a_item_dist`, `a_item_name` FROM `bank_account`;

#실습 2-9
SELECT DISTINCT `a_item_dist`, `a_item_name` FROM `bank_account`;

#실습 2-10
SELECT * FROM `bank_account` WHERE `a_item_name` = '자유저축예금' AND `a_balance` >= 1000000 ;
#`a_item_dist`='S1' 으로 수정

#실습 2-11
SELECT * FROM `bank_customer` WHERE `c_addr` LIKE '경기도*';
# * -> %로 수정

#실습 2-12
SELECT * FROM `bank_customer` WHERE `c_dist` = 2;

#실습 2-13
SELECT * FROM `bank_transaction` WHERE `t_dist` = 1;

#실습 2-14
SELECT * FROM `bank_transaction` WHERE `t_dist` = 2 ORDER BY `t_amount` DESC;

#실습 2-15
SELECT 
	SUM(`t.amount`) '입금총합',
	AVG(`t.amount`) '입금평균'
FROM `bank_transaction`
WHERE `t_dist`= 1;

#실습 2-16
SELECT
	MAX(`t_amount`) '큰 금액', 
	MIN(`t_amount`) '작은 금액',
FROM `bank_transaction`
WHERE `t_dist` = 2;

#실습 2-17
SELECT * FROM `bank_account` WHERE `a_item_name` = '자유저축예금' 
ORDER BY a_balance DESC;
# WHERE `a_item_name` = '자유저축예금' -> `a_item_dist` = 'S1' 으로 수정

#실습 2-18
SELECT * FROM `bank_account` WHERE 	`a_item_name` = '자유저축예금'
ORDER BY `a_balance` DESC SELECT MAX  ;



# 
으로 수정


#실습 2-19
SELECT * FROM `bank_transaction` WHERE 
ORDER BY `t_dist`, `t_amount` DESC;
# WHERE `t_dist` IN(1,2)

#20번 부터 풀어보기
#실습 2-20
SELECT 
	COUNT() AS `입금 건수`,
	COUNT() AS `출금 건수`,
	COUNT() AS `조회 건수`
FROM `bank_transation`;

#실습 2-21
SELECT 
 	`t_dist`
 	CASE 
 	
 	
 	
 	END AS 'type',
 	`t_a_no`,
 	`t_amount`
FROM `bank_transaction`;

#실습 2-22
SELECT t_dist, COUNT (`t_no`) FROM `bank_transaction` ;

#실습 2-23
SELECT `t_a_no`, `t_dist` SUM(`t_amount`)
FROM `bank_transaction`
WHERE `t_dist` =1

			.
			
#실습 2-24
SELECT 
	`t_a_no`,
	`t_dist`,
	SUM(`t_amount`) AS `합계`
FROM `bank_transaction`
WHERE `t_dist` = 1;

#실습 2-25
SELECT * FROM `bank_account` AS a

	;
#실습 2-26
SELECT



FROM `bank_account` AS a
JOIN `bant_customer` AS b
ON  ;

#실습 2-27
SELECT * FROM `bank_transaction` AS a
JOIN `bank_account` AS b
ON  ;

#실습 2-28
SELECT
	`t_no` AS `거래번호`,
	`t_a_no` AS `계좌번호`,
	`a_c_no` AS `고객번호(주민번호)`,
	`t_dist` AS `거래구분`,
	`t_amount` AS `거래금액`,
	`t_datetime` AS `거래일자`,
FROM `bank_account` AS a
JOIN `bank_transaction` AS b
		;
#실습 2-29
SELECT
	`t_no`,
	`a_no`,
	`c_no`,
	`t_dist`,
	`a_item_name`,
	`c_name`,
	`t_amount`,
	`t_datetime`
FROM `bank_transaction` AS a


WHERE `t_dist` = 1
ORDER BY `t_amount` DESC;

#실습 2-30
# 버전 차이로 변경
SELECT 
	ANY_VALUE(`t_no`),
	ANY_VALUE(`a_no`),
	c_no`,
	ANY_VALUE(t_dist`) AS `구분`,
	ANY_VALUE(a_item_name`),
	ANY_VALUE(`c_name`),
	COUNT(`t_no`) AS `거래건수`
FROM `bank_transaction` AS a


WHERE `t_dist` IN (1,2) AND `c_dist` = 1

ORDER BY `t_dist`, `거래건수` DESC;ermodeldepartment