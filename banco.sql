-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: banco
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(75) NOT NULL,
  `apellido` varchar(75) NOT NULL,
  `telefono` varchar(8) NOT NULL,
  `correo` varchar(85) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Caleb','Stewart','57543123','auctor@Duiscursus.org','2020-07-07 17:48:24','2020-05-20 20:03:12'),(2,'Troy','Hendricks','14858756','Aenean@risus.com','2020-09-28 21:17:51','2021-08-09 08:57:12'),(3,'Nora','Wooten','46887978','mi.Aliquam.gravida@metusurna.co.uk','2020-08-17 10:26:20','2020-02-09 11:22:56'),(4,'Leigh','Benton','60772660','purus.mauris.a@sociis.org','2019-10-08 23:29:52','2019-12-10 01:38:34'),(5,'Hu','Joseph','75097028','sed.libero.Proin@nondapibus.co.uk','2019-11-22 22:40:20','2021-07-07 08:32:21'),(6,'Kirk','Snider','82497678','tellus@Aeneaneuismodmauris.net','2021-06-27 01:24:06','2021-08-16 13:11:41'),(7,'Wylie','Estes','59942745','ante.ipsum.primis@In.org','2021-04-28 21:45:22','2020-03-26 01:12:51'),(8,'Jaden','Hoffman','91471748','laoreet.posuere@dictumplacerat.co.uk','2020-03-18 22:12:46','2021-09-04 13:04:18'),(9,'Joshua','Herring','54484553','Nam.nulla@magna.net','2020-12-26 04:46:21','2020-02-27 02:50:42'),(10,'Kamal','Holden','85300273','odio.Phasellus@nisiAenean.com','2021-06-14 03:09:28','2020-05-09 06:04:01'),(11,'Grady','White','32837177','egestas@cursuset.net','2021-08-22 13:07:00','2021-07-18 17:32:00'),(12,'Denton','Mcfadden','37857564','a.auctor.non@semperpretiumneque.co.uk','2021-11-23 01:12:09','2020-08-24 14:20:31'),(13,'Nora','Craig','57999556','odio@Inmipede.net','2021-05-13 19:28:45','2021-01-06 02:09:01'),(14,'Colt','Cotton','13160816','semper.pretium@erategetipsum.org','2019-11-28 13:11:59','2020-08-03 21:16:37'),(15,'Xavier','Hardin','86413559','tellus@vel.edu','2020-08-11 08:21:08','2019-11-04 13:30:11'),(16,'Kelsey','Morris','81977398','tincidunt.nibh@nullaCraseu.co.uk','2019-11-25 16:40:08','2021-02-21 01:06:28'),(17,'Leslie','Weber','54581409','nulla@ultriciesornare.net','2021-03-24 16:44:46','2020-01-09 16:01:06'),(18,'Oren','Carr','82784141','non.enim.commodo@neque.edu','2021-02-15 15:07:13','2021-05-27 03:16:51'),(19,'Emma','Leon','96434717','dolor@neque.org','2021-03-28 07:30:24','2021-09-05 14:42:26'),(20,'Gray','Clay','10759081','Morbi@elitEtiam.com','2020-06-11 10:57:55','2021-11-20 01:34:25'),(21,'Quinn','Russell','46775476','semper.et@magna.org','2020-08-14 04:37:20','2020-01-27 16:01:56'),(22,'McKenzie','Browning','91480544','est.ac.facilisis@pede.co.uk','2021-09-17 05:21:49','2020-06-09 23:10:44'),(23,'Kasper','Montgomery','26520645','porttitor@afelis.org','2019-10-17 10:32:11','2020-01-12 07:12:07'),(24,'Hedwig','Warren','88868739','magna.Praesent@velit.ca','2021-03-23 21:39:51','2020-02-04 22:43:29'),(25,'Driscoll','Santiago','26454705','Nam.tempor@Utnecurna.com','2020-05-09 02:04:56','2020-11-17 06:26:54'),(26,'Lane','Barnes','81999325','urna.nec@magnaa.com','2019-10-27 23:45:35','2021-05-22 04:07:33'),(27,'Jenna','Fox','30428935','Cras.vulputate@gravida.com','2021-05-31 00:12:10','2019-11-08 06:55:11'),(28,'Ivor','Hunter','64304627','malesuada.malesuada.Integer@mauriselitdictum.edu','2021-09-08 03:37:34','2019-11-07 18:42:47'),(29,'Iola','Graham','88816998','at.fringilla@sapien.net','2021-01-30 21:26:00','2021-11-07 10:37:07'),(30,'Garrison','Knowles','93109307','tempor.diam.dictum@aliquamarcu.net','2021-07-15 19:23:46','2021-04-25 21:59:57'),(31,'Owen','Harris','86175200','leo.elementum.sem@aauctor.edu','2021-08-28 18:49:41','2020-10-01 20:49:16'),(32,'Jemima','Barr','10857326','tortor@ultriciesornare.edu','2021-07-06 17:45:31','2020-01-29 22:37:37'),(33,'Kareem','Cote','23587805','Maecenas@erat.com','2021-04-26 00:14:06','2021-10-15 22:18:46'),(34,'Fitzgerald','Mays','30375653','leo@estmauris.ca','2021-07-22 17:52:17','2021-10-11 23:26:30'),(35,'Yoko','Carver','70702101','vehicula@porttitorscelerisque.edu','2020-01-14 16:44:04','2021-08-19 14:42:42'),(36,'Echo','Blevins','25080181','Quisque@Pellentesqueultriciesdignissim.co.uk','2020-02-06 08:31:54','2021-09-24 21:31:07'),(37,'Slade','Estrada','58531970','sapien.imperdiet.ornare@estNuncullamcorper.org','2020-02-13 01:15:31','2021-09-28 17:34:11'),(38,'Ralph','Frederick','67665926','Nullam.scelerisque@feugiat.ca','2019-12-28 16:20:15','2020-07-22 08:09:50'),(39,'Walker','Shaw','22362906','Nunc.laoreet@diam.net','2020-03-13 00:06:42','2020-06-25 10:26:40'),(40,'Cheryl','Obrien','97749149','metus@magnaetipsum.edu','2019-12-17 16:49:00','2021-03-05 06:42:31'),(41,'Wyatt','Harrington','75923786','pellentesque@Cras.ca','2021-11-08 03:57:18','2021-01-22 10:34:11'),(42,'Quentin','Fox','66126978','et.malesuada.fames@vitaesemper.org','2020-12-04 17:38:11','2021-10-04 04:12:20'),(43,'Ishmael','Rose','30377155','Donec.dignissim.magna@sed.net','2021-11-12 08:50:41','2021-09-02 08:06:09'),(44,'Seth','Kelly','03629590','tellus.justo@massa.com','2019-11-15 17:15:17','2020-08-29 23:07:17'),(45,'Marvin','Combs','67836404','lectus.Cum@Proinvel.org','2021-03-13 00:51:20','2021-10-27 10:45:58'),(46,'Nerea','Foley','72223826','aliquet@mollisvitae.ca','2020-11-10 21:38:23','2021-11-19 01:14:18'),(47,'Zorita','Kelley','24469290','ante@acmattis.net','2019-10-16 15:28:51','2021-08-12 21:50:39'),(48,'Kameko','Villarreal','46565531','parturient@et.org','2020-05-13 20:50:02','2021-04-27 19:47:45'),(49,'Branden','Griffith','29540975','ac.orci@antelectus.ca','2020-10-28 16:09:13','2020-10-20 21:24:45'),(50,'April','Morrow','16160750','elit.a@aliquet.com','2021-08-17 09:30:53','2021-07-06 10:18:23'),(51,'Cara','Wilkinson','33226982','mus.Donec@neque.co.uk','2020-09-06 16:41:50','2020-03-19 16:25:26'),(52,'Chadwick','Vazquez','76386561','ligula.Aenean@ullamcorpervelitin.edu','2020-06-28 10:17:02','2020-06-03 11:18:25'),(53,'Katelyn','Sanchez','03580314','Curabitur.dictum@inaliquetlobortis.co.uk','2019-11-17 09:14:46','2020-04-01 05:30:23'),(54,'Nina','Reynolds','59173299','a@vehiculaet.org','2021-11-14 14:34:15','2021-07-01 18:10:51'),(55,'Salvador','Olsen','82288531','Nunc.pulvinar@non.net','2020-12-24 11:26:58','2021-07-14 10:50:05'),(56,'Wylie','Ramos','22515382','eu.nulla@ultricesa.ca','2021-06-14 19:23:54','2021-03-21 22:42:27'),(57,'Philip','Gallagher','64459998','placerat@vitaeodio.edu','2020-03-04 23:36:20','2021-02-23 07:32:21'),(58,'Todd','Hartman','70178762','et.netus.et@Donecconsectetuer.com','2020-04-23 01:34:41','2021-03-16 04:35:12'),(59,'Quinlan','Davidson','46840082','in.dolor.Fusce@estNunc.com','2020-02-02 15:07:04','2021-06-18 11:49:06'),(60,'Stephanie','Ware','29745139','Integer.eu.lacus@nuncQuisqueornare.net','2019-10-15 22:18:49','2020-05-13 23:18:22'),(61,'Lars','Durham','75182250','et.nunc@parturientmontes.org','2021-04-26 02:31:33','2019-11-17 23:55:33'),(62,'Bert','Alford','52304296','felis@Duis.co.uk','2019-12-03 23:26:49','2021-07-20 00:44:26'),(63,'Ursa','Murray','03901184','ut@leoVivamus.edu','2021-01-18 10:58:26','2021-09-02 15:03:30'),(64,'Katell','Henderson','90356851','massa.Mauris.vestibulum@perconubia.co.uk','2019-11-04 02:04:55','2021-09-23 23:09:12'),(65,'Dorian','Jacobs','74836633','Vivamus@parturientmontes.co.uk','2021-02-28 01:35:26','2021-06-10 02:38:20'),(66,'Eaton','Carlson','71809738','ac.libero.nec@sed.com','2021-01-10 13:25:15','2020-02-06 20:00:57'),(67,'Ray','Larson','49387606','purus@nunc.co.uk','2020-02-17 21:33:49','2020-04-27 22:11:01'),(68,'Halee','Roy','99285622','mattis.Integer@eusemPellentesque.edu','2019-12-16 07:50:22','2020-07-22 20:51:33'),(69,'Fletcher','Hickman','56473291','ultricies.ligula.Nullam@Nunccommodoauctor.org','2021-06-14 05:33:26','2020-04-30 05:26:19'),(70,'Kaseem','Stafford','63369574','dolor.Quisque@ametorciUt.com','2020-02-19 10:33:50','2020-08-31 23:26:53'),(71,'Xenos','Olsen','29341507','scelerisque.mollis.Phasellus@urnaNunc.ca','2020-03-26 20:03:28','2020-09-23 14:53:31'),(72,'Mia','Langley','47282760','lobortis.quam@tristiquealiquetPhasellus.net','2020-02-15 16:47:03','2020-01-30 03:18:17'),(73,'Beatrice','Lester','03198187','aliquam.iaculis.lacus@nisinibhlacinia.ca','2021-08-05 11:32:05','2019-12-09 14:59:01'),(74,'September','Curtis','80305976','Vestibulum.accumsan@Nuncullamcorper.edu','2020-10-11 07:58:02','2020-02-23 11:37:20'),(75,'Lee','Barr','46918244','Duis.dignissim@conubianostra.com','2019-11-28 10:44:14','2020-07-04 15:11:09'),(76,'Chastity','Clarke','95637804','quis@aptenttaciti.net','2020-02-01 00:26:44','2021-11-15 07:21:21'),(77,'Avram','Warren','97745055','diam@ultriciessemmagna.edu','2019-10-23 19:18:55','2021-07-10 01:27:18'),(78,'Prescott','Rosales','06377645','Donec@augueSedmolestie.net','2020-09-01 09:03:21','2020-09-14 20:05:34'),(79,'Callie','Stout','20897808','iaculis.enim.sit@elitfermentumrisus.co.uk','2019-10-04 02:10:21','2020-07-24 14:18:27'),(80,'Kimberly','Tanner','72907855','diam@Nuncac.co.uk','2020-02-27 08:27:53','2019-12-10 19:41:12'),(81,'Ulla','Underwood','84115992','ipsum@magnaetipsum.co.uk','2021-11-14 17:53:58','2021-04-05 09:26:50'),(82,'Carly','Johnston','62443261','Morbi.sit@egestashendreritneque.com','2020-07-21 01:40:06','2021-01-29 17:42:31'),(83,'Bevis','Lloyd','64703480','felis.purus@risusMorbimetus.ca','2021-02-06 03:05:40','2020-05-14 08:50:32'),(84,'Hoyt','Morgan','21504143','nibh@mi.ca','2019-10-31 16:06:10','2021-04-19 05:09:01'),(85,'Phelan','Guerra','40989402','primis.in.faucibus@faucibusorciluctus.com','2021-03-29 02:27:08','2020-10-19 09:33:47'),(86,'Bethany','Wells','19426192','tellus.id@arcuVestibulum.ca','2021-07-31 02:46:44','2020-11-14 20:25:25'),(87,'Ignatius','Mcclure','94252332','dolor@ultricesposuerecubilia.co.uk','2020-10-25 16:34:24','2021-10-27 14:59:17'),(88,'Justine','Vincent','83595487','dictum@Donecfeugiatmetus.ca','2020-09-13 14:23:32','2021-03-09 16:51:23'),(89,'Quail','Dalton','67188015','aliquet@semperegestas.edu','2021-06-22 06:39:44','2019-11-04 16:37:19'),(90,'Angelica','Guthrie','14837518','quis.diam.Pellentesque@tristique.com','2021-01-03 16:02:22','2021-05-09 13:44:02'),(91,'Deborah','Conway','14419156','mus.Donec@elitCurabitur.co.uk','2021-01-16 09:36:24','2020-11-24 14:19:17'),(92,'Macey','Bernard','61262221','Nulla@egestas.com','2019-10-18 13:18:15','2020-01-10 21:01:17'),(93,'Brenda','Flynn','54448702','Nunc.mauris.Morbi@dolor.org','2021-02-21 02:47:57','2020-03-11 20:22:30'),(94,'Hunter','Lang','77234117','lectus.pede.et@ligulaelit.org','2021-11-10 06:42:39','2021-07-26 15:57:32'),(95,'Ashely','Nicholson','41163492','amet.faucibus@vel.com','2021-01-27 09:37:18','2021-01-17 08:55:12'),(96,'Montana','Bass','11294237','auctor.vitae.aliquet@semegestasblandit.net','2019-10-05 13:03:32','2020-11-10 04:20:43'),(97,'Taylor','Mckay','07024025','taciti.sociosqu.ad@interdumenimnon.co.uk','2020-01-20 08:56:29','2021-03-23 22:03:26'),(98,'Zoe','Watson','74529781','Integer@penatibusetmagnis.com','2020-01-10 16:31:44','2021-05-03 21:52:42'),(99,'Casey','Wright','00779312','nunc.sed@neque.org','2020-03-30 21:02:26','2019-11-08 06:12:20'),(100,'Daniel','Smith','32437544','Mauris.magna@pellentesqueegetdictum.co.uk','2020-09-18 03:54:22','2021-07-26 12:07:56');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuenta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moneda` varchar(3) NOT NULL,
  `fondo` decimal(8,2) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cuenta_cliente_idx` (`cliente_id`),
  CONSTRAINT `fk_cuenta_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES (1,'USD',12360.00,2,NULL,NULL),(2,'USD',15000.00,6,NULL,NULL),(3,'MXN',30000.00,15,NULL,NULL),(4,'MXN',40000.00,20,NULL,NULL),(5,'USD',5000.00,30,NULL,NULL);
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_transaccion`
--

DROP TABLE IF EXISTS `tipo_transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_transaccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(65) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion_UNIQUE` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_transaccion`
--

