#date: 03/23/2021
#name: Yeeun Kim
#content: table settings

#3-1
CREATE TABLE `USER2` (
	`uid` VARCHAR(20) PRIMARY KEY,
	`name` VARCHAR(20),
	`hp` CHAR(13),
	`age` TINYINT
);

INSERT INTO `USER2` VALUES ('A101','김유신','010-1234-1111',23);
INSERT INTO `USER2` VALUES ('A102','김춘추','010-1234-2222',23);
INSERT INTO `USER2` VALUES ('A103','장보고','010-1234-3333',23);
INSERT INTO `USER2` VALUES ('A104','강감찬','010-1234-4444',27);

#3-2
CREATE TABLE `USER3` (
	`uid` VARCHAR(10) PRIMARY KEY,
	`name` VARCHAR(10),
	`hp` CHAR(13) UNIQUE,
	`age` TINYINT
);

INSERT INTO `USER3` VALUES ('B101','김김김','010-1111-2222',19);
INSERT INTO `USER3` VALUES ('B102','김이이','010-1234-5678',29);
INSERT INTO `USER3` VALUES ('B103','이이이','010-7777-5555',17);
INSERT INTO `USER3` VALUES ('B104','이유신','010-3333-5555',25);
INSERT INTO `USER3` (`uid`,`name`,`age`)
					VALUES ('A105','이순신',27);
SELECT * FROM `USER3`;

#3-3
kyeUSER4CREATE TABLE `USER4` (
	`seq` 	INT AUTO_INCREMENT PRIMARY KEY,
	`name`	VARCHAR(10),
	`gender` TINYINT,
	`age`		TINYINT,
	`addr`	VARCHAR(255)
);

INSERT INTO `USER4` (`name`,`gender`,`age`,`addr`)
				VALUES ('김유신',1,25,'김해시');
DELETE FROM `USER4` WHERE `seq`=3;

#3-4
CREATE TABLE `USER5` SELECT * FROM `USER4`;

#3-5
CREATE TABLE `USER6` LIKE `USER4`;

#3-6
INSERT INTO `USER6` SELECT * FROM `USER4`;
INSERT INTO `USER6` (`name`, `gender`, `age`, `addr`) SELECT `name`, `gender`, `age`, `addr` FROM `USER4`;
SELECT * FROM `USER6`;