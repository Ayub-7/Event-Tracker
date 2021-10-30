-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 132.181.143.31    Database: INFO263_ahm92_tserver
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `front_cluster`
--

DROP TABLE IF EXISTS `front_cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `front_cluster` (
  `cluster_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cluster_name` varchar(128) DEFAULT NULL,
  `cluster_description` varchar(255) DEFAULT NULL,
  `connection_type_id` int(10) unsigned NOT NULL,
  `account_series_id` int(11) unsigned DEFAULT NULL,
  `cluster_domain` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`cluster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_cluster`
--

LOCK TABLES `front_cluster` WRITE;
/*!40000 ALTER TABLE `front_cluster` DISABLE KEYS */;
INSERT INTO `front_cluster` VALUES (1,'Research','Math Dept Research Machines',4,NULL,'UOCNT'),(2,'UC-Learn','Skills testing autologin',5,1,''),(3,'Labs','Math Dept student undergrad labs',4,NULL,'UOCNT'),(4,'MapleTA','MapleTA Online Test',5,3,''),(5,'STAT101-Test','STAT101 Online Test',5,1,''),(6,'STAT101-2K8','STAT101 Online Test',5,1,''),(7,'EMTH271-Test','EMTH271 Matlab Assisted Test',5,5,''),(8,'EMTH171-A','EMTH171 Test Part A',5,4,''),(9,'EMTH171-B','EMTH171 Test Part B',5,6,''),(10,'EMTH171-B2','EMTH171 Test Part B - 2',5,6,''),(11,'STAT101-2K8-Dis','STAT101 Online Test - Disability Interface',5,2,''),(12,'ENCH391-Exam','ENCH391 Exam',5,5,'UOCNT'),(13,'CMDS281-Exam','CMDS281/664 Exam',5,5,''),(14,'LAWS370-Exam','LAWS370 Exam',5,5,'UOCNT'),(15,'ENCH298-Test','ENCH298 Matlab Assisted Test',5,5,'UOCNT'),(16,'Coderunner','EMTH171 Coderunner Test',5,6,'UOCNT'),(17,'LAWS338-Exam','LAWS338 Exam',5,5,'UOCNT'),(18,'MATH363-Test','MATH363 Matlab Assisted Test',5,5,'UOCNT'),(19,'CMDS657-Exam','CMDS657 Exam',5,5,'UOCNT'),(20,'LAWS371-Exam','LAWS371 Exam',5,5,'UOCNT'),(21,'ARTH329-Exam','ARTH329 Exam',5,6,'UOCNT'),(22,'MATH110-TestA','MATH110 Test A',5,1,'UOCNT'),(23,'MATH110-Test','MATH110 Test',5,1,'UOCNT'),(24,'LAWS356-Exam','LAWS356 Exam',5,5,'UOCNT'),(25,'INFO263-Exam','INFO263 Exam',5,3,'UOCNT'),(26,'MATH110-Exam','MATH110 Exam',5,1,'UOCNT');
/*!40000 ALTER TABLE `front_cluster` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-17 16:28:21
