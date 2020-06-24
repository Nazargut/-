-- MySQL dump 10.13  Distrib 5.7.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: furniture_factory
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id_clien` int(11) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  KEY `clients_orders_id_order_fk` (`id_clien`),
  CONSTRAINT `clients_orders_id_order_fk` FOREIGN KEY (`id_clien`) REFERENCES `orders` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Pavlo Rysta',683320623),(2,'Ryslan Kinah',636346658),(3,'Ivan Popovich',681597835),(4,'Olena Abomovich',996686543),(5,'Katerina Herasemenko',691231235),(6,'Mukola Vaskiv',696521213),(7,'Oleksandr Kurovski',645620321),(8,'Natali Litvun',222012203);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id_order` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  KEY `orders_products_id__products_fk` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1),(2,2,2),(3,8,3),(4,3,8),(5,5,6),(6,7,5),(7,6,4),(8,9,4),(9,10,3),(10,5,2),(11,6,7),(12,11,1),(13,11,5),(14,2,3),(15,3,2),(16,1,2),(17,2,8),(17,2,8);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id__products` int(11) NOT NULL,
  `NameOfProduct` varchar(50) NOT NULL,
  `praise` int(5) DEFAULT NULL,
  PRIMARY KEY (`id__products`),
  CONSTRAINT `products_orders_id_order_fk` FOREIGN KEY (`id__products`) REFERENCES `orders` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'tadle',5000),(2,'sofa',15000),(3,'chair',1000),(4,'armchair',4000),(5,'wardrobe',1500),(6,'stool',400),(7,'commode',2000),(8,'night table',2000),(9,'desk',500),(10,'office chair',1500),(11,'bed',17000);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `Id_worker` int(3) NOT NULL,
  `size_salary` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,1,35000),(2,2,10000),(3,3,50000),(4,4,10000),(5,5,25000),(6,6,20000),(7,7,22000),(8,8,30000),(9,9,22000),(10,10,24000),(11,11,12000),(12,12,12000),(13,13,12000);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workers` (
  `id_worker` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `age` int(2) NOT NULL,
  `position` varchar(30) NOT NULL,
  PRIMARY KEY (`id_worker`),
  CONSTRAINT `workers_salary_id_fk` FOREIGN KEY (`id_worker`) REFERENCES `salary` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'Petro Ilkiv',672222221,56,'director'),(2,'Nazar Vapol',672222222,50,'administrator'),(3,'Andrew Melnyk',672222223,51,'owner'),(4,'Oksana Petrovich',672222224,35,'accountant'),(5,'Oleg Ostapenko',672222225,42,'tehnical worker'),(6,'Vasil Borey',672222226,36,'tehnical worker'),(7,'Sergey Matvienko',672222227,29,'tehnical worker'),(8,'Orest Sidorenko',672222228,26,'designer'),(9,'Taras Korostov',672222229,33,'tehnical worker'),(10,'Nazar Maslak',672222230,37,'tehnical worker'),(11,'Ostap Klich',672222231,30,'security guard'),(12,'Anderew Kulul',672222232,30,'security guard'),(13,'Valentyn Perol',672222233,36,'driver');
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-17 21:22:09
