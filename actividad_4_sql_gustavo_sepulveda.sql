-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para lugares_en_el_mundo
CREATE DATABASE IF NOT EXISTS `lugares_en_el_mundo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lugares_en_el_mundo`;

-- Volcando estructura para tabla lugares_en_el_mundo.cities
CREATE TABLE IF NOT EXISTS `cities` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla contiene informacion sobre las ciudades';

-- Volcando datos para la tabla lugares_en_el_mundo.cities: ~9 rows (aproximadamente)
DELETE FROM `cities`;
INSERT INTO `cities` (`id`, `name`) VALUES
	(1, 'leticia'),
	(2, 'tokio'),
	(3, 'el_cairo'),
	(4, 'ciudad_de_mexico'),
	(5, 'madrid'),
	(6, 'moscu'),
	(7, 'buenos aires'),
	(8, 'paris'),
	(9, 'londres'),
	(10, 'roma'),
	(11, 'rio_de_janeiro'),
	(12, 'santiago');

-- Volcando estructura para tabla lugares_en_el_mundo.cities_countries_continents
CREATE TABLE IF NOT EXISTS `cities_countries_continents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ciudades_id` int(11) NOT NULL,
  `continentes_id` int(11) NOT NULL,
  `paises_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla lugares_en_el_mundo.cities_countries_continents: ~12 rows (aproximadamente)
DELETE FROM `cities_countries_continents`;
INSERT INTO `cities_countries_continents` (`id`, `ciudades_id`, `continentes_id`, `paises_id`) VALUES
	(1, 1, 1, 1),
	(2, 2, 2, 2),
	(3, 3, 5, 3),
	(4, 4, 1, 4),
	(5, 5, 4, 5),
	(6, 6, 5, 6),
	(7, 7, 1, 7),
	(8, 8, 3, 8),
	(9, 9, 3, 9),
	(10, 10, 3, 10),
	(11, 11, 1, 11),
	(12, 12, 1, 12);

-- Volcando estructura para tabla lugares_en_el_mundo.continents
CREATE TABLE IF NOT EXISTS `continents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla es para saber sobre los continentes';

-- Volcando datos para la tabla lugares_en_el_mundo.continents: ~5 rows (aproximadamente)
DELETE FROM `continents`;
INSERT INTO `continents` (`id`, `name`) VALUES
	(1, 'america'),
	(2, 'asia'),
	(3, 'europa'),
	(4, 'oceania'),
	(5, 'africa');

-- Volcando estructura para tabla lugares_en_el_mundo.countries
CREATE TABLE IF NOT EXISTS `countries` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla es para saber todo sobre los paises\r\n';

-- Volcando datos para la tabla lugares_en_el_mundo.countries: ~12 rows (aproximadamente)
DELETE FROM `countries`;
INSERT INTO `countries` (`id`, `name`) VALUES
	(1, 'colombia'),
	(2, 'japon'),
	(3, 'egipto'),
	(4, 'mexico'),
	(5, 'españa'),
	(6, 'rusia'),
	(7, 'argentina'),
	(8, 'francia'),
	(9, 'ingleterra'),
	(10, 'italia'),
	(11, 'brasil'),
	(12, 'chile');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
