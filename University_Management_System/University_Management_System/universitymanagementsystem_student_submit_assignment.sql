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
-- Table structure for table `student_submit_assignment`
--

DROP TABLE IF EXISTS `student_submit_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_submit_assignment` (
  `assignmentID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `evaluationDate` date DEFAULT NULL,
  `pointsObtained` tinyint(4) DEFAULT NULL,
  `writtenEvaluation` varchar(45) DEFAULT '-',
  `submissionDate` date NOT NULL,
  `submissionTime` time NOT NULL,
  PRIMARY KEY (`assignmentID`,`studentID`),
  KEY `fk_studentID_idx` (`studentID`),
  CONSTRAINT `fk_assignmentID_submit` FOREIGN KEY (`assignmentID`) REFERENCES `assignment` (`assignmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_studentID_submit` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_submit_assignment`
--

LOCK TABLES `student_submit_assignment` WRITE;
/*!40000 ALTER TABLE `student_submit_assignment` DISABLE KEYS */;
INSERT INTO `student_submit_assignment` VALUES (2000050,1907894,'2014-04-19',99,'great job','2014-04-18','23:00:00'),(2000050,1907895,'2014-04-11',100,'-','2014-04-19','22:00:00'),(2000050,1907896,NULL,NULL,'-','2014-04-10','21:00:00'),(2001050,1907895,'2014-04-20',90,'null pointer in q1','2014-04-19','22:20:20'),(2001050,1907896,'2014-04-20',92,'null pointer in q2','2014-04-20','12:20:20'),(2002050,1907897,'2014-04-25',45,'-','2014-04-21','23:00:01'),(2002050,1907898,NULL,NULL,'-','2014-04-22','05:05:05'),(2005050,1907897,'2014-04-30',95,'-','2014-04-23','23:59:58');
/*!40000 ALTER TABLE `student_submit_assignment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-20 23:36:06
