-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-01-20 18:16:07','2020-01-20 18:16:07','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (2,10,'ActionScheduler','','','','2020-01-20 18:44:07','2020-01-20 18:44:07','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (3,10,'ActionScheduler','','','','2020-01-20 18:45:48','2020-01-20 18:45:48','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (4,10,'ActionScheduler','','','','2020-01-20 18:45:48','2020-01-20 18:45:48','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (5,11,'ActionScheduler','','','','2020-01-20 18:45:48','2020-01-20 18:45:48','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (6,12,'ActionScheduler','','','','2020-01-20 19:11:56','2020-01-20 19:11:56','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (7,12,'ActionScheduler','','','','2020-01-20 19:11:58','2020-01-20 19:11:58','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (8,12,'ActionScheduler','','','','2020-01-20 19:11:58','2020-01-20 19:11:58','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (9,11,'ActionScheduler','','','','2020-01-20 19:46:00','2020-01-20 19:46:00','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (10,11,'ActionScheduler','','','','2020-01-20 19:46:00','2020-01-20 19:46:00','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (11,19,'ActionScheduler','','','','2020-01-20 19:46:00','2020-01-20 19:46:00','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (12,19,'ActionScheduler','','','','2020-01-27 22:14:31','2020-01-27 22:14:31','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (13,19,'ActionScheduler','','','','2020-01-27 22:14:31','2020-01-27 22:14:31','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (14,24,'ActionScheduler','','','','2020-01-27 22:14:31','2020-01-27 22:14:31','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (15,24,'ActionScheduler','','','','2020-01-27 23:46:49','2020-01-27 23:46:49','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (16,24,'ActionScheduler','','','','2020-01-27 23:46:49','2020-01-27 23:46:49','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (17,35,'ActionScheduler','','','','2020-01-27 23:46:49','2020-01-27 23:46:49','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (18,40,'ActionScheduler','','','','2020-01-27 23:54:52','2020-01-27 23:54:52','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (19,40,'ActionScheduler','','','','2020-01-27 23:54:58','2020-01-27 23:54:58','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (20,40,'ActionScheduler','','','','2020-01-27 23:54:59','2020-01-27 23:54:59','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (21,35,'ActionScheduler','','','','2020-01-28 00:47:41','2020-01-28 00:47:41','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (22,35,'ActionScheduler','','','','2020-01-28 00:47:41','2020-01-28 00:47:41','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (23,51,'ActionScheduler','','','','2020-01-28 00:47:41','2020-01-28 00:47:41','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (24,51,'ActionScheduler','','','','2020-01-28 03:36:46','2020-01-28 03:36:46','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (25,51,'ActionScheduler','','','','2020-01-28 03:36:46','2020-01-28 03:36:46','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (26,52,'ActionScheduler','','','','2020-01-28 03:36:46','2020-01-28 03:36:46','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (27,52,'ActionScheduler','','','','2020-01-28 04:37:26','2020-01-28 04:37:26','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (28,52,'ActionScheduler','','','','2020-01-28 04:37:26','2020-01-28 04:37:26','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (29,53,'ActionScheduler','','','','2020-01-28 04:37:26','2020-01-28 04:37:26','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (30,53,'ActionScheduler','','','','2020-02-01 19:07:50','2020-02-01 19:07:50','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (31,53,'ActionScheduler','','','','2020-02-01 19:07:50','2020-02-01 19:07:50','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (32,54,'ActionScheduler','','','','2020-02-01 19:07:50','2020-02-01 19:07:50','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (33,54,'ActionScheduler','','','','2020-02-01 20:08:42','2020-02-01 20:08:42','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (34,54,'ActionScheduler','','','','2020-02-01 20:08:42','2020-02-01 20:08:42','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (35,57,'ActionScheduler','','','','2020-02-01 20:08:42','2020-02-01 20:08:42','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (36,57,'ActionScheduler','','','','2020-02-01 21:09:50','2020-02-01 21:09:50','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (37,57,'ActionScheduler','','','','2020-02-01 21:09:50','2020-02-01 21:09:50','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (38,58,'ActionScheduler','','','','2020-02-01 21:09:50','2020-02-01 21:09:50','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (39,59,'ActionScheduler','','','','2020-02-01 21:27:30','2020-02-01 21:27:30','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (40,60,'ActionScheduler','','','','2020-02-01 21:27:30','2020-02-01 21:27:30','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (41,59,'ActionScheduler','','','','2020-02-01 21:27:30','2020-02-01 21:27:30','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (42,61,'ActionScheduler','','','','2020-02-01 21:27:30','2020-02-01 21:27:30','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (43,59,'ActionScheduler','','','','2020-02-01 21:27:30','2020-02-01 21:27:30','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (44,60,'ActionScheduler','','','','2020-02-01 21:27:58','2020-02-01 21:27:58','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (45,60,'ActionScheduler','','','','2020-02-01 21:27:58','2020-02-01 21:27:58','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (46,61,'ActionScheduler','','','','2020-02-01 21:27:58','2020-02-01 21:27:58','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (47,61,'ActionScheduler','','','','2020-02-01 21:27:58','2020-02-01 21:27:58','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (48,58,'ActionScheduler','','','','2020-02-01 22:13:03','2020-02-01 22:13:03','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (49,58,'ActionScheduler','','','','2020-02-01 22:13:03','2020-02-01 22:13:03','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (50,67,'ActionScheduler','','','','2020-02-01 22:13:03','2020-02-01 22:13:03','action created',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (51,67,'ActionScheduler','','','','2020-02-01 23:13:37','2020-02-01 23:13:37','action started',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (52,67,'ActionScheduler','','','','2020-02-01 23:13:37','2020-02-01 23:13:37','action complete',0,'1','ActionScheduler','action_log',0,0);
INSERT INTO `wp_comments` VALUES (53,75,'ActionScheduler','','','','2020-02-01 23:13:37','2020-02-01 23:13:37','action created',0,'1','ActionScheduler','action_log',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1059 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://dog-adorer.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://dog-adorer.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Dog Adorer','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','flaugher@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:155:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=62&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:8:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:37:\"homepage-control/homepage-control.php\";i:2;s:19:\"jetpack/jetpack.php\";i:3;s:23:\"ml-slider/ml-slider.php\";i:4;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:5;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:6;s:45:\"woocommerce-services/woocommerce-services.php\";i:7;s:27:\"woocommerce/woocommerce.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:3:{i:0;s:117:\"/Users/flaugher/projects/wordpress/udemy_woocommerce/dog_adorer/app/public/wp-content/themes/storefront/functions.php\";i:1;s:113:\"/Users/flaugher/projects/wordpress/udemy_woocommerce/dog_adorer/app/public/wp-content/themes/storefront/style.css\";i:2;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','storefront','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','storefront','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:2:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','62','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1595096167','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:17:{i:1580599137;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1580600621;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580600646;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580601600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580602417;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1580602568;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580607483;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580624168;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580667368;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580668085;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580668086;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580669046;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580672283;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580672293;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580683083;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581888478;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','3j}B+#}MO9`GZK`_7~G(t@P6SIhP2]{c-BbaKk>)i;+;zw]=0=tZG@>c$KThVPEt','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','QQrG1R$T*NOLp>_P:`IR(s@?q,Qu V<YYePPr%2*K`myk:]%Uy0!Diowt).yprb?','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (117,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1580595830;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579545324;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (131,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (142,'current_theme','Storefront','yes');
INSERT INTO `wp_options` VALUES (143,'theme_mods_twentyseventeen','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579545838;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (144,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (152,'woocommerce_store_address','11111 Jefferson Blvd.','yes');
INSERT INTO `wp_options` VALUES (153,'woocommerce_store_address_2','','yes');
INSERT INTO `wp_options` VALUES (154,'woocommerce_store_city','Culver City','yes');
INSERT INTO `wp_options` VALUES (155,'woocommerce_default_country','US:CA','yes');
INSERT INTO `wp_options` VALUES (156,'woocommerce_store_postcode','90230','yes');
INSERT INTO `wp_options` VALUES (157,'woocommerce_allowed_countries','all','yes');
INSERT INTO `wp_options` VALUES (158,'woocommerce_all_except_countries','','yes');
INSERT INTO `wp_options` VALUES (159,'woocommerce_specific_allowed_countries','','yes');
INSERT INTO `wp_options` VALUES (160,'woocommerce_ship_to_countries','','yes');
INSERT INTO `wp_options` VALUES (161,'woocommerce_specific_ship_to_countries','','yes');
INSERT INTO `wp_options` VALUES (162,'woocommerce_default_customer_address','geolocation','yes');
INSERT INTO `wp_options` VALUES (163,'woocommerce_calc_taxes','yes','yes');
INSERT INTO `wp_options` VALUES (164,'woocommerce_enable_coupons','yes','yes');
INSERT INTO `wp_options` VALUES (165,'woocommerce_calc_discounts_sequentially','no','no');
INSERT INTO `wp_options` VALUES (166,'woocommerce_currency','USD','yes');
INSERT INTO `wp_options` VALUES (167,'woocommerce_currency_pos','left','yes');
INSERT INTO `wp_options` VALUES (168,'woocommerce_price_thousand_sep',',','yes');
INSERT INTO `wp_options` VALUES (169,'woocommerce_price_decimal_sep','.','yes');
INSERT INTO `wp_options` VALUES (170,'woocommerce_price_num_decimals','2','yes');
INSERT INTO `wp_options` VALUES (171,'woocommerce_shop_page_id','6','yes');
INSERT INTO `wp_options` VALUES (172,'woocommerce_cart_redirect_after_add','no','yes');
INSERT INTO `wp_options` VALUES (173,'woocommerce_enable_ajax_add_to_cart','yes','yes');
INSERT INTO `wp_options` VALUES (174,'woocommerce_placeholder_image','56','yes');
INSERT INTO `wp_options` VALUES (175,'woocommerce_weight_unit','oz','yes');
INSERT INTO `wp_options` VALUES (176,'woocommerce_dimension_unit','in','yes');
INSERT INTO `wp_options` VALUES (177,'woocommerce_enable_reviews','yes','yes');
INSERT INTO `wp_options` VALUES (178,'woocommerce_review_rating_verification_label','yes','no');
INSERT INTO `wp_options` VALUES (179,'woocommerce_review_rating_verification_required','no','no');
INSERT INTO `wp_options` VALUES (180,'woocommerce_enable_review_rating','yes','yes');
INSERT INTO `wp_options` VALUES (181,'woocommerce_review_rating_required','yes','no');
INSERT INTO `wp_options` VALUES (182,'woocommerce_manage_stock','yes','yes');
INSERT INTO `wp_options` VALUES (183,'woocommerce_hold_stock_minutes','60','no');
INSERT INTO `wp_options` VALUES (184,'woocommerce_notify_low_stock','yes','no');
INSERT INTO `wp_options` VALUES (185,'woocommerce_notify_no_stock','yes','no');
INSERT INTO `wp_options` VALUES (186,'woocommerce_stock_email_recipient','flaugher@gmail.com','no');
INSERT INTO `wp_options` VALUES (187,'woocommerce_notify_low_stock_amount','2','no');
INSERT INTO `wp_options` VALUES (188,'woocommerce_notify_no_stock_amount','0','yes');
INSERT INTO `wp_options` VALUES (189,'woocommerce_hide_out_of_stock_items','no','yes');
INSERT INTO `wp_options` VALUES (190,'woocommerce_stock_format','','yes');
INSERT INTO `wp_options` VALUES (191,'woocommerce_file_download_method','force','no');
INSERT INTO `wp_options` VALUES (192,'woocommerce_downloads_require_login','no','no');
INSERT INTO `wp_options` VALUES (193,'woocommerce_downloads_grant_access_after_payment','yes','no');
INSERT INTO `wp_options` VALUES (194,'woocommerce_prices_include_tax','no','yes');
INSERT INTO `wp_options` VALUES (195,'woocommerce_tax_based_on','shipping','yes');
INSERT INTO `wp_options` VALUES (196,'woocommerce_shipping_tax_class','inherit','yes');
INSERT INTO `wp_options` VALUES (197,'woocommerce_tax_round_at_subtotal','no','yes');
INSERT INTO `wp_options` VALUES (198,'woocommerce_tax_classes','','yes');
INSERT INTO `wp_options` VALUES (199,'woocommerce_tax_display_shop','excl','yes');
INSERT INTO `wp_options` VALUES (200,'woocommerce_tax_display_cart','excl','yes');
INSERT INTO `wp_options` VALUES (201,'woocommerce_price_display_suffix','','yes');
INSERT INTO `wp_options` VALUES (202,'woocommerce_tax_total_display','itemized','no');
INSERT INTO `wp_options` VALUES (203,'woocommerce_enable_shipping_calc','yes','no');
INSERT INTO `wp_options` VALUES (204,'woocommerce_shipping_cost_requires_address','no','yes');
INSERT INTO `wp_options` VALUES (205,'woocommerce_ship_to_destination','billing','no');
INSERT INTO `wp_options` VALUES (206,'woocommerce_shipping_debug_mode','no','yes');
INSERT INTO `wp_options` VALUES (207,'woocommerce_enable_guest_checkout','yes','no');
INSERT INTO `wp_options` VALUES (208,'woocommerce_enable_checkout_login_reminder','no','no');
INSERT INTO `wp_options` VALUES (209,'woocommerce_enable_signup_and_login_from_checkout','no','no');
INSERT INTO `wp_options` VALUES (210,'woocommerce_enable_myaccount_registration','no','no');
INSERT INTO `wp_options` VALUES (211,'woocommerce_registration_generate_username','yes','no');
INSERT INTO `wp_options` VALUES (212,'woocommerce_registration_generate_password','yes','no');
INSERT INTO `wp_options` VALUES (213,'woocommerce_erasure_request_removes_order_data','no','no');
INSERT INTO `wp_options` VALUES (214,'woocommerce_erasure_request_removes_download_data','no','no');
INSERT INTO `wp_options` VALUES (215,'woocommerce_allow_bulk_remove_personal_data','no','no');
INSERT INTO `wp_options` VALUES (216,'woocommerce_registration_privacy_policy_text','Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (217,'woocommerce_checkout_privacy_policy_text','Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (218,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (219,'woocommerce_trash_pending_orders','','no');
INSERT INTO `wp_options` VALUES (220,'woocommerce_trash_failed_orders','','no');
INSERT INTO `wp_options` VALUES (221,'woocommerce_trash_cancelled_orders','','no');
INSERT INTO `wp_options` VALUES (222,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (223,'woocommerce_email_from_name','Dog Adorer','no');
INSERT INTO `wp_options` VALUES (224,'woocommerce_email_from_address','flaugher@gmail.com','no');
INSERT INTO `wp_options` VALUES (225,'woocommerce_email_header_image','','no');
INSERT INTO `wp_options` VALUES (226,'woocommerce_email_footer_text','{site_title} &mdash; Built with {WooCommerce}','no');
INSERT INTO `wp_options` VALUES (227,'woocommerce_email_base_color','#96588a','no');
INSERT INTO `wp_options` VALUES (228,'woocommerce_email_background_color','#f7f7f7','no');
INSERT INTO `wp_options` VALUES (229,'woocommerce_email_body_background_color','#ffffff','no');
INSERT INTO `wp_options` VALUES (230,'woocommerce_email_text_color','#3c3c3c','no');
INSERT INTO `wp_options` VALUES (231,'woocommerce_cart_page_id','7','no');
INSERT INTO `wp_options` VALUES (232,'woocommerce_checkout_page_id','8','no');
INSERT INTO `wp_options` VALUES (233,'woocommerce_myaccount_page_id','9','no');
INSERT INTO `wp_options` VALUES (234,'woocommerce_terms_page_id','','no');
INSERT INTO `wp_options` VALUES (235,'woocommerce_force_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (236,'woocommerce_unforce_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (237,'woocommerce_checkout_pay_endpoint','order-pay','yes');
INSERT INTO `wp_options` VALUES (238,'woocommerce_checkout_order_received_endpoint','order-received','yes');
INSERT INTO `wp_options` VALUES (239,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes');
INSERT INTO `wp_options` VALUES (240,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes');
INSERT INTO `wp_options` VALUES (241,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes');
INSERT INTO `wp_options` VALUES (242,'woocommerce_myaccount_orders_endpoint','orders','yes');
INSERT INTO `wp_options` VALUES (243,'woocommerce_myaccount_view_order_endpoint','view-order','yes');
INSERT INTO `wp_options` VALUES (244,'woocommerce_myaccount_downloads_endpoint','downloads','yes');
INSERT INTO `wp_options` VALUES (245,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes');
INSERT INTO `wp_options` VALUES (246,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes');
INSERT INTO `wp_options` VALUES (247,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes');
INSERT INTO `wp_options` VALUES (248,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes');
INSERT INTO `wp_options` VALUES (249,'woocommerce_logout_endpoint','customer-logout','yes');
INSERT INTO `wp_options` VALUES (250,'woocommerce_api_enabled','no','yes');
INSERT INTO `wp_options` VALUES (251,'woocommerce_allow_tracking','no','no');
INSERT INTO `wp_options` VALUES (252,'woocommerce_show_marketplace_suggestions','yes','no');
INSERT INTO `wp_options` VALUES (253,'woocommerce_single_image_width','600','yes');
INSERT INTO `wp_options` VALUES (254,'woocommerce_thumbnail_image_width','300','yes');
INSERT INTO `wp_options` VALUES (255,'woocommerce_checkout_highlight_required_fields','yes','yes');
INSERT INTO `wp_options` VALUES (256,'woocommerce_demo_store','no','no');
INSERT INTO `wp_options` VALUES (257,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (258,'current_theme_supports_woocommerce','yes','yes');
INSERT INTO `wp_options` VALUES (259,'woocommerce_queue_flush_rewrite_rules','no','yes');
INSERT INTO `wp_options` VALUES (262,'default_product_cat','15','yes');
INSERT INTO `wp_options` VALUES (267,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (268,'woocommerce_admin_notices','a:1:{i:1;s:20:\"no_secure_connection\";}','yes');
INSERT INTO `wp_options` VALUES (269,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (270,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (271,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (272,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (273,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (274,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (275,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (276,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (277,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (278,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (279,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (280,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (281,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (285,'woocommerce_meta_box_errors','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (292,'woocommerce_product_type','both','yes');
INSERT INTO `wp_options` VALUES (293,'woocommerce_stripe_settings','a:3:{s:7:\"enabled\";s:2:\"no\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (295,'woocommerce_ppec_paypal_settings','a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (296,'woocommerce_cheque_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (297,'woocommerce_bacs_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (298,'woocommerce_cod_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (299,'wc_ppec_version','1.6.18','yes');
INSERT INTO `wp_options` VALUES (306,'woocommerce_setup_shipping_labels','1','yes');
INSERT INTO `wp_options` VALUES (309,'jetpack_activated','1','yes');
INSERT INTO `wp_options` VALUES (312,'jetpack_activation_source','a:2:{i:0;s:7:\"unknown\";i:1;N;}','yes');
INSERT INTO `wp_options` VALUES (313,'jetpack_options','a:2:{s:7:\"version\";s:14:\"8.1:1579545821\";s:11:\"old_version\";s:14:\"8.1:1579545821\";}','yes');
INSERT INTO `wp_options` VALUES (314,'jetpack_sync_settings_disable','0','yes');
INSERT INTO `wp_options` VALUES (319,'do_activate','0','yes');
INSERT INTO `wp_options` VALUES (324,'woocommerce_setup_automated_taxes','1','yes');
INSERT INTO `wp_options` VALUES (328,'theme_mods_storefront','a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"secondary\";i:17;s:7:\"primary\";i:18;}s:18:\"custom_css_post_id\";i:-1;s:34:\"storefront_header_background_color\";s:7:\"#ffffff\";s:28:\"storefront_header_text_color\";s:7:\"#404040\";s:11:\"custom_logo\";i:26;s:28:\"storefront_header_link_color\";s:7:\"#000000\";s:16:\"homepage_control\";s:242:\"[disabled]storefront_homepage_content,[disabled]storefront_product_categories,storefront_recent_products,[disabled]storefront_featured_products,[disabled]storefront_popular_products,storefront_on_sale_products,storefront_best_selling_products\";}','yes');
INSERT INTO `wp_options` VALUES (330,'storefront_nux_fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (331,'woocommerce_catalog_rows','4','yes');
INSERT INTO `wp_options` VALUES (332,'woocommerce_catalog_columns','3','yes');
INSERT INTO `wp_options` VALUES (333,'woocommerce_maybe_regenerate_images_hash','27acde77266b4d2a3491118955cb3f66','yes');
INSERT INTO `wp_options` VALUES (335,'wc_admin_install_timestamp','1579545847','yes');
INSERT INTO `wp_options` VALUES (340,'wc_admin_version','0.24.0','yes');
INSERT INTO `wp_options` VALUES (341,'_transient_product_query-transient-version','1580598817','yes');
INSERT INTO `wp_options` VALUES (345,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1580595831;s:7:\"checked\";a:5:{s:10:\"storefront\";s:5:\"2.5.3\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (348,'_transient_timeout_jetpack_file_data_8.1','1582051486','no');
INSERT INTO `wp_options` VALUES (349,'_transient_jetpack_file_data_8.1','a:51:{s:32:\"212a162108f1dc20cc6c768d5b47d4f2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3576702faeb399eb47ad20f586c3804\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"55409a5f8388b8d33e2350ef80de3ea3\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e914e6d31cb61f5a9ef86e1b9573430e\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:81:\"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1b8c61705fb18eb8c8584c9f9cdffd9\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4fca6eb23a793155d69fdb119a094926\";a:14:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:77:\"Enable the option to copy entire posts and pages, including tags and settings\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cfdac01e3c3c529f93a8f49edef1f5db\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4b9137ecf507290743735fb1f94535df\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"95d75b38d76d2ee1b5b537026eadb8ff\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1bb571a95c5de1e6adaf9db8567c039\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"822f9ef1281dace3fb7cc420c77d24e0\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"c167275f926ef0eefaec9a679bd88d34\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"58cbd4585a74829a1c88aa9c295f3993\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d4a35eabc948caefad71a0d3303b95c8\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7b0c670bc3f8209dc83abb8610e23a89\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:74:\"Use the LaTeX markup language to write mathematical equations and formulas\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b00e4e6c109ce6f77b5c83fbaaaead4c\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8e46c72906c928eca634ac2c8b1bc84f\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2df2264a07aff77e0556121e33349dce\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0337eacae47d30c946cb9fc4e5ece649\";a:14:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cb5d81445061b89d19cb9c7754697a39\";a:14:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ea0fbbd64080c81a90a784924603588c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5c53fdb3633ba3232f60180116900273\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"40b97d9ce396339d3e8e46b833a045b5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0739df64747f2d02c140f23ce6c19cd8\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c54bb0a65b39f1316da8632197a88a4e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:118:\"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cc013f4c5480c7bdc1e7edb2f410bf3c\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b3b34928b1e549bb52f866accc0450c5\";a:14:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"714284944f56d6936a40f3309900bc8e\";a:14:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"348754bc914ee02c72d9af445627784c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"041704e207c4c59eea93e0499c908bff\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"26e6cb3e08a6cfd0811c17e7c633c72c\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:151:\"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"915a504082f797395713fd01e0e2e713\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a7b21cc562ee9ffa357bba19701fe45b\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9243c1a718566213f4eaf3b44cf14b07\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"583e4cda5596ee1b28a19cde33f438be\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:87:\"Enhanced search, powered by Elasticsearch, a powerful replacement for WordPress search.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"15346c1f7f2a5f29d34378774ecfa830\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"72a0ff4cfae86074a7cdd2dcd432ef11\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"bb8c6c190aaec212a7ab6e940165af4d\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"1abd31fe07ae4fb0f8bb57dc24592219\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:82:\"Generates shorter links so you can have more space to write on social media sites.\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cae5f097f8d658e0b0ae50733d7c6476\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e9b8318133b2f95e7906cedb3557a87d\";a:14:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:63:\"Allow users to log in to this site using WordPress.com accounts\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"17e66a12031ccf11d8d45ceee0955f05\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"346cf9756e7c1252acecb9a8ca81a21c\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:58:\"Let visitors subscribe to new posts and comments via email\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4f84d218792a6efa06ed6feae09c4dd5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ca086af79d0d9dccacc934ccff5b4fd7\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"43c24feb7c541c376af93e0251c1a261\";a:14:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:27:\"personal, business, premium\";}s:32:\"b9396d8038fc29140b499098d2294d79\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"afe184082e106c1bdfe1ee844f98aef3\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"44637d43460370af9a1b31ce3ccec0cd\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"694c105a5c3b659acfcddad220048d08\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ae15da72c5802d72f320640bad669561\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}}','no');
INSERT INTO `wp_options` VALUES (350,'jetpack_available_modules','a:1:{s:5:\"8.1.1\";a:42:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}','yes');
INSERT INTO `wp_options` VALUES (351,'jetpack_ab_connect_banner_green_bar','b','yes');
INSERT INTO `wp_options` VALUES (352,'_transient_shipping-transient-version','1579545887','yes');
INSERT INTO `wp_options` VALUES (353,'_transient_timeout_wc_shipping_method_count','1582137887','no');
INSERT INTO `wp_options` VALUES (354,'_transient_wc_shipping_method_count','a:2:{s:7:\"version\";s:10:\"1579545887\";s:5:\"value\";i:0;}','no');
INSERT INTO `wp_options` VALUES (364,'jetpack_dismissed_connection_banner','1','yes');
INSERT INTO `wp_options` VALUES (368,'storefront_nux_dismissed','1','yes');
INSERT INTO `wp_options` VALUES (395,'woocommerce_marketplace_suggestions','a:2:{s:11:\"suggestions\";a:28:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:8:{s:4:\"slug\";s:27:\"orders-empty-stripe-payment\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}i:19;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:20;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:21;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:22;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:23;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:24;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:25;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:26;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}i:27;a:8:{s:4:\"slug\";s:29:\"products-empty-stripe-payment\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}}s:7:\"updated\";i:1580169298;}','no');
INSERT INTO `wp_options` VALUES (413,'storefront_nux_guided_tour','1','yes');
INSERT INTO `wp_options` VALUES (455,'_transient_timeout_external_ip_address_127.0.0.1','1580768070','no');
INSERT INTO `wp_options` VALUES (456,'_transient_external_ip_address_127.0.0.1','104.238.46.148','no');
INSERT INTO `wp_options` VALUES (478,'_site_transient_timeout_browser_ff9d23aa277001af0ee373a623a537d4','1580768123','no');
INSERT INTO `wp_options` VALUES (479,'_site_transient_browser_ff9d23aa277001af0ee373a623a537d4','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.117\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (480,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1580768123','no');
INSERT INTO `wp_options` VALUES (481,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (499,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (505,'_transient_timeout_wc_shipping_method_count_legacy','1582756653','no');
INSERT INTO `wp_options` VALUES (506,'_transient_wc_shipping_method_count_legacy','a:2:{s:7:\"version\";s:10:\"1579545887\";s:5:\"value\";i:0;}','no');
INSERT INTO `wp_options` VALUES (522,'product_cat_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (553,'_transient_product-transient-version','1580171193','yes');
INSERT INTO `wp_options` VALUES (594,'_transient_timeout_wc_product_children_45','1582762976','no');
INSERT INTO `wp_options` VALUES (595,'_transient_wc_product_children_45','a:2:{s:3:\"all\";a:2:{i:0;i:49;i:1;i:50;}s:7:\"visible\";a:2:{i:0;i:49;i:1;i:50;}}','no');
INSERT INTO `wp_options` VALUES (596,'_transient_timeout_wc_var_prices_45','1582763203','no');
INSERT INTO `wp_options` VALUES (597,'_transient_wc_var_prices_45','{\"version\":\"1580171193\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"49\":\"19.00\",\"50\":\"19.00\"},\"regular_price\":{\"49\":\"29.00\",\"50\":\"29.00\"},\"sale_price\":{\"49\":\"19.00\",\"50\":\"19.00\"}},\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":{\"49\":\"19.00\",\"50\":\"19.00\"},\"regular_price\":{\"49\":\"29.00\",\"50\":\"29.00\"},\"sale_price\":{\"49\":\"19.00\",\"50\":\"19.00\"}}}','no');
INSERT INTO `wp_options` VALUES (598,'_transient_timeout_wc_child_has_weight_45','1582762976','no');
INSERT INTO `wp_options` VALUES (599,'_transient_wc_child_has_weight_45','0','no');
INSERT INTO `wp_options` VALUES (600,'_transient_timeout_wc_child_has_dimensions_45','1582762976','no');
INSERT INTO `wp_options` VALUES (601,'_transient_wc_child_has_dimensions_45','0','no');
INSERT INTO `wp_options` VALUES (612,'_transient_timeout_wc_term_counts','1582763200','no');
INSERT INTO `wp_options` VALUES (613,'_transient_wc_term_counts','a:1:{i:19;s:1:\"2\";}','no');
INSERT INTO `wp_options` VALUES (729,'_transient_timeout__woocommerce_helper_updates','1580627270','no');
INSERT INTO `wp_options` VALUES (730,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1580584070;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no');
INSERT INTO `wp_options` VALUES (741,'_transient_timeout_jetpack_https_test','1580670480','no');
INSERT INTO `wp_options` VALUES (742,'_transient_jetpack_https_test','1','no');
INSERT INTO `wp_options` VALUES (743,'_transient_timeout_jetpack_https_test_message','1580670480','no');
INSERT INTO `wp_options` VALUES (744,'_transient_jetpack_https_test_message','','no');
INSERT INTO `wp_options` VALUES (745,'_site_transient_timeout_browser_66be58e79b67c21d1f271f3121ef1ccd','1581188881','no');
INSERT INTO `wp_options` VALUES (746,'_site_transient_browser_66be58e79b67c21d1f271f3121ef1ccd','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (747,'_transient_timeout_wc_low_stock_count','1583176081','no');
INSERT INTO `wp_options` VALUES (748,'_transient_wc_low_stock_count','0','no');
INSERT INTO `wp_options` VALUES (749,'_transient_timeout_wc_outofstock_count','1583176081','no');
INSERT INTO `wp_options` VALUES (750,'_transient_wc_outofstock_count','0','no');
INSERT INTO `wp_options` VALUES (751,'_transient_timeout_wc_report_sales_by_date','1580682494','no');
INSERT INTO `wp_options` VALUES (752,'_transient_wc_report_sales_by_date','a:8:{s:32:\"a47fb527ad49a96f2c6a71d4b4849542\";a:0:{}s:32:\"ad767dc6e1a74629c77f1c46a7896849\";a:0:{}s:32:\"024a66fde02da47e18378ef7e277b5ee\";a:0:{}s:32:\"f80739517af89746724461aafa16a944\";N;s:32:\"c2bda21371141b64b8172e15e2bf788d\";a:0:{}s:32:\"67facc4cc2b5305fc8e17fef957c2e4c\";a:0:{}s:32:\"6e6b35d950cb582b4a1b72c8d6ad780f\";a:0:{}s:32:\"b65f8580331bf474e5b823e8cc085046\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (753,'_transient_timeout_wc_admin_report','1580682494','no');
INSERT INTO `wp_options` VALUES (754,'_transient_wc_admin_report','a:1:{s:32:\"08a3ad401883eac5a9ab8f0b1f8489b1\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (755,'_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e','1580627283','no');
INSERT INTO `wp_options` VALUES (756,'_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e','a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:5:{i:0;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:58:\"WordCamp Montclair Planning Meeting (Not a Regular Meetup)\";s:3:\"url\";s:71:\"https://www.meetup.com/WordPress-Montclair-Meetup/events/qhkhlrybcdbfb/\";s:6:\"meetup\";s:26:\"WordPress Montclair Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/WordPress-Montclair-Meetup/\";s:4:\"date\";s:19:\"2020-02-03 19:00:00\";s:8:\"end_date\";s:19:\"2020-02-03 21:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Montclair, USA\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:40.811279296875;s:9:\"longitude\";d:-74.219345092772997;}}i:1;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:79:\"Creating Sitemaps for Humans and Search Engines (at GREY SKY FILMS in ROCKAWAY)\";s:3:\"url\";s:73:\"https://www.meetup.com/North-Jersey-WordPress-Group/events/dkcslrybcdbgb/\";s:6:\"meetup\";s:33:\"Morris County NJ WordPress Meetup\";s:10:\"meetup_url\";s:52:\"https://www.meetup.com/North-Jersey-WordPress-Group/\";s:4:\"date\";s:19:\"2020-02-04 18:30:00\";s:8:\"end_date\";s:19:\"2020-02-04 21:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Rockaway, NJ, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:40.900218963622997;s:9:\"longitude\";d:-74.507011413574006;}}i:2;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:67:\"Help Desk - Bring Your Laptop, Yourself and Your WordPress Problems\";s:3:\"url\";s:71:\"https://www.meetup.com/WordPress-Montclair-Meetup/events/vdhdkrybcdbnb/\";s:6:\"meetup\";s:26:\"WordPress Montclair Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/WordPress-Montclair-Meetup/\";s:4:\"date\";s:19:\"2020-02-10 19:00:00\";s:8:\"end_date\";s:19:\"2020-02-10 21:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Montclair, USA\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:40.811279296875;s:9:\"longitude\";d:-74.219345092772997;}}i:3;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:38:\"Brooklyn Volunteer WordPress Help Desk\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPressNYC/events/mvnhnrybcdbtb/\";s:6:\"meetup\";s:26:\"WordPress NYC Meetup Group\";s:10:\"meetup_url\";s:36:\"https://www.meetup.com/WordPressNYC/\";s:4:\"date\";s:19:\"2020-02-15 13:00:00\";s:8:\"end_date\";s:19:\"2020-02-15 15:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Brooklyn, NY, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:40.686950683593999;s:9:\"longitude\";d:-73.985565185547003;}}i:4;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:26:\"WordCamp Lancaster, PA USA\";s:3:\"url\";s:37:\"https://2020.lancasterpa.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-03-14 00:00:00\";s:8:\"end_date\";s:19:\"2020-03-14 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Lancaster, PA USA\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:40.054489500000003;s:9:\"longitude\";d:-76.282538299999999;}}}}','no');
INSERT INTO `wp_options` VALUES (767,'_transient_woocommerce_reports-transient-version','1580584969','yes');
INSERT INTO `wp_options` VALUES (768,'_transient_timeout_wc_report_orders_stats_8040454a5d180e373335581a617b7673','1581189770','no');
INSERT INTO `wp_options` VALUES (769,'_transient_wc_report_orders_stats_8040454a5d180e373335581a617b7673','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 11:22:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 11:22:00\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (770,'_transient_timeout_wc_report_orders_stats_66d691e9e112c96651d399a84ff5501b','1581189770','no');
INSERT INTO `wp_options` VALUES (771,'_transient_wc_report_orders_stats_66d691e9e112c96651d399a84ff5501b','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 11:22:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 11:22:00\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (772,'_transient_timeout_wc_report_orders_stats_8168d0727b47bf3a9d4e961ae786dd33','1581189771','no');
INSERT INTO `wp_options` VALUES (773,'_transient_wc_report_orders_stats_8168d0727b47bf3a9d4e961ae786dd33','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-05\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (774,'_transient_timeout_wc_report_orders_stats_7bdd3d25ec3ee1a1e44e41df799cab8c','1581189771','no');
INSERT INTO `wp_options` VALUES (775,'_transient_wc_report_orders_stats_7bdd3d25ec3ee1a1e44e41df799cab8c','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-05\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (776,'_transient_timeout_wc_report_orders_stats_b84e2a30babe9ff8556a88b2963655a0','1581189771','no');
INSERT INTO `wp_options` VALUES (777,'_transient_wc_report_orders_stats_b84e2a30babe9ff8556a88b2963655a0','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-02-01\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (778,'_transient_timeout_wc_report_orders_stats_90c0e8f85a5b8247438ad84e49b981c5','1581189772','no');
INSERT INTO `wp_options` VALUES (779,'_transient_wc_report_orders_stats_90c0e8f85a5b8247438ad84e49b981c5','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-02-01\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (780,'_transient_timeout_wc_report_orders_stats_237b11ca87ddadf16ff20824694686e4','1581189772','no');
INSERT INTO `wp_options` VALUES (781,'_transient_wc_report_orders_stats_237b11ca87ddadf16ff20824694686e4','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-02-01\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (782,'_transient_timeout_wc_report_orders_stats_0c063b10240fbde46ee8ac2175ac7747','1581189773','no');
INSERT INTO `wp_options` VALUES (783,'_transient_wc_report_orders_stats_0c063b10240fbde46ee8ac2175ac7747','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-02-01\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (784,'_transient_timeout_wc_report_coupons_stats_d968696d17437f75e1fc61fd903431cf','1581189773','no');
INSERT INTO `wp_options` VALUES (785,'_transient_wc_report_coupons_stats_d968696d17437f75e1fc61fd903431cf','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-02-01\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (786,'_transient_timeout_wc_report_coupons_stats_b841ace4a0077c1de078a305f3ee5c16','1581189774','no');
INSERT INTO `wp_options` VALUES (787,'_transient_wc_report_coupons_stats_b841ace4a0077c1de078a305f3ee5c16','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-02-01\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (788,'_transient_timeout_wc_report_taxes_stats_c917072eb149706fc6dd2775600909bc','1581189774','no');
INSERT INTO `wp_options` VALUES (789,'_transient_wc_report_taxes_stats_c917072eb149706fc6dd2775600909bc','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-02-01\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (790,'_transient_timeout_wc_report_taxes_stats_14dd83f00bac1854f5bed01e4ef1223c','1581189774','no');
INSERT INTO `wp_options` VALUES (791,'_transient_wc_report_taxes_stats_14dd83f00bac1854f5bed01e4ef1223c','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-02-01\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (792,'_transient_timeout_wc_report_downloads_stats_4a45d9634d0b77f0e7a056d3e99792da','1581189775','no');
INSERT INTO `wp_options` VALUES (793,'_transient_wc_report_downloads_stats_4a45d9634d0b77f0e7a056d3e99792da','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-02-01\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (794,'_transient_timeout_wc_report_downloads_stats_70995df3cdda8a5357cb0e36c9363715','1581189775','no');
INSERT INTO `wp_options` VALUES (795,'_transient_wc_report_downloads_stats_70995df3cdda8a5357cb0e36c9363715','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-02-01\";s:10:\"date_start\";s:19:\"2019-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-02-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-02-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (806,'_transient_timeout_wc_report_orders_stats_fec6ee84bfaf6f035ea8563cf0bdaff1','1581190431','no');
INSERT INTO `wp_options` VALUES (807,'_transient_wc_report_orders_stats_fec6ee84bfaf6f035ea8563cf0bdaff1','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 11:33:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 11:33:00\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (808,'_transient_timeout_wc_report_orders_stats_8f52b695001f3090c05323f64d17831c','1581190431','no');
INSERT INTO `wp_options` VALUES (809,'_transient_wc_report_orders_stats_8f52b695001f3090c05323f64d17831c','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 11:33:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 11:33:00\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (815,'_transient_timeout_woocommerce_system_status_wp_version_check','1580672072','no');
INSERT INTO `wp_options` VALUES (816,'_transient_woocommerce_system_status_wp_version_check','5.3.2','no');
INSERT INTO `wp_options` VALUES (818,'_transient_timeout_plugin_slugs','1580685517','no');
INSERT INTO `wp_options` VALUES (819,'_transient_plugin_slugs','a:8:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:37:\"homepage-control/homepage-control.php\";i:2;s:19:\"jetpack/jetpack.php\";i:3;s:23:\"ml-slider/ml-slider.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:6;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:7;s:45:\"woocommerce-services/woocommerce-services.php\";}','no');
INSERT INTO `wp_options` VALUES (820,'_transient_timeout_wc_upgrade_notice_3.9.1','1580672116','no');
INSERT INTO `wp_options` VALUES (821,'_transient_wc_upgrade_notice_3.9.1','','no');
INSERT INTO `wp_options` VALUES (826,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"mHau5NUvbC3tNAxNuiWQTXtVx6nTm2F0\";}','yes');
INSERT INTO `wp_options` VALUES (829,'woocommerce_version','3.9.1','yes');
INSERT INTO `wp_options` VALUES (831,'_transient_timeout_jetpack_file_data_8.1.1','1583091484','no');
INSERT INTO `wp_options` VALUES (832,'_transient_jetpack_file_data_8.1.1','a:51:{s:32:\"212a162108f1dc20cc6c768d5b47d4f2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3576702faeb399eb47ad20f586c3804\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"55409a5f8388b8d33e2350ef80de3ea3\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e914e6d31cb61f5a9ef86e1b9573430e\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:81:\"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1b8c61705fb18eb8c8584c9f9cdffd9\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4fca6eb23a793155d69fdb119a094926\";a:14:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:77:\"Enable the option to copy entire posts and pages, including tags and settings\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cfdac01e3c3c529f93a8f49edef1f5db\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4b9137ecf507290743735fb1f94535df\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"95d75b38d76d2ee1b5b537026eadb8ff\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1bb571a95c5de1e6adaf9db8567c039\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"822f9ef1281dace3fb7cc420c77d24e0\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"c167275f926ef0eefaec9a679bd88d34\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"58cbd4585a74829a1c88aa9c295f3993\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d4a35eabc948caefad71a0d3303b95c8\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7b0c670bc3f8209dc83abb8610e23a89\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:74:\"Use the LaTeX markup language to write mathematical equations and formulas\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b00e4e6c109ce6f77b5c83fbaaaead4c\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8e46c72906c928eca634ac2c8b1bc84f\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2df2264a07aff77e0556121e33349dce\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0337eacae47d30c946cb9fc4e5ece649\";a:14:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cb5d81445061b89d19cb9c7754697a39\";a:14:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ea0fbbd64080c81a90a784924603588c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5c53fdb3633ba3232f60180116900273\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"40b97d9ce396339d3e8e46b833a045b5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0739df64747f2d02c140f23ce6c19cd8\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c54bb0a65b39f1316da8632197a88a4e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:118:\"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cc013f4c5480c7bdc1e7edb2f410bf3c\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b3b34928b1e549bb52f866accc0450c5\";a:14:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"714284944f56d6936a40f3309900bc8e\";a:14:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"348754bc914ee02c72d9af445627784c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"041704e207c4c59eea93e0499c908bff\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"26e6cb3e08a6cfd0811c17e7c633c72c\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:151:\"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"915a504082f797395713fd01e0e2e713\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a7b21cc562ee9ffa357bba19701fe45b\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9243c1a718566213f4eaf3b44cf14b07\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"583e4cda5596ee1b28a19cde33f438be\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:87:\"Enhanced search, powered by Elasticsearch, a powerful replacement for WordPress search.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"15346c1f7f2a5f29d34378774ecfa830\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"72a0ff4cfae86074a7cdd2dcd432ef11\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"bb8c6c190aaec212a7ab6e940165af4d\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"1abd31fe07ae4fb0f8bb57dc24592219\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:82:\"Generates shorter links so you can have more space to write on social media sites.\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cae5f097f8d658e0b0ae50733d7c6476\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e9b8318133b2f95e7906cedb3557a87d\";a:14:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:63:\"Allow users to log in to this site using WordPress.com accounts\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"17e66a12031ccf11d8d45ceee0955f05\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"346cf9756e7c1252acecb9a8ca81a21c\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:58:\"Let visitors subscribe to new posts and comments via email\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4f84d218792a6efa06ed6feae09c4dd5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ca086af79d0d9dccacc934ccff5b4fd7\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"43c24feb7c541c376af93e0251c1a261\";a:14:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:27:\"personal, business, premium\";}s:32:\"b9396d8038fc29140b499098d2294d79\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"afe184082e106c1bdfe1ee844f98aef3\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"44637d43460370af9a1b31ce3ccec0cd\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"694c105a5c3b659acfcddad220048d08\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ae15da72c5802d72f320640bad669561\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}}','no');
INSERT INTO `wp_options` VALUES (833,'_transient_wc_attribute_taxonomies','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (853,'_transient_timeout_wc_related_39','1580673301','no');
INSERT INTO `wp_options` VALUES (854,'_transient_wc_related_39','a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=39\";a:1:{i:0;s:2:\"45\";}}','no');
INSERT INTO `wp_options` VALUES (895,'_transient_timeout_woocommerce_test_remote_post','1580595704','no');
INSERT INTO `wp_options` VALUES (896,'_transient_woocommerce_test_remote_post','200','no');
INSERT INTO `wp_options` VALUES (897,'_transient_timeout_woocommerce_test_remote_get','1580595704','no');
INSERT INTO `wp_options` VALUES (898,'_transient_woocommerce_test_remote_get','200','no');
INSERT INTO `wp_options` VALUES (914,'_transient_timeout_wc_report_orders_stats_f400dc342e2981e082d3d4269479359f','1581197285','no');
INSERT INTO `wp_options` VALUES (915,'_transient_wc_report_orders_stats_f400dc342e2981e082d3d4269479359f','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 13:28:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 13:28:00\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (916,'_transient_timeout_wc_report_orders_stats_f119a3ce482418f071f7a7594d58fcb2','1581197285','no');
INSERT INTO `wp_options` VALUES (917,'_transient_wc_report_orders_stats_f119a3ce482418f071f7a7594d58fcb2','a:2:{s:7:\"version\";s:10:\"1580584969\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-05\";s:10:\"date_start\";s:19:\"2020-02-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-02-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-02-01 13:28:00\";s:12:\"date_end_gmt\";s:19:\"2020-02-01 13:28:00\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (937,'_transient_timeout_wc_product_loop_dbaaaa35f2169c63d284795d8e23308c','1583191079','no');
INSERT INTO `wp_options` VALUES (938,'_transient_wc_product_loop_dbaaaa35f2169c63d284795d8e23308c','a:2:{s:7:\"version\";s:10:\"1580598817\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:45;i:1;i:39;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (939,'_transient_timeout_wc_product_loop_93c8b2907cc8ca606083a7a681d1a5b4','1583185552','no');
INSERT INTO `wp_options` VALUES (940,'_transient_wc_product_loop_93c8b2907cc8ca606083a7a681d1a5b4','a:2:{s:7:\"version\";s:10:\"1580593460\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (941,'_transient_timeout_wc_product_loop_cc8a2d32d836d33d4bec83cb31531f7d','1583185552','no');
INSERT INTO `wp_options` VALUES (942,'_transient_wc_product_loop_cc8a2d32d836d33d4bec83cb31531f7d','a:2:{s:7:\"version\";s:10:\"1580593460\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:45;i:1;i:39;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (943,'_transient_timeout_wc_products_onsale','1583185552','no');
INSERT INTO `wp_options` VALUES (944,'_transient_wc_products_onsale','a:3:{i:0;i:49;i:1;i:50;i:2;i:45;}','no');
INSERT INTO `wp_options` VALUES (945,'_transient_timeout_wc_product_loop_612f7088a910e8aba86edc234d984533','1583191079','no');
INSERT INTO `wp_options` VALUES (946,'_transient_wc_product_loop_612f7088a910e8aba86edc234d984533','a:2:{s:7:\"version\";s:10:\"1580598817\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:45;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (947,'_transient_timeout_wc_product_loop_b27d6511cd0b0974ef126df50f877a28','1583191079','no');
INSERT INTO `wp_options` VALUES (948,'_transient_wc_product_loop_b27d6511cd0b0974ef126df50f877a28','a:2:{s:7:\"version\";s:10:\"1580598817\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:45;i:1;i:39;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (958,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1580604989','no');
INSERT INTO `wp_options` VALUES (959,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4662;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3885;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2660;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2537;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1950;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1789;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1771;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1481;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1466;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1461;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1448;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1411;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1385;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1297;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1175;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1159;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1118;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1086;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1084;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:976;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:865;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:864;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:856;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:840;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:782;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:757;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:753;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:751;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:739;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:730;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:711;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:697;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:692;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:691;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:675;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:657;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:641;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:640;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:632;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:625;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:624;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:610;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:581;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:576;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:572;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:569;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:568;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:550;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:541;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:541;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:540;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:534;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:527;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:526;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:526;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:516;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:508;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:493;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:492;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:491;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:485;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:483;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:478;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:470;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:463;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:458;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:441;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:436;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:428;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:428;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:420;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:420;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:418;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:414;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:412;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:407;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:400;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:393;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:392;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:389;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:384;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:376;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:375;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:374;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:373;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:368;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:364;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:362;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:355;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:350;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:344;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:334;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:333;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:330;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:329;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:325;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:324;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:323;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:322;}}','no');
INSERT INTO `wp_options` VALUES (966,'homepage-control_version','2.0.3','yes');
INSERT INTO `wp_options` VALUES (967,'woocommerce_db_version','3.9.1','yes');
INSERT INTO `wp_options` VALUES (993,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1580595834;s:7:\"checked\";a:8:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:37:\"homepage-control/homepage-control.php\";s:5:\"2.0.3\";s:19:\"jetpack/jetpack.php\";s:5:\"8.1.1\";s:23:\"ml-slider/ml-slider.php\";s:6:\"3.15.3\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.9.1\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:6:\"0.24.0\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:6:\"1.6.18\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.22.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"homepage-control/homepage-control.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/homepage-control\";s:4:\"slug\";s:16:\"homepage-control\";s:6:\"plugin\";s:37:\"homepage-control/homepage-control.php\";s:11:\"new_version\";s:5:\"2.0.3\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/homepage-control/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/homepage-control.2.0.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:67:\"https://s.w.org/plugins/geopattern-icon/homepage-control_f8f8f8.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/homepage-control/assets/banner-1544x500.png?rev=877105\";s:2:\"1x\";s:70:\"https://ps.w.org/homepage-control/assets/banner-772x250.png?rev=877105\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"8.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.8.1.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:6:\"3.15.3\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/ml-slider.3.15.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.9.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"woocommerce-admin/woocommerce-admin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/woocommerce-admin\";s:4:\"slug\";s:17:\"woocommerce-admin\";s:6:\"plugin\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:11:\"new_version\";s:6:\"0.24.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/woocommerce-admin/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce-admin.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-256x256.jpg?rev=2057866\";s:2:\"1x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-128x128.jpg?rev=2057866\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-admin/assets/banner-1544x500.jpg?rev=2057866\";s:2:\"1x\";s:72:\"https://ps.w.org/woocommerce-admin/assets/banner-772x250.jpg?rev=2057866\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:6:\"1.6.18\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:93:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.18.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1948167\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1948167\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.22.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.22.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (994,'widget_metaslider_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (996,'metaslider_tour_cancelled_on','create-slide','yes');
INSERT INTO `wp_options` VALUES (997,'ms_hide_all_ads_until','1581805464','yes');
INSERT INTO `wp_options` VALUES (998,'metaslider_systemcheck','a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1002,'ml-slider_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (1016,'_site_transient_timeout_theme_roots','1580598903','no');
INSERT INTO `wp_options` VALUES (1017,'_site_transient_theme_roots','a:5:{s:10:\"storefront\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1042,'_transient_timeout_jetpack_idc_allowed','1580602306','no');
INSERT INTO `wp_options` VALUES (1043,'_transient_jetpack_idc_allowed','1','no');
INSERT INTO `wp_options` VALUES (1045,'_transient_timeout_wc_admin_unsnooze_admin_notes_checked','1580602306','no');
INSERT INTO `wp_options` VALUES (1046,'_transient_wc_admin_unsnooze_admin_notes_checked','yes','no');
INSERT INTO `wp_options` VALUES (1053,'_transient_wc_count_comments','O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (1054,'_transient_as_comment_count','O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (1055,'_transient_is_multi_author','0','yes');
INSERT INTO `wp_options` VALUES (1057,'_transient_doing_cron','1580599862.7421519756317138671875','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (5,10,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1579545847;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (6,11,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1579549548;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (7,12,'_action_manager_schedule','O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1579547516;}');
INSERT INTO `wp_postmeta` VALUES (9,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (10,2,'_wp_trash_meta_time','1579548730');
INSERT INTO `wp_postmeta` VALUES (11,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (13,17,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (14,17,'_edit_lock','1579549118:1');
INSERT INTO `wp_postmeta` VALUES (15,17,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (16,9,'_edit_lock','1579549144:1');
INSERT INTO `wp_postmeta` VALUES (17,19,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1579553160;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (18,20,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (19,20,'_edit_lock','1579549602:1');
INSERT INTO `wp_postmeta` VALUES (20,20,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (21,3,'_edit_lock','1579549708:1');
INSERT INTO `wp_postmeta` VALUES (22,3,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (23,24,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1580166871;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (24,13,'_edit_lock','1580164045:1');
INSERT INTO `wp_postmeta` VALUES (25,25,'_wp_attached_file','2020/01/Screen-Shot-2020-01-27-at-2.26.42-PM.png');
INSERT INTO `wp_postmeta` VALUES (26,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:336;s:6:\"height\";i:253;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-27-at-2.26.42-PM.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-2.26.42-PM-300x226.png\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-2.26.42-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-2.26.42-PM-324x253.png\";s:5:\"width\";i:324;s:6:\"height\";i:253;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-2.26.42-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-2.26.42-PM-324x253.png\";s:5:\"width\";i:324;s:6:\"height\";i:253;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-2.26.42-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (27,26,'_wp_attached_file','2020/01/cropped-Screen-Shot-2020-01-27-at-2.26.42-PM.png');
INSERT INTO `wp_postmeta` VALUES (28,26,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (29,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:336;s:6:\"height\";i:253;s:4:\"file\";s:56:\"2020/01/cropped-Screen-Shot-2020-01-27-at-2.26.42-PM.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"cropped-Screen-Shot-2020-01-27-at-2.26.42-PM-300x226.png\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"cropped-Screen-Shot-2020-01-27-at-2.26.42-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:56:\"cropped-Screen-Shot-2020-01-27-at-2.26.42-PM-324x253.png\";s:5:\"width\";i:324;s:6:\"height\";i:253;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:56:\"cropped-Screen-Shot-2020-01-27-at-2.26.42-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:56:\"cropped-Screen-Shot-2020-01-27-at-2.26.42-PM-324x253.png\";s:5:\"width\";i:324;s:6:\"height\";i:253;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:56:\"cropped-Screen-Shot-2020-01-27-at-2.26.42-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (30,13,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (31,13,'_wp_trash_meta_time','1580164081');
INSERT INTO `wp_postmeta` VALUES (32,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (33,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (34,27,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (35,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (36,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (37,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (38,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (39,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (41,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (42,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (43,28,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (44,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (45,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (46,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (47,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (48,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (50,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (51,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (52,29,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (53,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (54,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (55,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (56,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (57,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (59,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (60,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (61,30,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (62,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (63,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (64,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (65,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (66,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (68,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (69,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (70,31,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (71,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (72,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (73,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (74,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (75,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (77,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (78,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (79,32,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (80,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (81,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (82,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (83,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (84,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (86,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (87,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (88,33,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (89,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (90,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (91,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (92,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (93,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (95,34,'_edit_lock','1580164861:1');
INSERT INTO `wp_postmeta` VALUES (96,34,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (97,34,'_wp_trash_meta_time','1580164877');
INSERT INTO `wp_postmeta` VALUES (98,35,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1580172409;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (99,36,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (100,36,'_menu_item_menu_item_parent','33');
INSERT INTO `wp_postmeta` VALUES (101,36,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (102,36,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (103,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (104,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (105,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (106,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (108,37,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (109,37,'_menu_item_menu_item_parent','33');
INSERT INTO `wp_postmeta` VALUES (110,37,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (111,37,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (112,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (113,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (114,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (115,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (117,38,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (118,38,'_menu_item_menu_item_parent','33');
INSERT INTO `wp_postmeta` VALUES (119,38,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (120,38,'_menu_item_object','product_cat');
INSERT INTO `wp_postmeta` VALUES (121,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (122,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (123,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (124,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (126,40,'_action_manager_schedule','O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1580169292;}');
INSERT INTO `wp_postmeta` VALUES (127,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (128,39,'_edit_lock','1580188345:1');
INSERT INTO `wp_postmeta` VALUES (129,41,'_wp_attached_file','2020/01/Screen-Shot-2020-01-27-at-4.04.34-PM.png');
INSERT INTO `wp_postmeta` VALUES (130,41,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:792;s:6:\"height\";i:745;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-27-at-4.04.34-PM.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.04.34-PM-300x282.png\";s:5:\"width\";i:300;s:6:\"height\";i:282;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.04.34-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.04.34-PM-768x722.png\";s:5:\"width\";i:768;s:6:\"height\";i:722;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.04.34-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.04.34-PM-416x391.png\";s:5:\"width\";i:416;s:6:\"height\";i:391;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.04.34-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.04.34-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.04.34-PM-416x391.png\";s:5:\"width\";i:416;s:6:\"height\";i:391;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.04.34-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (131,42,'_wp_attached_file','2020/01/Screen-Shot-2020-01-27-at-4.07.10-PM.png');
INSERT INTO `wp_postmeta` VALUES (132,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:820;s:6:\"height\";i:854;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-27-at-4.07.10-PM.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.10-PM-288x300.png\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.10-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.10-PM-768x800.png\";s:5:\"width\";i:768;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.10-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.10-PM-416x433.png\";s:5:\"width\";i:416;s:6:\"height\";i:433;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.10-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.10-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.10-PM-416x433.png\";s:5:\"width\";i:416;s:6:\"height\";i:433;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.10-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (133,43,'_wp_attached_file','2020/01/Screen-Shot-2020-01-27-at-4.07.28-PM.png');
INSERT INTO `wp_postmeta` VALUES (134,43,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:825;s:6:\"height\";i:913;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-27-at-4.07.28-PM.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.28-PM-271x300.png\";s:5:\"width\";i:271;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.28-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.28-PM-768x850.png\";s:5:\"width\";i:768;s:6:\"height\";i:850;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.28-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.28-PM-416x460.png\";s:5:\"width\";i:416;s:6:\"height\";i:460;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.28-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.28-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.28-PM-416x460.png\";s:5:\"width\";i:416;s:6:\"height\";i:460;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.28-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (135,44,'_wp_attached_file','2020/01/Screen-Shot-2020-01-27-at-4.07.50-PM.png');
INSERT INTO `wp_postmeta` VALUES (136,44,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:823;s:6:\"height\";i:824;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-27-at-4.07.50-PM.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.50-PM-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.50-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.50-PM-768x769.png\";s:5:\"width\";i:768;s:6:\"height\";i:769;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.50-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.50-PM-416x417.png\";s:5:\"width\";i:416;s:6:\"height\";i:417;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.50-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.50-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.50-PM-416x417.png\";s:5:\"width\";i:416;s:6:\"height\";i:417;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.07.50-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (137,39,'_thumbnail_id','41');
INSERT INTO `wp_postmeta` VALUES (138,39,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (139,39,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (140,39,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (141,39,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (142,39,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (143,39,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (144,39,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (145,39,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (146,39,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (147,39,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (148,39,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (149,39,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (150,39,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (151,39,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (152,39,'_product_version','3.8.1');
INSERT INTO `wp_postmeta` VALUES (153,39,'_product_image_gallery','43,44,42');
INSERT INTO `wp_postmeta` VALUES (154,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (155,45,'_edit_lock','1580171039:1');
INSERT INTO `wp_postmeta` VALUES (156,45,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (157,45,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (158,45,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (159,45,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (160,45,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (161,45,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (162,45,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (163,45,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (164,45,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (165,45,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (166,45,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (167,45,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (168,45,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (169,45,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (170,45,'_product_version','3.8.1');
INSERT INTO `wp_postmeta` VALUES (171,46,'_wp_attached_file','2020/01/Screen-Shot-2020-01-27-at-4.15.00-PM.png');
INSERT INTO `wp_postmeta` VALUES (172,46,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:827;s:6:\"height\";i:588;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-27-at-4.15.00-PM.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.00-PM-300x213.png\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.00-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.00-PM-768x546.png\";s:5:\"width\";i:768;s:6:\"height\";i:546;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.00-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.00-PM-416x296.png\";s:5:\"width\";i:416;s:6:\"height\";i:296;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.00-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.00-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.00-PM-416x296.png\";s:5:\"width\";i:416;s:6:\"height\";i:296;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.00-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (173,47,'_wp_attached_file','2020/01/Screen-Shot-2020-01-27-at-4.15.11-PM.png');
INSERT INTO `wp_postmeta` VALUES (174,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:827;s:6:\"height\";i:558;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-27-at-4.15.11-PM.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.11-PM-300x202.png\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.11-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.11-PM-768x518.png\";s:5:\"width\";i:768;s:6:\"height\";i:518;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.11-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.11-PM-416x281.png\";s:5:\"width\";i:416;s:6:\"height\";i:281;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.11-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.11-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.11-PM-416x281.png\";s:5:\"width\";i:416;s:6:\"height\";i:281;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.11-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (175,48,'_wp_attached_file','2020/01/Screen-Shot-2020-01-27-at-4.15.27-PM.png');
INSERT INTO `wp_postmeta` VALUES (176,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:828;s:6:\"height\";i:591;s:4:\"file\";s:48:\"2020/01/Screen-Shot-2020-01-27-at-4.15.27-PM.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.27-PM-300x214.png\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.27-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.27-PM-768x548.png\";s:5:\"width\";i:768;s:6:\"height\";i:548;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.27-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.27-PM-416x297.png\";s:5:\"width\";i:416;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.27-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.27-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.27-PM-416x297.png\";s:5:\"width\";i:416;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-01-27-at-4.15.27-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (177,45,'_thumbnail_id','48');
INSERT INTO `wp_postmeta` VALUES (178,45,'_product_image_gallery','47,46');
INSERT INTO `wp_postmeta` VALUES (179,45,'_product_attributes','a:1:{s:5:\"color\";a:6:{s:4:\"name\";s:5:\"Color\";s:5:\"value\";s:11:\"Blue | Gray\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"0\";}}');
INSERT INTO `wp_postmeta` VALUES (180,49,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (181,49,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (182,49,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (183,49,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (184,49,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (185,49,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (186,49,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (187,49,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (188,49,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (189,49,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (190,49,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (191,49,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (192,49,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (193,49,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (194,49,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (195,49,'attribute_color','Blue');
INSERT INTO `wp_postmeta` VALUES (196,49,'_product_version','3.8.1');
INSERT INTO `wp_postmeta` VALUES (197,50,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (198,50,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (199,50,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (200,50,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (201,50,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (202,50,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (203,50,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (204,50,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (205,50,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (206,50,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (207,50,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (208,50,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (209,50,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (210,50,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (211,50,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (212,50,'attribute_color','Gray');
INSERT INTO `wp_postmeta` VALUES (213,50,'_product_version','3.8.1');
INSERT INTO `wp_postmeta` VALUES (214,49,'_regular_price','29');
INSERT INTO `wp_postmeta` VALUES (215,49,'_sale_price','19');
INSERT INTO `wp_postmeta` VALUES (216,49,'_thumbnail_id','41');
INSERT INTO `wp_postmeta` VALUES (217,49,'_price','19');
INSERT INTO `wp_postmeta` VALUES (218,50,'_regular_price','29');
INSERT INTO `wp_postmeta` VALUES (219,50,'_sale_price','19');
INSERT INTO `wp_postmeta` VALUES (220,50,'_thumbnail_id','48');
INSERT INTO `wp_postmeta` VALUES (221,50,'_price','19');
INSERT INTO `wp_postmeta` VALUES (222,45,'_price','19');
INSERT INTO `wp_postmeta` VALUES (223,51,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1580176061;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (224,52,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1580186206;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (225,53,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1580189846;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (226,54,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1580587670;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (227,56,'_wp_attached_file','woocommerce-placeholder.png');
INSERT INTO `wp_postmeta` VALUES (228,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (229,57,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1580591322;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (230,58,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1580594990;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (231,59,'_action_manager_schedule','O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1580592450;}');
INSERT INTO `wp_postmeta` VALUES (232,60,'_action_manager_schedule','O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1580592451;}');
INSERT INTO `wp_postmeta` VALUES (233,61,'_action_manager_schedule','O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1580592452;}');
INSERT INTO `wp_postmeta` VALUES (234,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (235,62,'_edit_lock','1580593277:1');
INSERT INTO `wp_postmeta` VALUES (236,62,'_wp_page_template','template-homepage.php');
INSERT INTO `wp_postmeta` VALUES (237,64,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (238,64,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (239,64,'_menu_item_object_id','62');
INSERT INTO `wp_postmeta` VALUES (240,64,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (241,64,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (242,64,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (243,64,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (244,64,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (246,65,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (247,65,'_wp_trash_meta_time','1580593576');
INSERT INTO `wp_postmeta` VALUES (248,66,'_edit_lock','1580594682:1');
INSERT INTO `wp_postmeta` VALUES (249,66,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (250,66,'_wp_trash_meta_time','1580594718');
INSERT INTO `wp_postmeta` VALUES (251,67,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1580598783;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` VALUES (252,68,'ml-slider_settings','a:38:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:4:\"1080\";s:6:\"height\";s:3:\"400\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.69999999999999996;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:16:\"firstSlideFadeIn\";s:5:\"false\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:17:\"responsive_thumbs\";s:5:\"false\";s:15:\"thumb_min_width\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}');
INSERT INTO `wp_postmeta` VALUES (253,68,'metaslider_slideshow_theme','');
INSERT INTO `wp_postmeta` VALUES (254,69,'_wp_attached_file','2020/02/Screen-Shot-2020-02-01-at-2.30.32-PM.png');
INSERT INTO `wp_postmeta` VALUES (255,69,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:549;s:6:\"height\";i:364;s:4:\"file\";s:48:\"2020/02/Screen-Shot-2020-02-01-at-2.30.32-PM.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-416x276.png\";s:5:\"width\";i:416;s:6:\"height\";i:276;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-416x276.png\";s:5:\"width\";i:416;s:6:\"height\";i:276;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-549x235\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-549x235.png\";s:5:\"width\";i:549;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-549x203\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-549x203.png\";s:5:\"width\";i:549;s:6:\"height\";i:203;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (256,70,'_wp_attached_file','2020/02/Screen-Shot-2020-02-01-at-2.30.41-PM.png');
INSERT INTO `wp_postmeta` VALUES (257,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:488;s:6:\"height\";i:363;s:4:\"file\";s:48:\"2020/02/Screen-Shot-2020-02-01-at-2.30.41-PM.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-300x223.png\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-416x309.png\";s:5:\"width\";i:416;s:6:\"height\";i:309;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-416x309.png\";s:5:\"width\";i:416;s:6:\"height\";i:309;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-488x209\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-488x209.png\";s:5:\"width\";i:488;s:6:\"height\";i:209;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-488x180\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-488x180.png\";s:5:\"width\";i:488;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (258,71,'_wp_attached_file','2020/02/Screen-Shot-2020-02-01-at-2.30.52-PM.png');
INSERT INTO `wp_postmeta` VALUES (259,71,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:508;s:6:\"height\";i:356;s:4:\"file\";s:48:\"2020/02/Screen-Shot-2020-02-01-at-2.30.52-PM.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-416x292.png\";s:5:\"width\";i:416;s:6:\"height\";i:292;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-416x292.png\";s:5:\"width\";i:416;s:6:\"height\";i:292;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-508x217\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-508x217.png\";s:5:\"width\";i:508;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-508x188\";a:4:{s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-508x188.png\";s:5:\"width\";i:508;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (260,72,'_thumbnail_id','71');
INSERT INTO `wp_postmeta` VALUES (261,72,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (262,72,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (263,72,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (264,73,'_thumbnail_id','70');
INSERT INTO `wp_postmeta` VALUES (265,73,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (266,73,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (267,73,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (268,74,'_thumbnail_id','69');
INSERT INTO `wp_postmeta` VALUES (269,74,'ml-slider_type','image');
INSERT INTO `wp_postmeta` VALUES (270,74,'ml-slider_inherit_image_title','1');
INSERT INTO `wp_postmeta` VALUES (271,74,'ml-slider_inherit_image_alt','1');
INSERT INTO `wp_postmeta` VALUES (272,72,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (273,72,'ml-slider_caption_source','image-caption');
INSERT INTO `wp_postmeta` VALUES (274,72,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (275,73,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (276,73,'ml-slider_caption_source','image-caption');
INSERT INTO `wp_postmeta` VALUES (277,73,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (278,74,'ml-slider_crop_position','center-center');
INSERT INTO `wp_postmeta` VALUES (279,74,'ml-slider_caption_source','image-caption');
INSERT INTO `wp_postmeta` VALUES (280,74,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (281,71,'_wp_attachment_backup_sizes','a:2:{s:15:\"resized-508x217\";a:5:{s:4:\"path\";s:150:\"/Users/flaugher/projects/wordpress/udemy_woocommerce/dog_adorer/app/public/wp-content/uploads/2020/02/Screen-Shot-2020-02-01-at-2.30.52-PM-508x217.png\";s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-508x217.png\";s:5:\"width\";i:508;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-508x188\";a:5:{s:4:\"path\";s:150:\"/Users/flaugher/projects/wordpress/udemy_woocommerce/dog_adorer/app/public/wp-content/uploads/2020/02/Screen-Shot-2020-02-01-at-2.30.52-PM-508x188.png\";s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.52-PM-508x188.png\";s:5:\"width\";i:508;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}}');
INSERT INTO `wp_postmeta` VALUES (282,70,'_wp_attachment_backup_sizes','a:2:{s:15:\"resized-488x209\";a:5:{s:4:\"path\";s:150:\"/Users/flaugher/projects/wordpress/udemy_woocommerce/dog_adorer/app/public/wp-content/uploads/2020/02/Screen-Shot-2020-02-01-at-2.30.41-PM-488x209.png\";s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-488x209.png\";s:5:\"width\";i:488;s:6:\"height\";i:209;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-488x180\";a:5:{s:4:\"path\";s:150:\"/Users/flaugher/projects/wordpress/udemy_woocommerce/dog_adorer/app/public/wp-content/uploads/2020/02/Screen-Shot-2020-02-01-at-2.30.41-PM-488x180.png\";s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.41-PM-488x180.png\";s:5:\"width\";i:488;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}}');
INSERT INTO `wp_postmeta` VALUES (283,69,'_wp_attachment_backup_sizes','a:2:{s:15:\"resized-549x235\";a:5:{s:4:\"path\";s:150:\"/Users/flaugher/projects/wordpress/udemy_woocommerce/dog_adorer/app/public/wp-content/uploads/2020/02/Screen-Shot-2020-02-01-at-2.30.32-PM-549x235.png\";s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-549x235.png\";s:5:\"width\";i:549;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-549x203\";a:5:{s:4:\"path\";s:150:\"/Users/flaugher/projects/wordpress/udemy_woocommerce/dog_adorer/app/public/wp-content/uploads/2020/02/Screen-Shot-2020-02-01-at-2.30.32-PM-549x203.png\";s:4:\"file\";s:48:\"Screen-Shot-2020-02-01-at-2.30.32-PM-549x203.png\";s:5:\"width\";i:549;s:6:\"height\";i:203;s:9:\"mime-type\";s:9:\"image/png\";}}');
INSERT INTO `wp_postmeta` VALUES (284,75,'_action_manager_schedule','O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1580602417;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-01-20 18:16:07','2020-01-20 18:16:07','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-01-20 18:16:07','2020-01-20 18:16:07','',0,'http://dog-adorer.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-01-20 18:16:07','2020-01-20 18:16:07','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://dog-adorer.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2020-01-20 19:32:10','2020-01-20 19:32:10','',0,'http://dog-adorer.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-01-20 18:16:07','2020-01-20 18:16:07','<!-- wp:heading -->\r\n<h2>Who we are</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Our website address is: http://dog-adorer.local.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Comments</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Media</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Contact forms</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Cookies</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Embedded content from other websites</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Analytics</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Who we share your data with</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>How long we retain your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>What rights you have over your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Where we send your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Visitor comments may be checked through an automated spam detection service.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Your contact information</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Additional information</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>How we protect your data</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What data breach procedures we have in place</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What third parties we receive data from</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Industry regulatory disclosure requirements</h3>\r\n<!-- /wp:heading -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2020-01-20 19:49:46','2020-01-20 19:49:46','',0,'http://dog-adorer.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-01-20 18:40:47','2020-01-20 18:40:47','','Shop','','publish','closed','closed','','shop','','','2020-01-20 18:40:47','2020-01-20 18:40:47','',0,'http://dog-adorer.local/shop/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-01-20 18:40:47','2020-01-20 18:40:47','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Cart','','publish','closed','closed','','cart','','','2020-01-20 18:40:47','2020-01-20 18:40:47','',0,'http://dog-adorer.local/cart/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-01-20 18:40:48','2020-01-20 18:40:48','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Checkout','','publish','closed','closed','','checkout','','','2020-01-20 18:40:48','2020-01-20 18:40:48','',0,'http://dog-adorer.local/checkout/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-01-20 18:40:48','2020-01-20 18:40:48','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','My account','','publish','closed','closed','','my-account','','','2020-01-20 18:40:48','2020-01-20 18:40:48','',0,'http://dog-adorer.local/my-account/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,0,'2020-01-20 18:44:07','2020-01-20 18:44:07','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e25f55c7e7b35.38465919-bMrq1NOQoBt96t7ZmfdQGTvVth5Sr9cP','','','2020-01-20 18:45:48','2020-01-20 18:45:48','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=10',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (11,0,'2020-01-20 19:45:48','2020-01-20 19:45:48','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e260378b67666.51523175-sqkxl3aTqaVoraiZfdrpabvUYC8zjfBU','','','2020-01-20 19:46:00','2020-01-20 19:46:00','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=11',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (12,0,'2020-01-20 19:11:56','2020-01-20 19:11:56','[]','woocommerce_update_marketplace_suggestions','','publish','open','closed','','scheduled-action-5e25fb7e7d1f84.65481973-9ygAdGnLnbaXob3KkNIl4RCS7jGn4ri0','','','2020-01-20 19:11:58','2020-01-20 19:11:58','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=12',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (13,1,'2020-01-27 22:28:01','2020-01-27 22:28:01','{\n    \"storefront::storefront_header_background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-20 19:30:38\"\n    },\n    \"storefront::storefront_header_text_color\": {\n        \"value\": \"#404040\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-20 19:30:38\"\n    },\n    \"storefront::custom_logo\": {\n        \"value\": 26,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-27 22:28:01\"\n    }\n}','','','trash','closed','closed','','4366650e-e8cc-412c-97f1-6963529735fa','','','2020-01-27 22:28:01','2020-01-27 22:28:01','',0,'http://dog-adorer.local/?p=13',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-01-20 19:32:10','2020-01-20 19:32:10','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://dog-adorer.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-01-20 19:32:10','2020-01-20 19:32:10','',2,'http://dog-adorer.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-01-20 19:40:29','2020-01-20 19:40:29','<h2>Thanks for shopping at dog-adorer.com!</h2>\r\nIf you need to get in touch with us, please send us an email.\r\n\r\n<a href=\"mailto:support@dog-adorer.com\">Support</a>\r\n\r\n<a href=\"sales@dog-adorer.com\">Sales</a>\r\n\r\n<a href=\"billing@dog-adorer.com\">Billing</a>','Contact Us','','publish','closed','closed','','contact-us','','','2020-01-20 19:40:29','2020-01-20 19:40:29','',0,'http://dog-adorer.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-01-20 19:39:17','2020-01-20 19:39:17','<h2>Thanks for shopping at dog-adorer.com!</h2>\r\nIf you need to get in touch with us, please send us an email.\r\n\r\n<a href=\"mailto:support@dog-adorer.com\">Support</a>\r\n\r\n<a href=\"sales@dog-adorer.com\">Sales</a>\r\n\r\n<a href=\"billing@dog-adorer.com\">Billing</a>','Contact Us','','inherit','closed','closed','','17-revision-v1','','','2020-01-20 19:39:17','2020-01-20 19:39:17','',17,'http://dog-adorer.local/17-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,0,'2020-01-20 20:46:00','2020-01-20 20:46:00','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e2f60c73c0497.14697605-BQsuiQhEBjl7EY0bCuHsI6NsULtAF6Ra','','','2020-01-27 22:14:31','2020-01-27 22:14:31','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=19',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (20,1,'2020-01-20 19:48:56','2020-01-20 19:48:56','OVERVIEW\r\n\r\nThis website is operated by XXX. Throughout the site, the terms “we”, “us” and “our” refer to XXX. XXX offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.\r\n\r\nBy visiting our site and/ or purchasing something from us, you engage in our “Service” and agree to be bound by the following terms and conditions (“Terms of Service”, “Terms”), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.\r\n\r\nPlease read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.\r\n\r\nAny new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.\r\n\r\nSECTION 1 – ONLINE STORE TERMS\r\n\r\nBy agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.\r\n\r\nYou may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).\r\n\r\nYou must not transmit any worms or viruses or any code of a destructive nature.\r\n\r\nA breach or violation of any of the Terms will result in an immediate termination of your Services.\r\n\r\nSECTION 2 – GENERAL CONDITIONS\r\n\r\nWe reserve the right to refuse service to anyone for any reason at any time.\r\n\r\nYou understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.\r\n\r\nYou agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.\r\n\r\nThe headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.\r\n\r\nSECTION 3 – ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION\r\n\r\nWe are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.\r\n\r\nThis site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.\r\n\r\nSECTION 4 – MODIFICATIONS TO THE SERVICE AND PRICES\r\n\r\nPrices for our products are subject to change without notice.\r\n\r\nWe reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.\r\n\r\nWe shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.\r\n\r\nSECTION 5 – PRODUCTS OR SERVICES (if applicable)\r\n\r\nCertain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.\r\n\r\nWe have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor’s display of any color will be accurate.\r\n\r\nWe reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.\r\n\r\nWe do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.\r\n\r\nSECTION 6 – ACCURACY OF BILLING AND ACCOUNT INFORMATION\r\n\r\nWe reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.\r\n\r\nYou agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.\r\n\r\nFor more detail, please review our Returns Policy.\r\n\r\nSECTION 7 – OPTIONAL TOOLS\r\n\r\nWe may provide you with access to third-party tools over which we neither monitor nor have any control nor input.\r\n\r\nYou acknowledge and agree that we provide access to such tools ”as is” and “as available” without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools.\r\n\r\nAny use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s).\r\n\r\nWe may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service.\r\n\r\nSECTION 8 – THIRD-PARTY LINKS\r\n\r\nCertain content, products and services available via our Service may include materials from third-parties.\r\n\r\nThird-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.\r\n\r\nWe are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party’s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.\r\n\r\nSECTION 9 – USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS\r\n\r\nIf, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, ‘comments’), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.\r\n\r\nWe may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party’s intellectual property or these Terms of Service.\r\n\r\nYou agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.\r\n\r\nSECTION 10 – PERSONAL INFORMATION\r\n\r\nYour submission of personal information through the store is governed by our Privacy Policy. To view our Privacy Policy.\r\n\r\nSECTION 11 – ERRORS, INACCURACIES AND OMISSIONS\r\n\r\nOccasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).\r\n\r\nWe undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.\r\n\r\nSECTION 12 – PROHIBITED USES\r\n\r\nIn addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.\r\n\r\nSECTION 13 – DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY\r\n\r\nWe do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.\r\n\r\nWe do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.\r\n\r\nYou agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.\r\n\r\nYou expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided ‘as is’ and ‘as available’ for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.\r\n\r\nIn no case shall XXX, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.\r\n\r\nSECTION 14 – INDEMNIFICATION\r\n\r\nYou agree to indemnify, defend and hold harmless XXX and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys’ fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.\r\n\r\nSECTION 15 – SEVERABILITY\r\n\r\nIn the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.\r\n\r\nSECTION 16 – TERMINATION\r\n\r\nThe obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.\r\n\r\nThese Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.\r\n\r\nIf in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).\r\n\r\nSECTION 17 – ENTIRE AGREEMENT\r\n\r\nThe failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.\r\n\r\nThese Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).\r\n\r\nAny ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.\r\n\r\nSECTION 18 – GOVERNING LAW\r\n\r\nThese Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of the United States\r\n\r\nSECTION 19 – CHANGES TO TERMS OF SERVICE\r\n\r\nYou can review the most current version of the Terms of Service at any time at this page.\r\n\r\nWe reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.\r\n\r\nSECTION 20 – CONTACT INFORMATION\r\n\r\nQuestions about the Terms of Service should be sent to us by using our contact form.\r\n\r\n&nbsp;','Terms & Conditions','','publish','closed','closed','','terms-conditions','','','2020-01-20 19:48:56','2020-01-20 19:48:56','',0,'http://dog-adorer.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-01-20 19:48:19','2020-01-20 19:48:19','<strong>TERMS &amp; CONDITIONS</strong>\r\n\r\nOVERVIEW\r\n\r\nThis website is operated by XXX. Throughout the site, the terms “we”, “us” and “our” refer to XXX. XXX offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.\r\n\r\nBy visiting our site and/ or purchasing something from us, you engage in our “Service” and agree to be bound by the following terms and conditions (“Terms of Service”, “Terms”), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.\r\n\r\nPlease read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.\r\n\r\nAny new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.\r\n\r\nSECTION 1 – ONLINE STORE TERMS\r\n\r\nBy agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.\r\n\r\nYou may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).\r\n\r\nYou must not transmit any worms or viruses or any code of a destructive nature.\r\n\r\nA breach or violation of any of the Terms will result in an immediate termination of your Services.\r\n\r\nSECTION 2 – GENERAL CONDITIONS\r\n\r\nWe reserve the right to refuse service to anyone for any reason at any time.\r\n\r\nYou understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.\r\n\r\nYou agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.\r\n\r\nThe headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.\r\n\r\nSECTION 3 – ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION\r\n\r\nWe are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.\r\n\r\nThis site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.\r\n\r\nSECTION 4 – MODIFICATIONS TO THE SERVICE AND PRICES\r\n\r\nPrices for our products are subject to change without notice.\r\n\r\nWe reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.\r\n\r\nWe shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.\r\n\r\nSECTION 5 – PRODUCTS OR SERVICES (if applicable)\r\n\r\nCertain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.\r\n\r\nWe have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor’s display of any color will be accurate.\r\n\r\nWe reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.\r\n\r\nWe do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.\r\n\r\nSECTION 6 – ACCURACY OF BILLING AND ACCOUNT INFORMATION\r\n\r\nWe reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.\r\n\r\nYou agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.\r\n\r\nFor more detail, please review our Returns Policy.\r\n\r\nSECTION 7 – OPTIONAL TOOLS\r\n\r\nWe may provide you with access to third-party tools over which we neither monitor nor have any control nor input.\r\n\r\nYou acknowledge and agree that we provide access to such tools ”as is” and “as available” without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools.\r\n\r\nAny use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s).\r\n\r\nWe may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service.\r\n\r\nSECTION 8 – THIRD-PARTY LINKS\r\n\r\nCertain content, products and services available via our Service may include materials from third-parties.\r\n\r\nThird-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.\r\n\r\nWe are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party’s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.\r\n\r\nSECTION 9 – USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS\r\n\r\nIf, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, ‘comments’), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.\r\n\r\nWe may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party’s intellectual property or these Terms of Service.\r\n\r\nYou agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.\r\n\r\nSECTION 10 – PERSONAL INFORMATION\r\n\r\nYour submission of personal information through the store is governed by our Privacy Policy. To view our Privacy Policy.\r\n\r\nSECTION 11 – ERRORS, INACCURACIES AND OMISSIONS\r\n\r\nOccasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).\r\n\r\nWe undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.\r\n\r\nSECTION 12 – PROHIBITED USES\r\n\r\nIn addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.\r\n\r\nSECTION 13 – DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY\r\n\r\nWe do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.\r\n\r\nWe do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.\r\n\r\nYou agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.\r\n\r\nYou expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided ‘as is’ and ‘as available’ for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.\r\n\r\nIn no case shall XXX, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.\r\n\r\nSECTION 14 – INDEMNIFICATION\r\n\r\nYou agree to indemnify, defend and hold harmless XXX and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys’ fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.\r\n\r\nSECTION 15 – SEVERABILITY\r\n\r\nIn the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.\r\n\r\nSECTION 16 – TERMINATION\r\n\r\nThe obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.\r\n\r\nThese Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.\r\n\r\nIf in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).\r\n\r\nSECTION 17 – ENTIRE AGREEMENT\r\n\r\nThe failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.\r\n\r\nThese Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).\r\n\r\nAny ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.\r\n\r\nSECTION 18 – GOVERNING LAW\r\n\r\nThese Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of the United States\r\n\r\nSECTION 19 – CHANGES TO TERMS OF SERVICE\r\n\r\nYou can review the most current version of the Terms of Service at any time at this page.\r\n\r\nWe reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.\r\n\r\nSECTION 20 – CONTACT INFORMATION\r\n\r\nQuestions about the Terms of Service should be sent to us by using our contact form.\r\n\r\n&nbsp;','Terms & Conditions','','inherit','closed','closed','','20-revision-v1','','','2020-01-20 19:48:19','2020-01-20 19:48:19','',20,'http://dog-adorer.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-01-20 19:48:38','2020-01-20 19:48:38','OVERVIEW\r\n\r\nThis website is operated by XXX. Throughout the site, the terms “we”, “us” and “our” refer to XXX. XXX offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.\r\n\r\nBy visiting our site and/ or purchasing something from us, you engage in our “Service” and agree to be bound by the following terms and conditions (“Terms of Service”, “Terms”), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.\r\n\r\nPlease read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.\r\n\r\nAny new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.\r\n\r\nSECTION 1 – ONLINE STORE TERMS\r\n\r\nBy agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.\r\n\r\nYou may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).\r\n\r\nYou must not transmit any worms or viruses or any code of a destructive nature.\r\n\r\nA breach or violation of any of the Terms will result in an immediate termination of your Services.\r\n\r\nSECTION 2 – GENERAL CONDITIONS\r\n\r\nWe reserve the right to refuse service to anyone for any reason at any time.\r\n\r\nYou understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.\r\n\r\nYou agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.\r\n\r\nThe headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.\r\n\r\nSECTION 3 – ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION\r\n\r\nWe are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.\r\n\r\nThis site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.\r\n\r\nSECTION 4 – MODIFICATIONS TO THE SERVICE AND PRICES\r\n\r\nPrices for our products are subject to change without notice.\r\n\r\nWe reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.\r\n\r\nWe shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.\r\n\r\nSECTION 5 – PRODUCTS OR SERVICES (if applicable)\r\n\r\nCertain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.\r\n\r\nWe have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor’s display of any color will be accurate.\r\n\r\nWe reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.\r\n\r\nWe do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.\r\n\r\nSECTION 6 – ACCURACY OF BILLING AND ACCOUNT INFORMATION\r\n\r\nWe reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.\r\n\r\nYou agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.\r\n\r\nFor more detail, please review our Returns Policy.\r\n\r\nSECTION 7 – OPTIONAL TOOLS\r\n\r\nWe may provide you with access to third-party tools over which we neither monitor nor have any control nor input.\r\n\r\nYou acknowledge and agree that we provide access to such tools ”as is” and “as available” without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools.\r\n\r\nAny use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s).\r\n\r\nWe may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service.\r\n\r\nSECTION 8 – THIRD-PARTY LINKS\r\n\r\nCertain content, products and services available via our Service may include materials from third-parties.\r\n\r\nThird-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.\r\n\r\nWe are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party’s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.\r\n\r\nSECTION 9 – USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS\r\n\r\nIf, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, ‘comments’), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.\r\n\r\nWe may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party’s intellectual property or these Terms of Service.\r\n\r\nYou agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.\r\n\r\nSECTION 10 – PERSONAL INFORMATION\r\n\r\nYour submission of personal information through the store is governed by our Privacy Policy. To view our Privacy Policy.\r\n\r\nSECTION 11 – ERRORS, INACCURACIES AND OMISSIONS\r\n\r\nOccasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).\r\n\r\nWe undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.\r\n\r\nSECTION 12 – PROHIBITED USES\r\n\r\nIn addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.\r\n\r\nSECTION 13 – DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY\r\n\r\nWe do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.\r\n\r\nWe do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.\r\n\r\nYou agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.\r\n\r\nYou expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided ‘as is’ and ‘as available’ for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.\r\n\r\nIn no case shall XXX, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.\r\n\r\nSECTION 14 – INDEMNIFICATION\r\n\r\nYou agree to indemnify, defend and hold harmless XXX and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys’ fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.\r\n\r\nSECTION 15 – SEVERABILITY\r\n\r\nIn the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.\r\n\r\nSECTION 16 – TERMINATION\r\n\r\nThe obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.\r\n\r\nThese Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.\r\n\r\nIf in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).\r\n\r\nSECTION 17 – ENTIRE AGREEMENT\r\n\r\nThe failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.\r\n\r\nThese Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).\r\n\r\nAny ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.\r\n\r\nSECTION 18 – GOVERNING LAW\r\n\r\nThese Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of the United States\r\n\r\nSECTION 19 – CHANGES TO TERMS OF SERVICE\r\n\r\nYou can review the most current version of the Terms of Service at any time at this page.\r\n\r\nWe reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.\r\n\r\nSECTION 20 – CONTACT INFORMATION\r\n\r\nQuestions about the Terms of Service should be sent to us by using our contact form.\r\n\r\n&nbsp;','Terms & Conditions','','inherit','closed','closed','','20-revision-v1','','','2020-01-20 19:48:38','2020-01-20 19:48:38','',20,'http://dog-adorer.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-01-20 19:49:46','2020-01-20 19:49:46','<!-- wp:heading -->\r\n<h2>Who we are</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Our website address is: http://dog-adorer.local.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Comments</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Media</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Contact forms</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Cookies</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Embedded content from other websites</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Analytics</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Who we share your data with</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>How long we retain your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>What rights you have over your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Where we send your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Visitor comments may be checked through an automated spam detection service.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Your contact information</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Additional information</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>How we protect your data</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What data breach procedures we have in place</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What third parties we receive data from</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Industry regulatory disclosure requirements</h3>\r\n<!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-01-20 19:49:46','2020-01-20 19:49:46','',3,'http://dog-adorer.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,0,'2020-01-27 23:14:31','2020-01-27 23:14:31','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e2f7669dd5107.40537090-IXE5qHO1lLJFQdwPP5mwDT5wZQcCCajN','','','2020-01-27 23:46:49','2020-01-27 23:46:49','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=24',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (25,1,'2020-01-27 22:26:55','2020-01-27 22:26:55','','Screen Shot 2020-01-27 at 2.26.42 PM','','inherit','open','closed','','screen-shot-2020-01-27-at-2-26-42-pm','','','2020-01-27 22:26:55','2020-01-27 22:26:55','',0,'http://dog-adorer.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-27-at-2.26.42-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-01-27 22:27:33','2020-01-27 22:27:33','http://dog-adorer.local/wp-content/uploads/2020/01/cropped-Screen-Shot-2020-01-27-at-2.26.42-PM.png','cropped-Screen-Shot-2020-01-27-at-2.26.42-PM.png','','inherit','open','closed','','cropped-screen-shot-2020-01-27-at-2-26-42-pm-png','','','2020-01-27 22:27:33','2020-01-27 22:27:33','',0,'http://dog-adorer.local/wp-content/uploads/2020/01/cropped-Screen-Shot-2020-01-27-at-2.26.42-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-01-27 22:31:23','2020-01-27 22:31:23',' ','','','publish','closed','closed','','27','','','2020-01-27 22:31:23','2020-01-27 22:31:23','',0,'http://dog-adorer.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-01-27 22:31:23','2020-01-27 22:31:23',' ','','','publish','closed','closed','','28','','','2020-01-27 22:31:23','2020-01-27 22:31:23','',0,'http://dog-adorer.local/?p=28',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-01-27 22:31:23','2020-01-27 22:31:23',' ','','','publish','closed','closed','','29','','','2020-01-27 22:31:23','2020-01-27 22:31:23','',0,'http://dog-adorer.local/?p=29',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-01-27 22:33:08','2020-01-27 22:33:08',' ','','','publish','closed','closed','','30','','','2020-02-01 21:44:20','2020-02-01 21:44:20','',0,'http://dog-adorer.local/?p=30',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-01-27 22:33:08','2020-01-27 22:33:08',' ','','','publish','closed','closed','','31','','','2020-02-01 21:44:20','2020-02-01 21:44:20','',0,'http://dog-adorer.local/?p=31',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-01-27 22:33:08','2020-01-27 22:33:08',' ','','','publish','closed','closed','','32','','','2020-02-01 21:44:20','2020-02-01 21:44:20','',0,'http://dog-adorer.local/?p=32',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-01-27 22:33:08','2020-01-27 22:33:08',' ','','','publish','closed','closed','','33','','','2020-02-01 21:44:20','2020-02-01 21:44:20','',0,'http://dog-adorer.local/?p=33',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-01-27 22:41:17','2020-01-27 22:41:17','{\n    \"storefront::nav_menu_locations[secondary]\": {\n        \"value\": 17,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-27 22:39:02\"\n    },\n    \"storefront::nav_menu_locations[primary]\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-27 22:40:01\"\n    },\n    \"storefront::storefront_header_link_color\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-27 22:41:01\"\n    }\n}','','','trash','closed','closed','','e6127252-7d27-4ba2-aaeb-3fdc419eed97','','','2020-01-27 22:41:17','2020-01-27 22:41:17','',0,'http://dog-adorer.local/?p=34',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (35,0,'2020-01-28 00:46:49','2020-01-28 00:46:49','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e2f84adcd3041.75330972-AOjXg7f0bAUAfoEvX5BXTIEZwoBCT1hC','','','2020-01-28 00:47:41','2020-01-28 00:47:41','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=35',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (36,1,'2020-01-27 23:51:44','2020-01-27 23:51:44',' ','','','publish','closed','closed','','36','','','2020-02-01 21:44:20','2020-02-01 21:44:20','',0,'http://dog-adorer.local/?p=36',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-01-27 23:51:44','2020-01-27 23:51:44',' ','','','publish','closed','closed','','37','','','2020-02-01 21:44:20','2020-02-01 21:44:20','',0,'http://dog-adorer.local/?p=37',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-01-27 23:51:44','2020-01-27 23:51:44',' ','','','publish','closed','closed','','38','','','2020-02-01 21:44:20','2020-02-01 21:44:20','',0,'http://dog-adorer.local/?p=38',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-01-28 00:10:45','2020-01-28 00:10:45','','Fantastic Dog Bed with Folding Mat','','publish','open','closed','','fantastic-dog-bed-with-folding-mat','','','2020-01-28 00:26:33','2020-01-28 00:26:33','',0,'http://dog-adorer.local/?post_type=product&#038;p=39',0,'product','',0);
INSERT INTO `wp_posts` VALUES (40,0,'2020-01-27 23:54:52','2020-01-27 23:54:52','[]','woocommerce_update_marketplace_suggestions','','publish','open','closed','','scheduled-action-5e2f78530a6513.81265189-Z8KgILCyBtqQe1agRaUmo614Hr4D88H3','','','2020-01-27 23:54:59','2020-01-27 23:54:59','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=40',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (41,1,'2020-01-28 00:05:07','2020-01-28 00:05:07','','Screen Shot 2020-01-27 at 4.04.34 PM','','inherit','open','closed','','screen-shot-2020-01-27-at-4-04-34-pm','','','2020-01-28 00:05:07','2020-01-28 00:05:07','',0,'http://dog-adorer.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-27-at-4.04.34-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-01-28 00:08:10','2020-01-28 00:08:10','','Screen Shot 2020-01-27 at 4.07.10 PM','','inherit','open','closed','','screen-shot-2020-01-27-at-4-07-10-pm','','','2020-01-28 00:08:10','2020-01-28 00:08:10','',0,'http://dog-adorer.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-27-at-4.07.10-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-01-28 00:08:11','2020-01-28 00:08:11','','Screen Shot 2020-01-27 at 4.07.28 PM','','inherit','open','closed','','screen-shot-2020-01-27-at-4-07-28-pm','','','2020-01-28 00:08:11','2020-01-28 00:08:11','',0,'http://dog-adorer.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-27-at-4.07.28-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-01-28 00:08:11','2020-01-28 00:08:11','','Screen Shot 2020-01-27 at 4.07.50 PM','','inherit','open','closed','','screen-shot-2020-01-27-at-4-07-50-pm','','','2020-01-28 00:08:11','2020-01-28 00:08:11','',0,'http://dog-adorer.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-27-at-4.07.50-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-01-28 00:22:37','2020-01-28 00:22:37','','Super Comfortable Dog Bed','Could your dog resist such a comfortable-looking bed?\r\n<ul>\r\n 	<li>Very comfortable and highly durable</li>\r\n 	<li>Hand washable</li>\r\n 	<li>Made from 100% cotton</li>\r\n 	<li>Lightweight</li>\r\n 	<li>Great size 39 x 29 (100 x 75 cm)</li>\r\n 	<li>Why not treat your dog?</li>\r\n</ul>','publish','open','closed','','super-comfortable-dog-bed','','','2020-01-28 00:22:37','2020-01-28 00:22:37','',0,'http://dog-adorer.local/?post_type=product&#038;p=45',0,'product','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-01-28 00:15:54','2020-01-28 00:15:54','','Screen Shot 2020-01-27 at 4.15.00 PM','','inherit','open','closed','','screen-shot-2020-01-27-at-4-15-00-pm','','','2020-01-28 00:15:54','2020-01-28 00:15:54','',0,'http://dog-adorer.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-27-at-4.15.00-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-01-28 00:15:55','2020-01-28 00:15:55','','Screen Shot 2020-01-27 at 4.15.11 PM','','inherit','open','closed','','screen-shot-2020-01-27-at-4-15-11-pm','','','2020-01-28 00:15:55','2020-01-28 00:15:55','',0,'http://dog-adorer.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-27-at-4.15.11-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-01-28 00:15:56','2020-01-28 00:15:56','','Screen Shot 2020-01-27 at 4.15.27 PM','','inherit','open','closed','','screen-shot-2020-01-27-at-4-15-27-pm','','','2020-01-28 00:15:56','2020-01-28 00:15:56','',0,'http://dog-adorer.local/wp-content/uploads/2020/01/Screen-Shot-2020-01-27-at-4.15.27-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-01-28 00:19:51','2020-01-28 00:19:51','','Super Comfortable Dog Bed - Blue','Color: Blue','publish','closed','closed','','super-comfortable-dog-bed-blue','','','2020-01-28 00:22:24','2020-01-28 00:22:24','',45,'http://dog-adorer.local/?post_type=product_variation&p=49',1,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-01-28 00:19:51','2020-01-28 00:19:51','','Super Comfortable Dog Bed - Gray','Color: Gray','publish','closed','closed','','super-comfortable-dog-bed-gray','','','2020-01-28 00:22:24','2020-01-28 00:22:24','',45,'http://dog-adorer.local/?post_type=product_variation&p=50',2,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (51,0,'2020-01-28 01:47:41','2020-01-28 01:47:41','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e2fac4e9acb32.13846393-UP0Mb8rLAn9Q9bmZgnERYzhrnYoCwwh9','','','2020-01-28 03:36:46','2020-01-28 03:36:46','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=51',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (52,0,'2020-01-28 04:36:46','2020-01-28 04:36:46','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e2fba864baa56.02502704-fdjUl5y5U6XvdRURiHTOPPRQkjTpfTei','','','2020-01-28 04:37:26','2020-01-28 04:37:26','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=52',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (53,0,'2020-01-28 05:37:26','2020-01-28 05:37:26','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e35cc8657eab0.72818118-R1tAgZcudul92kDOn8vA1lqVXu8lpT2w','','','2020-02-01 19:07:50','2020-02-01 19:07:50','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=53',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (54,0,'2020-02-01 20:07:50','2020-02-01 20:07:50','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e35daca698790.30226234-oOXIidzcUOdukNvWnX09LYEYScfnsFyd','','','2020-02-01 20:08:42','2020-02-01 20:08:42','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=54',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (55,1,'2020-02-01 19:08:01','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-02-01 19:08:01','0000-00-00 00:00:00','',0,'http://dog-adorer.local/?p=55',0,'post','',0);
INSERT INTO `wp_posts` VALUES (56,0,'2020-02-01 19:38:03','2020-02-01 19:38:03','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2020-02-01 19:38:03','2020-02-01 19:38:03','',0,'http://dog-adorer.local/wp-content/uploads/2020/02/woocommerce-placeholder.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (57,0,'2020-02-01 21:08:42','2020-02-01 21:08:42','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e35e91ea50898.82678170-4LOVYxPoXLu2JxQ8ezvgkJXxJkPtrW88','','','2020-02-01 21:09:50','2020-02-01 21:09:50','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=57',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (58,0,'2020-02-01 22:09:50','2020-02-01 22:09:50','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e35f7ef424913.66008023-sUf3HaRPMwA4qOO3wwTyVu5eTWcrOjv6','','','2020-02-01 22:13:03','2020-02-01 22:13:03','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=58',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (59,0,'2020-02-01 21:27:30','2020-02-01 21:27:30','{\"update_callback\":\"wc_update_390_move_maxmind_database\"}','woocommerce_run_update_callback','','publish','open','closed','','scheduled-action-5e35ed426841c2.38325324-O7OQuLL9U4N5I94MJqUplUJLN49luUw5','','','2020-02-01 21:27:30','2020-02-01 21:27:30','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=59',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (60,0,'2020-02-01 21:27:31','2020-02-01 21:27:31','{\"update_callback\":\"wc_update_390_change_geolocation_database_update_cron\"}','woocommerce_run_update_callback','','publish','open','closed','','scheduled-action-5e35ed5eeb97d4.61206197-OTVIvGp6nxubq4IyEUteSKO915SXTgBu','','','2020-02-01 21:27:58','2020-02-01 21:27:58','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=60',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (61,0,'2020-02-01 21:27:32','2020-02-01 21:27:32','{\"update_callback\":\"wc_update_390_db_version\"}','woocommerce_run_update_callback','','publish','open','closed','','scheduled-action-5e35ed5f002251.64363383-PfsBbuMttseDKaQss0Trvh6DII9Ks9TH','','','2020-02-01 21:27:58','2020-02-01 21:27:58','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=61',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (62,1,'2020-02-01 21:43:06','2020-02-01 21:43:06','','Home','','publish','closed','closed','','home','','','2020-02-01 21:43:06','2020-02-01 21:43:06','',0,'http://dog-adorer.local/?page_id=62',0,'page','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-02-01 21:43:06','2020-02-01 21:43:06','','Home','','inherit','closed','closed','','62-revision-v1','','','2020-02-01 21:43:06','2020-02-01 21:43:06','',62,'http://dog-adorer.local/62-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-02-01 21:44:20','2020-02-01 21:44:20',' ','','','publish','closed','closed','','64','','','2020-02-01 21:44:20','2020-02-01 21:44:20','',0,'http://dog-adorer.local/?p=64',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-02-01 21:46:16','2020-02-01 21:46:16','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-01 21:46:16\"\n    },\n    \"page_on_front\": {\n        \"value\": \"62\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-01 21:46:16\"\n    }\n}','','','trash','closed','closed','','48a46614-68e0-451b-8bd6-1964aaaae3af','','','2020-02-01 21:46:16','2020-02-01 21:46:16','',0,'http://dog-adorer.local/48a46614-68e0-451b-8bd6-1964aaaae3af/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-02-01 22:05:18','2020-02-01 22:05:18','{\n    \"storefront::homepage_control\": {\n        \"value\": \"[disabled]storefront_homepage_content,[disabled]storefront_product_categories,storefront_recent_products,[disabled]storefront_featured_products,[disabled]storefront_popular_products,storefront_on_sale_products,storefront_best_selling_products\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-01 22:05:18\"\n    }\n}','','','trash','closed','closed','','d037576d-e0cd-47bb-85ca-bce73faff6e6','','','2020-02-01 22:05:18','2020-02-01 22:05:18','',0,'http://dog-adorer.local/?p=66',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (67,0,'2020-02-01 23:13:03','2020-02-01 23:13:03','[]','wc_admin_unsnooze_admin_notes','','publish','open','closed','','scheduled-action-5e360621d15b71.38741637-QSftlsdDwxkZEh6yZIVprK0DaGZBtJNI','','','2020-02-01 23:13:37','2020-02-01 23:13:37','',0,'http://dog-adorer.local/?post_type=scheduled-action&#038;p=67',0,'scheduled-action','',3);
INSERT INTO `wp_posts` VALUES (68,1,'2020-02-01 22:26:58','2020-02-01 22:26:58','','Home page','','publish','closed','closed','','new-slideshow','','','2020-02-01 23:09:35','2020-02-01 23:09:35','',0,'http://dog-adorer.local/?post_type=ml-slider&#038;p=68',0,'ml-slider','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-02-01 22:31:16','2020-02-01 22:31:16','','Screen Shot 2020-02-01 at 2.30.32 PM','','inherit','open','closed','','screen-shot-2020-02-01-at-2-30-32-pm','','','2020-02-01 22:31:16','2020-02-01 22:31:16','',0,'http://dog-adorer.local/wp-content/uploads/2020/02/Screen-Shot-2020-02-01-at-2.30.32-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-02-01 22:31:16','2020-02-01 22:31:16','','Screen Shot 2020-02-01 at 2.30.41 PM','','inherit','open','closed','','screen-shot-2020-02-01-at-2-30-41-pm','','','2020-02-01 22:31:16','2020-02-01 22:31:16','',0,'http://dog-adorer.local/wp-content/uploads/2020/02/Screen-Shot-2020-02-01-at-2.30.41-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-02-01 22:31:17','2020-02-01 22:31:17','','Screen Shot 2020-02-01 at 2.30.52 PM','','inherit','open','closed','','screen-shot-2020-02-01-at-2-30-52-pm','','','2020-02-01 22:31:17','2020-02-01 22:31:17','',0,'http://dog-adorer.local/wp-content/uploads/2020/02/Screen-Shot-2020-02-01-at-2.30.52-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-02-01 22:32:13','2020-02-01 22:32:13','','Slider 68 - image','','publish','closed','closed','','slider-68-image','','','2020-02-01 23:09:35','2020-02-01 23:09:35','',0,'http://dog-adorer.local/?post_type=ml-slide&#038;p=72',0,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-02-01 22:32:13','2020-02-01 22:32:13','','Slider 68 - image','','publish','closed','closed','','slider-68-image-2','','','2020-02-01 23:09:35','2020-02-01 23:09:35','',0,'http://dog-adorer.local/?post_type=ml-slide&#038;p=73',1,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-02-01 22:32:13','2020-02-01 22:32:13','','Slider 68 - image','','publish','closed','closed','','slider-68-image-3','','','2020-02-01 23:09:35','2020-02-01 23:09:35','',0,'http://dog-adorer.local/?post_type=ml-slide&#038;p=74',2,'ml-slide','',0);
INSERT INTO `wp_posts` VALUES (75,0,'2020-02-02 00:13:37','2020-02-02 00:13:37','[]','wc_admin_unsnooze_admin_notes','','pending','open','closed','','','','','2020-02-02 00:13:37','2020-02-02 00:13:37','',0,'http://dog-adorer.local/?post_type=scheduled-action&p=75',0,'scheduled-action','',1);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (10,16,0);
INSERT INTO `wp_term_relationships` VALUES (11,16,0);
INSERT INTO `wp_term_relationships` VALUES (19,16,0);
INSERT INTO `wp_term_relationships` VALUES (24,16,0);
INSERT INTO `wp_term_relationships` VALUES (27,17,0);
INSERT INTO `wp_term_relationships` VALUES (28,17,0);
INSERT INTO `wp_term_relationships` VALUES (29,17,0);
INSERT INTO `wp_term_relationships` VALUES (30,18,0);
INSERT INTO `wp_term_relationships` VALUES (31,18,0);
INSERT INTO `wp_term_relationships` VALUES (32,18,0);
INSERT INTO `wp_term_relationships` VALUES (33,18,0);
INSERT INTO `wp_term_relationships` VALUES (35,16,0);
INSERT INTO `wp_term_relationships` VALUES (36,18,0);
INSERT INTO `wp_term_relationships` VALUES (37,18,0);
INSERT INTO `wp_term_relationships` VALUES (38,18,0);
INSERT INTO `wp_term_relationships` VALUES (39,2,0);
INSERT INTO `wp_term_relationships` VALUES (39,19,0);
INSERT INTO `wp_term_relationships` VALUES (45,4,0);
INSERT INTO `wp_term_relationships` VALUES (45,19,0);
INSERT INTO `wp_term_relationships` VALUES (51,16,0);
INSERT INTO `wp_term_relationships` VALUES (52,16,0);
INSERT INTO `wp_term_relationships` VALUES (53,16,0);
INSERT INTO `wp_term_relationships` VALUES (54,16,0);
INSERT INTO `wp_term_relationships` VALUES (57,16,0);
INSERT INTO `wp_term_relationships` VALUES (58,16,0);
INSERT INTO `wp_term_relationships` VALUES (59,22,0);
INSERT INTO `wp_term_relationships` VALUES (60,22,0);
INSERT INTO `wp_term_relationships` VALUES (61,22,0);
INSERT INTO `wp_term_relationships` VALUES (64,18,0);
INSERT INTO `wp_term_relationships` VALUES (67,16,0);
INSERT INTO `wp_term_relationships` VALUES (72,23,0);
INSERT INTO `wp_term_relationships` VALUES (73,23,0);
INSERT INTO `wp_term_relationships` VALUES (74,23,0);
INSERT INTO `wp_term_relationships` VALUES (75,16,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'product_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'product_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'product_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'action-group','',0,12);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'nav_menu','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'product_cat','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'product_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'product_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'action-group','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (23,23,'ml-slider','',0,3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,19,'order','0');
INSERT INTO `wp_termmeta` VALUES (2,19,'display_type','');
INSERT INTO `wp_termmeta` VALUES (3,19,'thumbnail_id','0');
INSERT INTO `wp_termmeta` VALUES (4,20,'order','0');
INSERT INTO `wp_termmeta` VALUES (5,20,'display_type','');
INSERT INTO `wp_termmeta` VALUES (6,20,'thumbnail_id','0');
INSERT INTO `wp_termmeta` VALUES (7,21,'order','0');
INSERT INTO `wp_termmeta` VALUES (8,21,'display_type','');
INSERT INTO `wp_termmeta` VALUES (9,21,'thumbnail_id','0');
INSERT INTO `wp_termmeta` VALUES (10,15,'product_count_product_cat','0');
INSERT INTO `wp_termmeta` VALUES (11,19,'product_count_product_cat','2');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'simple','simple',0);
INSERT INTO `wp_terms` VALUES (3,'grouped','grouped',0);
INSERT INTO `wp_terms` VALUES (4,'variable','variable',0);
INSERT INTO `wp_terms` VALUES (5,'external','external',0);
INSERT INTO `wp_terms` VALUES (6,'exclude-from-search','exclude-from-search',0);
INSERT INTO `wp_terms` VALUES (7,'exclude-from-catalog','exclude-from-catalog',0);
INSERT INTO `wp_terms` VALUES (8,'featured','featured',0);
INSERT INTO `wp_terms` VALUES (9,'outofstock','outofstock',0);
INSERT INTO `wp_terms` VALUES (10,'rated-1','rated-1',0);
INSERT INTO `wp_terms` VALUES (11,'rated-2','rated-2',0);
INSERT INTO `wp_terms` VALUES (12,'rated-3','rated-3',0);
INSERT INTO `wp_terms` VALUES (13,'rated-4','rated-4',0);
INSERT INTO `wp_terms` VALUES (14,'rated-5','rated-5',0);
INSERT INTO `wp_terms` VALUES (15,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (16,'wc-admin-notes','wc-admin-notes',0);
INSERT INTO `wp_terms` VALUES (17,'Top Menu','top-menu',0);
INSERT INTO `wp_terms` VALUES (18,'Main Menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (19,'Beds','beds',0);
INSERT INTO `wp_terms` VALUES (20,'Collars','collars',0);
INSERT INTO `wp_terms` VALUES (21,'Toys','toys',0);
INSERT INTO `wp_terms` VALUES (22,'woocommerce-db-updates','woocommerce-db-updates',0);
INSERT INTO `wp_terms` VALUES (23,'68','68',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','flaugher');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','55');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'_woocommerce_tracks_anon_id','woo:i7O/tAN6nJpeO+5ke7RDiA5Y');
INSERT INTO `wp_usermeta` VALUES (20,1,'jetpack_tracks_anon_id','jetpack:+YyW61EVnw+jLlvc2jirElRT');
INSERT INTO `wp_usermeta` VALUES (21,1,'dismissed_no_secure_connection_notice','1');
INSERT INTO `wp_usermeta` VALUES (22,1,'closedpostboxes_dashboard','a:1:{i:0;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'wc_last_active','1580515200');
INSERT INTO `wp_usermeta` VALUES (25,1,'billing_first_name','');
INSERT INTO `wp_usermeta` VALUES (26,1,'billing_last_name','');
INSERT INTO `wp_usermeta` VALUES (27,1,'billing_company','');
INSERT INTO `wp_usermeta` VALUES (28,1,'billing_address_1','');
INSERT INTO `wp_usermeta` VALUES (29,1,'billing_address_2','');
INSERT INTO `wp_usermeta` VALUES (30,1,'billing_city','');
INSERT INTO `wp_usermeta` VALUES (31,1,'billing_postcode','');
INSERT INTO `wp_usermeta` VALUES (32,1,'billing_country','');
INSERT INTO `wp_usermeta` VALUES (33,1,'billing_state','');
INSERT INTO `wp_usermeta` VALUES (34,1,'billing_phone','');
INSERT INTO `wp_usermeta` VALUES (35,1,'billing_email','flaugher@gmail.com');
INSERT INTO `wp_usermeta` VALUES (36,1,'shipping_first_name','');
INSERT INTO `wp_usermeta` VALUES (37,1,'shipping_last_name','');
INSERT INTO `wp_usermeta` VALUES (38,1,'shipping_company','');
INSERT INTO `wp_usermeta` VALUES (39,1,'shipping_address_1','');
INSERT INTO `wp_usermeta` VALUES (40,1,'shipping_address_2','');
INSERT INTO `wp_usermeta` VALUES (41,1,'shipping_city','');
INSERT INTO `wp_usermeta` VALUES (42,1,'shipping_postcode','');
INSERT INTO `wp_usermeta` VALUES (43,1,'shipping_country','');
INSERT INTO `wp_usermeta` VALUES (44,1,'shipping_state','');
INSERT INTO `wp_usermeta` VALUES (45,1,'last_update','1579548878');
INSERT INTO `wp_usermeta` VALUES (46,1,'wp_user-settings','editor=tinymce&hidetb=1&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (47,1,'wp_user-settings-time','1580164080');
INSERT INTO `wp_usermeta` VALUES (48,1,'session_tokens','a:1:{s:64:\"ceac52f129dda24c8fee6aea032f43d450a42af69b88a37efba8fc457c101d0c\";a:4:{s:10:\"expiration\";i:1580756880;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580584080;}}');
INSERT INTO `wp_usermeta` VALUES (49,1,'_order_count','0');
INSERT INTO `wp_usermeta` VALUES (51,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (52,1,'metaboxhidden_nav-menus','a:3:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_tag\";}');
INSERT INTO `wp_usermeta` VALUES (53,1,'nav_menu_recently_edited','18');
INSERT INTO `wp_usermeta` VALUES (54,1,'closedpostboxes_nav-menus','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (55,1,'closedpostboxes_product','a:1:{i:0;s:19:\"tagsdiv-product_tag\";}');
INSERT INTO `wp_usermeta` VALUES (56,1,'metaboxhidden_product','a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (58,1,'dismissed_update_notice','1');
INSERT INTO `wp_usermeta` VALUES (59,1,'dismissed_maxmind_license_key_notice','1');
INSERT INTO `wp_usermeta` VALUES (60,1,'wp_metaslider_user_saw_callout_toolbar','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
INSERT INTO `wp_users` VALUES (1,'flaugher','$P$B9p5zoZftsuAlWPlU6RfCTguD/8EOe/','flaugher','flaugher@gmail.com','','2020-01-20 18:16:07','',0,'flaugher');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_note_actions` VALUES (1,1,'add-a-product','Add a product','http://dog-adorer.local/wp-admin/post-new.php?post_type=product','actioned',1);
INSERT INTO `wp_wc_admin_note_actions` VALUES (2,2,'learn-more','Learn more','https://woocommerce.wordpress.com/','actioned',0);
INSERT INTO `wp_wc_admin_note_actions` VALUES (3,3,'connect','Connect','?page=wc-addons&section=helper','actioned',0);
INSERT INTO `wp_wc_admin_note_actions` VALUES (4,4,'share-feedback','Review','https://wordpress.org/support/plugin/woocommerce-admin/reviews/?rate=5#new-post','actioned',0);
INSERT INTO `wp_wc_admin_note_actions` VALUES (5,5,'learn-more','Learn more','https://woocommerce.com/mobile/','actioned',0);
INSERT INTO `wp_wc_admin_note_actions` VALUES (6,6,'tracking-dismiss','Dismiss','','actioned',0);
INSERT INTO `wp_wc_admin_note_actions` VALUES (7,6,'tracking-opt-in','Activate usage tracking','','actioned',1);
INSERT INTO `wp_wc_admin_note_actions` VALUES (8,7,'learn-more','Learn more','https://woocommerce.com/products/facebook/','unactioned',0);
INSERT INTO `wp_wc_admin_note_actions` VALUES (9,7,'install-now','Install now','','unactioned',1);
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_notes`
--

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_notes` VALUES (1,'wc-admin-add-first-product','info','en_US','Add your first product','Grow your revenue by adding products to your store. Add products manually, import from a sheet, or migrate from another platform.','product','{}','unactioned','woocommerce-admin','2020-01-20 18:44:07',NULL,0);
INSERT INTO `wp_wc_admin_notes` VALUES (2,'wc-admin-welcome-note','info','en_US','New feature(s)','Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!','info','{}','unactioned','woocommerce-admin','2020-01-20 18:44:07',NULL,0);
INSERT INTO `wp_wc_admin_notes` VALUES (3,'wc-admin-wc-helper-connection','info','en_US','Connect to WooCommerce.com','Connect to get important product notifications and updates.','info','{}','unactioned','woocommerce-admin','2020-01-20 18:44:07',NULL,0);
INSERT INTO `wp_wc_admin_notes` VALUES (4,'wc-admin-store-notice-giving-feedback','info','en_US','Review your experience','If you like WooCommerce Admin please leave us a 5 star rating. A huge thanks in advance!','info','{}','unactioned','woocommerce-admin','2020-01-27 22:14:33',NULL,0);
INSERT INTO `wp_wc_admin_notes` VALUES (5,'wc-admin-mobile-app','info','en_US','Install Woo mobile app','Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.','phone','{}','unactioned','woocommerce-admin','2020-01-27 22:14:33',NULL,0);
INSERT INTO `wp_wc_admin_notes` VALUES (6,'wc-admin-usage-tracking-opt-in','info','en_US','Help WooCommerce improve with usage tracking','Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://dog-adorer.local/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking\" target=\"_blank\">Read more</a> about what data we collect.','info','{}','unactioned','woocommerce-admin','2020-01-27 22:14:33',NULL,0);
INSERT INTO `wp_wc_admin_notes` VALUES (7,'wc-admin-facebook-extension','info','en_US','Market on Facebook','Grow your business by targeting the right people and driving sales with Facebook. You can install this free extension now.','thumbs-up','{}','unactioned','woocommerce-admin','2020-02-01 19:07:53',NULL,0);
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_category_lookup`
--

DROP TABLE IF EXISTS `wp_wc_category_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_category_lookup`
--

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_category_lookup` VALUES (15,15);
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_coupon_lookup`
--

LOCK TABLES `wp_wc_order_coupon_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_stats`
--

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

LOCK TABLES `wp_wc_order_tax_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_product_meta_lookup` VALUES (39,'',0,0,0.00,0.00,0,NULL,'instock',0,0.00,0);
INSERT INTO `wp_wc_product_meta_lookup` VALUES (45,'',0,0,19.00,19.00,0,NULL,'instock',0,0.00,0);
INSERT INTO `wp_wc_product_meta_lookup` VALUES (49,'',0,0,19.00,19.00,1,NULL,'instock',0,0.00,0);
INSERT INTO `wp_wc_product_meta_lookup` VALUES (50,'',0,0,19.00,19.00,1,NULL,'instock',0,0.00,0);
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` VALUES (1,'Reduced rate','reduced-rate');
INSERT INTO `wp_wc_tax_rate_classes` VALUES (2,'Zero rate','zero-rate');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (6,'1','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:736:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-01-20T19:34:38+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:18:\"flaugher@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}',1580756882);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-01 15:31:03
