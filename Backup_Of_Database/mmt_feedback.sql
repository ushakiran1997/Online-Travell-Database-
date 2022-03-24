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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `tourism_placeid` int NOT NULL,
  `hotel_id` varchar(100) NOT NULL,
  `feedback` text NOT NULL,
  `feedback_dt` date NOT NULL,
  `ratings` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `hotel_id_idx` (`hotel_id`),
  CONSTRAINT `hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,2,1,'Hotel_1','very happy','2022-04-22','R_ID6','Active'),(2,1,3,'Hotel_2','Hello','2020-12-01','R_ID7','Active'),(3,4,4,'Hotel_3','good','2022-06-19','R_ID8','Active'),(4,5,2,'Hotel_4','V-Good','2021-01-06','R_ID8','Active'),(5,3,6,'Hotel_5','good','2020-02-02','R_ID8','Active'),(6,7,5,'Hotel_6','Happy','2021-04-15','R_ID9','Active'),(7,6,7,'Hotel_7','good','2022-06-23','R_ID8','Active'),(8,9,8,'Hotel_8','V-Good','2019-07-12','R_ID7','Active'),(9,10,9,'Hotel_9','Happy','2021-09-21','R_ID7','Active'),(10,8,10,'Hotel_10','Happy','2021-11-08','R_ID7','Active');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
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
