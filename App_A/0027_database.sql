-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: 0027_Lab_Exam
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `0027_Lab_Exam`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `0027_Lab_Exam` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `0027_Lab_Exam`;

--
-- Table structure for table `Hero`
--

DROP TABLE IF EXISTS `Hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hero` (
  `Hero_id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Detail` varchar(255) NOT NULL,
  `Picture_link` varchar(255) NOT NULL,
  PRIMARY KEY (`Hero_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hero`
--

LOCK TABLES `Hero` WRITE;
/*!40000 ALTER TABLE `Hero` DISABLE KEYS */;
INSERT INTO `Hero` VALUES (1,'Captain America','Abilities	\r\nEnhanced strength, speed, stamina, durability, agility, reflexes, senses, and mental processing via the super soldier serum\r\nMaster martial artist and hand-to-hand combatant\r\nAccelerated healing\r\nSlowed aging','https://www.alamy.com/stock-photo/captain-america.html'),(2,'Iron Man','Abilities	\r\nGenius level intellect\r\nProficient scientist and engineer\r\nPowered armor suit','https://www.filmsnewsfeed.com/article/doctor-strange-2-fails-iron-man-in-3-big-ways'),(3,'Hulk','Abilities\r\nAs Bruce Banner/Doc Green:\r\nGenius level intellect\r\nProficient scientist and engineer\r\nAs Hulk/Joe Fixit/Immortal:\r\nImmense superhuman strength, speed, stamina, and durability\r\nInvulnerability\r\nAnger empowerment','https://www.pinterest.com/pin/download-free-hd-wallpaper-from-above-link-hulk-green-avengers-movie-film-animation-fire--635922409875788735/');
/*!40000 ALTER TABLE `Hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hero_in_movie`
--

DROP TABLE IF EXISTS `Hero_in_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hero_in_movie` (
  `Hero_id` int NOT NULL,
  `Movie_id` int NOT NULL,
  PRIMARY KEY (`Hero_id`,`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hero_in_movie`
--

LOCK TABLES `Hero_in_movie` WRITE;
/*!40000 ALTER TABLE `Hero_in_movie` DISABLE KEYS */;
INSERT INTO `Hero_in_movie` VALUES (1,1),(1,2),(1,3),(2,3),(2,4),(3,4),(3,5),(3,6);
/*!40000 ALTER TABLE `Hero_in_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movie` (
  `Movie_id` int NOT NULL,
  `MName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Trailer_link` varchar(255) NOT NULL,
  PRIMARY KEY (`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,'Captain America: Civil War','https://www.youtube.com/watch?v=FkTybqcX-Yo'),(2,'Marvel\'s Captain America: The Winter Soldier','https://www.youtube.com/watch?v=7SlILk2WMTI'),(3,'https://www.youtube.com/watch?v=7SlILk2WMTI','https://www.youtube.com/watch?v=tmeOjFno6Do'),(4,'Avengers: Endgame','https://www.youtube.com/watch?v=TcMBFSGVi1c'),(5,'Avengers: Infinity War: Official Trailer','https://www.youtube.com/watch?v=dNwxvuR41gw'),(6,'Iron Man 2','https://www.youtube.com/watch?v=BoohRoVA9WQ');
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 20:17:34
