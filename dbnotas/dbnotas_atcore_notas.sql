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
-- Table structure for table `atcore_notas`
--

DROP TABLE IF EXISTS `atcore_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atcore_notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notas` double NOT NULL,
  `id_estudiantes_id` int(11) NOT NULL,
  `id_materias_id` int(11) NOT NULL,
  `notasanulado` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `atcore_notas_id_estudiantes_id_40e7f330_fk_atcore_estudiantes_id` (`id_estudiantes_id`),
  KEY `atcore_notas_id_materias_id_465b8d7b_fk_atcore_materias_id` (`id_materias_id`),
  CONSTRAINT `atcore_notas_id_estudiantes_id_40e7f330_fk_atcore_estudiantes_id` FOREIGN KEY (`id_estudiantes_id`) REFERENCES `atcore_estudiantes` (`id`),
  CONSTRAINT `atcore_notas_id_materias_id_465b8d7b_fk_atcore_materias_id` FOREIGN KEY (`id_materias_id`) REFERENCES `atcore_materias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atcore_notas`
--

LOCK TABLES `atcore_notas` WRITE;
/*!40000 ALTER TABLE `atcore_notas` DISABLE KEYS */;
INSERT INTO `atcore_notas` VALUES (1,10,1,1,'1'),(2,9,2,2,'1'),(3,9.5,3,3,'1'),(4,10,4,4,'1'),(5,10,2,2,'1'),(6,10,1,1,'1');
/*!40000 ALTER TABLE `atcore_notas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-25 20:11:34
