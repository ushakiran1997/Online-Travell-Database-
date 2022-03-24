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
-- Table structure for table `tourism_location`
--

DROP TABLE IF EXISTS `tourism_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourism_location` (
  `location_id` int NOT NULL,
  `location_name` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='item details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourism_location`
--

LOCK TABLES `tourism_location` WRITE;
/*!40000 ALTER TABLE `tourism_location` DISABLE KEYS */;
INSERT INTO `tourism_location` VALUES (2,'Bangalore','Active'),(3,'Mysore','Active'),(4,'Madekeri','Active'),(5,'Chikmagalur','Active'),(8,'Murudeshwara','Active'),(9,'Dandeli','Active'),(10,'Shimoga','Active'),(11,'Lakshadweep','Active'),(12,'Hyderabad','Active'),(15,'Ooty','Active'),(16,'Pondecherry','Active'),(19,'Mumbai','Active'),(20,'Kolkata','Active'),(22,'New Delhi','Active'),(23,'Meghalaya','Active'),(25,'Manali','Active'),(26,'Udupi','Active'),(29,'Kerala','Active'),(31,'Dakshina Kannada','Active'),(32,'TamilNadu','Active'),(33,'Nepal','Active');
/*!40000 ALTER TABLE `tourism_location` ENABLE KEYS */;
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
