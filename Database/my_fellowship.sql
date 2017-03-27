-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: test_my_fellowship
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
-- Current Database: `test_my_fellowship`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test_my_fellowship` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test_my_fellowship`;

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fellowships`
--

LOCK TABLES `fellowships` WRITE;
/*!40000 ALTER TABLE `fellowships` DISABLE KEYS */;
INSERT INTO `fellowships` VALUES (5,'Donald Trump Fellowship','Donald Trump Organization is providing this fellowship.','2017-02-03 20:25:01','2017-02-12 07:30:43',NULL),(6,'Faculdade do Rio de Jaineiro Intercambio Fellowshi','This fellowship is funded by FRJ','2017-02-03 20:59:45','2017-02-12 07:29:51',NULL),(9,'NYU Partnership with FIU Fellowship','This fellowship is funded by NYU and FIU.','2017-02-07 01:30:56','2017-02-12 07:28:42',1),(10,'FIU Research Fellowship','This Fellowship is sponsored by the NSF.','2017-02-12 07:22:18','2017-02-12 07:22:18',1),(12,'FIU Fishbowl Fellowship','This Fishbowl Fellowship is funded by the Sea World.','2017-02-12 08:44:16','2017-02-12 08:44:16',1),(13,'Marathon Runners Fellowship','This fellowship is worth $2.','2017-02-12 08:46:01','2017-02-12 08:46:01',1),(14,'NASDAQ Fellowship','This fellowship is worth $400,000.','2017-02-12 08:47:46','2017-02-12 08:47:46',1),(15,'Construction Guild Fellowship','This fellowship is worth $4,500.','2017-02-12 08:49:39','2017-02-12 08:49:39',1),(16,'Star of David Fellowship','This fellowship is worth $7,000.','2017-02-12 08:50:23','2017-02-12 08:50:23',1),(17,'Clean Energy Fellowship','This fellowship is worth $400.','2017-02-12 08:51:20','2017-02-12 08:51:20',1),(18,'Automobile Manufacturer Fellowship','$200,000','2017-02-12 08:52:10','2017-02-12 08:52:10',1),(19,'Solar Energy Fellowship','This fellowship is worth $4,000.','2017-02-12 08:52:45','2017-02-12 08:52:45',1),(20,'Intel Fellowship','$1,000','2017-02-12 08:53:21','2017-02-12 08:53:21',1);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'w','$2y$10$OlvDMnesNpomBpoh6LNYI.EKl2pJBV4wq/.m/PMPmz6NzgINmA3SO','admin','2017-02-07 01:30:56','2017-02-07 01:30:56'),(7,'f','$2y$10$RQ61QzOVAKbZYnngIrhE7uNWR0zgj/9cDZcF.uvVkCzi8/pe4YSAa','fellow','2017-02-07 01:30:56',NULL),(9,'admin','$2y$10$6l2AIivmljyrnme/yL.KEeTibVhJmAyijnJsXynAWjRTP1oC6VpJe','admin','2017-02-07 01:30:56',NULL),(10,'qwerty','$2y$10$ngs9t8TPMZOed6jBQ3qtKeX2y/jH3fLi.m7ch5mTE8lKX6daHNn1W','fellow','2017-02-07 01:30:56',NULL),(11,'fer','$2y$10$ng2V9OtO1vOvgyr59V7HmOidHM1NGLx8w.WSDdWZGfjDziMrLcVHK','admin','2017-02-07 01:30:56',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_fellowships`
--