LOCK TABLES `tipo_transaccion` WRITE;
/*!40000 ALTER TABLE `tipo_transaccion` DISABLE KEYS */;
INSERT INTO `tipo_transaccion` VALUES (1,'Fondo de inversi??n.',NULL,NULL),(2,'Seguro de vida.',NULL,NULL),(3,'Fondo para una casa.',NULL,NULL),(4,'Fondo para un autom??vil.',NULL,NULL),(5,'Fondo para vacaciones.',NULL,NULL);
/*!40000 ALTER TABLE `tipo_transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaccion`
--

DROP TABLE IF EXISTS `transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_id` int(11) NOT NULL,
  `tipo_transaccion_id` int(11) NOT NULL,
  `monto` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_transaccion_cuenta1_idx` (`cuenta_id`),
  KEY `fk_transaccion_tipo_transaccion1_idx` (`tipo_transaccion_id`),
  CONSTRAINT `fk_transaccion_cuenta` FOREIGN KEY (`cuenta_id`) REFERENCES `cuenta` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_transaccion_tipo_transaccion` FOREIGN KEY (`tipo_transaccion_id`) REFERENCES `tipo_transaccion` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccion`
--

LOCK TABLES `transaccion` WRITE;
/*!40000 ALTER TABLE `transaccion` DISABLE KEYS */;
INSERT INTO `transaccion` VALUES (1,1,4,5000.00,NULL,NULL),(2,3,5,4000.00,NULL,NULL),(3,5,1,2000.00,NULL,NULL),(4,2,3,12000.00,NULL,NULL),(5,4,2,35000.00,NULL,NULL);
/*!40000 ALTER TABLE `transaccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-08  3:48:18
