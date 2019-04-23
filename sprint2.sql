-- MySQL dump 10.13  Distrib 5.6.43, for Linux (x86_64)
--
-- Host: localhost    Database: group17_software_engineering
-- ------------------------------------------------------
-- Server version	5.6.43

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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `id game` int(11) NOT NULL AUTO_INCREMENT,
  `hometeam` int(11) DEFAULT NULL,
  `awayteam` int(11) DEFAULT NULL,
  `dateplayed` date NOT NULL,
  PRIMARY KEY (`id game`),
  KEY `awayteam_idx` (`awayteam`),
  KEY `hometeam_idx` (`hometeam`),
  CONSTRAINT `awayteam` FOREIGN KEY (`awayteam`) REFERENCES `teams` (`idteams`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hometeam` FOREIGN KEY (`hometeam`) REFERENCES `teams` (`idteams`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `idphoto` varchar(45) NOT NULL,
  `creator` int(11) DEFAULT '1',
  `date` date DEFAULT '2019-01-01',
  `path` varchar(45) NOT NULL,
  PRIMARY KEY (`idphoto`),
  KEY `creator_idx` (`creator`),
  CONSTRAINT `creator` FOREIGN KEY (`creator`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES ('20170119_uglyproduce_lb_001',1,'2019-01-01','demo/20170119_uglyproduce_lb_001.jpg'),('20170119_uglyproduce_lb_002',1,'2019-01-01','demo/20170119_uglyproduce_lb_002.jpg'),('20170119_uglyproduce_lb_003',1,'2019-01-01','demo/20170119_uglyproduce_lb_003.jpg'),('20170119_uglyproduce_lb_004',1,'2019-01-01','demo/20170119_uglyproduce_lb_004.jpg'),('20170119_uglyproduce_lb_005',1,'2019-01-01','demo/20170119_uglyproduce_lb_005.jpg'),('20170119_uglyproduce_lb_006',1,'2019-01-01','demo/20170119_uglyproduce_lb_006.jpg'),('20170119_uglyproduce_lb_007',1,'2019-01-01','demo/20170119_uglyproduce_lb_007.jpg'),('20170119_uglyproduce_lb_008',1,'2019-01-01','demo/20170119_uglyproduce_lb_008.jpg'),('20170119_uglyproduce_lb_009',1,'2019-01-01','demo/20170119_uglyproduce_lb_009.jpg'),('20170119_uglyproduce_lb_010',1,'2019-01-01','demo/20170119_uglyproduce_lb_010.jpg'),('20170119_uglyproduce_lb_011',1,'2019-01-01','demo/20170119_uglyproduce_lb_011.jpg'),('20170119_uglyproduce_lb_012',1,'2019-01-01','demo/20170119_uglyproduce_lb_012.jpg'),('20170119_uglyproduce_lb_013\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_013.jpg\n'),('20170119_uglyproduce_lb_014',1,'2019-01-01','demo/20170119_uglyproduce_lb_014.jpg'),('20170119_uglyproduce_lb_015',1,'2019-01-01','demo/20170119_uglyproduce_lb_015.jpg'),('20170119_uglyproduce_lb_016',1,'2019-01-01','demo/20170119_uglyproduce_lb_016.jpg'),('20170119_uglyproduce_lb_017',1,'2019-01-01','demo/20170119_uglyproduce_lb_017.jpg'),('20170119_uglyproduce_lb_018',1,'2019-01-01','demo/20170119_uglyproduce_lb_018.jpg'),('20170119_uglyproduce_lb_019',1,'2019-01-01','demo/20170119_uglyproduce_lb_019.jpg'),('20170119_uglyproduce_lb_020',1,'2019-01-01','demo/20170119_uglyproduce_lb_020.jpg'),('20170119_uglyproduce_lb_021',1,'2019-01-01','demo/20170119_uglyproduce_lb_021.jpg'),('20170119_uglyproduce_lb_022',1,'2019-01-01','demo/20170119_uglyproduce_lb_022.jpg'),('20170119_uglyproduce_lb_023\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_023.jpg\n'),('20170119_uglyproduce_lb_024',1,'2019-01-01','demo/20170119_uglyproduce_lb_024.jpg'),('20170119_uglyproduce_lb_025',1,'2019-01-01','demo/20170119_uglyproduce_lb_025.jpg'),('20170119_uglyproduce_lb_026\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_026.jpg\n'),('20170119_uglyproduce_lb_027',1,'2019-01-01','demo/20170119_uglyproduce_lb_027.jpg'),('20170119_uglyproduce_lb_028',1,'2019-01-01','demo/20170119_uglyproduce_lb_028.jpg'),('20170119_uglyproduce_lb_029\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_029.jpg\n'),('20170119_uglyproduce_lb_030',1,'2019-01-01','demo/20170119_uglyproduce_lb_030.jpg'),('20170119_uglyproduce_lb_031',1,'2019-01-01','demo/20170119_uglyproduce_lb_031.jpg'),('20170119_uglyproduce_lb_032',1,'2019-01-01','demo/20170119_uglyproduce_lb_032.jpg'),('20170119_uglyproduce_lb_033',1,'2019-01-01','demo/20170119_uglyproduce_lb_033.jpg'),('20170119_uglyproduce_lb_034\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_034.jpg\n'),('20170119_uglyproduce_lb_035',1,'2019-01-01','demo/20170119_uglyproduce_lb_035.jpg'),('20170119_uglyproduce_lb_036\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_036.jpg\n'),('20170119_uglyproduce_lb_037',1,'2019-01-01','demo/20170119_uglyproduce_lb_037.jpg'),('20170119_uglyproduce_lb_038',1,'2019-01-01','demo/20170119_uglyproduce_lb_038.jpg'),('20170119_uglyproduce_lb_039',1,'2019-01-01','demo/20170119_uglyproduce_lb_039.jpg'),('20170119_uglyproduce_lb_040\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_040.jpg\n'),('20170119_uglyproduce_lb_041',1,'2019-01-01','demo/20170119_uglyproduce_lb_041.jpg'),('20170119_uglyproduce_lb_042',1,'2019-01-01','demo/20170119_uglyproduce_lb_042.jpg'),('20170119_uglyproduce_lb_043',1,'2019-01-01','demo/20170119_uglyproduce_lb_043.jpg'),('20170119_uglyproduce_lb_044',1,'2019-01-01','demo/20170119_uglyproduce_lb_044.jpg'),('20170119_uglyproduce_lb_045',1,'2019-01-01','demo/20170119_uglyproduce_lb_045.jpg'),('20170119_uglyproduce_lb_046',1,'2019-01-01','demo/20170119_uglyproduce_lb_046.jpg'),('20170119_uglyproduce_lb_047',1,'2019-01-01','demo/20170119_uglyproduce_lb_047.jpg'),('20170119_uglyproduce_lb_048',1,'2019-01-01','demo/20170119_uglyproduce_lb_048.jpg'),('20170119_uglyproduce_lb_049\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_049.jpg\n'),('20170119_uglyproduce_lb_050\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_050.jpg\n'),('20170119_uglyproduce_lb_051',1,'2019-01-01','demo/20170119_uglyproduce_lb_051.jpg'),('20170119_uglyproduce_lb_052\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_052.jpg\n'),('20170119_uglyproduce_lb_053',1,'2019-01-01','demo/20170119_uglyproduce_lb_053.jpg'),('20170119_uglyproduce_lb_054',1,'2019-01-01','demo/20170119_uglyproduce_lb_054.jpg'),('20170119_uglyproduce_lb_055',1,'2019-01-01','demo/20170119_uglyproduce_lb_055.jpg'),('20170119_uglyproduce_lb_056',1,'2019-01-01','demo/20170119_uglyproduce_lb_056.jpg'),('20170119_uglyproduce_lb_057',1,'2019-01-01','demo/20170119_uglyproduce_lb_057.jpg'),('20170119_uglyproduce_lb_058',1,'2019-01-01','demo/20170119_uglyproduce_lb_058.jpg'),('20170119_uglyproduce_lb_059',1,'2019-01-01','demo/20170119_uglyproduce_lb_059.jpg'),('20170119_uglyproduce_lb_060',1,'2019-01-01','demo/20170119_uglyproduce_lb_060.jpg'),('20170119_uglyproduce_lb_061',1,'2019-01-01','demo/20170119_uglyproduce_lb_061.jpg'),('20170119_uglyproduce_lb_062\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_062.jpg\n'),('20170119_uglyproduce_lb_063',1,'2019-01-01','demo/20170119_uglyproduce_lb_063.jpg'),('20170119_uglyproduce_lb_064',1,'2019-01-01','demo/20170119_uglyproduce_lb_064.jpg'),('20170119_uglyproduce_lb_065',1,'2019-01-01','demo/20170119_uglyproduce_lb_065.jpg'),('20170119_uglyproduce_lb_066\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_066.jpg\n'),('20170119_uglyproduce_lb_067',1,'2019-01-01','demo/20170119_uglyproduce_lb_067.jpg'),('20170119_uglyproduce_lb_068',1,'2019-01-01','demo/20170119_uglyproduce_lb_068.jpg'),('20170119_uglyproduce_lb_069',1,'2019-01-01','demo/20170119_uglyproduce_lb_069.jpg'),('20170119_uglyproduce_lb_070',1,'2019-01-01','demo/20170119_uglyproduce_lb_070.jpg'),('20170119_uglyproduce_lb_071',1,'2019-01-01','demo/20170119_uglyproduce_lb_071.jpg'),('20170119_uglyproduce_lb_072',1,'2019-01-01','demo/20170119_uglyproduce_lb_072.jpg'),('20170119_uglyproduce_lb_073',1,'2019-01-01','demo/20170119_uglyproduce_lb_073.jpg'),('20170119_uglyproduce_lb_074',1,'2019-01-01','demo/20170119_uglyproduce_lb_074.jpg'),('20170119_uglyproduce_lb_075',1,'2019-01-01','demo/20170119_uglyproduce_lb_075.jpg'),('20170119_uglyproduce_lb_076',1,'2019-01-01','demo/20170119_uglyproduce_lb_076.jpg'),('20170119_uglyproduce_lb_077',1,'2019-01-01','demo/20170119_uglyproduce_lb_077.jpg'),('20170119_uglyproduce_lb_078',1,'2019-01-01','demo/20170119_uglyproduce_lb_078.jpg'),('20170119_uglyproduce_lb_079',1,'2019-01-01','demo/20170119_uglyproduce_lb_079.jpg'),('20170119_uglyproduce_lb_080',1,'2019-01-01','demo/20170119_uglyproduce_lb_080.jpg'),('20170119_uglyproduce_lb_081',1,'2019-01-01','demo/20170119_uglyproduce_lb_081.jpg'),('20170119_uglyproduce_lb_082\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_082.jpg\n'),('20170119_uglyproduce_lb_083',1,'2019-01-01','demo/20170119_uglyproduce_lb_083.jpg'),('20170119_uglyproduce_lb_084',1,'2019-01-01','demo/20170119_uglyproduce_lb_084.jpg'),('20170119_uglyproduce_lb_085',1,'2019-01-01','demo/20170119_uglyproduce_lb_085.jpg'),('20170119_uglyproduce_lb_086',1,'2019-01-01','demo/20170119_uglyproduce_lb_086.jpg'),('20170119_uglyproduce_lb_087\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_087.jpg\n'),('20170119_uglyproduce_lb_088',1,'2019-01-01','demo/20170119_uglyproduce_lb_088.jpg'),('20170119_uglyproduce_lb_089',1,'2019-01-01','demo/20170119_uglyproduce_lb_089.jpg'),('20170119_uglyproduce_lb_090',1,'2019-01-01','demo/20170119_uglyproduce_lb_090.jpg'),('20170119_uglyproduce_lb_091\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_091.jpg\n'),('20170119_uglyproduce_lb_092',1,'2019-01-01','demo/20170119_uglyproduce_lb_092.jpg'),('20170119_uglyproduce_lb_093',1,'2019-01-01','demo/20170119_uglyproduce_lb_093.jpg'),('20170119_uglyproduce_lb_094',1,'2019-01-01','demo/20170119_uglyproduce_lb_094.jpg'),('20170119_uglyproduce_lb_095\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_095.jpg\n'),('20170119_uglyproduce_lb_096\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_096.jpg\n'),('20170119_uglyproduce_lb_097\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_097.jpg\n'),('20170119_uglyproduce_lb_098\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_098.jpg\n'),('20170119_uglyproduce_lb_099',1,'2019-01-01','demo/20170119_uglyproduce_lb_099.jpg'),('20170119_uglyproduce_lb_100',1,'2019-01-01','demo/20170119_uglyproduce_lb_100.jpg'),('20170119_uglyproduce_lb_101',1,'2019-01-01','demo/20170119_uglyproduce_lb_101.jpg'),('20170119_uglyproduce_lb_102',1,'2019-01-01','demo/20170119_uglyproduce_lb_102.jpg'),('20170119_uglyproduce_lb_103',1,'2019-01-01','demo/20170119_uglyproduce_lb_103.jpg'),('20170119_uglyproduce_lb_104',1,'2019-01-01','demo/20170119_uglyproduce_lb_104.jpg'),('20170119_uglyproduce_lb_105',1,'2019-01-01','demo/20170119_uglyproduce_lb_105.jpg'),('20170119_uglyproduce_lb_106',1,'2019-01-01','demo/20170119_uglyproduce_lb_106.jpg'),('20170119_uglyproduce_lb_107',1,'2019-01-01','demo/20170119_uglyproduce_lb_107.jpg'),('20170119_uglyproduce_lb_108',1,'2019-01-01','demo/20170119_uglyproduce_lb_108.jpg'),('20170119_uglyproduce_lb_109',1,'2019-01-01','demo/20170119_uglyproduce_lb_109.jpg'),('20170119_uglyproduce_lb_110',1,'2019-01-01','demo/20170119_uglyproduce_lb_110.jpg'),('20170119_uglyproduce_lb_111\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_111.jpg\n'),('20170119_uglyproduce_lb_112',1,'2019-01-01','demo/20170119_uglyproduce_lb_112.jpg'),('20170119_uglyproduce_lb_113',1,'2019-01-01','demo/20170119_uglyproduce_lb_113.jpg'),('20170119_uglyproduce_lb_114',1,'2019-01-01','demo/20170119_uglyproduce_lb_114.jpg'),('20170119_uglyproduce_lb_115',1,'2019-01-01','demo/20170119_uglyproduce_lb_115.jpg'),('20170119_uglyproduce_lb_116',1,'2019-01-01','demo/20170119_uglyproduce_lb_116.jpg'),('20170119_uglyproduce_lb_117',1,'2019-01-01','demo/20170119_uglyproduce_lb_117.jpg'),('20170119_uglyproduce_lb_118',1,'2019-01-01','demo/20170119_uglyproduce_lb_118.jpg'),('20170119_uglyproduce_lb_119',1,'2019-01-01','demo/20170119_uglyproduce_lb_119.jpg'),('20170119_uglyproduce_lb_120',1,'2019-01-01','demo/20170119_uglyproduce_lb_120.jpg'),('20170119_uglyproduce_lb_121',1,'2019-01-01','demo/20170119_uglyproduce_lb_121.jpg'),('20170119_uglyproduce_lb_122\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_122.jpg\n'),('20170119_uglyproduce_lb_123',1,'2019-01-01','demo/20170119_uglyproduce_lb_123.jpg'),('20170119_uglyproduce_lb_124',1,'2019-01-01','demo/20170119_uglyproduce_lb_124.jpg'),('20170119_uglyproduce_lb_125',1,'2019-01-01','demo/20170119_uglyproduce_lb_125.jpg'),('20170119_uglyproduce_lb_126',1,'2019-01-01','demo/20170119_uglyproduce_lb_126.jpg'),('20170119_uglyproduce_lb_127',1,'2019-01-01','demo/20170119_uglyproduce_lb_127.jpg'),('20170119_uglyproduce_lb_128',1,'2019-01-01','demo/20170119_uglyproduce_lb_128.jpg'),('20170119_uglyproduce_lb_129',1,'2019-01-01','demo/20170119_uglyproduce_lb_129.jpg'),('20170119_uglyproduce_lb_130',1,'2019-01-01','demo/20170119_uglyproduce_lb_130.jpg'),('20170119_uglyproduce_lb_131',1,'2019-01-01','demo/20170119_uglyproduce_lb_131.jpg'),('20170119_uglyproduce_lb_132',1,'2019-01-01','demo/20170119_uglyproduce_lb_132.jpg'),('20170119_uglyproduce_lb_133',1,'2019-01-01','demo/20170119_uglyproduce_lb_133.jpg'),('20170119_uglyproduce_lb_134',1,'2019-01-01','demo/20170119_uglyproduce_lb_134.jpg'),('20170119_uglyproduce_lb_135',1,'2019-01-01','demo/20170119_uglyproduce_lb_135.jpg'),('20170119_uglyproduce_lb_136',1,'2019-01-01','demo/20170119_uglyproduce_lb_136.jpg'),('20170119_uglyproduce_lb_137\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_137.jpg\n'),('20170119_uglyproduce_lb_138',1,'2019-01-01','demo/20170119_uglyproduce_lb_138.jpg'),('20170119_uglyproduce_lb_139',1,'2019-01-01','demo/20170119_uglyproduce_lb_139.jpg'),('20170119_uglyproduce_lb_140',1,'2019-01-01','demo/20170119_uglyproduce_lb_140.jpg'),('20170119_uglyproduce_lb_141\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_141.jpg\n'),('20170119_uglyproduce_lb_142',1,'2019-01-01','demo/20170119_uglyproduce_lb_142.jpg'),('20170119_uglyproduce_lb_143\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_143.jpg\n'),('20170119_uglyproduce_lb_144',1,'2019-01-01','demo/20170119_uglyproduce_lb_144.jpg'),('20170119_uglyproduce_lb_145',1,'2019-01-01','demo/20170119_uglyproduce_lb_145.jpg'),('20170119_uglyproduce_lb_146',1,'2019-01-01','demo/20170119_uglyproduce_lb_146.jpg'),('20170119_uglyproduce_lb_147',1,'2019-01-01','demo/20170119_uglyproduce_lb_147.jpg'),('20170119_uglyproduce_lb_148',1,'2019-01-01','demo/20170119_uglyproduce_lb_148.jpg'),('20170119_uglyproduce_lb_149\n',1,'2019-01-01','demo/20170119_uglyproduce_lb_149.jpg\n'),('20170119_uglyproduce_lb_150',1,'2019-01-01','demo/20170119_uglyproduce_lb_150.jpg'),('20170119_uglyproduce_lb_151',1,'2019-01-01','demo/20170119_uglyproduce_lb_151.jpg'),('20170119_uglyproduce_lb_152',1,'2019-01-01','demo/20170119_uglyproduce_lb_152.jpg'),('20170119_uglyproduce_lb_153',1,'2019-01-01','demo/20170119_uglyproduce_lb_153.jpg');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_tags`
--

DROP TABLE IF EXISTS `photo_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_tags` (
  `photo_id` varchar(45) NOT NULL,
  `tag_id` int(11) NOT NULL DEFAULT '1',
  `value` double DEFAULT NULL,
  PRIMARY KEY (`photo_id`,`tag_id`),
  KEY `tag_id_idx` (`tag_id`),
  CONSTRAINT `photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`idphoto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`idtags`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_tags`
--

LOCK TABLES `photo_tags` WRITE;
/*!40000 ALTER TABLE `photo_tags` DISABLE KEYS */;
INSERT INTO `photo_tags` VALUES ('20170119_uglyproduce_lb_001',1,5.44395),('20170119_uglyproduce_lb_002',1,6.12515),('20170119_uglyproduce_lb_003',1,6.14535),('20170119_uglyproduce_lb_004',1,6.07431),('20170119_uglyproduce_lb_005',1,4.26806),('20170119_uglyproduce_lb_006',1,5.93122),('20170119_uglyproduce_lb_007',1,5.88008),('20170119_uglyproduce_lb_008',1,5.65634),('20170119_uglyproduce_lb_009',1,5.27561),('20170119_uglyproduce_lb_010',1,4.51755),('20170119_uglyproduce_lb_011',1,6.32783),('20170119_uglyproduce_lb_012',1,6.12878),('20170119_uglyproduce_lb_013\n',1,5.34883),('20170119_uglyproduce_lb_014',1,5.13484),('20170119_uglyproduce_lb_015',1,5.49221),('20170119_uglyproduce_lb_016',1,5.28838),('20170119_uglyproduce_lb_017',1,5.52101),('20170119_uglyproduce_lb_018',1,5.3281),('20170119_uglyproduce_lb_019',1,5.22272),('20170119_uglyproduce_lb_020',1,5.25045),('20170119_uglyproduce_lb_021',1,5.32858),('20170119_uglyproduce_lb_022',1,6.40132),('20170119_uglyproduce_lb_023\n',1,6.10576),('20170119_uglyproduce_lb_024',1,5.74648),('20170119_uglyproduce_lb_025',1,5.70109),('20170119_uglyproduce_lb_026\n',1,5.83975),('20170119_uglyproduce_lb_027',1,5.71895),('20170119_uglyproduce_lb_028',1,4.97601),('20170119_uglyproduce_lb_029\n',1,4.91731),('20170119_uglyproduce_lb_030',1,4.88514),('20170119_uglyproduce_lb_031',1,4.44947),('20170119_uglyproduce_lb_032',1,4.3027),('20170119_uglyproduce_lb_033',1,5.01455),('20170119_uglyproduce_lb_034\n',1,5.11901),('20170119_uglyproduce_lb_035',1,5.09194),('20170119_uglyproduce_lb_036\n',1,4.78509),('20170119_uglyproduce_lb_037',1,4.58241),('20170119_uglyproduce_lb_038',1,5.81861),('20170119_uglyproduce_lb_039',1,5.12193),('20170119_uglyproduce_lb_040\n',1,4.0943),('20170119_uglyproduce_lb_041',1,6.0366),('20170119_uglyproduce_lb_042',1,5.39385),('20170119_uglyproduce_lb_043',1,4.80661),('20170119_uglyproduce_lb_044',1,6.17047),('20170119_uglyproduce_lb_045',1,4.91583),('20170119_uglyproduce_lb_046',1,5.02754),('20170119_uglyproduce_lb_047',1,4.79004),('20170119_uglyproduce_lb_048',1,5.07372),('20170119_uglyproduce_lb_049\n',1,5.08109),('20170119_uglyproduce_lb_051',1,5.06341),('20170119_uglyproduce_lb_052\n',1,5.27934),('20170119_uglyproduce_lb_053',1,5.26476),('20170119_uglyproduce_lb_054',1,5.36689),('20170119_uglyproduce_lb_055',1,5.29437),('20170119_uglyproduce_lb_056',1,4.50018),('20170119_uglyproduce_lb_057',1,4.73795),('20170119_uglyproduce_lb_058',1,4.08601),('20170119_uglyproduce_lb_059',1,4.50576),('20170119_uglyproduce_lb_060',1,4.6209),('20170119_uglyproduce_lb_061',1,4.25814),('20170119_uglyproduce_lb_062\n',1,4.67323),('20170119_uglyproduce_lb_063',1,4.82398),('20170119_uglyproduce_lb_064',1,4.75026),('20170119_uglyproduce_lb_065',1,4.96977),('20170119_uglyproduce_lb_066\n',1,4.97836),('20170119_uglyproduce_lb_067',1,5.11899),('20170119_uglyproduce_lb_068',1,5.29259),('20170119_uglyproduce_lb_069',1,5.01507),('20170119_uglyproduce_lb_070',1,4.61061),('20170119_uglyproduce_lb_071',1,5.24999),('20170119_uglyproduce_lb_072',1,5.13557),('20170119_uglyproduce_lb_073',1,4.45492),('20170119_uglyproduce_lb_074',1,4.99856),('20170119_uglyproduce_lb_075',1,4.74284),('20170119_uglyproduce_lb_076',1,4.97331),('20170119_uglyproduce_lb_077',1,4.97052),('20170119_uglyproduce_lb_078',1,4.43721),('20170119_uglyproduce_lb_079',1,5.02883),('20170119_uglyproduce_lb_080',1,4.77157),('20170119_uglyproduce_lb_081',1,5.02899),('20170119_uglyproduce_lb_082\n',1,4.94442),('20170119_uglyproduce_lb_083',1,4.93682),('20170119_uglyproduce_lb_084',1,5.05434),('20170119_uglyproduce_lb_085',1,5.29659),('20170119_uglyproduce_lb_086',1,5.28707),('20170119_uglyproduce_lb_087\n',1,5.06215),('20170119_uglyproduce_lb_088',1,5.23317),('20170119_uglyproduce_lb_089',1,4.63954),('20170119_uglyproduce_lb_090',1,4.83427),('20170119_uglyproduce_lb_091\n',1,5.04535),('20170119_uglyproduce_lb_092',1,5.28815),('20170119_uglyproduce_lb_093',1,5.41306),('20170119_uglyproduce_lb_094',1,5.30464),('20170119_uglyproduce_lb_095\n',1,5.50662),('20170119_uglyproduce_lb_096\n',1,5.45277),('20170119_uglyproduce_lb_097\n',1,5.44691),('20170119_uglyproduce_lb_098\n',1,5.14141),('20170119_uglyproduce_lb_099',1,5.23977),('20170119_uglyproduce_lb_100',1,5.05821),('20170119_uglyproduce_lb_101',1,4.8941),('20170119_uglyproduce_lb_102',1,5.23797),('20170119_uglyproduce_lb_103',1,5.02008),('20170119_uglyproduce_lb_104',1,5.85778),('20170119_uglyproduce_lb_105',1,5.57217),('20170119_uglyproduce_lb_106',1,5.6374),('20170119_uglyproduce_lb_107',1,5.05522),('20170119_uglyproduce_lb_108',1,5.12243),('20170119_uglyproduce_lb_109',1,5.82255),('20170119_uglyproduce_lb_110',1,5.71503),('20170119_uglyproduce_lb_111\n ',1,5.77014),('20170119_uglyproduce_lb_112',1,5.59295),('20170119_uglyproduce_lb_113',1,5.43238),('20170119_uglyproduce_lb_114',1,5.62213),('20170119_uglyproduce_lb_115',1,5.25905),('20170119_uglyproduce_lb_116',1,5.72025),('20170119_uglyproduce_lb_117',1,5.22115),('20170119_uglyproduce_lb_118',1,5.38182),('20170119_uglyproduce_lb_119',1,5.55891),('20170119_uglyproduce_lb_120',1,5.59833),('20170119_uglyproduce_lb_121',1,5.59947),('20170119_uglyproduce_lb_122\n',1,5.70843),('20170119_uglyproduce_lb_123',1,5.49175),('20170119_uglyproduce_lb_124',1,5.88333),('20170119_uglyproduce_lb_125',1,5.57833),('20170119_uglyproduce_lb_126',1,5.32149),('20170119_uglyproduce_lb_127',1,5.47347),('20170119_uglyproduce_lb_128',1,5.19997),('20170119_uglyproduce_lb_129',1,5.29213),('20170119_uglyproduce_lb_130',1,5.49355),('20170119_uglyproduce_lb_131',1,5.48776),('20170119_uglyproduce_lb_132',1,5.17206),('20170119_uglyproduce_lb_133',1,4.90898),('20170119_uglyproduce_lb_134',1,4.65586),('20170119_uglyproduce_lb_135',1,4.67364),('20170119_uglyproduce_lb_136',1,5.53505),('20170119_uglyproduce_lb_137\n',1,5.55191),('20170119_uglyproduce_lb_138',1,5.69413),('20170119_uglyproduce_lb_139',1,5.58998),('20170119_uglyproduce_lb_140',1,5.48796),('20170119_uglyproduce_lb_141\n',1,5.48526),('20170119_uglyproduce_lb_142',1,5.58826),('20170119_uglyproduce_lb_143\n',1,5.6765),('20170119_uglyproduce_lb_144',1,5.54653),('20170119_uglyproduce_lb_145',1,5.48447),('20170119_uglyproduce_lb_146',1,5.68994),('20170119_uglyproduce_lb_147',1,5.65329),('20170119_uglyproduce_lb_148',1,5.72306),('20170119_uglyproduce_lb_149\n',1,5.78347),('20170119_uglyproduce_lb_150',1,5.85043),('20170119_uglyproduce_lb_151',1,5.01567),('20170119_uglyproduce_lb_152',1,5.46947),('20170119_uglyproduce_lb_153',1,4.68315);
/*!40000 ALTER TABLE `photo_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `idtags` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) NOT NULL,
  PRIMARY KEY (`idtags`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'score');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `idteams` int(11) NOT NULL AUTO_INCREMENT,
  `school` varchar(45) NOT NULL,
  PRIMARY KEY (`idteams`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Mizzou'),(2,'Georgia'),(3,'Alabama'),(4,'South Carolina');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','s-eng','admin','admin',NULL),(2,'Weston','s-eng','Weston','Verhulst',NULL),(3,'Tony','s-eng','Antonio ','Valazquez',NULL),(4,'Byron','s-eng','Byron','Hammann',NULL);
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

-- Dump completed on 2019-04-23  2:08:55
