-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table professor.professor
DROP TABLE IF EXISTS `professor`;
CREATE TABLE IF NOT EXISTS `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `passWord` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table professor.professor: ~12 rows (approximately)
DELETE FROM `professor`;
INSERT INTO `professor` (`id`, `Name`, `passWord`, `email`) VALUES
	(1, 'Berghida Meriem', '20032003', 'BerghidaMeriem@univ-biskra.com'),
	(2, 'Akrour Djoher', '20032003', 'AkrourDjoher@univ-biskra.com'),
	(3, 'Babahenini Djihane', '20032003', 'BabaheniniDjihen@univ-biskra.com'),
	(4, 'Babahenini mohamed', '20032003', 'BabaheniniMohamed@univ-biskra.com'),
	(5, 'Betira Rofaida', '20032003', 'BetiraRofaida@univ-biskra.com'),
	(6, 'Babahenini Sara', '20032003', 'BabaheniniSara@univ-biskra.com'),
	(7, 'Hattab Dalila', '20032003', 'hattabDalila@univ-biskra.com'),
	(8, 'Tibarmacine Ahmed', '20032003', 'tibarmacineAhmed@univ-biskra.com'),
	(9, 'Hamidi Zohra', '20032003', 'hamidiZohra@univ-biskra.com'),
	(10, 'Hamida Ammar', '20032003', 'hamidaAmmar@univ-biskra.com'),
	(11, 'Bennaoui Hammadi', '20032003', 'BennaouiHammadi@univ-biskra.com'),
	(12, 'Bentrah Ahlem', '20032003', 'bentrahAhlem@univ-biskra.com');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
