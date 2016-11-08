-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: ruangide
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'occupy williamsburg','2016-10-06 17:43:42','2016-10-06 17:43:42'),(2,'venmo mixtape','2016-10-06 17:44:20','2016-10-06 17:44:20'),(3,'raclette enamel pin','2016-10-06 17:44:39','2016-10-06 17:44:39'),(4,'hundercats food','2016-10-06 17:54:43','2016-10-06 17:54:43'),(5,'dollar toast selvage','2016-10-06 17:54:58','2016-10-06 17:54:58'),(6,'humblebrag umami','2016-10-06 17:55:18','2016-10-06 17:55:18'),(7,'lumbersexual air','2016-10-06 17:55:37','2016-10-06 17:55:37');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_events_on_user_id` (`user_id`),
  KEY `index_events_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_0cb5590091` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_fd5598a81d` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'photo booth four dollar toast','Bicycle rights meditation fam, photo booth four dollar toast selvage hella. Kinfolk schlitz affogato activated charcoal glossier, vegan pabst raclette iceland jianbing blue bottle. Try-hard copper mug pok pok, 90\'s pop-up humblebrag umami. ','3.jpg','2016-10-14 00:00:00','2016-10-06 11:07:16','2016-10-12 14:54:41',1,4,'photo-booth-four-dollar-toast'),(2,'bushwick activated charcoal pok','Kinfolk sartorial man bun 8-bit, ramps bushwick activated charcoal pok pok raw denim fingerstache austin iPhone direct trade lumbersexual venmo. Flexitarian waistcoat ugh, XOXO shoreditch craft beer shabby chic brunch mixtape.','x1.jpg','2016-10-27 00:00:00','2016-10-06 11:08:51','2016-10-12 14:54:41',1,3,'bushwick-activated-charcoal-pok'),(3,'butcher hot chicken williamsburg','Hammock pitchfork mixtape, blue bottle prism deep v plaid seitan. VHS affogato lumbersexual, hexagon brunch succulents edison bulb cornhole occupy. Chia 8-bit church-key hoodie retro.','1.jpg','2016-10-24 00:00:00','2016-10-06 11:09:47','2016-10-12 14:54:41',1,4,'butcher-hot-chicken-williamsburg'),(4,'Salvia seitan letterpress beard','Small batch pok pok yuccie prism semiotics, beard umami drinking vinegar 3 wolf moon quinoa slow-carb. Salvia seitan letterpress beard williamsburg, keffiyeh trust fund bushwick YOLO','2.jpg','2016-10-18 00:00:00','2016-10-06 15:16:29','2016-10-12 14:54:41',1,2,'salvia-seitan-letterpress-beard'),(5,'flannel pork belly unicorn kinfolk gastropub','Godard direct trade subway tile ennui, ethical butcher yuccie fixie letterpress vice small batch organic. ','cv.jpg','2016-10-18 00:00:00','2016-10-06 15:28:39','2016-10-12 14:54:42',1,1,'flannel-pork-belly-unicorn-kinfolk-gastropub'),(6,'pok pok yuccie prism semiotics','seitan letterpress beard williamsburg, keffiyeh trust fund bushwick YOLO readymade flannel pork belly unicorn kinfolk gastropub. ','cb.jpg','2016-10-25 00:00:00','2016-10-06 15:31:06','2016-10-12 14:54:42',1,1,'pok-pok-yuccie-prism-semiotics'),(7,'kombucha gochujang organic edison','readymade flannel pork belly unicorn kinfolk gastropub. Narwhal art party +1, fam chicharrones lumbersexual raw denim jianbing literally polaroid plaid affogato vinyl succulents small batch.','cn.jpg','2016-10-23 00:00:00','2016-10-06 15:46:48','2016-10-12 14:54:42',1,7,'kombucha-gochujang-organic-edison'),(8,'Raw denim iPhone meggings ennui','. Etsy food truck direct trade kickstarter franzen hell of. Vaporware fixie poke kombucha','ck.jpg','2016-10-03 00:00:00','2016-10-06 15:49:08','2016-10-12 14:54:42',1,4,'raw-denim-iphone-meggings-ennui'),(9,'ork belly intelligentsia pickled','shabby chic, flexitarian tote bag enamel pin seitan retro. Kombucha flexitarian shabby chic gluten-free ramps pork belly. Cornhole lumbersexual banh mi, tousled slow','cm.jpg','2016-10-20 00:00:00','2016-10-06 15:49:59','2016-10-12 14:54:42',1,6,'ork-belly-intelligentsia-pickled');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendly_id_slugs`
--

DROP TABLE IF EXISTS `friendly_id_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendly_id_slugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sluggable_id` int(11) NOT NULL,
  `sluggable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope` (`slug`,`sluggable_type`,`scope`),
  KEY `index_friendly_id_slugs_on_sluggable_id` (`sluggable_id`),
  KEY `index_friendly_id_slugs_on_slug_and_sluggable_type` (`slug`,`sluggable_type`),
  KEY `index_friendly_id_slugs_on_sluggable_type` (`sluggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendly_id_slugs`
--

LOCK TABLES `friendly_id_slugs` WRITE;
/*!40000 ALTER TABLE `friendly_id_slugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `friendly_id_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_galleries_on_event_id` (`event_id`),
  CONSTRAINT `fk_rails_54a37fea4e` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'e1.jpg',1,'2016-10-06 11:07:16','2016-10-06 11:07:16'),(2,'e2.jpg',1,'2016-10-06 11:07:16','2016-10-06 11:07:16'),(3,'e3.jpg',1,'2016-10-06 11:07:16','2016-10-06 11:07:16'),(4,'e4.jpg',1,'2016-10-06 11:07:16','2016-10-06 11:07:16'),(5,'e5.jpg',1,'2016-10-06 11:07:16','2016-10-06 11:07:16'),(6,'e6.jpg',1,'2016-10-06 11:07:16','2016-10-06 11:07:16'),(7,'e7.jpg',1,'2016-10-06 11:07:16','2016-10-06 11:07:16'),(8,'e8.jpg',1,'2016-10-06 11:07:16','2016-10-06 11:07:16'),(9,'e9.jpg',1,'2016-10-06 11:07:16','2016-10-06 11:07:16'),(10,'e10.jpg',1,'2016-10-06 11:07:16','2016-10-06 11:07:16'),(11,'e1.jpg',2,'2016-10-06 11:08:51','2016-10-06 11:08:51'),(12,'e2.jpg',2,'2016-10-06 11:08:51','2016-10-06 11:08:51'),(13,'e3.jpg',2,'2016-10-06 11:08:51','2016-10-06 11:08:51'),(14,'e4.jpg',2,'2016-10-06 11:08:51','2016-10-06 11:08:51'),(15,'e5.jpg',2,'2016-10-06 11:08:51','2016-10-06 11:08:51'),(16,'e6.jpg',2,'2016-10-06 11:08:51','2016-10-06 11:08:51'),(17,'e7.jpg',2,'2016-10-06 11:08:51','2016-10-06 11:08:51'),(18,'e8.jpg',2,'2016-10-06 11:08:51','2016-10-06 11:08:51'),(19,'e9.jpg',2,'2016-10-06 11:08:51','2016-10-06 11:08:51'),(20,'e10.jpg',2,'2016-10-06 11:08:51','2016-10-06 11:08:51'),(21,'e1.jpg',3,'2016-10-06 11:09:47','2016-10-06 11:09:47'),(22,'e2.jpg',3,'2016-10-06 11:09:47','2016-10-06 11:09:47'),(23,'e3.jpg',3,'2016-10-06 11:09:47','2016-10-06 11:09:47'),(24,'e4.jpg',3,'2016-10-06 11:09:47','2016-10-06 11:09:47'),(25,'e5.jpg',3,'2016-10-06 11:09:47','2016-10-06 11:09:47'),(26,'e6.jpg',3,'2016-10-06 11:09:47','2016-10-06 11:09:47'),(27,'e7.jpg',3,'2016-10-06 11:09:47','2016-10-06 11:09:47'),(28,'e8.jpg',3,'2016-10-06 11:09:47','2016-10-06 11:09:47'),(29,'e9.jpg',3,'2016-10-06 11:09:47','2016-10-06 11:09:47'),(30,'e10.jpg',3,'2016-10-06 11:09:47','2016-10-06 11:09:47'),(31,'e1.jpg',4,'2016-10-06 15:16:29','2016-10-06 15:16:29'),(32,'e2.jpg',4,'2016-10-06 15:16:29','2016-10-06 15:16:29'),(33,'e3.jpg',4,'2016-10-06 15:16:29','2016-10-06 15:16:29'),(34,'e4.jpg',4,'2016-10-06 15:16:29','2016-10-06 15:16:29'),(35,'e5.jpg',4,'2016-10-06 15:16:29','2016-10-06 15:16:29'),(36,'e5.jpg',5,'2016-10-06 15:28:39','2016-10-06 15:28:39'),(37,'e6.jpg',5,'2016-10-06 15:28:39','2016-10-06 15:28:39'),(38,'e7.jpg',5,'2016-10-06 15:28:39','2016-10-06 15:28:39'),(39,'e8.jpg',5,'2016-10-06 15:28:39','2016-10-06 15:28:39'),(40,'e9.jpg',5,'2016-10-06 15:28:39','2016-10-06 15:28:39'),(41,'e10.jpg',5,'2016-10-06 15:28:39','2016-10-06 15:28:39'),(42,'e2.jpg',6,'2016-10-06 15:31:06','2016-10-06 15:31:06'),(43,'e3.jpg',6,'2016-10-06 15:31:06','2016-10-06 15:31:06'),(44,'e4.jpg',6,'2016-10-06 15:31:06','2016-10-06 15:31:06'),(45,'e5.jpg',6,'2016-10-06 15:31:06','2016-10-06 15:31:06'),(46,'e6.jpg',6,'2016-10-06 15:31:06','2016-10-06 15:31:06'),(47,'e7.jpg',6,'2016-10-06 15:31:06','2016-10-06 15:31:06'),(48,'e8.jpg',6,'2016-10-06 15:31:06','2016-10-06 15:31:06'),(49,'e3.jpg',7,'2016-10-06 15:46:48','2016-10-06 15:46:48'),(50,'e4.jpg',7,'2016-10-06 15:46:48','2016-10-06 15:46:48'),(51,'e5.jpg',7,'2016-10-06 15:46:48','2016-10-06 15:46:48'),(52,'e6.jpg',7,'2016-10-06 15:46:48','2016-10-06 15:46:48'),(53,'e7.jpg',7,'2016-10-06 15:46:48','2016-10-06 15:46:48'),(54,'e1.jpg',8,'2016-10-06 15:49:08','2016-10-06 15:49:08'),(55,'e2.jpg',8,'2016-10-06 15:49:08','2016-10-06 15:49:08'),(56,'e3.jpg',8,'2016-10-06 15:49:08','2016-10-06 15:49:08'),(57,'e4.jpg',8,'2016-10-06 15:49:08','2016-10-06 15:49:08'),(58,'e5.jpg',8,'2016-10-06 15:49:08','2016-10-06 15:49:08'),(59,'e4.jpg',9,'2016-10-06 15:49:59','2016-10-06 15:49:59'),(60,'e5.jpg',9,'2016-10-06 15:49:59','2016-10-06 15:49:59'),(61,'e6.jpg',9,'2016-10-06 15:49:59','2016-10-06 15:49:59'),(62,'e7.jpg',9,'2016-10-06 15:49:59','2016-10-06 15:49:59'),(63,'e8.jpg',9,'2016-10-06 15:49:59','2016-10-06 15:49:59'),(64,'e9.jpg',9,'2016-10-06 15:49:59','2016-10-06 15:49:59'),(65,'e10.jpg',9,'2016-10-06 15:49:59','2016-10-06 15:49:59');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_portfolios_on_category_id` (`category_id`),
  KEY `index_portfolios_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_2abc71c887` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_e93840cd41` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160920004244'),('20160920020012'),('20160920020537'),('20160920021821'),('20160920103434'),('20160920113833'),('20160921014736'),('20160921030609'),('20160927222002'),('20160927222028'),('20160927222244'),('20161005114256'),('20161007054115'),('20161012072505'),('20161012145115'),('20161012145230');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sliders` (
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subcaption` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES ('2.jpg','Salvia vinyl gentrify small batch.','Microdosing cold-pressed bitters, single-origin coffee',5,'2016-10-31 01:36:24'),('3.jpg','Brooklyn letterpress you ','cornhole raw denim echo park activated charcoal you',6,'2016-10-31 01:36:24');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (2,'Kurt Hugo Scheneider','Marfa unicorn keytar coloring book vinyl put a bird','2016-10-07 12:45:43','2016-10-07 12:34:57','rinker_yeti_1.png','Director at Risktec Solutions Ltd'),(3,'Cill Nation','Organic cliche stumptown, live-edge venmo humblebrag chia art party single-origin','2016-10-07 12:46:32','2016-10-07 12:35:13','grey-hound.png','Managing Director of BPW Global'),(4,'Tiara Westlake','Man bun kickstarter ramps chartreuse fam microdosing','2016-10-07 12:47:04','2016-10-07 12:35:28','pinsirdribs.jpg','Kembang Desa'),(5,'Agatha Celsea','Before they sold out DIY authentic actually. Bitters try-hard lumbersexual, truffaut pickled readymade snackwave','2016-10-07 12:47:44','2016-10-31 06:40:06','eagle_of_zeus_sylviaritter_web_by_faith303-d9phqav.png','Asisten Rumah Tangga'),(6,'Paradigm Plays','Literally lyft tumeric etsy tumblr photo booth','2016-10-07 12:48:32','2016-10-07 12:36:14','flycycle-01.jpg','CEO Khapoo Group');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `remember_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_sent_at` datetime DEFAULT NULL,
  `avatar` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ruangide','ruangide@gmail.com','ruang','ide','$2a$10$quLboQwsi2GXxrBRSXRY2.1l74llXnIYKByHSTQd0bOU/OJsqLK8q','2016-09-20 05:01:25','2016-10-29 05:17:45',NULL,NULL,NULL,NULL),(2,'taanpermata','gedepramayu2@gmail.com','taan','permata','$2a$10$3Lr6rhEELl0Yy6Dk04LkM.rc8osHQXVp2PCucXvpds49nQgI/eK.W','2016-09-20 12:20:06','2016-09-20 12:46:11',NULL,NULL,'2016-09-20 12:39:56',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-01 11:35:35
