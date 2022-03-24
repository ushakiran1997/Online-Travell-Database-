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
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `flightno` varchar(100) NOT NULL,
  `travel_id` char(100) NOT NULL,
  `deptime` char(100) NOT NULL,
  `arrtime` char(100) NOT NULL,
  `service` varchar(100) NOT NULL,
  `aircrafttype` char(100) NOT NULL,
  `routeno` int NOT NULL,
  PRIMARY KEY (`flightno`),
  KEY `indx_flight` (`flightno`,`travel_id`,`deptime`,`arrtime`,`service`,`aircrafttype`,`routeno`),
  KEY `routeno_idx` (`routeno`),
  CONSTRAINT `routeno` FOREIGN KEY (`routeno`) REFERENCES `route` (`routeno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES ('BD221','Tra_ID25','06:45','07:25','Breakfast','ATP',15),('BD222','Tra_ID43','07:55','08:45','Coffee','ATP',15),('BD223','Tra_ID30','12:35','13:25','Coffee','ATP',15),('BD224','Tra_ID6','11:00','11:50','Coffee','ATP',15),('BD225','Tra_ID33','12:35','13:25','Coffee','ATP',15),('BD226','Tra_ID9','14:15','15;05','Coffee','ATP',15),('BD227','Tra_ID41','15:35','16:25','Coffee','ATP',15),('BD228','Tra_ID11','16:55','17:45','Coffee','ATP',15),('BD229','Tra_ID47','18:05','18:55','Coffee','ATP',15),('BD230','Tra_ID13','19:45','20:35','Coffee','ATP',15),('BD255','Tra_ID46','12:50','14:55','Lunch','DC9',13),('BD256','Tra_ID49','15:30','15:40','Tea','DC9',13),('BD257','Tra_ID51','15:30','17:35','Tea','DC9',13),('BD258','Tra_ID47','18:10','18:20','Dinner','DC9',13),('BD275','Tra_ID28','18:00','18:55','Dinner','DC9',11),('BD332','Tra_ID18','08:35','09:35','Breakfast','DC9',8),('BD412','Tra_ID38','08:50','09:45','Breakfast','DC9',6),('BD413','Tra_ID48','10:20','11:15','Light Meal','DC9',6),('BD414','Tra_ID40','11:45','12:35','Light Meal','DC9',6),('BD419','Tra_ID3','18:45','19:40','Dinner','DC9',6),('BD51','Tra_ID40','07:10','08:25','Breakfast','737',4),('BD54','Tra_ID44','10:40','11:55','Breakfast','737',4),('BD582','Tra_ID7','08:10','09:00','Breakfast','DC9',7),('BD589','Tra_ID9','19:25','20:15','Dinner','DC9',7),('BD651','Tra_ID52','07:30','09:35','Breakfast','DC9',9),('BD652','Tra_ID11','10:05','10:10','Breakfast','DC9',9),('BD655','Tra_ID48','15:00','17:05','Tea','DC9',9),('BD656','Tra_ID15','17:50','17:55','Tea','DC9',9),('BD657','Tra_ID43','17:30','19:35','Dinner','DC9',9),('BD658','Tra_ID3','20:05','20:10','Dinner','DC9',9),('BD659','Tra_ID41','18:25','20:30','Dinner','DC9',9),('BD660','Tra_ID9','21:00','21:05','Dinner','DC9',9),('BD771','Tra_ID44','06:55','07:45','Breakfast','ATP',14),('BD772','Tra_ID6','08:10','09:00',' Coffee','ATP',14),('BD773','Tra_ID7','09:30','10:15','Coffee','ATP',14),('BD774','Tra_ID9','10:45','11:30','Coffee','ATP',14),('BD775','Tra_ID9','12:00','12:45','Coffee','ATP',14),('BD776','Tra_ID16','12:30','13:20','Coffee','ATP',14),('BD777','Tra_ID13','14:20','15:05','Coffee','ATP',14),('BD778','Tra_ID21','13:10','13:55','Coffee','ATP',14),('BD779','Tra_ID28','16:40','17:25','Coffee','ATP',14),('BD780','Tra_ID31','15:30','16:25',' Coffee','ATP',14),('BD781','Tra_ID34','20:10','21:00','Coffee','ATP',14),('BD782','Tra_ID41','17:55','18:40','Coffee','ATP',14),('BD80','Tra_ID35','07:25','08:40','Breakfast','737',3),('BD82','Tra_ID30','09:30','10:45','Breakfast','737',3),('BD91','Tra_ID18','17:30','18:40','Dinner','737',3),('BD95','Tra_ID5','21:20','22:30','Dinner','737',3);
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:36
