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
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telno` varchar(1000) DEFAULT NULL,
  `Email_ID` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'J Millar','Englewood Cliffs','061 343 881','j.millar@gmail.com'),(2,'J D Ullman','1 Microsoft Way','061 342 881','j.ullman@gmail.com'),(3,'Ramesh Sharma','16 Bedford St','071 577 890','ramesh.sharma@gmail.com'),(4,'D Etheridge','4 Maylands Avenue','061 343 881','d.etheridge@gmail.com'),(5,'E Simon','8 Cherry Street',' 061 343 882','e.simon@gmail.com'),(6,'D N Hamer','1 St Pauls Churchyard','061 343 887','d.hamer@gmail.com'),(7,'Ram Sharma','5 Chancery Lane','061 343 871','ram.sharma@gmail.com'),(8,'G B Davis','25 Allenby Road','071 343 881','g.davis@gmail.com'),(9,'C Evans','63 Kew Green','061 323 881','c.evans@gmail.com'),(10,'A N Smith','81 Digby Crescent','071 321 456','a.smith@gmail.com'),(11,'T Pittman','The Little House',' 071 321 456','t.pittman@gmail.com'),(12,'J Peters','31 Lucas Road',' 071 381 456','j.peters@gmail.com'),(13,'K E Kendall','11 Rosedale Avenue','071 328 456','k.kendall@gmail.com'),(14,'R H Miller','15 ram nagar','071 148 456','r.miller@gmail.com'),(15,'Sandip Sharma','5 Krishna Road','9132637899','sandip.sharma@gmail.com'),(16,'Kishor Dhoke','10 Jairam Road','9145637889','kishor.Dhoke@gmail.com'),(17,'Atul patle','50 Kalimata Road','9145637819','atul.patle@gmail.com'),(18,'Ruchita Agraval','60 lankesh Road','9149637899','ruchita.agraval@gmail.com'),(19,'Kiran Patil','150 yervada Road','9145627899','kiran.patil@gmail.com'),(20,'Dipak Dhoke','45 hareram Road','9145737899','dipak.dhoke@gmail.com'),(21,'Usha Kinker','55 Tirupati Road','9144637899','usha.kinker@gmail.com'),(22,'Rahul Tapre','70 dadar Road','9149637899','rahul.tapre@gmail.com'),(23,'Vishaakha Kawadi','20 kawdi wasti',NULL,'vkawadi@gmail.com'),(24,'Suyuash Khedkar','21 kawdi wasti',NULL,'suyashk@gmail.com'),(25,'Renuka','56 Sroj society',NULL,'renuka.t@gmil.com');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `people_BEFORE_INSERT` BEFORE INSERT ON `people` FOR EACH ROW BEGIN
if new.telno = " " then set new.telno = Null;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:27
