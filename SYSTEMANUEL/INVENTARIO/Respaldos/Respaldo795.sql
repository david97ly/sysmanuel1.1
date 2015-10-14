-- MySQL dump 10.13  Distrib 5.1.56, for Win32 (ia32)
--
-- Host: localhost    Database: manuelbd
-- ------------------------------------------------------
-- Server version	5.1.56-community

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
-- Current Database: `manuelbd`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `manuelbd` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `manuelbd`;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (13,'Electricidad','Electricidad'),(21,'Electrónica','Electrónica'),(20,'Albañilería','Albañilería'),(19,'Fontanería','Fontanería'),(18,'Herrageria','Herrageria'),(22,'Decoración','Decoración'),(23,'Carpintería','Carpintería'),(24,'Estructuras Metálicas','Estructuras Metálicas'),(25,'Artesanía','Artesanía'),(26,'Limpieza','Limpieza'),(27,'Zapatero','Zapatero'),(28,'Construcción','Construcción'),(29,'Jardinería','Jardinería'),(30,'Automotriz','Automotriz'),(31,'Mecánica','Mecánica'),(32,'Cristalería','Cristalería'),(33,'Artículos Varios','Artículos Varios'),(34,'Iluminación','Iluminación');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `nit` varchar(250) DEFAULT NULL,
  `nrc` varchar(250) DEFAULT NULL,
  `giro` varchar(250) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `telefono` varchar(250) DEFAULT NULL,
  `fax` varchar(250) DEFAULT NULL,
  `e_mail` varchar(250) DEFAULT NULL,
  `estado` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`codcliente`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (4,'ACEPROS','otro','otro','otros','Cara Sucia San Francisco Menéndez Ahuachapán','25468325','','','Activo');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientescf`
--

DROP TABLE IF EXISTS `clientescf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientescf` (
  `idclientescf` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idclientescf`)
) ENGINE=MyISAM AUTO_INCREMENT=5420 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientescf`
--

LOCK TABLES `clientescf` WRITE;
/*!40000 ALTER TABLE `clientescf` DISABLE KEYS */;
INSERT INTO `clientescf` VALUES (5408,''),(5409,''),(5410,''),(5411,''),(5412,''),(5413,''),(5414,''),(5415,''),(5416,''),(5417,''),(5418,''),(5419,'Gerson');
/*!40000 ALTER TABLE `clientescf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuraciones`
--

DROP TABLE IF EXISTS `configuraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuraciones` (
  `id_config` int(11) NOT NULL,
  `tirage_fact` varchar(250) DEFAULT NULL,
  `tirage_compro` varchar(250) DEFAULT NULL,
  `tirage_fact_actual` varchar(250) DEFAULT NULL,
  `tirage_compro_actual` varchar(250) DEFAULT NULL,
  `numfact` varchar(250) DEFAULT NULL,
  `numcompro` varchar(250) DEFAULT NULL,
  `iva` decimal(8,0) DEFAULT NULL,
  `cotrans` decimal(8,0) DEFAULT NULL,
  `porce_iva_ret` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`id_config`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuraciones`
--

