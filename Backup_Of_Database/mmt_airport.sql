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
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `airport` char(4) NOT NULL,
  `aname` varchar(5000) NOT NULL,
  `checkin` varchar(50) NOT NULL,
  `resvtns` varchar(12) NOT NULL,
  `flightinfo` varchar(500) NOT NULL,
  PRIMARY KEY (`airport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES ('AMST','Amsterdam South Hall Departures','20 mins before flight','6','022 2426 20 178299'),('BELF','Belfast Desks 18 and 19','15 mins before flight','23','2325151 08494 22888'),('BIRM','Birmingham Check-in desks','20 mins before flight','21','236 0121'),('BRUS','Brussels Sabena check-in desks','30 mins before flight','2','511 9030 2 7207167'),('DUBL','Dublin Check-in','20 mins prior to departure','1','423 555'),('EDIN','Edinburgh Gate 1 at least','10 mins before departure','31','447 1000'),('EMID','East Midlands Check-in','15 mins before flight for heavy bags','332','810552 0332 852614'),('GLAS','Glasgow Desks 60-64/Gate 8','20 mins before departure','41','204 2436'),('HROW','Heathrow Island A/B Terminal-1','20 mins before flight','81','5895599 081 7457321'),('LBDR','Leeds/Bradford Check-in','15 mins before flight for baggage','','0532 451991'),('LVPL','Liverpool 15 mins heavy baggages','10 mins hand baggage','51','494 0200'),('PARI','Paris Hall 22 Terminal 1','30 mins before flight','14742','14444 14862 2280'),('TEES','Teeside 15 mins heavy baggages','10 mins hand baggage','642','219444');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:34
