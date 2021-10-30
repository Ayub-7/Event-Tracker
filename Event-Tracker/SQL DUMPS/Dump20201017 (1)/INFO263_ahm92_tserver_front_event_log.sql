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
-- Table structure for table `front_event_log`
--

DROP TABLE IF EXISTS `front_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `front_event_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) unsigned DEFAULT NULL,
  `action_id` int(11) unsigned DEFAULT NULL,
  `daily_id` int(11) unsigned DEFAULT NULL,
  `weekly_id` int(11) unsigned DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ran` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `event_index` (`event_id`,`action_id`,`daily_id`,`weekly_id`),
  KEY `log_action_fk` (`action_id`),
  KEY `log_daily_fk_idx` (`daily_id`),
  KEY `log_weekly_fk_idx` (`weekly_id`),
  CONSTRAINT `log_action_fk` FOREIGN KEY (`action_id`) REFERENCES `front_action` (`action_id`),
  CONSTRAINT `log_daily_fk` FOREIGN KEY (`daily_id`) REFERENCES `front_daily` (`event_id`),
  CONSTRAINT `log_event_fk` FOREIGN KEY (`event_id`) REFERENCES `front_event` (`event_id`),
  CONSTRAINT `log_weekly_fk` FOREIGN KEY (`weekly_id`) REFERENCES `front_weekly` (`weekly_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5485 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_event_log`
--

LOCK TABLES `front_event_log` WRITE;
/*!40000 ALTER TABLE `front_event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `front_event_log` ENABLE KEYS */;
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
