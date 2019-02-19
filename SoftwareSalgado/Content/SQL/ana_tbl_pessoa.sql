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
-- Table structure for table `tbl_pessoa`
--

DROP TABLE IF EXISTS `tbl_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pessoa` (
  `pes_codigo` int(5) NOT NULL AUTO_INCREMENT,
  `pes_nome` varchar(45) DEFAULT NULL,
  `pes_cnpj` varchar(45) DEFAULT NULL,
  `pes_tipo` varchar(45) DEFAULT NULL,
  `pes_telefone` varchar(45) DEFAULT NULL,
  `pes_email` varchar(45) DEFAULT NULL,
  `pes_cpf` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pes_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pessoa`
--

LOCK TABLES `tbl_pessoa` WRITE;
/*!40000 ALTER TABLE `tbl_pessoa` DISABLE KEYS */;
INSERT INTO `tbl_pessoa` VALUES (1,'Marcos e Marcio',NULL,'0',NULL,NULL,NULL),(3,'Colegio Millenium',NULL,'1','31053593','',''),(4,'Roberta Shopping',NULL,'1','31053593','',''),(5,'Marge Café',NULL,'1',NULL,NULL,NULL),(6,'Chico Bar',NULL,'1',NULL,NULL,NULL),(7,'Pedro Mercearia',NULL,'1',NULL,NULL,NULL),(8,'Liliane Cantina',NULL,'0','','',''),(9,'Borna Bar',NULL,'0','31051040','',''),(10,'Marco Cantina',NULL,'0','31054069','clarice@gmail.com','36602419897'),(11,'Mercadinho Sales',NULL,'2','31053593','',''),(12,'Colégio Tableau JD Rony','','2','1226389140','',NULL),(14,'Colégio Tableau Centro',NULL,'1','31053593','',''),(15,'Fênix',NULL,'0',NULL,NULL,NULL),(16,'DIP Auto Posto',NULL,'0',NULL,NULL,NULL),(17,'Bar Nacional',NULL,'1',NULL,NULL,NULL),(18,'Portal Auto Posto',NULL,'1',NULL,NULL,NULL),(19,'Caféteria da Estrada',NULL,'1',NULL,NULL,NULL),(20,'Outros',NULL,'1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_pessoa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-19  7:58:08
