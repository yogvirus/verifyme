-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: e-verification_production
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.13.04.1

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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_admin_notes_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_proofs`
--

DROP TABLE IF EXISTS `address_proofs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_proofs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_proofs`
--

LOCK TABLES `address_proofs` WRITE;
/*!40000 ALTER TABLE `address_proofs` DISABLE KEYS */;
INSERT INTO `address_proofs` VALUES (1,'Ration Card','2013-05-26 10:13:33','2013-05-26 10:13:33'),(2,'Electricity Bill','2013-05-26 10:13:33','2013-05-26 10:13:33'),(3,'Telephone Bill','2013-05-26 10:13:33','2013-05-26 10:13:33'),(4,'Bank Statement card','2013-05-26 10:13:33','2013-05-26 10:13:33'),(5,'Driving licence','2013-05-26 10:13:33','2013-05-26 10:13:33'),(6,'Passport','2013-05-26 10:13:33','2013-05-26 10:13:33');
/*!40000 ALTER TABLE `address_proofs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@example.com','$2a$10$N0kUNSTUt77y6Fg1IWqgauoySVlZYkvdWEVxeNOhnHMY3DZ9uyLLq',NULL,NULL,NULL,3,'2013-05-28 08:05:46','2013-05-27 06:16:10','61.16.181.41','59.184.52.32','2013-05-26 10:12:10','2013-05-28 08:05:46',NULL);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'TV','2013-05-26 10:13:33','2013-05-26 10:13:33'),(2,'Air Conditioner','2013-05-26 10:13:33','2013-05-26 10:13:33'),(3,'Refrigrator','2013-05-26 10:13:33','2013-05-26 10:13:33'),(4,'Music System','2013-05-26 10:13:33','2013-05-26 10:13:33');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_documents`
--

DROP TABLE IF EXISTS `business_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_id` int(11) DEFAULT NULL,
  `work_servey_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_documents`
--

