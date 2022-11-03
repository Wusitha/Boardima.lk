-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bodima
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `boarding_facility`
--

DROP TABLE IF EXISTS `boarding_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boarding_facility` (
  `id` bigint NOT NULL,
  `facility` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boarding_facility`
--

LOCK TABLES `boarding_facility` WRITE;
/*!40000 ALTER TABLE `boarding_facility` DISABLE KEYS */;
/*!40000 ALTER TABLE `boarding_facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boarding_place`
--

DROP TABLE IF EXISTS `boarding_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boarding_place` (
  `id` bigint NOT NULL,
  `baths` int NOT NULL,
  `beds` int NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `gender_pref` varchar(255) NOT NULL,
  `key_money` int NOT NULL,
  `location` varchar(255) NOT NULL,
  `rate` double NOT NULL,
  `rent_amo` double NOT NULL,
  `rent_day` int NOT NULL,
  `state` varchar(255) NOT NULL,
  `type` int NOT NULL,
  `owner` bigint DEFAULT NULL,
  `latitude` decimal(10,2) DEFAULT NULL,
  `altitude` decimal(10,2) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7s0m672n9islrxbw8p17u1bf9` (`owner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boarding_place`
--

LOCK TABLES `boarding_place` WRITE;
/*!40000 ALTER TABLE `boarding_place` DISABLE KEYS */;
INSERT INTO `boarding_place` VALUES (2,1,2,'2022-02-03','Boarding place fro working men','B',10000,'Nugegoda',8.3,8000,12,'P',1,12,6.93,79.86,''),(3,1,2,'2022-02-03','Boarding place fro working women','G',10000,'Colombo',8.3,8000,12,'A',1,12,6.93,79.86,''),(4,1,2,'2022-10-22','Boarding Place for working girls','G',12000,'Colombo',10,6000,22,'P',1,6,NULL,NULL,'');
/*!40000 ALTER TABLE `boarding_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boarding_request`
--

DROP TABLE IF EXISTS `boarding_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boarding_request` (
  `boarder` bigint NOT NULL,
  `boarding_place` bigint NOT NULL,
  `is_paid` bit(1) NOT NULL,
  `state` varchar(1) NOT NULL,
  `is_rated` bit(1) NOT NULL,
  PRIMARY KEY (`boarder`,`boarding_place`),
  KEY `FK469og8qtupllnvqlhighbppby` (`boarding_place`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boarding_request`
--

LOCK TABLES `boarding_request` WRITE;
/*!40000 ALTER TABLE `boarding_request` DISABLE KEYS */;
INSERT INTO `boarding_request` VALUES (2,4,_binary '\0','A',_binary '\0'),(4,4,_binary '\0','A',_binary '\0'),(16,4,_binary '\0','A',_binary '\0'),(17,4,_binary '\0','P',_binary '\0'),(18,4,_binary '\0','P',_binary '\0');
/*!40000 ALTER TABLE `boarding_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_profile`
--

DROP TABLE IF EXISTS `facility_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_profile` (
  `boarding_place` bigint NOT NULL,
  `facility` bigint NOT NULL,
  `boarding_facility_id` bigint DEFAULT NULL,
  `boarding_place_id` bigint DEFAULT NULL,
  PRIMARY KEY (`boarding_place`,`facility`),
  KEY `FKm9jpnxkepht506q6mtvk213iq` (`boarding_facility_id`),
  KEY `FKasyeoxf0bdluh0wfmy620fntr` (`boarding_place_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_profile`
--

LOCK TABLES `facility_profile` WRITE;
/*!40000 ALTER TABLE `facility_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `facility_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (21);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint NOT NULL,
  `url` varchar(255) NOT NULL,
  `boarding_place` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8t6s00meunooprqmuk8fiahq2` (`boarding_place`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'assets/adver.png',1),(2,'assets/adver2.png',2),(3,'assets/adver.png',3);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint NOT NULL,
  `date` date NOT NULL,
  `message` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `user` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt4xdgxjikls4goj5f66yelly4` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent_payment`
--

DROP TABLE IF EXISTS `rent_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent_payment` (
  `id` bigint NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `boarder` bigint NOT NULL,
  `boarding_place` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqknm7suy4wapjd7cl7ied3vog` (`boarder`),
  KEY `FKqwqrcwqxo52let54ivruoaut0` (`boarding_place`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent_payment`
--

LOCK TABLES `rent_payment` WRITE;
/*!40000 ALTER TABLE `rent_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `rent_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` bigint NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `state` varchar(1) NOT NULL,
  `boarder` bigint DEFAULT NULL,
  `boarding_place` bigint DEFAULT NULL,
  `examiner` bigint DEFAULT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKalakwl3mjefeagnxjjdt1gjqq` (`boarder`),
  KEY `FKahxknoyv7f1ek7ltcymlakdm8` (`boarding_place`),
  KEY `FK3fkxa77meutg6kl9ta1i8p4fo` (`examiner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'2022-03-02','Water problems','C',2,4,12,0),(2,'2022-03-04','Room is too small','P',2,4,12,0),(3,'2022-03-04','Fan is not working','P',2,4,12,0),(4,'2022-03-02','Fan is not working','C',2,4,12,0),(5,'2022-04-04','Wathura Prashna Atha','F',18,4,5,0);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_payment`
--

DROP TABLE IF EXISTS `subscription_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_payment` (
  `id` bigint NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `boarding_place` bigint NOT NULL,
  `owner` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfetyfpd98ki6evawpq9d9ybcu` (`boarding_place`),
  KEY `FK7q48yin78vi1wgc7q5btj27og` (`owner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_payment`
--

LOCK TABLES `subscription_payment` WRITE;
/*!40000 ALTER TABLE `subscription_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `guardian_contact` varchar(10) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `type` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK_cf69eql64ont5pb889q2x2wt6` (`nic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (12,NULL,'1999-12-15','2022gp2@gmail.com','Pasindu',NULL,NULL,NULL,'sjbwh',NULL,'$2a$11$X.whd3Cqm4LPZIzH3dXlZepPlIvmwHVnqm2xeCIvsejToZ2OE3eiy',NULL,'A','O'),(2,'0770610851','1999-12-15','esariupendri1997@gmail.com','Esari','F',NULL,NULL,'Upendri',NULL,'$2a$11$2tYocwPuiZw60nYGwLXo/eNYZpC6PhkmyWG9/QWqEcnfWGDVQNr5S',NULL,'P','B'),(4,'0770610853','1999-12-15','amushanibandara@gmail.com','Ushani','F',NULL,NULL,'Bandara',NULL,'$2a$11$Ku.b5Q6MCRFwuMXwr/swEuP5SKuYO0qp62a5qbr3xPj4b7/rrgLQ6',NULL,'A','B'),(5,NULL,'1999-12-15','kannangaramudiyanse1to1@gmail.com','Muditha',NULL,NULL,NULL,'Kannangara',NULL,'$2a$11$/ozm6MRleFIxcwl4YmQS5eWlFybjKFyMNstVboDzeewS4OF..jLFK',NULL,'A','A'),(6,NULL,'1999-12-15','amdcushanibandara@gmail.com','sahan',NULL,NULL,NULL,'sankalpa',NULL,'$2a$11$FlBNr6E7Rtfyc88fChJDbughkH5fBrxF3bH.tTBrb/Vj9526bDjWC',NULL,'A','O'),(16,'0770610861','1999-12-22','abcdha@gmail.com','Sahan','M',NULL,NULL,'Pahan',NULL,'$2a$11$Ki8S1rFnxfVps1P5SfTME.Saf.WmS1eatGCutX7BzTTNYlyuJzKwO',NULL,'A','B'),(17,'0770611861','1999-12-22','abchhdha@gmail.com','Dilshan','M',NULL,NULL,'Pahan',NULL,'$2a$11$iDa2nQs2Sfcdzt7NKh6U9.fNYrSudXsWHSLn8nhtYsBa9DW.KvnQC',NULL,'A','B'),(18,'0710611861','1999-12-22','abchhhhdha@gmail.com','sasindu','M',NULL,NULL,'sahan',NULL,'$2a$11$U8Sr5ALkebLsxT0nbO85Guve4lcP6KBjTSfbpEbfx3i2y1D7uhDIO',NULL,'A','B'),(20,NULL,NULL,'sasindusahansankalpa@gmail.com','sasindu ',NULL,NULL,NULL,'dilhara',NULL,'$2a$11$ocutVzCaOVeg2aGqmm5jueMlfl.TTodo39/vauaiFrtukVnG2grca',NULL,'A','O');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `id` bigint NOT NULL,
  `address_line_one` varchar(255) DEFAULT NULL,
  `address_line_three` varchar(255) DEFAULT NULL,
  `address_line_two` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_token`
--

DROP TABLE IF EXISTS `verification_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrdn0mss276m9jdobfhhn2qogw` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_token`
--

LOCK TABLES `verification_token` WRITE;
/*!40000 ALTER TABLE `verification_token` DISABLE KEYS */;
INSERT INTO `verification_token` VALUES (12,'993054f1-9b10-45bf-9dbe-bb184c31e4c7',15),(13,'745d2655-3e5e-4cba-8e87-44cdfebcee3e',16),(14,'02cc4244-e480-43f4-a16e-808cd1b4d0ca',17),(15,'3a9c03c3-1041-4121-b6ad-b73210fbf8bf',18),(16,'d5c97515-a4f2-47d8-aa78-f73807cab86d',19),(17,'b0da0dbf-06ef-4f68-8b0e-ababc248811a',20);
/*!40000 ALTER TABLE `verification_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish_list`
--

DROP TABLE IF EXISTS `wish_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wish_list` (
  `boarder` bigint NOT NULL,
  `boarding_place` bigint NOT NULL,
  PRIMARY KEY (`boarder`,`boarding_place`),
  KEY `FKdrijc3ktxtugnloe4yo6qr8bk` (`boarding_place`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish_list`
--

LOCK TABLES `wish_list` WRITE;
/*!40000 ALTER TABLE `wish_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `wish_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 21:26:01
