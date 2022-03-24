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
-- Table structure for table `city_transport`
--

DROP TABLE IF EXISTS `city_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_transport` (
  `Travel_ID` varchar(500) NOT NULL,
  `Departure_City` varchar(80) NOT NULL,
  `Arrival_City` varchar(90) NOT NULL,
  PRIMARY KEY (`Travel_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_transport`
--

LOCK TABLES `city_transport` WRITE;
/*!40000 ALTER TABLE `city_transport` DISABLE KEYS */;
INSERT INTO `city_transport` VALUES ('Tra_ID1','Abu Dhabi','Dubai'),('Tra_ID10','Chicago','New York'),('Tra_ID11','Dehradun','kashmir'),('Tra_ID12','Delhi','Jaipur'),('Tra_ID13','Dubai','Delhi'),('Tra_ID14','Goa','Mumbai'),('Tra_ID15','Forde','Mumbai'),('Tra_ID16','Guwahati','Kolkata'),('Tra_ID17','Hanoi','Mumbai'),('Tra_ID18','Hyderabad','Chennai'),('Tra_ID19','Istanbul','Forde'),('Tra_ID2','Agra','Varanasi'),('Tra_ID20','Jabalpur','Varanasi'),('Tra_ID21','Jaipur','Udaipur'),('Tra_ID22','Jammu','kashmir'),('Tra_ID23','Jodhpur','Udaipur'),('Tra_ID24','kashmir','Jammu'),('Tra_ID25','Kathmandu','Kolkata'),('Tra_ID26','Kochi','Bengaluru'),('Tra_ID27','Kolkata','Shillong'),('Tra_ID28','London ','Istanbul'),('Tra_ID29','Male','Pondicherry'),('Tra_ID3','Ahmedabad','Mumbai'),('Tra_ID30','Moscow','Delhi'),('Tra_ID31','Mumbai','Goa'),('Tra_ID32','Mysore','Thiruvananthapuram'),('Tra_ID33','New York','Chicago'),('Tra_ID34','Paris','Delhi'),('Tra_ID35','Pondicherry','Thiruvananthapuram'),('Tra_ID36','Pune','Goa'),('Tra_ID37','Sydney','Delhi'),('Tra_ID38','Raipur','Pune'),('Tra_ID39','Shillong','Guwahati'),('Tra_ID4','Amritsar','Dehradun'),('Tra_ID40','Singapore','Bangkok'),('Tra_ID41','Thiruvananthapuram','Tirupati'),('Tra_ID42','Tirupati','Bengaluru'),('Tra_ID43','Udaipur','Jaipur'),('Tra_ID44','Varanasi','Jabalpur'),('Tra_ID45','Villaherenose','New York'),('Tra_ID46','Zurich','London '),('Tra_ID47','Delhi','New York'),('Tra_ID48','Delhi','Goa'),('Tra_ID49','Delhi','Tirupati'),('Tra_ID5','Andoman Nicobar','Chennai'),('Tra_ID50','Jaipur','Tirupati'),('Tra_ID51','Nagpur','Kolkata'),('Tra_ID52','Delhi','Banglore'),('Tra_ID6','Bali','Kolkata'),('Tra_ID7','Bangkok','Chennai'),('Tra_ID8','Bengaluru','Bengaluru'),('Tra_ID9','Chennai','Kochi');
/*!40000 ALTER TABLE `city_transport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:27
