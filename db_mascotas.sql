CREATE DATABASE  IF NOT EXISTS `db_mascotas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_mascotas`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_mascotas
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
-- Table structure for table `cita_veterinaria`
--

DROP TABLE IF EXISTS `cita_veterinaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita_veterinaria` (
  `consec_cita` int NOT NULL AUTO_INCREMENT,
  `consec_mascota` int NOT NULL,
  `id_profesional` int NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `descrip_ingreso` varchar(250) NOT NULL,
  `tratamiento` varchar(250) NOT NULL,
  `fecha_salida` date NOT NULL,
  PRIMARY KEY (`consec_cita`),
  KEY `consec_mascota` (`consec_mascota`),
  KEY `id_profesional` (`id_profesional`),
  CONSTRAINT `cita_veterinaria_ibfk_1` FOREIGN KEY (`consec_mascota`) REFERENCES `mascota` (`consec_mascota`),
  CONSTRAINT `cita_veterinaria_ibfk_2` FOREIGN KEY (`id_profesional`) REFERENCES `profesional` (`id_profesional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita_veterinaria`
--

LOCK TABLES `cita_veterinaria` WRITE;
/*!40000 ALTER TABLE `cita_veterinaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `cita_veterinaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascota`
--

DROP TABLE IF EXISTS `mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascota` (
  `consec_mascota` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `nomb_mascota` varchar(150) NOT NULL,
  `apell_mascota` varchar(150) NOT NULL,
  `espec_mascota` varchar(50) NOT NULL,
  `raza_mascota` varchar(50) NOT NULL,
  `sexo_mascota` varchar(50) NOT NULL,
  `color_mascota` varchar(50) NOT NULL,
  `peso_mascota` double NOT NULL,
  PRIMARY KEY (`consec_mascota`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascota`
--

LOCK TABLES `mascota` WRITE;
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesional`
--

DROP TABLE IF EXISTS `profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesional` (
  `id_profesional` int NOT NULL,
  `nomb_profesional` varchar(150) NOT NULL,
  `apell_profesional` varchar(150) NOT NULL,
  `profe_profesional` varchar(150) NOT NULL,
  `telef_profesional` varchar(20) NOT NULL,
  `email_profesional` varchar(150) NOT NULL,
  PRIMARY KEY (`id_profesional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesional`
--

LOCK TABLES `profesional` WRITE;
/*!40000 ALTER TABLE `profesional` DISABLE KEYS */;
INSERT INTO `profesional` VALUES (52658124,'Adriana Mileth','García Bosiga','Medico Veterinario','3218526578','adriana.garcia@gmail.com'),(58624753,'Lina Valeria','Medina Alarcón','Medico Veterinario','3118528578','lina.medina@gmail.com'),(79579407,'Néstor Fernando','Medina Castro','Medico Veterinario','3142075286','nestor.medina@gmail.com'),(1010006578,'Cristian Alejandro','Medina Alarcón','Medico Veterinario','3205593654','cristian.medina@gmail.com'),(1019605051,'Daniel Fernando','Medina Gómez','Medico Veterinario','3202934299','daniel.medina@gmail.com');
/*!40000 ALTER TABLE `profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `nomb_usuario` varchar(150) NOT NULL,
  `apell_usuario` varchar(150) NOT NULL,
  `telef_usuario` varchar(20) NOT NULL,
  `email_usuario` varchar(150) NOT NULL,
  `usuario_log` int NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `usuario_log` (`usuario_log`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usuario_log`) REFERENCES `usuario_login` (`usuario_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_login`
--

DROP TABLE IF EXISTS `usuario_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_login` (
  `usuario_log` int NOT NULL,
  `password_log` varchar(60) NOT NULL,
  PRIMARY KEY (`usuario_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_login`
--

LOCK TABLES `usuario_login` WRITE;
/*!40000 ALTER TABLE `usuario_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-24 18:18:44
