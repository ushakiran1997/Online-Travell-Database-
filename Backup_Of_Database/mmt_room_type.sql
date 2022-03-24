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
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_type` (
  `room_typeid` int NOT NULL,
  `hotel_id` int NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `available_rooms` bigint NOT NULL,
  `max_adults` int NOT NULL,
  `max_children` int NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`room_typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,1,'Single bedroom',0,3,2,3999.00,'Active'),(2,1,'Executive Double without Meals',0,3,2,4499.00,'Active'),(3,2,'Deluxe Twin Room with Breakfast',0,1,0,6500.00,'Active'),(4,2,'Deluxe Room with Breakfast',0,3,1,7000.00,'Active'),(5,21,'Two bedrooms',0,5,3,7000.00,'Active'),(6,22,'Deluxe Double Non A/C without meals',0,3,1,2192.00,'Active'),(7,14,'Standard Non Ac',0,2,1,1008.00,'Active'),(8,14,'Executive AC With Breakfast',0,3,2,1649.00,'Active'),(9,17,'Classic Single Room With ',0,1,0,5486.00,'Active'),(10,27,'Deluxe Non AC Room With All meals',0,3,2,2115.00,'Active'),(11,27,'Family Suite With All Meals',0,6,2,8535.00,'Active'),(12,28,'Non A/C Indian With All Meals',0,3,2,3960.00,'Active'),(13,28,'Non A/C Foreigner With All meals',0,3,2,5824.00,'Active'),(14,29,'Deluxe Room Single With Breakfast',0,1,0,1919.00,'Active'),(15,29,'Deluxe Double Room With Breakfast',0,3,2,2067.00,'Active'),(16,31,'Premium Suite Room With Breakfast',10,3,2,6331.00,'Active'),(17,33,'Single Room',10,1,0,2000.00,'Active'),(18,33,'Double Room',20,2,1,4000.00,'Active'),(19,33,'Quin Room',30,2,2,6000.00,'Active'),(20,33,'Joint Family',5,10,8,10000.00,'Active');
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:28
