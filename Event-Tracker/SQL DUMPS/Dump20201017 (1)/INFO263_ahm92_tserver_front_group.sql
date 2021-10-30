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
-- Table structure for table `front_group`
--

DROP TABLE IF EXISTS `front_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `front_group` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `machine_group` varchar(100) NOT NULL DEFAULT '',
  `menu_id` int(10) unsigned NOT NULL,
  `message_id` int(10) unsigned NOT NULL DEFAULT '1',
  `version` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `idxGroup` (`machine_group`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_group`
--

LOCK TABLES `front_group` WRITE;
/*!40000 ALTER TABLE `front_group` DISABLE KEYS */;
INSERT INTO `front_group` VALUES (1,'Default',1,1,0),(2,'Lab033',15,1,1),(3,'Home1',4,1,1),(4,'Home2',5,1,1),(5,'Erskine-033',15,1,1),(6,'Erskine-035',15,1,1),(7,'Erskine-038',15,1,1),(8,'Erskine-442',22,1,1),(9,'Erskine-Office',7,1,1),(10,'Erskine-Research-Linux',8,1,1),(11,'Erskine-Research-Windows',4,1,1),(12,'Erskine-411',11,1,1),(14,'Test_Group',11,1,1),(15,'Erskine-423-Test',12,1,1),(16,'Advanced Computing Lab',13,1,1),(17,'Erskine-421-Test',12,1,1),(18,'Research',3,1,1),(19,'Erskine-461',17,1,1),(20,'Erskine-436',22,1,1),(21,'Erskine-442b',22,1,1),(22,'Erskine-036',15,1,1),(23,'Development',19,1,1),(24,'Erskine424-Test',23,1,1);
/*!40000 ALTER TABLE `front_group` ENABLE KEYS */;
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
