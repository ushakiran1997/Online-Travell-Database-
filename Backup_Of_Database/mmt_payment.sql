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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `payment_date` date NOT NULL,
  `payment_time` time NOT NULL,
  `payment_type_id` int NOT NULL,
  `payment_reason` varchar(200) NOT NULL,
  `total_amt` float NOT NULL,
  `discount_amount` float NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,4,'2022-03-02','12:35:05',1,'HotelBooking',1999,100,'Active'),(2,1,'2022-03-02','12:35:05',2,'HotelBooking',3999,100,'Active'),(3,3,'2022-03-01','13:35:05',3,'Cabbooking',2999,100,'Active'),(4,2,'2022-03-03','14:35:05',4,'Cabbooking',3999,100,'Active'),(5,1,'2022-02-20','15:35:05',2,'Cabbooking',4999,100,'Active'),(6,5,'2022-02-03','16:35:05',6,'Cabbooking',2999,100,'Active'),(7,6,'2022-02-03','17:35:05',1,'Cabbooking',1999,100,'Active'),(8,7,'2022-02-03','18:35:05',2,'HotelBooking',12997,500,'Active'),(9,8,'2022-02-03','19:35:05',3,'HotelBooking',11997,500,'Active'),(10,9,'2022-02-03','22:35:05',4,'HotelBooking',12000,700,'Active'),(11,10,'2022-02-03','09:35:05',5,'HotelBooking',13000,500,'Active'),(12,11,'2022-02-03','10:35:05',6,'HotelBooking',14000,500,'Active'),(13,10,'2022-03-05','10:35:05',5,'HotelBooking',15000,900,'Active'),(14,9,'2022-03-04','11:35:05',4,'HotelBooking',12000,500,'Active'),(15,9,'2022-02-03','14:35:05',4,'HotelBooking',12000,500,'Active'),(16,12,'2022-02-03','13:35:05',5,'HotelBooking',16000,1500,'Active'),(17,13,'2022-02-03','12:35:05',6,'HotelBooking',26000,2500,'Active'),(18,14,'2022-02-03','14:35:05',1,'Cabbooking',2999,100,'Active'),(19,15,'2022-02-03','09:35:05',2,'HotelBooking',26000,3500,'Active'),(20,16,'2022-02-03','12:35:05',3,'HotelBooking',26000,1500,'Active'),(21,17,'2022-02-03','14:35:05',4,'Cabbooking',2999,100,'Active'),(22,18,'2022-02-03','13:35:05',5,'HotelBooking',26000,2500,'Active'),(23,19,'2022-02-03','09:35:05',6,'HotelBooking',26000,3500,'Active'),(24,21,'2022-02-03','12:35:05',1,'ExtraBED',1000,20,'Active'),(25,21,'2022-02-03','15:35:05',1,'ExtraBED',1919,10,'Active'),(27,1,'2022-02-03','12:35:05',3,'Extrachairs',1267.66,0,'Active'),(28,1,'2022-02-23','15:35:05',4,'Extrachairs',1267.66,0,'Active'),(29,10,'2022-02-06','14:35:05',5,'ExtraBED',267.66,0,'Active'),(30,10,'2022-02-07','12:35:05',5,'Extrachairs',1267.66,0,'Active'),(31,22,'2022-02-03','14:35:05',2,'Cabbooking',267.66,0,'Active'),(32,20,'2022-02-03','09:35:05',4,'Cancellation',230.22,0,'Active'),(33,12,'2022-02-03','13:35:05',1,'Cancellation',230.22,0,'Active'),(34,12,'2022-02-09','12:35:05',4,'Cabbooking',2300.22,0,'Active'),(35,13,'2022-02-03','09:35:05',6,'Cancellation',230.22,0,'Active'),(36,14,'2022-02-03','12:35:05',1,'Cancellation',230.22,0,'Active'),(37,15,'2022-02-03','12:35:05',6,'Cancellation',520,0,'Active'),(39,15,'2022-02-09','14:35:05',3,'Cancellation',744.48,0,'Active'),(40,16,'2022-02-07','09:35:05',1,'HotelBooking',13433,1500,'Active'),(41,17,'2022-02-13','13:35:05',2,'ExtraBED',2500,20,'Cancelled'),(42,18,'2022-02-11','10:35:05',5,'Cancellation',200,20,'Cancelled'),(43,2,'2022-02-13','14:35:05',3,'HotelBooking',797.93,500,'Cancelled'),(44,2,'2022-02-22','12:35:05',4,'HotelBooking',744.93,500,'Cancelled'),(45,22,'2022-02-22','10:35:05',6,'HotelBooking',7977.93,500,'Active'),(46,3,'2022-02-24','09:35:05',1,'HotelBooking',11514,500,'Active'),(47,3,'2022-02-24','13:35:05',2,'Cancellation',200,20,'Cancelled'),(48,13,'2022-02-28','12:35:05',1,'Cancellation',200,20,'Cancelled'),(49,13,'2022-02-25','14:35:05',2,'Cancellation',200,20,'Cancelled'),(50,14,'2022-02-25','10:35:05',3,'HotelBooking',5040,100,'Active'),(51,20,'2022-02-27','12:35:05',4,'HotelBooking',15000,500,'Active'),(52,10,'2022-02-27','09:35:05',6,'HotelBooking',12000,500,'Active'),(53,20,'2022-02-28','13:35:05',5,'HotelBooking',10000,500,'Active'),(54,10,'2022-02-23','12:35:05',2,'Cabbooking',2999,100,'Active'),(55,14,'2022-02-20','15:35:05',3,'HotelBooking',12000,500,'Active'),(56,5,'2022-02-20','12:35:05',3,'HotelBooking',13000,500,'Active'),(57,6,'2022-02-18','14:35:05',2,'HotelBooking',16000,1500,'Active'),(58,7,'2022-02-10','13:35:05',1,'HotelBooking',15000,500,'Active'),(59,7,'2022-02-09','14:35:05',3,'HotelBooking',20000,2000,'Active'),(60,8,'2022-02-01','09:35:05',4,'HotelBooking',8000,500,'Active'),(61,8,'2022-02-10','14:35:05',4,'HotelBooking',3000,500,'Cancelled'),(62,9,'2022-02-03','12:35:05',5,'HotelBooking',12662,1000,'Active'),(63,17,'2022-02-13','14:35:05',6,'Cancellation',500,0,'Cancelled'),(64,18,'2022-02-13','13:35:05',1,'HotelBooking',6481.25,500,'Active'),(65,19,'2022-02-23','15:35:05',2,'ExtraBED',2000,20,'Active'),(66,14,'2022-02-23','18:40:56',3,'Cancellation',200,20,'Cancelled');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:32
