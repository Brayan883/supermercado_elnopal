-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: db_elnopal
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add backup',7,'add_backup'),(26,'Can change backup',7,'change_backup'),(27,'Can delete backup',7,'delete_backup'),(28,'Can view backup',7,'view_backup'),(29,'Can add Marca',8,'add_brand'),(30,'Can change Marca',8,'change_brand'),(31,'Can delete Marca',8,'delete_brand'),(32,'Can view Marca',8,'view_brand'),(33,'Can add Compra',9,'add_buy'),(34,'Can change Compra',9,'change_buy'),(35,'Can delete Compra',9,'delete_buy'),(36,'Can view Compra',9,'view_buy'),(37,'Can add Categoría',10,'add_category'),(38,'Can change Categoría',10,'change_category'),(39,'Can delete Categoría',10,'delete_category'),(40,'Can view Categoría',10,'view_category'),(41,'Can add Proveedor',11,'add_provider'),(42,'Can change Proveedor',11,'change_provider'),(43,'Can delete Proveedor',11,'delete_provider'),(44,'Can view Proveedor',11,'view_provider'),(45,'Can add Subcategoría',12,'add_subcategory'),(46,'Can change Subcategoría',12,'change_subcategory'),(47,'Can delete Subcategoría',12,'delete_subcategory'),(48,'Can view Subcategoría',12,'view_subcategory'),(49,'Can add Venta',13,'add_sale'),(50,'Can change Venta',13,'change_sale'),(51,'Can delete Venta',13,'delete_sale'),(52,'Can view Venta',13,'view_sale'),(53,'Can add Producto',14,'add_product'),(54,'Can change Producto',14,'change_product'),(55,'Can delete Producto',14,'delete_product'),(56,'Can view Producto',14,'view_product'),(57,'Can add Detalle de venta',15,'add_detailsale'),(58,'Can change Detalle de venta',15,'change_detailsale'),(59,'Can delete Detalle de venta',15,'delete_detailsale'),(60,'Can view Detalle de venta',15,'view_detailsale'),(61,'Can add Detalle de compra',16,'add_detailbuy'),(62,'Can change Detalle de compra',16,'change_detailbuy'),(63,'Can delete Detalle de compra',16,'delete_detailbuy'),(64,'Can view Detalle de compra',16,'view_detailbuy'),(65,'Can add Usuario',17,'add_user'),(66,'Can change Usuario',17,'change_user'),(67,'Can delete Usuario',17,'delete_user'),(68,'Can view Usuario',17,'view_user');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'management','backup'),(8,'management','brand'),(9,'management','buy'),(10,'management','category'),(16,'management','detailbuy'),(15,'management','detailsale'),(14,'management','product'),(11,'management','provider'),(13,'management','sale'),(12,'management','subcategory'),(17,'personal','user'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-09-15 04:08:25.452044'),(2,'auth','0001_initial','2022-09-15 04:08:25.964748'),(3,'admin','0001_initial','2022-09-15 04:08:26.183351'),(4,'admin','0002_logentry_remove_auto_add','2022-09-15 04:08:26.194037'),(5,'admin','0003_logentry_add_action_flag_choices','2022-09-15 04:08:26.202935'),(6,'contenttypes','0002_remove_content_type_name','2022-09-15 04:08:26.345342'),(7,'auth','0002_alter_permission_name_max_length','2022-09-15 04:08:26.410323'),(8,'auth','0003_alter_user_email_max_length','2022-09-15 04:08:26.436209'),(9,'auth','0004_alter_user_username_opts','2022-09-15 04:08:26.445233'),(10,'auth','0005_alter_user_last_login_null','2022-09-15 04:08:26.497793'),(11,'auth','0006_require_contenttypes_0002','2022-09-15 04:08:26.500653'),(12,'auth','0007_alter_validators_add_error_messages','2022-09-15 04:08:26.507520'),(13,'auth','0008_alter_user_username_max_length','2022-09-15 04:08:26.568904'),(14,'auth','0009_alter_user_last_name_max_length','2022-09-15 04:08:26.652305'),(15,'auth','0010_alter_group_name_max_length','2022-09-15 04:08:26.675129'),(16,'auth','0011_update_proxy_permissions','2022-09-15 04:08:26.682974'),(17,'auth','0012_alter_user_first_name_max_length','2022-09-15 04:08:26.756351'),(18,'personal','0001_initial','2022-09-15 04:08:26.782516'),(19,'management','0001_initial','2022-09-15 04:08:27.623405'),(20,'sessions','0001_initial','2022-09-15 04:08:27.665041');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_backup`
--

DROP TABLE IF EXISTS `management_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_backup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `file` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_backup`
--

LOCK TABLES `management_backup` WRITE;
/*!40000 ALTER TABLE `management_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_brand`
--

DROP TABLE IF EXISTS `management_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_brand`
--

LOCK TABLES `management_brand` WRITE;
/*!40000 ALTER TABLE `management_brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_buy`
--

DROP TABLE IF EXISTS `management_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_buy` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `payment` varchar(11) NOT NULL,
  `finalPrice` int NOT NULL,
  `status` varchar(10) NOT NULL,
  `statusBuy` tinyint(1) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `management_buy_user_id_5af824ba_fk_management_provider_id` (`user_id`),
  CONSTRAINT `management_buy_user_id_5af824ba_fk_management_provider_id` FOREIGN KEY (`user_id`) REFERENCES `management_provider` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_buy`
