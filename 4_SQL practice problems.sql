#date: 3/25/2021
#name: Yeeun Kim
#content: SQL practice problems

#1
CREATE TABLE `BOOK` (
	`bookid` INT AUTO_INCREMENT PRIMARY KEY,
	`bookname` VARCHAR(20),
	`publisher` VARCHAR(20),
	`price` INT 
);

INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('축구의 역사','굿스포츠', 7000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('축구아는 여자','나무수', 13000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('축구의 이해','대한미디어', 22000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('골프 바이블','대한미디어', 35000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('피겨 교본','굿스포츠', 8000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('역도 단계별기술','굿스포츠', 6000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('야구의 추억','이상미디어', 20000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('야구를 부탁해','이상미디어', 13000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('올림픽 이야기','삼성당', 7500);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('Olympic Champions','Pearson', 13000);

#2
CREATE TABLE `CUSTOMER` (
	`custid` INT AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(20),
	`address` VARCHAR(20),
	`phone` VARCHAR(13) 
);

INSERT INTO `CUSTOMER` (`name`,`address`,`phone`) VALUES ('박지성','영국 맨체스타','000-5000-0001');
INSERT INTO `CUSTOMER` (`name`,`address`,`phone`) VALUES ('김연아','대한민국 서울','000-6000-0001');
INSERT INTO `CUSTOMER` (`name`,`address`,`phone`) VALUES ('장미란','대한민국 강원도','000-7000-0001');
INSERT INTO `CUSTOMER` (`name`,`address`,`phone`) VALUES ('추신수','미국 클리블랜드','000-8000-0001');
INSERT INTO `CUSTOMER` (`name`,`address`) VALUES ('박세리','대한민국 대전');

#3
CREATE TABLE `ORDERS` (
	`orderid` INT AUTO_INCREMENT PRIMARY KEY,
	`custid` TINYINT,
	`bookid` TINYINT,
	`saleprice` INT,
	`orderdate` DATE
);

INSERT INTO `ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (1, 1, 6000, '2014-07-01');
INSERT INTO `ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (1, 3, 21000, '2014-07-03');
INSERT INTO `ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (2, 5, 8000, '2014-07-03');
INSERT INTO `ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (3, 6, 6000,'2014-07-04');
INSERT INTO `ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (4, 7, 20000,'2014-07-05');
INSERT INTO `ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (1, 2, 12000,'2014-07-07');
INSERT INTO `ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (4, 8, 13000,'2014-07-07');
INSERT INTO `ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (3, 10, 12000,'2014-07-08');
INSERT INTO `ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (2, 10, 7000,'2014-07-09');
INSERT INTO `ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (3, 8, 13000,'2014-07-10');

#4
#5
SELECT * FROM `BOOK`;

#6
SELECT DISTINCT `publisher` FROM `BOOK`;

#7
SELECT * FROM `BOOK` WHERE `price`<20000;

#8
SELECT * FROM `BOOK` WHERE 10000 <=`price` AND `price`<= 20000;
SELECT * FROM `BOOK` WHERE `price` BETWEEN 10000 AND 20000;

#9
SELECT * FROM `BOOK` WHERE `publisher`='굿스포츠' OR `publisher`='대한미디어';
SELECT * FROM `BOOK` WHERE `publisher` IN('굿스포츠','대한미디어');

#10
SELECT `publisher` FROM `BOOK` WHERE `bookname`='축구의 역사';

#11
SELECT `publisher` FROM `BOOK` WHERE `bookname` LIKE '%축구%';

#12
SELECT * FROM `BOOK` WHERE `bookname` LIKE '_구%';

#13
SELECT * FROM `BOOK` WHERE `bookname` LIKE '%축구%' AND `price`>=20000;

#14
SELECT * FROM `BOOK` ORDER BY `bookname`;

#15
SELECT * FROM `BOOK` ORDER BY `price`, `bookname`;

#16
SELECT * FROM `BOOK` ORDER BY `price` DESC, `publisher`;

#17
SELECT SUM(`saleprice`) AS 'total sale' FROM `ORDERS`;

#18
SELECT SUM(`saleprice`) AS 'total' FROM `ORDERS` WHERE `custid`=2;

#19
SELECT 
	SUM(`saleprice`) AS 'total sale',
	AVG(`saleprice`) AS 'average',
	MIN(`saleprice`) AS 'lowest price',
	MAX(`saleprice`) AS 'highest price' 
FROM `ORDERS`;

#20
SELECT COUNT(*) AS 'amount of orders' FROM `ORDERS`;

#21
SELECT `custid`, COUNT(*) AS `order count`
FROM `ORDERS` 
WHERE `saleprice`>=8000
GROUP BY `custid`
HAVING `order count`>=2;

#22
SELECT * FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
ON a.custid=b.custid;

SELECT * FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
USING(`custid`);

SELECT * FROM `CUSTOMER` AS a, `ORDERS` AS b WHERE a.custid=b.custid;

#23
SELECT * FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
ON a.custid=b.custid
ORDER BY a.custid;

#24
SELECT a.`name`, b.`saleprice` FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
USING(`custid`);

#25
SELECT `name`, SUM(`saleprice`) FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
ON a.custid=b.custid
GROUP BY a.`name`
ORDER BY a.`name`;

#26

#27

#28

#29

#30

#31
#32