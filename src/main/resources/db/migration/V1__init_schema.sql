/*
 * Relationship tables
 */

-- User <-> Role (Many-To-Many)
-- Role <-> Privilege (Many-To-Many) 
-- Person <-> User (One-To-One) 
-- Person <-> ToDo record (One-To-Many) 
-- Person <-> Position (Many-To-Many)
-- Position <-> Project (Many-To-Many)

/*
 * Security Domain entities
 */
-- User table
CREATE TABLE IF NO EXISTS `user` (
	`id`       		BIGINT(20) NOT NULL AUTO_INCREMENT,
	`email` 		VARCHAR(100) NOT NULL,
	`password` 		VARCHAR(100) NOT NULL,
	`enabled`  		BOOLEAN NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Role table
CREATE TABLE IF NOT EXISTS `role` (
  	`id`       	BIGINT(20) NOT NULL AUTO_INCREMENT,
  	`name` 	 	VARCHAR(100) NOT NULL,
 	PRIMARY KEY (`id`),
  	UNIQUE KEY `ukey_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Privilege table
CREATE TABLE IF NOT EXISTS `privilege` (
  	`id`       	BIGINT(20) NOT NULL AUTO_INCREMENT,
 	`name` 	 	VARCHAR(100) NOT NULL,
  	PRIMARY KEY (`id`),
  	UNIQUE KEY `ukey_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
 * Application Domain entities
 */
-- Person table
CREATE TABLE IF NOT EXISTS `person` (
	`id`       		BIGINT(20) NOT NULL AUTO_INCREMENT,
	`first_name`	VARCHAR(100) DEFAULT NULL,
	`last_name` 	VARCHAR(100) DEFAULT NULL,
	`dob` 	 		DATE DEFAULT NULL,
	`guid`	 		VARCHAR(100) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE KEY `ukey_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Position table
CREATE TABLE IF NOT EXISTS `position` (
  	`id`       	BIGINT(20) NOT NULL AUTO_INCREMENT,
  	`name` 	 	VARCHAR(100) NOT NULL,
 	PRIMARY KEY (`id`),
  	UNIQUE KEY `ukey_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Project table
CREATE TABLE IF NOT EXISTS `project` (
	`id`       		BIGINT(20) NOT NULL AUTO_INCREMENT,
	`name`			VARCHAR(100) DEFAULT NULL,
	`description` 	VARCHAR(100) DEFAULT NULL,
	`guid`	 		VARCHAR(100) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE KEY `ukey_name` (`name`),
	UNIQUE KEY `ukey_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ToDo record
CREATE TABLE IF NOT EXISTS `todo` (
	`id`       		BIGINT(20) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
