-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: softwareengineeringgroup17
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `game` (
  `idgame` int(11) NOT NULL AUTO_INCREMENT,
  `hometeam` int(11) DEFAULT NULL,
  `awayteam` int(11) DEFAULT NULL,
  `dateplayed` date NOT NULL,
  PRIMARY KEY (`idgame`),
  KEY `idteam_idx` (`hometeam`),
  KEY `idteam_idx1` (`awayteam`),
  CONSTRAINT `awayteam` FOREIGN KEY (`awayteam`) REFERENCES `teams` (`idteams`),
  CONSTRAINT `hometeam` FOREIGN KEY (`hometeam`) REFERENCES `teams` (`idteams`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,1,2,'2019-01-19'),(2,3,4,'2019-01-19'),(3,3,4,'2019-02-19'),(4,1,4,'2018-10-19');
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `photo` (
  `idphoto` varchar(45) NOT NULL,
  `creator` int(11) NOT NULL,
  `mean_score_prediction` double DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`idphoto`),
  UNIQUE KEY `idphoto_UNIQUE` (`idphoto`),
  KEY `creator_idx` (`creator`),
  CONSTRAINT `creator` FOREIGN KEY (`creator`) REFERENCES `user` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES ('1',2,NULL,'2019-04-04'),('2',2,NULL,'2019-04-04'),('3',2,NULL,'2019-04-04'),('4',3,NULL,'2019-02-14'),('5',3,NULL,'2019-02-14'),('6',1,NULL,'2019-04-10'),('7',1,NULL,'2019-04-02');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_tags`
--

DROP TABLE IF EXISTS `photo_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `photo_tags` (
  `photo_id` varchar(45) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `tag_id_idx` (`tag_id`),
  KEY `photo_id_idx` (`photo_id`),
  CONSTRAINT `photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`idphoto`),
  CONSTRAINT `tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`idtags`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_tags`
--

LOCK TABLES `photo_tags` WRITE;
/*!40000 ALTER TABLE `photo_tags` DISABLE KEYS */;
INSERT INTO `photo_tags` VALUES ('1',1),('1',2),('1',3),('2',1),('3',1),('3',4);
/*!40000 ALTER TABLE `photo_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tags` (
  `idtags` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtags`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Kickoff'),(2,'Fans'),(3,'Football'),(4,'Scoring'),(5,'Sack');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teams` (
  `idteams` int(11) NOT NULL AUTO_INCREMENT,
  `school` varchar(45) NOT NULL,
  PRIMARY KEY (`idteams`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Mizzou'),(2,'Georgia'),(3,'Alabama'),(4,'Florida'),(5,'Ohio State');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'BobbyG','pw','Bob','Gant','bobg@mail.com'),(2,'RobbyG','pw','Rob','Fant','RobH@gmail.com'),(3,'KennyG','pw','Kenny','Gant','KennyG@gmail.com');
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

-- Dump completed on 2019-04-11 18:08:39
