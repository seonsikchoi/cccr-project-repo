-- MariaDB dump 10.19  Distrib 10.5.22-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	10.5.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `wpdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `wpdb` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;

USE `wpdb`;

--
-- Table structure for table `mb_access_ip`
--

DROP TABLE IF EXISTS `mb_access_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_access_ip` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_access_ip`
--

LOCK TABLES `mb_access_ip` WRITE;
/*!40000 ALTER TABLE `mb_access_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `mb_access_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_analytics`
--

DROP TABLE IF EXISTS `mb_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_analytics` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` char(10) NOT NULL DEFAULT '',
  `today_visit` int(10) unsigned NOT NULL DEFAULT 0,
  `today_join` int(10) unsigned NOT NULL DEFAULT 0,
  `today_write` int(10) unsigned NOT NULL DEFAULT 0,
  `today_reply` int(10) unsigned NOT NULL DEFAULT 0,
  `today_comment` int(10) unsigned NOT NULL DEFAULT 0,
  `today_upload` int(10) unsigned NOT NULL DEFAULT 0,
  `today_page_view` int(10) unsigned NOT NULL DEFAULT 0,
  `today_sales` int(10) unsigned NOT NULL DEFAULT 0,
  `today_payment_count` int(10) unsigned NOT NULL DEFAULT 0,
  `total_visit` int(10) unsigned NOT NULL DEFAULT 0,
  `ext1` int(10) unsigned NOT NULL DEFAULT 0,
  `ext2` int(10) unsigned NOT NULL DEFAULT 0,
  `ext3` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_analytics`
--

LOCK TABLES `mb_analytics` WRITE;
/*!40000 ALTER TABLE `mb_analytics` DISABLE KEYS */;
INSERT INTO `mb_analytics` VALUES (1,'2024-06-25',1,1,3,0,0,0,203,0,0,2,0,0,0),(2,'2024-06-26',1,0,0,0,0,0,9,0,0,3,0,0,0),(3,'2024-06-27',3,0,0,0,0,0,10,0,0,6,0,0,0),(4,'2024-06-28',0,0,0,0,0,0,16,0,0,6,0,0,0);
/*!40000 ALTER TABLE `mb_analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_boards`
--

DROP TABLE IF EXISTS `mb_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_boards` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `board_name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `image_path` varchar(255) NOT NULL DEFAULT '',
  `skin_name` varchar(100) NOT NULL DEFAULT '',
  `model_name` varchar(100) NOT NULL DEFAULT '',
  `table_link` varchar(100) NOT NULL DEFAULT '',
  `mobile_skin_name` varchar(100) NOT NULL DEFAULT '',
  `post_id` bigint(20) NOT NULL DEFAULT 0,
  `board_header` text NOT NULL,
  `board_footer` text NOT NULL,
  `board_content_form` text NOT NULL,
  `editor_type` varchar(50) NOT NULL DEFAULT 'N',
  `api_type` varchar(50) NOT NULL DEFAULT 'mb',
  `page_size` smallint(5) unsigned NOT NULL DEFAULT 20,
  `comment_size` smallint(5) unsigned NOT NULL DEFAULT 50,
  `block_size` tinyint(3) unsigned NOT NULL DEFAULT 10,
  `category_type` varchar(50) NOT NULL DEFAULT 'NONE',
  `category_data` text NOT NULL,
  `use_board_vote_good` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_board_vote_bad` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_comment` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_comment_vote_good` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_comment_vote_bad` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_secret` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_notice` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_list_title` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `use_list_search` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `list_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `view_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `write_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `reply_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `delete_level` tinyint(3) unsigned NOT NULL DEFAULT 8,
  `modify_level` tinyint(3) unsigned NOT NULL DEFAULT 8,
  `secret_level` tinyint(3) unsigned NOT NULL DEFAULT 8,
  `manage_level` tinyint(3) unsigned NOT NULL DEFAULT 8,
  `comment_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `point_board_read` int(10) NOT NULL DEFAULT 0,
  `point_board_write` int(10) NOT NULL DEFAULT 0,
  `point_board_reply` int(10) NOT NULL DEFAULT 0,
  `point_comment_write` int(10) NOT NULL DEFAULT 0,
  `board_type` varchar(50) NOT NULL DEFAULT 'board',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `ext1` varchar(255) NOT NULL DEFAULT '',
  `ext2` varchar(255) NOT NULL DEFAULT '',
  `ext3` varchar(255) NOT NULL DEFAULT '',
  `ext4` varchar(255) NOT NULL DEFAULT '',
  `ext5` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `board_name` (`board_name`),
  KEY `skin_name` (`skin_name`),
  KEY `model_name` (`model_name`),
  KEY `mobile_skin_name` (`mobile_skin_name`),
  KEY `is_show` (`is_show`),
  KEY `reg_date` (`reg_date`),
  KEY `board_type` (`board_type`),
  KEY `table_link` (`table_link`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_boards`
--

LOCK TABLES `mb_boards` WRITE;
/*!40000 ALTER TABLE `mb_boards` DISABLE KEYS */;
INSERT INTO `mb_boards` VALUES (1,'board_options','','','bbs_admin','admin/board_options','','',0,'','','','N','mb',20,50,10,'TAB_AJAX','admin,board',0,0,0,0,0,0,0,1,1,8,8,10,99,10,10,10,8,0,0,0,0,0,'admin','2015-02-24 18:49:59',0,'','','','',''),(2,'users','','','bbs_admin','admin/users','','',0,'','','','N','mb',50,50,10,'NONE','',0,0,0,0,0,0,0,1,1,8,8,10,99,10,10,10,8,8,0,0,0,0,'admin','2015-02-24 18:49:59',0,'','','','',''),(3,'files','','','bbs_admin','admin/files','','',0,'','','','N','mb',50,50,10,'NONE','',0,0,0,0,0,0,0,1,1,8,8,99,99,10,10,10,8,8,0,0,0,0,'admin','2015-02-24 18:49:59',0,'','','','',''),(4,'options','','','bbs_admin','admin/options','','',0,'','','','N','mb',50,50,10,'TAB_RELOAD','',0,0,0,0,0,0,0,1,1,8,8,10,99,10,10,10,8,8,0,0,0,0,'admin','2015-02-24 18:49:59',0,'','','','',''),(5,'h_editors','','','bbs_admin','admin/heditors','','',0,'','','','N','mb',10,50,10,'NONE','',0,0,0,0,0,0,0,1,1,8,8,99,99,10,10,10,8,8,0,0,0,0,'admin','2015-02-24 18:49:59',0,'','','','',''),(6,'cookies','','','bbs_admin','admin/cookies','','',0,'','','','N','mb',50,50,10,'NONE','',0,0,0,0,0,0,0,1,1,8,8,99,99,10,10,10,8,8,0,0,0,0,'admin','2015-02-24 18:49:59',0,'','','','',''),(7,'logs','','','bbs_admin','admin/logs','','',0,'','','','N','mb',50,50,10,'NONE','',0,0,0,0,0,0,0,1,1,8,8,99,99,10,10,10,8,8,0,0,0,0,'admin','2015-02-24 18:49:59',0,'','','','',''),(8,'analytics','','','bbs_admin','admin/analytics','','',0,'','','','N','mb',50,50,10,'NONE','',0,0,0,0,0,0,0,1,1,8,8,99,99,10,10,10,8,8,0,0,0,0,'admin','2015-02-24 18:49:59',0,'','','','',''),(9,'referers','','','bbs_admin','admin/referers','','',0,'','','','N','mb',50,50,10,'NONE','',0,0,0,0,0,0,0,1,1,8,8,99,99,10,10,10,8,8,0,0,0,0,'admin','2015-02-24 18:49:59',0,'','','','',''),(10,'access_ip','','','bbs_admin','admin/access_ip','','',0,'','','','N','mb',50,50,10,'NONE','',0,0,0,0,0,0,0,1,1,8,8,10,99,10,10,10,8,8,0,0,0,0,'admin','2015-02-24 18:49:59',0,'','','','',''),(11,'test','test','','bbs_basic','','','',0,'','','','W','mb',24,50,10,'NONE','',0,0,1,0,0,1,1,1,1,0,0,0,0,8,8,8,8,0,0,0,0,0,'board','2024-06-25 02:44:23',1,'','','','','');
/*!40000 ALTER TABLE `mb_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_cookies`
--

DROP TABLE IF EXISTS `mb_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_cookies` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `board_name` varchar(50) NOT NULL DEFAULT '',
  `cookie_type` varchar(255) NOT NULL DEFAULT '',
  `cookie_name` varchar(255) NOT NULL DEFAULT '',
  `cookie_value` varchar(255) NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `agent` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `board_name` (`board_name`),
  KEY `user_pid` (`user_pid`,`board_name`),
  KEY `cookie_type` (`cookie_type`),
  KEY `reg_date` (`reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_cookies`
--

LOCK TABLES `mb_cookies` WRITE;
/*!40000 ALTER TABLE `mb_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `mb_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_files`
--

DROP TABLE IF EXISTS `mb_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_files` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `board_name` varchar(50) NOT NULL DEFAULT '',
  `table_name` varchar(100) NOT NULL DEFAULT '',
  `board_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `file_path` varchar(255) NOT NULL DEFAULT '',
  `file_type` varchar(255) NOT NULL DEFAULT '',
  `file_caption` varchar(255) NOT NULL DEFAULT '',
  `file_alt` varchar(255) NOT NULL DEFAULT '',
  `file_description` text NOT NULL,
  `file_size` int(10) unsigned NOT NULL DEFAULT 0,
  `link_count` int(10) unsigned NOT NULL DEFAULT 0,
  `download_count` int(10) unsigned NOT NULL DEFAULT 0,
  `file_sequence` smallint(5) unsigned NOT NULL DEFAULT 1,
  `is_download` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `agent` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `board_pid` (`board_pid`),
  KEY `user_name` (`user_name`),
  KEY `file_name` (`file_name`),
  KEY `file_size` (`file_size`),
  KEY `reg_date` (`reg_date`),
  KEY `file_path` (`file_path`),
  KEY `file_type` (`file_type`),
  KEY `file_sequence` (`file_sequence`),
  KEY `board_name` (`board_name`),
  KEY `table_name` (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_files`
--

LOCK TABLES `mb_files` WRITE;
/*!40000 ALTER TABLE `mb_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `mb_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_h_editors`
--

DROP TABLE IF EXISTS `mb_h_editors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_h_editors` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `image_path` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `color` text NOT NULL,
  `width` text NOT NULL,
  `point_x` text NOT NULL,
  `point_y` text NOT NULL,
  `alpha` text NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `agent` varchar(30) NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pid`),
  KEY `reg_date` (`reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='h-editor table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_h_editors`
--

LOCK TABLES `mb_h_editors` WRITE;
/*!40000 ALTER TABLE `mb_h_editors` DISABLE KEYS */;
/*!40000 ALTER TABLE `mb_h_editors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_logs`
--

DROP TABLE IF EXISTS `mb_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_logs` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `board_name` varchar(50) NOT NULL DEFAULT '',
  `mode` varchar(255) NOT NULL DEFAULT '',
  `action` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `agent` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `board_name` (`board_name`),
  KEY `user_pid` (`user_pid`),
  KEY `user_name` (`user_name`),
  KEY `reg_date` (`reg_date`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_logs`
--

LOCK TABLES `mb_logs` WRITE;
/*!40000 ALTER TABLE `mb_logs` DISABLE KEYS */;
INSERT INTO `mb_logs` VALUES (1,1,'testuser','users','user','join','join','join','2024-06-25 01:04:59','192.168.139.1','d_Chrome'),(2,1,'testuser','users','user','login','login','login','2024-06-25 01:05:12','192.168.139.1','d_Chrome'),(3,1,'testuser','users','user','login','login','login','2024-06-25 03:54:29','192.168.139.1','d_Chrome'),(4,1,'testuser','users','user','login','login','login','2024-06-25 07:40:21','192.168.139.1','d_Chrome'),(5,1,'testuser','users','user','login','login','login','2024-06-28 02:12:16','192.168.139.1','d_Chrome'),(6,1,'testuser','users','user','login','login','login','2024-06-28 02:18:11','192.168.139.1','d_Chrome');
/*!40000 ALTER TABLE `mb_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_meta`
--

DROP TABLE IF EXISTS `mb_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_meta` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `meta_table` varchar(100) NOT NULL DEFAULT '',
  `meta_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `meta_table` (`meta_table`),
  KEY `meta_pid` (`meta_pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_meta`
--

LOCK TABLES `mb_meta` WRITE;
/*!40000 ALTER TABLE `mb_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `mb_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_options`
--

DROP TABLE IF EXISTS `mb_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_options` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_load` varchar(50) NOT NULL DEFAULT 'init',
  `option_category` varchar(50) NOT NULL DEFAULT '',
  `option_title` varchar(255) NOT NULL DEFAULT '',
  `option_name` varchar(100) NOT NULL DEFAULT '',
  `option_value` varchar(255) NOT NULL DEFAULT '',
  `option_data` varchar(255) NOT NULL DEFAULT '',
  `option_label` varchar(255) NOT NULL DEFAULT '',
  `option_class` varchar(255) NOT NULL DEFAULT '',
  `option_style` varchar(255) NOT NULL DEFAULT '',
  `option_event` varchar(255) NOT NULL DEFAULT '',
  `option_attribute` varchar(255) NOT NULL DEFAULT '',
  `option_type` varchar(50) NOT NULL DEFAULT 'text',
  `option_sequence` int(10) unsigned NOT NULL DEFAULT 0,
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `option_sequence` (`option_sequence`),
  KEY `option_load` (`option_load`),
  KEY `option_category` (`option_category`),
  KEY `is_show` (`is_show`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_options`
--

LOCK TABLES `mb_options` WRITE;
/*!40000 ALTER TABLE `mb_options` DISABLE KEYS */;
INSERT INTO `mb_options` VALUES (1,'setup','board','W_MANGBOARD_VERSION','mb_version','2.2.5','','','','width:200px;','','','text_static',0,1,''),(2,'setup','board','W_DB_VERSION','db_version','1.0.7','','','','width:200px;','','','text_static',0,1,''),(3,'setup','board','W_ADMIN_EMAIL','admin_email','','','','','width:200px;','','','text',0,1,''),(4,'setup','board','W_FACEBOOK_PIXEL_ID','facebook_pixel_id','','','','','width:200px;','','','text',0,1,'<br>MSG_FACEBOOK_PIXEL_ID_DESC'),(5,'setup','board','W_NAVER_ANALYTICS_ID','naver_analytics_id','','','','','width:200px;','','','text',0,1,'<br>MSG_NAVER_ANALYTICS_ID_DESC'),(6,'setup','board','W_NAVER_SITE_VERIFICATION','naver_site_verification','','','','','','','','text',0,1,'<br>MSG_NAVER_SITE_VERIFICATION_DESC'),(7,'setup','board','W_GOOGLE_ANALYTICS_ID','google_analytics_id','','','','','width:200px;','','','text',0,1,'<br>MSG_GOOGLE_ANALYTICS_ID_DESC'),(8,'setup','board','W_GOOGLE_SITE_VERIFICATION','google_site_verification','','','','','','','','text',0,1,'<br>MSG_GOOGLE_SITE_VERIFICATION_DESC'),(9,'setup','board','Store Secret Key','store_secret_key','','','','','width:300px;','','','text',0,1,''),(10,'setup','board','Store Client ID','store_client_id','','','','','width:200px;','','','text',0,1,''),(11,'setup','board','W_COPY_PREVENTION','prevent_content_copy','0','0,1','W_OFF_ON','','','','','radio',0,1,'<br>MSG_COPY_MOUSE_PREVENT'),(12,'setup','board','W_ANTI_SPAM','anti_spam_protection','1','0,1','W_OFF_ON','','','','','radio',0,1,''),(13,'setup','board','W_KCAPTCHA','kcaptcha_mode','2','0,1,2','W_CAPTCHA_ON_OFF','','','','','radio',0,1,''),(14,'setup','user','W_ADMIN_LEVEL','admin_level','10','','','','width:100px;','onkeydown=\"return inputOnlyNumber(event)\"','maxlength=\"3\"','text',0,0,'<br>MSG_ADMIN_LEVEL_SET'),(15,'setup','user','W_USER_LEVEL_DISPLAY','show_user_level','1','0,1','W_OFF_ON','','','','','radio',0,1,'<br>MSG_USER_NAME_LEVEL_SET'),(16,'setup','user','W_USER_THUMBNAILS','show_user_picture','1','0,1','W_OFF_ON','','','','','radio',0,1,'<br>MSG_USER_NAME_PHOTO_SET'),(17,'setup','user','W_SHOW_USER_POP','show_name_popup','1','0,1','W_OFF_ON','','','','','radio',0,1,'<br>MSG_USER_NAME_POPUP_SET'),(18,'setup','user','W_LOGIN_POINT','user_login_point','0','','','','width:100px;','onkeydown=\"return inputOnlyNumber(event)\"','maxlength=\"5\"','text',0,1,'<br>MSG_LOGIN_POINT_SET'),(19,'setup','user','W_SING_UP_POINT','user_join_point','0','','','','width:100px;','onkeydown=\"return inputOnlyNumber(event)\"','maxlength=\"5\"','text',0,1,'<br>MSG_SING_UP_POINT_SET'),(20,'setup','board','W_SSL_PORT_NUM','ssl_port','443','','','','width:200px;','onkeydown=\"return inputOnlyNumber(event)\"','maxlength=\"6\"','text',0,1,'<br>MSG_ENTER_SSL_PORT_NUM'),(21,'setup','board','W_SSL_DOMAIN','ssl_domain','','','','','','','','text',0,1,'<br>MSG_ENTER_SSL_DOMAIN'),(22,'setup','board','W_SSL_CERTIFICATE','ssl_mode','0','0,1','W_OFF_ON','','','','','radio',0,1,'<br>MSG_ADDRESS_CERTIFICATE'),(23,'setup','board','W_SEO_DEFAULT_IMAGE','seo_default_image','','','','','','','','admin_upload_media',0,1,'MSG_SEO_DEFAULT_IMAGE_DESC'),(24,'setup','board','W_SEO','use_seo','1','0,1','W_OFF_ON','','','','','radio',0,1,''),(25,'setup','editor','W_ECOMPOSER_EXCEPT_BOARD','ecomposer_except_board','','','','','','','','text',0,1,'<br>MSG_ECOMPOSER_EXCEPT_BOARD_DESC'),(26,'setup','editor','W_ECOMPOSER_USE_BOARD','ecomposer_use_board','','','','','','','','text',0,1,'<br>MSG_ECOMPOSER_USE_BOARD_DESC'),(27,'setup','editor','W_ECOMPOSER_USE_LEVEL','ecomposer_use_level','0','0,1,2,3,4,5,6,7,8,9,10,11','0,1,2,3,4,5,6,7,8,9,10,11','','','','','select',0,1,'<br>MSG_ECOMPOSER_USE_LEVEL_DESC'),(28,'setup','file','W_UPLOAD_SIZE','upload_file_size','4','','','','width:100px;','','maxlength=\"5\"','text',0,1,'<br>MSG_FILE_UPLOAD_SIZE'),(29,'setup','file','W_IMAGE_SIZE_SMALL','make_img_small_size','480','','','','width:100px;','onkeydown=\"return inputOnlyNumber(event)\"','maxlength=\"5\"','text',0,1,'<br>MSG_MAKE_IMAGE_SMALL_DESC'),(30,'setup','file','W_IMAGE_SIZE_MIDDLE','make_img_middle_size','0','','','','width:100px;','onkeydown=\"return inputOnlyNumber(event)\"','maxlength=\"5\"','text',0,1,'<br>MSG_MAKE_IMAGE_MIDDLE_DESC'),(31,'setup','log','W_LOGIN_LOG','login_log','1','0,1','W_OFF_ON','','','','','radio',0,1,'<br>MSG_LOG_SAVE_SHOW'),(32,'setup','log','W_POINT_LOG','point_log','1','0,1','W_OFF_ON','','','','','radio',0,1,'<br>MSG_POINT_LOG_SAVE_SHOW'),(33,'setup','log','W_ERROR_LOG','error_log','0','0,1','W_OFF_ON','','','','','radio',0,1,'<br>MSG_ERROR_LOG_SHOW'),(34,'setup','board','W_MENU_REFERER','referer_log','1','0,1','W_OFF_ON','','','','','radio',0,1,'');
/*!40000 ALTER TABLE `mb_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_referers`
--

DROP TABLE IF EXISTS `mb_referers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_referers` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` char(10) NOT NULL DEFAULT '',
  `referer_host` varchar(255) NOT NULL DEFAULT '',
  `referer_url` varchar(255) NOT NULL DEFAULT '',
  `referer_query` varchar(255) NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `agent` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `date` (`date`),
  KEY `reg_date` (`reg_date`),
  KEY `referer_host` (`referer_host`),
  KEY `referer_query` (`referer_query`),
  KEY `referer_url` (`referer_url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_referers`
--

LOCK TABLES `mb_referers` WRITE;
/*!40000 ALTER TABLE `mb_referers` DISABLE KEYS */;
INSERT INTO `mb_referers` VALUES (1,'2024-06-27','172.19.0.3','http://172.19.0.3/','','2024-06-27 04:04:10','192.168.139.10','d_Firefox');
/*!40000 ALTER TABLE `mb_referers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_test`
--

DROP TABLE IF EXISTS `mb_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_test` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) unsigned NOT NULL DEFAULT 0,
  `reply` int(10) unsigned NOT NULL DEFAULT 0,
  `depth` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id` varchar(150) NOT NULL DEFAULT '',
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `passwd` varchar(100) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `calendar_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hit` int(10) unsigned NOT NULL DEFAULT 0,
  `user_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `parent_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `parent_user_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `file_count` int(10) unsigned NOT NULL DEFAULT 0,
  `comment_count` int(10) unsigned NOT NULL DEFAULT 0,
  `vote_good_count` int(10) unsigned NOT NULL DEFAULT 0,
  `vote_bad_count` int(10) unsigned NOT NULL DEFAULT 0,
  `vote_type` int(10) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `agent` varchar(30) NOT NULL DEFAULT '',
  `is_notice` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_secret` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(30) NOT NULL DEFAULT 'publish',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `reply_email` tinyint(3) NOT NULL DEFAULT 0,
  `text` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `content_type` varchar(20) NOT NULL DEFAULT '',
  `data_type` varchar(20) NOT NULL DEFAULT 'text',
  `editor_type` varchar(10) NOT NULL DEFAULT 'N',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `category1` varchar(100) NOT NULL DEFAULT '',
  `category2` varchar(100) NOT NULL DEFAULT '',
  `category3` varchar(100) NOT NULL DEFAULT '',
  `image_path` varchar(255) NOT NULL DEFAULT '',
  `site_link1` varchar(255) NOT NULL DEFAULT '',
  `site_link2` varchar(255) NOT NULL DEFAULT '',
  `gps_latitude` decimal(10,8) NOT NULL DEFAULT 0.00000000,
  `gps_longitude` decimal(11,8) NOT NULL DEFAULT 0.00000000,
  `ext1` varchar(255) NOT NULL DEFAULT '',
  `ext2` varchar(255) NOT NULL DEFAULT '',
  `ext3` varchar(255) NOT NULL DEFAULT '',
  `ext4` varchar(255) NOT NULL DEFAULT '',
  `ext5` varchar(255) NOT NULL DEFAULT '',
  `ext6` varchar(255) NOT NULL DEFAULT '',
  `ext7` varchar(255) NOT NULL DEFAULT '',
  `ext8` varchar(255) NOT NULL DEFAULT '',
  `ext9` varchar(255) NOT NULL DEFAULT '',
  `ext10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `user_id` (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `title` (`title`),
  KEY `reg_date` (`reg_date`),
  KEY `modify_date` (`modify_date`),
  KEY `hit` (`hit`),
  KEY `gid` (`gid`,`reply`),
  KEY `category` (`category1`,`category2`),
  KEY `calendar_date` (`calendar_date`),
  KEY `gps_latitude` (`gps_latitude`),
  KEY `is_show` (`is_show`),
  KEY `status` (`status`),
  KEY `is_notice` (`is_notice`),
  KEY `user_pid` (`user_pid`),
  KEY `parent_pid` (`parent_pid`),
  KEY `parent_user_pid` (`parent_user_pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='board table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_test`
--

LOCK TABLES `mb_test` WRITE;
/*!40000 ALTER TABLE `mb_test` DISABLE KEYS */;
INSERT INTO `mb_test` VALUES (1,1,0,0,'','testuser','123','1','','','','','2024-06-25 04:48:37','2024-06-25 04:48:37','2024-06-25 04:48:37',0,1,0,0,10,0,0,0,0,0,'192.168.139.1','d_Chrome',0,0,'publish',1,0,'','&lt;p&gt;123&lt;/p&gt;','','html','W','','','','','','','',0.00000000,0.00000000,'','','','','','','','','','');
/*!40000 ALTER TABLE `mb_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_test_comment`
--

DROP TABLE IF EXISTS `mb_test_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_test_comment` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) unsigned NOT NULL DEFAULT 0,
  `reply` int(10) unsigned NOT NULL DEFAULT 0,
  `parent_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `parent_user_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `user_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `vote_good_count` int(10) unsigned NOT NULL DEFAULT 0,
  `vote_bad_count` int(10) unsigned NOT NULL DEFAULT 0,
  `vote_type` int(10) unsigned NOT NULL DEFAULT 0,
  `passwd` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `is_secret` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `agent` varchar(30) NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ext1` varchar(255) NOT NULL DEFAULT '',
  `ext2` varchar(255) NOT NULL DEFAULT '',
  `ext3` varchar(255) NOT NULL DEFAULT '',
  `ext4` varchar(255) NOT NULL DEFAULT '',
  `ext5` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `parent_pid` (`parent_pid`),
  KEY `user_pid` (`user_pid`),
  KEY `parent_user_pid` (`parent_user_pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='comment table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_test_comment`
--

LOCK TABLES `mb_test_comment` WRITE;
/*!40000 ALTER TABLE `mb_test_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mb_test_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mb_users`
--

DROP TABLE IF EXISTS `mb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mb_users` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wp_user_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id` varchar(150) NOT NULL DEFAULT '',
  `passwd` varchar(255) NOT NULL DEFAULT '',
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `user_state` varchar(255) NOT NULL DEFAULT '',
  `user_level` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `user_group` varchar(255) NOT NULL DEFAULT 'home',
  `user_platform` varchar(100) NOT NULL DEFAULT 'mb',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_point` int(10) unsigned NOT NULL DEFAULT 0,
  `user_money` int(10) unsigned NOT NULL DEFAULT 0,
  `user_coin` int(10) unsigned NOT NULL DEFAULT 0,
  `payment_count` smallint(5) unsigned NOT NULL DEFAULT 0,
  `payment_total` int(10) unsigned NOT NULL DEFAULT 0,
  `user_birthday` varchar(50) NOT NULL DEFAULT '',
  `user_phone` varchar(50) NOT NULL DEFAULT '',
  `user_picture` varchar(255) NOT NULL DEFAULT '',
  `user_icon` varchar(255) NOT NULL DEFAULT '',
  `user_messenger` varchar(255) NOT NULL DEFAULT '',
  `user_homepage` varchar(255) NOT NULL DEFAULT '',
  `user_blog` varchar(255) NOT NULL DEFAULT '',
  `user_sex` tinyint(3) NOT NULL DEFAULT 0,
  `home_postcode` varchar(20) NOT NULL DEFAULT '',
  `home_address1` varchar(255) NOT NULL DEFAULT '',
  `home_address2` varchar(255) NOT NULL DEFAULT '',
  `home_tel` varchar(50) NOT NULL DEFAULT '',
  `office_postcode` varchar(20) NOT NULL DEFAULT '',
  `office_address1` varchar(255) NOT NULL DEFAULT '',
  `office_address2` varchar(255) NOT NULL DEFAULT '',
  `office_tel` varchar(50) NOT NULL DEFAULT '',
  `office_fax` varchar(50) NOT NULL DEFAULT '',
  `company_name` varchar(255) NOT NULL DEFAULT '',
  `job_title` varchar(255) NOT NULL DEFAULT '',
  `gps_latitude` decimal(10,8) NOT NULL DEFAULT 0.00000000,
  `gps_longitude` decimal(11,8) NOT NULL DEFAULT 0.00000000,
  `allow_mailing` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `allow_message` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `allow_push` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `allow_sms` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `followers` int(10) unsigned NOT NULL DEFAULT 0,
  `following` int(10) unsigned NOT NULL DEFAULT 0,
  `new_memo` smallint(5) unsigned NOT NULL DEFAULT 0,
  `login_count` int(10) unsigned NOT NULL DEFAULT 0,
  `write_count` int(10) unsigned NOT NULL DEFAULT 0,
  `reply_count` int(10) unsigned NOT NULL DEFAULT 0,
  `comment_count` int(10) unsigned NOT NULL DEFAULT 0,
  `send_count` int(10) unsigned NOT NULL DEFAULT 0,
  `api_count` int(10) unsigned NOT NULL DEFAULT 0,
  `item1_count` int(10) unsigned NOT NULL DEFAULT 0,
  `item2_count` int(10) unsigned NOT NULL DEFAULT 0,
  `item3_count` int(10) unsigned NOT NULL DEFAULT 0,
  `review_count` int(10) unsigned NOT NULL DEFAULT 0,
  `review_star_sum` int(10) unsigned NOT NULL DEFAULT 0,
  `reg_mail` tinyint(3) NOT NULL DEFAULT 0,
  `reg_phone` tinyint(3) NOT NULL DEFAULT 0,
  `push_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_memo` varchar(255) NOT NULL DEFAULT '',
  `admin_memo` varchar(255) NOT NULL DEFAULT '',
  `recommender_id` varchar(255) NOT NULL DEFAULT '',
  `user_auth_key` varchar(255) NOT NULL DEFAULT '',
  `user_access_token` varchar(255) NOT NULL DEFAULT '',
  `ext1` varchar(255) NOT NULL DEFAULT '',
  `ext2` varchar(255) NOT NULL DEFAULT '',
  `ext3` varchar(255) NOT NULL DEFAULT '',
  `ext4` varchar(255) NOT NULL DEFAULT '',
  `ext5` varchar(255) NOT NULL DEFAULT '',
  `ext6` varchar(255) NOT NULL DEFAULT '',
  `ext7` varchar(255) NOT NULL DEFAULT '',
  `ext8` varchar(255) NOT NULL DEFAULT '',
  `ext9` varchar(255) NOT NULL DEFAULT '',
  `ext10` varchar(255) NOT NULL DEFAULT '',
  `ext11` varchar(255) NOT NULL DEFAULT '',
  `ext12` varchar(255) NOT NULL DEFAULT '',
  `ext13` varchar(255) NOT NULL DEFAULT '',
  `ext14` varchar(255) NOT NULL DEFAULT '',
  `ext15` varchar(255) NOT NULL DEFAULT '',
  `ext16` varchar(255) NOT NULL DEFAULT '',
  `ext17` varchar(255) NOT NULL DEFAULT '',
  `ext18` varchar(255) NOT NULL DEFAULT '',
  `ext19` varchar(255) NOT NULL DEFAULT '',
  `ext20` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `user_group` (`user_group`),
  KEY `reg_date` (`reg_date`),
  KEY `last_login` (`last_login`),
  KEY `allow_mailing` (`allow_mailing`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mb_users`
--

LOCK TABLES `mb_users` WRITE;
/*!40000 ALTER TABLE `mb_users` DISABLE KEYS */;
INSERT INTO `mb_users` VALUES (1,1,'testuser','$P$BMlsYHKbhrQr2i1Iz7fFEUnEWD3b/p0','testuser','',10,'home','wp','css926@gmail.com',0,0,0,0,0,'','','','','','http://192.168.139.10','',0,'','','','','','','','','','','',0.00000000,0.00000000,1,1,1,1,0,0,0,5,3,0,0,0,0,0,0,0,0,0,1,0,0,'2024-06-25 01:04:59','2024-06-28 02:18:11','','','','ea263921fb4dc25dbd007e613f3db65e','wFvgygguRG0fga9ub8OW','','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `mb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-06-24 08:41:51','2024-06-24 08:41:51','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'post-trashed','','comment',0,0),(2,60,'testuser','css926@gmail.com','http://192.168.139.10','192.168.139.1','2024-06-25 04:39:15','2024-06-25 04:39:15','ddddd',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','comment',0,1);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_board_attached`
--

DROP TABLE IF EXISTS `wp_kboard_board_attached`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_board_attached` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content_uid` bigint(20) unsigned NOT NULL,
  `comment_uid` bigint(20) unsigned NOT NULL,
  `file_key` varchar(127) NOT NULL,
  `date` char(14) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_name` varchar(127) NOT NULL,
  `file_size` bigint(20) unsigned NOT NULL,
  `download_count` int(10) unsigned NOT NULL,
  `metadata` longtext NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `content_uid` (`content_uid`),
  KEY `comment_uid` (`comment_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_board_attached`
--

LOCK TABLES `wp_kboard_board_attached` WRITE;
/*!40000 ALTER TABLE `wp_kboard_board_attached` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_kboard_board_attached` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_board_content`
--

DROP TABLE IF EXISTS `wp_kboard_board_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_board_content` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `board_id` bigint(20) unsigned NOT NULL,
  `parent_uid` bigint(20) unsigned NOT NULL,
  `member_uid` bigint(20) unsigned NOT NULL,
  `member_display` varchar(127) NOT NULL,
  `title` varchar(127) NOT NULL,
  `content` longtext NOT NULL,
  `date` char(14) NOT NULL,
  `update` char(14) NOT NULL,
  `view` int(10) unsigned NOT NULL,
  `comment` int(10) unsigned NOT NULL,
  `like` int(10) unsigned NOT NULL,
  `unlike` int(10) unsigned NOT NULL,
  `vote` int(11) NOT NULL,
  `thumbnail_file` varchar(127) NOT NULL,
  `thumbnail_name` varchar(127) NOT NULL,
  `category1` varchar(127) NOT NULL,
  `category2` varchar(127) NOT NULL,
  `category3` varchar(127) NOT NULL,
  `category4` varchar(127) NOT NULL,
  `category5` varchar(127) NOT NULL,
  `secret` varchar(5) NOT NULL,
  `notice` varchar(5) NOT NULL,
  `search` char(1) NOT NULL,
  `status` varchar(20) NOT NULL,
  `password` varchar(127) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `board_id` (`board_id`),
  KEY `parent_uid` (`parent_uid`),
  KEY `member_uid` (`member_uid`),
  KEY `date` (`date`),
  KEY `update` (`update`),
  KEY `view` (`view`),
  KEY `vote` (`vote`),
  KEY `category1` (`category1`),
  KEY `category2` (`category2`),
  KEY `category3` (`category3`),
  KEY `category4` (`category4`),
  KEY `category5` (`category5`),
  KEY `notice` (`notice`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_board_content`
--

LOCK TABLES `wp_kboard_board_content` WRITE;
/*!40000 ALTER TABLE `wp_kboard_board_content` DISABLE KEYS */;
INSERT INTO `wp_kboard_board_content` VALUES (3,3,0,1,'testuser','11123123','11123123','20240625045419','20240625045419',1,0,0,0,0,'','','','','','','','','','1','',''),(4,3,0,1,'testuser','aaaaaaaaa','aaaaaaaaaaaaaaaaaa','20240625062759','20240625062759',1,0,0,0,0,'','','','','','','','','','1','',''),(5,3,0,1,'testuser','bbbbbbbbbbb','bbbbbbbbbbbbbbbbbb','20240625062810','20240625062810',2,0,0,0,0,'','','','','','','','','','1','','');
/*!40000 ALTER TABLE `wp_kboard_board_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_board_latestview`
--

DROP TABLE IF EXISTS `wp_kboard_board_latestview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_board_latestview` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL,
  `skin` varchar(127) NOT NULL,
  `rpp` int(10) unsigned NOT NULL,
  `mobile_rpp` int(10) unsigned NOT NULL,
  `sort` varchar(20) NOT NULL,
  `created` char(14) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_board_latestview`
--

LOCK TABLES `wp_kboard_board_latestview` WRITE;
/*!40000 ALTER TABLE `wp_kboard_board_latestview` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_kboard_board_latestview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_board_latestview_link`
--

DROP TABLE IF EXISTS `wp_kboard_board_latestview_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_board_latestview_link` (
  `latestview_uid` bigint(20) unsigned NOT NULL,
  `board_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `latestview_uid` (`latestview_uid`,`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_board_latestview_link`
--

LOCK TABLES `wp_kboard_board_latestview_link` WRITE;
/*!40000 ALTER TABLE `wp_kboard_board_latestview_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_kboard_board_latestview_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_board_meta`
--

DROP TABLE IF EXISTS `wp_kboard_board_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_board_meta` (
  `board_id` bigint(20) unsigned NOT NULL,
  `key` varchar(127) NOT NULL,
  `value` longtext NOT NULL,
  UNIQUE KEY `meta_index` (`board_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_board_meta`
--

LOCK TABLES `wp_kboard_board_meta` WRITE;
/*!40000 ALTER TABLE `wp_kboard_board_meta` DISABLE KEYS */;
INSERT INTO `wp_kboard_board_meta` VALUES (3,'auto_page','62'),(3,'board_username_masking','1'),(3,'comment_skin','default'),(3,'comments_anonymous','1'),(3,'comments_plugin_row','10'),(3,'comments_username_masking','1'),(3,'latest_target_page','62'),(3,'list_sort_numbers','desc'),(3,'list_total','3'),(3,'pass_autop','disable'),(3,'permission_admin_roles','a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}'),(3,'permission_attachment_download_roles','a:1:{i:0;s:13:\"administrator\";}'),(3,'permission_comment_write_roles','a:1:{i:0;s:13:\"administrator\";}'),(3,'permission_order_roles','a:1:{i:0;s:13:\"administrator\";}'),(3,'permission_read_roles','a:1:{i:0;s:13:\"administrator\";}'),(3,'permission_reply_roles','a:1:{i:0;s:13:\"administrator\";}'),(3,'permission_vote_roles','a:1:{i:0;s:13:\"administrator\";}'),(3,'permission_write_roles','a:1:{i:0;s:13:\"administrator\";}'),(3,'popular_count','5'),(3,'popular_range','all'),(3,'prevent_copy','1'),(3,'skin_fields','a:15:{s:5:\"title\";a:10:{s:5:\"class\";s:17:\"kboard-attr-title\";s:12:\"close_button\";s:0:\"\";s:10:\"field_type\";s:5:\"title\";s:11:\"field_label\";s:5:\"Title\";s:10:\"permission\";s:3:\"all\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:5:\"title\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:6:\"option\";a:11:{s:5:\"class\";s:18:\"kboard-attr-option\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:6:\"option\";s:11:\"field_label\";s:7:\"Options\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:6:\"option\";s:17:\"secret_permission\";s:3:\"all\";s:6:\"secret\";a:1:{i:0;s:13:\"administrator\";}s:17:\"notice_permission\";s:5:\"roles\";s:6:\"notice\";a:1:{i:0;s:13:\"administrator\";}s:11:\"description\";s:0:\"\";}s:6:\"author\";a:10:{s:5:\"class\";s:18:\"kboard-attr-author\";s:12:\"close_button\";s:0:\"\";s:10:\"field_type\";s:6:\"author\";s:11:\"field_label\";s:6:\"Author\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:6:\"author\";s:10:\"permission\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:9:\"category1\";a:10:{s:5:\"class\";s:21:\"kboard-attr-category1\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:9:\"category1\";s:11:\"field_label\";s:9:\"Category1\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:9:\"category1\";s:10:\"permission\";s:3:\"all\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"description\";s:0:\"\";s:8:\"required\";s:0:\"\";}s:9:\"category2\";a:10:{s:5:\"class\";s:21:\"kboard-attr-category2\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:9:\"category2\";s:11:\"field_label\";s:9:\"Category2\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:9:\"category2\";s:10:\"permission\";s:3:\"all\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"description\";s:0:\"\";s:8:\"required\";s:0:\"\";}s:9:\"category3\";a:11:{s:5:\"class\";s:21:\"kboard-attr-category3\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:9:\"category3\";s:11:\"field_label\";s:9:\"Category3\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:9:\"category3\";s:10:\"permission\";s:3:\"all\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:13:\"default_value\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:0:\"\";}s:9:\"category4\";a:11:{s:5:\"class\";s:21:\"kboard-attr-category4\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:9:\"category4\";s:11:\"field_label\";s:9:\"Category4\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:9:\"category4\";s:10:\"permission\";s:3:\"all\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:13:\"default_value\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:0:\"\";}s:9:\"category5\";a:11:{s:5:\"class\";s:21:\"kboard-attr-category5\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:9:\"category5\";s:11:\"field_label\";s:9:\"Category5\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:9:\"category5\";s:10:\"permission\";s:3:\"all\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:13:\"default_value\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:0:\"\";}s:13:\"tree_category\";a:10:{s:5:\"class\";s:25:\"kboard-attr-tree-category\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:13:\"tree_category\";s:11:\"field_label\";s:13:\"Tree Category\";s:12:\"option_field\";s:1:\"1\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:13:\"tree_category\";s:10:\"permission\";s:3:\"all\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"description\";s:0:\"\";}s:7:\"captcha\";a:6:{s:5:\"class\";s:19:\"kboard-attr-captcha\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:7:\"captcha\";s:11:\"field_label\";s:7:\"Captcha\";s:8:\"meta_key\";s:7:\"captcha\";s:11:\"description\";s:0:\"\";}s:7:\"content\";a:9:{s:5:\"class\";s:19:\"kboard-attr-content\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:7:\"content\";s:11:\"field_label\";s:7:\"Content\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:7:\"content\";s:11:\"placeholder\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:0:\"\";}s:5:\"media\";a:9:{s:5:\"class\";s:17:\"kboard-attr-media\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:5:\"media\";s:11:\"field_label\";s:6:\"Photos\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:5:\"media\";s:10:\"permission\";s:3:\"all\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"description\";s:0:\"\";}s:9:\"thumbnail\";a:9:{s:5:\"class\";s:21:\"kboard-attr-thumbnail\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:9:\"thumbnail\";s:11:\"field_label\";s:9:\"Thumbnail\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:9:\"thumbnail\";s:10:\"permission\";s:3:\"all\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"description\";s:0:\"\";}s:6:\"attach\";a:9:{s:5:\"class\";s:18:\"kboard-attr-attach\";s:12:\"close_button\";s:3:\"yes\";s:10:\"field_type\";s:6:\"attach\";s:11:\"field_label\";s:10:\"Attachment\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:6:\"attach\";s:10:\"permission\";s:3:\"all\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"description\";s:0:\"\";}s:6:\"search\";a:11:{s:5:\"class\";s:18:\"kboard-attr-search\";s:12:\"close_button\";s:0:\"\";s:10:\"field_type\";s:6:\"search\";s:11:\"field_label\";s:9:\"WP Search\";s:6:\"hidden\";s:0:\"\";s:10:\"field_name\";s:0:\"\";s:8:\"meta_key\";s:6:\"search\";s:10:\"permission\";s:3:\"all\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:13:\"default_value\";s:1:\"1\";s:11:\"description\";s:0:\"\";}}'),(3,'total','3');
/*!40000 ALTER TABLE `wp_kboard_board_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_board_option`
--

DROP TABLE IF EXISTS `wp_kboard_board_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_board_option` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content_uid` bigint(20) unsigned NOT NULL,
  `option_key` varchar(127) NOT NULL,
  `option_value` longtext NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `content_uid` (`content_uid`),
  KEY `option_key` (`option_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_board_option`
--

LOCK TABLES `wp_kboard_board_option` WRITE;
/*!40000 ALTER TABLE `wp_kboard_board_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_kboard_board_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_board_setting`
--

DROP TABLE IF EXISTS `wp_kboard_board_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_board_setting` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `board_name` varchar(127) NOT NULL,
  `skin` varchar(127) NOT NULL,
  `use_comment` varchar(5) NOT NULL,
  `use_editor` varchar(5) NOT NULL,
  `permission_read` varchar(127) NOT NULL,
  `permission_write` varchar(127) NOT NULL,
  `admin_user` text NOT NULL,
  `use_category` varchar(5) NOT NULL,
  `category1_list` text NOT NULL,
  `category2_list` text NOT NULL,
  `category3_list` text NOT NULL,
  `category4_list` text NOT NULL,
  `category5_list` text NOT NULL,
  `page_rpp` int(10) unsigned NOT NULL,
  `created` char(14) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_board_setting`
--

LOCK TABLES `wp_kboard_board_setting` WRITE;
/*!40000 ALTER TABLE `wp_kboard_board_setting` DISABLE KEYS */;
INSERT INTO `wp_kboard_board_setting` VALUES (3,'게시판','avatar','yes','','all','all','','','','','','','',10,'20240625045351');
/*!40000 ALTER TABLE `wp_kboard_board_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_comments`
--

DROP TABLE IF EXISTS `wp_kboard_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_comments` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content_uid` bigint(20) unsigned NOT NULL,
  `parent_uid` bigint(20) unsigned NOT NULL,
  `user_uid` bigint(20) unsigned NOT NULL,
  `user_display` varchar(127) NOT NULL,
  `content` longtext NOT NULL,
  `like` int(10) unsigned NOT NULL,
  `unlike` int(10) unsigned NOT NULL,
  `vote` int(11) NOT NULL,
  `created` char(14) NOT NULL,
  `status` varchar(20) NOT NULL,
  `password` varchar(127) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `content_uid` (`content_uid`),
  KEY `parent_uid` (`parent_uid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_comments`
--

LOCK TABLES `wp_kboard_comments` WRITE;
/*!40000 ALTER TABLE `wp_kboard_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_kboard_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_comments_option`
--

DROP TABLE IF EXISTS `wp_kboard_comments_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_comments_option` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_uid` bigint(20) unsigned NOT NULL,
  `option_key` varchar(127) NOT NULL,
  `option_value` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `comment_uid_2` (`comment_uid`),
  KEY `option_key` (`option_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_comments_option`
--

LOCK TABLES `wp_kboard_comments_option` WRITE;
/*!40000 ALTER TABLE `wp_kboard_comments_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_kboard_comments_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_meida`
--

DROP TABLE IF EXISTS `wp_kboard_meida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_meida` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_group` varchar(127) DEFAULT NULL,
  `date` char(14) DEFAULT NULL,
  `file_path` varchar(127) DEFAULT NULL,
  `file_name` varchar(127) DEFAULT NULL,
  `file_size` bigint(20) unsigned NOT NULL,
  `download_count` int(10) unsigned NOT NULL,
  `metadata` longtext NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `media_group` (`media_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_meida`
--

LOCK TABLES `wp_kboard_meida` WRITE;
/*!40000 ALTER TABLE `wp_kboard_meida` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_kboard_meida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_meida_relationships`
--

DROP TABLE IF EXISTS `wp_kboard_meida_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_meida_relationships` (
  `content_uid` bigint(20) unsigned NOT NULL,
  `comment_uid` bigint(20) unsigned NOT NULL,
  `media_uid` bigint(20) unsigned NOT NULL,
  KEY `content_uid_2` (`content_uid`),
  KEY `comment_uid` (`comment_uid`),
  KEY `media_uid` (`media_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_meida_relationships`
--

LOCK TABLES `wp_kboard_meida_relationships` WRITE;
/*!40000 ALTER TABLE `wp_kboard_meida_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_kboard_meida_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_order_item`
--

DROP TABLE IF EXISTS `wp_kboard_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_order_item` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_order_item`
--

LOCK TABLES `wp_kboard_order_item` WRITE;
/*!40000 ALTER TABLE `wp_kboard_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_kboard_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_order_item_meta`
--

DROP TABLE IF EXISTS `wp_kboard_order_item_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_order_item_meta` (
  `order_item_meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(127) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`order_item_meta_id`),
  UNIQUE KEY `order_item_id` (`order_item_id`,`meta_key`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_order_item_meta`
--

LOCK TABLES `wp_kboard_order_item_meta` WRITE;
/*!40000 ALTER TABLE `wp_kboard_order_item_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_kboard_order_item_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_kboard_vote`
--

DROP TABLE IF EXISTS `wp_kboard_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_kboard_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `target_uid` bigint(20) unsigned NOT NULL,
  `target_type` varchar(20) NOT NULL,
  `target_vote` varchar(20) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `ip_address` varchar(127) NOT NULL,
  `created` char(14) NOT NULL,
  PRIMARY KEY (`vote_id`),
  KEY `target_uid` (`target_uid`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_kboard_vote`
--

LOCK TABLES `wp_kboard_vote` WRITE;
/*!40000 ALTER TABLE `wp_kboard_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_kboard_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://13.124.74.82','yes'),(2,'home','http://13.124.74.82','yes'),(3,'blogname','CCCR','yes'),(4,'blogdescription','','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','css926@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:2:{i:0;s:25:\"kboard-comments/index.php\";i:1;s:16:\"kboard/index.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','a:5:{i:0;s:75:\"/var/www/html/wordpress/wp-content/themes/twentytwentyfour/styles/mint.json\";i:1;s:75:\"/var/www/html/wordpress/wp-content/themes/twentytwentyfour/styles/onyx.json\";i:2;s:76:\"/var/www/html/wordpress/wp-content/themes/twentytwentyfour/styles/ember.json\";i:3;s:68:\"/var/www/html/wordpress/wp-content/themes/twentytwentyfour/style.css\";i:4;s:0:\"\";}','no'),(40,'template','twentytwentyfour','yes'),(41,'stylesheet','twentytwentyfour','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','57155','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','1','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','posts','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:0:{}','yes'),(77,'widget_text','a:0:{}','yes'),(78,'widget_rss','a:0:{}','yes'),(79,'uninstall_plugins','a:2:{s:16:\"kboard/index.php\";s:16:\"kboard_uninstall\";s:25:\"kboard-comments/index.php\";s:25:\"kboard_comments_uninstall\";}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','0','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','62','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1734770511','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'wp_force_deactivated_plugins','a:0:{}','yes'),(99,'wp_attachment_pages_enabled','0','yes'),(100,'initial_db_version','57155','yes'),(101,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:13:\"manage_kboard\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(102,'fresh_site','0','yes'),(103,'user_count','1','no'),(104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes'),(105,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes'),(106,'cron','a:8:{i:1719218516;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1719218520;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1719218521;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1719218580;a:1:{s:28:\"wp_update_comment_type_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1719222185;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1719287397;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1719304916;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:3:\"6.5\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes'),(122,'_transient_doing_cron','1719996302.0694510936737060546875','yes'),(123,'nonce_key','o 73h4B1g_evVfM,Qw3J|l9L-PXYQNB1Q1p2zmHcA&D=lo^JXyu5KA^<-=5?oklO','no'),(124,'nonce_salt','ry5ir[nB*g5(?(oh#FQ&SsZ^UHw?cCnLQr(,y6P&^8C/}YKy~0=TNfj.O]^!@&Wp','no'),(125,'auth_key','kOM2vGpvCPu(H&fIu1FFL2(i}k&Kk:TCpy&Jp1S<|)MbXmFj4IPuPL<lB&ubH0um','no'),(126,'auth_salt','X]bWhIMQI&~dOx>6C&R}W_tQYO#mtqBioMX@0Xm/23A=Kiqs7+^h7,)cv oD{{U0','no'),(127,'logged_in_key','n59HRIHOb$ty_tpyOR ^HJ[{^4vk;p)Pcvi.L:-%H?lAE-UYK-.W*H#)/#OI5R6U','no'),(128,'logged_in_salt','O6L!lq#0Io$_p&v:f|iV%8x`r_6kz8Ed*`ik(4#tU/yp-gRz!^kdDk%RYK=o-8N;','no'),(129,'_site_transient_update_core','O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:3:\"6.5\";s:12:\"last_checked\";i:1719967254;}','no'),(130,'_site_transient_update_plugins','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1719967255;}','no'),(133,'_site_transient_update_themes','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1719967256;}','no'),(134,'can_compress_scripts','1','yes'),(137,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','no'),(138,'recently_activated','a:1:{s:23:\"mangboard/mangboard.php\";i:1719543979;}','yes'),(139,'theme_mods_twentytwentyfour','a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1719277731;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}','yes'),(140,'kboard_version','6.4','no'),(143,'kboard_comments_version','5.3','no'),(152,'wp_calendar_block_has_published_posts','','yes'),(278,'widget_mbw_latest_mb_basic','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(279,'current_theme','Twenty Twenty-Four','yes'),(280,'theme_mods_twentytwentytwo','a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1719287803;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','no'),(281,'theme_switched','','yes'),(302,'theme_mods_twentytwentythree','a:4:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1719280096;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','no'),(314,'mb_locale','ko_KR','yes'),(315,'mb_admin_locale','ko_KR','yes'),(324,'mb_latest_board_data','a:1:{i:1;a:6:{s:5:\"title\";s:0:\"\";s:4:\"time\";i:1719290917;s:7:\"post_id\";s:1:\"0\";s:3:\"pid\";i:1;s:5:\"table\";s:7:\"mb_test\";s:4:\"name\";s:4:\"test\";}}','yes'),(343,'category_children','a:0:{}','yes'),(348,'WPLANG','','yes'),(349,'new_admin_email','css926@gmail.com','yes'),(415,'kboard_custom_css','.kboard-avatar-poweredby { display: none; }\r\n#kboard-avatar-list { display: block !important; margin: 0 auto;  }\r\n#kboard-avatar-list .kboard-list-header .kboard-total-count { display: none; }\r\n#kboard-avatar-list .kboard-list-header .kboard-sort select { display: none; }\r\n#kboard-avatar-document { display: block; margin: 0 auto; width: 100%; }\r\n#kboard-avatar-editor { display: block; margin: 0 auto; width: 100%; }\r\n.kboard-comments-default .comments-sort select {display: none; }\r\n.comments-field-wrap { display: none;}\r\nbody { --wp--style--global--content-size: 1280px; }','yes'),(450,'_site_transient_timeout_wp_remote_block_patterns_fe02ec00345beebab0962df89812124a','1719300717','no'),(451,'_site_transient_wp_remote_block_patterns_fe02ec00345beebab0962df89812124a','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:14:\"cURL error 7: \";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}','no'),(452,'_site_transient_timeout_wp_remote_block_patterns_0826a2941295a93e035bc5cb7e84ac7a','1719300717','no'),(453,'_site_transient_wp_remote_block_patterns_0826a2941295a93e035bc5cb7e84ac7a','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:14:\"cURL error 7: \";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}','no'),(454,'_site_transient_timeout_wp_remote_block_patterns_82e65f5170c4bcd37679ea558f76d59d','1719300717','no'),(455,'_site_transient_wp_remote_block_patterns_82e65f5170c4bcd37679ea558f76d59d','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:14:\"cURL error 7: \";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}','no'),(480,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes'),(481,'_transient_health-check-site-status-result','{\"good\":\"12\",\"recommended\":\"7\",\"critical\":\"5\",\"0\":\"NaN\"}','yes'),(482,'_site_transient_timeout_theme_roots','1719969056','no'),(483,'_site_transient_theme_roots','a:3:{s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no'),(488,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1720010461','no'),(489,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: </p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: </p></div>','no'),(490,'_transient_timeout_kboard_latest_version','1719999841','no'),(491,'_transient_kboard_latest_version','O:8:\"stdClass\":2:{s:6:\"kboard\";s:0:\"\";s:8:\"comments\";s:0:\"\";}','no'),(492,'_transient_timeout_kboard_latest_news','1719999834','no'),(493,'_transient_kboard_latest_news','a:0:{}','no'),(494,'_transient_timeout_settings_errors','1719996340','no'),(495,'_transient_settings_errors','a:1:{i:0;a:4:{s:7:\"setting\";s:7:\"general\";s:4:\"code\";s:16:\"settings_updated\";s:7:\"message\";s:15:\"Settings saved.\";s:4:\"type\";s:7:\"success\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,2,'_edit_lock','1719242556:1'),(4,3,'_edit_lock','1719242548:1'),(5,7,'_edit_lock','1719221065:1'),(6,8,'_edit_lock','1719221294:1'),(7,10,'_edit_lock','1719221856:1'),(8,11,'_edit_lock','1719240784:1'),(9,13,'_edit_lock','1719222038:1'),(10,14,'footnotes',''),(11,11,'_wp_trash_meta_status','publish'),(12,11,'_wp_trash_meta_time','1719240804'),(13,11,'_wp_desired_post_slug','%eb%82%98%ec%a4%91%ec%97%90-%ec%9d%b4%ec%81%98%ea%b2%8c'),(14,15,'_edit_lock','1719242551:1'),(15,15,'_wp_trash_meta_status','draft'),(16,15,'_wp_trash_meta_time','1719242585'),(17,15,'_wp_desired_post_slug',''),(18,17,'_edit_lock','1719242518:1'),(19,17,'_wp_trash_meta_status','publish'),(20,17,'_wp_trash_meta_time','1719242680'),(21,17,'_wp_desired_post_slug','17-2'),(22,3,'_wp_trash_meta_status','draft'),(23,3,'_wp_trash_meta_time','1719242695'),(24,3,'_wp_desired_post_slug','privacy-policy'),(25,2,'_wp_trash_meta_status','publish'),(26,2,'_wp_trash_meta_time','1719242703'),(27,2,'_wp_desired_post_slug','sample-page'),(28,21,'_edit_lock','1719242645:1'),(29,22,'_edit_lock','1719242821:1'),(30,23,'_edit_lock','1719244282:1'),(31,26,'_edit_lock','1719244326:1'),(32,23,'_wp_trash_meta_status','publish'),(33,23,'_wp_trash_meta_time','1719277267'),(34,23,'_wp_desired_post_slug','23-2'),(35,27,'_edit_lock','1719277203:1'),(37,30,'origin','theme'),(38,31,'origin','theme'),(39,32,'_edit_lock','1719279106:1'),(40,32,'_wp_trash_meta_status','publish'),(41,32,'_wp_trash_meta_time','1719279443'),(42,32,'_wp_desired_post_slug','32-2'),(43,35,'_edit_lock','1719287324:1'),(47,1,'_edit_lock','1719286037:1'),(48,1,'_wp_trash_meta_status','publish'),(49,1,'_wp_trash_meta_time','1719286185'),(50,1,'_wp_desired_post_slug','hello-world'),(51,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}'),(52,49,'_edit_lock','1719286066:1'),(53,50,'_edit_lock','1719286082:1'),(54,51,'_wp_attached_file','2024/06/제목_없음-removebg-preview.png'),(55,51,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:42:\"2024/06/제목_없음-removebg-preview.png\";s:8:\"filesize\";i:81888;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(56,52,'_edit_lock','1719287163:1'),(57,53,'_edit_lock','1719287255:1'),(58,53,'_pingme','1'),(59,53,'_encloseme','1'),(60,55,'_edit_lock','1719287276:1'),(61,35,'_wp_trash_meta_status','publish'),(62,35,'_wp_trash_meta_time','1719287477'),(63,35,'_wp_desired_post_slug','123123-2'),(64,56,'origin','theme'),(65,59,'origin','theme'),(66,53,'_wp_trash_meta_status','publish'),(67,53,'_wp_trash_meta_time','1719288140'),(68,53,'_wp_desired_post_slug','111'),(69,60,'_edit_lock','1719290456:1'),(70,60,'_pingme','1'),(71,60,'_encloseme','1'),(72,60,'_wp_trash_meta_status','publish'),(73,60,'_wp_trash_meta_time','1719290483'),(74,60,'_wp_desired_post_slug','%ea%b2%8c%ec%8b%9c%ed%8c%90'),(75,60,'_wp_trash_meta_comments_status','a:1:{i:2;s:1:\"1\";}'),(76,62,'_edit_lock','1719294838:1'),(77,68,'_wp_attached_file','2024/06/8597a75de87c8f2ef7afb18fb813441b.gif'),(78,68,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:240;s:6:\"height\";i:480;s:4:\"file\";s:44:\"2024/06/8597a75de87c8f2ef7afb18fb813441b.gif\";s:8:\"filesize\";i:261642;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(80,74,'origin','theme'),(81,76,'footnotes','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-06-24 08:41:51','2024-06-24 08:41:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2024-06-25 03:29:45','2024-06-25 03:29:45','',0,'http://192.168.139.10/?p=1',0,'post','',1),(2,1,'2024-06-24 08:41:51','2024-06-24 08:41:51','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://192.168.139.10/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2024-06-24 15:25:03','2024-06-24 15:25:03','',0,'http://192.168.139.10/?page_id=2',0,'page','',0),(3,1,'2024-06-24 08:41:51','2024-06-24 08:41:51','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://192.168.139.10.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2024-06-24 15:24:55','2024-06-24 15:24:55','',0,'http://192.168.139.10/?page_id=3',0,'page','',0),(4,1,'2024-06-24 08:42:01','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-06-24 08:42:01','0000-00-00 00:00:00','',0,'http://192.168.139.10/?p=4',0,'post','',0),(5,0,'2024-06-24 08:52:12','2024-06-24 08:52:12','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-06-24 08:52:12','2024-06-24 08:52:12','',0,'http://192.168.139.10/?p=5',0,'wp_navigation','',0),(6,1,'2024-06-24 08:59:17','2024-06-24 08:59:17','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyfour','','','2024-06-24 08:59:17','2024-06-24 08:59:17','',0,'http://192.168.139.10/?p=6',0,'wp_global_styles','',0),(7,1,'2024-06-24 09:26:19','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-06-24 09:26:19','0000-00-00 00:00:00','',0,'http://192.168.139.10/?page_id=7',0,'page','',0),(8,1,'2024-06-24 09:30:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-06-24 09:30:34','0000-00-00 00:00:00','',0,'http://192.168.139.10/?p=8',0,'post','',0),(10,1,'2024-06-24 09:39:08','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-06-24 09:39:08','0000-00-00 00:00:00','',0,'http://192.168.139.10/?page_id=10',0,'page','',0),(11,1,'2024-06-24 09:42:21','2024-06-24 09:42:21','<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|50\",\"bottom\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\",\"right\":\"var:preset|spacing|50\"}}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"\",\"wideSize\":\"\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"565px\"}} -->\n<div class=\"wp-block-group\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":1,\"fontSize\":\"x-large\"} -->\n<h1 class=\"wp-block-heading has-text-align-center has-x-large-font-size\">A commitment to innovation and sustainability</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"1.25rem\"} -->\n<div style=\"height:1.25rem\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Études is a pioneering firm that seamlessly merges creativity and functionality to redefine architectural excellence.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"1.25rem\"} -->\n<div style=\"height:1.25rem\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">About us</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"var:preset|spacing|30\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--30)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"wide\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image alignwide size-full is-style-rounded\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentyfour/assets/images/building-exterior.webp\" alt=\"Building exterior in Toronto, Canada\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:group -->','나중에 이쁘게!!!','','trash','closed','closed','','%eb%82%98%ec%a4%91%ec%97%90-%ec%9d%b4%ec%81%98%ea%b2%8c__trashed','','','2024-06-24 14:53:24','2024-06-24 14:53:24','',0,'http://192.168.139.10/?page_id=11',0,'page','',0),(12,1,'2024-06-24 09:42:21','2024-06-24 09:42:21','<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|50\",\"bottom\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\",\"right\":\"var:preset|spacing|50\"}}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"\",\"wideSize\":\"\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"565px\"}} -->\n<div class=\"wp-block-group\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":1,\"fontSize\":\"x-large\"} -->\n<h1 class=\"wp-block-heading has-text-align-center has-x-large-font-size\">A commitment to innovation and sustainability</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"1.25rem\"} -->\n<div style=\"height:1.25rem\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Études is a pioneering firm that seamlessly merges creativity and functionality to redefine architectural excellence.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"1.25rem\"} -->\n<div style=\"height:1.25rem\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">About us</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"var:preset|spacing|30\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--30)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"wide\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image alignwide size-full is-style-rounded\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentyfour/assets/images/building-exterior.webp\" alt=\"Building exterior in Toronto, Canada\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:group -->','나중에 이쁘게!!!','','inherit','closed','closed','','11-revision-v1','','','2024-06-24 09:42:21','2024-06-24 09:42:21','',11,'http://192.168.139.10/?p=12',0,'revision','',0),(13,1,'2024-06-24 09:43:00','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-06-24 09:43:00','0000-00-00 00:00:00','',0,'http://192.168.139.10/?p=13',0,'post','',0),(14,1,'2024-06-24 14:53:04','2024-06-24 14:53:04','<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|50\",\"bottom\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\",\"right\":\"var:preset|spacing|50\"}}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"\",\"wideSize\":\"\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"565px\"}} -->\n<div class=\"wp-block-group\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":1,\"fontSize\":\"x-large\"} -->\n<h1 class=\"wp-block-heading has-text-align-center has-x-large-font-size\">A commitment to innovation and sustainability</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"1.25rem\"} -->\n<div style=\"height:1.25rem\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Études is a pioneering firm that seamlessly merges creativity and functionality to redefine architectural excellence.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"1.25rem\"} -->\n<div style=\"height:1.25rem\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">About us</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"var:preset|spacing|30\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--30)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"wide\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image alignwide size-full is-style-rounded\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentyfour/assets/images/building-exterior.webp\" alt=\"Building exterior in Toronto, Canada\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','11-autosave-v1','','','2024-06-24 14:53:04','2024-06-24 14:53:04','',11,'http://192.168.139.10/?p=14',0,'revision','',0),(15,1,'2024-06-24 15:23:05','2024-06-24 15:23:05','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-terms {\"term\":\"category\"} /-->','','','trash','closed','closed','','__trashed','','','2024-06-24 15:23:05','2024-06-24 15:23:05','',0,'http://192.168.139.10/?page_id=15',0,'page','',0),(16,1,'2024-06-24 15:23:05','2024-06-24 15:23:05','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-terms {\"term\":\"category\"} /-->','','','inherit','closed','closed','','15-revision-v1','','','2024-06-24 15:23:05','2024-06-24 15:23:05','',15,'http://192.168.139.10/?p=16',0,'revision','',0),(17,1,'2024-06-24 15:23:24','2024-06-24 15:23:24','<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"right\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\",\"top\":\"var:preset|spacing|60\",\"bottom\":\"var:preset|spacing|60\"},\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}},\"dimensions\":{\"minHeight\":\"100vh\"}},\"backgroundColor\":\"accent-3\",\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"center\",\"verticalAlignment\":\"center\"}} -->\n<div class=\"wp-block-group alignfull has-accent-3-background-color has-background\" style=\"min-height:100vh;margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--60);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--60);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:image {\"width\":\"45px\",\"height\":\"49px\",\"scale\":\"cover\",\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-image aligncenter size-full is-resized\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentyfour/assets/images/icon-message.webp\" alt=\"\" style=\"object-fit:cover;width:45px;height:49px\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":\"var:preset|spacing|10\"} -->\n<div style=\"height:var(--wp--preset--spacing--10)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"style\":{\"spacing\":{\"margin\":{\"right\":\"0\",\"left\":\"0\"},\"padding\":{\"right\":\"0\",\"left\":\"0\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}},\"textColor\":\"contrast\",\"fontSize\":\"x-large\"} -->\n<h2 class=\"wp-block-heading has-text-align-center has-contrast-color has-text-color has-link-color has-x-large-font-size\" style=\"margin-right:0;margin-left:0;padding-right:0;padding-left:0\">Subscribe to the newsletter and stay connected with our community</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"var:preset|spacing|10\"} -->\n<div style=\"height:var(--wp--preset--spacing--10)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">Sign up</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','trash','closed','closed','','17-2__trashed','','','2024-06-24 15:24:40','2024-06-24 15:24:40','',0,'http://192.168.139.10/?page_id=17',0,'page','',0),(18,1,'2024-06-24 15:23:24','2024-06-24 15:23:24','<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"right\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\",\"top\":\"var:preset|spacing|60\",\"bottom\":\"var:preset|spacing|60\"},\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}},\"dimensions\":{\"minHeight\":\"100vh\"}},\"backgroundColor\":\"accent-3\",\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"center\",\"verticalAlignment\":\"center\"}} -->\n<div class=\"wp-block-group alignfull has-accent-3-background-color has-background\" style=\"min-height:100vh;margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--60);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--60);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:image {\"width\":\"45px\",\"height\":\"49px\",\"scale\":\"cover\",\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-image aligncenter size-full is-resized\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentyfour/assets/images/icon-message.webp\" alt=\"\" style=\"object-fit:cover;width:45px;height:49px\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":\"var:preset|spacing|10\"} -->\n<div style=\"height:var(--wp--preset--spacing--10)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"style\":{\"spacing\":{\"margin\":{\"right\":\"0\",\"left\":\"0\"},\"padding\":{\"right\":\"0\",\"left\":\"0\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}},\"textColor\":\"contrast\",\"fontSize\":\"x-large\"} -->\n<h2 class=\"wp-block-heading has-text-align-center has-contrast-color has-text-color has-link-color has-x-large-font-size\" style=\"margin-right:0;margin-left:0;padding-right:0;padding-left:0\">Subscribe to the newsletter and stay connected with our community</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"var:preset|spacing|10\"} -->\n<div style=\"height:var(--wp--preset--spacing--10)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">Sign up</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','17-revision-v1','','','2024-06-24 15:23:24','2024-06-24 15:23:24','',17,'http://192.168.139.10/?p=18',0,'revision','',0),(19,1,'2024-06-24 15:24:55','2024-06-24 15:24:55','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://192.168.139.10.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-06-24 15:24:55','2024-06-24 15:24:55','',3,'http://192.168.139.10/?p=19',0,'revision','',0),(20,1,'2024-06-24 15:25:03','2024-06-24 15:25:03','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://192.168.139.10/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2024-06-24 15:25:03','2024-06-24 15:25:03','',2,'http://192.168.139.10/?p=20',0,'revision','',0),(21,1,'2024-06-24 15:26:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-06-24 15:26:28','0000-00-00 00:00:00','',0,'http://192.168.139.10/?page_id=21',0,'page','',0),(22,1,'2024-06-24 15:28:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-06-24 15:28:56','0000-00-00 00:00:00','',0,'http://192.168.139.10/?page_id=22',0,'page','',0),(23,1,'2024-06-24 15:51:59','2024-06-24 15:51:59','<!-- wp:group {\"metadata\":{\"name\":\"RSVP Landing Page\"},\"align\":\"full\",\"style\":{\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"},\"padding\":{\"top\":\"var:preset|spacing|50\",\"bottom\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\",\"right\":\"var:preset|spacing|50\"}},\"dimensions\":{\"minHeight\":\"100vh\"}},\"backgroundColor\":\"accent-4\",\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"verticalAlignment\":\"center\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group alignfull has-accent-4-background-color has-background\" style=\"min-height:100vh;margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\"}}}} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"40%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:40%\"><!-- wp:group {\"style\":{\"dimensions\":{\"minHeight\":\"100%\"},\"spacing\":{\"blockGap\":\"var:preset|spacing|50\",\"margin\":{\"top\":\"0\",\"bottom\":\"0\"},\"padding\":{\"right\":\"0\",\"left\":\"0\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\" style=\"min-height:100%;margin-top:0;margin-bottom:0;padding-right:0;padding-left:0\"><!-- wp:heading {\"textAlign\":\"right\",\"level\":1,\"style\":{\"typography\":{\"fontSize\":\"12rem\",\"writingMode\":\"vertical-rl\",\"lineHeight\":\"1\"},\"spacing\":{\"margin\":{\"right\":\"0\",\"left\":\"calc( var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dspacing\\u002d\\u002d20) * -1)\"}}}} -->\n<h1 class=\"wp-block-heading has-text-align-right\" style=\"margin-right:0;margin-left:calc( var(--wp--preset--spacing--20) * -1);font-size:12rem;line-height:1;writing-mode:vertical-rl\">RSVP</h1>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"right\":\"0\",\"left\":\"0\"}}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"300px\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\" style=\"padding-right:0;padding-left:0\"><!-- wp:paragraph {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"50%\"}}} -->\n<p>Experience the fusion of imagination and expertise with Études Arch Summit, February 2025.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">Reserve your spot</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\",\"width\":\"60%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\" style=\"flex-basis:60%\"><!-- wp:image {\"aspectRatio\":\"3/4\",\"scale\":\"cover\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-style-rounded\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentyfour/assets/images/green-staircase.webp\" alt=\"Green staircase at Western University, London, Canada\" style=\"aspect-ratio:3/4;object-fit:cover\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:query {\"queryId\":22,\"query\":{\"perPage\":3,\"pages\":0,\"offset\":0,\"postType\":\"post\",\"order\":\"desc\",\"orderBy\":\"date\",\"author\":\"\",\"search\":\"\",\"exclude\":[],\"sticky\":\"\",\"inherit\":false}} -->\n<div class=\"wp-block-query\"><!-- wp:post-template -->\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:post-featured-image {\"isLink\":true} /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:post-title {\"isLink\":true} /-->\n\n<!-- wp:post-excerpt /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:post-template --></div>\n<!-- /wp:query -->','','','trash','closed','closed','','23-2__trashed','','','2024-06-25 01:01:07','2024-06-25 01:01:07','',0,'http://192.168.139.10/?page_id=23',0,'page','',0),(24,1,'2024-06-24 15:51:59','2024-06-24 15:51:59','<!-- wp:group {\"metadata\":{\"name\":\"RSVP Landing Page\"},\"align\":\"full\",\"style\":{\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"},\"padding\":{\"top\":\"var:preset|spacing|50\",\"bottom\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\",\"right\":\"var:preset|spacing|50\"}},\"dimensions\":{\"minHeight\":\"100vh\"}},\"backgroundColor\":\"accent-4\",\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"verticalAlignment\":\"center\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group alignfull has-accent-4-background-color has-background\" style=\"min-height:100vh;margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\"}}}} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"40%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:40%\"><!-- wp:group {\"style\":{\"dimensions\":{\"minHeight\":\"100%\"},\"spacing\":{\"blockGap\":\"var:preset|spacing|50\",\"margin\":{\"top\":\"0\",\"bottom\":\"0\"},\"padding\":{\"right\":\"0\",\"left\":\"0\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\" style=\"min-height:100%;margin-top:0;margin-bottom:0;padding-right:0;padding-left:0\"><!-- wp:heading {\"textAlign\":\"right\",\"level\":1,\"style\":{\"typography\":{\"fontSize\":\"12rem\",\"writingMode\":\"vertical-rl\",\"lineHeight\":\"1\"},\"spacing\":{\"margin\":{\"right\":\"0\",\"left\":\"calc( var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dspacing\\u002d\\u002d20) * -1)\"}}}} -->\n<h1 class=\"wp-block-heading has-text-align-right\" style=\"margin-right:0;margin-left:calc( var(--wp--preset--spacing--20) * -1);font-size:12rem;line-height:1;writing-mode:vertical-rl\">RSVP</h1>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"right\":\"0\",\"left\":\"0\"}}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"300px\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\" style=\"padding-right:0;padding-left:0\"><!-- wp:paragraph {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"50%\"}}} -->\n<p>Experience the fusion of imagination and expertise with Études Arch Summit, February 2025.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">Reserve your spot</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\",\"width\":\"60%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\" style=\"flex-basis:60%\"><!-- wp:image {\"aspectRatio\":\"3/4\",\"scale\":\"cover\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-style-rounded\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentyfour/assets/images/green-staircase.webp\" alt=\"Green staircase at Western University, London, Canada\" style=\"aspect-ratio:3/4;object-fit:cover\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:query {\"queryId\":22,\"query\":{\"perPage\":3,\"pages\":0,\"offset\":0,\"postType\":\"post\",\"order\":\"desc\",\"orderBy\":\"date\",\"author\":\"\",\"search\":\"\",\"exclude\":[],\"sticky\":\"\",\"inherit\":false}} -->\n<div class=\"wp-block-query\"><!-- wp:post-template -->\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:post-featured-image {\"isLink\":true} /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:post-title {\"isLink\":true} /-->\n\n<!-- wp:post-excerpt /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:post-template --></div>\n<!-- /wp:query -->','','','inherit','closed','closed','','23-revision-v1','','','2024-06-24 15:51:59','2024-06-24 15:51:59','',23,'http://192.168.139.10/?p=24',0,'revision','',0),(26,1,'2024-06-24 15:54:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-06-24 15:54:27','0000-00-00 00:00:00','',0,'http://192.168.139.10/?page_id=26',0,'page','',0),(27,1,'2024-06-25 01:01:33','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-06-25 01:01:33','0000-00-00 00:00:00','',0,'http://192.168.139.10/?page_id=27',0,'page','',0),(28,1,'2024-06-25 01:17:36','2024-06-25 01:17:36','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentytwo','','','2024-06-25 01:17:36','2024-06-25 01:17:36','',0,'http://192.168.139.10/?p=28',0,'wp_global_styles','',0),(30,1,'2024-06-25 01:31:31','2024-06-25 01:31:31','<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}},\"spacing\":{\"padding\":{\"top\":\"0px\",\"bottom\":\"0px\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:0px;padding-bottom:0px\"><!-- wp:template-part {\"slug\":\"header\",\"theme\":\"twentytwentytwo\",\"tagName\":\"header\",\"align\":\"wide\"} /--></div>\n<!-- /wp:group -->','Header (Dark, small)','','publish','closed','closed','','header-small-dark','','','2024-06-25 03:53:05','2024-06-25 03:53:05','',0,'http://192.168.139.10/?p=30',0,'wp_template_part','',0),(31,1,'2024-06-25 01:31:31','2024-06-25 01:31:31','','Footer','','publish','closed','closed','','footer','','','2024-06-25 03:53:05','2024-06-25 03:53:05','',0,'http://192.168.139.10/?p=31',0,'wp_template_part','',0),(32,1,'2024-06-25 01:33:22','2024-06-25 01:33:22','<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}},\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--small, 1.25rem)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:site-title {\"level\":0} /-->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p class=\"has-text-align-right\">Proudly powered by <a href=\"https://wordpress.org\" rel=\"nofollow\">WordPress</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|foreground\"}}},\"spacing\":{\"padding\":{\"top\":\"6rem\",\"bottom\":\"4rem\"}}},\"backgroundColor\":\"secondary\",\"textColor\":\"foreground\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-foreground-color has-secondary-background-color has-text-color has-background has-link-color\" style=\"padding-top:6rem;padding-bottom:4rem\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"fontSize\":\"x-large\"} -->\n<h2 class=\"wp-block-heading has-x-large-font-size\" id=\"extended-trailer\">Extended Trailer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A film about hobbyist bird watchers, a catalog of different birds, paired with the noises they make. Each bird is listed by their scientific name so things seem more official.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:video -->\n<figure class=\"wp-block-video\"><video controls src=\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/videos/birds.mp4\"></video></figure>\n<!-- /wp:video --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4rem\",\"bottom\":\"4rem\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:4rem;padding-bottom:4rem\"><!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}},\"typography\":{\"textTransform\":\"uppercase\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0.25em\",\"bottom\":\"0px\"}},\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:social-links {\"iconBackgroundColor\":\"foreground\",\"iconBackgroundColorValue\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dcolor\\u002d\\u002dforeground)\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links has-icon-background-color\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','trash','closed','closed','','32-2__trashed','','','2024-06-25 01:37:23','2024-06-25 01:37:23','',0,'http://192.168.139.10/?page_id=32',0,'page','',0),(33,1,'2024-06-25 01:33:22','2024-06-25 01:33:22','<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}},\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--small, 1.25rem)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:site-title {\"level\":0} /-->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p class=\"has-text-align-right\">Proudly powered by <a href=\"https://wordpress.org\" rel=\"nofollow\">WordPress</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|foreground\"}}},\"spacing\":{\"padding\":{\"top\":\"6rem\",\"bottom\":\"4rem\"}}},\"backgroundColor\":\"secondary\",\"textColor\":\"foreground\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-foreground-color has-secondary-background-color has-text-color has-background has-link-color\" style=\"padding-top:6rem;padding-bottom:4rem\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"fontSize\":\"x-large\"} -->\n<h2 class=\"wp-block-heading has-x-large-font-size\" id=\"extended-trailer\">Extended Trailer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A film about hobbyist bird watchers, a catalog of different birds, paired with the noises they make. Each bird is listed by their scientific name so things seem more official.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:video -->\n<figure class=\"wp-block-video\"><video controls src=\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/videos/birds.mp4\"></video></figure>\n<!-- /wp:video --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4rem\",\"bottom\":\"4rem\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:4rem;padding-bottom:4rem\"><!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}},\"typography\":{\"textTransform\":\"uppercase\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0.25em\",\"bottom\":\"0px\"}},\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:social-links {\"iconBackgroundColor\":\"foreground\",\"iconBackgroundColorValue\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dcolor\\u002d\\u002dforeground)\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links has-icon-background-color\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','32-revision-v1','','','2024-06-25 01:33:22','2024-06-25 01:33:22','',32,'http://192.168.139.10/?p=33',0,'revision','',0),(34,1,'2024-06-25 01:48:05','2024-06-25 01:48:05','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentythree','','','2024-06-25 01:48:05','2024-06-25 01:48:05','',0,'http://192.168.139.10/?p=34',0,'wp_global_styles','',0),(35,1,'2024-06-25 01:49:29','2024-06-25 01:49:29','<!-- wp:group {\"metadata\":{\"name\":\"header\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|secondary\"}}},\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"secondary\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-secondary-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--small, 1.25rem)\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"bottom\":\"0rem\",\"top\":\"0px\",\"right\":\"0px\",\"left\":\"0px\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0px;padding-right:0px;padding-bottom:0rem;padding-left:0px\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} -->\n<!-- wp:page-list /-->\n<!-- /wp:navigation --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:shortcode -->\n[mb_board name=\"test\" style=\"\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:group {\"metadata\":{\"name\":\"footer\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4rem\",\"bottom\":\"4rem\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:4rem;padding-bottom:4rem\"><!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}},\"typography\":{\"textTransform\":\"uppercase\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0.25em\",\"bottom\":\"0px\"}},\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:social-links {\"iconBackgroundColor\":\"foreground\",\"iconBackgroundColorValue\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dcolor\\u002d\\u002dforeground)\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links has-icon-background-color\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','trash','closed','closed','','123123-2__trashed','','','2024-06-25 03:51:17','2024-06-25 03:51:17','',0,'http://192.168.139.10/?page_id=35',0,'page','',0),(36,1,'2024-06-25 01:49:29','2024-06-25 01:49:29','','123123','','inherit','closed','closed','','35-revision-v1','','','2024-06-25 01:49:29','2024-06-25 01:49:29','',35,'http://192.168.139.10/?p=36',0,'revision','',0),(38,1,'2024-06-25 02:36:47','2024-06-25 02:36:47','<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|secondary\"}}},\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"secondary\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-secondary-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--small, 1.25rem)\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"bottom\":\"0rem\",\"top\":\"0px\",\"right\":\"0px\",\"left\":\"0px\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0px;padding-right:0px;padding-bottom:0rem;padding-left:0px\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} -->\n<!-- wp:page-list /-->\n<!-- /wp:navigation --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\",\"mediaType\":\"image\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"right\":\"min(8rem, 5vw)\",\"top\":\"min(20rem, 20vw)\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:min(20rem, 20vw);padding-right:min(8rem, 5vw)\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"300\",\"lineHeight\":\"1.115\",\"fontSize\":\"clamp(3rem, 6vw, 4.5rem)\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:clamp(3rem, 6vw, 4.5rem);font-weight:300;line-height:1.115\"><em>Emery<br>Driscoll</em></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}}} -->\n<p style=\"line-height:1.6\">Oh hello. My name’s Emery, and you’ve found your way to my website. I’m an avid bird watcher, and I also broadcast my own radio show on Tuesday evenings at 11PM EDT.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"40px\"} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"32px\"} -->\n<div style=\"height:32px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\" alt=\"An image of a bird flying\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4rem\",\"bottom\":\"4rem\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:4rem;padding-bottom:4rem\"><!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}},\"typography\":{\"textTransform\":\"uppercase\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0.25em\",\"bottom\":\"0px\"}},\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:social-links {\"iconBackgroundColor\":\"foreground\",\"iconBackgroundColorValue\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dcolor\\u002d\\u002dforeground)\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links has-icon-background-color\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','35-revision-v1','','','2024-06-25 02:36:47','2024-06-25 02:36:47','',35,'http://192.168.139.10/?p=38',0,'revision','',0),(39,1,'2024-06-25 02:46:26','2024-06-25 02:46:26','<!-- wp:group {\"metadata\":{\"name\":\"header\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|secondary\"}}},\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"secondary\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-secondary-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--small, 1.25rem)\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"bottom\":\"0rem\",\"top\":\"0px\",\"right\":\"0px\",\"left\":\"0px\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0px;padding-right:0px;padding-bottom:0rem;padding-left:0px\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} -->\n<!-- wp:page-list /-->\n<!-- /wp:navigation --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\",\"mediaType\":\"image\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"right\":\"min(8rem, 5vw)\",\"top\":\"min(20rem, 20vw)\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:min(20rem, 20vw);padding-right:min(8rem, 5vw)\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"300\",\"lineHeight\":\"1.115\",\"fontSize\":\"clamp(3rem, 6vw, 4.5rem)\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:clamp(3rem, 6vw, 4.5rem);font-weight:300;line-height:1.115\"><em>Emery<br>Driscoll</em></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}}} -->\n<p style=\"line-height:1.6\">Oh hello. My name’s Emery, and you’ve found your way to my website. I’m an avid bird watcher, and I also broadcast my own radio show on Tuesday evenings at 11PM EDT.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"40px\"} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"32px\"} -->\n<div style=\"height:32px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\" alt=\"An image of a bird flying\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:group {\"metadata\":{\"name\":\"footer\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4rem\",\"bottom\":\"4rem\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:4rem;padding-bottom:4rem\"><!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}},\"typography\":{\"textTransform\":\"uppercase\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0.25em\",\"bottom\":\"0px\"}},\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:social-links {\"iconBackgroundColor\":\"foreground\",\"iconBackgroundColorValue\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dcolor\\u002d\\u002dforeground)\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links has-icon-background-color\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','35-revision-v1','','','2024-06-25 02:46:26','2024-06-25 02:46:26','',35,'http://192.168.139.10/?p=39',0,'revision','',0),(40,1,'2024-06-25 02:48:20','2024-06-25 02:48:20','<!-- wp:group {\"metadata\":{\"name\":\"header\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|secondary\"}}},\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"secondary\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-secondary-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--small, 1.25rem)\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"bottom\":\"0rem\",\"top\":\"0px\",\"right\":\"0px\",\"left\":\"0px\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0px;padding-right:0px;padding-bottom:0rem;padding-left:0px\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} -->\n<!-- wp:page-list /-->\n<!-- /wp:navigation --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\",\"mediaType\":\"image\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"right\":\"min(8rem, 5vw)\",\"top\":\"min(20rem, 20vw)\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:min(20rem, 20vw);padding-right:min(8rem, 5vw)\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"300\",\"lineHeight\":\"1.115\",\"fontSize\":\"clamp(3rem, 6vw, 4.5rem)\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:clamp(3rem, 6vw, 4.5rem);font-weight:300;line-height:1.115\"><em>Emery<br>Driscoll</em></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}}} -->\n<p style=\"line-height:1.6\">Oh hello. My name’s Emery, and you’ve found your way to my website. I’m an avid bird watcher, and I also broadcast my own radio show on Tuesday evenings at 11PM EDT.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\" alt=\"An image of a bird flying\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:group {\"metadata\":{\"name\":\"footer\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4rem\",\"bottom\":\"4rem\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:4rem;padding-bottom:4rem\"><!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}},\"typography\":{\"textTransform\":\"uppercase\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0.25em\",\"bottom\":\"0px\"}},\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:social-links {\"iconBackgroundColor\":\"foreground\",\"iconBackgroundColorValue\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dcolor\\u002d\\u002dforeground)\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links has-icon-background-color\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','35-revision-v1','','','2024-06-25 02:48:20','2024-06-25 02:48:20','',35,'http://192.168.139.10/?p=40',0,'revision','',0),(42,1,'2024-06-25 02:53:44','2024-06-25 02:53:44','<!-- wp:group {\"metadata\":{\"name\":\"header\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|secondary\"}}},\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"secondary\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-secondary-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--small, 1.25rem)\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"bottom\":\"0rem\",\"top\":\"0px\",\"right\":\"0px\",\"left\":\"0px\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0px;padding-right:0px;padding-bottom:0rem;padding-left:0px\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} -->\n<!-- wp:page-list /-->\n<!-- /wp:navigation --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\",\"mediaType\":\"image\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"right\":\"min(8rem, 5vw)\",\"top\":\"min(20rem, 20vw)\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:min(20rem, 20vw);padding-right:min(8rem, 5vw)\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"300\",\"lineHeight\":\"1.115\",\"fontSize\":\"clamp(3rem, 6vw, 4.5rem)\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:clamp(3rem, 6vw, 4.5rem);font-weight:300;line-height:1.115\"><em>Emery<br>Driscoll</em></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}}} -->\n<p style=\"line-height:1.6\">Oh hello. My name’s Emery, and you’ve found your way to my website. I’m an avid bird watcher, and I also broadcast my own radio show on Tuesday evenings at 11PM EDT.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\" alt=\"An image of a bird flying\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:shortcode -->\n[mb_board name=\"test\" style=\"\"]\n[mb_board name=\"test\" list_type=\"gallery\" responsive_class=\"col-321\" style=\"\"]\n[mb_board name=\"test\" list_type=\"calendar\" style=\"\"]\n[mb_latest name=\"test\" title=\"test\" list_size=\"5\" style=\"\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:group {\"metadata\":{\"name\":\"footer\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4rem\",\"bottom\":\"4rem\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:4rem;padding-bottom:4rem\"><!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}},\"typography\":{\"textTransform\":\"uppercase\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0.25em\",\"bottom\":\"0px\"}},\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:social-links {\"iconBackgroundColor\":\"foreground\",\"iconBackgroundColorValue\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dcolor\\u002d\\u002dforeground)\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links has-icon-background-color\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','35-revision-v1','','','2024-06-25 02:53:44','2024-06-25 02:53:44','',35,'http://192.168.139.10/?p=42',0,'revision','',0),(43,1,'2024-06-25 02:55:22','2024-06-25 02:55:22','<!-- wp:group {\"metadata\":{\"name\":\"header\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|secondary\"}}},\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"secondary\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-secondary-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--small, 1.25rem)\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"bottom\":\"0rem\",\"top\":\"0px\",\"right\":\"0px\",\"left\":\"0px\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0px;padding-right:0px;padding-bottom:0rem;padding-left:0px\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} -->\n<!-- wp:page-list /-->\n<!-- /wp:navigation --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\",\"mediaType\":\"image\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"right\":\"min(8rem, 5vw)\",\"top\":\"min(20rem, 20vw)\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:min(20rem, 20vw);padding-right:min(8rem, 5vw)\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"300\",\"lineHeight\":\"1.115\",\"fontSize\":\"clamp(3rem, 6vw, 4.5rem)\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:clamp(3rem, 6vw, 4.5rem);font-weight:300;line-height:1.115\"><em>Emery<br>Driscoll</em></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}}} -->\n<p style=\"line-height:1.6\">Oh hello. My name’s Emery, and you’ve found your way to my website. I’m an avid bird watcher, and I also broadcast my own radio show on Tuesday evenings at 11PM EDT.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\" alt=\"An image of a bird flying\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:shortcode -->\n[mb_board name=\"test\" style=\"\"]\n[mb_board name=\"test\" list_type=\"gallery\" responsive_class=\"col-321\" style=\"\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:group {\"metadata\":{\"name\":\"footer\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4rem\",\"bottom\":\"4rem\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:4rem;padding-bottom:4rem\"><!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}},\"typography\":{\"textTransform\":\"uppercase\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0.25em\",\"bottom\":\"0px\"}},\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:social-links {\"iconBackgroundColor\":\"foreground\",\"iconBackgroundColorValue\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dcolor\\u002d\\u002dforeground)\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links has-icon-background-color\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','35-revision-v1','','','2024-06-25 02:55:22','2024-06-25 02:55:22','',35,'http://192.168.139.10/?p=43',0,'revision','',0),(44,1,'2024-06-25 02:57:19','2024-06-25 02:57:19','<!-- wp:group {\"metadata\":{\"name\":\"header\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|secondary\"}}},\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"secondary\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-secondary-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--small, 1.25rem)\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"bottom\":\"0rem\",\"top\":\"0px\",\"right\":\"0px\",\"left\":\"0px\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0px;padding-right:0px;padding-bottom:0rem;padding-left:0px\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} -->\n<!-- wp:page-list /-->\n<!-- /wp:navigation --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\",\"mediaType\":\"image\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"right\":\"min(8rem, 5vw)\",\"top\":\"min(20rem, 20vw)\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:min(20rem, 20vw);padding-right:min(8rem, 5vw)\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"300\",\"lineHeight\":\"1.115\",\"fontSize\":\"clamp(3rem, 6vw, 4.5rem)\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:clamp(3rem, 6vw, 4.5rem);font-weight:300;line-height:1.115\"><em>Emery<br>Driscoll</em></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}}} -->\n<p style=\"line-height:1.6\">Oh hello. My name’s Emery, and you’ve found your way to my website. I’m an avid bird watcher, and I also broadcast my own radio show on Tuesday evenings at 11PM EDT.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://192.168.139.10/wp-content/themes/twentytwentytwo/assets/images/bird-on-black.jpg\" alt=\"An image of a bird flying\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:shortcode -->\n[mb_board name=\"test\" style=\"\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:group {\"metadata\":{\"name\":\"footer\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4rem\",\"bottom\":\"4rem\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:4rem;padding-bottom:4rem\"><!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}},\"typography\":{\"textTransform\":\"uppercase\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0.25em\",\"bottom\":\"0px\"}},\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:social-links {\"iconBackgroundColor\":\"foreground\",\"iconBackgroundColorValue\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dcolor\\u002d\\u002dforeground)\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links has-icon-background-color\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','35-revision-v1','','','2024-06-25 02:57:19','2024-06-25 02:57:19','',35,'http://192.168.139.10/?p=44',0,'revision','',0),(46,1,'2024-06-25 03:25:55','2024-06-25 03:25:55','<!-- wp:group {\"metadata\":{\"name\":\"header\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|secondary\"}}},\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"secondary\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-secondary-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--small, 1.25rem)\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"bottom\":\"0rem\",\"top\":\"0px\",\"right\":\"0px\",\"left\":\"0px\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0px;padding-right:0px;padding-bottom:0rem;padding-left:0px\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} -->\n<!-- wp:page-list /-->\n<!-- /wp:navigation --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:shortcode -->\n[mb_board name=\"test\" style=\"\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:group {\"metadata\":{\"name\":\"footer\"},\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4rem\",\"bottom\":\"4rem\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:4rem;padding-bottom:4rem\"><!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}},\"typography\":{\"textTransform\":\"uppercase\"}}} /-->\n\n<!-- wp:site-tagline {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0.25em\",\"bottom\":\"0px\"}},\"typography\":{\"fontStyle\":\"italic\",\"fontWeight\":\"400\"}},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:social-links {\"iconBackgroundColor\":\"foreground\",\"iconBackgroundColorValue\":\"var(\\u002d\\u002dwp\\u002d\\u002dpreset\\u002d\\u002dcolor\\u002d\\u002dforeground)\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links has-icon-background-color\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','35-revision-v1','','','2024-06-25 03:25:55','2024-06-25 03:25:55','',35,'http://192.168.139.10/?p=46',0,'revision','',0),(47,1,'2024-06-25 03:27:48','2024-06-25 03:27:48','<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}},\"spacing\":{\"padding\":{\"top\":\"0px\",\"bottom\":\"0px\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:0px;padding-bottom:0px\"><!-- wp:template-part {\"slug\":\"header\",\"theme\":\"twentytwentytwo\",\"tagName\":\"header\",\"align\":\"wide\"} /-->\n\n<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dlarge, 8rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dlarge, 8rem)\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|secondary\"}}}},\"backgroundColor\":\"foreground\",\"textColor\":\"secondary\"} -->\n<div class=\"wp-block-group alignfull has-secondary-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--large, 8rem);padding-bottom:var(--wp--custom--spacing--large, 8rem)\"><!-- wp:group {\"align\":\"full\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\"><!-- wp:heading {\"level\":1,\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"clamp(3rem, 6vw, 4.5rem)\"}}} -->\n<h1 class=\"wp-block-heading alignwide\" id=\"warble-a-film-about-hobbyist-bird-watchers-1\" style=\"font-size:clamp(3rem, 6vw, 4.5rem)\">CCCR SNS</h1>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->\n\n<!-- wp:shortcode -->\n[mb_board name=\"board1\" style=\"\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}},\"spacing\":{\"padding\":{\"top\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\",\"bottom\":\"var(\\u002d\\u002dwp\\u002d\\u002dcustom\\u002d\\u002dspacing\\u002d\\u002dsmall, 1.25rem)\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--custom--spacing--small, 1.25rem);padding-bottom:var(--wp--custom--spacing--small, 1.25rem)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:site-title {\"level\":0} /-->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p class=\"has-text-align-right\">Proudly powered by <a href=\"https://wordpress.org\" rel=\"nofollow\">WordPress</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->','Header (Dark, small)','','inherit','closed','closed','','30-revision-v1','','','2024-06-25 03:27:48','2024-06-25 03:27:48','',30,'http://192.168.139.10/?p=47',0,'revision','',0),(48,1,'2024-06-25 03:29:45','2024-06-25 03:29:45','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2024-06-25 03:29:45','2024-06-25 03:29:45','',1,'http://192.168.139.10/?p=48',0,'revision','',0),(49,1,'2024-06-25 03:29:48','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-06-25 03:29:48','0000-00-00 00:00:00','',0,'http://192.168.139.10/?p=49',0,'post','',0),(50,1,'2024-06-25 03:30:25','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-06-25 03:30:25','0000-00-00 00:00:00','',0,'http://192.168.139.10/?p=50',0,'post','',0),(51,1,'2024-06-25 03:44:28','2024-06-25 03:44:28','','제목_없음-removebg-preview','','inherit','open','closed','','%ec%a0%9c%eb%aa%a9_%ec%97%86%ec%9d%8c-removebg-preview','','','2024-06-25 03:44:28','2024-06-25 03:44:28','',0,'http://192.168.139.10/wp-content/uploads/2024/06/제목_없음-removebg-preview.png',0,'attachment','image/png',0),(52,1,'2024-06-25 03:48:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-06-25 03:48:22','0000-00-00 00:00:00','',0,'http://192.168.139.10/?p=52',0,'post','',0),(53,1,'2024-06-25 03:49:57','2024-06-25 03:49:57','','111','','trash','open','open','','111__trashed','','','2024-06-25 04:02:20','2024-06-25 04:02:20','',0,'http://192.168.139.10/?p=53',0,'post','',0),(54,1,'2024-06-25 03:49:57','2024-06-25 03:49:57','','111','','inherit','closed','closed','','53-revision-v1','','','2024-06-25 03:49:57','2024-06-25 03:49:57','',53,'http://192.168.139.10/?p=54',0,'revision','',0),(55,1,'2024-06-25 03:50:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-06-25 03:50:18','0000-00-00 00:00:00','',0,'http://192.168.139.10/?p=55',0,'post','',0),(56,1,'2024-06-25 03:53:05','2024-06-25 03:53:05','<!-- wp:template-part {\"slug\":\"header-small-dark\",\"theme\":\"twentytwentytwo\",\"tagName\":\"header\"} /-->\n\n<!-- wp:template-part {\"slug\":\"footer\",\"theme\":\"twentytwentytwo\",\"tagName\":\"footer\"} /-->','Blog Home','Displays the latest posts as either the site homepage or as the \"Posts page\" as defined under reading settings. If it exists, the Front Page template overrides this template when posts are shown on the homepage.','publish','closed','closed','','home','','','2024-06-25 03:53:05','2024-06-25 03:53:05','',0,'http://192.168.139.10/?p=56',0,'wp_template','',0),(57,1,'2024-06-25 03:53:05','2024-06-25 03:53:05','<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}},\"spacing\":{\"padding\":{\"top\":\"0px\",\"bottom\":\"0px\"}}},\"backgroundColor\":\"foreground\",\"textColor\":\"background\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-foreground-background-color has-text-color has-background has-link-color\" style=\"padding-top:0px;padding-bottom:0px\"><!-- wp:template-part {\"slug\":\"header\",\"theme\":\"twentytwentytwo\",\"tagName\":\"header\",\"align\":\"wide\"} /--></div>\n<!-- /wp:group -->','Header (Dark, small)','','inherit','closed','closed','','30-revision-v1','','','2024-06-25 03:53:05','2024-06-25 03:53:05','',30,'http://192.168.139.10/?p=57',0,'revision','',0),(58,1,'2024-06-25 03:53:05','2024-06-25 03:53:05','','Footer','','inherit','closed','closed','','31-revision-v1','','','2024-06-25 03:53:05','2024-06-25 03:53:05','',31,'http://192.168.139.10/?p=58',0,'revision','',0),(59,1,'2024-06-25 04:01:01','2024-06-25 04:01:01','<!-- wp:template-part {\"slug\":\"header\",\"theme\":\"twentytwentyfour\",\"tagName\":\"header\",\"area\":\"header\"} /-->\n\n<!-- wp:group {\"tagName\":\"main\",\"style\":{\"spacing\":{\"blockGap\":\"0\",\"margin\":{\"top\":\"0\"}}},\"layout\":{\"type\":\"default\"}} -->\n<main class=\"wp-block-group\" style=\"margin-top:0\"><!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|50\",\"bottom\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\",\"right\":\"var:preset|spacing|50\"}}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"\",\"wideSize\":\"\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:image {\"id\":68,\"width\":\"177px\",\"height\":\"auto\",\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-image aligncenter size-full is-resized\"><img src=\"http://192.168.139.10/wp-content/uploads/2024/06/8597a75de87c8f2ef7afb18fb813441b.gif\" alt=\"\" class=\"wp-image-68\" style=\"width:177px;height:auto\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"565px\"}} -->\n<div class=\"wp-block-group\"><!-- wp:spacer {\"height\":\"1.25rem\"} -->\n<div style=\"height:1.25rem\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#da6666\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-background wp-element-button\" href=\"http://192.168.139.10/?page_id=62\" style=\"background-color:#da6666\">CCCR 입장</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"var:preset|spacing|30\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--30)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group --></main>\n<!-- /wp:group -->','Blog Home','Displays the latest posts as either the site homepage or as the \"Posts page\" as defined under reading settings. If it exists, the Front Page template overrides this template when posts are shown on the homepage.','publish','closed','closed','','home','','','2024-06-25 05:18:33','2024-06-25 05:18:33','',0,'http://192.168.139.10/?p=59',0,'wp_template','',0),(60,1,'2024-06-25 04:38:45','2024-06-25 04:38:45','<!-- wp:shortcode -->\nmb_board name=\"test\" style=\"\"\n<!-- /wp:shortcode -->','게시판','','trash','open','open','','%ea%b2%8c%ec%8b%9c%ed%8c%90__trashed','','','2024-06-25 04:41:23','2024-06-25 04:41:23','',0,'http://192.168.139.10/?p=60',0,'post','',1),(61,1,'2024-06-25 04:38:45','2024-06-25 04:38:45','<!-- wp:shortcode -->\nmb_board name=\"test\" style=\"\"\n<!-- /wp:shortcode -->','게시판','','inherit','closed','closed','','60-revision-v1','','','2024-06-25 04:38:45','2024-06-25 04:38:45','',60,'http://192.168.139.10/?p=61',0,'revision','',0),(62,1,'2024-06-25 04:49:40','2024-06-25 04:49:40','<!-- wp:spacer {\"height\":\"var:preset|spacing|50\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--50)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"style\":{\"position\":{\"type\":\"\"}},\"layout\":{\"type\":\"default\"},\"fontSize\":\"x-large\"} -->\n<div class=\"wp-block-group alignwide has-x-large-font-size\"><!-- wp:heading {\"level\":1,\"style\":{\"typography\":{\"lineHeight\":\"1.2\"}},\"fontSize\":\"large\"} -->\n<h1 class=\"wp-block-heading has-large-font-size\" style=\"line-height:1.2\">I’m <em>Leia Acosta</em>, a passionate photographer who finds inspiration in capturing the fleeting beauty of life.</h1>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->','','','publish','closed','closed','','62-2','','','2024-06-25 05:55:41','2024-06-25 05:55:41','',0,'http://192.168.139.10/?page_id=62',0,'page','',0),(63,1,'2024-06-25 04:49:40','2024-06-25 04:49:40','<!-- wp:spacer {\"height\":\"var:preset|spacing|50\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--50)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:heading {\"level\":1,\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.2\"}},\"fontSize\":\"xx-large\"} -->\n<h1 class=\"wp-block-heading alignwide has-xx-large-font-size\" style=\"line-height:1.2\">I’m <em>Leia Acosta</em>, a passionate photographer who finds inspiration in capturing the fleeting beauty of life.</h1>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','62-revision-v1','','','2024-06-25 04:49:40','2024-06-25 04:49:40','',62,'http://192.168.139.10/?p=63',0,'revision','',0),(64,1,'2024-06-25 04:50:55','2024-06-25 04:50:55','<!-- wp:spacer {\"height\":\"var:preset|spacing|50\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--50)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:heading {\"level\":1,\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.2\"}},\"fontSize\":\"xx-large\"} -->\n<h1 class=\"wp-block-heading alignwide has-xx-large-font-size\" style=\"line-height:1.2\">I’m <em>Leia Acosta</em>, a passionate photographer who finds inspiration in capturing the fleeting beauty of life.</h1>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->\n\n<!-- wp:shortcode -->\nmb_board name=\"test\" style=\"\"\n<!-- /wp:shortcode -->','','','inherit','closed','closed','','62-revision-v1','','','2024-06-25 04:50:55','2024-06-25 04:50:55','',62,'http://192.168.139.10/?p=64',0,'revision','',0),(65,1,'2024-06-25 04:52:25','2024-06-25 04:52:25','<!-- wp:spacer {\"height\":\"var:preset|spacing|50\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--50)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:heading {\"level\":1,\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.2\"}},\"fontSize\":\"xx-large\"} -->\n<h1 class=\"wp-block-heading alignwide has-xx-large-font-size\" style=\"line-height:1.2\">I’m <em>Leia Acosta</em>, a passionate photographer who finds inspiration in capturing the fleeting beauty of life.</h1>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->\n\n<!-- wp:shortcode -->\nmb_board name=\"test\" style=\"\"\n<!-- /wp:shortcode -->','게시판','','inherit','closed','closed','','62-revision-v1','','','2024-06-25 04:52:25','2024-06-25 04:52:25','',62,'http://192.168.139.10/?p=65',0,'revision','',0),(66,1,'2024-06-25 04:54:19','2024-06-25 04:54:19','11123123','11123123','','publish','closed','closed','','3','','','2024-06-25 04:54:19','2024-06-25 04:54:19','',3,'http://192.168.139.10/?kboard_content_redirect=3',0,'kboard','',0),(67,1,'2024-06-25 04:55:25','2024-06-25 04:55:25','<!-- wp:spacer {\"height\":\"var:preset|spacing|50\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--50)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:heading {\"level\":1,\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.2\"}},\"fontSize\":\"xx-large\"} -->\n<h1 class=\"wp-block-heading alignwide has-xx-large-font-size\" style=\"line-height:1.2\">I’m <em>Leia Acosta</em>, a passionate photographer who finds inspiration in capturing the fleeting beauty of life.</h1>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->','게시판','','inherit','closed','closed','','62-revision-v1','','','2024-06-25 04:55:25','2024-06-25 04:55:25','',62,'http://192.168.139.10/?p=67',0,'revision','',0),(68,1,'2024-06-25 05:10:01','2024-06-25 05:10:01','','8597a75de87c8f2ef7afb18fb813441b','','inherit','open','closed','','8597a75de87c8f2ef7afb18fb813441b','','','2024-06-25 05:10:01','2024-06-25 05:10:01','',59,'http://192.168.139.10/wp-content/uploads/2024/06/8597a75de87c8f2ef7afb18fb813441b.gif',0,'attachment','image/gif',0),(69,1,'2024-06-25 05:12:03','2024-06-25 05:12:03','<!-- wp:template-part {\"slug\":\"header\",\"theme\":\"twentytwentyfour\",\"tagName\":\"header\",\"area\":\"header\"} /-->\n\n<!-- wp:group {\"tagName\":\"main\",\"style\":{\"spacing\":{\"blockGap\":\"0\",\"margin\":{\"top\":\"0\"}}},\"layout\":{\"type\":\"default\"}} -->\n<main class=\"wp-block-group\" style=\"margin-top:0\"><!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|50\",\"bottom\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\",\"right\":\"var:preset|spacing|50\"}}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"\",\"wideSize\":\"\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:image {\"id\":68,\"width\":\"177px\",\"height\":\"auto\",\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-image aligncenter size-full is-resized\"><img src=\"http://192.168.139.10/wp-content/uploads/2024/06/8597a75de87c8f2ef7afb18fb813441b.gif\" alt=\"\" class=\"wp-image-68\" style=\"width:177px;height:auto\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"565px\"}} -->\n<div class=\"wp-block-group\"><!-- wp:spacer {\"height\":\"1.25rem\"} -->\n<div style=\"height:1.25rem\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://192.168.139.10/?page_id=62\">CCCR 입장</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"var:preset|spacing|30\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--30)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group --></main>\n<!-- /wp:group -->','Blog Home','Displays the latest posts as either the site homepage or as the \"Posts page\" as defined under reading settings. If it exists, the Front Page template overrides this template when posts are shown on the homepage.','inherit','closed','closed','','59-revision-v1','','','2024-06-25 05:12:03','2024-06-25 05:12:03','',59,'http://192.168.139.10/?p=69',0,'revision','',0),(70,1,'2024-06-25 05:18:33','2024-06-25 05:18:33','<!-- wp:template-part {\"slug\":\"header\",\"theme\":\"twentytwentyfour\",\"tagName\":\"header\",\"area\":\"header\"} /-->\n\n<!-- wp:group {\"tagName\":\"main\",\"style\":{\"spacing\":{\"blockGap\":\"0\",\"margin\":{\"top\":\"0\"}}},\"layout\":{\"type\":\"default\"}} -->\n<main class=\"wp-block-group\" style=\"margin-top:0\"><!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|50\",\"bottom\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|50\",\"right\":\"var:preset|spacing|50\"}}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"\",\"wideSize\":\"\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:image {\"id\":68,\"width\":\"177px\",\"height\":\"auto\",\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-image aligncenter size-full is-resized\"><img src=\"http://192.168.139.10/wp-content/uploads/2024/06/8597a75de87c8f2ef7afb18fb813441b.gif\" alt=\"\" class=\"wp-image-68\" style=\"width:177px;height:auto\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"565px\"}} -->\n<div class=\"wp-block-group\"><!-- wp:spacer {\"height\":\"1.25rem\"} -->\n<div style=\"height:1.25rem\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#da6666\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-background wp-element-button\" href=\"http://192.168.139.10/?page_id=62\" style=\"background-color:#da6666\">CCCR 입장</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"var:preset|spacing|30\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--30)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group --></main>\n<!-- /wp:group -->','Blog Home','Displays the latest posts as either the site homepage or as the \"Posts page\" as defined under reading settings. If it exists, the Front Page template overrides this template when posts are shown on the homepage.','inherit','closed','closed','','59-revision-v1','','','2024-06-25 05:18:33','2024-06-25 05:18:33','',59,'http://192.168.139.10/?p=70',0,'revision','',0),(72,1,'2024-06-25 05:20:58','2024-06-25 05:20:58','<!-- wp:spacer {\"height\":\"var:preset|spacing|50\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--50)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:heading {\"level\":1,\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.2\"}},\"fontSize\":\"xx-large\"} -->\n<h1 class=\"wp-block-heading alignwide has-xx-large-font-size\" style=\"line-height:1.2\">I’m <em>Leia Acosta</em>, a passionate photographer who finds inspiration in capturing the fleeting beauty of life.</h1>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->','dddddddd','','inherit','closed','closed','','62-revision-v1','','','2024-06-25 05:20:58','2024-06-25 05:20:58','',62,'http://192.168.139.10/?p=72',0,'revision','',0),(73,1,'2024-06-25 05:22:50','2024-06-25 05:22:50','<!-- wp:spacer {\"height\":\"var:preset|spacing|50\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--50)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"style\":{\"position\":{\"type\":\"\"}},\"layout\":{\"type\":\"constrained\"},\"fontSize\":\"x-large\"} -->\n<div class=\"wp-block-group alignwide has-x-large-font-size\"><!-- wp:heading {\"level\":1,\"style\":{\"typography\":{\"lineHeight\":\"1.2\"}},\"fontSize\":\"large\"} -->\n<h1 class=\"wp-block-heading has-large-font-size\" style=\"line-height:1.2\">I’m <em>Leia Acosta</em>, a passionate photographer who finds inspiration in capturing the fleeting beauty of life.</h1>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','62-revision-v1','','','2024-06-25 05:22:50','2024-06-25 05:22:50','',62,'http://192.168.139.10/?p=73',0,'revision','',0),(74,1,'2024-06-25 05:44:48','2024-06-25 05:44:48','<!-- wp:template-part {\"slug\":\"header\",\"theme\":\"twentytwentyfour\",\"tagName\":\"header\",\"area\":\"header\"} /-->\n\n<!-- wp:group {\"tagName\":\"main\"} -->\n<main class=\"wp-block-group\"><!-- wp:post-content {\"lock\":{\"move\":false,\"remove\":true},\"layout\":{\"type\":\"constrained\"}} /--></main>\n<!-- /wp:group -->','Pages','Displays a static page unless a custom template has been applied to that page or a dedicated template exists.','publish','closed','closed','','page','','','2024-06-25 05:45:39','2024-06-25 05:45:39','',0,'http://192.168.139.10/?p=74',0,'wp_template','',0),(75,1,'2024-06-25 05:45:39','2024-06-25 05:45:39','<!-- wp:template-part {\"slug\":\"header\",\"theme\":\"twentytwentyfour\",\"tagName\":\"header\",\"area\":\"header\"} /-->\n\n<!-- wp:group {\"tagName\":\"main\"} -->\n<main class=\"wp-block-group\"><!-- wp:post-content {\"lock\":{\"move\":false,\"remove\":true},\"layout\":{\"type\":\"constrained\"}} /--></main>\n<!-- /wp:group -->','Pages','Displays a static page unless a custom template has been applied to that page or a dedicated template exists.','inherit','closed','closed','','74-revision-v1','','','2024-06-25 05:45:39','2024-06-25 05:45:39','',74,'http://192.168.139.10/?p=75',0,'revision','',0),(76,1,'2024-06-25 05:53:58','2024-06-25 05:53:58','<!-- wp:spacer {\"height\":\"var:preset|spacing|50\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--50)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"style\":{\"position\":{\"type\":\"\"}},\"layout\":{\"type\":\"constrained\"},\"fontSize\":\"x-large\"} -->\n<div class=\"wp-block-group alignwide has-x-large-font-size\"><!-- wp:heading {\"level\":1,\"style\":{\"typography\":{\"lineHeight\":\"1.2\"}},\"className\":\"is-style-default\",\"fontSize\":\"large\"} -->\n<h1 class=\"wp-block-heading is-style-default has-large-font-size\" style=\"line-height:1.2\">I’m <em>Leia Acosta</em>, a passionate photographer who finds inspiration in capturing the fleeting beauty of life.</h1>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','62-autosave-v1','','','2024-06-25 05:53:58','2024-06-25 05:53:58','',62,'http://192.168.139.10/?p=76',0,'revision','',0),(77,1,'2024-06-25 05:55:41','2024-06-25 05:55:41','<!-- wp:spacer {\"height\":\"var:preset|spacing|50\",\"style\":{\"layout\":[]}} -->\n<div style=\"height:var(--wp--preset--spacing--50)\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"style\":{\"position\":{\"type\":\"\"}},\"layout\":{\"type\":\"default\"},\"fontSize\":\"x-large\"} -->\n<div class=\"wp-block-group alignwide has-x-large-font-size\"><!-- wp:heading {\"level\":1,\"style\":{\"typography\":{\"lineHeight\":\"1.2\"}},\"fontSize\":\"large\"} -->\n<h1 class=\"wp-block-heading has-large-font-size\" style=\"line-height:1.2\">I’m <em>Leia Acosta</em>, a passionate photographer who finds inspiration in capturing the fleeting beauty of life.</h1>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->','','','inherit','closed','closed','','62-revision-v1','','','2024-06-25 05:55:41','2024-06-25 05:55:41','',62,'http://192.168.139.10/?p=77',0,'revision','',0),(78,1,'2024-06-25 06:27:59','2024-06-25 06:27:59','aaaaaaaaaaaaaaaaaa','aaaaaaaaa','','publish','closed','closed','','4','','','2024-06-25 06:27:59','2024-06-25 06:27:59','',3,'http://192.168.139.10/?kboard_content_redirect=4',0,'kboard','',0),(79,1,'2024-06-25 06:28:10','2024-06-25 06:28:10','bbbbbbbbbbbbbbbbbb','bbbbbbbbbbb','','publish','closed','closed','','5','','','2024-06-25 06:28:10','2024-06-25 06:28:10','',3,'http://192.168.139.10/?kboard_content_redirect=5',0,'kboard','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(6,2,0),(28,3,0),(30,3,0),(30,4,0),(31,3,0),(31,5,0),(34,6,0),(53,1,0),(56,3,0),(59,2,0),(60,1,0),(74,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0),(2,2,'wp_theme','',0,3),(3,3,'wp_theme','',0,4),(4,4,'wp_template_part_area','',0,1),(5,5,'wp_template_part_area','',0,1),(6,6,'wp_theme','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'twentytwentyfour','twentytwentyfour',0),(3,'twentytwentytwo','twentytwentytwo',0),(4,'header','header',0),(5,'footer','footer',0),(6,'twentytwentythree','twentytwentythree',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','testuser'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers','theme_editor_notice'),(15,1,'show_welcome_panel','0'),(17,1,'wp_dashboard_quick_press_last_post_id','4'),(18,1,'wp_persisted_preferences','a:4:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-06-25T07:32:23.306Z\";s:4:\"core\";a:2:{s:29:\"isTemplatePartMoveHintVisible\";b:0;s:10:\"openPanels\";a:1:{i:0;s:14:\"featured-image\";}}s:14:\"core/edit-site\";a:4:{s:12:\"welcomeGuide\";b:0;s:26:\"isComplementaryAreaVisible\";b:0;s:16:\"welcomeGuidePage\";b:0;s:18:\"welcomeGuideStyles\";b:0;}}'),(19,1,'wp_user-settings','libraryContent=browse'),(20,1,'wp_user-settings-time','1719287193'),(23,1,'session_tokens','a:1:{s:64:\"ab1e0d6eab8b88565150282162b54abf649ea07afc0233646bccaf54bca03ff2\";a:4:{s:10:\"expiration\";i:1720167580;s:2:\"ip\";s:13:\"192.168.139.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36\";s:5:\"login\";i:1719994780;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'testuser','$P$BMlsYHKbhrQr2i1Iz7fFEUnEWD3b/p0','testuser','css926@gmail.com','http://192.168.139.10','2024-06-24 08:41:51','',0,'testuser');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-03 17:52:21
