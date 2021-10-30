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
-- Table structure for table `front_event`
--

DROP TABLE IF EXISTS `front_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `front_event` (
  `event_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `event_name` (`event_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2083 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_event`
--

LOCK TABLES `front_event` WRITE;
/*!40000 ALTER TABLE `front_event` DISABLE KEYS */;
INSERT INTO `front_event` VALUES (1,'EMTH171-LabTestB',1),(2,'EMTH118-MapleTA-Test',1),(3,'EMTH118-MapleTA',1),(4,'EMTH119-MapleTA-1 hour',1),(5,'EMTH119-MapleTA-2 hour',1),(6,'EMTH271-Matlab',1),(7,'STAT101-Test-5 hour',1),(8,'STAT101-Test-6 hour',1),(9,'EMTH271-Matlab-1 hour',1),(10,'EMTH171-Test',1),(12,'EMTH171-Test-Extended',1),(14,'EMT003 Lab Test',1),(15,'EMTH171-Test-Backup',1),(16,'EMTH118-MapleTA-half hour',1),(17,'EMTH171-Resit',1),(18,'EMTH119-MapleTA-Resit',1),(19,'EMTH271-Resit',1),(20,'STAT101-Test-1 hour',1),(21,'ENCH391-Exam',1),(22,'STAT101-Test-Summer',1),(23,'EMTH171-Test-Summer',1),(24,'MATH101-MapleTA',1),(25,'EMTH118-16S1-MapleTA-Fri',1),(26,'EMTH118-16S1-MapleTA-Wed',1),(27,'EMTH118-16S1-MapleTA-Thu',1),(28,'EMTH210-16S1-MapleTA',1),(29,'STAT101-16S1-Wed',1),(30,'STAT101-16S1-Thu',1),(31,'MATH101-MapleTA-Resit',1),(32,'EMT003-16S1 Test',1),(33,'STAT101-16S1-Catchup',1),(34,'CMDS281/664 Exam',1),(35,'EMTH171-16S2_Matlab',1),(36,'EMTH118-16S2-MapleTA',1),(37,'EMTH119-16S2-MapleTA',1),(38,'EMTH118-16S2-1 hour',1),(39,'STAT101-16S2-Wed',1),(40,'STAT101-16S2-Thu',1),(41,'EMT003-16S2 Test',1),(42,'EMTH171-16S2 Test',1),(43,'EMTH171-16S2 ETest',1),(44,'EMTH171-16S2 Resit',1),(45,'EMTH118-16S2-MapleTA-Catchup',1),(46,'LAWS370-16S2-Exam',1),(47,'ENCH391-16S2 Exam',1),(48,'STAT101-16SU2-Wed',1),(49,'STAT101-16SU2-Fri',1),(51,'EMT003-16SU2-Test',1),(52,'EMTH171-16SU2-Test',1),(53,'STAT101-16SU2 Resit',1),(54,'MATH101-17S1 MapleTA',1),(55,'EMTH118-17S1-MapleTA-3hour',1),(56,'EMTH118-17S1-MapleTA-4hour',1),(57,'STAT101-17S1-Wed',1),(58,'STAT101-17S1-Thu',1),(59,'STAT101-17S1-Thu-3.5hour',1),(60,'EMTH210-17S1-Tue',1),(61,'EMTH210-17S1-Wed',1),(62,'EMTH210-17S1-Tru',1),(63,'MATH101-17S1-MapleTA Resit',1),(64,'EMTH118-17S1-DRS',1),(65,'EMTH118-17S1-Resit',1),(66,'EMTH210-17S1-1-Hour',1),(67,'ENCH298-17S1-Test',1),(68,'EMT003 Resit',1),(69,'MATH101-17S1 MapleTA-Resit',1),(70,'CMDS281/664-17S1 Exam',1),(71,'MATH101-17S2 MapleTA',1),(72,'EMTH118-17S2 Wed',1),(73,'EMTH118-17S2 Thu',1),(74,'EMTH171-17S2 Test1 Wed 035',1),(75,'EMTH171-17S2 Test1 Thu 035',1),(76,'EMTH171-17S2 Test1 Wed 442',1),(77,'EMTH118-17S2 Resit',1),(78,'STAT101-17S2 Wed',1),(79,'STAT101-17S2 Thu',1),(80,'EMTH171-17S2 Test1 Resit',1),(81,'ENCH391-17S2 Test',1),(82,'EMTH171-17S2-Test2',1),(83,'EMTH171-17S2-Test2-Ext',1),(84,'EMTH271-17S2-Test',1),(86,'EMTH171-17S2-Test2-Resit',1),(87,'STAT101-17S2 Resit',1),(88,'LAWS338-17S2 Demo',1),(89,'LAWS338-17S2 Exam',1),(90,'STAT101-17SU2-Wed',1),(91,'STAT101-17SU2-Fri',1),(92,'EMT003-17SU2-Test',1),(93,'STAT101-18S1 Wed',1),(94,'STAT101-18S1 Thu',1),(95,'EMTH210-18S1 3-hour',1),(96,'EMTH210-18S1 4-hour',1),(97,'STAT101-18S1-Resit',1),(98,'EMTH171-18S2 Test1 Wed 035',1),(99,'EMTH171-18S2 Test1 Thu 035',1),(100,'EMTH171-18S2 Test1 Wed 442',1),(101,'EMTH171-18S2 Test1 Thu 442',1),(102,'STAT101-18S2 Wed',1),(103,'STAT101-18S2 Thu',1),(104,'EMTH171-18S2 Test1-resit',1),(105,'MATH363 Test',1),(106,'ENCH391-18S2 Test',1),(107,'EMTH119-18S2 MapleTA Wed',1),(108,'EMTH119-18S2 MapleTA Thu',1),(109,'EMTH171-18S2-Test2',1),(110,'EMTH171-18S2-Test2-Ext',1),(111,'EMTH119-18S2 MapleTA Fri',1),(112,'EMTH271-18S2-Test',1),(113,'EMTH171-18S2-Test2-Resit1',1),(114,'EMTH171-18S2-Test2-Resit2',1),(115,'EMTH119-18S2 MapleTA DRS',1),(116,'CMDS657-18S2 Exam',1),(118,'LAWS338-18S2 Exam',1),(119,'LAWS371-18S2 Exam',1),(120,'ENCH391-18S2 Exam',1),(121,'EMT003-18SU2-Test',1),(122,'STAT101-19S1 Wed',1),(123,'STAT101-19S1 Thu',1),(124,'EMTH210-19S1 3-hour',1),(125,'EMTH210-19S1 4-hour',1),(126,'STAT101-19S1 Catchup',1),(127,'ARTH329-19S1 Exam',1),(128,'CMDS281/644-19S1 Exam',1),(129,'MATH110-19S2 Test A',1),(130,'MATH110-19S2 Test B',1),(131,'EMTH171-19S2 Test1 Wed 035',1),(132,'EMTH171-19S2 Test1 Wed 442',1),(133,'EMTH171-19S2 Test1 Thu 035',1),(134,'STAT101-19S2 Wed',1),(135,'STAT101-19S2 Thu',1),(136,'MATH363-19S2 Test',1),(137,'EMTH171-19S2 Test1 Resit',1),(138,'MATH110-19S2 Test3 MapleTA',1),(139,'ENCH391-19S2 Test',1),(140,'MATH110-19S2 Test4 MapleTA',1),(142,'EMTH171-19S2 Test2 1 Session',1),(143,'EMTH171-19S2 Test2 1 Ext Session',1),(144,'EMTH171-19S2 Test2 2 Sessions',1),(145,'EMTH171-19S2 Test2 3 Sessions',1),(146,'EMTH171-19S2 Test2 4 Sessions',1),(147,'EMTH171-19S2 Test2 5 Ext Sessions',1),(148,'EMTH271-19S2 Test',1),(149,'EMTH119-19S2-Wednesday',1),(150,'EMTH119-19S2-Thursday',1),(151,'EMTH171-19S2-Catchup',1),(152,'EMTH171-19S2-Catchup2',1),(153,'EMTH171-19S2-Test2-Resit',1),(154,'MATH110-19S2 Test5',1),(155,'ENCH391-19S2 Exam',1),(156,'LAWS356-19S2 Exam',1),(157,'MATH110-19S2 Exam',1),(158,'LAWS338-19S2 Exam',1),(159,'INFO263-19S2 Exam',1),(160,'STAT101-19SU2 Fri',1),(161,'STAT101-19SU2 Wed',1),(162,'EMTH171-19SU2 Test',1),(163,'MATH110-19S2 Test Thursday',1),(164,'MATH110-19S1 Test Friday',1),(165,'MATH110-19S1 Test Wednesday E033',1),(166,'MATH110-19S1 Test Wednesday E035',1),(167,'EMTH210-20S1 3-hour',1),(168,'EMTH210-20S1 4-hour',1),(169,'EMTH210-20S1 2+hour',1),(170,'STAT101-20S1 Wednesday ',1),(171,'STAT101-20S1 Thursday ',1),(172,'EMTH210-20S1 1-hour',1),(543,'anyhting',1),(548,'bcidbiws',1),(801,'gs',1),(950,'hello',1),(2008,'thing',1),(2009,'test5',1),(2011,'test6',1),(2013,'test7',1),(2014,'test8',1),(2016,'test9',1),(2018,'test10',1),(2020,'test11',1),(2021,'test12',1),(2025,'test13',1),(2026,'test14',1),(2027,'final',1),(2028,'htht',1),(2050,'njgfmf',1),(2051,'nnhm',1),(2052,'jgjhgjg',1),(2053,'tdhtfg',1),(2054,'jfhg',1),(2056,'hgjm',1),(2057,'hgj3',1),(2058,'test50001',1),(2059,'testing',1),(2060,'test50002',1),(2061,'test565',1),(2063,'test566',1),(2064,'test567',1),(2065,'test50003',1),(2066,'testing1.2',1),(2067,'test568',1),(2068,'test50004',1),(2069,'ly,',1),(2070,'testing1.5',1),(2071,'testing1.6',1),(2072,'test.ye',1),(2073,'testingnyrntesjnte',1),(2074,'testin48867',1),(2075,'final test',1),(2076,'testingbgrwbgwsbgws',1),(2077,'testing44556565',1),(2078,'testing3333333',1),(2079,'testing9999',1),(2080,'testing46787654',1),(2081,'testing876879686',1),(2082,'last test',1);
/*!40000 ALTER TABLE `front_event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-17 16:28:20
