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
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotel_id` varchar(100) NOT NULL,
  `City_ID` varchar(100) NOT NULL,
  `hotel_name` varchar(500) NOT NULL,
  `hotel_address` text NOT NULL,
  `Price_ID` varchar(100) NOT NULL,
  `Rating_ID` varchar(500) DEFAULT NULL,
  `hotel_policies` text NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`hotel_id`),
  KEY `City_ID_idx` (`City_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='hotel details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES ('Hotel_1','C_ID1','Al Diar Sawa Hotel Apartments','Downtown 3.0 km from Abu Dhabi Airport XBW Abu Dhabi City Bus Terminal','Rs_ID5','R_ID7','Exclusive Offer HSBC Bank Credit Card Users Get INR 1946 Off','Active'),('Hotel_10','C_ID36','NY Moore Hostel','Brooklyn | 440 m from Montrose Av. Station','Rs_ID5','R_ID9','Free Cancellation, Zero Payment Now Available','Active'),('Hotel_11','C_ID37','Hotel Verneuil','Louvre, Paris | 1.8 km from The Louvre Museum','Rs_ID12','R_ID9','Exclusive Offer For All Users: Get 3721 Off','Active'),('Hotel_12','C_ID40','SKYE Suites Green Square','Zetland, Sydney | 120 m from Green Square Station','Rs_ID12','R_ID9','Free Cancellation available at extra charges','Active'),('Hotel_13','C_ID43','Oakwood Premier AMTD Singapore (SG Clean)','Downtown | 3.0 km from Gardens by the Bay','Rs_ID12','R_ID8','Free Cancellation available at extra charges','Active'),('Hotel_14','C_ID46','Radisson Blu Udaipur Palace Resort & Spa','Fateh Sagar Lake','Rs_ID5','R_ID8','Free Cancellation','Active'),('Hotel_15','C_ID45','Maanas Homestay','Near Tirupati Temple','Rs_ID2','R_ID4','Free Cancellation','Active'),('Hotel_16','C_ID34','Marol Dormitory','Andheri East | 3.8 km from T2 - Chhatrapati Shivaji International Airport','Rs_ID3','R_ID3','STAY FLEXIBLE WITH 1,100','Active'),('Hotel_17','C_ID27','Young Bombay Group Of House Boats','Dal Lake','Rs_ID4','R_ID8','Free Cancellation, Zero Payment Now Available','Active'),('Hotel_18','C_ID14','Majestic Eco Comforts','Varca','Rs_ID5','R_ID4','Wifi','Active'),('Hotel_19','C_ID8','Aura Corporate Suites','Near Manyata Tech Park','Rs_ID2','R_ID3','Free Cancellation','Active'),('Hotel_2','C_ID10','Shangri La Hotel','Bangkok SHA Extra Plus Bang Rak','Rs_ID9','R_ID7','Exclusive Offer For All Users Get 2255 Off','Active'),('Hotel_20','C_ID5','Ixzire','Mathura RV, Ferrargunj','Rs_ID5','R_ID8','Free Cancellation, Zero Payment Now Available','Active'),('Hotel_21','C_ID15','Aquays Hotels & Resorts','Govind Nagar Beach, Havelock','Rs_ID7','R_ID3','Free Cancellation, Zero Payment Now Available','Active'),('Hotel_22','C_ID2','Hotel Pushp Villa','Fatehabad Road | 2.5 km from Taj Mahal','Rs_ID4','R_ID7','Free Cancellation, Zero Payment Now Available','Active'),('Hotel_3','C_ID10','Byblos Hotel','Dubai Internet City','Rs_ID7','R_ID8','Free Cancellation, Zero Payment Now Available','Active'),('Hotel_4','C_ID22','Akbiyik Suite','Sultanahmet | 450 m from Hagia Sophia','Rs_ID10','R_ID7','Free Cancellation available at extra charges','Active'),('Hotel_5','C_ID31','Staycity Aparthotels London Heathrow','Hayes | 30 m from Hayes & Harlington Station','Rs_ID8','R_ID7','Free Cancellation, Zero Payment Now Available','Active'),('Hotel_6','C_ID33','Apart-Hotel Intermark Residence on Novy Arbat, 15','Central Administrative Okrug | 540 m from Arbatskaya Station - Filyovskaya Line','Rs_ID9','R_ID9','Free Cancellation, Zero Payment Now Available','Active'),('Hotel_7','C_ID36','Gardens Suites Hotel by Affinia','Manhattan | 370 m from Roosevelt Island Tramway Manhattan Station','Rs_ID13','R_ID7','Free Cancellation, Zero Payment Now Available','Active'),('Hotel_8','C_ID36','Madison Avenue Luxury Apartments Next to Times Square','Gramercy | 270 m from 28 St. Station (Park Av. S)','Rs_ID13','R_ID9','Free Cancellation, Zero Payment Now Available','Active'),('Hotel_9','C_ID36','Jazz On The Park Hostel','Manhattan | 230 m from 103 St. Station (Central Park West)','Rs_ID5','R_ID9','Free Cancellation, Zero Payment Now Available','Active');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
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
