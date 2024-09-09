-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: localhost    Database: cheque
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheque_categories`
--

DROP TABLE IF EXISTS `cheque_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cheque_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `manual_cheque_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `laser_cheque_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chequeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheque_categories`
--

LOCK TABLES `cheque_categories` WRITE;
/*!40000 ALTER TABLE `cheque_categories` DISABLE KEYS */;
INSERT INTO `cheque_categories` VALUES (1,'1','0','1-Per Page','48.00','1-per-page-manual-cheque.jpg','2024-09-04 09:18:16','2024-09-04 09:18:16'),(2,'1','0','2-Per Page','69.00','manual-cheques-two-per-page.png','2024-09-04 09:20:49','2024-09-04 09:20:49'),(4,'0','1','Laser Cheques / Computer Cheques on top','48.00','economical-top.jpg','2024-09-04 09:22:19','2024-09-04 09:22:19'),(5,'0','1','Premium High Security Foil Hologram Laser Cheques / Computer Cheques on top','69.00','premium-foil-eng.jpg','2024-09-04 09:22:19','2024-09-04 09:22:19'),(6,'0','3','2 Part Premium High Security Foil Hologram Cheque - 2 Copies','222.00','premium-foil-2-part-english.jpg','2024-09-04 09:22:19','2024-09-04 09:22:19');
/*!40000 ALTER TABLE `cheque_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suburb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buzzer_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Pravin','Pimpale','9552344220','qq','At Dhorvi','Pravin','qq','Lonavala','443202','BC','246','pravinpimpale45@gmail.com','1','2024-09-05 05:43:01','2024-09-05 05:43:01'),(3,'krishna','abc','32456432','dfadv','dvxzcv','dxcxzc','szXSZx','Lonavala','443202','MB','India','abc@gmail.com','1','2024-09-05 11:59:55','2024-09-05 11:59:55'),(4,'krishna','savale','9552344222','TCS','At Dhorvi','Pravin','szXSZx','Lonavala','443202','PE','India','krishnasavale@gmail.com','1','2024-09-06 10:46:43','2024-09-06 10:46:43');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laser_cheques`
--

DROP TABLE IF EXISTS `laser_cheques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laser_cheques` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `categoriesName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laser_cheques`
--

