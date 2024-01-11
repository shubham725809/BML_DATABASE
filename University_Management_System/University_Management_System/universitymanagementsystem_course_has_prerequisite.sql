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
-- Table structure for table `course_has_prerequisite`
--

DROP TABLE IF EXISTS `course_has_prerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_has_prerequisite` (
  `courseID` int(11) NOT NULL,
  `prerequisiteID` int(11) NOT NULL,
  PRIMARY KEY (`courseID`,`prerequisiteID`),
  KEY `fk_course_has_prerequisite_prerequisite1_idx` (`prerequisiteID`),
  KEY `fk_course_has_prerequisite_course1_idx` (`courseID`),
  CONSTRAINT `fk_course_has_prerequisite_course1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_course_has_prerequisite_prerequisite1` FOREIGN KEY (`prerequisiteID`) REFERENCES `prerequisite` (`prerequisiteID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_has_prerequisite`
--

LOCK TABLES `course_has_prerequisite` WRITE;
/*!40000 ALTER TABLE `course_has_prerequisite` DISABLE KEYS */;
INSERT INTO `course_has_prerequisite` VALUES (2004,2001),(2006,2002),(2000,2003),(2005,2003);
/*!40000 ALTER TABLE `course_has_prerequisite` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-20 23:35:57
