-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.16.04.2

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
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--
-- WHERE:  1 limit 100

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (0,'(JSON'),(1,'->'),(2,'->>'),(3,'<>'),(4,'ACCOUNT'),(5,'ACTION'),(6,'ADD'),(7,'AES_DECRYPT'),(8,'AES_ENCRYPT'),(9,'AFTER'),(10,'AGAINST'),(11,'AGGREGATE'),(12,'ALGORITHM'),(13,'ALL'),(14,'ALTER'),(15,'ANALYSE'),(16,'ANALYZE'),(17,'AND'),(18,'ANY_VALUE'),(19,'ARCHIVE'),(20,'AREA'),(21,'AS'),(22,'ASBINARY'),(23,'ASC'),(24,'ASTEXT'),(25,'ASWKB'),(26,'ASWKT'),(27,'AT'),(28,'AUTOCOMMIT'),(29,'AUTOEXTEND_SIZE'),(30,'AUTO_INCREMENT'),(31,'AVG_ROW_LENGTH'),(32,'BEFORE'),(33,'BEGIN'),(34,'BETWEEN'),(35,'BIGINT'),(36,'BINARY'),(37,'BINLOG'),(38,'BOOL'),(39,'BOOLEAN'),(40,'BOTH'),(41,'BTREE'),(42,'BUFFER'),(43,'BY'),(44,'BYTE'),(45,'CACHE'),(46,'CALL'),(47,'CASCADE'),(48,'CASE'),(49,'CATALOG_NAME'),(50,'CEIL'),(51,'CEILING'),(52,'CENTROID'),(53,'CHAIN'),(54,'CHANGE'),(55,'CHANNEL'),(56,'CHAR'),(57,'CHARACTER'),(58,'CHARSET'),(59,'CHECK'),(60,'CHECKSUM'),(61,'CIPHER'),(62,'CLASS_ORIGIN'),(63,'CLIENT'),(64,'CLOSE'),(65,'COALESCE'),(66,'CODE'),(67,'COLLATE'),(68,'COLLATION'),(69,'COLUMN'),(70,'COLUMNS'),(71,'COLUMN_NAME'),(72,'COMMENT'),(73,'COMMIT'),(74,'COMMITTED'),(75,'COMPACT'),(76,'COMPLETION'),(77,'COMPRESSED'),(78,'COMPRESSION'),(79,'CONCURRENT'),(80,'CONDITION'),(81,'CONNECTION'),(82,'CONSISTENT'),(83,'CONSTRAINT'),(84,'CONSTRAINT_CATALOG'),(85,'CONSTRAINT_NAME'),(86,'CONSTRAINT_SCHEMA'),(87,'CONTAINS'),(88,'CONTINUE'),(89,'CONVERT'),(90,'CONVEXHULL'),(91,'COUNT'),(92,'CREATE'),(93,'CREATE_DH_PARAMETERS'),(94,'CROSS'),(95,'CROSSES'),(96,'CSV'),(97,'CURRENT_USER'),(98,'CURSOR'),(99,'CURSOR_NAME');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-28 22:06:30
