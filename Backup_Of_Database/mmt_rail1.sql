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
-- Table structure for table `rail1`
--

DROP TABLE IF EXISTS `rail1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rail1` (
  `train_id` int NOT NULL,
  `Train_Name` varchar(500) NOT NULL,
  `Travel_ID` varchar(500) NOT NULL,
  `Departure_Time` varchar(500) NOT NULL,
  `Arrival_Time` varchar(500) NOT NULL,
  `Train_Duration` varchar(500) NOT NULL,
  `Class_ID` varchar(500) NOT NULL,
  `Price` varchar(500) NOT NULL,
  `Price_ID` varchar(500) NOT NULL,
  PRIMARY KEY (`train_id`),
  KEY `Travel_ID_idx` (`Travel_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rail1`
--

LOCK TABLES `rail1` WRITE;
/*!40000 ALTER TABLE `rail1` DISABLE KEYS */;
INSERT INTO `rail1` VALUES (1,'JAT AII EXPRESS','Tra_ID12','4:15','9:40','5','SL','240','Rs_ID1'),(2,'ASHRAM EXPRESS','Tra_ID12','3:20','8:25','5','SL','240','Rs_ID1'),(3,'DLI JU SF EXP','Tra_ID12','9:20','2:25','5','SL','240','Rs_ID1'),(4,'CORBET PRK LINK','Tra_ID12','4:30','10:00','5','SL','240','Rs_ID1'),(5,'SAINIK EXP','Tra_ID12','10:25','7:20','8','SL','240','Rs_ID1'),(6,'YOGA EXP','Tra_ID12','9:28','3:35','6','2S','140','Rs_ID1'),(7,'CHETAK EXPRESS','Tra_ID12','7:35','11:25','3','SL','240','Rs_ID2'),(8,'RANIKHET EXP','Tra_ID12','4:30','10:00','5','3A','1120','Rs_ID3'),(9,'SHALIMAR EXP','Tra_ID12','11:00','5:35','6','SL','240','Rs_ID1'),(10,'YNRK UDZ EXP','Tra_ID12','11:55','6:15','6','2S','140','Rs_ID1'),(11,'ALA HAZRAT EXP','Tra_ID12','11:50','5:50','6','SL','240','Rs_ID1'),(12,'NJP UDZ EXPRESS','Tra_ID12','12:20','7:00','6','SL','240','Rs_ID1'),(13,'PBR EXPRESS','Tra_ID12','1:05','6:20','5','SL','240','Rs_ID1'),(14,'ADI SJ RAJDHANI','Tra_ID12','7:55','12:01','4','3A','1120','Rs_ID3'),(15,'AII JANSHTBI EX','Tra_ID12','4:15','7:38','3','2S','140','RS_ID4'),(16,'ARAVALI EXPRESS','Tra_ID3','5:30','1:50','20','2S','175','Rs_ID1'),(17,'SURYA NAGARI','Tra_ID3','3:50','11:30','40','2S','175','Rs_ID1'),(18,'SAURASHTRA EXP','Tra_ID3','7:15','7:30','15','2S','160','Rs_ID1');
/*!40000 ALTER TABLE `rail1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:31
