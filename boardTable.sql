#date: 3/29/2021
#name: Yeeun Kim
#content: table for Jboard1 project

#member table
CREATE TABLE `JBOARD_USER` (
	`uid`		VARCHAR(20) PRIMARY KEY,
	`pass`	VARCHAR(255),
	`name`	VARCHAR(20),
	`nick`	VARCHAR(20) UNIQUE,
	`email`	VARCHAR(20) UNIQUE,
	`hp`		CHAR(13) UNIQUE,
	`grade`	TINYINT DEFAULT 2,
	`zip`		CHAR(5),
	`addr1`	VARCHAR(255),
	`addr2`	VARCHAR(255),
	`regip`	VARCHAR(20),
	`rdate`	DATETIME
);

#terms table
CREATE TABLE `JBOARD_TERMS` (
	`terms`	 TEXT,
	`privacy` TEXT
);

#article table
CREATE TABLE `JBOARD_ARTICLE` (
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
	`parent` INT DEFAULT 0,
	`comment` TINYINT DEFAULT 0,
	`cate` VARCHAR(10) DEFAULT 'free',
	`title` VARCHAR(255),
	`content` TEXT,
	`file` TINYINT DEFAULT 0,
	`hit` INT DEFAULT 0,
	`uid` VARCHAR(20),
	`regip` VARCHAR(20),
	`rdate` DATETIME 
);

#file table
CREATE TABLE `JBOARD_FILE` (
	`seq`	INT AUTO_INCREMENT PRIMARY KEY,
	`parent` INT,
	`oldName` VARCHAR(255),
	`newName` VARCHAR(255),
	`download` INT DEFAULT 0,
	`rdate` DATETIME
);
