# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Database: rebelpress
# Generation Time: 2016-05-06 16:36:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_cf7dbplugin_st
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_cf7dbplugin_st`;

CREATE TABLE `wp_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL,
  PRIMARY KEY (`submit_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `wp_cf7dbplugin_st` WRITE;
/*!40000 ALTER TABLE `wp_cf7dbplugin_st` DISABLE KEYS */;

INSERT INTO `wp_cf7dbplugin_st` (`submit_time`)
VALUES
	(1462022434.9014);

/*!40000 ALTER TABLE `wp_cf7dbplugin_st` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_cf7dbplugin_submits
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_cf7dbplugin_submits`;

CREATE TABLE `wp_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob,
  KEY `submit_time_idx` (`submit_time`),
  KEY `form_name_idx` (`form_name`),
  KEY `field_name_idx` (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `wp_cf7dbplugin_submits` WRITE;
/*!40000 ALTER TABLE `wp_cf7dbplugin_submits` DISABLE KEYS */;

INSERT INTO `wp_cf7dbplugin_submits` (`submit_time`, `form_name`, `field_name`, `field_value`, `field_order`, `file`)
VALUES
	(1462022434.9014,'Contact form 1','your-name','Vaso Patejdlo',0,NULL),
	(1462022434.9014,'Contact form 1','your-email','vaso@patejdl.sk',1,NULL),
	(1462022434.9014,'Contact form 1','your-message','Hello,\nnew FAT BEATS',2,NULL),
	(1462022434.9014,'Contact form 1','Submitted Login','yablko',9999,NULL),
	(1462022434.9014,'Contact form 1','Submitted From','::1',10000,NULL);

/*!40000 ALTER TABLE `wp_cf7dbplugin_submits` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'Mr WordPress','','https://wordpress.org/','','2016-03-23 14:44:32','2016-03-23 14:44:32','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://localhost:8888/wordpress','yes'),
	(2,'home','http://localhost:8888/wordpress','yes'),
	(3,'blogname','Muzli','yes'),
	(4,'blogdescription','Kickass Website','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','admin@admin.sk','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','1','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','j. m. Y','yes'),
	(24,'time_format','g:i','yes'),
	(25,'links_updated_date_format','F j, Y g:i a','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%postname%/','yes'),
	(29,'hack_file','0','yes'),
	(30,'blog_charset','UTF-8','yes'),
	(31,'moderation_keys','','no'),
	(32,'active_plugins','a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:41:\"widget-css-classes/widget-css-classes.php\";}','yes'),
	(33,'category_base','','yes'),
	(34,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(35,'comment_max_links','2','yes'),
	(36,'gmt_offset','','yes'),
	(37,'default_email_category','1','yes'),
	(38,'recently_edited','a:5:{i:0;s:66:\"/Users/yablko/www/wordpress/wp-content/plugins/akismet/akismet.php\";i:1;s:60:\"/Users/yablko/www/wordpress/wp-content/themes/muzli/page.php\";i:2;s:61:\"/Users/yablko/www/wordpress/wp-content/themes/muzli/style.css\";i:3;s:68:\"/Users/yablko/www/wordpress/wp-content/themes/twentyfourteen/404.php\";i:4;s:71:\"/Users/yablko/www/wordpress/wp-content/themes/twentyfourteen/search.php\";}','no'),
	(39,'template','muzli','yes'),
	(40,'stylesheet','muzli','yes'),
	(41,'comment_whitelist','1','yes'),
	(42,'blacklist_keys','','no'),
	(43,'comment_registration','0','yes'),
	(44,'html_type','text/html','yes'),
	(45,'use_trackback','0','yes'),
	(46,'default_role','subscriber','yes'),
	(47,'db_version','36686','yes'),
	(48,'uploads_use_yearmonth_folders','1','yes'),
	(49,'upload_path','','yes'),
	(50,'blog_public','1','yes'),
	(51,'default_link_category','2','yes'),
	(52,'show_on_front','page','yes'),
	(53,'tag_base','','yes'),
	(54,'show_avatars','1','yes'),
	(55,'avatar_rating','G','yes'),
	(56,'upload_url_path','','yes'),
	(57,'thumbnail_size_w','150','yes'),
	(58,'thumbnail_size_h','150','yes'),
	(59,'thumbnail_crop','1','yes'),
	(60,'medium_size_w','300','yes'),
	(61,'medium_size_h','300','yes'),
	(62,'avatar_default','mystery','yes'),
	(63,'large_size_w','1024','yes'),
	(64,'large_size_h','1024','yes'),
	(65,'image_default_link_type','none','yes'),
	(66,'image_default_size','','yes'),
	(67,'image_default_align','','yes'),
	(68,'close_comments_for_old_posts','0','yes'),
	(69,'close_comments_days_old','14','yes'),
	(70,'thread_comments','1','yes'),
	(71,'thread_comments_depth','5','yes'),
	(72,'page_comments','0','yes'),
	(73,'comments_per_page','50','yes'),
	(74,'default_comments_page','newest','yes'),
	(75,'comment_order','asc','yes'),
	(76,'sticky_posts','a:0:{}','yes'),
	(77,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(78,'widget_text','a:4:{i:1;a:0:{}i:2;a:3:{s:5:\"title\";s:4:\"text\";s:4:\"text\";s:5:\"hello\";s:6:\"filter\";b:0;}i:3;a:4:{s:5:\"title\";s:13:\"Buy our stuff\";s:4:\"text\";s:198:\"<p>This is a website, so obviously we are trying to sell you something.<br>Click here, so we can send you emails you don\'t want!</p>\r\n\r\n[button color=\"green\"]Stuff to delete from your inbox[/button]\";s:6:\"filter\";b:0;s:7:\"classes\";s:14:\"sign_up_widget\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(80,'uninstall_plugins','a:0:{}','no'),
	(81,'timezone_string','Europe/Bratislava','yes'),
	(82,'page_for_posts','0','yes'),
	(83,'page_on_front','19','yes'),
	(84,'default_post_format','0','yes'),
	(85,'link_manager_enabled','0','yes'),
	(86,'finished_splitting_shared_terms','1','yes'),
	(87,'site_icon','0','yes'),
	(88,'medium_large_size_w','768','yes'),
	(89,'medium_large_size_h','0','yes'),
	(90,'initial_db_version','35700','yes'),
	(91,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(92,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(93,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(94,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(95,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(96,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(97,'sidebars_widgets','a:5:{s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"orphaned_widgets_2\";a:2:{i:0;s:10:\"nav_menu-2\";i:1;s:6:\"text-2\";}s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:1:{i:0;s:6:\"text-3\";}s:13:\"array_version\";i:3;}','yes'),
	(99,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(100,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(101,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'widget_nav_menu','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(103,'cron','a:5:{i:1462559651;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1462589073;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1462617762;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1462632467;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
	(189,'current_theme','Muzli','yes'),
	(190,'theme_mods_twentyfifteen','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1459862450;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),
	(191,'theme_switched','','yes'),
	(193,'_transient_twentyfifteen_categories','1','yes'),
	(200,'recently_activated','a:2:{s:33:\"widget-classes/widget-classes.php\";i:1462023987;s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";i:1462022518;}','yes'),
	(256,'category_children','a:0:{}','yes'),
	(268,'theme_mods_the-master','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1461949745;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"orphaned_widgets_2\";a:2:{i:0;s:10:\"nav_menu-2\";i:1;s:6:\"text-2\";}}}}','yes'),
	(299,'WPLANG','','yes'),
	(317,'rewrite_rules','a:85:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=19&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),
	(325,'_site_transient_timeout_browser_1d01fa4720a8bd229f069b7cf2901787','1462536375','yes'),
	(326,'_site_transient_browser_1d01fa4720a8bd229f069b7cf2901787','a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:11:\"52.0.2720.0\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes'),
	(327,'db_upgraded','','yes'),
	(330,'can_compress_scripts','1','yes'),
	(331,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1462552461;s:7:\"checked\";a:4:{s:5:\"muzli\";s:4:\"0.01\";s:13:\"twentyfifteen\";s:3:\"1.5\";s:14:\"twentyfourteen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes'),
	(341,'theme_mods_twentysixteen','a:2:{s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1462022834;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:2:{i:0;s:10:\"nav_menu-2\";i:1;s:6:\"text-2\";}s:9:\"sidebar-3\";a:0:{}}}}','yes'),
	(346,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
	(349,'theme_mods_muzli','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:7:\"copy_by\";s:21:\"Asskick Society, Inc.\";s:9:\"copy_text\";s:62:\"design straight stolen from <a href=\"http://muz.li\">muz.li</a>\";}','yes'),
	(370,'_transient_timeout_plugin_slugs','1462638912','no'),
	(371,'_transient_plugin_slugs','a:5:{i:0;s:19:\"akismet/akismet.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";i:3;s:9:\"hello.php\";i:4;s:41:\"widget-css-classes/widget-css-classes.php\";}','no'),
	(372,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1462029742','yes'),
	(373,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','a:100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";s:4:\"5800\";}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"Post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";s:4:\"3598\";}s:6:\"plugin\";a:3:{s:4:\"name\";s:6:\"plugin\";s:4:\"slug\";s:6:\"plugin\";s:5:\"count\";s:4:\"3560\";}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";s:4:\"3071\";}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:4:\"2756\";}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";s:4:\"2287\";}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";s:4:\"2191\";}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";s:4:\"2062\";}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";s:4:\"2009\";}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";s:4:\"1981\";}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";s:4:\"1967\";}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";s:4:\"1922\";}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";s:4:\"1843\";}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"Facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";s:4:\"1654\";}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";s:4:\"1572\";}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";s:4:\"1549\";}s:9:\"wordpress\";a:3:{s:4:\"name\";s:9:\"wordpress\";s:4:\"slug\";s:9:\"wordpress\";s:5:\"count\";s:4:\"1523\";}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";s:4:\"1351\";}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";s:4:\"1292\";}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";s:4:\"1276\";}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";s:4:\"1194\";}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";s:4:\"1091\";}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";s:4:\"1056\";}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";s:4:\"1002\";}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";s:3:\"965\";}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";s:3:\"949\";}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";s:3:\"909\";}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";s:3:\"901\";}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"AJAX\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";s:3:\"900\";}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";s:3:\"887\";}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";s:3:\"882\";}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";s:3:\"828\";}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";s:3:\"806\";}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";s:3:\"786\";}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";s:3:\"758\";}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";s:3:\"753\";}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";s:3:\"748\";}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";s:3:\"741\";}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";s:3:\"741\";}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";s:3:\"740\";}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"Share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";s:3:\"733\";}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";s:3:\"731\";}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";s:3:\"693\";}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";s:3:\"686\";}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";s:3:\"678\";}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";s:3:\"675\";}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"CSS\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";s:3:\"670\";}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";s:3:\"666\";}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";s:3:\"649\";}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";s:3:\"640\";}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";s:3:\"638\";}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";s:3:\"632\";}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";s:3:\"610\";}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";s:3:\"602\";}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";s:3:\"594\";}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";s:3:\"589\";}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";s:3:\"588\";}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";s:3:\"585\";}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";s:3:\"585\";}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";s:3:\"574\";}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";s:3:\"566\";}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";s:3:\"558\";}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";s:3:\"553\";}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";s:3:\"544\";}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";s:3:\"540\";}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";s:3:\"528\";}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";s:3:\"524\";}s:7:\"picture\";a:3:{s:4:\"name\";s:7:\"picture\";s:4:\"slug\";s:7:\"picture\";s:5:\"count\";s:3:\"513\";}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";s:3:\"510\";}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";s:3:\"509\";}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";s:3:\"496\";}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";s:3:\"496\";}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";s:3:\"494\";}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";s:3:\"486\";}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";s:3:\"469\";}s:8:\"pictures\";a:3:{s:4:\"name\";s:8:\"pictures\";s:4:\"slug\";s:8:\"pictures\";s:5:\"count\";s:3:\"457\";}s:4:\"shop\";a:3:{s:4:\"name\";s:4:\"shop\";s:4:\"slug\";s:4:\"shop\";s:5:\"count\";s:3:\"453\";}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";s:3:\"439\";}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";s:3:\"439\";}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";s:3:\"437\";}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";s:3:\"437\";}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";s:3:\"436\";}s:5:\"flash\";a:3:{s:4:\"name\";s:5:\"flash\";s:4:\"slug\";s:5:\"flash\";s:5:\"count\";s:3:\"423\";}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";s:3:\"418\";}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";s:3:\"415\";}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";s:3:\"414\";}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";s:3:\"410\";}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";s:3:\"407\";}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"News\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";s:3:\"405\";}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";s:3:\"405\";}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";s:3:\"399\";}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";s:3:\"396\";}s:9:\"thumbnail\";a:3:{s:4:\"name\";s:9:\"thumbnail\";s:4:\"slug\";s:9:\"thumbnail\";s:5:\"count\";s:3:\"392\";}s:7:\"sharing\";a:3:{s:4:\"name\";s:7:\"sharing\";s:4:\"slug\";s:7:\"sharing\";s:5:\"count\";s:3:\"388\";}s:6:\"upload\";a:3:{s:4:\"name\";s:6:\"upload\";s:4:\"slug\";s:6:\"upload\";s:5:\"count\";s:3:\"388\";}s:6:\"paypal\";a:3:{s:4:\"name\";s:6:\"paypal\";s:4:\"slug\";s:6:\"paypal\";s:5:\"count\";s:3:\"388\";}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";s:3:\"388\";}s:4:\"text\";a:3:{s:4:\"name\";s:4:\"text\";s:4:\"slug\";s:4:\"text\";s:5:\"count\";s:3:\"388\";}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";s:3:\"386\";}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";s:3:\"384\";}}','yes'),
	(374,'wpcf7','a:2:{s:7:\"version\";s:5:\"4.4.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1462026234;s:7:\"version\";s:5:\"4.4.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes'),
	(379,'CF7DBPlugin_NoSaveFields','/.*wpcf7.*/,_wpnonce','yes'),
	(380,'CF7DBPlugin__version','2.10.9','yes'),
	(381,'CF7DBPlugin__installed','1','yes'),
	(382,'CF7DBPlugin_IntegrateWithCF7','true','yes'),
	(383,'CF7DBPlugin_GenerateSubmitTimeInCF7Email','false','yes'),
	(384,'CF7DBPlugin_IntegrateWithFSCF','false','yes'),
	(385,'CF7DBPlugin_IntegrateWithJetPackContactForm','false','yes'),
	(386,'CF7DBPlugin_IntegrateWithGravityForms','false','yes'),
	(387,'CF7DBPlugin_IntegrateWithFormidableForms','false','yes'),
	(388,'CF7DBPlugin_IntegrateWithWrContactForms','false','yes'),
	(389,'CF7DBPlugin_IntegrateWithQuform','false','yes'),
	(390,'CF7DBPlugin_IntegrateWithNinjaForms','false','yes'),
	(391,'CF7DBPlugin_IntegrateWithCalderaForms','false','yes'),
	(392,'CF7DBPlugin_IntegrateWithEnfoldThemForms','false','yes'),
	(393,'CF7DBPlugin_IntegrateWithCFormsII','false','yes'),
	(394,'CF7DBPlugin_IntegrateWithFormCraft','false','yes'),
	(395,'CF7DBPlugin_HideAdminPanelFromNonAdmins','false','yes'),
	(396,'CF7DBPlugin_CanSeeSubmitData','Administrator','yes'),
	(397,'CF7DBPlugin_CanSeeSubmitDataViaShortcode','Administrator','yes'),
	(398,'CF7DBPlugin_CanChangeSubmitData','Administrator','yes'),
	(399,'CF7DBPlugin_FunctionsInShortCodes','false','yes'),
	(400,'CF7DBPlugin_AllowRSS','false','yes'),
	(401,'CF7DBPlugin_Timezone','','yes'),
	(402,'CF7DBPlugin_MaxRows','','yes'),
	(403,'CF7DBPlugin_MaxVisibleRows','','yes'),
	(404,'CF7DBPlugin_HorizontalScroll','true','yes'),
	(405,'CF7DBPlugin_UseDataTablesJS','true','yes'),
	(406,'CF7DBPlugin_ShowLineBreaksInDataTable','true','yes'),
	(407,'CF7DBPlugin_UseCustomDateTimeFormat','true','yes'),
	(408,'CF7DBPlugin_SubmitDateTimeFormat','','yes'),
	(409,'CF7DBPlugin_ShowFileUrlsInExport','false','yes'),
	(410,'CF7DBPlugin_NoSaveForms','','yes'),
	(411,'CF7DBPlugin_SaveCookieData','false','yes'),
	(412,'CF7DBPlugin_SaveCookieNames','','yes'),
	(413,'CF7DBPlugin_ShowQuery','false','yes'),
	(414,'CF7DBPlugin_ErrorOutput','','yes'),
	(415,'CF7DBPlugin_DropOnUninstall','false','yes'),
	(416,'CF7DBPlugin_Donated','false','yes'),
	(417,'_site_transient_timeout_browser_8afae56118288fb365760f38912e4769','1462627542','yes'),
	(418,'_site_transient_browser_8afae56118288fb365760f38912e4769','a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:11:\"52.0.2721.0\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes'),
	(426,'WCSSC_options','a:6:{s:11:\"show_number\";s:1:\"1\";s:13:\"show_location\";s:1:\"1\";s:12:\"show_evenodd\";s:1:\"0\";s:7:\"show_id\";s:1:\"0\";s:4:\"type\";s:1:\"1\";s:15:\"defined_classes\";s:0:\"\";}','yes'),
	(427,'WCSSC_db_version','1.3','yes'),
	(441,'muzli_settings','a:3:{s:12:\"copyright_by\";s:13:\"Butpoop, Inc.\";s:14:\"copyright_text\";s:10:\"I am poop.\";s:4:\"logo\";s:67:\"http://localhost:8888/wordpress/wp-content/uploads/2016/04/logo.png\";}','yes'),
	(446,'_site_transient_timeout_browser_eebd93607c9c74f4391eda1fa079e90f','1462970136','yes'),
	(447,'_site_transient_browser_eebd93607c9c74f4391eda1fa079e90f','a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:11:\"52.0.2724.0\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes'),
	(452,'_site_transient_timeout_theme_roots','1462554252','yes'),
	(453,'_site_transient_theme_roots','a:4:{s:5:\"muzli\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','yes'),
	(455,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.5.1\";s:7:\"version\";s:5:\"4.5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1462552458;s:15:\"version_checked\";s:5:\"4.5.1\";s:12:\"translations\";a:0:{}}','yes'),
	(457,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"admin@admin.sk\";s:7:\"version\";s:5:\"4.5.1\";s:9:\"timestamp\";i:1462552459;}','yes'),
	(458,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1462552507;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:6:\"3.1.10\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"4.4.2\";s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";s:6:\"2.10.9\";s:9:\"hello.php\";s:3:\"1.6\";s:41:\"widget-css-classes/widget-css-classes.php\";s:5:\"1.3.0\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"3.1.10\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.3.1.10.zip\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"790\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.4.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.4.2.zip\";}s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"16507\";s:4:\"slug\";s:36:\"contact-form-7-to-database-extension\";s:6:\"plugin\";s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";s:11:\"new_version\";s:6:\"2.10.9\";s:3:\"url\";s:67:\"https://wordpress.org/plugins/contact-form-7-to-database-extension/\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/plugin/contact-form-7-to-database-extension.2.10.9.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:41:\"widget-css-classes/widget-css-classes.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"33166\";s:4:\"slug\";s:18:\"widget-css-classes\";s:6:\"plugin\";s:41:\"widget-css-classes/widget-css-classes.php\";s:11:\"new_version\";s:5:\"1.3.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/widget-css-classes/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/widget-css-classes.1.3.0.zip\";}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"14975\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip\";}}}','yes'),
	(460,'_site_transient_timeout_available_translations','1462563318','yes'),
	(461,'_site_transient_available_translations','a:80:{s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-10 15:55:55\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-13 14:44:00\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.5.1/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-12 22:48:01\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-11 22:42:10\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-05-03 14:05:41\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-02-08 13:17:04\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.4.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-19 23:16:37\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-11 06:38:51\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-02-16 15:34:57\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-02-11 18:32:36\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:12:\"Čeština‎\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-11 14:21:06\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-11 15:42:12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-12 19:26:41\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-05-01 18:17:12\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-05-01 18:17:51\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.5.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-12 20:03:25\";s:12:\"english_name\";s:23:\"(Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.5.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-13 21:14:17\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-26 02:00:05\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-13 06:26:11\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-28 11:29:02\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-13 12:51:07\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-10 05:23:57\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-11 10:58:49\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-12 21:06:55\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-28 13:08:25\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/es_VE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-28 13:34:35\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-13 12:43:00\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/es_GT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.3-RC\";s:7:\"updated\";s:19:\"2015-08-04 06:10:33\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-13 01:09:28\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-16 17:35:43\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-19 21:32:12\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/es_AR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-12 11:11:25\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-23 22:05:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-01-31 19:24:20\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.4.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-10 18:44:50\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-11 07:33:47\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-29 19:30:46\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-29 13:55:46\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.3.3\";s:7:\"updated\";s:19:\"2015-09-24 15:25:30\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.3.3/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-22 23:06:30\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-16 13:14:11\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-28 07:29:36\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-25 09:54:06\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-05-03 06:34:38\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-02-04 07:13:54\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-21 16:17:50\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.4.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-30 15:18:26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-05-02 17:37:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-27 00:36:15\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-11 09:29:35\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-05-02 03:21:50\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-10 06:34:16\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-29 09:37:07\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-01-28 05:41:39\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.4.2/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.10\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.10/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-13 12:35:50\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-05-02 15:16:51\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-01-20 13:35:50\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.4.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-11 07:36:04\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-04-26 06:46:10\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-27 07:33:40\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.10\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.10/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-05-04 11:44:03\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-27 10:21:39\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-05-05 13:00:51\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-13 18:04:14\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-27 07:36:55\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-11-26 00:00:18\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-12 10:47:53\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-10 08:00:57\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-12 18:15:27\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-22 14:05:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-11-27 15:51:36\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-21 01:31:12\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.1.10\";s:7:\"updated\";s:19:\"2015-03-26 16:45:38\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.10/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-05-03 13:19:01\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-09 01:01:25\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-12 09:08:07\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2016-04-17 03:29:01\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}','yes');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,1,'_edit_lock','1462017099:1'),
	(15,2,'_edit_lock','1461932365:1'),
	(16,1,'_edit_last','1'),
	(21,1,'price','1337'),
	(24,1,'adventure time','YES'),
	(25,10,'_edit_last','1'),
	(26,10,'_edit_lock','1461933051:1'),
	(29,12,'_edit_last','1'),
	(30,12,'_edit_lock','1462018793:1'),
	(31,2,'_edit_last','1'),
	(32,19,'_edit_last','1'),
	(33,19,'_edit_lock','1462015268:1'),
	(34,21,'_edit_last','1'),
	(35,21,'_edit_lock','1462019007:1'),
	(36,23,'_edit_last','1'),
	(37,23,'_edit_lock','1462018507:1'),
	(38,25,'_edit_last','1'),
	(39,25,'_edit_lock','1462019017:1'),
	(40,32,'_menu_item_type','post_type'),
	(41,32,'_menu_item_menu_item_parent','0'),
	(42,32,'_menu_item_object_id','25'),
	(43,32,'_menu_item_object','page'),
	(44,32,'_menu_item_target',''),
	(45,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(46,32,'_menu_item_xfn',''),
	(47,32,'_menu_item_url',''),
	(48,32,'_menu_item_orphaned','1461943232'),
	(49,33,'_menu_item_type','post_type'),
	(50,33,'_menu_item_menu_item_parent','0'),
	(51,33,'_menu_item_object_id','23'),
	(52,33,'_menu_item_object','page'),
	(53,33,'_menu_item_target',''),
	(54,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(55,33,'_menu_item_xfn',''),
	(56,33,'_menu_item_url',''),
	(57,33,'_menu_item_orphaned','1461943232'),
	(58,34,'_menu_item_type','post_type'),
	(59,34,'_menu_item_menu_item_parent','0'),
	(60,34,'_menu_item_object_id','21'),
	(61,34,'_menu_item_object','page'),
	(62,34,'_menu_item_target',''),
	(63,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(64,34,'_menu_item_xfn',''),
	(65,34,'_menu_item_url',''),
	(66,34,'_menu_item_orphaned','1461943232'),
	(67,35,'_menu_item_type','post_type'),
	(68,35,'_menu_item_menu_item_parent','0'),
	(69,35,'_menu_item_object_id','19'),
	(70,35,'_menu_item_object','page'),
	(71,35,'_menu_item_target',''),
	(72,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(73,35,'_menu_item_xfn',''),
	(74,35,'_menu_item_url',''),
	(75,35,'_menu_item_orphaned','1461943232'),
	(76,36,'_menu_item_type','post_type'),
	(77,36,'_menu_item_menu_item_parent','0'),
	(78,36,'_menu_item_object_id','19'),
	(79,36,'_menu_item_object','page'),
	(80,36,'_menu_item_target',''),
	(81,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(82,36,'_menu_item_xfn',''),
	(83,36,'_menu_item_url',''),
	(84,36,'_menu_item_orphaned','1461943360'),
	(85,37,'_menu_item_type','post_type'),
	(86,37,'_menu_item_menu_item_parent','0'),
	(87,37,'_menu_item_object_id','23'),
	(88,37,'_menu_item_object','page'),
	(89,37,'_menu_item_target',''),
	(90,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(91,37,'_menu_item_xfn',''),
	(92,37,'_menu_item_url',''),
	(93,37,'_menu_item_orphaned','1461943360'),
	(94,38,'_menu_item_type','post_type'),
	(95,38,'_menu_item_menu_item_parent','0'),
	(96,38,'_menu_item_object_id','25'),
	(97,38,'_menu_item_object','page'),
	(98,38,'_menu_item_target',''),
	(99,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(100,38,'_menu_item_xfn',''),
	(101,38,'_menu_item_url',''),
	(102,38,'_menu_item_orphaned','1461943360'),
	(103,39,'_menu_item_type','post_type'),
	(104,39,'_menu_item_menu_item_parent','0'),
	(105,39,'_menu_item_object_id','21'),
	(106,39,'_menu_item_object','page'),
	(107,39,'_menu_item_target',''),
	(108,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(109,39,'_menu_item_xfn',''),
	(110,39,'_menu_item_url',''),
	(111,39,'_menu_item_orphaned','1461943360'),
	(112,40,'_menu_item_type','post_type'),
	(113,40,'_menu_item_menu_item_parent','0'),
	(114,40,'_menu_item_object_id','19'),
	(115,40,'_menu_item_object','page'),
	(116,40,'_menu_item_target',''),
	(117,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(118,40,'_menu_item_xfn',''),
	(119,40,'_menu_item_url',''),
	(120,40,'_menu_item_orphaned','1461943360'),
	(121,41,'_menu_item_type','post_type'),
	(122,41,'_menu_item_menu_item_parent','0'),
	(123,41,'_menu_item_object_id','25'),
	(124,41,'_menu_item_object','page'),
	(125,41,'_menu_item_target',''),
	(126,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(127,41,'_menu_item_xfn',''),
	(128,41,'_menu_item_url',''),
	(130,42,'_menu_item_type','post_type'),
	(131,42,'_menu_item_menu_item_parent','0'),
	(132,42,'_menu_item_object_id','23'),
	(133,42,'_menu_item_object','page'),
	(134,42,'_menu_item_target',''),
	(135,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(136,42,'_menu_item_xfn',''),
	(137,42,'_menu_item_url',''),
	(139,43,'_menu_item_type','post_type'),
	(140,43,'_menu_item_menu_item_parent','0'),
	(141,43,'_menu_item_object_id','21'),
	(142,43,'_menu_item_object','page'),
	(143,43,'_menu_item_target',''),
	(144,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(145,43,'_menu_item_xfn',''),
	(146,43,'_menu_item_url',''),
	(148,44,'_menu_item_type','post_type'),
	(149,44,'_menu_item_menu_item_parent','0'),
	(150,44,'_menu_item_object_id','19'),
	(151,44,'_menu_item_object','page'),
	(152,44,'_menu_item_target',''),
	(153,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(154,44,'_menu_item_xfn',''),
	(155,44,'_menu_item_url',''),
	(157,45,'_wp_attached_file','2016/04/marvel-yellow.png'),
	(158,45,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1277;s:6:\"height\";i:435;s:4:\"file\";s:25:\"2016/04/marvel-yellow.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"marvel-yellow-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"marvel-yellow-300x102.png\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"marvel-yellow-768x262.png\";s:5:\"width\";i:768;s:6:\"height\";i:262;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"marvel-yellow-1024x349.png\";s:5:\"width\";i:1024;s:6:\"height\";i:349;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(159,19,'_thumbnail_id','45'),
	(160,46,'_wp_attached_file','2016/04/01-1.png'),
	(161,46,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2016/04/01-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"01-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"01-1-300x120.png\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(162,47,'_wp_attached_file','2016/04/02-1.png'),
	(163,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2016/04/02-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"02-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"02-1-300x120.png\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(164,48,'_wp_attached_file','2016/04/03-1.png'),
	(165,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2016/04/03-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"03-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"03-1-300x120.png\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(166,49,'_wp_attached_file','2016/04/04-1.png'),
	(167,49,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2016/04/04-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"04-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"04-1-300x120.png\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(168,50,'_wp_attached_file','2016/04/05-1.png'),
	(169,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2016/04/05-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"05-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"05-1-300x120.png\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(170,51,'_wp_attached_file','2016/04/06-1.png'),
	(171,51,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2016/04/06-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"06-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"06-1-300x120.png\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(172,23,'_oembed_89935664ecb7af559a33a1f1cc02e92a','<iframe width=\"500\" height=\"375\" src=\"https://www.youtube.com/embed/UmPmpUTr22c?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
	(173,23,'_oembed_time_89935664ecb7af559a33a1f1cc02e92a','1461958288'),
	(180,12,'_oembed_89935664ecb7af559a33a1f1cc02e92a','<iframe width=\"500\" height=\"375\" src=\"https://www.youtube.com/embed/UmPmpUTr22c?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),
	(181,12,'_oembed_time_89935664ecb7af559a33a1f1cc02e92a','1462018175'),
	(186,92,'_form','<label for=\"your-name\">\n	Your name (required)\n	[text* your-name id:your-name]\n</label>\n\n<label for=\"your-email\">\n	Your email (required)\n	[email* your-email id:your-email]\n</label>\n\n<label for=\"your-message\">\n	Your message\n	[textarea your-message id:your-message 40x10]\n</label>\n\n[submit class:btn class:btn-white \"Send\"]'),
	(187,92,'_mail','a:8:{s:7:\"subject\";s:26:\"Muzli Contact Form Message\";s:6:\"sender\";s:28:\"[your-name] <admin@admin.sk>\";s:4:\"body\";s:116:\"From: [your-name] <[your-email]>\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Muzli\";s:9:\"recipient\";s:14:\"admin@admin.sk\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
	(188,92,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"Muzli \"[your-subject]\"\";s:6:\"sender\";s:22:\"Muzli <admin@admin.sk>\";s:4:\"body\";s:116:\"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Muzli (http://localhost:8888/wordpress)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:24:\"Reply-To: admin@admin.sk\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
	(189,92,'_messages','a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
	(190,92,'_additional_settings',''),
	(191,92,'_locale','en_US'),
	(192,94,'_edit_last','1'),
	(193,94,'_edit_lock','1462369541:1'),
	(194,98,'_edit_last','1'),
	(195,98,'_edit_lock','1462552330:1'),
	(196,94,'_wp_trash_meta_status','draft'),
	(197,94,'_wp_trash_meta_time','1462552486'),
	(198,94,'_wp_desired_post_slug',''),
	(199,98,'_wp_trash_meta_status','draft'),
	(200,98,'_wp_trash_meta_time','1462552486'),
	(201,98,'_wp_desired_post_slug',''),
	(202,2,'_wp_trash_meta_status','draft'),
	(203,2,'_wp_trash_meta_time','1462552486'),
	(204,2,'_wp_desired_post_slug','sample-page');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2016-03-23 14:44:32','2016-03-23 14:44:32','Welcome to <strong>WordPress</strong>. This is your first post. <em>Edit or delete it</em>, then start writing!\r\n\r\nA new paragraph.\r\n\r\nA newer one.','Hello world!','','publish','open','open','','hello-world','','','2016-04-30 13:54:01','2016-04-30 11:54:01','',0,'http://localhost:8888/wordpress/?p=1',0,'post','',1),
	(2,1,'2016-03-23 14:44:32','2016-03-23 13:44:32','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','trash','closed','closed','','sample-page__trashed','','','2016-05-06 18:34:46','2016-05-06 16:34:46','',0,'http://localhost:8888/wordpress/?page_id=2',0,'page','',0),
	(6,1,'2016-04-05 12:28:59','2016-04-05 12:28:59','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\n\nA New paragraph.','Hello world!','','inherit','closed','closed','','1-autosave-v1','','','2016-04-05 12:28:59','2016-04-05 12:28:59','',1,'http://localhost:8888/wordpress/2016/04/05/1-autosave-v1/',0,'revision','',0),
	(8,1,'2016-04-08 14:08:31','2016-04-08 14:08:31','Welcome to <strong>WordPress</strong>. This is your first post. <em>Edit or delete it</em>, then start writing!\r\n\r\nA new paragraph.','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2016-04-08 14:08:31','2016-04-08 14:08:31','',1,'http://localhost:8888/wordpress/2016/04/08/1-revision-v1/',0,'revision','',0),
	(9,1,'2016-04-08 14:15:47','2016-04-08 14:15:47','Welcome to <strong>WordPress</strong>. This is your first post. <em>Edit or delete it</em>, then start writing!\r\n\r\nA new paragraph.\r\n\r\nA newer one.','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2016-04-08 14:15:47','2016-04-08 14:15:47','',1,'http://localhost:8888/wordpress/2016/04/08/1-revision-v1/',0,'revision','',0),
	(10,1,'2016-04-11 15:44:09','2016-04-11 15:44:09','Apple pie jujubes danish apple pie brownie. Sugar plum bonbon apple pie gummies sweet roll cake marshmallow. Cotton candy sweet roll lollipop lollipop sugar plum. Brownie sesame snaps chupa chups sweet danish brownie sugar plum apple pie. <!--more-->\r\n\r\nJelly beans cake croissant fruitcake powder pastry cookie dragée dessert. Candy tiramisu biscuit bear claw lollipop marshmallow sesame snaps. Marshmallow gummies tootsie roll cotton candy sweet bonbon jelly. Sweet roll wafer oat cake sweet roll dragée oat cake tootsie roll.\r\n\r\nCroissant gummies jelly-o. Sweet muffin gingerbread lemon drops jelly-o. Powder powder gummies dragée chocolate liquorice.','Croissant gummies jelly-o','','publish','open','open','','croissant-gummies-jelly-o','','','2016-04-11 18:17:51','2016-04-11 16:17:51','',0,'http://localhost:8888/wordpress/?p=10',0,'post','',0),
	(11,1,'2016-04-11 15:44:09','2016-04-11 15:44:09','Apple pie jujubes danish apple pie brownie. Sugar plum bonbon apple pie gummies sweet roll cake marshmallow. Cotton candy sweet roll lollipop lollipop sugar plum. Brownie sesame snaps chupa chups sweet danish brownie sugar plum apple pie.\r\n\r\nJelly beans cake croissant fruitcake powder pastry cookie dragée dessert. Candy tiramisu biscuit bear claw lollipop marshmallow sesame snaps. Marshmallow gummies tootsie roll cotton candy sweet bonbon jelly. Sweet roll wafer oat cake sweet roll dragée oat cake tootsie roll.\r\n\r\nCroissant gummies jelly-o. Sweet muffin gingerbread lemon drops jelly-o. Powder powder gummies dragée chocolate liquorice.','Croissant gummies jelly-o','','inherit','closed','closed','','10-revision-v1','','','2016-04-11 15:44:09','2016-04-11 15:44:09','',10,'http://localhost:8888/wordpress/2016/04/11/10-revision-v1/',0,'revision','',0),
	(12,1,'2016-04-11 15:44:55','2016-04-11 15:44:55','Croissant bonbon pie cupcake macaroon carrot cake chocolate bar. Toffee chocolate dragée liquorice chupa chups. Sesame snaps brownie sweet ice cream.\r\n\r\nBear claw sesame snaps cookie powder macaroon bonbon sesame snaps cotton candy croissant. Gingerbread pastry lemon drops chocolate cake. Gummies liquorice biscuit pie topping. Candy gummies halvah sweet marzipan chocolate bar tootsie roll.\r\n\r\nHalvah candy canes jelly-o lollipop tart. Oat cake wafer dessert. Ice cream cotton candy tiramisu tiramisu toffee gummi bears gummi bears macaroon danish. Marshmallow chocolate jelly beans soufflé jelly-o caramels liquorice tootsie roll gummies.','Sweet muffin gingerbread','','publish','open','open','','sweet-muffin-gingerbread','','','2016-04-30 14:20:01','2016-04-30 12:20:01','',0,'http://localhost:8888/wordpress/?p=12',0,'post','',0),
	(13,1,'2016-04-11 15:44:55','2016-04-11 15:44:55','Croissant bonbon pie cupcake macaroon carrot cake chocolate bar. Toffee chocolate dragée liquorice chupa chups. Sesame snaps brownie sweet ice cream.\r\n\r\nBear claw sesame snaps cookie powder macaroon bonbon sesame snaps cotton candy croissant. Gingerbread pastry lemon drops chocolate cake. Gummies liquorice biscuit pie topping. Candy gummies halvah sweet marzipan chocolate bar tootsie roll.\r\n\r\nHalvah candy canes jelly-o lollipop tart. Oat cake wafer dessert. Ice cream cotton candy tiramisu tiramisu toffee gummi bears gummi bears macaroon danish. Marshmallow chocolate jelly beans soufflé jelly-o caramels liquorice tootsie roll gummies.','Sweet muffin gingerbread','','inherit','closed','closed','','12-revision-v1','','','2016-04-11 15:44:55','2016-04-11 15:44:55','',12,'http://localhost:8888/wordpress/2016/04/11/12-revision-v1/',0,'revision','',0),
	(14,1,'2016-04-11 18:17:30','2016-04-11 16:17:30','Croissant bonbon pie cupcake macaroon carrot cake chocolate bar. Toffee chocolate dragée liquorice chupa chups. Sesame snaps brownie sweet ice cream. <!--more-->\r\n\r\nBear claw sesame snaps cookie powder macaroon bonbon sesame snaps cotton candy croissant. Gingerbread pastry lemon drops chocolate cake. Gummies liquorice biscuit pie topping. Candy gummies halvah sweet marzipan chocolate bar tootsie roll.\r\n\r\nHalvah candy canes jelly-o lollipop tart. Oat cake wafer dessert. Ice cream cotton candy tiramisu tiramisu toffee gummi bears gummi bears macaroon danish. Marshmallow chocolate jelly beans soufflé jelly-o caramels liquorice tootsie roll gummies.','Sweet muffin gingerbread','','inherit','closed','closed','','12-revision-v1','','','2016-04-11 18:17:30','2016-04-11 16:17:30','',12,'http://localhost:8888/wordpress/12-revision-v1/',0,'revision','',0),
	(15,1,'2016-04-11 18:17:51','2016-04-11 16:17:51','Apple pie jujubes danish apple pie brownie. Sugar plum bonbon apple pie gummies sweet roll cake marshmallow. Cotton candy sweet roll lollipop lollipop sugar plum. Brownie sesame snaps chupa chups sweet danish brownie sugar plum apple pie. <!--more-->\r\n\r\nJelly beans cake croissant fruitcake powder pastry cookie dragée dessert. Candy tiramisu biscuit bear claw lollipop marshmallow sesame snaps. Marshmallow gummies tootsie roll cotton candy sweet bonbon jelly. Sweet roll wafer oat cake sweet roll dragée oat cake tootsie roll.\r\n\r\nCroissant gummies jelly-o. Sweet muffin gingerbread lemon drops jelly-o. Powder powder gummies dragée chocolate liquorice.','Croissant gummies jelly-o','','inherit','closed','closed','','10-revision-v1','','','2016-04-11 18:17:51','2016-04-11 16:17:51','',10,'http://localhost:8888/wordpress/10-revision-v1/',0,'revision','',0),
	(16,1,'2016-04-11 18:18:00','2016-04-11 16:18:00','Welcome to <strong>WordPress</strong>. This is your first post. <em>Edit or delete it</em>, then start writing!<!--more-->\r\n\r\nA new paragraph.\r\n\r\nA newer one.','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2016-04-11 18:18:00','2016-04-11 16:18:00','',1,'http://localhost:8888/wordpress/1-revision-v1/',0,'revision','',0),
	(18,1,'2016-04-29 14:19:25','2016-04-29 12:19:25','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2016-04-29 14:19:25','2016-04-29 12:19:25','',2,'http://localhost:8888/wordpress/2-revision-v1/',0,'revision','',0),
	(19,1,'2016-04-29 14:21:06','2016-04-29 12:21:06','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"contact\" color=\"red\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','publish','closed','closed','','home','','','2016-04-30 13:20:46','2016-04-30 11:20:46','',0,'http://localhost:8888/wordpress/?page_id=19',0,'page','',0),
	(20,1,'2016-04-29 14:21:06','2016-04-29 12:21:06','<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>','Kickass Website','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 14:21:06','2016-04-29 12:21:06','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(21,1,'2016-04-29 14:21:44','2016-04-29 12:21:44','<h1>Sweet Gallery</h1>\r\n<h2>It\'s got images in it.</h2>\r\n[simple_gallery]','Gallery','','publish','closed','closed','','gallery','','','2016-04-30 13:23:46','2016-04-30 11:23:46','',0,'http://localhost:8888/wordpress/?page_id=21',0,'page','',0),
	(22,1,'2016-04-29 14:21:44','2016-04-29 12:21:44','<h2>It\'s got images in it.</h2>','Sweet Gallery','','inherit','closed','closed','','21-revision-v1','','','2016-04-29 14:21:44','2016-04-29 12:21:44','',21,'http://localhost:8888/wordpress/21-revision-v1/',0,'revision','',0),
	(23,1,'2016-04-29 14:22:16','2016-04-29 12:22:16','<h1>Big Words</h1>\r\n<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>','Blog','','publish','closed','closed','','blog','','','2016-04-30 14:16:11','2016-04-30 12:16:11','',0,'http://localhost:8888/wordpress/?page_id=23',0,'page','',0),
	(24,1,'2016-04-29 14:22:16','2016-04-29 12:22:16','<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>','Big Words','','inherit','closed','closed','','23-revision-v1','','','2016-04-29 14:22:16','2016-04-29 12:22:16','',23,'http://localhost:8888/wordpress/23-revision-v1/',0,'revision','',0),
	(25,1,'2016-04-29 14:22:42','2016-04-29 12:22:42','<h1>Send us an email</h1>\r\n<h2>We won\'t read it.</h2>\r\n[contact-form-7 id=\"92\" title=\"Contact form 1\"]','Contact','','publish','closed','closed','','contact','','','2016-04-30 14:25:59','2016-04-30 12:25:59','',0,'http://localhost:8888/wordpress/?page_id=25',0,'page','',0),
	(26,1,'2016-04-29 14:22:42','2016-04-29 12:22:42','<h2>We won\'t read it.</h2>','Send us an email','','inherit','closed','closed','','25-revision-v1','','','2016-04-29 14:22:42','2016-04-29 12:22:42','',25,'http://localhost:8888/wordpress/25-revision-v1/',0,'revision','',0),
	(27,1,'2016-04-29 14:26:14','2016-04-29 12:26:14','<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>','Blog','','inherit','closed','closed','','23-revision-v1','','','2016-04-29 14:26:14','2016-04-29 12:26:14','',23,'http://localhost:8888/wordpress/23-revision-v1/',0,'revision','',0),
	(28,1,'2016-04-29 14:26:56','2016-04-29 12:26:56','<h1>Big Words</h1>\r\n<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>','Blog','','inherit','closed','closed','','23-revision-v1','','','2016-04-29 14:26:56','2016-04-29 12:26:56','',23,'http://localhost:8888/wordpress/23-revision-v1/',0,'revision','',0),
	(29,1,'2016-04-29 14:28:17','2016-04-29 12:28:17','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 14:28:17','2016-04-29 12:28:17','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(30,1,'2016-04-29 14:29:28','2016-04-29 12:29:28','<h1>Send us an email</h1>\r\n<h2>We won\'t read it.</h2>','Contact','','inherit','closed','closed','','25-revision-v1','','','2016-04-29 14:29:28','2016-04-29 12:29:28','',25,'http://localhost:8888/wordpress/25-revision-v1/',0,'revision','',0),
	(31,1,'2016-04-29 14:29:53','2016-04-29 12:29:53','<h1>Sweet Gallery</h1>\r\n<h2>It\'s got images in it.</h2>','Gallery','','inherit','closed','closed','','21-revision-v1','','','2016-04-29 14:29:53','2016-04-29 12:29:53','',21,'http://localhost:8888/wordpress/21-revision-v1/',0,'revision','',0),
	(32,1,'2016-04-29 17:20:32','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-04-29 17:20:32','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?p=32',1,'nav_menu_item','',0),
	(33,1,'2016-04-29 17:20:32','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-04-29 17:20:32','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?p=33',1,'nav_menu_item','',0),
	(34,1,'2016-04-29 17:20:32','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-04-29 17:20:32','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?p=34',1,'nav_menu_item','',0),
	(35,1,'2016-04-29 17:20:32','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-04-29 17:20:32','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?p=35',1,'nav_menu_item','',0),
	(36,1,'2016-04-29 17:22:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-04-29 17:22:40','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?p=36',1,'nav_menu_item','',0),
	(37,1,'2016-04-29 17:22:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-04-29 17:22:40','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?p=37',1,'nav_menu_item','',0),
	(38,1,'2016-04-29 17:22:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-04-29 17:22:40','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?p=38',1,'nav_menu_item','',0),
	(39,1,'2016-04-29 17:22:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-04-29 17:22:40','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?p=39',1,'nav_menu_item','',0),
	(40,1,'2016-04-29 17:22:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-04-29 17:22:40','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?p=40',1,'nav_menu_item','',0),
	(41,1,'2016-04-29 17:23:17','2016-04-29 15:23:17',' ','','','publish','closed','closed','','41','','','2016-04-29 17:23:17','2016-04-29 15:23:17','',0,'http://localhost:8888/wordpress/?p=41',4,'nav_menu_item','',0),
	(42,1,'2016-04-29 17:23:17','2016-04-29 15:23:17',' ','','','publish','closed','closed','','42','','','2016-04-29 17:23:17','2016-04-29 15:23:17','',0,'http://localhost:8888/wordpress/?p=42',3,'nav_menu_item','',0),
	(43,1,'2016-04-29 17:23:17','2016-04-29 15:23:17',' ','','','publish','closed','closed','','43','','','2016-04-29 17:23:17','2016-04-29 15:23:17','',0,'http://localhost:8888/wordpress/?p=43',2,'nav_menu_item','',0),
	(44,1,'2016-04-29 17:23:17','2016-04-29 15:23:17',' ','','','publish','closed','closed','','44','','','2016-04-29 17:23:17','2016-04-29 15:23:17','',0,'http://localhost:8888/wordpress/?p=44',1,'nav_menu_item','',0),
	(45,1,'2016-04-29 19:40:24','2016-04-29 17:40:24','','marvel-yellow','','inherit','open','closed','','marvel-yellow','','','2016-04-29 19:40:24','2016-04-29 17:40:24','',19,'http://localhost:8888/wordpress/wp-content/uploads/2016/04/marvel-yellow.png',0,'attachment','image/png',0),
	(46,1,'2016-04-29 21:09:13','2016-04-29 19:09:13','','01','','inherit','open','closed','','01','','','2016-04-29 21:09:13','2016-04-29 19:09:13','',21,'http://localhost:8888/wordpress/wp-content/uploads/2016/04/01-1.png',0,'attachment','image/png',0),
	(47,1,'2016-04-29 21:09:14','2016-04-29 19:09:14','','02','','inherit','open','closed','','02','','','2016-04-29 21:09:14','2016-04-29 19:09:14','',21,'http://localhost:8888/wordpress/wp-content/uploads/2016/04/02-1.png',0,'attachment','image/png',0),
	(48,1,'2016-04-29 21:09:56','2016-04-29 19:09:56','','03','','inherit','open','closed','','03','','','2016-04-29 21:09:56','2016-04-29 19:09:56','',21,'http://localhost:8888/wordpress/wp-content/uploads/2016/04/03-1.png',0,'attachment','image/png',0),
	(49,1,'2016-04-29 21:09:56','2016-04-29 19:09:56','','04','','inherit','open','closed','','04','','','2016-04-29 21:09:56','2016-04-29 19:09:56','',21,'http://localhost:8888/wordpress/wp-content/uploads/2016/04/04-1.png',0,'attachment','image/png',0),
	(50,1,'2016-04-29 21:09:57','2016-04-29 19:09:57','','05','','inherit','open','closed','','05','','','2016-04-29 21:09:57','2016-04-29 19:09:57','',21,'http://localhost:8888/wordpress/wp-content/uploads/2016/04/05-1.png',0,'attachment','image/png',0),
	(51,1,'2016-04-29 21:09:57','2016-04-29 19:09:57','','06','','inherit','open','closed','','06','','','2016-04-29 21:09:57','2016-04-29 19:09:57','',21,'http://localhost:8888/wordpress/wp-content/uploads/2016/04/06-1.png',0,'attachment','image/png',0),
	(52,1,'2016-04-29 21:11:33','2016-04-29 19:11:33','<h1>Sweet Gallery</h1>\r\n<h2>It\'s got images in it.</h2>\r\n[gallery]','Gallery','','inherit','closed','closed','','21-revision-v1','','','2016-04-29 21:11:33','2016-04-29 19:11:33','',21,'http://localhost:8888/wordpress/21-revision-v1/',0,'revision','',0),
	(53,1,'2016-04-29 21:12:50','2016-04-29 19:12:50','<h1>Sweet Gallery</h1>\r\n<h2>It\'s got images in it.</h2>\r\n[gallery size=\"full\"]','Gallery','','inherit','closed','closed','','21-revision-v1','','','2016-04-29 21:12:50','2016-04-29 19:12:50','',21,'http://localhost:8888/wordpress/21-revision-v1/',0,'revision','',0),
	(54,1,'2016-04-29 21:13:52','2016-04-29 19:13:52','<h1>Sweet Gallery</h1>\r\n<h2>It\'s got images in it.</h2>\r\n[gallery size=\"full\" columns=\"1\" link=\"none\" ids=\"48,49,50,51,46,47\"]','Gallery','','inherit','closed','closed','','21-revision-v1','','','2016-04-29 21:13:52','2016-04-29 19:13:52','',21,'http://localhost:8888/wordpress/21-revision-v1/',0,'revision','',0),
	(55,1,'2016-04-29 21:14:10','2016-04-29 19:14:10','<h1>Sweet Gallery</h1>\r\n<h2>It\'s got images in it.</h2>\r\n[gallery size=\"full\" columns=\"2\" link=\"none\" ids=\"48,49,50,51,46,47\"]','Gallery','','inherit','closed','closed','','21-revision-v1','','','2016-04-29 21:14:10','2016-04-29 19:14:10','',21,'http://localhost:8888/wordpress/21-revision-v1/',0,'revision','',0),
	(56,1,'2016-04-29 21:20:09','2016-04-29 19:20:09','<h1>Big Words</h1>\r\n<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>\r\n<p class=\"paragraph ng-attr-widget\"><span class=\"ng-directive ng-binding\"><img class=\"alignnone size-medium wp-image-50\" src=\"http://localhost:8888/wordpress/wp-content/uploads/2016/04/05-1-300x120.png\" alt=\"05\" width=\"300\" height=\"120\" />Biscuit bear claw icing fruitcake lollipop powder sweet roll. Powder carrot cake chocolate bar gingerbread. Biscuit pudding wafer cotton candy cupcake. Sugar plum tootsie roll halvah. Powder oat cake lemon drops gummies. Jelly-o chocolate bar tootsie roll croissant cake jelly beans gummi bears fruitcake. Sweet soufflé soufflé apple pie toffee. Fruitcake caramels gummi bears cookie pudding dragée candy cookie chocolate. Chocolate cake candy dessert cupcake. Dessert liquorice biscuit jelly-o bonbon icing halvah fruitcake.</span></p>\r\n<p class=\"paragraph ng-attr-widget\"><span class=\"ng-directive ng-binding\">Sugar plum cake candy canes lollipop. Marshmallow bonbon cookie pie danish. Danish chocolate bar carrot cake sweet donut cake pastry sweet. Chocolate pastry topping. Apple pie powder donut cheesecake. Bear claw bear claw bonbon fruitcake brownie candy topping gummies dessert.</span></p>','Blog','','inherit','closed','closed','','23-revision-v1','','','2016-04-29 21:20:09','2016-04-29 19:20:09','',23,'http://localhost:8888/wordpress/23-revision-v1/',0,'revision','',0),
	(57,1,'2016-04-29 21:20:37','2016-04-29 19:20:37','<h1>Big Words</h1>\r\n<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>\r\n<p class=\"paragraph ng-attr-widget\"><span class=\"ng-directive ng-binding\"><img class=\"size-medium wp-image-50 aligncenter\" src=\"http://localhost:8888/wordpress/wp-content/uploads/2016/04/05-1-300x120.png\" alt=\"05\" width=\"300\" height=\"120\" />Biscuit bear claw icing fruitcake lollipop powder sweet roll. Powder carrot cake chocolate bar gingerbread. Biscuit pudding wafer cotton candy cupcake. Sugar plum tootsie roll halvah. Powder oat cake lemon drops gummies. Jelly-o chocolate bar tootsie roll croissant cake jelly beans gummi bears fruitcake. Sweet soufflé soufflé apple pie toffee. Fruitcake caramels gummi bears cookie pudding dragée candy cookie chocolate. Chocolate cake candy dessert cupcake. Dessert liquorice biscuit jelly-o bonbon icing halvah fruitcake.</span></p>\r\n<p class=\"paragraph ng-attr-widget\"><span class=\"ng-directive ng-binding\">Sugar plum cake candy canes lollipop. Marshmallow bonbon cookie pie danish. Danish chocolate bar carrot cake sweet donut cake pastry sweet. Chocolate pastry topping. Apple pie powder donut cheesecake. Bear claw bear claw bonbon fruitcake brownie candy topping gummies dessert.</span></p>','Blog','','inherit','closed','closed','','23-revision-v1','','','2016-04-29 21:20:37','2016-04-29 19:20:37','',23,'http://localhost:8888/wordpress/23-revision-v1/',0,'revision','',0),
	(58,1,'2016-04-29 21:20:50','2016-04-29 19:20:50','<h1>Big Words</h1>\r\n<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>\r\n<p class=\"paragraph ng-attr-widget\"><span class=\"ng-directive ng-binding\"><img class=\"size-medium wp-image-50 alignright\" src=\"http://localhost:8888/wordpress/wp-content/uploads/2016/04/05-1-300x120.png\" alt=\"05\" width=\"300\" height=\"120\" />Biscuit bear claw icing fruitcake lollipop powder sweet roll. Powder carrot cake chocolate bar gingerbread. Biscuit pudding wafer cotton candy cupcake. Sugar plum tootsie roll halvah. Powder oat cake lemon drops gummies. Jelly-o chocolate bar tootsie roll croissant cake jelly beans gummi bears fruitcake. Sweet soufflé soufflé apple pie toffee. Fruitcake caramels gummi bears cookie pudding dragée candy cookie chocolate. Chocolate cake candy dessert cupcake. Dessert liquorice biscuit jelly-o bonbon icing halvah fruitcake.</span></p>\r\n<p class=\"paragraph ng-attr-widget\"><span class=\"ng-directive ng-binding\">Sugar plum cake candy canes lollipop. Marshmallow bonbon cookie pie danish. Danish chocolate bar carrot cake sweet donut cake pastry sweet. Chocolate pastry topping. Apple pie powder donut cheesecake. Bear claw bear claw bonbon fruitcake brownie candy topping gummies dessert.</span></p>','Blog','','inherit','closed','closed','','23-revision-v1','','','2016-04-29 21:20:50','2016-04-29 19:20:50','',23,'http://localhost:8888/wordpress/23-revision-v1/',0,'revision','',0),
	(59,1,'2016-04-29 21:22:55','2016-04-29 19:22:55','<h1>Big Words</h1>\r\n<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>\r\n<p class=\"paragraph ng-attr-widget\" style=\"text-align: left;\"><span class=\"ng-directive ng-binding\"><img class=\"size-medium wp-image-50 alignright\" src=\"http://localhost:8888/wordpress/wp-content/uploads/2016/04/05-1-300x120.png\" alt=\"05\" width=\"300\" height=\"120\" />Biscuit bear claw icing fruitcake lollipop powder sweet roll. Powder carrot cake chocolate bar gingerbread. Biscuit pudding wafer cotton candy cupcake. Sugar plum tootsie roll halvah. Powder oat cake lemon drops gummies. Jelly-o chocolate bar tootsie roll croissant cake jelly beans gummi bears fruitcake. Sweet soufflé soufflé apple pie toffee. Fruitcake caramels gummi bears cookie pudding dragée candy cookie chocolate. Chocolate cake candy dessert cupcake. Dessert liquorice biscuit jelly-o bonbon icing halvah fruitcake.</span></p>\r\n<p class=\"paragraph ng-attr-widget\" style=\"text-align: left;\"><span class=\"ng-directive ng-binding\">Sugar plum cake candy canes lollipop. Marshmallow bonbon cookie pie danish. Danish chocolate bar carrot cake sweet donut cake pastry sweet. Chocolate pastry topping. Apple pie powder donut cheesecake. Bear claw bear claw bonbon fruitcake brownie candy topping gummies dessert.</span></p>','Blog','','inherit','closed','closed','','23-revision-v1','','','2016-04-29 21:22:55','2016-04-29 19:22:55','',23,'http://localhost:8888/wordpress/23-revision-v1/',0,'revision','',0),
	(60,1,'2016-04-29 21:23:56','2016-04-29 19:23:56','<h1>Big Words</h1>\n<h2>You need a blog regardless of whether you have something to say.\nWelcome to the Internet.</h2>\n<p class=\"paragraph ng-attr-widget\" style=\"text-align: left;\"><span class=\"ng-directive ng-binding\"><img class=\"size-medium wp-image-50 alignright\" src=\"http://localhost:8888/wordpress/wp-content/uploads/2016/04/05-1-300x120.png\" alt=\"05\" width=\"300\" height=\"120\" />Biscuit bear claw icing fruitcake lollipop powder sweet roll. Powder carrot cake chocolate bar gingerbread. Biscuit pudding wafer cotton candy cupcake. Sugar plum tootsie roll halvah. Powder oat cake lemon drops gummies. Jelly-o chocolate bar tootsie roll croissant cake jelly beans gummi bears fruitcake. Sweet soufflé soufflé apple pie toffee. Fruitcake caramels gummi bears cookie pudding dragée candy cookie chocolate. Chocolate cake candy dessert cupcake. Dessert liquorice biscuit jelly-o bonbon icing halvah fruitcake.</span></p>\n<p class=\"paragraph ng-attr-widget\" style=\"text-align: left;\"></p>\n<p class=\"paragraph ng-attr-widget\" style=\"text-align: left;\"><span class=\"ng-directive ng-binding\">Sugar plum cake candy canes lollipop. Marshmallow bonbon cookie pie danish. Danish chocolate bar carrot cake sweet donut cake pastry sweet. Chocolate pastry topping. Apple pie powder donut cheesecake. Bear claw bear claw bonbon fruitcake brownie candy topping gummies dessert.</span></p>','Blog','','inherit','closed','closed','','23-autosave-v1','','','2016-04-29 21:23:56','2016-04-29 19:23:56','',23,'http://localhost:8888/wordpress/23-autosave-v1/',0,'revision','',0),
	(61,1,'2016-04-29 21:24:33','2016-04-29 19:24:33','<h1>Big Words</h1>\r\n<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>\r\n<p class=\"paragraph ng-attr-widget\" style=\"text-align: left;\"><span class=\"ng-directive ng-binding\"><img class=\"size-medium wp-image-50 alignright\" src=\"http://localhost:8888/wordpress/wp-content/uploads/2016/04/05-1-300x120.png\" alt=\"05\" width=\"300\" height=\"120\" />Biscuit bear claw icing fruitcake lollipop powder sweet roll. Powder carrot cake chocolate bar gingerbread. Biscuit pudding wafer cotton candy cupcake. Sugar plum tootsie roll halvah. Powder oat cake lemon drops gummies. </span></p>\r\n\r\n<ul>\r\n 	<li class=\"paragraph ng-attr-widget\" style=\"text-align: left;\">hello</li>\r\n 	<li class=\"paragraph ng-attr-widget\" style=\"text-align: left;\">there</li>\r\n 	<li class=\"paragraph ng-attr-widget\" style=\"text-align: left;\">Bear claw bear claw bonbon fruitcake brownie candy topping gummies dessert.</li>\r\n</ul>\r\n<p class=\"paragraph ng-attr-widget\" style=\"text-align: left;\"><span class=\"ng-directive ng-binding\">Jelly-o chocolate bar tootsie roll croissant cake jelly beans gummi bears fruitcake. Sweet soufflé soufflé apple pie toffee. Fruitcake caramels gummi bears cookie pudding dragée candy cookie chocolate. Chocolate cake candy dessert cupcake. Dessert liquorice biscuit jelly-o bonbon icing halvah fruitcake.</span></p>\r\n\r\n<blockquote>\r\n<p class=\"paragraph ng-attr-widget\" style=\"text-align: left;\">Fruitcake caramels gummi bears cookie pudding dragée candy cookie chocolate. Chocolate cake candy dessert cupcake.</p>\r\n</blockquote>\r\n<p class=\"paragraph ng-attr-widget\" style=\"text-align: left;\"><span class=\"ng-directive ng-binding\">Sugar plum cake candy canes lollipop. Marshmallow bonbon cookie pie danish. Danish chocolate bar carrot cake sweet donut cake pastry sweet. Chocolate pastry topping. Apple pie powder donut cheesecake. Bear claw bear claw bonbon fruitcake brownie candy topping gummies dessert.</span></p>\r\n\r\n<ol>\r\n 	<li class=\"paragraph ng-attr-widget\" style=\"text-align: left;\">one</li>\r\n 	<li class=\"paragraph ng-attr-widget\" style=\"text-align: left;\">two</li>\r\n 	<li class=\"paragraph ng-attr-widget\" style=\"text-align: left;\">Bear claw bear claw bonbon fruitcake brownie candy topping gummies dessert.</li>\r\n</ol>','Blog','','inherit','closed','closed','','23-revision-v1','','','2016-04-29 21:24:33','2016-04-29 19:24:33','',23,'http://localhost:8888/wordpress/23-revision-v1/',0,'revision','',0),
	(62,1,'2016-04-29 21:27:39','2016-04-29 19:27:39','<h1>Big Words</h1>\r\n<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>','Blog','','inherit','closed','closed','','23-revision-v1','','','2016-04-29 21:27:39','2016-04-29 19:27:39','',23,'http://localhost:8888/wordpress/23-revision-v1/',0,'revision','',0),
	(63,1,'2016-04-29 21:31:29','2016-04-29 19:31:29','<h1>Big Words</h1>\r\n<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>\r\nhttps://youtu.be/UmPmpUTr22c','Blog','','inherit','closed','closed','','23-revision-v1','','','2016-04-29 21:31:29','2016-04-29 19:31:29','',23,'http://localhost:8888/wordpress/23-revision-v1/',0,'revision','',0),
	(64,1,'2016-04-29 21:32:04','2016-04-29 19:32:04','<h1>Big Words</h1>\r\n<h2>You need a blog regardless of whether you have something to say.\r\nWelcome to the Internet.</h2>','Blog','','inherit','closed','closed','','23-revision-v1','','','2016-04-29 21:32:04','2016-04-29 19:32:04','',23,'http://localhost:8888/wordpress/23-revision-v1/',0,'revision','',0),
	(65,1,'2016-04-29 21:35:00','2016-04-29 19:35:00','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:35:00','2016-04-29 19:35:00','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(66,1,'2016-04-29 21:37:58','2016-04-29 19:37:58','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\" color=\"green\" text=\"Get a kick up the butt\"]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:37:58','2016-04-29 19:37:58','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(67,1,'2016-04-29 21:41:58','2016-04-29 19:41:58','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\"]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:41:58','2016-04-29 19:41:58','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(68,1,'2016-04-29 21:44:40','2016-04-29 19:44:40','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\" text=\"Get a kick right in the pooper\"]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:44:40','2016-04-29 19:44:40','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(69,1,'2016-04-29 21:44:52','2016-04-29 19:44:52','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\" color=\"green\" text=\"Get a kick right in the pooper\"]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:44:52','2016-04-29 19:44:52','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(70,1,'2016-04-29 21:45:03','2016-04-29 19:45:03','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:45:03','2016-04-29 19:45:03','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(71,1,'2016-04-29 21:45:17','2016-04-29 19:45:17','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\" color=\"green\" text=\"Get a kick right in the pooper\"]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:45:17','2016-04-29 19:45:17','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(72,1,'2016-04-29 21:46:59','2016-04-29 19:46:59','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\" color=\"red\" text=\"Get a kick right in the pooper\"]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:46:59','2016-04-29 19:46:59','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(73,1,'2016-04-29 21:47:09','2016-04-29 19:47:09','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\" text=\"Get a kick right in the pooper\"]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:47:09','2016-04-29 19:47:09','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(74,1,'2016-04-29 21:48:10','2016-04-29 19:48:10','<h1>Kickass Website</h1>\n<h2>This website kicks all of the asses. All of them.\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\n[button link=\"http://bing.hu\"]Get a kick up the butthole[/button]\n\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-autosave-v1','','','2016-04-29 21:48:10','2016-04-29 19:48:10','',19,'http://localhost:8888/wordpress/19-autosave-v1/',0,'revision','',0),
	(75,1,'2016-04-29 21:48:11','2016-04-29 19:48:11','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:48:11','2016-04-29 19:48:11','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(76,1,'2016-04-29 21:48:59','2016-04-29 19:48:59','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\" color=\"yellow\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:48:59','2016-04-29 19:48:59','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(77,1,'2016-04-29 21:49:08','2016-04-29 19:49:08','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-29 21:49:08','2016-04-29 19:49:08','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(78,1,'2016-04-30 13:11:06','2016-04-30 11:11:06','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\" color=\"red\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-30 13:11:06','2016-04-30 11:11:06','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(79,1,'2016-04-30 13:13:30','2016-04-30 11:13:30','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"/contact\" color=\"red\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-30 13:13:30','2016-04-30 11:13:30','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(80,1,'2016-04-30 13:13:47','2016-04-30 11:13:47','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"contact\" color=\"red\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-30 13:13:47','2016-04-30 11:13:47','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(81,1,'2016-04-30 13:14:19','2016-04-30 11:14:19','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.hu\" color=\"red\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-30 13:14:19','2016-04-30 11:14:19','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(82,1,'2016-04-30 13:14:55','2016-04-30 11:14:55','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"contact\" color=\"red\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-30 13:14:55','2016-04-30 11:14:55','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(83,1,'2016-04-30 13:15:09','2016-04-30 11:15:09','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"/contact\" color=\"red\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-30 13:15:09','2016-04-30 11:15:09','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(84,1,'2016-04-30 13:16:25','2016-04-30 11:16:25','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"http://bing.com\" color=\"red\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-30 13:16:25','2016-04-30 11:16:25','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(85,1,'2016-04-30 13:17:52','2016-04-30 11:17:52','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"/blog\" color=\"red\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-30 13:17:52','2016-04-30 11:17:52','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(86,1,'2016-04-30 13:20:46','2016-04-30 11:20:46','<h1>Kickass Website</h1>\r\n<h2>This website kicks all of the asses. All of them.\r\nIf you\'ve got an ass, this website kicks the poo out of it.</h2>\r\n[button link=\"contact\" color=\"red\"]Get a kick up the butthole[/button]\r\n\r\n<small>Should a kick occur, which it will, your butt cheeks will resonate.\r\nMuch like the wings of a butterfly, your butt might change history.</small>','Home','','inherit','closed','closed','','19-revision-v1','','','2016-04-30 13:20:46','2016-04-30 11:20:46','',19,'http://localhost:8888/wordpress/19-revision-v1/',0,'revision','',0),
	(87,1,'2016-04-30 13:23:46','2016-04-30 11:23:46','<h1>Sweet Gallery</h1>\r\n<h2>It\'s got images in it.</h2>\r\n[simple_gallery]','Gallery','','inherit','closed','closed','','21-revision-v1','','','2016-04-30 13:23:46','2016-04-30 11:23:46','',21,'http://localhost:8888/wordpress/21-revision-v1/',0,'revision','',0),
	(88,1,'2016-04-30 13:54:01','2016-04-30 11:54:01','Welcome to <strong>WordPress</strong>. This is your first post. <em>Edit or delete it</em>, then start writing!\r\n\r\nA new paragraph.\r\n\r\nA newer one.','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2016-04-30 13:54:01','2016-04-30 11:54:01','',1,'http://localhost:8888/wordpress/1-revision-v1/',0,'revision','',0),
	(89,1,'2016-04-30 13:54:16','2016-04-30 11:54:16','Croissant bonbon pie cupcake macaroon carrot cake chocolate bar. Toffee chocolate dragée liquorice chupa chups. Sesame snaps brownie sweet ice cream.\r\n\r\nBear claw sesame snaps cookie powder macaroon bonbon sesame snaps cotton candy croissant. Gingerbread pastry lemon drops chocolate cake. Gummies liquorice biscuit pie topping. Candy gummies halvah sweet marzipan chocolate bar tootsie roll.\r\n\r\nHalvah candy canes jelly-o lollipop tart. Oat cake wafer dessert. Ice cream cotton candy tiramisu tiramisu toffee gummi bears gummi bears macaroon danish. Marshmallow chocolate jelly beans soufflé jelly-o caramels liquorice tootsie roll gummies.','Sweet muffin gingerbread','','inherit','closed','closed','','12-revision-v1','','','2016-04-30 13:54:16','2016-04-30 11:54:16','',12,'http://localhost:8888/wordpress/12-revision-v1/',0,'revision','',0),
	(90,1,'2016-04-30 14:09:37','2016-04-30 12:09:37','Croissant bonbon pie cupcake macaroon carrot cake chocolate bar. Toffee chocolate dragée liquorice chupa chups. Sesame snaps brownie sweet ice cream.\r\n\r\nhttps://youtu.be/UmPmpUTr22c\r\n\r\nBear claw sesame snaps cookie powder macaroon bonbon sesame snaps cotton candy croissant. Gingerbread pastry lemon drops chocolate cake. Gummies liquorice biscuit pie topping. Candy gummies halvah sweet marzipan chocolate bar tootsie roll.\r\n\r\nHalvah candy canes jelly-o lollipop tart. Oat cake wafer dessert. Ice cream cotton candy tiramisu tiramisu toffee gummi bears gummi bears macaroon danish. Marshmallow chocolate jelly beans soufflé jelly-o caramels liquorice tootsie roll gummies.','Sweet muffin gingerbread','','inherit','closed','closed','','12-revision-v1','','','2016-04-30 14:09:37','2016-04-30 12:09:37','',12,'http://localhost:8888/wordpress/12-revision-v1/',0,'revision','',0),
	(91,1,'2016-04-30 14:20:01','2016-04-30 12:20:01','Croissant bonbon pie cupcake macaroon carrot cake chocolate bar. Toffee chocolate dragée liquorice chupa chups. Sesame snaps brownie sweet ice cream.\r\n\r\nBear claw sesame snaps cookie powder macaroon bonbon sesame snaps cotton candy croissant. Gingerbread pastry lemon drops chocolate cake. Gummies liquorice biscuit pie topping. Candy gummies halvah sweet marzipan chocolate bar tootsie roll.\r\n\r\nHalvah candy canes jelly-o lollipop tart. Oat cake wafer dessert. Ice cream cotton candy tiramisu tiramisu toffee gummi bears gummi bears macaroon danish. Marshmallow chocolate jelly beans soufflé jelly-o caramels liquorice tootsie roll gummies.','Sweet muffin gingerbread','','inherit','closed','closed','','12-revision-v1','','','2016-04-30 14:20:01','2016-04-30 12:20:01','',12,'http://localhost:8888/wordpress/12-revision-v1/',0,'revision','',0),
	(92,1,'2016-04-30 14:23:54','2016-04-30 12:23:54','<label for=\"your-name\">\r\n	Your name (required)\r\n	[text* your-name id:your-name]\r\n</label>\r\n\r\n<label for=\"your-email\">\r\n	Your email (required)\r\n	[email* your-email id:your-email]\r\n</label>\r\n\r\n<label for=\"your-message\">\r\n	Your message\r\n	[textarea your-message id:your-message 40x10]\r\n</label>\r\n\r\n[submit class:btn class:btn-white \"Send\"]\nMuzli Contact Form Message\n[your-name] <admin@admin.sk>\nFrom: [your-name] <[your-email]>\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Muzli\nadmin@admin.sk\nReply-To: [your-email]\n\n\n\n\nMuzli \"[your-subject]\"\nMuzli <admin@admin.sk>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Muzli (http://localhost:8888/wordpress)\n[your-email]\nReply-To: admin@admin.sk\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2016-04-30 15:04:48','2016-04-30 13:04:48','',0,'http://localhost:8888/wordpress/?post_type=wpcf7_contact_form&#038;p=92',0,'wpcf7_contact_form','',0),
	(93,1,'2016-04-30 14:25:59','2016-04-30 12:25:59','<h1>Send us an email</h1>\r\n<h2>We won\'t read it.</h2>\r\n[contact-form-7 id=\"92\" title=\"Contact form 1\"]','Contact','','inherit','closed','closed','','25-revision-v1','','','2016-04-30 14:25:59','2016-04-30 12:25:59','',25,'http://localhost:8888/wordpress/25-revision-v1/',0,'revision','',0),
	(94,1,'2016-05-04 15:45:41','2016-05-04 13:45:41','<h2></h2>','','','trash','closed','closed','','__trashed','','','2016-05-06 18:34:46','2016-05-06 16:34:46','',0,'http://localhost:8888/wordpress/?page_id=94',0,'page','',0),
	(95,1,'2016-05-04 15:46:03','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2016-05-04 15:46:03','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?page_id=95',0,'page','',0),
	(96,1,'2016-05-04 15:46:11','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2016-05-04 15:46:11','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?page_id=96',0,'page','',0),
	(97,1,'2016-05-04 15:46:41','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2016-05-04 15:46:41','0000-00-00 00:00:00','',0,'http://localhost:8888/wordpress/?page_id=97',0,'page','',0),
	(98,1,'2016-05-04 15:48:56','2016-05-04 13:48:56','bla blah\n\n<hr />\n\nbububbu','','','trash','closed','closed','','__trashed-2','','','2016-05-06 18:34:46','2016-05-06 16:34:46','',0,'http://localhost:8888/wordpress/?page_id=98',0,'page','',0),
	(99,1,'2016-05-06 18:34:46','2016-05-06 16:34:46','<h2></h2>','','','inherit','closed','closed','','94-revision-v1','','','2016-05-06 18:34:46','2016-05-06 16:34:46','',94,'http://localhost:8888/wordpress/94-revision-v1/',0,'revision','',0),
	(100,1,'2016-05-06 18:34:46','2016-05-06 16:34:46','bla blah\n\n<hr />\n\nbububbu','','','inherit','closed','closed','','98-revision-v1','','','2016-05-06 18:34:46','2016-05-06 16:34:46','',98,'http://localhost:8888/wordpress/98-revision-v1/',0,'revision','',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,2,0),
	(1,3,0),
	(1,4,0),
	(10,2,0),
	(12,1,0),
	(12,4,0),
	(41,6,0),
	(42,6,0),
	(43,6,0),
	(44,6,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'category','',0,2),
	(3,3,'post_format','',0,1),
	(4,4,'post_tag','',0,2),
	(6,6,'nav_menu','',0,4);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorized','uncategorized',0),
	(2,'So much pain','so-much-pain',0),
	(3,'post-format-quote','post-format-quote',0),
	(4,'darkness','darkness',0),
	(6,'main-navigation','main-navigation',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','yablko'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'comment_shortcuts','false'),
	(7,1,'admin_color','midnight'),
	(8,1,'use_ssl','0'),
	(9,1,'show_admin_bar_front','true'),
	(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(11,1,'wp_user_level','10'),
	(12,1,'dismissed_wp_pointers',''),
	(13,1,'show_welcome_panel','0'),
	(15,1,'wp_dashboard_quick_press_last_post_id','17'),
	(16,1,'closedpostboxes_dashboard','a:0:{}'),
	(17,1,'metaboxhidden_dashboard','a:1:{i:0;s:17:\"dashboard_primary\";}'),
	(18,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:41:\"dashboard_quick_press,dashboard_right_now\";s:4:\"side\";s:36:\"dashboard_primary,dashboard_activity\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
	(19,1,'wp_user-settings','mfold=o&post_dfw=off&editor=tinymce&libraryContent=browse&hidetb=1&advImgDetails=show&imgsize=medium'),
	(20,1,'wp_user-settings-time','1462369566'),
	(21,1,'closedpostboxes_post','a:2:{i:0;s:11:\"postexcerpt\";i:1;s:7:\"slugdiv\";}'),
	(22,1,'metaboxhidden_post','a:5:{i:0;s:13:\"trackbacksdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:9:\"authordiv\";i:4;s:11:\"commentsdiv\";}'),
	(23,1,'meta-box-order_post','a:3:{s:4:\"side\";s:61:\"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:96:\"postexcerpt,slugdiv,trackbacksdiv,postcustom,revisionsdiv,commentstatusdiv,authordiv,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
	(24,1,'screen_layout_post','2'),
	(25,1,'wp_media_library_mode','list'),
	(26,1,'wporg_favorites',''),
	(27,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
	(28,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
	(31,1,'wpcf7_hide_welcome_panel_on','a:1:{i:0;s:5:\"4.4.1\";}'),
	(32,1,'session_tokens','a:1:{s:64:\"efe1e32c4263443de206fab7304dadce3d19af72f12912ef42381a89543c78fe\";a:4:{s:10:\"expiration\";i:1462725260;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:5:\"login\";i:1462552460;}}');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'yablko','$P$BsdsMTwnWYHDCrCbO95WdDKKqZMyrL0','yablko','yablko@brm.sk','','2016-03-23 14:44:32','',0,'yablko');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
