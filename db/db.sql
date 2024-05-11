-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `state` enum('invalide','validated') COLLATE utf8mb4_general_ci NOT NULL,
  `professeur` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (14,'theme1','dess','','invalide','prof1'),(15,'theme2','dess','','invalide','prof2'),(16,'theme3','dess','','invalide','prof3'),(17,'theme4','dess','','invalide','prof4'),(18,'theme5','dess','','invalide','prof5'),(19,'theme5','dess','','invalide','prof5');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `second_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `third_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fourth_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `education_level` enum('L3','M2') COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'fff','ssss','zzzzz','oooo','heloo','dikraboubidi@gmail.com','$2y$10$.L/s2mkj4pIW4.R.NVUEM.85KITV15Q5GvzvoZgDiUWL0iXSOxbui','L3'),(3,'zara','godchi','amz','baba','mamaty','dikrabou@gmail.com','$2y$10$RV7GyUeP497MUmQyzKi98uofFS0kmJTirD50ocCrLdsAjIODxrq8S','M2'),(4,'safia','hoda','dikra','assia','groupe','gyzyziozi@gmail.com','$2y$10$zkVpEhSYM8w8AeBEQ/l67O3o/ifdeDqECF8RVH.4zwXXexK6rs.XW','M2'),(5,'dikra','iuy','djfirhfu','erjkejhfer','rozejreijr','foufa@gmail.com','$2y$10$By2wsGbMj1T0o.Xf7/aZG.jg2gFM.H/UVOQWv//jGeXNvhFri7F2C','M2'),(6,'dikra','','','','groupe1','foufita@gmail.com','$2y$10$l0FCLa4G4JazZR1khqq.B.7LBz24ABCAk0MOPHsmTtmfbnXF4.W92','M2'),(7,'safia','hoda','dikra','assia','RAZAN','gdtysttsrfatzf@gmail.com','$2y$10$nDwzeaLoCtfl8GqB.DGXTeZL6weCqk0iSOCS1yAHLPRZwBQ7y46Fq','M2'),(8,'Walid','','','','Walid Walid','w@w.com','$2y$10$ACzAeK6Laslh.3xh9xxQHeHeb3kkZNTEubNKP6Ira3/w4naWOtItq','L3');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishsheet`
--

DROP TABLE IF EXISTS `wishsheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishsheet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `professor` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `priority` int NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishsheet`
--

LOCK TABLES `wishsheet` WRITE;
/*!40000 ALTER TABLE `wishsheet` DISABLE KEYS */;
INSERT INTO `wishsheet` VALUES (2,'theme1','dess','prof1',1,'w@w.com');
/*!40000 ALTER TABLE `wishsheet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-02 17:06:15
