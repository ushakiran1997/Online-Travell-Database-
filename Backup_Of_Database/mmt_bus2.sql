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
-- Table structure for table `bus2`
--

DROP TABLE IF EXISTS `bus2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus2` (
  `Bus_ID` varchar(500) NOT NULL,
  `Travel_ID` varchar(500) NOT NULL,
  `Bus_Duration` varchar(500) NOT NULL,
  `Pickup_Time` varchar(500) NOT NULL,
  `Drop_Time` varchar(500) NOT NULL,
  `Price_ID` varchar(500) NOT NULL,
  PRIMARY KEY (`Bus_ID`),
  KEY `Travel_ID_idx` (`Travel_ID`),
  CONSTRAINT `Travel_ID` FOREIGN KEY (`Travel_ID`) REFERENCES `city_transport` (`Travel_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus2`
--

LOCK TABLES `bus2` WRITE;
/*!40000 ALTER TABLE `bus2` DISABLE KEYS */;
INSERT INTO `bus2` VALUES ('BU_ID1','Tra_ID28','7','22:00','05:30','Rs_ID1'),('BU_ID10','Tra_ID29','5','15:30','21:00','Rs_ID2'),('BU_ID11','Tra_ID41','16','19:00','11:00','Rs_ID3'),('BU_ID12','Tra_ID31','10','19:30','06:20','Rs_ID3'),('BU_ID13','Tra_ID29','4','02:45','07:30','Rs_ID2'),('BU_ID14','Tra_ID31','10','19:30','06:20','Rs_ID3'),('BU_ID15','Tra_ID14','33','22:00','08:30','Rs_ID4'),('BU_ID16','Tra_ID29','5','15:30','21:00','Rs_ID2'),('BU_ID17','Tra_ID28','7','22:00','05:30','Rs_ID1'),('BU_ID18','Tra_ID12','6','05:45','12:10','Rs_ID1'),('BU_ID19','Tra_ID29','5','01:00','06:05','Rs_ID2'),('BU_ID2','Tra_ID12','5','16:00','21:30','Rs_ID1'),('BU_ID20','Tra_ID12','6','05:45','12:10','Rs_ID1'),('BU_ID21','Tra_ID28','7','22:00','05:30','Rs_ID2'),('BU_ID22','Tra_ID12','6','18:00','23:16','Rs_ID1'),('BU_ID23','Tra_ID12','6','21.30','02:45','Rs_ID1'),('BU_ID24','Tra_ID28','7','22:00','05:05','Rs_ID2'),('BU_ID25','Tra_ID31','11','18:50','06:05','Rs_ID2'),('BU_ID26','Tra_ID29','4','03:45','08:30','Rs_ID2'),('BU_ID27','Tra_ID12','6','18:00','23:16','Rs_ID1'),('BU_ID28','Tra_ID31','10','20:30','07:20','Rs_ID3'),('BU_ID29','Tra_ID28','6','23:00','05:05','Rs_ID2'),('BU_ID3','Tra_ID12','6','17:15','23:20','Rs_ID1'),('BU_ID30','Tra_ID14','33','22:00','08:30','Rs_ID4'),('BU_ID31','Tra_ID28','5','23:00','04:05','Rs_ID3'),('BU_ID32','Tra_ID31','10','19:30','06:20','Rs_ID3'),('BU_ID33','Tra_ID28','4','04:50','09:05','Rs_ID2'),('BU_ID34','Tra_ID28','6','22:00','06:05','Rs_ID1'),('BU_ID35','Tra_ID31','10','19:30','06:20','Rs_ID3'),('BU_ID36','Tra_ID12','6','09:50','16:05','Rs_ID1'),('BU_ID37','Tra_ID28','6','23:00','06:05','Rs_ID2'),('BU_ID38','Tra_ID12','6','19:00','00:16','Rs_ID1'),('BU_ID39','Tra_ID31','10','19:30','06:20','Rs_ID3'),('BU_ID4','Tra_ID29','5','15:30','21:00','Rs_ID2'),('BU_ID40','Tra_ID14','33','20:00','06:30','Rs_ID3'),('BU_ID5','Tra_ID41','15','18:30','10:00','Rs_ID3'),('BU_ID6','Tra_ID31','14','16:15','06:15','Rs_ID3'),('BU_ID7','Tra_ID28','7','22:00','05:30','Rs_ID1'),('BU_ID8','Tra_ID31','10','19:30','06:20','Rs_ID3'),('BU_ID9','Tra_ID28','7','22:00','05:30','Rs_ID1');
/*!40000 ALTER TABLE `bus2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:30