--

LOCK TABLES `management_buy` WRITE;
/*!40000 ALTER TABLE `management_buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_category`
--

DROP TABLE IF EXISTS `management_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_category`
--

LOCK TABLES `management_category` WRITE;
/*!40000 ALTER TABLE `management_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_detailbuy`
--

DROP TABLE IF EXISTS `management_detailbuy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_detailbuy` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` int unsigned NOT NULL,
  `total` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `buy_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `management_detailbuy_buy_id_7d0fea02_fk_management_buy_id` (`buy_id`),
  KEY `management_detailbuy_product_id_969ed468_fk_managemen` (`product_id`),
  CONSTRAINT `management_detailbuy_buy_id_7d0fea02_fk_management_buy_id` FOREIGN KEY (`buy_id`) REFERENCES `management_buy` (`id`),
  CONSTRAINT `management_detailbuy_product_id_969ed468_fk_managemen` FOREIGN KEY (`product_id`) REFERENCES `management_product` (`id`),
  CONSTRAINT `management_detailbuy_chk_1` CHECK ((`amount` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_detailbuy`
--

LOCK TABLES `management_detailbuy` WRITE;
/*!40000 ALTER TABLE `management_detailbuy` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_detailbuy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_detailsale`
--

DROP TABLE IF EXISTS `management_detailsale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_detailsale` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` int unsigned NOT NULL,
  `total` int NOT NULL,
  `status` varchar(10) NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `sale_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `management_detailsal_product_id_f9ec7606_fk_managemen` (`product_id`),
  KEY `management_detailsale_sale_id_02f46b66_fk_management_sale_id` (`sale_id`),
  CONSTRAINT `management_detailsal_product_id_f9ec7606_fk_managemen` FOREIGN KEY (`product_id`) REFERENCES `management_product` (`id`),
  CONSTRAINT `management_detailsale_sale_id_02f46b66_fk_management_sale_id` FOREIGN KEY (`sale_id`) REFERENCES `management_sale` (`id`),
  CONSTRAINT `management_detailsale_chk_1` CHECK ((`amount` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_detailsale`
--

LOCK TABLES `management_detailsale` WRITE;
/*!40000 ALTER TABLE `management_detailsale` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_detailsale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_product`
--

DROP TABLE IF EXISTS `management_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `description` longtext NOT NULL,
  `unitMeasurement` varchar(30) NOT NULL,
  `stock` int unsigned DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `brand_id` bigint DEFAULT NULL,
  `subcategory_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `management_product_brand_id_bb713917_fk_management_brand_id` (`brand_id`),
  KEY `management_product_subcategory_id_49f8da34_fk_managemen` (`subcategory_id`),
  CONSTRAINT `management_product_brand_id_bb713917_fk_management_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `management_brand` (`id`),
  CONSTRAINT `management_product_subcategory_id_49f8da34_fk_managemen` FOREIGN KEY (`subcategory_id`) REFERENCES `management_subcategory` (`id`),
  CONSTRAINT `management_product_chk_1` CHECK ((`stock` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_product`
--

LOCK TABLES `management_product` WRITE;
/*!40000 ALTER TABLE `management_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_provider`
--

DROP TABLE IF EXISTS `management_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_provider` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_provider`
--

LOCK TABLES `management_provider` WRITE;
/*!40000 ALTER TABLE `management_provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_sale`
--

DROP TABLE IF EXISTS `management_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_sale` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `client` varchar(50) NOT NULL,
  `nDocument` varchar(20) NOT NULL,
  `address` varchar(254) NOT NULL,
  `typeSale` varchar(9) NOT NULL,
  `finalPrice` int NOT NULL,
  `payment` varchar(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `statusSale` tinyint(1) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `management_sale_user_id_761c82a5_fk_personal_user_id` (`user_id`),
  CONSTRAINT `management_sale_user_id_761c82a5_fk_personal_user_id` FOREIGN KEY (`user_id`) REFERENCES `personal_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_sale`
--

LOCK TABLES `management_sale` WRITE;
/*!40000 ALTER TABLE `management_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_subcategory`
--

DROP TABLE IF EXISTS `management_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_subcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `management_subcatego_category_id_a4264a4b_fk_managemen` (`category_id`),
  CONSTRAINT `management_subcatego_category_id_a4264a4b_fk_managemen` FOREIGN KEY (`category_id`) REFERENCES `management_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_subcategory`
--

LOCK TABLES `management_subcategory` WRITE;
/*!40000 ALTER TABLE `management_subcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_user`
--

DROP TABLE IF EXISTS `personal_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `tDocument` varchar(21) NOT NULL,
  `nDocument` int NOT NULL,
  `phone` varchar(10) NOT NULL,
  `dateBirth` date NOT NULL,
  `email` varchar(254) NOT NULL,
  `user_admin` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_user`
--

LOCK TABLES `personal_user` WRITE;
/*!40000 ALTER TABLE `personal_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-14 23:11:23
