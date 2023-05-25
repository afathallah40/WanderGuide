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
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `days` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day_theme` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `activity` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trips_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_days_trips_idx` (`trips_id`),
  CONSTRAINT `fk_days_trips` FOREIGN KEY (`trips_id`) REFERENCES `trips` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
INSERT INTO `days` VALUES (46,'Spend the day like a local!','Shimokitazawa','Roam the streets and check out as many thrift shops as you can','2023-05-23 18:05:11','2023-05-23 18:05:11',49),(47,'Embrace being a tourist','Shibuya','Walk through the famous Shibuya Crossing! Make sure you don\'t get lost in the sea of people','2023-05-23 18:05:11','2023-05-23 18:05:11',49),(48,'Day trip for a little history','Kamakura','Take a day trip to Kamakura - see the big Buddha & see some temples!','2023-05-23 18:05:11','2023-05-24 17:04:06',49),(49,'Visit the surfer\'s town','Haleiwa','Drive up to Hawaii\'s north shore - it\'s known for garlic shrimp, shaved ice, and big waves!','2023-05-23 18:32:12','2023-05-23 21:36:07',50),(50,'Take a hike','Diamond Head','Take a hike on Hawaii\'s famous volcano crater! See beautiful views of where Waikiki meets the Pacific Ocean','2023-05-23 18:32:12','2023-05-23 20:40:48',50),(55,'Go cafe-hopping','Ikseondong','You can\'t just go to one cafe when there\'s so many cute cafes in Seoul!','2023-05-23 19:37:50','2023-05-23 19:37:50',52),(56,'Eat street food!','Myeongdong','Try as much of the street food as you can! ','2023-05-23 19:37:50','2023-05-23 19:37:50',52),(58,'Relax by the lakes','Uptown','Walk around the lakes and find a good place to have a picnic! It\'s the perfect place to get some air and people watch at the same time!','2023-05-23 20:49:10','2023-05-23 20:49:10',54),(59,'Shop till you drop','Mall of America','Visit America\'s biggest mall - shop at all the best stores and ride a rollercoaster at the indoor amusement park??','2023-05-23 20:49:10','2023-05-23 20:49:10',54),(60,'Take in the downtown views','Stone Arch Bridge ','Take a stroll down Stone Arch Bridge during sunset and take in the beautiful views of the downtown skyline!','2023-05-23 20:49:10','2023-05-23 20:49:10',54),(61,'Live like a geisha ','Gion','Visit Kyoto\'s geisha district and experience what it\'s like to live like a geisha','2023-05-23 20:54:10','2023-05-23 20:54:10',55),(62,'Immerse yourself in a bamboo forest','Arashiyama Bamboo Forest','If you\'ve seen Instagram pictures in Kyoto, you\'ve definitely seen the beautiful bamboo grove! It\'s truly an immersive experience','2023-05-23 20:54:10','2023-05-23 20:54:10',55),(80,'ldqknwd','qlkdn','qdkd','2023-05-24 18:05:15','2023-05-24 18:05:15',64),(81,'ldqknwd','qlkdn','qdkd','2023-05-24 18:06:03','2023-05-24 18:06:03',64),(82,'lqkd',';qk','wdlkwneldk','2023-05-24 18:06:03','2023-05-24 18:06:03',64),(83,'qwdlk','dqwkdn','qlwdkn','2023-05-24 18:06:22','2023-05-24 18:06:22',64),(84,'3eln2oi3e','23eon2o3ie3','32eno23','2023-05-24 18:09:58','2023-05-24 18:09:58',64),(85,'e2ejn23e','eo2neni23e','e2oei2nie','2023-05-24 18:09:58','2023-05-24 18:09:58',64),(86,'23ine','23eb2bhr','2o3ei2r','2023-05-24 18:10:34','2023-05-24 18:10:34',64),(87,'23ine','23eb2bhr','2o3ei2r','2023-05-24 18:10:40','2023-05-24 18:10:40',64),(88,'2eoub23e','23kejb23','2k3','2023-05-24 18:10:40','2023-05-24 18:10:40',64),(89,'23ine','23eb2bhr','2o3ei2r','2023-05-24 18:10:59','2023-05-24 18:10:59',64),(90,'23ine','23eb2bhr','2o3ei2r','2023-05-24 18:11:33','2023-05-24 18:11:33',64),(91,'e2kj3e2','23kejb23','2k3','2023-05-24 18:11:33','2023-05-24 18:11:33',64),(92,'23lekn','2l3kn','e2l3jn','2023-05-24 18:12:56','2023-05-24 18:12:56',65),(93,'23lekn','2l3kn','e2l3jn','2023-05-24 18:13:02','2023-05-24 18:13:02',65),(94,'e23e','ee23','e23','2023-05-24 18:13:02','2023-05-24 18:13:02',65),(95,'12we','2e','12e','2023-05-24 18:13:29','2023-05-24 18:13:29',65),(96,'wefwe','wewfwfwf','wefwf','2023-05-24 18:14:21','2023-05-24 18:14:21',65),(97,'e23e','23e23e23','2e23e','2023-05-24 18:14:41','2023-05-24 18:14:41',65),(98,'23e','e23e','2e3e','2023-05-24 18:15:17','2023-05-24 18:15:17',65),(99,'qwdqdq','eqdqd','qdqdwe','2023-05-24 18:23:12','2023-05-24 18:23:12',65),(100,'ldwjqb','qkjdw','qdljne','2023-05-24 18:25:41','2023-05-24 18:25:41',66),(101,'ldwjqb','qkjdw','qdljne','2023-05-24 18:25:59','2023-05-24 18:25:59',66),(102,'wqwpd','qdje','wkejdwef','2023-05-24 18:25:59','2023-05-24 18:25:59',66),(103,'3e13','e234r3','4r3r434r','2023-05-24 18:27:27','2023-05-24 18:27:27',66),(104,'wel','weflk','weldkn','2023-05-24 18:27:58','2023-05-24 18:27:58',67),(105,'sa','sas','sa','2023-05-24 18:30:44','2023-05-24 18:30:44',69),(106,'3lkrn','r32kn','rkn','2023-05-24 18:33:39','2023-05-24 18:33:39',70),(107,'lrk','32[pk','r2[ok','2023-05-24 18:34:21','2023-05-24 18:34:21',71),(108,'lrk','32[pk','r2[ok','2023-05-24 18:34:31','2023-05-24 18:34:31',71),(109,'4rlk','44rlk','4l4k','2023-05-24 18:34:31','2023-05-24 18:34:31',71),(110,'32','2er3','3r32','2023-05-24 18:43:37','2023-05-24 18:43:37',72),(111,'23r','rr23','23','2023-05-24 18:43:37','2023-05-24 18:43:37',72),(112,'23','32e','r23','2023-05-24 18:44:18','2023-05-24 18:44:18',72),(113,'23','32e','r23','2023-05-24 18:44:27','2023-05-24 18:44:27',72),(114,'dqw','dwq','qd','2023-05-24 18:45:10','2023-05-24 18:45:10',72),(115,'12','e1','e1','2023-05-24 19:00:47','2023-05-24 19:00:47',72),(116,'12','e1','e1','2023-05-24 19:00:47','2023-05-24 19:00:47',72),(117,'e323e','2e','e2','2023-05-24 19:02:16','2023-05-24 19:02:16',73),(118,'e323e','2e','e2','2023-05-24 19:02:16','2023-05-24 19:02:16',73),(119,'wef','fwef','wef','2023-05-24 19:03:18','2023-05-24 19:03:18',74),(120,'wef','fwef','wef','2023-05-24 19:03:18','2023-05-24 19:03:18',74),(121,'323e','3e23','e23','2023-05-24 19:08:30','2023-05-24 19:08:30',75),(122,'e2','33e','ee23','2023-05-24 19:08:30','2023-05-24 19:08:30',75),(123,'3e','e3','e3r2','2023-05-24 19:09:54','2023-05-24 19:09:54',75),(124,'e32','ewe','eew','2023-05-24 19:09:54','2023-05-24 19:09:54',75),(125,'3ewd','eed','eedw','2023-05-24 19:10:39','2023-05-24 19:10:39',75),(126,'edwe','edw','wedew','2023-05-24 19:10:39','2023-05-24 19:10:39',75),(127,'wdfw','wf','wf','2023-05-24 19:11:33','2023-05-24 19:11:33',75),(128,'wdfw','wf','wf','2023-05-24 19:11:44','2023-05-24 19:11:44',75),(129,'ff efw','fw ','f wf','2023-05-24 19:11:44','2023-05-24 19:11:44',75),(130,'dwef','dew','dfwe','2023-05-24 19:12:42','2023-05-24 19:12:42',75),(131,'dw','dwed','dwwf','2023-05-24 19:12:42','2023-05-24 19:12:42',75),(132,'ew','few','ew','2023-05-24 19:13:04','2023-05-24 19:13:04',75),(133,'ew','we','edw','2023-05-24 19:13:11','2023-05-24 19:13:11',75),(134,'ew','few','ew','2023-05-24 19:13:11','2023-05-24 19:13:11',75),(135,'ee','we','ew','2023-05-24 19:14:13','2023-05-24 19:14:13',75),(136,'ed','ee','edw','2023-05-24 19:14:13','2023-05-24 19:14:13',75),(137,'ewd','wwd','ewd','2023-05-24 19:15:22','2023-05-24 19:15:22',75),(138,'ef','ew','ef','2023-05-24 19:16:22','2023-05-24 19:16:22',76);
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-25 10:33:36
