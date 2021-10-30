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
-- Table structure for table `front_room`
--

DROP TABLE IF EXISTS `front_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `front_room` (
  `room_id` int(10) unsigned NOT NULL DEFAULT '0',
  `room_name` varchar(127) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `printer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_room`
--

LOCK TABLES `front_room` WRITE;
/*!40000 ALTER TABLE `front_room` DISABLE KEYS */;
INSERT INTO `front_room` VALUES (1,'kitchen',NULL),(2,'lounge',NULL),(3,'Erskine 033',11),(4,'Erskine 035',11),(5,'Erskine 038',12),(6,'Erskine 442',13),(7,'Erskine 400',NULL),(8,'Erskine 401',NULL),(9,'Erskine 402',NULL),(10,'Erskine 403',NULL),(11,'Erskine 410',NULL),(12,'Erskine 411',3),(13,'Erskine 412',NULL),(14,'Erskine 413',NULL),(15,'Erskine 414',NULL),(16,'Erskine 415',NULL),(17,'Erskine 416',NULL),(18,'Erskine 420',NULL),(19,'Erskine 421',NULL),(20,'Erskine 422',NULL),(21,'Erskine 423',NULL),(22,'Erskine 424',NULL),(24,'Erskine 436',13),(25,'Erskine 437',NULL),(26,'Erskine 500',NULL),(27,'Erskine 501',NULL),(28,'Erskine 502',NULL),(29,'Erskine 503',NULL),(30,'Erskine 504',NULL),(31,'Erskine 505',NULL),(32,'Erskine 510',NULL),(33,'Erskine 511',NULL),(34,'Erskine 512',NULL),(35,'Erskine 513',NULL),(36,'Erskine 514',NULL),(37,'Erskine 515',NULL),(38,'Erskine 516',NULL),(39,'Erskine 520',NULL),(40,'Erskine 521',NULL),(41,'Erskine 522',NULL),(42,'Erskine 523',NULL),(43,'Erskine 524',NULL),(44,'Erskine 525',NULL),(45,'Erskine 600',NULL),(46,'Erskine 601',NULL),(47,'Erskine 602',NULL),(48,'Erskine 603',NULL),(49,'Erskine 604',NULL),(50,'Erskine 605',NULL),(51,'Erskine 606',NULL),(52,'Erskine 607',NULL),(53,'Erskine 610',NULL),(54,'Erskine 611',NULL),(55,'Erskine 612',NULL),(56,'Erskine 613',NULL),(57,'Erskine 614',NULL),(58,'Erskine 615',NULL),(59,'Erskine 616',NULL),(60,'Erskine 620',NULL),(61,'Erskine 621',NULL),(62,'Erskine 622',NULL),(63,'Erskine 623',NULL),(64,'Erskine 624',NULL),(65,'Erskine 700',NULL),(66,'Erskine 701',NULL),(67,'Erskine 702',NULL),(68,'Erskine 703',NULL),(69,'Erskine 704',NULL),(70,'Erskine 710',NULL),(71,'Erskine 711',NULL),(72,'Erskine 712',NULL),(73,'Erskine 713',NULL),(74,'Erskine 714',NULL),(75,'Erskine 720',NULL),(76,'Erskine 721',NULL),(77,'Erskine 722',NULL),(78,'Erskine 723',NULL),(79,'Erskine 724',NULL),(80,'Erskine 036',12),(81,'Erskine 461',16),(82,'Erskine 443',NULL),(83,'Erskine 444',13),(84,'No Room',NULL),(85,'Erskine 434',NULL),(86,'Erskine 435',NULL),(87,'Erskine 432',NULL);
/*!40000 ALTER TABLE `front_room` ENABLE KEYS */;
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
