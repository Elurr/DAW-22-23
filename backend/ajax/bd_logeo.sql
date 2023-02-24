CREATE DATABASE  IF NOT EXISTS `logeo_registro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `logeo_registro`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: logeo_registro
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `audito`
--

DROP TABLE IF EXISTS `audito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audito` (
  `id_audit` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `fecha_modif` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int DEFAULT NULL,
  `old_user` varchar(45) DEFAULT NULL,
  `new_user` varchar(45) DEFAULT NULL,
  `old_email` varchar(45) DEFAULT NULL,
  `new_email` varchar(45) DEFAULT NULL,
  `old_typeuser` varchar(5) DEFAULT NULL,
  `new_typeuser` varchar(5) DEFAULT NULL,
  `tipo_trigger` varchar(20) DEFAULT 'AFTER_UPDATE',
  PRIMARY KEY (`id_audit`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audito`
--

LOCK TABLES `audito` WRITE;
/*!40000 ALTER TABLE `audito` DISABLE KEYS */;
INSERT INTO `audito` VALUES (1,'2023-02-03 12:00:30',8,'',NULL,'',NULL,'user',NULL,'BEFORE_DELETE'),(2,'2023-02-03 12:10:10',9,'',NULL,'',NULL,'user',NULL,'BEFORE_DELETE'),(3,'2023-02-03 12:52:10',5,'juani','juan','juanito@gmail.com','juanito@gmail.com','user','user','AFTER_UPDATE'),(4,'2023-02-03 12:53:20',1,'elpepe','elpepex','elpepe@hotmail.com','elpepe@hotmail.com','admin','admin','AFTER_UPDATE'),(5,'2023-02-08 10:32:12',1,'elpepex','elpepex','elpepe@hotmail.com','elpepe@hotmail.com','admin','admin','AFTER_UPDATE'),(6,'2023-02-08 10:54:07',5,'juan','juan','juanito@gmail.com','juanito@gmail.com','user','user','AFTER_UPDATE'),(7,'2023-02-08 10:54:18',5,'juan','juani','juanito@gmail.com','juanito@gmail.com','user','user','AFTER_UPDATE'),(8,'2023-02-08 11:36:28',4,'mengano','mengano','men123@hotmail.com','men123@hotmail.com','user','user','AFTER_UPDATE'),(9,'2023-02-08 11:53:26',4,'mengano','meni','men123@hotmail.com','men123@hotmail.com','user','user','AFTER_UPDATE'),(10,'2023-02-08 12:00:21',4,'meni','megano','men123@hotmail.com','men123@hotmail.com','user','user','AFTER_UPDATE'),(11,'2023-02-09 08:42:52',1,'elpepex','elpepe','elpepe@hotmail.com','elpepe@hotmail.com','admin','admin','AFTER_UPDATE'),(12,'2023-02-09 08:50:06',10,'user','meni','profemeatze@gmail.com','profemeatze@gmail.com','user','user','AFTER_UPDATE'),(13,'2023-02-09 11:54:19',10,'meni','meni','profemeatze@gmail.com','profemeatze@gmail.com','user','user','AFTER_UPDATE'),(14,'2023-02-09 12:25:14',10,'meni','mengano','profemeatze@gmail.com','profemeatze@gmail.com','user','user','AFTER_UPDATE'),(15,'2023-02-09 12:26:22',4,'megano','megano','men123@hotmail.com','men123@hotmail.com','user','user','AFTER_UPDATE'),(16,'2023-02-09 12:27:49',4,'megano','megano','men123@hotmail.com','men123@hotmail.com','user','user','AFTER_UPDATE'),(17,'2023-02-09 12:28:05',4,'megano','meni','men123@hotmail.com','men123@hotmail.com','user','user','AFTER_UPDATE'),(18,'2023-02-09 12:40:58',4,'meni','menga','men123@hotmail.com','men123@hotmail.com','user','user','AFTER_UPDATE'),(19,'2023-02-10 09:28:43',4,'menga','megano','men123@hotmail.com','men123@hotmail.com','user','user','AFTER_UPDATE'),(20,'2023-02-13 09:13:42',5,'juani',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(21,'2023-02-13 09:22:27',19,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(22,'2023-02-13 09:23:32',6,'sultano','sultano','suli@outlook.com','suli@outlook.com','user','user','AFTER_UPDATE'),(23,'2023-02-13 09:23:32',10,'mengano','mengano','profemeatze@gmail.com','profemeatze@gmail.com','user','user','AFTER_UPDATE'),(24,'2023-02-13 09:36:10',20,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(25,'2023-02-13 09:37:11',21,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(26,'2023-02-13 10:17:37',22,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(27,'2023-02-13 10:18:30',25,'juan','juan','juanito@gmail.com','juanito@gmail.com','user','user','AFTER_UPDATE'),(28,'2023-02-13 10:18:59',6,'mengano',NULL,'profemeatze@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(29,'2023-02-13 10:18:59',7,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(30,'2023-02-13 10:19:34',27,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(31,'2023-02-13 10:28:28',29,'juan','juan','juanito@gmail.com','juanito@gmail.com','user','user','AFTER_UPDATE'),(32,'2023-02-13 10:28:33',30,'meni',NULL,'meni@hotmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(33,'2023-02-13 10:30:28',31,'meni',NULL,'meni@hotmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(34,'2023-02-13 10:31:10',6,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(35,'2023-02-13 10:31:10',32,'meni',NULL,'meni@hotmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(36,'2023-02-13 12:15:22',33,'profe','profesor','profemeatze@gmail.com','profemeatze@gmail.com','user','user','AFTER_UPDATE'),(37,'2023-02-13 12:15:28',33,'profesor','profe','profemeatze@gmail.com','profemeatze@gmail.com','user','user','AFTER_UPDATE'),(38,'2023-02-13 12:15:38',33,'profe',NULL,'profemeatze@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(39,'2023-02-13 12:27:50',36,'profe','profe','profemeatze@gmail.com','profemeatze@gmail.com','user','user','AFTER_UPDATE'),(40,'2023-02-13 12:39:07',6,'profe',NULL,'profemeatze@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(41,'2023-02-14 08:34:43',37,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(42,'2023-02-14 08:50:50',38,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(43,'2023-02-14 08:52:20',39,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(44,'2023-02-14 08:57:26',40,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(45,'2023-02-14 09:00:29',41,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(46,'2023-02-14 09:04:00',42,'juan',NULL,'juanito@gmail.com',NULL,'user',NULL,'BEFORE_DELETE'),(47,'2023-02-14 10:47:13',45,'111',NULL,'tere1@maria.com',NULL,'user',NULL,'BEFORE_DELETE'),(48,'2023-02-14 10:49:23',4,'megano','mengano','men123@hotmail.com','men123@hotmail.com','user','user','AFTER_UPDATE'),(49,'2023-02-14 11:33:56',43,'profemeatze@gmail.com','profemeatze@gmail.com','profemeatze@gmail.com','profemeatze@gmail.com','user','user','AFTER_UPDATE'),(50,'2023-02-14 11:33:56',44,'Tere','Tere','tere@maria.com','tere@maria.com','user','user','AFTER_UPDATE'),(51,'2023-02-14 12:37:20',6,'profemeatze@gmail.com',NULL,'profemeatze@gmail.com',NULL,'user',NULL,'BEFORE_DELETE');
/*!40000 ALTER TABLE `audito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `user` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `type_user` varchar(5) DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user` (`user`),
  UNIQUE KEY `email_2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'elpepe','elpepe@hotmail.com','pepe123','admin'),(2,'etesech','sech@facebook.com','15963','user'),(3,'fulano','fulix@yahoo.es','fuli123','admin'),(4,'mengano','men123@hotmail.com','1234','user'),(5,'sultano','suli@outlook.com','1234','user'),(7,'Tere','tere@maria.com','123','user');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_user_update` AFTER UPDATE ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO audito(id_user,old_user,new_user,old_email,new_email,old_typeuser,new_typeuser)
    VALUES(old.id,old.user,new.user,old.email,new.email,old.type_user,new.type_user);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_user_delete` BEFORE DELETE ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO audito(id_user,old_user,old_email,old_typeuser,tipo_trigger)
    VALUES(old.id,old.user,old.email,old.type_user,'BEFORE_DELETE');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'logeo_registro'
--

--
-- Dumping routines for database 'logeo_registro'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-15 11:27:26
