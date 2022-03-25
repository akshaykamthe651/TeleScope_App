-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.12-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for wfh_reporting
DROP DATABASE IF EXISTS `wfh_reporting`;
CREATE DATABASE IF NOT EXISTS `wfh_reporting` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wfh_reporting`;


-- Dumping structure for table wfh_reporting.projects_master
DROP TABLE IF EXISTS `projects_master`;
CREATE TABLE IF NOT EXISTS `projects_master` (
  `project_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.


-- Dumping structure for table wfh_reporting.tasks_master
DROP TABLE IF EXISTS `tasks_master`;
CREATE TABLE IF NOT EXISTS `tasks_master` (
  `task_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_desc` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.


-- Dumping structure for table wfh_reporting.users_master
DROP TABLE IF EXISTS `users_master`;
CREATE TABLE IF NOT EXISTS `users_master` (
  `project_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_planned` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
