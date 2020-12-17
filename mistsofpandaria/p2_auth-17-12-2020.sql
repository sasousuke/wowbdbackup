-- MySQL dump 10.13  Distrib 5.5.19, for Win32 (x86)
--
-- Host: localhost    Database: p2_auth
-- ------------------------------------------------------
-- Server version	5.5.19-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL DEFAULT '',
  `sha_pass_hash` varchar(40) NOT NULL DEFAULT '',
  `sessionkey` varchar(80) NOT NULL DEFAULT '',
  `v` varchar(64) NOT NULL DEFAULT '',
  `s` varchar(64) NOT NULL DEFAULT '',
  `token_key` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(254) NOT NULL DEFAULT '',
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `mutetime` bigint(20) NOT NULL DEFAULT '0',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `os` varchar(3) NOT NULL DEFAULT '',
  `recruiter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Account System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'WONDER','A3D000EBA1D69626BF175A2EE4F0D4244D79D925','2A96DC30530E803795FED7B3C27B1827C10EF7701FF4FDBD39303E7A1E2FF219DE6FD318A57A1F26','6441D68DEE05277E2F156FB1D6EE772317E65C0549521CB6FD7A8381FB76A956','B2258C2F140CD3DEABCA7401916EDB7B91A6AC4EF66C9FF1003F46D4F992BAFB','','','2015-10-04 22:15:47','127.0.0.1',0,0,'2015-10-11 14:42:30',0,4,0,0,'Win',0),(13,'KONOHA','CD9280D781C3339FD45F781E0FBA80C4ECC1A684','088594AFB11891A799E49B4AB4A2303FC8F496929E1DCD3475358FAD538A30E4F38A5268019E96AD','6584D95C16A2185C508FAC90D2930D4E94C1CB4FA1A29C13ABF647D978368D6F','8AB62E9EB4D3FB8D1D7828D7DD9EC27C63648CF18F3356514B3F370488548E03','','','2020-08-23 15:15:47','172.16.0.19',0,0,'2020-12-16 17:04:12',0,4,0,6,'Win',0),(14,'USER01','BACD8F5CA11B1647FE2CCDC4F03ADDCF7BCDDD1A','0F8B06EA643C5D3AFB085AC1A5A55709760F053F55C7A6B1F5134C7B8E43A3C1D673187D5BDC95DD','31E1789B623D2AE5223C592A599423D202E959E1503E40FA044D5EAB33DAE150','B65A0EB82875472F3426E8733CB881A28E215506F34B0468E98A3A36C68C4A25','','','2020-08-23 15:51:14','172.16.0.20',0,0,'2020-08-25 22:45:11',0,4,0,6,'Win',0),(15,'USER02','16D04CD02758A5D7AD9CF3490459CC2C68A5B309','8FED01A8C112E700818E501576BF5EBF1D6BE03E06FACCD2B279929361F2EAFBC61750B825CCF6B7','7427E7C4301D51906BA29BF8DDDDC84D9FE4D8CBD0928348C7CECE7E18FD2E6F','B7F7FD452C87214ADB1A849DCEAA329FBDBCA18A3BC48C6ACF7CEA0F98362795','','','2020-08-23 15:51:20','172.16.0.20',0,0,'2020-08-25 22:49:27',0,4,0,6,'Win',0),(16,'USER03','E8E516AF2FB847EBFD9FB2FEB80173E804C68820','E138E2E50542A8AFB95759DA91BFC4B70FE86BAC6F9B1EA85A760D36B3C1DACBBFF910E21A47EF17','4F6C24F84EB5377EC964B816E3A9C12AC811AF953F029B2B6795F282139E18D5','B3E0FA5DB5F424E568EC4913353F06A77C933161C31BFF04CA1EA33B9F3258B5','','','2020-08-23 15:51:25','172.16.0.20',0,0,'2020-08-25 22:50:55',0,4,0,6,'Win',0),(17,'USER04','A945F5F9AE309A2583927A9C75737635117ACC25','92CBA64F059839BEF18BEF28611FD9D8378264DD41798E2F4C668123F44EF80DC6CE3AD26D64E64B','53BD7F81A18599C78E9860A57EA2A45BA267B06F88309B286E6C9341C0C03D53','CBD0DD735C9367AF3C2B46C91E60A3F0AB52AAF9940130C1F7DD1FA80EFA16EB','','','2020-08-23 15:51:30','172.16.0.20',0,0,'2020-08-25 22:52:57',0,4,0,6,'Win',0),(18,'USER05','BD9C09E5DBE884AA0213001FE880653D7E908F03','','','','','','2020-08-23 15:51:34','127.0.0.1',0,0,'0000-00-00 00:00:00',0,4,0,0,'',0),(19,'USER06','A22E2437DA2045F2A58153B7F7CF733016FB0ED4','','','','','','2020-08-23 15:51:40','127.0.0.1',0,0,'0000-00-00 00:00:00',0,4,0,0,'',0),(21,'USER07','ABF610A23FCC18B787CB50980ADAC4AB2170EC12','109C643FC05AFB5877C33C43C1B649938A1FD6A10CEBAC2BD9FD877E3F78E0D93F5CAAAFABF1737E','7D117084C983F5E24F9C6FAD63BB3BC5181D7BB7B428294095E8C89717B23181','9459596169D01577206703F027719012A958DC2F225072D3E2F3F8B89F208D91','','','2020-08-23 15:51:55','172.16.0.20',0,0,'2020-11-29 16:28:57',0,4,0,6,'Win',0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_access`
