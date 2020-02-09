-- Generation time: Tue, 04 Feb 2020 21:45:22 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_25
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- i. Заполнить все таблицы БД vk данными (по 10-100 записей в каждой таблице.
-- Таблицы заполнены при помощи автоматической генерации.

DROP DATABASE IF EXISTS vk_ip;
CREATE DATABASE vk_ip;
USE vk_ip;

DROP TABLE IF EXISTS `applications`;
CREATE TABLE `applications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `applications_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `applications` VALUES ('9','animi'),
('4','aut'),
('10','blanditiis'),
('5','dicta'),
('3','dolorem'),
('2','error'),
('8','numquam'),
('7','pariatur'),
('1','perferendis'),
('6','sunt'); 


DROP TABLE IF EXISTS `block_list`;
CREATE TABLE `block_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `reason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `block_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `friend_requests` (`initiator_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `block_list` VALUES ('11','1','Ducimus suscipit et nemo culpa. Placeat laudantium aut alias omnis voluptatem et quibusdam et. Itaque dolorem id magnam velit.','1985-07-10 16:06:44'),
('12','2','Eligendi quo rerum alias facilis placeat sint. Iure perferendis esse sint. Et est error hic occaecati hic aliquam.','2003-06-12 22:35:13'),
('13','3','Animi qui et praesentium modi eius ut doloremque repudiandae. Eum ducimus architecto expedita qui voluptatum quia. Provident voluptas cum ab nihil.','2006-02-10 08:16:40'),
('14','4','Vitae autem consequatur vel aut. Ex perferendis quo ea non officia ut. Qui sint aut dicta velit molestiae voluptatem explicabo. Perspiciatis aspernatur aut non eaque vitae.','1972-08-18 09:04:11'),
('15','5','Vero est deleniti ea quia sunt ullam quis. Enim aliquam earum delectus aliquam eligendi quas quasi. Animi repudiandae et incidunt explicabo sint.','2007-03-28 06:05:04'); 


DROP TABLE IF EXISTS `communities`;
CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `communities_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` VALUES ('20','Bernhard-Herzog'),
('4','Casper Inc'),
('14','Cremin and Sons'),
('8','Greenholt PLC'),
('2','Haley, Lang and Moore'),
('12','Hane, Gleason and Kilback'),
('19','Heaney, Pfannerstill and Rice'),
('9','Heathcote, Kovacek and Lesch'),
('1','Hermann, Douglas and Ullrich'),
('15','Kirlin-Pacocha'),
('10','Konopelski, Fadel and Becker'),
('11','Nicolas and Sons'),
('17','Prohaska-Wyman'),
('7','Purdy-Runte'),
('6','Shields, Ward and Lynch'),
('18','Stehr, Douglas and Murray'),
('3','Upton Group'),
('13','Von-Macejkovic'),
('16','Willms-Windler'),
('5','Wiza Group'); 


DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `device_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('smartphome','personal computer') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `devices_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `devices` VALUES ('1','1','8',''),
('2','2','7',''),
('3','3','4',''),
('4','4','7',''),
('5','5','8',''),
('6','6','1',''),
('7','7','3',''),
('8','8','1',''),
('9','9','8',''),
('10','10','7',''),
('11','11','3',''),
('12','12','1',''),
('13','13','7',''),
('14','14','',''),
('15','15','6',''),
('16','16','6',''),
('17','17','',''),
('18','18','5',''),
('19','19','',''),
('20','20','5',''),
('21','21','4',''),
('22','22','3',''),
('23','23','5',''),
('24','24','',''),
('25','25','9',''),
('26','26','2',''),
('27','27','6',''),
('28','28','2',''),
('29','29','5',''),
('30','30','8',''),
('31','1','3',''),
('32','2','4',''),
('33','3','2',''),
('34','4','5',''),
('35','5','6',''),
('36','6','9',''),
('37','7','1',''),
('38','8','5',''),
('39','9','6',''),
('40','10','8',''),
('41','11','7',''),
('42','12','2',''),
('43','13','7',''),
('44','14','9',''),
('45','15','4',''),
('46','16','9',''),
('47','17','3',''),
('48','18','',''),
('49','19','8',''),
('50','20','8',''),
('51','21','3',''),
('52','22','',''),
('53','23','3',''),
('54','24','3',''),
('55','25','',''),
('56','26','7',''),
('57','27','4',''),
('58','28','4',''),
('59','29','2',''),
('60','30','8',''); 


DROP TABLE IF EXISTS `friend_requests`;
CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','unfriended','declined') COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_blocked` bit(1) NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `initiator_user_id` (`initiator_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friend_requests` VALUES ('1','1','','0','2009-06-06 08:54:00','2001-09-26 19:02:40'),
('2','2','','1','2004-04-09 00:33:15','1977-12-12 01:31:32'),
('3','3','','1','1976-01-01 22:14:34','1988-08-02 02:49:31'),
('4','4','','1','2017-08-27 14:18:32','1977-03-18 08:43:49'),
('5','5','','1','1995-12-07 04:58:19','1989-06-11 22:11:14'),
('6','6','','0','1989-07-23 23:49:53','1987-09-10 16:10:42'),
('7','7','','0','1981-11-05 13:58:28','1989-10-09 12:40:06'),
('8','8','','0','2003-05-26 09:09:41','2003-05-14 05:59:40'),
('9','9','','1','2000-11-27 10:09:18','1996-03-14 22:49:35'),
('10','10','','1','2011-08-10 11:13:45','1994-03-11 13:29:32'),
('11','11','','0','2002-03-03 09:00:27','2009-12-14 08:11:00'),
('12','12','','1','2017-06-27 09:41:48','1988-04-06 11:59:05'),
('13','13','','1','1970-08-13 10:23:36','1998-06-15 07:43:54'),
('14','14','','0','2019-10-30 23:22:13','1992-01-27 13:39:26'),
('15','15','','0','1973-11-17 01:22:00','2000-06-11 00:57:32'),
('16','16','','0','1999-09-10 12:35:08','1979-12-30 22:54:58'),
('17','17','','1','2015-01-10 10:40:59','1991-07-16 02:19:13'),
('18','18','','1','1997-06-12 04:05:54','2017-08-03 17:53:00'),
('19','19','','1','2016-01-18 10:17:41','1981-02-10 08:20:49'),
('20','20','','1','1993-01-05 05:00:48','2016-12-01 12:07:53'),
('21','21','','1','1990-11-07 07:11:17','2014-03-21 05:12:23'),
('22','22','','1','2009-07-06 04:37:34','1995-03-23 18:07:56'),
('23','23','','0','2011-01-23 17:40:39','2019-08-05 18:28:54'),
('24','24','','0','2009-11-28 19:31:25','1981-09-04 04:49:11'),
('25','25','','0','1981-11-26 09:19:42','2005-06-04 19:17:04'),
('26','26','','0','1994-09-21 04:27:26','1991-04-10 09:56:13'),
('27','27','','1','2014-08-17 05:16:03','1978-05-13 03:15:48'),
('28','28','','1','2012-03-02 22:40:41','2009-10-09 21:01:42'),
('29','29','','1','2007-09-06 05:56:04','1995-01-28 01:32:23'),
('30','30','','1','1997-08-18 01:40:44','2011-10-22 22:43:17'); 


DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes` VALUES ('1','1','1','2008-11-18 04:08:02'),
('2','2','2','2003-05-03 12:55:23'),
('3','3','3','2013-01-14 08:10:56'),
('4','4','4','2014-10-01 07:22:58'),
('5','5','5','2018-04-22 07:23:25'),
('6','6','6','1973-04-26 20:15:30'),
('7','7','7','2003-01-21 12:36:55'),
('8','8','8','1996-12-06 15:08:52'),
('9','9','9','2008-01-31 18:48:51'),
('10','10','10','2005-04-15 12:20:39'),
('11','11','11','1980-11-27 06:03:06'),
('12','12','12','1989-09-15 12:02:39'),
('13','13','13','1994-04-30 01:46:48'),
('14','14','14','2019-03-14 10:10:12'),
('15','15','15','2014-05-28 15:14:46'),
('16','16','16','1973-06-14 02:13:58'),
('17','17','17','2003-09-12 15:11:00'),
('18','18','18','2016-10-29 15:25:43'),
('19','19','19','1988-02-19 20:58:56'),
('20','20','20','1976-07-11 15:10:28'),
('21','21','21','1994-09-12 14:26:55'),
('22','22','22','1997-04-24 12:20:09'),
('23','23','23','1995-09-29 13:50:17'),
('24','24','24','1988-07-14 15:33:15'),
('25','25','25','1978-06-07 22:05:42'),
('26','26','26','1974-06-16 08:34:25'),
('27','27','27','1990-10-16 08:49:18'),
('28','28','28','1980-07-08 04:26:13'),
('29','29','29','1985-09-19 01:25:26'),
('30','30','30','2010-05-25 08:32:48'); 


DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` VALUES ('1','1','1','Dignissimos quo nulla quidem consequatur sed. Nulla id sapiente expedita a nisi et. Et laborum fugiat reprehenderit ut ut ullam qui. Nam officia dolorem tenetur.','voluptate','40',NULL,'2017-10-19 07:26:34','1983-03-15 22:44:04'),
('2','2','2','Aut aliquid et sed labore quis et tempore molestias. Eligendi nisi accusamus doloremque rem libero. Eos eum a quisquam voluptatem recusandae quasi.','distinctio','54',NULL,'2015-07-27 20:48:37','1982-10-15 05:28:07'),
('3','3','3','Excepturi quis cum ut iste non ipsam. Facere in nam in. Voluptatem consequatur aut fugiat possimus expedita dolores.','reiciendis','71038',NULL,'2011-09-15 15:18:43','2019-09-12 14:41:16'),
('4','4','4','Modi deleniti similique ut quos aperiam et. Eveniet a alias consequatur temporibus. Commodi doloremque velit facere ut voluptatem saepe tempora. Voluptatem iste voluptates ex nulla hic ut eaque.','vitae','582',NULL,'1975-05-02 20:33:37','1993-07-28 12:57:44'),
('5','5','5','Aut fuga ipsum beatae. Vel rem et nesciunt temporibus quasi voluptas eum porro. Quia voluptatem temporibus ratione laudantium quo est totam. Est eaque rem quis incidunt.','quia','4883',NULL,'1978-01-07 21:33:17','1999-12-05 14:16:49'),
('6','1','6','Aliquam quisquam autem ut illum explicabo quae sint. Odit dignissimos libero est minima consequatur nam. Eveniet sint nulla dolorum cupiditate tenetur. Mollitia maiores tempore fugiat nobis laudantium harum.','repudiandae','665973',NULL,'1984-09-05 16:14:23','1970-09-29 10:23:48'),
('7','2','7','Ducimus et deserunt ut asperiores. Nulla consequatur enim fuga vitae pariatur commodi. Fugit laudantium id autem in adipisci. Asperiores nulla aut voluptates voluptatem cupiditate.','est','343710',NULL,'1991-03-14 01:17:55','1986-05-10 07:03:34'),
('8','3','8','Et enim veritatis explicabo ea illo illum. Quasi nihil natus eaque rerum praesentium sit voluptas et. At est consequatur tenetur officiis autem vel expedita.','maxime','138',NULL,'1986-05-15 00:32:28','2014-10-22 10:57:43'),
('9','4','9','Eum quasi et excepturi aut culpa qui delectus dicta. Consectetur non inventore repudiandae qui. Qui assumenda quae non quia modi quos recusandae. Dolor ullam doloremque qui non qui eaque. Architecto sint sapiente ut numquam consequatur qui.','veritatis','0',NULL,'1982-11-29 00:02:26','1994-10-03 22:43:33'),
('10','5','10','Est quo impedit qui vitae delectus quia. Aut et sit et dignissimos. Et pariatur quam voluptates adipisci eligendi placeat tempore. Quo dolore similique quia quos.','dolorem','80612584',NULL,'2014-03-23 07:42:41','2016-02-24 22:46:06'),
('11','1','11','Rerum natus minima quasi autem repellat eos. Maiores voluptatem accusamus quia adipisci. Voluptas ut sunt suscipit sit nobis doloribus.','omnis','76',NULL,'2009-12-04 06:42:24','1991-07-28 17:43:59'),
('12','2','12','Earum illo qui praesentium in excepturi hic. Maxime placeat eligendi necessitatibus recusandae vel placeat pariatur. Ex eveniet ratione nihil.','et','1066168',NULL,'1976-03-22 10:15:41','1989-06-06 06:06:44'),
('13','3','13','Dolorum pariatur beatae quas nobis corporis et laboriosam. Reprehenderit sit possimus saepe quia laboriosam ipsa ut consequatur. Ut voluptas quod magni.','consectetur','5907',NULL,'1985-01-27 04:14:32','1991-11-25 00:07:00'),
('14','4','14','Dolorem ex rerum eius. In mollitia repudiandae aut facere optio et. Repudiandae voluptas quidem eligendi quo. Vitae blanditiis ut illo molestias quia modi magni.','qui','0',NULL,'2016-10-09 05:58:30','1994-01-20 05:32:34'),
('15','5','15','Eos perferendis autem quas. In sapiente animi aut consequatur. Dignissimos nesciunt eum sint eveniet minus facere. Et et ut non qui mollitia ipsam ex quo.','occaecati','1',NULL,'2015-12-17 14:22:21','2001-03-17 16:59:51'),
('16','1','16','Ut et consequuntur reiciendis unde quod ipsam facere molestiae. Qui eius fuga et sint deleniti natus. Id voluptatem ipsam iste et.','ipsa','1096',NULL,'2003-11-16 19:03:50','1970-02-05 13:16:51'),
('17','2','17','Rerum qui quam ducimus maxime. Quis est occaecati sint qui. Quae excepturi et dolorum dolores. Sunt minus ut dolor ea temporibus ad.','aperiam','84793427',NULL,'2014-10-30 13:59:23','2016-11-25 12:03:33'),
('18','3','18','Saepe hic voluptatem omnis placeat excepturi quidem aut. Excepturi corrupti ut nemo. Consequatur nam harum iure qui sit suscipit dolore.','repellendus','342',NULL,'1989-03-22 04:09:22','2008-03-08 12:56:44'),
('19','4','19','Nobis rerum officiis ut ut facere. Molestiae ipsa facilis sequi dolorem iste qui. Accusamus id magnam ut alias ipsam.','aut','14195751',NULL,'1992-11-12 03:50:04','2001-11-07 11:55:41'),
('20','5','20','Consequatur at ad aut vel quo. Tempore pariatur eos esse quam odit cupiditate aut itaque. Reprehenderit quasi nihil vel corporis tempore eum magni.','ut','2150613',NULL,'1997-04-30 21:27:25','1987-10-08 21:39:10'),
('21','1','21','Beatae ipsa ipsum reiciendis voluptas. Aut aspernatur repellendus voluptatum aut excepturi nam et. Veritatis dolor numquam enim dolor. Modi sint sit sed deleniti.','sint','0',NULL,'1995-05-23 10:37:51','2011-05-07 21:21:29'),
('22','2','22','Facere aut dolor sed esse. In beatae qui dignissimos. Totam quo vel corrupti ut.','et','17',NULL,'1988-05-11 15:39:14','1977-12-19 06:35:38'),
('23','3','23','Modi quia ea in doloribus autem unde quia. Est nam voluptates reprehenderit totam animi. Incidunt voluptatem perferendis maiores iure consequatur ab. Officiis reprehenderit dicta occaecati.','nihil','32456',NULL,'1980-01-24 09:30:57','2019-02-10 14:58:54'),
('24','4','24','Commodi quis ut eius et et. Ipsa sint nemo earum consequuntur labore. Perferendis quos optio cum amet nihil at molestias.','nostrum','441650',NULL,'1989-06-08 05:44:35','1995-10-14 10:43:36'),
('25','5','25','Dicta quo ut doloremque ut qui. Corrupti aspernatur laudantium velit corrupti cumque. Nulla eos totam et earum.','ut','1',NULL,'1984-04-07 01:07:34','1986-09-14 05:46:25'),
('26','1','26','Aut officiis explicabo non et in nobis. Eos quod perferendis consequatur ullam odio delectus esse. Quam alias est perspiciatis velit sed hic.','ut','852',NULL,'2008-02-06 00:21:21','2013-03-05 00:56:56'),
('27','2','27','Quaerat labore consequatur laudantium eum tempore accusantium rerum dolores. Eos vel dolorem porro minus eos. Laudantium ipsa accusantium quisquam eveniet placeat est. Vero praesentium in recusandae et commodi minima assumenda. Veritatis dolor ducimus id et aspernatur qui.','et','5',NULL,'1973-10-26 09:56:54','1997-12-27 15:48:00'),
('28','3','28','Dolore sequi maiores hic aut consequatur consequatur. Aut et quod voluptate quod quia ut. Nobis maiores earum saepe aut. Consectetur labore accusamus dolor et neque.','sed','0',NULL,'1982-04-01 13:37:08','1971-08-10 01:32:18'),
('29','4','29','Molestiae soluta sequi omnis deserunt recusandae iste id. In est perspiciatis atque exercitationem magni tempora illo.','amet','0',NULL,'1996-02-18 20:38:38','1987-09-30 09:36:16'),
('30','5','30','Corrupti natus ullam culpa illum. Eos et quisquam iste ratione. Molestias eos ut dicta iusto nam. Est delectus qui quidem ad rerum quod.','sed','468',NULL,'1991-11-04 04:24:11','2005-10-30 13:50:42'),
('31','1','1','Ullam accusamus et ducimus. Fugiat sint eum nulla voluptatem quae nemo. Omnis assumenda totam ex cupiditate et nisi aliquid nemo. Laborum natus rerum voluptas doloremque voluptatem quam explicabo sequi.','alias','1047',NULL,'2016-06-17 05:21:49','2009-05-12 09:24:57'),
('32','2','2','Quam reprehenderit sequi et et repellat hic laborum. Ut occaecati est quisquam quis. Maiores cumque sed non quod sit porro dolor eius.','natus','62',NULL,'1983-12-08 12:59:59','2016-01-08 17:51:32'),
('33','3','3','Possimus eos hic et voluptate unde eum. Nobis nesciunt deserunt expedita maiores voluptatem cum accusamus.','voluptatem','917',NULL,'2009-02-19 19:55:33','2009-02-08 19:38:08'),
('34','4','4','Excepturi quod placeat maiores. Porro dolor enim corporis eaque. Nihil aliquid aspernatur ipsam dolorem. Et nobis eum non omnis molestias placeat.','expedita','9212215',NULL,'1985-11-06 23:27:36','1976-01-08 14:02:54'),
('35','5','5','In repudiandae totam et ut labore. Quia blanditiis aut velit non illum dolores. Architecto deserunt facilis libero autem quod occaecati.','soluta','87859',NULL,'1994-11-25 20:12:30','2007-02-16 04:34:45'),
('36','1','6','Quia suscipit itaque molestiae eum adipisci. Et alias quam inventore dicta. Et aliquam magnam id ut atque dolorum. Error dicta qui non.','illo','0',NULL,'1994-07-17 10:49:07','2010-02-19 03:14:19'),
('37','2','7','Quasi sapiente voluptas incidunt molestiae. At ut aut nihil mollitia sequi harum beatae.','ea','16265',NULL,'1971-01-30 15:41:11','2011-04-02 00:36:46'),
('38','3','8','Corporis odit et nam vero ea eos enim. Veniam similique est et. Nam eum consequatur mollitia.','dolorem','91491',NULL,'1971-11-18 10:58:12','2004-12-25 03:24:28'),
('39','4','9','Quam dolorem incidunt neque aliquid nihil tempore sit. Ut dolor sit autem ut id eos. Voluptate dolorem nisi itaque magnam consequuntur rem.','exercitationem','787220423',NULL,'2013-06-03 18:54:42','1991-02-10 04:58:56'),
('40','5','10','Inventore quibusdam provident ad quibusdam magnam. Error dignissimos impedit quas eaque nam dignissimos. Incidunt et deserunt omnis ad nobis.','eligendi','0',NULL,'1997-03-24 06:51:01','1975-08-27 09:54:10'); 


DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` VALUES ('1','omnis'),
('2','rem'),
('3','a'),
('4','praesentium'),
('5','est'); 


DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` VALUES ('1','1','1','Aut voluptates inventore earum quas praesentium eaque enim. Vitae omnis dolorum delectus vel consequatur et. Dolorem atque quam sunt tenetur non dolor.','1981-12-27 19:14:36'),
('2','2','2','Ut corrupti consequuntur saepe quas consectetur sapiente consequuntur deleniti. Nulla architecto nesciunt itaque quibusdam. Dolorem eveniet quos et ratione rerum. Quod eveniet dolor mollitia minus et voluptas.','1994-11-25 19:33:39'),
('3','3','3','Architecto non voluptatem voluptates fuga vel. Provident ut omnis deserunt dolores amet ab nisi. Impedit eius libero maiores facere sint recusandae.','2003-03-02 20:45:04'),
('4','4','4','Libero tempora quae dolorem quia. Eius et nemo fugiat est sit eaque delectus. Qui aut consequuntur rem temporibus quod nemo quae.','2009-12-31 03:45:12'),
('5','5','5','Magni dolores quis eos vitae. Ipsa unde nostrum molestiae est. Tempore qui minima dolores vero ratione.','2015-03-09 04:25:53'),
('6','6','6','Error voluptatum deleniti voluptates veritatis facere qui dicta. Quo dolore in fugit. Et quis veritatis vero illo.','2013-11-30 04:30:55'),
('7','7','7','Sed perspiciatis velit iste ratione eos ratione quaerat et. Ipsum laudantium incidunt aut facere nisi et. Commodi ex soluta nesciunt cum aliquid quis.','1996-10-09 21:25:02'),
('8','8','8','Numquam aut libero repellendus exercitationem aut illo. Nesciunt beatae ea laborum aut error et molestiae. Voluptatum dolor et commodi rerum quo excepturi quibusdam. Voluptate voluptatem ad animi et itaque tenetur totam.','1999-01-14 21:33:19'),
('9','9','9','Ut id neque iure sit fugit iste. Nemo iusto doloribus tenetur omnis. Rerum blanditiis dolores odit est. Eum iure nulla aut praesentium ut quibusdam ut. Quo quasi quaerat a excepturi rerum esse est.','2011-06-26 10:17:13'),
('10','10','10','Quis ipsam esse est sed. Aut molestias illum minus. Non error veniam quia.','1993-07-02 04:38:53'),
('11','11','11','Maiores possimus id necessitatibus est sed dolores accusantium. Soluta aut consequatur qui deserunt voluptates. Porro dolorum dolores omnis qui. Eius voluptatem expedita libero mollitia nihil libero esse.','2021-06-10 19:02:58'),
('12','12','12','Sapiente rerum et numquam et sit et. Sed velit delectus accusamus maxime unde. Ut neque nisi voluptatem. Asperiores voluptatem omnis error dolore et est mollitia ipsa. Eum ut qui aut nemo.','1974-05-15 08:31:21'),
('13','13','13','Dolor quis sunt totam libero aliquid tenetur. Exercitationem perspiciatis fuga distinctio sint maiores sed quis. In ipsa non fugiat aut debitis autem labore sunt. Aut recusandae iusto deserunt et error laborum non impedit.','2014-03-28 17:44:34'),
('14','14','14','Sint voluptatem et sit qui est tempora enim. Aut voluptates quasi consectetur eligendi dicta totam. Perspiciatis architecto saepe ut minima et esse. Aliquam molestiae qui esse sed.','2007-04-01 22:38:02'),
('15','15','15','Nam suscipit voluptatibus dolores autem voluptatem voluptas. Illum delectus beatae in quo iste qui hic. Et consequatur dolores quis harum distinctio amet.','1990-12-14 10:35:31'),
('16','16','16','Voluptatibus non tempora placeat dolores ea ut incidunt. A aut occaecati ut et. Est nisi est sunt quasi eaque vero.','1989-12-05 06:36:03'),
('17','17','17','Consequuntur et nesciunt ea animi necessitatibus et. Temporibus ducimus ipsum est et voluptas et. Voluptate odit fuga modi culpa quia nostrum dolorum omnis.','1993-04-18 01:41:13'),
('18','18','18','Aut ullam ut itaque nihil. Non itaque cumque excepturi ut accusantium minus provident rerum. Assumenda at dolorum explicabo repudiandae veritatis in. Nisi error nulla facilis odit.','1993-01-19 00:59:11'),
('19','19','19','Ipsa odit inventore dolor tenetur nesciunt hic quam. Qui rerum fugit a tempore tenetur animi at. Sit cumque rem ipsam.','1989-03-10 10:19:51'),
('20','20','20','Tempora recusandae est ipsam error voluptas vero. Voluptates quibusdam veritatis est accusamus minus illo. Quos facilis voluptas non aut. Harum in tempora impedit harum qui.','2006-07-16 18:41:54'),
('21','21','21','Sunt accusamus incidunt velit dolores. Voluptatem magni atque est. Porro voluptates et deserunt laborum ut nostrum. Et eum tempora sequi magnam.','1973-03-15 10:56:04'),
('22','22','22','Voluptatibus neque sed occaecati totam. Rerum cumque tenetur corporis dolores delectus perspiciatis sunt. Nulla sit autem est libero sequi vitae ea. Sit ipsa cumque neque quia quos.','1995-10-27 23:36:37'),
('23','23','23','Delectus id illo reprehenderit autem nulla blanditiis quia. Corrupti enim est cupiditate qui voluptatum. Quia quibusdam dolores porro eos hic a non et. Possimus autem qui laudantium ipsum.','1975-07-04 06:45:25'),
('24','24','24','Ut enim eos magnam enim consequatur maiores qui. Qui quae qui quidem et quod sed earum. Quae incidunt repudiandae rerum labore.','1971-12-21 16:28:55'),
('25','25','25','Ex cupiditate non sit laudantium aliquid et. Nulla quia praesentium fugit totam nihil et magni. Ad quas sed est dolor dolor. Enim aliquid libero tempora vel.','2004-08-18 22:14:53'),
('26','26','26','Et voluptatibus quia aliquid occaecati hic. Necessitatibus libero iste qui in aut.','1975-11-27 07:47:49'),
('27','27','27','Voluptas ut nemo eum rerum ad nesciunt et. Et et doloremque qui ullam. Pariatur sed et eos sed cupiditate pariatur eveniet. Deleniti doloremque et repudiandae reiciendis cum voluptatem et.','1992-08-26 20:51:37'),
('28','28','28','Voluptas assumenda dolorem assumenda eum illo tenetur ratione. Rerum corporis repudiandae ad placeat.','2002-02-25 13:42:09'),
('29','29','29','Numquam quo dolorem earum facilis autem omnis. Eligendi delectus est iure error ut quaerat voluptate est. Laboriosam est accusantium iure pariatur. Beatae illo dolorem libero et vitae.','1972-07-06 10:55:47'),
('30','30','30','Velit at rerum facilis est illum suscipit repellat. Quaerat architecto eos consequatur iure. Doloribus explicabo nostrum qui quos quos pariatur.','2010-06-08 16:49:38'),
('31','1','1','Suscipit quae sapiente dolor tempore. Et quasi qui possimus molestias voluptatem. Ut quidem dolorem libero quod est. Illo nesciunt autem hic esse necessitatibus exercitationem. Laboriosam eaque consequatur ipsam totam repudiandae vitae.','1998-10-14 21:05:42'),
('32','2','2','Molestiae iste est sit iste ducimus eos nostrum non. Consequuntur non in voluptate sunt incidunt nihil. Ipsum qui non aut perspiciatis.','2007-05-26 17:58:42'),
('33','3','3','Quasi aspernatur officiis voluptas exercitationem. Qui totam quam reprehenderit eum sed quis alias. Distinctio aut harum exercitationem magnam.','2016-04-04 13:29:19'),
('34','4','4','Aut velit magni error alias voluptas aut sit ut. Ut impedit quibusdam totam. Neque deleniti accusamus dolor beatae accusantium tempora quos ex. Eum beatae minima mollitia doloremque est aut consequuntur.','2022-01-20 19:02:25'),
('35','5','5','Veniam dolorem sequi necessitatibus et quia. Aliquam doloremque aut eum qui quae error quis. Ut cum necessitatibus perspiciatis impedit earum quasi minima. Et qui distinctio exercitationem.','2016-07-14 15:10:24'),
('36','6','6','Officiis repellendus soluta ipsa et. Incidunt quia et dolorem est. Error eius nihil et consequatur eos molestias. Consequatur quasi pariatur deleniti quasi labore.','1980-05-31 06:13:04'),
('37','7','7','Harum consequatur ipsa consequatur porro. Ex quia vel est. Voluptate voluptatem qui ipsam dicta quos voluptatibus.','2010-08-25 13:31:37'),
('38','8','8','Dolores quisquam maiores explicabo aperiam. Occaecati id necessitatibus odit enim similique debitis.','2016-09-07 08:41:50'),
('39','9','9','Numquam aut corrupti enim dignissimos quos mollitia. Cum doloribus reprehenderit aut eligendi provident. Quis omnis vel iste expedita porro.','1989-10-15 06:25:37'),
('40','10','10','Et quia quisquam rem voluptate quia tempore. Quia velit rerum tempora velit. Blanditiis est dolorum corrupti neque modi deleniti ut. Illum quas tenetur repellat inventore quo voluptate praesentium.','1974-03-15 03:44:34'),
('41','11','11','Atque aut autem perferendis consequatur distinctio quam dolores. Earum quia esse dolorum velit. Quos rem assumenda alias voluptas magni.','2010-07-30 22:21:02'),
('42','12','12','Eligendi magnam ipsam doloribus magnam veniam odio. Eos sint sed odio deleniti magni. Repudiandae ut cum neque molestiae quidem aut quis. Sed dolorem assumenda et consequatur sint iure. Debitis numquam ipsam numquam eum voluptatem commodi quis.','2005-04-17 13:52:48'),
('43','13','13','Autem voluptatem nulla eos. Qui dolorem magnam eaque excepturi quis ipsum. Error praesentium omnis quidem delectus. Similique voluptatem assumenda voluptatibus eius consectetur maiores.','1977-07-30 04:00:14'),
('44','14','14','Ut reiciendis quia repudiandae incidunt optio nemo. Ducimus quia quis non cumque hic. Ducimus sed quod sed voluptatibus officiis. Doloribus minus voluptates consequatur et ut sequi.','1997-03-25 22:01:54'),
('45','15','15','Animi illum debitis quo eligendi tempora. Accusantium accusamus aliquam eaque ea reiciendis molestias consequatur. Quo dolor quis veritatis aut.','2019-09-05 13:57:44'),
('46','16','16','Optio est maxime accusantium dolorem aut architecto ut. Quam optio cupiditate laboriosam reprehenderit deserunt voluptate molestiae. Est voluptate voluptatem dolore in ut quam suscipit. Fuga quia doloribus quis corporis minima nihil.','1986-10-03 19:05:12'),
('47','17','17','Id ipsa asperiores id fuga molestiae consectetur. Natus quibusdam doloribus asperiores mollitia dolorem ea. Eveniet aut harum laboriosam quo cupiditate dolore voluptate.','1990-01-24 13:41:50'),
('48','18','18','Et occaecati vel neque dolor ut. Et sed repudiandae veniam dolorem eum quasi. Ut aperiam occaecati dolor voluptatem eum. Occaecati labore voluptatem distinctio distinctio pariatur.','1995-01-11 03:29:43'),
('49','19','19','Officiis reprehenderit quia repellat sed cum quas praesentium. Eius accusantium provident similique labore voluptas dolorem. Suscipit sit sunt voluptatem eveniet unde sed.','1994-03-29 06:57:49'),
('50','20','20','Et facere nihil sed. Non et reprehenderit tempore. Consequuntur perferendis voluptatem aliquid fugiat modi eos. Ratione iste cum ad molestiae.','2010-01-04 10:32:22'),
('51','21','21','Voluptatibus atque repellat voluptatem soluta quae voluptatum quam. Alias labore minima eveniet maxime culpa aut est. Sapiente accusamus ullam enim amet molestiae necessitatibus aut.','2023-12-03 17:30:16'),
('52','22','22','Quo et nostrum tempore pariatur id. Cupiditate sit architecto quam perspiciatis reprehenderit sapiente. Ut iste animi amet praesentium minima cumque dolor.','1994-08-16 00:53:09'),
('53','23','23','Dolore voluptate voluptates qui ullam omnis. Repellendus eius quidem iste enim dolorum enim. Quia voluptatibus itaque sed nesciunt.','1994-01-06 06:05:40'),
('54','24','24','Earum sint et iusto non at. Cupiditate unde consequatur rerum accusamus error. Excepturi et quos et quis quae. Et blanditiis odio reiciendis minima.','1986-11-04 22:15:14'),
('55','25','25','Velit est itaque fugit qui aliquam. Aut maiores tenetur expedita consequatur sint. At voluptates est molestiae rerum quae accusantium.','1989-09-08 02:56:35'),
('56','26','26','Minus dignissimos accusamus quam aut assumenda. Neque et culpa aliquam doloremque veritatis et mollitia dolores. Pariatur placeat perspiciatis et soluta aspernatur.','1984-02-08 10:10:52'),
('57','27','27','Quia velit illum ipsam quia nihil nobis voluptatum. Ducimus laborum et corporis ea quasi tenetur. Voluptas corrupti nam ut ratione expedita corrupti. Officia non molestiae qui cumque minima ratione qui.','2003-09-08 09:06:04'),
('58','28','28','Cumque error non laboriosam consectetur. Ea ut voluptas aut voluptates. Itaque qui vel repudiandae dolor perspiciatis incidunt quaerat. Cum ratione totam autem voluptatibus qui et. Aut dolores provident veritatis facilis quasi error dolor.','1997-06-01 13:16:09'),
('59','29','29','Hic doloremque reiciendis occaecati odio optio. Quia consequatur autem ut ea nulla dolore aut. Repudiandae eum vel qui cum.','1995-03-19 03:53:50'),
('60','30','30','Illum fugiat quibusdam qui accusamus consequuntur repellat vitae voluptates. Numquam quasi id quo officiis distinctio aut soluta. Ut ut cumque tempora.','1976-02-26 22:18:59'),
('61','1','1','Quod occaecati excepturi voluptatem id dolorum et. Provident molestiae nulla voluptas. Velit ex vel asperiores provident est incidunt soluta.','1985-08-30 20:38:20'),
('62','2','2','Fuga asperiores distinctio minus autem reiciendis. Hic in id eveniet soluta aut qui. Iure neque quas earum nam ratione. Officiis tenetur ratione dolorem maxime voluptas.','2003-08-07 10:03:53'),
('63','3','3','Temporibus ipsa excepturi est quae. Ex alias dolor asperiores quia. Minima cum non rerum autem ut fugit qui qui.','1991-11-21 19:29:26'),
('64','4','4','Ut velit omnis maiores dolore nihil. Quia libero provident reprehenderit porro itaque nobis repudiandae. Dolorum laboriosam omnis vero. Corrupti voluptatem beatae autem itaque voluptatem inventore.','2024-07-03 08:28:04'),
('65','5','5','Consequatur exercitationem eos omnis eaque ut. Neque mollitia qui sequi. Provident et excepturi voluptatem id aspernatur non. Non expedita sequi voluptas doloribus esse non.','1984-09-24 07:39:43'),
('66','6','6','Tempore atque ipsum illum ut. Ut est incidunt beatae repellat. Nulla quia et iusto aut incidunt aliquid. Quia quia officiis nam et.','2009-06-18 11:47:26'),
('67','7','7','Sit sed porro non. Consequuntur necessitatibus harum sed quaerat. Velit consequatur porro occaecati pariatur reprehenderit non. Cupiditate qui sequi rerum velit autem numquam ut.','1977-02-16 18:58:35'),
('68','8','8','Adipisci animi dolores ducimus ipsam omnis ratione quis. Deserunt inventore laboriosam tempora vel. Deleniti itaque in et dolor sed quo.','1979-03-27 12:01:12'),
('69','9','9','Atque voluptas quia sit nostrum. Et dolor modi qui aut voluptatibus aut illum. Error qui laboriosam nihil blanditiis. Dolorem amet a mollitia ad libero et laudantium.','1971-01-09 23:56:10'),
('70','10','10','Harum molestias qui eum eum. Ipsa repellendus accusamus voluptas doloribus ut saepe. Quasi impedit aperiam sequi eum. Molestias vero voluptas quod cum voluptas. Id atque ut voluptatum amet amet quia sit.','1975-08-04 08:30:19'),
('71','11','11','Eos possimus temporibus quo ducimus voluptatibus. Voluptates quidem voluptates ut. Commodi eum similique accusantium placeat voluptates. Ipsam non qui voluptas voluptatem molestiae porro aut.','2011-04-25 10:48:14'),
('72','12','12','Sapiente eveniet culpa enim veritatis. Consectetur dicta molestiae corrupti. Distinctio repellat in nostrum maiores cupiditate aut.','2002-07-29 10:24:04'),
('73','13','13','Nobis molestias quisquam magni odit ullam. Adipisci ullam voluptatem cum doloribus provident dolor nobis totam. Ut nesciunt eum dolor et odio. Iusto consequatur et corporis facilis corporis.','2009-05-21 06:50:59'),
('74','14','14','Nihil eum non natus quas placeat voluptatum. Veritatis ipsa et illo ut facilis dolor ipsam. Dolor cum eius tempora cumque dolorum ea nihil. Tempore nobis quod voluptatum rerum omnis nesciunt perspiciatis.','1978-03-27 02:01:23'),
('75','15','15','Molestiae sunt dolorem inventore cum iure omnis. Quia maxime molestiae incidunt pariatur ipsum est. Sunt iure quis voluptates voluptate.','2008-11-24 14:54:12'),
('76','16','16','Debitis vel quae aut tempore voluptas. Eos voluptate reprehenderit reiciendis. Ut sit et laboriosam. Dolorem qui id autem cum voluptate molestiae minima.','2018-02-10 19:37:23'),
('77','17','17','Aut quisquam rerum quod omnis vel commodi nobis. Quia quia voluptas illum. Consequatur animi vero dolorem quisquam assumenda. Expedita ea placeat reiciendis corrupti.','1995-01-19 05:04:42'),
('78','18','18','Aut omnis voluptatem et natus corrupti. Et voluptas et enim assumenda numquam earum animi. Vel corrupti sit doloribus blanditiis quas.','1976-02-08 10:37:43'),
('79','19','19','Illum voluptatem occaecati atque et aliquid quia error. Error et exercitationem dicta quam ducimus accusantium. Nihil reprehenderit quo inventore veniam temporibus. Excepturi ipsum veniam nihil.','1998-03-18 10:02:02'),
('80','20','20','Quibusdam aut reiciendis quisquam enim quod voluptatem doloribus. Explicabo nihil cum exercitationem consequatur. Recusandae rem et facere voluptatem est.','1976-03-14 16:51:01'),
('81','21','21','Velit et inventore sit sed. Esse est placeat id minus. Voluptas ipsa suscipit et aut ipsam dolorem. Minus pariatur neque esse a.','2009-06-26 06:59:16'),
('82','22','22','Cupiditate molestias fugit sapiente repudiandae quas sapiente ipsam minus. Quasi fugit iusto ut expedita modi illo. Minima nostrum provident eligendi quia culpa.','1970-07-14 23:39:01'),
('83','23','23','Unde perferendis quae officia ipsam dolorum autem. Ex voluptatem sunt adipisci voluptatum quisquam provident ab. Nemo exercitationem dolore velit excepturi non ut.','2013-01-31 23:01:47'),
('84','24','24','Atque cumque rem fugiat ducimus. Reprehenderit et laboriosam suscipit fugiat quo.','1987-08-04 07:29:01'),
('85','25','25','Repellendus sed tempora dolores asperiores occaecati quis. Voluptas error ab quibusdam nulla quam mollitia voluptatibus iste. Accusamus nihil et soluta unde deleniti. Reiciendis quia ipsa ab nesciunt et quia repudiandae aut.','1991-01-12 11:08:19'),
('86','26','26','Tempore cumque sit doloremque dolor rerum et corporis. Reprehenderit aut consequuntur qui commodi excepturi quos. Sit et architecto labore autem et non et.','2002-09-09 04:32:55'),
('87','27','27','Ullam architecto non cum quam. Mollitia numquam eos voluptates nihil voluptatem non dolor eaque. Consequuntur aut nisi temporibus totam sapiente et impedit praesentium.','2011-03-19 10:13:20'),
('88','28','28','Quia nam est est fuga reiciendis nemo impedit. Voluptatem et possimus sint asperiores quidem quo.','2004-02-16 12:04:14'),
('89','29','29','Ut dolorem fuga sit. Totam eos iusto id perferendis facere vel in. Sed magni enim voluptatem quia. Dolor sunt voluptas voluptatem ipsam tempora.','2000-01-07 03:44:50'),
('90','30','30','Consectetur doloremque nam quos. Facilis et magnam ut accusantium. Et natus doloremque fugit id molestias.','2007-12-14 00:24:39'),
('91','1','1','Rerum voluptas accusamus atque. Aut quo aliquid autem minima voluptates. Quo necessitatibus distinctio et error et cum itaque. Ut recusandae soluta hic dolorem nisi inventore.','1980-05-02 11:29:18'),
('92','2','2','Esse est amet dolorem placeat autem totam. Aut est sit pariatur architecto magnam possimus nemo atque. Vel molestiae at quo ab officiis nesciunt voluptatem. Accusantium molestiae ipsa ab ad vel asperiores eos.','1989-01-26 06:54:41'),
('93','3','3','Odit quas nisi nobis maxime aut. Eligendi non dicta dolorem eos in nihil sequi. Omnis velit molestias adipisci sunt amet aut quia esse.','1983-03-26 20:56:20'),
('94','4','4','Ipsum earum error amet ipsam. Rem consequatur illum expedita sunt consectetur non.','2000-08-25 03:49:03'),
('95','5','5','Rerum et ipsam optio eaque. Mollitia est autem culpa provident ratione.','1983-11-27 13:45:33'),
('96','6','6','Quas explicabo asperiores quis ea ut quibusdam reiciendis nemo. Ut laboriosam hic sed. Ea voluptas porro necessitatibus molestiae non alias.','2018-09-20 19:39:56'),
('97','7','7','Deleniti minus dicta enim earum nesciunt vitae. Pariatur aperiam ullam et accusamus. Omnis ipsam non atque consequatur deserunt.','1980-04-12 11:57:38'),
('98','8','8','Officia consequatur vitae deleniti in. Minima consequatur omnis necessitatibus provident amet atque et amet. Et hic consequatur sunt aliquam repudiandae rerum. Quidem et provident sequi quidem eaque.','2002-08-30 04:34:54'),
('99','9','9','Officia deserunt sed vel tenetur omnis nam fugiat id. Porro possimus adipisci est. Aliquam ut earum veniam amet ut.','1979-03-09 23:19:50'),
('100','10','10','Est earum quia enim qui delectus fugiat magnam. Nulla aut quam molestiae veritatis voluptatem error voluptate cupiditate. Nostrum quas accusantium eligendi est. Et quos voluptatem consequatur repellat enim reiciendis cupiditate.','1991-09-20 18:43:31'); 


DROP TABLE IF EXISTS `photo_albums`;
CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `photo_albums` VALUES ('1','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_3 rv:3.0) Gecko/20160314 Firefox/3.6.8','1'),
('2','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 4.0; Trident/3.1)','2'),
('3','Opera/8.64 (X11; Linuxi686; en-US) Presto/2.9.180 Version/12.00','3'),
('4','Opera/8.98 (X11; Linuxx86_64; en-US) Presto/2.9.160 Version/11.00','4'); 


DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned DEFAULT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`),
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `photos` VALUES ('1','1','1'),
('2','2','2'); 


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` bit(1) DEFAULT b'1',
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` VALUES ('1','','1993-08-10','1','Ghana','1','1977-03-18 21:01:37'),
('2','','1984-07-06','2','Croatia','1','2002-08-06 18:48:47'),
('3','1','1974-07-27','1','Sao Tome and Principe','1','2012-04-07 13:06:48'),
('4','','2011-01-27','2','Macao','1','2017-08-23 12:38:28'),
('5','1','1982-05-19','1','Montserrat','1','2013-09-25 05:00:07'),
('6','1','2012-05-14','2','Argentina','0','2015-04-15 06:07:06'),
('7','','1988-12-19','1','South Georgia and the South Sandwich Islands','0','1986-10-06 01:03:15'),
('8','','1982-10-31','2','Georgia','0','2008-09-27 16:46:48'),
('9','1','2006-01-18','1','Djibouti','1','1997-03-02 20:27:54'),
('10','1','2004-05-17','2','Marshall Islands','0','2015-08-10 14:50:20'),
('11','','1979-04-26','1','Guyana','0','1976-06-06 13:33:50'),
('12','','1979-08-31','2','Mauritius','0','2015-05-06 04:24:25'),
('13','','1995-09-20','1','Sweden','1','1996-11-04 14:32:58'),
('14','1','2006-02-28','2','Saudi Arabia','0','2010-07-01 18:48:52'),
('15','1','1991-06-12','1','Macedonia','1','2014-08-28 03:52:52'),
('16','','1974-04-04','2','Armenia','1','2002-04-04 05:35:58'),
('17','1','1973-04-21','1','Greece','0','2010-06-03 07:51:37'),
('18','1','1993-04-04','2','Turkmenistan','1','2002-05-15 20:37:24'),
('19','','2013-11-30','1','Honduras','0','1995-05-22 02:43:41'),
('20','','1981-05-23','2','Kiribati','0','1997-11-07 11:55:09'),
('21','1','2006-03-09','1','Seychelles','1','2007-05-31 04:04:11'),
('22','1','1997-04-16','2','Kiribati','1','1982-05-09 13:06:15'),
('23','1','1975-05-12','1','Bermuda','0','1972-09-10 21:35:39'),
('24','1','1984-01-09','2','Niger','1','2003-02-22 20:35:47'),
('25','','2001-10-24','1','United States Virgin Islands','1','1972-08-24 17:40:39'),
('26','1','1996-10-06','2','Lebanon','1','2004-07-08 03:22:29'),
('27','1','2017-03-07','1','Syrian Arab Republic','1','1988-04-23 10:33:32'),
('28','1','1973-06-22','2','Comoros','1','1974-06-28 22:10:59'),
('29','','1976-07-04','1','Burkina Faso','1','1972-07-11 09:21:14'),
('30','','1970-01-02','2','Kiribati','0','1984-05-07 21:06:43'); 


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Имя',
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_phone_idx` (`phone`),
  KEY `firstname` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` VALUES ('1','Johnnie','Jakubowski','bartoletti.ena@example.net','d9a297e0b24850880dd7cd827f41912adbd35cbd','+03(2)166245','1'),
('2','Raegan','Jacobson','johann.anderson@example.net','d6f53b427c46d2d8eaf3b54bf9deb8112ddab001','099.579.6297','0'),
('3','Noble','Bayer','reilly18@example.net','66a0c236e61bac2ec617acba32248335f49b30f5','839.445.3385','0'),
('4','Gina','Murazik','rosalee62@example.org','1936402148a91af31c9cbd1eaa39030d6b6cc9a7','486.155.0632','0'),
('5','Sydnie','Gutmann','gschinner@example.org','6472112e37d7b73396b7f473bd15831a97da321b','+30(8)518137','1'),
('6','Sebastian','Schmitt','obednar@example.com','0fc2eae1de8216e1dc1ab090f293ae2f7cc77179','(451)114-414','0'),
('7','Zane','Lang','royce54@example.org','1e298572d7ecdf7f5f48ee3fc0b69032149fe425','901.328.3610','0'),
('8','Horace','Walker','bryana38@example.net','898508da74a184f462b1c96f62c26890a86ca269','+70(4)844683','1'),
('9','Eudora','Maggio','aiyana26@example.com','d0aa4885b365e5a3f6a451668629118b72eb906f','(481)016-819','1'),
('10','Earnest','Denesik','wking@example.net','8e9a6f4f278906cab3888c1fb0a6215f70a0c2c7','494.147.2721','1'),
('11','Michael','Hudson','wwehner@example.com','140f001f309c4a9f7ef6ed0b5cca018a6279d3bf','139-053-6574','0'),
('12','Gussie','O\'Kon','jlegros@example.com','fa24b9c27a9ddb342aa0e120f11038b6c6e526ad','+36(1)651480','1'),
('13','Shayne','VonRueden','herman.kuvalis@example.org','e74ce113a46af912edaba971cd804a7aeaa30c3d','+25(6)453405','0'),
('14','Bettie','Towne','homenick.shanelle@example.net','809fd6703789d403d3b3b0c32f886bd2eaf30c09','+11(6)527650','0'),
('15','Tito','Stracke','xkub@example.net','2f0810b5d08e7988bae0983d0d76b38d71a23e20','1-251-036-50','0'),
('16','Simone','Reichert','collins.vernie@example.com','1dd0463630b24822d6a18ffe44d25deb28d25440','1-107-006-68','1'),
('17','Kenton','Boehm','odubuque@example.org','feeaa88bfe7be1458416f3eb1c3c10472d10c6fb','(273)752-721','1'),
('18','Uriel','Schoen','lula.rempel@example.com','3fd6e6e57421e7ef2bb556ac089f04adbb651250','1-164-122-83','1'),
('19','Forest','Haag','bella36@example.org','3fcec3b8deeba0f0b2ebc70b17d6426e25c65850','1-893-703-60','0'),
('20','Earlene','Halvorson','ldach@example.org','6a33b9f84eec96c5733cdf218347bf5cb8e91d86','1-914-708-59','1'),
('21','Anthony','Stehr','genevieve.rosenbaum@example.com','99dbcb12a7228f9faeeb41b6bc71cd1e1ccd2b02','106-265-1620','0'),
('22','Jocelyn','Konopelski','leonie.cormier@example.com','9025976487d415a4dafa7b677f6f4b8823bc358d','(812)287-675','0'),
('23','Estevan','Schuster','keenan57@example.com','3f36a9d4170c9511f593f06198e9c5918d34a241','(085)414-151','1'),
('24','Maryse','Bosco','dane.hilpert@example.net','3d1b15cfa70f6cead97fee7b356151b44cc9395e','529.533.8581','1'),
('25','Maryam','Boyer','kozey.jettie@example.net','58e768f38ff5f3b0bd956737b92df114ae643657','+68(8)067106','1'),
('26','Laverne','Kris','johnston.matt@example.org','f98535e42241df2550bc05e8c79dd8765e755baa','1-220-050-34','1'),
('27','Martin','Beatty','feeney.madie@example.com','6d59c128ccf2579d2b49513f505320d917555bf2','(619)447-168','1'),
('28','Paige','Becker','predovic.florine@example.org','ab2a464cdf84f1d6c65f07fd66757ad2bef928ea','08012546296','1'),
('29','Hilma','Rau','lmckenzie@example.net','4eb71496592873fd1b657ed659e2d9b3a9b206a4','+68(8)820319','0'),
('30','Alda','Kuvalis','dcummings@example.com','0bbe5c0e96649a02c11154040e0df19d580e0ae3','+79(1)329719','0'); 


DROP TABLE IF EXISTS `users_application`;
CREATE TABLE `users_application` (
  `user_id` bigint(20) unsigned NOT NULL,
  `application_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`application_id`),
  KEY `application_id` (`application_id`),
  CONSTRAINT `users_application_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_application_ibfk_2` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users_application` VALUES ('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5'),
('6','6'),
('7','7'),
('8','8'),
('9','9'),
('10','10'); 


DROP TABLE IF EXISTS `users_communities`;
CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users_communities` VALUES ('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5'),
('6','6'),
('7','7'),
('8','8'),
('9','9'),
('10','10'),
('11','11'),
('12','12'),
('13','13'),
('14','14'),
('15','15'),
('16','16'),
('17','17'),
('18','18'),
('19','19'),
('20','20'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

