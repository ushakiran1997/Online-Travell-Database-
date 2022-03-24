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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `City_ID` varchar(500) NOT NULL,
  `City_Name` varchar(500) NOT NULL,
  `Country_Code` varchar(500) NOT NULL,
  PRIMARY KEY (`City_ID`),
  KEY `indx_city` (`City_ID`),
  KEY `Country_Code_idx` (`Country_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES ('C_ID1','Abu Dhabi','Co_Code15'),('C_ID10','Chicago','Co_Code17'),('C_ID11','Dehradun','Co_Code5'),('C_ID12','Delhi','Co_Code5'),('C_ID13','Dubai','Co_Code15'),('C_ID14','Goa','Co_Code5'),('C_ID15','Forde','Co_Code14'),('C_ID16','Frankfurt','Co_Code4'),('C_ID17','Guwahati','Co_Code5'),('C_ID18','Hanoi','Co_Code18'),('C_ID19','Herat','Co_Code1'),('C_ID2','Agra','Co_Code5'),('C_ID20','Hervay Bay','Co_Code2'),('C_ID21','Hyderabad','Co_Code5'),('C_ID22','Istanbul','Co_Code14'),('C_ID23','Jabalpur','Co_Code5'),('C_ID24','Jaipur','Co_Code5'),('C_ID25','Jammu','Co_Code5'),('C_ID26','Jodhpur','Co_Code5'),('C_ID27','kashmir','Co_Code5'),('C_ID28','Kathmandu','Co_Code9'),('C_ID29','Kochi','Co_Code5'),('C_ID3','Ahmedabad','Co_Code5'),('C_ID30','Kolkata','Co_Code5'),('C_ID31','London ','Co_Code16'),('C_ID32','Male','Co_Code7'),('C_ID33','Moscow','Co_Code10'),('C_ID34','Mumbai','Co_Code5'),('C_ID35','Mysore','Co_Code5'),('C_ID36','New York','Co_Code17'),('C_ID37','Paris','Co_Code3'),('C_ID38','Pondicherry','Co_Code5'),('C_ID39','Pune','Co_Code5'),('C_ID4','Amritsar','Co_Code5'),('C_ID40','Sydney','Co_Code2'),('C_ID41','Raipur','Co_Code5'),('C_ID42','Shillong','Co_Code5'),('C_ID43','Singapore','Co_Code11'),('C_ID44','Thiruvananthapuram','Co_Code5'),('C_ID45','Tirupati','Co_Code5'),('C_ID46','Udaipur','Co_Code5'),('C_ID47','Varanasi','Co_Code5'),('C_ID48','Villaherenose','Co_Code8'),('C_ID49','Zurich','Co_Code12'),('C_ID5','Andoman Nicobar','Co_Code5'),('C_ID6','Bali','Co_Code6'),('C_ID7','Bangkok','Co_Code13'),('C_ID8','Bengaluru','Co_Code5'),('C_ID9','Chennai','Co_Code5');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:30
