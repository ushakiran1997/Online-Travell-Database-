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
-- Table structure for table `hcollection3`
--

DROP TABLE IF EXISTS `hcollection3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hcollection3` (
  `Sno` int NOT NULL,
  `Destination_ID` varchar(80) NOT NULL,
  `Things_To_See` varchar(500) NOT NULL,
  `Activity_Type` varchar(500) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hcollection3`
--

LOCK TABLES `hcollection3` WRITE;
/*!40000 ALTER TABLE `hcollection3` DISABLE KEYS */;
INSERT INTO `hcollection3` VALUES (1,'DI_4','Agauda Fort','Hiking'),(2,'DI_4','Baga Beach','Scooba Diving'),(3,'DI_4',' Calangute Beach','Water drifting'),(4,'DI_6','Shop @Kasol Market','Hot air baloon ride'),(5,'DI_6','Camp @ Parvati Valley ','Water Fall trip'),(6,'DI_6','Walk @ Parvati River','Water Fall trip'),(7,'DI_1','Ancient Temple','Sight Seeing'),(8,'DI_1','Beach','Sight Seeing'),(9,'DI_2','The beach activities and island hopping.','Water Sports'),(10,'DI_3','Shopping jackpots and perfect conditions for sightseeing the attractions','Water Sports'),(11,'DI_5','The beautiful forts, palaces and gardens','Sight Seeing'),(12,'DI_7','Sightseeing and outdoor activities.','Sight Seeing'),(13,'DI_8','Desert camping and visiting the forts.','Sight Seeing'),(14,'DI_9','Visiting magnificent temples, taking long drives','Sight Seeing'),(15,'DI_10','Beach activities like swimming and water sports.','Water Sports');
/*!40000 ALTER TABLE `hcollection3` ENABLE KEYS */;
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
