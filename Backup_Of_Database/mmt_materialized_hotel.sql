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
-- Table structure for table `materialized_hotel`
--

DROP TABLE IF EXISTS `materialized_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materialized_hotel` (
  `hotel_name` varchar(500) NOT NULL,
  `facility_type` varchar(500) NOT NULL,
  `cost_avg` float NOT NULL,
  `rating_avg` float NOT NULL,
  `price_range` varchar(500) NOT NULL,
  UNIQUE KEY `hotel` (`hotel_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialized_hotel`
--

LOCK TABLES `materialized_hotel` WRITE;
/*!40000 ALTER TABLE `materialized_hotel` DISABLE KEYS */;
INSERT INTO `materialized_hotel` VALUES ('Akbiyik Suite','Dinner',3666,4,'8000_9000'),('Al Diar Sawa Hotel Apartments','Refrigerator',3799.2,4,'3000_4000'),('Apart-Hotel Intermark Residence on Novy Arbat, 15','Amenities',3669,5,'7000_8000'),('Aura Corporate Suites','All Meals',3000,2,'500_1000'),('Byblos Hotel','Outdoor Swimming pool',2999.5,4.5,'5000_6000'),('Gardens Suites Hotel by Affinia','Roof Theater',2972.67,4,'20000_30000'),('Jazz On The Park Hostel','Indoor Pool',2209.25,5,'3000_4000'),('NY Moore Hostel','Wi-Fi',2666.33,5,'3000_4000'),('SKYE Suites Green Square','Jaquzy',3049,5,'10000_20000'),('Staycity Aparthotels London Heathrow','Mandatory Gala Dinner',4399.4,4,'6000_7000');
/*!40000 ALTER TABLE `materialized_hotel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:34
