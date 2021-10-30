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
-- Table structure for table `front_weekly`
--

DROP TABLE IF EXISTS `front_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `front_weekly` (
  `weekly_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) unsigned NOT NULL,
  `week_of_year` int(11) unsigned NOT NULL,
  `event_year` year(4) NOT NULL,
  PRIMARY KEY (`weekly_id`),
  KEY `weekly_event_fk_idx` (`event_id`),
  CONSTRAINT `weekly_event_fk` FOREIGN KEY (`event_id`) REFERENCES `front_event` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_weekly`
--

LOCK TABLES `front_weekly` WRITE;
/*!40000 ALTER TABLE `front_weekly` DISABLE KEYS */;
INSERT INTO `front_weekly` VALUES (1,1,30,2015),(2,1,31,2015),(3,1,32,2015),(4,1,33,2015),(5,1,34,2015),(6,1,37,2015),(7,1,38,2015),(8,1,40,2015),(9,1,41,2015),(11,2,29,2015),(13,3,31,2015),(14,3,37,2015),(15,3,40,2015),(16,4,32,2015),(17,5,32,2015),(18,4,38,2015),(19,5,38,2015),(20,4,41,2015),(21,5,41,2015),(22,6,34,2015),(23,6,42,2015),(24,7,33,2015),(25,8,33,2015),(26,9,34,2015),(27,10,39,2015),(28,12,39,2015),(29,14,38,2015),(30,7,39,2015),(31,8,39,2015),(33,16,40,2015),(34,7,42,2015),(35,8,42,2015),(36,17,42,2015),(37,18,42,2015),(38,19,43,2015),(39,20,43,2015),(40,21,46,2015),(41,22,1,2016),(42,23,3,2016),(43,22,2,2016),(44,22,4,2016),(45,22,5,2016),(46,24,10,2016),(47,25,11,2016),(48,25,18,2016),(49,25,21,2016),(50,24,14,2016),(51,24,18,2016),(52,24,20,2016),(53,26,11,2016),(54,26,18,2016),(55,26,21,2016),(56,27,11,2016),(57,27,18,2016),(58,27,21,2016),(59,28,12,2016),(60,29,12,2016),(61,29,19,2016),(62,29,22,2016),(63,30,12,2016),(64,30,19,2016),(65,30,22,2016),(66,31,12,2016),(67,32,20,2016),(68,33,23,2016),(69,34,25,2016),(70,35,29,2016),(71,35,30,2016),(72,35,31,2016),(74,36,31,2016),(75,36,37,2016),(76,36,40,2016),(77,37,31,2016),(78,37,37,2016),(79,37,40,2016),(80,38,32,2016),(81,39,32,2016),(82,40,32,2016),(83,39,38,2016),(84,40,38,2016),(85,39,41,2016),(86,40,41,2016),(87,41,37,2016),(88,42,38,2016),(89,43,38,2016),(90,44,41,2016),(91,45,41,2016),(92,33,41,2016),(93,33,42,2016),(94,46,44,2016),(95,47,45,2016),(96,48,1,2017),(97,48,4,2017),(98,48,5,2017),(99,49,2,2017),(100,51,2,2017),(101,52,4,2017),(102,53,6,2017),(103,53,7,2017),(104,54,10,2017),(105,54,14,2017),(106,54,18,2017),(107,54,20,2017),(108,55,11,2017),(109,55,18,2017),(110,55,21,2017),(111,56,11,2017),(112,56,18,2017),(113,56,21,2017),(114,57,12,2017),(115,59,12,2017),(116,57,19,2017),(117,58,19,2017),(118,57,22,2017),(119,58,22,2017),(120,60,12,2017),(121,61,12,2017),(122,62,12,2017),(123,63,11,2017),(124,64,11,2017),(125,65,12,2017),(126,66,12,2017),(127,67,18,2017),(128,65,18,2017),(129,51,19,2017),(130,68,20,2017),(131,69,21,2017),(132,70,24,2017),(133,65,22,2017),(134,33,23,2017),(135,71,31,2017),(136,71,38,2017),(137,71,40,2017),(138,72,32,2017),(140,73,32,2017),(141,74,32,2017),(142,75,32,2017),(143,76,32,2017),(144,77,32,2017),(145,78,33,2017),(146,79,33,2017),(147,80,33,2017),(148,51,35,2017),(149,78,39,2017),(150,78,42,2017),(151,79,39,2017),(152,79,42,2017),(153,72,38,2017),(154,73,38,2017),(155,72,41,2017),(156,73,41,2017),(157,81,39,2017),(158,82,39,2017),(159,83,39,2017),(160,84,41,2017),(161,77,41,2017),(162,86,42,2017),(163,87,43,2017),(164,88,43,2017),(165,81,45,2017),(166,89,46,2017),(167,90,1,2018),(168,90,4,2018),(169,90,5,2018),(170,91,2,2018),(171,92,1,2018),(172,52,4,2018),(173,92,2,2018),(174,93,12,2018),(175,94,12,2018),(176,95,12,2018),(177,96,12,2018),(178,93,19,2018),(179,93,22,2018),(180,94,19,2018),(181,94,22,2018),(182,97,23,2018),(183,98,32,2018),(184,99,32,2018),(185,100,32,2018),(186,101,32,2018),(187,102,33,2018),(188,103,33,2018),(189,104,33,2018),(190,105,33,2018),(191,106,38,2018),(192,107,38,2018),(193,108,38,2018),(194,107,41,2018),(195,108,41,2018),(196,102,39,2018),(197,102,42,2018),(198,103,39,2018),(199,103,42,2018),(200,109,39,2018),(201,110,39,2018),(202,111,38,2018),(204,112,39,2018),(205,113,42,2018),(206,114,42,2018),(207,115,41,2018),(208,116,44,2018),(209,120,45,2018),(210,119,45,2018),(211,118,46,2018),(212,90,51,2018),(213,121,51,2018),(214,90,2,2019),(215,90,4,2019),(216,90,5,2019),(217,52,4,2019),(218,122,13,2019),(219,122,19,2019),(220,122,22,2019),(221,123,13,2019),(222,123,19,2019),(223,123,22,2019),(226,126,23,2019),(227,127,25,2019),(228,128,25,2019),(229,129,30,2019),(230,129,31,2019),(231,131,32,2019),(232,132,32,2019),(233,133,32,2019),(234,134,33,2019),(235,135,33,2019),(236,136,33,2019),(237,137,34,2019),(238,138,34,2019),(239,139,38,2019),(240,140,38,2019),(241,142,39,2019),(242,143,39,2019),(243,144,39,2019),(244,145,39,2019),(245,146,39,2019),(246,147,39,2019),(247,148,39,2019),(249,134,39,2019),(250,135,39,2019),(251,149,40,2019),(252,150,40,2019),(253,151,40,2019),(254,152,41,2019),(255,140,41,2019),(256,153,42,2019),(257,134,42,2019),(258,135,42,2019),(259,154,42,2019),(260,155,44,2019),(261,156,45,2019),(262,157,45,2019),(263,158,45,2019),(264,159,45,2019),(265,160,50,2019),(266,160,2,2020),(267,161,51,2019),(268,161,4,2020),(269,161,5,2020),(270,162,4,2020),(271,163,9,2020),(272,163,11,2020),(273,163,18,2020),(274,163,20,2020),(275,164,13,2020),(276,164,22,2020),(277,165,9,2020),(278,166,11,2020),(279,166,13,2020),(280,166,18,2020),(281,166,20,2020),(282,165,22,2020),(283,167,12,2020),(284,168,12,2020),(285,169,12,2020),(286,170,12,2020),(287,171,12,2020),(288,172,12,2020),(289,2021,34,2020),(290,2026,34,2020),(294,2028,52,2020),(295,2051,51,2020),(296,2052,52,2020),(297,2053,52,2020),(298,2054,52,2020),(300,2057,52,2020),(301,2058,52,2020),(302,2059,42,2020),(303,2060,52,2020),(304,2063,6,2021),(305,2064,6,2021),(306,2065,52,2020),(307,2066,42,2020),(308,2067,6,2021),(309,2068,52,2020),(310,2069,42,2020),(311,2070,42,2020),(312,2071,42,2020),(313,2072,42,2020),(314,2073,42,2020),(315,2074,42,2020),(316,2075,8,2021),(317,2076,42,2020),(318,2077,42,2020),(319,2078,42,2020),(320,2079,42,2020),(321,2080,42,2020),(322,2081,42,2020),(323,2082,42,2020);
/*!40000 ALTER TABLE `front_weekly` ENABLE KEYS */;
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
