# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.13)
# Database: books
# Generation Time: 2016-07-15 09:00:54 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `bookid` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `author` varchar(120) DEFAULT NULL,
  `published` char(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;

INSERT INTO `books` (`bookid`, `title`, `author`, `published`, `stock`)
VALUES
	(1,'Scion of Ikshvaku','Amish Tripathi','06-22-2015',2),
	(2,'The Lost Symbol','Dan Brown','07-22-2010',3),
	(3,'Who Will Cry When You Die?','Robin Sharma','06-15-2006',4),
	(4,'Inferno','Dan Brown','05-05-2014',3),
	(5,'The Fault in our Stars','John Green','01-03-2015',5);

/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table borrowings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `borrowings`;

CREATE TABLE `borrowings` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `bookid` int(6) NOT NULL,
  `memberid` int(6) NOT NULL,
  `borrowdate` char(11) DEFAULT NULL,
  `returndate` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `borrowings` WRITE;
/*!40000 ALTER TABLE `borrowings` DISABLE KEYS */;

INSERT INTO `borrowings` (`id`, `bookid`, `memberid`, `borrowdate`, `returndate`)
VALUES
	(1,1,3,'01-20-2016','03-17-2016'),
	(2,2,4,'01-19-2016','03-23-2016\n'),
	(3,1,1,'02-17-2016	','05-18-2016\n'),
	(4,4,2,'12-15-2015	','04-13-2016\n'),
	(5,2,2,'02-18-2016	','04-19-2016\n'),
	(6,3,5,'02-29-2016	','04-11-2016');

/*!40000 ALTER TABLE `borrowings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `memberid` int(6) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;

INSERT INTO `members` (`memberid`, `firstname`, `lastname`)
VALUES
	(1,'Sue','Mason'),
	(2,'Ellen','Horton'),
	(3,'Henry','Clarke'),
	(4,'Mike','Wilis'),
	(5,'Lida','Tyler');

/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
