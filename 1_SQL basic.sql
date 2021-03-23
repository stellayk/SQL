#date: 3/23/2021
#name: Yeeun Kim
#content: SQL

#2-1
CREATE DATABASE `MyDB`;
DROP DATABASE `MyDB`;

#2-2
CREATE TABLE `USER1` (
	`uid`	VARCHAR(10),
	`name` VARCHAR(10),
	`hp`	VARCHAR(13),
	`age`	TINYINT
);

DROP TABLE `USER1`;

#2-3
INSERT INTO `USER1` VALUES('A101','김유신','010-1234-1111',25);
INSERT INTO `USER1` VALUES('A102','김춘추','010-1234-2222',23);
INSERT INTO `USER1` VALUES('A103','장보고','010-1234-3333',32);
INSERT INTO `USER1` (age, name, uid, hp) 
			VALUES(45,'강감찬','A104','010-1234-4444');
INSERT INTO `USER1` SET 
								NAME='이순신', 
								age=51, 
								hp='010-1234-5555', 
								uid='A105';

#2-4
SELECT uid, NAME, age, hp FROM `USER1`;
SELECT NAME, uid, hp FROM `USER1`;
SELECT * FROM `USER1`;

#2-5
UPDATE `USER1` SET `hp`='010-1234-1234';
UPDATE `USER1` SET 
						`uid`='B101', 
						`name`='홍길동';
UPDATE `USER1` SET 
						`uid`='A101', 
						`name`='김유신' 
					WHERE 
						age=23;
						
#2-6
DELETE FROM `USER1` WHERE uid='A101';
DELETE FROM `USER1` WHERE uid='A102' AND age=25;
DELETE FROM `USER1` WHERE age>=40;