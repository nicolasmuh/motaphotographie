-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-05-21 10:20:22','2024-05-21 10:20:22','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://motaphotographie.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://motaphotographie.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','MotaPhotographie','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
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
INSERT INTO `wp_options` VALUES (23,'date_format','d/m/Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','H:i','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:121:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"photographies/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"photographies/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"photographies/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"photographies/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"photographies/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"photographies/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"photographies/([^/]+)/embed/?$\";s:46:\"index.php?photographies=$matches[1]&embed=true\";s:34:\"photographies/([^/]+)/trackback/?$\";s:40:\"index.php?photographies=$matches[1]&tb=1\";s:42:\"photographies/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?photographies=$matches[1]&paged=$matches[2]\";s:49:\"photographies/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?photographies=$matches[1]&cpage=$matches[2]\";s:38:\"photographies/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?photographies=$matches[1]&page=$matches[2]\";s:30:\"photographies/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"photographies/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"photographies/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"photographies/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"photographies/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"photographies/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"categorie_photos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?categorie_photos=$matches[1]&feed=$matches[2]\";s:52:\"categorie_photos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?categorie_photos=$matches[1]&feed=$matches[2]\";s:33:\"categorie_photos/([^/]+)/embed/?$\";s:49:\"index.php?categorie_photos=$matches[1]&embed=true\";s:45:\"categorie_photos/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?categorie_photos=$matches[1]&paged=$matches[2]\";s:27:\"categorie_photos/([^/]+)/?$\";s:38:\"index.php?categorie_photos=$matches[1]\";s:48:\"formats/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?formats=$matches[1]&feed=$matches[2]\";s:43:\"formats/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?formats=$matches[1]&feed=$matches[2]\";s:24:\"formats/([^/]+)/embed/?$\";s:40:\"index.php?formats=$matches[1]&embed=true\";s:36:\"formats/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?formats=$matches[1]&paged=$matches[2]\";s:18:\"formats/([^/]+)/?$\";s:29:\"index.php?formats=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=37&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','motaphotographie','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','motaphotographie','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','57155','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','37','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','35','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1731838822','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled','0','yes');
INSERT INTO `wp_options` VALUES (100,'initial_db_version','57155','yes');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (102,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','1','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:10:{i:1716830424;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1716848424;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716848470;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716891624;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716891670;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716891671;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716897871;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1716978024;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1717071908;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.5.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (130,'_site_transient_timeout_browser_c92baae71318dc81de51a663df2f8b4f','1716891670','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_browser_c92baae71318dc81de51a663df2f8b4f','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"125.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110','1716891671','no');
INSERT INTO `wp_options` VALUES (133,'_site_transient_php_check_18f908370f4cb169b20964c7203d6110','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (147,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (148,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1716290856;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','no');
INSERT INTO `wp_options` VALUES (151,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (155,'current_theme','MotaPhotographie','yes');
INSERT INTO `wp_options` VALUES (156,'theme_mods_motaphotographie','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu_principal\";i:10;s:15:\"menu_secondaire\";i:11;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:34;}','yes');
INSERT INTO `wp_options` VALUES (157,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (164,'WPLANG','fr_FR','yes');
INSERT INTO `wp_options` VALUES (165,'new_admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (168,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','no');
INSERT INTO `wp_options` VALUES (169,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (173,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.9.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1716293168;s:7:\"version\";s:5:\"5.9.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (176,'acf_first_activated_version','6.2.9','yes');
INSERT INTO `wp_options` VALUES (177,'acf_version','6.3.0','yes');
INSERT INTO `wp_options` VALUES (181,'cptui_new_install','false','yes');
INSERT INTO `wp_options` VALUES (182,'cptui_post_types','a:1:{s:13:\"photographies\";a:34:{s:4:\"name\";s:13:\"photographies\";s:5:\"label\";s:13:\"Photographies\";s:14:\"singular_label\";s:12:\"Photographie\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}','yes');
INSERT INTO `wp_options` VALUES (185,'cptui_taxonomies','a:2:{s:7:\"formats\";a:28:{s:4:\"name\";s:7:\"formats\";s:5:\"label\";s:7:\"formats\";s:14:\"singular_label\";s:6:\"format\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:13:\"photographies\";}}s:17:\"categorie_photos \";a:28:{s:4:\"name\";s:16:\"categorie_photos\";s:5:\"label\";s:19:\"catégories_photos \";s:14:\"singular_label\";s:16:\"catégorie_photo\";s:11:\"description\";s:49:\"Type d&#39;évènement a l&#39;origine du cliché\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:13:\"photographies\";}}}','yes');
INSERT INTO `wp_options` VALUES (207,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.5.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1716820734;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (209,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716820734;s:7:\"checked\";a:2:{s:16:\"motaphotographie\";s:3:\"1.1\";s:16:\"twentytwentyfour\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.1.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (216,'site_logo','34','yes');
INSERT INTO `wp_options` VALUES (219,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (231,'_transient_health-check-site-status-result','{\"good\":18,\"recommended\":2,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (238,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (279,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716820734;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.3.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=3079482\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.16.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.16.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.3.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.9.5\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.16.0\";}}','no');
INSERT INTO `wp_options` VALUES (281,'acf_site_health','{\"version\":\"6.3.0\",\"plugin_type\":\"Free\",\"wp_version\":\"6.5.3\",\"mysql_version\":\"8.0.16\",\"is_multisite\":false,\"active_theme\":{\"name\":\"MotaPhotographie\",\"version\":\"1.1\",\"theme_uri\":\"https:\\/\\/github.com\\/nicolasmuh\\/motaphotographie\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.0\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"contact-form-7\\/wp-contact-form-7.php\":{\"name\":\"Contact Form 7\",\"version\":\"5.9.5\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/\"},\"custom-post-type-ui\\/custom-post-type-ui.php\":{\"name\":\"Custom Post Type UI\",\"version\":\"1.16.0\",\"plugin_uri\":\"https:\\/\\/github.com\\/WebDevStudios\\/custom-post-type-ui\\/\"}},\"ui_field_groups\":\"1\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"radio\":1,\"text\":1,\"number\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"5\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"5\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":true,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"last_updated\":1716467108}','no');
INSERT INTO `wp_options` VALUES (308,'_site_transient_timeout_theme_roots','1716822534','no');
INSERT INTO `wp_options` VALUES (309,'_site_transient_theme_roots','a:2:{s:16:\"motaphotographie\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,6,'_form','<div class=\"F-Nom\">\n  <label> Nom\n    [text* your-name autocomplete:name] </label>\n</div>\n<div class=\"F-Email\">\n <label> E-mail\n    [email* your-email autocomplete:email] </label>\n</div>\n<div class=\"F-reference\">\n <label> Réf. PPHOTO\n    [text* your-photo] </label>\n</div>\n<div class=\"F-message\">\n <label> MESSAGE (optional)\n    [textarea your-message] </label>\n</div>\n<div class=\"F-button\">\n [submit \"Envoyer\"]\n</div>');
INSERT INTO `wp_postmeta` VALUES (4,6,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:48:\"[_site_title] <wordpress@motaphotographie.local>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (5,6,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:48:\"[_site_title] <wordpress@motaphotographie.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (6,6,'_messages','a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:46:\"Veuillez saisir une date au format AAAA-MM-JJ.\";s:14:\"date_too_early\";s:34:\"La date de ce champ est trop tôt.\";s:13:\"date_too_late\";s:37:\"La date de ce champ est trop tardive.\";s:14:\"invalid_number\";s:27:\"Veuillez saisir un numéro.\";s:16:\"number_too_small\";s:38:\"Le chiffre de ce champ est trop petit.\";s:16:\"number_too_large\";s:32:\"Ce champ a un numéro trop long.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:13:\"invalid_email\";s:37:\"Veuillez saisir votre adresse e-mail.\";s:11:\"invalid_url\";s:24:\"Veuillez saisisr une URL\";s:11:\"invalid_tel\";s:42:\"Veuillez saisir un numéro de téléphone.\";}');
INSERT INTO `wp_postmeta` VALUES (7,6,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (8,6,'_locale','fr_FR');
INSERT INTO `wp_postmeta` VALUES (9,6,'_hash','7509437c7f5d41221c65f7f1091b17829aac00cc');
INSERT INTO `wp_postmeta` VALUES (10,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (11,10,'_edit_lock','1716388438:1');
INSERT INTO `wp_postmeta` VALUES (12,14,'_wp_attached_file','2024/05/nathalie-0.webp');
INSERT INTO `wp_postmeta` VALUES (13,14,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:23:\"2024/05/nathalie-0.webp\";s:8:\"filesize\";i:154822;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-0-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13146;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-0-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:59256;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-0-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6816;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-0-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:41006;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (14,15,'_wp_attached_file','2024/05/nathalie-1.webp');
INSERT INTO `wp_postmeta` VALUES (15,15,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:23:\"2024/05/nathalie-1.webp\";s:8:\"filesize\";i:95150;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-1-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18354;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-1-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:101272;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8012;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-1-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:69660;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (16,16,'_wp_attached_file','2024/05/nathalie-2.webp');
INSERT INTO `wp_postmeta` VALUES (17,16,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:868;s:4:\"file\";s:23:\"2024/05/nathalie-2.webp\";s:8:\"filesize\";i:188022;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-2-300x181.webp\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:21730;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-2-1024x617.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:617;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:175422;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-2-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11010;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-2-768x463.webp\";s:5:\"width\";i:768;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:109276;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (18,17,'_wp_attached_file','2024/05/nathalie-3.webp');
INSERT INTO `wp_postmeta` VALUES (19,17,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:2160;s:4:\"file\";s:23:\"2024/05/nathalie-3.webp\";s:8:\"filesize\";i:52060;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-3-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7814;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-3-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:35658;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-3-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3828;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-3-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:41176;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-3-1024x1536.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:59732;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-3-1365x2048.webp\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:86278;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (20,18,'_wp_attached_file','2024/05/nathalie-4.webp');
INSERT INTO `wp_postmeta` VALUES (21,18,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:934;s:6:\"height\";i:1400;s:4:\"file\";s:23:\"2024/05/nathalie-4.webp\";s:8:\"filesize\";i:114728;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-4-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18230;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-4-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:122592;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-4-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7686;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-4-768x1151.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1151;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:144912;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (22,19,'_wp_attached_file','2024/05/nathalie-5.webp');
INSERT INTO `wp_postmeta` VALUES (23,19,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:935;s:6:\"height\";i:1400;s:4:\"file\";s:23:\"2024/05/nathalie-5.webp\";s:8:\"filesize\";i:115978;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-5-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:19140;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-5-684x1024.webp\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:126496;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-5-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8136;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-5-768x1150.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:149862;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (24,20,'_wp_attached_file','2024/05/nathalie-6.webp');
INSERT INTO `wp_postmeta` VALUES (25,20,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:1152;s:4:\"file\";s:23:\"2024/05/nathalie-6.webp\";s:8:\"filesize\";i:65586;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-6-300x240.webp\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12740;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-6-1024x819.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:819;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:69814;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-6-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5356;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-6-768x614.webp\";s:5:\"width\";i:768;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:46884;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (26,21,'_wp_attached_file','2024/05/nathalie-7.webp');
INSERT INTO `wp_postmeta` VALUES (27,21,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:23:\"2024/05/nathalie-7.webp\";s:8:\"filesize\";i:53120;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-7-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12128;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-7-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:59366;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-7-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5686;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-7-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:41540;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (28,22,'_wp_attached_file','2024/05/nathalie-8.webp');
INSERT INTO `wp_postmeta` VALUES (29,22,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:2097;s:4:\"file\";s:23:\"2024/05/nathalie-8.webp\";s:8:\"filesize\";i:126538;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-8-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16060;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-8-684x1024.webp\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:83900;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-8-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8384;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-8-768x1150.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:97722;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-8-1025x1536.webp\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:139900;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-8-1367x2048.webp\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:202766;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (30,23,'_wp_attached_file','2024/05/nathalie-9.webp');
INSERT INTO `wp_postmeta` VALUES (31,23,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:23:\"2024/05/nathalie-9.webp\";s:8:\"filesize\";i:75854;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-9-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12920;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-9-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:78626;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-9-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6706;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-9-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:51936;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (32,24,'_wp_attached_file','2024/05/nathalie-10.webp');
INSERT INTO `wp_postmeta` VALUES (33,24,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:1050;s:4:\"file\";s:24:\"2024/05/nathalie-10.webp\";s:8:\"filesize\";i:339088;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-10-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:28034;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-10-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:269410;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-10-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10182;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-10-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:157094;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (34,25,'_wp_attached_file','2024/05/nathalie-11.webp');
INSERT INTO `wp_postmeta` VALUES (35,25,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:961;s:4:\"file\";s:24:\"2024/05/nathalie-11.webp\";s:8:\"filesize\";i:51870;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-11-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13298;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-11-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:58122;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-11-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6840;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-11-768x513.webp\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:42194;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (36,26,'_wp_attached_file','2024/05/nathalie-12.webp');
INSERT INTO `wp_postmeta` VALUES (37,26,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:24:\"2024/05/nathalie-12.webp\";s:8:\"filesize\";i:88062;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-12-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18652;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-12-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:93212;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-12-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9384;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-12-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:64474;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (38,27,'_wp_attached_file','2024/05/nathalie-13.webp');
INSERT INTO `wp_postmeta` VALUES (39,27,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:960;s:6:\"height\";i:1440;s:4:\"file\";s:24:\"2024/05/nathalie-13.webp\";s:8:\"filesize\";i:36440;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-13-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8486;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-13-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:40490;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-13-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4738;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-13-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:46552;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (40,28,'_wp_attached_file','2024/05/nathalie-14.webp');
INSERT INTO `wp_postmeta` VALUES (41,28,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:960;s:6:\"height\";i:1440;s:4:\"file\";s:24:\"2024/05/nathalie-14.webp\";s:8:\"filesize\";i:74078;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-14-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9946;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-14-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:74434;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-14-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4846;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-14-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:85990;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (42,29,'_wp_attached_file','2024/05/nathalie-15.webp');
INSERT INTO `wp_postmeta` VALUES (43,29,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:962;s:6:\"height\";i:1440;s:4:\"file\";s:24:\"2024/05/nathalie-15.webp\";s:8:\"filesize\";i:117198;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-15-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:19460;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-15-684x1024.webp\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:123352;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-15-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8168;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-15-768x1150.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:144470;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (44,30,'_edit_lock','1716461706:1');
INSERT INTO `wp_postmeta` VALUES (45,14,'_wp_attachment_image_alt','santé !');
INSERT INTO `wp_postmeta` VALUES (46,30,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (47,30,'Type','argentique');
INSERT INTO `wp_postmeta` VALUES (48,30,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (49,30,'reference','bf2385');
INSERT INTO `wp_postmeta` VALUES (50,30,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (51,30,'annee','2019');
INSERT INTO `wp_postmeta` VALUES (52,30,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (53,31,'_edit_lock','1716461673:1');
INSERT INTO `wp_postmeta` VALUES (54,15,'_wp_attachment_image_alt','Et bon anniversaire');
INSERT INTO `wp_postmeta` VALUES (55,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (56,31,'Type','argentique');
INSERT INTO `wp_postmeta` VALUES (57,31,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (58,31,'reference','bf2386');
INSERT INTO `wp_postmeta` VALUES (59,31,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (60,31,'annee','2020');
INSERT INTO `wp_postmeta` VALUES (61,31,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (62,32,'_edit_lock','1716461626:1');
INSERT INTO `wp_postmeta` VALUES (63,16,'_wp_attachment_image_alt','let\'s party');
INSERT INTO `wp_postmeta` VALUES (64,32,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (65,32,'Type','numerique');
INSERT INTO `wp_postmeta` VALUES (66,32,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (67,32,'reference','bf2387');
INSERT INTO `wp_postmeta` VALUES (68,32,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (69,32,'annee','2021');
INSERT INTO `wp_postmeta` VALUES (70,32,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (71,8,'_edit_lock','1716386817:1');
INSERT INTO `wp_postmeta` VALUES (72,9,'_edit_lock','1716380882:1');
INSERT INTO `wp_postmeta` VALUES (73,33,'_wp_attached_file','2024/05/Logo.png');
INSERT INTO `wp_postmeta` VALUES (74,33,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:690;s:6:\"height\";i:44;s:4:\"file\";s:16:\"2024/05/Logo.png\";s:8:\"filesize\";i:3547;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"Logo-300x19.png\";s:5:\"width\";i:300;s:6:\"height\";i:19;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2636;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"Logo-150x44.png\";s:5:\"width\";i:150;s:6:\"height\";i:44;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:507;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (75,34,'_wp_attached_file','2024/05/cropped-Logo.png');
INSERT INTO `wp_postmeta` VALUES (76,34,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (77,34,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:690;s:6:\"height\";i:44;s:4:\"file\";s:24:\"2024/05/cropped-Logo.png\";s:8:\"filesize\";i:3679;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"cropped-Logo-300x19.png\";s:5:\"width\";i:300;s:6:\"height\";i:19;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2636;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"cropped-Logo-150x44.png\";s:5:\"width\";i:150;s:6:\"height\";i:44;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:507;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (78,35,'_wp_attached_file','2024/05/cropped-Logo-1.png');
INSERT INTO `wp_postmeta` VALUES (79,35,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (80,35,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2024/05/cropped-Logo-1.png\";s:8:\"filesize\";i:4792;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"cropped-Logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4181;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-Logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2685;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:26:\"cropped-Logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3888;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:26:\"cropped-Logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3042;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:26:\"cropped-Logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2944;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:24:\"cropped-Logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:680;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (81,36,'_edit_lock','1716298632:1');
INSERT INTO `wp_postmeta` VALUES (82,36,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (83,36,'_wp_trash_meta_time','1716298647');
INSERT INTO `wp_postmeta` VALUES (84,37,'_edit_lock','1716299481:1');
INSERT INTO `wp_postmeta` VALUES (85,39,'_edit_lock','1716299362:1');
INSERT INTO `wp_postmeta` VALUES (86,41,'_edit_lock','1716299392:1');
INSERT INTO `wp_postmeta` VALUES (87,43,'_edit_lock','1716299422:1');
INSERT INTO `wp_postmeta` VALUES (88,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (89,2,'_wp_trash_meta_time','1716299571');
INSERT INTO `wp_postmeta` VALUES (90,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (91,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (92,3,'_wp_trash_meta_time','1716299575');
INSERT INTO `wp_postmeta` VALUES (93,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (94,47,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (95,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (96,47,'_menu_item_object_id','47');
INSERT INTO `wp_postmeta` VALUES (97,47,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (98,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (99,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (100,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (101,47,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (103,48,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (104,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (105,48,'_menu_item_object_id','39');
INSERT INTO `wp_postmeta` VALUES (106,48,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (107,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (108,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (109,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (110,48,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (112,49,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (113,49,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (114,49,'_menu_item_object_id','37');
INSERT INTO `wp_postmeta` VALUES (115,49,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (116,49,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (117,49,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (118,49,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (119,49,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (121,50,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (122,50,'_wp_trash_meta_time','1716299965');
INSERT INTO `wp_postmeta` VALUES (124,52,'_edit_lock','1716379859:1');
INSERT INTO `wp_postmeta` VALUES (125,53,'_edit_lock','1716461579:1');
INSERT INTO `wp_postmeta` VALUES (126,17,'_wp_attachment_image_alt','Tout est installé');
INSERT INTO `wp_postmeta` VALUES (128,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (129,53,'Type','argentique');
INSERT INTO `wp_postmeta` VALUES (130,53,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (131,53,'reference','bf2388');
INSERT INTO `wp_postmeta` VALUES (132,53,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (133,53,'annee','2019');
INSERT INTO `wp_postmeta` VALUES (134,53,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (135,54,'_edit_lock','1716461550:1');
INSERT INTO `wp_postmeta` VALUES (136,18,'_wp_attachment_image_alt','Vers l\'éternité');
INSERT INTO `wp_postmeta` VALUES (137,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (138,54,'Type','numerique');
INSERT INTO `wp_postmeta` VALUES (139,54,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (140,54,'reference','bf2389');
INSERT INTO `wp_postmeta` VALUES (141,54,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (142,54,'annee','2020');
INSERT INTO `wp_postmeta` VALUES (143,54,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (144,55,'_edit_lock','1716461512:1');
INSERT INTO `wp_postmeta` VALUES (145,19,'_wp_attachment_image_alt','Embrassez la mariée');
INSERT INTO `wp_postmeta` VALUES (146,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (147,55,'Type','numerique');
INSERT INTO `wp_postmeta` VALUES (148,55,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (149,55,'reference','bf2390');
INSERT INTO `wp_postmeta` VALUES (150,55,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (151,55,'annee','2021');
INSERT INTO `wp_postmeta` VALUES (152,55,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (153,56,'_edit_lock','1716461471:1');
INSERT INTO `wp_postmeta` VALUES (154,20,'_wp_attachment_image_alt','Dansons ensemble');
INSERT INTO `wp_postmeta` VALUES (155,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (156,56,'Type','argentique');
INSERT INTO `wp_postmeta` VALUES (157,56,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (158,56,'reference','bf2391');
INSERT INTO `wp_postmeta` VALUES (159,56,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (160,56,'annee','2020');
INSERT INTO `wp_postmeta` VALUES (161,56,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (162,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (163,57,'_edit_lock','1716461428:1');
INSERT INTO `wp_postmeta` VALUES (164,21,'_wp_attachment_image_alt','Le menu');
INSERT INTO `wp_postmeta` VALUES (165,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (166,57,'Type','numerique');
INSERT INTO `wp_postmeta` VALUES (167,57,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (168,57,'reference','bf2392');
INSERT INTO `wp_postmeta` VALUES (169,57,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (170,57,'annee','2019');
INSERT INTO `wp_postmeta` VALUES (171,57,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (172,58,'_edit_lock','1716461374:1');
INSERT INTO `wp_postmeta` VALUES (173,22,'_wp_attachment_image_alt','Au bal masqué');
INSERT INTO `wp_postmeta` VALUES (174,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (175,58,'Type','numerique');
INSERT INTO `wp_postmeta` VALUES (176,58,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (177,58,'reference','bf2393');
INSERT INTO `wp_postmeta` VALUES (178,58,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (179,58,'annee','2021');
INSERT INTO `wp_postmeta` VALUES (180,58,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (181,59,'_edit_lock','1716461457:1');
INSERT INTO `wp_postmeta` VALUES (182,23,'_wp_attachment_image_alt','Let\'s dance!');
INSERT INTO `wp_postmeta` VALUES (183,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (184,59,'Type','numerique');
INSERT INTO `wp_postmeta` VALUES (185,59,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (186,59,'reference','bf2394');
INSERT INTO `wp_postmeta` VALUES (187,59,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (188,59,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (189,59,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (190,60,'_edit_lock','1716461284:1');
INSERT INTO `wp_postmeta` VALUES (191,24,'_wp_attachment_image_alt','Jour de match');
INSERT INTO `wp_postmeta` VALUES (192,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (193,60,'Type','numerique');
INSERT INTO `wp_postmeta` VALUES (194,60,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (195,60,'reference','bf2395');
INSERT INTO `wp_postmeta` VALUES (196,60,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (197,60,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (198,60,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (199,61,'_edit_lock','1716461252:1');
INSERT INTO `wp_postmeta` VALUES (200,25,'_wp_attachment_image_alt','Préparation');
INSERT INTO `wp_postmeta` VALUES (201,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (202,61,'Type','argentique');
INSERT INTO `wp_postmeta` VALUES (203,61,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (204,61,'reference','bf2396');
INSERT INTO `wp_postmeta` VALUES (205,61,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (206,61,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (207,61,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (208,62,'_edit_lock','1716461227:1');
INSERT INTO `wp_postmeta` VALUES (209,26,'_wp_attachment_image_alt','Bière ou eau plate ?');
INSERT INTO `wp_postmeta` VALUES (210,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (211,62,'Type','numerique');
INSERT INTO `wp_postmeta` VALUES (212,62,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (213,62,'reference','bf2397');
INSERT INTO `wp_postmeta` VALUES (214,62,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (215,62,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (216,62,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (217,63,'_edit_lock','1716461200:1');
INSERT INTO `wp_postmeta` VALUES (218,27,'_wp_attachment_image_alt','Bouquet final');
INSERT INTO `wp_postmeta` VALUES (219,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (220,63,'Type','numerique');
INSERT INTO `wp_postmeta` VALUES (221,63,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (222,63,'reference','bf2398');
INSERT INTO `wp_postmeta` VALUES (223,63,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (224,63,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (225,63,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (226,64,'_edit_lock','1716461175:1');
INSERT INTO `wp_postmeta` VALUES (227,28,'_wp_attachment_image_alt','Du soir au matin');
INSERT INTO `wp_postmeta` VALUES (228,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (229,64,'Type','argentique');
INSERT INTO `wp_postmeta` VALUES (230,64,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (231,64,'reference','bf2399');
INSERT INTO `wp_postmeta` VALUES (232,64,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (233,64,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (234,64,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (235,65,'_edit_lock','1716461143:1');
INSERT INTO `wp_postmeta` VALUES (236,29,'_wp_attachment_image_alt','Team mariée');
INSERT INTO `wp_postmeta` VALUES (237,65,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (238,65,'Type','numerique');
INSERT INTO `wp_postmeta` VALUES (239,65,'_Type','field_664c9081b2c30');
INSERT INTO `wp_postmeta` VALUES (240,65,'reference','bf2400');
INSERT INTO `wp_postmeta` VALUES (241,65,'_reference','field_664c9137b2c31');
INSERT INTO `wp_postmeta` VALUES (242,65,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (243,65,'_annee','field_664c9307b2c32');
INSERT INTO `wp_postmeta` VALUES (244,65,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (245,63,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (246,64,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (247,62,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (248,61,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (249,60,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (250,59,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (251,58,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (252,57,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (253,56,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (254,55,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (255,54,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (256,53,'_wp_old_date','2024-05-22');
INSERT INTO `wp_postmeta` VALUES (258,32,'_wp_old_date','2024-05-21');
INSERT INTO `wp_postmeta` VALUES (259,31,'_wp_old_date','2024-05-21');
INSERT INTO `wp_postmeta` VALUES (260,30,'_wp_old_date','2024-05-21');
INSERT INTO `wp_postmeta` VALUES (261,8,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (262,8,'_wp_trash_meta_time','1716392331');
INSERT INTO `wp_postmeta` VALUES (263,8,'_wp_desired_post_slug','taxonomy_664c903d61cf5');
INSERT INTO `wp_postmeta` VALUES (264,7,'_edit_lock','1716392399:1');
INSERT INTO `wp_postmeta` VALUES (265,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (266,71,'_edit_lock','1716393452:1');
INSERT INTO `wp_postmeta` VALUES (267,71,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (268,71,'_wp_trash_meta_time','1716393645');
INSERT INTO `wp_postmeta` VALUES (269,71,'_wp_desired_post_slug','taxonomy_664e12676aa72');
INSERT INTO `wp_postmeta` VALUES (270,72,'_edit_lock','1716393884:1');
INSERT INTO `wp_postmeta` VALUES (271,73,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (272,73,'_wp_trash_meta_time','1716467876');
INSERT INTO `wp_postmeta` VALUES (273,74,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (274,74,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (275,74,'_menu_item_object_id','43');
INSERT INTO `wp_postmeta` VALUES (276,74,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (277,74,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (278,74,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (279,74,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (280,74,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (282,75,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (283,75,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (284,75,'_menu_item_object_id','41');
INSERT INTO `wp_postmeta` VALUES (285,75,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (286,75,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (287,75,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (288,75,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (289,75,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (291,76,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (292,76,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (293,76,'_menu_item_object_id','37');
INSERT INTO `wp_postmeta` VALUES (294,76,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (295,76,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (296,76,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (297,76,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (298,76,'_menu_item_url','');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-05-21 10:20:22','2024-05-21 10:20:22','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-05-21 10:20:22','2024-05-21 10:20:22','',0,'http://motaphotographie.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-05-21 10:20:22','2024-05-21 10:20:22','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://motaphotographie.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2024-05-21 13:52:51','2024-05-21 13:52:51','',0,'http://motaphotographie.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-05-21 10:20:22','2024-05-21 10:20:22','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://motaphotographie.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2024-05-21 13:52:55','2024-05-21 13:52:55','',0,'http://motaphotographie.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2024-05-21 10:21:11','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-05-21 10:21:11','0000-00-00 00:00:00','',0,'http://motaphotographie.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2024-05-21 10:21:43','2024-05-21 10:21:43','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-05-21 10:21:43','2024-05-21 10:21:43','',0,'http://motaphotographie.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2024-05-21 12:06:08','2024-05-21 12:06:08','<div class=\"F-Nom\">\r\n  <label> Nom\r\n    [text* your-name autocomplete:name] </label>\r\n</div>\r\n<div class=\"F-Email\">\r\n <label> E-mail\r\n    [email* your-email autocomplete:email] </label>\r\n</div>\r\n<div class=\"F-reference\">\r\n <label> Réf. PPHOTO\r\n    [text* your-photo] </label>\r\n</div>\r\n<div class=\"F-message\">\r\n <label> MESSAGE (optional)\r\n    [textarea your-message] </label>\r\n</div>\r\n<div class=\"F-button\">\r\n [submit \"Envoyer\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@motaphotographie.local>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@motaphotographie.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nVeuillez saisir une date au format AAAA-MM-JJ.\nLa date de ce champ est trop tôt.\nLa date de ce champ est trop tardive.\nVeuillez saisir un numéro.\nLe chiffre de ce champ est trop petit.\nCe champ a un numéro trop long.\nLa réponse à la question est incorrecte.\nVeuillez saisir votre adresse e-mail.\nVeuillez saisisr une URL\nVeuillez saisir un numéro de téléphone.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2024-05-21 14:09:58','2024-05-21 14:09:58','',0,'http://motaphotographie.local/?post_type=wpcf7_contact_form&#038;p=6',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-05-21 12:14:53','2024-05-21 12:14:53','a:35:{s:9:\"post_type\";s:13:\"photographies\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:5:\"cptui\";s:11:\"import_date\";i:1716293693;s:6:\"labels\";a:35:{s:4:\"name\";s:13:\"Photographies\";s:13:\"singular_name\";s:12:\"Photographie\";s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:14:\"filter_by_date\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";s:9:\"item_link\";s:0:\"\";s:21:\"item_link_description\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";N;s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:5:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:4:\"slug\";s:0:\"\";s:5:\"feeds\";b:0;s:5:\"pages\";b:1;s:10:\"with_front\";b:1;}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:0;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";N;s:16:\"enter_title_here\";s:0:\"\";}','Photographies','photographies','publish','closed','closed','','post_type_664c903d58458','','','2024-05-21 12:14:53','2024-05-21 12:14:53','',0,'http://motaphotographie.local/?post_type=acf-post-type&p=7',0,'acf-post-type','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2024-05-21 12:14:53','2024-05-21 12:14:53','a:29:{s:8:\"taxonomy\";s:10:\"categories\";s:11:\"object_type\";a:1:{i:0;s:13:\"photographies\";}s:22:\"advanced_configuration\";i:1;s:13:\"import_source\";s:5:\"cptui\";s:11:\"import_date\";i:1716293693;s:6:\"labels\";a:25:{s:4:\"name\";s:12:\"catégories \";s:13:\"singular_name\";s:11:\"catégorie \";s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:9:\"item_link\";s:0:\"\";s:21:\"item_link_description\";s:0:\"\";}s:11:\"description\";s:35:\"événement a l\'origine du cliché.\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:13:\"show_tagcloud\";i:0;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}','catégories','categories','trash','closed','closed','','taxonomy_664c903d61cf5__trashed','','','2024-05-22 15:38:51','2024-05-22 15:38:51','',0,'http://motaphotographie.local/?post_type=acf-taxonomy&#038;p=8',0,'acf-taxonomy','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-05-21 12:14:53','2024-05-21 12:14:53','a:29:{s:8:\"taxonomy\";s:7:\"formats\";s:11:\"object_type\";a:1:{i:0;s:13:\"photographies\";}s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:5:\"cptui\";s:11:\"import_date\";i:1716393967;s:6:\"labels\";a:29:{s:13:\"singular_name\";s:6:\"format\";s:4:\"name\";s:7:\"formats\";s:9:\"menu_name\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:14:\"filter_by_item\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:9:\"most_used\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:9:\"item_link\";s:0:\"\";s:21:\"item_link_description\";s:0:\"\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:13:\"show_tagcloud\";b:0;s:18:\"show_in_quick_edit\";s:0:\"\";s:17:\"show_admin_column\";b:0;s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:4:\"slug\";s:0:\"\";s:10:\"with_front\";b:1;s:20:\"rewrite_hierarchical\";b:0;}s:9:\"query_var\";s:12:\"taxonomy_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:4:{s:20:\"default_term_enabled\";b:0;s:17:\"default_term_name\";s:0:\"\";s:17:\"default_term_slug\";s:0:\"\";s:24:\"default_term_description\";s:0:\"\";}s:4:\"sort\";b:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}','formats','formats','publish','closed','closed','','taxonomy_664c903d6416f','','','2024-05-22 16:06:07','2024-05-22 16:06:07','',0,'http://motaphotographie.local/?post_type=acf-taxonomy&#038;p=9',0,'acf-taxonomy','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-05-21 12:27:50','2024-05-21 12:27:50','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"photographies\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Details photo','details-photo','publish','closed','closed','','group_664c908137dcd','','','2024-05-22 12:26:03','2024-05-22 12:26:03','',0,'http://motaphotographie.local/?post_type=acf-field-group&#038;p=10',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-05-21 12:27:50','2024-05-21 12:27:50','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:10:\"argentique\";s:10:\"Argentique\";s:9:\"numerique\";s:10:\"Numérique\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"label\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}','Type de photo','Type','publish','closed','closed','','field_664c9081b2c30','','','2024-05-22 12:26:03','2024-05-22 12:26:03','',10,'http://motaphotographie.local/?post_type=acf-field&#038;p=11',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-05-21 12:27:50','2024-05-21 12:27:50','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:6:\"bf2300\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','référence','reference','publish','closed','closed','','field_664c9137b2c31','','','2024-05-21 12:27:50','2024-05-21 12:27:50','',10,'http://motaphotographie.local/?post_type=acf-field&p=12',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-05-21 12:27:50','2024-05-21 12:27:50','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:2020;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','année','annee','publish','closed','closed','','field_664c9307b2c32','','','2024-05-21 12:27:50','2024-05-21 12:27:50','',10,'http://motaphotographie.local/?post_type=acf-field&p=13',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-05-21 12:52:07','2024-05-21 12:52:07','','nathalie-0','','inherit','open','closed','','nathalie-0','','','2024-05-21 12:57:11','2024-05-21 12:57:11','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-0.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-05-21 12:52:07','2024-05-21 12:52:07','','nathalie-1','','inherit','open','closed','','nathalie-1','','','2024-05-21 13:14:31','2024-05-21 13:14:31','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-1.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (16,1,'2024-05-21 12:52:08','2024-05-21 12:52:08','','nathalie-2','','inherit','open','closed','','nathalie-2','','','2024-05-21 13:16:46','2024-05-21 13:16:46','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-2.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (17,1,'2024-05-21 12:52:09','2024-05-21 12:52:09','','nathalie-3','','inherit','open','closed','','nathalie-3','','','2024-05-22 12:14:43','2024-05-22 12:14:43','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-3.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (18,1,'2024-05-21 12:52:10','2024-05-21 12:52:10','','nathalie-4','','inherit','open','closed','','nathalie-4','','','2024-05-22 12:18:44','2024-05-22 12:18:44','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-4.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-05-21 12:52:10','2024-05-21 12:52:10','','nathalie-5','','inherit','open','closed','','nathalie-5','','','2024-05-22 12:21:44','2024-05-22 12:21:44','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-5.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-05-21 12:52:11','2024-05-21 12:52:11','','nathalie-6','','inherit','open','closed','','nathalie-6','','','2024-05-22 12:22:48','2024-05-22 12:22:48','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-6.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-05-21 12:52:12','2024-05-21 12:52:12','','nathalie-7','','inherit','open','closed','','nathalie-7','','','2024-05-22 12:34:46','2024-05-22 12:34:46','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-7.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-05-21 12:52:12','2024-05-21 12:52:12','','nathalie-8','','inherit','open','closed','','nathalie-8','','','2024-05-22 12:36:21','2024-05-22 12:36:21','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-8.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-05-21 12:52:13','2024-05-21 12:52:13','','nathalie-9','','inherit','open','closed','','nathalie-9','','','2024-05-22 12:38:33','2024-05-22 12:38:33','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-9.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-05-21 12:52:14','2024-05-21 12:52:14','','nathalie-10','','inherit','open','closed','','nathalie-10','','','2024-05-22 12:39:58','2024-05-22 12:39:58','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-10.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-05-21 12:52:14','2024-05-21 12:52:14','','nathalie-11','','inherit','open','closed','','nathalie-11','','','2024-05-22 12:41:46','2024-05-22 12:41:46','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-11.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-05-21 12:52:15','2024-05-21 12:52:15','','nathalie-12','','inherit','open','closed','','nathalie-12','','','2024-05-22 12:43:13','2024-05-22 12:43:13','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-12.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-05-21 12:52:15','2024-05-21 12:52:15','','nathalie-13','','inherit','open','closed','','nathalie-13','','','2024-05-22 12:44:52','2024-05-22 12:44:52','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-13.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-05-21 12:52:16','2024-05-21 12:52:16','','nathalie-14','','inherit','open','closed','','nathalie-14','','','2024-05-22 12:46:09','2024-05-22 12:46:09','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-14.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-05-21 12:52:16','2024-05-21 12:52:16','','nathalie-15','','inherit','open','closed','','nathalie-15','','','2024-05-22 12:47:43','2024-05-22 12:47:43','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-15.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (30,1,'2019-05-21 13:13:00','2019-05-21 13:13:00','<!-- wp:image {\"id\":14,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-0-1024x683.webp\" alt=\"santé !\" class=\"wp-image-14\"/></figure>\n<!-- /wp:image -->','Santé !','','publish','closed','closed','','sante','','','2024-05-23 10:55:06','2024-05-23 10:55:06','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=30',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-05-21 13:15:00','2020-05-21 13:15:00','<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-1-1024x683.webp\" alt=\"Et bon anniversaire \" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->','Et bon anniversaire !','','publish','closed','closed','','et-bon-anniversaire','','','2024-05-23 10:54:33','2024-05-23 10:54:33','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=31',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-05-21 13:18:00','2021-05-21 13:18:00','<!-- wp:image {\"id\":16,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-2-1024x617.webp\" alt=\"let\'s party \" class=\"wp-image-16\"/></figure>\n<!-- /wp:image -->','Let\'s party','','publish','closed','closed','','lets-party','','','2024-05-23 10:53:46','2024-05-23 10:53:46','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=32',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-05-21 13:35:50','2024-05-21 13:35:50','','Logo','','inherit','open','closed','','logo','','','2024-05-21 13:35:50','2024-05-21 13:35:50','',0,'http://motaphotographie.local/wp-content/uploads/2024/05/Logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-05-21 13:36:12','2024-05-21 13:36:12','http://motaphotographie.local/wp-content/uploads/2024/05/cropped-Logo.png','cropped-Logo.png','','inherit','open','closed','','cropped-logo-png','','','2024-05-21 13:36:12','2024-05-21 13:36:12','',33,'http://motaphotographie.local/wp-content/uploads/2024/05/cropped-Logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-05-21 13:36:53','2024-05-21 13:36:53','http://motaphotographie.local/wp-content/uploads/2024/05/cropped-Logo-1.png','cropped-Logo-1.png','','inherit','open','closed','','cropped-logo-1-png','','','2024-05-21 13:36:53','2024-05-21 13:36:53','',33,'http://motaphotographie.local/wp-content/uploads/2024/05/cropped-Logo-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (36,1,'2024-05-21 13:37:27','2024-05-21 13:37:27','{\n    \"site_icon\": {\n        \"value\": 35,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-05-21 13:37:12\"\n    },\n    \"motaphotographie::custom_logo\": {\n        \"value\": 34,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-05-21 13:37:12\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-05-21 13:37:27\"\n    }\n}','','','trash','closed','closed','','c34d5eba-94d1-49b8-a093-ecc7f5d8ec32','','','2024-05-21 13:37:27','2024-05-21 13:37:27','',0,'http://motaphotographie.local/?p=36',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-05-21 13:50:57','2024-05-21 13:50:57','','Accueil','','publish','closed','closed','','accueil','','','2024-05-21 13:50:57','2024-05-21 13:50:57','',0,'http://motaphotographie.local/?page_id=37',0,'page','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2024-05-21 13:50:57','2024-05-21 13:50:57','','Accueil','','inherit','closed','closed','','37-revision-v1','','','2024-05-21 13:50:57','2024-05-21 13:50:57','',37,'http://motaphotographie.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-05-21 13:51:44','2024-05-21 13:51:44','','A propos','','publish','closed','closed','','a-propos','','','2024-05-21 13:51:44','2024-05-21 13:51:44','',0,'http://motaphotographie.local/?page_id=39',0,'page','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-05-21 13:51:44','2024-05-21 13:51:44','','A propos','','inherit','closed','closed','','39-revision-v1','','','2024-05-21 13:51:44','2024-05-21 13:51:44','',39,'http://motaphotographie.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-05-21 13:52:14','2024-05-21 13:52:14','','Mention légales','','publish','closed','closed','','mention-legales','','','2024-05-21 13:52:14','2024-05-21 13:52:14','',0,'http://motaphotographie.local/?page_id=41',0,'page','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-05-21 13:52:14','2024-05-21 13:52:14','','Mention légales','','inherit','closed','closed','','41-revision-v1','','','2024-05-21 13:52:14','2024-05-21 13:52:14','',41,'http://motaphotographie.local/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-05-21 13:52:44','2024-05-21 13:52:44','','Vie privée','','publish','closed','closed','','vie-privee','','','2024-05-21 13:52:44','2024-05-21 13:52:44','',0,'http://motaphotographie.local/?page_id=43',0,'page','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-05-21 13:52:44','2024-05-21 13:52:44','','Vie privée','','inherit','closed','closed','','43-revision-v1','','','2024-05-21 13:52:44','2024-05-21 13:52:44','',43,'http://motaphotographie.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2024-05-21 13:52:51','2024-05-21 13:52:51','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://motaphotographie.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2024-05-21 13:52:51','2024-05-21 13:52:51','',2,'http://motaphotographie.local/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-05-21 13:52:55','2024-05-21 13:52:55','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://motaphotographie.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-05-21 13:52:55','2024-05-21 13:52:55','',3,'http://motaphotographie.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2024-05-21 13:55:47','2024-05-21 13:55:47','','contact','','publish','closed','closed','','contact','','','2024-05-21 13:55:47','2024-05-21 13:55:47','',0,'http://motaphotographie.local/?p=47',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2024-05-21 13:55:47','2024-05-21 13:55:47',' ','','','publish','closed','closed','','48','','','2024-05-21 13:55:47','2024-05-21 13:55:47','',0,'http://motaphotographie.local/?p=48',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2024-05-21 13:55:47','2024-05-21 13:55:47',' ','','','publish','closed','closed','','49','','','2024-05-21 13:55:47','2024-05-21 13:55:47','',0,'http://motaphotographie.local/?p=49',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2024-05-21 13:59:25','2024-05-21 13:59:25','{\n    \"page_on_front\": {\n        \"value\": \"37\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-05-21 13:59:25\"\n    }\n}','','','trash','closed','closed','','9c6348fa-df1d-4d54-8f9f-e0dbbac1ed3d','','','2024-05-21 13:59:25','2024-05-21 13:59:25','',0,'http://motaphotographie.local/9c6348fa-df1d-4d54-8f9f-e0dbbac1ed3d/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2024-05-22 12:13:13','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2024-05-22 12:13:13','0000-00-00 00:00:00','',0,'http://motaphotographie.local/?post_type=photographies&p=52',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2019-05-22 12:16:00','2019-05-22 12:16:00','<!-- wp:image {\"id\":17,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-3-683x1024.webp\" alt=\"Tout est installé\" class=\"wp-image-17\"/></figure>\n<!-- /wp:image -->','Tout est installé','','publish','closed','closed','','tout-est-installe','','','2024-05-23 10:52:59','2024-05-23 10:52:59','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=53',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-05-22 12:19:00','2020-05-22 12:19:00','<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-4-683x1024.webp\" alt=\"Vers l\'éternité \" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->','Vers l\'éternité','','publish','closed','closed','','vers-leternite','','','2024-05-23 10:52:30','2024-05-23 10:52:30','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=54',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-05-22 12:22:00','2021-05-22 12:22:00','<!-- wp:image {\"id\":19,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-5-684x1024.webp\" alt=\"Embrassez la mariée \" class=\"wp-image-19\"/></figure>\n<!-- /wp:image -->','Embrassez la mariée','','publish','closed','closed','','embrassez-la-mariee','','','2024-05-23 10:51:52','2024-05-23 10:51:52','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=55',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-05-22 12:23:00','2020-05-22 12:23:00','<!-- wp:image {\"id\":20,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-6-1024x819.webp\" alt=\"Dansons ensemble\" class=\"wp-image-20\"/></figure>\n<!-- /wp:image -->','Dansons ensemble','','publish','closed','closed','','56','','','2024-05-23 10:51:11','2024-05-23 10:51:11','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=56',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2019-05-22 12:35:00','2019-05-22 12:35:00','<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-7-1024x683.webp\" alt=\"Le menu\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->','Le menu','','publish','closed','closed','','le-menu','','','2024-05-23 10:50:28','2024-05-23 10:50:28','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=57',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-05-22 12:37:00','2021-05-22 12:37:00','<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-8-684x1024.webp\" alt=\"Au bal masqué \" class=\"wp-image-22\"/></figure>\n<!-- /wp:image -->','Au bal masqué','','publish','closed','closed','','au-bal-masque','','','2024-05-23 10:49:34','2024-05-23 10:49:34','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=58',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2022-05-22 12:39:00','2022-05-22 12:39:00','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-9-1024x683.webp\" alt=\"Let\'s dance!\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->','Let\'s dance!','','publish','closed','closed','','lets-dance','','','2024-05-23 10:49:00','2024-05-23 10:49:00','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=59',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2022-05-22 12:40:00','2022-05-22 12:40:00','<!-- wp:image {\"id\":24,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-10-1024x768.webp\" alt=\"Jour de match\" class=\"wp-image-24\"/></figure>\n<!-- /wp:image -->','Jour de match','','publish','closed','closed','','jour-de-match','','','2024-05-23 10:48:04','2024-05-23 10:48:04','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=60',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2022-05-22 12:42:00','2022-05-22 12:42:00','<!-- wp:image {\"id\":25,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-11-1024x683.webp\" alt=\"Préparation \" class=\"wp-image-25\"/></figure>\n<!-- /wp:image -->','Préparation','','publish','closed','closed','','preparation','','','2024-05-23 10:47:32','2024-05-23 10:47:32','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=61',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2022-05-22 12:44:00','2022-05-22 12:44:00','<!-- wp:image {\"id\":26,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-12-1024x683.webp\" alt=\"Bière ou eau plate ?\" class=\"wp-image-26\"/></figure>\n<!-- /wp:image -->','Bière ou eau plate ?','','publish','closed','closed','','biere-ou-eau-plate','','','2024-05-23 10:47:07','2024-05-23 10:47:07','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=62',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2022-05-22 12:45:00','2022-05-22 12:45:00','<!-- wp:image {\"id\":27,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-13-683x1024.webp\" alt=\"Bouquet final\" class=\"wp-image-27\"/></figure>\n<!-- /wp:image -->','Bouquet final','','publish','closed','closed','','bouquet-final','','','2024-05-23 10:46:40','2024-05-23 10:46:40','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=63',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2022-05-22 12:47:00','2022-05-22 12:47:00','<!-- wp:image {\"id\":28,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-14-683x1024.webp\" alt=\"Du soir au matin\" class=\"wp-image-28\"/></figure>\n<!-- /wp:image -->','Du soir au matin','','publish','closed','closed','','du-soir-au-matin','','','2024-05-23 10:46:15','2024-05-23 10:46:15','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=64',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2022-05-22 12:48:00','2022-05-22 12:48:00','<!-- wp:image {\"id\":29,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://motaphotographie.local/wp-content/uploads/2024/05/nathalie-15-684x1024.webp\" alt=\"Team mariée\" class=\"wp-image-29\"/></figure>\n<!-- /wp:image -->','Team mariée','','publish','closed','closed','','team-mariee','','','2024-05-23 10:45:43','2024-05-23 10:45:43','',0,'http://motaphotographie.local/?post_type=photographies&#038;p=65',0,'photographies','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2024-05-22 15:40:23','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2024-05-22 15:40:23','0000-00-00 00:00:00','',0,'http://motaphotographie.local/?post_type=acf-taxonomy&p=70',0,'acf-taxonomy','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2024-05-22 15:46:41','2024-05-22 15:46:41','a:29:{s:8:\"taxonomy\";s:16:\"categorie_photos\";s:11:\"object_type\";a:1:{i:0;s:13:\"photographies\";}s:22:\"advanced_configuration\";i:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:19:\"Catégories_Photos \";s:13:\"singular_name\";s:16:\"Catégorie_photo\";s:9:\"menu_name\";s:19:\"Catégories Photos \";s:9:\"all_items\";s:28:\"Tout les Catégories Photos \";s:9:\"edit_item\";s:10:\"Modifier C\";s:9:\"view_item\";s:6:\"Voir C\";s:11:\"update_item\";s:16:\"Mettre à jour C\";s:12:\"add_new_item\";s:9:\"Ajouter C\";s:13:\"new_item_name\";s:16:\"Nom du nouveau C\";s:12:\"search_items\";s:30:\"Rechercher Catégories Photos \";s:13:\"popular_items\";s:29:\"Catégories Photos  populaire\";s:26:\"separate_items_with_commas\";s:49:\"Séparer les catégories photos  avec une virgule\";s:19:\"add_or_remove_items\";s:38:\"Ajouter ou retirer catégories photos \";s:21:\"choose_from_most_used\";s:56:\"Choisir parmi les catégories photos  les plus utilisés\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:33:\"Aucun catégories photos  trouvé\";s:8:\"no_terms\";s:25:\"Aucun catégories photos \";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:44:\"Navigation dans la liste Catégories Photos \";s:10:\"items_list\";s:25:\"Liste Catégories Photos \";s:13:\"back_to_items\";s:38:\"← Aller à « catégories photos  »\";s:9:\"item_link\";s:6:\"Lien C\";s:21:\"item_link_description\";s:17:\"Un lien vers un c\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}','Catégories_Photos','categories_photos','trash','closed','closed','','taxonomy_664e12676aa72__trashed','','','2024-05-22 16:00:45','2024-05-22 16:00:45','',0,'http://motaphotographie.local/?post_type=acf-taxonomy&#038;p=71',0,'acf-taxonomy','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2024-05-22 16:06:07','2024-05-22 16:06:07','a:29:{s:8:\"taxonomy\";s:16:\"categorie_photos\";s:11:\"object_type\";a:1:{i:0;s:13:\"photographies\";}s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:5:\"cptui\";s:11:\"import_date\";i:1716393967;s:6:\"labels\";a:29:{s:13:\"singular_name\";s:16:\"catégorie_photo\";s:4:\"name\";s:19:\"catégories_photos \";s:9:\"menu_name\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:14:\"filter_by_item\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:9:\"most_used\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:9:\"item_link\";s:0:\"\";s:21:\"item_link_description\";s:0:\"\";}s:11:\"description\";s:49:\"Type d&#39;évènement a l&#39;origine du cliché\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:13:\"show_tagcloud\";b:0;s:18:\"show_in_quick_edit\";s:0:\"\";s:17:\"show_admin_column\";b:0;s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:4:\"slug\";s:0:\"\";s:10:\"with_front\";b:1;s:20:\"rewrite_hierarchical\";b:0;}s:9:\"query_var\";s:12:\"taxonomy_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:4:{s:20:\"default_term_enabled\";b:0;s:17:\"default_term_name\";s:0:\"\";s:17:\"default_term_slug\";s:0:\"\";s:24:\"default_term_description\";s:0:\"\";}s:4:\"sort\";b:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}','catégories_photos','categories_photos','publish','closed','closed','','taxonomy_664e17efd18e4','','','2024-05-22 16:06:07','2024-05-22 16:06:07','',0,'http://motaphotographie.local/?post_type=acf-taxonomy&p=72',0,'acf-taxonomy','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2024-05-23 12:37:56','2024-05-23 12:37:56','{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-05-23 12:37:56\"\n    }\n}','','','trash','closed','closed','','3dfb0ade-20e3-4f1b-98bb-9fec14e9dc71','','','2024-05-23 12:37:56','2024-05-23 12:37:56','',0,'http://motaphotographie.local/3dfb0ade-20e3-4f1b-98bb-9fec14e9dc71/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2024-05-23 16:47:50','2024-05-23 16:47:50',' ','','','publish','closed','closed','','74','','','2024-05-23 16:47:50','2024-05-23 16:47:50','',0,'http://motaphotographie.local/?p=74',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2024-05-23 16:47:50','2024-05-23 16:47:50',' ','','','publish','closed','closed','','75','','','2024-05-23 16:47:50','2024-05-23 16:47:50','',0,'http://motaphotographie.local/?p=75',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2024-05-23 16:47:50','2024-05-23 16:47:50',' ','','','publish','closed','closed','','76','','','2024-05-23 16:47:50','2024-05-23 16:47:50','',0,'http://motaphotographie.local/?p=76',3,'nav_menu_item','',0);
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
INSERT INTO `wp_term_relationships` VALUES (30,6,0);
INSERT INTO `wp_term_relationships` VALUES (30,19,0);
INSERT INTO `wp_term_relationships` VALUES (31,6,0);
INSERT INTO `wp_term_relationships` VALUES (31,19,0);
INSERT INTO `wp_term_relationships` VALUES (32,6,0);
INSERT INTO `wp_term_relationships` VALUES (32,18,0);
INSERT INTO `wp_term_relationships` VALUES (47,10,0);
INSERT INTO `wp_term_relationships` VALUES (48,10,0);
INSERT INTO `wp_term_relationships` VALUES (49,10,0);
INSERT INTO `wp_term_relationships` VALUES (53,7,0);
INSERT INTO `wp_term_relationships` VALUES (53,21,0);
INSERT INTO `wp_term_relationships` VALUES (54,7,0);
INSERT INTO `wp_term_relationships` VALUES (54,21,0);
INSERT INTO `wp_term_relationships` VALUES (55,7,0);
INSERT INTO `wp_term_relationships` VALUES (55,21,0);
INSERT INTO `wp_term_relationships` VALUES (56,6,0);
INSERT INTO `wp_term_relationships` VALUES (56,21,0);
INSERT INTO `wp_term_relationships` VALUES (57,6,0);
INSERT INTO `wp_term_relationships` VALUES (57,21,0);
INSERT INTO `wp_term_relationships` VALUES (58,7,0);
INSERT INTO `wp_term_relationships` VALUES (58,18,0);
INSERT INTO `wp_term_relationships` VALUES (59,6,0);
INSERT INTO `wp_term_relationships` VALUES (59,21,0);
INSERT INTO `wp_term_relationships` VALUES (60,6,0);
INSERT INTO `wp_term_relationships` VALUES (60,20,0);
INSERT INTO `wp_term_relationships` VALUES (61,6,0);
INSERT INTO `wp_term_relationships` VALUES (61,18,0);
INSERT INTO `wp_term_relationships` VALUES (62,6,0);
INSERT INTO `wp_term_relationships` VALUES (62,18,0);
INSERT INTO `wp_term_relationships` VALUES (63,7,0);
INSERT INTO `wp_term_relationships` VALUES (63,21,0);
INSERT INTO `wp_term_relationships` VALUES (64,7,0);
INSERT INTO `wp_term_relationships` VALUES (64,21,0);
INSERT INTO `wp_term_relationships` VALUES (65,7,0);
INSERT INTO `wp_term_relationships` VALUES (65,21,0);
INSERT INTO `wp_term_relationships` VALUES (74,11,0);
INSERT INTO `wp_term_relationships` VALUES (75,11,0);
INSERT INTO `wp_term_relationships` VALUES (76,11,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'categories','photographie réalisée lors de réception ',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'categories','photographie réalisée lors de concert.',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'categories','Photographie autour du mariage.',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'categories','photographie réalisée lors d\'émission télévisé ',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'formats','Orientation de l\'image (horizontale)',0,9);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'formats','Orientation de l\'image (verticale)',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'categorie_photo','catégorie d\'événement a l\'origine du cliché.',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'categorie_photo','catégorie d’événement a l’origine du cliché.',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'categorie_photo','catégorie d’événement a l’origine du cliché.',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'categorie_photo','catégorie d’événement a l’origine du cliché.',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'categorie_photos','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'categorie_photos','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'categorie_photos','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'categorie_photos','',0,9);
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Réception','reception',0);
INSERT INTO `wp_terms` VALUES (3,'Concert','concert',0);
INSERT INTO `wp_terms` VALUES (4,'Mariage','mariage',0);
INSERT INTO `wp_terms` VALUES (5,'télévision','television',0);
INSERT INTO `wp_terms` VALUES (6,'paysage','paysage',0);
INSERT INTO `wp_terms` VALUES (7,'portrait','portrait',0);
INSERT INTO `wp_terms` VALUES (8,'Réception','reception',0);
INSERT INTO `wp_terms` VALUES (9,'Concert','concert',0);
INSERT INTO `wp_terms` VALUES (10,'principal','principal',0);
INSERT INTO `wp_terms` VALUES (11,'footer','footer',0);
INSERT INTO `wp_terms` VALUES (12,'Mariage','mariage',0);
INSERT INTO `wp_terms` VALUES (13,'Télévision','television',0);
INSERT INTO `wp_terms` VALUES (14,'Réception','reception',0);
INSERT INTO `wp_terms` VALUES (15,'Concert','concert',0);
INSERT INTO `wp_terms` VALUES (16,'Mariage','mariage',0);
INSERT INTO `wp_terms` VALUES (17,'Télévision','television',0);
INSERT INTO `wp_terms` VALUES (18,'Concert','concert',0);
INSERT INTO `wp_terms` VALUES (19,'Réception','reception',0);
INSERT INTO `wp_terms` VALUES (20,'Télévision','television',0);
INSERT INTO `wp_terms` VALUES (21,'Mariage','mariage',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','devlopr');
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
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"6b86791cc2fdbc34821dac0a65367e0ffca81172f9623819a7fde0120cf9ea40\";a:4:{s:10:\"expiration\";i:1716889342;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1716716542;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:4:\"core\";a:1:{s:10:\"openPanels\";a:6:{i:0;s:11:\"post-status\";i:1;s:25:\"taxonomy-panel-categories\";i:2;s:14:\"featured-image\";i:3;s:30:\"taxonomy-panel-categorie_photo\";i:4;s:31:\"taxonomy-panel-categorie_photos\";i:5;s:22:\"taxonomy-panel-formats\";}}s:9:\"_modified\";s:24:\"2024-05-23T10:50:25.585Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1716296258');
INSERT INTO `wp_usermeta` VALUES (21,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_dashboard','a:1:{i:0;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'manageedit-acf-taxonomycolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'acf_user_settings','a:2:{s:20:\"taxonomies-first-run\";b:1;s:19:\"post-type-first-run\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (25,1,'manageedit-acf-post-typecolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_nav-menus','a:4:{i:0;s:27:\"add-post-type-photographies\";i:1;s:12:\"add-post_tag\";i:2;s:14:\"add-categories\";i:3;s:11:\"add-formats\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'nav_menu_recently_edited','11');
INSERT INTO `wp_usermeta` VALUES (29,1,'closedpostboxes_acf-taxonomy','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (30,1,'metaboxhidden_acf-taxonomy','a:1:{i:0;s:7:\"slugdiv\";}');
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
INSERT INTO `wp_users` VALUES (1,'devlopr','$P$BAI.1EkWjVjDqvPEfUz3K7deZe/bQE1','devlopr','dev-email@wpengine.local','http://motaphotographie.local','2024-05-21 10:20:22','',0,'devlopr');
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

-- Dump completed on 2024-05-27 18:52:35