--

DROP TABLE IF EXISTS `account_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_access` (
  `id` int(10) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL DEFAULT '-1',
  `comment` text,
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_access`
--

LOCK TABLES `account_access` WRITE;
/*!40000 ALTER TABLE `account_access` DISABLE KEYS */;
INSERT INTO `account_access` VALUES (0,3,3,NULL),(21,3,-1,NULL);
/*!40000 ALTER TABLE `account_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_banned`
--

DROP TABLE IF EXISTS `account_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_banned` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_banned`
--

LOCK TABLES `account_banned` WRITE;
/*!40000 ALTER TABLE `account_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_log_ip`
--

DROP TABLE IF EXISTS `account_log_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_log_ip` (
  `accountid` int(11) unsigned NOT NULL,
  `ip` varchar(30) NOT NULL DEFAULT '0.0.0.0',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`accountid`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_log_ip`
--

LOCK TABLES `account_log_ip` WRITE;
/*!40000 ALTER TABLE `account_log_ip` DISABLE KEYS */;
INSERT INTO `account_log_ip` VALUES (1,'127.0.0.1','2015-10-05 11:52:18'),(2,'127.0.0.1','2016-10-05 20:04:04'),(3,'127.0.0.1','2016-10-24 22:02:09'),(4,'127.0.0.1','2016-12-06 13:27:53'),(5,'127.0.0.1','2016-12-19 20:56:34'),(5,'192.168.0.18','2016-12-20 00:22:21'),(6,'127.0.0.1','2016-12-25 18:15:56'),(7,'127.0.0.1','2016-12-25 18:17:30'),(8,'127.0.0.1','2016-12-29 21:02:35'),(9,'127.0.0.1','2016-12-31 16:35:19'),(10,'127.0.0.1','2017-01-01 11:27:47'),(11,'127.0.0.1','2017-01-03 23:36:55'),(12,'127.0.0.1','2017-01-03 23:39:52'),(13,'127.0.0.1','2020-08-23 11:16:02'),(13,'172.16.0.19','2020-08-23 11:38:07'),(14,'172.16.0.20','2020-08-23 11:55:46'),(15,'172.16.0.20','2020-08-25 18:49:27'),(16,'172.16.0.20','2020-08-25 18:50:55'),(17,'172.16.0.20','2020-08-25 18:52:57'),(21,'172.16.0.19','2020-08-28 15:26:54'),(21,'172.16.10.50','2020-11-22 08:37:44'),(13,'172.16.10.50','2020-11-29 11:24:11'),(21,'172.16.0.20','2020-11-29 11:28:57');
/*!40000 ALTER TABLE `account_log_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_premium`
--

DROP TABLE IF EXISTS `account_premium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_premium` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `setdate` bigint(40) NOT NULL DEFAULT '0',
  `unsetdate` bigint(40) NOT NULL DEFAULT '0',
  `premium_type` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `gm` varchar(12) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`setdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_premium`
--

LOCK TABLES `account_premium` WRITE;
/*!40000 ALTER TABLE `account_premium` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_premium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_spell`
--

DROP TABLE IF EXISTS `account_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_spell` (
  `accountId` int(11) NOT NULL,
  `spell` int(10) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`accountId`,`spell`),
  KEY `account` (`accountId`) USING HASH,
  KEY `account_spell` (`accountId`,`spell`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_spell`
--

LOCK TABLES `account_spell` WRITE;
/*!40000 ALTER TABLE `account_spell` DISABLE KEYS */;
INSERT INTO `account_spell` VALUES (2,8394,1,0),(2,10676,1,0),(2,10707,1,0),(2,10711,1,0),(2,23221,1,0),(2,35907,1,0),(2,123214,1,0),(2,127816,1,0),(4,10676,1,0),(4,123214,1,0),(9,458,1,0),(13,8395,1,0),(13,10688,1,0),(13,10703,1,0),(13,10704,1,0),(13,10709,1,0),(13,10713,1,0),(13,10714,1,0),(13,12243,1,0),(13,15067,1,0),(13,23811,1,0),(13,32245,1,0),(13,36027,1,0),(13,44151,1,0),(13,44153,1,0),(13,65358,1,0),(13,67416,1,0),(13,67417,1,0),(13,87090,1,0),(13,87091,1,0),(13,93739,1,0),(13,93838,1,0),(13,97638,1,0),(13,99668,1,0),(13,101989,1,0),(13,122748,1,0),(13,123212,1,0),(13,127816,1,0);
/*!40000 ALTER TABLE `account_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firewall_farms`
--

DROP TABLE IF EXISTS `firewall_farms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firewall_farms` (
  `ip` tinytext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firewall_farms`
--

LOCK TABLES `firewall_farms` WRITE;
/*!40000 ALTER TABLE `firewall_farms` DISABLE KEYS */;
/*!40000 ALTER TABLE `firewall_farms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_banned`
--

DROP TABLE IF EXISTS `ip_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_banned` (
  `ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `bandate` int(10) unsigned NOT NULL,
  `unbandate` int(10) unsigned NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(255) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Banned IPs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_banned`
--

LOCK TABLES `ip_banned` WRITE;
/*!40000 ALTER TABLE `ip_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_to_country`
--

DROP TABLE IF EXISTS `ip_to_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_to_country` (
  `IP_FROM` double NOT NULL,
  `IP_TO` double NOT NULL,
  `COUNTRY_CODE` char(2) DEFAULT NULL,
  `COUNTRY_CODE_3` char(3) NOT NULL,
  `COUNTRY_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IP_FROM`,`IP_TO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_to_country`
--

LOCK TABLES `ip_to_country` WRITE;
/*!40000 ALTER TABLE `ip_to_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_to_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_vote`
--

DROP TABLE IF EXISTS `log_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_vote` (
  `top_name` varchar(15) NOT NULL DEFAULT 'top',
  `ip` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `date` int(11) NOT NULL,
  PRIMARY KEY (`top_name`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_vote`
--

LOCK TABLES `log_vote` WRITE;
/*!40000 ALTER TABLE `log_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `time` int(10) unsigned NOT NULL,
  `realm` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `string` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails`
--

DROP TABLE IF EXISTS `mails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails` (
  `email` varchar(254) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails`
--

LOCK TABLES `mails` WRITE;
/*!40000 ALTER TABLE `mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realmcharacters`
--

DROP TABLE IF EXISTS `realmcharacters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realmcharacters` (
  `realmid` int(10) unsigned NOT NULL DEFAULT '0',
  `acctid` int(10) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Realm Character Tracker';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realmcharacters`
--

LOCK TABLES `realmcharacters` WRITE;
/*!40000 ALTER TABLE `realmcharacters` DISABLE KEYS */;
INSERT INTO `realmcharacters` VALUES (1,1,3),(1,13,8),(1,14,1),(1,15,1),(1,16,1),(1,17,1),(1,18,0),(1,19,0),(1,21,1);
/*!40000 ALTER TABLE `realmcharacters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realmlist`
--

DROP TABLE IF EXISTS `realmlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realmlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT 'WoWSource V3-548',
  `address` varchar(255) NOT NULL DEFAULT '89.44.239.96',
  `port` smallint(5) unsigned NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `population` float unsigned NOT NULL DEFAULT '0',
  `gamebuild` int(10) unsigned NOT NULL DEFAULT '18019',
  `online` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Realm System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realmlist`
--

LOCK TABLES `realmlist` WRITE;
/*!40000 ALTER TABLE `realmlist` DISABLE KEYS */;
INSERT INTO `realmlist` VALUES (1,'WoNDeR Dev1','172.16.0.8',8085,0,0,1,0,0,18019,0);
/*!40000 ALTER TABLE `realmlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferts`
--

DROP TABLE IF EXISTS `transferts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transferts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(11) NOT NULL,
  `perso_guid` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `revision` blob NOT NULL,
  `dump` longtext NOT NULL,
  `last_error` blob NOT NULL,
  `nb_attempt` int(11) NOT NULL,
  `state` int(10) DEFAULT NULL,
  `error` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferts`
--

LOCK TABLES `transferts` WRITE;
/*!40000 ALTER TABLE `transferts` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferts_logs`
--

DROP TABLE IF EXISTS `transferts_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transferts_logs` (
  `id` int(11) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `perso_guid` int(11) DEFAULT NULL,
  `from` int(2) DEFAULT NULL,
  `to` int(2) DEFAULT NULL,
  `dump` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferts_logs`
--

LOCK TABLES `transferts_logs` WRITE;
/*!40000 ALTER TABLE `transferts_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferts_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uptime`
--

DROP TABLE IF EXISTS `uptime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uptime` (
  `realmid` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'Trinitycore',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Uptime system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uptime`
--

LOCK TABLES `uptime` WRITE;
/*!40000 ALTER TABLE `uptime` DISABLE KEYS */;
INSERT INTO `uptime` VALUES (1,1443968644,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1443996763,2507,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1444059815,3647,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1444160696,1866,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1444172092,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1444173145,3055,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1444486348,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1444532719,4263,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1444538785,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1444573948,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1444574477,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1475692372,2422,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1475700616,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1475703199,630,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1475708980,1825,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1475762722,1226,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1475764826,7248,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1475784419,4236,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476017762,6039,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476183678,5468,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476194158,5456,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476212555,8439,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476283857,4889,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476292886,7232,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476302509,4260,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476382390,11432,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476451322,6629,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476474686,5426,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476538634,11435,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476779571,6044,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476805594,4830,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476814458,5432,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476873421,6022,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476906193,13837,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476963418,2421,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1476989051,12044,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1477082689,631,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1477083558,4232,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1477130281,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1477134572,19816,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1477165351,3042,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1477235862,19832,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1477335400,10827,2,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1477403863,4233,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1477746140,1843,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1477762208,1826,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1477857119,2433,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1478008748,4824,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1481027037,4837,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1481055314,3629,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1481059265,2424,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1481369430,1830,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1481371563,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1481371834,21024,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1481395629,15022,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1481913800,15034,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1481961502,15633,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1481999769,19233,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482135803,4236,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482144750,10224,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482169107,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482174390,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482176982,1890,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482186386,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482187338,2420,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482191953,4869,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482222482,9030,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482231692,1228,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482236832,1220,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482294893,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482379587,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1482705581,12616,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483034668,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483039704,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483048458,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483049218,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483088983,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483090733,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483187076,1277,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483198403,1211,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483204059,2415,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483225323,1213,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483258448,7812,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483266343,609,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483270882,3010,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483306209,2423,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483353258,9011,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483367146,1801,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483377113,6637,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483385967,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483434308,3010,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483462583,625,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483515002,608,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483515862,601,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483516711,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1483517459,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598195619,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598196146,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598197015,1232,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598198808,5433,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598387195,16225,2,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598457917,6626,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598477340,6021,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598540274,31837,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598628777,31833,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598705786,2433,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598708873,1820,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598711137,628,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598712052,1805,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598801570,22837,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598906908,14435,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1598996503,11427,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599064641,631,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599067504,15628,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599083654,8447,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599149107,31228,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599240003,19833,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599260070,645,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599261027,5439,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599314845,1839,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599317664,14411,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599332549,17443,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599483323,635,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599509465,16828,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599592370,16824,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1599677402,16846,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600119439,9625,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600200745,9024,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600291664,6639,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600374896,12635,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600388088,2439,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600444713,640,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600446658,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600446869,2405,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600449625,627,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600450712,2421,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600455416,14429,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600470351,5431,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600525018,31233,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600723159,7835,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600789199,4844,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600802179,6034,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600809825,637,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600811003,1831,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600813100,9045,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600899381,9027,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1600986992,7835,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601067536,2429,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601070653,2438,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601074353,6630,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601132517,24622,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601307699,19835,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601330413,3039,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601412087,1242,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601413907,9639,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601478473,22238,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601503005,8429,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601511685,634,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601582458,10242,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601593360,1838,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601646651,2436,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601649713,657,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601673985,7238,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601835854,4826,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601840908,8424,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601850115,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601850392,640,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601921459,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1601929843,8434,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602011229,6640,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602019981,3033,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602023520,644,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602099828,3042,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602103878,2433,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602106577,4233,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602176326,5443,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602186822,13840,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602250814,2442,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602279696,1846,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602282208,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602282407,654,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602283267,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602284569,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602341544,3029,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602515262,1236,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602516769,7830,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1602526552,10226,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606052157,3639,2,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606057391,15036,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606074541,12652,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606144133,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606144397,1838,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606250724,4230,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606255610,11440,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606340405,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606340516,13478,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606354048,1839,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606425379,10229,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606507195,19828,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606573719,1831,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606662574,31828,2,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606758587,3030,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606779308,8174,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606850395,18026,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606930058,5693,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1606942711,15000,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607004388,18972,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607023503,48433,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607095771,15199,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607119780,34996,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607175938,22642,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607273073,13115,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607286304,44833,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607378903,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607379062,15040,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607470446,8426,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607613782,36106,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607650013,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607650094,0,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607650125,627,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607694006,3025,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607698181,38434,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607868678,437,0,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607869178,6626,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607876578,1827,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607879220,23426,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1607961296,39344,1,'WoWSource rev.  () (Win64, RelWithDebInfo)'),(1,1608138070,57458,1,'WoWSource rev.  () (Win64, RelWithDebInfo)');
/*!40000 ALTER TABLE `uptime` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-17  8:51:11
