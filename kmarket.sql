#date: 04/20/2021
#name: Yeeun Kim
#content: Kmarket website tables

#primary category
CREATE TABLE `km_cate1` (
	`code1` TINYINT PRIMARY KEY,
	`title` VARCHAR(100)
);

#secondary category
CREATE TABLE `km_cate2` (
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`code1`	TINYINT,
	`code2`	TINYINT,
	`title`	VARCHAR(100)
);

#terms
CREATE TABLE `km_terms` (
	`terms`		TEXT,
	`privacy`	TEXT,
	`location`	TEXT,
	`finance`	TEXT,
	`tax`			TEXT
);

#member
CREATE TABLE `km_member` (
	`uid`			VARCHAR(20) PRIMARY KEY,
	`pass`		VARCHAR(255),
	`name`		VARCHAR(20),
	`gender` 	TINYINT,
	`hp`			CHAR(13),
	`email`		VARCHAR(100),
	`type`		TINYINT,
	`point`		INT DEFAULT 0,
	`grade`		TINYINT DEFAULT 2,
	`zip`			CHAR(5),
	`addr1`		VARCHAR(255),
	`addr2`		VARCHAR(255),
	`company`	VARCHAR(20),
	`ceo`			VARCHAR(20),
	`bizRegNum`	CHAR(12),
	`commRepNum`VARCHAR(100),
	`tel`			VARCHAR(20),
	`manager`	VARCHAR(20),
	`managerHp`	CHAR(13),
	`fax`			VARCHAR(20),
	`ip`			VARCHAR(20),
	`leaveDate`	DATETIME,
	`rdate`		DATETIME,
	`etc1`		INT,
	`etc2`		INT,
	`etc3`		VARCHAR(20),
	`etc4`		VARCHAR(20),
	`etc5`		VARCHAR(20)
);

#point
CREATE TABLE `km_member_point` (
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`uid`		VARCHAR(20),
	`code`	INT,
	`price`	INT,
	`point`	INT,
	`rdate`	DATETIME
);

#product
CREATE TABLE `km_product` (
	`code`		INT(10) ZEROFILL AUTO_INCREMENT PRIMARY KEY,
	`cate1`		TINYINT,
	`cate2`		TINYINT,
	`name`		VARCHAR(100),
	`descript`	VARCHAR(100),
	`company`	VARCHAR(100),
	`seller`		VARCHAR(20),
	`price`		INT,
	`discount`	TINYINT,
	`point`		INT DEFAULT 0,
	`stock`		INT DEFAULT 0,
	`sold`		INT DEFAULT 0,
	`delivery`	INT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`score`		INT DEFAULT 0,
	`review`		INT DEFAULT 0,
	`thumb1`		VARCHAR(255),
	`thumb2`		VARCHAR(255),
	`thumb3`		VARCHAR(255),
	`detail`		VARCHAR(255),
	`status`		VARCHAR(20) DEFAULT '새상품',
	`dutyfree`	VARCHAR(20) DEFAULT '과세상품',
	`receipt`	VARCHAR(60) DEFAULT '발행가능-신용카드 전표, 온라인 현금영수증',
	`bizClass`	VARCHAR(20) DEFAULT '사업자판매자',
	`origin`		VARCHAR(20) DEFAULT '국내산',
	`ip`			VARCHAR(100),
	`rdate`		DATETIME,
	`etc1`		INT,
	`etc2`		INT,
	`etc3`		VARCHAR(20),
	`etc4`		VARCHAR(20),
	`etc5`		VARCHAR(20)
);

#cart
CREATE TABLE `km_product_cart` (
	`seq`			INT AUTO_INCREMENT PRIMARY KEY,
	`uid`			VARCHAR(20),
	`code`		INT,
	`name`		VARCHAR(100),
	`count`		INT,
	`price`		INT,
	`discount`	INT,
	`point`		INT,
	`delivery`	INT,
	`total`		INT,
	`rdate`		DATETIME
);

#order
CREATE TABLE `km_product_order` (
	`seq`			INT AUTO_INCREMENT PRIMARY KEY,
	`uid`			VARCHAR(20),
	`code`		INT,
	`name`		VARCHAR(100),
	`count`		INT,
	`price`		INT,
	`discount`	INT,
	`point`		INT,
	`delivery`	INT,
	`total`		INT,
	`payment`	TINYINT,
	`complete`	TINYINT,
	`rdate`		DATETIME
);

#review
CREATE TABLE `km_product_review` (
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`code`	INT,
	`content`VARCHAR(255),
	`uid`		VARCHAR(20),
	`rating`	TINYINT,
	`ip`		VARCHAR(20),
	`rdate`	DATETIME
	
);