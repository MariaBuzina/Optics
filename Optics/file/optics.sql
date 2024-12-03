CREATE DATABASE  IF NOT EXISTS `optics` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `optics`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 10.207.106.12    Database: db02
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ClientId` int NOT NULL AUTO_INCREMENT,
  `ClientSurname` varchar(50) NOT NULL,
  `ClientName` varchar(50) NOT NULL,
  `ClientPatronymic` varchar(50) NOT NULL,
  `ClientPhone` varchar(20) NOT NULL,
  `ClientBirthday` date DEFAULT NULL,
  PRIMARY KEY (`ClientId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Иванов','Иван','Иванович','+7 (901) 123-45-67','1990-01-01'),(2,'Петрова','Светлана','Сергеевна','+7 (902) 234-56-78','1990-01-02'),(3,'Сидоров','Дмитрий','Александрович','+7 (903) 345-67-89','1990-01-03'),(4,'Кузнецова','Анна','Викторовна','+7 (904) 456-78-90','1990-01-04'),(5,'Смирнов','Алексей','Николаевич','+7 (905) 567-89-01','1990-01-05'),(6,'Егорова','Екатерина','Юрьевна','+7 (906) 678-90-12','1990-01-06'),(7,'Попов','Максим','Дмитриевич','+7 (907) 789-01-23','1990-01-07'),(8,'Захарова','Ольга','Станиславовна','+7 (908) 890-12-34','1990-01-08'),(9,'Морозов','Игорь','Валерьевич','+7 (909) 901-23-45','1990-01-09'),(10,'Северова','Анастасия','Анатольевна','+7 (910) 012-34-56','1990-01-10'),(11,'Федоров','Сергей','Михайлович','+7 (911) 123-45-67','1990-01-11'),(12,'Соловьева','Юлия','Денисовна','+7 (912) 234-56-78','1990-01-12'),(13,'Романов','Евгений','Игоревич','+7 (913) 345-67-89','1990-01-13'),(14,'Тихомирова','Виктория','Станиславовна','+7 (914) 456-78-90','1990-01-14'),(15,'Котенко','Андрей','Семенович','+7 (915) 567-89-01','1990-01-15'),(16,'Салаева','Мария','Николаевна','+7 (916) 678-90-12','1990-01-16'),(17,'Алексеев','Роман','Александрович','+7 (917) 789-01-23','1990-01-17'),(18,'Михайлова','Наталья','Анатольевна','+7 (918) 890-12-34','1990-01-18'),(19,'Соловьев','Денис','Сергеевич','+7 (919) 901-23-45','1990-01-19'),(20,'Павлова','Марина','Владимировна','+7 (920) 012-34-56','1990-01-20'),(21,'Захаров','Константин','Дмитриевич','+7 (921) 123-45-67','1990-01-21'),(22,'Семенова','Алена','Федоровна','+7 (922) 234-56-78','1990-01-22'),(23,'Гладков','Вадим','Станиславович','+7 (923) 345-67-89','1990-01-23'),(24,'Николаева','Ксения','Анатольевна','+7 (924) 456-78-90','1990-01-24'),(25,'Баширов','Никита','Владимирович','+7 (925) 567-89-01','1990-01-25'),(26,'Калинин','Олег','Викторович','+7 (926) 678-90-12','1990-01-26'),(27,'Пескова','Светлана','Денисовна','+7 (927) 789-01-23','1990-01-27'),(28,'Ковальчук','Егор','Михайлович','+7 (928) 890-12-34','1990-01-28'),(29,'Нестерова','Ирина','Петровна','+7 (929) 901-23-45','1990-01-29'),(30,'Петряков','Станислав','Алексеевич','+7 (930) 012-34-56','1990-01-30'),(31,'Киселева','Светлана','Борисовна','+7 (931) 123-45-67','1990-01-31'),(32,'Лисов','Роман','Старостин','+7 (932) 234-56-78','1990-02-01'),(33,'Шерстова','Людмила','Анатольевна','+7 (933) 345-67-89','1990-02-02'),(34,'Зеленин','Олег','Петрович','+7 (934) 456-78-90','1990-02-03'),(35,'Темнова','Алла','Викторовна','+7 (935) 567-89-01','1990-02-04'),(36,'Копылов','Николай','Георгиевич','+7 (936) 678-90-12','1990-02-05'),(37,'Белович','Инна','Станиславовна','+7 (937) 789-01-23','1990-02-06'),(38,'Мушенков','Артем','Владимирович','+7 (938) 890-12-34','1990-02-07'),(39,'Романова','Татьяна','Сергеевна','+7 (939) 901-23-45','1990-02-08'),(40,'Синицын','Григорий','Викторович','+7 (940) 012-34-56','1990-02-09'),(41,'Козлова','Анжела','Федоровна','+7 (941) 123-45-67','1990-02-10'),(42,'Еремин','Лев','Анатольевич','+7 (942) 234-56-78','1990-02-11'),(43,'Рыбакова','Яна','Игоревна','+7 (943) 345-67-89','1990-02-12'),(44,'Стефанов','Всеволод','Андреевич','+7 (944) 456-78-90','1990-02-13'),(45,'Мацкевич','Людмила','Семеновна','+7 (945) 567-89-01','1990-02-14'),(46,'Соломонова','София','Ильинична','+7 (946) 678-90-12','1990-02-15'),(47,'Сазонов','Леонид','Александрович','+7 (947) 789-01-23','1990-02-16'),(48,'Зозуля','Мира','Никитична','+7 (948) 890-12-34','1990-02-17'),(49,'Харитонов','Тимофей','Олегович','+7 (949) 901-23-45','1990-02-18'),(50,'Морошкин','Некрас','Леонидович','+7 (950) 012-34-56','1990-02-19');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderDate` date NOT NULL,
  `ProductUser` int NOT NULL,
  `OrderClient` int NOT NULL,
  `OrderAmount` decimal(19,4) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `order_ibfk_1_idx` (`ProductUser`),
  KEY `order_ibfk_2_idx` (`OrderClient`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`ProductUser`) REFERENCES `user` (`UserID`) ON UPDATE CASCADE,
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`OrderClient`) REFERENCES `client` (`ClientId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (31,'2024-01-01',2,1,10000.0000),(32,'2024-01-02',4,2,15000.0000),(33,'2024-01-03',6,3,12000.0000),(34,'2024-01-04',8,4,12589.0000),(35,'2024-01-05',10,5,10101.0000),(36,'2024-01-06',12,6,12587.0000),(37,'2024-01-07',2,7,501.0000),(38,'2024-01-08',4,8,1254.0000),(39,'2024-01-09',6,9,10258.0000),(40,'2024-01-10',8,10,17814.0000),(41,'2024-01-11',10,11,12501.0000),(42,'2024-01-12',12,12,1214.0000),(43,'2024-01-13',2,13,23123.0000),(44,'2024-01-14',4,14,12313.0000),(45,'2024-01-15',6,15,12312.0000),(46,'2024-01-16',8,16,12345.0000),(47,'2024-01-17',10,17,17177.0000),(48,'2024-01-18',12,18,589.0000),(49,'2024-01-19',2,19,12855.0000),(50,'2024-01-20',4,20,14785.0000),(51,'2024-01-21',6,21,14785.0000),(52,'2024-01-22',8,22,12547.0000),(53,'2024-01-23',10,23,12547.0000),(54,'2024-01-24',12,24,14752.0000),(55,'2024-01-25',2,25,10247.0000),(56,'2024-01-26',4,26,12345.0000),(57,'2024-01-27',6,27,4547.0000),(58,'2024-01-28',8,28,12478.0000),(59,'2024-01-29',10,29,14785.0000),(60,'2024-01-30',12,30,10258.0000),(61,'2024-01-31',2,31,14785.0000),(62,'2024-02-01',4,32,10247.0000),(63,'2024-02-02',6,33,2041.0000),(64,'2024-02-03',8,34,1999.0000),(65,'2024-02-04',10,35,15999.0000),(66,'2024-02-05',12,36,14999.0000),(67,'2024-02-06',2,37,2017.0000),(68,'2024-02-07',4,38,14785.0000),(69,'2024-02-08',6,39,10101.0000),(70,'2024-02-09',8,40,12547.0000),(71,'2024-02-10',10,41,12014.0000),(72,'2024-02-11',12,42,10147.0000),(73,'2024-02-12',2,43,1099.0000),(74,'2024-02-13',4,44,10999.0000),(75,'2024-02-14',6,45,12587.0000),(76,'2024-02-15',8,46,20214.0000),(77,'2024-02-16',10,47,12478.0000),(78,'2024-02-17',12,48,1014.0000),(79,'2024-02-18',2,49,10598.0000),(80,'2024-02-19',4,50,16125.0000);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderproduct`
--

DROP TABLE IF EXISTS `orderproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderproduct` (
  `OrderID` int NOT NULL,
  `ProductArticleNumber` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `OrderCount` int NOT NULL,
  PRIMARY KEY (`OrderID`,`ProductArticleNumber`),
  KEY `ProductArticleNumber` (`ProductArticleNumber`),
  CONSTRAINT `orderproduct_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`) ON UPDATE CASCADE,
  CONSTRAINT `orderproduct_ibfk_2` FOREIGN KEY (`ProductArticleNumber`) REFERENCES `product` (`ProductArticleNumber`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderproduct`
--

LOCK TABLES `orderproduct` WRITE;
/*!40000 ALTER TABLE `orderproduct` DISABLE KEYS */;
INSERT INTO `orderproduct` VALUES (31,'AR14P0',1),(31,'AR14P1',1),(31,'AR14P2',3),(32,'AR14P3',4),(32,'AR14P4',1),(32,'AR14S1',2),(33,'AR14S2',1),(33,'AR14S3',5),(34,'AR14P6',4),(34,'AR14S4',3),(34,'AR14S5',1),(35,'AR14P7',2),(35,'AR14S6',3),(36,'AR14S7',1),(36,'AR14T1',2),(37,'AR14T2',5),(37,'AR14T3',3),(38,'AR14T4',1),(38,'AR14T5',4),(39,'AR14T6',2),(39,'AR14U1',1),(40,'AR14U2',3),(40,'AR14U3',2),(41,'AR14U4',5),(41,'AR14U5',1),(42,'AR14U6',4),(42,'AR14V1',2),(43,'AR14V2',3),(43,'AR14V3',1),(44,'AR14V4',5),(44,'AR14V5',2),(45,'AR14V6',3),(46,'AR14P8',4),(46,'AR14V7',1),(47,'AR14P9',2),(47,'AR14S8',5),(48,'AR14S9',3),(49,'AR14T7',1),(49,'AR14T8',4),(50,'AR14T9',2),(51,'AR14U7',1),(51,'AR14U8',3),(52,'AR14U9',4),(53,'AR14P0',2),(54,'AR14P1',3),(55,'AR14P2',1),(56,'AR14P3',5),(57,'AR14P4',2),(58,'AR14P5',4),(59,'AR14P6',3),(60,'AR14P7',1),(61,'AR14S1',4),(62,'AR14S2',3),(63,'AR14S3',5),(64,'AR14S4',2),(65,'AR14T1',1),(66,'AR14T2',2),(67,'AR14T3',3),(68,'AR14U1',4),(69,'AR14U2',5),(70,'AR14U3',1),(71,'AR14V1',3),(72,'AR14V2',7),(73,'AR14V3',2),(74,'AR14V4',9),(75,'AR14V5',4),(76,'AR14V6',1),(77,'AR14V7',3),(78,'AR14V1',2),(79,'AR14V3',5),(80,'AR14V5',6);
/*!40000 ALTER TABLE `orderproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductArticleNumber` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `ProductUnit` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ProductCost` decimal(19,4) NOT NULL,
  `ProductManufacturer` varchar(100) NOT NULL,
  `ProductSupplier` int NOT NULL,
  `ProductDiscountAmount` tinyint DEFAULT NULL,
  `ProductQuantityInStock` int NOT NULL,
  `ProductDescription` varchar(100) DEFAULT NULL,
  `ProductCategory` int NOT NULL,
  `ProductPhoto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ProductArticleNumber`),
  KEY `ProductCategory` (`ProductCategory`),
  KEY `product_ibfk_2` (`ProductSupplier`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`ProductCategory`) REFERENCES `productcategory` (`ProductCategoryID`) ON UPDATE CASCADE,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`ProductSupplier`) REFERENCES `supplier` (`SupplierID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('AR14P0','Линзы контактные, -0.5','шт.',1500.0000,'Total',2,1,75,'Линзы с коррекцией -0.5',2,'AR14P0.jpg'),('AR14P1','Очки для зрения, сфера -2.0','шт.',8500.0000,'FACE-A-FACE',1,10,20,'Классические очки для зрения',1,NULL),('AR14P2','Очки для зрения, сфера -1.0','шт.',8000.0000,'ESTILO',1,15,25,'Легкие очки с защитой от ультрафиолета',1,NULL),('AR14P3','Очки солнцезащитные','шт.',7500.0000,'ESTILO',1,5,30,'Модные солнцезащитные очки',1,'AR14P3.png'),('AR14P4','Очки для компьютера','шт.',7000.0000,'Benetton',1,20,15,'Очки для работы за компьютером',1,'AR14P4.jpg'),('AR14P5','Очки для чтения','шт.',6000.0000,'BLAC',1,10,40,'Удобные очки для чтения',1,NULL),('AR14P6','Линзы контактные, -3.5','шт.',3000.0000,'Total',2,5,50,'Мягкие линзы с коррекцией -3.5',2,'AR14P6.jpg'),('AR14P7','Линзы контактные, -2.5','шт.',2900.0000,'ACUVUE',2,3,40,'Линзы с коррекцией -2.5',2,'AR14P7.jpg'),('AR14P8','Линзы контактные, -4.0','шт.',3100.0000,'Air Optix',2,2,35,'Линзы для высокой коррекции',2,'AR14P8.jpg'),('AR14P9','Линзы для очков, -2.0','шт.',2000.0000,'FACE-A-FACE',2,0,60,'Линзы для очков с коррекцией -2.0',2,NULL),('AR14S1','Раствор для линз, 120 мл','шт.',600.0000,'Biotrue',2,3,45,'Идеален для ежедневного ухода за контактными линзами',2,NULL),('AR14S2','Раствор для линз, 300 мл','шт.',800.0000,'Biotrue',2,4,50,'Большая упаковка для длительного использования',2,NULL),('AR14S3','Футляр для линз','шт.',500.0000,'Kaida',3,6,55,'Компактный футляр для линз',3,NULL),('AR14S4','Микрофибровая тряпочка','шт.',200.0000,'SAN MAX',3,5,70,'Для чистки очков и линз',3,'AR14S4.jpg'),('AR14S5','Линзы контактные, -3.0','шт.',2800.0000,'Air Optix',2,3,30,'Комфортные мягкие линзы',2,NULL),('AR14S6','Линзы контактные, -1.0','шт.',2700.0000,'ACUVUE',2,2,25,'Стандартные линзы для коррекции',2,'AR14S6.jpg'),('AR14S7','Очки для зрения, сфера -1.5','шт.',9000.0000,'ESTILO',1,12,30,'Стильные очки для зрения',1,'AR14S7.jpg'),('AR14S8','Очки для зрения, сфера -2.5','шт.',9500.0000,'Benetton',1,10,28,'Очки для зрения с антибликовым покрытием',1,NULL),('AR14S9','Очки для зрения, сфера -4.0','шт.',9800.0000,'ESTILO',1,10,12,'Современные очки с высоким дизайном',1,NULL),('AR14T1','Очки для зрения, сфера -0.5','шт.',8700.0000,'Benetton',1,11,22,'Минималистские очки для легкой коррекции',1,NULL),('AR14T2','Очки для зрения, сфера -5.0','шт.',9990.0000,'Benetton',1,5,10,'Как никогда нужны для сильной коррекции',1,NULL),('AR14T3','Футляр для очков','шт.',400.0000,'Алис-96',3,5,75,'Надежный футляр для очков',3,NULL),('AR14T4','Линзы контактные, -3.2','шт.',3200.0000,'Air Optix',2,1,40,'Линзы с идеальной посадкой',2,NULL),('AR14T5','Линзы контактные, -2.8','шт.',3050.0000,'Air Optix',2,1,45,'Качественные линзы для идеального взгляда',2,NULL),('AR14T6','Очки для зрения, сфера 0.0','шт.',7800.0000,'Benetton',1,12,20,'Очки без диоптрий',1,NULL),('AR14T7','Раствор для линз, 60 мл','шт.',500.0000,'Biotrue',2,50,30,'Небольшая упаковка для путешествий',2,NULL),('AR14T8','Линзы для очков, -1.0','шт.',1900.0000,'MOREL',2,1,20,'Линзы с коррекцией -1.0',2,NULL),('AR14T9','Микрофибровая тряпочка, большая','шт.',250.0000,'SAN MAX',3,8,60,'Большая тряпочка для быстрой очистки',3,NULL),('AR14U1','Очки для зрения, сфера -1.0','шт.',8400.0000,'MOREL',1,8,35,'Популярные очки с защитой от синего света',1,NULL),('AR14U2','Очки для зрения, сфера -4.5','шт.',11000.0000,'MOREL',1,7,15,'Надежные очки для сильной коррекции',1,NULL),('AR14U3','Футляр для линз, путешествие','шт.',600.0000,'Мобильность',3,4,45,'Удобный футляр для поездок',3,NULL),('AR14U4','Линзы контактные, -5.5','шт.',3400.0000,'Ciba Vision (ALCON)',2,0,25,'Оптимальные линзы для высокой коррекции',2,NULL),('AR14U5','Линзы контактные, -6.0','шт.',3500.0000,'Ciba Vision (ALCON)',2,2,20,'Линзы для очень сильной коррекции',2,NULL),('AR14U6','Раствор для линз, 150 мл','шт.',700.0000,'Biotrue',2,3,80,'Чистящее средство для контактных линз',2,NULL),('AR14U7','Очки для зрения, сфера -2.7','шт.',9100.0000,'MOREL',1,9,30,'Очки с модным дизайном',1,NULL),('AR14U8','Очки для зрения, сфера -3.3','шт.',9600.0000,'AKONI',1,8,20,'Сложный колор для четкого зрения',1,NULL),('AR14U9','Футляр для очков, кожаный','шт.',1200.0000,'Призма',3,5,25,'Элегантный кожаный футляр',3,'AR14U9.jpg'),('AR14V1','Линзы контактные, -1.2','шт.',1600.0000,'Alcon',2,3,45,'Линзы с улучшенным покрытием',2,NULL),('AR14V2','Очки для зрения, сфера -3.0','шт.',2200.0000,'AKONI',2,2,35,'Линзы для защиты от солнечных лучей',2,NULL),('AR14V3','Раствор для линз, 100 мл','шт.',550.0000,'Acuvue RevitaLens',2,6,50,'Идеален для повседневного использования',2,NULL),('AR14V4','Очки для зрения, сфера -3.9','шт.',8900.0000,'MOREL',1,11,45,'Удобные и стильные очки для зрения',1,NULL),('AR14V5','Линзы контактные, -1.3','шт.',2800.0000,'Total',2,5,20,'Линзы с идеальной удовлетворенностью',2,NULL),('AR14V6','Очки для зрения, сфера -4.8','шт.',9500.0000,'MOREL',1,6,15,'Модные очки для сильной коррекции',1,NULL),('AR14V7','Очки для зрения, сфера 1.0','шт.',8600.0000,'MOREL',1,4,25,'Очки с защитой от утомления',1,NULL),('AR14V8','Линзы контактные, -1.1','шт.',2900.0000,'Alcon',2,1,30,'Линзы для идеальной коррекции',2,NULL),('AR14V9','Футляр для линз, стандартный','шт.',550.0000,'ADRIA',3,10,55,'Универсальный футляр для линз',3,'AR14V9.jpg'),('AR14W1','Очки для зрения, сфера -2.8','шт.',8200.0000,'AKONI',1,9,40,'Очки с защитой от ультрафиолета',1,NULL),('AR14W2','Очки для зрения, сфера -1.8','шт.',7500.0000,'AKONI',1,7,35,'Стильные и легкие очки',1,NULL),('AR14W3','Линзы контактные, -3.1','шт.',2600.0000,'Alcon',2,2,20,'Контактные линзы для активных пользователей',2,NULL),('AR14W4','Очки для зрения, сфера -4.9','шт.',10000.0000,'ESTILO',1,4,10,'Очки в эксклюзивном дизайне',1,NULL),('AR14W5','Очки для зрения, сфера 0.5','шт.',8000.0000,'BLAC',1,5,25,'Очки для легкой коррекции',1,NULL),('AR14W6','Линзы для очков, -1.4','шт.',1700.0000,'ESTILO',2,1,30,'Линзы с нейтральным дизайном',2,NULL),('AR14W7','Раствор для линз, 250 мл','шт.',900.0000,'Acuvue RevitaLens',2,3,45,'Идеален для защиты и ухода за линзами',2,'AR14W7.jpeg'),('AR14W8','Микрофибровая тряпочка, маленькая','шт.',150.0000,'Stax',3,10,60,'Компактная тряпка для чистки',3,'AR14W8.jpg'),('AR14W9','Линзы контактные, -0.8','шт.',2700.0000,'Total',2,1,25,'Линзы для легкой коррекции',2,NULL),('AR14X1','Футляр для линз, транспортный','шт.',700.0000,'ADRIA',3,4,20,'Футляр для профессионалов в пути',3,NULL),('AR14X2','Линзы контактные, -1.7','шт.',2350.0000,'Total',2,3,30,'Линзы для активных пользователей',2,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategory`
--

DROP TABLE IF EXISTS `productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productcategory` (
  `ProductCategoryID` int NOT NULL AUTO_INCREMENT,
  `ProductCategoryName` varchar(100) NOT NULL,
  PRIMARY KEY (`ProductCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategory`
--

LOCK TABLES `productcategory` WRITE;
/*!40000 ALTER TABLE `productcategory` DISABLE KEYS */;
INSERT INTO `productcategory` VALUES (1,'Очки'),(2,'Линзы'),(3,'Аксессуары');
/*!40000 ALTER TABLE `productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `RoleID` int NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(100) NOT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Администратор'),(2,'Менеджер');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(100) NOT NULL,
  `SupplierContactPerson` varchar(100) NOT NULL,
  `SupplierPhone` varchar(20) NOT NULL,
  `SupplierAddress` varchar(100) NOT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Оптика Сити','Иванов Иван Иванович','+7 (123) 456-78-90','г. Москва, ул. Ленина, д. 1'),(2,'Оптометрика','Петров Петр Петрович','+7 (234) 567-89-01','г. Санкт-Петербург, ул. Пушкина, д. 2'),(3,'СветоТехника','Сидоров Сидор Сидорович','+7 (345) 678-90-12','г. Екатеринбург, ул. Чехова, д. 3'),(4,'Фокус','Кузнецов Алексей Дмитриевич','+7 (456) 789-01-23','г. Казань, ул. Толстого, д. 4'),(6,'Здоровые глазки','Зубенко Михаил Петрович','+7 (999) 999-99-99','г. Заволжье, ул. Рождественская, д. 5');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `UserSurname` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `UserPatronymic` varchar(100) NOT NULL,
  `UserLogin` text NOT NULL,
  `UserPassword` text NOT NULL,
  `UserRole` int NOT NULL,
  PRIMARY KEY (`UserID`),
  KEY `UserRole` (`UserRole`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`UserRole`) REFERENCES `role` (`RoleID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Иванов','Иван','Иванович','admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918',1),(2,'Петров','Петр','Петрович','manager','6ee4a469cd4e91053847f5d3fcb61dbcc91e8f0ef10be7748da4c4a1ba382d17',2),(4,'Смирнов','Алексей','Алексеевич','smirnov','d7e29edd6af6bd8829b7ad05b508907d766c70442c088cc0fe06a0a2cd524b10',2),(5,'Кузнецов','Дмитрий','Дмитриевич','kuznetsov','cc9280ea6ffbb9eeab4448de64a66dba6015ef0c26363ec3ef5340f7592e7c1d',1),(6,'Попов','Андрей','Андреевич','popov','e55b153174b25f7c60672eced3878c1a8cd9bb7ed97ccb415ade0af890ce084e',2),(7,'Васильев','Сергей','Сергеевич','vasilyev','d2eb3fcef2cc0745a5564ce6a7caeb50a3f0a9ddd8adb0935a5193c49db90243',1),(8,'Соловьев','Егор','Егорович','solovyov','eb4f967540f0a5b096a2f788dcdce30917a10c19e69087acbbb4906e2f8340d0',2),(9,'Зайцев','Никита','Никитович','zaitsev','c0588b9ebd06d141fc57ee7e06c10ad180e7e2714cc4ddeeecdc9d8b2af6e279',1),(10,'Морозов','Григорий','Григорьевич','morozov','f77c850b3b7ed0a2da312307dc758dc3acc4444d71534f938a38dfb9fbc248e8',2),(11,'Федоров','Илья','Ильич','fedorov','dd70915489b41950a6222cdc33255d2eca5650c4b8e39134e1bd50fe35737a85',1),(12,'Сидоров','Анатолий','Анатольевич','sidorov','6e6ccd85d4ec1491a30438eb7194b4fc819e05c2a71ec47b282171d36650ce2e',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19  8:56:30
