CREATE DATABASE  IF NOT EXISTS `bookstoresystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookstoresystem`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstoresystem
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `bookdata`
--

DROP TABLE IF EXISTS `bookdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookdata` (
  `ISBN` char(10) NOT NULL,
  `CategoryID` int NOT NULL,
  `Title` varchar(150) DEFAULT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `SupplierId` int DEFAULT NULL,
  `Year` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Edition` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Publisher` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Description` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Rate` int DEFAULT NULL,
  `RateCount` int DEFAULT NULL,
  `Sold` int DEFAULT NULL,
  PRIMARY KEY (`ISBN`),
  KEY `FK_Product_Category` (`CategoryID`),
  KEY `FK_Product_Supplier` (`SupplierId`),
  CONSTRAINT `FK_Product_Category` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`),
  CONSTRAINT `FK_Product_Supplier` FOREIGN KEY (`SupplierId`) REFERENCES `supplier` (`SupplierId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookdata`
--

LOCK TABLES `bookdata` WRITE;
/*!40000 ALTER TABLE `bookdata` DISABLE KEYS */;
INSERT INTO `bookdata` VALUES ('0134190440',1,'The Go Programming Language','Alan A. A. Donovan and Brian Kernighan',37.49,1,'2015','1','Abe Books','The Go Programming Language is the authoritative resource for any programmer who wants to learn Go. It shows how to write clear and idiomatic Go to solve real-world problems. The book does not assume prior knowledge of Go nor experience with any specific language, so you’ll find it accessible whether you’re most comfortable with JavaScript, Ruby, Python, Java, or C++.',1,13,0),('0134686097',1,'Effective Java','Joshua Bloch',31.72,1,'2001','1','O\'Reilly','Java has changed dramatically since the previous edition of Effective Java was published shortly after the release of Java 6. This Jolt award-winning classic has now been thoroughly updated to take full advantage of the latest language and library features. The support in modern Java for multiple paradigms increases the need for specific best-practices advice, and this book delivers.',2,1,1),('013475770X',1,'Refactoring','Kent Beck and Martin Fowler',37.67,3,'1999','2','O\'Reilly','Any fool can write code that a computer can understand. Good programmers write code that humans can understand.”;\n—M. Fowler (1999)For more than twenty years, experienced programmers worldwide have relied on Martin Fowler’s Refactoring to improve the design of existing code and to enhance software maintainability, as well as to make existing code easier to understand.;\n;\nThis eagerly awaited new edition has been fully updated to reflect crucial changes in the programming landscape. Refactoring, Second Edition, features an updated catalog of refactorings and includes JavaScript code examples, as well as new functional examples that demonstrate refactoring without classes.',3,3,2),('0135974445',2,'Agile Software Development, Principles, Patterns, and Practices','Robert C. Martin',70.40,1,'2002','1','Pearson',NULL,4,1,3),('0321146530',2,'Test Driven Development: By Example','Kent Beck',41.59,1,'2002','1','Addison-Wesley Professional',NULL,5,1,4),('0321278658',2,'Extreme Programming Explained: Embrace Change','Kent Beck and Cynthia Andres',44.63,1,'2004','2','Addison-Wesley Professional',NULL,1,1,1),('073561993X',2,'Agile Project Management with Scrum','Ken Schwaber',26.45,1,'2004','1','Microsoft Press',NULL,2,1,2),('1118008189',1,'HTML and CSS: Design and Build Websites','Jon Duckett',18.49,1,'1999','1','Amazon','Every day, more and more people want to learn some HTML and CSS. Joining the professional web designers and programmers are new audiences who need to know a little bit of code at work (update a content management system or e-commerce store) and those who want to make their personal blogs more attractive. Many books teaching HTML and CSS are dry and only written for those who want to become programmers, which is why this book takes an entirely new approach.',4,1,4),('1118026241',2,'Agile Project Management For Dummies','Mark C. Layton',26.99,1,'2012','1','For Dummies',NULL,2,1,5),('1235647483',3,'Outer Space','Jon Williams',67.00,1,'2012','1','OZU',NULL,5,1,7),('1285096339',1,'Microsoft Visual C# 2012: An Introduction to Object-Oriented Programming','Joyce Farrell',185.11,1,'2013','5','Course Technology',NULL,3,2,8),('1449319793',1,'Python for Data Analysis: Data Wrangling with Pandas, NumPy, and IPython ISBN','Wes McKinney',67.99,2,'2011','1','Amazon','Get complete instructions for manipulating, processing, cleaning, and crunching datasets in Python. Updated for Python 3.6, the second edition of this hands-on guide is packed with practical case studies that show you how to solve a broad set of data analysis problems effectively. You’ll learn the latest versions of pandas, NumPy, IPython, and Jupyter in the process.;\nWritten by Wes McKinney, the creator of the Python pandas project, this book is a practical, modern introduction to data science tools in Python. It’s ideal for analysts new to Python and for Python programmers new to data science and scientific computing. Data files and related material are available on GitHub.',3,2,9),('1456745724',4,'Unity Virtual Reality Projects','Jonathan Linowes',31.99,1,'2015','1','Packt Publishing',NULL,4,1,1),('1491922834',4,'Learning Virtual Reality: Developing Immersive Experiences and Applications','Tony Parisi',39.71,1,'2015','1','O\'Reilly Media',NULL,5,1,0),('1554683831',3,'The Illegal','Lawrence Hill',20.99,2,'2015','1','Harper Collins',NULL,1,1,2),('1617290890',1,'The Art of Unit Testing: with examples in C#','Roy Osherove',57.28,1,'2013','1','Manning Publications',NULL,2,1,1),('161729134X',1,'NULLC# in Depth','Jon Skeet',41.22,1,'2013','3','Manning Publications',NULL,1,1,11),('161729232X',1,'Unity in Action: Multiplatform Game Development in C# with Unity 5','Joe Hocking',47.54,1,'2015','1','Manning Publications',NULL,2,1,1),('1852333944',1,'Essential Java 3D Fast : Developing 3D Graphics Applications in Java','Ian Palmer',89.99,3,'2001','1','Springer-Verlag',NULL,1,1,3),('1884777902',1,'3D User Interfaces with Java 3D','Jon Barrilleaux',6.71,1,'2000','1','Manning Publications',NULL,4,1,1),('1941393101',4,'Virtual Reality Beginner\'s Guide + Google Cardboard','Patrick Buckley and Frederic Lardinois',20.95,1,'2014','1','Regan Arts',NULL,1,1,2),('2222657486',1,'Testing for add','Unknown',11.11,1,'2011','1','Smit','Good book',NULL,NULL,NULL);
/*!40000 ALTER TABLE `bookdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `CategoryID` int NOT NULL,
  `Name` varchar(80) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Programming Languages','Programming Language'),(2,'Software Development','Project Management'),(3,'New Books in Fall 2015','Fall 2015'),(4,'Textbooks','Used in class');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo`
--

DROP TABLE IF EXISTS `demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo`
--

LOCK TABLES `demo` WRITE;
/*!40000 ALTER TABLE `demo` DISABLE KEYS */;
INSERT INTO `demo` VALUES (1,'smit','1234'),(2,'patel','456'),(3,'bittu','123');
/*!40000 ALTER TABLE `demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo2`
--

DROP TABLE IF EXISTS `demo2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo2` (
  `id` int NOT NULL,
  `phone number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `demo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo2`
--

LOCK TABLES `demo2` WRITE;
/*!40000 ALTER TABLE `demo2` DISABLE KEYS */;
INSERT INTO `demo2` VALUES (1,'123');
/*!40000 ALTER TABLE `demo2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `OrderID` int NOT NULL,
  `ISBN` char(10) NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`OrderID`,`ISBN`),
  KEY `FK_OrderItem_Product` (`ISBN`),
  CONSTRAINT `FK_OrderItem_Orders` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `FK_OrderItem_Product` FOREIGN KEY (`ISBN`) REFERENCES `bookdata` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (1,'013475770X',1),(1,'1118008189',2),(2,'013475770X',1),(2,'1285096339',3),(3,'013475770X',1),(3,'1285096339',3),(4,'073561993X',4),(4,'1235647483',1);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `OrderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` char(1) NOT NULL DEFAULT (_utf8mb4'P'),
  PRIMARY KEY (`OrderID`),
  KEY `FK_Orders_Employee` (`UserID`),
  CONSTRAINT `FK_Orders_Employee` FOREIGN KEY (`UserID`) REFERENCES `userdata` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,5,'2021-08-17 16:50:17','P'),(2,1,'2021-08-17 17:05:41','P'),(3,1,'2021-08-17 17:06:06','P'),(4,1,'2021-08-17 17:06:50','P');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SupplierId` int NOT NULL,
  `Name` varchar(80) NOT NULL,
  PRIMARY KEY (`SupplierId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'amazon.ca'),(2,'Chapter Bookstore'),(3,'Springer');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdata` (
  `UserID` int NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Type` char(2) NOT NULL,
  `Manager` bit(1) NOT NULL,
  `FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdata`
--

LOCK TABLES `userdata` WRITE;
/*!40000 ALTER TABLE `userdata` DISABLE KEYS */;
INSERT INTO `userdata` VALUES (1,'spatel','smitpatel945','RG',_binary '','Smitkumar Patel'),(2,'zalam','zainub1234','SA',_binary '\0','Zainub Alam'),(3,'abadi','aisha9876','SA',_binary '\0','Aisha Badi'),(4,'aalex','alex1928','RG',_binary '\0','Aaron Alex'),(5,'bittu','asdf123','RG',_binary '\0','Bittu Patel'),(6,'kashyapk','kk1997','RG',_binary '\0','Karan Kashyap'),(7,'kunal','kunal999','RG',_binary '\0','Kunal'),(8,'hameed','hameed234','RG',_binary '\0','Hameed M'),(9,'Mustafa','mustafa555','RG',_binary '\0','Mustafa Tawheed');
/*!40000 ALTER TABLE `userdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-22 20:23:54
