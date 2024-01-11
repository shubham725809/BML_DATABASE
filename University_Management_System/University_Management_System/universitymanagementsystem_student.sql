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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) NOT NULL,
  `ssn` varchar(9) DEFAULT NULL,
  `dob` date NOT NULL,
  `currentAddress` varchar(45) NOT NULL,
  `sex` enum('Male','Female') NOT NULL,
  `currentPhoneNo` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  `departmentID` int(11) NOT NULL,
  `guadianID` int(11) NOT NULL,
  PRIMARY KEY (`studentID`),
  KEY `fk_departmentID_idx` (`departmentID`),
  KEY `fk_guardianID_idx` (`guadianID`),
  KEY `student_Idx` (`studentID`),
  CONSTRAINT `fk_departmentID_student` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_guardianID_student` FOREIGN KEY (`guadianID`) REFERENCES `guardian` (`guardianID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1907894,'Celia',NULL,'Moore',NULL,'1990-03-12','Boston','Female','1236541256','celia@neu.edu',101,1000),(1907895,'Randal',NULL,'Morace',NULL,'1991-12-25','Cambridge','Female','5478547854','randal@neu.edu',101,1001),(1907896,'Mayra','','Bengtson',NULL,'1992-06-06','Waltham','Female','1233214565','mayra@neu.edu',102,1002),(1907897,'Tona',NULL,'Bengtson',NULL,'1985-05-05','Waltham','Female','4566544569','tona@neu.edu',102,1002),(1907898,'Maria',NULL,'Spiker',NULL,'1992-07-25','Beijing','Female','5412145632','maria@neu.edu',101,1003),(1907899,'Wilbur',NULL,'Burditt',NULL,'1993-08-08','Paris','Male','2585258525','wilbur@neu.edu',100,1004),(1907900,'Chong','Sal','Larimer','789654123','1994-02-01','Rome','Male','7458963215','chong@neu.edu',101,1005),(1907901,'Shelley',NULL,'Bhatnagar','654456987','1991-03-24','Boston','Female','6544569877','shelley@neu.edu',100,1005);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER backup_student BEFORE UPDATE ON student
FOR EACH ROW
BEGIN
    INSERT INTO 
    student_Backup(studentID, firstName, middleName, lastName, address, phoneNo, guardianID) 
	values(Old.studentID,Old.firstName,Old.middleName,Old.lastName,Old.currentAddress,Old.currentPhoneNo,Old.guadianID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-20 23:36:02