LOCK TABLES `laser_cheques` WRITE;
/*!40000 ALTER TABLE `laser_cheques` DISABLE KEYS */;
INSERT INTO `laser_cheques` VALUES (1,'Cheque On Top','premium-foil_01.jpg','2024-09-04 06:51:42','2024-09-04 06:51:42'),(2,'Cheque In Middle','middle-premium_Page_1.jpg','2024-09-04 06:52:15','2024-09-04 06:52:15'),(3,'Cheque On Bottom','premium-bottom-eng.jpg','2024-09-04 06:53:05','2024-09-04 06:53:05');
/*!40000 ALTER TABLE `laser_cheques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manual_cheques`
--

DROP TABLE IF EXISTS `manual_cheques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manual_cheques` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `categoriesName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manual_cheques`
--

LOCK TABLES `manual_cheques` WRITE;
/*!40000 ALTER TABLE `manual_cheques` DISABLE KEYS */;
INSERT INTO `manual_cheques` VALUES (1,'High Security Manual Cheques','manual_eng.jpg','2024-09-04 06:51:42','2024-09-04 06:51:42'),(2,'2 (carbon) Copy High Security Manual Cheques','manual_duplicate.jpg','2024-09-04 06:52:15','2024-09-04 06:52:15');
/*!40000 ALTER TABLE `manual_cheques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(6,'2024_09_04_063117_create_manual_cheques_table',1),(7,'2024_09_04_063138_create_laser_cheques_table',1),(12,'2024_09_04_073714_create_cheque_categories_table',2),(15,'2024_09_01_165014_create_customers_table',4),(19,'2024_09_01_164906_create_orders_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voided_cheque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transit_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_start_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_end_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_quantity` int DEFAULT NULL,
  `cheque_category_id` bigint unsigned DEFAULT NULL,
  `voided_cheque_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reorder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_customer_id_foreign` (`customer_id`),
  KEY `orders_cheque_category_id_foreign` (`cheque_category_id`),
  CONSTRAINT `orders_cheque_category_id_foreign` FOREIGN KEY (`cheque_category_id`) REFERENCES `cheque_categories` (`id`),
  CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,175,'Purple','asdasd','notVoidCheck','232','13123','123','123','123','123',1,1,NULL,'logos/Xe8hHRXnOGId7AflYwbc59rPyyBjHUwXlvuhbAvY.png','1','1-per-page-manual-cheque.jpg','pending','pending','1','2024-09-08 11:34:59','2024-09-08 11:34:59'),(2,1,65,'Purple','asdasd','notVoidCheck','232','13123','123','123','321','321',1,1,NULL,'logos/Xe8hHRXnOGId7AflYwbc59rPyyBjHUwXlvuhbAvY.png','1','1-per-page-manual-cheque.jpg','pending','pending','1','2024-09-08 12:02:09','2024-09-08 12:02:09'),(3,4,175,'Purple','wqdd','upload',NULL,'pravi','pravin',NULL,NULL,NULL,1,1,'uploads/hQtUHnSwHIy6AH50aZUiZGug5f8wnIiV9herl8F1.png','logos/MnjUU84ho9R19JGr0jj40RfmE5pZn7UlSMLnc6sL.png','1','1-per-page-manual-cheque.jpg','pending','pending','1','2024-09-08 12:51:05','2024-09-08 12:51:05'),(4,4,22,'Purple','sasdfc','upload','123','31232','1234',NULL,NULL,NULL,1,1,'public/uploads/ugiixPmIFxqAXF9XPlzP2gfzxyKdjEVvcdJ5Ut2r.pdf','public/logos/mtQXi6bqUCd3O6PvhOIMSK1gfoUkNldWvabHHEWh.svg','1','1-per-page-manual-cheque.jpg','pending','pending','1','2024-09-08 13:03:07','2024-09-08 13:03:07'),(5,4,22,'Purple','sasdfc','upload','123','31232','1234',NULL,NULL,NULL,1,1,'public/uploads/cJIbUQL4BV3c2OzvgDqgQY8UCG62y1YAZjvx7Fba.pdf','public/logos/komZGHGHzD8XOkiAXYUJSKxLCff26zIylgzvoV6S.svg','1','1-per-page-manual-cheque.jpg','pending','pending','1','2024-09-08 13:22:21','2024-09-08 13:22:21'),(6,4,65,'Purple','sasdfc','upload','123','31232','1234',NULL,'321','321',1,1,'public/uploads/cJIbUQL4BV3c2OzvgDqgQY8UCG62y1YAZjvx7Fba.pdf','public/logos/komZGHGHzD8XOkiAXYUJSKxLCff26zIylgzvoV6S.svg','1','1-per-page-manual-cheque.jpg','pending','pending','1','2024-09-08 13:22:44','2024-09-08 13:22:44'),(7,3,22,'Purple','wfdeasdfs','notVoidCheck','321','321','123','123','123','123',1,4,NULL,'public/logos/xI1h7SJ1zLHFD4nMDOLcqkkGP2q3w23HdQUFJTq7.png','1','economical-top.jpg','pending','pending','1','2024-09-08 13:24:50','2024-09-08 13:24:50'),(8,3,22,'Purple','wfdeasdfs','notVoidCheck','321','321','123','123','123','123',1,4,NULL,'public/logos/nf2IoicFa8EdrlHygMc7fUwSkQmiwkuLgHkQpoAX.png','1','economical-top.jpg','pending','pending','1','2024-09-08 13:24:55','2024-09-08 13:24:55'),(9,3,22,'Purple','wfdeasdfs','notVoidCheck','321','321','123','123','123','123',1,4,NULL,'public/logos/JAgOhNqPou8gEUFUpk6UbWnoFbUPZsq1RHpW1nAc.png','1','economical-top.jpg','pending','pending','1','2024-09-08 13:26:04','2024-09-08 13:26:04');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0AtFUwrwXx4WxMHg0BpelN0Oswpk3B13mCChxorp',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidE9WQXQweE1zcXhFUGJjMmNCWnlvMG1KUUpCTEZXSGozSHNhVmpDTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816223),('0d2DI24Y3Ypq8zDnfnoKseo6FbbsDQhzP2JBu9GC',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2ZTSHdXMnFJVmtEM01HbmtOcld5VFlVZEhJbkhqNkdHQlR1clQ5YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819491),('0d7BXUoiXerekOIhHYBiVfyQ5kqncI97uhfZw5w8',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1Vid1BPdXY4cUJIaTN6Vm8xM0hzeFRNV2Z5UFhwVEJBanU5Q3k5ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725815734),('0PX22Cy7nZfO0npCRWSI0wEOLg6BK3rmRPZDpNLK',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2RiYkpaemNJak92ZklEblk3azVSTkp0TFNQMWJwMjRYeVpSb1hFTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820095),('11m4Aq2dPWAprHnsUSi2L3Jcb3utEy3pow7QXxqv',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVE1lVzhJSGloMDlhOUVzQzZnczh2SWw1Tm5NR011RVJ3UlBzWEw2eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821289),('1FE2w0i5VBsCccmlWBsf9JUi8wb7cqqzZgoWxJGJ',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGJGMkxxbDlCZnVBalVtcGhSMk43ZVR0OThmQU40NjA2V2lBQXJtaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816701),('20DltlOF5lXIBazlYi7jof15Too3DFAdYzZbCGxX',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkdyZTlKR2ZQOUxKU05kSzlaMnhsazdJcDF5WjFwOHRJVjBjNWNlOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821076),('2dqSzdcw59d7gVePZ0GRtpBKJBFkU7EoaAGEFqrG',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSU1Mb0QxcEF1MTRuUENxc2k1d3JHZ1V0c3Q3aERWVUVvbVl3QW1YTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818304),('2kki6emnuIm7sLjimVExlZopjj4n0SHKMWdgKkXB',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmN5OGFsZzllYjFZZ3lFZllQMGZrZUdPUjRNcEtBVkFFRG5ETHVMRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821232),('3HS7odaxSYm3SMWPmWklGuAy1Pr7rx7kmSwzZQ2M',1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSHhqeVNyM0NnZ3pRMXVwVTVvTDdZdWJKaWtBWVVxWklFOFcyTnhzNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlci1oaXN0b3J5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9',1725822467),('3vDAsr2Ob8eo5V5HwuPnb4UreoQSbAxqAzXbI6Fn',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFR4eWg4Ykxlc0xWZnhBWkNTMWR1RTBnQUY5bXhLQ0E1bkFEWGQwUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819080),('3Y0xftfKc90JIPXIZ3ugbcZmL53U9gj5TrtQIB9x',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmt0VUF5aFRDR3JmQlBLVXFXSkpvU0FEdVUycFRhdkFsMDB2bWhmYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725815924),('40q11xYX5zlzFJhRCq5XwumkBuJ8C4CUQ72qgiFb',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibkw4WjFsclR1RWluMTBrNlNVWmtyZDZEdkg4bEEyd0hCcXl0TEdaZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818577),('438gtmRO53sSjApcH9KqBcxICCvTpfIqd5du0MWd',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiczF5MzViVVpiT0FaNnpKTkNGOHY2eWl4ZmIxMjBGUkM0YVU3MWpQeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821302),('4aLadFtY3OpcSZb8GSso2njFb10xFLNxLLJmeexA',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkVQdDg5ajZVZ2I4STlkTDlXQ3pBN1EzNnp0SUhBQncwRGZLRUwxNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822330),('4ExAVosrTZ4wHayrf75ULzrHmswpaPySamAen005',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoieGNTWjRuQ1dlYmN4REx3bFRiT1cwbW9DSUtTMmJVa1lybXQ0N1FQViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816943),('5bUkNAEcitwsWHhA6GpyLyjTbCzYEQe2eN3wdMzn',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWxmWVVHeUwwODA2am4zakw5cjNpY0hPeVJVek8wSFVsMXg0V0ZtSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816120),('5Jpp4S2byfNBQ8CByADgoVymNAds0QfwmVmFhGJE',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzhnbGQwcEh6MlMzc3lVYWtweWdxVk1hYVNjZ3Q5STNFbWl3b0xyUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816370),('5sCDyU5meB5bYhCb9kMddpP0Vn1CKhDi7p4OimaI',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVpvTmMwV0hQaVpmUTdqQjdIM0RVWXIyUmlzdTQ1aU90MjZncExMcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819197),('5XdQAEIm3jskIppKmd7ajBR9SjdcQBH8uUSMUAlt',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0hTVTlqRWNDQnlCenpQcGtialdMeEFLS0ViWjRtblIxMVFtMWJKUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821488),('6ETZ85l2U5IEUPNObe9kuPpDsKJfd6b6hLQHythx',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibGxKM3FKbVNCclNmWVlKVlh5dGU0UHV1ZkhrZGdNaHBLcGNMY05PeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822199),('6SbPXJreGD0C1CHLmDU9hMk0Xq1YMLsRCpxTjuP8',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOE9hVnBLOUNTNU1LSkVSaXRZak14ZGJnNFFPS1ZlYUtkcWRZZm5ZZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820774),('6V42S3XQUx3zEZnlm4ukbUJ4QwBL9vhPsedkD5pR',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2tuSG1GMWNTc084YUpCdGFlYXI0c3hqYzRLRzMwZFlLUENSeFV6OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819927),('72I0tivt7G5PC84TVINITdwdWviJVHU5I4AAnpJG',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZElOeXFZdlVTb3h5d3BucWg0VEZIbGV6dkhaYUl4c25ZaldQdGtCOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821216),('76lW3EBfXmZqrAgmUbIBA8xVa9lYc6c7cNrysQWZ',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXRXSGxrUnE4a3doV2w3Ukgwc0U0SUZPWU5zeWhNN3NhaXlPNzN2VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816250),('85MMKJCGLsaUixgCWVYVENhLILJHS3X5KIBvEhTp',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFJBMnRjVmE3UGxiSkJRWTRyNzJpVzgyd2I3M0pxNWFFalY5aW13QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821837),('9BOZCmRtb27eRmXLTf9IIbtGuhFB7WNNVgnTxU88',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVVNaVZFWlo0cUUybkV4Uk1TcFVENlhreDNzNkd2UXdPQ2tveXpONyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818887),('9E7IJq6jeiCfFYAugxTi5WnALH2jCuEpEgmW3aDz',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDZIN0JreHgwYTJSem1oMVlaSTIyZlNtTXVteHFPZ3RUck00TDhIZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725817612),('9hm0SApZbm56Hyd4LSHpZw9hgqyXNmaZ5whg3Rj1',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidXRjbEVmSktzMTMxdXM2bVhuSHRhUmtYV092WFJmQTRHa1lTSTFOayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818461),('aFu9DBhAlPilFIa9RPtztYONzBGCupofCc8TgDzj',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEgwTUhyYTRBcDVpeHRXNlVyWTF3TndvTVFFY3Z1ZXd6UUM5QXZNRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822208),('apbIlVEMJPiUCjfuiZHA3q31uirTHlVPLH72FEkP',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHhSdjYxblNiTklwNlk5Wmw2bXpLcWNweU8wNzBkVHNjc3RudXhHeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820157),('aQb7NLHKUjQ5VOSAyn02d2tGH4EFE0sPklbRTVRc',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoib05NRVZpT010ZjZFd05pMWZGTGtiVUhjcU1XaklqZmRiRzZVZ2xEaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822252),('AweWUZnJS7Yy0IqIl9qiAqRtuClEfwBgNTRzHmIo',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1lPQTRjT2t2UG4xUmlMTWhUZ3MzRjJ6dUZIUUxQUnJCYjFITU9SZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819175),('bIfgavmswHPkVCaA1zSJ6yt5bU2y79puHkvQF65L',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUprVVpIUHIyRG84WFJQN1JOd1BCZEIyM3RUZVB1bm5sYzFMc3ZNdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822089),('bMNl8ydzHKkih5KVNhPYaEoHFNDKkLZSSrU3yW8j',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoieVFURDFzTmszbURIM3owckNzQWtGYTBmd2RhVmQ4MXFDcVQ5ZWhvaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818511),('bPNkafBesgGSiOcADCPZNeVCBbQtLesWgzvV1K1r',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVlOU2pETTBwRkY3NnFZZ0hoOFBIUktJN0pTV2JEQldnUVZhcm5ZbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819821),('bYHdxyzguu5DpAbbsamKHTFO4UOrFfg2YHtDXsM5',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoieVhKdGZDeXFJYm5kQ0x1WXNHZ2tDRjRiOE1JMlMxSkRXdGNNSGM0YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819486),('C9JpRdz4OvsdG07lgmEClvVK0zWPfjWW4rwPluou',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoic21xMG1iWUdKV0dEN0xzamRjejJldExBeEtpcW93TTlURlZyblY2MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821119),('ceYX8AYntrdZX0A74QBpwocqBDfBpo4Q5Hd5Z5iA',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmtsZW1uQXVqMU1JVnVuazdsekJjQmJiN0taN2dBMTlxMUR4T0dmOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816374),('ckZ8Oy1zoA8Xq85bgea2DIRFQFNXvFrcyAvab3Ss',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjA5cFZ3RXpJb2tNTlM0U2VwdldaQnJVYzVtWmNkbWlha3NqaUJwSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725815286),('CLdbFR8zg2qTMxGV4dz8AdRvByZD4LUqLiKXNMdg',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmZrSDlyeVJBUndxbjV3QkhXYXkwaGlWUmpOS0ZrQ2pPZUowVnBMOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820924),('CnOun5fgxw3XFTrlUqdxkQ1hdZ9VoqvkrK2NizrB',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiREtUTzhVYWVtUHhsR1hxc0NQRzc1S09WZW9MSjZJOXV6VjNIaHY3eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819459),('cWGRsOLlhkK4L6JogyGRnscD1RbOAxRqMqGU63Ti',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicE5YRFU1NnJoTTFoQllBdWNlUjhFakRWemZOMWZaM2tCNmdodXJpTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819861),('Cz5ZYlHQrd6RYcXBbSToE6DY10tqUgx7pF46x34F',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibHdmZnJSc2lLS2tJUlNCNVpjbFNpZzJqTloxTnB0WEZKdFI0d2l6RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821267),('d71E395TGEzqOEFceEwTQKlIe7saZCtPBESpZBbu',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnZFQWpBSzlTUzhjMUs1QUhYMzNzSnVDb0FmNEZPa25lSFdnbjk5WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816561),('dB38iJkxQ1v9939IbhGcZlzGNorXOZrUPrfalsb3',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibWprbVllUXlza09CTXltUUMyMk0yU283d0poS2dyOHhuM3BFZFJVMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820029),('DYujWhRry3vcvOkkiQEqWuRdVFCIMQTFZLtZixti',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTZaa3FXQmNNUHRqcm1XMjRkQXdnRmxvVXB6RzZlalFyTmFRdnF5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816556),('e3uU0wWOKa0tZ9iYIcuUKgtOgOSYEMz1TZSTb1Bc',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidzhUWjJjYzJGREpoR2VSamJrZ1FqODBlcEk1ZWIyb2F4dGRaZWQ5WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819476),('eEeHvNhoaNwUVCfLlbyqIsJTba5v24L9ETBtix4n',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEprSzcwNzdBaThuOTMzUmw0dEo3UENnR1JkNXMxb29UQll4cHRNTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818373),('EKRZQrUHxWlFfaqEmmI2OAnY9tucEhhAq2az0lfx',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjJWRHFGMlc3Wk5yU0RSS0h2MndtTzB2dWY3Z1IxTVdxaURFVlNKMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821255),('enlJPl57HTP0h93FsuM4Cc6iN8TYFQq9y3jxbzK6',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia1FKWDJVMEtHRk5BTWdxcndTRzN3cXdkWGJPVmZTSWswQjJpekVwVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820628),('EQG101bkJEJIBq0sQWPnxl5k8nG9b24ubmXZAeBp',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUNTb2tSTG03eVNLdEQwQkMxNTZFWDRhU0FxampzeG9zaTBkdTVGViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822143),('eRjvPiS8JO1iWaPJRnkp0qJFB0f24oluRr1f8xny',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM09zWjNsS2Z1dWZEYzFtM1lkb2Y3dEp1d2E3OFlJdjdtY1lKZ01adSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820714),('EzlS37b4xKf9tuY9kNvO5oBgxzX2T5S2QgxhDHc2',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmlUbTVaNjV2ekFreFF5Ukh1c242aWYzT2xaWFdkeEFPMkEzRmlSRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725815951),('f9SFmq2SITwYa8zhFNykQfVqXxrF06zEeVVExIf4',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0I1SXZQMTMwc3BpTjdlZWlTN0hSa01ETW5iZUxUbkNCelJLb3pWdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818351),('FMTiENt5xc6qChODmII69XliqxV1vX9A5HbxApVm',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkY2UWN6dmZKRjBxd1Y4aFQ0U2VPTm51RVNlQW4wVjBDMmpqWGl4ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819225),('fn9pgwvFjjbivZ14igxCoREgO74alGE2NJ7RjpA9',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEFYZ2FpdFNpUzAxRjh0c2g3UmxSV0VKb2UzTFZFc3p0VkZQWlp0UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820497),('Fr0rsNstH2vNQ9iD8B2YCQ2esGhZTAxSzQAq3Xhu',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXNMU1B4UTBvU2Q3Skp6Q1ZQNFF2dEZxbEx3TDhLRlZ4Z1hoU0VKOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818892),('fsp8Z12DaLzabog2htUlTFr0wg5a7BGquRXlz8uy',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0IyeGdGWUh3NThDR2xWTFRNQUk5emJSaWNHTWdLOFU5MEhaNURBMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820293),('FzPj7NLBBjxZx19h7ycE6lTDZ3rV2g9N43PgIkqu',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoid05MMU5zb0g4TGpKaWhvR1IxRjFMRFQ1UkR5WGhlSGtLR25nODJHaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816124),('FzuMm28e6rpfJqIZ0yCb1GkUxNflxXlE8pIPKTbO',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoieWNJNTlsU05oWkw4RHZXdkhJRWF3MVBENllGdE9ZT1ZrTXF0WHZ5TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820037),('gckhnp4i7WcHhJJ9Bzsn4Cz5NtKOkKLAirGBqVuV',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTlpTnN5RmRsZTgwMDVDcVVlTmxzNldMMWFTek51ODl1eUFlNU51biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822127),('GGnqWRsU95QoZDh3bqMb0WeT6S61mfPsB7OGFcMf',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVNPT0FUcFVMZlU2QVk4dVRTaTh0MHpDMFdSUDVldzFabDVOc0F1ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819436),('GHw60TthZT0UT9MM3YnWL1MtH4vrkJdXCNHwor0s',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNW5SaUlDdVdtQ2Z3eUdkY2ZjRkFJSmtmMWJnd0VGd08yN212N3FtZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820010),('HafVYGt4c41EGfl9OHXOfvuAw6r8Opb4uqgWlgRQ',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm9henkwT1IwUGlyeWxYYldPd0Y2eWtSMm5Jc0FpaVRMdFNyUGZVaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820117),('hSLJJbxBiMpToC2XJQBUmygZRww2mPUAR9qHrB9j',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia0ZjYm5lSmVkNThPNlVDUlc4WXVmTGZqTndDcW1LVHppRHNUcGZ6ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819846),('hUgIlpZx6EbqxJgPRfgUCD0GWpnI8PGoxpgV3nmI',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0RhSU8xVEtFRDFHVWMxYk9uZU1JTm8wQTJwVUExa2xmcTY2VlBWZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820249),('i0Q3CPBttLwAmKKy1VtaAuI9tNDTHqYyNElvImnM',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFlYV2Flc0NQM0JoSTVySUFIblRmd2ZPb1pVRmM5d2JPMkYxY0s1ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725815833),('I9xLAKWYZgBfh4lpl5y1eL1KEs7IjNEcbGOkTDWL',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEo1TGs5V3pFR3Q4R2pFTVZrdFFRSWo2ckNDNzFSUlZvMG12WEdVQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818863),('IO27IBbPtjZNvJpWM3Dx5efcWeDW4Vj4LH81JHIT',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHRydWllcUU3bjVXWTJ5RXdNUjVWVldjZUtQTkhBZzVrbUpRcG0yayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821518),('iSqXgeSIjJxBVNkwtOZ0OTfKTKm41DOZD7UdAHNy',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVBZVzVPVGx3U2hBamVZbHJqOEpzYVBacHhXaGRVVHc1TFlESWZDVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821820),('iys94FCz8GFqTTC1ifYjsvSXtyuJL1wtHOrF0xZY',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicmdRcUFwZldNS0xJVXhjSUhlNDExU1JLUjhEREJaTWtQMUh4bW45aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816530),('iZ0vY874KhUkRxDMWuucn4dPJsxdDjoTLHQ7iIeC',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVpiQTlieU5mWFpJSWxrMVE2STRTdlpxcmd2b0hZN1RtN0tFNWFQMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725817213),('j9Q3pfbazFYAvR95AAOOGVaSK45XUcLnh4gBElzn',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXVxSDlVdUdzSG1XaUtIUjU4YzhVN2N3ZHE0bmxWWHFZcVFGeWlrMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816541),('jeklHIGH8aNmlUT4Ppz1t35ifBmM2OGE3tfXYe0q',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUFYUE5vcWZOVGdjdmtnTjMxcjhkRGlqS3QzMFVzNE1aOTdLNkJrVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819291),('jnEh32sKyhypdvOyy3LyAdjRpK6WkgnVk0ebaTlV',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1RST3ZkbEhmNDN2ZXFtRkJJWE5uSUNqMkt5dmhmUHYwWktqajB1dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821040),('JRl3PVKSH3glSrHafturdiAMHSVFGowdYaHeNgZi',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVJZZEJlQmRNZDRHQmtSelA2TkplOUtKbTYzdE9rRkNMZGY2VzNxZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820259),('Jybb6acfN5gYz8fBdCmtIduD54CiNbKjsrIqRpbr',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW9IUmVQQnZTMHJCa1FOdXRmNnpWdHN2RGl0ZlRVU2JBR25xdElsNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819841),('K5RoEu7Zatsfc6sNB1ClHoxtWCzISv6O3RznzrGn',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1l0SjVscXo2dHpQVnNWQ1BQbFVTdDdON3pmVmZCNVdvd054Qk0zMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725817547),('kiX9wwHgqK8Rk68dAumK5pncVpJSGHd9VyEKDBaq',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3I4WWRCdmc4UEk5VGxWZkNJTGc5ZXNuWllKMG1TaG9FeThJTW5xZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822173),('kjS6RFFyvPrgVcGDqC08QBwYKIWzbP71wmk813bx',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZExtZDRzS1N6bURmb2JJZWNaeWk3R1lVdUw5Nm9XT1ZhcWc3S3JzMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819876),('kQ91MHxL2TOofNXtluFbzUrQFISdzFQbQ9wiBWvY',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGJSMTJObDJ0VHhsMWJjb2FmN3BhRkxxNGtrS21CV01PR1VsaVNqOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820113),('kQUOuu4mLCsOtpghsMM4LoN9FzVs7s064SWwL3B9',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHRuZkU5OEJTOWp2alBxemdJdGJETTlLQllXdEFjMWVOQUMzZXpkYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819497),('kWG9rDj897U0OloV8xNl71g1G06AlzpH0xgyOSHz',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidmxYMjFwVEJLaW1pZEtYUEQxUEFQZmN4RENKbWgzYWROcGF4VUIzRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819480),('lCplnetgkYW5YJAFQ5hTHFQj9ORbKdxy0tmf0W71',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTlZVjZQNlkwV3VMdmJ0TjNwbVZUTDl1NlhKVHlJV2lMaHVjaDlZOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821851),('lMoUX4a2uiBrelI3Oprnuab3rCDWKqz1nFudLYIV',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUERaU1BCR040a25wZU04NW5Ua05zaW42QUVJVDVZcWdZS0dMeHoyWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820267),('lsgdPAE0PXvGLX6exuMKVwQwboc59lM6GOIWbKeU',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHJaZnFqNDk5dEVvQU5QMVQxM29yc0FvVUF5bU9zWW91bnE5VVBLNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818870),('lSNpdG5m2X8h7zLgnc1xrcn9PjZpKkE7LXnNeNWr',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoic3dUaDhyOEFNZG9sdGdrdzB2WUVKMGFtdjkyN3FOVUFqQ21QY2F4byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821304),('Lvkl7Ey7bRMp7bX96fRC1rCUSwewS1b6QDjJvYhS',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0tnbktKT0lVd0JIeWJ0bU9saGVCUFJIV21STUFiOGk3YWt0b1N3eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818826),('ly8KeZ52WyQ8bbsCAoREQTqdNhCXLECnherQqZq4',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidUtSZHZpcEpaTlN5MGs1V05JbTY2UkZJS2ZkcjB6Vkczc0VLSUJZYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820681),('m2nPczKxcHDX9HONayTkhsndEUjSKQfing5p4JEY',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibG1PTk1sUkdOakNJRUJaSDcxS2JLMHRGUkZERm5LeGNkU3pnU0JlVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819963),('M3dCc8v96XfpcfUvGZFZt6JNi5QlO9ieiGMFfk7R',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDlkSE9SanJZQm9hNGVCYnVzeTRBRlZTOWppSkg2WFpuRXNTRjNJYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822285),('MD5ytCNEFipWP3zt6jtZl5rpmoPz5QPhZojTammZ',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXpyWVAwb2QzQlA0V2o2c2haMnRqVkpzYzB2UU5uSWhMN3U1TjFnNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820791),('MedYuUjMf4xgxDRcTp5ZaHHbrJUzgcCSLfAw9q7s',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzNjTnhObVZId2VHQzM4RndXMW1jWDhvakJvMXlkZVRsV05WcWw2RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819851),('MFCYfRSKKycK4o0bPGXxL8BYDdw3ih9ZKjLRkLEq',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia3hmNms3emJWbDlSUmZFSnlKd2NTRFhQWTYzaXM5ZHM1TDRtcENUUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820152),('mH78p8hvDpHO6YK1RSgk73NyN1UtPeuTdBawsnHJ',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXhUR1I0UW9PZjJJcnVsWmpYSGFta0Zad3Y0S2RQSjlFTHN6cUh4WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725817427),('mpxOLHlc3gktUogfoaPn3kl6W39ehMM0jZz6v6op',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDNDaENWQUZhOGJUSDlKeDY3SzBvcGh0eWtybHBPZTVlZkpRR202TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820704),('myINiIMhebWqSKGEAmfueE8V2ukjdtCjuG10VMvK',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzlxV2FsdEtYZmc5VGN4VDJtMXJIcDE4UENwdExhRWFLU2FjcHlFSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816290),('n0o9A7Wxyhe61Qvv29rVf6ubj69jw5CwPUtetG9N',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicTdqQ3o5aGVsclpBUU9EZW16VkFKTkpXa0lUcHgzcUlJdW5ma0NCSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820199),('nAKfPaQlvTobpk1AX5fsuedZfgORLDTHy5k4x3DW',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVo3ODVWVlM0Sm1pS1RmbXQwTFdxVm1TYlFYZEQ0bHROdGt6RHljbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820226),('nZIvuCgt8hDDrtrh2YZSzyjooJeguhLcEIzgRydx',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFBhYmY0dFRVcDhJcVFwY1Y1akZkVVNHT0FVa3JYQW9BWjJxY29ONSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820109),('onK80sCL1gfFgQdCxQXfkfmWHzmg23zzpu3Nej8B',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkEycVhOVHVxbVl1cjg4YjR2eEF0WkY0Z2M0QlFIcXF6QmpRQm5GNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816672),('Oqtb496pud0iq5LSWk8innwYQSwHBvmWwQul4mLi',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGJQZE9hZE1OaFRhOHJsQzJwS29VMTdhc01yVWoxZDMzREk3SWNqbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818564),('OToXgKTjS6Mc1VnFj6P8kqL1OZ1nmVzpZThXwOCP',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiazVIQUhVOHJ6SmRhTlBLb2RmdHBaR0JqYmZ1U3JHYkRsWkgyWDMwSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725817379),('p9W4LSxbPp2dZ1GzxkLsQpeiYRdk0wjWRUJX4265',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1lKYTV2QjR4dTFnS0JlTHB5S3hrV2M4NTZoSGw4YmFpU1dxNWVUTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816245),('pGHanCNnQRkZ0qbFP6xd5VR7btM7WoZ0G20JVz6I',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQW1rNkZTUVNIWjRtdDllajNGbnBGSjU5cmNKNVJQNmNzb2xzNXQ4UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819753),('PoFaPieGL43Bftrozmh9ubWOrENGin3JNrbxPIql',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTllKa3BXT2gwaDlXNE5UOEFXUlUyaXN0b1htZWNlbWNOSzJLZ1NrRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819446),('ps2PVHMkunWPQOafZkyP2xwT0I3i4RAzLony4VKE',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidFBNQVVzSkNxVGNRUWlxMkdQbVY5Sm5QRWZjV2k5MFFRZnZKVlU1ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816025),('Px2zAcbvdPrLnrqhxZnGnkLIYp21AkMR3v92P12X',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoic2NKbWJqbXFjUmhuYUVBM3U4SHZrcEhJYVZZWGJVVGJucmtxRkp1diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816399),('pYc7s4uo7tA3Zb3ENmWn3e49tiZ1jU20XxrQTmvo',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2xxN3RKOXJJUmRyMjVxenNlaHB5MlFtdU9UQzZPS0R6REl4R0ZnUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819363),('q3dinIzn5xb2uImqBlbP3h2IKjEg2LSB1MCUhm2g',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVYwajdyMldGRHVkZncyMld6YlNzOXdZNXE3TGhqbU0yMTdkYzJMaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818723),('QaPOlJCF3A41uvWLzRHJSFAYD7BMyq92pBVyjbaN',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVhzVEhxWnp5dmxsRmFEOTN0S3kzY1pZdDhhdmJPdWx3dmQyc0VZdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822305),('QbtHxAJGZ3eq8qJ84dYn1iplTE3V49FjUMX1UkPb',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidjkxZG91Tno3aTgyTGxiSVh2d2ZsdEFZVEJNYmVDNTNDQk0zc1U3QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821312),('qdcwQGwhh5UNxPspItXQs7tiBWdxYvQ4wcqs8Nky',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTk83SmtjRGF3N3pJcDlnS20wMmxzd1dEbTREQjVZNlM2elFJSFNiMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820137),('QgNnYskjSrKlMN8CEGz0tdEaKSVerTSh3jpRDqVI',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnVuak9ZNXozMFd4dW5aRFlSZjR5b01CRFI0akFkMDF6QVVhNHJZZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816821),('QImRLT08P3w1gLB5noJ338s1ovWRfDkcaHQEcUJB',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoieW9HRWprV3FERnkwSEhpd1M2ZFhtbzRFQ2hORVF1WVdDQ0tGSWtRUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816816),('qJIKodPBTtaL5B6XYnQBsEAqmqJk1jiNNZdJGX3x',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia1FtSTlWc0g4WHVmeDNuM1Yzd2ZxNzFuaFpJNkJaN2NZa0ppSm16MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820042),('QL5C7DlyzQCFHXDEYy9SteOcMbjI4Z3ptxHGuxJh',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoib3BZeDNKZUN4cDhweXJaRnFJZDROWXdaMWZVVmFKb2RDZllacVVZeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818811),('qNqw1nhaCvTpb4F5jC2ZZuT4z2mhoz1soRUc2ytZ',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVFJamJkSE5zY3NMMDBsUnNFM0JUMG5TVFA0N2xnQmdySFJDWUxkOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820782),('r1QkHlWE6ET4sNt4TbSn5Wq3SbI1Q6Zq9lpa9cuG',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0xwR21UOFozM3lRTFhWVmRHWjc2bUlPcnFlb2JPUUU2cXRaWlBqOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818970),('Rtg5pNfcC1UsfZD6zg0DczadjLhnt5A4GaSKDmqn',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmkxd1NvQkg1U1ZiRHg5ajZ3M3lUMm9Ca0JPc054YUthWlVwU2RLMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818534),('rU4VZSSNiH1SGtvX7Ek2iJMRCPjAuv3PKWTmuqFn',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVo4QmU4bVhHNEhWUEJnRDRQVWsyRkEwc3ZiMUZyZkNJbGxXaU9XdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818933),('rvd5sdVIvInumOBxaIfkjdzzlGkWHUrFUi35Smjv',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibE9SNFNWMDFsRzQ0THVmTXpsNlROOHduWmI0MHQwN0lYNzBYdlJGNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820879),('RvP8T4zrE9BqMHMPuDC2nIhiFs0satH3PUviYTXy',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaE9BbG1HSFlpaGtOVUpiSnpUN0JmNndodUIzbzhvNVJOYjBTT1B4VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822246),('sD7WLDvb5njrTEtCrlursQujbpmZL42XLYCN1aOf',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3N1VmRoTWI2N2VuRFlLMUV4MDFOWWhrTzBtMEg3S0U0R1F4dlRURCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819830),('SEQUqxRz3sJPeA4jfWZM0SOwbciC3cMB9Lp7HdDo',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoib1FIWVZldWVDeVhIR0VMUk9HeEtFMERpcDhDRXVLb1B6aHBsTnRLTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819865),('sLhcW9cpd4JQW0SgqwuHg5HBanFAfEPZTZ84DmNw',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVV2NkpkcFl2UGtNdE9NMmJId015bGlZV2NCYkpacHFzbDBZcFhFUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822403),('sYNwSaj5KH16dxts2IflWrFtefq1VsZRhEMsxPwh',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGJYYjA4bHBwMlhWWmlNb0F2V0VDSFdMVkgzbUN1aTZOeTNjTFZFTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822050),('tEF0voeRzoDEytbs5rsZv2eQxIKZQy3PBssoTQYd',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVF0QW01T0ttdk9JRzcyc1RtWW1MQTZxcU1ReUFRS1VUdGNRcTFBSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816810),('ThA6SjIqR9cYQdLyizgtCIueFcLXHgvERydE7Sb7',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3dlRzNGemxzbjB3UENNWkZkZWxkWWM4aDFKeG5GUU9lOTBWSlpnVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816694),('u4GZXFonPrDPkyOrBuTIGxSKzMXf3h1cJ5oofAvo',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDd6SEl4blpyeDdYRVFFTXJCY1pGMFZiZkNoQlp5TWlVTjJmSE1ITyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822104),('uBxHqTF3MMcqGj3ZePDgaDujjZeBsSJWQyU4I3kp',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWh2c0RIc2JzdWRXbzVIZnFqTWRhamcyN1lDT2lHMDhhajkyWnh5MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820834),('UCJWs35rscfw4itiFKVAuWxYhZfqq7WBQKoY4N6p',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjByV09zV0drOXg3WlpPQ0tIU1ZVVWJDb3o2b2lsM0c4SVY1SzQ0dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819813),('UffIcreSDokBdq6xYLUzYbb11dDAs4AbyBQeCXod',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2tjRUlCOEl2YTVWWEpyMWRFYVE1aXZrcHJYR1NEQ2ZEOXdWanVvNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819505),('UJwYGbtEWNQucg3ILOlNAyNoZjXrf960R8b5zX7u',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGJiOUpjMTNCYWY1cHlnQ2VKZzJFR0xNSGFUSXZNcjJWRVBXV3M4USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819471),('uP2GEc4Izp2c3L6uPOwEw1UYhk3IsBT93H6be5MC',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkxTRXUyRGRNN0M5N2FMVk05Sk1jTDNUOTVwZ3oyWnhuaWZJTk9qZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816086),('uZ0XrW3DvpVzCir8wY6qQ53ISxSMTokYeUjtMFe4',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicVVVZ09pTzdWSDgxbWZlV2pRY3hlSG9vVUs2MUFvNzQxeXR1TlBIbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725815877),('v5yLQiUI2PiLagZD2z5Etg98IndYDAth09nme1pu',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoid3M4ZEhHVFNYazBaVHRPa3FCQWRxM2FiNFhkaVBxZGtxRmdROTdZTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821493),('vihqJk6z56Siklp5rIizllSlAzqjiVc7eD2pXADy',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3NjTGc1ZEEyelhHbkpCNk5Fa0w1ems0YlVvaGg5R1VJSmtGRnhMVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725852265),('VQju00BAmfTCxiBCurlVINQvOcG9FGW8Xx3uc6vM',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUlqUGNwRlJnNmpROUJ1aEhHRFR1azFObTJ3S1ExMkt2dm1PaHVtWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819854),('Vsh3DEAOtPnEJCifg0sQbdr7gb4kO3rDtUTB6Flo',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjAweFMwS3d3ckE2YzJaZGdaWTRGeFY3UEZyQ2wxVjhJZXRNTzZQSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819394),('VvIynCzb1QSXvgF3UTwkICEMaM1EChsuhgFjp9FN',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoieVRJSjNuMWt6SHpUb1VIb2c1cnRPUVY4TDFqWHJOVTdkb1ZaQUdNVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725817799),('VZZPgvDOUn3LmxuExg3O99YGea6sWzLBY6iK1hJp',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicDN0M0FzWVgzdktCY1VwaERTSnFJMVdqU01OSk9pVzNFU0c1QmJKVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820841),('WRACOTnUw7oAqD8JPqg1igZgKmk2d8dHhzFwDskL',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidGRLTlhoS3ZQTWNSMGJFRTYxSWlUVEJNanZNYkJpZ2k2RzlSS1UwNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816851),('xFyUXoTMIhy3teOZkm7JsyMYL2WUS94XFQIziOZJ',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjJMOHIwZVFxN2Jac3Jpdk1tTGl4QVVlYUhWTklPdjJXbm1KdERtWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821199),('xJeYXXeO2Yt0kaoYExCsdXwybgX9yFgrK8rRM33C',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVhlS2g0d1lMSnFodU80cWdYMW9pZThZbnpDMXkzYVFZSTlvWmgxVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725817371),('xpMvBLofpei51p9bu05sHPDuMrEE1gOewgfM4Pgr',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZExTTzFOTzhYTVltTDYyOGlVcVFsMW5WYzQzRHVGOTdOdUlDNTY2bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725822294),('XU0Fgi8KHHwQeO3FIOA1Jm1c5ocRlEyZSjzrQVGb',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUk1zWmt1RGxaT3JNaVQxMWViV0VHSUNFenp1QWxnM1JjYUZ6TmVSeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819502),('y8KGmgX0XjfM48keJSsehjr5MAfajtf6IDxZnszW',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3BVZmEzSHU0d2ZWdGZHNzZZQXNZSUp6V2UzaVZXbWFTRHFzVmtiZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818492),('YBozlXPAAEsNssydL6DSH7vZVhhfmOVGeRfhFnkp',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzlwbjU0aGM4d296WDVna1VXRXFXaVV6cmg0QWppQ25DTjFQSFkxWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725815873),('YDiHH0qdKcNFJsKGGKeotUSJZAJxxuyia7KQAbEX',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0NlQjI4OFZNUUd6aUpFNGIxUWo0WEpiS3A3YUV3dGpGdmR4dlJGbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819219),('yqAvP2hs9AsWcU1AjfsDP6HfVLRpl1C30tTSlS6b',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkdPR21XT2NiaVlwMFliSGJMcTFMN0lYMzc1dVZPZGE5QnRKQkhLRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725820854),('YQIaZyT2rdPtffp3fTaXtPrOVDCgFHQfPp57WhbS',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidDNCMVF6dFJYYXNtc3EydU1Oa1hNTm4wdDFlbXBBZmM5QTlqbXg3SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818471),('yV151LjW0Kxhxni7QrAmCrYZNDscnqgfIqudbrG2',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicURnNk5MNndLYzBGR0ZLTkZ2Z0NnV3ZBazhNRGw0Nlp3eUp5cEdqUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725816717),('YVtPnZX87Sb5wvVY380ABPXORp0CnsfqPsy8fJPq',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2kxNm1VQllJWlpodHJ5SUtER1lTdzBaZ0lzNEd5YWNTU2NoWFI3WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818453),('ywvIW3RArkajW3FM1uvtA9CI4w8dpOUcNmVMtddz',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZW80SzI5Z1A3eXZiSGluUXB6cDZSR2U2MUxWeVljTHNRbE1LUVpndSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821869),('YxXC9hZzHrfaXDEFvSwqxgORfDIUzABnLEEQikuo',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1d6cEtOcHJKQnBJNTFueWdHV0hMZUZmUFhNMDhPZWJyNW1PdHdnWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725818073),('YY2pKbf6ZwvKSft0mCP0YYfI1FtSr9VUNUbbMyOl',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia3E3enFUV1dtdW9tRW9ZVmlPNXZydXFaRWpBaFY3Zzd2TmdzMlh5VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819102),('z2mRFpZKzs4PULOFLuYMEiVrRGBpce4i393Edixy',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicnN5OHZWb1oxbWhTajlXVjh1TFo0cFZKSEMwQWNHRkR6aVpOWFZqMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819940),('z3HsKxZM74wJWvnX78tPj5Qv1ZZbWc7HR4El8Kk3',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2ZsVlRUeGtPaWpScHdwMzlqMVU5VHhPcTlFRXZXbXk2SE1hVnlMVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725821876),('zmpdT5Pw1HSLOLGYUGLBOHkOv4XTmQq22WAQMAPk',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmVYa0oxZGZzc3BFd3dmcVdJSjAxZEpTVVhPd2RXRGcwd1BaRkFlNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725819826);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suburb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buzzer_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('vendor','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vendor',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'pravin','pimpale','9552344220','abxc','efaedf','dfdvad','dvdfvd','dfvzv','325345345','xdvxvx','dscsdxvc','pravinpimpale45@gmail.com',NULL,'$2y$12$FKl8CeCu4aiHZgF4UXLeceR60i0C9DzBQpqAx3dPV/jrYDJhAh0I2','vendor','T0fQQzGPMvNpWwKe81JS5bv42h68ybY9KJYoS4cFrKlfgn8YoRtVUikzxfgm',NULL,'2024-09-04 10:21:46'),(3,'Pravin','Pimpale','wdwa','qdwd','At Dhorvi','Pravin','sadas','Lonavala','443202','NB','246','pravinpimpale451@gmail.com',NULL,'$2y$12$P1GFRfv6bqVVRg3.m6DkBuV/xCuHQBuV7TM5Y/jwg/OdeCpaHh0hu','vendor',NULL,'2024-09-04 11:53:16','2024-09-04 11:53:16');
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

-- Dump completed on 2024-09-09 16:26:24
