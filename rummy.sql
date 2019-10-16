CREATE DATABASE  IF NOT EXISTS `rummy` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `rummy`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: rummy
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `add_cash`
--

DROP TABLE IF EXISTS `add_cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_cash` (
  `username2` varchar(45) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pin` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_cash`
--

LOCK TABLES `add_cash` WRITE;
/*!40000 ALTER TABLE `add_cash` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_tournament`
--

DROP TABLE IF EXISTS `cash_tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_tournament` (
  `cash_tournament_num` int(11) NOT NULL,
  `time` varchar(45) DEFAULT NULL,
  `cash_tournamentcol` varchar(45) DEFAULT NULL,
  `entryfee` int(11) DEFAULT NULL,
  `maxjoined` int(11) DEFAULT NULL,
  `joined` int(11) DEFAULT NULL,
  PRIMARY KEY (`cash_tournament_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_tournament`
--

LOCK TABLES `cash_tournament` WRITE;
/*!40000 ALTER TABLE `cash_tournament` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_game`
--

DROP TABLE IF EXISTS `current_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `current_game` (
  `current_game_num` int(11) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `current_game_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`current_game_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_game`
--

LOCK TABLES `current_game` WRITE;
/*!40000 ALTER TABLE `current_game` DISABLE KEYS */;
/*!40000 ALTER TABLE `current_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_cash_details`
--

DROP TABLE IF EXISTS `user_cash_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_cash_details` (
  `username1` varchar(45) NOT NULL,
  `practice_cash` int(11) DEFAULT NULL,
  `real_cash` int(11) DEFAULT NULL,
  PRIMARY KEY (`username1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_cash_details`
--

LOCK TABLES `user_cash_details` WRITE;
/*!40000 ALTER TABLE `user_cash_details` DISABLE KEYS */;
INSERT INTO `user_cash_details` VALUES ('Abhishek',1000,0);
/*!40000 ALTER TABLE `user_cash_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_cash_tournament`
--

DROP TABLE IF EXISTS `user_cash_tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_cash_tournament` (
  `cash_tournament_num1` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cash_tournament_num1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_cash_tournament`
--

LOCK TABLES `user_cash_tournament` WRITE;
/*!40000 ALTER TABLE `user_cash_tournament` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_cash_tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `iduser_details` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduser_details`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (2,'Abhishek','abhishek','abhishek@gmail.com','Male','1989-08-08','Haryana','9555559613');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-11 15:32:17
