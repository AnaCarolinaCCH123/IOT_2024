-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: escuela
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Juan Pérez','2001-05-15'),(2,'Ana Gómez','2002-03-20'),(3,'Luis Martínez','2001-07-10'),(4,'María López','2000-11-25'),(5,'Carlos Sánchez','2002-09-18'),(6,'Juan Pérez','2001-05-15'),(7,'Ana Gómez','2002-03-20'),(8,'Luis Martínez','2001-07-10'),(9,'María López','2000-11-25'),(10,'Carlos Sánchez','2002-09-18'),(11,'Juan Pérez','2001-05-15'),(12,'Ana Gómez','2002-03-20'),(13,'Luis Martínez','2001-07-10'),(14,'María López','2000-11-25'),(15,'Carlos Sánchez','2002-09-18'),(16,'Juan Pérez','2001-05-15'),(17,'Ana Gómez','2002-03-20'),(18,'Luis Martínez','2001-07-10'),(19,'María López','2000-11-25'),(20,'Carlos Sánchez','2002-09-18'),(21,'Juan Pérez','2001-05-15'),(22,'Ana Gómez','2002-03-20'),(23,'Luis Martínez','2001-07-10'),(24,'María López','2000-11-25'),(25,'Carlos Sánchez','2002-09-18'),(26,'Juan Pérez','2001-05-15'),(27,'Ana Gómez','2002-03-20'),(28,'Luis Martínez','2001-07-10'),(29,'María López','2000-11-25'),(30,'Carlos Sánchez','2002-09-18');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `creditos` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Matemáticas',3),(2,'Programación',4),(3,'Historia',3),(4,'Física',4),(5,'Química',4),(6,'Matemáticas',3),(7,'Programación',4),(8,'Historia',3),(9,'Física',4),(10,'Química',4),(11,'Matemáticas',3),(12,'Programación',4),(13,'Historia',3),(14,'Física',4),(15,'Química',4),(16,'Matemáticas',3),(17,'Programación',4),(18,'Historia',3),(19,'Física',4),(20,'Química',4),(21,'Matemáticas',3),(22,'Programación',4),(23,'Historia',3),(24,'Física',4),(25,'Química',4),(26,'Matemáticas',3),(27,'Programación',4),(28,'Historia',3),(29,'Física',4),(30,'Química',4);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matriculas` (
  `alumno_id` int NOT NULL,
  `curso_id` int NOT NULL,
  PRIMARY KEY (`alumno_id`,`curso_id`),
  KEY `curso_id` (`curso_id`),
  CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `matriculas_ibfk_2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculas`
--

LOCK TABLES `matriculas` WRITE;
/*!40000 ALTER TABLE `matriculas` DISABLE KEYS */;
INSERT INTO `matriculas` VALUES (1,1),(3,1),(1,2),(2,2),(5,2),(2,3),(4,3),(3,4),(5,5);
/*!40000 ALTER TABLE `matriculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `especialidad` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES (1,'Dr. Alberto Torres','Matemáticas'),(2,'Ing. Laura Rodríguez','Programación'),(3,'Prof. Carla López','Historia'),(4,'Dr. Fernando Gómez','Física'),(5,'Ing. Patricia Díaz','Química'),(6,'Dr. Alberto Torres','Matemáticas'),(7,'Ing. Laura Rodríguez','Programación'),(8,'Prof. Carla López','Historia'),(9,'Dr. Fernando Gómez','Física'),(10,'Ing. Patricia Díaz','Química'),(11,'Dr. Alberto Torres','Matemáticas'),(12,'Ing. Laura Rodríguez','Programación'),(13,'Prof. Carla López','Historia'),(14,'Dr. Fernando Gómez','Física'),(15,'Ing. Patricia Díaz','Química'),(16,'Dr. Alberto Torres','Matemáticas'),(17,'Ing. Laura Rodríguez','Programación'),(18,'Prof. Carla López','Historia'),(19,'Dr. Fernando Gómez','Física'),(20,'Ing. Patricia Díaz','Química'),(21,'Dr. Alberto Torres','Matemáticas'),(22,'Ing. Laura Rodríguez','Programación'),(23,'Prof. Carla López','Historia'),(24,'Dr. Fernando Gómez','Física'),(25,'Ing. Patricia Díaz','Química'),(26,'Dr. Alberto Torres','Matemáticas'),(27,'Ing. Laura Rodríguez','Programación'),(28,'Prof. Carla López','Historia'),(29,'Dr. Fernando Gómez','Física'),(30,'Ing. Patricia Díaz','Química');
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15 17:18:46
