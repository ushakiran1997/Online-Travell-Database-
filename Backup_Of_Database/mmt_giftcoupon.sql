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
-- Table structure for table `giftcoupon`
--

DROP TABLE IF EXISTS `giftcoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giftcoupon` (
  `giftcouponid` int NOT NULL,
  `customer_id` int NOT NULL,
  `couponcode` varchar(25) NOT NULL,
  `expirydate` date NOT NULL,
  `Service_Charge` double NOT NULL,
  `Base_Cost` double NOT NULL,
  `Discount` double NOT NULL,
  `reason` text NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`giftcouponid`),
  UNIQUE KEY `giftcouponid_UNIQUE` (`giftcouponid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftcoupon`
--

LOCK TABLES `giftcoupon` WRITE;
/*!40000 ALTER TABLE `giftcoupon` DISABLE KEYS */;
INSERT INTO `giftcoupon` VALUES (1,12,'111222333','2022-01-01',10,1500,200,'This gift coupon for sales',''),(2,13,'999','2021-01-01',20,1800,280,'For surprise','Redeemed'),(3,1,'22334455','2022-02-24',15,2000,520,'For Love','Redeemed'),(4,5,'5239445','2021-03-12',20,2300,420,'Friend-N-All','Redeemed'),(5,8,'6574382','2022-04-11',15,2080,680,'Parent Love',' ');
/*!40000 ALTER TABLE `giftcoupon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 20:37:36
