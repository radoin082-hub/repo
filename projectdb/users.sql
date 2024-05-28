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

-- Dumping structure for table project.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `second_name` varchar(255) NOT NULL,
  `third_name` varchar(255) NOT NULL,
  `fourth_name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `education_level` enum('L3','M2') NOT NULL,
  `Average` int(11) NOT NULL,
  `Ranking` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table project.users: ~19 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `first_name`, `second_name`, `third_name`, `fourth_name`, `full_name`, `email`, `password`, `education_level`, `Average`, `Ranking`) VALUES
	(3, 'zara', 'godchi', 'amz', 'baba', 'mamaty', 'dikrabou@gmail.com', '$2y$10$RV7GyUeP497MUmQyzKi98uofFS0kmJTirD50ocCrLdsAjIODxrq8S', 'M2', 11, 0),
	(4, 'safia', 'hoda', 'dikra', 'assia', 'groupe', 'gyzyziozi@gmail.com', '$2y$10$zkVpEhSYM8w8AeBEQ/l67O3o/ifdeDqECF8RVH.4zwXXexK6rs.XW', 'M2', 12, 0),
	(5, 'dikra', 'iuy', 'djfirhfu', 'erjkejhfer', 'rozejreijr', 'foufa@gmail.com', '$2y$10$By2wsGbMj1T0o.Xf7/aZG.jg2gFM.H/UVOQWv//jGeXNvhFri7F2C', 'M2', 14, 0),
	(6, 'dikra', '', '', '', 'groupe1', 'foufita@gmail.com', '$2y$10$l0FCLa4G4JazZR1khqq.B.7LBz24ABCAk0MOPHsmTtmfbnXF4.W92', 'M2', 13, 0),
	(7, 'safia', 'hoda', 'dikra', 'assia', 'RAZAN', 'gdtysttsrfatzf@gmail.com', '$2y$10$nDwzeaLoCtfl8GqB.DGXTeZL6weCqk0iSOCS1yAHLPRZwBQ7y46Fq', 'M2', 15, 0),
	(9, 'dikra', 'houda', '', '', 'dik', 'mz@gmail.com', '$2y$10$4xbr5rUAmyYd6MDb2eZSBOmNYQCexLl2IfqN20ynClJ4HhJ5kGsWW', 'L3', 15, 2),
	(10, 'lala', 'fofa', '', '', 'sasa', 'sasa@gmail.com', '$2y$10$tIH/A9hu.09kYO7GuVz0beL1KGmxlCCtzAU2mk9HKLRD/uCpzYvki', 'M2', 0, 0),
	(11, 'dikra', 'klba', '', '', 'jfheehf', 'eeee@gamil.com', '$2y$10$P/QFzFoSugy6jx5AyFxRrOWrVi.f.XU782/8yV9MzfuBanGBJ86BO', 'M2', 0, 0),
	(12, 'safia', 'dikra', '', '', 'GG', 'gg@gmail.com', '$2y$10$l6Nu8qWm1q6mThh3t4pjKOKruomHDMP/yn15S9y2P3MfVE9lQCIsi', 'M2', 0, 0),
	(13, 'a', 'b', '', '', 'err', 'err@gmail.com', '$2y$10$C0P.UYpEIICO689BOEo6quQf2aDwDN6zgNfERpIbDNFy/LIQAtrIa', 'M2', 0, 0),
	(15, 'dikra', 'huda', '', '', 'DIKRA', 'dikrahuda@gmail.com', '$2y$10$rXC8jkqTvXrTSfZ66mM/sOWKeFLlLFycii2cXpHI0R11TscmAr8dS', 'M2', 0, 0),
	(16, 'ss', 'qq', '', '', 'hello', 'dik@gmail.com', '$2y$10$k2Uf44rqDTGuZYEHX2VVIOxz6zZ77olJjFXreq5xAH5e1iVw4eikG', 'M2', 0, 0),
	(17, 'selma', 'faiza', '', '', 'groupe2', 'selma@gmail.com', '$2y$10$9f5DVhmayBSuO/3uq2Xf7.wDamHQ72/OTV6DMJvNYqeuN1iRY0FL2', 'M2', 0, 0),
	(18, 'dikra boubidi ', 'dikra', '', '', 'groupe1', 'dikraa@gmail.com', '$2y$10$xFUJbCrN3GKZVyYlGrPk2O9y.bv4l.OOnnZo5MTPVKEVSuPV2zeJK', 'L3', 0, 0),
	(19, 'dikra', 'dikra', '', '', 'DIKRA', 'zz@gmail.com', '$2y$10$84iAoOCnspasQ3bkOeYZdOjXGJVLcNekZ8e.Ru/UfHXZsw/Cen0PC', 'M2', 0, 0),
	(20, 'sss', 'zezeer', '', '', 'rzeyzu', 'oi@gmail.com', '$2y$10$LU7oU43X7rV9hwjpcUsgH.VvrTy5/GaqbewhOjBO6iZieqPRFkxpO', 'M2', 0, 0),
	(22, 'baba', 'mama', '', '', 'azer', 'amrisamer54@gmail.com', '20032003', 'L3', 0, 0),
	(25, 'samer2', 'samer3', 'samer4', 'samer5', 'amrisamer2', 'amrisamer55@gmail.com', '$2y$10$Fpp9k0hdXB8LKgzm6iJ5Le/QmERTKwz00b3unayruhJl3ax3Bdkj2', 'L3', 0, 0),
	(26, 'samer2', 'samer3', 'samer4', 'samer5', 'dikra', 'dikraa1@gmail.com', '$2y$10$3v8GGtn1Xiuw3y0NDV8or..rYmZi/h.t4n1RTXkbNAc.Ez0.jp7ua', 'L3', 0, 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
