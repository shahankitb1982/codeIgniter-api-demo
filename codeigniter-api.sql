CREATE DATABASE  IF NOT EXISTS `codeigniter-api` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `codeigniter-api`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: codeigniter-api
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `keys`
--

DROP TABLE IF EXISTS `keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keys`
--

LOCK TABLES `keys` WRITE;
/*!40000 ALTER TABLE `keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c4599fd8-d437-4b81-9c05-59350bffbb3a\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314850,NULL,'0',403),(2,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c4599fd8-d437-4b81-9c05-59350bffbb3a\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314850,0.0401351,'1',200),(3,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:30:\"Basic MTpaZHNkQGRkczIzMjNAWkQ=\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"bfbf2bcc-6d58-4ce6-8af8-f06547610306\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314853,NULL,'0',403),(4,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:30:\"Basic MTpaZHNkQGRkczIzMjNAWkQ=\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"bfbf2bcc-6d58-4ce6-8af8-f06547610306\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314853,0.015938,'1',200),(5,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"5a8b9863-bd95-4c8c-828f-012827635199\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314858,NULL,'0',403),(6,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"5a8b9863-bd95-4c8c-828f-012827635199\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314858,0.012944,'1',200),(7,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"ec89b5aa-237d-43f9-872e-62af4a67e08a\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314953,NULL,'0',403),(8,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"ec89b5aa-237d-43f9-872e-62af4a67e08a\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314953,0.012831,'1',200),(9,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"56f3c4d9-f138-40e4-9e79-506e0b6d206d\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314956,NULL,'0',403),(10,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"56f3c4d9-f138-40e4-9e79-506e0b6d206d\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314956,0.013777,'1',200),(11,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"b15d397c-d203-439f-a738-203e8bdcc778\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314968,NULL,'0',403),(12,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"b15d397c-d203-439f-a738-203e8bdcc778\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616314968,0.010608,'1',200),(13,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"cc88a5c0-8bc5-4ebd-bd8f-f8a558d9f382\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616324526,NULL,'0',403),(14,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"cc88a5c0-8bc5-4ebd-bd8f-f8a558d9f382\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616324526,0.040139,'1',200),(15,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f50b33af-76d2-4cf9-85c7-b346b953ee9e\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616426244,NULL,'0',403),(16,'api/object/get_all_records','get','a:8:{s:13:\"Authorization\";s:34:\"Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f50b33af-76d2-4cf9-85c7-b346b953ee9e\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616426244,0.135933,'1',200),(17,'api/object','post','a:10:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a0488ef2-0463-4af5-9192-e56da96d265b\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:2:\"19\";s:10:\"Connection\";s:10:\"keep-alive\";s:3:\"key\";s:5:\"value\";}','','::1',1616426251,NULL,'0',403),(18,'api/object','post','a:10:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a0488ef2-0463-4af5-9192-e56da96d265b\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:2:\"19\";s:10:\"Connection\";s:10:\"keep-alive\";s:3:\"key\";s:5:\"value\";}','','::1',1616426251,0.0462739,'1',0),(19,'api/object/key','get','a:7:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"877119c4-76dc-4923-9646-0b883956aca6\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616426255,NULL,'0',403),(20,'api/object/key','get','a:7:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"877119c4-76dc-4923-9646-0b883956aca6\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616426255,0.0186138,'1',0),(21,'api/object/key','get','a:8:{s:9:\"timestamp\";s:10:\"1616263209\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"5b08195e-d5fe-4df9-8c07-5ea96a8ab72e\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616426258,NULL,'0',403),(22,'api/object/key','get','a:8:{s:9:\"timestamp\";s:10:\"1616263209\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.20.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"5b08195e-d5fe-4df9-8c07-5ea96a8ab72e\";s:4:\"Host\";s:14:\"localhost:8001\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";}','','::1',1616426258,0.038939,'1',0);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_UNIQUE` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,'2021-03-21 07:39:22','key','value');
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects_logger`
--

DROP TABLE IF EXISTS `objects_logger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objects_logger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `objects_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects_logger`
--

LOCK TABLES `objects_logger` WRITE;
/*!40000 ALTER TABLE `objects_logger` DISABLE KEYS */;
/*!40000 ALTER TABLE `objects_logger` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 23:22:40
