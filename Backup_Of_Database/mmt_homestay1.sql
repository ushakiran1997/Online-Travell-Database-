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
-- Table structure for table `homestay1`
--

DROP TABLE IF EXISTS `homestay1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homestay1` (
  `Homestay_ID` varchar(500) NOT NULL,
  `Homestay_Name` varchar(500) NOT NULL,
  `City_ID` varchar(500) NOT NULL,
  `Locality` varchar(500) NOT NULL,
  `Price_ID` varchar(500) NOT NULL,
  PRIMARY KEY (`Homestay_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homestay1`
--

LOCK TABLES `homestay1` WRITE;
/*!40000 ALTER TABLE `homestay1` DISABLE KEYS */;
INSERT INTO `homestay1` VALUES ('HM_ID1','Melange Astris','C_ID14','Near Candolim','Rs_ID6'),('HM_ID10','NANDU HOSPITALITY','C_ID24','Fatehabad Nagar','Rs_ID4'),('HM_ID11','Beautiful Pent house','C_ID15','Rani Ahilya Nagari ','Rs_ID3'),('HM_ID12','Swagata','C_ID8','Fatehabad Road','Rs_ID2'),('HM_ID13','Silver Springs Residence','C_ID34','Shamsabad','Rs_ID6'),('HM_ID14','Terrace Gardens Guest Hous','C_ID34','Tajganj','Rs_ID4'),('HM_ID15','Misty Blue Service Apartment','C_ID12','Nityagram','Rs_ID5'),('HM_ID16','Shri Annapuneshwari Service Apartment','C_ID34','Taj Nagari','Rs_ID6'),('HM_ID17','Mistyblue Suites','C_ID9','Kaulakha','Rs_ID4'),('HM_ID18','Clyford Suites','C_ID2','Fatehabad Road','Rs_ID1'),('HM_ID19','Maple Suites','C_ID2','Near Marine drive','Rs_ID3'),('HM_ID2','Golden Reevera','C_ID8','Near Nandi hills','Rs_ID5'),('HM_ID20','SILICON HEARTH','C_ID12','Shaheed Nagar','Rs_ID2'),('HM_ID21','BENAKA SUITES','C_ID12','Taj Nagari','Rs_ID4'),('HM_ID22','DivBnB','C_ID34','Shaheed Nagar','Rs_ID3'),('HM_ID23','V STAY','C_ID34','Near Lal Killa','Rs_ID5'),('HM_ID24','Stayhome Stays','C_ID45','Bajrang Nagar','Rs_ID6'),('HM_ID25','Le grand bleu @ Shibani\'s Corner','C_ID45','Near Filmcity','Rs_ID2'),('HM_ID26','Gokaldas Nirvana','C_ID45','Dadar road','Rs_ID4'),('HM_ID27','Urban Kuteer','C_ID8','Murgan Road','Rs_ID3'),('HM_ID28',' Aashiyana','C_ID34','Venkateshwar Road','Rs_ID2'),('HM_ID29',' RR Nagari','C_ID45','Near Tirupati','Rs_ID2'),('HM_ID3','Stayhome Classic','C_ID14','Near Morjim','Rs_ID4'),('HM_ID30','Ground floor Private studio','C_ID45','Borivali','Rs_ID3'),('HM_ID31','Catalyst Suites','C_ID8','Shamsabad','Rs_ID2'),('HM_ID32','Misty Meridian Serviced Apartment','C_ID46','Near Tirupati hostel ','Rs_ID2'),('HM_ID33','RashiBNK','C_ID31','Tirupati Nagari','Rs_ID3'),('HM_ID34','Service Residences In Manyata Tech Park','C_ID45','Near City palace','Rs_ID3'),('HM_ID35','Tripura Deluxe Service Apartment','C_ID36','London University','Rs_ID3'),('HM_ID36','itis suites','C_ID37','Near Tirupati hospital','Rs_ID3'),('HM_ID37','Nisargha Service Apartment','C_ID30','Near Eiffel tower','Rs_ID3'),('HM_ID38','Amethyst Serviced Apartments','C_ID40','Kali mata Road','Rs_ID1'),('HM_ID39','Resside Service Apartment','C_ID43','Near Candolim','Rs_ID6'),('HM_ID4','Arra Suites','C_ID9','Shamsabad','Rs_ID3'),('HM_ID40','Basil Suites','C_ID45','New South Wales','Rs_ID7'),('HM_ID41','Swiss Royal Suites','C_ID46','Marina Bay','Rs_ID2'),('HM_ID42','MS Avenue','C_ID2','Lohamandi','Rs_ID1'),('HM_ID43','Nandu Associates Marathalli','C_ID48','Near City palace','Rs_ID2 '),('HM_ID44','Falcon Suites','C_ID2','Near Taj Mahal','Rs_ID3 '),('HM_ID45','Residency Astris','C_ID48','Shaheed Nagar','Rs_ID4 '),('HM_ID5','Stayhome Suites','C_ID24','Near Candolim','Rs_ID5'),('HM_ID6','Canopy house ','C_ID24','Venktash Road','Rs_ID5'),('HM_ID7','Luxtay Suites','C_ID12','Tajganj Nagar','Rs_ID2'),('HM_ID8','Terrace Garden','C_ID23','Maharana Nagar','Rs_ID3 '),('HM_ID9','Cozy Ambience','C_ID24','Pratap Road','Rs_ID2');
/*!40000 ALTER TABLE `homestay1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:29
