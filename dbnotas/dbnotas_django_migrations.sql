CREATE DATABASE  IF NOT EXISTS `dbnotas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbnotas`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: dbnotas
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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-16 02:06:31.947902'),(2,'auth','0001_initial','2021-10-16 02:06:36.061408'),(3,'admin','0001_initial','2021-10-16 02:07:00.963912'),(4,'admin','0002_logentry_remove_auto_add','2021-10-16 02:07:04.774964'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-16 02:07:04.969646'),(6,'atcore','0001_initial','2021-10-16 02:07:07.378682'),(7,'contenttypes','0002_remove_content_type_name','2021-10-16 02:07:20.394498'),(8,'auth','0002_alter_permission_name_max_length','2021-10-16 02:07:22.821587'),(9,'auth','0003_alter_user_email_max_length','2021-10-16 02:07:23.833551'),(10,'auth','0004_alter_user_username_opts','2021-10-16 02:07:24.016516'),(11,'auth','0005_alter_user_last_login_null','2021-10-16 02:07:26.218035'),(12,'auth','0006_require_contenttypes_0002','2021-10-16 02:07:26.402375'),(13,'auth','0007_alter_validators_add_error_messages','2021-10-16 02:07:26.634005'),(14,'auth','0008_alter_user_username_max_length','2021-10-16 02:07:28.967145'),(15,'auth','0009_alter_user_last_name_max_length','2021-10-16 02:07:34.893797'),(16,'auth','0010_alter_group_name_max_length','2021-10-16 02:07:35.876883'),(17,'auth','0011_update_proxy_permissions','2021-10-16 02:07:36.088019'),(18,'sessions','0001_initial','2021-10-16 02:07:37.905323'),(19,'atcore','0002_notas_notasanulado','2021-10-16 02:42:51.947901');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-25 20:11:33
