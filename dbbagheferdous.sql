-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: dbbagheferdous
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add قیمت',7,'add_ticketprice'),(26,'Can change قیمت',7,'change_ticketprice'),(27,'Can delete قیمت',7,'delete_ticketprice'),(28,'Can view قیمت',7,'view_ticketprice'),(29,'Can add مکان',8,'add_place'),(30,'Can change مکان',8,'change_place'),(31,'Can delete مکان',8,'delete_place'),(32,'Can view مکان',8,'view_place'),(33,'Can add نوع بازدید کننده',9,'add_visitortype'),(34,'Can change نوع بازدید کننده',9,'change_visitortype'),(35,'Can delete نوع بازدید کننده',9,'delete_visitortype'),(36,'Can view نوع بازدید کننده',9,'view_visitortype'),(37,'Can add پیام',10,'add_message'),(38,'Can change پیام',10,'change_message'),(39,'Can delete پیام',10,'delete_message'),(40,'Can view پیام',10,'view_message'),(41,'Can add تصویر',11,'add_articlegallery'),(42,'Can change تصویر',11,'change_articlegallery'),(43,'Can delete تصویر',11,'delete_articlegallery'),(44,'Can view تصویر',11,'view_articlegallery'),(45,'Can add گروه مقاله',12,'add_articlegroup'),(46,'Can change گروه مقاله',12,'change_articlegroup'),(47,'Can delete گروه مقاله',12,'delete_articlegroup'),(48,'Can view گروه مقاله',12,'view_articlegroup'),(49,'Can add مقاله',13,'add_article'),(50,'Can change مقاله',13,'change_article'),(51,'Can delete مقاله',13,'delete_article'),(52,'Can view مقاله',13,'view_article'),(53,'Can add نویسنده',14,'add_author'),(54,'Can change نویسنده',14,'change_author'),(55,'Can delete نویسنده',14,'delete_author'),(56,'Can view نویسنده',14,'view_author'),(57,'Can add وضعیت',15,'add_workshopstatus'),(58,'Can change وضعیت',15,'change_workshopstatus'),(59,'Can delete وضعیت',15,'delete_workshopstatus'),(60,'Can view وضعیت',15,'view_workshopstatus'),(61,'Can add تصویر',16,'add_workshopgallery'),(62,'Can change تصویر',16,'change_workshopgallery'),(63,'Can delete تصویر',16,'delete_workshopgallery'),(64,'Can view تصویر',16,'view_workshopgallery'),(65,'Can add کارگاه',17,'add_workshop'),(66,'Can change کارگاه',17,'change_workshop'),(67,'Can delete کارگاه',17,'delete_workshop'),(68,'Can view کارگاه',17,'view_workshop'),(69,'Can add memory like',19,'add_memorylike'),(70,'Can change memory like',19,'change_memorylike'),(71,'Can delete memory like',19,'delete_memorylike'),(72,'Can view memory like',19,'view_memorylike'),(73,'Can add memory gallery',20,'add_memorygallery'),(74,'Can change memory gallery',20,'change_memorygallery'),(75,'Can delete memory gallery',20,'delete_memorygallery'),(76,'Can view memory gallery',20,'view_memorygallery'),(77,'Can add خاطره',18,'add_memory'),(78,'Can change خاطره',18,'change_memory'),(79,'Can delete خاطره',18,'delete_memory'),(80,'Can view خاطره',18,'view_memory');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$vJSSAsWnmYRNmGcZAFbmiN$gearRMfGbUSopg+N5vTC55ojAPUd8qYCqcwKPcwpcow=','2024-06-29 23:53:55.532637',1,'admin','','','',1,1,'2024-04-08 21:58:59.911946'),(7,'pbkdf2_sha256$720000$yIUiyglix5V2nqiESHQdz8$+UbzEFIneo7OIH/s2mBtSx87khfjKLd08tnQ1LCb03w=','2024-05-15 19:23:41.484745',0,'reza1234','رضا','احمدی','',0,1,'2024-05-09 13:42:02.478357'),(8,'pbkdf2_sha256$720000$bL3PptvbZxmqsh6MgJWeZe$t3yiQGu3syCWZiXnkwlgwVDQ9zAPYNclrB/LSk8sQVg=','2024-06-29 23:50:53.069580',0,'ali1234','علی','رضایی','',0,1,'2024-05-13 00:24:27.789190'),(9,'pbkdf2_sha256$720000$CZ7JvA9gtesM961D8c0joo$75GweFmr02HKlKHZIKtu2IZW+wmGES803IDV+v4iJ/8=','2024-05-15 19:04:48.849480',0,'ahmad1234','ahmad','شکبری','',0,1,'2024-05-13 00:28:52.946290'),(10,'pbkdf2_sha256$720000$uMtuTUWsyvErM8bpOTBrwH$XBWqxs5g6uAJpuFk6vEaiOjJsaclOxEOc4/afVqXTV4=','2024-05-13 00:39:50.127200',0,'zahra1234','زهرا','محمدی','',0,1,'2024-05-13 00:33:09.796714'),(11,'pbkdf2_sha256$720000$iRZRwcDzk6yUo8QUoUqRVU$StWIK/t4llFi9/mGa6uUQE5DEjqa3vBCjxTzEft2zXw=','2024-05-13 01:13:25.687730',0,'elham1234','الهام','فرهادی','',0,1,'2024-05-13 01:11:58.350692'),(12,'pbkdf2_sha256$720000$HzBLpxAGAjXhsRtpBtFIr3$nNMmdMYdqdilGAU0WSsTEMcG3nmeeZHcbyYO+wV5gOw=',NULL,0,'0915','رضا','رضایی','',0,1,'2024-10-28 06:40:24.660581');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-04-08 22:20:59.250952','1','عمومی',1,'[{\"added\": {}}]',9,1),(2,'2024-04-08 22:21:04.871361','2','گروهی',1,'[{\"added\": {}}]',9,1),(3,'2024-04-08 22:21:21.441789','3','خارجی',1,'[{\"added\": {}}]',9,1),(4,'2024-04-08 22:27:39.472287','2','موزه باغ فردوس',1,'[{\"added\": {}}]',8,1),(5,'2024-04-08 22:29:22.847678','1','موزه باغ فردوس	عمومی	موزه باغ فردوس',1,'[{\"added\": {}}]',7,1),(6,'2024-04-08 22:29:56.671084','1','موزه باغ فردوس	عمومی	موزه باغ فردوس',2,'[{\"changed\": {\"fields\": [\"\\u0628\\u0647\\u0627\\u06cc \\u0628\\u0644\\u06cc\\u0637\"]}}]',7,1),(7,'2024-04-08 22:30:07.216344','2','موزه باغ فردوس	گروهی	موزه باغ فردوس',1,'[{\"added\": {}}]',7,1),(8,'2024-04-08 22:30:14.807491','3','موزه باغ فردوس	خارجی	موزه باغ فردوس',1,'[{\"added\": {}}]',7,1),(9,'2024-04-10 12:47:51.720106','3','مکان آزمایشی1',1,'[{\"added\": {}}]',8,1),(10,'2024-04-10 20:50:59.335120','2','موزه باغ فردوس',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\"]}}]',8,1),(11,'2024-04-12 19:10:17.761263','3','مکان آزمایشی1',2,'[{\"changed\": {\"fields\": [\"\\u0633\\u0627\\u0639\\u062a \\u0628\\u0627\\u0632\\u062f\\u06cc\\u062f\"]}}]',8,1),(12,'2024-04-12 19:10:43.382829','2','موزه باغ فردوس',2,'[{\"changed\": {\"fields\": [\"\\u0631\\u0648\\u0632\\u0647\\u0627\\u06cc \\u0628\\u0627\\u0632\\u062f\\u06cc\\u062f\", \"\\u0633\\u0627\\u0639\\u062a \\u0628\\u0627\\u0632\\u062f\\u06cc\\u062f\"]}}]',8,1),(13,'2024-04-12 20:22:02.321214','4','مکان آزمایشی1	عمومی	مکان آزمایشی1',1,'[{\"added\": {}}]',7,1),(14,'2024-04-12 20:22:14.552367','5','مکان آزمایشی1	گروهی	مکان آزمایشی1',1,'[{\"added\": {}}]',7,1),(15,'2024-04-12 20:22:24.048277','6','مکان آزمایشی1	خارجی	مکان آزمایشی1',1,'[{\"added\": {}}]',7,1),(16,'2024-04-12 20:57:59.504103','3','مکان آزمایشی1',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u0648\\u0627\\u0646\\u06cc\\u0646 \\u0648 \\u0645\\u0642\\u0631\\u0631\\u0627\\u062a\"]}}]',8,1),(17,'2024-04-12 21:04:06.205230','3','مکان آزمایشی1',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u0648\\u0627\\u0646\\u06cc\\u0646 \\u0648 \\u0645\\u0642\\u0631\\u0631\\u0627\\u062a\"]}}]',8,1),(18,'2024-04-12 21:05:17.249663','3','مکان آزمایشی1',2,'[]',8,1),(19,'2024-04-12 23:42:26.765217','2','موزه باغ فردوس',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u0648\\u0627\\u0646\\u06cc\\u0646 \\u0648 \\u0645\\u0642\\u0631\\u0631\\u0627\\u062a\"]}}]',8,1),(20,'2024-04-12 23:44:05.262556','3','مکان آزمایشی1',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u0648\\u0627\\u0646\\u06cc\\u0646 \\u0648 \\u0645\\u0642\\u0631\\u0631\\u0627\\u062a\"]}}]',8,1),(21,'2024-04-12 23:44:48.858108','3','مکان آزمایشی1',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u0648\\u0627\\u0646\\u06cc\\u0646 \\u0648 \\u0645\\u0642\\u0631\\u0631\\u0627\\u062a\"]}}]',8,1),(22,'2024-04-12 23:47:58.732354','3','مکان آزمایشی1',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u0648\\u0627\\u0646\\u06cc\\u0646 \\u0648 \\u0645\\u0642\\u0631\\u0631\\u0627\\u062a\"]}}]',8,1),(23,'2024-04-12 23:48:38.168061','3','مکان آزمایشی1',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u0648\\u0627\\u0646\\u06cc\\u0646 \\u0648 \\u0645\\u0642\\u0631\\u0631\\u0627\\u062a\"]}}]',8,1),(24,'2024-04-12 23:49:44.411084','3','مکان آزمایشی1',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u0648\\u0627\\u0646\\u06cc\\u0646 \\u0648 \\u0645\\u0642\\u0631\\u0631\\u0627\\u062a\"]}}]',8,1),(25,'2024-04-12 23:50:16.002821','3','مکان آزمایشی1',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u0648\\u0627\\u0646\\u06cc\\u0646 \\u0648 \\u0645\\u0642\\u0631\\u0631\\u0627\\u062a\"]}}]',8,1),(26,'2024-04-12 23:51:07.882547','2','موزه باغ فردوس',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u0648\\u0627\\u0646\\u06cc\\u0646 \\u0648 \\u0645\\u0642\\u0631\\u0631\\u0627\\u062a\"]}}]',8,1),(27,'2024-04-12 23:52:51.159306','2','موزه باغ فردوس',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u0648\\u0627\\u0646\\u06cc\\u0646 \\u0648 \\u0645\\u0642\\u0631\\u0631\\u0627\\u062a\"]}}]',8,1),(28,'2024-05-01 14:32:20.209534','1','علمی',1,'[{\"added\": {}}]',12,1),(29,'2024-05-01 14:32:25.432194','2','آموزشی',1,'[{\"added\": {}}]',12,1),(30,'2024-05-01 14:33:35.188736','1','مریمزبرجد',1,'[{\"added\": {}}]',14,1),(31,'2024-05-01 14:34:55.643410','2','مهدیعباسی',1,'[{\"added\": {}}]',14,1),(32,'2024-05-01 14:35:51.931405','2','مهدیعباسی',2,'[]',14,1),(33,'2024-05-01 14:44:48.751238','1','عنوان مقاله',1,'[{\"added\": {}}]',13,1),(34,'2024-05-01 17:08:46.292709','1','a2.jpg',1,'[{\"added\": {}}]',11,1),(35,'2024-05-01 17:09:12.672834','2','a3.jpg',1,'[{\"added\": {}}]',11,1),(36,'2024-05-01 17:09:40.233253','3','a4.jpg',1,'[{\"added\": {}}]',11,1),(37,'2024-05-01 18:29:49.493869','2','عنوان مقاله2',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u06cc\\u0633\\u0646\\u062f\\u0647 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',13,1),(38,'2024-05-01 18:36:28.734036','1','1عنوان مقاله',2,'[{\"changed\": {\"fields\": [\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',13,1),(39,'2024-05-01 18:38:07.846253','4','b.jpg',1,'[{\"added\": {}}]',11,1),(40,'2024-05-01 22:48:12.560632','2','عنوان مقاله2',2,'[{\"changed\": {\"fields\": [\"\\u06af\\u0631\\u0648\\u0647 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',13,1),(41,'2024-05-01 22:49:03.059331','1','عنوان مقاله 1',2,'[{\"changed\": {\"fields\": [\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',13,1),(42,'2024-05-01 22:58:09.149669','4','1.jpg',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u062a\\u0635\\u0648\\u06cc\\u0631\"]}}]',11,1),(43,'2024-05-01 22:58:39.422306','2','عنوان مقاله2',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\\u0627\\u0635\\u0644\\u06cc \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',13,1),(44,'2024-05-01 22:58:46.822573','1','عنوان مقاله 1',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\\u0627\\u0635\\u0644\\u06cc \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',13,1),(45,'2024-05-02 15:51:10.939251','3','عنوان مقاله3',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u06cc\\u0633\\u0646\\u062f\\u0647 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',13,1),(46,'2024-05-03 17:20:06.217938','1','کارگاه 1',1,'[{\"added\": {}}]',17,1),(47,'2024-05-03 17:24:11.480263','1','کارگاه 1',1,'[{\"added\": {}}]',16,1),(48,'2024-05-03 22:01:57.685566','1','کارگاه 1',2,'[]',17,1),(49,'2024-05-03 22:03:35.275655','1','کارگاه 1',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\"]}}]',16,1),(50,'2024-05-05 09:12:44.692147','2','کارگاه 1',1,'[{\"added\": {}}]',16,1),(51,'2024-05-05 09:12:51.724649','3','کارگاه 2',1,'[{\"added\": {}}]',16,1),(52,'2024-05-05 09:13:11.745843','4','کارگاه 2',1,'[{\"added\": {}}]',16,1),(53,'2024-05-05 09:13:23.668217','5','کارگاه 3',1,'[{\"added\": {}}]',16,1),(54,'2024-05-05 09:13:30.252005','6','کارگاه 3',1,'[{\"added\": {}}]',16,1),(55,'2024-05-05 09:13:38.730582','7','کارگاه 3',1,'[{\"added\": {}}]',16,1),(56,'2024-05-05 09:13:44.941609','8','کارگاه 4',1,'[{\"added\": {}}]',16,1),(57,'2024-05-05 09:13:51.251573','9','کارگاه 4',1,'[{\"added\": {}}]',16,1),(58,'2024-05-05 09:13:58.668828','10','کارگاه 5',1,'[{\"added\": {}}]',16,1),(59,'2024-05-05 09:14:04.436139','11','کارگاه 5',1,'[{\"added\": {}}]',16,1),(60,'2024-05-05 09:14:11.691499','12','کارگاه 5',1,'[{\"added\": {}}]',16,1),(61,'2024-05-05 09:22:46.205395','5','کارگاه 5',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\\u0627\\u0635\\u0644\\u06cc\"]}}]',17,1),(62,'2024-05-05 09:23:22.319296','1','کارگاه 1',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\\u0627\\u0635\\u0644\\u06cc\"]}}]',17,1),(63,'2024-05-05 09:23:31.301551','2','کارگاه 2',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\\u0627\\u0635\\u0644\\u06cc\"]}}]',17,1),(64,'2024-05-05 09:23:40.065944','3','کارگاه 3',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\\u0627\\u0635\\u0644\\u06cc\", \"\\u0645\\u06a9\\u0627\\u0646 \\u0628\\u0631\\u06af\\u0632\\u0627\\u0631\\u06cc\"]}}]',17,1),(65,'2024-05-05 09:23:49.676797','4','کارگاه 4',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\\u0627\\u0635\\u0644\\u06cc\", \"\\u0645\\u06a9\\u0627\\u0646 \\u0628\\u0631\\u06af\\u0632\\u0627\\u0631\\u06cc\"]}}]',17,1),(66,'2024-05-05 09:23:58.873914','5','کارگاه 5',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\\u0627\\u0635\\u0644\\u06cc\"]}}]',17,1),(67,'2024-05-05 09:31:18.598649','3','کارگاه 3',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\\u0627\\u0635\\u0644\\u06cc\"]}}]',17,1),(68,'2024-05-05 12:47:47.036630','5','1.webp',1,'[{\"added\": {}}]',11,1),(69,'2024-05-05 12:47:56.065854','6','2.webp',1,'[{\"added\": {}}]',11,1),(70,'2024-05-05 12:48:06.400243','7','3.webp',1,'[{\"added\": {}}]',11,1),(71,'2024-05-05 12:48:16.535761','8','4.webp',1,'[{\"added\": {}}]',11,1),(72,'2024-05-05 12:48:25.053312','9','5.webp',1,'[{\"added\": {}}]',11,1),(73,'2024-05-05 12:48:33.273055','10','6.webp',1,'[{\"added\": {}}]',11,1),(74,'2024-05-05 12:48:41.537768','11','7.webp',1,'[{\"added\": {}}]',11,1),(75,'2024-05-05 12:48:50.475051','12','8.webp',1,'[{\"added\": {}}]',11,1),(76,'2024-05-08 14:36:26.814383','3','عنوان مقاله3',2,'[{\"changed\": {\"fields\": [\"\\u06a9\\u0644\\u0645\\u0627\\u062a \\u06a9\\u0644\\u06cc\\u062f\\u06cc \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',13,1),(77,'2024-05-08 14:36:34.377537','2','عنوان مقاله2',2,'[{\"changed\": {\"fields\": [\"\\u06a9\\u0644\\u0645\\u0627\\u062a \\u06a9\\u0644\\u06cc\\u062f\\u06cc \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',13,1),(78,'2024-05-08 14:36:41.046263','1','عنوان مقاله 1',2,'[{\"changed\": {\"fields\": [\"\\u06a9\\u0644\\u0645\\u0627\\u062a \\u06a9\\u0644\\u06cc\\u062f\\u06cc \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',13,1),(79,'2024-05-13 11:58:46.097078','1','اولین خاطره من',1,'[{\"added\": {}}]',18,1),(80,'2024-05-13 11:59:40.239386','2','دومین خاطره من',1,'[{\"added\": {}}]',18,1),(81,'2024-05-13 12:00:08.606720','1','اولین خاطره من',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062a\\u0646 \\u062e\\u0627\\u0637\\u0631\\u0647\"]}}]',18,1),(82,'2024-05-13 12:12:25.172317','1','اولین خاطره من',2,'[{\"changed\": {\"fields\": [\"Is active\"]}}]',18,1),(83,'2024-05-13 14:14:58.379016','1','اولین خاطره من',1,'[{\"added\": {}}]',18,1),(84,'2024-05-13 14:15:20.316960','2','دومین خاطره من',1,'[{\"added\": {}}]',18,1),(85,'2024-05-13 14:23:10.809507','2','دومین خاطره من',2,'[{\"changed\": {\"fields\": [\"Is active\"]}}]',18,1),(86,'2024-05-13 21:59:12.103351','38','اولین خاطره من',2,'[{\"changed\": {\"fields\": [\"Is active\"]}}]',18,1),(87,'2024-05-13 23:24:10.221165','43','دومین خاطره من',2,'[{\"changed\": {\"fields\": [\"Is active\"]}}]',18,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(13,'articles','article'),(11,'articles','articlegallery'),(12,'articles','articlegroup'),(14,'articles','author'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(18,'memories','memory'),(20,'memories','memorygallery'),(19,'memories','memorylike'),(10,'places','message'),(8,'places','place'),(7,'places','ticketprice'),(9,'places','visitortype'),(6,'sessions','session'),(17,'workshops','workshop'),(16,'workshops','workshopgallery'),(15,'workshops','workshopstatus');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-21 23:05:45.718589'),(2,'auth','0001_initial','2024-03-21 23:05:46.424138'),(3,'admin','0001_initial','2024-03-21 23:05:46.598027'),(4,'admin','0002_logentry_remove_auto_add','2024-03-21 23:05:46.609021'),(5,'admin','0003_logentry_add_action_flag_choices','2024-03-21 23:05:46.621013'),(6,'contenttypes','0002_remove_content_type_name','2024-03-21 23:05:46.727944'),(7,'auth','0002_alter_permission_name_max_length','2024-03-21 23:05:46.808892'),(8,'auth','0003_alter_user_email_max_length','2024-03-21 23:05:46.845869'),(9,'auth','0004_alter_user_username_opts','2024-03-21 23:05:46.859860'),(10,'auth','0005_alter_user_last_login_null','2024-03-21 23:05:46.942806'),(11,'auth','0006_require_contenttypes_0002','2024-03-21 23:05:46.944805'),(12,'auth','0007_alter_validators_add_error_messages','2024-03-21 23:05:46.953800'),(13,'auth','0008_alter_user_username_max_length','2024-03-21 23:05:47.042743'),(14,'auth','0009_alter_user_last_name_max_length','2024-03-21 23:05:47.130686'),(15,'auth','0010_alter_group_name_max_length','2024-03-21 23:05:47.158668'),(16,'auth','0011_update_proxy_permissions','2024-03-21 23:05:47.168664'),(17,'auth','0012_alter_user_first_name_max_length','2024-03-21 23:05:47.266602'),(18,'sessions','0001_initial','2024-03-21 23:05:47.313570'),(19,'places','0001_initial','2024-04-08 21:54:18.602310'),(20,'places','0002_message_rename_place_name_place_place_name','2024-04-13 00:26:32.312795'),(21,'articles','0001_initial','2024-05-01 11:37:16.384720'),(22,'articles','0002_remove_article_author_article_author','2024-05-01 12:37:04.771675'),(23,'workshops','0001_initial','2024-05-03 16:41:52.676730'),(24,'workshops','0002_rename_status_workshop_status_id','2024-05-05 11:03:59.943903'),(25,'workshops','0003_rename_status_id_workshop_status','2024-05-08 18:56:16.194135'),(28,'memories','0001_initial','2024-05-13 19:21:44.641579');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0tsjzxbgey5m914evu243b76pey225kr','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1s7HG6:SyYvwrKvCV_OmqWIRNRA1mkcxiWp7sKulzBMvZyREkM','2024-05-29 19:43:38.420808'),('20f1v0t2o5nowl7hcyalcldjm1riv4jn','.eJxVjEEOwiAQRe_C2hCgUgaX7nsGMsyAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERTpx-t4j0SHUHfMd6a5JaXZc5yl2RB-1yapye18P9OyjYy7fOxiSNWbG1hh1oD4OzmQ2QHfWIcUigoud0JozkicE55QCUByJWqMX7A-iLOBU:1s6tOs:yOgkHnfnCI9BwDQrBpoKcPz4OVLGE2FpyijAbCIiJlg','2024-05-28 18:15:06.180778'),('334bz7cvth5l23r0xkk94slp535t0ehx','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1s9Wv2:GUk2_QWRNHcN14SstJug5nOAItNMxDGViSkLAwCDa2Y','2024-06-05 00:51:12.088056'),('3lzjxdxa2vf3gj5sp1otj8eerghgbihi','.eJxVjEEOwiAQRe_C2hCgUgaX7nsGMsyAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERTpx-t4j0SHUHfMd6a5JaXZc5yl2RB-1yapye18P9OyjYy7fOxiSNWbG1hh1oD4OzmQ2QHfWIcUigoud0JozkicE55QCUByJWqMX7A-iLOBU:1s6dli:ztONUcl1xZE5tl8674_IoCO5wEqdQ4w76WFSOTEJNlw','2024-05-28 01:33:38.481962'),('63ip0kqntsf8h5v2wc6ua2ym52swiofy','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1s26UT:zP5rn71ByzeIEh39ZKuhPCV1j1jLG9qaq5plLd1yoW4','2024-05-15 13:13:05.333371'),('6x7we1540n599v58rq9o6ebd1p4qy2jf','e30:1s6UBu:I0ucfPdzp-xJG96v_Vtq2C5vzUS-h6rhBGdZXNw1un8','2024-05-27 15:20:02.762450'),('7y8kl306puum8ioapv2ioaqxxchxiplw','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1rwlgM:KE9hC9Y1Di1lq2HEzG_PnhGniHKmxnUnz0a_DKVv8gY','2024-04-30 19:59:18.867458'),('arw3xpohz9hm7ds8md2poqp51nl7skim','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1rttk2:aEIfnJ4beq5oSUwFVic1D_k-VKEZQR-J2Q2dgq2UPL8','2024-04-22 21:59:14.198815'),('bwskybr82vzozzbhywyj7etw7wfqvpon','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1s7ZIQ:Q5bd5EVM1mUjyaDAEnliDU3VMeJVAYrTY8Lj1y2l4vw','2024-05-30 14:59:14.628014'),('cdtcrhtwam5bq195o631vtsmw7kl8m7z','.eJxVjEEOwiAQRe_C2hCgUgaX7nsGMsyAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERTpx-t4j0SHUHfMd6a5JaXZc5yl2RB-1yapye18P9OyjYy7fOxiSNWbG1hh1oD4OzmQ2QHfWIcUigoud0JozkicE55QCUByJWqMX7A-iLOBU:1s6G0Q:WbGguQ61tL7o_8r-5ctTu9_ApRZ4FKyVIvzcJYb4RJk','2024-05-27 00:11:14.461513'),('ei4kt11rp53n4tc5k0qo45a6liqrb0oi','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1ruTzk:WJaUWp2MJYiwSkM-E-vqbeh8luGg826wq8kWQyipyoU','2024-04-24 12:41:52.084981'),('p80b7ey6u3j0xmj1ecejbmd6hps046qa','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1rvEK3:OCA3FV3vIbvycTCpTTQ8W6UvN7MEl3ikY5Adudv-nKc','2024-04-26 14:09:55.771641'),('ppvy84lovg1ohzndln1lt6hzpvmt2kmx','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1s2A9f:RjLMmkx2JPGK1dUTtJjpzuJfaQRGetOlJ0OxUjitRCw','2024-05-15 17:07:51.996750'),('qydexis1woh79evur2di7vz767v3x6q4','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1rvJ0G:R5aaAYNqEMDP_pnqtUnikz8zB8ubv8q-Ng7O660Vtxs','2024-04-26 19:09:48.491037'),('ryr95c6qigmpoxkd28h9rvcl2nia1rq5','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1sNebz:GjlDPhwpV5Vo7aNCH4kwaB4GnJSYHy3X3RTKj_5-GCs','2024-07-13 23:53:55.535635'),('u77oidhwo6e3p7r3wpa9n9eqb3jnkhja','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1s3XyK:uJSIoT_sYlL0z44zMiaF4dwHzHWkay93YF_fpApFk8Y','2024-05-19 12:45:52.552858'),('wn0l8axr6vcpu4iugmito85eovc715fk','.eJxVjMsOwiAUBf-FtSFQKg-X7vsN5D5AqgaS0q6M_65NutDtmZnzEhG2tcStpyXOLC5Ci9PvhkCPVHfAd6i3JqnVdZlR7oo8aJdT4_S8Hu7fQYFevrUa0aIma_VoODvn0VDWZgiENih7Bkc8Zg9kvGVyLmhILiMZlbwZWIn3B99cOAU:1rwgBd:6othJOTjQc86_cuRW3KC3JgunRHq84KmWJrEzsb8jyc','2024-04-30 14:07:13.603166');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memories_memory`
--

DROP TABLE IF EXISTS `memories_memory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memories_memory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `memory_title` varchar(200) NOT NULL,
  `memory_text` longtext NOT NULL,
  `register_date` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `user_registered_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `memories_memory_user_registered_id_25b37f3f_fk_auth_user_id` (`user_registered_id`),
  CONSTRAINT `memories_memory_user_registered_id_25b37f3f_fk_auth_user_id` FOREIGN KEY (`user_registered_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memories_memory`
--

LOCK TABLES `memories_memory` WRITE;
/*!40000 ALTER TABLE `memories_memory` DISABLE KEYS */;
INSERT INTO `memories_memory` VALUES (42,'اولین خاطره من',' خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود خیلی زیبا بود ','2024-05-13 22:50:36.434503',1,1),(43,'دومین خاطره من','دومین خاطره من دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من  دومین خاطره من','2024-05-13 23:23:53.000000',1,1),(44,'اولین خاطره من','gbfcgf','2024-06-29 23:56:05.054623',0,1);
/*!40000 ALTER TABLE `memories_memory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memories_memorygallery`
--

DROP TABLE IF EXISTS `memories_memorygallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memories_memorygallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `memory_image_name` varchar(100) NOT NULL,
  `memory_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `memories_memorygallery_memory_id_b3f52fc4_fk_memories_memory_id` (`memory_id`),
  CONSTRAINT `memories_memorygallery_memory_id_b3f52fc4_fk_memories_memory_id` FOREIGN KEY (`memory_id`) REFERENCES `memories_memory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memories_memorygallery`
--

LOCK TABLES `memories_memorygallery` WRITE;
/*!40000 ALTER TABLE `memories_memorygallery` DISABLE KEYS */;
INSERT INTO `memories_memorygallery` VALUES (40,'images/memory/اولین خاطره من/gallary/8_3nVdnKk.jpg',42),(41,'images/memory/دومین خاطره من/gallary/8_3nVdnKk.jpg',43),(42,'images/memory/دومین خاطره من/gallary/1_lJoE7fv.jpg',43),(43,'images/memory/اولین خاطره من/gallary/1.webp',44);
/*!40000 ALTER TABLE `memories_memorygallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memories_memorylike`
--

DROP TABLE IF EXISTS `memories_memorylike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memories_memorylike` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `memory_id` bigint DEFAULT NULL,
  `user_liked_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `memories_memorylike_memory_id_8d8657b1_fk_memories_memory_id` (`memory_id`),
  KEY `memories_memorylike_user_liked_id_6471e9bd_fk_auth_user_id` (`user_liked_id`),
  CONSTRAINT `memories_memorylike_memory_id_8d8657b1_fk_memories_memory_id` FOREIGN KEY (`memory_id`) REFERENCES `memories_memory` (`id`),
  CONSTRAINT `memories_memorylike_user_liked_id_6471e9bd_fk_auth_user_id` FOREIGN KEY (`user_liked_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memories_memorylike`
--

LOCK TABLES `memories_memorylike` WRITE;
/*!40000 ALTER TABLE `memories_memorylike` DISABLE KEYS */;
INSERT INTO `memories_memorylike` VALUES (7,43,1),(8,42,1),(9,43,9),(10,42,9),(11,42,7),(12,43,7);
/*!40000 ALTER TABLE `memories_memorylike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_article_gallery`
--

DROP TABLE IF EXISTS `t_article_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_article_gallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_name` varchar(100) NOT NULL,
  `article_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_article_gallery_article_id_47bef62c_fk_t_articles_id` (`article_id`),
  CONSTRAINT `t_article_gallery_article_id_47bef62c_fk_t_articles_id` FOREIGN KEY (`article_id`) REFERENCES `t_articles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_article_gallery`
--

LOCK TABLES `t_article_gallery` WRITE;
/*!40000 ALTER TABLE `t_article_gallery` DISABLE KEYS */;
INSERT INTO `t_article_gallery` VALUES (1,'a2.jpg',1),(2,'a3.jpg',1),(3,'a4.jpg',1),(4,'1.jpg',2),(5,'1.webp',1),(6,'2.webp',1),(7,'3.webp',2),(8,'4.webp',2),(9,'5.webp',2),(10,'6.webp',3),(11,'7.webp',3),(12,'8.webp',3);
/*!40000 ALTER TABLE `t_article_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_article_groups`
--

DROP TABLE IF EXISTS `t_article_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_article_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_article_groups`
--

LOCK TABLES `t_article_groups` WRITE;
/*!40000 ALTER TABLE `t_article_groups` DISABLE KEYS */;
INSERT INTO `t_article_groups` VALUES (1,'علمی'),(2,'آموزشی');
/*!40000 ALTER TABLE `t_article_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_articles`
--

DROP TABLE IF EXISTS `t_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_articles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `short_text` longtext NOT NULL,
  `text` longtext NOT NULL,
  `key_words` varchar(200) NOT NULL,
  `register_date` date NOT NULL,
  `publish_date` date NOT NULL,
  `update_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `pdf_file_name` varchar(200) NOT NULL,
  `view_number` smallint unsigned NOT NULL,
  `slug` varchar(200) NOT NULL,
  `group_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_articles_group_id_7496233b_fk_t_article_groups_id` (`group_id`),
  KEY `t_articles_slug_ff53e5d7` (`slug`),
  CONSTRAINT `t_articles_group_id_7496233b_fk_t_article_groups_id` FOREIGN KEY (`group_id`) REFERENCES `t_article_groups` (`id`),
  CONSTRAINT `t_articles_chk_1` CHECK ((`view_number` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_articles`
--

LOCK TABLES `t_articles` WRITE;
/*!40000 ALTER TABLE `t_articles` DISABLE KEYS */;
INSERT INTO `t_articles` VALUES (1,'عنوان مقاله 1','1.jpg','متن خلاصه مقاله    متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله','متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله','پایتون - آموزش','2024-05-01','2024-05-01','2024-05-13',1,'file.pdf',28,'test-title1',2),(2,'عنوان مقاله2','2.jpg','متن خلاصه مقاله    متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله','متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله','پایتون - آموزش','2024-05-01','2024-05-01','2024-05-15',1,'file.pdf',58,'test-title2',1),(3,'عنوان مقاله3','3.png','متن خلاصه مقاله    متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خلاصه مقاله  متن خل...','متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله متن مقاله م...','پایتون - آموزش','2024-05-01','2024-05-01','2024-05-13',1,'file.pdf',68,'test-title3',1);
/*!40000 ALTER TABLE `t_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_articles_author`
--

DROP TABLE IF EXISTS `t_articles_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_articles_author` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `article_id` bigint NOT NULL,
  `author_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_articles_author_article_id_author_id_ef4ffb4e_uniq` (`article_id`,`author_id`),
  KEY `t_articles_author_author_id_14b30c35_fk_t_authors_id` (`author_id`),
  CONSTRAINT `t_articles_author_article_id_c2da19c3_fk_t_articles_id` FOREIGN KEY (`article_id`) REFERENCES `t_articles` (`id`),
  CONSTRAINT `t_articles_author_author_id_14b30c35_fk_t_authors_id` FOREIGN KEY (`author_id`) REFERENCES `t_authors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_articles_author`
--

LOCK TABLES `t_articles_author` WRITE;
/*!40000 ALTER TABLE `t_articles_author` DISABLE KEYS */;
INSERT INTO `t_articles_author` VALUES (1,1,1),(2,1,2),(3,2,2),(4,3,1);
/*!40000 ALTER TABLE `t_articles_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_authors`
--

DROP TABLE IF EXISTS `t_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_authors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `family` varchar(20) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `slug` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_authors_slug_91a05435` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_authors`
--

LOCK TABLES `t_authors` WRITE;
/*!40000 ALTER TABLE `t_authors` DISABLE KEYS */;
INSERT INTO `t_authors` VALUES (1,'مریم','زبرجد','maryam.zbr@gmail.com','09125454',1,'maryam-zebarjad'),(2,'مهدی','عباسی','mehdi@yahoo.com','09128888',1,'mehdi-abbasi');
/*!40000 ALTER TABLE `t_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_message`
--

DROP TABLE IF EXISTS `t_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(60) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  `register_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message`
--

LOCK TABLES `t_message` WRITE;
/*!40000 ALTER TABLE `t_message` DISABLE KEYS */;
INSERT INTO `t_message` VALUES (1,'مریم زبرجد','maryam.zbr@gmail.com','تشکر','خیلی ممنون از شما',0,'2024-04-13 01:20:36.838252'),(18,'مریم زبرجد','maryam.zbr@gmail.com','تشکر','تشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکرتشکر',0,'2024-10-28 06:42:20.541264');
/*!40000 ALTER TABLE `t_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_places`
--

DROP TABLE IF EXISTS `t_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_places` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) NOT NULL,
  `information` longtext NOT NULL,
  `place_image_name` varchar(100) NOT NULL,
  `visiting_day` varchar(100) NOT NULL,
  `visiting_hour` varchar(100) NOT NULL,
  `rules` longtext NOT NULL,
  `register_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_places`
--

LOCK TABLES `t_places` WRITE;
/*!40000 ALTER TABLE `t_places` DISABLE KEYS */;
INSERT INTO `t_places` VALUES (2,'موزه باغ فردوس','موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس','images/places/1_lJoE7fv.jpg','روزهای فرد','18 - 9','<p style=\"color:blue\";>\r\nقوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین   قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین قوانین ن قوانین قوانین قوانین\r\n</p>','2024-04-08 22:26:46.000000'),(3,'مکان آزمایشی1','توضیحات توضیحات توضیحات توضیحات توضیحات توضیحات توضیحات توضیحات توضیحات توضیحات توضیحات توضیحات','images/places/8_3nVdnKk.jpg','شنبه - پنجشنبه','18 - 9','<p style=\"color:blue\";>\r\nقوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین \r\nقوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات \r\nقوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات \r\nقوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات قوانین و مقررات \r\n</p>','2024-04-10 12:41:55.000000');
/*!40000 ALTER TABLE `t_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ticket_prices`
--

DROP TABLE IF EXISTS `t_ticket_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_ticket_prices` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL,
  `place_id` bigint NOT NULL,
  `visitor_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_ticket_prices_place_id_952babc1_fk_t_Places_id` (`place_id`),
  KEY `t_ticket_prices_visitor_type_id_e563e188_fk_t_visitor-type_id` (`visitor_type_id`),
  CONSTRAINT `t_ticket_prices_place_id_952babc1_fk_t_Places_id` FOREIGN KEY (`place_id`) REFERENCES `t_places` (`id`),
  CONSTRAINT `t_ticket_prices_visitor_type_id_e563e188_fk_t_visitor-type_id` FOREIGN KEY (`visitor_type_id`) REFERENCES `t_visitor-type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ticket_prices`
--

LOCK TABLES `t_ticket_prices` WRITE;
/*!40000 ALTER TABLE `t_ticket_prices` DISABLE KEYS */;
INSERT INTO `t_ticket_prices` VALUES (1,20000,2,1),(2,15000,2,2),(3,50000,2,3),(4,30000,3,1),(5,20000,3,2),(6,50000,3,3);
/*!40000 ALTER TABLE `t_ticket_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_visitor-type`
--

DROP TABLE IF EXISTS `t_visitor-type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_visitor-type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_visitor-type`
--

LOCK TABLES `t_visitor-type` WRITE;
/*!40000 ALTER TABLE `t_visitor-type` DISABLE KEYS */;
INSERT INTO `t_visitor-type` VALUES (1,'عمومی'),(2,'گروهی'),(3,'خارجی');
/*!40000 ALTER TABLE `t_visitor-type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_workshogallery`
--

DROP TABLE IF EXISTS `t_workshogallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_workshogallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `workshop_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_workshogallery_workshop_id_ae3c3266_fk_t_workshop_id` (`workshop_id`),
  CONSTRAINT `t_workshogallery_workshop_id_ae3c3266_fk_t_workshop_id` FOREIGN KEY (`workshop_id`) REFERENCES `t_workshop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_workshogallery`
--

LOCK TABLES `t_workshogallery` WRITE;
/*!40000 ALTER TABLE `t_workshogallery` DISABLE KEYS */;
INSERT INTO `t_workshogallery` VALUES (1,'images/workshops/report/1/1.webp',1),(2,'images/workshops/report/1/1_f1dZmrR.webp',1),(3,'images/workshops/report/2/2.webp',2),(4,'images/workshops/report/2/3.webp',2),(5,'images/workshops/report/3/4.webp',3),(6,'images/workshops/report/3/5.webp',3),(7,'images/workshops/report/3/6.webp',3),(8,'images/workshops/report/4/7.webp',4),(9,'images/workshops/report/4/8.webp',4),(10,'images/workshops/report/5/2.webp',5),(11,'images/workshops/report/5/8.webp',5),(12,'images/workshops/report/5/4.webp',5);
/*!40000 ALTER TABLE `t_workshogallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_workshop`
--

DROP TABLE IF EXISTS `t_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_workshop` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `place` varchar(50) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `information` longtext NOT NULL,
  `registration` longtext NOT NULL,
  `report_text` longtext,
  `view_number` int NOT NULL,
  `register_date` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_workshop_status_id_5af160b8_fk_t_workshopstatus_status_code` (`status_id`),
  CONSTRAINT `t_workshop_status_id_5af160b8_fk_t_workshopstatus_status_code` FOREIGN KEY (`status_id`) REFERENCES `t_workshopstatus` (`status_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_workshop`
--

LOCK TABLES `t_workshop` WRITE;
/*!40000 ALTER TABLE `t_workshop` DISABLE KEYS */;
INSERT INTO `t_workshop` VALUES (1,'اولین کارگاه','images/workshops/3.webp','2024-05-03 13:48:16.000000','مکان برگزاری1','مدر س1','اطلاعات1','شرایط ثبت نام1','1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش',41,'2024-05-03 17:17:56.000000',1,3),(2,'دومین کارگاه','images/workshops/1.webp','2024-05-03 13:48:16.000000','مکان برگزاری2','مدر س2','اطلاعات2','شرایط ثبت نام2','1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش',10,'2024-05-03 17:17:56.000000',1,3),(3,'سومین کارگاه','images/workshops/6.webp','2024-05-03 13:48:16.000000','مکان برگزاری 3','مدر س3','اطلاعات3','شرایط ثبت نام3','1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش',14,'2024-05-03 17:17:56.000000',0,2),(4,'چهارمین کارگاه','images/workshops/5_tf2ovKH.webp','2024-05-03 13:48:16.000000','مکان برگزاری 4','مدر س4','اطلاعات4','شرایط ثبت نام4','1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش',11,'2024-05-03 17:17:56.000000',1,3),(5,'پنجمین کارگاه','images/workshops/7.webp','2024-05-03 13:48:16.000000','مکان برگزاری 5','مدر س5','اطلاعات5','شرایط ثبت نام5','1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش 1متن گزارش',10,'2024-05-03 17:17:56.000000',0,1);
/*!40000 ALTER TABLE `t_workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_workshopstatus`
--

DROP TABLE IF EXISTS `t_workshopstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_workshopstatus` (
  `status_code` int NOT NULL,
  `status_title` varchar(50) NOT NULL,
  PRIMARY KEY (`status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_workshopstatus`
--

LOCK TABLES `t_workshopstatus` WRITE;
/*!40000 ALTER TABLE `t_workshopstatus` DISABLE KEYS */;
INSERT INTO `t_workshopstatus` VALUES (1,'درحال ثبت نام'),(2,'در حال برگزاری'),(3,'خاتمه یافته');
/*!40000 ALTER TABLE `t_workshopstatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28  6:45:26
