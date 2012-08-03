-- MySQL dump 10.13  Distrib 5.1.63, for debian-linux-gnu (i486)
--
-- Host: 127.0.0.1    Database: codejobs
-- ------------------------------------------------------
-- Server version	5.1.63-0ubuntu0.10.04.1

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
-- Table structure for table `muu_ads`
--

DROP TABLE IF EXISTS `muu_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_ads` (
  `ID_Ad` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(100) NOT NULL,
  `Position` varchar(15) NOT NULL DEFAULT 'Right',
  `Banner` varchar(250) NOT NULL,
  `URL` varchar(250) NOT NULL,
  `Code` text NOT NULL,
  `Clicks` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Start_Date` int(11) NOT NULL DEFAULT '0',
  `End_Date` int(11) NOT NULL DEFAULT '0',
  `Time` mediumint(8) NOT NULL DEFAULT '5000',
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Ad`),
  KEY `ID_User` (`ID_User`),
  CONSTRAINT `muu_ads_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `muu_users` (`ID_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_ads`
--

LOCK TABLES `muu_ads` WRITE;
/*!40000 ALTER TABLE `muu_ads` DISABLE KEYS */;
INSERT INTO `muu_ads` VALUES (1,1,'Anuncio 2','Top','www/lib/files/images/ads/1084b_45a3e-banner2.png','http://www.google.com','',0,1339030862,1341450062,5000,1,'Deleted');
/*!40000 ALTER TABLE `muu_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_applications`
--

DROP TABLE IF EXISTS `muu_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_applications` (
  `ID_Application` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) NOT NULL,
  `Slug` varchar(45) NOT NULL,
  `CPanel` tinyint(1) NOT NULL DEFAULT '1',
  `Adding` tinyint(1) NOT NULL,
  `BeDefault` tinyint(1) NOT NULL DEFAULT '1',
  `Comments` tinyint(1) NOT NULL DEFAULT '0',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Application`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_applications`
--

LOCK TABLES `muu_applications` WRITE;
/*!40000 ALTER TABLE `muu_applications` DISABLE KEYS */;
INSERT INTO `muu_applications` VALUES (1,'Ads','ads',1,1,0,0,'Inactive'),(2,'Applications','applications',1,1,0,0,'Inactive'),(3,'Blog','blog',1,1,1,1,'Active'),(4,'Comments','comments',1,0,0,1,'Active'),(5,'Configuration','configuration',1,0,0,0,'Active'),(6,'Feedback','feedback',1,0,0,0,'Inactive'),(7,'Forums','forums',1,1,1,0,'Inactive'),(8,'Gallery','gallery',1,1,1,1,'Inactive'),(9,'Bookmarks','bookmarks',1,1,1,0,'Inactive'),(10,'Messages','messages',1,1,0,0,'Inactive'),(11,'Pages','pages',1,1,1,0,'Inactive'),(12,'Polls','polls',1,1,0,0,'Inactive'),(13,'Support','support',1,1,0,0,'Inactive'),(14,'Users','users',1,1,0,0,'Inactive'),(15,'Videos','videos',1,1,1,0,'Inactive'),(16,'Works','works',1,1,1,0,'Inactive'),(17,'Codes','codes',1,1,1,0,'Inactive');
/*!40000 ALTER TABLE `muu_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_blog`
--

DROP TABLE IF EXISTS `muu_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_blog` (
  `ID_Post` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_URL` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(250) NOT NULL,
  `Slug` varchar(250) NOT NULL,
  `Content` text NOT NULL,
  `Tags` varchar(250) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Start_Date` int(11) NOT NULL DEFAULT '0',
  `Text_Date` varchar(40) NOT NULL,
  `Year` varchar(4) NOT NULL,
  `Month` varchar(2) NOT NULL,
  `Day` varchar(2) NOT NULL,
  `Views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Image_Small` varchar(250) DEFAULT NULL,
  `Image_Medium` varchar(250) NOT NULL,
  `Comments` mediumint(8) NOT NULL DEFAULT '0',
  `Enable_Comments` tinyint(1) NOT NULL DEFAULT '0',
  `Language` varchar(20) NOT NULL DEFAULT 'Spanish',
  `Pwd` varchar(40) NOT NULL,
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Post`),
  KEY `ID_User` (`ID_User`),
  KEY `ID_URL` (`ID_URL`),
  CONSTRAINT `muu_blog_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `muu_users` (`ID_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_blog`
--

LOCK TABLES `muu_blog` WRITE;
/*!40000 ALTER TABLE `muu_blog` DISABLE KEYS */;
INSERT INTO `muu_blog` VALUES (1,1,0,'Bienvenidos','bienvenidos','<p>Bienvenidos<span rel=\"pastemarkerend\" id=\"pastemarkerend77053\">&nbsp;</span></p>\r\n','opendatamx, opendata','admin',1343928779,'Thursday, 02 de August de 2012','2012','08','02',23,'','',0,0,'Spanish','','Active'),(2,1,0,'Ganadores del Hackatón por los Derechos de la Infancia 2012','ganadores-del-hackaton-por-los-derechos-de-la-infancia-2012','\r\n<p>DespuÃ©s de 24 horas de hackatÃ³n, este domingo 15 de julio 2012 se realizaron las presentaciones de los proyectos participantes asÃ­ como la premiaciÃ³n del 1er, 2do y 3er lugar.<br>\r\n 1er Lugar: VisualizaciÃ³n de datos de trabajo infantil y deserciÃ³n escolar<br>\r\n</p>\r\n<!---->\r\n<p><br>\r\n Equipo: Federico RamÃ­rez y Carlos Hugo Gonzalez<br>\r\n SÃ­ntesis: Esta desarrollado en ZanPHP (Framework de PHP5), grÃ¡ficas con google charts, base de datos mysql, utilizaciÃ³n de JS y CSS. Sera Ãºtil para visualizar los datos de deserciÃ³n escolar y los motivos por lo cual desertan , tambiÃ©n si es que trabajan se muestra los motivos por los cuales trabajar, en rango de edad y genero, ademas de mostrar el nivel de ingresos. El desarrollo es adecuado para integrar siguientes bases de datos de los prÃ³ximos aÃ±os, solo se agregaron las base de datos disponibles del 2007 y 2009, esta listo para incorporar los siguientes aÃ±os.<br>\r\n Actividades Realizadas:<br>\r\n - Limpieza de bases de datos<br>\r\n - Desarrollo de programas para el manejo de datos<br>\r\n - ElaboraciÃ³n de visualizaciones y grÃ¡ficas dinÃ¡micas en Internet<br>\r\n - Desarrollo de portales web<br>\r\n - ElaboraciÃ³n de mapas<br>\r\n Link a visualizaciones dinÃ¡micas y cÃ³digo.<br>\r\n 2do Lugar: Visualizaciones y Mapa de Calor SEDESOL â€“ ENJO 2009<br>\r\n<br>\r\n Equipo: Blanca CÃ³rdova e IvÃ¡n Yza<br>\r\n SÃ­ntesis: Visualizaciones mÃºltiples desarrolladas en Tableau software para analizar la distribuciÃ³n de Jornaleros correspondiente a la Encuesta SEDESOL â€“ ENJO 2009: Mapa de Calor a nivel Estado, DistribuciÃ³n de Cultivo por Estado y Top Municipios por Estado.<br>\r\n Actividades Realizadas:<br>\r\n - Limpieza de bases de datos<br>\r\n - HomologaciÃ³n de bases de datos<br>\r\n - ElaboraciÃ³n de visualizaciones y grÃ¡ficas dinÃ¡micas en Internet<br>\r\n - ElaboraciÃ³n de mapas<br>\r\n Link a mapa de calor, distribuciÃ³n estado-cultivo y Top 5 Estados-Municipios.<br>\r\n 3er Lugar: NiÃ±os y EducaciÃ³n<br>\r\n<br>\r\n Equipo: Daniel Alejandro Torres y Said Villegas Villada<br>\r\n SÃ­ntesis: El proyecto esta desarrollado en Web php, java script, html, y para el diseÃ±o se usÃ³ Adobe Illustrator y Adobe Photoshop. EL desarrollo serÃ¡ Ãºtil para que la gente que necesita conocer el perfil de las niÃ±as y los niÃ±os becados por el DIF lo vea de una manera sencilla y eficaz tambiÃ©n para que sea mÃ¡s fÃ¡cil la toma de decisiones con respecto a los datos mostrados en las visualizaciones por parte del DIF.<br>\r\n Actividades Realizadas:<br>\r\n - Limpieza de bases de datos<br>\r\n - HomologaciÃ³n de bases de datos<br>\r\n - Desarrollo de programas para el manejo de datos<br>\r\n - ElaboraciÃ³n de visualizaciones y grÃ¡ficas dinÃ¡micas en Internet<br>\r\n - Desarrollo de portales web<br>\r\n - ElaboraciÃ³n de mapas<br>\r\n - ElaboraciÃ³n de visualizaciones o infografÃ­as<br>\r\n Link a aplicaciÃ³n y al cÃ³digo.<br>\r\n<br>\r\n A medio dÃ­a del domingo 15 de julio 2012, los participantes del hackatÃ³n presentaron sus proyectos ante el jurado quienes, tomando como referencia las bases y consideraciones para la premiaciÃ³n, analizaron los proyectos para asignando ganadores. El jurado estuvo representado por:<br>\r\n - Norma del RÃ­o Lugo â€“ Coordinadora General del Programa Infancia de la Universidad AutÃ³noma Metropolitana, Xochimilco<br>\r\n - David Sasaki â€“ Responsable de Inversiones de Omidyar Network en Brasil y MÃ©xico<br>\r\n - Arturo NarvÃ¡ez â€“ Director General del Movimiento de Apoyo a NiÃ±os Trabajadores y de la Calle A.C.<br>\r\n<br>\r\n Ver aquÃ­ acta emitida por el jurado y video-stream de la presentaciÃ³n y premiaciÃ³n.<br>\r\n<br>\r\n Es fundamental desctacar y reconocer que durante el hackatÃ³n se tuvo una estrecha colaboraciÃ³n y apoyo de servidores pÃºblicos de la SEDESOL, de la STPS, del INSP, de la DGEI-SEP, del DIF y de Oportunidades quienes asistieron al Hackaton. Los especialistas en estadÃ­stica de la SEDESOL Jorge Alberto Vargas y Severino GarcÃ­a apoyaron y facilitaron la labor de los programadores a lo largo de las 24 horas de duraciÃ³n del evento.</p>\r\n','','admin',1343931769,'Thursday, 02 de August de 2012','2012','08','02',13,'','',0,0,'Spanish','','Active');
/*!40000 ALTER TABLE `muu_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_bookmarks`
--

DROP TABLE IF EXISTS `muu_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_bookmarks` (
  `ID_Bookmark` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(200) NOT NULL,
  `Slug` varchar(200) NOT NULL,
  `URL` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Tags` varchar(200) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Views` mediumint(8) NOT NULL DEFAULT '0',
  `Likes` mediumint(8) NOT NULL DEFAULT '0',
  `Dislikes` mediumint(8) NOT NULL DEFAULT '0',
  `Reported` tinyint(1) NOT NULL DEFAULT '0',
  `Language` varchar(15) NOT NULL DEFAULT 'English',
  `Start_Date` int(11) NOT NULL DEFAULT '0',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Bookmark`),
  KEY `ID_User` (`ID_User`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_bookmarks`
--

LOCK TABLES `muu_bookmarks` WRITE;
/*!40000 ALTER TABLE `muu_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_codes`
--

DROP TABLE IF EXISTS `muu_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_codes` (
  `ID_Code` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(150) NOT NULL,
  `Slug` varchar(150) NOT NULL,
  `Languages` varchar(100) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `Text_Date` varchar(50) NOT NULL,
  `Views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Likes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Dislikes` mediumint(8) NOT NULL DEFAULT '0',
  `Reported` tinyint(1) NOT NULL DEFAULT '0',
  `Language` varchar(20) NOT NULL DEFAULT 'English',
  `Situation` varchar(10) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_codes`
--

LOCK TABLES `muu_codes` WRITE;
/*!40000 ALTER TABLE `muu_codes` DISABLE KEYS */;
INSERT INTO `muu_codes` VALUES (1,1,'Mi primera página web','mi-primera-pagina-web','CSS, HTML','admin',1343549198,'Sunday, 29 de July de 2012',1,1,0,0,'Spanish','Active'),(2,1,'Mostrar información en PHP','mostrar-informacion-en-php','PHP','admin',1342473272,'Monday, 16 de Julio de 2012',2,0,0,0,'Spanish','Active'),(3,1,'My first webpage','my-first-webpage','CSS, HTML','admin',1343549249,'Sunday, 29 de July de 2012',1,0,0,0,'English','Active');
/*!40000 ALTER TABLE `muu_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_codes_files`
--

DROP TABLE IF EXISTS `muu_codes_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_codes_files` (
  `ID_File` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Code` int(11) unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  `ID_Syntax` int(11) NOT NULL,
  `Code` text NOT NULL,
  PRIMARY KEY (`ID_File`),
  KEY `ID_Code` (`ID_Code`),
  KEY `ID_Syntax` (`ID_Syntax`),
  CONSTRAINT `muu_codes_files_ibfk_1` FOREIGN KEY (`ID_Code`) REFERENCES `muu_codes` (`ID_Code`),
  CONSTRAINT `muu_codes_files_ibfk_2` FOREIGN KEY (`ID_Syntax`) REFERENCES `muu_codes_syntax` (`ID_Syntax`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_codes_files`
--

LOCK TABLES `muu_codes_files` WRITE;
/*!40000 ALTER TABLE `muu_codes_files` DISABLE KEYS */;
INSERT INTO `muu_codes_files` VALUES (1,1,'pagina.html',6,'<!DOCTYPE html>\r\n<html lang=\"es\">\r\n<head>\r\n  <meta charset=\"utf-8\" />\r\n  <title>Título de la página</title>\r\n  <link href=\"estilo.css\" />\r\n</head>\r\n<body>\r\n  Esta es mi primera página web.\r\n</body>\r\n</html>'),(2,1,'estilo.css',7,'/* Estilo del cuerpo */\r\n\r\nbody {\r\n  background-color: lightyellow;\r\n  margin: 10px;\r\n}'),(3,2,'info.php',4,'<?php\r\n // La siguiente línea muestra información\r\n phpinfo();\r\n?>'),(4,3,'page.html',6,'<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n  <meta charset=\"utf-8\" />\r\n  <title>Title\'s webpage</title>\r\n  <link href=\"estilo.css\" />\r\n</head>\r\n<body>\r\n  This is my first webpage.\r\n</body>\r\n</html>'),(5,3,'style.css',7,'/* Body\'s style */\r\n\r\nbody {\r\n  background-color: lightyellow;\r\n  margin: 10px;\r\n}');
/*!40000 ALTER TABLE `muu_codes_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_codes_syntax`
--

DROP TABLE IF EXISTS `muu_codes_syntax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_codes_syntax` (
  `ID_Syntax` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `MIME` varchar(50) NOT NULL,
  `Filename` varchar(50) NOT NULL,
  `Extension` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_Syntax`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_codes_syntax`
--

LOCK TABLES `muu_codes_syntax` WRITE;
/*!40000 ALTER TABLE `muu_codes_syntax` DISABLE KEYS */;
INSERT INTO `muu_codes_syntax` VALUES (1,'Text plain','text/plain','',''),(2,'JSON','application/json','javascript','json'),(3,'C++','text/x-c++src','clike','cpp'),(4,'PHP','application/x-httpd-php','php','php'),(5,'Javascript','text/javascript','javascript','js'),(6,'HTML','text/html','htmlmixed','html'),(7,'CSS','text/css','css','css');
/*!40000 ALTER TABLE `muu_codes_syntax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_comments`
--

DROP TABLE IF EXISTS `muu_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_comments` (
  `ID_Comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Comment` text NOT NULL,
  `Start_Date` int(11) NOT NULL,
  `Text_Date` varchar(40) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Avatar` varchar(150) NOT NULL,
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Comment`),
  KEY `ID_User` (`ID_User`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_comments`
--

LOCK TABLES `muu_comments` WRITE;
/*!40000 ALTER TABLE `muu_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_companies`
--

DROP TABLE IF EXISTS `muu_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_companies` (
  `ID_Company` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `RFC` varchar(20) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Legal_Name` varchar(100) NOT NULL,
  `Legal_Last_Name` varchar(100) NOT NULL,
  `Legal_Maiden_Name` varchar(100) NOT NULL,
  `Legal_Title` varchar(100) NOT NULL,
  `Legal_Email` varchar(100) NOT NULL,
  `Legal_Phone` varchar(15) NOT NULL,
  `Legal_Mobile` varchar(15) NOT NULL,
  `Vacancies` smallint(5) NOT NULL,
  `Type_Vacancy` varchar(50) NOT NULL,
  `Employees` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Sector` varchar(100) NOT NULL,
  `Turn` varchar(100) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Zip_Code` varchar(10) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `Logo` varchar(250) NOT NULL,
  PRIMARY KEY (`ID_Company`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_companies`
--

LOCK TABLES `muu_companies` WRITE;
/*!40000 ALTER TABLE `muu_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_configuration`
--

DROP TABLE IF EXISTS `muu_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_configuration` (
  `ID_Configuration` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Slogan_English` varchar(100) NOT NULL,
  `Slogan_Spanish` varchar(100) NOT NULL,
  `Slogan_French` varchar(100) NOT NULL,
  `Slogan_Portuguese` varchar(100) NOT NULL,
  `URL` varchar(60) NOT NULL,
  `Lang` varchar(2) NOT NULL DEFAULT 'en',
  `Language` varchar(25) NOT NULL DEFAULT 'English',
  `Theme` varchar(25) NOT NULL DEFAULT 'ZanPHP',
  `Validation` varchar(15) NOT NULL DEFAULT 'Super Admin',
  `Application` varchar(30) NOT NULL DEFAULT 'Blog',
  `Message` text NOT NULL,
  `Activation` varchar(10) NOT NULL DEFAULT 'Nobody',
  `Email_Recieve` varchar(50) NOT NULL,
  `Email_Send` varchar(50) NOT NULL DEFAULT '@domain.com',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Configuration`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_configuration`
--

LOCK TABLES `muu_configuration` WRITE;
/*!40000 ALTER TABLE `muu_configuration` DISABLE KEYS */;
INSERT INTO `muu_configuration` VALUES (1,'OpenDataMX','Knowledge makes us free!','Abriendo un bit a la vez','Connaissance nous rend libres!','Conhecimento nos torna livres!','http://local.opendata.mx','es','Spanish','opendatamx','Active','default','El Sitio Web esta en mantenimiento','User','azapedia@gmail.com','carlos@codejobs.biz','Active');
/*!40000 ALTER TABLE `muu_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_categories`
--

DROP TABLE IF EXISTS `muu_courses_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_categories` (
  `ID_Category` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(100) NOT NULL,
  `Slug` varchar(100) NOT NULL,
  `Courses` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Language` varchar(10) NOT NULL DEFAULT 'English',
  `Situation` varchar(10) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_categories`
--

LOCK TABLES `muu_courses_categories` WRITE;
/*!40000 ALTER TABLE `muu_courses_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_enrollments`
--

DROP TABLE IF EXISTS `muu_courses_enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_enrollments` (
  `ID_Enrollment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Student` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Course` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `End_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `Situation` varchar(10) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Enrollment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_enrollments`
--

LOCK TABLES `muu_courses_enrollments` WRITE;
/*!40000 ALTER TABLE `muu_courses_enrollments` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_help`
--

DROP TABLE IF EXISTS `muu_courses_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_help` (
  `ID_Help` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Topic` varchar(250) NOT NULL,
  `Content` text NOT NULL,
  `Language` varchar(15) NOT NULL DEFAULT 'English',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Help`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_help`
--

LOCK TABLES `muu_courses_help` WRITE;
/*!40000 ALTER TABLE `muu_courses_help` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_lessons`
--

DROP TABLE IF EXISTS `muu_courses_lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_lessons` (
  `ID_Lesson` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(100) NOT NULL,
  `Language` varchar(15) NOT NULL DEFAULT 'English',
  PRIMARY KEY (`ID_Lesson`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_lessons`
--

LOCK TABLES `muu_courses_lessons` WRITE;
/*!40000 ALTER TABLE `muu_courses_lessons` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_material`
--

DROP TABLE IF EXISTS `muu_courses_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_material` (
  `ID_Material` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Course` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Lesson` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Content` text NOT NULL,
  `Language` varchar(15) NOT NULL DEFAULT 'English',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_material`
--

LOCK TABLES `muu_courses_material` WRITE;
/*!40000 ALTER TABLE `muu_courses_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_resources`
--

DROP TABLE IF EXISTS `muu_courses_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_resources` (
  `ID_Resource` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Course` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(100) NOT NULL,
  `URL` varchar(150) NOT NULL,
  `Description` varchar(250) NOT NULL,
  PRIMARY KEY (`ID_Resource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_resources`
--

LOCK TABLES `muu_courses_resources` WRITE;
/*!40000 ALTER TABLE `muu_courses_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_roles`
--

DROP TABLE IF EXISTS `muu_courses_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_roles` (
  `ID_Role` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Role` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Language` varchar(15) NOT NULL DEFAULT 'English',
  PRIMARY KEY (`ID_Role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_roles`
--

LOCK TABLES `muu_courses_roles` WRITE;
/*!40000 ALTER TABLE `muu_courses_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_students`
--

DROP TABLE IF EXISTS `muu_courses_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_students` (
  `ID_Student` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Enrollment` varchar(9) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Pwd` varchar(40) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `Telephone` varchar(20) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `CURP` varchar(18) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Presentation` varchar(255) NOT NULL,
  `Courses` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `Code` varchar(10) NOT NULL,
  `Privileges` varchar(15) NOT NULL DEFAULT 'Student',
  PRIMARY KEY (`ID_Student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_students`
--

LOCK TABLES `muu_courses_students` WRITE;
/*!40000 ALTER TABLE `muu_courses_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_students_archive`
--

DROP TABLE IF EXISTS `muu_courses_students_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_students_archive` (
  `ID_Student` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Test` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_students_archive`
--

LOCK TABLES `muu_courses_students_archive` WRITE;
/*!40000 ALTER TABLE `muu_courses_students_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_students_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_tests`
--

DROP TABLE IF EXISTS `muu_courses_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_tests` (
  `ID_Test` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Student` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Course` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Lesson` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Score` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Language` varchar(15) NOT NULL DEFAULT 'English',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Test`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_tests`
--

LOCK TABLES `muu_courses_tests` WRITE;
/*!40000 ALTER TABLE `muu_courses_tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_tests_answers`
--

DROP TABLE IF EXISTS `muu_courses_tests_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_tests_answers` (
  `ID_Question` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_tests_answers`
--

LOCK TABLES `muu_courses_tests_answers` WRITE;
/*!40000 ALTER TABLE `muu_courses_tests_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_tests_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_tests_questions`
--

DROP TABLE IF EXISTS `muu_courses_tests_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_tests_questions` (
  `ID_Question` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Test` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Question` varchar(255) NOT NULL,
  `Value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Audio` varchar(150) NOT NULL,
  `Image` varchar(150) NOT NULL,
  `Video` varchar(150) NOT NULL,
  PRIMARY KEY (`ID_Question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_tests_questions`
--

LOCK TABLES `muu_courses_tests_questions` WRITE;
/*!40000 ALTER TABLE `muu_courses_tests_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_tests_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_tutors`
--

DROP TABLE IF EXISTS `muu_courses_tutors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_tutors` (
  `ID_Tutor` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Schooling` varchar(100) NOT NULL,
  `Curriculum` text NOT NULL,
  `Photo` varchar(250) NOT NULL,
  `Language` varchar(15) NOT NULL DEFAULT 'English',
  PRIMARY KEY (`ID_Tutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_tutors`
--

LOCK TABLES `muu_courses_tutors` WRITE;
/*!40000 ALTER TABLE `muu_courses_tutors` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_tutors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_tutors_alerts`
--

DROP TABLE IF EXISTS `muu_courses_tutors_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_tutors_alerts` (
  `ID_Alert` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Student` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Tutor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Subject` varchar(250) NOT NULL,
  `Alert` text NOT NULL,
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `Language` varchar(15) NOT NULL DEFAULT 'English',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Alert`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_tutors_alerts`
--

LOCK TABLES `muu_courses_tutors_alerts` WRITE;
/*!40000 ALTER TABLE `muu_courses_tutors_alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_tutors_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_courses_tutors_messages`
--

DROP TABLE IF EXISTS `muu_courses_tutors_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_courses_tutors_messages` (
  `ID_Message` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Student` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Tutor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Subject` varchar(250) NOT NULL,
  `Message` text NOT NULL,
  `File` varchar(250) NOT NULL,
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `Language` varchar(15) NOT NULL DEFAULT 'English',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_courses_tutors_messages`
--

LOCK TABLES `muu_courses_tutors_messages` WRITE;
/*!40000 ALTER TABLE `muu_courses_tutors_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_courses_tutors_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_dislikes`
--

DROP TABLE IF EXISTS `muu_dislikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_dislikes` (
  `ID_Dislike` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Application` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Record` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Dislike`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_dislikes`
--

LOCK TABLES `muu_dislikes` WRITE;
/*!40000 ALTER TABLE `muu_dislikes` DISABLE KEYS */;
INSERT INTO `muu_dislikes` VALUES (1,1,10,2,1338350663);
/*!40000 ALTER TABLE `muu_dislikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_events`
--

DROP TABLE IF EXISTS `muu_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_events` (
  `ID_Event` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(250) NOT NULL,
  `Place` varchar(250) NOT NULL,
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `End_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `Time_Zone` varchar(50) NOT NULL,
  `Repeat_Event` varchar(50) NOT NULL,
  `Alert` varchar(50) NOT NULL,
  `Calendar` varchar(100) NOT NULL,
  `URL` varchar(150) NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`ID_Event`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_events`
--

LOCK TABLES `muu_events` WRITE;
/*!40000 ALTER TABLE `muu_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_feedback`
--

DROP TABLE IF EXISTS `muu_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_feedback` (
  `ID_Feedback` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Company` varchar(50) NOT NULL,
  `Phone` varchar(16) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Subject` varchar(200) NOT NULL,
  `Message` text NOT NULL,
  `Start_Date` int(11) NOT NULL,
  `Text_Date` varchar(60) NOT NULL,
  `Situation` varchar(15) NOT NULL DEFAULT 'Inactive',
  PRIMARY KEY (`ID_Feedback`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_feedback`
--

LOCK TABLES `muu_feedback` WRITE;
/*!40000 ALTER TABLE `muu_feedback` DISABLE KEYS */;
INSERT INTO `muu_feedback` VALUES (1,'Carlos Santana Roldán','carlos@milkzoft.com','MilkZoft','1223423','Colima','Hola como estas','adasdasd',1337647712,'Miércoles, 13 de Junio de 2012','Deleted');
/*!40000 ALTER TABLE `muu_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_forums`
--

DROP TABLE IF EXISTS `muu_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_forums` (
  `ID_Forum` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(120) NOT NULL,
  `Slug` varchar(120) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Last_Reply` int(11) unsigned NOT NULL DEFAULT '0',
  `Last_Date` varchar(50) NOT NULL,
  `Language` varchar(20) NOT NULL DEFAULT 'Spanish',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_forums`
--

LOCK TABLES `muu_forums` WRITE;
/*!40000 ALTER TABLE `muu_forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_forums_posts`
--

DROP TABLE IF EXISTS `muu_forums_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_forums_posts` (
  `ID_Post` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Forum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(150) NOT NULL,
  `Slug` varchar(150) NOT NULL,
  `Content` text NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `Text_Date` varchar(50) NOT NULL,
  `Hour` varchar(15) NOT NULL DEFAULT '00:00:00',
  `Visits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Topic` tinyint(1) NOT NULL DEFAULT '0',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Post`),
  KEY `ID_User` (`ID_User`),
  KEY `ID_Forum` (`ID_Forum`),
  CONSTRAINT `muu_forums_posts_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `muu_users` (`ID_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_forums_posts`
--

LOCK TABLES `muu_forums_posts` WRITE;
/*!40000 ALTER TABLE `muu_forums_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_forums_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_gallery`
--

DROP TABLE IF EXISTS `muu_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_gallery` (
  `ID_Image` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(100) NOT NULL,
  `Slug` varchar(100) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Small` varchar(255) NOT NULL,
  `Medium` varchar(255) NOT NULL,
  `Original` varchar(255) NOT NULL,
  `Album` varchar(50) NOT NULL DEFAULT 'None',
  `Album_Slug` varchar(150) NOT NULL DEFAULT 'None',
  `Start_Date` int(11) NOT NULL,
  `Text_Date` varchar(50) NOT NULL,
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Image`),
  KEY `ID_User` (`ID_User`),
  CONSTRAINT `muu_gallery_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `muu_users` (`ID_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_gallery`
--

LOCK TABLES `muu_gallery` WRITE;
/*!40000 ALTER TABLE `muu_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_gallery_themes`
--

DROP TABLE IF EXISTS `muu_gallery_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_gallery_themes` (
  `ID_Gallery_Theme` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Slug` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  PRIMARY KEY (`ID_Gallery_Theme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_gallery_themes`
--

LOCK TABLES `muu_gallery_themes` WRITE;
/*!40000 ALTER TABLE `muu_gallery_themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_gallery_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_inbox`
--

DROP TABLE IF EXISTS `muu_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_inbox` (
  `ID_Inbox` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Receiver` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Sender` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Message` text NOT NULL,
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `Situation` varchar(15) NOT NULL DEFAULT 'Unread',
  PRIMARY KEY (`ID_Inbox`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_inbox`
--

LOCK TABLES `muu_inbox` WRITE;
/*!40000 ALTER TABLE `muu_inbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_jobs`
--

DROP TABLE IF EXISTS `muu_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_jobs` (
  `ID_Job` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Company` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(250) NOT NULL,
  `Slug` varchar(250) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Company_Information` text NOT NULL,
  `Location` varchar(250) NOT NULL,
  `Salary` varchar(25) NOT NULL,
  `Allocation_Time` varchar(50) NOT NULL,
  `Requirements` text NOT NULL,
  `Experience` text NOT NULL,
  `Activities` text NOT NULL,
  `Profile` text NOT NULL,
  `Technologies` varchar(250) NOT NULL,
  `Additional_Information` text NOT NULL,
  `Company_Contact` text NOT NULL,
  PRIMARY KEY (`ID_Job`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_jobs`
--

LOCK TABLES `muu_jobs` WRITE;
/*!40000 ALTER TABLE `muu_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_learning`
--

DROP TABLE IF EXISTS `muu_learning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_learning` (
  `ID_Course` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Tutor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(100) NOT NULL,
  `Information` text NOT NULL,
  `Objetive` text NOT NULL,
  `To_People` text NOT NULL,
  `Requeriments` text NOT NULL,
  `Duration` smallint(5) NOT NULL,
  `Price1` varchar(20) NOT NULL,
  `Price2` varchar(20) NOT NULL,
  `Language` varchar(15) NOT NULL DEFAULT 'English',
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_learning`
--

LOCK TABLES `muu_learning` WRITE;
/*!40000 ALTER TABLE `muu_learning` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_learning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_likes`
--

DROP TABLE IF EXISTS `muu_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_likes` (
  `ID_Like` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Application` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Record` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Like`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_likes`
--

LOCK TABLES `muu_likes` WRITE;
/*!40000 ALTER TABLE `muu_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_logs`
--

DROP TABLE IF EXISTS `muu_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_logs` (
  `ID_Log` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Record` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Table_Name` varchar(50) NOT NULL,
  `Activity` varchar(100) NOT NULL,
  `Query` text NOT NULL,
  `Start_Date` datetime NOT NULL,
  PRIMARY KEY (`ID_Log`),
  KEY `ID_User` (`ID_User`),
  CONSTRAINT `muu_logs_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `muu_users` (`ID_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_logs`
--

LOCK TABLES `muu_logs` WRITE;
/*!40000 ALTER TABLE `muu_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_mural`
--

DROP TABLE IF EXISTS `muu_mural`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_mural` (
  `ID_Mural` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Post` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(200) NOT NULL,
  `URL` varchar(250) NOT NULL,
  `Image` varchar(250) NOT NULL,
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Mural`),
  KEY `ID_Post` (`ID_Post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_mural`
--

LOCK TABLES `muu_mural` WRITE;
/*!40000 ALTER TABLE `muu_mural` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_mural` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_pages`
--

DROP TABLE IF EXISTS `muu_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_pages` (
  `ID_Page` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Translation` mediumint(8) NOT NULL DEFAULT '0',
  `Title` varchar(100) NOT NULL,
  `Slug` varchar(100) NOT NULL,
  `Content` text NOT NULL,
  `Views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Language` varchar(20) NOT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Start_Date` int(11) NOT NULL,
  `Text_Date` varchar(40) NOT NULL,
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Page`),
  KEY `ID_User` (`ID_User`),
  CONSTRAINT `muu_pages_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `muu_users` (`ID_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_pages`
--

LOCK TABLES `muu_pages` WRITE;
/*!40000 ALTER TABLE `muu_pages` DISABLE KEYS */;
INSERT INTO `muu_pages` VALUES (1,1,0,'Publicidad','publicidad','<p>Publicidad</p>',0,'Spanish',0,1337745419,'MiÃ©rcoles, 23 de Mayo de 2012','Active'),(2,1,0,'Aviso Legal','aviso-legal','<p>Aviso Legal</p>',0,'Spanish',0,1337746393,'MiÃ©rcoles, 23 de Mayo de 2012','Active'),(3,1,0,'Condiciones de uso','condiciones-de-uso','<p>Condiciones de uso</p>',0,'Spanish',0,1337746409,'MiÃ©rcoles, 23 de Mayo de 2012','Active'),(4,1,0,'Acerca de Codejobs','acerca-de-codejobs','<p>Acerca de Codejobs</p>',0,'Spanish',0,1337746606,'MiÃ©rcoles, 23 de Mayo de 2012','Active');
/*!40000 ALTER TABLE `muu_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_polls`
--

DROP TABLE IF EXISTS `muu_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_polls` (
  `ID_Poll` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(255) NOT NULL,
  `Type` varchar(10) DEFAULT 'Simple',
  `Start_Date` int(11) NOT NULL,
  `Text_Date` varchar(40) NOT NULL,
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Poll`),
  KEY `ID_User` (`ID_User`),
  CONSTRAINT `muu_polls_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `muu_users` (`ID_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_polls`
--

LOCK TABLES `muu_polls` WRITE;
/*!40000 ALTER TABLE `muu_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_polls_answers`
--

DROP TABLE IF EXISTS `muu_polls_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_polls_answers` (
  `ID_Answer` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Answer` varchar(100) NOT NULL,
  `Votes` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Answer`),
  KEY `ID_Poll` (`ID_Poll`),
  CONSTRAINT `muu_polls_answers_ibfk_1` FOREIGN KEY (`ID_Poll`) REFERENCES `muu_polls` (`ID_Poll`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_polls_answers`
--

LOCK TABLES `muu_polls_answers` WRITE;
/*!40000 ALTER TABLE `muu_polls_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_polls_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_polls_ips`
--

DROP TABLE IF EXISTS `muu_polls_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_polls_ips` (
  `ID_Poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `IP` varchar(15) NOT NULL,
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `End_Date` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `ID_Poll` (`ID_Poll`),
  CONSTRAINT `muu_polls_ips_ibfk_1` FOREIGN KEY (`ID_Poll`) REFERENCES `muu_polls` (`ID_Poll`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_polls_ips`
--

LOCK TABLES `muu_polls_ips` WRITE;
/*!40000 ALTER TABLE `muu_polls_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_polls_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_privileges`
--

DROP TABLE IF EXISTS `muu_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_privileges` (
  `ID_Privilege` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Privilege` varchar(25) NOT NULL DEFAULT 'Member',
  PRIMARY KEY (`ID_Privilege`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_privileges`
--

LOCK TABLES `muu_privileges` WRITE;
/*!40000 ALTER TABLE `muu_privileges` DISABLE KEYS */;
INSERT INTO `muu_privileges` VALUES (1,'Super Admin'),(2,'Admin'),(3,'Moderator'),(4,'Member');
/*!40000 ALTER TABLE `muu_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_re_comments_applications`
--

DROP TABLE IF EXISTS `muu_re_comments_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_re_comments_applications` (
  `ID_Comment2Application` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Application` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Comment` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Record` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Comment2Application`),
  KEY `ID_Application` (`ID_Application`),
  KEY `ID_Comment` (`ID_Comment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_re_comments_applications`
--

LOCK TABLES `muu_re_comments_applications` WRITE;
/*!40000 ALTER TABLE `muu_re_comments_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_re_comments_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_re_companies_jobs`
--

DROP TABLE IF EXISTS `muu_re_companies_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_re_companies_jobs` (
  `ID_Company` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Job` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_re_companies_jobs`
--

LOCK TABLES `muu_re_companies_jobs` WRITE;
/*!40000 ALTER TABLE `muu_re_companies_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_re_companies_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_re_courses_course_categories`
--

DROP TABLE IF EXISTS `muu_re_courses_course_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_re_courses_course_categories` (
  `ID_Category` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Course` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_re_courses_course_categories`
--

LOCK TABLES `muu_re_courses_course_categories` WRITE;
/*!40000 ALTER TABLE `muu_re_courses_course_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_re_courses_course_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_re_courses_lesson_course`
--

DROP TABLE IF EXISTS `muu_re_courses_lesson_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_re_courses_lesson_course` (
  `ID_Course` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Lesson` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_re_courses_lesson_course`
--

LOCK TABLES `muu_re_courses_lesson_course` WRITE;
/*!40000 ALTER TABLE `muu_re_courses_lesson_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_re_courses_lesson_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_re_courses_tests_question_answer`
--

DROP TABLE IF EXISTS `muu_re_courses_tests_question_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_re_courses_tests_question_answer` (
  `ID_Question` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Answer` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Correct` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_re_courses_tests_question_answer`
--

LOCK TABLES `muu_re_courses_tests_question_answer` WRITE;
/*!40000 ALTER TABLE `muu_re_courses_tests_question_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_re_courses_tests_question_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_re_permissions_privileges`
--

DROP TABLE IF EXISTS `muu_re_permissions_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_re_permissions_privileges` (
  `ID_Privilege` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Application` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Adding` tinyint(1) NOT NULL DEFAULT '0',
  `Deleting` tinyint(1) NOT NULL DEFAULT '0',
  `Editing` tinyint(1) NOT NULL DEFAULT '0',
  `Viewing` tinyint(1) NOT NULL DEFAULT '0',
  KEY `ID_Privilege` (`ID_Privilege`),
  KEY `ID_Application` (`ID_Application`),
  CONSTRAINT `muu_re_permissions_privileges_ibfk_1` FOREIGN KEY (`ID_Privilege`) REFERENCES `muu_privileges` (`ID_Privilege`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `muu_re_permissions_privileges_ibfk_2` FOREIGN KEY (`ID_Application`) REFERENCES `muu_applications` (`ID_Application`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_re_permissions_privileges`
--

LOCK TABLES `muu_re_permissions_privileges` WRITE;
/*!40000 ALTER TABLE `muu_re_permissions_privileges` DISABLE KEYS */;
INSERT INTO `muu_re_permissions_privileges` VALUES (1,1,1,1,1,1),(1,2,1,1,1,1),(1,3,1,1,1,1),(1,5,1,1,1,1),(1,6,1,1,1,1),(1,7,1,1,1,1),(1,8,1,1,1,1),(1,9,1,1,1,1),(1,10,1,1,1,1),(1,11,1,1,1,1),(1,12,1,1,1,1),(1,13,1,1,1,1),(1,14,1,1,1,1),(1,15,1,1,1,1),(1,16,1,1,1,1),(2,1,1,1,1,1),(2,2,0,0,0,0),(2,3,1,1,1,1),(2,5,0,0,0,0),(2,6,0,0,0,0),(2,7,0,0,0,1),(2,8,1,1,1,1),(2,9,1,1,1,1),(2,10,1,1,1,1),(2,11,1,0,1,1),(2,12,1,1,1,1),(2,13,1,0,0,0),(2,14,1,1,1,1),(2,15,1,1,1,1),(2,16,1,1,1,1),(3,1,0,0,0,0),(3,2,0,0,0,0),(3,3,1,0,0,1),(3,5,0,0,0,0),(3,6,0,0,0,0),(3,7,0,0,0,0),(3,8,1,0,0,1),(3,9,0,0,0,0),(3,10,0,0,0,0),(3,11,1,0,0,1),(3,12,0,0,0,0),(3,13,0,0,0,0),(3,14,0,0,0,0),(3,15,0,0,0,0),(3,16,1,0,0,1),(4,1,0,0,0,0),(4,2,0,0,0,0),(4,3,0,0,0,0),(4,5,0,0,0,0),(4,6,0,0,0,0),(4,7,0,0,0,0),(4,8,0,0,0,0),(4,9,0,0,0,0),(4,10,0,0,0,0),(4,11,0,0,0,0),(4,12,0,0,0,0),(4,13,0,0,0,0),(4,14,0,0,0,0),(4,15,0,0,0,0),(4,16,0,0,0,0),(1,17,1,1,1,1),(2,17,1,1,1,1),(3,17,1,0,0,1),(4,17,0,0,0,0);
/*!40000 ALTER TABLE `muu_re_permissions_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_re_privileges_users`
--

DROP TABLE IF EXISTS `muu_re_privileges_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_re_privileges_users` (
  `ID_Privilege` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `ID_Privilege` (`ID_Privilege`),
  KEY `ID_User` (`ID_User`),
  CONSTRAINT `muu_re_privileges_users_ibfk_1` FOREIGN KEY (`ID_Privilege`) REFERENCES `muu_privileges` (`ID_Privilege`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `muu_re_privileges_users_ibfk_2` FOREIGN KEY (`ID_User`) REFERENCES `muu_users` (`ID_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_re_privileges_users`
--

LOCK TABLES `muu_re_privileges_users` WRITE;
/*!40000 ALTER TABLE `muu_re_privileges_users` DISABLE KEYS */;
INSERT INTO `muu_re_privileges_users` VALUES (1,1);
/*!40000 ALTER TABLE `muu_re_privileges_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_re_users_companies`
--

DROP TABLE IF EXISTS `muu_re_users_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_re_users_companies` (
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Company` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_re_users_companies`
--

LOCK TABLES `muu_re_users_companies` WRITE;
/*!40000 ALTER TABLE `muu_re_users_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_re_users_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_re_users_events`
--

DROP TABLE IF EXISTS `muu_re_users_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_re_users_events` (
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Event` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_re_users_events`
--

LOCK TABLES `muu_re_users_events` WRITE;
/*!40000 ALTER TABLE `muu_re_users_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_re_users_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_resumes`
--

DROP TABLE IF EXISTS `muu_resumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_resumes` (
  `ID_Resume` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Elementary_School` varchar(250) NOT NULL,
  `Middle_School` varchar(250) NOT NULL,
  `High_School` varchar(250) NOT NULL,
  `Collegue_University` varchar(250) NOT NULL,
  `Master` varchar(250) NOT NULL,
  `Doctorate` varchar(250) NOT NULL,
  `Languages` varchar(250) NOT NULL,
  `Employment` text NOT NULL,
  `Skills` text NOT NULL,
  `Courses` text NOT NULL,
  `Conferences` text NOT NULL,
  `Articles` text NOT NULL,
  `Photo` varchar(250) NOT NULL,
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `Last_Update` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Resume`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_resumes`
--

LOCK TABLES `muu_resumes` WRITE;
/*!40000 ALTER TABLE `muu_resumes` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_resumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_support`
--

DROP TABLE IF EXISTS `muu_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_support` (
  `ID_Ticket` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_Parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(250) NOT NULL,
  `Slug` varchar(250) NOT NULL,
  `Content` text NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Start_Date` int(11) NOT NULL DEFAULT '0',
  `Text_Date` varchar(40) NOT NULL,
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Ticket`),
  KEY `ID_User` (`ID_User`),
  CONSTRAINT `muu_support_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `muu_users` (`ID_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_support`
--

LOCK TABLES `muu_support` WRITE;
/*!40000 ALTER TABLE `muu_support` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_tokens`
--

DROP TABLE IF EXISTS `muu_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_tokens` (
  `ID_Token` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Token` varchar(40) NOT NULL,
  `Action` varchar(50) NOT NULL,
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `End_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `Situation` varchar(10) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Token`),
  KEY `ID_User` (`ID_User`),
  CONSTRAINT `muu_tokens_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `muu_users` (`ID_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_tokens`
--

LOCK TABLES `muu_tokens` WRITE;
/*!40000 ALTER TABLE `muu_tokens` DISABLE KEYS */;
INSERT INTO `muu_tokens` VALUES (1,1,'756d9920d7eca6a6794c2c1e703ec7c84739e986','Recover',1337732698,1337819098,'Inactive');
/*!40000 ALTER TABLE `muu_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_tutorials`
--

DROP TABLE IF EXISTS `muu_tutorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_tutorials` (
  `ID_Tutorial` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(150) NOT NULL,
  `Slug` varchar(150) NOT NULL,
  `URL` varchar(250) NOT NULL,
  `Content` text NOT NULL,
  `Start_Date` int(11) unsigned NOT NULL DEFAULT '0',
  `Text_Date` varchar(50) NOT NULL,
  `Views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Likes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Situation` varchar(10) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Tutorial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_tutorials`
--

LOCK TABLES `muu_tutorials` WRITE;
/*!40000 ALTER TABLE `muu_tutorials` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_tutorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_users`
--

DROP TABLE IF EXISTS `muu_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_users` (
  `ID_User` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Privilege` mediumint(8) NOT NULL DEFAULT '4',
  `Username` varchar(30) NOT NULL,
  `Pwd` varchar(40) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `Avatar` varchar(200) NOT NULL DEFAULT 'default.png',
  `Credits` mediumint(8) NOT NULL DEFAULT '0',
  `Recommendation` mediumint(8) NOT NULL DEFAULT '50',
  `Sign` text NOT NULL,
  `Messages` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Recieve_Messages` tinyint(1) NOT NULL DEFAULT '1',
  `Topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Codes` mediumint(8) NOT NULL DEFAULT '0',
  `Tutorials` mediumint(8) NOT NULL DEFAULT '0',
  `Jobs` mediumint(8) NOT NULL DEFAULT '0',
  `Subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `Start_Date` int(11) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `CURP` varchar(18) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Age` smallint(2) NOT NULL DEFAULT '18',
  `Title` varchar(200) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `Gender` varchar(1) NOT NULL DEFAULT 'M',
  `Relationship` varchar(30) NOT NULL DEFAULT 'Single',
  `Birthday` varchar(10) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `District` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Technologies` varchar(255) NOT NULL,
  `Twitter` varchar(150) NOT NULL,
  `Facebook` varchar(150) NOT NULL,
  `Linkedin` varchar(150) NOT NULL,
  `Viadeo` varchar(150) NOT NULL,
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_User`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_users`
--

LOCK TABLES `muu_users` WRITE;
/*!40000 ALTER TABLE `muu_users` DISABLE KEYS */;
INSERT INTO `muu_users` VALUES (1,1,'admin','b9223847e1566884893656e84798ff39cea2b8c4','carlos@milkzoft.com','','default.png',50,0,'',0,1,0,0,0,0,0,0,1,1337647712,'BC958D3C97','','','Carlos Santana Roldán',18,'','','','','0','M','Single','','','','','','','','','','Active');
/*!40000 ALTER TABLE `muu_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_users_online`
--

DROP TABLE IF EXISTS `muu_users_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_users_online` (
  `User` varchar(20) NOT NULL DEFAULT '',
  `Start_Date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`User`),
  KEY `Date_Start` (`Start_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_users_online`
--

LOCK TABLES `muu_users_online` WRITE;
/*!40000 ALTER TABLE `muu_users_online` DISABLE KEYS */;
INSERT INTO `muu_users_online` VALUES ('admin',1343934354);
/*!40000 ALTER TABLE `muu_users_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_users_online_anonymous`
--

DROP TABLE IF EXISTS `muu_users_online_anonymous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_users_online_anonymous` (
  `IP` varchar(20) NOT NULL DEFAULT '',
  `Start_Date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`IP`),
  KEY `Date_Start` (`Start_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_users_online_anonymous`
--

LOCK TABLES `muu_users_online_anonymous` WRITE;
/*!40000 ALTER TABLE `muu_users_online_anonymous` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_users_online_anonymous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_videos`
--

DROP TABLE IF EXISTS `muu_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_videos` (
  `ID_Video` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ID_User` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ID_YouTube` varchar(20) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Slug` varchar(150) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `URL` varchar(250) NOT NULL,
  `Server` varchar(25) NOT NULL DEFAULT 'YouTube',
  `Duration` varchar(10) NOT NULL,
  `Views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Start_Date` int(11) NOT NULL,
  `Text_Date` varchar(40) NOT NULL,
  `Situation` varchar(15) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Video`),
  KEY `ID_User` (`ID_User`),
  CONSTRAINT `muu_videos_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `muu_users` (`ID_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_videos`
--

LOCK TABLES `muu_videos` WRITE;
/*!40000 ALTER TABLE `muu_videos` DISABLE KEYS */;
INSERT INTO `muu_videos` VALUES (1,1,'jhP6vVc7Yts','Taller de CodeIgniter por www.codejobs.biz','taller-de-codeigniter-por-www-codejobs-biz','Taller de CodeIgniter por www.codejobs.biz','','YouTube','',0,1337743070,'Wednesday, 23 de Mayo de 2012','Active'),(2,1,'JtUCr-m8BSo','Introducción al Responsive Design por www.codejobs.biz','introduccion-al-responsive-design-por-www-codejobs-biz','Introducción al Responsive Design por www.codejobs.biz','','YouTube','',0,1337743070,'Wednesday, 23 de Mayo de 2012','Active'),(3,1,'SXHsN5GhdA0','Proyecto CANDI 3: Cómo crear un correo electro?nico en GMail','proyecto-candi-3-como-crear-un-correo-electro-nico-en-gmail','Explicación breve de cómo crear una cuenta de correo electrónico en GMail','','YouTube','',0,1337743070,'Wednesday, 23 de Mayo de 2012','Active'),(4,1,'t1BrjyAf3XE','Proyecto CANDI 2: Cómo crear una cuenta de correo electro?nico en Hotmail','proyecto-candi-2-como-crear-una-cuenta-de-correo-electro-nico-en-hotmail','Explicación breve de cómo crear una cuenta de correo electrónico en Hotmail','','YouTube','',0,1337743070,'Wednesday, 23 de Mayo de 2012','Active'),(5,1,'djg8B0TPh60','Proyecto CANDI 1: Instalacioón de Ubuntu 12.04 [www.codejobs.biz]','proyecto-candi-1-instalacion-de-ubuntu-12-04-www-codejobs-biz','Explicación sencilla de cómo instalar Ubuntu 12.04 en tu computadora.','','YouTube','',0,1337743070,'Wednesday, 23 de Mayo de 2012','Active'),(6,1,'JhHz0vyngN4','Presentación del Proyecto CANDI','presentacion-del-proyecto-candi','Presentación del Proyecto CANDI','','YouTube','',0,1337743070,'Wednesday, 23 de Mayo de 2012','Active'),(7,1,'XBYw9eWNd7c','Taller de Introducción a ZanPHP por www.codejobs.biz','taller-de-introduccion-a-zanphp-por-www-codejobs-biz','Taller de Introduccio?n a ZanPHP por www.codejobs.biz','','YouTube','',0,1337743070,'Wednesday, 23 de Mayo de 2012','Active'),(8,1,'-Wb0XcYjIxU','Introducción a las Bases de Datos NoSQL','introducci-n-a-las-bases-de-datos-nosql','','','YouTube','',0,1337743070,'Wednesday, 23 de Mayo de 2012','Active'),(9,1,'nN9NQRSG7iU','Taller de Github por www.codejobs.biz','taller-de-github-por-www-codejobs-biz','Taller de Github por www.codejobs.biz','','YouTube','',0,1337743070,'Wednesday, 23 de Mayo de 2012','Active');
/*!40000 ALTER TABLE `muu_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_works`
--

DROP TABLE IF EXISTS `muu_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_works` (
  `ID_Work` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Slug` varchar(100) NOT NULL,
  `Preview1` varchar(200) NOT NULL,
  `Preview2` varchar(200) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `URL` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Situation` varchar(10) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`ID_Work`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_works`
--

LOCK TABLES `muu_works` WRITE;
/*!40000 ALTER TABLE `muu_works` DISABLE KEYS */;
/*!40000 ALTER TABLE `muu_works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muu_world`
--

DROP TABLE IF EXISTS `muu_world`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muu_world` (
  `Continent` varchar(20) NOT NULL,
  `Code` varchar(5) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `District` varchar(100) NOT NULL,
  `Town` varchar(100) NOT NULL,
  KEY `District` (`District`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muu_world`
--

LOCK TABLES `muu_world` WRITE;
/*!40000 ALTER TABLE `muu_world` DISABLE KEYS */;
INSERT INTO `muu_world` VALUES ('America','ARG','Argentina','Buenos Aires',''),('America','ARG','Argentina','Catamarca',''),('America','ARG','Argentina','Chaco',''),('America','ARG','Argentina','Chubut',''),('America','ARG','Argentina','C',''),('America','ARG','Argentina','Corrientes',''),('America','ARG','Argentina','Distrito Federal',''),('America','ARG','Argentina','Entre Rios',''),('America','ARG','Argentina','Formosa',''),('America','ARG','Argentina','Jujuy',''),('America','ARG','Argentina','La Rioja',''),('America','ARG','Argentina','Mendoza',''),('America','ARG','Argentina','Misiones',''),('America','ARG','Argentina','Neuqu',''),('America','ARG','Argentina','Salta',''),('America','ARG','Argentina','San Juan',''),('America','ARG','Argentina','San Luis',''),('America','ARG','Argentina','Santa F',''),('America','ARG','Argentina','Santiago del Estero',''),('America','ARG','Argentina','Tucum',''),('America','BLZ','Belize','Belize City',''),('America','BLZ','Belize','Cayo',''),('America','BOL','Bolivia','Chuquisaca',''),('America','BOL','Bolivia','Cochabamba',''),('America','BOL','Bolivia','La Paz',''),('America','BOL','Bolivia','Oruro',''),('America','BOL','Bolivia','Potos',''),('America','BOL','Bolivia','Santa Cruz',''),('America','BOL','Bolivia','Tarija',''),('America','BRA','Brazil','Acre',''),('America','BRA','Brazil','Alagoas',''),('America','BRA','Brazil','Amap',''),('America','BRA','Brazil','Amazonas',''),('America','BRA','Brazil','Bahia',''),('America','BRA','Brazil','Cear',''),('America','BRA','Brazil','Distrito Federal',''),('America','BRA','Brazil','Esp',''),('America','BRA','Brazil','Goi',''),('America','BRA','Brazil','Maranh',''),('America','BRA','Brazil','Mato Grosso',''),('America','BRA','Brazil','Mato Grosso do Sul',''),('America','BRA','Brazil','Minas Gerais',''),('America','BRA','Brazil','Par',''),('America','BRA','Brazil','Para',''),('America','BRA','Brazil','Paran',''),('America','BRA','Brazil','Pernambuco',''),('America','BRA','Brazil','Piau',''),('America','BRA','Brazil','Rio de Janeiro',''),('America','BRA','Brazil','Rio Grande do Norte',''),('America','BRA','Brazil','Rio Grande do Sul',''),('America','BRA','Brazil','Rond',''),('America','BRA','Brazil','Roraima',''),('America','BRA','Brazil','Santa Catarina',''),('America','BRA','Brazil','S',''),('America','BRA','Brazil','Sergipe',''),('America','BRA','Brazil','Tocantins',''),('America','CAN','Canada','Alberta',''),('America','CAN','Canada','British Colombia',''),('America','CAN','Canada','Manitoba',''),('America','CAN','Canada','Newfoundland',''),('America','CAN','Canada','Nova Scotia',''),('America','CAN','Canada','Ontario',''),('America','CAN','Canada','Qu',''),('America','CAN','Canada','Saskatchewan',''),('America','CHL','Chile','Antofagasta',''),('America','CHL','Chile','Atacama',''),('America','CHL','Chile','B',''),('America','CHL','Chile','Coquimbo',''),('America','CHL','Chile','La Araucan',''),('America','CHL','Chile','Los Lagos',''),('America','CHL','Chile','Magallanes',''),('America','CHL','Chile','Maule',''),('America','CHL','Chile','Santiago',''),('America','CHL','Chile','Tarapac',''),('America','CHL','Chile','Valpara',''),('America','COL','Colombia','Antioquia',''),('America','COL','Colombia','Atl',''),('America','COL','Colombia','Bol',''),('America','COL','Colombia','Boyac',''),('America','COL','Colombia','Caldas',''),('America','COL','Colombia','Caquet',''),('America','COL','Colombia','Cauca',''),('America','COL','Colombia','Cesar',''),('America','COL','Colombia','C',''),('America','COL','Colombia','Cundinamarca',''),('America','COL','Colombia','Huila',''),('America','COL','Colombia','La Guajira',''),('America','COL','Colombia','Magdalena',''),('America','COL','Colombia','Meta',''),('America','COL','Colombia','Norte de Santander',''),('America','COL','Colombia','Quind',''),('America','COL','Colombia','Risaralda',''),('America','COL','Colombia','Santaf',''),('America','COL','Colombia','Santander',''),('America','COL','Colombia','Sucre',''),('America','COL','Colombia','Tolima',''),('America','COL','Colombia','Valle',''),('America','CRI','Costa Rica','San Jos',''),('America','CUB','Cuba','Ciego de ',''),('America','CUB','Cuba','Cienfuegos',''),('America','CUB','Cuba','Granma',''),('America','CUB','Cuba','Guant',''),('America','CUB','Cuba','Holgu',''),('America','CUB','Cuba','La Habana',''),('America','CUB','Cuba','Las Tunas',''),('America','CUB','Cuba','Matanzas',''),('America','CUB','Cuba','Pinar del R',''),('America','CUB','Cuba','Santiago de Cuba',''),('America','CUB','Cuba','Villa Clara',''),('America','CYM','Cayman Islands','Grand Cayman',''),('America','DMA','Dominica','St George',''),('America','DOM','Dominican Republic','Distrito Nacional',''),('America','DOM','Dominican Republic','Duarte',''),('America','DOM','Dominican Republic','La Romana',''),('America','DOM','Dominican Republic','Puerto Plata',''),('America','DOM','Dominican Republic','San Pedro de Macor',''),('America','DOM','Dominican Republic','Santiago',''),('America','ECU','Ecuador','Azuay',''),('America','ECU','Ecuador','Chimborazo',''),('America','ECU','Ecuador','El Oro',''),('America','ECU','Ecuador','Esmeraldas',''),('America','ECU','Ecuador','Guayas',''),('America','ECU','Ecuador','Imbabura',''),('America','ECU','Ecuador','Loja',''),('America','ECU','Ecuador','Los R',''),('America','ECU','Ecuador','Manab',''),('America','ECU','Ecuador','Pichincha',''),('America','ECU','Ecuador','Tungurahua',''),('America','SLV','El Salvador','La Libertad',''),('America','SLV','El Salvador','San Miguel',''),('America','SLV','El Salvador','San Salvador',''),('America','SLV','El Salvador','Santa Ana',''),('America','GTM','Guatemala','Guatemala',''),('America','GTM','Guatemala','Quetzaltenango',''),('America','HND','Honduras','Atl',''),('America','HND','Honduras','Cort',''),('America','HND','Honduras','Distrito Central',''),('America','MEX','Mexico','Aguascalientes',''),('America','MEX','Mexico','Baja California',''),('America','MEX','Mexico','Baja California Sur',''),('America','MEX','Mexico','Campeche',''),('America','MEX','Mexico','Chiapas',''),('America','MEX','Mexico','Chihuahua',''),('America','MEX','Mexico','Coahuila de Zaragoza',''),('America','MEX','Mexico','Colima',''),('America','MEX','Mexico','Colima','Armer'),('America','MEX','Mexico','Colima','Colima'),('America','MEX','Mexico','Colima','Comala'),('America','MEX','Mexico','Colima','Coquimatl'),('America','MEX','Mexico','Colima','Cuauht'),('America','MEX','Mexico','Colima','Ixtlahuac'),('America','MEX','Mexico','Colima','Manzanillo'),('America','MEX','Mexico','Colima','Minatitl'),('America','MEX','Mexico','Colima','Tecom'),('America','MEX','Mexico','Colima','Villa de '),('America','MEX','Mexico','Distrito Federal',''),('America','MEX','Mexico','Durango',''),('America','MEX','Mexico','Guanajuato',''),('America','MEX','Mexico','Guerrero',''),('America','MEX','Mexico','Hidalgo',''),('America','MEX','Mexico','Jalisco',''),('America','MEX','Mexico','M',''),('America','MEX','Mexico','Michoac',''),('America','MEX','Mexico','Morelos',''),('America','MEX','Mexico','Nayarit',''),('America','MEX','Mexico','Nuevo Le',''),('America','MEX','Mexico','Oaxaca',''),('America','MEX','Mexico','Puebla',''),('America','MEX','Mexico','Quer',''),('America','MEX','Mexico','Quer',''),('America','MEX','Mexico','Quintana Roo',''),('America','MEX','Mexico','San Luis Potos',''),('America','MEX','Mexico','Sinaloa',''),('America','MEX','Mexico','Sonora',''),('America','MEX','Mexico','Tabasco',''),('America','MEX','Mexico','Tamaulipas',''),('America','MEX','Mexico','Veracruz',''),('America','MEX','Mexico','Yucat',''),('America','MEX','Mexico','Zacatecas',''),('America','NIC','Nicaragua','Chinandega',''),('America','NIC','Nicaragua','Le',''),('America','NIC','Nicaragua','Managua',''),('America','NIC','Nicaragua','Masaya',''),('America','PAN','Panama','Panam',''),('America','PAN','Panama','San Miguelito',''),('America','PER','Peru','Ancash',''),('America','PER','Peru','Arequipa',''),('America','PER','Peru','Ayacucho',''),('America','PER','Peru','Cajamarca',''),('America','PER','Peru','Callao',''),('America','PER','Peru','Cusco',''),('America','PER','Peru','Huanuco',''),('America','PER','Peru','Ica',''),('America','PER','Peru','Jun',''),('America','PER','Peru','La Libertad',''),('America','PER','Peru','Lambayeque',''),('America','PER','Peru','Lima',''),('America','PER','Peru','Loreto',''),('America','PER','Peru','Piura',''),('America','PER','Peru','Puno',''),('America','PER','Peru','Tacna',''),('America','PER','Peru','Ucayali',''),('America','PRI','Puerto Rico','Arecibo',''),('America','PRI','Puerto Rico','Bayam',''),('America','PRI','Puerto Rico','Caguas',''),('America','PRI','Puerto Rico','Carolina',''),('America','PRI','Puerto Rico','Guaynabo',''),('America','PRI','Puerto Rico','Ponce',''),('America','PRI','Puerto Rico','San Juan',''),('America','PRI','Puerto Rico','Toa Baja',''),('America','PRY','Paraguay','Alto Paran',''),('America','PRY','Paraguay','Asunci',''),('America','PRY','Paraguay','Central',''),('America','URY','Uruguay','Montevideo',''),('America','USA','United Situations','Alabama',''),('America','USA','United Situations','Alaska',''),('America','USA','United Situations','Arizona',''),('America','USA','United Situations','Arkansas',''),('America','USA','United Situations','California',''),('America','USA','United Situations','Colorado',''),('America','USA','United Situations','Connecticut',''),('America','USA','United Situations','District of Columbia',''),('America','USA','United Situations','Florida',''),('America','USA','United Situations','Georgia',''),('America','USA','United Situations','Hawaii',''),('America','USA','United Situations','Idaho',''),('America','USA','United Situations','Illinois',''),('America','USA','United Situations','Indiana',''),('America','USA','United Situations','Iowa',''),('America','USA','United Situations','Kansas',''),('America','USA','United Situations','Kentucky',''),('America','USA','United Situations','Louisiana',''),('America','USA','United Situations','Maryland',''),('America','USA','United Situations','Massachusetts',''),('America','USA','United Situations','Michigan',''),('America','USA','United Situations','Minnesota',''),('America','USA','United Situations','Mississippi',''),('America','USA','United Situations','Missouri',''),('America','USA','United Situations','Montana',''),('America','USA','United Situations','Nebraska',''),('America','USA','United Situations','Nevada',''),('America','USA','United Situations','New Hampshire',''),('America','USA','United Situations','New Jersey',''),('America','USA','United Situations','New Mexico',''),('America','USA','United Situations','New York',''),('America','USA','United Situations','North Carolina',''),('America','USA','United Situations','Ohio',''),('America','USA','United Situations','Oklahoma',''),('America','USA','United Situations','Oregon',''),('America','USA','United Situations','Pennsylvania',''),('America','USA','United Situations','Rhode Island',''),('America','USA','United Situations','South Carolina',''),('America','USA','United Situations','South Dakota',''),('America','USA','United Situations','Tennessee',''),('America','USA','United Situations','Texas',''),('America','USA','United Situations','Utah',''),('America','USA','United Situations','Virginia',''),('America','USA','United Situations','Washington',''),('America','USA','United Situations','Wisconsin',''),('America','VEN','Venezuela','Anzo',''),('America','VEN','Venezuela','Apure',''),('America','VEN','Venezuela','Aragua',''),('America','VEN','Venezuela','Barinas',''),('America','VEN','Venezuela','Bol',''),('America','VEN','Venezuela','Carabobo',''),('America','VEN','Venezuela','Distrito Federal',''),('America','VEN','Venezuela','Falc',''),('America','VEN','Venezuela','Gu',''),('America','VEN','Venezuela','Lara',''),('America','VEN','Venezuela','M',''),('America','VEN','Venezuela','Miranda',''),('America','VEN','Venezuela','Monagas',''),('America','VEN','Venezuela','Portuguesa',''),('America','VEN','Venezuela','Sucre',''),('America','VEN','Venezuela','T',''),('America','VEN','Venezuela','Trujillo',''),('America','VEN','Venezuela','Yaracuy',''),('America','VEN','Venezuela','Zulia',''),('Europe','BEL','Belgium','Antwerpen',''),('Europe','BEL','Belgium','Bryssel',''),('Europe','BEL','Belgium','East Flanderi',''),('Europe','BEL','Belgium','Hainaut',''),('Europe','BEL','Belgium','Namur',''),('Europe','BEL','Belgium','West Flanderi',''),('Europe','FRA','France','Alsace',''),('Europe','FRA','France','Aquitaine',''),('Europe','FRA','France','Auvergne',''),('Europe','FRA','France','Basse-Normandie',''),('Europe','FRA','France','Bourgogne',''),('Europe','FRA','France','Bretagne',''),('Europe','FRA','France','Centre',''),('Europe','FRA','France','Limousin',''),('Europe','FRA','France','Lorraine',''),('Europe','FRA','France','Pays de la Loire',''),('Europe','FRA','France','Picardie',''),('Europe','FRA','France','Rh',''),('Europe','DEU','Germany','Anhalt Sachsen',''),('Europe','DEU','Germany','Baijeri',''),('Europe','DEU','Germany','Berliini',''),('Europe','DEU','Germany','Brandenburg',''),('Europe','DEU','Germany','Bremen',''),('Europe','DEU','Germany','Hamburg',''),('Europe','DEU','Germany','Hessen',''),('Europe','DEU','Germany','Mecklenburg-Vorpomme',''),('Europe','DEU','Germany','Niedersachsen',''),('Europe','DEU','Germany','Nordrhein-Westfalen',''),('Europe','DEU','Germany','Rheinland-Pfalz',''),('Europe','DEU','Germany','Saarland',''),('Europe','DEU','Germany','Saksi',''),('Europe','DEU','Germany','Schleswig-Holstein',''),('Europe','ITA','Italy','Abruzzit',''),('Europe','ITA','Italy','Apulia',''),('Europe','ITA','Italy','Calabria',''),('Europe','ITA','Italy','Campania',''),('Europe','ITA','Italy','Emilia-Romagna',''),('Europe','ITA','Italy','Friuli-Venezia Giuli',''),('Europe','ITA','Italy','Latium',''),('Europe','ITA','Italy','Liguria',''),('Europe','ITA','Italy','Lombardia',''),('Europe','ITA','Italy','Marche',''),('Europe','ITA','Italy','Piemonte',''),('Europe','ITA','Italy','Sardinia',''),('Europe','ITA','Italy','Sisilia',''),('Europe','ITA','Italy','Toscana',''),('Europe','ITA','Italy','Umbria',''),('Europe','ITA','Italy','Veneto',''),('Europe','PRT','Portugal','Braga',''),('Europe','PRT','Portugal','Co',''),('Europe','PRT','Portugal','Lisboa',''),('Europe','PRT','Portugal','Porto',''),('Europe','ESP','Spain','Andalusia',''),('Europe','ESP','Spain','Aragonia',''),('Europe','ESP','Spain','Asturia',''),('Europe','ESP','Spain','Balears',''),('Europe','ESP','Spain','Baskimaa',''),('Europe','ESP','Spain','Canary Islands',''),('Europe','ESP','Spain','Cantabria',''),('Europe','ESP','Spain','Castilla and Le',''),('Europe','ESP','Spain','Extremadura',''),('Europe','ESP','Spain','Galicia',''),('Europe','ESP','Spain','Katalonia',''),('Europe','ESP','Spain','La Rioja',''),('Europe','ESP','Spain','Madrid',''),('Europe','ESP','Spain','Murcia',''),('Europe','ESP','Spain','Navarra',''),('Europe','ESP','Spain','Valencia',''),('Europe','CHE','Switzerland','Bern',''),('Europe','CHE','Switzerland','Geneve',''),('Europe','CHE','Switzerland','Vaud',''),('Europe','GBR','United Kingdom','England',''),('Europe','GBR','United Kingdom','Jersey',''),('Europe','GBR','United Kingdom','North Ireland',''),('Europe','GBR','United Kingdom','Scotland',''),('Europe','GBR','United Kingdom','Wales',''),('Oceania','AUS','Australia','Capital Region',''),('Oceania','AUS','Australia','New South Wales',''),('Oceania','AUS','Australia','Queensland',''),('Oceania','AUS','Australia','South Australia',''),('Oceania','AUS','Australia','Tasmania',''),('Oceania','AUS','Australia','Victoria',''),('Oceania','AUS','Australia','West Australia',''),('Oceania','NZL','New Zealand','Auckland',''),('Oceania','NZL','New Zealand','Canterbury',''),('Oceania','NZL','New Zealand','Dunedin',''),('Oceania','NZL','New Zealand','Hamilton',''),('Oceania','NZL','New Zealand','Wellington','');
/*!40000 ALTER TABLE `muu_world` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-03  8:20:42
