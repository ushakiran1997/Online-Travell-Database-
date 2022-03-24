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
-- Table structure for table `hcollection2`
--

DROP TABLE IF EXISTS `hcollection2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hcollection2` (
  `City` varchar(80) NOT NULL,
  `Country_Code` varchar(80) NOT NULL,
  `Destination_ID` varchar(80) NOT NULL,
  `Peak_Time` varchar(80) NOT NULL,
  `Off_Season` varchar(80) NOT NULL,
  `No_Of_Activity` int NOT NULL,
  PRIMARY KEY (`City`),
  KEY `Country_Code_idx` (`Country_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hcollection2`
--

LOCK TABLES `hcollection2` WRITE;
/*!40000 ALTER TABLE `hcollection2` DISABLE KEYS */;
INSERT INTO `hcollection2` VALUES ('Abu-Dhabi','Co_Code19','DI_3','DEC-MAR','JUN-SEP',4),('Bali','Co_Code7','DI_1','APR-SEP','JAN-MAR',2),('Da-Nang','Co_Code23','DI_10','JUN-AUG','SEP-JAN',3),('Dubai','Co_Code6','DI_8','SEP-MAR','APR-JUN',2),('Dwarka','Co_Code6','DI_9','OCT-FEB','MAR-JUN',5),('Goa','Co_Code6','DI_4','NOV-FEB','MAR-JUN',3),('Jaipur','Co_Code6','DI_5','OCT-MAR','APR-JUN',3),('Jodhpur','Co_Code6','DI_6','MAR_JUN','OCT_FEB',2),('Kasol','Co_Code6','DI_6','MAR_JUN','OCT_FEB',3),('Maldives','Co_Code9','DI_2','DEC-APR','JUN-SEP',2);
/*!40000 ALTER TABLE `hcollection2` ENABLE KEYS */;
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
