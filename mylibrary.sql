-- MySQL dump 10.13  Distrib 5.5.27, for Win64 (x86)
--
-- Host: localhost    Database: managelibrary
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` char(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('2019065801','000','王某','123456789'),('2019065802','123','李某','123'),('2019065803','456','天某','456'),('2019065804','789','地某','789'),('2019065805','1234','张某','234'),('2019065806','2345','吴某','345'),('2019065807','3456','马某','567'),('2019065808','4567','刘某','678'),('2019065809','5678','晓某','1234'),('2019065810','6789','张三','2345'),('2019065811','12345','李四','3456'),('2019065812','23456','张三丰','4567'),('2019065813','34567','地狱之主','5678'),('2019065814','45678','严憨批','6789'),('2019065815','147258','天堂','0000000'),('2019065816','56789','吕超','159357'),('2019065817','159357','宋方舟','357159'),('2019065818','357159','澎湃','147258'),('2019065819','15923471898','孙超值','258369'),('2019065820','13320325028','王子昂','15754514990'),('2019065821','wsy2000715','吴顺懿','15870495553');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `bno` char(8) NOT NULL,
  `category` char(10) NOT NULL,
  `title` varchar(40) NOT NULL,
  `press` varchar(30) NOT NULL,
  `year` int(11) NOT NULL,
  `author` varchar(20) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `total` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('00000000','科幻','世界','清华',2000,'小张',20.00,200,179),('00000001','治愈','可爱','北京',2000,'小明',20.00,200,100),('00000002','虚假','假','清华',2000,'小红',23.00,200,156),('00000003','真实','真',' 北京',2000,'小天',25.00,200,156),('00000004','社会','公平','清华',2000,'小小',15.00,200,123),('00000005','因果','生死','北京',2000,'小吴',15.00,200,145),('00000006','物理','牛顿','清华',2000,'小王',56.00,200,156),('00000007','数学','微积分','西电',2000,'小张',45.00,200,136),('00000008','哲学','过桥','人民',2000,'小迪',56.00,200,156),('00000009','科幻','最后一天','复旦',1235,'消炎',25.00,200,145),('00000010','物理','爱因斯坦','电科',1555,'小天',58.00,200,123),('00000011','哲学','天地','人民',2000,'小张',56.00,200,145),('00000012','数学','矩阵','清华',2000,'小吴',23.00,200,163),('00000013','物理','电学','复旦',2000,'小李',47.00,200,131),('00000014','科幻','高达','北京',2000,'小王',25.00,200,52),('00000015','地理','地球','人民',2000,'小天',25.00,200,45),('00000016','虚假','假象','清华',2000,'小张',25.00,200,89),('00000017','文学','我的母亲','北大',2000,'小天',14.00,200,26),('00000018','真实','真相','北大',2000,'小田',89.00,200,66),('00000019','社会','无奈','清华',2000,'小迪',36.00,200,66),('00000020','经济','股票','北大',2000,'小王',23.00,200,66),('123456','科幻','随便','清华',2000,'某个',200.00,2000,2000),('12345678','科幻','随便','清华',2000,'小红',20.00,200,200),('12345689','科幻','随便杀','清华',2001,'完美',12.00,300,300);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrow` (
  `cno` char(20) DEFAULT NULL,
  `bno` char(20) DEFAULT NULL,
  `borrow_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `handler_id` char(8) DEFAULT NULL,
  KEY `cno` (`cno`),
  KEY `bno` (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `cno` char(17) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `department` varchar(40) DEFAULT NULL,
  `type` char(7) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES ('201906501','地狱之主','计算机系','阅读卡'),('201906502','严憨批','软件学院','借书卡'),('201906503','天堂','船院','阅读卡'),('201906504','吕超','核工程学院','阅读卡'),('201906505','宋方舟','船院','vip卡'),('201906506','澎湃','核工程学院','阅读卡'),('201906507','孙超值','软件学院','阅读卡'),('201906508','吴顺懿','核工程学院','大vip卡'),('201906509','王某','船院','大vip卡'),('201906510','李某','核工程学院','至尊卡'),('201906511','天某','计算机系','至尊卡'),('201906512','地某','数学系','vip卡'),('201906513','张某','船院','至尊卡'),('201906514','吴某','计算机系','阅读卡'),('201906515','马某','计算机系','vip卡'),('201906516','刘某','数学系','阅读卡'),('201906517','晓某','软件学院','借书卡'),('201906518','张三','核工程学院','vip卡'),('201906519','李四','船院','大vip卡'),('201906520','王子昂','计算机系','借书卡'),('201906521','张三丰','数学系','大vip卡');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `guanliren`
--

DROP TABLE IF EXISTS `guanliren`;
/*!50001 DROP VIEW IF EXISTS `guanliren`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `guanliren` (
  `cno` tinyint NOT NULL,
  `bno` tinyint NOT NULL,
  `borrow_date` tinyint NOT NULL,
  `return_date` tinyint NOT NULL,
  `handler_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `guanliren`
--

/*!50001 DROP TABLE IF EXISTS `guanliren`*/;
/*!50001 DROP VIEW IF EXISTS `guanliren`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `guanliren` AS select `borrow`.`cno` AS `cno`,`borrow`.`bno` AS `bno`,`borrow`.`borrow_date` AS `borrow_date`,`borrow`.`return_date` AS `return_date`,`borrow`.`handler_id` AS `handler_id` from `borrow` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-23 13:36:59
