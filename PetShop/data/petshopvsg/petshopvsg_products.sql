CREATE DATABASE  IF NOT EXISTS `petshopvsg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `petshopvsg`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: petshopvsg
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.14-MariaDB

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peso` int(11) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` int(11) NOT NULL,
  `id_subcategoria` int(11) DEFAULT NULL,
  `id_tienda` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTienda_idx` (`id_tienda`),
  KEY `idsubcategoria_idx` (`id_subcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Purina Excellent','Purina','Perro',20,999.99,'Alimento Excellent Perro adulto mix 20kg ','1.webp',15,'2020-10-28 01:01:58',2020,1,NULL),(2,'Club Performance Adulto','Royal Canin','Perro',25,500.00,'Alimento Royal Canin Club Performance mix 20kg modificado','2.webp',15,'2020-10-27 22:25:55',2020,3,NULL),(3,'Vitalcan Balanced','Vitalcan ','Perro',0,999.99,'Alimento Vitalcan Balanced 15kg','3.webp',15,'2020-10-27 01:09:09',0,1,NULL),(4,'Vitalcan Balanced Control de Peso','Vitalcan ','Perro',0,999.99,'Alimento Vitalcan Balanced Control de Peso 20kg','4.webp',15,'2020-10-27 01:09:09',0,1,NULL),(5,'Purina Pro Plan OptiHealth','Purina','Perro',0,999.99,'Alimento Pro Plan OptiHealth 15kg','5.webp',20,'2020-10-27 01:09:09',0,1,NULL),(6,'Purina Pro Plan Adult','Purina','Perro',0,999.99,'Alimento Pro Plan Adult Complete 15kg ','6.webp',30,'2020-10-27 01:09:09',0,1,NULL),(7,'Purina Excellent Puppy','Purina','Perro',0,999.99,'Alimento Excellent Puppy 20kg','7.webp',10,'2020-10-27 01:09:09',0,1,NULL),(8,'Vitalcan Balanced','Vitalcan','Perro',0,999.99,'Alimento Vitalcan Balanced 20kg ','8.webp',5,'2020-10-27 01:09:09',0,1,NULL),(9,'Purina Pro Plan Puppy','Purina','Perro',0,999.99,'Alimento Pro Plan Puppy 18kg','9.webp',20,'2020-10-27 01:09:09',0,1,NULL),(10,'Sieger Super Premium','Sieger','Perro',15,999.99,'Alimento Sieger Super Premium 15kg','10.webp',10,'2020-10-27 22:56:01',2020,1,NULL),(11,'Purina Pro Plan OptiFit','Purina','Perro',0,999.99,'Alimento Pro Plan OptiFit Reduced Calorie 15kg','11.webp',10,'2020-10-27 01:09:09',0,1,NULL),(12,'Purina Pro Plan OptiStart','Purina','Perro',0,999.99,'Alimento Pro Plan OptiStart Puppy 18kg ','12.webp',10,'2020-10-27 01:09:09',0,1,NULL),(13,'Pedigree Etapa 2','Pedigree','Perro',0,999.99,'Alimento Pedigree Etapa 2 21kg','13.webp',10,'2020-10-27 01:09:09',0,1,NULL),(14,'Royal Canin Club Performance','Royal Canin','Perro',0,999.99,'Alimento Royal Canin Club Performance 15kg ','14.webp',5,'2020-10-27 01:09:09',0,1,NULL),(15,'Purina Cat Chow','Purina','Gato',0,999.99,'Alimento Cat Chow 15kg ','15.webp',5,'2020-10-27 01:10:50',0,1,NULL),(16,'Alimento Sieger Criadores','Sieger','Perro',0,999.99,'Alimento Sieger Super Premium Criadores 20kg','16.webp',10,'2020-10-27 01:12:30',0,1,NULL),(17,'Old Prince Dermadefense','Old Prince','Perro',0,999.99,'Alimento Old Prince Special Recipe Dermadefense 15kg ','17.webp',10,'2020-10-27 01:12:37',0,1,NULL),(18,'Royal Canin Feline Care','Royal Canin','Gato',0,999.99,'Alimento Royal Canin Feline Care 7.5kg','18.webp',10,'2020-10-27 01:10:58',0,1,NULL),(19,' Royal Canin Feline','Royal Canin','Gato',0,999.99,'Alimento Royal Canin Feline mix 7.5kg','19.webp',10,'2020-10-27 01:11:29',0,1,NULL),(21,'Purina Tidy cats Arena Sanitaria','Purina','Gato',0,850.99,'Purina Tidy cats Arena Sanitaria (Control Continuo de Olores)','image-1600310174675.jpg',1,'2020-10-27 22:54:46',2020,2,NULL),(22,'Gatos Adultos','Premium','Gato',8,850.99,'alimento balanceado para gatos adultos','image-1603497558719.webp',15,'2020-10-27 22:54:52',2020,1,NULL),(24,'Pipeta para gatos','Frontline','Gato',0,800.00,'Antipulgas para gatos con peso mayor a 4kg y para embarazadas','image-1603851401067.jpg',15,'2020-11-24 00:05:14',2020,4,NULL),(34,'nombre5','wwwwww','Gato',25,500.00,'asdasdasdasd  asdasdasdasdasdasd','image-1606004787918.jpg',15,'2020-11-24 00:05:14',2020,1,NULL),(35,'nombre5','wwwwww','Gato',15,500.00,'apricepricepricepricepricepricepricepricepricepricepricepricepriceprice','image-1606005087991.jpg',3,'2020-11-24 03:29:51',2020,1,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-24  3:26:10
