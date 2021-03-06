-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ana
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
-- Table structure for table `tbl_venda`
--

DROP TABLE IF EXISTS `tbl_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_venda` (
  `ven_codigo` int(5) NOT NULL AUTO_INCREMENT,
  `ven_data` datetime NOT NULL,
  `ven_valortotal` decimal(10,2) NOT NULL,
  `pes_codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`ven_codigo`),
  KEY `pes_codigo_idx` (`pes_codigo`),
  CONSTRAINT `pes_codigo` FOREIGN KEY (`pes_codigo`) REFERENCES `tbl_pessoa` (`pes_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venda`
--

LOCK TABLES `tbl_venda` WRITE;
/*!40000 ALTER TABLE `tbl_venda` DISABLE KEYS */;
INSERT INTO `tbl_venda` VALUES (1,'2018-12-03 15:17:32',10.00,14),(2,'2018-12-03 15:25:34',50.00,3),(3,'2018-12-03 15:29:24',5.00,8),(4,'2018-10-07 15:32:24',1.00,1),(5,'2018-11-07 16:14:53',1.00,1),(6,'2018-11-07 16:41:53',1.00,1),(7,'2018-11-07 16:43:27',1.00,3),(8,'2018-11-08 08:58:00',0.00,3),(9,'2018-11-08 09:48:10',0.00,1),(10,'2018-11-08 10:03:43',0.00,4),(11,'2018-11-08 10:22:32',0.00,3),(12,'2018-11-08 11:21:28',0.00,3),(13,'2018-11-08 15:10:50',0.00,3),(14,'2018-11-08 15:35:05',0.00,7),(15,'2018-11-08 19:30:13',0.00,7),(16,'2018-11-08 19:32:38',0.00,3),(17,'2018-11-08 19:32:48',0.00,3),(18,'2018-11-08 19:38:19',0.00,7),(19,'2018-11-09 08:39:18',0.00,3),(20,'2018-11-09 08:40:22',0.00,7),(21,'2018-11-09 08:53:31',0.00,7),(22,'2018-11-09 09:00:36',0.00,7),(23,'2018-11-09 09:07:54',0.00,3),(24,'2018-11-09 09:07:54',0.00,3),(25,'2018-11-09 09:13:42',0.00,7),(26,'2018-11-09 09:42:03',0.00,7),(27,'2018-11-09 16:13:50',0.00,7),(28,'2018-11-09 16:16:32',0.00,7),(29,'2018-11-09 16:17:40',0.00,7),(30,'2018-11-09 19:27:24',0.00,6),(31,'2018-11-09 20:08:35',0.00,6),(32,'2018-11-09 20:26:07',0.00,9),(33,'2018-11-09 20:26:46',0.00,4),(34,'2018-11-09 20:29:17',0.00,9),(35,'2018-11-09 20:30:07',0.00,6),(36,'2018-11-09 20:33:06',8.00,6),(37,'2018-11-09 20:37:36',35.00,8),(38,'2018-11-09 20:38:28',10.00,6),(39,'2018-11-09 21:53:08',55.00,4),(40,'2018-11-09 21:56:15',20.00,5),(41,'2018-11-09 21:59:54',50.00,8),(42,'2018-11-09 22:02:22',20.00,4),(43,'2018-11-10 09:38:30',20.00,4),(44,'2018-11-18 13:31:30',24.50,5),(45,'2018-11-20 21:34:18',24.00,9),(46,'2018-11-20 22:15:41',0.00,7),(47,'2018-11-22 19:38:02',14.00,7),(48,'2018-11-22 22:13:31',40.00,4),(49,'2018-11-23 16:30:29',70.00,9),(50,'2018-11-23 22:31:55',28.00,6),(51,'2018-11-23 23:47:37',51.50,4),(52,'2018-11-23 23:51:24',0.00,9),(53,'2018-11-26 20:18:48',206.00,8),(54,'2018-11-27 21:23:26',73.50,5),(55,'2018-11-27 21:44:26',0.00,4),(56,'2018-11-28 21:00:18',146.00,9),(57,'2018-11-28 21:04:39',40.00,14),(58,'2018-11-29 19:27:06',90.00,3),(59,'2018-11-29 19:29:24',67.50,3),(60,'2018-11-29 19:38:08',24.00,6),(61,'2018-12-01 09:34:27',100.00,3),(62,'2018-12-01 09:40:46',10.50,6),(63,'2018-12-04 10:38:14',70.00,17),(64,'2018-12-05 06:05:51',50.00,17),(65,'2018-12-05 20:01:33',240.00,6),(66,'2018-12-05 20:37:47',40.00,14),(67,'2018-12-07 16:14:59',42.50,14),(68,'2018-12-07 16:23:54',20.00,16),(69,'2018-12-07 16:26:27',320.00,19),(70,'2018-12-07 16:44:30',37.50,5),(71,'2018-12-08 12:16:57',42.50,17),(72,'2018-12-08 12:24:02',20.00,10),(73,'2018-12-08 12:24:31',63.00,11),(74,'2018-12-11 09:20:05',54.00,17),(75,'2018-12-11 09:20:47',40.00,14),(76,'2018-12-11 19:57:56',20.00,15),(77,'2018-12-14 14:51:08',50.00,17),(78,'2018-12-14 14:51:35',37.50,16),(79,'2018-12-18 14:53:49',56.00,17),(80,'2018-12-18 15:00:13',37.50,8),(81,'2018-12-18 15:05:14',24.00,10),(82,'2018-12-18 16:46:56',0.00,7),(83,'2018-12-18 18:35:23',0.00,19),(84,'2018-12-18 18:45:16',0.00,3),(85,'2018-12-18 18:45:59',0.00,6),(86,'2018-12-19 09:38:26',0.00,11),(87,'2018-12-20 18:57:34',100.00,17),(88,'2018-12-20 18:58:09',32.50,18),(89,'2018-12-20 19:34:31',0.00,9),(90,'2018-12-20 19:41:44',20.00,9),(91,'2019-01-25 22:27:03',10.00,17),(93,'2019-02-16 11:57:55',10.00,17),(94,'2019-02-17 09:15:25',0.00,9),(95,'2019-02-17 09:16:43',0.00,17),(96,'2019-02-17 09:18:08',0.00,19),(97,'2019-02-17 09:19:44',24.50,15),(98,'2019-02-17 16:16:45',47.50,7),(99,'2019-02-17 16:19:02',98.00,6),(100,'2019-02-17 17:25:59',10.00,19);
/*!40000 ALTER TABLE `tbl_venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-19  7:58:14