LOCK TABLES `business_documents` WRITE;
/*!40000 ALTER TABLE `business_documents` DISABLE KEYS */;
INSERT INTO `business_documents` VALUES (1,1,1,'2013-05-26 11:07:49','2013-05-26 11:07:49','weddingtravelers006.jpg','image/jpeg',49172);
/*!40000 ALTER TABLE `business_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_verifications`
--

DROP TABLE IF EXISTS `business_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_verifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_verifications`
--

LOCK TABLES `business_verifications` WRITE;
/*!40000 ALTER TABLE `business_verifications` DISABLE KEYS */;
INSERT INTO `business_verifications` VALUES (1,1,NULL,1,5,'2013-05-26 11:03:53','2013-05-26 11:03:53');
/*!40000 ALTER TABLE `business_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesses`
--

DROP TABLE IF EXISTS `businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_ref_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_required` tinyint(1) DEFAULT NULL,
  `fh_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `applicant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `country_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pan_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesses`
--

LOCK TABLES `businesses` WRITE;
/*!40000 ALTER TABLE `businesses` DISABLE KEYS */;
INSERT INTO `businesses` VALUES (1,'1001','Scorp Enterprises',0,'1001','Haidar MIrza',NULL,'R-city mall','kailsah complex, vikroli west','INDIA','Maharashtra','Mumbai',70,'haidar-mirza',19.1154,72.9178,'verified',1,'2013-05-26 11:03:25','2013-05-26 11:03:25','abcd corporation ltd.',NULL,NULL);
/*!40000 ALTER TABLE `businesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_verifications`
--

DROP TABLE IF EXISTS `client_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_verifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_applicant_business_id` int(11) DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_verifications`
--

LOCK TABLES `client_verifications` WRITE;
/*!40000 ALTER TABLE `client_verifications` DISABLE KEYS */;
INSERT INTO `client_verifications` VALUES (1,1,5,4,NULL,'2013-05-28 07:14:52','2013-05-28 07:14:52');
/*!40000 ALTER TABLE `client_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_applicant_business_documents`
--

DROP TABLE IF EXISTS `co_applicant_business_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_applicant_business_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_applicant_business_id` int(11) DEFAULT NULL,
  `co_applicant_work_detail_id` int(11) DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_applicant_business_documents`
--

LOCK TABLES `co_applicant_business_documents` WRITE;
/*!40000 ALTER TABLE `co_applicant_business_documents` DISABLE KEYS */;
INSERT INTO `co_applicant_business_documents` VALUES (1,NULL,1,NULL,NULL,NULL,'2013-05-28 09:37:18','2013-05-28 09:37:18');
/*!40000 ALTER TABLE `co_applicant_business_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_applicant_businesses`
--

DROP TABLE IF EXISTS `co_applicant_businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_applicant_businesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_ref_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_required` tinyint(1) DEFAULT NULL,
  `fh_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `applicant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_applicant_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pan_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_applicant_businesses`
--

LOCK TABLES `co_applicant_businesses` WRITE;
/*!40000 ALTER TABLE `co_applicant_businesses` DISABLE KEYS */;
INSERT INTO `co_applicant_businesses` VALUES (1,'334','Scorp Enterprises',0,'334','JEEVANRAM SHIROOR SHETTY',NULL,'','DR SHETTYS ENT HOSPITAL, 9, LAVKUSH, M G ROAD, MULUND WEST, MUMBAI 400080\r\n25909844	9820071031\r\n','INDIA','mumbai','mh',75,'jeevanram-shiroor-shetty',19.076,72.8777,'awaiting_to_get_verified',1,'JEEVANRAM SHIROOR SHETTY','2013-05-28 07:14:15','2013-05-28 07:14:15',NULL,NULL),(2,'334','Scorp Enterprises',0,'334','JEEVANRAM SHIROOR SHETTY',NULL,'','DR SHETTYS ENT HOSPITAL, 9, LAVKUSH, M G ROAD, MULUND WEST, MUMBAI 400080\r\n25909844	9820071031\r\n','INDIA','mumbai','mh',75,'jeevanram-shiroor-shetty',19.076,72.8777,'ready_for_verification',1,'JEEVANRAM SHIROOR SHETTY','2013-05-28 07:14:15','2013-05-28 07:14:15',NULL,NULL);
/*!40000 ALTER TABLE `co_applicant_businesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_applicant_documents`
--

DROP TABLE IF EXISTS `co_applicant_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_applicant_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_applicant_servey_id` int(11) DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_applicant_documents`
--

LOCK TABLES `co_applicant_documents` WRITE;
/*!40000 ALTER TABLE `co_applicant_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_applicant_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_applicant_serveys`
--

DROP TABLE IF EXISTS `co_applicant_serveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_applicant_serveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_applicant_id` int(11) DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `address_confirmed` tinyint(1) DEFAULT NULL,
  `name_and_stay_confirm` tinyint(1) DEFAULT NULL,
  `date_of_visit` date DEFAULT NULL,
  `time_of_visit` time DEFAULT NULL,
  `person_contacted` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation_with_applicant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `years_lived_at_current_address` int(11) DEFAULT NULL,
  `residence_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `educational_qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_family_members` int(11) DEFAULT NULL,
  `working_member` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `spouse_working` tinyint(1) DEFAULT NULL,
  `spouse_working_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_plate_seen` tinyint(1) DEFAULT NULL,
  `credit_card` tinyint(1) DEFAULT NULL,
  `card_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_limit` float DEFAULT NULL,
  `issuing_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `customer_beaviour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighbour_ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_varified_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_residence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality_of_residence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ease_of_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `construction_of_residence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments_of_exteriors` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carpet_area_in_sq_feet` float DEFAULT NULL,
  `interior_condition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_seen_at_residence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `potrait_on_wall` tinyint(1) DEFAULT NULL,
  `applicant_residing_detail` tinyint(1) DEFAULT NULL,
  `application_availibility_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_family_member_in_the_house` int(11) DEFAULT NULL,
  `verifiers_remark` text COLLATE utf8_unicode_ci,
  `accept_or_decline` tinyint(1) DEFAULT NULL,
  `refer_to_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `photo_required` tinyint(1) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_applicant_serveys`
--

LOCK TABLES `co_applicant_serveys` WRITE;
/*!40000 ALTER TABLE `co_applicant_serveys` DISABLE KEYS */;
INSERT INTO `co_applicant_serveys` VALUES (1,3,5,1,1,'2013-05-28','14:24:53','rajni','mom',27,NULL,NULL,NULL,4,2,NULL,1,'',0,0,'',NULL,'','2013-05-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,'',NULL,'Edu.msc.engg.driving . 2001=23990. 25-6-85.',NULL,NULL,'2013-05-28 08:59:00','2013-05-28 08:59:00',NULL,NULL),(2,1,5,1,1,'2013-05-28','14:58:24','jeevanram','self',12,NULL,NULL,NULL,4,2,NULL,0,'',0,0,'',NULL,'','2013-05-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,'',4,'18-12-58.aahps3208b. Edu loan\'7.5 lack.edu.ms.ent . Bill noo.000094273323 builders name.sheth devlopers',NULL,NULL,'2013-05-28 09:34:07','2013-05-28 09:34:07',NULL,NULL);
/*!40000 ALTER TABLE `co_applicant_serveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_applicant_verifications`
--

DROP TABLE IF EXISTS `co_applicant_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_applicant_verifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_applicant_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_applicant_verifications`
--

LOCK TABLES `co_applicant_verifications` WRITE;
/*!40000 ALTER TABLE `co_applicant_verifications` DISABLE KEYS */;
INSERT INTO `co_applicant_verifications` VALUES (1,1,4,NULL,5,'2013-05-28 07:14:33','2013-05-28 07:14:33'),(2,3,4,NULL,5,'2013-05-28 07:19:25','2013-05-28 07:19:25');
/*!40000 ALTER TABLE `co_applicant_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_applicant_work_details`
--

DROP TABLE IF EXISTS `co_applicant_work_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_applicant_work_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_applicant_business_id` int(11) DEFAULT NULL,
  `office_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `name_and_employee_confirm` tinyint(1) DEFAULT NULL,
  `applicant_designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `date_of_visit` date DEFAULT NULL,
  `time_of_visit` time DEFAULT NULL,
  `person_met` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation_of_person_met` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_years_in_present_employment` int(11) DEFAULT NULL,
  `visiting_card_obtained` tinyint(1) DEFAULT NULL,
  `name_of_the_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_business` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nature_of_business` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nob_in_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_ownership` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_employees` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_branches` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `average_monthly_turn_over` float DEFAULT NULL,
  `no_of_customer_per_date` int(11) DEFAULT NULL,
  `type_of_job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `working_as` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_transferable` tinyint(1) DEFAULT NULL,
  `salary_drawn` float DEFAULT NULL,
  `no_of_years_worked` float DEFAULT NULL,
  `board_seen` tinyint(1) DEFAULT NULL,
  `name_verified_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_office` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality_of_office` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `construction_of_office` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exterior` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interior` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_area` float DEFAULT NULL,
  `ease_of_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_employees_sighted` int(11) DEFAULT NULL,
  `no_of_customer_seen` int(11) DEFAULT NULL,
  `political_party` tinyint(1) DEFAULT NULL,
  `no_of_item_seen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verifier_remark` text COLLATE utf8_unicode_ci,
  `positive` tinyint(1) DEFAULT NULL,
  `refer_to_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `verifier_signature` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `co_applicant_id` int(11) DEFAULT NULL,
  `pincode_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_required` tinyint(1) DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_ref_no` int(11) DEFAULT NULL,
  `company_name_new` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_applicant_work_details`
--

LOCK TABLES `co_applicant_work_details` WRITE;
/*!40000 ALTER TABLE `co_applicant_work_details` DISABLE KEYS */;
INSERT INTO `co_applicant_work_details` VALUES (1,1,'N/A',NULL,NULL,NULL,'ent serzen','2013-05-28','15:04:23','self','','','','',16,0,'JEEVANRAM SHIROOR SHETTY',NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-05-28 09:37:18','2013-05-28 09:37:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',5);
/*!40000 ALTER TABLE `co_applicant_work_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_applicants`
--

DROP TABLE IF EXISTS `co_applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_applicants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_required` tinyint(1) DEFAULT NULL,
  `fh_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `d_o_b` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_ref_no` int(11) DEFAULT NULL,
  `pincode_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_applicants`
--

LOCK TABLES `co_applicants` WRITE;
/*!40000 ALTER TABLE `co_applicants` DISABLE KEYS */;
INSERT INTO `co_applicants` VALUES (1,'JEEVANRAM SHIROOR SHETTY','Scorp Enterprises',0,'334','','INDIA','mh','mumbai','jeevanram-shiroor-shetty','awaiting_to_get_verified',3,'F-601, REDWOODS, VASANTH GARDEN, MULUND WEST, MUMBAI 400080\r\n21641879	9820071031\r\n',19.076,72.8777,NULL,'2013-05-28 07:12:17','2013-05-28 07:12:17',NULL,334,75),(2,'JEEVANRAM SHIROOR SHETTY','Scorp Enterprises',0,'334','','INDIA','mh','mumbai','jeevanram-shiroor-shetty','ready_for_verification',3,'F-601, REDWOODS, VASANTH GARDEN, MULUND WEST, MUMBAI 400080\r\n21641879	9820071031\r\n',19.076,72.8777,NULL,'2013-05-28 07:12:17','2013-05-28 07:12:17',NULL,334,75),(3,'PUNEET CHUNILAL KATARIA','Scorp Enterprises',0,'335','','INDIA','mh','mumbai','puneet-chunilal-kataria','verified',4,'C-3 201, VEENASAGAR VEENA NAGAR, LBS MARG, MULUND WEST, MUMBAI 400080\r\n21640004	9323945251\r\n',19.076,72.8777,NULL,'2013-05-28 07:19:13','2013-05-28 07:19:13',NULL,335,75);
/*!40000 ALTER TABLE `co_applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_documents`
--

DROP TABLE IF EXISTS `customer_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `servey_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_documents`
--

LOCK TABLES `customer_documents` WRITE;
/*!40000 ALTER TABLE `customer_documents` DISABLE KEYS */;
INSERT INTO `customer_documents` VALUES (1,2,NULL,NULL,'2013-05-28 07:01:21','2013-05-28 07:01:21',1),(2,1,NULL,NULL,'2013-05-28 07:05:47','2013-05-28 07:05:47',2),(3,4,NULL,NULL,'2013-05-28 08:54:30','2013-05-28 08:54:30',3),(4,3,NULL,NULL,'2013-05-28 09:40:13','2013-05-28 09:40:13',4),(5,5,NULL,NULL,'2013-05-28 11:29:14','2013-05-28 11:29:14',5);
/*!40000 ALTER TABLE `customer_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_verifications`
--

DROP TABLE IF EXISTS `customer_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_verifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `verify_co_applicant_address_1` tinyint(1) DEFAULT NULL,
  `verify_co_applicant_address_2` tinyint(1) DEFAULT NULL,
  `work_servey_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_verifications`
--

LOCK TABLES `customer_verifications` WRITE;
/*!40000 ALTER TABLE `customer_verifications` DISABLE KEYS */;
INSERT INTO `customer_verifications` VALUES (1,1,1,5,'2013-05-26 11:03:40','2013-05-26 11:03:40',NULL,NULL,NULL),(2,4,2,5,'2013-05-27 07:07:46','2013-05-27 07:07:46',NULL,NULL,NULL),(3,4,3,5,'2013-05-28 07:11:00','2013-05-28 07:11:00',NULL,NULL,NULL),(4,4,4,5,'2013-05-28 07:17:58','2013-05-28 07:17:58',NULL,NULL,NULL),(5,4,5,5,'2013-05-28 07:58:47','2013-05-28 07:58:48',NULL,NULL,NULL),(6,4,5,5,'2013-05-28 07:58:48','2013-05-28 07:58:48',NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_ref_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fh_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `applicant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `landmark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_o_b` date DEFAULT NULL,
  `pincode_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `gmaps` tinyint(1) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `country_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snapshot` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degree_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_required` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'1001','Scorp Enterprises','1001','Haidar MIrza','12/03 , sahi hotel , chembur -east','McDonalds','1978-05-26',67,'2013-05-26 10:30:27','2013-05-26 10:30:27','haidar-mirza',19.0328,72.8964,NULL,NULL,'verified',NULL,'Maharashtra','Mumbai','INDIA',NULL,NULL,0),(2,'0333','Scorp Enterprises','0333','SHYAM P AWASTHI','904-905, GOLDEN RAYS SHASTRI NAGAR LANE 2,  LOKHANDWALA, ANDHERI EAST, , BEHIND FAME ADLABS, MUMBAI 400057\r\n9820494114/9820499112\r\n','fame adlabs','1979-05-11',53,'2013-05-27 07:07:03','2013-05-27 07:07:03','shyam-p-awasthi',NULL,NULL,NULL,NULL,'verified',NULL,'maharashtra','mumbai','INDIA',NULL,NULL,0),(3,'334','Scorp Enterprises','334','RITIKA JEEVANRAM SHETTY','F-601, REDWOODS, VASANTH GARDEN, MULUND WEST, MUMBAI 400080\r\n21641879	9833566129\r\n','','1963-05-28',75,'2013-05-28 07:10:36','2013-05-28 07:10:36','ritika-jeevanram-shetty',19.076,72.8777,NULL,NULL,'verified',NULL,'maharashtra','mumbai','INDIA',NULL,NULL,0),(4,'335','Scorp Enterprises','335','CHUNILAL NARSI KATARIA','C-3 201, VEENASAGAR VEENA NAGAR, LBS MARG, MULUND WEST, MUMBAI 400080\r\n21640004	9323945251\r\n','','1983-03-28',75,'2013-05-28 07:17:52','2013-05-28 07:17:52','chunilal-narsi-kataria',19.076,72.8777,NULL,NULL,'verified',NULL,'mh','mumbai','INDIA',NULL,NULL,0),(5,'336','Scorp Enterprises','336','PRASAD VILAS KHEDKAR','A-2, TRIMURTI CO-OP HSG SOC. GAVANPADA, 60 FT ROAD, MULUND , NEAR HOLY ANGEL SCHOOL, MUMBAI 400081\r\n9867723701/9768123701\r\n','','1967-05-28',76,'2013-05-28 07:58:38','2013-05-28 07:58:38','prasad-vilas-khedkar',NULL,NULL,NULL,NULL,'awaiting_to_get_verified',NULL,'mh','','INDIA',NULL,NULL,0);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headshot_photos`
--

DROP TABLE IF EXISTS `headshot_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `headshot_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `capturable_id` int(11) DEFAULT NULL,
  `capturable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headshot_photos`
--

LOCK TABLES `headshot_photos` WRITE;
/*!40000 ALTER TABLE `headshot_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `headshot_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_assets`
--

DROP TABLE IF EXISTS `office_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `office_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_assets`
--

LOCK TABLES `office_assets` WRITE;
/*!40000 ALTER TABLE `office_assets` DISABLE KEYS */;
INSERT INTO `office_assets` VALUES (1,'Telephones','2013-05-26 10:13:33','2013-05-26 10:13:33'),(2,'Computer','2013-05-26 10:13:33','2013-05-26 10:13:33'),(3,'Fax','2013-05-26 10:13:33','2013-05-26 10:13:33'),(4,'AC','2013-05-26 10:13:33','2013-05-26 10:13:33'),(5,'Photocopier','2013-05-26 10:13:34','2013-05-26 10:13:34');
/*!40000 ALTER TABLE `office_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pincodes`
--

DROP TABLE IF EXISTS `pincodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pincodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_number` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pincodes`
--

LOCK TABLES `pincodes` WRITE;
/*!40000 ALTER TABLE `pincodes` DISABLE KEYS */;
INSERT INTO `pincodes` VALUES (1,'Fort',400001,'2013-05-26 10:13:34','2013-05-26 10:13:34'),(2,'Kalbadevi',400002,'2013-05-26 10:13:34','2013-05-26 10:13:34'),(3,'Masjid(e)',400003,'2013-05-26 10:13:34','2013-05-26 10:13:34'),(4,'Girgaum',400004,'2013-05-26 10:13:34','2013-05-26 10:13:34'),(5,'Colaba',400005,'2013-05-26 10:13:34','2013-05-26 10:13:34'),(6,'Malabar hill',400006,'2013-05-26 10:13:34','2013-05-26 10:13:34'),(7,'Grant Road',400007,'2013-05-26 10:13:34','2013-05-26 10:13:34'),(8,'Mumbai Central',400008,'2013-05-26 10:13:34','2013-05-26 10:13:34'),(9,'Masjid(w)',400009,'2013-05-26 10:13:34','2013-05-26 10:13:34'),(10,'Mazgaon',400010,'2013-05-26 10:13:34','2013-05-26 10:13:34'),(11,'Jacob Circle',400011,'2013-05-26 10:13:34','2013-05-26 10:13:34'),(12,'lalbaug',400012,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(13,'delisle road',400013,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(14,'Dadar',400014,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(15,'Sewree',400015,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(16,'Mahim',400016,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(17,'Dharavi',400017,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(18,'Worli',400018,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(19,'Matunga Central',400019,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(20,'Churchgate',400020,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(21,'Nariman Point',400021,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(22,'Sion',400022,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(23,'Dalal Street',400023,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(24,'Kurla',400024,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(25,'Prabhadevi',400025,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(26,'Fort',400026,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(27,'Byculla(e)',400027,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(28,'Dadar',400028,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(29,'Santacruz(e)',400029,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(30,'PGMS Office',400030,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(31,'Wadala',400031,'2013-05-26 10:13:35','2013-05-26 10:13:35'),(32,'Mantralaya',400032,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(33,'Cotton Green',400033,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(34,'Haji Ali',400034,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(35,'Raj Bhavan',400035,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(36,'Kemps corner',400036,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(37,'Antop hill',400037,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(38,'Ballard Pier',400038,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(39,'Ballard Estate',400039,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(40,'Jogeshwari(e)',400041,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(41,'Bhandup',400042,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(42,'Mankhurd',400043,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(43,'Vile Parle(e)',400047,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(44,'Andheri(w)',400048,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(45,'Andheri(w)',400049,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(46,'bandra',400050,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(47,'Khar',400051,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(48,'Khar',400052,'2013-05-26 10:13:36','2013-05-26 10:13:36'),(49,'Andheri(w)',400053,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(50,'Santacruz(w)',400054,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(51,'Santacruz(e)',400055,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(52,'Vile parle(w)',400056,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(53,'Vile Parle(e)',400057,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(54,'Andheri(e)',400058,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(55,'Andheri(w)',400059,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(56,'Jogeshwari(e)',400060,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(57,'Andheri(w)',400061,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(58,'Goregaon(w)',400062,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(59,'Goregaon(e)',400063,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(60,'Malad(w)',400064,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(61,'Goregoan(e)',400065,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(62,'Borivali(e)',400066,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(63,'Kandivali(w)',400067,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(64,'Dahisar',400068,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(65,'Andheri(e)',400069,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(66,'Kurla',400070,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(67,'Chembur',400071,'2013-05-26 10:13:37','2013-05-26 10:13:37'),(68,'Andheri(e)',400072,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(69,'Chembur',400074,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(70,'Ghatkopar',400075,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(71,'Powai',400076,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(72,'Ghatkopar',400077,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(73,'Bhandup',400078,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(74,'Vikroli',400079,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(75,'Mulund',400080,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(76,'Mulund',400081,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(77,'Mulund',400082,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(78,'Vikroli',400083,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(79,'Ghatkopar',400084,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(80,'Ghatkopar',400086,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(81,'Niete',400087,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(82,'Deonar',400088,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(83,'Chembur',400089,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(84,'Goregaon(w)',400090,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(85,'Borivali(w)',400091,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(86,'Borivali(w)',400092,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(87,'Andheri(e)',400093,'2013-05-26 10:13:38','2013-05-26 10:13:38'),(88,'Malad(e)',400097,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(89,'Santacruz(e)',400098,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(90,'Andheri(e)',400099,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(91,'Kandivali(e)',400101,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(92,'Jogeshwari(w)',400102,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(93,'Borivali(w)',400103,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(94,'Goregaon(w)',400104,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(95,'Bhayandar(e)',400105,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(96,'Goregaon(w)',400106,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(97,'Thane',400601,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(98,'Thane',400602,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(99,'Thane',400603,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(100,'Thane',400604,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(101,'Kalwa',400605,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(102,'Thane',400606,'2013-05-26 10:13:39','2013-05-26 10:13:39'),(103,'Thane',400607,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(104,'Thane',400608,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(105,'Mumbra',400612,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(106,'Turbhe',400613,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(107,'CBD',400614,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(108,'Ghansoli',400701,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(109,'Uran',400702,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(110,'Vashi',400703,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(111,'Vashi',400704,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(112,'Vashi',400705,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(113,'Nerul',400706,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(114,'Airoli',400708,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(115,'KK',400709,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(116,'KK',400710,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(117,'Bhayandar(w)',401101,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(118,'Umparpada',401102,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(119,'Dahanu(w)',401103,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(120,'Mira Road(e)',401104,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(121,'Bhayandar(e)',401105,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(122,'Bhayandar(w)',401106,'2013-05-26 10:13:40','2013-05-26 10:13:40'),(123,'Mira Road(e)',401107,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(124,'Vasai(w)',401201,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(125,'Vasai(w)',401202,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(126,'Nalasopara(w)',401203,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(127,'Virar(e)',401204,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(128,'Vasai(e)',401205,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(129,'Virar(e)',401206,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(130,'Vasai(w)',401207,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(131,'Vasai(e)',401208,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(132,'NalaSopara(e)',401209,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(133,'Vasai(e)',401210,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(134,'Virar(w)',401301,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(135,'Virar(w)',401302,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(136,'Virar(e)',401303,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(137,'Vasai(w)',401304,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(138,'Palghar(e)',401404,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(139,'Palghar(w)',401501,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(140,'Palghar(w)',401502,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(141,'Dahanu(w)',401503,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(142,'Palghar(w)',401504,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(143,'Palghar(w)',401506,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(144,'Dahanu(e)',401601,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(145,'Dahanu(e)',401602,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(146,'Dahanu(e)',401606,'2013-05-26 10:13:41','2013-05-26 10:13:41'),(147,'Dahanu',401608,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(148,'Dahanu(w)',401701,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(149,'Panvel',410206,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(150,'Panvel',410208,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(151,'Kamothe',410209,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(152,'Kharghar',410210,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(153,'Kalamboli',410218,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(154,'Ulhasnagar',421001,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(155,'Ulhasnagar',421002,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(156,'Ulhasnagar',421003,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(157,'Ulhasnagar',421004,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(158,'Ulhasnagar',421005,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(159,'Ambivali',421102,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(160,'Dombivali',421201,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(161,'Dombivali',421202,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(162,'Dombivali',421203,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(163,'Dombivali',421204,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(164,'Kalyan',421301,'2013-05-26 10:13:42','2013-05-26 10:13:42'),(165,'Bhiwandi',421302,'2013-05-26 10:13:43','2013-05-26 10:13:43'),(166,'Wada',421303,'2013-05-26 10:13:43','2013-05-26 10:13:43'),(167,'Kalyan',421304,'2013-05-26 10:13:43','2013-05-26 10:13:43'),(168,'Bhiwandi',421305,'2013-05-26 10:13:43','2013-05-26 10:13:43'),(169,'Kalyan',421306,'2013-05-26 10:13:43','2013-05-26 10:13:43'),(170,'Ambernath',421501,'2013-05-26 10:13:43','2013-05-26 10:13:43'),(171,'Ambernath',421502,'2013-05-26 10:13:43','2013-05-26 10:13:43'),(172,'Ambernath',421503,'2013-05-26 10:13:43','2013-05-26 10:13:43'),(173,'Ambernath',421505,'2013-05-26 10:13:43','2013-05-26 10:13:43'),(174,'Badlapur',421506,'2013-05-26 10:13:43','2013-05-26 10:13:43');
/*!40000 ALTER TABLE `pincodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_no_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_no_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `date_of_birth` date DEFAULT NULL,
  `verification_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hobbies` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'2013-05-26 10:20:42','2013-05-26 10:20:42','IMAG0163.jpg','image/jpeg',1061648,'1','9870240913','9833545243','B+','C-103, Sai Sneha complex, ramdev park, miraroad (east), thane -401107','1984-10-15',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(2,2,'2013-05-26 10:28:03','2013-05-26 10:28:03','IMG_9621.JPG','image/jpeg',3626490,'2','9870240910','9870123123','B+','14/14 Mig colony, vinoba bhave nagar, kurla(west), mumbai - 400070','1979-05-26',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(3,3,'2013-05-26 10:36:02','2013-05-26 10:36:02','IMG_2726.JPG','image/jpeg',766713,'3','9819379761','1452365289','B+','14/15, MIG Colony, kurla(west)','1981-05-26',NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(4,4,'2013-05-27 06:32:38','2013-05-27 06:32:38','Verifyme_logo.jpg','image/jpeg',4736,'4','2242900900','1234567890','b+','masjid bandar','2013-05-27',NULL,'');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20121108050113'),('20121111014921'),('20121111020805'),('20121111020814'),('20121114092826'),('20121114093314'),('20121114093417'),('20121115165104'),('20121115194842'),('20121118125934'),('20121122070559'),('20121122123643'),('20121122123645'),('20121126094231'),('20121126094232'),('20121126094239'),('20121126141903'),('20121126143154'),('20121126160813'),('20121126174242'),('20121129070048'),('20121206031732'),('20121206065704'),('20121218064623'),('20121220061108'),('20121223054206'),('20121228021633'),('20121228064349'),('20130103044350'),('20130121104340'),('20130123055339'),('20130123074819'),('20130212094650'),('20130212110541'),('20130304060051'),('20130308052936'),('20130311125858'),('20130313111633'),('20130316110736'),('20130326130658'),('20130327052222'),('20130327135901'),('20130327145104'),('20130327150217'),('20130331060529'),('20130331060559'),('20130331150243'),('20130401084246'),('20130414030557'),('20130414074407'),('20130416183520'),('20130419193909'),('20130419200114'),('20130423035906'),('20130423114122'),('20130423115328'),('20130427071118'),('20130427091152'),('20130427094620'),('20130428121417'),('20130428131836'),('20130428132246'),('20130428203443'),('20130428210553'),('20130429195922'),('20130429201924'),('20130520090122'),('20130520091101'),('20130523075207'),('20130529044558'),('20130529044620'),('20130529044907'),('20130529045009');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serveys`
--

DROP TABLE IF EXISTS `serveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `address_confirmed` tinyint(1) DEFAULT NULL,
  `name_and_stay_confirm` tinyint(1) DEFAULT NULL,
  `date_of_visit` date DEFAULT NULL,
  `time_of_visit` time DEFAULT NULL,
  `person_contacted` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation_with_applicant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `years_lived_at_current_address` int(11) DEFAULT NULL,
  `residence_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `educational_qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_family_members` int(11) DEFAULT NULL,
  `working_member` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `spouse_working` tinyint(1) DEFAULT NULL,
  `spouse_working_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_plate_seen` tinyint(1) DEFAULT NULL,
  `credit_card` tinyint(1) DEFAULT NULL,
  `card_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_limit` float DEFAULT NULL,
  `issuing_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `customer_beaviour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighbour_ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_varified_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_residence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality_of_residence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ease_of_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `construction_of_residence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments_of_exteriors` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carpet_area_in_sq_feet` float DEFAULT NULL,
  `interior_condition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_seen_at_residence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `potrait_on_wall` tinyint(1) DEFAULT NULL,
  `applicant_residing_detail` tinyint(1) DEFAULT NULL,
  `application_availibility_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_family_member_in_the_house` int(11) DEFAULT NULL,
  `verifiers_remark` text COLLATE utf8_unicode_ci,
  `accept_or_decline` tinyint(1) DEFAULT NULL,
  `refer_to_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serveys`
--

LOCK TABLES `serveys` WRITE;
/*!40000 ALTER TABLE `serveys` DISABLE KEYS */;
INSERT INTO `serveys` VALUES (1,2,5,1,1,'2013-05-28','12:28:41','self','self',NULL,NULL,'proffessional','Married',NULL,NULL,NULL,1,'',1,0,'',NULL,'','2013-05-28','Polite','+ve','name plate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,'',NULL,'Positive',NULL,'Accept','2013-05-28 07:01:21','2013-05-28 07:01:21',NULL),(2,1,5,1,NULL,'2013-05-28','12:35:17','gufgutfugcguctu','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'',0,0,'',NULL,'','2013-05-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,'',NULL,'',NULL,NULL,'2013-05-28 07:05:47','2013-05-28 07:05:47',NULL),(3,4,5,1,1,'2013-05-28','14:11:35','rajni katariya','wife',27,NULL,NULL,NULL,4,2,0,0,'',1,0,'',NULL,'','2013-05-28','Polite','+ve','name plate','Flat','Posh locality','easy','pakka','compound wall',NULL,'sofa','tv',0,0,'',3,'Ele bill no.000093194071,wife name, pan.no.aagpk2632j 21-08-51,home loan  20 lack',NULL,'Accept','2013-05-28 08:54:30','2013-05-28 08:54:30',NULL),(4,3,5,1,1,'2013-05-28','15:07:28','jeevan','dad',12,'Owned By Parents',NULL,'Unmarried',NULL,NULL,NULL,0,'',0,0,'',NULL,'','2013-05-28',NULL,NULL,NULL,'Flat','Posh locality','easy','pakka',NULL,NULL,'sofa','',0,0,'',NULL,'Dqhps1003k.11-12-89.... edu.be',NULL,'Accept','2013-05-28 09:40:13','2013-05-28 09:40:13',NULL),(5,5,5,NULL,NULL,'2013-05-28','16:58:15','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'',0,0,'',NULL,'','2013-05-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,'',NULL,'Done in paper',NULL,NULL,'2013-05-28 11:29:14','2013-05-28 11:29:14',NULL);
/*!40000 ALTER TABLE `serveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabs`
--

DROP TABLE IF EXISTS `tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tab_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mac_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabs`
--

LOCK TABLES `tabs` WRITE;
/*!40000 ALTER TABLE `tabs` DISABLE KEYS */;
INSERT INTO `tabs` VALUES (1,'TAB-ANDHERI','T0102030','2013-05-26 10:13:34','2013-05-26 10:13:34',NULL,NULL,NULL),(2,'TAB-JOGESHWARI','T0102031','2013-05-26 10:13:34','2013-05-26 10:13:34',NULL,NULL,NULL),(3,'TAB-GOREGAON','T0102032','2013-05-26 10:13:34','2013-05-26 10:13:34',NULL,NULL,NULL),(4,'TAB-MALAD','T0102033','2013-05-26 10:13:34','2013-05-26 10:13:34',NULL,NULL,NULL),(5,'TAB-VIKROLI','T0102034','2013-05-26 10:13:34','2013-05-26 10:13:34',NULL,NULL,NULL),(6,'TAB-SION','T0102035','2013-05-26 10:13:34','2013-05-26 10:13:34',NULL,NULL,NULL),(7,'TAB-MAHAKALI','T3434890','2013-05-26 10:13:34','2013-05-26 10:13:34',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sudhirsb2003@gmail.com','$2a$10$xFNOPoPAd/r7ZPHNEv3quePukPvMz76veGEMPWCvcyGEsxlDQLGZC',NULL,NULL,NULL,16,'2013-05-29 05:00:29','2013-05-29 04:23:18','61.16.181.41','61.16.181.41','2013-05-26 10:16:51','2013-05-29 05:00:29','super_user','Sudhir Vishwakarma',NULL),(2,'blazetango@gmail.com','$2a$10$XHZA8HbgKOZt172/Ek93nOEcB9iVKwmQFa4qEpNrcQcjGJjchZaQm',NULL,NULL,'2013-05-28 07:37:55',20,'2013-05-29 04:43:50','2013-05-29 04:10:11','115.240.130.28','115.247.42.23','2013-05-26 10:17:31','2013-05-29 04:43:50','tab_user','Chetan Tandel',5),(3,'tinesh@gmail.com','$2a$10$NEz7WhuAswouFtwTjS0GWem2nqbV5zirt0rYSOVPmtkKvsLyGnXEy',NULL,NULL,NULL,1,'2013-05-26 10:34:18','2013-05-26 10:34:18','58.146.118.78','58.146.118.78','2013-05-26 10:18:01','2013-05-26 10:34:18','tab_user','Tinesh Bhasin',1),(4,'avcv@scorpeo.in','$2a$10$VWavb6jqBwTwvW.p9Y0U/eAJ9J1F7JCFUA0C1E9C9raFfOayt0tKi',NULL,NULL,NULL,9,'2013-05-28 15:05:35','2013-05-28 13:39:30','122.179.141.120','59.184.62.194','2013-05-27 06:17:28','2013-05-28 15:05:35','super_user','DATA ENTRY',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webcam_pictures`
--

DROP TABLE IF EXISTS `webcam_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webcam_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snapshot` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `servey_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webcam_pictures`
--

LOCK TABLES `webcam_pictures` WRITE;
/*!40000 ALTER TABLE `webcam_pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `webcam_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_servey_verifications`
--

DROP TABLE IF EXISTS `work_servey_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_servey_verifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `work_servey_id` int(11) DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_servey_verifications`
--

LOCK TABLES `work_servey_verifications` WRITE;
/*!40000 ALTER TABLE `work_servey_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_servey_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_serveys`
--

DROP TABLE IF EXISTS `work_serveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_serveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_id` int(11) DEFAULT NULL,
  `office_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `name_and_employee_confirm` tinyint(1) DEFAULT NULL,
  `applicant_designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `date_of_visit` date DEFAULT NULL,
  `time_of_visit` time DEFAULT NULL,
  `person_met` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation_of_person_met` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_years_in_present_employment` int(11) DEFAULT NULL,
  `visiting_card_obtained` tinyint(1) DEFAULT NULL,
  `name_of_the_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_business` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nature_of_business` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nob_in_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_ownership` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_employees` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_branches` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `average_monthly_turn_over` float DEFAULT NULL,
  `no_of_customer_per_date` int(11) DEFAULT NULL,
  `type_of_job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `working_as` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_transferable` tinyint(1) DEFAULT NULL,
  `salary_drawn` float DEFAULT NULL,
  `no_of_years_worked` float DEFAULT NULL,
  `board_seen` tinyint(1) DEFAULT NULL,
  `name_verified_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_office` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality_of_office` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `construction_of_office` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exterior` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interior` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_area` float DEFAULT NULL,
  `ease_of_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_employees_sighted` int(11) DEFAULT NULL,
  `no_of_customer_seen` int(11) DEFAULT NULL,
  `political_party` tinyint(1) DEFAULT NULL,
  `no_of_item_seen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verifier_remark` text COLLATE utf8_unicode_ci,
  `positive` tinyint(1) DEFAULT NULL,
  `refer_to_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `verifier_signature` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pincode_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `company_name_new` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_serveys`
--

LOCK TABLES `work_serveys` WRITE;
/*!40000 ALTER TABLE `work_serveys` DISABLE KEYS */;
INSERT INTO `work_serveys` VALUES (1,1,'N/A',NULL,NULL,1,'Rails Developer','2013-05-26','16:35:05','Saurabh Bhatia','CEO','98464935353','122','9870240913',2,1,'abcd corporation ltd.','Public Ltd.','Professional',NULL,'Owned','12','2',34323,3,'Contract Worker','Senior/Middle Manager',1,NULL,NULL,1,'Colleage','Business Center','Business Center','Pukka','Good','Painted',NULL,'Easy','High',4,55,NULL,NULL,NULL,NULL,'Negative',NULL,NULL,'2013-05-26 11:07:49','2013-05-26 11:07:49',NULL,NULL,'ready_for_verification',5,'');
/*!40000 ALTER TABLE `work_serveys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-29 11:25:27
