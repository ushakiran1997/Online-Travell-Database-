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
-- Table structure for table `cab_booking`
--

DROP TABLE IF EXISTS `cab_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cab_booking` (
  `cal_bookingid` int NOT NULL,
  `room_booking_id` int NOT NULL,
  `vehicle_typeid` int NOT NULL,
  `customer_id` int NOT NULL,
  `payment_id` int NOT NULL,
  `booking_datetime` datetime NOT NULL,
  `flocation` varchar(50) NOT NULL,
  `tlocation` varchar(50) NOT NULL,
  `total_km` float(10,2) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`cal_bookingid`),
  KEY `room_booking_id_idx` (`room_booking_id`),
  CONSTRAINT `room_booking_id` FOREIGN KEY (`room_booking_id`) REFERENCES `room_booking` (`room_booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='cab booking';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cab_booking`
--

LOCK TABLES `cab_booking` WRITE;
/*!40000 ALTER TABLE `cab_booking` DISABLE KEYS */;
INSERT INTO `cab_booking` VALUES (1,2,1,10,1,'2021-12-12 13:00:00','bangalore','Mangalore',23.00,2500.00,'Active'),(2,1,1,2,2,'2021-12-07 01:00:00','Mangalore','bangalore',23.00,2500.00,'Active'),(3,4,3,9,37,'2022-01-07 22:12:00','Delhi','Jaipur',29.00,3000.00,'Active'),(4,5,2,6,38,'2022-01-08 13:00:00','Mumbai','Goa',21.64,2000.00,'Active'),(5,8,4,8,39,'2022-01-08 13:01:00','Goa','Mumbai',23.36,2050.00,'Active'),(6,20,7,12,42,'2022-01-08 13:00:00','Banglore','Trupati',127.00,1800.00,'Active'),(7,10,2,13,48,'2022-01-08 01:01:00','Jaipur','Udaipur',29.13,1800.00,'Active'),(9,11,3,11,63,'2022-01-08 12:19:00','Agra','Delhi',12.02,2500.00,'Active'),(10,12,4,3,33,'2022-01-08 13:00:00','Uaipur','Jaipur',30.02,2000.00,'Active'),(11,13,5,2,3,'2022-02-08 12:19:00','Delhi','Agra',25.02,2500.00,'Active'),(12,14,3,1,32,'2022-02-08 13:05:00','Mumbai','Pune',20.02,1500.00,'Active'),(13,16,7,1,28,'2022-02-08 12:29:00','Pune','Banglore',20.02,3000.00,'Active'),(14,3,3,2,29,'2022-02-08 12:39:00','Banglore','Mumbai',15.02,5000.00,'Active'),(15,6,6,4,30,'2022-02-08 14:19:00','Mumbai','Delhi',14.02,25000.00,'Active'),(16,7,8,3,40,'2022-02-14 15:19:00','Chennai','Tirupati',12.02,2500.00,'Active'),(17,15,9,5,41,'2022-02-25 17:19:00','Hydrabad','Banglore',20.02,2500.00,'Active'),(18,9,5,4,42,'2022-02-20 12:19:00','Chennai','Mumbai',12.02,5000.00,'Active'),(19,17,4,5,46,'2022-03-01 20:19:00','Goa','Banglore',12.02,3000.00,'Active'),(20,20,3,10,43,'2022-03-01 12:49:00','Banglore','Chennai',30.02,4000.00,'Active');
/*!40000 ALTER TABLE `cab_booking` ENABLE KEYS */;
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
