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
-- Table structure for table `tbl_despesa`
--

DROP TABLE IF EXISTS `tbl_despesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_despesa` (
  `des_codigo` int(5) NOT NULL AUTO_INCREMENT,
  `des_data` datetime NOT NULL,
  `des_valor` decimal(10,2) NOT NULL,
  `sud_codigo` int(5) DEFAULT NULL,
  PRIMARY KEY (`des_codigo`),
  KEY `csd_codigo_idx` (`sud_codigo`),
  CONSTRAINT `csd_codigo` FOREIGN KEY (`sud_codigo`) REFERENCES `tbl_subdespesa` (`sud_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_despesa`
--

LOCK TABLES `tbl_despesa` WRITE;
/*!40000 ALTER TABLE `tbl_despesa` DISABLE KEYS */;
INSERT INTO `tbl_despesa` VALUES (1,'2018-11-23 09:32:38',100.00,3),(2,'2018-11-23 09:56:17',250.00,5),(5,'2018-11-23 10:11:20',7.00,3),(6,'2018-11-23 23:48:22',150.00,5),(7,'2018-11-26 20:20:51',100.00,3),(8,'2018-11-27 21:41:42',150.00,5),(9,'2018-11-28 21:02:39',50.00,4),(10,'2018-11-29 19:29:55',50.00,2),(11,'2018-11-29 19:40:18',150.00,5),(12,'2018-12-01 09:36:03',150.00,5),(13,'2018-12-11 09:19:22',140.00,3),(14,'2018-12-11 19:59:00',1000.00,2),(15,'2018-12-20 19:43:04',10.00,3),(16,'2019-01-25 22:27:19',5.00,3);
/*!40000 ALTER TABLE `tbl_despesa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-19  7:58:12
