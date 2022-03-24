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
-- Table structure for table `hotel_facility`
--

DROP TABLE IF EXISTS `hotel_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_facility` (
  `hotel_facilityid` int NOT NULL AUTO_INCREMENT,
  `hotel_id` varchar(100) NOT NULL,
  `room_typeid` int NOT NULL,
  `facility_type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`hotel_facilityid`),
  KEY `hotel_id_idx` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COMMENT='hotel_facility';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_facility`
--

LOCK TABLES `hotel_facility` WRITE;
/*!40000 ALTER TABLE `hotel_facility` DISABLE KEYS */;
INSERT INTO `hotel_facility` VALUES (1,'Hotel_5',1,'Wi-Fi Internet','Active'),(2,'Hotel_7',15,'HD-TV With DTH Connection','Active'),(3,'Hotel_5',3,'Mandatory Gala Dinner','Active'),(4,'Hotel_12',4,'All Breakfast','Active'),(5,'Hotel_16',5,' car parking','Active'),(6,'Hotel_19',6,'Wardrobe/Closet','Active'),(7,'Hotel_3',7,'Room Service','Active'),(8,'Hotel_1',8,'Refrigerator','Active'),(9,'Hotel_10',9,'Wi-Fi','Active'),(10,'Hotel_19',10,'All Meals','Active'),(11,'Hotel_12',11,'Complimantry Meal','Active'),(12,'Hotel_4',12,'Dinner','Active'),(13,'Hotel_14',13,'Complimatry Breakfast','Active'),(14,'Hotel_12',2,'Jaquzy','Active'),(15,'Hotel_6',4,'Amenities','Active'),(16,'Hotel_9',18,'Indoor Pool','Active'),(17,'Hotel_7',17,'Roof Theater','Active'),(18,'Hotel_3',19,'Outdoor Swimming pool','Active');
/*!40000 ALTER TABLE `hotel_facility` ENABLE KEYS */;
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
