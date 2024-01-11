CREATE DATABASE  IF NOT EXISTS `universitymanagementsystem` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `universitymanagementsystem`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: universitymanagementsystem
-- ------------------------------------------------------
-- Server version	5.6.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `instructor_has_books`
--

DROP TABLE IF EXISTS `instructor_has_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_has_books` (
  `instructorID` int(11) NOT NULL,
  `copyNo` int(11) NOT NULL,
  `issueDate` date NOT NULL,
  `returnDate` date DEFAULT NULL,
  PRIMARY KEY (`instructorID`,`copyNo`),
  KEY `fk_instructor_has_books_instructor1_idx` (`instructorID`),
  KEY `fk_copyNo_has_idx` (`copyNo`),
  CONSTRAINT `fk_instructor_has_books_instructor1` FOREIGN KEY (`instructorID`) REFERENCES `instructor` (`instructorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_copyNo_has` FOREIGN KEY (`copyNo`) REFERENCES `book_has_copies` (`copyNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_has_books`
--

LOCK TABLES `instructor_has_books` WRITE;
/*!40000 ALTER TABLE `instructor_has_books` DISABLE KEYS */;
INSERT INTO `instructor_has_books` VALUES (4001,8080821,'2014-04-01',NULL),(4001,8080841,'2014-03-12','2014-03-24'),(4007,8080831,'2013-12-15',NULL);
/*!40000 ALTER TABLE `instructor_has_books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-20 23:35:54
