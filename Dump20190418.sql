-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: sql12272834
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `equipos` (
  `IdEquipo` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdEquipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'America',1),(2,'Atalanta',3),(3,'Atlas',4),(4,'Celaya',7),(5,'Chivas',8),(6,'Correcaminos',9),(7,'Cruz Azul',10),(8,'Dorados',12),(9,'Florentina',13),(10,'Juarez',14),(11,'Lazio',15),(12,'Leon',16),(13,'Lobos Buap',17),(14,'Milan',18),(15,'Mineros',19),(16,'Monaco',20),(17,'Monterrey',21),(18,'Morelia',22),(19,'Nantes',23),(20,'Napoli',24),(21,'Necaxa',25),(22,'Oaxaca',26),(23,'Pachuca',27),(24,'Puebla',30),(25,'Pumas',31),(26,'Queretaro',32),(27,'Sampdoria',33),(28,'San Luis',34),(29,'Santos',35),(30,'Tampico M.',36),(31,'Tigres',37),(32,'Tijuana',38),(33,'Toluca',39),(34,'U.D.G.',40),(35,'Venados',41),(36,'Veracruz',42),(37,'Zacatepec',43),(38,'Prueba23',28),(39,'Prueba32',29),(40,'cbaidon45',6),(41,'avelebsa77',5),(42,'asbel953',2),(43,'Cualquiera',11);
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornada`
--

DROP TABLE IF EXISTS `jornada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jornada` (
  `IdJornada` int(11) NOT NULL,
  `P01` int(11) DEFAULT NULL,
  `P02` int(11) DEFAULT NULL,
  `P03` int(11) DEFAULT NULL,
  `P04` int(11) DEFAULT NULL,
  `P05` int(11) DEFAULT NULL,
  `P06` int(11) DEFAULT NULL,
  `P07` int(11) DEFAULT NULL,
  `P08` int(11) DEFAULT NULL,
  `P09` int(11) DEFAULT NULL,
  `P10` int(11) DEFAULT NULL,
  `P11` int(11) DEFAULT NULL,
  `P12` int(11) DEFAULT NULL,
  `P13` int(11) DEFAULT NULL,
  `P14` int(11) DEFAULT NULL,
  `P15` int(11) DEFAULT NULL,
  `P16` int(11) DEFAULT NULL,
  `P17` int(11) DEFAULT NULL,
  `P18` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdJornada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornada`
--

LOCK TABLES `jornada` WRITE;
/*!40000 ALTER TABLE `jornada` DISABLE KEYS */;
INSERT INTO `jornada` VALUES (12,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18),(15,1,42,2,3,41,40,4,5,6,7,43,8,9,10,21,25,23,34);
/*!40000 ALTER TABLE `jornada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiniela`
--

DROP TABLE IF EXISTS `quiniela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `quiniela` (
  `IdPartido` int(11) NOT NULL,
  `Pronostico` int(11) DEFAULT NULL,
  `Nombre` varchar(60) DEFAULT NULL,
  `IdQuiniela` int(11) DEFAULT NULL,
  `IdJornada` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPartido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiniela`
--

LOCK TABLES `quiniela` WRITE;
/*!40000 ALTER TABLE `quiniela` DISABLE KEYS */;
INSERT INTO `quiniela` VALUES (1,0,NULL,NULL,NULL),(2,0,NULL,NULL,NULL),(3,0,NULL,NULL,NULL),(4,0,NULL,NULL,NULL),(5,0,NULL,NULL,NULL),(6,0,NULL,NULL,NULL),(7,0,NULL,NULL,NULL),(8,0,NULL,NULL,NULL),(9,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `quiniela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultados`
--

DROP TABLE IF EXISTS `resultados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resultados` (
  `IdPartido` int(11) DEFAULT NULL,
  `Local` int(11) DEFAULT NULL,
  `Visitante` int(11) DEFAULT NULL,
  `Resultado` int(11) DEFAULT NULL,
  `IdQuiniela` int(11) DEFAULT NULL,
  `IdJornada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados`
--

LOCK TABLES `resultados` WRITE;
/*!40000 ALTER TABLE `resultados` DISABLE KEYS */;
INSERT INTO `resultados` VALUES (1,0,0,NULL,NULL,NULL),(2,0,0,NULL,NULL,NULL),(3,0,0,NULL,NULL,NULL),(4,0,0,NULL,NULL,NULL),(5,0,0,NULL,NULL,NULL),(6,0,0,NULL,NULL,NULL),(7,0,0,NULL,NULL,NULL),(8,0,0,NULL,NULL,NULL),(9,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `resultados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-18 13:18:11
