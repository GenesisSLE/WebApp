-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: genesis_sle
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `Adscripta`
--

DROP TABLE IF EXISTS `Adscripta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Adscripta` (
  `cedAds` varchar(10) NOT NULL,
  PRIMARY KEY (`cedAds`),
  CONSTRAINT `Adscripta_ibfk_1` FOREIGN KEY (`cedAds`) REFERENCES `Persona` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Adscripta`
--

LOCK TABLES `Adscripta` WRITE;
/*!40000 ALTER TABLE `Adscripta` DISABLE KEYS */;
/*!40000 ALTER TABLE `Adscripta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Antecedentes`
--

DROP TABLE IF EXISTS `Antecedentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Antecedentes` (
  `idAnte` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `asignatura` varchar(40) DEFAULT NULL,
  `grado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idAnte`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Antecedentes`
--

LOCK TABLES `Antecedentes` WRITE;
/*!40000 ALTER TABLE `Antecedentes` DISABLE KEYS */;
INSERT INTO `Antecedentes` VALUES (1,'Reprobó con 6, tiene que dar el examen el 31/09. Su peor tema son los vectores.','Física','2'),(2,'Reprobó con 7, en el examen solo va a dar el tema de subconsultas','Base de Datos','3'),(3,'Reprobó con 5, tiene que dar examen de Limites, Multiplicacion de signos y graficas','Matematica','2'),(4,'Reprobó con 4, Examen completo','Sistemas Operativos','1'),(5,'Reprobó con 6, tiene que dar examen de Derivadas, Ordenes y Logaritmos','Matematica','3'),(6,'Reprobó con 3, examen igual al parcial final.','Programacion','1');
/*!40000 ALTER TABLE `Antecedentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Asignatura`
--

DROP TABLE IF EXISTS `Asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Asignatura` (
  `idMat` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idMat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asignatura`
--

LOCK TABLES `Asignatura` WRITE;
/*!40000 ALTER TABLE `Asignatura` DISABLE KEYS */;
INSERT INTO `Asignatura` VALUES (1,'Base de Datos'),(2,'Fisica'),(3,'Matematica'),(4,'Sistemas Opeerativos'),(5,'Programacion'),(6,'Economia');
/*!40000 ALTER TABLE `Asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Asiste`
--

DROP TABLE IF EXISTS `Asiste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Asiste` (
  `idAsis` int NOT NULL AUTO_INCREMENT,
  `cedEst` varchar(10) NOT NULL,
  `idClase` int NOT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `hora` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idAsis`,`cedEst`,`idClase`),
  KEY `cedEst` (`cedEst`),
  KEY `idClase` (`idClase`),
  CONSTRAINT `Asiste_ibfk_1` FOREIGN KEY (`cedEst`) REFERENCES `Persona` (`cedula`),
  CONSTRAINT `Asiste_ibfk_2` FOREIGN KEY (`idClase`) REFERENCES `Clase` (`idClase`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asiste`
--

LOCK TABLES `Asiste` WRITE;
/*!40000 ALTER TABLE `Asiste` DISABLE KEYS */;
INSERT INTO `Asiste` VALUES (1,'6',1,'2021-08-17 00:00:00','Justificada',0.5,'Septima'),(2,'6',2,'2022-10-19 00:00:00','Llegada Tarde',0.5,'Primera'),(3,'6',3,'2022-11-13 00:00:00','Falta',1,'Octava'),(4,'6',4,'2022-04-02 00:00:00','Falta',1,'Segunda'),(5,'6',4,'2022-04-02 00:00:00','Asistencia',0,''),(6,'6',5,'2022-04-02 00:00:00','Asistencia',0,''),(7,'15',4,'2022-04-02 00:00:00','Llegada Tarde',0.5,'Segunda'),(8,'15',5,'2022-04-02 00:00:00','Asistencia',0,'Tercera'),(9,'16',4,'2022-04-02 00:00:00','Falta',1,'Segunda'),(10,'16',5,'2022-04-02 00:00:00','Falta',1,'Tercera'),(11,'17',4,'2022-04-02 00:00:00','Assitencia',0,'Segunda'),(12,'17',5,'2022-04-02 00:00:00','Asistencia',0,'Tercera'),(13,'8',1,'2021-08-17 12:50:00','Asistencia',0,'Septima'),(14,'9',1,'2021-08-17 12:50:00','Asistencia',0,'Septima'),(15,'10',1,'2021-08-17 12:50:00','Falta',1,'Septima'),(16,'11',1,'2021-08-17 12:50:00','Llegada Tarde',0.5,'Septima');
/*!40000 ALTER TABLE `Asiste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clase`
--

DROP TABLE IF EXISTS `Clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Clase` (
  `idClase` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `nroClase` int DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idClase`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clase`
--

LOCK TABLES `Clase` WRITE;
/*!40000 ALTER TABLE `Clase` DISABLE KEYS */;
INSERT INTO `Clase` VALUES (1,'Teorico','Introducción a los Permisos',1,'2022-03-26 00:00:00'),(2,'Practico','Ejercicio Permisos',2,'2022-10-19 00:00:00'),(3,'Practico','Ejercicio MER',3,'2022-11-13 00:00:00'),(4,'Teorico','Fisica',1,'2022-04-02 00:00:00'),(5,'Teorico','Que son los vectores',2,'2022-04-06 00:00:00'),(6,'Teorico-Practico','Limites y formulas',1,'2022-03-25 00:00:00'),(7,'Practico','Ejercicios de limites y formulas',2,'2022-04-01 00:00:00'),(8,'Practico','Ejercicios con Vectores',3,'2022-04-15 00:00:00'),(9,'Teorico','Limites y formulas',1,'2022-03-25 00:00:00'),(10,'Practico','Ejercicios de Limites y formulas',2,'2022-03-29 00:00:00'),(11,'Teorico','Liberalismo en la economia',1,'2022-03-25 00:00:00'),(12,'Practico','Ejercicio leer texto e indicar porque es liberalista',2,'2022-04-02 00:00:00'),(13,'Teorico','Introduccion a SQL y crear tablas',1,'2022-03-27 00:00:00'),(14,'Teorico','Continuacion de SQL y atributos',2,'2022-03-30 00:00:00'),(15,'Teorico-Practico','Formulas para calcular velocidad',4,'2022-04-20 00:00:00');
/*!40000 ALTER TABLE `Clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CoordinaCon`
--

DROP TABLE IF EXISTS `CoordinaCon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `CoordinaCon` (
  `idCoor` int NOT NULL AUTO_INCREMENT,
  `cedProf1` varchar(10) NOT NULL,
  `cedProf2` varchar(10) NOT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `temas` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCoor`,`cedProf1`,`cedProf2`),
  KEY `cedProf1` (`cedProf1`),
  KEY `cedProf2` (`cedProf2`),
  CONSTRAINT `CoordinaCon_ibfk_1` FOREIGN KEY (`cedProf1`) REFERENCES `Profesor` (`cedProf`),
  CONSTRAINT `CoordinaCon_ibfk_2` FOREIGN KEY (`cedProf2`) REFERENCES `Profesor` (`cedProf`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CoordinaCon`
--

LOCK TABLES `CoordinaCon` WRITE;
/*!40000 ALTER TABLE `CoordinaCon` DISABLE KEYS */;
INSERT INTO `CoordinaCon` VALUES (1,'5','7','2022-04-30 00:00:00','Sociología en Sistemas Operativos (linux)');
/*!40000 ALTER TABLE `CoordinaCon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Coordinador`
--

DROP TABLE IF EXISTS `Coordinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Coordinador` (
  `cedCoor` varchar(10) NOT NULL,
  PRIMARY KEY (`cedCoor`),
  CONSTRAINT `Coordinador_ibfk_1` FOREIGN KEY (`cedCoor`) REFERENCES `Persona` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Coordinador`
--

LOCK TABLES `Coordinador` WRITE;
/*!40000 ALTER TABLE `Coordinador` DISABLE KEYS */;
INSERT INTO `Coordinador` VALUES ('4');
/*!40000 ALTER TABLE `Coordinador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cursa`
--

DROP TABLE IF EXISTS `Cursa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Cursa` (
  `idCursa` int NOT NULL AUTO_INCREMENT,
  `ano` timestamp NOT NULL,
  `idGrupo` int NOT NULL,
  `idMat` int NOT NULL,
  `planificacion` varchar(700) DEFAULT NULL,
  `rePlanificacion` varchar(700) DEFAULT NULL,
  `hr` varchar(20) DEFAULT NULL,
  `dia` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idCursa`,`ano`,`idGrupo`,`idMat`),
  KEY `idGrupo` (`idGrupo`),
  KEY `idMat` (`idMat`),
  CONSTRAINT `Cursa_ibfk_1` FOREIGN KEY (`idGrupo`) REFERENCES `Grupo` (`idGrupo`),
  CONSTRAINT `Cursa_ibfk_2` FOREIGN KEY (`idMat`) REFERENCES `Asignatura` (`idMat`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cursa`
--

LOCK TABLES `Cursa` WRITE;
/*!40000 ALTER TABLE `Cursa` DISABLE KEYS */;
INSERT INTO `Cursa` VALUES (1,'2021-01-01 00:00:00',1,1,'Normalización, DLL, Permisos, Roles','','Septima ','2022-03-26 00:00:00'),(2,'2022-01-01 00:00:00',2,2,'Fisica Fisica','','Segunda','2022-04-02 00:00:00'),(3,'2022-01-01 00:00:00',1,4,'Linux servers',NULL,'Primera','2022-04-09 00:00:00'),(4,'2022-01-01 00:00:00',3,6,'Liberalismo y Capitalismo','','Tercera','2022-03-25 00:00:00'),(5,'2022-01-01 00:00:00',3,3,'Limites, Graficas','Limites y Logaritmos','Novena','2022-03-25 00:00:00'),(6,'2022-01-01 00:00:00',1,3,'Limites, Ordenes y Derivadas','','Primera','2022-03-28 00:00:00'),(7,'2022-01-01 00:00:00',2,3,'Limites y Graficas','','Cuarta','2022-04-01 00:00:00'),(8,'2022-01-01 00:00:00',2,1,'Mer, Intro a SQL, Consultas','Mer, Intro a SQL, Consultas y Condiciones','Septima','2022-03-27 00:00:00'),(9,'2022-01-01 00:00:00',3,2,'Cosas de fisica, vectores','','Tercera','2022-04-01 00:00:00');
/*!40000 ALTER TABLE `Cursa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DiagnosticoGrupo`
--

DROP TABLE IF EXISTS `DiagnosticoGrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `DiagnosticoGrupo` (
  `idDiag` int NOT NULL AUTO_INCREMENT,
  `desClase` varchar(150) DEFAULT NULL,
  `intSocial` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idDiag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DiagnosticoGrupo`
--

LOCK TABLES `DiagnosticoGrupo` WRITE;
/*!40000 ALTER TABLE `DiagnosticoGrupo` DISABLE KEYS */;
INSERT INTO `DiagnosticoGrupo` VALUES (1,'Hacen bien las tareas, necesitan mejorar en normalizacion','Bien, parece que nadie se lleva mal, falta algo de inclusión.'),(2,'No trabajan bien, hay que llamarles mucho la atencion y demoran en hacer las actividades en clase','Se llevan bien pero se distraen demasiadp'),(3,'Mucha falta de atención al momento de explicar los nuevos temas, trabajan mejor haciendo actividades','Han habido problemas de conducta entre compañeros.'),(4,'Trabajan bien pero no hacen los deberes','Bien, no hay problemas'),(5,'Aplicados, no pierden mucho el tiempo y prestan atencion','Hay un par de personas que se llevan mal y hay que separarlas'),(6,'Les cuesta entender conceptos pero hacen las tareas a tiempo','Se llevan bien, un poco distraidos');
/*!40000 ALTER TABLE `DiagnosticoGrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dicta`
--

DROP TABLE IF EXISTS `Dicta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Dicta` (
  `idDicta` int NOT NULL AUTO_INCREMENT,
  `idClase` int NOT NULL,
  `cedProf` varchar(10) DEFAULT NULL,
  `claseDic` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idDicta`,`idClase`),
  KEY `idClase` (`idClase`),
  KEY `cedProf` (`cedProf`),
  CONSTRAINT `Dicta_ibfk_1` FOREIGN KEY (`idClase`) REFERENCES `Clase` (`idClase`),
  CONSTRAINT `Dicta_ibfk_2` FOREIGN KEY (`cedProf`) REFERENCES `Profesor` (`cedProf`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dicta`
--

LOCK TABLES `Dicta` WRITE;
/*!40000 ALTER TABLE `Dicta` DISABLE KEYS */;
INSERT INTO `Dicta` VALUES (1,1,'25',1),(2,2,'25',0),(3,3,'25',0),(4,4,'5',1),(5,5,'5',1),(6,6,'24',1),(7,7,'24',1),(8,8,'5',0),(9,9,'24',1),(10,10,'24',1),(11,11,'23',1),(12,12,'23',1),(13,13,'25',1),(14,14,'25',0),(15,15,'5',1);
/*!40000 ALTER TABLE `Dicta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Domicilio`
--

DROP TABLE IF EXISTS `Domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Domicilio` (
  `idDomicilio` int NOT NULL AUTO_INCREMENT,
  `calle` varchar(40) DEFAULT NULL,
  `esquina1` varchar(40) DEFAULT NULL,
  `esquina2` varchar(40) DEFAULT NULL,
  `nroPuerta` int DEFAULT NULL,
  `nroApto` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idDomicilio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Domicilio`
--

LOCK TABLES `Domicilio` WRITE;
/*!40000 ALTER TABLE `Domicilio` DISABLE KEYS */;
INSERT INTO `Domicilio` VALUES (1,'Atenas','Belloni','General Flores',3028,''),(2,'Pilcomayo','Amazonas','Rio de la Plata',4980,''),(3,'Avenida Italia','Minnesota','',3204,'12B'),(4,'Maldonado','Gboto','Magallanes',8825,'302');
/*!40000 ALTER TABLE `Domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Emite`
--

DROP TABLE IF EXISTS `Emite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Emite` (
  `idReunion` int NOT NULL,
  `idGrupo` int NOT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idReunion`,`idGrupo`),
  KEY `idGrupo` (`idGrupo`),
  CONSTRAINT `Emite_ibfk_1` FOREIGN KEY (`idReunion`) REFERENCES `Reunion` (`idReunion`),
  CONSTRAINT `Emite_ibfk_2` FOREIGN KEY (`idGrupo`) REFERENCES `Grupo` (`idGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Emite`
--

LOCK TABLES `Emite` WRITE;
/*!40000 ALTER TABLE `Emite` DISABLE KEYS */;
INSERT INTO `Emite` VALUES (3,1,'2022-05-24 00:00:00'),(4,2,'2022-05-20 00:00:00'),(7,3,'2022-05-25 00:00:00');
/*!40000 ALTER TABLE `Emite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Estudiante`
--

DROP TABLE IF EXISTS `Estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Estudiante` (
  `cedEst` varchar(10) NOT NULL,
  `edad` int DEFAULT NULL,
  PRIMARY KEY (`cedEst`),
  CONSTRAINT `Estudiante_ibfk_1` FOREIGN KEY (`cedEst`) REFERENCES `Persona` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estudiante`
--

LOCK TABLES `Estudiante` WRITE;
/*!40000 ALTER TABLE `Estudiante` DISABLE KEYS */;
INSERT INTO `Estudiante` VALUES ('10',18),('11',20),('13',20),('14',19),('15',18),('16',18),('17',19),('18',18),('19',20),('20',20),('21',22),('22',21),('6',17),('8',17),('9',18);
/*!40000 ALTER TABLE `Estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Grupo`
--

DROP TABLE IF EXISTS `Grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Grupo` (
  `idGrupo` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) DEFAULT NULL,
  `grado` varchar(20) DEFAULT NULL,
  `orientacion` varchar(20) DEFAULT NULL,
  `ano` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idGrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grupo`
--

LOCK TABLES `Grupo` WRITE;
/*!40000 ALTER TABLE `Grupo` DISABLE KEYS */;
INSERT INTO `Grupo` VALUES (1,'EMT','3','Informatica','2022-01-01 00:00:00'),(2,'EMT','2','Informatica','2022-01-01 00:00:00'),(3,'EMT','2','Deporte','2022-01-01 00:00:00');
/*!40000 ALTER TABLE `Grupo` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `genesis_sle` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`genesis2`@`%`*/ /*!50003 TRIGGER `Reuniones` AFTER INSERT ON `Grupo` FOR EACH ROW begin
insert into Reunion (numReun) values (1);
insert into Emite (idReunion, idGrupo) values (new.idGrupo, (select MAX(idReunion) from Reunion));
insert into Reunion (numReun) values (2);
insert into Emite (idReunion, idGrupo) values (new.idGrupo, (select MAX(idReunion) from Reunion)); 
insert into Reunion (numReun) values (3);
insert into Emite (idReunion, idGrupo) values (new.idGrupo, (select MAX(idReunion) from Reunion)); 
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `genesis_sle` CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci ;

--
-- Table structure for table `HaceInforme`
--

DROP TABLE IF EXISTS `HaceInforme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `HaceInforme` (
  `idInforme` int NOT NULL AUTO_INCREMENT,
  `cedProf` varchar(10) NOT NULL,
  `idReunion` int NOT NULL,
  `grdCumpObj` varchar(200) DEFAULT NULL,
  `estGenGrp` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idInforme`,`cedProf`,`idReunion`),
  KEY `cedProf` (`cedProf`),
  KEY `idReunion` (`idReunion`),
  CONSTRAINT `HaceInforme_ibfk_1` FOREIGN KEY (`cedProf`) REFERENCES `Profesor` (`cedProf`),
  CONSTRAINT `HaceInforme_ibfk_2` FOREIGN KEY (`idReunion`) REFERENCES `Reunion` (`idReunion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HaceInforme`
--

LOCK TABLES `HaceInforme` WRITE;
/*!40000 ALTER TABLE `HaceInforme` DISABLE KEYS */;
INSERT INTO `HaceInforme` VALUES (1,'5',1,'Nefasto, les va a todos mal y no me prestan atención :c','Malo, deberían ponerle mas ganas a la clase'),(2,'7',1,'Cumplieron todos los objetivos','Están bien'),(3,'5',3,'Falto un tema','Podría ser un poco mejor'),(4,'24',3,'Estamos por terminar el ultimo tema de la primera etapa','Trabajan bien'),(5,'23',4,'Faltaron dar dos temas','Se distraen mucho'),(6,'25',7,'No faltó ningun tema','Son atentos y hacen los deberes. Trabajan bien');
/*!40000 ALTER TABLE `HaceInforme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inspectora`
--

DROP TABLE IF EXISTS `Inspectora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Inspectora` (
  `cedIns` varchar(10) NOT NULL,
  PRIMARY KEY (`cedIns`),
  CONSTRAINT `Inspectora_ibfk_1` FOREIGN KEY (`cedIns`) REFERENCES `Persona` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inspectora`
--

LOCK TABLES `Inspectora` WRITE;
/*!40000 ALTER TABLE `Inspectora` DISABLE KEYS */;
INSERT INTO `Inspectora` VALUES ('3');
/*!40000 ALTER TABLE `Inspectora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Persona`
--

DROP TABLE IF EXISTS `Persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Persona` (
  `cedula` varchar(10) NOT NULL,
  `cel` varchar(15) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `pri_nom` varchar(40) DEFAULT NULL,
  `seg_nom` varchar(40) DEFAULT NULL,
  `pri_ape` varchar(40) DEFAULT NULL,
  `seg_ape` varchar(40) DEFAULT NULL,
  `fecha_nac` timestamp NULL DEFAULT NULL,
  `contrasena` varchar(40) DEFAULT NULL,
  `sigueTDB` tinyint(1) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persona`
--

LOCK TABLES `Persona` WRITE;
/*!40000 ALTER TABLE `Persona` DISABLE KEYS */;
INSERT INTO `Persona` VALUES ('',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1','1111','Ads@gmail.com','Mariana','Maria','Guillén','Del Toro','1987-09-23 00:00:00','AdscriptPRO',1,''),('10','1010','NicoGames@gmail.com','Nicolas','Mateo','Gallardi','Llacer','2004-08-09 00:00:00','niconiconi',1,''),('11','1111','tommy@gmail.com','Tomas','','Piña','Colada','2002-11-03 00:00:00','piñaColada',1,''),('13','1133','germito@gmail.com','German','Allan','Delgado','Di Sabella','2002-01-15 00:00:00','1947',1,''),('14','1414','maticas@gmail.com','Matias','','Castro','Lasa','2003-04-21 00:00:00','soyElMejor',1,''),('15','1515','pedrobenja@gmail.com','Pedro','Benjamín','Chialanza','Arrieta','2004-05-27 00:00:00','uwu40',1,''),('16','1616','xxnachoxx@gmail.com','Ignacio','Matías','Ghan','Gómez','2004-12-30 00:00:00','5392',1,''),('17','1717','mederos@gmail.com','Mauro','Enrique','Mederos','Tolosa','2003-07-07 00:00:00','451426',1,''),('18','1818','facmen@gmail.com','Facundo','','Méndez','Bentos','2004-09-25 00:00:00','14545',1,''),('19','1919','juancito@gmail.com','Juan','Ignacio','Amaral','Río','2002-10-26 00:00:00','4631',1,''),('2','2222','Sec@gmail.com','Valeria',NULL,'Pérez','Rodriguez',NULL,'ValPer',1,NULL),('20','2020','mirinda@gmail.com','Santiago','','Miranda','Garcilazo','2002-03-30 00:00:00','7531',1,''),('21','2121','pablito@gmail.com','Pablo','','Suarez','Gimenez','2000-07-29 00:00:00','pepino07',0,''),('22','2222','axelRoxas@gmail.com','Axel','Nicolás','Mendez','Rosas','2001-10-09 00:00:00','16325',0,''),('23','2323','economy@gmail.com','Carlos','Segundo','Ramirez','Pereira','1998-05-23 00:00:00','46772',1,''),('24','2424','hugito@gmail.com','Hugo','','De Los','Santos','1970-11-23 00:00:00','limites',1,''),('25','2525','gabrielcito@gmail.com','Gabriel','','Cano','Canas','1995-12-09 00:00:00','merYSQL',1,''),('3','3333','Ins@gmail.com','Eduardo','Pablo','Estrada','Cabrera','1992-12-12 00:00:00','inspectorGadget',1,''),('4','4444','Coor@gmail.com','Natalia','Beatriz','Torres','De Rago','1990-06-12 00:00:00','NatTorLaMejor',1,NULL),('5','5555','Prof@gmail.com','Sebastian','Eugenio','Torres','Nuñez','1977-02-18 00:00:00','1234',1,''),('6','6666','Est@gmail.com','Santiago','Emanuel','Soto','Salgueiros','2004-01-30 00:00:00','69420',1,''),('7',NULL,'Prof2@gmail.com','Ana','Paula','Coronel','Coronela',NULL,'socEsLoMejor',1,NULL),('8','880011','delfinatalamas@gmail.com','Delfina','','Talamás','Oberti','2004-12-28 00:00:00','6969',0,''),('9','2619','supahfox@gmail.com','Fabricio','','Buzó','Sansberro','2003-07-17 00:00:00','sanshehe',0,'');
/*!40000 ALTER TABLE `Persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pertenece`
--

DROP TABLE IF EXISTS `Pertenece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Pertenece` (
  `idMat` int NOT NULL,
  `cedEst` varchar(10) NOT NULL,
  `idGrupo` int NOT NULL,
  `idCursa` int NOT NULL,
  `anoCursa` timestamp NOT NULL,
  `nroLista` int DEFAULT NULL,
  `juicioMat` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idMat`,`cedEst`,`idGrupo`,`idCursa`,`anoCursa`),
  KEY `cedEst` (`cedEst`),
  KEY `idGrupo` (`idGrupo`),
  KEY `idCursa` (`idCursa`,`anoCursa`),
  CONSTRAINT `Pertenece_ibfk_1` FOREIGN KEY (`idMat`) REFERENCES `Asignatura` (`idMat`),
  CONSTRAINT `Pertenece_ibfk_2` FOREIGN KEY (`cedEst`) REFERENCES `Persona` (`cedula`),
  CONSTRAINT `Pertenece_ibfk_3` FOREIGN KEY (`idGrupo`) REFERENCES `Grupo` (`idGrupo`),
  CONSTRAINT `Pertenece_ibfk_4` FOREIGN KEY (`idCursa`, `anoCursa`) REFERENCES `Cursa` (`idCursa`, `ano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pertenece`
--

LOCK TABLES `Pertenece` WRITE;
/*!40000 ALTER TABLE `Pertenece` DISABLE KEYS */;
INSERT INTO `Pertenece` VALUES (1,'10',1,1,'2021-01-01 00:00:00',4,''),(1,'11',1,1,'2021-01-01 00:00:00',5,''),(1,'13',1,1,'2021-01-01 00:00:00',6,''),(1,'14',2,8,'2022-01-01 00:00:00',1,''),(1,'15',2,8,'2022-01-01 00:00:00',2,''),(1,'16',2,8,'2022-01-01 00:00:00',3,''),(1,'17',2,8,'2022-01-01 00:00:00',4,''),(1,'18',2,8,'2022-01-01 00:00:00',5,''),(1,'6',1,1,'2021-01-01 00:00:00',1,'le va bien'),(1,'8',1,1,'2021-01-01 00:00:00',2,'Le va bien'),(1,'9',1,1,'2021-01-01 00:00:00',3,'Le va mal'),(2,'14',2,2,'2022-01-01 00:00:00',2,''),(2,'15',2,2,'2022-01-01 00:00:00',3,''),(2,'16',2,2,'2022-01-01 00:00:00',4,''),(2,'17',2,2,'2022-01-01 00:00:00',5,''),(2,'18',2,2,'2022-01-01 00:00:00',7,''),(2,'19',3,9,'2022-01-01 00:00:00',1,''),(2,'20',3,9,'2022-01-01 00:00:00',2,''),(2,'21',3,9,'2022-01-01 00:00:00',3,''),(2,'22',3,9,'2022-01-01 00:00:00',4,''),(2,'6',1,3,'2022-01-01 00:00:00',1,'le va mal'),(2,'6',2,2,'2022-01-01 00:00:00',1,'le va mal'),(2,'9',2,2,'2022-01-01 00:00:00',6,''),(3,'10',1,6,'2022-01-01 00:00:00',4,''),(3,'11',1,6,'2022-01-01 00:00:00',5,''),(3,'13',1,6,'2022-01-01 00:00:00',6,''),(3,'14',2,7,'2022-01-01 00:00:00',1,''),(3,'15',2,7,'2022-01-01 00:00:00',2,''),(3,'16',2,7,'2022-01-01 00:00:00',3,''),(3,'17',2,7,'2022-01-01 00:00:00',4,''),(3,'18',2,7,'2022-01-01 00:00:00',5,''),(3,'19',3,5,'2022-01-01 00:00:00',1,''),(3,'20',3,5,'2022-01-01 00:00:00',2,''),(3,'21',3,5,'2022-01-01 00:00:00',3,''),(3,'22',3,5,'2022-01-01 00:00:00',4,''),(3,'6',1,6,'2022-01-01 00:00:00',1,''),(3,'8',1,6,'2022-01-01 00:00:00',2,''),(3,'9',1,6,'2022-01-01 00:00:00',3,''),(6,'19',3,4,'2022-01-01 00:00:00',1,''),(6,'20',3,4,'2022-01-01 00:00:00',2,''),(6,'21',3,4,'2022-01-01 00:00:00',3,''),(6,'22',3,4,'2022-01-01 00:00:00',4,'');
/*!40000 ALTER TABLE `Pertenece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Profesor`
--

DROP TABLE IF EXISTS `Profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Profesor` (
  `cedProf` varchar(10) NOT NULL,
  PRIMARY KEY (`cedProf`),
  CONSTRAINT `Profesor_ibfk_1` FOREIGN KEY (`cedProf`) REFERENCES `Persona` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profesor`
--

LOCK TABLES `Profesor` WRITE;
/*!40000 ALTER TABLE `Profesor` DISABLE KEYS */;
INSERT INTO `Profesor` VALUES ('23'),('24'),('25'),('5'),('7');
/*!40000 ALTER TABLE `Profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reunion`
--

DROP TABLE IF EXISTS `Reunion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Reunion` (
  `idReunion` int NOT NULL AUTO_INCREMENT,
  `numReun` varchar(20) DEFAULT NULL,
  `juiGrupo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idReunion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reunion`
--

LOCK TABLES `Reunion` WRITE;
/*!40000 ALTER TABLE `Reunion` DISABLE KEYS */;
INSERT INTO `Reunion` VALUES (1,'3','Todos se portan mal, hay que separar al grupito del fondo'),(2,'2',''),(3,'1','Hay grupos que hay que separar porque no prestan atencion, comportamiento general bien'),(4,'1','Comportamiento bien, necesitan un poco de ayuda con las tareas'),(5,'2',''),(6,'3',''),(7,'1','Se distraen mucho e interrumpen la clase, No trabajan bien individualmente'),(8,'2','');
/*!40000 ALTER TABLE `Reunion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Secretaria`
--

DROP TABLE IF EXISTS `Secretaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Secretaria` (
  `cedSec` varchar(10) NOT NULL,
  PRIMARY KEY (`cedSec`),
  CONSTRAINT `Secretaria_ibfk_1` FOREIGN KEY (`cedSec`) REFERENCES `Persona` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Secretaria`
--

LOCK TABLES `Secretaria` WRITE;
/*!40000 ALTER TABLE `Secretaria` DISABLE KEYS */;
INSERT INTO `Secretaria` VALUES ('2');
/*!40000 ALTER TABLE `Secretaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tiene`
--

DROP TABLE IF EXISTS `Tiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Tiene` (
  `idDiag` int NOT NULL,
  `idCursa` int DEFAULT NULL,
  `anoCursa` timestamp NULL DEFAULT NULL,
  `idGrupo` int DEFAULT NULL,
  `idMat` int DEFAULT NULL,
  PRIMARY KEY (`idDiag`),
  KEY `idCursa` (`idCursa`,`anoCursa`),
  KEY `idGrupo` (`idGrupo`),
  KEY `idMat` (`idMat`),
  CONSTRAINT `Tiene_ibfk_1` FOREIGN KEY (`idDiag`) REFERENCES `DiagnosticoGrupo` (`idDiag`),
  CONSTRAINT `Tiene_ibfk_2` FOREIGN KEY (`idCursa`, `anoCursa`) REFERENCES `Cursa` (`idCursa`, `ano`),
  CONSTRAINT `Tiene_ibfk_3` FOREIGN KEY (`idGrupo`) REFERENCES `Grupo` (`idGrupo`),
  CONSTRAINT `Tiene_ibfk_4` FOREIGN KEY (`idMat`) REFERENCES `Asignatura` (`idMat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tiene`
--

LOCK TABLES `Tiene` WRITE;
/*!40000 ALTER TABLE `Tiene` DISABLE KEYS */;
INSERT INTO `Tiene` VALUES (1,1,'2021-01-01 00:00:00',1,1),(2,6,'2022-01-01 00:00:00',1,3),(3,2,'2022-01-01 00:00:00',2,2),(4,7,'2022-01-01 00:00:00',2,3),(5,4,'2022-01-01 00:00:00',3,6),(6,5,'2022-01-01 00:00:00',3,3);
/*!40000 ALTER TABLE `Tiene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tiene2`
--

DROP TABLE IF EXISTS `Tiene2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Tiene2` (
  `idClase` int NOT NULL,
  `idGrupo` int NOT NULL,
  `idMat` int NOT NULL,
  `idCursa` int NOT NULL,
  `anoCursa` timestamp NOT NULL,
  `modulo` varchar(20) DEFAULT NULL,
  `hrsExtra` double DEFAULT NULL,
  PRIMARY KEY (`idClase`,`idGrupo`,`idMat`,`idCursa`,`anoCursa`),
  KEY `idGrupo` (`idGrupo`),
  KEY `idMat` (`idMat`),
  KEY `idCursa` (`idCursa`,`anoCursa`),
  CONSTRAINT `Tiene2_ibfk_1` FOREIGN KEY (`idClase`) REFERENCES `Clase` (`idClase`),
  CONSTRAINT `Tiene2_ibfk_2` FOREIGN KEY (`idGrupo`) REFERENCES `Grupo` (`idGrupo`),
  CONSTRAINT `Tiene2_ibfk_3` FOREIGN KEY (`idMat`) REFERENCES `Asignatura` (`idMat`),
  CONSTRAINT `Tiene2_ibfk_4` FOREIGN KEY (`idCursa`, `anoCursa`) REFERENCES `Cursa` (`idCursa`, `ano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tiene2`
--

LOCK TABLES `Tiene2` WRITE;
/*!40000 ALTER TABLE `Tiene2` DISABLE KEYS */;
INSERT INTO `Tiene2` VALUES (1,1,1,1,'2021-01-01 00:00:00','septima',0),(2,1,2,2,'2022-01-01 00:00:00','septima',0),(3,1,3,4,'2022-01-01 00:00:00','septima',0),(4,2,2,2,'2022-01-01 00:00:00','Segunda',0),(5,2,2,2,'2022-01-01 00:00:00','Segunda',0),(6,3,3,5,'2022-01-01 00:00:00','Novena',0),(7,3,3,5,'2022-01-01 00:00:00','Novena',0),(8,2,2,2,'2022-01-01 00:00:00','Segunda',0),(9,2,3,7,'2022-01-01 00:00:00','Cuarta',0),(10,2,3,7,'2022-01-01 00:00:00','Quinta',0),(11,3,6,4,'2022-01-01 00:00:00','Tercera',0),(12,3,6,4,'2022-01-01 00:00:00','Tercera',0),(13,2,1,8,'2022-01-01 00:00:00','Septima',0),(14,2,1,8,'2022-01-01 00:00:00','Septima',0),(15,2,2,2,'2022-01-01 00:00:00','Segunda',0);
/*!40000 ALTER TABLE `Tiene2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TieneA`
--

DROP TABLE IF EXISTS `TieneA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `TieneA` (
  `cedEst` varchar(10) NOT NULL,
  `idAnte` int NOT NULL,
  PRIMARY KEY (`cedEst`,`idAnte`),
  KEY `idAnte` (`idAnte`),
  CONSTRAINT `TieneA_ibfk_1` FOREIGN KEY (`cedEst`) REFERENCES `Persona` (`cedula`),
  CONSTRAINT `TieneA_ibfk_2` FOREIGN KEY (`idAnte`) REFERENCES `Antecedentes` (`idAnte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TieneA`
--

LOCK TABLES `TieneA` WRITE;
/*!40000 ALTER TABLE `TieneA` DISABLE KEYS */;
INSERT INTO `TieneA` VALUES ('6',1),('10',2),('13',3),('15',4),('22',5),('19',6);
/*!40000 ALTER TABLE `TieneA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TieneD`
--

DROP TABLE IF EXISTS `TieneD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `TieneD` (
  `cedEst` varchar(10) NOT NULL,
  `idDom` int NOT NULL,
  PRIMARY KEY (`cedEst`,`idDom`),
  KEY `idDom` (`idDom`),
  CONSTRAINT `TieneD_ibfk_1` FOREIGN KEY (`cedEst`) REFERENCES `Persona` (`cedula`),
  CONSTRAINT `TieneD_ibfk_2` FOREIGN KEY (`idDom`) REFERENCES `Domicilio` (`idDomicilio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TieneD`
--

LOCK TABLES `TieneD` WRITE;
/*!40000 ALTER TABLE `TieneD` DISABLE KEYS */;
INSERT INTO `TieneD` VALUES ('6',1),('8',2),('11',3),('17',4);
/*!40000 ALTER TABLE `TieneD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trabaja`
--

DROP TABLE IF EXISTS `Trabaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Trabaja` (
  `idTrabaja` int NOT NULL AUTO_INCREMENT,
  `cedEst` varchar(10) NOT NULL,
  `idCursa` int NOT NULL,
  `anoCursa` timestamp NOT NULL,
  `idGrupo` int NOT NULL,
  `idMat` int NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `nota` double DEFAULT NULL,
  `fechaTra` timestamp NULL DEFAULT NULL,
  `fechaEntrega` timestamp NULL DEFAULT NULL,
  `fechaDev` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idTrabaja`,`cedEst`,`idCursa`,`anoCursa`,`idGrupo`,`idMat`),
  KEY `cedEst` (`cedEst`),
  KEY `idCursa` (`idCursa`,`anoCursa`,`idGrupo`,`idMat`),
  CONSTRAINT `Trabaja_ibfk_1` FOREIGN KEY (`cedEst`) REFERENCES `Persona` (`cedula`),
  CONSTRAINT `Trabaja_ibfk_2` FOREIGN KEY (`idCursa`, `anoCursa`, `idGrupo`, `idMat`) REFERENCES `Cursa` (`idCursa`, `ano`, `idGrupo`, `idMat`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trabaja`
--

LOCK TABLES `Trabaja` WRITE;
/*!40000 ALTER TABLE `Trabaja` DISABLE KEYS */;
INSERT INTO `Trabaja` VALUES (1,'6',1,'2021-01-01 00:00:00',1,1,'Oral',11,'2021-04-02 00:00:00',NULL,NULL),(3,'6',3,'2022-01-01 00:00:00',1,4,'TI',8,NULL,NULL,NULL),(4,'6',2,'2022-01-01 00:00:00',2,2,'Escrito',6,NULL,NULL,NULL),(5,'22',5,'2022-01-01 00:00:00',3,3,'Oral',12,NULL,NULL,NULL),(6,'22',5,'2022-01-01 00:00:00',3,3,'Escrito',9,NULL,NULL,NULL),(7,'14',2,'2022-01-01 00:00:00',2,2,'Escrito',6,NULL,NULL,NULL),(8,'14',2,'2022-01-01 00:00:00',2,2,'Oral',8,NULL,NULL,NULL),(9,'16',2,'2022-01-01 00:00:00',2,2,'Escrito',10,NULL,NULL,NULL),(10,'15',2,'2022-01-01 00:00:00',2,2,'Escrito',8,NULL,NULL,NULL),(11,'16',2,'2022-01-01 00:00:00',2,2,'Oral',9,NULL,NULL,NULL),(12,'9',1,'2021-01-01 00:00:00',1,1,'Oral',8,'2021-04-02 00:00:00',NULL,NULL),(13,'10',1,'2021-01-01 00:00:00',1,1,'Oral',7,'2021-04-02 00:00:00',NULL,NULL),(14,'11',1,'2021-01-01 00:00:00',1,1,'Oral',12,'2021-04-02 00:00:00',NULL,NULL),(15,'13',1,'2021-01-01 00:00:00',1,1,'Oral',9,'2021-04-02 00:00:00',NULL,NULL),(16,'6',1,'2021-01-01 00:00:00',1,1,'Escrito',11,'2021-04-07 00:00:00',NULL,NULL),(17,'8',1,'2021-01-01 00:00:00',1,1,'Escrito',9,'2021-04-07 00:00:00',NULL,NULL),(18,'9',1,'2021-01-01 00:00:00',1,1,'Escrito',8,'2021-04-07 00:00:00',NULL,NULL),(19,'10',1,'2021-01-01 00:00:00',1,1,'Escrito',6,'2021-04-07 00:00:00',NULL,NULL),(20,'11',1,'2021-01-01 00:00:00',1,1,'Escrito',12,'2021-04-07 00:00:00',NULL,NULL),(21,'13',1,'2021-01-01 00:00:00',1,1,'Escrito',10,'2021-04-07 00:00:00',NULL,NULL),(22,'9',1,'2021-01-01 00:00:00',1,1,'Oral',8,'2021-04-02 00:00:00',NULL,NULL),(23,'10',1,'2021-01-01 00:00:00',1,1,'Oral',7,'2021-04-02 00:00:00',NULL,NULL),(24,'11',1,'2021-01-01 00:00:00',1,1,'Oral',12,'2021-04-02 00:00:00',NULL,NULL),(25,'13',1,'2021-01-01 00:00:00',1,1,'Oral',9,'2021-04-02 00:00:00',NULL,NULL),(26,'6',1,'2021-01-01 00:00:00',1,1,'Escrito',11,'2021-04-07 00:00:00',NULL,NULL),(27,'8',1,'2021-01-01 00:00:00',1,1,'Escrito',9,'2021-04-07 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `Trabaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Visa1`
--

DROP TABLE IF EXISTS `Visa1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Visa1` (
  `idVisado` int NOT NULL AUTO_INCREMENT,
  `cedIns` varchar(10) NOT NULL,
  `idGrupo` int NOT NULL,
  `idMat` int NOT NULL,
  `idCursa` int NOT NULL,
  `anoCursa` timestamp NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idVisado`,`cedIns`,`idGrupo`,`idMat`,`idCursa`,`anoCursa`),
  KEY `cedIns` (`cedIns`),
  KEY `idGrupo` (`idGrupo`),
  KEY `idMat` (`idMat`),
  KEY `idCursa` (`idCursa`,`anoCursa`),
  CONSTRAINT `Visa1_ibfk_1` FOREIGN KEY (`cedIns`) REFERENCES `Inspectora` (`cedIns`),
  CONSTRAINT `Visa1_ibfk_2` FOREIGN KEY (`idGrupo`) REFERENCES `Grupo` (`idGrupo`),
  CONSTRAINT `Visa1_ibfk_3` FOREIGN KEY (`idMat`) REFERENCES `Asignatura` (`idMat`),
  CONSTRAINT `Visa1_ibfk_4` FOREIGN KEY (`idCursa`, `anoCursa`) REFERENCES `Cursa` (`idCursa`, `ano`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Visa1`
--

LOCK TABLES `Visa1` WRITE;
/*!40000 ALTER TABLE `Visa1` DISABLE KEYS */;
INSERT INTO `Visa1` VALUES (1,'3',1,1,1,'2021-01-01 00:00:00','Visado','2021-09-30 00:00:00','Todo esta bien');
/*!40000 ALTER TABLE `Visa1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Visa2`
--

DROP TABLE IF EXISTS `Visa2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Visa2` (
  `idVisado` int NOT NULL AUTO_INCREMENT,
  `cedIns` varchar(10) NOT NULL,
  `cedEst` varchar(10) NOT NULL,
  `idMat` int NOT NULL,
  `idTrabaja` int NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idVisado`,`cedIns`,`cedEst`,`idMat`,`idTrabaja`),
  KEY `cedIns` (`cedIns`),
  KEY `cedEst` (`cedEst`),
  KEY `idMat` (`idMat`),
  KEY `idTrabaja` (`idTrabaja`),
  CONSTRAINT `Visa2_ibfk_1` FOREIGN KEY (`cedIns`) REFERENCES `Inspectora` (`cedIns`),
  CONSTRAINT `Visa2_ibfk_2` FOREIGN KEY (`cedEst`) REFERENCES `Persona` (`cedula`),
  CONSTRAINT `Visa2_ibfk_3` FOREIGN KEY (`idMat`) REFERENCES `Asignatura` (`idMat`),
  CONSTRAINT `Visa2_ibfk_4` FOREIGN KEY (`idTrabaja`) REFERENCES `Trabaja` (`idTrabaja`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Visa2`
--

LOCK TABLES `Visa2` WRITE;
/*!40000 ALTER TABLE `Visa2` DISABLE KEYS */;
INSERT INTO `Visa2` VALUES (1,'3','6',1,1,'Visado','2022-09-30 00:00:00','No falta nada');
/*!40000 ALTER TABLE `Visa2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Visa3`
--

DROP TABLE IF EXISTS `Visa3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Visa3` (
  `idVisado` int NOT NULL AUTO_INCREMENT,
  `cedIns` varchar(10) NOT NULL,
  `idAsis` int NOT NULL,
  `cedEst` varchar(10) NOT NULL,
  `idClase` int NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idVisado`,`cedIns`,`idAsis`,`cedEst`,`idClase`),
  KEY `cedIns` (`cedIns`),
  KEY `idAsis` (`idAsis`),
  KEY `cedEst` (`cedEst`),
  KEY `idClase` (`idClase`),
  CONSTRAINT `Visa3_ibfk_1` FOREIGN KEY (`cedIns`) REFERENCES `Inspectora` (`cedIns`),
  CONSTRAINT `Visa3_ibfk_2` FOREIGN KEY (`idAsis`) REFERENCES `Asiste` (`idAsis`),
  CONSTRAINT `Visa3_ibfk_3` FOREIGN KEY (`cedEst`) REFERENCES `Persona` (`cedula`),
  CONSTRAINT `Visa3_ibfk_4` FOREIGN KEY (`idClase`) REFERENCES `Clase` (`idClase`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Visa3`
--

LOCK TABLES `Visa3` WRITE;
/*!40000 ALTER TABLE `Visa3` DISABLE KEYS */;
INSERT INTO `Visa3` VALUES (1,'3',1,'6',1,'completo','2021-11-28 00:00:00','Terminado');
/*!40000 ALTER TABLE `Visa3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Visa4`
--

DROP TABLE IF EXISTS `Visa4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Visa4` (
  `idVisado` int NOT NULL AUTO_INCREMENT,
  `cedIns` varchar(10) NOT NULL,
  `idClase` int NOT NULL,
  `cedProf` varchar(10) NOT NULL,
  `idDicta` int NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idVisado`,`cedIns`,`idClase`,`cedProf`,`idDicta`),
  KEY `cedIns` (`cedIns`),
  KEY `idClase` (`idClase`),
  KEY `cedProf` (`cedProf`),
  KEY `idDicta` (`idDicta`),
  CONSTRAINT `Visa4_ibfk_1` FOREIGN KEY (`cedIns`) REFERENCES `Inspectora` (`cedIns`),
  CONSTRAINT `Visa4_ibfk_2` FOREIGN KEY (`idClase`) REFERENCES `Clase` (`idClase`),
  CONSTRAINT `Visa4_ibfk_3` FOREIGN KEY (`cedProf`) REFERENCES `Profesor` (`cedProf`),
  CONSTRAINT `Visa4_ibfk_4` FOREIGN KEY (`idDicta`) REFERENCES `Dicta` (`idDicta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Visa4`
--

LOCK TABLES `Visa4` WRITE;
/*!40000 ALTER TABLE `Visa4` DISABLE KEYS */;
INSERT INTO `Visa4` VALUES (1,'3',1,'5',1,'Visado','2022-09-30 00:00:00','Completo');
/*!40000 ALTER TABLE `Visa4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Visa5`
--

DROP TABLE IF EXISTS `Visa5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Visa5` (
  `idVisado` int NOT NULL AUTO_INCREMENT,
  `cedIns` varchar(10) NOT NULL,
  `idReunion` int NOT NULL,
  `cedProf` varchar(10) NOT NULL,
  `idInforme` int NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idVisado`,`cedIns`,`idReunion`,`cedProf`,`idInforme`),
  KEY `cedIns` (`cedIns`),
  KEY `idReunion` (`idReunion`),
  KEY `cedProf` (`cedProf`),
  KEY `idInforme` (`idInforme`),
  CONSTRAINT `Visa5_ibfk_1` FOREIGN KEY (`cedIns`) REFERENCES `Inspectora` (`cedIns`),
  CONSTRAINT `Visa5_ibfk_2` FOREIGN KEY (`idReunion`) REFERENCES `Reunion` (`idReunion`),
  CONSTRAINT `Visa5_ibfk_3` FOREIGN KEY (`cedProf`) REFERENCES `Profesor` (`cedProf`),
  CONSTRAINT `Visa5_ibfk_4` FOREIGN KEY (`idInforme`) REFERENCES `HaceInforme` (`idInforme`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Visa5`
--

LOCK TABLES `Visa5` WRITE;
/*!40000 ALTER TABLE `Visa5` DISABLE KEYS */;
INSERT INTO `Visa5` VALUES (1,'3',1,'5',1,'Visado','2022-09-30 00:00:00','Completo'),(1,'3',1,'7',2,'No Hecho','2022-09-30 00:00:00','No hay informe');
/*!40000 ALTER TABLE `Visa5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controladoPor`
--

DROP TABLE IF EXISTS `controladoPor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `controladoPor` (
  `idLib` int NOT NULL AUTO_INCREMENT,
  `idCursa` int NOT NULL,
  `anoCursa` timestamp NOT NULL,
  `idGrupo` int NOT NULL,
  `idMat` int NOT NULL,
  `cedProf` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idLib`,`idCursa`,`anoCursa`,`idGrupo`,`idMat`),
  KEY `idCursa` (`idCursa`,`anoCursa`),
  KEY `idGrupo` (`idGrupo`),
  KEY `idMat` (`idMat`),
  KEY `cedProf` (`cedProf`),
  CONSTRAINT `controladoPor_ibfk_1` FOREIGN KEY (`idCursa`, `anoCursa`) REFERENCES `Cursa` (`idCursa`, `ano`),
  CONSTRAINT `controladoPor_ibfk_2` FOREIGN KEY (`idGrupo`) REFERENCES `Grupo` (`idGrupo`),
  CONSTRAINT `controladoPor_ibfk_3` FOREIGN KEY (`idMat`) REFERENCES `Asignatura` (`idMat`),
  CONSTRAINT `controladoPor_ibfk_4` FOREIGN KEY (`cedProf`) REFERENCES `Profesor` (`cedProf`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controladoPor`
--

LOCK TABLES `controladoPor` WRITE;
/*!40000 ALTER TABLE `controladoPor` DISABLE KEYS */;
INSERT INTO `controladoPor` VALUES (6,4,'2022-01-01 00:00:00',3,6,'23'),(3,5,'2022-01-01 00:00:00',3,3,'24'),(4,6,'2022-01-01 00:00:00',1,3,'24'),(5,7,'2022-01-01 00:00:00',2,3,'24'),(1,1,'2021-01-01 00:00:00',1,1,'25'),(7,8,'2022-01-01 00:00:00',2,1,'25'),(2,2,'2022-01-01 00:00:00',2,2,'5'),(8,9,'2022-01-01 00:00:00',3,2,'5');
/*!40000 ALTER TABLE `controladoPor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-10 22:53:14