LOCK TABLES `configuraciones` WRITE;
/*!40000 ALTER TABLE `configuraciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuraciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `cod_departamento` int(11) NOT NULL,
  `departamentos` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_departamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Ahuachapán'),(2,'Santa Ana'),(3,'Sonsonate'),(4,'Chalatenango'),(5,'Cuscatlán'),(6,'San Salvador'),(7,'La Libertad'),(8,'San Vicente'),(9,'La Paz'),(10,'Cabañas'),(11,'Usulután'),(12,'San Miguel'),(13,'Morazán'),(14,'La Unión');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallecompra`
--

DROP TABLE IF EXISTS `detallecompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallecompra` (
  `coddetallefacturac` int(11) NOT NULL AUTO_INCREMENT,
  `codfacturac` int(11) DEFAULT NULL,
  `codproducto` varchar(500) DEFAULT NULL,
  `cantidadunit` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `precioreal` double DEFAULT NULL,
  `preciodescuento` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `total1` double DEFAULT NULL,
  `preciopublico` double DEFAULT NULL,
  PRIMARY KEY (`coddetallefacturac`),
  KEY `codfacturac` (`codfacturac`),
  KEY `codproducto` (`codproducto`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallecompra`
--

LOCK TABLES `detallecompra` WRITE;
/*!40000 ALTER TABLE `detallecompra` DISABLE KEYS */;
INSERT INTO `detallecompra` VALUES (3,2,'6008529',10,0,0,0,159.292,0,15.93),(4,2,'7008529',2,0,0,0,31.8584,0,15.93),(7,3,'3680',1,0,0,0,95.5752,0,95.58),(8,4,'736501',10,0,0,0,6.018,0,0.6),(9,4,'737301',6,0,0,0,2.3892,0,0.4),(10,4,'738101',6,0,0,0,2.3892,0,0.4),(11,4,'752901',6,0,0,0,4.779,0,0.8),(13,4,'757901',6,0,0,0,1.8582,0,0.31),(14,5,'1079729',2,0,0,0,38.938,0,19.47),(15,5,'1302929',3,0,0,0,58.407,0,19.47),(16,5,'1548515',2,0,0,0,18.1416,0,9.07),(17,5,'1748530',12,0,0,0,19.8588,0,1.65),(18,5,'1761030',12,0,0,0,19.8588,0,1.65),(19,5,'1761130',40,0,0,0,66.196,0,1.65),(45,8,'1618201',6,0,0,0,1.3272,0,0.22),(43,8,'1057201',6,0,0,0,2.0706,0,0.35),(44,8,'1534701',10,0,0,0,1.858,0,0.19),(24,7,'737801',6,0,0,0,1.1148,0,0.19),(25,7,'757501',15,0,0,0,3.186,0,0.21),(26,7,'762801',15,0,0,0,5.31,0,0.35),(27,7,'1024101',4,0,0,0,2.6548,0,0.66),(28,7,'1411301',3,0,0,0,2.2566,0,0.75),(29,7,'4501',6,0,0,0,3.6108,0,0.6),(30,7,'2368201',6,0,0,0,4.1418,0,0.69),(31,7,'7678001',6,0,0,0,2.124,0,0.35),(32,7,'7679001',6,0,0,0,2.283,0,0.38),(33,7,'9383001',6,0,0,0,1.593,0,0.27),(34,8,'383001',10,0,0,0,2.035,0,0.2),(35,8,'736201',25,0,0,0,4.425,0,0.18),(36,8,'738201',6,0,0,0,3.186,0,0.53),(37,8,'738901',25,0,0,0,3.0975,0,0.12),(38,8,'757201',25,0,0,0,2.2125,0,0.09),(39,8,'757301',12,0,0,0,1.5924,0,0.13),(40,8,'762601',25,0,0,0,3.76,0,0.15),(41,8,'762701',12,0,0,0,2.6544,0,0.22),(42,8,'763101',6,0,0,0,7.4334,0,1.24),(46,8,'9943579',6,0,0,0,6,0,1),(47,8,'14703329',6,0,0,0,49.3806,0,8.23),(48,8,'21349301',3,0,0,0,3.8496,0,1.28),(49,9,'736601',12,0,0,0,10.62,0,0.88),(50,9,'757901',25,0,0,0,7.7425,0,0.31),(51,10,'4079',5,0,0,0,10.177,0,2.04),(52,10,'9383001',15,0,0,0,3.9825,0,0.27),(53,11,'3270',4,0,0,0,27.4336,0,6.86),(54,12,'0046',80,0,0,0,365.048,0,4.56),(55,13,'4079',5,0,0,0,10.177,0,2.04),(56,13,'9383001',15,0,0,0,3.9825,0,0.27),(57,14,'4079',5,0,0,0,10.177,0,2.04),(58,14,'9383001',15,0,0,0,3.9825,0,0.27),(59,15,'3270',4,0,0,0,27.4336,0,6.86),(60,16,'0046',80,0,0,0,365.048,0,4.56),(61,17,'737801',6,0,0,0,1.1148,0,0.19),(62,17,'757501',15,0,0,0,3.186,0,0.21),(63,17,'762801',15,0,0,0,5.31,0,0.35),(64,17,'1024101',4,0,0,0,2.6548,0,0.66),(65,17,'1411301',3,0,0,0,2.2566,0,0.75),(66,17,'4501',6,0,0,0,3.6108,0,0.6),(67,17,'2368201',6,0,0,0,4.1418,0,0.69),(68,17,'7678001',6,0,0,0,2.124,0,0.35),(69,17,'7679001',6,0,0,0,2.283,0,0.38),(70,17,'9383001',6,0,0,0,1.593,0,0.27),(71,18,'383001',10,0,0,0,2.035,0,0.2),(72,18,'736201',25,0,0,0,4.425,0,0.18),(73,18,'738201',6,0,0,0,3.186,0,0.53),(74,18,'738901',25,0,0,0,3.0975,0,0.12),(75,18,'757201',25,0,0,0,2.2125,0,0.09),(76,18,'757301',12,0,0,0,1.5924,0,0.13),(77,18,'762601',25,0,0,0,3.76,0,0.15),(78,18,'762701',12,0,0,0,2.6544,0,0.22),(79,18,'763101',6,0,0,0,7.4334,0,1.24),(80,18,'1057201',6,0,0,0,2.0706,0,0.35),(81,18,'1534701',10,0,0,0,1.858,0,0.19),(82,18,'1618201',6,0,0,0,1.3272,0,0.22),(83,18,'9943579',6,0,0,0,6,0,1),(84,18,'14703329',6,0,0,0,49.3806,0,8.23),(85,18,'21349301',3,0,0,0,3.8496,0,1.28),(86,19,'736601',12,0,0,0,10.62,0,0.88),(87,19,'757901',25,0,0,0,7.7425,0,0.31),(88,20,'RB0350',2,0,0,0,1.68,0,0.84),(89,20,'RB0351',2,0,0,0,1.68,0,0.84),(90,20,'RB0352',2,0,0,0,1.68,0,0.84),(91,20,'RB0380',3,0,0,0,1.73,0,0.58),(92,20,'RB2540',3,0,0,0,1.73,0,0.58),(93,20,'RB2553',6,0,0,0,5.73,0,0.96),(94,20,'RL00344',3,0,0,0,13.27,0,4.42),(95,21,'9346',6,0,0,0,3.72,0,0.62),(96,21,'5361',1,0,0,0,6.18,0,6.18),(97,21,'4309',3,0,0,0,2.85,0,0.95),(98,21,'4308',3,0,0,0,3.84,0,1.28),(99,21,'0372',3,0,0,0,5.4,0,1.8),(100,21,'5363',1,0,0,0,11.3,0,11.3),(101,21,'4305',3,0,0,0,2.7,0,0.9),(102,21,'5362',1,0,0,0,8.93,0,8.93),(103,21,'5364',1,0,0,0,18.52,0,18.52),(104,21,'6470',3,0,0,0,9.12,0,3.04),(105,22,'2973',12,0,0,0,7.44,0,0.62),(106,22,'2974',12,0,0,0,8.52,0,0.71),(107,22,'2805',3,0,0,0,9.42,0,3.14),(108,22,'8486',12,0,0,0,2.88,0,0.24),(109,23,'2973',12,0,0,0,7.44,0,0.62),(110,23,'2974',12,0,0,0,8.52,0,0.71),(111,23,'2805',3,0,0,0,9.42,0,3.14),(112,23,'8486',12,0,0,0,2.88,0,0.24),(113,24,'9056',3,0,0,0,9.12,0,3.04),(114,24,'3988',6,0,0,0,2.88,0,0.48),(115,24,'3986',3,0,0,0,5.4,0,1.8),(116,25,'RB0350',2,0,0,0,1.68,0,0.84),(117,25,'RB0351',2,0,0,0,1.68,0,0.84),(118,25,'RB0352',2,0,0,0,1.68,0,0.84),(119,25,'RB0380',3,0,0,0,1.73,0,0.5767),(120,26,'2586',12,0,0,0,9.12,0,0.76),(121,26,'4863',1,0,0,0,5.7,0,5.7),(122,25,'RB2540',3,0,0,0,1.73,0,0.5767),(123,25,'RB2553',6,0,0,0,5.73,0,0.955),(124,26,'6941',12,0,0,0,11.4,0,0.95),(125,25,'RL00344',3,0,0,0,13.27,0,4.4233),(126,27,'0062',10,0,0,0,11.061,0,1.1061),(127,28,'h001',500,0,0,0,641.59,0,1.2832),(128,28,'h004',20,0,0,0,61.95,0,3.0975),(129,29,'1600',4,0,0,0,61.06,0,15.265),(130,30,'JR294A',10,0,0,0,84.07,0,8.407),(131,30,'R055',12,0,0,0,7.43,0,0.6192),(132,30,'415H',3,0,0,0,1.46,0,0.4867),(133,30,'626A',3,0,0,0,12.42,0,4.14),(134,30,'0059',3,0,0,0,6.11,0,2.0367),(135,30,'0060',3,0,0,0,4.25,0,1.4167),(136,30,'96A3',1,0,0,0,61.06,0,61.06),(137,31,'JR294A',10,0,0,0,84.07,0,8.407),(138,31,'R055',12,0,0,0,7.43,0,0.6192),(139,31,'415H',3,0,0,0,1.46,0,0.4867),(140,31,'626A',3,0,0,0,12.42,0,4.14),(141,31,'0059',3,0,0,0,6.11,0,2.0367),(142,31,'0060',3,0,0,0,4.25,0,1.4167),(143,31,'96A3',1,0,0,0,61.06,0,61.06),(144,32,'1112',1,0,0,0,31.99,0,31.99),(145,32,'1113',1,0,0,0,15.3,0,15.3),(146,32,'1114',50,0,0,0,7.5,0,0.15),(149,32,'1115',20,0,0,0,19.3,0,0.965),(150,33,'JR294A',10,0,0,0,84.07,0,8.407),(151,33,'R055',12,0,0,0,7.43,0,0.6192),(152,33,'415H',3,0,0,0,1.46,0,0.4867),(153,33,'0059',3,0,0,0,12.42,0,4.14),(154,33,'0060',3,0,0,0,6.11,0,2.0367);
/*!40000 ALTER TABLE `detallecompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleventa`
--

DROP TABLE IF EXISTS `detalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleventa` (
  `coddetallefacturav` int(11) NOT NULL AUTO_INCREMENT,
  `codfacturav` int(11) DEFAULT NULL,
  `codproducto` varchar(500) DEFAULT NULL,
  `cantidadunit` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `precioreal` double DEFAULT NULL,
  `preciodescuento` decimal(6,3) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `total1` double DEFAULT NULL,
  `preciopublico` double DEFAULT NULL,
  PRIMARY KEY (`coddetallefacturav`),
  KEY `codfacturav` (`codfacturav`),
  KEY `codproducto` (`codproducto`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleventa`
--

LOCK TABLES `detalleventa` WRITE;
/*!40000 ALTER TABLE `detalleventa` DISABLE KEYS */;
INSERT INTO `detalleventa` VALUES (166,97,'9268',12,0,0,'0.000',31.2,0,2.6),(167,97,'1111',50,0,0,'0.000',35,0,0.7);
/*!40000 ALTER TABLE `detalleventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion` (
  `id_direcciones` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(1000) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_direcciones`),
  KEY `id_municipio` (`id_municipio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturacompra`
--

DROP TABLE IF EXISTS `facturacompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturacompra` (
  `codfacturac` int(11) NOT NULL AUTO_INCREMENT,
  `numfacturac` int(11) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `codproveedor` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `sumas` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `nosujeta` double DEFAULT NULL,
  `exentas` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `formadepago` varchar(50) DEFAULT NULL,
  `unoretencion` double DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `tiraje` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codfacturac`),
  KEY `codproveedor` (`codproveedor`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacompra`
--

LOCK TABLES `facturacompra` WRITE;
/*!40000 ALTER TABLE `facturacompra` DISABLE KEYS */;
INSERT INTO `facturacompra` VALUES (2,471367,'Comprobante de Credito fiscal',8,'2015-09-02',191.15,0,24.85,0,0,216,'Credito',0,'valida','15DS000U'),(3,471825,'Comprobante de Credito fiscal',8,'2015-09-02',95.58,0,12.43,0,0,108.01,'Credito',0,'valida','15DS000U'),(4,471446,'Comprobante de Credito fiscal',8,'2015-09-02',17.44,0,2.27,0,0,19.71,'Credito',0,'valida','15DS000U'),(5,471487,'Comprobante de Credito fiscal',8,'2015-09-02',221.41,0,28.78,0,0,250.19,'Credito',0,'valida','15DS000U'),(7,471483,'Comprobante de Credito fiscal',8,'2015-09-02',28.26,0,3.67,0,0,31.93,'Credito',0,'valida','15DS000U'),(8,471478,'Comprobante de Credito fiscal',8,'2015-09-02',94.88,0,12.33,0,0,107.21,'Credito',0,'valida','15DS000U'),(9,470057,'Comprobante de Credito fiscal',8,'2015-09-02',18.36,0,2.39,0,0,20.75,'Credito',0,'valida','15DS000U'),(10,482124,'Comprobante de Credito fiscal',8,'2015-09-02',14.16,0,1.84,0,0,16,'Credito',0,'valida','15DS000U'),(11,481925,'Comprobante de Credito fiscal',8,'2015-09-02',27.43,0,3.57,0,0,31,'Credito',0,'valida','15DS000U'),(12,481929,'Comprobante de Credito fiscal',8,'2015-09-29',365.05,0,47.46,0,0,412.51,'Credito',0,'valida','15DS000U'),(20,132,'Comprobante de Credito fiscal',18,'2015-09-18',27.5,0,3.58,0,0,31.08,'Credito',0,'valida','15AS002C'),(21,8891,'Comprobante de Credito fiscal',14,'2015-09-22',72.56,0,9.43,0,0,81.99,'Contado',0,'valida','15DS000C'),(23,7085,'Comprobante de Credito fiscal',14,'2015-09-08',28.26,0,3.67,0,0,31.93,'Contado',0,'valida','15DS000C'),(24,10001,'Comprobante de Credito fiscal',14,'2015-09-29',17.4,0,2.26,0,0,19.66,'Contado',0,'valida','15DS000C'),(25,132,'Comprobante de Credito fiscal',18,'2015-09-18',27.5,0,3.58,0,0,31.08,'Credito',0,'valida','15AS002C'),(26,10001,'Comprobante de Credito fiscal',14,'2015-09-29',26.22,0,3.41,0,0,29.63,'Contado',0,'valida','15DS000C'),(27,3221,'Comprobante de Credito fiscal',26,'2015-09-01',11.06,0,1.44,0,0,12.5,'Contado',0,'valida','12CH002C'),(28,3395,'Comprobante de Credito fiscal',17,'2015-09-01',703.54,0,91.46,0,0,795,'Contado',0,'valida','14SD000C'),(29,0,'0',0,'2015-09-29',0,0,0,0,0,0,'0',0,'valida','0'),(30,707,'Comprobante de Credito fiscal',25,'2015-09-16',176.8,0,22.98,0,0,199.78,'Credito',0,'valida','15AS000C'),(31,707,'Comprobante de Credito fiscal',25,'2015-09-16',176.8,0,22.98,0,0,199.78,'Credito',0,'valida','15AS000C'),(32,0,'0',0,'2015-10-06',0,0,0,0,0,0,'0',0,'valida','0'),(33,0,'0',0,'2015-09-16',0,0,0,0,0,0,'0',0,'valida','0');
/*!40000 ALTER TABLE `facturacompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturaventa`
--

DROP TABLE IF EXISTS `facturaventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturaventa` (
  `codfacturav` int(11) NOT NULL AUTO_INCREMENT,
  `numfacturav` int(11) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `codcliente` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `sumas` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `nosujeta` double DEFAULT NULL,
  `exentas` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `formadepago` varchar(50) DEFAULT NULL,
  `unoretencion` double DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `tiraje` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codfacturav`),
  KEY `codcliente` (`codcliente`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturaventa`
--

LOCK TABLES `facturaventa` WRITE;
/*!40000 ALTER TABLE `facturaventa` DISABLE KEYS */;
INSERT INTO `facturaventa` VALUES (97,335,'Factura',5419,'2015-10-08 00:00:00',66.2,0,0,0,0,66.2,'Contado',NULL,'valida','15HC001F');
/*!40000 ALTER TABLE `facturaventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp`
--

DROP TABLE IF EXISTS `grp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grp` (
  `IdGrp` int(11) NOT NULL AUTO_INCREMENT,
  `cGrp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IdGrp`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp`
--

LOCK TABLES `grp` WRITE;
/*!40000 ALTER TABLE `grp` DISABLE KEYS */;
INSERT INTO `grp` VALUES (1,'Administrador'),(2,'SUPER USUARIO'),(3,'VENDEDOR');
/*!40000 ALTER TABLE `grp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grpusr`
--

DROP TABLE IF EXISTS `grpusr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grpusr` (
  `IdGrpUsr` int(11) NOT NULL AUTO_INCREMENT,
  `IdGrp` int(11) NOT NULL,
  `IdUsr` varchar(15) NOT NULL,
  PRIMARY KEY (`IdGrpUsr`),
  KEY `IdGrp` (`IdGrp`),
  KEY `IdUsr` (`IdUsr`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grpusr`
--

LOCK TABLES `grpusr` WRITE;
/*!40000 ALTER TABLE `grpusr` DISABLE KEYS */;
INSERT INTO `grpusr` VALUES (1,1,'admin'),(2,3,'usuario1'),(3,2,'super');
/*!40000 ALTER TABLE `grpusr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `IdOpc` int(11) NOT NULL AUTO_INCREMENT,
  `cNomOpc` varchar(20) DEFAULT NULL,
  `nIdBar` int(11) DEFAULT NULL,
  `cAccion` varchar(50) DEFAULT NULL,
  `cDescripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdOpc`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Maestros',0,'Ninguna','Maestros'),(2,'Grupos',1,'mGrupo','Maestro Grupos'),(3,'Usuarios',1,'mUsuarios','Maestro de usuarios'),(4,'Menu',1,'mMenu','Maestro del menu'),(5,'Configuracion',0,'Ninguna','Configuracion'),(6,'Grupos de usuarios',5,'frmUsuarios','Grupos de usuarios'),(7,'Permisos',5,'frmPermisos','Permisos'),(8,'Mantenimiento',0,'Ninguna','Menu mantenimiento'),(9,'Productos',8,'Productos','Mustra los productos'),(10,'Proveedores',8,'Proveedores','Muestra los proveedores'),(21,'Configuraciones',8,'Configuraciones','muestra las configuraciones'),(12,'Movimientos',0,'Ninguna','Nada'),(13,'Compras',12,'compra','facturas compras'),(14,'Ventas',12,'Ventas','Facturas ventas'),(15,'Clientes',8,'Clientes','Clientes'),(16,'Documentos',0,'Ninguna','para ver docuentos'),(17,'Compras realizadas',16,'Compras_realizadas','muestra las compras realizadas'),(18,'Ventas Realizadas',16,'VentasRealizadas','muestra las ventas realizadas'),(19,'Kardex',16,'Kardex','muestra el kardez'),(20,'Reportes',16,'Reportes','Muestra las distintos reportez'),(22,'Respaldos',8,'Respaldos','Hace respaldo del al base de datos'),(23,'Compras y Ventas',12,'VentasCompras','Para ver las compras y las ventas '),(24,'Cotizar',0,'Ventas','para cotizar');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipios`
--

DROP TABLE IF EXISTS `municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipios` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `municipio` varchar(50) DEFAULT NULL,
  `cod_departamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `cod_departamento` (`cod_departamento`)
) ENGINE=MyISAM AUTO_INCREMENT=264 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipios`
--

LOCK TABLES `municipios` WRITE;
/*!40000 ALTER TABLE `municipios` DISABLE KEYS */;
INSERT INTO `municipios` VALUES (1,'Ahuachapán',1),(2,'Jujutla',1),(3,'Atiquizaya',1),(4,'Concepción de Ataco',1),(5,'El Refugio',1),(6,'Guaymango',1),(7,'Apaneca',1),(8,'San Francisco Menéndez',1),(9,'San Lorenzo',1),(10,'San Pedro Puxtla',1),(11,'Tacuba',1),(12,'Turín',1),(13,'Candelaria de la Frontera',2),(14,'Chalchuapa',2),(15,'Coatepeque',2),(16,'El Congo',2),(17,'El Porvenir',2),(18,'Masahuat',2),(19,'Metapán',2),(20,'San Antonio Pajonal',2),(21,'San Sebastián Salitrillo',2),(22,'Santa Ana',2),(23,'Santa Rosa Guachipilín',2),(24,'Santiago de la Frontera',2),(25,'Texistepeque',2),(26,'Acajutla',3),(27,'Armenia',3),(28,'Caluco',3),(29,'Cuisnahuat',3),(30,'Izalco',3),(31,'Juayúa',3),(32,'Nahuizalco',3),(33,'Nahulingo',3),(34,'Salcoatitán',3),(35,'San antonio del Monte',3),(36,'San Julián',3),(37,'Santa Catarina Masahuat',3),(38,'Santa Isabel Ishuatán',3),(39,'Santo Domingo',3),(40,'Sonsonate',3),(41,'Sonzacate',3),(42,'Agua Caliente',4),(43,'Arcatao',4),(44,'Azacualpa',4),(45,'Chalatenango',4),(46,'Citalá',4),(47,'Comalapa',4),(48,'Concepción Quezaltepeque',4),(49,'Dulce Nombre de Maria',4),(50,'El Carrizal',4),(51,'El Paraíso',4),(52,'La Laguna',4),(53,'La Palma',4),(54,'La Reina',4),(55,'Las Vueltas',4),(56,'Nueva Concepción',4),(57,'Nueva Trinidad',4),(58,'Nombre de Jesús',4),(59,'Ojos de Agua',4),(60,'Potonico',4),(61,'San Antonio de la Cruz',4),(62,'San Antonio Los Ranchos',4),(63,'San Fernando',4),(64,'San Francisco Lempa',4),(65,'San Francisco Morazán',4),(66,'San Ignacio',4),(67,'San Isidro Labrador',4),(68,'San José Cancasque',4),(69,'San José Las Flores',4),(70,'San Luis del Carmen',4),(71,'San Miguel de Mercedes',4),(72,'San Rafael',4),(73,'Santa Rita',4),(74,'Tejutla',4),(75,'Candelaria',5),(76,'Cojutepeque',5),(77,'El Carmen',5),(78,'El Rosario',5),(79,'Monte San Juan',5),(80,'Oratorio de Concepción',5),(81,'San Bartolomé Perulapía',5),(82,'San Cristóbal',5),(83,'San José Guayabal',5),(84,'San Pedro Perulapán ',5),(85,'San Rafael Cedros',5),(86,'San Ramón',5),(87,'Santa Cruz Analquito',5),(88,'Santa Cruz Michapa',5),(89,'Suchitoto',5),(90,'Tenancingo',5),(91,'Aguilares',6),(92,'Apopa',6),(93,'Ayutuxtepeque',6),(94,'Cuscatancingo',6),(95,'Delgado',6),(96,'El Paisnal',6),(97,'Guazapa',6),(98,'Ilopango',6),(99,'Mejicanos',6),(100,'Nejapa',6),(101,'Panchimalco',6),(102,'Rosario de Mora',6),(103,'San Marcos',6),(104,'San Martín',6),(105,'San Salvador',6),(106,'Santiago Texacungos',6),(107,'Santo Tomás',6),(108,'Santo Tomás',6),(109,'Soyapango',6),(110,'Tonacatepeque',6),(111,'Antiguo Cuscatlán',7),(112,'Chitiupán',7),(113,'Ciudad Arce',7),(114,'Colón',7),(115,'Comasagua',7),(116,'Huizúcar',7),(117,'Jayaque',7),(118,'Jicalapa',7),(119,'La Libertad',7),(120,'Santa Tecla',7),(121,'Nuevo Cuscatlán',7),(122,'San Juan Opico',7),(123,'Quezaltepeque',7),(124,'Sacacoyo',7),(125,'San José Villanueva',7),(126,'San Matías',7),(127,'San Pablo Tacachico',7),(128,'Talnique',7),(129,'Tamanique',7),(130,'Teotepeque',7),(131,'Tepecoyo',7),(132,'Zaragoza',7),(133,'Apastepeque',8),(134,'Guadalupe',8),(135,'San Cayetano Istepeque',8),(136,'San Esteban Catarina',8),(137,'San Ildefonso',8),(138,'San Lorenzo',8),(139,'San Sebastián',8),(140,'San Vicente',8),(141,'Santa Clara',8),(142,'Santo Domingo',8),(143,'Tecoluca',8),(144,'Tepetitán',8),(145,'Verapaz',8),(146,'Cuyulán',9),(147,'El Rosario',9),(148,'Jerusalén',9),(149,'Mercedes La Ceiba',9),(150,'Olocuilta',9),(151,'Paraíso de Osorio',9),(152,'San Antonio Masahuat',9),(153,'San Emigdio',9),(154,'San Francisco Chinameca',9),(155,'San Juan Nonualco',9),(156,'San Juan Talpa',9),(157,'San Juan tepezontes',9),(158,'San Luis Talpa',9),(159,'San Luis La Herradura',9),(160,'San Miguel Teepezontes',9),(161,'San Pedro Masahuat',9),(162,'San Pedro Nonualco',9),(163,'San Rafael Obrajuelo',9),(164,'Santa María Ostuma',9),(165,'Santiago Nonualco',9),(166,'Tapalhuaca',9),(167,'Zacatecoluca',9),(168,'Cinquera',10),(169,'Dolores',10),(170,'Guacotecti',10),(171,'Ilobasco',10),(172,'Jutiapa',10),(173,'San Isidro',10),(174,'Sensutepeque',10),(175,'Tejutepeque',10),(176,'Victoria',10),(177,'Alegría',11),(178,'Berlín',11),(179,'California',11),(180,'Concepción Batres',11),(181,'El Triunfo',11),(182,'Ereguayquín',11),(183,'Estanzuelas',11),(184,'Jiquilisco',11),(185,'Jucuapa',11),(186,'Jucuarán',11),(187,'Mercedes Umaña',11),(188,'Nueva Granada',11),(189,'Ozatlán',11),(190,'Puerto El Triunfo',11),(191,'San Agustín',11),(192,'San Buenaventura',11),(193,'San Dionisio',11),(194,'San Francisco Javier',11),(195,'Santa Elena',11),(196,'Santa María',11),(197,'Santiago de María',11),(198,'Tacapán',11),(199,'Usulután',11),(200,'Carolina',12),(201,'Chapeltique',12),(202,'Chinameca',12),(203,'Chirilagua',12),(204,'Ciudad Barrios',12),(205,'Comacarán',12),(206,'El Tránsito',12),(207,'Lolotique',12),(208,'Moncagua',12),(209,'Nueva Guadalupe',12),(210,'Nuevo Edén de San Juan',12),(211,'Quelepa',12),(212,'San Antonio del Mosco',12),(213,'San Gerardo',12),(214,'San Jorge',12),(215,'San Luis de la Reina',12),(216,'San Miguel',12),(217,'San Rafael Oriente',12),(218,'Sesori',12),(219,'Uluazapa',12),(220,'Arambala',13),(221,'Cacaopera',13),(222,'Chilanga',13),(223,'Corinto',13),(224,'Delicias de Concepción',13),(225,'El Divisadero',13),(226,'El Rosario',13),(227,'Gualococti',13),(228,'Guatajiagua',13),(229,'Joateca',13),(230,'Jocoatiquea',13),(231,'Jocoro',13),(232,'Lolotiquillo',13),(233,'Meanguera',13),(234,'Osicala',13),(235,'Periquín',13),(236,'San Carlos',13),(237,'San Fernando',13),(238,'San Francisco Gotera',13),(239,'San Isidro',13),(240,'San Simón',13),(241,'Sensembra',13),(242,'Sociedad',13),(243,'Torola',13),(244,'Yamabal',13),(245,'Yoloaiquín',13),(246,'La Unión',14),(247,'San Alejo',14),(248,'Yucuaquín',14),(249,'Conchugua',14),(250,'Intipucá',14),(251,'San José',14),(252,'El Carmen',14),(253,'Yayantique',14),(254,'Bolívar',14),(255,'Meanguera del Golfo',14),(256,'Santa Rosa de Lima',14),(257,'Pasaquina',14),(258,'Anamorós',14),(259,'Nueva Esparta',14),(260,'El Sauce',14),(261,'Concepción de Oriente',14),(262,'Polorós',14),(263,'Lislique',14);
/*!40000 ALTER TABLE `municipios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaciones` (
  `idnoti` int(11) NOT NULL AUTO_INCREMENT,
  `orden` int(11) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `cliente` varchar(50) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `idfacturav` int(11) DEFAULT NULL,
  PRIMARY KEY (`idnoti`),
  KEY `idfacturav` (`idfacturav`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numeros`
--

DROP TABLE IF EXISTS `numeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numeros` (
  `idnumeros` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  KEY `idnumeros` (`idnumeros`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numeros`
--

LOCK TABLES `numeros` WRITE;
/*!40000 ALTER TABLE `numeros` DISABLE KEYS */;
INSERT INTO `numeros` VALUES (1,1,'un'),(2,2,'dos'),(3,3,'tres'),(4,4,'cuatro'),(5,5,'cinco'),(6,6,'seis'),(7,7,'siete'),(8,8,'ocho'),(9,9,'nueve'),(10,10,'diez'),(11,11,'once'),(12,12,'doce'),(13,13,'trece'),(14,14,'catorce'),(15,15,'quince'),(16,16,'diciseis'),(17,17,'diecisiete'),(18,18,'dieciocho'),(19,19,'diecinueve'),(20,20,'veinte'),(22,30,'treinta'),(23,31,'uno'),(24,40,'cuarenta'),(25,50,'cincuenta'),(26,60,'sesenta'),(27,70,'setenta'),(28,80,'ochenta'),(29,90,'noventa'),(30,100,'cien'),(31,101,'ciento'),(32,200,'doscientos'),(33,300,'trescientos'),(34,400,'cuatrocientos'),(35,500,'quinientos'),(36,600,'seiscientos'),(37,700,'setecientos'),(38,800,'ochocientos'),(39,900,'nuevecientos'),(40,1000,'mil'),(46,23,'veintitres'),(45,22,'veintidos'),(44,21,'veintiun'),(47,24,'veiticuatro'),(48,25,'vinticinco'),(49,26,'veintiseis'),(50,27,'veitisiete'),(51,28,'veintiocho'),(52,29,'veintinueve'),(53,1000,'mil'),(54,2000,'dos mil'),(55,3000,'tres mil'),(56,4000,'cuatro mil'),(57,5000,'cinco mil'),(58,6000,'seis mil'),(59,7000,'siete mil'),(60,8000,'ocho mil'),(61,9000,'nueve mil'),(62,10000,'dies mil'),(63,11000,'once mil'),(64,12000,'doce mil'),(65,13000,'trece mil'),(66,14000,'catorce mil'),(67,15000,'quince mil'),(68,16000,'dieciseis mil'),(69,17000,'diecisiete mil'),(70,18000,'dieciocho mil'),(71,19000,'dicinueve mil'),(72,20000,'veinte mil'),(73,21000,'veintiun mil'),(74,22000,'veintidos mil'),(75,23000,'veintitres mil'),(76,24000,'veinticuatro mil'),(77,25000,'veinticinco mil'),(78,26000,'vintiseis mil'),(79,27000,'veintisiete mil'),(80,28000,'veintiocho mil'),(81,29000,'veintinueve mil'),(82,30000,'treinta mil'),(83,40000,'cuarenta mil'),(84,50000,'cincuenta mil'),(85,60000,'sensenta mil'),(86,70000,'setenta mil'),(87,80000,'ochenta mil'),(88,90000,'noventa mil');
/*!40000 ALTER TABLE `numeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos` (
  `IdPermiso` int(11) NOT NULL AUTO_INCREMENT,
  `IdGrp` int(11) NOT NULL,
  `IdOpc` int(11) NOT NULL,
  PRIMARY KEY (`IdPermiso`),
  KEY `IdGrp` (`IdGrp`),
  KEY `IdOpc` (`IdOpc`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,21),(12,1,15),(13,1,22),(14,1,12),(15,1,13),(16,1,14),(17,1,16),(18,1,17),(19,1,18),(20,1,19),(21,1,20),(22,2,8),(23,2,9),(24,2,10),(44,2,14),(26,2,15),(27,2,22),(28,2,12),(29,2,13),(43,2,21),(31,2,16),(32,2,17),(33,2,23),(34,1,23),(35,3,8),(36,3,9),(37,3,10),(38,3,15),(39,3,12),(40,3,13),(41,3,16),(42,3,17),(45,2,18),(46,3,14),(48,3,18);
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `codproducto` varchar(500) NOT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `precio_unit` double DEFAULT NULL,
  `precioindi` double DEFAULT NULL,
  `preciopublico` double DEFAULT NULL,
  `existencias` double DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `unid_med` varchar(50) DEFAULT NULL,
  `valida` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codproducto`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('4352','Conector Rojo GB UL B500','conector rojo para nudar cable',0.12,0.12,0,0,13,'unidad','1'),('4351','Conector Amarillo GB UL B500','conector amarillo para nudar cable',0.1,0.1,0,0,13,'unidad','1'),('4353','Conector Gris GB UL B500','conector gris para nudar cable',0.25,0.25,0,0,13,'unidad','1'),('8335','Barra Cooperweld 5/8 x 8\"','barra p/ polarizar',7,7,0,0,13,'unidad','1'),('8336','Barra Cooperweld 5/8 x 10\"','barra p/ polarizar',8.5,8.5,0,0,13,'unidad','1'),('8404','Ancla Galvanizada 1/2 x 6','para retenida',7,7,0,0,18,'unidad','1'),('8405','Base p/ Ancla o Piaña','base p/ ancla o piaña',3,3,0,0,18,'unidad','1'),('8303','Preformada WP2 Punto Amarillo','para tensar alambre',3.25,3.25,0,0,13,'unidad','1'),('8310','Preformada ACSR2  Punto Rojo','para tensar alambre',2.25,2.25,0,0,13,'unidad','1'),('0501','Caja Octagonal Plástica 1/2 x 3/4 Amanco','base para receptáculo',0.55,0.55,0,0,13,'unidad','1'),('0480','Caja 4x4 PVC Amanco','para distribuir corriente',1.25,1.25,0,0,13,'unidad','1'),('0486','Tapadera Cuadrada 4x4 PVC Amanco','para caja 4x4',0.35,0.35,0,0,13,'unidad','1'),('0491','Tapadera Redonda PVC','para caja octagonal',0.35,0.35,0,0,13,'unidad','1'),('8316','Preformada 5/16 Punto Negro','para tensar alambre',3.25,3.25,0,0,13,'unidad','1'),('8206','Perno 1/2 x 4 1/2 Galvanizado TodoRosca','para abrazadera',0.75,0.75,0,0,18,'unidad','1'),('5202','TecnoDucto 3/4 x 3 mts Amanco','para cable electrico',18,0.65,0,0,13,'metros','1'),('2202','Caja Térmica Gisal 2cc','tablero para energía',7.5,7.5,0,0,13,'unidad','1'),('2203','Caja Térmica Gisal 4cc','tablero para energía',14,14,0,0,13,'unidad','1'),('2102','Caja Térmica General Electric 4cc','tablero para energía',21,21,0,0,13,'unidad','1'),('2103','Caja Térmica General Electric 6cc','tablero para energía',30,30,0,0,13,'unidad','1'),('2104','Caja Térmica General Electric 8cc','tablero para energía',33,33,0,0,13,'unidad','1'),('0502','Caja Rectangular Plástica 1/2 x 3/4 Amanco','para tomas',0.55,0.55,0,0,13,'unidad','1'),('1693','Cable TNM 3x14 CONDUSAL','conductor energía',1.15,1.15,0,0,13,'metros','1'),('1697','Cable TNM 3x10 CONDUSAL','conductor energia',2.5,2.5,0,0,13,'metros','1'),('0301','Toma Doble Industrial Polarizado #270 Eagle','tomacorriente',0.7,0.7,0,0,13,'unidad','1'),('0222','Toma Doble Superficial Polarizado 78v Eagle','tomacorriente',1.1,1.1,0,0,13,'unidad','1'),('1831','Cable THHN #14 Rojo CONDUSAL','conductor corriente',27,0.28,0,0,13,'metros','1'),('1633','Cable THHN #14 Blanco CONDUSAL','conductor corriente',27,0.28,0,0,13,'metros','1'),('1636','Cable THHN #14 Azul CONDUSAL','conductor corriente',27,0.28,0,0,13,'metros','1'),('1641','Cable THHN #12 Rojo CONDUSAL','conductor corriente',40,0.42,0,0,13,'metros','1'),('JF-65WE4','Lampara Alumbrado Público Foco Ahorrativo 110v','alumbrado público',36,36,0,0,13,'unidad','1'),('216N','Socket C/Llave y Toma','para focos',0.75,0.75,0,0,13,'unidad','1'),('EC3-75','Cuerpo Terminal 3/4\"','terminal',1.25,1.25,0,0,13,'unidad','1'),('21 NEW','Receptáculo P/Plafonera','para focos',0.5,0.5,0,0,13,'unidad','1'),('CNR 1/2','Conector Recto Romex 1/2\"','conector',0.3,0.3,0,0,13,'unidad','1'),('CNR 3/4','Conector Recto Romex 3/4\"','conector',0.4,0.4,0,0,13,'unidad','1'),('UO7','Toma Doble Superficial','tomacorriente',0.7,0.7,0,0,13,'unidad','1'),('32','Receptáculo C/ Cadena','para focos',2,2,0,0,13,'unidad','1'),('310','Toma Macho de Enroscar','toma macho',0.2,0.2,0,0,13,'unidad','1'),('U63-1','Toma Múltiple, 6 Tomas','tomacorriente 6 salidas',2,2,0,0,13,'unidad','1'),('U32/2P','Toma Macho C/Abrazadera','toma macho',0.7,0.7,0,0,13,'unidad','1'),('BOXPD','Caja 4x4 Pesada','distribuir corriente',1.2,1.2,0,0,13,'unidad','1'),('123-IR','Swith Superficial Fluorescente','corriente',0.4,0.4,0,0,13,'unidad','1'),('UO3FDG','Placa P/ Toma Doble Interperie','placa p/ tomacorriente',0.9,0.9,0,0,13,'unidad','1'),('CJT- 4','Caja Térmica 4cc','tablero para energía',9.5,9.5,0,0,13,'unidad','1'),('BV203 ORO','Placa P/ Toma Color Oro','placa p/ tomacorriente',1,1,0,0,13,'unidad','1'),('BV203 SLV','Placa P/ Toma Color Silver','placa p/ tomacorriente',1,1,0,0,13,'unidad','1'),('BV203 WOOD','Placa Luxor  Madera','placa p/ tomacorriente',1,1,0,0,13,'unidad','1'),('BV203 AZUL','Placa Luxor Azul','placa p/ tomacorriente',1,1,0,0,13,'unidad','1'),('BV203 CHP','Placa Luxor Champagne','placa p/ tomacorriente',1,1,0,0,13,'unidad','1'),('BV203 BLANCO','Placa Luxor Blanco','placa p/ tomacorriente',1,1,0,0,13,'unidad','1'),('4U 85W','Foco 40 85w Ahorrador','alumbrado',7,7,0,0,13,'unidad','1'),('OY- 107','Regleta 6 Tomas','tomacorriente 6 salidas',3,3,0,0,13,'unidad','1'),('PD1- 4','Base de Fotocelda','para fotocelda',2,2,0,0,13,'unidad','1'),('PC1- 2','Fotocelda','fotocelda',5,5,0,0,13,'unidad','1'),('P3610A','Socket E40 / Mobul','para foco alumb. pub.',1.5,1.5,0,0,13,'unidad','1'),('BV101','Swith Luxor Tipo Dado','swith',0.5,0.5,0,0,13,'unidad','1'),('BV 103','Toma Tipo Dado Luxor Polarizado','toma polarizacion',0.55,0.55,0,0,13,'unidad','1'),('BV 111','Dado Ciego Luxor','dado luxor',0.15,0.15,0,0,13,'unidad','1'),('323- 6','Toma Doble Oval. Polarizado','tomacorriente',1,1,0,0,13,'unidad','1'),('CJT- 2','Caja Térmica 2cc','tablero para energía',5,5,0,0,13,'unidad','1'),('CJT- 1','Caja Térmica 1cc','tablero para energía',4,4,0,0,13,'unidad','1'),('CJT- 6','Caja Térmica 6cc','tablero para energía',14,14,0,0,13,'unidad','1'),('CJT- 8','Caja Térmica 8cc','tablero para energía',15,15,0,0,13,'unidad','1'),('22GE','Calavera C/Cadena GE','para foco',0.9,0.9,0,0,13,'unidad','1'),('FP101w','Switch Tipo Dado Cambio','comiente',0.55,0.55,0,0,13,'unidad','1'),('P518332','Foco Eco Home TW 20w E27','foco',3,3,0,0,13,'unidad','1'),('545310','Foco Eco Home Stick Plus 18w','foco',2.6,2.6,0,0,13,'unidad','1'),('41905335','Receptáculo Baq. S/Cadena Marfil','para foco',0.75,0.75,0,0,13,'unidad','1'),('735301','Unión PVC 3/4\"','unión  p/ tubo pvc',0.3,0.3,0,0,19,'unidad','1'),('735401','Unión PVC 1p.','union p/ tubo pvc',0.4,0.4,0,0,19,'unidad','1'),('735601','Unión PVC 1 1/2\"','unión p/ tubo pvc',0.55,0.55,0,0,19,'unidad','1'),('73571','Unión PVC 2\"','unión p/ tubo pvc',0.9,0.9,0,0,19,'unidad','1'),('3468115','Sierra Mango Bimetálica','para serrar tubería y otros',1,1,0,0,19,'unidad','1'),('1284137','Cinta Aislante 3/4\"x 10yds Negra','para cables elécricos',0.8,0.8,0,0,13,'unidad','1'),('1320937','Cinta Aislante 3/4\"X20yds Negra','para cables eléctricos',1.25,1.25,0,0,13,'unidad','1'),('2327601','Pegamento PVC Tangit 25ml','para tuberías',2.25,2.25,0,0,19,'unidad','1'),('2361501','Pegamento PVC Tangit 125ml','para tuberías',7.5,7.5,0,0,19,'unidad','1'),('15070211','Tubo PVC C/ Campana 64 PSI 2\"','tubo pvc p/ agua',5,5,0,0,19,'unidad','1'),('3086830','Swith Térmico 1 Polo 20 Amp.','p/ tablero',3.75,3.75,0,0,13,'unidad','1'),('1655309','Ancla Taco 5/16 XC2','para pared - celeste',0.05,0.05,0,0,20,'unidad','1'),('3086930','Swith Térmico 1 Polo 30 Amp.','p/ tablero',3.75,3.75,0,0,13,'unidad','1'),('3087730','Swith Térmico 2 Polos 50 Amp.','p/ tablero',9.5,9.5,0,0,13,'unidad','1'),('5576231','Pasta P/ Soldar 2 Onz.','p/ soldar electrodométicos',1.75,1.75,0,0,21,'unidad','1'),('21234115','Alicate Armador 8\"','p/ albañil',5,5,0,0,20,'unidad','1'),('32206370','Spray Touch´tone Azul Claro','p/ decoraciones',2.4,2.4,0,0,22,'unidad','1'),('32206770','Spray Touch´tone Nergo Mate','p/ decoraciones',2.4,2.4,0,0,22,'unidad','1'),('50495737','Cepo P/ Barra Polarización Eco','p/ barra cooper',1.25,1.25,0,0,18,'unidad','1'),('529255','Swith Sencillo Marfil','swith',2.35,2.35,0,0,13,'unidad','1'),('529258','Swith Doble Marfil','swith',3.5,3.5,0,0,13,'unidad','1'),('529263','Swith Sencillo Toma Polarizado Marfil','swith polarización',3.5,3.5,0,0,13,'unidad','1'),('9268','Toma doble polarizado Marfil','toma corriente polarizado',2.6,2.6,0,0,13,'Unidad','1'),('529270','Toma Triple Marfil','toma triple',4,4,0,0,13,'unidad','1'),('529490','Swith Triple Marfil','swith triple',4,4,0,0,13,'unidad','1'),('1074330','Swith Cambio 3 Vías Dado','swith 3 vías',3.1,3.1,0,0,13,'unidad','1'),('1074430','Swith Sencillo Dado','swith sencillo',2.4,2.4,0,0,13,'unidad','1'),('1496030','Toma dado Magic 5025','toma',2.2,2.2,0,0,13,'unidad','1'),('2342409','Ancla Taco E 3/8x2','p/ pared- azul',0.07,0.07,0,0,20,'unidad','1'),('4011209','Ancla Taco C 9/32x 1 1/2','p/ pared- verde',0.04,0.04,0,0,20,'unidad','1'),('9841730','Toma Polarizado dado','tomacorriente polarización',2.85,2.85,0,0,13,'unidad','1'),('736701','Codo PVC 3\" 90°','p/ tubería',4.5,4.5,0,0,19,'unidad','1'),('739901','Curva Drenaje PVC 3\"','p/ tubería',2,2,0,0,19,'unidad','1'),('740101','Curva Drenaje PVC 4\"','p/ tubería',3,3,0,0,19,'unidad','1'),('9888301','Accesorio Tanque Inodoro Hydra Chroma','p/ inodoro',11,11,0,0,19,'unidad','1'),('3487926','Ventilador Techo 3A 56\" BCO Industrial','p/ ventilación oficinas y otros',71,71,0,0,22,'unidad','1'),('16123316','Junco Sintético 2.3mm','p/ camas',2.6,2.6,0,0,23,'libra','1'),('3488126','Ventilador Techo 3L 5A 52\" MADERA VINTAGE Eco','p/ ventilación oficina y otros',97,97,0,0,22,'unidad','1'),('47547137','Canaleta 1/2 C/ Adhesivo 10x10mmx2mts','p/ cableado',1.6,1.6,0,0,13,'unidad','1'),('49394037','Canaleta BCO 3/4 22x10x2 Interlink','p/ cableado',2,2,0,0,13,'unidad','1'),('49394137','Canaleta BCO 1\"   32x10x2 Interlink','p/ cableado',3.9,3.9,0,0,13,'unidad','1'),('2727616','Electródo Mo Dulce 63/32p','p/ soldadura metálica',5.25,1.1,0,0,24,'libra','1'),('2746815','Marco Sierra Fijo','p/ sierra',5,5,0,0,24,'unidad','1'),('872903.5','Tubo Fluor. 20w T12 6500K','alumbrado',1.25,1.25,0,0,13,'unidad','1'),('8732635','Tubo Fluor. 40w T12 6200K','p/ alumbrado',1.25,1.25,0,0,13,'unidad','1'),('1053630','Caja Térmica 6cc 125 Amp. Monofásico','p/ tablero',27,27,0,0,13,'unidad','1'),('1167430','Caja Térmica 8cc 125 Amp. Monofásico','p/ tablero',33,33,0,0,13,'unidad','1'),('12061930','Caja Térmica 4cc 125 Amp. Monofásico','p/ tablero',18,18,0,0,13,'unidad','1'),('FON0426','Chorro P/Manguera Palanca 1/2\" Spain','grifo p/ agua',5,5,0,0,19,'unidad','1'),('FON0424','Chorro P/ Manguera T/ Palomilla 1/2\" Spain','grifo p/ agua',5,5,0,0,19,'unidad','1'),('FON0102','Grifo P/Lavamanos Manec. Acrí. Delux','lavamanos',6,6,0,0,19,'unidad','1'),('FON0624','Llave P/Lavamanos Roma Metálica 1/2\"','lavamanos',7,7,0,0,19,'unidad','1'),('ELE0505','Reflector Halógeno 150w E27','halógeno',5,5,0,0,13,'unidad','1'),('ELE0161','Lampara Circular 32w Comdilight','alumbrado',5,5,0,0,13,'unidad','1'),('FER0500','Máquina P/Pelar Fruta COMDI-LINE','p/frutas',15,15,0,0,18,'unidad','1'),('HO0017','Plancha de Carbón COMDI-LINE','p/ropa',10,10,0,0,18,'unidad','1'),('FER0564','Piedra P/Afilar 2 Caras 8\"','p/ machete',1,1,0,0,18,'unidad','1'),('FON0350','Válvula P/Ducha  1/2\" Manija Cromada','p/ducha',8,8,0,0,19,'unidad','1'),('FER0356','Hilo Nylon Blanco #3 1/4','p/ artesanías',1.4,1.4,0,0,25,'libra','1'),('FER0357','Hilo Nylon Blanco #4 1/4','p/artesanias',1.4,1.4,0,0,25,'libra','1'),('FER0358','Hilo Nylon Blanco #6 1/4','p/ artesanias',1.4,1.4,0,0,25,'libra','1'),('FER0359','Hilo Nylon Blanco #9 1/4','p/ artesanías',1.4,1.4,0,0,25,'libra','1'),('FER0360','Hilo Nylon Blanco #12 1/4','p/ artesanías',1.4,1.4,0,0,25,'libra','1'),('FER0361','Hilo Nylon Blanco #15 1/4','p/ artesanías',1.4,1.4,0,0,25,'libra','1'),('FER0362','Hilo Nylon Blanco #18 1/4','p/ artesanías',1.4,1.4,0,0,25,'libra','1'),('FER0363','Hilo Nylon Blanco #21 1/4','p/ artesanías',1.4,1.4,0,0,25,'libra','1'),('FER0365','Hilo Nylon Blanco #30 1/4','p/ artesanías',1.4,1.4,0,0,25,'libra','1'),('FER0366','Hilo Nylon Blanco #36 1/4','p/ aresanías',1.4,1.4,0,0,25,'libra','1'),('FER0391','Hilo Nylon Rojo #21 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0340','Hilo Nylon Azul #21 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0413','Hilo Nylon Verde #21 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0377','Hilo Nylon Celeste #21 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('FER1033','Hilo Nylon Café #21 1/4','p/artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0315','Hilo Nylon Amarillo #21 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0682','Hilo Nylon Rosado #21 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0928','Hilo Nylon Morado #21 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0386','Hilo Nylon Negro #21 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('FER1186','Hilo Nylon Rosado #21','p/ artseanías',1.6,1.6,0,0,25,'libra','1'),('FER0873','Pega Poxipol Transparente 14ml','p/ tubería pvc',2.75,2.75,0,0,19,'unidad','1'),('FER0874','Pega Poxipol Gris 14ml','p/ tuberías',2.75,2.75,0,0,19,'unidad','1'),('FER0318','Hilo Nylon Amarillo #36 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0397','Hilo Nylon Rojo #36 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0343','Hilo Nylon Azul #36 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0416','Hilo Nylon Verde #36 1/4','p/artesanías',1.6,1.6,0,0,25,'libra','1'),('FER1005','Hilo Nylon Rosado #36 1/4','p/artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0389','Hilo Nylon Negro #36 1/4','p/artesanías',1.6,1.6,0,0,25,'libra','1'),('FER0449','Hilo Nylon Café #36 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('ELE0106','Foco 7 1/2 ER 110v','p/ refrigeradoras',0.25,0.25,0,0,13,'unidad','1'),('FER0696','Hilo Nylon Morado #36 1/4','p/ artesanías',1.6,1.6,0,0,25,'libra','1'),('C0672','Candado Globe Negro 40mm','p/cadena',0.9,0.9,0,0,18,'unidad','1'),('C0671','Candado Globe Negro 30mm','p/ cadena',0.7,0.7,0,0,18,'unidad','1'),('C0673','Candado Globe Negro 50mm','p/ cadena',1.5,1.5,0,0,18,'unidad','1'),('P0310','Pasador Galvanizado 1104/4','p/ puertas y ventanas',1.15,1.15,0,0,18,'unidad','1'),('P0320','Pasador Galvanizado 1104/6','p/ puertas y ventanas',1.5,1.5,0,0,18,'unidad','1'),('C108062','Caño Galvanizado 2x14 5.8 mts','p/ estructuras',15,15,0,0,24,'unidad','1'),('T0710','Tela Malla Cuadrada 2x2','p/ saranda',2,2,0,0,20,'yarda','1'),('TI360','Palo Trapeador Hierro','p/ trapeador',2,2,0,0,26,'unidad','1'),('ED381','Esponja P/ Afinar Azul','p/ afinado',0.25,0.25,0,0,20,'unidad','1'),('Q3601','Esmalte Super Lux 360 1/48','p/ decorar',1.25,1.25,0,0,22,'galón','1'),('PIN2501','Esmalte Aluminio 1/48','p/ decorar',1.9,1.9,0,0,22,'galón','1'),('Q3221','Esmalte Super Lux 322 1/48','p/ decorar',1.25,1.25,0,0,22,'galón','1'),('Q3151','Esmalte Super Lux 315 1/48','p/ decorar',1.25,1.25,0,0,22,'galón','1'),('Q3611','Esmalte Super Lux 361 1/48','p/ decorar',1.25,1.25,0,0,22,'galón','1'),('Q3301','Esmalte Super Lux 330 1/48','p/ decorar',1.25,1.25,0,0,22,'galón','1'),('Q3041','Esmalte Super Lux 304 1/48','p/ decorar',1.25,1.25,0,0,22,'galón','1'),('Q0401','Barniz Marino 90 1/48','p/ madera',1.2,1.2,0,0,23,'galón','1'),('P60370','Pegamento Toro P/ Calzado 1/48','p/ zapatos',1.2,1.2,0,0,27,'galón','1'),('Q3441','Esmalte Super Lux 344 1/48','p/ decorar',1.25,1.25,0,0,22,'galón','1'),('C108052','Caño Galvanizado 1 1/2x1.4   5.8mts','p/ estructuras',12,12,0,0,18,'unidad','1'),('Q3001','Esmalte Super Lux 300 1/48','p/ decorar',1.25,1.25,0,0,22,'galón','1'),('Q3401','Esmalte Super Lux 340 1/48','p/ decorar',1.25,1.25,0,0,22,'galón','1'),('C108082','Caño Galvanizado 3x1.4  5.8mts','p/ estructuras',22,22,0,0,18,'unidad','1'),('C108092','Caño Galvanizado 4x1.4  5.8mts','p/ estructuras',29,29,0,0,18,'unidad','1'),('0001','Polín \"C\"  Negro 4\"x2\" Chapa 18','p/ estructuras',11.5,11.5,0,0,18,'unidad','1'),('0002','Lamina Canal 28mm','p/ construcción',64,5.5,0,0,28,'unidad','1'),('0003','Lamina Canal 26mm','p/ construcción',98,8.25,0,0,28,'unidad','1'),('0004','Polín \"C\" 4\"x2\" Chapa 15','p/ estructuras',16,16,0,0,18,'unidad','1'),('0005','Ángulo 1 x 1 x 1/8 x 6mts','p/ estructuras',5.75,5.75,0,0,24,'unidad','1'),('6008529','Cerradura FF 205   50mm Derecha','p/ puertas',22,22,0,10,18,'unidad','1'),('7008529','Cerraura FF 205   50mm Izquierda','p/ puertas',22,22,0,2,18,'unidad','1'),('736501','Codo PVC 90° 1 1/2\"','p/ tubería',1,1,0,10,19,'unidad','1'),('737301','Adaptador Macho PVC 1 1/2\"','p/ tubería',0.65,0.65,0,6,19,'unidad','1'),('738101','Adaptador Hembra PVC 1 1/2\"','p/ tubería',0.65,0.65,0,6,19,'unidad','1'),('752901','Tee PVC 1 1/2\"','p/ tubería',1.25,1.25,0,6,19,'unidad','1'),('757901','Tapón Hembra PVC 1 1/2\"','p/ tubería',0.55,0.55,0,31,19,'unidad','1'),('1079729','Cerradura Yale 611-50 Izquierda','p/ puertas',27,27,0,2,18,'unidad','1'),('1302929','Cerradura Yale 610-50 Derecha','p/ puertas',27,27,0,3,18,'unidad','1'),('1548515','Cuchara Albañil 8\" Forjada','p/ albañil',12.5,12.5,0,2,20,'unidad','1'),('1748530','Placa Triple Baq. Madera Nuva.','p/ energía',2.3,2.3,0,12,13,'unidad','1'),('1761030','Placa Sencilla Baq. Madera Nuva.','p/ energía',2.3,2.3,0,12,13,'unidad','1'),('1761130','Placa Doble Baq. Madera Nuva.','p/ energía',2.3,2.3,0,40,13,'unidad','1'),('776602','Llave Manguera STD 90 1/2\"','p/ jardinería',7,7,0,0,29,'unidad','1'),('777302','Llave Manguera STD 90 3/4','p/ jardinería',8,8,0,0,29,'unidad','1'),('10348209','Perno C/H Galvanizado 1/4 x 1 1/2 C/T','herragería',0.12,0.12,0,0,18,'unidad','1'),('757201','Tapón Hembra PVC 1/2\"','p/ tubería',0.2,0.2,0,25,19,'unidad','1'),('757301','Tapón Hembra PVC 3/4\"','p/ tubería',0.3,0.3,0,12,19,'unidad','1'),('1057201','Tapón Hembra PVC C/ Rosca 3/4\"','p/ tubería',0.5,0.5,0,6,19,'unidad','1'),('1534701','Tapón Hembra PVC C/ Rosca 1/2\"','p/ tubería',0.4,0.4,0,10,19,'unidad','1'),('1618201','Tapón Macho PVC C/ Rosca 3/4\"','p/ tubería',0.5,0.5,0,6,19,'unidad','1'),('14703329','Cerradura Philips 7150 Derecha','p/ puertas',12,12,0,6,18,'unidad','1'),('736601','Codo PVC 90° 2\"','p/ tubería',1.5,1.5,0,12,19,'unidad','1'),('8455030','Toma Trifilar Sup. 50Amp 240v','p/ energía',4.25,4.25,0,0,13,'unidad','1'),('8458030','Toma Hembra Emp. Trifilar 50Amp 240v','p/ energía',3,3,0,0,13,'unidad','1'),('8509','Perno C/H Galvanizado 1/4 x 3 C/T','herragería',0.17,0.17,0,0,18,'unidad','1'),('8709','Perno C/H Galvanizado 5/16 x 1 C/T','herragería',0.12,0.12,0,0,18,'unidad','1'),('9009','Perno C/H Galvanizado 5/16 x 2 C/T','herragería',0.15,0.15,0,0,18,'unidad','1'),('9109','Perno C/H Galvanizado 5/16 x 2 1/2 C/T','herragería',0.18,0.18,0,0,18,'unidad','1'),('9209','Perno C/H Galvanizado 5/16 x 3 C/T','herragería',0.2,0.2,0,0,18,'unidad','1'),('6109','Arandela Plana Galvanizada 1/4','p/ pernos',0.05,0.05,0,0,18,'unidad','1'),('6209','Arandela Plana Galvanizada 5/16','p/ pernos',0.1,0.1,0,0,18,'unidad','1'),('7501','Granada Bronce 1\" Europa 105','p/ bomba de pozo',11,11,0,0,19,'unidad','1'),('7730','Tapadera Redonda 4\" C/ Knockout C 24','p/ caja octagonal',0.35,0.35,0,0,13,'unidad','1'),('0930','Placa Rectangular P/ Toma Trifilar 30 150Amp','p/ toma',1.25,1.25,0,0,13,'unidad','1'),('9002','Llave Manguera Eco 3/4\" Grival','p/ agua',4.5,4.5,0,0,19,'unidad','1'),('8009','Perno C/H Galvanizado 1/4 x  1 C/T','herragería',0.1,0.1,0,0,18,'unidad','1'),('0006','Tee Galvanizada 1\"','p/ agua',2.15,2.15,0,0,19,'unidad','1'),('0007','Pegamento Abro PVC 1/32','p/ tuberías',3.5,3.5,0,0,19,'unidad','1'),('0008','Master Pega 1/4','p/ papel y otros',2.6,2.6,0,0,25,'unidad','1'),('0009','Master Pega 1/8','p/ papel y otros',1.6,1.6,0,0,25,'unidad','1'),('0010','Pin Alambre','p/ lámina',9,0.1,0,0,20,'unidad','1'),('0011','Lija P/ Hierro Norton #40','p/ lijar',0.7,0.7,0,0,24,'unidad','1'),('0012','Lija P/ Hierro Norton #50','p/ lijar',0.7,0.7,0,0,24,'unidad','1'),('0013','Lija P/ Hierro Norton #60','p/ lijar',0.7,0.7,0,0,24,'unidad','1'),('0014','Lija P/ Hierro Norton #80','p/ lijar',0.7,0.7,0,0,24,'unidad','1'),('0015','Lija P/ Madera Norton #36','p/ lijar',0.4,0.4,0,0,23,'unidad','1'),('0016','Lija P/ Madera Norton #40','p/ lijar',0.4,0.4,0,0,23,'unidad','1'),('0017','Lija P/ Madera Norton #50','p/ lijar',0.4,0.4,0,0,23,'unidad','1'),('0018','Lija P/ Madera Norton #60','p/ lijar',0.4,0.4,0,0,23,'unidad','1'),('0019','Lija P/ Madera Norton #80','p/ lijar',0.4,0.4,0,0,23,'unidad','1'),('0020','Lija P/ Madera Norton #100','p/ lijar',0.4,0.4,0,0,23,'unidad','1'),('0021','Lija P/ Madera Norton #120','p/ lijar',0.4,0.4,0,0,23,'unidad','1'),('0022','Lija P/ Madera Norton #150','p/ lijar',0.4,0.4,0,0,23,'unidad','1'),('0023','Lija P/ Madera Norton #180','p/ lijar',0.4,0.4,0,0,23,'unidad','1'),('0024','Lija P/ Madera Norton #220','p/ lijar',0.4,0.4,0,0,23,'unidad','1'),('0025','Marco C/ Sierra Niquelado','p/ serrar',3,3,0,0,24,'unidad','1'),('0026','Alambre Galvanizado #18','p/ tensar',0.9,0.9,0,0,13,'libra','1'),('0027','Broca Concreto Corneta 1/4 Alem.','p/ pared',0.6,0.6,0,0,20,'unidad','1'),('0028','Broca Concreto Corneta 3/8 Alem.','p/ pared',0.9,0.9,0,0,20,'unidad','1'),('0029','Broca Concreto Corneta 1/2 Alem.','p/ pared',1.4,1.4,0,0,20,'unidad','1'),('0030','Broca Concreto Corneta 1/4 Alem. 12\"','p/ pared',1.25,1.25,0,0,20,'unidad','1'),('0031','Broca HSS Corneta (Hierro) 3/16 Alem.','p/ hierro',0.4,0.4,0,0,20,'unidad','1'),('0032','Grasa Lithium (454 gr) #2 ABRO 857','p/ engrase',3.5,3.5,0,0,30,'onzas','1'),('0033','Grasa #3 Lithium 16onz 33 ABRO','p/ engrase',3.85,3.85,0,0,30,'onzas','1'),('0034','Disco Metal 1/8x9 Dronco','p/ corte',3.5,3.5,0,0,24,'unidad','1'),('0035','Disco Metal 1/8x7 Dronco','p/ corte',2.4,2.4,0,0,24,'unidad','1'),('0036','Disco Metal 1/8x4 1/2 Dronco','p/corte',1.5,1.5,0,0,24,'unidad','1'),('0037','Disco Concreto 1/8 x 9 Dronco','p/ concreto',3.5,3.5,0,0,20,'unidad','1'),('0038','Disco Concreto 1/8 x 7 Dronco','p/ concreto',2.5,2.5,0,0,20,'unidad','1'),('0039','Disco Concreto 1/8 x 4 1/2 Dronco','p/ concreto',1.5,1.5,0,0,20,'unidad','1'),('APAH002','Foco Apolo 15w','p/ alumbrado',1.5,1.5,0,0,13,'unidad','1'),('APAH004','Foco Apolo 45w','p/ alumbrado',5,5,0,0,13,'unidad','1'),('SUAH009B','Foco Susan 85w E40 220v','p/ alumbrado',15,15,0,0,13,'unidad','1'),('SUAH009','Foco Susan 85w','p/ alumbrado',13,13,0,0,13,'unidad','1'),('SUAH003','Foco Susan 65w','p/ alumbrado',10,10,0,0,13,'unidad','1'),('SUAH003B','Foco Susan 65w E40','p/ alumbrado',12,12,0,0,13,'unidad','1'),('SUAH010','Foco Susan 7w T2','p/ alumbrado',2.5,2.5,0,0,13,'unidad','1'),('5510','Llave Cangreja Cromada C/Gr.','p/ tuercas',4.75,4.75,0,0,31,'unidad','1'),('1911','Llave Mixta 17mm Pretul','p/ tuercas',2.4,2.4,0,0,31,'unidad','1'),('1912','Llave Mixta 18mm Pretul','p/ tuercas',2.5,2.5,0,0,31,'unidad','1'),('5511','Llave Cangreja Cromada C/ Gr. 10\"','p/ tuercas',7,7,0,0,31,'unidad','1'),('2013','Llave P/ Tubo Stilson 14\" Pretul','p/ tubo',9,9,0,0,31,'unidad','1'),('5509','Llave Cangreja Cromada C/ Gr. 6\"','p/ tuercas',3.6,3.6,0,0,31,'unidad','1'),('9865','Manguera 1/4 Industrial','p/ agua',0.25,0.25,0,0,20,'metro','1'),('1903','Llave Mixta 9m Pretul','p/ tuercas',1.25,1.25,0,0,31,'unidad','1'),('1906','Llave Mixta 12m Pretul','p/ tuercas',1.4,1.4,0,0,31,'unidad','1'),('6470','Broquero C/ Llave 1/2\"','p/ brocas',5,5,0,3,20,'unidad','1'),('1908','Llave Mixta 14m Pretul','p/ tuercas',1.7,1.7,0,0,31,'unidad','1'),('2014','Llave P/ Tubo Stilson 18\" Pretul','p/ tubo',12,12,0,0,31,'unidad','1'),('1913','Llave Mixta 19m Pretul','p/ tuercas',2.5,2.5,0,0,31,'unidad','1'),('5512','Llave Cangreja C/ Gr. 12\"','p/ tuercas',9.5,9.5,0,0,31,'unidad','1'),('1907','Llave Mixta 13m Pretul','p/ tuercas',1.5,1.5,0,0,31,'unidad','1'),('1905','Llave Mixta 11m Pretul','p/ tuercas',1.3,1.3,0,0,31,'unidad','1'),('1904','Llave Mixta 10m Pretul','p/ tuercas',1.25,1.25,0,0,31,'unidad','1'),('6447','Rotomartillo 1/2\" 550w','p/ albañilería',48,48,0,0,20,'unidad','1'),('6559','Llave P/ Broq. 3/8\"','p/ broquero',1.15,1.15,0,0,20,'unidad','1'),('6560','Llave P/ Broq. 1/2\"','p/ broquero',1.15,1.15,0,0,20,'unidad','1'),('1909','Llave Mixta 15m Pretul','p/ tuercas',2,2,0,0,31,'unidad','1'),('1910','Llave Mixta 16m Pretul','p/ tuercas',2.25,2.25,0,0,31,'unidad','1'),('0344','Pala T2000 Cuadrada Puño Y','p/ albañilería',8,8,0,0,20,'unidad','1'),('0346','Pala T2000 Redonda Puño Y','p/ albañilería',8,8,0,0,20,'unidad','1'),('2115','Cincel Corte Frío 1/2 x 6','p/ albañilería',1.75,1.75,0,0,20,'unidad','1'),('2118','Cincel Corte Frío 1/2 x 8','p/ albañilería',2.25,2.25,0,0,20,'unidad','1'),('2121','Cincel Corte Frío 1/2 x 10','p/ albañilería',2.5,2.5,0,0,20,'unidad','1'),('2142','Cincel Corte Frío 3/4 x 8','p/ albañilería',2.75,2.75,0,0,20,'unidad','1'),('4366','Soldadura Centricore 60/40','p/ soldar',19,0.25,0,0,21,'yarda','1'),('8622','Cabeza de Piocha 5 Lbs S/M','p/ albañilería',7,7,0,0,20,'unidad','1'),('8647','Piocha 5 Lbs Mango C/ Inserto Plást.','p/ albañilería',11,11,0,0,20,'unidad','1'),('1524','Brocha C/ Mango Plást. 1/2\" Pretul','p/ pintar',0.25,0.25,0,0,22,'unidad','1'),('01524','Brocha C/ Mango Plást. 1\" Pretul','p/ pintar',0.3,0.3,0,0,22,'unidad','1'),('1525','Brocha C/ Mango Plást. 1 1/2\" Pretul','p/ pintar',0.4,0.4,0,0,22,'unidad','1'),('1526','Brocha C/ Mango Plást. 2\" Pretul','p/ pintar',0.6,0.6,0,0,22,'unidad','1'),('1527','Brocha C/ Mango Plást. 2 1/2\" Pretul','p/ pintar',0.75,0.75,0,0,22,'unidad','1'),('1528','Brocha C/ Mango Plást. 3\" Pretul','p/ pintar',1,1,0,0,22,'unidad','1'),('1529','Brocha C/ Mango Plást. 4\" Pretul','p/ pintar',1.45,1.45,0,0,22,'unidad','1'),('1530','Brocha C/ Mango Plást. 5\" Pretul','p/ pintar',2,2,0,0,22,'unidad','1'),('4578','Cinta Métrica C/ Impacto Grip','p/ mediciones',5,5,0,0,20,'unidad','1'),('7940','Esmeriladora Ang. 7\" 1800w','p/ cortes',93,93,0,0,24,'unidad','1'),('1607','Cinta Métrica Colores 3m Pretul','p/ mediciones',1.5,1.5,0,0,20,'unidad','1'),('6441','Esmeriladora Ang. 4 1/2\" Ind.','p/ cortes',70,70,0,0,20,'unidad','1'),('1473','Desarmador P/ Philip 3/16 x 4','p/ tornillos',1,1,0,0,13,'unidad','1'),('1608','Cinta Métrica Colores 5.5','p/ mediciones',2.5,2.5,0,0,20,'unidad','1'),('0381','Empaque de Hule P/ Manguera','p/ manguera',0.1,0.1,0,0,29,'unidad','1'),('0609','Azadón Lane Forj. #3 S/M','p/ jardinería',6.5,6.5,0,0,29,'unidad','1'),('1744','Carretilla 4.5 Llanta Sólida','p/ cargar',46,46,0,0,20,'unidad','1'),('3050','Punta Exagonal P/ Concreto 3/4 x 30','p/ concreto',3.5,3.5,0,0,20,'unidad','1'),('7629','Hilo P/ Orilladora 2.7mx12m','p/ podar',2.25,2.25,0,0,29,'unidad','1'),('3815','Perilla Latón Brillante C/ Inserto','p/ puerta',1.15,1.15,0,0,24,'unidad','1'),('4645','Pija P/ Broca 1/2\"','p/ atornillar',1.5,0.02,0,0,20,'unidad','1'),('3831','Haladera de Latón Antig. C/ Ins.','p/ gaveta',1,1,0,0,20,'unidad','1'),('4647','Pija P/ Broca 1\"','p/ atornillar',2,0.03,0,0,20,'unidad','1'),('3814','Perilla Latón Brillante C/ Inserto','p/ puerta',0.8,0.8,0,0,24,'unidad','1'),('6315','Batería Alcalina AA','p/ lámpara',1.4,1.4,0,0,21,'unidad','1'),('3574','Cerradura de Sobreponer Clásica','p/ puerta',10,10,0,0,24,'unidad','1'),('7607','Hilo P/ Orilladora 2.4m x 12m','p/ podadora',2,2,0,0,29,'unidad','1'),('4649','Pija P/ Broca 1 1/2\"','p/ atornillar',2.5,0.03,0,0,20,'unidad','1'),('6522','Socket de Porcelana Cuadr.','p/ foco',0.6,0.6,0,0,13,'unidad','1'),('8007','Extensión Eléctrica Doméstica 3m Café','p/ uso del hogar',3.25,3.25,0,0,13,'unidad','1'),('2163','Cincel de Corte Frío 1x10','p/albañileria',6,6,0,0,20,'unidad','1'),('8014','Extension Eléctrica Domestica 4m Verde','p/uso del hogar',4,4,0,0,13,'unidad','1'),('4646','Pija P/ Broca 3/4\"','p/ atornillar',2.75,0.03,0,0,20,'unidad','1'),('8048','Extensión Eléctrica Uso Rudo 15mts','p/ energía',14,14,0,0,13,'unidad','1'),('6316','Batería Alcalina AAA','p/ lámpara',1.4,1.4,0,0,21,'unidad','1'),('1431','Escoba Metálica 20 Dientes','p/ limpiar jardín',4.5,4.5,0,0,29,'unidad','1'),('1517','Espátula 4\" Flexible Pretul','p/ albañilería',2,2,0,0,20,'unidad','1'),('5413','Llana Mango Plástico 6 Rem. Canto','p/afinar',3.5,3.5,0,0,20,'unidad','1'),('1058','Cuchara P/ Albañil 8\" Tipo Mérida','p/ mezcla',3,3,0,0,20,'unidad','1'),('4246','Guante de Carnaza y Lonita','p/ protección de manos',3.5,3.5,0,0,20,'unidad','1'),('8081','Kit de 5 Sierras P/ Madera Corta Círculos','p/ madera',3.75,3.75,0,0,23,'unidad','1'),('1474','Desarmador Punta Philip 1/4 x 4\"','p/ destornillar',1.3,1.3,0,0,13,'unidad','1'),('4253','Lentes de Seguridad Truper Color Negro','p/ protección',1.5,1.5,0,0,24,'unidad','1'),('9786','Escoba Plástica 22 Dientes Rig.','p/ limpiar jardín',5.5,5.5,0,0,29,'unidad','1'),('1902','Llave Mixta 8mm Pretul','p/ tuerca',1.2,1.2,0,0,31,'unidad','1'),('1472','Desarmador Punta Philip 3/16 x 6','p/ destornillar',1.1,1.1,0,0,13,'unidad','1'),('1516','Espátula 3\" Flexible','p/ albañilería',1.85,1.85,0,0,20,'unidad','1'),('2953','Cortador de Vidrio 5\" Cuchilla de Diam.','p/ cortes de vidrio',2.4,2.4,0,0,32,'unidad','1'),('5412','Llana Mango Plástico 6 Remaches','p/ afinar',3.5,3.5,0,0,20,'unidad','1'),('4250','Mascarilla P/ Polvo en Caja','p/ protección',0.15,0.15,0,0,28,'unidad','1'),('1459','Desarmador Plano 1/4 x 4 Mang. PVC','p/ desarmar',1.3,1.3,0,0,13,'unidad','1'),('1559','Cepillo Alambre C/ Mango 4 x 16','p/ hierro',1.75,1.75,0,0,31,'unidad','1'),('2586','Cinta P/ Ducto 10m Resistente','p/ sellar',1.25,1.25,0,12,13,'unidad','1'),('7547','Cautín Tipo Lápiz 60w','p/ soldar',7.5,7.5,0,0,21,'unidad','1'),('6507','Almádana Octagonal 3 lbs C/ Mango','p/ albañilería',9.5,9.5,0,0,20,'unidad','1'),('2805','Cautín Tipo Lápíz 30w C/ Accesorios','p/ soldar',5,5,0,6,21,'unidad','1'),('1973','Pala Dúplex Atlas Mango Madera','p/ cavar huecos',19,19,0,0,20,'unidad','1'),('7306','Tenaza P/ Electricista 6\"','p/ cortar cables',5,5,0,0,13,'unidad','1'),('2750','Pistola Metálica P/ Riego 4\" Pretul','p/ jardín',2.25,2.25,0,0,29,'unidad','1'),('6477','Broquero C/ Llave 3/8\"','p/ brocas',4.25,4.25,0,0,20,'unidad','1'),('1970','Pala Dúplex Casera Mango Madera','p/ cavar huecos',14,14,0,0,20,'unidad','1'),('7831','Puntas Philip PH22 20 Pzas','p/ destornillar',5,0.35,0,0,20,'unidad','1'),('2753','Pistola Plástica P/ Riego 4\" Pretul','p/ jardín',1,1,0,0,29,'unidad','1'),('3324','Candado Hierro 45mm  Largo','p/ cadena',3,3,0,0,18,'unidad','1'),('3194','Bisagra Rectángular 2\" Acero Latón','p/ puerta y ventana',0.5,0.5,0,0,20,'pares','1'),('3060','Tijera P/ Podar a Dos Manos19\" Pretul','p/ arbustos',7.5,7.5,0,0,29,'unidad','1'),('9247','Regadera Redonda Cab. 3 1/2\" Agua','p/ regar plantas',6,6,0,0,29,'unidad','1'),('6701','Martillo Uña Curva 16oz Mang. Tub.','p/ clavar',6.5,6.5,0,0,20,'unidad','1'),('5000','Martillo Uña Curva 7oz Pretul','p/ clavar',3.75,3.75,0,0,20,'unidad','1'),('0400','Téster Digital Escolar','p/ probar corriente',8,8,0,0,21,'unidad','1'),('3198','Bisagra Rectángular 4\" Acero Latón','p/ puerta y ventana',1.8,1.8,0,0,24,'pares','1'),('6050','Tijera P/ Hojalatero 10\" Pretul','p/ cortar lámina',8.5,8.5,0,0,24,'unidad','1'),('2851','Remachadora 10\" C/ Remaches Pretul','p/ remachar',6,6,0,0,24,'unidad','1'),('3196','Bisagra Rectángular 3\" Acero Latón','p/ puerta y ventana',1,1,0,0,24,'pares','1'),('3195','Bisagra Rectángular 2 1/2\" Acero Latón','p/ puerta y ventana',0.7,0.7,0,0,24,'pares','1'),('3658','Pomo Trubal Tubular Latón Brillante','p/ puerta',7.5,7.5,0,0,24,'unidad','1'),('6052','Tijera P/ Hojalatero 8\"','p/ lámina',7,7,0,0,24,'unidad','1'),('2973','Separador de Cerámica 3mm','p/ cerámica',1,1,0,24,20,'unidad','1'),('2974','Separador de Cerámica 5mm','p/ cerámica',1.25,1.25,0,24,20,'unidad','1'),('8486','Conector F P/ Interiores','conector f',0.45,0.45,0,24,21,'unidad','1'),('0040','Hierro 1/4 Bajo Norma','construccion',33,1.15,0,0,28,'quintal','1'),('0041','Hierro 3/8 Comercial','construccion',29,2.15,0,0,28,'quintal','1'),('0042','Hierro 1/4 Norma','construccion',37,1.3,0,0,28,'quintal','1'),('0043','Hierro 3/8 Bajo Norma','construccion',36,2.6,0,0,28,'quintal','1'),('0044','Hierro 3/8 Norma','construccion',48,3.5,0,0,28,'quintal','1'),('0045','Hierro 1/2 Comercial','construccion',40,5,0,0,28,'quintal','1'),('0046','Hierro 1/2 Norma','construccion',48,6.1,0,80,28,'quintal','1'),('0047','Hierro 3/8 Norma Corinca','construccion',48,3.5,0,0,28,'quintal','1'),('8501','Bushing Reductor PVC 3/4 x 1/2','tuberías',0.25,0.25,0,0,19,'unidad','1'),('8701','Bushing Reductor PVC 1 x 3/4','tuberías',0.3,0.3,0,0,19,'unidad','1'),('9101','Bushing Reductor PVC 1 1/2 x 1/2','tuberías',0.5,0.5,0,0,19,'unidad','1'),('9201','Bushing Reductor PVC 1 1/2 x 3/4','tuberías',0.5,0.5,0,0,19,'unidad','1'),('9301','Bushing Reductor PVC 1 1/2 x 1','tuberías',0.5,0.5,0,0,19,'unidad','1'),('9501','Bushing Reductor PVC 3 x 1 1/2','tuberías',1.35,1.35,0,0,19,'unidad','1'),('9601','Bushing Reductor PVC 3 x 2','tuberías',1.75,1.75,0,0,19,'unidad','1'),('9701','Bushing Reductor PVC 4 x 2','tuberías',2,2,0,0,19,'unidad','1'),('9801','Bushing Reductor PVC 4 x 3','tuberías',2,2,0,0,19,'unidad','1'),('8601','Bushing Reductor PVC 1 x 1/2','tuberías',0.3,0.3,0,0,19,'unidad','1'),('06701','Tapón Hembra PVC 3\" Nivel 1 Amanco','p/ pvc',0.75,0.75,0,0,19,'unidad','1'),('4901','Bushing Reductor PVC 2 x 3/4','tuberías',1,1,0,0,19,'unidad','1'),('4801','Bushing Reductor PVC 2 x 1/2','tuberías',1,1,0,0,19,'unidad','1'),('5101','Bushing Reductor PVC 2 x 1','tuberías',1,1,0,0,19,'unidad','1'),('5301','Bushing Reductor PVC 2 x 1 1/2','tuberías',1,1,0,0,20,'unidad','1'),('8801','Bushing Reductor PVC 2 x 1 1/4','tuberías',1,1,0,0,19,'unidad','1'),('AH121','Adaptador F Rosca Presión','adaptador',0.5,0.5,0,0,21,'unidad','1'),('CA123','Ext. AC Radios Tipo 8 2 x 18','radio',1.15,1.15,0,0,21,'unidad','1'),('P 509','Adapt. AC Redondo a Plano Large','adapte',0.55,0.55,0,0,21,'unidad','1'),('PI 345','Ext. 2RCA M. a 2RCA M 1.8Mts Genérica','extensión',1,1,0,0,21,'unidad','1'),('PI 880','Plug 6.3mm Mono Metal','plugs',0.7,0.7,0,0,21,'unidad','1'),('TM R1 1614 10','Terminal Ojo 4.8mm 3/16\"','terminales',0.2,0.2,0,0,21,'unidad','1'),('0048','Tela Ciclón 9 x 72 Comercial','p/ sercar',147,5.25,0,0,24,'yarda','1'),('0049','Tela Ciclón 9 x 60 1.5 Mts','p/ sercar',125,4.45,0,0,24,'yarda','1'),('0050','Tela Ciclón 9 x 48','p/ sercar',100,3.5,0,0,24,'yarda','1'),('0052','Caño Galvanizado 3\" Mecánico','p/ estructuras',28,28,0,0,24,'unidad','1'),('0051','Tela Ciclón 9 x 36','p/ sercar',75,2.6,0,0,24,'yarda','1'),('0053','Caño Galvanizado 4\" Liso 140m','p/ estructuras',34,34,0,0,24,'unidad','1'),('10009014','Foco 12v de 1 cc p/ Moto','foco p/ moto',0.25,0.25,0,0,13,'unidad','1'),('1000910','Foco 12v 1cc Transp.','foco p/ vias',0.3,0.3,0,0,13,'unidad','1'),('10009009','Foco 12v 2cc Transp','foco p/ vias',0.3,0.3,0,0,13,'unidad','1'),('2008017','Tapon P/ Pila Alum 2p','tapon para pila',0.8,0.8,0,0,19,'unidad','1'),('2008020','Tapon P/ Pila Alum 1/2\"  VIVA','tapon p/ pila',0.7,0.7,0,0,19,'unidad','1'),('20010111','Codo Hechizo PVC 4\"','p/ tuberias',1.75,1.75,0,0,19,'unidad','1'),('2001023','Tee Hechiza 4\"','p/ tuberias',2.75,2.75,0,0,19,'unidad','1'),('737801','Adaptador Hembra PVC 1\"','p/ tuberias',0,0,0,6,19,'unidad','1'),('757501','Tapón Hembra PVC 1\"','p/ tuberias',0,0,0,15,19,'unidad','1'),('762801','Tee PVC 1\"','p/ tuberias',0,0,0,15,19,'unidad','1'),('1024101','Tapón Hembra PVC C/ Rosca 1 1/4\"','p/ tuberias',0,0,0,4,19,'unidad','1'),('2368201','Tapón Macho PVC C/ Rosca 1\"','p/ tuberias',0,0,0,6,19,'unidad','1'),('7678001','Adaptador Hembra PVC 1 1/4\"','p/ tuberias',0,0,0,6,19,'unidad','1'),('7679001','Adaptador Macho PVC 1 1/4\"','p/ tuberias',0,0,0,6,19,'unidad','1'),('9383001','Tapón Hembra PVC 1 1/4\"','p/ tuberias',0,0,0,21,19,'unidad','1'),('383001','Tapón Macho PVC C/ Rosca 1/2\"','p/ tuberias',0,0,0,10,19,'unidad','1'),('736201','Codo PVC 90° 3/4','p/ tuberias',0,0,0,25,19,'unidad','1'),('738201','Adaptador Hembra PVC 2\"','p/ tuberias',0,0,0,6,19,'unidad','1'),('738901','Adaptador Macho  PVC 3/4\"','p/ tuberias',0,0,0,25,19,'unidad','1'),('9943579','Aceite 3 en 1','lubricante',0,0,0,6,31,'unidad','1'),('10348309','Perno C/H Galv. 1/4 x 2 C/T','Herragería',0,0,0,0,18,'unidad','1'),('762601','Tee PVC 1/2\"','p/ tuberias',0,0,0,25,19,'unidad','1'),('762701','Tee PVC 3/4\"','p/ tuberias',0,0,0,12,19,'unidad','1'),('763101','Tee PVC 2\"','p/ tuberias',0,0,0,6,19,'unidad','1'),('21349301','Tapón Hembra PVC C/ Rosca 2\"','p/ tuberias',0,0,0,3,19,'unidad','1'),('10348409','Perno C/H Galv. 1/4 x 2 1/2 C/T','p/ abrazadera',0,0,0,0,18,'unidad','1'),('0054','Niple Galvanizado 1\" x  2\"','p/ cañerias',1,1,0,0,19,'unidad','1'),('0055','Naiz C/ Atomizador','p/ limpiar autos',4,4,0,0,26,'unidad','1'),('ATJET100A','Sistema Automatico 1HP 110V 24Lts','p/ bombeo de agua',0,0,0,0,19,'unidad','1'),('ATQB60','Sistema Automaticob 1/2HP 110V 24Lts','p/ bombeo de agua',0,0,0,0,19,'unidad','1'),('QB60','Bomba Periférica 0.5HP 110V 60H2 1x1','p/ bombeo de agua',0,0,0,0,19,'unidad','1'),('QB70','Bomba Centrífuga De 0.75HP 110V 1x1','p/ bombeo de agua',0,0,0,0,19,'unidad','1'),('QB80','Bomba Centrífuga De 1HP 110V 1.5 x 1.5','p/ bombeo de agua',0,0,0,0,19,'unidad','1'),('TOP37OA110','Bomba Superfi. De Tubo 1HP 110V Pozo P/Pr','p/ bombeo de agua',0,0,0,0,19,'unidad','1'),('Dy312SB','1/8 Electrodo P/ Acero','p/ soldaduras',11,1,0,0,24,'libra','1'),('HL6007300A','Lida Tenaza P/ Electrodo T/ Alem','p/ soldaduras',0,0,0,0,24,'unidad','1'),('1458','Desarmador Plano 3/16x4 M/PVC','p/ desatornillar',0,0,0,0,13,'unidad','1'),('1457','Desarmador 3/16x6 M/PVC','p/ desatornillar',1.1,1.1,0,0,13,'unidad','1'),('4252','Lente de Seguridad Truper Color Transparente','p/ protección',0,0,0,0,13,'unidad','1'),('3988','Probador de Corriente Alter. Tip. Des.','p/ energia',0,0,0,6,21,'unidad','1'),('3270','Excello Esmalte Aluminio B4SSA1','p/ decoracion',9.5,9.5,0,4,22,'galon','1'),('7537','Extensión Cafetera 6 Pie C/ Enchufe','p/ cafetera',5,5,0,0,13,'unidad','1'),('7909','Arandela Plana Galvanizada 3/16','p/ tornillos',0.03,0.03,0,0,31,'unidad','1'),('0909','Tornillo Pared Seca R/O 8x2\"','p/ madera',0,0,0,0,23,'unidad','1'),('3109','Tornillo Pared Seca R/O 8x1 1/2\"','p/ madera',0,0,0,0,23,'unidad','1'),('5800','Tornillo Pared Seca R/O 8x2 1/2\"','p/ madera',0,0,0,0,23,'unidad','1'),('2409','Tornillo Pared Seca R/O 8x1\"','p/ madera',0,0,0,0,23,'unidad','1'),('8109','Tornillo Pared Seca R/O 8x3\"','p/ madera',0,0,0,0,23,'unidad','1'),('5409','Tornillo Estufa C/R Galvanizado 1/4 x 1 1/2\"','p/ metal',0.1,0.1,0,0,31,'unidad','1'),('3550','Tornillo Estufa C/R Galvanizado1/4x2\"','p/ metal',0.12,0.12,0,0,31,'unidad','1'),('6609','Tornillo Estufa Galvanizado 3/16x1\"','p/ metal',0.06,0.06,0,0,31,'unidad','1'),('6809','Tornillo Estufa Galvanizado 3/16 x 2\"','p/ metal',0.1,0.1,0,0,31,'unidad','1'),('3609','Tornillo Estufa Galvanizado 1/8x1\"','p/ metal',0.05,0.05,0,0,31,'unidad','1'),('3809','Tornillo Estufa Galvanizado 1/8 x 1 1/2\"','p/ metal',0.06,0.06,0,0,31,'unidad','1'),('3909','Tornillo Estufa Galvanizado 1/8x2\"','p/ metal',0.08,0.08,0,0,31,'unidad','1'),('7309','Tornillo Estufa Galvanizado 3/16 x 1 1/2\"','p/ metal',0.08,0.08,0,0,31,'unidad','1'),('9481','Toma Adaptador Polo Tierra','p/ energia',0.5,0.5,0,0,13,'unidad','1'),('5362','Lona Reforzada 3x3m Gris','p/ cubrir',13,13,0,1,30,'unidad','1'),('5364','Lona Reforzada 4x5m Gris','p/ cubrir',26,26,0,1,30,'unidad','1'),('6478','Broquero C/ Llave 1/2\"','p/ brocas',5,5,0,0,24,'unidad','1'),('9346','Sapo PVC P/ Tanque Bajo C/ Cadena','p/ tanque de sanitario',1,1,0,6,19,'unidad','1'),('5361','Lona Reforzada 2x3m Griz','p/ cubrir',9.5,9.5,0,1,30,'unidad','1'),('4309','Cincho Plastico 50 Lb 350mm','p/ usos varios',1.5,0.05,0,3,31,'unidad','1'),('4308','Cincho Plastico 50Lb 300mm','p/ usos varios',2,0.06,0,3,31,'unidad','1'),('0372','Conector \"Y\" Alum. Entrada 3/4','p/ coneccion',2.75,2.75,0,3,21,'unidad','1'),('5363','Lona Reforzada 3x4mts Griz','p/ cubrir',16,16,0,1,30,'unidad','1'),('4305','Cincho Plastico 40Lb 250mm','p/ usos varios',1.5,0.05,0,3,31,'unidad','1'),('0056','Tubo Pre Campana Drenaje 4\"','p/ drenar',9.5,9.5,0,0,19,'unidad','1'),('0057','Tubo Pre Campana Drenaje 3\"','P/ drenar',6.5,6.5,0,0,19,'unidad','1'),('0058','Polín \"C\" 4\" Galvanizado 1.20mm','p/ construcción',15.5,15.5,0,0,28,'unidad','1'),('h001','Foco Chiyoda 25W','p/ alumbrado',2.5,2.5,0,500,34,'unidad','1'),('R055','Chapa P/ Gaveta','p/ gavetas',1,1,0,24,24,'unidad','1'),('626A','Lampara LED 12v C/ Extension','p/ iluminación',6,6,0,6,13,'unidad','1'),('415H','Cruz P/ Pegar Cerámica 4mm','p/ cerámica',0.85,0.85,0,6,20,'unidad','1'),('0059','Regadera P/ Baño Grande Negra','p/ ducha',3.25,3.25,0,6,19,'unidad','1'),('0060','Regadera P/ Baño Pequeña','p/ ducha',2,2,0,6,19,'unidad','1'),('96A3','Inversor 800w 12v/120','p/ invertir corriente',85,85,0,2,13,'unidad','1'),('3680','Escalera 2/B Fibra V 8 Indust. 250L INCO','p/ electricista',115,115,0,1,13,'unidad','1'),('1411301','Tapón Macho PVC C/ Rosca 1 1/4\"','p/ tuberías',1.3,1.3,0,3,19,'unidad','1'),('4501','Tee PVC 1 1/4\"','p/ tubería',1,1,0,6,19,'unidad','1'),('0061','Arandela Plana Galvanizada 5/8','p/ pernos',0.45,0.45,0,0,18,'unidad','1'),('4079','WD - 40 Aerosol 5.5 oz','p/ aflojar tuercas',3,3,0,5,30,'unidad','1'),('RB0350','Bomba P/ Bicicleta #35324 Azul','p/ inflar bicicletas',1.5,1.5,0,4,33,'unidad','1'),('RB0380','Niple P/ Bomba de Carro','p/ inflar',0.9,0.9,0,6,33,'unidad','1'),('RB2540','Niple P/ Bomba 35342/6','p/ inflar',0.9,0.9,0,6,33,'unidad','1'),('RB2553','Parches 31522-M48 TW (JGO)','p/ bicicleta',1.5,1.5,0,12,33,'unidad','1'),('RL00344','Cuchilla Oster Original','p/ licuadora',7,7,0,6,33,'unidad','1'),('RB0351','Bomba P/ Bicicleta #35324 Roja','p/ inflar',1.5,1.5,0,4,33,'unidad','1'),('RB0352','Bomba P/ Bicicleta #35324 Negra','p/ bicileta',1.5,1.5,0,4,33,'unidad','1'),('56','prueba','prueba',5,5,0,0,33,'prueba','1'),('564','PRUEBA','PRUEBA',8,8,0,0,33,'PRUEBA','1'),('6','prp','prp',5,5,0,0,33,'5','1'),('9056','Valvula De Pie o Granada de Laton, Reji','p/ bomba de poso',5,5,0,3,19,'unidad','1'),('3986','Probador De Corriente 20cm','p/ probar corriente',2.75,2.75,0,3,13,'unidad','1'),('4863','Bomba Manual P/ Inflar','p/ inflar neumaticos',9,9,0,1,33,'unidad','1'),('6941','Cuerpo Terminal 3/4 de Alum. Con Abraz.','terminal',1.4,1.4,0,12,13,'unidad','1'),('JR -294A','Lámpara LED de 4 Pies C/ Marco','iluminación',13,13,0,0,13,'unidad','0'),('JR294A','Lampara LED de 4 Pies C/ Marco','Iluminación',13,13,0,20,34,'unidad','1'),('1600','Tubo pvc 6 PsI 63 SDR 64 Gris 3034 J.C.','Para Fontaneria',21,21,0,0,19,'Metro','1'),('0062','Sierra Eclipse18','p/ serrar',1.6,1.6,0,10,24,'unidad','1'),('h004','Foco Apolo 45W','p/ alumbrado',5,5,0,20,34,'unidad','1'),('9040','Codo 90° PVC SANIT 4\"','p/ tuberias pvc',2.5,2.5,0,0,19,'unidad','1'),('1111','Tela Gallinero 1 x 36','gallinero',35,0.8,0,0,33,'yarda','1'),('1112','Duplex #16 Rojo-Negro (R. 300M.)','P/ audio',0.3,0.3,0,0,21,'metro','1'),('1113','Duplex #22 Rojo-Negro (R. 300 M.)','p/ audio',0.22,0.22,0,0,21,'metro','1'),('1114','Clip de 30 Amp. P/ Batería (Rojo y Negro)','p/ baterias',0,0,0,0,30,'unidad','1'),('1115','Foco LED de 3W Orobar','iluminación',0,0,0,0,34,'unidad','1'),('asdf','gerson','gerson',5,5,0,0,24,'Unidad','1'),('sasd','winbe','winbe',88,8,0,0,26,'Unidsa','1'),('asd','GATITA','gatita',8,8,0,0,13,'Unidad','1'),('0195','Candado Viva En Blister 20mm','seguridad',1,1,0,0,18,'unidad','1'),('6045','Tirro Blue Bold 3/4','p/ pintores',0.8,0.8,0,0,22,'unidad','1');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `codproveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `nit` varchar(250) DEFAULT NULL,
  `nrc` varchar(250) DEFAULT NULL,
  `giro` varchar(250) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `telefono` varchar(250) DEFAULT NULL,
  `fax` varchar(250) DEFAULT NULL,
  `e_mail` varchar(250) DEFAULT NULL,
  `estado` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`codproveedor`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (6,'Monolit','0614-061187-002-4','3153-4','comercio y fabrica de construccion','calle siemens urb.santa elena No45 Antiguo Cuscatlán La Libertad','2241-6600','','','Activo'),(7,'Promotora Comercial S.A. de C.V.','0614-271187-004-4','9565-6','Venta de Otros Productos Alimenticios No Clasificados Previamente No Incluye Bebidas','Km 31 Polig. A Lote 15 Parcelación El Castaño San Juan Opico La Libertad','2349-5656','2349-5600','www.grupopromocom.com','Activo'),(8,'Freund','0614-010858-001-7','41-8','Venta de Articulos de Ferreteria','Prolong. Autopista Nrte. y Pasaje Freund No. 3 Col. Mompegon San Salvador San Salvador','2276-3333','2276-9266','','Activo'),(9,'CEFECO S.A de C.V.','0614-150213-106-5','225279-1','Venta al Por mayor de Articulos de Ferretería','Carretera a Acajutla, Lotificación Inclan Lote No. 49 Sonsonate Sonsonate Sonsonate','2451-0606','2451-5549','','Activo'),(10,'La Bodega del Constructor','0207-190209-101-9','217790-6','Compra-Venta de Productos Ferreteros','Carretera Int. Contiguo a Puente San José, Km 113, Metepán, Santa Ana Metapán Santa Ana','2402-0908','2442-0108','','Activo'),(11,'PRIMAC','0614-290405-104-8','165145-6','Venta al Por Mayor de Maquinaria y Equipo Agropecuario, Accesorios y Suministros','Calle Antigua a Ferrocarril y 27 Av. Sur, No. M 862 Col. Cucumacayan, San Salvador San Salvador San Salvador','2222-5420','2271-8567','primac2010@hotmail.com','Activo'),(12,'JF PRODUCTS','0213-300365-101-8','132977-1','Comercio','Final 11 Av. Nte. Carretera a Metapán No. 2 Colonia El Cocal Santa Ana Santa Ana Santa Ana','2448-1847','2441-0440','jfproducts@gmail.com','Activo'),(13,'Suministros Eléctricos','0103-020466-101-4','109043-7','Otras Actividades de Servicios No Clasificadas Previamente, Venta de Otros Productos No Clasificados Previamente','Final Calle Alberto Masferrer Oriente, Local 7-6B Bo. El Angel Frente a Parqueo de Banco Promerica Sonsonate Sonsonate','2450-1841','','','Activo'),(14,'S&H S.A. de C.V. (Soluciones y Herramientas)','0614-270906-102-0','174953-0','Venta de Articulos de Ferreteria, de Materiales,  Accesorios y Otras Actividades de Servicio No Clasificados Previamente','Km 17.5 Carretera CA-1, Parque Industrial Palo Alto, No. 8 y 9, Apopa, San Salvador Apopa San Salvador','2205-3900','2205-3910','','Activo'),(15,'CELCO S.A. de C.V.','0614-281006-105-8','176158-2','Fabricacion Sustancias Quimicas Basicas','5a. Av. Nte. No. 2-8 Santa Tecla, La Libertad Santa Tecla La Libertad','2288-2063','2288-2083','','Activo'),(16,'ACES FERRETERIA','0614-140205-109-9','164121-4','Venta de Articulos de Ferreteria, de Materiale y Accesorios para la Construccion, Incluye Pinturas y Productos Conexos','8va Calle Poniente y 1a Av. Sur No. 507, San Salvador San Salvador San Salvador','2222-0357','','aces.ferreteria@gmail.com','Activo'),(17,'INVERSIONES ASIATICAS S.A. DE C.V.','0614-131113-106-5','229193-4','Venta al Por Menor de Otros Productos N.C.P.','Pasaje 10 No. 3018, Col. Miramonte, San salvador San Salvador San Salvador','2124-3884','','susan@susan-global.com','Activo'),(18,'ALMACENES BOU','0210-010671-001-6','3334-0','Venta de Productos para Ferreteria','1a. Calle Pte. y  4a. Av. Sur  No. 3 Santa Ana Santa Ana Santa Ana','2441-1739','','','Activo'),(19,'CANPLASTICA','0614-220107-104-7','195904-7','Tuberia y Accesorios de PVC y Polietileno','Km. 10 1/2 Carretera al Puerto de La  Libertad Bodega POLYFIL, Antiguo Cuscatlan, La Libertad Antiguo Cuscatlán La Libertad','2278-4385','2278-4387','','Activo'),(20,'Distribuidora Casa Ferretera','0614-170982-125-8','218910-4','Distribuidora Casa Ferretera','Residencial Florencia  Pje. 12 Poniente Block 19 Casa No. 15 San Marcos San Marcos San Salvador','2130-6727','','distribuidoraferretera@hotmail.com','Activo'),(21,'Holcim','0614-171049-001-0','318-2','Fabricacion de Cemento, cal y yeso.','Calle Holcim y Av. El Espino Madreselva. Antiguo Cuscatlán La Libertad','2507-8888','2505-0777','www.holcim.com.sv','Activo'),(22,'DISTRIBUIDORA PILISA S.A. de C.V.','0614-100605-102-7','166045-7','Venta de Articulo para Ferreteria, Materiales y Accesorios para la Construccion y Productos Conexos','Km. 27.5, Carretera al Puerto de La Libertad, Canton El Cimarron, Pasaje 1; Lote No. 1 La Libertad La Libertad','2228-7524','2564-2149','dispilisa@gmail.com','Activo'),(23,'FERRO DEPOT S.A. de C.V.','0614-140499-101-3','112237-1','Venta al por Mayor de Articulos de Ferretería y Pinturerías','Av. Cuscatlán y Calle Lara #105, Barrio Candelaria San Salvador San Salvador','2521-9200','2521-9201','','Activo'),(24,'Ferretería Alex','0614-141170-118-7','84833-6','Ferretería','8a. Calle Pte. y 1a. Av. Sur Local N° 1 San Salvador San Salvador','2221-4874','','','Activo'),(25,'V&G DE EL SALVADOR S.A DE C.V.','0210-290806-101-7','174376-2','Ferretería','9a Calle Ote. / 19 y 21 Av. Sur #3, Santa Ana Santa Ana Santa Ana','2429-4800','2429-4813','','Activo'),(26,'Ferretería \"Santa Sofia\"','0406-210240-001-0','42637-7','Venta de Articulos de Ferreteria','5a Av. Norte Bo. San Francisco #1-3, Sonsonate Sonzacate Sonsonate','2525-0700','','','Activo'),(27,'Industrias Magaña L. S.A. de C.V.','0210-020801-101-6','134170-6','Fabricación de Aparatos Electrónicos de Consumo para Audio, etc.','Km. 69 1/2 , Sobre Carretera que de Santa Ana Conduce a Metapán Metapán Santa Ana','2404-2000','2441-0500','','Activo');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respaldos`
--

DROP TABLE IF EXISTS `respaldos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respaldos` (
  `idrespaldo` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(200) DEFAULT NULL,
  `nombrearchivo` varchar(150) DEFAULT NULL,
  `automatico` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idrespaldo`)
) ENGINE=MyISAM AUTO_INCREMENT=796 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respaldos`
--

LOCK TABLES `respaldos` WRITE;
/*!40000 ALTER TABLE `respaldos` DISABLE KEYS */;
INSERT INTO `respaldos` VALUES (792,'8/10/2015 12:03:47 p. m.','Respaldo792','false'),(793,'9/10/2015 4:16:22 p. m.','Respaldo793','false'),(794,'9/10/2015 4:19:38 p. m.','Respaldo794','false'),(795,'13/10/2015 2:27:02 p. m.','Respaldo795',' ');
/*!40000 ALTER TABLE `respaldos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tirajes`
--

DROP TABLE IF EXISTS `tirajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tirajes` (
  `idtiraje` int(11) NOT NULL,
  `tirajefs` varchar(50) DEFAULT NULL,
  `tirajefd` varchar(50) DEFAULT NULL,
  `tirajefh` varchar(50) DEFAULT NULL,
  `tirajefa` varchar(50) DEFAULT NULL,
  `tirajecs` varchar(50) DEFAULT NULL,
  `tirajecd` varchar(50) DEFAULT NULL,
  `tirajech` varchar(50) DEFAULT NULL,
  `tirajeca` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idtiraje`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tirajes`
--

LOCK TABLES `tirajes` WRITE;
/*!40000 ALTER TABLE `tirajes` DISABLE KEYS */;
INSERT INTO `tirajes` VALUES (1,'15HC001F','1','750','336',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tirajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr`
--

DROP TABLE IF EXISTS `usr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usr` (
  `IdUsr` char(15) NOT NULL,
  `cNom` varchar(20) DEFAULT NULL,
  `cApe` varchar(20) DEFAULT NULL,
  `cClave` varchar(80) DEFAULT NULL,
  `cEstado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`IdUsr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr`
--

LOCK TABLES `usr` WRITE;
/*!40000 ALTER TABLE `usr` DISABLE KEYS */;
INSERT INTO `usr` VALUES ('admin','Usuario','Administrador','estaes1contra','A'),('super','SUPER','SUPER','admin','A'),('usuario1','USUARIO','USUARIO','admin','A');
/*!40000 ALTER TABLE `usr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-13 14:27:07
