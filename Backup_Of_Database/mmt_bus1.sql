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
-- Table structure for table `bus1`
--

DROP TABLE IF EXISTS `bus1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus1` (
  `Bus_ID` varchar(500) NOT NULL,
  `Bus_Operator` varchar(500) NOT NULL,
  `Rating_ID` varchar(500) NOT NULL,
  PRIMARY KEY (`Bus_ID`),
  KEY `Rating_ID_idx` (`Rating_ID`),
  CONSTRAINT `Rating_ID` FOREIGN KEY (`Rating_ID`) REFERENCES `rating` (`Rating_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus1`
--

LOCK TABLES `bus1` WRITE;
/*!40000 ALTER TABLE `bus1` DISABLE KEYS */;
INSERT INTO `bus1` VALUES ('BU_ID1','A One Travel Agency','R_ID1'),('BU_ID10','Anita Maya Travels','R_ID5'),('BU_ID100','Raj Travels(EXPRESS)','R_ID6'),('BU_ID101','Rajat Rides Tours and Travels','R_ID6'),('BU_ID102','Rajesh Transports','R_ID7'),('BU_ID103','Rajeswari Travels','R_ID8'),('BU_ID104','Rama Krishna Tour and Travels','R_ID9'),('BU_ID105','Ramdev Tours And Travels','R_ID5'),('BU_ID106','RATHORE NANDU SHREENATH TRAVELS','R_ID6'),('BU_ID107','RC Travels','R_ID7'),('BU_ID108','Rishabh travels','R_ID8'),('BU_ID109','RK Travels','R_ID3'),('BU_ID11','Ashok tour and travels','R_ID6'),('BU_ID110','Roshan Travels - Humrahi','R_ID4'),('BU_ID111','Safar Travels and Cargo','R_ID5'),('BU_ID112','Sahara Travels','R_ID6'),('BU_ID113','Sai Freight Logistics','R_ID7'),('BU_ID114','Sai Sindhu Travels','R_ID9'),('BU_ID115','Sainath Travel Agency','R_ID6'),('BU_ID116','SAINATH TRAVELS AND CARGO AGENCY','R_ID7'),('BU_ID117','Samreen Travels','R_ID8'),('BU_ID118','Seema Pooja Travels','R_ID9'),('BU_ID119','Shakti Travels','R_ID1'),('BU_ID12','Ashok Travels Ajmer','R_ID7'),('BU_ID120','Sharma Travels Atmaram','R_ID2'),('BU_ID121','Shekhar Travels','R_ID3'),('BU_ID122','SHIVA SAI TRAVELS','R_ID4'),('BU_ID123','Shre Ganesh Travels','R_ID5'),('BU_ID124','Shree Parshwanath Travels','R_ID6'),('BU_ID125','Shree Balaji Bus Service','R_ID7'),('BU_ID126','Shree Mahaveer Nakoda Travels','R_ID1'),('BU_ID127','Shree Mahaveer Travels ®','R_ID2'),('BU_ID128','Shree Maruti Krupa Travels And Cargo Pvt Ltd','R_ID3'),('BU_ID129','shree Parshwanath travels and cargo','R_ID4'),('BU_ID13','Ashok Travels Mandsaur','R_ID1'),('BU_ID130','Shree Parshwanth Travels and Cargo','R_ID1'),('BU_ID131','Shree Savariya Travels & Transport','R_ID2'),('BU_ID132','Shreenath Metro Travels','R_ID3'),('BU_ID133','Shri Ganesh Travels','R_ID7'),('BU_ID134','SHRI KRISHNA TRAVELS (JAI SHREE GANESH YATRA CO.)','R_ID8'),('BU_ID135','Shri Sawriya Travels','R_ID9'),('BU_ID136','Shrinath nama travels','R_ID6'),('BU_ID137','Shrinath Nandu Travels','R_ID7'),('BU_ID138','Shrinath Nandu Travels Delhi','R_ID8'),('BU_ID139','Shrinath Solitaire Premium Class','R_ID9'),('BU_ID14','Atmaram Travels','R_ID2'),('BU_ID140','Shrinath_Mahadev Travels','R_ID1'),('BU_ID141','Shrinath® Travel Agency Pvt. Ltd.','R_ID2'),('BU_ID142','Shubhra Sharma Tourist Services','R_ID3'),('BU_ID143','Singhvi Travels','R_ID4'),('BU_ID144','SKYFI ROADWAYS INDIA PVT LTD','R_ID5'),('BU_ID145','Sri Kalyan Travels','R_ID6'),('BU_ID146','Sri Kedareswari Tours and Travels','R_ID7'),('BU_ID147','Sri Krishna Travels','R_ID9'),('BU_ID148','Sri Sai Atmaram','R_ID9'),('BU_ID149','Sri Vengamamba Bus Transport (SVBT)','R_ID9'),('BU_ID15','Atmaram M Dev Travels','R_ID3'),('BU_ID150','Sri Venkataramana Travels','R_ID1'),('BU_ID151','Sri Venkateshwara Tours and Travels','R_ID2'),('BU_ID152','Suraj Travel And Cargo Services','R_ID3'),('BU_ID153','Svkdt travels','R_ID4'),('BU_ID154','The Parshwanath Travels','R_ID5'),('BU_ID155','Transline Maa Travels','R_ID6'),('BU_ID156','V Kaveri Travels','R_ID7'),('BU_ID157','Varsha Travels','R_ID8'),('BU_ID158','VGO BUS','R_ID5'),('BU_ID159','Vijay Shakti Travels','R_ID6'),('BU_ID16','Atmaram Manish Travels','R_ID4'),('BU_ID160','Vijay Tour and Travels','R_ID7'),('BU_ID161','Vikas travels','R_ID8'),('BU_ID162','Vikas Travels Jaipur','R_ID9'),('BU_ID163','Vikas Travels Regd.','R_ID2'),('BU_ID164','Vishwakarma Nirman Travels','R_ID3'),('BU_ID165','VRL Travels','R_ID4'),('BU_ID166','zingbus','R_ID5'),('BU_ID167','zingbus - basic','R_ID6'),('BU_ID17','Atmaram Sharma Travels','R_ID1'),('BU_ID18','Baba Shayam Travels','R_ID2'),('BU_ID19','Babu Travels','R_ID3'),('BU_ID2','AAINATH TRAVELS','R_ID2'),('BU_ID20','Big Bus','R_ID4'),('BU_ID21','Bigbus','R_ID5'),('BU_ID22','BSRM Travels','R_ID6'),('BU_ID23','Chanakya Travels Agency','R_ID7'),('BU_ID24','Chartered Bus','R_ID8'),('BU_ID25','Choudhary King Travels and Cargo Movers','R_ID9'),('BU_ID26','Dashmesh Travels','R_ID2'),('BU_ID27','Deepak (Mahalaxmi)','R_ID3'),('BU_ID28','Delhi Heart Vikas Travels','R_ID4'),('BU_ID29','Dolphin travel house','R_ID5'),('BU_ID3','Abhishek Vishal Travels','R_ID3'),('BU_ID30','Dolphin Travel House (37)','R_ID6'),('BU_ID31','Four Hans Travels','R_ID7'),('BU_ID32','Gajraj Travels','R_ID8'),('BU_ID33','Ganesh Travels','R_ID9'),('BU_ID34','Ganesh Travels','R_ID1'),('BU_ID35','Giroba Travels (Sharma)','R_ID2'),('BU_ID36','Global Travel Agency (GTA)','R_ID1'),('BU_ID37','Goldline Super Deluxe','R_ID2'),('BU_ID38','GreenLine Travels And Holidays','R_ID1'),('BU_ID39','Gujarat travels','R_ID2'),('BU_ID4','Ajay Travels Neemuch','R_ID4'),('BU_ID40','Gulzar Tours and Travels','R_ID1'),('BU_ID41','Gulzar Tours and Travels (Delhi)','R_ID2'),('BU_ID42','H.P. Travels','R_ID3'),('BU_ID43','Hail Trip','R_ID4'),('BU_ID44','Hari Transport Company','R_ID5'),('BU_ID45','India Tours & Travels (GetBookCab)','R_ID6'),('BU_ID46','Intercity travels','R_ID7'),('BU_ID47','IntrCity SmartBus','R_ID8'),('BU_ID48','Ivy Travels(Rajdhani)','R_ID9'),('BU_ID49','Jabbar Travels','R_ID4'),('BU_ID5','Ambey Travel Agency','R_ID5'),('BU_ID50','Jai Shree Ganesh Travels','R_ID5'),('BU_ID51','Jai Shrinath Travels','R_ID6'),('BU_ID52','Jain Parshwanath Travels','R_ID7'),('BU_ID53','Jain Shiv Shankar Travels','R_ID1'),('BU_ID54','Jain travels regd','R_ID2'),('BU_ID55','Jain Travels Regd Udaipur','R_ID3'),('BU_ID56','Jain Travels Regd. ABD','R_ID4'),('BU_ID57','Jakhar Travels','R_ID5'),('BU_ID58','Jkk Travels','R_ID6'),('BU_ID59','Jolly Tours and Travels','R_ID7'),('BU_ID6','Ambey Travels','R_ID1'),('BU_ID60','Kamlesh Travels','R_ID8'),('BU_ID61','Kanade Travels(CSK)','R_ID9'),('BU_ID62','Karan Maharaja Travels','R_ID1'),('BU_ID63','Khushi Tourist','R_ID2'),('BU_ID64','KKaveri Travels','R_ID5'),('BU_ID65','Komitla Trans lines.','R_ID4'),('BU_ID66','Konkan Travels Mujawar','R_ID5'),('BU_ID67','Konkan Travels National','R_ID6'),('BU_ID68','Kothari Travels','R_ID7'),('BU_ID69','KTC Travels','R_ID8'),('BU_ID7','Amit Travels','R_ID2'),('BU_ID70','Lake City Travels','R_ID9'),('BU_ID71','Lakshmi Gayatri Travels','R_ID6'),('BU_ID72','Laxmi traveller','R_ID7'),('BU_ID73','Maan Travels','R_ID8'),('BU_ID74','Mahadev Travels','R_ID9'),('BU_ID75','Mahalaxmi Travels ISO 9001:2015','R_ID5'),('BU_ID76','Mahalaxmi Travels ISO 9001:2015 Paras Travels','R_ID2'),('BU_ID77','Maharani Travels','R_ID1'),('BU_ID78','Mahashakti travels','R_ID2'),('BU_ID79','Mahaveer Travel Company','R_ID3'),('BU_ID8','AMIT TRAVELS UDAIPUR','R_ID3'),('BU_ID80','Mahaveer travels agency','R_ID4'),('BU_ID81','Maheshwaram Travels','R_ID5'),('BU_ID82','Meghana Travels','R_ID6'),('BU_ID83','Morning Star Travels','R_ID7'),('BU_ID84','Naik Travels(Bhagwati)','R_ID5'),('BU_ID85','Naveen Tour and Travels','R_ID6'),('BU_ID86','Navrang Travels','R_ID7'),('BU_ID87','New Babu Travels','R_ID8'),('BU_ID88','New Preeti travels','R_ID8'),('BU_ID89','New Shree Mahaveer Travels','R_ID9'),('BU_ID9','Anand Travels','R_ID4'),('BU_ID90','Nirman Travels','R_ID2'),('BU_ID91','Paavan Tours and Travels','R_ID3'),('BU_ID92','Panwar Travels','R_ID4'),('BU_ID93','Parshwanath Travel Pvt. Ltd','R_ID5'),('BU_ID94','PATEL Seema Pooja Travels Â®','R_ID6'),('BU_ID95','Paulo travels','R_ID7'),('BU_ID96','Pooja Travels.','R_ID8'),('BU_ID97','Pooja Yaduvanshi Travels','R_ID9'),('BU_ID98','PVS Tours and Travels','R_ID6'),('BU_ID99','Raj travels','R_ID4');
/*!40000 ALTER TABLE `bus1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:35