LOCK TABLES `users_fellowships` WRITE;
/*!40000 ALTER TABLE `users_fellowships` DISABLE KEYS */;
INSERT INTO `users_fellowships` VALUES (1,7,5,NULL),(2,7,6,NULL),(3,7,9,NULL),(4,7,16,NULL),(5,7,20,NULL),(6,7,17,NULL),(7,7,10,NULL),(8,7,10,NULL),(11,7,19,NULL),(12,7,14,NULL);
/*!40000 ALTER TABLE `users_fellowships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `my_fellowship`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `my_fellowship` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `my_fellowship`;

--
-- Table structure for table `deadlines`
--

DROP TABLE IF EXISTS `deadlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deadlines` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deadlines`
--

LOCK TABLES `deadlines` WRITE;
/*!40000 ALTER TABLE `deadlines` DISABLE KEYS */;
INSERT INTO `deadlines` VALUES (1,'Fall'),(2,'Spring'),(3,'Summer');
/*!40000 ALTER TABLE `deadlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degrees`
--

DROP TABLE IF EXISTS `degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degrees` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degrees`
--

LOCK TABLES `degrees` WRITE;
/*!40000 ALTER TABLE `degrees` DISABLE KEYS */;
INSERT INTO `degrees` VALUES (1,'Master'),(2,'PhD'),(3,'Post-Master\'s'),(4,'Postdoctoral'),(5,'Other');
/*!40000 ALTER TABLE `degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplines`
--

DROP TABLE IF EXISTS `disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplines` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
INSERT INTO `disciplines` VALUES (1,'Arts'),(2,'Engineering'),(3,'Humanities'),(4,'Life Sciences'),(5,'Mathematics'),(6,'Physical Sciences'),(7,'Social Sciences'),(8,'Other');
/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elegibilities`
--

DROP TABLE IF EXISTS `elegibilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elegibilities` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elegibilities`
--

LOCK TABLES `elegibilities` WRITE;
/*!40000 ALTER TABLE `elegibilities` DISABLE KEYS */;
INSERT INTO `elegibilities` VALUES (1,'U.S. Citizen'),(2,'U.S. Permanent Resident'),(3,'F-1 International Student Visa'),(4,'Financial needs'),(5,'Under-represented minority'),(6,'Women'),(7,'Other');
/*!40000 ALTER TABLE `elegibilities` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fellowships`
--

LOCK TABLES `fellowships` WRITE;
/*!40000 ALTER TABLE `fellowships` DISABLE KEYS */;
INSERT INTO `fellowships` VALUES (5,'Donald Trump Fellowship $5000','Donald Trump Organization is providing this fellowship.','2017-02-03 20:25:01','2017-03-19 21:01:03',NULL),(9,'NYU Partnership with FIU Fellowship','This fellowship is funded by NYU and FIU.','2017-02-07 01:30:56','2017-02-12 07:28:42',1),(12,'FIU Fishbowl Fellowship','This Fishbowl Fellowship is funded by the Sea World.','2017-02-12 08:44:16','2017-02-12 08:44:16',1),(13,'Marathon Runners Fellowship','This fellowship is worth $2.','2017-02-12 08:46:01','2017-02-12 08:46:01',1),(15,'Construction Guild Fellowship','This fellowship is worth $4,500.','2017-02-12 08:49:39','2017-02-12 08:49:39',1),(16,'Star of David Fellowship','This fellowship is worth $7,000.','2017-02-12 08:50:23','2017-02-12 08:50:23',1),(18,'Automobile Manufacturer Fellowship','$200,000','2017-02-12 08:52:10','2017-02-12 08:52:10',1),(20,'Intel Fellowship','$1,000','2017-02-12 08:53:21','2017-02-12 08:53:21',1),(21,'Plant a Tree Foundation Fellowship','$3000','2017-02-13 02:24:41','2017-02-13 02:24:41',1),(22,'Plant Many Trees Fellowship','$3000','2017-02-13 04:13:36','2017-02-13 04:13:36',1),(32,'Fellowship 123','Fellowship 123','2017-03-10 19:15:40','2017-03-10 19:15:40',1),(33,'Invalid Fellowship','Invalid','2017-03-10 20:12:12','2017-03-10 20:12:12',1),(34,'Invalid2','Invalid2','2017-03-10 20:52:36','2017-03-10 20:52:36',1),(35,'think of a new name','new name','2017-03-19 21:01:44','2017-03-19 21:01:44',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'w','$2y$10$32mHS0.BH0UarPN7PRn1Fer173BwKUQDh4oF2JNlzZ88IixEO4qvG','admin','2017-02-07 01:30:56','2017-02-07 01:30:56'),(7,'f','$2y$10$sRys.1gNp8kEDR6Oa4SU9O0CiWS50dmtCXPPqYt5G8l5lQ/5ZA8B2','fellow','2017-02-07 01:30:56',NULL),(9,'admin','$2y$10$6l2AIivmljyrnme/yL.KEeTibVhJmAyijnJsXynAWjRTP1oC6VpJe','admin','2017-02-07 01:30:56',NULL),(11,'fer','$2y$10$ng2V9OtO1vOvgyr59V7HmOidHM1NGLx8w.WSDdWZGfjDziMrLcVHK','admin','2017-02-07 01:30:56',NULL),(12,'awd','$2y$10$.QWF4dD4Gl82t/26wX68h.05IHR0pDrS/LgB0/CGHf987dQy6Zgzq','fellow','2017-02-07 01:30:56',NULL),(14,'john','$2y$10$FYcTguFUighgTy89CZbBxe4ZaDuaDJij78GguHQRUjwQGLkNTzT9O','admin','2017-02-07 01:30:56',NULL),(15,'fellowme','$2y$10$VvgS2J0QnQLZnxM9R5NLVOurx//bTXiq6aUDR30WH5LJFf84a1l3e','fellow','2017-02-07 01:30:56',NULL),(18,'awd2','$2y$10$z7y8kRvpmmeLqtt6fSR0Degpm8KcpEjaGg0Pw82TdatpIE6rrHaEm','fellow','2017-02-07 01:30:56',NULL),(26,'walk','$2y$10$ZokEibm/iqVvH1Z6xTglAeWQCnT14gyqrdQBwPwtnO3hO5UUgI.LK','fellow','2017-02-07 01:30:56',NULL),(27,'ww','$2y$10$0Nc3mVvk0SQEkh3X2t1aQ.N63lyDsTmgudYjGPXVFS5GX7OQOFtC.','fellow','2017-02-07 01:30:56',NULL),(28,'thinkofnewuser','$2y$10$WL4rZMYcniBGHX32z0LJJuAymwJZKVQwSu3KwMcNra/7uZB.DNkWG','admin','2017-02-07 01:30:56',NULL),(29,'thinkoffellow','$2y$10$eoD/NjvdZYcbNYxUEU6h0uClXonDx/8RdaZxbpm4yJ.N8DqxSIbxS','fellow','2017-02-07 01:30:56',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_fellowships`
--

LOCK TABLES `users_fellowships` WRITE;
/*!40000 ALTER TABLE `users_fellowships` DISABLE KEYS */;
INSERT INTO `users_fellowships` VALUES (1,7,5,NULL),(3,7,9,NULL),(4,7,16,NULL),(17,1,9,NULL),(18,1,12,NULL),(19,7,13,NULL),(22,18,5,NULL),(25,26,32,NULL),(26,26,33,NULL),(27,27,5,NULL),(28,27,9,NULL),(29,7,21,NULL),(36,12,5,NULL),(37,12,9,NULL),(38,1,5,NULL),(39,1,13,NULL);
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

-- Dump completed on 2017-03-26 13:50:31
