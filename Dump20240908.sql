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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(6,'2024_09_04_063117_create_manual_cheques_table',1),(7,'2024_09_04_063138_create_laser_cheques_table',1),(12,'2024_09_04_073714_create_cheque_categories_table',2),(15,'2024_09_01_165014_create_customers_table',4),(18,'2024_09_01_164906_create_orders_table',5);
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_customer_id_foreign` (`customer_id`),
  KEY `orders_cheque_category_id_foreign` (`cheque_category_id`),
  CONSTRAINT `orders_cheque_category_id_foreign` FOREIGN KEY (`cheque_category_id`) REFERENCES `cheque_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,3,22,'Blue','wdawsdsa','notVoidCheck','213','21312','1234','1234','1323','213123',1,1,NULL,'logos/Vf5l0aZqd9rJI4v2NvUNuMwQAgdetXsdGe9uXEkl.png','1','economical-top.jpg','pending','pending','2024-09-06 10:32:47','2024-09-06 10:32:47'),(2,3,65,'Purple',NULL,NULL,NULL,'pravi','pravin',NULL,NULL,NULL,1,1,NULL,NULL,'1','economical-top.jpg','pending','pending','2024-09-06 10:33:46','2024-09-06 10:33:46'),(3,3,65,'Purple',NULL,NULL,NULL,'pravi','pravin',NULL,NULL,NULL,1,1,NULL,NULL,'1','economical-top.jpg','pending','pending','2024-09-06 11:10:53','2024-09-06 11:10:53'),(4,4,23,'Green','drttfyguhij','notVoidCheck','123','12345','123','123','23456','2345',1,2,NULL,'logos/cHz0tFsceapJc3RakGw6ycgPs6b0oktZlt2rh0RY.png','1','premium-foil-eng.jpg','pending','pending','2024-09-06 11:16:38','2024-09-06 11:16:38');
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
INSERT INTO `sessions` VALUES ('0vHwGNUHFKwCx2ANBGrq7GXyyTelAPIsxwteOolR',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnNGeE9tQzlFT3RNN0NNVFp5aGlkdVBLY0FYcTdWUVI1YXpRUDJPciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725792051),('18DKmU23OybcYwJ7BhUheXYCczbN4ZnaYpz69upD',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0YzejNjNFdFWFVid3JtbjgydTRsR0pzR1JHS2d1OG9SSDJBb1BFMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725794614),('2a7IrTpjsJIsa7ybk5Ay15BvtyR7wxGzfikYZhXF',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWG5XVXFoV1RkbWVGY3RkVGVxSXVzejlVV1JjT2pybjM1Qk9WeFJTRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796231),('2LWTwXlPqtC9poR1KtROG3tFv1TAIRdYpuH8QNQP',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUczU0NoaVlncDNNV1hLQ2o4WWphaU5zZksybXFON2JrRnZBd3dFNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796053),('2wbCDZbKlziF33cPIZXkc5TXv31dgYYoSlQrkjcl',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibnJmRVBFZEJZN0cyb0k3VllqVUo0Ujg4TndtTWw5NWI2cEpxMGp1RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725790365),('6PS7P61lP5iDy9NJiL0qBHNCWU8pnvy1yO1LBWzz',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmU2VVlYVEppMVpTT09WQWExaEpmZXRuaUo5OXdZSWljNUxLRlBxbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725795957),('7D9NQKlgKnLk6Vm6ajzfGmj7gyfK4alidryG2i2l',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDFxVTBaN1cwdG52bmZlRnA3OEU3WXIxRWJIdmZaMEN3T09teVVtSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725794531),('7FX8Dq0M8ilrPOimYHKOCyGIWKXK4sBk44b6zKEH',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRk52ZkNJejRaMUx2eFd2amlCU1BEUkoycEJPcGRXUnBaRU51SHluTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796346),('86ECssAwQqxkQuFLdu2hSJmeSIdrLi9A1IyConyA',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1RKaEtUV2FucU9PTUNWcnhvR2JQdWFRQjNYM3V3dkdrMlVwSDN0SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725794627),('9Jh7uSkfpxCb7iyER1i3FjNumodTwWFNpkxiY9oT',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRU9Wd0hBU1hrdkxpQTlIYURTTU1DSG9mcDJmWUZXNnI2ZHNtblJJNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725791393),('aQn4Nd59W4TyFLlaYxEUcciSqUNTX6N5RwsMLiAz',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2Nwc2RkQkJtOENmd0RmY2hhRmNOVk1EemJFWnJReDV6RjRTWHg1eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725795949),('b06pIhLZcxrQRWA2he88eTbdlQOU5dqzYJ4ilX7g',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoianJsUXRPV3pUZHNGOU9qZFdqSDFETDlqRHV4Y3dNQWxhZ2FDbTR6RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725794620),('bkylDxjx17LytTQoa5Wjmv6QJLZmJjpDIOduM4RV',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidnoxdHowbkhxdGZ3RERzdHJZaUFsYmE0Z1JMVldFR1VOZHlDd2ZORSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796318),('CYb1BowWPgiyBP9crUNNRaIVcdCMaxRvDk61r7O7',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDliOVA0S0t0Tm5paVU3TXVMRER2bzdkcTJERkhGdE5EamFXaXlWaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725791756),('czSOLFPTnEDzU9Oy0VtsQmUFUmsZRHjI8iaNW0Fq',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjY3NVVjcG1LQm00aEp2MUV4R3NmMm5qVW0wTjlvdGozQUlNc3dZbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725792918),('f8Pw51Mt9NLDjAfq6v0XWPHSKr3iJnztHElCRkMe',1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoieWIzR1NrRkk2cHRoRm1LdFFjcERncGZIZHVHNnhWbm9MUW8zSDJPTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlci80Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9',1725796492),('fhwcGXf0l2z0KTTpWuDkOJZieGpswNvt4TPrrPes',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUxyelNXNTV0dmxIWm9IbEphdlBidHl0cDN0YThHaldhWDVRTkZDZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796407),('hby4Vg4w8lCLgpWt109otBCeLUTcdKsYEyH9THXo',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGtxWm1ENGpGN3gxT2tUUlE0OW5yaThEWTh6bWJEMFZrdk1sV0ZyZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725794669),('hgGMHGxR1nm9md8Q0ywAbfzonBZ3FEKCJc0GzeFK',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXM3ZlA1ZUV5Y25JcDN0eGVSVUNranBIWVp5Y25Uc0hpaDF5andlNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725794653),('INo4ZLoFWQBsvjBEG8PPl6XE2lJ0u4B4cqN7JadK',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2dLMmxrUTFoQ0dwM3ZGVVM1VnBhS05tVzBKVERUd0tKWlYzTVJnRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725791182),('IX0QlK25KYOjsuEeWFsn2Z53dRzsWGHvK9hJzprA',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnU5R0pTRTNTMFppZEY2SmVWU05wZERhTmtRbXB2UDVFbjhuUmFsWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725795963),('JiufV1LCUaSf7i8aSPKRtDt6QsKncGXbfPTu8iz2',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjNrTWxnMllaQmNDSkd5MkRkd1BGZUJUZ2xaZVJzSEZsU0dDNUNIRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796328),('Jz6GEOqCEux1jRMuNYaHh9lXkPGdYn992vRx9Mfz',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEJ1QWhYQk5XSHJaTWw5bDZqS3pqdTNwNjNQbkJWZnd0N3cyS1BzYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725792066),('KpTIYn3oMPsVnkaLGc3ALG9HTmIN27Q3OmtNAwZl',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWxuUm96U2VVRTdUOTlKQUE3QUJ4TjZOVGNGRGc1Q2xub0lPTnBoMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725794575),('kvlLF4X4PWcb4NMjvUZXwkyRUvSUYq2RhbTKI217',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2twS09uQlZ2R3Z1MUNFRWk4d3MzZGF2WnhpYWRKOUc5WWo1RW1vOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725795755),('lOKHNiBgiRqLIJ4qOUQRUF8y1c6ab2LaGC1XwlHG',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTJ1bndOTzhHc0tNS3NHVmZSRElVSkNDOTBrUFBORmRSMTBOME9UWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725794554),('mRy9TC5VHXrbbLgBkSKnENoMeDnRBF2V2PqYp4Na',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWdYY1BSSERweFB4ZUxORm1pdmp6Z21DMmJ5SVFIY1BtdTdxT3hrQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725791762),('NE3A9GffMJD2JmI7bdNc1AB345CsomDKQIh4pQJo',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGY4MFdJbmRlM1R1b1VJS1V3emN3Y1A3VkdTbnNBVmJnalpHbTRrZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725792922),('NKXaiZVh8ABf6S126nnIuSh6bhGXxbm1ircM3dXx',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0poeUpWaHV4T1FRb2NKdUszZzRzUjJOMktkektsSXdoSkExcFEweiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796067),('NUOX5S0rNO46jvBj1SUGDsU8XiYTHVkzDl6hz9uf',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWtpV0lNOER0MUY3ZGtucVo2ZjZTSENIaTQ2TXZnWk5NbXVTSVRjRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725794635),('OfJi19svJxi4mqkea0zAjpoUUdm6ggpOq3LQkTDC',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY01HcWIyTDNQQmlmQ0hHcjVzT2RHWmlTdlJQd0trdEptMVZjQWt3MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796227),('oi0oIxAPU98EjOhKlfK8YRZaXsKeE0iihMUfden3',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjZlYjgwbXBhd3VXdFZhVjMzTklzZkRTN2FsVEFGUlZ4NDR6TzhGbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725791617),('OQJjBgpctWiRVs7cdd7WMcAz5ftTXHyWdGsdm1Ui',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM054Z243Mmx4c3daRXE4SXQwenRzaGQ4WUhjQ2dJekZrZmZNa09uMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796301),('pehjaW0Qaqity3dKRWL415iMz5yzJbYKYoeVieSx',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnZ0aXhFT3dhMFVPWUIwSDFyM1RlQlhtRFI0R2M1a25xMmFiZ3RRaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725795884),('pGz1yoptYxjlBQTpAGRQlKtMXA0SZOU64Db13t36',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXlHRExKY0dNa2Y4VkhSZG55eHpZMFZtdVlTNkI2bXZEME9MdTR6QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796113),('PherWCFGPud47CqPBZ3CM2hYT6em4sPMdZZfsRob',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2JWbXNoWG5VUVlKMDNYemhUYjNDN0taNzVuRHhLa1BHaE9iNUsydCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796348),('piPIvkFiglLOeySZeMdWTLtKwbWJLAFinjLYAoug',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFY0SGNRdU9zNjZMSUFwT29nRXFxNWZtaWo5ek5vQ1VrMlB5ZVV2MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725792734),('ppiTST2R3ujlhHiP3C4xXba90zBQ34gKFshU3MO0',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiczVpRGY2ZzBxQ1hwSXpqeVhla0IzenRhZmJkcTRyQ2VyVUFVaEMxNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725791196),('Q2rnuCW9qxq7nXueRrcFK3dM0gQRrfl1g62RetlS',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkN4M1hmaGFUUWkwUkRyRFZHaUJVU2NkcnE3SzZOU2R0TnNjMDFNcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725792073),('QdKVX8cWChSCUauiFTnRFOuyg9nZVvxhXgVGCzLc',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGdqSXJwb1BwNVNvR0ozRG9WM25JZGpQajhMVTRreWN0N1JpU3BqaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725792822),('Sh9KL4QAzDEVE0Bj3ACJIpG1R42syxGLUI5dkCJ1',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3pMV0Z6RVlpaEswalhnOTR0Zkl5a05MYXhJOTVrR20zR29uMm9SdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725791189),('ShDintY0QvRMMqr7rKTaP4tOslcJAfQA24p4sezT',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmFMbUVHTlNkaUYxdHhHNm95MEgyMGw0d2ZhS29ubmZZR3pzUlZkYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725793086),('sisSYewpbUa8NRaLgFEHVfcmIiuZH3SRg42k6OhB',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibTZ3OHptWkRMZkNsN3BuZkRjSFZOd3BwUWZwaHQ5YzRhMDV5SUo1NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725795860),('sYJSymSgeskVV3eaqgY6JphDvIiXcnvvMN6CSqe7',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTElGOUhsQ3VoZmtiUHNqZ0tuUTFTQ3ZORW82NlpUVkVqZzFUcFo2OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725790372),('TLAhQthMLz4RnNDvQZkN8zIN03hSKcYLqEl8u3IC',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibU1Tc2FBSmxXTjRscE4yN3QwRWlFSlUxdTBPRGlHSXpuOXEyNmdrYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796021),('veP14GtRj5ukzKaAx9NRP0tl6AgOCZMCy1MFZ9fS',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoid01sZnFOcnNsRXlvZEJyODhuY0hRNExReVFINWpMMGYzWXhXd0ZuYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725792788),('VsgSEu38rrk1EeF1xABPHOZ0moZPIzTwPAt3O7QX',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHRQS2Z0b1loQUVTZ1lSS0VKdlh5M0xnbzN2UlY3OG10TDFRMWhJbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725789781),('W59FwYYthO6W61X6QAULxNBpKwkvwQQdpWeQGAZr',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnk3MWpoWElXYkdVZ0hYdmtBeGpleUFJWFI3VUNGVVlIZG54NkpYbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725791401),('WfcjqF58IfParWEcA8JVGOnuyU9un6Q2zy6JRHiE',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoib2dhZTVod0Ewa1R2Rkd3QjlGM2lXdlU1TEFueU04MTZ2NFV3WkphZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725793838),('Wlb07isyMqhM31hHlPEuBPkT1Xy1ZKOQl1pnPyOP',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYURqN2ZlY2V4bU1FTGlkRTNWN0VQUXZWSlcyM09uU2s4UjJ2a1NyNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725794503),('x6qfQtKd69CiugAikArbhIu5CAKWrY5cYI89V2db',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicjBCc2phWnZSR2ZFY05mRmttc3VZeFdxeXFpZG9XYTBjc24xV29pbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725795904),('YtwQkdEmc0Ir5cq8ZY4K9DvQuyU3LnX3JF3hB5Qy',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUQ5RHpGZU9YMlVJNHVXRGhWaTU4SlB1aWZBdEVnT0RubXpMcHNOZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725791841),('YVwHrS9Y8j3D7ncGgtZKbz2AARCunpgLQX0DZiVA',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidVJXV05GMHA1cEZySnNsWVBYSVFhb1dncXVoN2hDTGNWczB1aHdSViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725793047),('Zj5chvcNnjMFKkStpLJu19VZFBR6rntdZFQx255c',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaE1udVJjYXpHTHdPVnhLNklJRWpzVnNkdEphMW52YW1BNGNtNEZDcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796411),('zSEu1062q7AN0dC61y5vPY3P9aJZiINbamAEmtct',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoielNGZnJGa2pvT1h2eHlla3ZkTHMyTXp0SjJNOElVdlV1aUlreUxxUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1725796452);
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

-- Dump completed on 2024-09-08 17:30:09
