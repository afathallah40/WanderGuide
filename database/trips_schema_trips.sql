-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: trips_schema
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `length_of_stay` int DEFAULT NULL,
  `cover_photo` varchar(255) DEFAULT NULL,
  `itinerary_description` text,
  `interests` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `users_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_trips_users1_idx` (`users_id`),
  CONSTRAINT `fk_trips_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES (49,'Japan','Tokyo',7,'f641f86d88a34b339e58fefd9e50519d.jpeg','Explore the best of Tokyo! Food, culture, & shopping!',NULL,'2023-05-23 17:59:29','2023-05-24 17:03:20',3),(50,'Hawaii','Honolulu',7,'021f538069aa4b28b9f30b0aa65ef15b.jpeg','The best beaches to see and poke to eat in Honolulu!',NULL,'2023-05-23 18:26:04','2023-05-23 21:17:28',3),(52,'Korea','Seoul',3,'8ef1e60263ab43e18835dde0592be4bb.jpeg','Everything you need to do in Seoul!',NULL,'2023-05-23 19:35:54','2023-05-24 17:47:59',2),(54,'Minnesota','Minneapolis',3,'429c45dcb250448d897221920c2358f4.jpeg','Everything there is to do in Minneapolis!',NULL,'2023-05-23 20:46:07','2023-05-24 17:23:09',3),(55,'Japan','Kyoto',3,'33d1643c4e124946893021a7e21d238c.jpeg','Everywhere you need to go in Japan\'s historic city',NULL,'2023-05-23 20:51:23','2023-05-23 20:51:23',2),(64,'France','Paris',7,'52d53b4dd1fb4264a39a797c35e2294e.jpeg','qdlwefd wlkef',NULL,'2023-05-24 18:05:02','2023-05-24 18:05:02',2),(65,'France','Paris',5,'1ed37198f8dc49958e165a019e4a4737.jpeg','wledf',NULL,'2023-05-24 18:12:30','2023-05-24 18:12:30',2),(66,'France','Paris',7,'5e48752d7f07446b9cc7c4bf799a07c7.jpeg','qowindoqiw',NULL,'2023-05-24 18:25:28','2023-05-24 18:25:28',2),(67,'France','Paris',7,'3ad9a1571421413e913e8c3f29576f1f.jpeg','dqwkndqiowd',NULL,'2023-05-24 18:27:43','2023-05-24 18:27:43',2),(68,'France','Paris',7,'dc856e03a0b7496589c3fc7b8e15d4a0.jpeg','e1l2kne1l2je',NULL,'2023-05-24 18:28:25','2023-05-24 18:28:25',2),(69,'France','Paris',7,'92cf0f2dae024818bcef135c49393a02.jpeg','as',NULL,'2023-05-24 18:30:31','2023-05-24 18:30:31',2),(70,'France','Paris',7,'603bbcb142d64e62a1679e81236181d3.jpeg','dwlkndi',NULL,'2023-05-24 18:33:30','2023-05-24 18:33:30',2),(71,'France','Paris',7,'efc6a541872b4afc83a8384f4b1bcd35.jpeg','r2km32',NULL,'2023-05-24 18:34:11','2023-05-24 18:34:11',2),(72,'France','Paris',7,'cfc70ec739304a57b396e1661e063238.jpeg','e2er23r',NULL,'2023-05-24 18:43:11','2023-05-24 18:43:11',2),(73,'France','Paris',7,'be4b37403a28431f810d565bc87f0bd3.jpeg','23e32',NULL,'2023-05-24 19:02:08','2023-05-24 19:02:08',2),(74,'France','Paris',7,'9b9a2e43fd4048929b9e49b74d91358e.jpeg','wedwefe',NULL,'2023-05-24 19:03:08','2023-05-24 19:03:08',2),(75,'France','Paris',9,'52aabd3e0686499ca32ffbb783ac5bd2.jpeg','edmqwdp',NULL,'2023-05-24 19:05:47','2023-05-24 19:05:47',2),(76,'France','Paris',7,'e6a279194ba14eadaad9b6f04f8f2ef8.jpeg','de',NULL,'2023-05-24 19:16:11','2023-05-24 19:16:11',2),(77,'France','Paris',8,'03e4e6d3c5864208a7b81b9e07e4cf59.jpeg','eodnowno',NULL,'2023-05-24 19:18:00','2023-05-24 19:18:00',2);
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-25 10:33:37
