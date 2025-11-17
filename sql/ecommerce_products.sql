-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` varchar(20) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('product_1','Wireless Mouse'),('product_2','Mechanical Keyboard'),('product_3','USB-C Charger 30W'),('product_4','Noise Cancelling Headphones'),('product_5','Gaming Monitor 24-inch'),('product_6','Smartwatch Series A'),('product_7','Bluetooth Speaker Mini'),('product_8','Laptop Stand Aluminium'),('product_9','Portable SSD 1TB'),('product_10','Webcam HD 1080p'),('product_11','Wireless Earbuds'),('product_12','4K Action Camera'),('product_13','Graphic Tablet Small'),('product_14','LED Desk Lamp'),('product_15','Smartphone Tripod'),('product_16','Gaming Chair'),('product_17','Laptop Sleeve 15-inch'),('product_18','Microphone USB'),('product_19','HDMI Cable 2m'),('product_20','Bluetooth Keyboard'),('product_21','Wireless Router AC1200'),('product_22','Smart Home Hub'),('product_23','Noise Filter Microphone'),('product_24','VR Headset Basic'),('product_25','Fitness Band'),('product_26','Portable Projector'),('product_27','Phone Holder Car'),('product_28','Smart Bulb RGB'),('product_29','Gaming Mousepad XL'),('product_30','USB Hub 4-Port'),('product_1','Wireless Mouse'),('product_2','Mechanical Keyboard'),('product_3','USB-C Charger 30W'),('product_4','Noise Cancelling Headphones'),('product_5','Gaming Monitor 24-inch'),('product_6','Smartwatch Series A'),('product_7','Bluetooth Speaker Mini'),('product_8','Laptop Stand Aluminium'),('product_9','Portable SSD 1TB'),('product_10','Webcam HD 1080p'),('product_11','Wireless Earbuds'),('product_12','4K Action Camera'),('product_13','Graphic Tablet Small'),('product_14','LED Desk Lamp'),('product_15','Smartphone Tripod'),('product_16','Gaming Chair'),('product_17','Laptop Sleeve 15-inch'),('product_18','Microphone USB'),('product_19','HDMI Cable 2m'),('product_20','Bluetooth Keyboard'),('product_21','Wireless Router AC1200'),('product_22','Smart Home Hub'),('product_23','Noise Filter Microphone'),('product_24','VR Headset Basic'),('product_25','Fitness Band'),('product_26','Portable Projector'),('product_27','Phone Holder Car'),('product_28','Smart Bulb RGB'),('product_29','Gaming Mousepad XL'),('product_30','USB Hub 4-Port'),('product_1','Wireless Mouse'),('product_2','Mechanical Keyboard'),('product_3','USB-C Charger 30W'),('product_4','Noise Cancelling Headphones'),('product_5','Gaming Monitor 24-inch'),('product_6','Smartwatch Series A'),('product_7','Bluetooth Speaker Mini'),('product_8','Laptop Stand Aluminium'),('product_9','Portable SSD 1TB'),('product_10','Webcam HD 1080p'),('product_11','Wireless Earbuds'),('product_12','4K Action Camera'),('product_13','Graphic Tablet Small'),('product_14','LED Desk Lamp'),('product_15','Smartphone Tripod'),('product_16','Gaming Chair'),('product_17','Laptop Sleeve 15-inch'),('product_18','Microphone USB'),('product_19','HDMI Cable 2m'),('product_20','Bluetooth Keyboard'),('product_21','Wireless Router AC1200'),('product_22','Smart Home Hub'),('product_23','Noise Filter Microphone'),('product_24','VR Headset Basic'),('product_25','Fitness Band'),('product_26','Portable Projector'),('product_27','Phone Holder Car'),('product_28','Smart Bulb RGB'),('product_29','Gaming Mousepad XL'),('product_30','USB Hub 4-Port');
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

-- Dump completed on 2025-11-17 12:51:01
