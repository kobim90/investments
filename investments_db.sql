-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: investments_db
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `client_pool`
--

DROP TABLE IF EXISTS `client_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_pool` (
  `client_id` int NOT NULL,
  `investment_pool_id` int NOT NULL,
  `amount_invested` int NOT NULL,
  PRIMARY KEY (`client_id`,`investment_pool_id`),
  KEY `FK_investment_pool_id_client_pool` (`investment_pool_id`),
  CONSTRAINT `FK_client_id_client_pool` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `FK_investment_pool_id_client_pool` FOREIGN KEY (`investment_pool_id`) REFERENCES `investment_pool` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_pool`
--

LOCK TABLES `client_pool` WRITE;
/*!40000 ALTER TABLE `client_pool` DISABLE KEYS */;
INSERT INTO `client_pool` VALUES (1,1,5000),(1,2,3000),(1,3,5000),(2,1,4000),(2,4,7000),(3,3,6000),(3,5,9000),(4,4,4000),(4,6,8000),(5,5,2000),(5,7,1000),(6,6,9000),(6,8,3000),(7,9,2000),(7,10,5000);
/*!40000 ALTER TABLE `client_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'kobi','kobi1@gmail.com'),(2,'kobe','kobe@gmail.com'),(3,'cobi','cobi@gmail.com'),(4,'kovi','kovi@gmail.com'),(5,'cobe','cobe@gmail.com'),(6,'covi','covi@gmail.com'),(7,'cove','cove@gmail.com');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment_pool`
--

DROP TABLE IF EXISTS `investment_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment_pool` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment_pool`
--

LOCK TABLES `investment_pool` WRITE;
/*!40000 ALTER TABLE `investment_pool` DISABLE KEYS */;
INSERT INTO `investment_pool` VALUES (1,'investment1'),(2,'investment2'),(3,'investment3'),(4,'investment4'),(5,'investment5'),(6,'investment6'),(7,'investment7'),(8,'investment8'),(9,'investment9'),(10,'investment10');
/*!40000 ALTER TABLE `investment_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `investment_pool_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_investment_pool_id_stores` (`investment_pool_id`),
  CONSTRAINT `FK_investment_pool_id_stores` FOREIGN KEY (`investment_pool_id`) REFERENCES `investment_pool` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'store1',1),(2,'store2',1),(3,'store3',1),(4,'store4',2),(5,'store5',2),(6,'store6',2),(7,'store7',3),(8,'store8',3),(9,'store9',4),(10,'store10',4),(11,'store11',4),(12,'store12',5),(13,'store13',5),(14,'store14',6),(15,'store15',6),(16,'store16',7),(17,'store17',7),(18,'store18',7),(19,'store19',8),(20,'store20',8),(21,'store21',9),(22,'store22',9),(23,'store23',10),(24,'store24',10);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-17 16:00:38
