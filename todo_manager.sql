-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server-Version:               8.4.0 - MySQL Community Server - GPL
-- Server-Betriebssystem:        Win64
-- HeidiSQL Version:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportiere Datenbank-Struktur für todo_manager
CREATE DATABASE IF NOT EXISTS `todo_manager` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `todo_manager`;

-- Exportiere Struktur von Tabelle todo_manager.archiv
CREATE TABLE IF NOT EXISTS `archiv` (
  `archiv_id` int NOT NULL AUTO_INCREMENT,
  `task_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `description` text,
  `due_date` datetime DEFAULT NULL,
  `is_completed` tinyint(1) DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  PRIMARY KEY (`archiv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Exportiere Daten aus Tabelle todo_manager.archiv: ~1 rows (ungefähr)
INSERT INTO `archiv` (`archiv_id`, `task_id`, `user_id`, `task_name`, `description`, `due_date`, `is_completed`, `archived_at`) VALUES
	(1, 5, 1, 'Meeting vorbereiten', 'Präsentation vorbereiten', '2024-05-15 15:00:00', 0, '2024-05-06 13:34:17');

-- Exportiere Struktur von Tabelle todo_manager.archiv_seq
CREATE TABLE IF NOT EXISTS `archiv_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Exportiere Daten aus Tabelle todo_manager.archiv_seq: ~1 rows (ungefähr)
INSERT INTO `archiv_seq` (`next_val`) VALUES
	(101);

-- Exportiere Struktur von Tabelle todo_manager.tasks
CREATE TABLE IF NOT EXISTS `tasks` (
  `task_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `description` text,
  `due_date` datetime DEFAULT NULL,
  `is_completed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Exportiere Daten aus Tabelle todo_manager.tasks: ~11 rows (ungefähr)
INSERT INTO `tasks` (`task_id`, `user_id`, `task_name`, `description`, `due_date`, `is_completed`) VALUES
	(1, 1, 'Meeting ansetzen', 'Gäste einladen, Termin erstellen', '2024-05-10 00:00:00', 0),
	(3, 2, 'Meeting', 'Meeting durchführen', '2024-05-15 16:30:00', 0),
	(4, 2, 'Meeting nachbereitung', 'Auswertung des Meetings', '2024-05-17 00:00:00', 0);

-- Exportiere Struktur von Tabelle todo_manager.tasks_seq
CREATE TABLE IF NOT EXISTS `tasks_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Exportiere Daten aus Tabelle todo_manager.tasks_seq: ~1 rows (ungefähr)
INSERT INTO `tasks_seq` (`next_val`) VALUES
	(301);

-- Exportiere Struktur von Tabelle todo_manager.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Exportiere Daten aus Tabelle todo_manager.users: ~11 rows (ungefähr)
INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
	(1, 'Nutzer1', 'password1'),
	(2, 'user2', 'passwort2');

-- Exportiere Struktur von Tabelle todo_manager.users_seq
CREATE TABLE IF NOT EXISTS `users_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Exportiere Daten aus Tabelle todo_manager.users_seq: ~1 rows (ungefähr)
INSERT INTO `users_seq` (`next_val`) VALUES
	(251);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
