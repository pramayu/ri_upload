-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ruangide
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.12.04.1

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
INSERT INTO `categories` VALUES (1,'EVENT ORGANIZER','2016-10-06 17:43:42','2016-10-06 17:43:42'),(2,'CORPORATE GATHERING','2016-10-06 17:44:20','2016-10-06 17:44:20'),(3,'CREATIVE CONCEPT','2016-10-06 17:44:39','2016-10-06 17:44:39'),(4,'AUDIO VISUAL','2016-10-06 17:54:43','2016-10-06 17:54:43'),(5,'EVENT EQUIPMENT','2016-10-06 17:54:58','2016-10-06 17:54:58'),(6,'ADVERTISING','2016-10-06 17:55:18','2016-10-06 17:55:18'),(7,'3D DESIGN & GRAPHIC DESIGN','2016-10-06 17:55:37','2016-10-06 17:55:37');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (10,'Apycology','Pengenalan Product Baru A Mild','CIMG1992.JPG',NULL,'2016-11-02 08:55:58','2016-11-02 08:58:01',3,5,'apycology'),(11,'Outing Kalimas Mercy','Outbond Mercy Club','IMG_7042.JPG',NULL,'2016-11-02 09:08:43','2016-11-02 09:08:43',3,1,'outing-kalimas-mercy'),(12,'Reggae Diplomat Uyee','Aacara Reggae Diplomat','a.jpg',NULL,'2016-11-02 09:18:18','2016-11-02 09:18:18',3,3,'reggae-diplomat-uyee'),(13,'Blueband April 2015','Acara Demo Masak Blue Band','IMG_7136.JPG',NULL,'2016-11-02 09:23:07','2016-11-02 09:23:07',3,3,'blueband-april-2015'),(14,'Tora Bika','Acara Kopi Tora Bika','_DSC0379.JPG',NULL,'2016-11-02 09:30:46','2016-11-02 09:30:46',3,5,'tora-bika'),(15,'Pestival Jajanan Bangau','Acara Lestarikan Jajanan Nusantara','IMG_20150517_071145.jpg',NULL,'2016-11-02 09:35:24','2016-11-02 09:35:24',3,5,'pestival-jajanan-bangau'),(16,'Pestival Jajanan Bangau','Acara Lestarikan Jajanan Nusantara','IMG_20150517_071145.jpg',NULL,'2016-11-02 09:36:26','2016-11-02 09:36:26',3,5,'pestival-jajanan-bangau-363172d0-d28e-4985-8c56-163c22d72fea');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (66,'CIMG1924.JPG',10,'2016-11-02 08:55:58','2016-11-02 08:55:58'),(67,'CIMG1926.JPG',10,'2016-11-02 08:55:58','2016-11-02 08:55:58'),(68,'CIMG1932.JPG',10,'2016-11-02 08:55:58','2016-11-02 08:55:58'),(69,'CIMG1936.JPG',10,'2016-11-02 08:55:58','2016-11-02 08:55:58'),(70,'CIMG1946.JPG',10,'2016-11-02 08:55:58','2016-11-02 08:55:58'),(71,'CIMG1948.JPG',10,'2016-11-02 08:55:58','2016-11-02 08:55:58'),(72,'CIMG1951.JPG',10,'2016-11-02 08:55:58','2016-11-02 08:55:58'),(73,'CIMG1953.JPG',10,'2016-11-02 08:55:58','2016-11-02 08:55:58'),(74,'IMG_7033.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(75,'IMG_7052.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(76,'IMG_7057.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(77,'IMG_7133.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(78,'IMG_7134.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(79,'IMG_7436.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(80,'IMG_7442.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(81,'IMG_7444.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(82,'IMG_7540.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(83,'IMG_7579.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(84,'IMG_7635.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(85,'IMG_7636.JPG',11,'2016-11-02 09:08:43','2016-11-02 09:08:43'),(86,'IMG_2980.JPG',12,'2016-11-02 09:18:18','2016-11-02 09:18:18'),(87,'IMG_2982.JPG',12,'2016-11-02 09:18:18','2016-11-02 09:18:18'),(88,'IMG_2992.JPG',12,'2016-11-02 09:18:18','2016-11-02 09:18:18'),(89,'IMG_3028.JPG',12,'2016-11-02 09:18:18','2016-11-02 09:18:18'),(90,'IMG_3038.JPG',12,'2016-11-02 09:18:18','2016-11-02 09:18:18'),(91,'IMG_3046.JPG',12,'2016-11-02 09:18:18','2016-11-02 09:18:18'),(92,'IMG_3081.JPG',12,'2016-11-02 09:18:18','2016-11-02 09:18:18'),(93,'IMG_3086.JPG',12,'2016-11-02 09:18:18','2016-11-02 09:18:18'),(94,'IMG_7037.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(95,'IMG_7226.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(96,'IMG_7234.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(97,'IMG_7239.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(98,'IMG_7246.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(99,'IMG_7251.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(100,'IMG_7277.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(101,'IMG_7287.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(102,'IMG_7294.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(103,'IMG_7296.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(104,'IMG_7620.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(105,'IMG_7626.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(106,'IMG_7640.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(107,'IMG_7652.JPG',13,'2016-11-02 09:23:07','2016-11-02 09:23:07'),(108,'_DSC0136.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(109,'_DSC0183.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(110,'_DSC0221.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(111,'_DSC0263.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(112,'_DSC0275.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(113,'_DSC0278.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(114,'_DSC0289.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(115,'_DSC0339.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(116,'_DSC0341.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(117,'_DSC0383.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(118,'_DSC0408.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(119,'_DSC0441.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(120,'IMG_1630.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(121,'_DSC0501.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(122,'IMG_1664.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(123,'_DSC0528.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(124,'_DSC0601.JPG',14,'2016-11-02 09:30:46','2016-11-02 09:30:46'),(125,'IMG_20150517_171236.jpg',15,'2016-11-02 09:35:24','2016-11-02 09:35:24'),(126,'IMG_20150517_171657.jpg',15,'2016-11-02 09:35:24','2016-11-02 09:35:24'),(127,'IMG_20150517_071157.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26'),(128,'IMG_20150517_164826.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26'),(129,'IMG_20150517_164933.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26'),(130,'IMG_20150517_165034.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26'),(131,'IMG_20150517_171442.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26'),(132,'IMG_20150517_171643.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26'),(133,'IMG_20150517_172343.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26'),(134,'IMG_20150517_172402.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26'),(135,'IMG_20150517_172502.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26'),(136,'IMG_20150517_172517.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26'),(137,'IMG_20150517_172554.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26'),(138,'IMG_20150517_172921.jpg',16,'2016-11-02 09:36:26','2016-11-02 09:36:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES ('IMG_1336.JPG','Tak Pernah Libur Untuk Menghibur','',7,'2016-11-02 08:50:39'),('Picture_1086.jpg','Tak Pernah Libur Untuk Menghibur','',9,'2016-11-02 09:00:52'),('IMG_0800.JPG','Tak Pernah Libur Untuk Menghibur','',10,'2016-11-02 09:01:41'),('IMG_20150517_071145.jpg','Tak Pernah Libur Untuk Menghibur','',11,'2016-11-02 09:37:45');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (7,'Ras Muhammad','Saya merasa puas dengan servis yang diberikan Event Organizer Ruang Ide','2016-11-02 09:44:14','2016-11-02 09:44:14','raas.png','Musisi'),(8,'Marketik Tora Bika','Kerja team Ruang Ide solit, acara tora bika bisa berjalan meriah dan berkesan','2016-11-02 09:51:04','2016-11-02 09:51:04','_DSC0311.JPG','');
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
  `profile` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ruangis','ruangide@gmail.com','ruangd','ide','$2a$10$quLboQwsi2GXxrBRSXRY2.1l74llXnIYKByHSTQd0bOU/OJsqLK8q','2016-09-20 05:01:25','2016-11-02 08:42:49',NULL,NULL,NULL,'index.jpeg',NULL),(3,'ganda','gandaanggara.mr@gmail.com','ganda','anggara','$2a$10$g/TmYVxPx7acNbAWPyV96eKDlACwjwWx.PBdT4JYsW97uJbYSpWga','2016-11-02 07:53:42','2016-11-02 08:37:31',NULL,NULL,NULL,'as.jpg',1);
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

-- Dump completed on 2016-11-03  2:08:29
