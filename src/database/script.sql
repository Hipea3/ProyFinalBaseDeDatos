-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: rollerdreams
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `rollerdreams`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `rollerdreams` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `rollerdreams`;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `idCategorias` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Hielo'),(2,'Inline'),(3,'Ruedas'),(4,'Otros');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mensaje` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `urlimagen` varchar(256) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `fk_idcategoria` (`idcategoria`),
  CONSTRAINT `fk_idcategoria` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idCategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'ESORDIO NARVAL JAZZ',400.00,'../imagenes/conjunto-inline-esordio-narval2022-jazz-10_1.jpg',0,2,1),(2,'ESORDIO SNOW-WHITE',490.00,'../imagenes/conjunto-inline-esordio-snow-white-27-2023.jpg',0,2,1),(3,'MOTIVO NARVAL',560.00,'../imagenes/conjunto-inline-motivo-narval2022-freeskate-14.jpg',0,2,1),(4,'MOTIVO NARVAL Negro',600.00,'../imagenes/conjunto-inline-motivo-negra-narval2022-freeskate-14_1.jpg',0,2,1),(5,'ESORDIO NARVAL FREESKATE',470.00,'../imagenes/Edea Esordio o Tempo.jpg',0,2,1),(6,'MOTIVO NARVAL Negro',550.00,'../imagenes/Edea Motivo.jpg',0,2,1),(7,'VENUS NARVAL',600.00,'../imagenes/Risport Venus.jpg',0,2,1),(11,'MOTIVO FLIGHT',400.00,'../imagenes/conjunto-motivo-negra-flight-2.jpg',0,1,1),(12,'MOTIVO GALAXY',490.00,'../imagenes/conjunto-motivo-negra-galaxy-3.jpg',0,1,1),(13,'OVERTURE CORONATION ACE',560.00,'../imagenes/conjunto-overture-negro-coronation-ace-6.jpg',0,1,1),(14,'OVERTURE GALAXY',600.00,'../imagenes/conjunto-overture-negro-galaxy-4.jpg',0,1,1),(15,'OVERTURE PROFESSIONAL',470.00,'../imagenes/conjunto-overture-professional-5.jpg',0,1,1),(16,'RISPORT VENUS FLIGHT',550.00,'../imagenes/conjunto-venus-flight-1.jpg',0,1,1),(17,'CALLE ESORDIO',400.00,'../imagenes/conjunto-calle-esordio-club-school-azul-2023.jpg',0,3,1),(18,'RITMO VARIANT MAGNUM',490.00,'../imagenes/conjunto-ritmo-variant-magnum-2023-19.jpg',0,3,1),(19,'RONDO VARIANT MAGNUM',560.00,'../imagenes/conjunto-rondo-variant-magnum-17-negra-2023_1_1.jpg',0,3,1),(20,'VENUS CLUB BOIANI',600.00,'../imagenes/conjunto-venus-club-boiani--9.jpg',0,3,1),(21,'ESORDIO CLUB BOIANI',470.00,'./imagenes/esordio-club-boiani-2023_1.jpg',0,3,1),(22,'ESORDIO CLUB PRO',550.00,'../imagenes/esordio-club-pro-2023_1.jpg',0,3,1),(23,'Bolso EDEA CUBE',60.00,'../imagenes/bolsa-edea-cube-rosa-y-negro.jpg',0,4,1),(24,'Bolso Portapatines',30.00,'../imagenes/bolso portapatines.jpg',0,4,1),(25,'Mochila GENERICA',40.00,'../imagenes/mochila portapatines.jpg',0,4,1),(26,'Portaruedas EDEA STELLA',57.00,'../imagenes/porta-ruedas-edea-stella.jpg',0,4,1),(27,'TROLLEY KRF',70.00,'../imagenes/trolley-krf-3colores.jpg',0,4,1),(28,'TROLLEY MCROLLER AZUL',80.00,'../imagenes/trolley-mcroller-azul_1_1.jpg',0,4,1),(29,'TROLLEY ROLL LINE',89.00,'../imagenes/trolley-roll-line-2023.jpg',0,4,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (21,'seba','sebva','$2a$08$SdYtRqQTFVZs2zYkPvmIKOiny3NyUmtiZiW2L2F6MvxrxgUApPnmC','comprador'),(22,'seba','sebas','$2a$08$QlBpqOmGPr.r5qKdeR/vdOqMUtx88fkE.59h9p5cBe66XBiI3d0.K','comprador'),(23,'asd','asd','$2a$08$Rlv6dfdZvNCvKtWljiD5gOa2qdkCaoPzkKJvXlA5wLdlZzovDDq46','comprador');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 15:45:38