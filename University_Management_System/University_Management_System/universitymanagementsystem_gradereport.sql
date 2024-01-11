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
-- Table structure for table `gradereport`
--

DROP TABLE IF EXISTS `gradereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradereport` (
  `reportID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `attempt` tinyint(4) NOT NULL DEFAULT '1',
  `letterGrade` enum('A','A-','B+','B','B-','C+','C','F') NOT NULL,
  `numericGrade` float NOT NULL,
  `semester` varchar(45) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`reportID`),
  KEY `fk_studentID_idx` (`studentID`),
  KEY `fk_courseID_idx` (`courseID`),
  CONSTRAINT `fk_courseID_report` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_studentID_report` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradereport`
--

LOCK TABLES `gradereport` WRITE;
/*!40000 ALTER TABLE `gradereport` DISABLE KEYS */;
INSERT INTO `gradereport` VALUES (101010,2000,1907894,1,'C',2.4,'Fall',2013),(101011,2000,1907894,2,'A-',3.7,'Spring',2014),(101012,2001,1907894,1,'B+',3.4,'Fall',2013),(101013,2001,1907895,1,'B',3,'Fall',2012),(101014,2002,1907896,1,'A-',3.7,'Summer',2013),(101015,2002,1907897,1,'A',4,'Fall ',2013),(101016,2002,1907898,1,'A',4,'Fall',2014),(101017,2003,1907898,1,'A-',3.7,'Fall',2014),(101018,2004,1907899,1,'B',3,'Fall',2014),(101019,2005,1907900,1,'A',4,'Fall',2014);
/*!40000 ALTER TABLE `gradereport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-20 23:36:03
