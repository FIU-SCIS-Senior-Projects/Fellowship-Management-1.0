-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: my_fellowship
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fellowships`
--

DROP TABLE IF EXISTS `fellowships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fellowships` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fellowships`
--

LOCK TABLES `fellowships` WRITE;
/*!40000 ALTER TABLE `fellowships` DISABLE KEYS */;
INSERT INTO `fellowships` VALUES (5,'Donald Trump Fellowship $4000','Donald Trump Organization is providing this fellowship.','2017-02-03 20:25:01','2017-02-26 19:24:31',NULL),(9,'NYU Partnership with FIU Fellowship','This fellowship is funded by NYU and FIU.','2017-02-07 01:30:56','2017-02-12 07:28:42',1),(12,'FIU Fishbowl Fellowship','This Fishbowl Fellowship is funded by the Sea World.','2017-02-12 08:44:16','2017-02-12 08:44:16',1),(13,'Marathon Runners Fellowship','This fellowship is worth $2.','2017-02-12 08:46:01','2017-02-12 08:46:01',1),(15,'Construction Guild Fellowship','This fellowship is worth $4,500.','2017-02-12 08:49:39','2017-02-12 08:49:39',1),(16,'Star of David Fellowship','This fellowship is worth $7,000.','2017-02-12 08:50:23','2017-02-12 08:50:23',1),(18,'Automobile Manufacturer Fellowship','$200,000','2017-02-12 08:52:10','2017-02-12 08:52:10',1),(20,'Intel Fellowship','$1,000','2017-02-12 08:53:21','2017-02-12 08:53:21',1),(21,'Plant a Tree Foundation Fellowship','$3000','2017-02-13 02:24:41','2017-02-13 02:24:41',1),(22,'Plant Many Trees Fellowship','$3000','2017-02-13 04:13:36','2017-02-13 04:13:36',1),(32,'Fellowship 123','Fellowship 123','2017-03-10 19:15:40','2017-03-10 19:15:40',1),(33,'Invalid Fellowship','Invalid','2017-03-10 20:12:12','2017-03-10 20:12:12',1),(34,'Invalid2','Invalid2','2017-03-10 20:52:36','2017-03-10 20:52:36',1);
/*!40000 ALTER TABLE `fellowships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT '2017-02-07 01:30:56',
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'w','$2y$10$32mHS0.BH0UarPN7PRn1Fer173BwKUQDh4oF2JNlzZ88IixEO4qvG','admin','2017-02-07 01:30:56','2017-02-07 01:30:56'),(7,'f','$2y$10$sRys.1gNp8kEDR6Oa4SU9O0CiWS50dmtCXPPqYt5G8l5lQ/5ZA8B2','fellow','2017-02-07 01:30:56',NULL),(9,'admin','$2y$10$6l2AIivmljyrnme/yL.KEeTibVhJmAyijnJsXynAWjRTP1oC6VpJe','admin','2017-02-07 01:30:56',NULL),(11,'fer','$2y$10$ng2V9OtO1vOvgyr59V7HmOidHM1NGLx8w.WSDdWZGfjDziMrLcVHK','admin','2017-02-07 01:30:56',NULL),(12,'awd','$2y$10$.QWF4dD4Gl82t/26wX68h.05IHR0pDrS/LgB0/CGHf987dQy6Zgzq','fellow','2017-02-07 01:30:56',NULL),(14,'john','$2y$10$FYcTguFUighgTy89CZbBxe4ZaDuaDJij78GguHQRUjwQGLkNTzT9O','admin','2017-02-07 01:30:56',NULL),(15,'fellowme','$2y$10$VvgS2J0QnQLZnxM9R5NLVOurx//bTXiq6aUDR30WH5LJFf84a1l3e','fellow','2017-02-07 01:30:56',NULL),(18,'awd2','$2y$10$z7y8kRvpmmeLqtt6fSR0Degpm8KcpEjaGg0Pw82TdatpIE6rrHaEm','fellow','2017-02-07 01:30:56',NULL),(26,'walk','$2y$10$ZokEibm/iqVvH1Z6xTglAeWQCnT14gyqrdQBwPwtnO3hO5UUgI.LK','fellow','2017-02-07 01:30:56',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_fellowships`
--

DROP TABLE IF EXISTS `users_fellowships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_fellowships` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `fellowship_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `u_id` (`user_id`),
  KEY `f_id` (`fellowship_id`),
  CONSTRAINT `f_for` FOREIGN KEY (`fellowship_id`) REFERENCES `fellowships` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `u_for` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_fellowships`
--

LOCK TABLES `users_fellowships` WRITE;
/*!40000 ALTER TABLE `users_fellowships` DISABLE KEYS */;
INSERT INTO `users_fellowships` VALUES (1,7,5,NULL),(3,7,9,NULL),(4,7,16,NULL),(17,1,9,NULL),(18,1,12,NULL),(19,7,13,NULL),(22,18,5,NULL),(23,12,9,NULL),(24,12,15,NULL),(25,26,32,NULL),(26,26,33,NULL);
/*!40000 ALTER TABLE `users_fellowships` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-12 20:30:25
