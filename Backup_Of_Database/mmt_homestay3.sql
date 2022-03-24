-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mmt
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `homestay3`
--

DROP TABLE IF EXISTS `homestay3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homestay3` (
  `Homestay_ID` varchar(100) NOT NULL,
  `Rating_ID` varchar(100) NOT NULL,
  `Review` varchar(1000) NOT NULL,
  PRIMARY KEY (`Homestay_ID`),
  KEY `Rating_ID_idx` (`Rating_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homestay3`
--

LOCK TABLES `homestay3` WRITE;
/*!40000 ALTER TABLE `homestay3` DISABLE KEYS */;
INSERT INTO `homestay3` VALUES ('HM_ID1','R_ID3','Couple Friendly'),('HM_ID10','R_ID8','Couple Friendly'),('HM_ID11','R_ID9','Couple Friendly'),('HM_ID12','R_ID8','Couple Friendly'),('HM_ID13','R_ID3','Couple Friendly'),('HM_ID14','R_ID4','Couple Friendly'),('HM_ID15','R_ID3','Couple Friendly'),('HM_ID16','R_ID4','Couple Friendly'),('HM_ID17','R_ID5','Couple Friendly'),('HM_ID18','R_ID6','Couple Friendly'),('HM_ID19','R_ID7','Couple Friendly'),('HM_ID2','R_ID4','Couple Friendly'),('HM_ID20','R_ID8','Couple Friendly'),('HM_ID21','R_ID9','Couple Friendly'),('HM_ID22','R_ID3','Couple Friendly'),('HM_ID23','R_ID4','Couple Friendly'),('HM_ID24','R_ID5','Couple Friendly'),('HM_ID25','R_ID6','Couple Friendly'),('HM_ID26','R_ID7','Couple Friendly'),('HM_ID27','R_ID8','Couple Friendly'),('HM_ID28','R_ID9','Couple Friendly'),('HM_ID29','R_ID7','Couple Friendly'),('HM_ID3','R_ID5','Couple Friendly'),('HM_ID30','R_ID8','Couple Friendly'),('HM_ID31','R_ID3','Couple Friendly'),('HM_ID32','R_ID4','Couple Friendly'),('HM_ID33','R_ID3','Couple Friendly'),('HM_ID34','R_ID4','Couple Friendly'),('HM_ID35','R_ID5','Couple Friendly'),('HM_ID36','R_ID6','Couple Friendly'),('HM_ID37','R_ID7','Couple Friendly'),('HM_ID38','R_ID8','Couple Friendly'),('HM_ID39','R_ID9','Couple Friendly'),('HM_ID4','R_ID3','Couple Friendly'),('HM_ID40','R_ID8','Couple Friendly'),('HM_ID41','R_ID3','Couple Friendly'),('HM_ID42','R_ID4','Couple Friendly'),('HM_ID43','R_ID5','Couple Friendly'),('HM_ID44','R_ID6','Couple Friendly'),('HM_ID45','R_ID7','Couple Friendly'),('HM_ID46','R_ID3','Couple Friendly'),('HM_ID47','R_ID4','Couple Friendly'),('HM_ID48','R_ID5','Couple Friendly'),('HM_ID49','R_ID6','Couple Friendly'),('HM_ID5','R_ID3','Couple Friendly'),('HM_ID50','R_ID7','Couple Friendly'),('HM_ID51','R_ID8','Couple Friendly'),('HM_ID52','R_ID9','Couple Friendly'),('HM_ID53','R_ID3','Couple Friendly'),('HM_ID54','R_ID4','Couple Friendly'),('HM_ID55','R_ID5','Couple Friendly'),('HM_ID56','R_ID6','Couple Friendly'),('HM_ID57','R_ID7','Couple Friendly'),('HM_ID58','R_ID3','Couple Friendly'),('HM_ID59','R_ID4','Couple Friendly'),('HM_ID6','R_ID4','Couple Friendly'),('HM_ID60','R_ID5','Couple Friendly'),('HM_ID61','R_ID6','Couple Friendly'),('HM_ID62','R_ID3','Couple Friendly'),('HM_ID63','R_ID4','Couple Friendly'),('HM_ID64','R_ID5','Couple Friendly'),('HM_ID65','R_ID6','Couple Friendly'),('HM_ID66','R_ID7','Couple Friendly'),('HM_ID7','R_ID5','Couple Friendly'),('HM_ID8','R_ID6','Couple Friendly'),('HM_ID9','R_ID7','Couple Friendly');
/*!40000 ALTER TABLE `homestay3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:33
