-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.32-0ubuntu0.12.04.1 - (Ubuntu)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2013-08-24 15:37:11
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table hackathon-garbage.civics
CREATE TABLE IF NOT EXISTS `civics` (
  `street_no` int(11) NOT NULL,
  `street_nm` char(100) NOT NULL,
  `comm_nm` char(50) NOT NULL,
  `apt` char(10) DEFAULT NULL,
  `county` char(3) NOT NULL,
  `latitude` double(10,5) NOT NULL,
  `longitude` double(10,5) NOT NULL,
  `pid` char(10) NOT NULL,
  `unique_id` char(15) NOT NULL,
  `bluebag` char(15) NOT NULL,
  `wastecompost` char(15) NOT NULL,
  PRIMARY KEY (`unique_id`),
  KEY `pid` (`pid`),
  KEY `streetcomm` (`street_no`,`street_nm`,`comm_nm`),
  KEY `steet` (`street_no`,`street_nm`),
  KEY `wastecompost` (`wastecompost`),
  KEY `bluebag` (`bluebag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table hackathon-garbage.civics_zones
CREATE TABLE IF NOT EXISTS `civics_zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table hackathon-garbage.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `civics_id` char(15) NOT NULL DEFAULT '0',
  `civics_zone_id` int(10) unsigned NOT NULL DEFAULT '0',
  `twitter` varchar(50) NOT NULL DEFAULT '0',
  `sms` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `civics_zone_id` (`civics_zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
