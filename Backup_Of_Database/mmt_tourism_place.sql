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
-- Table structure for table `tourism_place`
--

DROP TABLE IF EXISTS `tourism_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourism_place` (
  `tourism_placeid` int NOT NULL,
  `location_id` int NOT NULL,
  `tourism_place` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`tourism_placeid`),
  KEY `indx_tourism_place` (`tourism_placeid`,`location_id`,`tourism_place`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourism_place`
--

LOCK TABLES `tourism_place` WRITE;
/*!40000 ALTER TABLE `tourism_place` DISABLE KEYS */;
INSERT INTO `tourism_place` VALUES (1,3,'Mysore palace','Active'),(2,2,'Bangalore Palace','Active'),(3,2,'Lalbagh Botanical Garden','Active'),(4,2,'Cubbon Park','Active'),(5,2,'Tippu sultan Place and Fort','Active'),(6,2,'Bannerghatta Biological Park','Active'),(7,2,'ISKCON Temple Bangalore','Active'),(8,2,'Wonderla Bangalore','Active'),(9,3,'Mysore palace','Active'),(10,3,'Brindavan Gardens','Active'),(11,3,'Somanathapura Temple','Active'),(12,3,'Mysore Zoo','Active'),(13,3,'Chamundeshwarai Temple','Active'),(14,3,'Shuka Vana','Active'),(15,3,'Bonsai Garden','Active'),(16,3,'Karanji Lake','Active'),(17,3,'GRS Fantasy Park','Active'),(18,3,'St.Philomenas Chruch','Active'),(19,3,'Jaganmohan Palace','Active'),(20,3,'Talakadu Temple','Active'),(21,4,'Abbey Falls','Active'),(22,4,'Talacauvery','Active'),(23,4,'Namdroling Monastery','Active'),(24,4,'Gaddige Rajas Tomb','Active'),(25,4,'Rajas Seat','Active'),(26,4,'Madekeri Fort','Active'),(27,4,'Coffee Plantation','Active'),(28,4,'Omkareshwara Temple','Active'),(29,4,'Chingara Falls','Active'),(30,29,'Wayanad','Active'),(31,29,'Cochin','Active'),(32,29,'Munnar','Active'),(33,29,'Kollam','Active'),(34,29,'Kozhikode','Active'),(35,29,'Bekal','Active'),(36,29,'Guruvayur','Active'),(37,29,'Kannur','Active'),(38,29,'Kasargod','Active'),(39,29,'Mangeshwara','Active'),(40,8,'Netrani Island','Active'),(41,8,'Murudeshwara Temple','Active'),(42,8,'Murudeshwara Beach','Active'),(43,8,'Murudeshwara Fort','Active'),(44,8,'Statue Park','Active'),(45,8,'Bhatkal Beach','Active'),(46,9,'Dandeli WildLife Sanctuary','Active'),(47,9,'Kali River','Active'),(48,9,'Kavala Caves','Active'),(49,9,'Syntheri Rock','Active'),(50,9,'Shiroli peak','Active'),(51,9,'Anshi National Park','Active'),(52,9,'Supa Dam','Active'),(53,9,'Sykes Point','Active'),(54,9,'Kulgi Nature Camp','Active'),(55,10,'Dabbe Falls','Inactive'),(56,10,'Kodachadri','Active'),(57,10,'Jog Falls','Active'),(58,10,'Agumbe','Active'),(59,10,'Mandagadde Bird Sanctuary','Active'),(60,10,'Gudavi Bird Sanctuary','Active'),(61,10,'Jogigundi Falls','Active'),(62,10,'Sakerbayalu Elephant Camp','Active'),(63,10,'Nagara Fort','Active'),(64,11,'Agatti Island','Active'),(65,11,'Bangaram Island','Active'),(66,11,'Pitti Bird Sanctuary','Active'),(67,11,'Kavaratti Island Marine Aquarium','Active'),(69,33,'Everest View Jeep Tour','Active');
/*!40000 ALTER TABLE `tourism_place` ENABLE KEYS */;
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
