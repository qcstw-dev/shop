-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 10 Août 2016 à 10:00
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `ps_access`
--

CREATE TABLE `ps_access` (
  `id_profile` int(10) UNSIGNED NOT NULL,
  `id_tab` int(10) UNSIGNED NOT NULL,
  `view` int(11) NOT NULL,
  `add` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_access`
--

INSERT INTO `ps_access` (`id_profile`, `id_tab`, `view`, `add`, `edit`, `delete`) VALUES
(1, 0, 1, 1, 1, 1),
(1, 1, 1, 1, 1, 1),
(1, 5, 1, 1, 1, 1),
(1, 7, 1, 1, 1, 1),
(1, 9, 1, 1, 1, 1),
(1, 10, 1, 1, 1, 1),
(1, 11, 1, 1, 1, 1),
(1, 13, 1, 1, 1, 1),
(1, 14, 1, 1, 1, 1),
(1, 15, 1, 1, 1, 1),
(1, 16, 1, 1, 1, 1),
(1, 19, 1, 1, 1, 1),
(1, 20, 1, 1, 1, 1),
(1, 21, 1, 1, 1, 1),
(1, 22, 1, 1, 1, 1),
(1, 23, 1, 1, 1, 1),
(1, 24, 1, 1, 1, 1),
(1, 25, 1, 1, 1, 1),
(1, 26, 1, 1, 1, 1),
(1, 27, 1, 1, 1, 1),
(1, 28, 1, 1, 1, 1),
(1, 29, 1, 1, 1, 1),
(1, 31, 1, 1, 1, 1),
(1, 32, 1, 1, 1, 1),
(1, 33, 1, 1, 1, 1),
(1, 34, 1, 1, 1, 1),
(1, 35, 1, 1, 1, 1),
(1, 36, 1, 1, 1, 1),
(1, 38, 1, 1, 1, 1),
(1, 39, 1, 1, 1, 1),
(1, 40, 1, 1, 1, 1),
(1, 41, 1, 1, 1, 1),
(1, 42, 1, 1, 1, 1),
(1, 44, 1, 1, 1, 1),
(1, 45, 1, 1, 1, 1),
(1, 48, 1, 1, 1, 1),
(1, 50, 1, 1, 1, 1),
(1, 52, 1, 1, 1, 1),
(1, 53, 1, 1, 1, 1),
(1, 54, 1, 1, 1, 1),
(1, 55, 1, 1, 1, 1),
(1, 56, 1, 1, 1, 1),
(1, 57, 1, 1, 1, 1),
(1, 58, 1, 1, 1, 1),
(1, 59, 1, 1, 1, 1),
(1, 61, 1, 1, 1, 1),
(1, 62, 1, 1, 1, 1),
(1, 63, 1, 1, 1, 1),
(1, 66, 1, 1, 1, 1),
(1, 67, 1, 1, 1, 1),
(1, 68, 1, 1, 1, 1),
(1, 69, 1, 1, 1, 1),
(1, 70, 1, 1, 1, 1),
(1, 71, 1, 1, 1, 1),
(1, 73, 1, 1, 1, 1),
(1, 74, 1, 1, 1, 1),
(1, 75, 1, 1, 1, 1),
(1, 76, 1, 1, 1, 1),
(1, 77, 1, 1, 1, 1),
(1, 78, 1, 1, 1, 1),
(1, 80, 1, 1, 1, 1),
(1, 81, 1, 1, 1, 1),
(1, 82, 1, 1, 1, 1),
(1, 83, 1, 1, 1, 1),
(1, 84, 1, 1, 1, 1),
(1, 86, 1, 1, 1, 1),
(1, 87, 1, 1, 1, 1),
(1, 88, 1, 1, 1, 1),
(1, 89, 1, 1, 1, 1),
(1, 92, 1, 1, 1, 1),
(1, 93, 1, 1, 1, 1),
(1, 94, 1, 1, 1, 1),
(1, 95, 1, 1, 1, 1),
(1, 96, 1, 1, 1, 1),
(1, 99, 1, 1, 1, 1),
(1, 100, 1, 1, 1, 1),
(1, 101, 1, 1, 1, 1),
(1, 102, 1, 1, 1, 1),
(1, 103, 1, 1, 1, 1),
(1, 104, 1, 1, 1, 1),
(1, 105, 1, 1, 1, 1),
(1, 107, 1, 1, 1, 1),
(1, 108, 1, 1, 1, 1),
(1, 109, 1, 1, 1, 1),
(1, 110, 1, 1, 1, 1),
(2, 0, 1, 1, 1, 1),
(2, 1, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0),
(2, 3, 0, 0, 0, 0),
(2, 4, 0, 0, 0, 0),
(2, 5, 0, 0, 0, 0),
(2, 6, 0, 0, 0, 0),
(2, 7, 0, 0, 0, 0),
(2, 8, 0, 0, 0, 0),
(2, 9, 1, 1, 1, 1),
(2, 10, 1, 1, 1, 1),
(2, 11, 1, 1, 1, 1),
(2, 12, 0, 0, 0, 0),
(2, 13, 1, 0, 1, 0),
(2, 14, 1, 1, 1, 1),
(2, 15, 0, 0, 0, 0),
(2, 16, 0, 0, 0, 0),
(2, 17, 0, 0, 0, 0),
(2, 18, 0, 0, 0, 0),
(2, 19, 0, 0, 0, 0),
(2, 20, 1, 1, 1, 1),
(2, 21, 1, 1, 1, 1),
(2, 22, 1, 1, 1, 1),
(2, 23, 1, 1, 1, 1),
(2, 24, 0, 0, 0, 0),
(2, 25, 0, 0, 0, 0),
(2, 26, 0, 0, 0, 0),
(2, 27, 1, 1, 1, 1),
(2, 28, 0, 0, 0, 0),
(2, 29, 0, 0, 0, 0),
(2, 30, 1, 1, 1, 1),
(2, 31, 1, 1, 1, 1),
(2, 32, 1, 1, 1, 1),
(2, 33, 1, 1, 1, 1),
(2, 34, 1, 1, 1, 1),
(2, 35, 1, 1, 1, 1),
(2, 36, 0, 0, 0, 0),
(2, 37, 1, 1, 1, 1),
(2, 38, 1, 1, 1, 1),
(2, 39, 0, 0, 0, 0),
(2, 40, 0, 0, 0, 0),
(2, 41, 0, 0, 0, 0),
(2, 42, 0, 0, 0, 0),
(2, 43, 0, 0, 0, 0),
(2, 44, 0, 0, 0, 0),
(2, 45, 0, 0, 0, 0),
(2, 46, 0, 0, 0, 0),
(2, 47, 0, 0, 0, 0),
(2, 48, 1, 1, 1, 1),
(2, 49, 1, 1, 1, 1),
(2, 50, 0, 0, 0, 0),
(2, 51, 0, 0, 0, 0),
(2, 52, 0, 0, 0, 0),
(2, 53, 0, 0, 0, 0),
(2, 54, 0, 0, 0, 0),
(2, 55, 0, 0, 0, 0),
(2, 56, 0, 0, 0, 0),
(2, 57, 0, 0, 0, 0),
(2, 58, 0, 0, 0, 0),
(2, 59, 0, 0, 0, 0),
(2, 60, 1, 0, 1, 0),
(2, 61, 0, 0, 0, 0),
(2, 62, 0, 0, 0, 0),
(2, 63, 0, 0, 0, 0),
(2, 64, 0, 0, 0, 0),
(2, 65, 0, 0, 0, 0),
(2, 66, 0, 0, 0, 0),
(2, 67, 0, 0, 0, 0),
(2, 68, 0, 0, 0, 0),
(2, 69, 0, 0, 0, 0),
(2, 70, 0, 0, 0, 0),
(2, 71, 0, 0, 0, 0),
(2, 72, 0, 0, 0, 0),
(2, 73, 0, 0, 0, 0),
(2, 74, 0, 0, 0, 0),
(2, 75, 0, 0, 0, 0),
(2, 76, 0, 0, 0, 0),
(2, 77, 0, 0, 0, 0),
(2, 78, 0, 0, 0, 0),
(2, 79, 0, 0, 0, 0),
(2, 80, 0, 0, 0, 0),
(2, 81, 0, 0, 0, 0),
(2, 82, 0, 0, 0, 0),
(2, 83, 0, 0, 0, 0),
(2, 84, 0, 0, 0, 0),
(2, 85, 0, 0, 0, 0),
(2, 86, 0, 0, 0, 0),
(2, 87, 0, 0, 0, 0),
(2, 88, 0, 0, 0, 0),
(2, 89, 0, 0, 0, 0),
(2, 90, 0, 0, 0, 0),
(2, 91, 0, 0, 0, 0),
(2, 92, 0, 0, 0, 0),
(2, 93, 0, 0, 0, 0),
(2, 94, 1, 1, 1, 1),
(2, 95, 1, 1, 1, 1),
(2, 96, 1, 1, 1, 1),
(2, 97, 0, 0, 0, 0),
(2, 98, 0, 0, 0, 0),
(2, 99, 1, 1, 1, 1),
(2, 100, 1, 1, 1, 1),
(2, 101, 0, 0, 0, 0),
(2, 102, 0, 0, 0, 0),
(2, 103, 0, 0, 0, 0),
(2, 104, 0, 0, 0, 0),
(2, 105, 0, 0, 0, 0),
(2, 107, 0, 0, 0, 0),
(2, 108, 0, 0, 0, 0),
(2, 109, 0, 0, 0, 0),
(2, 110, 0, 0, 0, 0),
(3, 0, 1, 1, 1, 1),
(3, 1, 0, 0, 0, 0),
(3, 2, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0),
(3, 4, 0, 0, 0, 0),
(3, 5, 1, 0, 0, 0),
(3, 6, 0, 0, 0, 0),
(3, 7, 0, 0, 0, 0),
(3, 8, 0, 0, 0, 0),
(3, 9, 1, 1, 1, 1),
(3, 10, 0, 0, 0, 0),
(3, 11, 0, 0, 0, 0),
(3, 12, 0, 0, 0, 0),
(3, 13, 0, 0, 0, 0),
(3, 14, 0, 0, 0, 0),
(3, 15, 1, 0, 0, 0),
(3, 16, 1, 0, 0, 0),
(3, 17, 0, 0, 0, 0),
(3, 18, 0, 0, 0, 0),
(3, 19, 0, 0, 0, 0),
(3, 20, 0, 0, 0, 0),
(3, 21, 1, 1, 1, 1),
(3, 22, 1, 1, 1, 1),
(3, 23, 0, 0, 0, 0),
(3, 24, 0, 0, 0, 0),
(3, 25, 0, 0, 0, 0),
(3, 26, 0, 0, 0, 0),
(3, 27, 0, 0, 0, 0),
(3, 28, 0, 0, 0, 0),
(3, 29, 0, 0, 0, 0),
(3, 30, 0, 0, 0, 0),
(3, 31, 0, 0, 0, 0),
(3, 32, 0, 0, 0, 0),
(3, 33, 0, 0, 0, 0),
(3, 34, 0, 0, 0, 0),
(3, 35, 0, 0, 0, 0),
(3, 36, 0, 0, 0, 0),
(3, 37, 0, 0, 0, 0),
(3, 38, 0, 0, 0, 0),
(3, 39, 0, 0, 0, 0),
(3, 40, 0, 0, 0, 0),
(3, 41, 0, 0, 0, 0),
(3, 42, 0, 0, 0, 0),
(3, 43, 0, 0, 0, 0),
(3, 44, 0, 0, 0, 0),
(3, 45, 0, 0, 0, 0),
(3, 46, 0, 0, 0, 0),
(3, 47, 0, 0, 0, 0),
(3, 48, 0, 0, 0, 0),
(3, 49, 0, 0, 0, 0),
(3, 50, 0, 0, 0, 0),
(3, 51, 0, 0, 0, 0),
(3, 52, 0, 0, 0, 0),
(3, 53, 0, 0, 0, 0),
(3, 54, 0, 0, 0, 0),
(3, 55, 0, 0, 0, 0),
(3, 56, 0, 0, 0, 0),
(3, 57, 0, 0, 0, 0),
(3, 58, 0, 0, 0, 0),
(3, 59, 1, 1, 1, 1),
(3, 60, 0, 0, 0, 0),
(3, 61, 0, 0, 0, 0),
(3, 62, 0, 0, 0, 0),
(3, 63, 0, 0, 0, 0),
(3, 64, 0, 0, 0, 0),
(3, 65, 0, 0, 0, 0),
(3, 66, 0, 0, 0, 0),
(3, 67, 0, 0, 0, 0),
(3, 68, 0, 0, 0, 0),
(3, 69, 0, 0, 0, 0),
(3, 70, 1, 1, 1, 1),
(3, 71, 0, 0, 0, 0),
(3, 72, 0, 0, 0, 0),
(3, 73, 0, 0, 0, 0),
(3, 74, 0, 0, 0, 0),
(3, 75, 0, 0, 0, 0),
(3, 76, 0, 0, 0, 0),
(3, 77, 0, 0, 0, 0),
(3, 78, 0, 0, 0, 0),
(3, 79, 0, 0, 0, 0),
(3, 80, 0, 0, 0, 0),
(3, 81, 0, 0, 0, 0),
(3, 82, 0, 0, 0, 0),
(3, 83, 0, 0, 0, 0),
(3, 84, 0, 0, 0, 0),
(3, 85, 0, 0, 0, 0),
(3, 86, 0, 0, 0, 0),
(3, 87, 0, 0, 0, 0),
(3, 88, 0, 0, 0, 0),
(3, 89, 0, 0, 0, 0),
(3, 90, 0, 0, 0, 0),
(3, 91, 0, 0, 0, 0),
(3, 92, 0, 0, 0, 0),
(3, 93, 0, 0, 0, 0),
(3, 94, 0, 0, 0, 0),
(3, 95, 0, 0, 0, 0),
(3, 96, 0, 0, 0, 0),
(3, 97, 0, 0, 0, 0),
(3, 98, 0, 0, 0, 0),
(3, 99, 0, 0, 0, 0),
(3, 100, 0, 0, 0, 0),
(3, 101, 0, 0, 0, 0),
(3, 102, 0, 0, 0, 0),
(3, 103, 0, 0, 0, 0),
(3, 104, 0, 0, 0, 0),
(3, 105, 0, 0, 0, 0),
(3, 107, 0, 0, 0, 0),
(3, 108, 0, 0, 0, 0),
(3, 109, 0, 0, 0, 0),
(3, 110, 0, 0, 0, 0),
(4, 0, 1, 1, 1, 1),
(4, 1, 0, 0, 0, 0),
(4, 2, 0, 0, 0, 0),
(4, 3, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 0),
(4, 5, 1, 0, 0, 0),
(4, 6, 0, 0, 0, 0),
(4, 7, 0, 0, 0, 0),
(4, 8, 0, 0, 0, 0),
(4, 9, 1, 1, 1, 1),
(4, 10, 1, 1, 1, 1),
(4, 11, 1, 1, 1, 1),
(4, 12, 0, 0, 0, 0),
(4, 13, 1, 0, 1, 0),
(4, 14, 0, 0, 0, 0),
(4, 15, 0, 0, 0, 0),
(4, 16, 0, 0, 0, 0),
(4, 17, 0, 0, 0, 0),
(4, 18, 0, 0, 0, 0),
(4, 19, 1, 1, 1, 1),
(4, 20, 1, 0, 0, 0),
(4, 21, 1, 1, 1, 1),
(4, 22, 1, 1, 1, 1),
(4, 23, 0, 0, 0, 0),
(4, 24, 0, 0, 0, 0),
(4, 25, 0, 0, 0, 0),
(4, 26, 1, 0, 0, 0),
(4, 27, 0, 0, 0, 0),
(4, 28, 0, 0, 0, 0),
(4, 29, 0, 0, 0, 0),
(4, 30, 1, 1, 1, 1),
(4, 31, 1, 1, 1, 1),
(4, 32, 0, 0, 0, 0),
(4, 33, 0, 0, 0, 0),
(4, 34, 1, 1, 1, 1),
(4, 35, 0, 0, 0, 0),
(4, 36, 1, 1, 1, 1),
(4, 37, 1, 1, 1, 1),
(4, 38, 1, 1, 1, 1),
(4, 39, 1, 1, 1, 1),
(4, 40, 1, 1, 1, 1),
(4, 41, 0, 0, 0, 0),
(4, 42, 0, 0, 0, 0),
(4, 43, 0, 0, 0, 0),
(4, 44, 0, 0, 0, 0),
(4, 45, 0, 0, 0, 0),
(4, 46, 0, 0, 0, 0),
(4, 47, 0, 0, 0, 0),
(4, 48, 0, 0, 0, 0),
(4, 49, 0, 0, 0, 0),
(4, 50, 0, 0, 0, 0),
(4, 51, 0, 0, 0, 0),
(4, 52, 0, 0, 0, 0),
(4, 53, 0, 0, 0, 0),
(4, 54, 0, 0, 0, 0),
(4, 55, 0, 0, 0, 0),
(4, 56, 0, 0, 0, 0),
(4, 57, 0, 0, 0, 0),
(4, 58, 0, 0, 0, 0),
(4, 59, 0, 0, 0, 0),
(4, 60, 1, 0, 1, 0),
(4, 61, 0, 0, 0, 0),
(4, 62, 0, 0, 0, 0),
(4, 63, 0, 0, 0, 0),
(4, 64, 0, 0, 0, 0),
(4, 65, 0, 0, 0, 0),
(4, 66, 0, 0, 0, 0),
(4, 67, 0, 0, 0, 0),
(4, 68, 0, 0, 0, 0),
(4, 69, 0, 0, 0, 0),
(4, 70, 0, 0, 0, 0),
(4, 71, 0, 0, 0, 0),
(4, 72, 0, 0, 0, 0),
(4, 73, 0, 0, 0, 0),
(4, 74, 0, 0, 0, 0),
(4, 75, 0, 0, 0, 0),
(4, 76, 0, 0, 0, 0),
(4, 77, 0, 0, 0, 0),
(4, 78, 0, 0, 0, 0),
(4, 79, 0, 0, 0, 0),
(4, 80, 0, 0, 0, 0),
(4, 81, 0, 0, 0, 0),
(4, 82, 0, 0, 0, 0),
(4, 83, 0, 0, 0, 0),
(4, 84, 1, 1, 1, 1),
(4, 85, 0, 0, 0, 0),
(4, 86, 0, 0, 0, 0),
(4, 87, 0, 0, 0, 0),
(4, 88, 0, 0, 0, 0),
(4, 89, 0, 0, 0, 0),
(4, 90, 0, 0, 0, 0),
(4, 91, 1, 1, 1, 1),
(4, 92, 0, 0, 0, 0),
(4, 93, 1, 1, 1, 1),
(4, 94, 0, 0, 0, 0),
(4, 95, 0, 0, 0, 0),
(4, 96, 0, 0, 0, 0),
(4, 97, 0, 0, 0, 0),
(4, 98, 0, 0, 0, 0),
(4, 99, 1, 0, 0, 0),
(4, 100, 0, 0, 0, 0),
(4, 101, 0, 0, 0, 0),
(4, 102, 0, 0, 0, 0),
(4, 103, 0, 0, 0, 0),
(4, 104, 0, 0, 0, 0),
(4, 105, 0, 0, 0, 0),
(4, 107, 0, 0, 0, 0),
(4, 108, 0, 0, 0, 0),
(4, 109, 0, 0, 0, 0),
(4, 110, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_accessory`
--

CREATE TABLE `ps_accessory` (
  `id_product_1` int(10) UNSIGNED NOT NULL,
  `id_product_2` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_address`
--

CREATE TABLE `ps_address` (
  `id_address` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_state` int(10) UNSIGNED DEFAULT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_supplier` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_warehouse` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(64) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(32) DEFAULT NULL,
  `phone_mobile` varchar(32) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_address`
--

INSERT INTO `ps_address` (`id_address`, `id_country`, `id_state`, `id_customer`, `id_manufacturer`, `id_supplier`, `id_warehouse`, `alias`, `company`, `lastname`, `firstname`, `address1`, `address2`, `postcode`, `city`, `other`, `phone`, `phone_mobile`, `vat_number`, `dni`, `date_add`, `date_upd`, `active`, `deleted`) VALUES
(1, 8, 0, 1, 0, 0, 0, 'Mon adresse', 'My Company', 'DOE', 'John', '16, Main street', '2nd floor', '75002', 'Paris ', '', '0102030405', '', '', '', '2016-08-03 23:12:04', '2016-08-03 23:12:04', 1, 0),
(2, 21, 32, 0, 0, 1, 0, 'supplier', 'Fashion', 'supplier', 'supplier', '767 Fifth Ave.', '', '10153', 'New York', '', '(212) 336-1440', '', '', '', '2016-08-03 23:12:04', '2016-08-03 23:12:04', 1, 0),
(3, 21, 32, 0, 1, 0, 0, 'manufacturer', 'Fashion', 'manufacturer', 'manufacturer', '767 Fifth Ave.', '', '10154', 'New York', '', '(212) 336-1666', '', '', '', '2016-08-03 23:12:04', '2016-08-03 23:12:04', 1, 0),
(4, 21, 9, 1, 0, 0, 0, 'My address', 'My Company', 'DOE', 'John', '16, Main street', '2nd floor', '33133', 'Miami', '', '0102030405', '', '', '', '2016-08-03 23:12:04', '2016-08-03 23:12:04', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_address_format`
--

CREATE TABLE `ps_address_format` (
  `id_country` int(10) UNSIGNED NOT NULL,
  `format` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_address_format`
--

INSERT INTO `ps_address_format` (`id_country`, `format`) VALUES
(1, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(2, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(3, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(4, 'firstname lastname\ncompany\naddress1\naddress2\ncity State:name postcode\nCountry:name\nphone\nphone_mobile'),
(5, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(6, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(7, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(8, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(9, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(10, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(11, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(12, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(13, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(14, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(15, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(16, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(17, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\ncity\npostcode\nCountry:name\nphone\nphone_mobile'),
(18, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(19, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(20, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(21, 'firstname lastname\ncompany\naddress1 address2\ncity, State:name postcode\nCountry:name\nphone\nphone_mobile'),
(22, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(23, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(24, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(25, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(26, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(27, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(28, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(29, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(30, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(31, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(32, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(33, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(34, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(35, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(36, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(37, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(38, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(39, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(40, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(41, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(42, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(43, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(44, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(45, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(46, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(47, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(48, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(49, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(50, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(51, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(52, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(53, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(54, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(55, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(56, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(57, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(58, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(59, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(60, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(61, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(62, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(63, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(64, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(65, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(66, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(67, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(68, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(69, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(70, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(71, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(72, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(73, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(74, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(75, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(76, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(77, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(78, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(79, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(80, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(81, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(82, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(83, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(84, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(85, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(86, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(87, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(88, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(89, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(90, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(91, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(92, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(93, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(94, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(95, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(96, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(97, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(98, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(99, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(100, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(101, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(102, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(103, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(104, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(105, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(106, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(107, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(108, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(109, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(110, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(111, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(112, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(113, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(114, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(115, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(116, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(117, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(118, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(119, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(120, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(121, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(122, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(123, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(124, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(125, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(126, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(127, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(128, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(129, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(130, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(131, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(132, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(133, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(134, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(135, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(136, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(137, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(138, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(139, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(140, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(141, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(142, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(143, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(144, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(145, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(146, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(147, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(148, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(149, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(150, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(151, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(152, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(153, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(154, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(155, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(156, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(157, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(158, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(159, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(160, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(161, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(162, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(163, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(164, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(165, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(166, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(167, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(168, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(169, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(170, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(171, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(172, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(173, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(174, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(175, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(176, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(177, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(178, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(179, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(180, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(181, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(182, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(183, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(184, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(185, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(186, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(187, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(188, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(189, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(190, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(191, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(192, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(193, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(194, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(195, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(196, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(197, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(198, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(199, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(200, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(201, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(202, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(203, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(204, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(205, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(206, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(207, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(208, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(209, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(210, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(211, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(212, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(213, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(214, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(215, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(216, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(217, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(218, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(219, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(220, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(221, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(222, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(223, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(224, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(225, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(226, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(227, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(228, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(229, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(230, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(231, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(232, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(233, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(234, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(235, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(236, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(237, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(238, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(239, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(240, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(241, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(242, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(243, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(244, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile');

-- --------------------------------------------------------

--
-- Structure de la table `ps_advice`
--

CREATE TABLE `ps_advice` (
  `id_advice` int(11) NOT NULL,
  `id_ps_advice` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `ids_tab` text,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `location` enum('after','before') NOT NULL,
  `selector` varchar(255) DEFAULT NULL,
  `start_day` int(11) NOT NULL DEFAULT '0',
  `stop_day` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_advice_lang`
--

CREATE TABLE `ps_advice_lang` (
  `id_advice` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_alias`
--

CREATE TABLE `ps_alias` (
  `id_alias` int(10) UNSIGNED NOT NULL,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_alias`
--

INSERT INTO `ps_alias` (`id_alias`, `alias`, `search`, `active`) VALUES
(1, 'bloose', 'blouse', 1),
(2, 'blues', 'blouse', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_attachment`
--

CREATE TABLE `ps_attachment` (
  `id_attachment` int(10) UNSIGNED NOT NULL,
  `file` varchar(40) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `file_size` bigint(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_attachment_lang`
--

CREATE TABLE `ps_attachment_lang` (
  `id_attachment` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_attribute`
--

CREATE TABLE `ps_attribute` (
  `id_attribute` int(10) UNSIGNED NOT NULL,
  `id_attribute_group` int(10) UNSIGNED NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_attribute`
--

INSERT INTO `ps_attribute` (`id_attribute`, `id_attribute_group`, `color`, `position`) VALUES
(5, 3, '#f09005', 0),
(25, 3, '#d3093b', 14),
(26, 3, '#014a97', 15),
(27, 3, '#751880', 16),
(28, 3, '#000000', 17),
(29, 3, '#009e87', 18),
(30, 3, '#ffffff', 19),
(31, 3, '#03a2d9', 20),
(32, 3, '#eba0c1', 21),
(33, 3, '#fdd706', 22),
(34, 3, '#e43b28', 23),
(35, 3, '#bdd683', 24),
(36, 3, '#006e3b', 25);

-- --------------------------------------------------------

--
-- Structure de la table `ps_attribute_group`
--

CREATE TABLE `ps_attribute_group` (
  `id_attribute_group` int(10) UNSIGNED NOT NULL,
  `is_color_group` tinyint(1) NOT NULL DEFAULT '0',
  `group_type` enum('select','radio','color') NOT NULL DEFAULT 'select',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_attribute_group`
--

INSERT INTO `ps_attribute_group` (`id_attribute_group`, `is_color_group`, `group_type`, `position`) VALUES
(3, 1, 'color', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_attribute_group_lang`
--

CREATE TABLE `ps_attribute_group_lang` (
  `id_attribute_group` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `public_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_attribute_group_lang`
--

INSERT INTO `ps_attribute_group_lang` (`id_attribute_group`, `id_lang`, `name`, `public_name`) VALUES
(3, 1, 'Color', 'Color'),
(3, 2, 'Color', 'Color'),
(3, 3, 'Color', 'Color'),
(3, 4, 'Color', 'Color'),
(3, 5, 'Color', 'Color');

-- --------------------------------------------------------

--
-- Structure de la table `ps_attribute_group_shop`
--

CREATE TABLE `ps_attribute_group_shop` (
  `id_attribute_group` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_attribute_group_shop`
--

INSERT INTO `ps_attribute_group_shop` (`id_attribute_group`, `id_shop`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_attribute_impact`
--

CREATE TABLE `ps_attribute_impact` (
  `id_attribute_impact` int(10) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_attribute` int(11) UNSIGNED NOT NULL,
  `weight` decimal(20,6) NOT NULL,
  `price` decimal(17,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_attribute_lang`
--

CREATE TABLE `ps_attribute_lang` (
  `id_attribute` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_attribute_lang`
--

INSERT INTO `ps_attribute_lang` (`id_attribute`, `id_lang`, `name`) VALUES
(5, 1, '01-pms021c'),
(25, 1, '02-pms200c'),
(26, 1, '03-pms287c'),
(27, 1, '04-pms2602'),
(28, 1, '05-pmsblack'),
(29, 1, '06-pmsgreenc'),
(30, 1, '07-pms1'),
(31, 1, '08-pms312c'),
(32, 1, '09-pms237c'),
(33, 1, '10-pms116c'),
(34, 1, '11-pms032c'),
(35, 1, '12-pms367c'),
(36, 1, '13-pms349c'),
(25, 2, '02-pms200c'),
(26, 2, '03-pms287c'),
(27, 2, '04-pms2602'),
(28, 2, '05-pmsblack'),
(29, 2, '06-pmsgreenc'),
(30, 2, '07-pms1'),
(31, 2, '08-pms312c'),
(32, 2, '09-pms237c'),
(33, 2, '10-pms116c'),
(34, 2, '11-pms032c'),
(35, 2, '12-pms367c'),
(36, 2, '13-pms349c'),
(5, 2, 'Grey'),
(25, 3, '02-pms200c'),
(26, 3, '03-pms287c'),
(27, 3, '04-pms2602'),
(28, 3, '05-pmsblack'),
(29, 3, '06-pmsgreenc'),
(30, 3, '07-pms1'),
(31, 3, '08-pms312c'),
(32, 3, '09-pms237c'),
(33, 3, '10-pms116c'),
(34, 3, '11-pms032c'),
(35, 3, '12-pms367c'),
(36, 3, '13-pms349c'),
(5, 3, 'Grey'),
(25, 4, '02-pms200c'),
(26, 4, '03-pms287c'),
(27, 4, '04-pms2602'),
(28, 4, '05-pmsblack'),
(29, 4, '06-pmsgreenc'),
(30, 4, '07-pms1'),
(31, 4, '08-pms312c'),
(32, 4, '09-pms237c'),
(33, 4, '10-pms116c'),
(34, 4, '11-pms032c'),
(35, 4, '12-pms367c'),
(36, 4, '13-pms349c'),
(5, 4, 'Grey'),
(25, 5, '02-pms200c'),
(26, 5, '03-pms287c'),
(27, 5, '04-pms2602'),
(28, 5, '05-pmsblack'),
(29, 5, '06-pmsgreenc'),
(30, 5, '07-pms1'),
(31, 5, '08-pms312c'),
(32, 5, '09-pms237c'),
(33, 5, '10-pms116c'),
(34, 5, '11-pms032c'),
(35, 5, '12-pms367c'),
(36, 5, '13-pms349c'),
(5, 5, 'Grey');

-- --------------------------------------------------------

--
-- Structure de la table `ps_attribute_shop`
--

CREATE TABLE `ps_attribute_shop` (
  `id_attribute` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_attribute_shop`
--

INSERT INTO `ps_attribute_shop` (`id_attribute`, `id_shop`) VALUES
(5, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_badge`
--

CREATE TABLE `ps_badge` (
  `id_badge` int(11) NOT NULL,
  `id_ps_badge` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `id_group` int(11) NOT NULL,
  `group_position` int(11) NOT NULL,
  `scoring` int(11) NOT NULL,
  `awb` int(11) DEFAULT '0',
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_badge`
--

INSERT INTO `ps_badge` (`id_badge`, `id_ps_badge`, `type`, `id_group`, `group_position`, `scoring`, `awb`, `validated`) VALUES
(1, 159, 'feature', 41, 1, 5, 1, 0),
(2, 160, 'feature', 41, 2, 10, 1, 0),
(3, 161, 'feature', 41, 3, 15, 1, 0),
(4, 162, 'feature', 41, 4, 20, 1, 0),
(5, 163, 'feature', 41, 1, 5, 1, 0),
(6, 164, 'feature', 41, 2, 10, 1, 0),
(7, 165, 'feature', 41, 3, 15, 1, 0),
(8, 166, 'feature', 41, 4, 20, 1, 0),
(9, 195, 'feature', 41, 1, 5, 1, 0),
(10, 196, 'feature', 41, 2, 10, 1, 0),
(11, 229, 'feature', 41, 1, 5, 1, 0),
(12, 230, 'feature', 41, 2, 10, 1, 0),
(13, 231, 'feature', 41, 3, 15, 1, 0),
(14, 232, 'feature', 41, 4, 20, 1, 0),
(15, 233, 'feature', 41, 1, 5, 1, 0),
(16, 234, 'feature', 41, 2, 10, 1, 0),
(17, 235, 'feature', 41, 3, 15, 1, 0),
(18, 236, 'feature', 41, 4, 20, 1, 0),
(19, 241, 'feature', 41, 1, 5, 1, 0),
(20, 242, 'feature', 41, 2, 10, 1, 0),
(21, 243, 'feature', 41, 3, 15, 1, 0),
(22, 244, 'feature', 41, 4, 20, 1, 0),
(23, 249, 'feature', 41, 1, 5, 1, 0),
(24, 250, 'feature', 41, 2, 10, 1, 0),
(25, 251, 'feature', 41, 3, 15, 1, 0),
(26, 252, 'feature', 41, 4, 20, 1, 0),
(27, 253, 'feature', 41, 1, 5, 1, 0),
(28, 254, 'feature', 41, 2, 10, 1, 0),
(29, 255, 'feature', 41, 3, 15, 1, 0),
(30, 256, 'feature', 41, 4, 20, 1, 0),
(31, 261, 'feature', 41, 1, 5, 1, 0),
(32, 262, 'feature', 41, 2, 10, 1, 0),
(33, 269, 'feature', 41, 1, 5, 1, 0),
(34, 270, 'feature', 41, 2, 10, 1, 0),
(35, 271, 'feature', 41, 3, 15, 1, 0),
(36, 272, 'feature', 41, 4, 20, 1, 0),
(37, 273, 'feature', 41, 1, 5, 1, 0),
(38, 274, 'feature', 41, 2, 10, 1, 0),
(39, 275, 'feature', 41, 3, 15, 1, 0),
(40, 276, 'feature', 41, 4, 20, 1, 0),
(41, 277, 'feature', 41, 1, 5, 1, 0),
(42, 278, 'feature', 41, 2, 10, 1, 0),
(43, 279, 'feature', 41, 3, 15, 1, 0),
(44, 280, 'feature', 41, 4, 20, 1, 0),
(45, 281, 'feature', 41, 1, 5, 1, 0),
(46, 282, 'feature', 41, 2, 10, 1, 0),
(47, 283, 'feature', 41, 3, 15, 1, 0),
(48, 284, 'feature', 41, 4, 20, 1, 0),
(49, 285, 'feature', 41, 1, 5, 1, 0),
(50, 286, 'feature', 41, 2, 10, 1, 0),
(51, 287, 'feature', 41, 3, 15, 1, 0),
(52, 288, 'feature', 41, 4, 20, 1, 0),
(53, 289, 'feature', 41, 1, 5, 1, 0),
(54, 290, 'feature', 41, 2, 10, 1, 0),
(55, 291, 'feature', 41, 3, 15, 1, 0),
(56, 292, 'feature', 41, 4, 20, 1, 0),
(57, 293, 'feature', 41, 1, 5, 1, 0),
(58, 294, 'feature', 41, 2, 10, 1, 0),
(59, 295, 'feature', 41, 3, 15, 1, 0),
(60, 296, 'feature', 41, 4, 20, 1, 0),
(61, 297, 'feature', 41, 1, 5, 1, 0),
(62, 298, 'feature', 41, 2, 10, 1, 0),
(63, 299, 'feature', 41, 3, 15, 1, 0),
(64, 300, 'feature', 41, 4, 20, 1, 0),
(65, 301, 'feature', 41, 1, 5, 1, 0),
(66, 302, 'feature', 41, 2, 10, 1, 0),
(67, 303, 'feature', 41, 3, 15, 1, 0),
(68, 304, 'feature', 41, 4, 20, 1, 0),
(69, 305, 'feature', 41, 1, 5, 1, 0),
(70, 306, 'feature', 41, 2, 10, 1, 0),
(71, 307, 'feature', 41, 3, 15, 1, 0),
(72, 308, 'feature', 41, 4, 20, 1, 0),
(73, 309, 'feature', 41, 1, 5, 1, 0),
(74, 310, 'feature', 41, 2, 10, 1, 0),
(75, 311, 'feature', 41, 3, 15, 1, 0),
(76, 312, 'feature', 41, 4, 20, 1, 0),
(77, 313, 'feature', 41, 1, 5, 1, 0),
(78, 314, 'feature', 41, 2, 10, 1, 0),
(79, 315, 'feature', 41, 3, 15, 1, 0),
(80, 316, 'feature', 41, 4, 20, 1, 0),
(81, 317, 'feature', 41, 1, 5, 1, 0),
(82, 318, 'feature', 41, 2, 10, 1, 0),
(83, 319, 'feature', 41, 3, 15, 1, 0),
(84, 320, 'feature', 41, 4, 20, 1, 0),
(85, 321, 'feature', 41, 1, 5, 1, 0),
(86, 322, 'feature', 41, 2, 10, 1, 0),
(87, 323, 'feature', 41, 3, 15, 1, 0),
(88, 324, 'feature', 41, 4, 20, 1, 0),
(89, 325, 'feature', 41, 1, 5, 1, 0),
(90, 326, 'feature', 41, 2, 10, 1, 0),
(91, 327, 'feature', 41, 3, 15, 1, 0),
(92, 328, 'feature', 41, 4, 20, 1, 0),
(93, 329, 'feature', 41, 1, 5, 1, 0),
(94, 330, 'feature', 41, 2, 10, 1, 0),
(95, 331, 'feature', 41, 3, 15, 1, 0),
(96, 332, 'feature', 41, 4, 20, 1, 0),
(97, 333, 'feature', 41, 1, 5, 1, 0),
(98, 334, 'feature', 41, 2, 10, 1, 0),
(99, 335, 'feature', 41, 3, 15, 1, 0),
(100, 336, 'feature', 41, 4, 20, 1, 0),
(101, 337, 'feature', 41, 1, 5, 1, 0),
(102, 338, 'feature', 41, 2, 10, 1, 0),
(103, 339, 'feature', 41, 3, 15, 1, 0),
(104, 340, 'feature', 41, 4, 20, 1, 0),
(105, 341, 'feature', 41, 1, 5, 1, 0),
(106, 342, 'feature', 41, 2, 10, 1, 0),
(107, 343, 'feature', 41, 3, 15, 1, 0),
(108, 344, 'feature', 41, 4, 20, 1, 0),
(109, 345, 'feature', 41, 1, 5, 1, 0),
(110, 346, 'feature', 41, 2, 10, 1, 0),
(111, 347, 'feature', 41, 3, 15, 1, 0),
(112, 348, 'feature', 41, 4, 20, 1, 0),
(113, 349, 'feature', 41, 1, 5, 1, 0),
(114, 350, 'feature', 41, 2, 10, 1, 0),
(115, 351, 'feature', 41, 3, 15, 1, 0),
(116, 352, 'feature', 41, 4, 20, 1, 0),
(117, 353, 'feature', 41, 1, 5, 1, 0),
(118, 354, 'feature', 41, 2, 10, 1, 0),
(119, 355, 'feature', 41, 3, 15, 1, 0),
(120, 356, 'feature', 41, 4, 20, 1, 0),
(121, 357, 'feature', 41, 1, 5, 1, 0),
(122, 358, 'feature', 41, 2, 10, 1, 0),
(123, 359, 'feature', 41, 3, 15, 1, 0),
(124, 360, 'feature', 41, 4, 20, 1, 0),
(125, 1, 'feature', 1, 1, 10, 0, 1),
(126, 2, 'feature', 2, 1, 10, 0, 0),
(127, 3, 'feature', 2, 2, 15, 0, 0),
(128, 4, 'feature', 3, 1, 15, 0, 0),
(129, 5, 'feature', 3, 2, 15, 0, 0),
(130, 6, 'feature', 4, 1, 15, 0, 1),
(131, 7, 'feature', 4, 2, 15, 0, 0),
(132, 8, 'feature', 5, 1, 5, 0, 1),
(133, 9, 'feature', 5, 2, 10, 0, 1),
(134, 10, 'feature', 6, 1, 15, 0, 1),
(135, 11, 'feature', 6, 2, 10, 0, 0),
(136, 12, 'feature', 6, 3, 10, 0, 0),
(137, 13, 'feature', 5, 3, 10, 0, 0),
(138, 14, 'feature', 5, 4, 15, 0, 0),
(139, 15, 'feature', 5, 5, 20, 0, 0),
(140, 16, 'feature', 5, 6, 20, 0, 0),
(141, 17, 'achievement', 7, 1, 5, 0, 1),
(142, 18, 'achievement', 7, 2, 10, 0, 1),
(143, 19, 'feature', 8, 1, 15, 0, 1),
(144, 20, 'feature', 8, 2, 15, 0, 0),
(145, 21, 'feature', 9, 1, 15, 0, 0),
(146, 22, 'feature', 10, 1, 10, 0, 1),
(147, 23, 'feature', 10, 2, 10, 0, 1),
(148, 24, 'feature', 10, 3, 10, 0, 1),
(149, 25, 'feature', 10, 4, 10, 0, 0),
(150, 26, 'feature', 10, 5, 10, 0, 0),
(151, 27, 'feature', 4, 3, 10, 0, 0),
(152, 28, 'feature', 3, 3, 10, 0, 0),
(153, 29, 'achievement', 11, 1, 5, 0, 0),
(154, 30, 'achievement', 11, 2, 10, 0, 0),
(155, 31, 'achievement', 11, 3, 15, 0, 0),
(156, 32, 'achievement', 11, 4, 20, 0, 0),
(157, 33, 'achievement', 11, 5, 25, 0, 0),
(158, 34, 'achievement', 11, 6, 30, 0, 0),
(159, 35, 'achievement', 7, 3, 15, 0, 0),
(160, 36, 'achievement', 7, 4, 20, 0, 0),
(161, 37, 'achievement', 7, 5, 25, 0, 0),
(162, 38, 'achievement', 7, 6, 30, 0, 0),
(163, 39, 'achievement', 12, 1, 5, 0, 1),
(164, 40, 'achievement', 12, 2, 10, 0, 0),
(165, 41, 'achievement', 12, 3, 15, 0, 0),
(166, 42, 'achievement', 12, 4, 20, 0, 0),
(167, 43, 'achievement', 12, 5, 25, 0, 0),
(168, 44, 'achievement', 12, 6, 30, 0, 0),
(169, 45, 'achievement', 13, 1, 5, 0, 1),
(170, 46, 'achievement', 13, 2, 10, 0, 0),
(171, 47, 'achievement', 13, 3, 15, 0, 0),
(172, 48, 'achievement', 13, 4, 20, 0, 0),
(173, 49, 'achievement', 13, 5, 25, 0, 0),
(174, 50, 'achievement', 13, 6, 30, 0, 0),
(175, 51, 'achievement', 14, 1, 5, 0, 0),
(176, 52, 'achievement', 14, 2, 10, 0, 0),
(177, 53, 'achievement', 14, 3, 15, 0, 0),
(178, 54, 'achievement', 14, 4, 20, 0, 0),
(179, 55, 'achievement', 14, 5, 25, 0, 0),
(180, 56, 'achievement', 14, 6, 30, 0, 0),
(181, 57, 'achievement', 15, 1, 5, 0, 0),
(182, 58, 'achievement', 15, 2, 10, 0, 0),
(183, 59, 'achievement', 15, 3, 15, 0, 0),
(184, 60, 'achievement', 15, 4, 20, 0, 0),
(185, 61, 'achievement', 15, 5, 25, 0, 0),
(186, 62, 'achievement', 15, 6, 30, 0, 0),
(187, 63, 'achievement', 16, 1, 5, 0, 1),
(188, 64, 'achievement', 16, 2, 10, 0, 0),
(189, 65, 'achievement', 16, 3, 15, 0, 0),
(190, 66, 'achievement', 16, 4, 20, 0, 0),
(191, 67, 'achievement', 16, 5, 25, 0, 0),
(192, 68, 'achievement', 16, 6, 30, 0, 0),
(193, 74, 'international', 22, 1, 10, 0, 0),
(194, 75, 'international', 23, 1, 10, 0, 0),
(195, 83, 'international', 31, 1, 10, 0, 0),
(196, 84, 'international', 25, 1, 10, 0, 0),
(197, 85, 'international', 32, 1, 10, 0, 0),
(198, 86, 'international', 33, 1, 10, 0, 0),
(199, 87, 'international', 34, 1, 10, 0, 0),
(200, 88, 'feature', 35, 1, 5, 0, 0),
(201, 89, 'feature', 35, 2, 10, 0, 0),
(202, 90, 'feature', 35, 3, 10, 0, 0),
(203, 91, 'feature', 35, 4, 10, 0, 0),
(204, 92, 'feature', 35, 5, 10, 0, 0),
(205, 93, 'feature', 35, 6, 10, 0, 0),
(206, 94, 'feature', 36, 1, 5, 0, 1),
(207, 95, 'feature', 36, 2, 5, 0, 1),
(208, 96, 'feature', 36, 3, 10, 0, 1),
(209, 97, 'feature', 36, 4, 10, 0, 0),
(210, 98, 'feature', 36, 5, 20, 0, 0),
(211, 99, 'feature', 36, 6, 20, 0, 0),
(212, 100, 'feature', 8, 3, 15, 0, 1),
(213, 101, 'achievement', 37, 1, 5, 0, 0),
(214, 102, 'achievement', 37, 2, 5, 0, 0),
(215, 103, 'achievement', 37, 3, 10, 0, 0),
(216, 104, 'achievement', 37, 4, 10, 0, 0),
(217, 105, 'achievement', 37, 5, 15, 0, 0),
(218, 106, 'achievement', 37, 6, 15, 0, 0),
(219, 107, 'achievement', 38, 1, 10, 0, 0),
(220, 108, 'achievement', 38, 2, 10, 0, 0),
(221, 109, 'achievement', 38, 3, 15, 0, 0),
(222, 110, 'achievement', 38, 4, 20, 0, 0),
(223, 111, 'achievement', 38, 5, 25, 0, 0),
(224, 112, 'achievement', 38, 6, 30, 0, 0),
(225, 113, 'achievement', 39, 1, 10, 0, 0),
(226, 114, 'achievement', 39, 2, 20, 0, 0),
(227, 115, 'achievement', 39, 3, 30, 0, 0),
(228, 116, 'achievement', 39, 4, 40, 0, 0),
(229, 117, 'achievement', 39, 5, 50, 0, 0),
(230, 118, 'achievement', 39, 6, 50, 0, 0),
(231, 119, 'feature', 40, 1, 10, 0, 0),
(232, 120, 'feature', 40, 2, 15, 0, 0),
(233, 121, 'feature', 40, 3, 20, 0, 0),
(234, 122, 'feature', 40, 4, 25, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_badge_lang`
--

CREATE TABLE `ps_badge_lang` (
  `id_badge` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_badge_lang`
--

INSERT INTO `ps_badge_lang` (`id_badge`, `id_lang`, `name`, `description`, `group_name`) VALUES
(1, 1, 'Shopgate installed', 'You have installed the Shopgate module', 'Partners'),
(1, 2, 'Shopgate installed', '', ''),
(1, 3, 'Shopgate installed', '', ''),
(1, 4, 'Shopgate installed', '', ''),
(1, 5, 'Shopgate installed', '', ''),
(2, 1, 'Shopgate configured', 'You have configured the Shopgate module', 'Partners'),
(2, 2, 'Shopgate configured', '', ''),
(2, 3, 'Shopgate configured', '', ''),
(2, 4, 'Shopgate configured', '', ''),
(2, 5, 'Shopgate configured', '', ''),
(3, 1, 'Shopgate active', 'Your Shopgate module is active', 'Partners'),
(3, 2, 'Shopgate active', '', ''),
(3, 3, 'Shopgate active', '', ''),
(3, 4, 'Shopgate active', '', ''),
(3, 5, 'Shopgate active', '', ''),
(4, 1, 'Shopgate very active', 'Your Shopgate module is very active', 'Partners'),
(4, 2, 'Shopgate very active', '', ''),
(4, 3, 'Shopgate very active', '', ''),
(4, 4, 'Shopgate very active', '', ''),
(4, 5, 'Shopgate very active', '', ''),
(5, 1, 'Skrill installed', 'You have installed the Skrill module', 'Partners'),
(5, 2, 'Skrill installed', '', ''),
(5, 3, 'Skrill installed', '', ''),
(5, 4, 'Skrill installed', '', ''),
(5, 5, 'Skrill installed', '', ''),
(6, 1, 'Skrill configured', 'You have configured the Skrill module', 'Partners'),
(6, 2, 'Skrill configured', '', ''),
(6, 3, 'Skrill configured', '', ''),
(6, 4, 'Skrill configured', '', ''),
(6, 5, 'Skrill configured', '', ''),
(7, 1, 'Skrill active', 'Your Skrill module is active', 'Partners'),
(7, 2, 'Skrill active', '', ''),
(7, 3, 'Skrill active', '', ''),
(7, 4, 'Skrill active', '', ''),
(7, 5, 'Skrill active', '', ''),
(8, 1, 'Skrill very active', 'Your Skrill module is very active', 'Partners'),
(8, 2, 'Skrill very active', '', ''),
(8, 3, 'Skrill very active', '', ''),
(8, 4, 'Skrill very active', '', ''),
(8, 5, 'Skrill very active', '', ''),
(9, 1, 'Shopping Feed installed', 'You have installed the Shopping Feed module', 'Partners'),
(9, 2, 'Shopping Feed installed', '', ''),
(9, 3, 'Shopping Feed installed', '', ''),
(9, 4, 'Shopping Feed installed', '', ''),
(9, 5, 'Shopping Feed installed', '', ''),
(10, 1, 'Shopping Feed configured', 'You have configured the Shopping Feed module', 'Partners'),
(10, 2, 'Shopping Feed configured', '', ''),
(10, 3, 'Shopping Feed configured', '', ''),
(10, 4, 'Shopping Feed configured', '', ''),
(10, 5, 'Shopping Feed configured', '', ''),
(11, 1, 'Alliance Payment installed', 'You have installed the Alliance Payment module', 'Partners'),
(11, 2, 'Alliance Payment installed', '', ''),
(11, 3, 'Alliance Payment installed', '', ''),
(11, 4, 'Alliance Payment installed', '', ''),
(11, 5, 'Alliance Payment installed', '', ''),
(12, 1, 'Alliance Payment configured', 'You have configured the Alliance Payment module', 'Partners'),
(12, 2, 'Alliance Payment configured', '', ''),
(12, 3, 'Alliance Payment configured', '', ''),
(12, 4, 'Alliance Payment configured', '', ''),
(12, 5, 'Alliance Payment configured', '', ''),
(13, 1, 'Alliance Payment active', 'Your Alliance Payment module is active', 'Partners'),
(13, 2, 'Alliance Payment active', '', ''),
(13, 3, 'Alliance Payment active', '', ''),
(13, 4, 'Alliance Payment active', '', ''),
(13, 5, 'Alliance Payment active', '', ''),
(14, 1, 'Alliance Payment very active', 'Your Alliance Payment module is very active', 'Partners'),
(14, 2, 'Alliance Payment very active', '', ''),
(14, 3, 'Alliance Payment very active', '', ''),
(14, 4, 'Alliance Payment very active', '', ''),
(14, 5, 'Alliance Payment very active', '', ''),
(15, 1, 'Authorize Aim installed', 'You have installed the Authorize Aim module', 'Partners'),
(15, 2, 'Authorize Aim installed', '', ''),
(15, 3, 'Authorize Aim installed', '', ''),
(15, 4, 'Authorize Aim installed', '', ''),
(15, 5, 'Authorize Aim installed', '', ''),
(16, 1, 'Authorize Aim configured', 'You have configured the Authorize Aim module', 'Partners'),
(16, 2, 'Authorize Aim configured', '', ''),
(16, 3, 'Authorize Aim configured', '', ''),
(16, 4, 'Authorize Aim configured', '', ''),
(16, 5, 'Authorize Aim configured', '', ''),
(17, 1, 'Authorize Aim active', 'Your Authorize Aim module is active', 'Partners'),
(17, 2, 'Authorize Aim active', '', ''),
(17, 3, 'Authorize Aim active', '', ''),
(17, 4, 'Authorize Aim active', '', ''),
(17, 5, 'Authorize Aim active', '', ''),
(18, 1, 'Authorize Aim very active', 'Your Authorize Aim module is very active', 'Partners'),
(18, 2, 'Authorize Aim very active', '', ''),
(18, 3, 'Authorize Aim very active', '', ''),
(18, 4, 'Authorize Aim very active', '', ''),
(18, 5, 'Authorize Aim very active', '', ''),
(19, 1, 'Blue Pay installed', 'You have installed the Blue Pay module', 'Partners'),
(19, 2, 'Blue Pay installed', '', ''),
(19, 3, 'Blue Pay installed', '', ''),
(19, 4, 'Blue Pay installed', '', ''),
(19, 5, 'Blue Pay installed', '', ''),
(20, 1, 'Blue Pay configured', 'You have configured the Blue Pay module', 'Partners'),
(20, 2, 'Blue Pay configured', '', ''),
(20, 3, 'Blue Pay configured', '', ''),
(20, 4, 'Blue Pay configured', '', ''),
(20, 5, 'Blue Pay configured', '', ''),
(21, 1, 'Blue Pay active', 'Your Blue Pay module is active', 'Partners'),
(21, 2, 'Blue Pay active', '', ''),
(21, 3, 'Blue Pay active', '', ''),
(21, 4, 'Blue Pay active', '', ''),
(21, 5, 'Blue Pay active', '', ''),
(22, 1, 'Blue Pay very active', 'Your Blue Pay module is very active', 'Partners'),
(22, 2, 'Blue Pay very active', '', ''),
(22, 3, 'Blue Pay very active', '', ''),
(22, 4, 'Blue Pay very active', '', ''),
(22, 5, 'Blue Pay very active', '', ''),
(23, 1, 'Ebay installed', 'You have installed the Ebay module', 'Partners'),
(23, 2, 'Ebay installed', '', ''),
(23, 3, 'Ebay installed', '', ''),
(23, 4, 'Ebay installed', '', ''),
(23, 5, 'Ebay installed', '', ''),
(24, 1, 'Ebay configured', 'You have configured the Ebay module', 'Partners'),
(24, 2, 'Ebay configured', '', ''),
(24, 3, 'Ebay configured', '', ''),
(24, 4, 'Ebay configured', '', ''),
(24, 5, 'Ebay configured', '', ''),
(25, 1, 'Ebay active', 'Your Ebay module is active', 'Partners'),
(25, 2, 'Ebay active', '', ''),
(25, 3, 'Ebay active', '', ''),
(25, 4, 'Ebay active', '', ''),
(25, 5, 'Ebay active', '', ''),
(26, 1, 'Ebay very active', 'Your Ebay module is very active', 'Partners'),
(26, 2, 'Ebay very active', '', ''),
(26, 3, 'Ebay very active', '', ''),
(26, 4, 'Ebay very active', '', ''),
(26, 5, 'Ebay very active', '', ''),
(27, 1, 'PayPlug installed', 'You have installed the PayPlug module', 'Partners'),
(27, 2, 'PayPlug installed', '', ''),
(27, 3, 'PayPlug installed', '', ''),
(27, 4, 'PayPlug installed', '', ''),
(27, 5, 'PayPlug installed', '', ''),
(28, 1, 'PayPlug configured', 'You have configured the PayPlug module', 'Partners'),
(28, 2, 'PayPlug configured', '', ''),
(28, 3, 'PayPlug configured', '', ''),
(28, 4, 'PayPlug configured', '', ''),
(28, 5, 'PayPlug configured', '', ''),
(29, 1, 'PayPlug active', 'Your PayPlug module is active', 'Partners'),
(29, 2, 'PayPlug active', '', ''),
(29, 3, 'PayPlug active', '', ''),
(29, 4, 'PayPlug active', '', ''),
(29, 5, 'PayPlug active', '', ''),
(30, 1, 'PayPlug very active', 'Your PayPlug module is very active', 'Partners'),
(30, 2, 'PayPlug very active', '', ''),
(30, 3, 'PayPlug very active', '', ''),
(30, 4, 'PayPlug very active', '', ''),
(30, 5, 'PayPlug very active', '', ''),
(31, 1, 'Affinity Items installed', 'You have installed the Affinity Items module', 'Partners'),
(31, 2, 'Affinity Items installed', '', ''),
(31, 3, 'Affinity Items installed', '', ''),
(31, 4, 'Affinity Items installed', '', ''),
(31, 5, 'Affinity Items installed', '', ''),
(32, 1, 'Affinity Items configured', 'You have configured the Affinity Items module', 'Partners'),
(32, 2, 'Affinity Items configured', '', ''),
(32, 3, 'Affinity Items configured', '', ''),
(32, 4, 'Affinity Items configured', '', ''),
(32, 5, 'Affinity Items configured', '', ''),
(33, 1, 'DPD Poland installed', 'You have installed the DPD Poland module', 'Partners'),
(33, 2, 'DPD Poland installed', '', ''),
(33, 3, 'DPD Poland installed', '', ''),
(33, 4, 'DPD Poland installed', '', ''),
(33, 5, 'DPD Poland installed', '', ''),
(34, 1, 'DPD Poland configured', 'You have configured the DPD Poland module', 'Partners'),
(34, 2, 'DPD Poland configured', '', ''),
(34, 3, 'DPD Poland configured', '', ''),
(34, 4, 'DPD Poland configured', '', ''),
(34, 5, 'DPD Poland configured', '', ''),
(35, 1, 'DPD Poland active', 'Your DPD Poland module is active', 'Partners'),
(35, 2, 'DPD Poland active', '', ''),
(35, 3, 'DPD Poland active', '', ''),
(35, 4, 'DPD Poland active', '', ''),
(35, 5, 'DPD Poland active', '', ''),
(36, 1, 'DPD Poland very active', 'Your DPD Poland module is very active', 'Partners'),
(36, 2, 'DPD Poland very active', '', ''),
(36, 3, 'DPD Poland very active', '', ''),
(36, 4, 'DPD Poland very active', '', ''),
(36, 5, 'DPD Poland very active', '', ''),
(37, 1, 'Envoimoinscher installed', 'You have installed the Envoimoinscher module', 'Partners'),
(37, 2, 'Envoimoinscher installed', '', ''),
(37, 3, 'Envoimoinscher installed', '', ''),
(37, 4, 'Envoimoinscher installed', '', ''),
(37, 5, 'Envoimoinscher installed', '', ''),
(38, 1, 'Envoimoinscher configured', 'You have configured the Envoimoinscher module', 'Partners'),
(38, 2, 'Envoimoinscher configured', '', ''),
(38, 3, 'Envoimoinscher configured', '', ''),
(38, 4, 'Envoimoinscher configured', '', ''),
(38, 5, 'Envoimoinscher configured', '', ''),
(39, 1, 'Envoimoinscher active', 'Your Envoimoinscher module is active', 'Partners'),
(39, 2, 'Envoimoinscher active', '', ''),
(39, 3, 'Envoimoinscher active', '', ''),
(39, 4, 'Envoimoinscher active', '', ''),
(39, 5, 'Envoimoinscher active', '', ''),
(40, 1, 'Envoimoinscher very active', 'Your Envoimoinscher module is very active', 'Partners'),
(40, 2, 'Envoimoinscher very active', '', ''),
(40, 3, 'Envoimoinscher very active', '', ''),
(40, 4, 'Envoimoinscher very active', '', ''),
(40, 5, 'Envoimoinscher very active', '', ''),
(41, 1, 'Klik&Pay installed', 'You have installed the Klik&Pay module', 'Partners'),
(41, 2, 'Klik&Pay installed', '', ''),
(41, 3, 'Klik&Pay installed', '', ''),
(41, 4, 'Klik&Pay installed', '', ''),
(41, 5, 'Klik&Pay installed', '', ''),
(42, 1, 'Klik&Pay configured', 'You have configured the Klik&Pay module', 'Partners'),
(42, 2, 'Klik&Pay configured', '', ''),
(42, 3, 'Klik&Pay configured', '', ''),
(42, 4, 'Klik&Pay configured', '', ''),
(42, 5, 'Klik&Pay configured', '', ''),
(43, 1, 'Klik&Pay active', 'Your Klik&Pay module is active', 'Partners'),
(43, 2, 'Klik&Pay active', '', ''),
(43, 3, 'Klik&Pay active', '', ''),
(43, 4, 'Klik&Pay active', '', ''),
(43, 5, 'Klik&Pay active', '', ''),
(44, 1, 'Klik&Pay very active', 'Your Klik&Pay module is very active', 'Partners'),
(44, 2, 'Klik&Pay very active', '', ''),
(44, 3, 'Klik&Pay very active', '', ''),
(44, 4, 'Klik&Pay very active', '', ''),
(44, 5, 'Klik&Pay very active', '', ''),
(45, 1, 'Clickline installed', 'You have installed the Clickline module', 'Partners'),
(45, 2, 'Clickline installed', '', ''),
(45, 3, 'Clickline installed', '', ''),
(45, 4, 'Clickline installed', '', ''),
(45, 5, 'Clickline installed', '', ''),
(46, 1, 'Clickline configured', 'You have configured the Clickline module', 'Partners'),
(46, 2, 'Clickline configured', '', ''),
(46, 3, 'Clickline configured', '', ''),
(46, 4, 'Clickline configured', '', ''),
(46, 5, 'Clickline configured', '', ''),
(47, 1, 'Clickline active', 'Your Clickline module is active', 'Partners'),
(47, 2, 'Clickline active', '', ''),
(47, 3, 'Clickline active', '', ''),
(47, 4, 'Clickline active', '', ''),
(47, 5, 'Clickline active', '', ''),
(48, 1, 'Clickline very active', 'Your Clickline module is very active', 'Partners'),
(48, 2, 'Clickline very active', '', ''),
(48, 3, 'Clickline very active', '', ''),
(48, 4, 'Clickline very active', '', ''),
(48, 5, 'Clickline very active', '', ''),
(49, 1, 'CDiscount installed', 'You have installed the CDiscount module', 'Partners'),
(49, 2, 'CDiscount installed', '', ''),
(49, 3, 'CDiscount installed', '', ''),
(49, 4, 'CDiscount installed', '', ''),
(49, 5, 'CDiscount installed', '', ''),
(50, 1, 'CDiscount configured', 'You have configured the CDiscount module', 'Partners'),
(50, 2, 'CDiscount configured', '', ''),
(50, 3, 'CDiscount configured', '', ''),
(50, 4, 'CDiscount configured', '', ''),
(50, 5, 'CDiscount configured', '', ''),
(51, 1, 'CDiscount active', 'Your CDiscount module is active', 'Partners'),
(51, 2, 'CDiscount active', '', ''),
(51, 3, 'CDiscount active', '', ''),
(51, 4, 'CDiscount active', '', ''),
(51, 5, 'CDiscount active', '', ''),
(52, 1, 'CDiscount very active', 'Your CDiscount module is very active', 'Partners'),
(52, 2, 'CDiscount very active', '', ''),
(52, 3, 'CDiscount very active', '', ''),
(52, 4, 'CDiscount very active', '', ''),
(52, 5, 'CDiscount very active', '', ''),
(53, 1, 'illicoPresta installed', 'You have installed the illicoPresta module', 'Partners'),
(53, 2, 'illicoPresta installed', '', ''),
(53, 3, 'illicoPresta installed', '', ''),
(53, 4, 'illicoPresta installed', '', ''),
(53, 5, 'illicoPresta installed', '', ''),
(54, 1, 'illicoPresta configured', 'You have configured the illicoPresta module', 'Partners'),
(54, 2, 'illicoPresta configured', '', ''),
(54, 3, 'illicoPresta configured', '', ''),
(54, 4, 'illicoPresta configured', '', ''),
(54, 5, 'illicoPresta configured', '', ''),
(55, 1, 'illicoPresta active', 'Your illicoPresta module is active', 'Partners'),
(55, 2, 'illicoPresta active', '', ''),
(55, 3, 'illicoPresta active', '', ''),
(55, 4, 'illicoPresta active', '', ''),
(55, 5, 'illicoPresta active', '', ''),
(56, 1, 'illicoPresta very active', 'Your illicoPresta module is very active', 'Partners'),
(56, 2, 'illicoPresta very active', '', ''),
(56, 3, 'illicoPresta very active', '', ''),
(56, 4, 'illicoPresta very active', '', ''),
(56, 5, 'illicoPresta very active', '', ''),
(57, 1, 'NetReviews installed', 'You have installed the NetReviews module', 'Partners'),
(57, 2, 'NetReviews installed', '', ''),
(57, 3, 'NetReviews installed', '', ''),
(57, 4, 'NetReviews installed', '', ''),
(57, 5, 'NetReviews installed', '', ''),
(58, 1, 'NetReviews configured', 'You have configured the NetReviews module', 'Partners'),
(58, 2, 'NetReviews configured', '', ''),
(58, 3, 'NetReviews configured', '', ''),
(58, 4, 'NetReviews configured', '', ''),
(58, 5, 'NetReviews configured', '', ''),
(59, 1, 'NetReviews active', 'Your NetReviews module is active', 'Partners'),
(59, 2, 'NetReviews active', '', ''),
(59, 3, 'NetReviews active', '', ''),
(59, 4, 'NetReviews active', '', ''),
(59, 5, 'NetReviews active', '', ''),
(60, 1, 'NetReviews very active', 'Your NetReviews module is very active', 'Partners'),
(60, 2, 'NetReviews very active', '', ''),
(60, 3, 'NetReviews very active', '', ''),
(60, 4, 'NetReviews very active', '', ''),
(60, 5, 'NetReviews very active', '', ''),
(61, 1, 'Bluesnap installed', 'You have installed the Bluesnap module', 'Partners'),
(61, 2, 'Bluesnap installed', '', ''),
(61, 3, 'Bluesnap installed', '', ''),
(61, 4, 'Bluesnap installed', '', ''),
(61, 5, 'Bluesnap installed', '', ''),
(62, 1, 'Bluesnap configured', 'You have configured the Bluesnap module', 'Partners'),
(62, 2, 'Bluesnap configured', '', ''),
(62, 3, 'Bluesnap configured', '', ''),
(62, 4, 'Bluesnap configured', '', ''),
(62, 5, 'Bluesnap configured', '', ''),
(63, 1, 'Bluesnap active', 'Your Bluesnap module is active', 'Partners'),
(63, 2, 'Bluesnap active', '', ''),
(63, 3, 'Bluesnap active', '', ''),
(63, 4, 'Bluesnap active', '', ''),
(63, 5, 'Bluesnap active', '', ''),
(64, 1, 'Bluesnap very active', 'Your Bluesnap module is very active', 'Partners'),
(64, 2, 'Bluesnap very active', '', ''),
(64, 3, 'Bluesnap very active', '', ''),
(64, 4, 'Bluesnap very active', '', ''),
(64, 5, 'Bluesnap very active', '', ''),
(65, 1, 'Desjardins installed', 'You have installed the Desjardins module', 'Partners'),
(65, 2, 'Desjardins installed', '', ''),
(65, 3, 'Desjardins installed', '', ''),
(65, 4, 'Desjardins installed', '', ''),
(65, 5, 'Desjardins installed', '', ''),
(66, 1, 'Desjardins configured', 'You have configured the Desjardins module', 'Partners'),
(66, 2, 'Desjardins configured', '', ''),
(66, 3, 'Desjardins configured', '', ''),
(66, 4, 'Desjardins configured', '', ''),
(66, 5, 'Desjardins configured', '', ''),
(67, 1, 'Desjardins active', 'Your Desjardins module is active', 'Partners'),
(67, 2, 'Desjardins active', '', ''),
(67, 3, 'Desjardins active', '', ''),
(67, 4, 'Desjardins active', '', ''),
(67, 5, 'Desjardins active', '', ''),
(68, 1, 'Desjardins very active', 'Your Desjardins module is very active', 'Partners'),
(68, 2, 'Desjardins very active', '', ''),
(68, 3, 'Desjardins very active', '', ''),
(68, 4, 'Desjardins very active', '', ''),
(68, 5, 'Desjardins very active', '', ''),
(69, 1, 'First Data installed', 'You have installed the First Data module', 'Partners'),
(69, 2, 'First Data installed', '', ''),
(69, 3, 'First Data installed', '', ''),
(69, 4, 'First Data installed', '', ''),
(69, 5, 'First Data installed', '', ''),
(70, 1, 'First Data configured', 'You have configured the First Data module', 'Partners'),
(70, 2, 'First Data configured', '', ''),
(70, 3, 'First Data configured', '', ''),
(70, 4, 'First Data configured', '', ''),
(70, 5, 'First Data configured', '', ''),
(71, 1, 'First Data active', 'Your First Data module is active', 'Partners'),
(71, 2, 'First Data active', '', ''),
(71, 3, 'First Data active', '', ''),
(71, 4, 'First Data active', '', ''),
(71, 5, 'First Data active', '', ''),
(72, 1, 'First Data very active', 'Your First Data module is very active', 'Partners'),
(72, 2, 'First Data very active', '', ''),
(72, 3, 'First Data very active', '', ''),
(72, 4, 'First Data very active', '', ''),
(72, 5, 'First Data very active', '', ''),
(73, 1, 'Give.it installed', 'You have installed the Give.it module', 'Partners'),
(73, 2, 'Give.it installed', '', ''),
(73, 3, 'Give.it installed', '', ''),
(73, 4, 'Give.it installed', '', ''),
(73, 5, 'Give.it installed', '', ''),
(74, 1, 'Give.it configured', 'You have configured the Give.it module', 'Partners'),
(74, 2, 'Give.it configured', '', ''),
(74, 3, 'Give.it configured', '', ''),
(74, 4, 'Give.it configured', '', ''),
(74, 5, 'Give.it configured', '', ''),
(75, 1, 'Give.it active', 'Your Give.it module is active', 'Partners'),
(75, 2, 'Give.it active', '', ''),
(75, 3, 'Give.it active', '', ''),
(75, 4, 'Give.it active', '', ''),
(75, 5, 'Give.it active', '', ''),
(76, 1, 'Give.it very active', 'Your Give.it module is very active', 'Partners'),
(76, 2, 'Give.it very active', '', ''),
(76, 3, 'Give.it very active', '', ''),
(76, 4, 'Give.it very active', '', ''),
(76, 5, 'Give.it very active', '', ''),
(77, 1, 'Google Analytics installed', 'You have installed the Google Analytics module', 'Partners'),
(77, 2, 'Google Analytics installed', '', ''),
(77, 3, 'Google Analytics installed', '', ''),
(77, 4, 'Google Analytics installed', '', ''),
(77, 5, 'Google Analytics installed', '', ''),
(78, 1, 'Google Analytics configured', 'You have configured the Google Analytics module', 'Partners'),
(78, 2, 'Google Analytics configured', '', ''),
(78, 3, 'Google Analytics configured', '', ''),
(78, 4, 'Google Analytics configured', '', ''),
(78, 5, 'Google Analytics configured', '', ''),
(79, 1, 'Google Analytics active', 'Your Google Analytics module is active', 'Partners'),
(79, 2, 'Google Analytics active', '', ''),
(79, 3, 'Google Analytics active', '', ''),
(79, 4, 'Google Analytics active', '', ''),
(79, 5, 'Google Analytics active', '', ''),
(80, 1, 'Google Analytics very active', 'Your Google Analytics module is very active', 'Partners'),
(80, 2, 'Google Analytics very active', '', ''),
(80, 3, 'Google Analytics very active', '', ''),
(80, 4, 'Google Analytics very active', '', ''),
(80, 5, 'Google Analytics very active', '', ''),
(81, 1, 'PagSeguro installed', 'You have installed the PagSeguro module', 'Partners'),
(81, 2, 'PagSeguro installed', '', ''),
(81, 3, 'PagSeguro installed', '', ''),
(81, 4, 'PagSeguro installed', '', ''),
(81, 5, 'PagSeguro installed', '', ''),
(82, 1, 'PagSeguro configured', 'You have configured the PagSeguro module', 'Partners'),
(82, 2, 'PagSeguro configured', '', ''),
(82, 3, 'PagSeguro configured', '', ''),
(82, 4, 'PagSeguro configured', '', ''),
(82, 5, 'PagSeguro configured', '', ''),
(83, 1, 'PagSeguro active', 'Your PagSeguro module is active', 'Partners'),
(83, 2, 'PagSeguro active', '', ''),
(83, 3, 'PagSeguro active', '', ''),
(83, 4, 'PagSeguro active', '', ''),
(83, 5, 'PagSeguro active', '', ''),
(84, 1, 'PagSeguro very active', 'Your PagSeguro module is very active', 'Partners'),
(84, 2, 'PagSeguro very active', '', ''),
(84, 3, 'PagSeguro very active', '', ''),
(84, 4, 'PagSeguro very active', '', ''),
(84, 5, 'PagSeguro very active', '', ''),
(85, 1, 'Paypal MX installed', 'You have installed the Paypal MX module', 'Partners'),
(85, 2, 'Paypal MX installed', '', ''),
(85, 3, 'Paypal MX installed', '', ''),
(85, 4, 'Paypal MX installed', '', ''),
(85, 5, 'Paypal MX installed', '', ''),
(86, 1, 'Paypal MX configured', 'You have configured the Paypal MX module', 'Partners'),
(86, 2, 'Paypal MX configured', '', ''),
(86, 3, 'Paypal MX configured', '', ''),
(86, 4, 'Paypal MX configured', '', ''),
(86, 5, 'Paypal MX configured', '', ''),
(87, 1, 'Paypal MX active', 'Your Paypal MX module is active', 'Partners'),
(87, 2, 'Paypal MX active', '', ''),
(87, 3, 'Paypal MX active', '', ''),
(87, 4, 'Paypal MX active', '', ''),
(87, 5, 'Paypal MX active', '', ''),
(88, 1, 'Paypal MX very active', 'Your Paypal MX module is very active', 'Partners'),
(88, 2, 'Paypal MX very active', '', ''),
(88, 3, 'Paypal MX very active', '', ''),
(88, 4, 'Paypal MX very active', '', ''),
(88, 5, 'Paypal MX very active', '', ''),
(89, 1, 'Paypal USA installed', 'You have installed the Paypal USA module', 'Partners'),
(89, 2, 'Paypal USA installed', '', ''),
(89, 3, 'Paypal USA installed', '', ''),
(89, 4, 'Paypal USA installed', '', ''),
(89, 5, 'Paypal USA installed', '', ''),
(90, 1, 'Paypal USA configured', 'You have configured the Paypal USA module', 'Partners'),
(90, 2, 'Paypal USA configured', '', ''),
(90, 3, 'Paypal USA configured', '', ''),
(90, 4, 'Paypal USA configured', '', ''),
(90, 5, 'Paypal USA configured', '', ''),
(91, 1, 'Paypal USA active', 'Your Paypal USA module is active', 'Partners'),
(91, 2, 'Paypal USA active', '', ''),
(91, 3, 'Paypal USA active', '', ''),
(91, 4, 'Paypal USA active', '', ''),
(91, 5, 'Paypal USA active', '', ''),
(92, 1, 'Paypal USA very active', 'Your Paypal USA module is very active', 'Partners'),
(92, 2, 'Paypal USA very active', '', ''),
(92, 3, 'Paypal USA very active', '', ''),
(92, 4, 'Paypal USA very active', '', ''),
(92, 5, 'Paypal USA very active', '', ''),
(93, 1, 'PayULatam installed', 'You have installed the PayULatam module', 'Partners'),
(93, 2, 'PayULatam installed', '', ''),
(93, 3, 'PayULatam installed', '', ''),
(93, 4, 'PayULatam installed', '', ''),
(93, 5, 'PayULatam installed', '', ''),
(94, 1, 'PayULatam configured', 'You have configured the PayULatam module', 'Partners'),
(94, 2, 'PayULatam configured', '', ''),
(94, 3, 'PayULatam configured', '', ''),
(94, 4, 'PayULatam configured', '', ''),
(94, 5, 'PayULatam configured', '', ''),
(95, 1, 'PayULatam active', 'Your PayULatam module is active', 'Partners'),
(95, 2, 'PayULatam active', '', ''),
(95, 3, 'PayULatam active', '', ''),
(95, 4, 'PayULatam active', '', ''),
(95, 5, 'PayULatam active', '', ''),
(96, 1, 'PayULatam very active', 'Your PayULatam module is very active', 'Partners'),
(96, 2, 'PayULatam very active', '', ''),
(96, 3, 'PayULatam very active', '', ''),
(96, 4, 'PayULatam very active', '', ''),
(96, 5, 'PayULatam very active', '', ''),
(97, 1, 'PrestaStats installed', 'You have installed the PrestaStats module', 'Partners'),
(97, 2, 'PrestaStats installed', '', ''),
(97, 3, 'PrestaStats installed', '', ''),
(97, 4, 'PrestaStats installed', '', ''),
(97, 5, 'PrestaStats installed', '', ''),
(98, 1, 'PrestaStats configured', 'You have configured the PrestaStats module', 'Partners'),
(98, 2, 'PrestaStats configured', '', ''),
(98, 3, 'PrestaStats configured', '', ''),
(98, 4, 'PrestaStats configured', '', ''),
(98, 5, 'PrestaStats configured', '', ''),
(99, 1, 'PrestaStats active', 'Your PrestaStats module is active', 'Partners'),
(99, 2, 'PrestaStats active', '', ''),
(99, 3, 'PrestaStats active', '', ''),
(99, 4, 'PrestaStats active', '', ''),
(99, 5, 'PrestaStats active', '', ''),
(100, 1, 'PrestaStats very active', 'Your PrestaStats module is very active', 'Partners'),
(100, 2, 'PrestaStats very active', '', ''),
(100, 3, 'PrestaStats very active', '', ''),
(100, 4, 'PrestaStats very active', '', ''),
(100, 5, 'PrestaStats very active', '', ''),
(101, 1, 'Riskified installed', 'You have installed the Riskified module', 'Partners'),
(101, 2, 'Riskified installed', '', ''),
(101, 3, 'Riskified installed', '', ''),
(101, 4, 'Riskified installed', '', ''),
(101, 5, 'Riskified installed', '', ''),
(102, 1, 'Riskified configured', 'You have configured the Riskified module', 'Partners'),
(102, 2, 'Riskified configured', '', ''),
(102, 3, 'Riskified configured', '', ''),
(102, 4, 'Riskified configured', '', ''),
(102, 5, 'Riskified configured', '', ''),
(103, 1, 'Riskified active', 'Your Riskified module is active', 'Partners'),
(103, 2, 'Riskified active', '', ''),
(103, 3, 'Riskified active', '', ''),
(103, 4, 'Riskified active', '', ''),
(103, 5, 'Riskified active', '', ''),
(104, 1, 'Riskified very active', 'Your Riskified module is very active', 'Partners'),
(104, 2, 'Riskified very active', '', ''),
(104, 3, 'Riskified very active', '', ''),
(104, 4, 'Riskified very active', '', ''),
(104, 5, 'Riskified very active', '', ''),
(105, 1, 'Simplify installed', 'You have installed the Simplify module', 'Partners'),
(105, 2, 'Simplify installed', '', ''),
(105, 3, 'Simplify installed', '', ''),
(105, 4, 'Simplify installed', '', ''),
(105, 5, 'Simplify installed', '', ''),
(106, 1, 'Simplify configured', 'You have configured the Simplify module', 'Partners'),
(106, 2, 'Simplify configured', '', ''),
(106, 3, 'Simplify configured', '', ''),
(106, 4, 'Simplify configured', '', ''),
(106, 5, 'Simplify configured', '', ''),
(107, 1, 'Simplify active', 'Your Simplify module is active', 'Partners'),
(107, 2, 'Simplify active', '', ''),
(107, 3, 'Simplify active', '', ''),
(107, 4, 'Simplify active', '', ''),
(107, 5, 'Simplify active', '', ''),
(108, 1, 'Simplify very active', 'Your Simplify module is very active', 'Partners'),
(108, 2, 'Simplify very active', '', ''),
(108, 3, 'Simplify very active', '', ''),
(108, 4, 'Simplify very active', '', ''),
(108, 5, 'Simplify very active', '', ''),
(109, 1, 'VTPayment installed', 'You have installed the VTPayment module', 'Partners'),
(109, 2, 'VTPayment installed', '', ''),
(109, 3, 'VTPayment installed', '', ''),
(109, 4, 'VTPayment installed', '', ''),
(109, 5, 'VTPayment installed', '', ''),
(110, 1, 'VTPayment configured', 'You have configured the VTPayment module', 'Partners'),
(110, 2, 'VTPayment configured', '', ''),
(110, 3, 'VTPayment configured', '', ''),
(110, 4, 'VTPayment configured', '', ''),
(110, 5, 'VTPayment configured', '', ''),
(111, 1, 'VTPayment active', 'Your VTPayment module is active', 'Partners'),
(111, 2, 'VTPayment active', '', ''),
(111, 3, 'VTPayment active', '', ''),
(111, 4, 'VTPayment active', '', ''),
(111, 5, 'VTPayment active', '', ''),
(112, 1, 'VTPayment very active', 'Your VTPayment module is very active', 'Partners'),
(112, 2, 'VTPayment very active', '', ''),
(112, 3, 'VTPayment very active', '', ''),
(112, 4, 'VTPayment very active', '', ''),
(112, 5, 'VTPayment very active', '', ''),
(113, 1, 'Yotpo installed', 'You have installed the Yotpo module', 'Partners'),
(113, 2, 'Yotpo installed', '', ''),
(113, 3, 'Yotpo installed', '', ''),
(113, 4, 'Yotpo installed', '', ''),
(113, 5, 'Yotpo installed', '', ''),
(114, 1, 'Yotpo configured', 'You have configured the Yotpo module', 'Partners'),
(114, 2, 'Yotpo configured', '', ''),
(114, 3, 'Yotpo configured', '', ''),
(114, 4, 'Yotpo configured', '', ''),
(114, 5, 'Yotpo configured', '', ''),
(115, 1, 'Yotpo active', 'Your Yotpo module is active', 'Partners'),
(115, 2, 'Yotpo active', '', ''),
(115, 3, 'Yotpo active', '', ''),
(115, 4, 'Yotpo active', '', ''),
(115, 5, 'Yotpo active', '', ''),
(116, 1, 'Yotpo very active', 'Your Yotpo module is very active', 'Partners'),
(116, 2, 'Yotpo very active', '', ''),
(116, 3, 'Yotpo very active', '', ''),
(116, 4, 'Yotpo very active', '', ''),
(116, 5, 'Yotpo very active', '', ''),
(117, 1, 'Youstice installed', 'You have installed the Youstice module', 'Partners'),
(117, 2, 'Youstice installed', '', ''),
(117, 3, 'Youstice installed', '', ''),
(117, 4, 'Youstice installed', '', ''),
(117, 5, 'Youstice installed', '', ''),
(118, 1, 'Youstice configured', 'You have configured the Youstice module', 'Partners'),
(118, 2, 'Youstice configured', '', ''),
(118, 3, 'Youstice configured', '', ''),
(118, 4, 'Youstice configured', '', ''),
(118, 5, 'Youstice configured', '', ''),
(119, 1, 'Youstice active', 'Your Youstice module is active', 'Partners'),
(119, 2, 'Youstice active', '', ''),
(119, 3, 'Youstice active', '', ''),
(119, 4, 'Youstice active', '', ''),
(119, 5, 'Youstice active', '', ''),
(120, 1, 'Youstice very active', 'Your Youstice module is very active', 'Partners'),
(120, 2, 'Youstice very active', '', ''),
(120, 3, 'Youstice very active', '', ''),
(120, 4, 'Youstice very active', '', ''),
(120, 5, 'Youstice very active', '', ''),
(121, 1, 'Loyalty Lion installed', 'You have installed the Loyalty Lion module', 'Partners'),
(121, 2, 'Loyalty Lion installed', '', ''),
(121, 3, 'Loyalty Lion installed', '', ''),
(121, 4, 'Loyalty Lion installed', '', ''),
(121, 5, 'Loyalty Lion installed', '', ''),
(122, 1, 'Loyalty Lion configured', 'You have configured the Loyalty Lion module', 'Partners'),
(122, 2, 'Loyalty Lion configured', '', ''),
(122, 3, 'Loyalty Lion configured', '', ''),
(122, 4, 'Loyalty Lion configured', '', ''),
(122, 5, 'Loyalty Lion configured', '', ''),
(123, 1, 'Loyalty Lion active', 'Your Loyalty Lion module is active', 'Partners'),
(123, 2, 'Loyalty Lion active', '', ''),
(123, 3, 'Loyalty Lion active', '', ''),
(123, 4, 'Loyalty Lion active', '', ''),
(123, 5, 'Loyalty Lion active', '', ''),
(124, 1, 'Loyalty Lion very active', 'Your Loyalty Lion module is very active', 'Partners'),
(124, 2, 'Loyalty Lion very active', '', ''),
(124, 3, 'Loyalty Lion very active', '', ''),
(124, 4, 'Loyalty Lion very active', '', ''),
(124, 5, 'Loyalty Lion very active', '', ''),
(125, 1, 'SEO', 'You enabled the URL rewriting through the tab "Preferences > SEO and URLs".', 'SEO'),
(125, 2, 'SEO', '', ''),
(125, 3, 'SEO', '', ''),
(125, 4, 'SEO', '', ''),
(125, 5, 'SEO', '', ''),
(126, 1, 'Site Performance', 'You enabled CCC (Combine, Compress and Cache), Rijndael and Smarty through the tab \r\nAdvanced Parameters > Performance.', 'Site Performance'),
(126, 2, 'Site Performance', '', ''),
(126, 3, 'Site Performance', '', ''),
(126, 4, 'Site Performance', '', ''),
(126, 5, 'Site Performance', '', ''),
(127, 1, 'Site Performance', 'You enabled media servers through the tab "Advanced parameters > Performance".', 'Site Performance'),
(127, 2, 'Site Performance', '', ''),
(127, 3, 'Site Performance', '', ''),
(127, 4, 'Site Performance', '', ''),
(127, 5, 'Site Performance', '', ''),
(128, 1, 'Payment', 'You configured a payment solution on your shop.', 'Payment'),
(128, 2, 'Payment', '', ''),
(128, 3, 'Payment', '', ''),
(128, 4, 'Payment', '', ''),
(128, 5, 'Payment', '', ''),
(129, 1, 'Payment', 'You offer two different payment methods to your customers.', 'Payment'),
(129, 2, 'Payment', '', ''),
(129, 3, 'Payment', '', ''),
(129, 4, 'Payment', '', ''),
(129, 5, 'Payment', '', ''),
(130, 1, 'Shipping', 'You configured a carrier on your shop.', 'Shipping'),
(130, 2, 'Shipping', '', ''),
(130, 3, 'Shipping', '', ''),
(130, 4, 'Shipping', '', ''),
(130, 5, 'Shipping', '', ''),
(131, 1, 'Shipping', 'You offer two shipping solutions (carriers) to your customers.', 'Shipping'),
(131, 2, 'Shipping', '', ''),
(131, 3, 'Shipping', '', ''),
(131, 4, 'Shipping', '', ''),
(131, 5, 'Shipping', '', ''),
(132, 1, 'Catalog Size', 'You added your first product to your catalog!', 'Catalog Size'),
(132, 2, 'Catalog Size', '', ''),
(132, 3, 'Catalog Size', '', ''),
(132, 4, 'Catalog Size', '', ''),
(132, 5, 'Catalog Size', '', ''),
(133, 1, 'Catalog Size', 'You have 10 products within your catalog.', 'Catalog Size'),
(133, 2, 'Catalog Size', '', ''),
(133, 3, 'Catalog Size', '', ''),
(133, 4, 'Catalog Size', '', ''),
(133, 5, 'Catalog Size', '', ''),
(134, 1, 'Contact information', 'You configured your phone number so your customers can reach you!', 'Contact information'),
(134, 2, 'Contact information', '', ''),
(134, 3, 'Contact information', '', ''),
(134, 4, 'Contact information', '', ''),
(134, 5, 'Contact information', '', ''),
(135, 1, 'Contact information', 'You added a third email address to your contact form.', 'Contact information'),
(135, 2, 'Contact information', '', ''),
(135, 3, 'Contact information', '', ''),
(135, 4, 'Contact information', '', ''),
(135, 5, 'Contact information', '', ''),
(136, 1, 'Contact information', 'You suggest a total of 5 departments to be reached by your customers via your contact form.', 'Contact information'),
(136, 2, 'Contact information', '', ''),
(136, 3, 'Contact information', '', ''),
(136, 4, 'Contact information', '', ''),
(136, 5, 'Contact information', '', ''),
(137, 1, 'Catalog Size', 'You have 100 products within your catalog.', 'Catalog Size'),
(137, 2, 'Catalog Size', '', ''),
(137, 3, 'Catalog Size', '', ''),
(137, 4, 'Catalog Size', '', ''),
(137, 5, 'Catalog Size', '', ''),
(138, 1, 'Catalog Size', 'You have 1,000 products within your catalog.', 'Catalog Size'),
(138, 2, 'Catalog Size', '', ''),
(138, 3, 'Catalog Size', '', ''),
(138, 4, 'Catalog Size', '', ''),
(138, 5, 'Catalog Size', '', ''),
(139, 1, 'Catalog Size', 'You have 10,000 products within your catalog.', 'Catalog Size'),
(139, 2, 'Catalog Size', '', ''),
(139, 3, 'Catalog Size', '', ''),
(139, 4, 'Catalog Size', '', ''),
(139, 5, 'Catalog Size', '', ''),
(140, 1, 'Catalog Size', 'You have 100,000 products within your catalog.', 'Catalog Size'),
(140, 2, 'Catalog Size', '', ''),
(140, 3, 'Catalog Size', '', ''),
(140, 4, 'Catalog Size', '', ''),
(140, 5, 'Catalog Size', '', ''),
(141, 1, 'Days of Experience', 'You just installed PrestaShop!', 'Days of Experience'),
(141, 2, 'Days of Experience', '', ''),
(141, 3, 'Days of Experience', '', ''),
(141, 4, 'Days of Experience', '', ''),
(141, 5, 'Days of Experience', '', ''),
(142, 1, 'Days of Experience', 'You installed PrestaShop a week ago!', 'Days of Experience'),
(142, 2, 'Days of Experience', '', ''),
(142, 3, 'Days of Experience', '', ''),
(142, 4, 'Days of Experience', '', ''),
(142, 5, 'Days of Experience', '', ''),
(143, 1, 'Customization', 'You uploaded your own logo.', 'Customization'),
(143, 2, 'Customization', '', ''),
(143, 3, 'Customization', '', ''),
(143, 4, 'Customization', '', ''),
(143, 5, 'Customization', '', ''),
(144, 1, 'Customization', 'You installed a new template.', 'Customization'),
(144, 2, 'Customization', '', ''),
(144, 3, 'Customization', '', ''),
(144, 4, 'Customization', '', ''),
(144, 5, 'Customization', '', ''),
(145, 1, 'Addons', 'You connected your back-office to the Addons platform using your PrestaShop Addons account.', 'Addons'),
(145, 2, 'Addons', '', ''),
(145, 3, 'Addons', '', ''),
(145, 4, 'Addons', '', ''),
(145, 5, 'Addons', '', ''),
(146, 1, 'Multistores', 'You enabled the Multistores feature.', 'Multistores'),
(146, 2, 'Multistores', '', ''),
(146, 3, 'Multistores', '', ''),
(146, 4, 'Multistores', '', ''),
(146, 5, 'Multistores', '', ''),
(147, 1, 'Multistores', 'You manage two shops with the Multistores feature.', 'Multistores'),
(147, 2, 'Multistores', '', ''),
(147, 3, 'Multistores', '', ''),
(147, 4, 'Multistores', '', ''),
(147, 5, 'Multistores', '', ''),
(148, 1, 'Multistores', 'You manage two different groups of shops using the Multistores feature.', 'Multistores'),
(148, 2, 'Multistores', '', ''),
(148, 3, 'Multistores', '', ''),
(148, 4, 'Multistores', '', ''),
(148, 5, 'Multistores', '', ''),
(149, 1, 'Multistores', 'You manage five shops with the Multistores feature.', 'Multistores'),
(149, 2, 'Multistores', '', ''),
(149, 3, 'Multistores', '', ''),
(149, 4, 'Multistores', '', ''),
(149, 5, 'Multistores', '', ''),
(150, 1, 'Multistores', 'You manage five different groups of shops using the Multistores feature.', 'Multistores'),
(150, 2, 'Multistores', '', ''),
(150, 3, 'Multistores', '', ''),
(150, 4, 'Multistores', '', ''),
(150, 5, 'Multistores', '', ''),
(151, 1, 'Shipping', 'You offer three different shipping solutions (carriers) to your customers.', 'Shipping'),
(151, 2, 'Shipping', '', ''),
(151, 3, 'Shipping', '', ''),
(151, 4, 'Shipping', '', ''),
(151, 5, 'Shipping', '', ''),
(152, 1, 'Payment', 'You offer three different payment methods to your customers.', 'Payment'),
(152, 2, 'Payment', '', ''),
(152, 3, 'Payment', '', ''),
(152, 4, 'Payment', '', ''),
(152, 5, 'Payment', '', ''),
(153, 1, 'Revenue', 'You get this badge when you reach 200 USD in sales.', 'Revenue'),
(153, 2, 'Revenue', '', ''),
(153, 3, 'Revenue', '', ''),
(153, 4, 'Revenue', '', ''),
(153, 5, 'Revenue', '', ''),
(154, 1, 'Revenue', 'You get this badge when you reach 1000 USD in sales.', 'Revenue'),
(154, 2, 'Revenue', '', ''),
(154, 3, 'Revenue', '', ''),
(154, 4, 'Revenue', '', ''),
(154, 5, 'Revenue', '', ''),
(155, 1, 'Revenue', 'You get this badge when you reach 1000 USD in sales.', 'Revenue'),
(155, 2, 'Revenue', '', ''),
(155, 3, 'Revenue', '', ''),
(155, 4, 'Revenue', '', ''),
(155, 5, 'Revenue', '', ''),
(156, 1, 'Revenue', 'You get this badge when you reach 200 USD in sales.', 'Revenue'),
(156, 2, 'Revenue', '', ''),
(156, 3, 'Revenue', '', ''),
(156, 4, 'Revenue', '', ''),
(156, 5, 'Revenue', '', ''),
(157, 1, 'Revenue', 'You get this badge when you reach 1000 USD in sales.', 'Revenue'),
(157, 2, 'Revenue', '', ''),
(157, 3, 'Revenue', '', ''),
(157, 4, 'Revenue', '', ''),
(157, 5, 'Revenue', '', ''),
(158, 1, 'Revenue', 'You get this badge when you reach 1000 USD in sales.', 'Revenue'),
(158, 2, 'Revenue', '', ''),
(158, 3, 'Revenue', '', ''),
(158, 4, 'Revenue', '', ''),
(158, 5, 'Revenue', '', ''),
(159, 1, 'Days of Experience', 'You installed PrestaShop a month ago!', 'Days of Experience'),
(159, 2, 'Days of Experience', '', ''),
(159, 3, 'Days of Experience', '', ''),
(159, 4, 'Days of Experience', '', ''),
(159, 5, 'Days of Experience', '', ''),
(160, 1, 'Days of Experience', 'You installed PrestaShop six months ago!', 'Days of Experience'),
(160, 2, 'Days of Experience', '', ''),
(160, 3, 'Days of Experience', '', ''),
(160, 4, 'Days of Experience', '', ''),
(160, 5, 'Days of Experience', '', ''),
(161, 1, 'Days of Experience', 'You installed PrestaShop a year ago!', 'Days of Experience'),
(161, 2, 'Days of Experience', '', ''),
(161, 3, 'Days of Experience', '', ''),
(161, 4, 'Days of Experience', '', ''),
(161, 5, 'Days of Experience', '', ''),
(162, 1, 'Days of Experience', 'You installed PrestaShop two years ago!', 'Days of Experience'),
(162, 2, 'Days of Experience', '', ''),
(162, 3, 'Days of Experience', '', ''),
(162, 4, 'Days of Experience', '', ''),
(162, 5, 'Days of Experience', '', ''),
(163, 1, 'Visitors', 'You reached 10 visitors!', 'Visitors'),
(163, 2, 'Visitors', '', ''),
(163, 3, 'Visitors', '', ''),
(163, 4, 'Visitors', '', ''),
(163, 5, 'Visitors', '', ''),
(164, 1, 'Visitors', 'You reached 100 visitors!', 'Visitors'),
(164, 2, 'Visitors', '', ''),
(164, 3, 'Visitors', '', ''),
(164, 4, 'Visitors', '', ''),
(164, 5, 'Visitors', '', ''),
(165, 1, 'Visitors', 'You reached 1,000 visitors!', 'Visitors'),
(165, 2, 'Visitors', '', ''),
(165, 3, 'Visitors', '', ''),
(165, 4, 'Visitors', '', ''),
(165, 5, 'Visitors', '', ''),
(166, 1, 'Visitors', 'You reached 10,000 visitors!', 'Visitors'),
(166, 2, 'Visitors', '', ''),
(166, 3, 'Visitors', '', ''),
(166, 4, 'Visitors', '', ''),
(166, 5, 'Visitors', '', ''),
(167, 1, 'Visitors', 'You reached 100,000 visitors!', 'Visitors'),
(167, 2, 'Visitors', '', ''),
(167, 3, 'Visitors', '', ''),
(167, 4, 'Visitors', '', ''),
(167, 5, 'Visitors', '', ''),
(168, 1, 'Visitors', 'You reached 1,000,000 visitors!', 'Visitors'),
(168, 2, 'Visitors', '', ''),
(168, 3, 'Visitors', '', ''),
(168, 4, 'Visitors', '', ''),
(168, 5, 'Visitors', '', ''),
(169, 1, 'Customer Carts', 'Two carts have been created by visitors', 'Customer Carts'),
(169, 2, 'Customer Carts', '', ''),
(169, 3, 'Customer Carts', '', ''),
(169, 4, 'Customer Carts', '', ''),
(169, 5, 'Customer Carts', '', ''),
(170, 1, 'Customer Carts', 'Ten carts have been created by visitors.', 'Customer Carts'),
(170, 2, 'Customer Carts', '', ''),
(170, 3, 'Customer Carts', '', ''),
(170, 4, 'Customer Carts', '', ''),
(170, 5, 'Customer Carts', '', ''),
(171, 1, 'Customer Carts', 'A hundred carts have been created by visitors on your shop.', 'Customer Carts'),
(171, 2, 'Customer Carts', '', ''),
(171, 3, 'Customer Carts', '', ''),
(171, 4, 'Customer Carts', '', ''),
(171, 5, 'Customer Carts', '', ''),
(172, 1, 'Customer Carts', 'A thousand carts have been created by visitors on your shop.', 'Customer Carts'),
(172, 2, 'Customer Carts', '', ''),
(172, 3, 'Customer Carts', '', ''),
(172, 4, 'Customer Carts', '', ''),
(172, 5, 'Customer Carts', '', ''),
(173, 1, 'Customer Carts', '10,000 carts have been created by visitors.', 'Customer Carts'),
(173, 2, 'Customer Carts', '', ''),
(173, 3, 'Customer Carts', '', ''),
(173, 4, 'Customer Carts', '', ''),
(173, 5, 'Customer Carts', '', ''),
(174, 1, 'Customer Carts', '100,000 carts have been created by visitors.', 'Customer Carts'),
(174, 2, 'Customer Carts', '', ''),
(174, 3, 'Customer Carts', '', ''),
(174, 4, 'Customer Carts', '', ''),
(174, 5, 'Customer Carts', '', ''),
(175, 1, 'Orders', 'You received your first order.', 'Orders'),
(175, 2, 'Orders', '', ''),
(175, 3, 'Orders', '', ''),
(175, 4, 'Orders', '', ''),
(175, 5, 'Orders', '', ''),
(176, 1, 'Orders', '10 orders have been placed through your online shop.', 'Orders'),
(176, 2, 'Orders', '', ''),
(176, 3, 'Orders', '', ''),
(176, 4, 'Orders', '', ''),
(176, 5, 'Orders', '', ''),
(177, 1, 'Orders', 'You received 100 orders through your online shop!', 'Orders'),
(177, 2, 'Orders', '', ''),
(177, 3, 'Orders', '', ''),
(177, 4, 'Orders', '', ''),
(177, 5, 'Orders', '', ''),
(178, 1, 'Orders', 'You received 1,000 orders through your online shop, congrats!', 'Orders'),
(178, 2, 'Orders', '', ''),
(178, 3, 'Orders', '', ''),
(178, 4, 'Orders', '', ''),
(178, 5, 'Orders', '', ''),
(179, 1, 'Orders', 'You received 10,000 orders through your online shop, cheers!', 'Orders'),
(179, 2, 'Orders', '', ''),
(179, 3, 'Orders', '', ''),
(179, 4, 'Orders', '', ''),
(179, 5, 'Orders', '', ''),
(180, 1, 'Orders', 'You received 100,000 orders through your online shop!', 'Orders'),
(180, 2, 'Orders', '', ''),
(180, 3, 'Orders', '', ''),
(180, 4, 'Orders', '', ''),
(180, 5, 'Orders', '', ''),
(181, 1, 'Customer Service Threads', 'You received  your first customer\'s message.', 'Customer Service Threads'),
(181, 2, 'Customer Service Threads', '', ''),
(181, 3, 'Customer Service Threads', '', ''),
(181, 4, 'Customer Service Threads', '', ''),
(181, 5, 'Customer Service Threads', '', ''),
(182, 1, 'Customer Service Threads', 'You received 10 messages from your customers.', 'Customer Service Threads'),
(182, 2, 'Customer Service Threads', '', ''),
(182, 3, 'Customer Service Threads', '', ''),
(182, 4, 'Customer Service Threads', '', ''),
(182, 5, 'Customer Service Threads', '', ''),
(183, 1, 'Customer Service Threads', 'You received 100 messages from your customers.', 'Customer Service Threads'),
(183, 2, 'Customer Service Threads', '', ''),
(183, 3, 'Customer Service Threads', '', ''),
(183, 4, 'Customer Service Threads', '', ''),
(183, 5, 'Customer Service Threads', '', ''),
(184, 1, 'Customer Service Threads', 'You received 1,000 messages from your customers.', 'Customer Service Threads'),
(184, 2, 'Customer Service Threads', '', ''),
(184, 3, 'Customer Service Threads', '', ''),
(184, 4, 'Customer Service Threads', '', ''),
(184, 5, 'Customer Service Threads', '', ''),
(185, 1, 'Customer Service Threads', 'You received 10,000 messages from your customers.', 'Customer Service Threads'),
(185, 2, 'Customer Service Threads', '', ''),
(185, 3, 'Customer Service Threads', '', ''),
(185, 4, 'Customer Service Threads', '', ''),
(185, 5, 'Customer Service Threads', '', ''),
(186, 1, 'Customer Service Threads', 'You received 100,000 messages from your customers.', 'Customer Service Threads'),
(186, 2, 'Customer Service Threads', '', ''),
(186, 3, 'Customer Service Threads', '', ''),
(186, 4, 'Customer Service Threads', '', ''),
(186, 5, 'Customer Service Threads', '', ''),
(187, 1, 'Customers', 'You got the first customer registered on your shop!', 'Customers'),
(187, 2, 'Customers', '', ''),
(187, 3, 'Customers', '', ''),
(187, 4, 'Customers', '', ''),
(187, 5, 'Customers', '', ''),
(188, 1, 'Customers', 'You have over 10 customers registered on your shop.', 'Customers'),
(188, 2, 'Customers', '', ''),
(188, 3, 'Customers', '', ''),
(188, 4, 'Customers', '', ''),
(188, 5, 'Customers', '', ''),
(189, 1, 'Customers', 'You have over 100 customers registered on your shop.', 'Customers'),
(189, 2, 'Customers', '', ''),
(189, 3, 'Customers', '', ''),
(189, 4, 'Customers', '', ''),
(189, 5, 'Customers', '', ''),
(190, 1, 'Customers', 'You have over 1,000 customers registered on your shop.', 'Customers'),
(190, 2, 'Customers', '', ''),
(190, 3, 'Customers', '', ''),
(190, 4, 'Customers', '', ''),
(190, 5, 'Customers', '', ''),
(191, 1, 'Customers', 'You have over 10,000 customers registered on your shop.', 'Customers'),
(191, 2, 'Customers', '', ''),
(191, 3, 'Customers', '', ''),
(191, 4, 'Customers', '', ''),
(191, 5, 'Customers', '', ''),
(192, 1, 'Customers', 'You have over 100,000 customers registered on your shop.', 'Customers'),
(192, 2, 'Customers', '', ''),
(192, 3, 'Customers', '', ''),
(192, 4, 'Customers', '', ''),
(192, 5, 'Customers', '', ''),
(193, 1, 'North America', 'You got your first sale in North America', 'North America'),
(193, 2, 'North America', '', ''),
(193, 3, 'North America', '', ''),
(193, 4, 'North America', '', ''),
(193, 5, 'North America', '', ''),
(194, 1, 'Oceania', 'You got your first sale in Oceania', 'Oceania'),
(194, 2, 'Oceania', '', ''),
(194, 3, 'Oceania', '', ''),
(194, 4, 'Oceania', '', ''),
(194, 5, 'Oceania', '', ''),
(195, 1, 'Asia', 'You got your first sale in Asia', 'Asia'),
(195, 2, 'Asia', '', ''),
(195, 3, 'Asia', '', ''),
(195, 4, 'Asia', '', ''),
(195, 5, 'Asia', '', ''),
(196, 1, 'South America', 'You got your first sale in South America', 'South America'),
(196, 2, 'South America', '', ''),
(196, 3, 'South America', '', ''),
(196, 4, 'South America', '', ''),
(196, 5, 'South America', '', ''),
(197, 1, 'Europe', 'You got your first sale in  Europe!', 'Europe'),
(197, 2, 'Europe', '', ''),
(197, 3, 'Europe', '', ''),
(197, 4, 'Europe', '', ''),
(197, 5, 'Europe', '', ''),
(198, 1, 'Africa', 'You got your first sale in Africa', 'Africa'),
(198, 2, 'Africa', '', ''),
(198, 3, 'Africa', '', ''),
(198, 4, 'Africa', '', ''),
(198, 5, 'Africa', '', ''),
(199, 1, 'Maghreb', 'You got your first sale in Maghreb', 'Maghreb'),
(199, 2, 'Maghreb', '', ''),
(199, 3, 'Maghreb', '', ''),
(199, 4, 'Maghreb', '', ''),
(199, 5, 'Maghreb', '', ''),
(200, 1, 'Your Team\'s Employees', 'First employee account added to your shop', 'Your Team\'s Employees'),
(200, 2, 'Your Team\'s Employees', '', ''),
(200, 3, 'Your Team\'s Employees', '', ''),
(200, 4, 'Your Team\'s Employees', '', ''),
(200, 5, 'Your Team\'s Employees', '', ''),
(201, 1, 'Your Team\'s Employees', '3 employee accounts added to your shop', 'Your Team\'s Employees'),
(201, 2, 'Your Team\'s Employees', '', ''),
(201, 3, 'Your Team\'s Employees', '', ''),
(201, 4, 'Your Team\'s Employees', '', ''),
(201, 5, 'Your Team\'s Employees', '', ''),
(202, 1, 'Your Team\'s Employees', '5 employee accounts added to your shop', 'Your Team\'s Employees'),
(202, 2, 'Your Team\'s Employees', '', ''),
(202, 3, 'Your Team\'s Employees', '', ''),
(202, 4, 'Your Team\'s Employees', '', ''),
(202, 5, 'Your Team\'s Employees', '', ''),
(203, 1, 'Your Team\'s Employees', '10 employee accounts added to your shop', 'Your Team\'s Employees'),
(203, 2, 'Your Team\'s Employees', '', ''),
(203, 3, 'Your Team\'s Employees', '', ''),
(203, 4, 'Your Team\'s Employees', '', ''),
(203, 5, 'Your Team\'s Employees', '', ''),
(204, 1, 'Your Team\'s Employees', '20 employee accounts added to your shop', 'Your Team\'s Employees'),
(204, 2, 'Your Team\'s Employees', '', ''),
(204, 3, 'Your Team\'s Employees', '', ''),
(204, 4, 'Your Team\'s Employees', '', ''),
(204, 5, 'Your Team\'s Employees', '', ''),
(205, 1, 'Your Team\'s Employees', '40 employee accounts added to your shop', 'Your Team\'s Employees'),
(205, 2, 'Your Team\'s Employees', '', ''),
(205, 3, 'Your Team\'s Employees', '', ''),
(205, 4, 'Your Team\'s Employees', '', ''),
(205, 5, 'Your Team\'s Employees', '', ''),
(206, 1, 'Product Pictures', 'First photo added to your catalog', 'Product Pictures'),
(206, 2, 'Product Pictures', '', ''),
(206, 3, 'Product Pictures', '', ''),
(206, 4, 'Product Pictures', '', ''),
(206, 5, 'Product Pictures', '', ''),
(207, 1, 'Product Pictures', '50 photos added to your catalog', 'Product Pictures'),
(207, 2, 'Product Pictures', '', ''),
(207, 3, 'Product Pictures', '', ''),
(207, 4, 'Product Pictures', '', ''),
(207, 5, 'Product Pictures', '', ''),
(208, 1, 'Product Pictures', '100 photos added to your catalog', 'Product Pictures'),
(208, 2, 'Product Pictures', '', ''),
(208, 3, 'Product Pictures', '', ''),
(208, 4, 'Product Pictures', '', ''),
(208, 5, 'Product Pictures', '', ''),
(209, 1, 'Product Pictures', '1,000 photos added to your catalog', 'Product Pictures'),
(209, 2, 'Product Pictures', '', ''),
(209, 3, 'Product Pictures', '', ''),
(209, 4, 'Product Pictures', '', ''),
(209, 5, 'Product Pictures', '', ''),
(210, 1, 'Product Pictures', '10,000 photos added to your catalog', 'Product Pictures'),
(210, 2, 'Product Pictures', '', ''),
(210, 3, 'Product Pictures', '', ''),
(210, 4, 'Product Pictures', '', ''),
(210, 5, 'Product Pictures', '', ''),
(211, 1, 'Product Pictures', '50,000 photos added to your catalog', 'Product Pictures'),
(211, 2, 'Product Pictures', '', ''),
(211, 3, 'Product Pictures', '', ''),
(211, 4, 'Product Pictures', '', ''),
(211, 5, 'Product Pictures', '', ''),
(212, 1, 'Customization', 'First CMS page added to your catalog', 'Customization'),
(212, 2, 'Customization', '', ''),
(212, 3, 'Customization', '', ''),
(212, 4, 'Customization', '', ''),
(212, 5, 'Customization', '', ''),
(213, 1, 'Cart Rules', 'First cart rules configured on your shop', 'Cart Rules'),
(213, 2, 'Cart Rules', '', ''),
(213, 3, 'Cart Rules', '', ''),
(213, 4, 'Cart Rules', '', ''),
(213, 5, 'Cart Rules', '', ''),
(214, 1, 'Cart Rules', 'You have 10 cart rules configured on your shop', 'Cart Rules'),
(214, 2, 'Cart Rules', '', ''),
(214, 3, 'Cart Rules', '', ''),
(214, 4, 'Cart Rules', '', ''),
(214, 5, 'Cart Rules', '', ''),
(215, 1, 'Cart Rules', 'You have 100 cart rules configured on your shop', 'Cart Rules'),
(215, 2, 'Cart Rules', '', ''),
(215, 3, 'Cart Rules', '', ''),
(215, 4, 'Cart Rules', '', ''),
(215, 5, 'Cart Rules', '', ''),
(216, 1, 'Cart Rules', 'You have 500 cart rules configured on your shop', 'Cart Rules');
INSERT INTO `ps_badge_lang` (`id_badge`, `id_lang`, `name`, `description`, `group_name`) VALUES
(216, 2, 'Cart Rules', '', ''),
(216, 3, 'Cart Rules', '', ''),
(216, 4, 'Cart Rules', '', ''),
(216, 5, 'Cart Rules', '', ''),
(217, 1, 'Cart Rules', 'You have 1,000 cart rules configured on your shop', 'Cart Rules'),
(217, 2, 'Cart Rules', '', ''),
(217, 3, 'Cart Rules', '', ''),
(217, 4, 'Cart Rules', '', ''),
(217, 5, 'Cart Rules', '', ''),
(218, 1, 'Cart Rules', 'You have 5,000 cart rules configured on your shop', 'Cart Rules'),
(218, 2, 'Cart Rules', '', ''),
(218, 3, 'Cart Rules', '', ''),
(218, 4, 'Cart Rules', '', ''),
(218, 5, 'Cart Rules', '', ''),
(219, 1, 'International Orders', 'First international order placed on your shop.', 'International Orders'),
(219, 2, 'International Orders', '', ''),
(219, 3, 'International Orders', '', ''),
(219, 4, 'International Orders', '', ''),
(219, 5, 'International Orders', '', ''),
(220, 1, 'International Orders', '10 international orders placed on your shop.', 'International Orders'),
(220, 2, 'International Orders', '', ''),
(220, 3, 'International Orders', '', ''),
(220, 4, 'International Orders', '', ''),
(220, 5, 'International Orders', '', ''),
(221, 1, 'International Orders', '100 international orders placed on your shop!', 'International Orders'),
(221, 2, 'International Orders', '', ''),
(221, 3, 'International Orders', '', ''),
(221, 4, 'International Orders', '', ''),
(221, 5, 'International Orders', '', ''),
(222, 1, 'International Orders', '1,000 international orders placed on your shop!', 'International Orders'),
(222, 2, 'International Orders', '', ''),
(222, 3, 'International Orders', '', ''),
(222, 4, 'International Orders', '', ''),
(222, 5, 'International Orders', '', ''),
(223, 1, 'International Orders', '5,000 international orders placed on your shop!', 'International Orders'),
(223, 2, 'International Orders', '', ''),
(223, 3, 'International Orders', '', ''),
(223, 4, 'International Orders', '', ''),
(223, 5, 'International Orders', '', ''),
(224, 1, 'International Orders', '10,000 international orders placed on your shop!', 'International Orders'),
(224, 2, 'International Orders', '', ''),
(224, 3, 'International Orders', '', ''),
(224, 4, 'International Orders', '', ''),
(224, 5, 'International Orders', '', ''),
(225, 1, 'Store', 'First store configured on your shop!', 'Store'),
(225, 2, 'Store', '', ''),
(225, 3, 'Store', '', ''),
(225, 4, 'Store', '', ''),
(225, 5, 'Store', '', ''),
(226, 1, 'Store', 'You have 2 stores configured on your shop', 'Store'),
(226, 2, 'Store', '', ''),
(226, 3, 'Store', '', ''),
(226, 4, 'Store', '', ''),
(226, 5, 'Store', '', ''),
(227, 1, 'Store', 'You have 5 stores configured on your shop', 'Store'),
(227, 2, 'Store', '', ''),
(227, 3, 'Store', '', ''),
(227, 4, 'Store', '', ''),
(227, 5, 'Store', '', ''),
(228, 1, 'Store', 'You have 10 stores configured on your shop', 'Store'),
(228, 2, 'Store', '', ''),
(228, 3, 'Store', '', ''),
(228, 4, 'Store', '', ''),
(228, 5, 'Store', '', ''),
(229, 1, 'Store', 'You have 20 stores configured on your shop', 'Store'),
(229, 2, 'Store', '', ''),
(229, 3, 'Store', '', ''),
(229, 4, 'Store', '', ''),
(229, 5, 'Store', '', ''),
(230, 1, 'Store', 'You have 50 stores configured on your shop', 'Store'),
(230, 2, 'Store', '', ''),
(230, 3, 'Store', '', ''),
(230, 4, 'Store', '', ''),
(230, 5, 'Store', '', ''),
(231, 1, 'Webservice x1', 'First webservice account added to your shop', 'WebService'),
(231, 2, 'Webservice x1', '', ''),
(231, 3, 'Webservice x1', '', ''),
(231, 4, 'Webservice x1', '', ''),
(231, 5, 'Webservice x1', '', ''),
(232, 1, 'Webservice x2', '2 webservice accounts added to your shop', 'WebService'),
(232, 2, 'Webservice x2', '', ''),
(232, 3, 'Webservice x2', '', ''),
(232, 4, 'Webservice x2', '', ''),
(232, 5, 'Webservice x2', '', ''),
(233, 1, 'Webservice x3', '3 webservice accounts added to your shop', 'WebService'),
(233, 2, 'Webservice x3', '', ''),
(233, 3, 'Webservice x3', '', ''),
(233, 4, 'Webservice x3', '', ''),
(233, 5, 'Webservice x3', '', ''),
(234, 1, 'Webservice x4', '4 webservice accounts added to your shop', 'WebService'),
(234, 2, 'Webservice x4', '', ''),
(234, 3, 'Webservice x4', '', ''),
(234, 4, 'Webservice x4', '', ''),
(234, 5, 'Webservice x4', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_carrier`
--

CREATE TABLE `ps_carrier` (
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_reference` int(10) UNSIGNED NOT NULL,
  `id_tax_rules_group` int(10) UNSIGNED DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `range_behavior` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_module` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_free` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `shipping_external` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `need_range` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) DEFAULT NULL,
  `shipping_method` int(2) NOT NULL DEFAULT '0',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `max_width` int(10) DEFAULT '0',
  `max_height` int(10) DEFAULT '0',
  `max_depth` int(10) DEFAULT '0',
  `max_weight` decimal(20,6) DEFAULT '0.000000',
  `grade` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_carrier`
--

INSERT INTO `ps_carrier` (`id_carrier`, `id_reference`, `id_tax_rules_group`, `name`, `url`, `active`, `deleted`, `shipping_handling`, `range_behavior`, `is_module`, `is_free`, `shipping_external`, `need_range`, `external_module_name`, `shipping_method`, `position`, `max_width`, `max_height`, `max_depth`, `max_weight`, `grade`) VALUES
(5, 5, 0, 'new store', '', 1, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, '0.000000', 0),
(6, 6, 0, 'My carrier', '', 1, 0, 1, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 0, '0.000000', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_carrier_group`
--

CREATE TABLE `ps_carrier_group` (
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_carrier_group`
--

INSERT INTO `ps_carrier_group` (`id_carrier`, `id_group`) VALUES
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Structure de la table `ps_carrier_lang`
--

CREATE TABLE `ps_carrier_lang` (
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `delay` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_carrier_lang`
--

INSERT INTO `ps_carrier_lang` (`id_carrier`, `id_shop`, `id_lang`, `delay`) VALUES
(5, 1, 1, 'Pick up in-store'),
(6, 1, 1, 'Delivery next day!'),
(5, 1, 2, 'Pick up in-store'),
(6, 1, 2, 'Delivery next day!'),
(5, 1, 3, 'Pick up in-store'),
(6, 1, 3, 'Delivery next day!'),
(5, 1, 4, 'Pick up in-store'),
(6, 1, 4, 'Delivery next day!'),
(5, 1, 5, 'Pick up in-store'),
(6, 1, 5, 'Delivery next day!');

-- --------------------------------------------------------

--
-- Structure de la table `ps_carrier_shop`
--

CREATE TABLE `ps_carrier_shop` (
  `id_carrier` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_carrier_shop`
--

INSERT INTO `ps_carrier_shop` (`id_carrier`, `id_shop`) VALUES
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_carrier_tax_rules_group_shop`
--

CREATE TABLE `ps_carrier_tax_rules_group_shop` (
  `id_carrier` int(11) UNSIGNED NOT NULL,
  `id_tax_rules_group` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_carrier_zone`
--

CREATE TABLE `ps_carrier_zone` (
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_zone` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_carrier_zone`
--

INSERT INTO `ps_carrier_zone` (`id_carrier`, `id_zone`) VALUES
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8);

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart`
--

CREATE TABLE `ps_cart` (
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `delivery_option` text NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_address_delivery` int(10) UNSIGNED NOT NULL,
  `id_address_invoice` int(10) UNSIGNED NOT NULL,
  `id_currency` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_guest` int(10) UNSIGNED NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `recyclable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `gift` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `allow_seperated_package` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_cart`
--

INSERT INTO `ps_cart` (`id_cart`, `id_shop_group`, `id_shop`, `id_carrier`, `delivery_option`, `id_lang`, `id_address_delivery`, `id_address_invoice`, `id_currency`, `id_customer`, `id_guest`, `secure_key`, `recyclable`, `gift`, `gift_message`, `mobile_theme`, `allow_seperated_package`, `date_add`, `date_upd`) VALUES
(1, 1, 1, 2, 'a:1:{i:3;s:2:"2,";}', 1, 4, 4, 1, 1, 1, 'b44a6d9efd7a0076a0fbce6b15eaf3b1', 0, 0, '', 0, 0, '2016-07-29 08:55:37', '2016-07-29 08:55:37'),
(2, 1, 1, 2, 'a:1:{i:3;s:2:"2,";}', 1, 4, 4, 1, 1, 1, 'b44a6d9efd7a0076a0fbce6b15eaf3b1', 0, 0, '', 0, 0, '2016-07-29 08:55:37', '2016-07-29 08:55:37'),
(3, 1, 1, 2, 'a:1:{i:3;s:2:"2,";}', 1, 4, 4, 1, 1, 1, 'b44a6d9efd7a0076a0fbce6b15eaf3b1', 0, 0, '', 0, 0, '2016-07-29 08:55:37', '2016-07-29 08:55:37'),
(4, 1, 1, 2, 'a:1:{i:3;s:2:"2,";}', 1, 4, 4, 1, 1, 1, 'b44a6d9efd7a0076a0fbce6b15eaf3b1', 0, 0, '', 0, 0, '2016-07-29 08:55:37', '2016-07-29 08:55:37'),
(5, 1, 1, 2, 'a:1:{i:3;s:2:"2,";}', 1, 4, 4, 1, 1, 1, 'b44a6d9efd7a0076a0fbce6b15eaf3b1', 0, 0, '', 0, 0, '2016-07-29 08:55:37', '2016-07-29 08:55:37'),
(6, 1, 1, 0, '', 2, 0, 0, 1, 0, 2, '', 0, 0, '', 0, 0, '2016-07-29 09:03:21', '2016-07-29 09:03:30'),
(7, 1, 1, 0, '', 5, 0, 0, 1, 0, 2, '', 0, 0, '', 0, 0, '2016-07-29 09:03:53', '2016-07-29 09:13:04'),
(8, 1, 1, 0, '', 1, 0, 0, 1, 0, 3, '', 0, 0, '', 0, 0, '2016-07-29 04:06:09', '2016-07-29 04:06:10'),
(9, 1, 1, 0, '', 1, 0, 0, 1, 0, 7, '', 0, 0, '', 0, 0, '2016-08-05 00:29:26', '2016-08-05 01:44:10');

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_cart_rule`
--

CREATE TABLE `ps_cart_cart_rule` (
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_cart_rule` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_product`
--

CREATE TABLE `ps_cart_product` (
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_address_delivery` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_product_attribute` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_rule`
--

CREATE TABLE `ps_cart_rule` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `description` text,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity_per_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `priority` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `partial_use` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `code` varchar(254) NOT NULL,
  `minimum_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `minimum_amount_tax` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount_currency` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `minimum_amount_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `country_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `carrier_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `cart_rule_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `shop_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `reduction_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `reduction_tax` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `reduction_currency` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reduction_product` int(10) NOT NULL DEFAULT '0',
  `gift_product` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gift_product_attribute` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `highlight` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_rule_carrier`
--

CREATE TABLE `ps_cart_rule_carrier` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_carrier` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_rule_combination`
--

CREATE TABLE `ps_cart_rule_combination` (
  `id_cart_rule_1` int(10) UNSIGNED NOT NULL,
  `id_cart_rule_2` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_rule_country`
--

CREATE TABLE `ps_cart_rule_country` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_rule_group`
--

CREATE TABLE `ps_cart_rule_group` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_rule_lang`
--

CREATE TABLE `ps_cart_rule_lang` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_rule_product_rule`
--

CREATE TABLE `ps_cart_rule_product_rule` (
  `id_product_rule` int(10) UNSIGNED NOT NULL,
  `id_product_rule_group` int(10) UNSIGNED NOT NULL,
  `type` enum('products','categories','attributes','manufacturers','suppliers') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_rule_product_rule_group`
--

CREATE TABLE `ps_cart_rule_product_rule_group` (
  `id_product_rule_group` int(10) UNSIGNED NOT NULL,
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_rule_product_rule_value`
--

CREATE TABLE `ps_cart_rule_product_rule_value` (
  `id_product_rule` int(10) UNSIGNED NOT NULL,
  `id_item` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cart_rule_shop`
--

CREATE TABLE `ps_cart_rule_shop` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_category`
--

CREATE TABLE `ps_category` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_parent` int(10) UNSIGNED NOT NULL,
  `id_shop_default` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `level_depth` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `nleft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nright` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_category`
--

INSERT INTO `ps_category` (`id_category`, `id_parent`, `id_shop_default`, `level_depth`, `nleft`, `nright`, `active`, `date_add`, `date_upd`, `position`, `is_root_category`) VALUES
(1, 0, 1, 0, 1, 14, 1, '2016-07-29 08:54:13', '2016-07-29 08:54:13', 0, 0),
(2, 1, 1, 1, 2, 13, 1, '2016-07-29 08:54:13', '2016-07-29 08:54:13', 0, 1),
(45, 2, 1, 2, 3, 10, 1, '2016-08-04 00:31:00', '2016-08-04 00:31:00', 0, 0),
(46, 2, 1, 2, 11, 12, 1, '2016-08-04 00:31:14', '2016-08-04 00:31:14', 0, 0),
(47, 45, 1, 3, 4, 5, 1, '2016-08-04 00:31:28', '2016-08-04 00:31:28', 0, 0),
(48, 45, 1, 3, 6, 7, 1, '2016-08-04 00:31:40', '2016-08-04 00:31:40', 0, 0),
(49, 45, 1, 3, 8, 9, 1, '2016-08-04 00:31:51', '2016-08-04 00:31:51', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_category_group`
--

CREATE TABLE `ps_category_group` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_category_group`
--

INSERT INTO `ps_category_group` (`id_category`, `id_group`) VALUES
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(45, 1),
(45, 2),
(45, 3),
(46, 1),
(46, 2),
(46, 3),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(49, 2),
(49, 3);

-- --------------------------------------------------------

--
-- Structure de la table `ps_category_lang`
--

CREATE TABLE `ps_category_lang` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_category_lang`
--

INSERT INTO `ps_category_lang` (`id_category`, `id_shop`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 1, 'Root', '', 'root', '', '', ''),
(1, 1, 2, 'Racine', '', 'racine', '', '', ''),
(1, 1, 3, 'Root', '', 'root', '', '', ''),
(1, 1, 4, 'Root', '', 'root', '', '', ''),
(1, 1, 5, 'Root', '', 'root', '', '', ''),
(2, 1, 1, 'Home', '', 'home', '', '', ''),
(2, 1, 2, 'Accueil', '', 'accueil', '', '', ''),
(2, 1, 3, 'Home', '', 'home', '', '', ''),
(2, 1, 4, 'Home', '', 'home', '', '', ''),
(2, 1, 5, 'Home', '', 'home', '', '', ''),
(45, 1, 1, 'Products', '', 'products', '', '', ''),
(45, 1, 2, 'Products', '', 'products', '', '', ''),
(45, 1, 3, 'Products', '', 'products', '', '', ''),
(45, 1, 4, 'Products', '', 'products', '', '', ''),
(45, 1, 5, 'Products', '', 'products', '', '', ''),
(46, 1, 1, 'Designs', '', 'designs', '', '', ''),
(46, 1, 2, 'Designs', '', 'designs', '', '', ''),
(46, 1, 3, 'Designs', '', 'designs', '', '', ''),
(46, 1, 4, 'Designs', '', 'designs', '', '', ''),
(46, 1, 5, 'Designs', '', 'designs', '', '', ''),
(47, 1, 1, 'Metal enamel', '', 'metal-enamel', '', '', ''),
(47, 1, 2, 'Metal enamel', '', 'metal-enamel', '', '', ''),
(47, 1, 3, 'Metal enamel', '', 'metal-enamel', '', '', ''),
(47, 1, 4, 'Metal enamel', '', 'metal-enamel', '', '', ''),
(47, 1, 5, 'Metal enamel', '', 'metal-enamel', '', '', ''),
(48, 1, 1, 'Plastic injection', '', 'plastic-injection', '', '', ''),
(48, 1, 2, 'Plastic injection', '', 'plastic-injection', '', '', ''),
(48, 1, 3, 'Plastic injection', '', 'plastic-injection', '', '', ''),
(48, 1, 4, 'Plastic injection', '', 'plastic-injection', '', '', ''),
(48, 1, 5, 'Plastic injection', '', 'plastic-injection', '', '', ''),
(49, 1, 1, 'Aluminium', '', 'aluminium', '', '', ''),
(49, 1, 2, 'Aluminium', '', 'aluminium', '', '', ''),
(49, 1, 3, 'Aluminium', '', 'aluminium', '', '', ''),
(49, 1, 4, 'Aluminium', '', 'aluminium', '', '', ''),
(49, 1, 5, 'Aluminium', '', 'aluminium', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_category_product`
--

CREATE TABLE `ps_category_product` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_category_product`
--

INSERT INTO `ps_category_product` (`id_category`, `id_product`, `position`) VALUES
(2, 17, 0),
(45, 22, 0),
(45, 23, 1),
(45, 24, 2),
(45, 25, 3),
(46, 21, 0),
(46, 26, 1),
(46, 27, 2),
(46, 28, 3),
(47, 23, 0),
(48, 22, 0),
(48, 25, 1),
(49, 24, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_category_shop`
--

CREATE TABLE `ps_category_shop` (
  `id_category` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_category_shop`
--

INSERT INTO `ps_category_shop` (`id_category`, `id_shop`, `position`) VALUES
(1, 1, 0),
(2, 1, 0),
(45, 1, 0),
(46, 1, 1),
(47, 1, 0),
(48, 1, 1),
(49, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms`
--

CREATE TABLE `ps_cms` (
  `id_cms` int(10) UNSIGNED NOT NULL,
  `id_cms_category` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `indexation` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_cms`
--

INSERT INTO `ps_cms` (`id_cms`, `id_cms_category`, `position`, `active`, `indexation`) VALUES
(1, 1, 0, 1, 0),
(2, 1, 1, 1, 0),
(3, 1, 2, 1, 0),
(4, 1, 3, 1, 0),
(5, 1, 4, 1, 0),
(6, 1, 5, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms_block`
--

CREATE TABLE `ps_cms_block` (
  `id_cms_block` int(10) UNSIGNED NOT NULL,
  `id_cms_category` int(10) UNSIGNED NOT NULL,
  `location` tinyint(1) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `display_store` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_cms_block`
--

INSERT INTO `ps_cms_block` (`id_cms_block`, `id_cms_category`, `location`, `position`, `display_store`) VALUES
(1, 1, 0, 0, 1),
(2, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms_block_lang`
--

CREATE TABLE `ps_cms_block_lang` (
  `id_cms_block` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_cms_block_lang`
--

INSERT INTO `ps_cms_block_lang` (`id_cms_block`, `id_lang`, `name`) VALUES
(1, 1, 'Information'),
(1, 2, 'Information'),
(1, 3, 'Information'),
(1, 4, 'Information'),
(1, 5, 'Information'),
(2, 1, 'Information'),
(2, 2, 'Information'),
(2, 3, 'Information'),
(2, 4, 'Information'),
(2, 5, 'Information');

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms_block_page`
--

CREATE TABLE `ps_cms_block_page` (
  `id_cms_block_page` int(10) UNSIGNED NOT NULL,
  `id_cms_block` int(10) UNSIGNED NOT NULL,
  `id_cms` int(10) UNSIGNED NOT NULL,
  `is_category` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_cms_block_page`
--

INSERT INTO `ps_cms_block_page` (`id_cms_block_page`, `id_cms_block`, `id_cms`, `is_category`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 5, 0),
(6, 2, 1, 0),
(7, 2, 2, 0),
(8, 2, 3, 0),
(9, 2, 4, 0),
(10, 2, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms_block_shop`
--

CREATE TABLE `ps_cms_block_shop` (
  `id_cms_block` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_cms_block_shop`
--

INSERT INTO `ps_cms_block_shop` (`id_cms_block`, `id_shop`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms_category`
--

CREATE TABLE `ps_cms_category` (
  `id_cms_category` int(10) UNSIGNED NOT NULL,
  `id_parent` int(10) UNSIGNED NOT NULL,
  `level_depth` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_cms_category`
--

INSERT INTO `ps_cms_category` (`id_cms_category`, `id_parent`, `level_depth`, `active`, `date_add`, `date_upd`, `position`) VALUES
(1, 0, 1, 1, '2016-08-03 23:16:27', '2016-08-03 23:16:27', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms_category_lang`
--

CREATE TABLE `ps_cms_category_lang` (
  `id_cms_category` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_cms_category_lang`
--

INSERT INTO `ps_cms_category_lang` (`id_cms_category`, `id_lang`, `id_shop`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 1, 'Root', '', 'root', '', '', ''),
(1, 2, 1, 'Root', '', 'root', '', '', ''),
(1, 3, 1, 'Root', '', 'root', '', '', ''),
(1, 4, 1, 'Root', '', 'root', '', '', ''),
(1, 5, 1, 'Root', '', 'root', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms_category_shop`
--

CREATE TABLE `ps_cms_category_shop` (
  `id_cms_category` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_cms_category_shop`
--

INSERT INTO `ps_cms_category_shop` (`id_cms_category`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms_lang`
--

CREATE TABLE `ps_cms_lang` (
  `id_cms` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_cms_lang`
--

INSERT INTO `ps_cms_lang` (`id_cms`, `id_lang`, `id_shop`, `meta_title`, `meta_description`, `meta_keywords`, `content`, `link_rewrite`) VALUES
(1, 1, 1, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h1 class="page-heading bottom-indent">Shipments and returns</h1>\r\n<h3 class="page-subheading">Your pack shipment</h3>\r\n<p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p>\r\n<p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(1, 2, 1, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h1 class="page-heading bottom-indent">Shipments and returns</h1>\r\n<h3 class="page-subheading">Your pack shipment</h3>\r\n<p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p>\r\n<p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(1, 3, 1, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h1 class="page-heading bottom-indent">Shipments and returns</h1>\r\n<h3 class="page-subheading">Your pack shipment</h3>\r\n<p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p>\r\n<p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(1, 4, 1, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h1 class="page-heading bottom-indent">Shipments and returns</h1>\r\n<h3 class="page-subheading">Your pack shipment</h3>\r\n<p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p>\r\n<p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(1, 5, 1, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h1 class="page-heading bottom-indent">Shipments and returns</h1>\r\n<h3 class="page-subheading">Your pack shipment</h3>\r\n<p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p>\r\n<p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(2, 1, 1, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h1 class="page-heading bottom-indent">Legal</h1>\r\n<h3 class="page-subheading">Credits</h3>\r\n<p>Concept and production:</p>\r\n<p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>™ open-source software.</p>', 'legal-notice'),
(2, 2, 1, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h1 class="page-heading bottom-indent">Legal</h1>\r\n<h3 class="page-subheading">Credits</h3>\r\n<p>Concept and production:</p>\r\n<p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>™ open-source software.</p>', 'legal-notice'),
(2, 3, 1, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h1 class="page-heading bottom-indent">Legal</h1>\r\n<h3 class="page-subheading">Credits</h3>\r\n<p>Concept and production:</p>\r\n<p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>™ open-source software.</p>', 'legal-notice'),
(2, 4, 1, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h1 class="page-heading bottom-indent">Legal</h1>\r\n<h3 class="page-subheading">Credits</h3>\r\n<p>Concept and production:</p>\r\n<p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>™ open-source software.</p>', 'legal-notice'),
(2, 5, 1, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h1 class="page-heading bottom-indent">Legal</h1>\r\n<h3 class="page-subheading">Credits</h3>\r\n<p>Concept and production:</p>\r\n<p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>™ open-source software.</p>', 'legal-notice'),
(3, 1, 1, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h1 class="page-heading">Terms and conditions of use</h1>\r\n<h3 class="page-subheading">Rule 1</h3>\r\n<p class="bottom-indent">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<h3 class="page-subheading">Rule 2</h3>\r\n<p class="bottom-indent">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>\r\n<h3 class="page-subheading">Rule 3</h3>\r\n<p class="bottom-indent">Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>', 'terms-and-conditions-of-use'),
(3, 2, 1, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h1 class="page-heading">Terms and conditions of use</h1>\r\n<h3 class="page-subheading">Rule 1</h3>\r\n<p class="bottom-indent">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<h3 class="page-subheading">Rule 2</h3>\r\n<p class="bottom-indent">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>\r\n<h3 class="page-subheading">Rule 3</h3>\r\n<p class="bottom-indent">Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>', 'terms-and-conditions-of-use'),
(3, 3, 1, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h1 class="page-heading">Terms and conditions of use</h1>\r\n<h3 class="page-subheading">Rule 1</h3>\r\n<p class="bottom-indent">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<h3 class="page-subheading">Rule 2</h3>\r\n<p class="bottom-indent">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>\r\n<h3 class="page-subheading">Rule 3</h3>\r\n<p class="bottom-indent">Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>', 'terms-and-conditions-of-use'),
(3, 4, 1, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h1 class="page-heading">Terms and conditions of use</h1>\r\n<h3 class="page-subheading">Rule 1</h3>\r\n<p class="bottom-indent">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<h3 class="page-subheading">Rule 2</h3>\r\n<p class="bottom-indent">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>\r\n<h3 class="page-subheading">Rule 3</h3>\r\n<p class="bottom-indent">Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>', 'terms-and-conditions-of-use'),
(3, 5, 1, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h1 class="page-heading">Terms and conditions of use</h1>\r\n<h3 class="page-subheading">Rule 1</h3>\r\n<p class="bottom-indent">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<h3 class="page-subheading">Rule 2</h3>\r\n<p class="bottom-indent">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>\r\n<h3 class="page-subheading">Rule 3</h3>\r\n<p class="bottom-indent">Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>', 'terms-and-conditions-of-use'),
(4, 1, 1, 'About us', 'Learn more about us', 'about us, informations', '<h1 class="page-heading bottom-indent">About us</h1>\r\n<div class="row">\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-block">\r\n<h3 class="page-subheading">Our company</h3>\r\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\r\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\r\n<ul class="list-1"><li><em class="fa fa-check"></em>Top quality products</li>\r\n<li><em class="fa fa-check"></em>Best customer service</li>\r\n<li><em class="fa fa-check"></em>30-days money back guarantee</li>\r\n</ul></div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-box">\r\n<h3 class="page-subheading">Our team</h3>\r\n<img title="cms-img" src="img/cms/cms-img.jpg" alt="cms-img" width="370" height="192" /><p><strong class="dark">Lorem set sint occaecat cupidatat non </strong></p>\r\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-box">\r\n<h3 class="page-subheading">Testimonials</h3>\r\n<div class="testimonials">\r\n<div class="inner"><span class="before">“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class="after">”</span></div>\r\n</div>\r\n<p><strong class="dark">Lorem ipsum dolor sit</strong></p>\r\n<div class="testimonials">\r\n<div class="inner"><span class="before">“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class="after">”</span></div>\r\n</div>\r\n<p><strong class="dark">Ipsum dolor sit</strong></p>\r\n</div>\r\n</div>\r\n</div>', 'about-us'),
(4, 2, 1, 'About us', 'Learn more about us', 'about us, informations', '<h1 class="page-heading bottom-indent">About us</h1>\r\n<div class="row">\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-block">\r\n<h3 class="page-subheading">Our company</h3>\r\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\r\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\r\n<ul class="list-1"><li><em class="fa fa-check"></em>Top quality products</li>\r\n<li><em class="fa fa-check"></em>Best customer service</li>\r\n<li><em class="fa fa-check"></em>30-days money back guarantee</li>\r\n</ul></div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-box">\r\n<h3 class="page-subheading">Our team</h3>\r\n<img title="cms-img" src="img/cms/cms-img.jpg" alt="cms-img" width="370" height="192" /><p><strong class="dark">Lorem set sint occaecat cupidatat non </strong></p>\r\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-box">\r\n<h3 class="page-subheading">Testimonials</h3>\r\n<div class="testimonials">\r\n<div class="inner"><span class="before">“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class="after">”</span></div>\r\n</div>\r\n<p><strong class="dark">Lorem ipsum dolor sit</strong></p>\r\n<div class="testimonials">\r\n<div class="inner"><span class="before">“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class="after">”</span></div>\r\n</div>\r\n<p><strong class="dark">Ipsum dolor sit</strong></p>\r\n</div>\r\n</div>\r\n</div>', 'about-us'),
(4, 3, 1, 'About us', 'Learn more about us', 'about us, informations', '<h1 class="page-heading bottom-indent">About us</h1>\r\n<div class="row">\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-block">\r\n<h3 class="page-subheading">Our company</h3>\r\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\r\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\r\n<ul class="list-1"><li><em class="fa fa-check"></em>Top quality products</li>\r\n<li><em class="fa fa-check"></em>Best customer service</li>\r\n<li><em class="fa fa-check"></em>30-days money back guarantee</li>\r\n</ul></div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-box">\r\n<h3 class="page-subheading">Our team</h3>\r\n<img title="cms-img" src="img/cms/cms-img.jpg" alt="cms-img" width="370" height="192" /><p><strong class="dark">Lorem set sint occaecat cupidatat non </strong></p>\r\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-box">\r\n<h3 class="page-subheading">Testimonials</h3>\r\n<div class="testimonials">\r\n<div class="inner"><span class="before">“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class="after">”</span></div>\r\n</div>\r\n<p><strong class="dark">Lorem ipsum dolor sit</strong></p>\r\n<div class="testimonials">\r\n<div class="inner"><span class="before">“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class="after">”</span></div>\r\n</div>\r\n<p><strong class="dark">Ipsum dolor sit</strong></p>\r\n</div>\r\n</div>\r\n</div>', 'about-us'),
(4, 4, 1, 'About us', 'Learn more about us', 'about us, informations', '<h1 class="page-heading bottom-indent">About us</h1>\r\n<div class="row">\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-block">\r\n<h3 class="page-subheading">Our company</h3>\r\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\r\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\r\n<ul class="list-1"><li><em class="fa fa-check"></em>Top quality products</li>\r\n<li><em class="fa fa-check"></em>Best customer service</li>\r\n<li><em class="fa fa-check"></em>30-days money back guarantee</li>\r\n</ul></div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-box">\r\n<h3 class="page-subheading">Our team</h3>\r\n<img title="cms-img" src="img/cms/cms-img.jpg" alt="cms-img" width="370" height="192" /><p><strong class="dark">Lorem set sint occaecat cupidatat non </strong></p>\r\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-box">\r\n<h3 class="page-subheading">Testimonials</h3>\r\n<div class="testimonials">\r\n<div class="inner"><span class="before">“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class="after">”</span></div>\r\n</div>\r\n<p><strong class="dark">Lorem ipsum dolor sit</strong></p>\r\n<div class="testimonials">\r\n<div class="inner"><span class="before">“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class="after">”</span></div>\r\n</div>\r\n<p><strong class="dark">Ipsum dolor sit</strong></p>\r\n</div>\r\n</div>\r\n</div>', 'about-us'),
(4, 5, 1, 'About us', 'Learn more about us', 'about us, informations', '<h1 class="page-heading bottom-indent">About us</h1>\r\n<div class="row">\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-block">\r\n<h3 class="page-subheading">Our company</h3>\r\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\r\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\r\n<ul class="list-1"><li><em class="fa fa-check"></em>Top quality products</li>\r\n<li><em class="fa fa-check"></em>Best customer service</li>\r\n<li><em class="fa fa-check"></em>30-days money back guarantee</li>\r\n</ul></div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-box">\r\n<h3 class="page-subheading">Our team</h3>\r\n<img title="cms-img" src="img/cms/cms-img.jpg" alt="cms-img" width="370" height="192" /><p><strong class="dark">Lorem set sint occaecat cupidatat non </strong></p>\r\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\r\n</div>\r\n</div>\r\n<div class="col-xs-12 col-sm-4">\r\n<div class="cms-box">\r\n<h3 class="page-subheading">Testimonials</h3>\r\n<div class="testimonials">\r\n<div class="inner"><span class="before">“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class="after">”</span></div>\r\n</div>\r\n<p><strong class="dark">Lorem ipsum dolor sit</strong></p>\r\n<div class="testimonials">\r\n<div class="inner"><span class="before">“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class="after">”</span></div>\r\n</div>\r\n<p><strong class="dark">Ipsum dolor sit</strong></p>\r\n</div>\r\n</div>\r\n</div>', 'about-us'),
(5, 1, 1, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h1 class="page-heading bottom-indent">Secure payment</h1>\r\n<h3 class="page-subheading">Our secure payment</h3>\r\n<p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3>\r\n<p>About this services</p>', 'secure-payment'),
(5, 2, 1, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h1 class="page-heading bottom-indent">Secure payment</h1>\r\n<h3 class="page-subheading">Our secure payment</h3>\r\n<p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3>\r\n<p>About this services</p>', 'secure-payment'),
(5, 3, 1, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h1 class="page-heading bottom-indent">Secure payment</h1>\r\n<h3 class="page-subheading">Our secure payment</h3>\r\n<p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3>\r\n<p>About this services</p>', 'secure-payment'),
(5, 4, 1, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h1 class="page-heading bottom-indent">Secure payment</h1>\r\n<h3 class="page-subheading">Our secure payment</h3>\r\n<p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3>\r\n<p>About this services</p>', 'secure-payment'),
(5, 5, 1, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h1 class="page-heading bottom-indent">Secure payment</h1>\r\n<h3 class="page-subheading">Our secure payment</h3>\r\n<p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3>\r\n<p>About this services</p>', 'secure-payment'),
(6, 1, 1, 'Pages configuration', '', '', '<div class="block">\r\n<h4>Pages configuration</h4>\r\n<div>\r\n<h3>1. Position section of the modules list.</h3>\r\n<p>After activating all necessary modules you need to assign them to correct positions. In PrestaShop admin panel from the top menu select Modules &gt; Positions. To place module in the required position just drag it to the position section of the modules list.</p>\r\n<table class="table table-bordered table-hover"><tbody><tr><th>Module name</th><th>Position</th><th>Order</th></tr><tr><td>Contact block v1.3.3</td>\r\n<td>displayRightColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayRightColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Layered navigation block v2.0.7</td>\r\n<td>displayLeftColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>Categories block v2.8.8</td>\r\n<td>displayLeftColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Wishlist block v1.2.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>3</td>\r\n</tr><tr><td>CMS block v2.0.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>4</td>\r\n</tr><tr><td>Manufacturers block v1.2.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>5</td>\r\n</tr><tr><td>My Account block v1.3.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>6</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayLeftColumn</td>\r\n<td>7</td>\r\n</tr><tr><td>Payment logos block. v0.3.3</td>\r\n<td>displayLeftColumn</td>\r\n<td>8</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayLeftColumn</td>\r\n<td>9</td>\r\n</tr><tr><td>Store locator block v1.2.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>10</td>\r\n</tr><tr><td>Suppliers block v1.1.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>11</td>\r\n</tr><tr><td>Tags block v1.2.6</td>\r\n<td>displayLeftColumn</td>\r\n<td>12</td>\r\n</tr><tr><td>Viewed products block v1.2.3</td>\r\n<td>displayLeftColumn</td>\r\n<td>13</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>14</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayLeftColumn</td>\r\n<td>15</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>16</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayHome</td>\r\n<td>1</td>\r\n</tr><tr><td>SmartBlog Home Latest v2.0.1</td>\r\n<td>displayHome</td>\r\n<td>2</td>\r\n</tr><tr><td>Custom CMS information block v1.5.2</td>\r\n<td>displayHome</td>\r\n<td>3</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayHome</td>\r\n<td>4</td>\r\n</tr><tr><td>Quick search block v1.5.3</td>\r\n<td>displayTop</td>\r\n<td>1</td>\r\n</tr><tr><td>Cart block v1.5.7</td>\r\n<td>displayTop</td>\r\n<td>2</td>\r\n</tr><tr><td>Top horizontal menu v2.1.1</td>\r\n<td>displayTop</td>\r\n<td>3</td>\r\n</tr><tr><td>Pages not found v1.3.4</td>\r\n<td>displayTop</td>\r\n<td>4</td>\r\n</tr><tr><td>Search engine keywords v1.2.4</td>\r\n<td>displayTop</td>\r\n<td>5</td>\r\n</tr><tr><td>Wishlist block v1.2.2</td>\r\n<td>displayTop</td>\r\n<td>6</td>\r\n</tr><tr><td>Product Comments v3.4.1</td>\r\n<td>displayTop</td>\r\n<td>7</td>\r\n</tr><tr><td>Newsletter block v2.1.6</td>\r\n<td>displayFooter</td>\r\n<td>1</td>\r\n</tr><tr><td>Social networking block v1.1.5</td>\r\n<td>displayFooter</td>\r\n<td>2</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayFooter</td>\r\n<td>3</td>\r\n</tr><tr><td>CMS block v2.0.2</td>\r\n<td>displayFooter</td>\r\n<td>4</td>\r\n</tr><tr><td>Categories block v2.8.8</td>\r\n<td>displayFooter</td>\r\n<td>5</td>\r\n</tr><tr><td>Layered navigation block v2.0.7</td>\r\n<td>displayFooter</td>\r\n<td>6</td>\r\n</tr><tr><td>My account block for your website\'s footer v1.5.1</td>\r\n<td>displayFooter</td>\r\n<td>7</td>\r\n</tr><tr><td>Data mining for statistics v1.4.1</td>\r\n<td>displayFooter</td>\r\n<td>8</td>\r\n</tr><tr><td>TM Olark Chat v1.0.0</td>\r\n<td>displayFooter</td>\r\n<td>9</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayFooter</td>\r\n<td>10</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayHomeTab</td>\r\n<td>1</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayHomeTab</td>\r\n<td>2</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayHomeTab</td>\r\n<td>3</td>\r\n</tr><tr><td>Featured products on the homepage v1.6.3</td>\r\n<td>displayHomeTabContent</td>\r\n<td>1</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayHomeTabContent</td>\r\n<td>2</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayHomeTabContent</td>\r\n<td>3</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayHomeTabContent</td>\r\n<td>4</td>\r\n</tr><tr><td>Image slider for your homepage v1.4.8</td>\r\n<td>displayTopColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayTopColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Language block v1.3.3</td>\r\n<td>displayNav</td>\r\n<td>1</td>\r\n</tr><tr><td>Currency block v0.3.2</td>\r\n<td>displayNav</td>\r\n<td>2</td>\r\n</tr><tr><td>TM Header Account Block v1.0.0</td>\r\n<td>displayNav</td>\r\n<td>3</td>\r\n</tr><tr><td>Permanent links block v0.2.1</td>\r\n<td>displayNav</td>\r\n<td>4</td>\r\n</tr></tbody></table><h3>2. Configuring images</h3>\r\n<p>In PrestaShop you can use predefined image dimensions for product images, category images, manufacturers etc.</p>\r\n<p>For example, images of the <strong>\'home\'</strong> dimensions are usually used for the category listing product images, <strong>\'large\'</strong> for main product image on the product info page.</p>\r\n<p>To configure product image dimensions, open your PrestaShop admin panel, go to <strong>Preferences &gt; Images</strong> and set the image dimensions as displayed below:</p>\r\n<table class="table table-bordered table-hover"><tbody><tr><th>Picture</th><th>Width (px)</th><th>Height (px)</th></tr><tr><td>small_default</td>\r\n<td>98</td>\r\n<td class="presta_center">98</td>\r\n</tr><tr><td>medium_default</td>\r\n<td>125</td>\r\n<td class="presta_center">125</td>\r\n</tr><tr><td>home_default</td>\r\n<td>270</td>\r\n<td class="presta_center">270</td>\r\n</tr><tr><td>large_default</td>\r\n<td>458</td>\r\n<td class="presta_center">458</td>\r\n</tr><tr><td>thickbox_default</td>\r\n<td>800</td>\r\n<td class="presta_center">800</td>\r\n</tr><tr><td>category_default</td>\r\n<td>870</td>\r\n<td class="presta_center">217</td>\r\n</tr><tr><td>scene_default</td>\r\n<td>520</td>\r\n<td class="presta_center">189</td>\r\n</tr><tr><td>m_scene_default</td>\r\n<td>161</td>\r\n<td class="presta_center">58</td>\r\n</tr><tr><td>tm_home_default</td>\r\n<td>270</td>\r\n<td class="presta_center">270</td>\r\n</tr><tr><td>tm_large_default</td>\r\n<td>458</td>\r\n<td class="presta_center">458</td>\r\n</tr><tr><td>tm_small_default</td>\r\n<td>98</td>\r\n<td class="presta_center">98</td>\r\n</tr><tr><td>tm_cart_default</td>\r\n<td>80</td>\r\n<td class="presta_center">80</td>\r\n</tr><tr><td>tm_medium_default</td>\r\n<td>125</td>\r\n<td class="presta_center">125</td>\r\n</tr><tr><td>tm_thickbox_default</td>\r\n<td>800</td>\r\n<td class="presta_center">800</td>\r\n</tr><tr><td>tm_category_default</td>\r\n<td>870</td>\r\n<td class="presta_center">217</td>\r\n</tr><tr><td>cart_default</td>\r\n<td>80</td>\r\n<td class="presta_center">80</td>\r\n</tr></tbody></table></div>\r\n<div class="clearfix"> </div>\r\n</div>', 'pages-configuration'),
(6, 2, 1, 'Pages configuration', '', '', '<div class="block">\r\n<h4>Pages configuration</h4>\r\n<div>\r\n<h3>1. Position section of the modules list.</h3>\r\n<p>After activating all necessary modules you need to assign them to correct positions. In PrestaShop admin panel from the top menu select Modules &gt; Positions. To place module in the required position just drag it to the position section of the modules list.</p>\r\n<table class="table table-bordered table-hover"><tbody><tr><th>Module name</th><th>Position</th><th>Order</th></tr><tr><td>Contact block v1.3.3</td>\r\n<td>displayRightColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayRightColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Layered navigation block v2.0.7</td>\r\n<td>displayLeftColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>Categories block v2.8.8</td>\r\n<td>displayLeftColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Wishlist block v1.2.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>3</td>\r\n</tr><tr><td>CMS block v2.0.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>4</td>\r\n</tr><tr><td>Manufacturers block v1.2.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>5</td>\r\n</tr><tr><td>My Account block v1.3.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>6</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayLeftColumn</td>\r\n<td>7</td>\r\n</tr><tr><td>Payment logos block. v0.3.3</td>\r\n<td>displayLeftColumn</td>\r\n<td>8</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayLeftColumn</td>\r\n<td>9</td>\r\n</tr><tr><td>Store locator block v1.2.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>10</td>\r\n</tr><tr><td>Suppliers block v1.1.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>11</td>\r\n</tr><tr><td>Tags block v1.2.6</td>\r\n<td>displayLeftColumn</td>\r\n<td>12</td>\r\n</tr><tr><td>Viewed products block v1.2.3</td>\r\n<td>displayLeftColumn</td>\r\n<td>13</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>14</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayLeftColumn</td>\r\n<td>15</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>16</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayHome</td>\r\n<td>1</td>\r\n</tr><tr><td>SmartBlog Home Latest v2.0.1</td>\r\n<td>displayHome</td>\r\n<td>2</td>\r\n</tr><tr><td>Custom CMS information block v1.5.2</td>\r\n<td>displayHome</td>\r\n<td>3</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayHome</td>\r\n<td>4</td>\r\n</tr><tr><td>Quick search block v1.5.3</td>\r\n<td>displayTop</td>\r\n<td>1</td>\r\n</tr><tr><td>Cart block v1.5.7</td>\r\n<td>displayTop</td>\r\n<td>2</td>\r\n</tr><tr><td>Top horizontal menu v2.1.1</td>\r\n<td>displayTop</td>\r\n<td>3</td>\r\n</tr><tr><td>Pages not found v1.3.4</td>\r\n<td>displayTop</td>\r\n<td>4</td>\r\n</tr><tr><td>Search engine keywords v1.2.4</td>\r\n<td>displayTop</td>\r\n<td>5</td>\r\n</tr><tr><td>Wishlist block v1.2.2</td>\r\n<td>displayTop</td>\r\n<td>6</td>\r\n</tr><tr><td>Product Comments v3.4.1</td>\r\n<td>displayTop</td>\r\n<td>7</td>\r\n</tr><tr><td>Newsletter block v2.1.6</td>\r\n<td>displayFooter</td>\r\n<td>1</td>\r\n</tr><tr><td>Social networking block v1.1.5</td>\r\n<td>displayFooter</td>\r\n<td>2</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayFooter</td>\r\n<td>3</td>\r\n</tr><tr><td>CMS block v2.0.2</td>\r\n<td>displayFooter</td>\r\n<td>4</td>\r\n</tr><tr><td>Categories block v2.8.8</td>\r\n<td>displayFooter</td>\r\n<td>5</td>\r\n</tr><tr><td>Layered navigation block v2.0.7</td>\r\n<td>displayFooter</td>\r\n<td>6</td>\r\n</tr><tr><td>My account block for your website\'s footer v1.5.1</td>\r\n<td>displayFooter</td>\r\n<td>7</td>\r\n</tr><tr><td>Data mining for statistics v1.4.1</td>\r\n<td>displayFooter</td>\r\n<td>8</td>\r\n</tr><tr><td>TM Olark Chat v1.0.0</td>\r\n<td>displayFooter</td>\r\n<td>9</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayFooter</td>\r\n<td>10</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayHomeTab</td>\r\n<td>1</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayHomeTab</td>\r\n<td>2</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayHomeTab</td>\r\n<td>3</td>\r\n</tr><tr><td>Featured products on the homepage v1.6.3</td>\r\n<td>displayHomeTabContent</td>\r\n<td>1</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayHomeTabContent</td>\r\n<td>2</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayHomeTabContent</td>\r\n<td>3</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayHomeTabContent</td>\r\n<td>4</td>\r\n</tr><tr><td>Image slider for your homepage v1.4.8</td>\r\n<td>displayTopColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayTopColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Language block v1.3.3</td>\r\n<td>displayNav</td>\r\n<td>1</td>\r\n</tr><tr><td>Currency block v0.3.2</td>\r\n<td>displayNav</td>\r\n<td>2</td>\r\n</tr><tr><td>TM Header Account Block v1.0.0</td>\r\n<td>displayNav</td>\r\n<td>3</td>\r\n</tr><tr><td>Permanent links block v0.2.1</td>\r\n<td>displayNav</td>\r\n<td>4</td>\r\n</tr></tbody></table><h3>2. Configuring images</h3>\r\n<p>In PrestaShop you can use predefined image dimensions for product images, category images, manufacturers etc.</p>\r\n<p>For example, images of the <strong>\'home\'</strong> dimensions are usually used for the category listing product images, <strong>\'large\'</strong> for main product image on the product info page.</p>\r\n<p>To configure product image dimensions, open your PrestaShop admin panel, go to <strong>Preferences &gt; Images</strong> and set the image dimensions as displayed below:</p>\r\n<table class="table table-bordered table-hover"><tbody><tr><th>Picture</th><th>Width (px)</th><th>Height (px)</th></tr><tr><td>small_default</td>\r\n<td>98</td>\r\n<td class="presta_center">98</td>\r\n</tr><tr><td>medium_default</td>\r\n<td>125</td>\r\n<td class="presta_center">125</td>\r\n</tr><tr><td>home_default</td>\r\n<td>270</td>\r\n<td class="presta_center">270</td>\r\n</tr><tr><td>large_default</td>\r\n<td>458</td>\r\n<td class="presta_center">458</td>\r\n</tr><tr><td>thickbox_default</td>\r\n<td>800</td>\r\n<td class="presta_center">800</td>\r\n</tr><tr><td>category_default</td>\r\n<td>870</td>\r\n<td class="presta_center">217</td>\r\n</tr><tr><td>scene_default</td>\r\n<td>520</td>\r\n<td class="presta_center">189</td>\r\n</tr><tr><td>m_scene_default</td>\r\n<td>161</td>\r\n<td class="presta_center">58</td>\r\n</tr><tr><td>tm_home_default</td>\r\n<td>270</td>\r\n<td class="presta_center">270</td>\r\n</tr><tr><td>tm_large_default</td>\r\n<td>458</td>\r\n<td class="presta_center">458</td>\r\n</tr><tr><td>tm_small_default</td>\r\n<td>98</td>\r\n<td class="presta_center">98</td>\r\n</tr><tr><td>tm_cart_default</td>\r\n<td>80</td>\r\n<td class="presta_center">80</td>\r\n</tr><tr><td>tm_medium_default</td>\r\n<td>125</td>\r\n<td class="presta_center">125</td>\r\n</tr><tr><td>tm_thickbox_default</td>\r\n<td>800</td>\r\n<td class="presta_center">800</td>\r\n</tr><tr><td>tm_category_default</td>\r\n<td>870</td>\r\n<td class="presta_center">217</td>\r\n</tr><tr><td>cart_default</td>\r\n<td>80</td>\r\n<td class="presta_center">80</td>\r\n</tr></tbody></table></div>\r\n<div class="clearfix"> </div>\r\n</div>', 'pages-configuration');
INSERT INTO `ps_cms_lang` (`id_cms`, `id_lang`, `id_shop`, `meta_title`, `meta_description`, `meta_keywords`, `content`, `link_rewrite`) VALUES
(6, 3, 1, 'Pages configuration', '', '', '<div class="block">\r\n<h4>Pages configuration</h4>\r\n<div>\r\n<h3>1. Position section of the modules list.</h3>\r\n<p>After activating all necessary modules you need to assign them to correct positions. In PrestaShop admin panel from the top menu select Modules &gt; Positions. To place module in the required position just drag it to the position section of the modules list.</p>\r\n<table class="table table-bordered table-hover"><tbody><tr><th>Module name</th><th>Position</th><th>Order</th></tr><tr><td>Contact block v1.3.3</td>\r\n<td>displayRightColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayRightColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Layered navigation block v2.0.7</td>\r\n<td>displayLeftColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>Categories block v2.8.8</td>\r\n<td>displayLeftColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Wishlist block v1.2.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>3</td>\r\n</tr><tr><td>CMS block v2.0.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>4</td>\r\n</tr><tr><td>Manufacturers block v1.2.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>5</td>\r\n</tr><tr><td>My Account block v1.3.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>6</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayLeftColumn</td>\r\n<td>7</td>\r\n</tr><tr><td>Payment logos block. v0.3.3</td>\r\n<td>displayLeftColumn</td>\r\n<td>8</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayLeftColumn</td>\r\n<td>9</td>\r\n</tr><tr><td>Store locator block v1.2.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>10</td>\r\n</tr><tr><td>Suppliers block v1.1.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>11</td>\r\n</tr><tr><td>Tags block v1.2.6</td>\r\n<td>displayLeftColumn</td>\r\n<td>12</td>\r\n</tr><tr><td>Viewed products block v1.2.3</td>\r\n<td>displayLeftColumn</td>\r\n<td>13</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>14</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayLeftColumn</td>\r\n<td>15</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>16</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayHome</td>\r\n<td>1</td>\r\n</tr><tr><td>SmartBlog Home Latest v2.0.1</td>\r\n<td>displayHome</td>\r\n<td>2</td>\r\n</tr><tr><td>Custom CMS information block v1.5.2</td>\r\n<td>displayHome</td>\r\n<td>3</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayHome</td>\r\n<td>4</td>\r\n</tr><tr><td>Quick search block v1.5.3</td>\r\n<td>displayTop</td>\r\n<td>1</td>\r\n</tr><tr><td>Cart block v1.5.7</td>\r\n<td>displayTop</td>\r\n<td>2</td>\r\n</tr><tr><td>Top horizontal menu v2.1.1</td>\r\n<td>displayTop</td>\r\n<td>3</td>\r\n</tr><tr><td>Pages not found v1.3.4</td>\r\n<td>displayTop</td>\r\n<td>4</td>\r\n</tr><tr><td>Search engine keywords v1.2.4</td>\r\n<td>displayTop</td>\r\n<td>5</td>\r\n</tr><tr><td>Wishlist block v1.2.2</td>\r\n<td>displayTop</td>\r\n<td>6</td>\r\n</tr><tr><td>Product Comments v3.4.1</td>\r\n<td>displayTop</td>\r\n<td>7</td>\r\n</tr><tr><td>Newsletter block v2.1.6</td>\r\n<td>displayFooter</td>\r\n<td>1</td>\r\n</tr><tr><td>Social networking block v1.1.5</td>\r\n<td>displayFooter</td>\r\n<td>2</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayFooter</td>\r\n<td>3</td>\r\n</tr><tr><td>CMS block v2.0.2</td>\r\n<td>displayFooter</td>\r\n<td>4</td>\r\n</tr><tr><td>Categories block v2.8.8</td>\r\n<td>displayFooter</td>\r\n<td>5</td>\r\n</tr><tr><td>Layered navigation block v2.0.7</td>\r\n<td>displayFooter</td>\r\n<td>6</td>\r\n</tr><tr><td>My account block for your website\'s footer v1.5.1</td>\r\n<td>displayFooter</td>\r\n<td>7</td>\r\n</tr><tr><td>Data mining for statistics v1.4.1</td>\r\n<td>displayFooter</td>\r\n<td>8</td>\r\n</tr><tr><td>TM Olark Chat v1.0.0</td>\r\n<td>displayFooter</td>\r\n<td>9</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayFooter</td>\r\n<td>10</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayHomeTab</td>\r\n<td>1</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayHomeTab</td>\r\n<td>2</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayHomeTab</td>\r\n<td>3</td>\r\n</tr><tr><td>Featured products on the homepage v1.6.3</td>\r\n<td>displayHomeTabContent</td>\r\n<td>1</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayHomeTabContent</td>\r\n<td>2</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayHomeTabContent</td>\r\n<td>3</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayHomeTabContent</td>\r\n<td>4</td>\r\n</tr><tr><td>Image slider for your homepage v1.4.8</td>\r\n<td>displayTopColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayTopColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Language block v1.3.3</td>\r\n<td>displayNav</td>\r\n<td>1</td>\r\n</tr><tr><td>Currency block v0.3.2</td>\r\n<td>displayNav</td>\r\n<td>2</td>\r\n</tr><tr><td>TM Header Account Block v1.0.0</td>\r\n<td>displayNav</td>\r\n<td>3</td>\r\n</tr><tr><td>Permanent links block v0.2.1</td>\r\n<td>displayNav</td>\r\n<td>4</td>\r\n</tr></tbody></table><h3>2. Configuring images</h3>\r\n<p>In PrestaShop you can use predefined image dimensions for product images, category images, manufacturers etc.</p>\r\n<p>For example, images of the <strong>\'home\'</strong> dimensions are usually used for the category listing product images, <strong>\'large\'</strong> for main product image on the product info page.</p>\r\n<p>To configure product image dimensions, open your PrestaShop admin panel, go to <strong>Preferences &gt; Images</strong> and set the image dimensions as displayed below:</p>\r\n<table class="table table-bordered table-hover"><tbody><tr><th>Picture</th><th>Width (px)</th><th>Height (px)</th></tr><tr><td>small_default</td>\r\n<td>98</td>\r\n<td class="presta_center">98</td>\r\n</tr><tr><td>medium_default</td>\r\n<td>125</td>\r\n<td class="presta_center">125</td>\r\n</tr><tr><td>home_default</td>\r\n<td>270</td>\r\n<td class="presta_center">270</td>\r\n</tr><tr><td>large_default</td>\r\n<td>458</td>\r\n<td class="presta_center">458</td>\r\n</tr><tr><td>thickbox_default</td>\r\n<td>800</td>\r\n<td class="presta_center">800</td>\r\n</tr><tr><td>category_default</td>\r\n<td>870</td>\r\n<td class="presta_center">217</td>\r\n</tr><tr><td>scene_default</td>\r\n<td>520</td>\r\n<td class="presta_center">189</td>\r\n</tr><tr><td>m_scene_default</td>\r\n<td>161</td>\r\n<td class="presta_center">58</td>\r\n</tr><tr><td>tm_home_default</td>\r\n<td>270</td>\r\n<td class="presta_center">270</td>\r\n</tr><tr><td>tm_large_default</td>\r\n<td>458</td>\r\n<td class="presta_center">458</td>\r\n</tr><tr><td>tm_small_default</td>\r\n<td>98</td>\r\n<td class="presta_center">98</td>\r\n</tr><tr><td>tm_cart_default</td>\r\n<td>80</td>\r\n<td class="presta_center">80</td>\r\n</tr><tr><td>tm_medium_default</td>\r\n<td>125</td>\r\n<td class="presta_center">125</td>\r\n</tr><tr><td>tm_thickbox_default</td>\r\n<td>800</td>\r\n<td class="presta_center">800</td>\r\n</tr><tr><td>tm_category_default</td>\r\n<td>870</td>\r\n<td class="presta_center">217</td>\r\n</tr><tr><td>cart_default</td>\r\n<td>80</td>\r\n<td class="presta_center">80</td>\r\n</tr></tbody></table></div>\r\n<div class="clearfix"> </div>\r\n</div>', 'pages-configuration'),
(6, 4, 1, 'Pages configuration', '', '', '<div class="block">\r\n<h4>Pages configuration</h4>\r\n<div>\r\n<h3>1. Position section of the modules list.</h3>\r\n<p>After activating all necessary modules you need to assign them to correct positions. In PrestaShop admin panel from the top menu select Modules &gt; Positions. To place module in the required position just drag it to the position section of the modules list.</p>\r\n<table class="table table-bordered table-hover"><tbody><tr><th>Module name</th><th>Position</th><th>Order</th></tr><tr><td>Contact block v1.3.3</td>\r\n<td>displayRightColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayRightColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Layered navigation block v2.0.7</td>\r\n<td>displayLeftColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>Categories block v2.8.8</td>\r\n<td>displayLeftColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Wishlist block v1.2.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>3</td>\r\n</tr><tr><td>CMS block v2.0.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>4</td>\r\n</tr><tr><td>Manufacturers block v1.2.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>5</td>\r\n</tr><tr><td>My Account block v1.3.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>6</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayLeftColumn</td>\r\n<td>7</td>\r\n</tr><tr><td>Payment logos block. v0.3.3</td>\r\n<td>displayLeftColumn</td>\r\n<td>8</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayLeftColumn</td>\r\n<td>9</td>\r\n</tr><tr><td>Store locator block v1.2.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>10</td>\r\n</tr><tr><td>Suppliers block v1.1.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>11</td>\r\n</tr><tr><td>Tags block v1.2.6</td>\r\n<td>displayLeftColumn</td>\r\n<td>12</td>\r\n</tr><tr><td>Viewed products block v1.2.3</td>\r\n<td>displayLeftColumn</td>\r\n<td>13</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>14</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayLeftColumn</td>\r\n<td>15</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>16</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayHome</td>\r\n<td>1</td>\r\n</tr><tr><td>SmartBlog Home Latest v2.0.1</td>\r\n<td>displayHome</td>\r\n<td>2</td>\r\n</tr><tr><td>Custom CMS information block v1.5.2</td>\r\n<td>displayHome</td>\r\n<td>3</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayHome</td>\r\n<td>4</td>\r\n</tr><tr><td>Quick search block v1.5.3</td>\r\n<td>displayTop</td>\r\n<td>1</td>\r\n</tr><tr><td>Cart block v1.5.7</td>\r\n<td>displayTop</td>\r\n<td>2</td>\r\n</tr><tr><td>Top horizontal menu v2.1.1</td>\r\n<td>displayTop</td>\r\n<td>3</td>\r\n</tr><tr><td>Pages not found v1.3.4</td>\r\n<td>displayTop</td>\r\n<td>4</td>\r\n</tr><tr><td>Search engine keywords v1.2.4</td>\r\n<td>displayTop</td>\r\n<td>5</td>\r\n</tr><tr><td>Wishlist block v1.2.2</td>\r\n<td>displayTop</td>\r\n<td>6</td>\r\n</tr><tr><td>Product Comments v3.4.1</td>\r\n<td>displayTop</td>\r\n<td>7</td>\r\n</tr><tr><td>Newsletter block v2.1.6</td>\r\n<td>displayFooter</td>\r\n<td>1</td>\r\n</tr><tr><td>Social networking block v1.1.5</td>\r\n<td>displayFooter</td>\r\n<td>2</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayFooter</td>\r\n<td>3</td>\r\n</tr><tr><td>CMS block v2.0.2</td>\r\n<td>displayFooter</td>\r\n<td>4</td>\r\n</tr><tr><td>Categories block v2.8.8</td>\r\n<td>displayFooter</td>\r\n<td>5</td>\r\n</tr><tr><td>Layered navigation block v2.0.7</td>\r\n<td>displayFooter</td>\r\n<td>6</td>\r\n</tr><tr><td>My account block for your website\'s footer v1.5.1</td>\r\n<td>displayFooter</td>\r\n<td>7</td>\r\n</tr><tr><td>Data mining for statistics v1.4.1</td>\r\n<td>displayFooter</td>\r\n<td>8</td>\r\n</tr><tr><td>TM Olark Chat v1.0.0</td>\r\n<td>displayFooter</td>\r\n<td>9</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayFooter</td>\r\n<td>10</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayHomeTab</td>\r\n<td>1</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayHomeTab</td>\r\n<td>2</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayHomeTab</td>\r\n<td>3</td>\r\n</tr><tr><td>Featured products on the homepage v1.6.3</td>\r\n<td>displayHomeTabContent</td>\r\n<td>1</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayHomeTabContent</td>\r\n<td>2</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayHomeTabContent</td>\r\n<td>3</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayHomeTabContent</td>\r\n<td>4</td>\r\n</tr><tr><td>Image slider for your homepage v1.4.8</td>\r\n<td>displayTopColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayTopColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Language block v1.3.3</td>\r\n<td>displayNav</td>\r\n<td>1</td>\r\n</tr><tr><td>Currency block v0.3.2</td>\r\n<td>displayNav</td>\r\n<td>2</td>\r\n</tr><tr><td>TM Header Account Block v1.0.0</td>\r\n<td>displayNav</td>\r\n<td>3</td>\r\n</tr><tr><td>Permanent links block v0.2.1</td>\r\n<td>displayNav</td>\r\n<td>4</td>\r\n</tr></tbody></table><h3>2. Configuring images</h3>\r\n<p>In PrestaShop you can use predefined image dimensions for product images, category images, manufacturers etc.</p>\r\n<p>For example, images of the <strong>\'home\'</strong> dimensions are usually used for the category listing product images, <strong>\'large\'</strong> for main product image on the product info page.</p>\r\n<p>To configure product image dimensions, open your PrestaShop admin panel, go to <strong>Preferences &gt; Images</strong> and set the image dimensions as displayed below:</p>\r\n<table class="table table-bordered table-hover"><tbody><tr><th>Picture</th><th>Width (px)</th><th>Height (px)</th></tr><tr><td>small_default</td>\r\n<td>98</td>\r\n<td class="presta_center">98</td>\r\n</tr><tr><td>medium_default</td>\r\n<td>125</td>\r\n<td class="presta_center">125</td>\r\n</tr><tr><td>home_default</td>\r\n<td>270</td>\r\n<td class="presta_center">270</td>\r\n</tr><tr><td>large_default</td>\r\n<td>458</td>\r\n<td class="presta_center">458</td>\r\n</tr><tr><td>thickbox_default</td>\r\n<td>800</td>\r\n<td class="presta_center">800</td>\r\n</tr><tr><td>category_default</td>\r\n<td>870</td>\r\n<td class="presta_center">217</td>\r\n</tr><tr><td>scene_default</td>\r\n<td>520</td>\r\n<td class="presta_center">189</td>\r\n</tr><tr><td>m_scene_default</td>\r\n<td>161</td>\r\n<td class="presta_center">58</td>\r\n</tr><tr><td>tm_home_default</td>\r\n<td>270</td>\r\n<td class="presta_center">270</td>\r\n</tr><tr><td>tm_large_default</td>\r\n<td>458</td>\r\n<td class="presta_center">458</td>\r\n</tr><tr><td>tm_small_default</td>\r\n<td>98</td>\r\n<td class="presta_center">98</td>\r\n</tr><tr><td>tm_cart_default</td>\r\n<td>80</td>\r\n<td class="presta_center">80</td>\r\n</tr><tr><td>tm_medium_default</td>\r\n<td>125</td>\r\n<td class="presta_center">125</td>\r\n</tr><tr><td>tm_thickbox_default</td>\r\n<td>800</td>\r\n<td class="presta_center">800</td>\r\n</tr><tr><td>tm_category_default</td>\r\n<td>870</td>\r\n<td class="presta_center">217</td>\r\n</tr><tr><td>cart_default</td>\r\n<td>80</td>\r\n<td class="presta_center">80</td>\r\n</tr></tbody></table></div>\r\n<div class="clearfix"> </div>\r\n</div>', 'pages-configuration'),
(6, 5, 1, 'Pages configuration', '', '', '<div class="block">\r\n<h4>Pages configuration</h4>\r\n<div>\r\n<h3>1. Position section of the modules list.</h3>\r\n<p>After activating all necessary modules you need to assign them to correct positions. In PrestaShop admin panel from the top menu select Modules &gt; Positions. To place module in the required position just drag it to the position section of the modules list.</p>\r\n<table class="table table-bordered table-hover"><tbody><tr><th>Module name</th><th>Position</th><th>Order</th></tr><tr><td>Contact block v1.3.3</td>\r\n<td>displayRightColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayRightColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Layered navigation block v2.0.7</td>\r\n<td>displayLeftColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>Categories block v2.8.8</td>\r\n<td>displayLeftColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Wishlist block v1.2.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>3</td>\r\n</tr><tr><td>CMS block v2.0.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>4</td>\r\n</tr><tr><td>Manufacturers block v1.2.2</td>\r\n<td>displayLeftColumn</td>\r\n<td>5</td>\r\n</tr><tr><td>My Account block v1.3.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>6</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayLeftColumn</td>\r\n<td>7</td>\r\n</tr><tr><td>Payment logos block. v0.3.3</td>\r\n<td>displayLeftColumn</td>\r\n<td>8</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayLeftColumn</td>\r\n<td>9</td>\r\n</tr><tr><td>Store locator block v1.2.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>10</td>\r\n</tr><tr><td>Suppliers block v1.1.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>11</td>\r\n</tr><tr><td>Tags block v1.2.6</td>\r\n<td>displayLeftColumn</td>\r\n<td>12</td>\r\n</tr><tr><td>Viewed products block v1.2.3</td>\r\n<td>displayLeftColumn</td>\r\n<td>13</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>14</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayLeftColumn</td>\r\n<td>15</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayLeftColumn</td>\r\n<td>16</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayHome</td>\r\n<td>1</td>\r\n</tr><tr><td>SmartBlog Home Latest v2.0.1</td>\r\n<td>displayHome</td>\r\n<td>2</td>\r\n</tr><tr><td>Custom CMS information block v1.5.2</td>\r\n<td>displayHome</td>\r\n<td>3</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayHome</td>\r\n<td>4</td>\r\n</tr><tr><td>Quick search block v1.5.3</td>\r\n<td>displayTop</td>\r\n<td>1</td>\r\n</tr><tr><td>Cart block v1.5.7</td>\r\n<td>displayTop</td>\r\n<td>2</td>\r\n</tr><tr><td>Top horizontal menu v2.1.1</td>\r\n<td>displayTop</td>\r\n<td>3</td>\r\n</tr><tr><td>Pages not found v1.3.4</td>\r\n<td>displayTop</td>\r\n<td>4</td>\r\n</tr><tr><td>Search engine keywords v1.2.4</td>\r\n<td>displayTop</td>\r\n<td>5</td>\r\n</tr><tr><td>Wishlist block v1.2.2</td>\r\n<td>displayTop</td>\r\n<td>6</td>\r\n</tr><tr><td>Product Comments v3.4.1</td>\r\n<td>displayTop</td>\r\n<td>7</td>\r\n</tr><tr><td>Newsletter block v2.1.6</td>\r\n<td>displayFooter</td>\r\n<td>1</td>\r\n</tr><tr><td>Social networking block v1.1.5</td>\r\n<td>displayFooter</td>\r\n<td>2</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayFooter</td>\r\n<td>3</td>\r\n</tr><tr><td>CMS block v2.0.2</td>\r\n<td>displayFooter</td>\r\n<td>4</td>\r\n</tr><tr><td>Categories block v2.8.8</td>\r\n<td>displayFooter</td>\r\n<td>5</td>\r\n</tr><tr><td>Layered navigation block v2.0.7</td>\r\n<td>displayFooter</td>\r\n<td>6</td>\r\n</tr><tr><td>My account block for your website\'s footer v1.5.1</td>\r\n<td>displayFooter</td>\r\n<td>7</td>\r\n</tr><tr><td>Data mining for statistics v1.4.1</td>\r\n<td>displayFooter</td>\r\n<td>8</td>\r\n</tr><tr><td>TM Olark Chat v1.0.0</td>\r\n<td>displayFooter</td>\r\n<td>9</td>\r\n</tr><tr><td>TM Social Feeds v1.0</td>\r\n<td>displayFooter</td>\r\n<td>10</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayHomeTab</td>\r\n<td>1</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayHomeTab</td>\r\n<td>2</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayHomeTab</td>\r\n<td>3</td>\r\n</tr><tr><td>Featured products on the homepage v1.6.3</td>\r\n<td>displayHomeTabContent</td>\r\n<td>1</td>\r\n</tr><tr><td>New products block v1.9.5</td>\r\n<td>displayHomeTabContent</td>\r\n<td>2</td>\r\n</tr><tr><td>Specials block v1.1.5</td>\r\n<td>displayHomeTabContent</td>\r\n<td>3</td>\r\n</tr><tr><td>Top-sellers block v1.6.1</td>\r\n<td>displayHomeTabContent</td>\r\n<td>4</td>\r\n</tr><tr><td>Image slider for your homepage v1.4.8</td>\r\n<td>displayTopColumn</td>\r\n<td>1</td>\r\n</tr><tr><td>Theme configurator v1.2.1</td>\r\n<td>displayTopColumn</td>\r\n<td>2</td>\r\n</tr><tr><td>Language block v1.3.3</td>\r\n<td>displayNav</td>\r\n<td>1</td>\r\n</tr><tr><td>Currency block v0.3.2</td>\r\n<td>displayNav</td>\r\n<td>2</td>\r\n</tr><tr><td>TM Header Account Block v1.0.0</td>\r\n<td>displayNav</td>\r\n<td>3</td>\r\n</tr><tr><td>Permanent links block v0.2.1</td>\r\n<td>displayNav</td>\r\n<td>4</td>\r\n</tr></tbody></table><h3>2. Configuring images</h3>\r\n<p>In PrestaShop you can use predefined image dimensions for product images, category images, manufacturers etc.</p>\r\n<p>For example, images of the <strong>\'home\'</strong> dimensions are usually used for the category listing product images, <strong>\'large\'</strong> for main product image on the product info page.</p>\r\n<p>To configure product image dimensions, open your PrestaShop admin panel, go to <strong>Preferences &gt; Images</strong> and set the image dimensions as displayed below:</p>\r\n<table class="table table-bordered table-hover"><tbody><tr><th>Picture</th><th>Width (px)</th><th>Height (px)</th></tr><tr><td>small_default</td>\r\n<td>98</td>\r\n<td class="presta_center">98</td>\r\n</tr><tr><td>medium_default</td>\r\n<td>125</td>\r\n<td class="presta_center">125</td>\r\n</tr><tr><td>home_default</td>\r\n<td>270</td>\r\n<td class="presta_center">270</td>\r\n</tr><tr><td>large_default</td>\r\n<td>458</td>\r\n<td class="presta_center">458</td>\r\n</tr><tr><td>thickbox_default</td>\r\n<td>800</td>\r\n<td class="presta_center">800</td>\r\n</tr><tr><td>category_default</td>\r\n<td>870</td>\r\n<td class="presta_center">217</td>\r\n</tr><tr><td>scene_default</td>\r\n<td>520</td>\r\n<td class="presta_center">189</td>\r\n</tr><tr><td>m_scene_default</td>\r\n<td>161</td>\r\n<td class="presta_center">58</td>\r\n</tr><tr><td>tm_home_default</td>\r\n<td>270</td>\r\n<td class="presta_center">270</td>\r\n</tr><tr><td>tm_large_default</td>\r\n<td>458</td>\r\n<td class="presta_center">458</td>\r\n</tr><tr><td>tm_small_default</td>\r\n<td>98</td>\r\n<td class="presta_center">98</td>\r\n</tr><tr><td>tm_cart_default</td>\r\n<td>80</td>\r\n<td class="presta_center">80</td>\r\n</tr><tr><td>tm_medium_default</td>\r\n<td>125</td>\r\n<td class="presta_center">125</td>\r\n</tr><tr><td>tm_thickbox_default</td>\r\n<td>800</td>\r\n<td class="presta_center">800</td>\r\n</tr><tr><td>tm_category_default</td>\r\n<td>870</td>\r\n<td class="presta_center">217</td>\r\n</tr><tr><td>cart_default</td>\r\n<td>80</td>\r\n<td class="presta_center">80</td>\r\n</tr></tbody></table></div>\r\n<div class="clearfix"> </div>\r\n</div>', 'pages-configuration');

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms_role`
--

CREATE TABLE `ps_cms_role` (
  `id_cms_role` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_cms` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms_role_lang`
--

CREATE TABLE `ps_cms_role_lang` (
  `id_cms_role` int(11) UNSIGNED NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_cms_shop`
--

CREATE TABLE `ps_cms_shop` (
  `id_cms` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_cms_shop`
--

INSERT INTO `ps_cms_shop` (`id_cms`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_compare`
--

CREATE TABLE `ps_compare` (
  `id_compare` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_compare`
--

INSERT INTO `ps_compare` (`id_compare`, `id_customer`) VALUES
(1, 0),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `ps_compare_product`
--

CREATE TABLE `ps_compare_product` (
  `id_compare` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_compare_product`
--

INSERT INTO `ps_compare_product` (`id_compare`, `id_product`, `date_add`, `date_upd`) VALUES
(2, 23, '2016-08-04 15:52:43', '2016-08-04 15:52:43'),
(2, 24, '2016-08-04 15:52:41', '2016-08-04 15:52:41');

-- --------------------------------------------------------

--
-- Structure de la table `ps_condition`
--

CREATE TABLE `ps_condition` (
  `id_condition` int(11) NOT NULL,
  `id_ps_condition` int(11) NOT NULL,
  `type` enum('configuration','install','sql') NOT NULL,
  `request` text,
  `operator` varchar(32) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `result` varchar(64) DEFAULT NULL,
  `calculation_type` enum('hook','time') DEFAULT NULL,
  `calculation_detail` varchar(64) DEFAULT NULL,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_condition`
--

INSERT INTO `ps_condition` (`id_condition`, `id_ps_condition`, `type`, `request`, `operator`, `value`, `result`, `calculation_type`, `calculation_detail`, `validated`, `date_add`, `date_upd`) VALUES
(1, 159, 'install', '', '<=', '90', '1', 'time', '2', 1, '2016-08-09 21:56:21', '2016-08-09 21:56:21'),
(2, 158, 'install', '', '>=', '90', '', 'time', '2', 0, '2016-08-09 21:56:21', '2016-08-09 21:56:21'),
(3, 19, 'install', '', '>', '0', '1', 'time', '1', 1, '2016-08-09 21:56:21', '2016-08-09 21:56:21'),
(4, 40, 'install', '', '>=', '730', '', 'time', '2', 0, '2016-08-09 21:56:21', '2016-08-09 21:56:21'),
(5, 324, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%shoppingfluxexport%" ', '==', '0', '0', 'time', '1', 1, '2016-08-09 21:56:21', '2016-08-09 21:56:21'),
(6, 399, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '499', '8', 'hook', 'actionObjectProductAddAfter', 0, '2016-08-09 21:56:21', '2016-08-09 21:56:21'),
(7, 323, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%shoppingfluxexport%" ', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:21', '2016-08-09 21:56:21'),
(8, 521, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%simplifycommerce%"', '==', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:22', '2016-08-09 21:56:22'),
(9, 55, 'sql', 'SELECT COUNT(*) FROM ps_orders WHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL")', '>=', '100', '', 'hook', 'actionObjectOrderAddAfter', 0, '2016-08-09 21:56:22', '2016-08-09 21:56:22'),
(10, 12, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '99', '8', 'hook', 'actionObjectProductAddAfter', 0, '2016-08-09 21:56:22', '2016-08-09 21:56:22'),
(11, 39, 'install', '', '>=', '365', '', 'time', '2', 0, '2016-08-09 21:56:22', '2016-08-09 21:56:22'),
(12, 132, 'sql', 'SELECT count(id_configuration) FROM PREFIX_configuration WHERE `name` = \'PS_SHOP_DOMAIN\' AND value IN (\'127.0.0.1\', \'localhost\' )', '==', '1', '1', 'time', '1', 1, '2016-08-09 21:56:22', '2016-08-09 21:56:22'),
(13, 175, 'sql', 'SELECT count(*) FROM	 PREFIX_configuration WHERE name = \'PS_HOSTED_MODE\'', '==', '0', '0', 'time', '1', 1, '2016-08-09 21:56:22', '2016-08-09 21:56:22'),
(14, 428, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%authorizeaim%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:22', '2016-08-09 21:56:22'),
(15, 188, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%avalaratax%" ', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:23', '2016-08-09 21:56:23'),
(16, 542, 'sql', 'SELECT \'{config} PS_VERSION_DB{/config}\' >= \'1.7.0.0\' AND < \'1.8.0.0\'', '==', '1', '0', 'time', '1', 0, '2016-08-09 21:56:23', '2016-08-09 21:56:23'),
(17, 1, 'configuration', 'PS_REWRITING_SETTINGS', '==', '1', '1', 'hook', 'actionAdminMetaControllerUpdate_optionsAfter', 1, '2016-08-09 21:56:23', '2016-08-09 21:56:23'),
(18, 2, 'configuration', 'PS_SMARTY_FORCE_COMPILE', '!=', '2', '1', 'hook', 'actionAdminPerformanceControllerSaveAfter', 1, '2016-08-09 21:56:23', '2016-08-09 21:56:23'),
(19, 3, 'configuration', 'PS_CSS_THEME_CACHE', '==', '1', '', 'hook', 'actionAdminPerformanceControllerSaveAfter', 0, '2016-08-09 21:56:23', '2016-08-09 21:56:23'),
(20, 4, 'configuration', 'PS_CIPHER_ALGORITHM', '==', '1', '', 'hook', 'actionAdminPerformanceControllerSaveAfter', 0, '2016-08-09 21:56:23', '2016-08-09 21:56:23'),
(21, 5, 'configuration', 'PS_MEDIA_SERVERS', '==', '1', '', 'hook', 'actionAdminPerformanceControllerSaveAfter', 0, '2016-08-09 21:56:23', '2016-08-09 21:56:23'),
(22, 6, 'sql', 'SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = "displayPayment" OR h.name = "payment") AND m.name NOT IN ("bankwire", "cheque", "cashondelivery")', '>', '0', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:23', '2016-08-09 21:56:23'),
(23, 7, 'sql', 'SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = "displayPayment" OR h.name = "payment") AND m.name NOT IN ("bankwire", "cheque", "cashondelivery")', '>', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:23', '2016-08-09 21:56:23'),
(24, 8, 'sql', 'SELECT COUNT(*) FROM PREFIX_carrier WHERE name NOT IN ("0", "My carrier")', '>', '0', '1', 'hook', 'actionObjectCarrierAddAfter', 1, '2016-08-09 21:56:23', '2016-08-09 21:56:23'),
(25, 9, 'sql', 'SELECT COUNT(*) FROM PREFIX_carrier WHERE name NOT IN ("0", "My carrier")', '>', '1', '1', 'hook', 'actionObjectCarrierAddAfter', 0, '2016-08-09 21:56:23', '2016-08-09 21:56:23'),
(26, 10, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '0', '21', 'hook', 'actionObjectProductAddAfter', 1, '2016-08-09 21:56:24', '2016-08-09 21:56:24'),
(27, 11, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '9', '21', 'hook', 'actionObjectProductAddAfter', 1, '2016-08-09 21:56:24', '2016-08-09 21:56:24'),
(28, 16, 'configuration', 'PS_SHOP_PHONE', '!=', '0', '1', 'hook', 'actionAdminStoresControllerUpdate_optionsAfter', 1, '2016-08-09 21:56:24', '2016-08-09 21:56:24'),
(29, 17, 'sql', 'SELECT COUNT(*) FROM PREFIX_contact', '>', '2', '2', 'hook', 'actionObjectContactAddAfter', 0, '2016-08-09 21:56:24', '2016-08-09 21:56:24'),
(30, 18, 'sql', 'SELECT COUNT(*) FROM PREFIX_contact', '>', '4', '2', 'hook', 'actionObjectContactAddAfter', 0, '2016-08-09 21:56:24', '2016-08-09 21:56:24'),
(31, 13, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '999', '8', 'hook', 'actionObjectProductAddAfter', 0, '2016-08-09 21:56:24', '2016-08-09 21:56:24'),
(32, 14, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '9999', '8', 'hook', 'actionObjectProductAddAfter', 0, '2016-08-09 21:56:24', '2016-08-09 21:56:24'),
(33, 15, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '99999', '8', 'hook', 'actionObjectProductAddAfter', 0, '2016-08-09 21:56:24', '2016-08-09 21:56:24'),
(34, 20, 'install', '', '>=', '7', '1', 'time', '1', 1, '2016-08-09 21:56:24', '2016-08-09 21:56:24'),
(35, 21, 'configuration', 'PS_LOGO', '!=', 'logo.jpg', '1', 'hook', 'actionAdminThemesControllerUpdate_optionsAfter', 1, '2016-08-09 21:56:25', '2016-08-09 21:56:25'),
(36, 22, 'sql', 'SELECT COUNT(*) FROM PREFIX_theme WHERE directory != "default" AND directory != "prestashop" AND directory ! "default-bootstrap"', '>', '0', '0', 'hook', 'actionObjectShopUpdateAfter', 0, '2016-08-09 21:56:25', '2016-08-09 21:56:25'),
(37, 23, 'configuration', 'PS_LOGGED_ON_ADDONS', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:25', '2016-08-10 01:53:20'),
(38, 24, 'configuration', 'PS_MULTISHOP_FEATURE_ACTIVE', '==', '1', '1', 'hook', 'actionAdminPreferencesControllerUpdate_optionsAfter', 1, '2016-08-09 21:56:25', '2016-08-09 21:56:25'),
(39, 25, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop', '>', '1', '2', 'hook', 'actionObjectShopAddAfter', 1, '2016-08-09 21:56:25', '2016-08-09 21:56:25'),
(40, 28, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop_group', '>', '1', '2', 'hook', 'actionObjectShopGroupAddAfter', 1, '2016-08-09 21:56:25', '2016-08-09 21:56:25'),
(41, 26, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop', '>', '4', '2', 'hook', 'actionObjectShopAddAfter', 0, '2016-08-09 21:56:25', '2016-08-09 21:56:25'),
(42, 27, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop_group', '>', '5', '1', 'hook', 'actionObjectShopGroupAddAfter 	', 0, '2016-08-09 21:56:26', '2016-08-09 21:56:26'),
(43, 30, 'sql', 'SELECT COUNT(*) FROM PREFIX_carrier WHERE name NOT IN ("0", "My carrier")', '>', '2', '1', 'hook', 'actionObjectCarrierAddAfter', 0, '2016-08-09 21:56:26', '2016-08-09 21:56:26'),
(44, 29, 'sql', 'SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = "displayPayment" OR h.name = "payment") AND m.name NOT IN ("bankwire", "cheque", "cashondelivery")', '>', '2', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:26', '2016-08-09 21:56:26'),
(45, 31, 'sql', 'SELECT SUM(total_paid_tax_excl / c.conversion_rate)\r\nFROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != "XKBKNABJK"', '>=', '200', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:26', '2016-08-09 21:56:26'),
(46, 32, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != "XKBKNABJK"', '>=', '2000', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:26', '2016-08-09 21:56:26'),
(47, 33, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != "XKBKNABJK"', '>=', '20000', '0', 'time', '1', 0, '2016-08-09 21:56:26', '2016-08-10 01:53:20'),
(48, 34, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1', '>=', '200000', '0', 'time', '7', 0, '2016-08-09 21:56:27', '2016-08-09 21:56:27'),
(49, 35, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1', '>=', '2000000', '0', 'time', '7', 0, '2016-08-09 21:56:27', '2016-08-09 21:56:27'),
(50, 36, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1', '>=', '20000000', '0', 'time', '7', 0, '2016-08-09 21:56:27', '2016-08-09 21:56:27'),
(51, 37, 'install', '', '>=', '30', '', 'time', '1', 0, '2016-08-09 21:56:27', '2016-08-10 01:53:20'),
(52, 38, 'install', '', '>=', '182', '', 'time', '2', 0, '2016-08-09 21:56:27', '2016-08-09 21:56:27'),
(53, 41, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '10', '10', 'time', '1', 1, '2016-08-09 21:56:27', '2016-08-09 21:56:27'),
(54, 42, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '100', '16', 'time', '1', 0, '2016-08-09 21:56:27', '2016-08-10 01:53:20'),
(55, 43, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '1000', '16', 'time', '1', 0, '2016-08-09 21:56:27', '2016-08-10 01:53:20'),
(56, 44, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '10000', '16', 'time', '2', 0, '2016-08-09 21:56:27', '2016-08-09 21:56:27'),
(57, 45, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '100000', '10', 'time', '3', 0, '2016-08-09 21:56:27', '2016-08-09 21:56:27'),
(58, 46, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '1000000', '10', 'time', '4', 0, '2016-08-09 21:56:28', '2016-08-09 21:56:28'),
(59, 47, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != "b44a6d9efd7a0076a0fbce6b15eaf3b1"', '>=', '2', '3', 'hook', 'actionObjectCartAddAfter', 1, '2016-08-09 21:56:28', '2016-08-09 21:56:28'),
(60, 48, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != "b44a6d9efd7a0076a0fbce6b15eaf3b1"', '>=', '10', '4', 'hook', 'actionObjectCartAddAfter', 0, '2016-08-09 21:56:28', '2016-08-09 21:56:28'),
(61, 49, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != "b44a6d9efd7a0076a0fbce6b15eaf3b1"', '>=', '100', '4', 'hook', 'actionObjectCartAddAfter', 0, '2016-08-09 21:56:28', '2016-08-09 21:56:28'),
(62, 50, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != "b44a6d9efd7a0076a0fbce6b15eaf3b1"', '>=', '1000', '4', 'time', '1', 0, '2016-08-09 21:56:28', '2016-08-10 01:53:20'),
(63, 51, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != "b44a6d9efd7a0076a0fbce6b15eaf3b1"', '>=', '10000', '3', 'time', '4', 0, '2016-08-09 21:56:28', '2016-08-09 21:56:28'),
(64, 52, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart WHERE secure_key != "b44a6d9efd7a0076a0fbce6b15eaf3b1"', '>=', '100000', '3', 'time', '8', 0, '2016-08-09 21:56:28', '2016-08-09 21:56:28'),
(65, 53, 'sql', 'SELECT COUNT(*) FROM ps_orders WHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL")', '>=', '1', '', 'hook', 'actionObjectOrderAddAfter', 0, '2016-08-09 21:56:29', '2016-08-09 21:56:29'),
(66, 54, 'sql', 'SELECT COUNT(*) FROM ps_orders WHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL")', '>=', '10', '', 'hook', 'actionObjectOrderAddAfter', 0, '2016-08-09 21:56:29', '2016-08-09 21:56:29'),
(67, 56, 'sql', 'SELECT COUNT(*) FROM ps_orders WHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL")', '>=', '1000', '0', 'time', '2', 0, '2016-08-09 21:56:29', '2016-08-09 21:56:29'),
(68, 57, 'sql', 'SELECT COUNT(*) FROM ps_orders WHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL")', '>=', '10000', '0', 'time', '4', 0, '2016-08-09 21:56:29', '2016-08-09 21:56:29'),
(69, 58, 'sql', 'SELECT COUNT(*) FROM ps_orders WHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL")', '>=', '100000', '0', 'time', '8', 0, '2016-08-09 21:56:29', '2016-08-09 21:56:29'),
(70, 65, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '1', '', 'hook', 'actionObjectCustomerThreadAddAfter', 0, '2016-08-09 21:56:29', '2016-08-09 21:56:29'),
(71, 66, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '10', '', 'hook', 'actionObjectCustomerThreadAddAfter', 0, '2016-08-09 21:56:29', '2016-08-09 21:56:29'),
(72, 67, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '100', '', 'hook', 'actionObjectCustomerThreadAddAfter', 0, '2016-08-09 21:56:29', '2016-08-09 21:56:29'),
(73, 68, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '1000', '0', 'time', '2', 0, '2016-08-09 21:56:29', '2016-08-09 21:56:29'),
(74, 69, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '10000', '0', 'time', '4', 0, '2016-08-09 21:56:29', '2016-08-09 21:56:29'),
(75, 70, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '100000', '0', 'time', '8', 0, '2016-08-09 21:56:29', '2016-08-09 21:56:29'),
(76, 59, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '1', '1', 'hook', 'actionObjectCustomerAddAfter', 1, '2016-08-09 21:56:30', '2016-08-09 21:56:30'),
(77, 60, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '10', '1', 'hook', 'actionObjectCustomerAddAfter', 0, '2016-08-09 21:56:30', '2016-08-09 21:56:30'),
(78, 61, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '100', '1', 'hook', 'actionObjectCustomerAddAfter', 0, '2016-08-09 21:56:30', '2016-08-09 21:56:30'),
(79, 62, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '1000', '1', 'time', '1', 0, '2016-08-09 21:56:30', '2016-08-10 01:53:21'),
(80, 63, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '10000', '1', 'time', '2', 0, '2016-08-09 21:56:30', '2016-08-09 21:56:30'),
(81, 64, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '100000', '1', 'time', '4', 0, '2016-08-09 21:56:30', '2016-08-09 21:56:30'),
(82, 76, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"CA",\r\n"GL",\r\n"PM",\r\n"US"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:30', '2016-08-09 21:56:30'),
(83, 79, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"UM",\r\n"AS",\r\n"AU",\r\n"CK",\r\n"FJ",\r\n"FM",\r\n"GU",\r\n"KI",\r\n"MH,"\r\n"MP",\r\n"NC",\r\n"NF",\r\n"NR",\r\n"NU",\r\n"NZ",\r\n"PF",\r\n"PG",\r\n"PN",\r\n"PW",\r\n"SB",\r\n"TK",\r\n"TO",\r\n"TV",\r\n"VU",\r\n"WF",\r\n"WS"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:31', '2016-08-09 21:56:31'),
(84, 85, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"KG",\r\n"KZ",\r\n"TJ",\r\n"TM",\r\n"UZ",\r\n"AE",\r\n"AM",\r\n"AZ",\r\n"BH",\r\n"CY",\r\n"GE",\r\n"IL",\r\n"IQ",\r\n"IR",\r\n"JO",\r\n"KW",\r\n"LB",\r\n"OM",\r\n"QA",\r\n"SA",\r\n"SY",\r\n"TR",\r\n"YE",\r\n"AF",\r\n"BD",\r\n"BT",\r\n"IN",\r\n"IO",\r\n"LK",\r\n"MV",\r\n"NP",\r\n"PK",\r\n"CN",\r\n"HK",\r\n"JP",\r\n"KP",\r\n"KR",\r\n"MO",\r\n"TW",\r\n"MN",\r\n"BN",\r\n"CC",\r\n"CX",\r\n"ID",\r\n"KH",\r\n"LA",\r\n"MM",\r\n"MY",\r\n"PH",\r\n"SG",\r\n"TH",\r\n"TP",\r\n"VN"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:31', '2016-08-09 21:56:31'),
(85, 86, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BZ",\r\n"CR",\r\n"GT",\r\n"HN",\r\n"MX",\r\n"NI",\r\n"PA",\r\n"SV",\r\n"AG",\r\n"AI",\r\n"AN",\r\n"AW",\r\n"BB",\r\n"BM",\r\n"BS",\r\n"CU",\r\n"DM",\r\n"DO",\r\n"GD",\r\n"GP",\r\n"HT",\r\n"JM",\r\n"KN",\r\n"KY",\r\n"LC",\r\n"MQ",\r\n"MS",\r\n"PR",\r\n"TC",\r\n"TT",\r\n"VC",\r\n"VG",\r\n"VI",\r\n"AR",\r\n"BO",\r\n"BR",\r\n"CL",\r\n"CO",\r\n"EC",\r\n"FK",\r\n"GF",\r\n"GY",\r\n"PE",\r\n"PY",\r\n"SR",\r\n"UY",\r\n"VE"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:31', '2016-08-09 21:56:31'),
(86, 87, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BE",\r\n"DE",\r\n"FR",\r\n"FX",\r\n"GB",\r\n"IE",\r\n"LU",\r\n"MC",\r\n"NL",\r\n"IT",\r\n"MT",\r\n"SM",\r\n"VA",\r\n"AD",\r\n"ES",\r\n"GI",\r\n"PT",\r\n"BY",\r\n"EE",\r\n"LT",\r\n"LV",\r\n"MD",\r\n"PL",\r\n"UA",\r\n"AL",\r\n"BA",\r\n"BG",\r\n"GR",\r\n"HR",\r\n"MK",\r\n"RO",\r\n"SI",\r\n"YU",\r\n"RU",\r\n"AT",\r\n"CH",\r\n"CZ",\r\n"HU",\r\n"LI",\r\n"SK",\r\n"DK",\r\n"FI",\r\n"FO",\r\n"IS",\r\n"NO",\r\n"SE",\r\n"SJ"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:31', '2016-08-09 21:56:31'),
(87, 88, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BI",\r\n"CF",\r\n"CG",\r\n"RW",\r\n"TD",\r\n"ZR",\r\n"DJ",\r\n"ER",\r\n"ET",\r\n"KE",\r\n"SO",\r\n"TZ",\r\n"UG",\r\n"KM",\r\n"MG",\r\n"MU",\r\n"RE",\r\n"SC",\r\n"YT",\r\n"AO",\r\n"BW",\r\n"LS",\r\n"MW",\r\n"MZ",\r\n"NA",\r\n"SZ",\r\n"ZA",\r\n"ZM",\r\n"ZW",\r\n"BF",\r\n"BJ",\r\n"CI",\r\n"CM",\r\n"CV",\r\n"GA",\r\n"GH",\r\n"GM",\r\n"GN",\r\n"GQ",\r\n"GW",\r\n"LR",\r\n"ML",\r\n"MR",\r\n"NE",\r\n"NG",\r\n"SL",\r\n"SN",\r\n"ST",\r\n"TG"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:31', '2016-08-09 21:56:31'),
(88, 89, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"DZ",\r\n"EG",\r\n"EH",\r\n"LY",\r\n"MA",\r\n"SD",\r\n"TN"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:31', '2016-08-09 21:56:31'),
(89, 90, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '2', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2016-08-09 21:56:31', '2016-08-09 21:56:31'),
(90, 91, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '3', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2016-08-09 21:56:31', '2016-08-09 21:56:31'),
(91, 92, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '5', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2016-08-09 21:56:32', '2016-08-09 21:56:32'),
(92, 93, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '10', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2016-08-09 21:56:32', '2016-08-09 21:56:32'),
(93, 94, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '20', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2016-08-09 21:56:32', '2016-08-09 21:56:32'),
(94, 95, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '40', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2016-08-09 21:56:32', '2016-08-09 21:56:32'),
(95, 96, 'sql', 'SELECT id_image FROM PREFIX_image WHERE id_image > 26', '>', '0', '27', 'hook', 'actionObjectImageAddAfter', 1, '2016-08-09 21:56:32', '2016-08-09 21:56:32'),
(96, 97, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '50', '101', 'hook', 'actionObjectImageAddAfter', 1, '2016-08-09 21:56:32', '2016-08-09 21:56:32'),
(97, 98, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '100', '101', 'hook', 'actionObjectImageAddAfter', 1, '2016-08-09 21:56:32', '2016-08-09 21:56:32'),
(98, 99, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '1000', '24', 'time', '2', 0, '2016-08-09 21:56:32', '2016-08-09 21:56:32'),
(99, 100, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '10000', '103', 'time', '4', 0, '2016-08-09 21:56:33', '2016-08-09 21:56:33'),
(100, 101, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '50000', '103', 'time', '8', 0, '2016-08-09 21:56:33', '2016-08-09 21:56:33'),
(101, 102, 'sql', 'SELECT id_cms FROM PREFIX_cms WHERE id_cms > 5', '>', '0', '6', 'hook', 'actionObjectCMSAddAfter', 1, '2016-08-09 21:56:33', '2016-08-09 21:56:33'),
(102, 103, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '1', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2016-08-09 21:56:33', '2016-08-09 21:56:33'),
(103, 104, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '10', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2016-08-09 21:56:33', '2016-08-09 21:56:33'),
(104, 105, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '100', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2016-08-09 21:56:33', '2016-08-09 21:56:33'),
(105, 107, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '500', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2016-08-09 21:56:33', '2016-08-09 21:56:33'),
(106, 106, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '1000', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2016-08-09 21:56:34', '2016-08-09 21:56:34'),
(107, 108, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '5000', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2016-08-09 21:56:34', '2016-08-09 21:56:34'),
(108, 109, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL") AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '1', '', 'hook', 'newOrder', 0, '2016-08-09 21:56:34', '2016-08-09 21:56:34'),
(109, 110, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL") AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '10', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:34', '2016-08-09 21:56:34'),
(110, 111, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL") AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '100', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:34', '2016-08-09 21:56:34'),
(111, 113, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL") AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '1000', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:34', '2016-08-09 21:56:34'),
(112, 114, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL") AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '5000', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:35', '2016-08-09 21:56:35'),
(113, 112, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference NOT IN ("XKBKNABJK", "OHSATSERP", "FFATNOMMJ", "UOYEVOLI", "KHWLILZLL") AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '10000', '', 'hook', 'actionOrderStatusUpdate', 0, '2016-08-09 21:56:35', '2016-08-09 21:56:35'),
(114, 165, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')', '>', '0', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2016-08-09 21:56:35', '2016-08-09 21:56:35'),
(115, 166, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')', '>', '1', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2016-08-09 21:56:35', '2016-08-09 21:56:35'),
(116, 167, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')', '>', '4', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2016-08-09 21:56:35', '2016-08-09 21:56:35'),
(117, 168, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')', '>', '9', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2016-08-09 21:56:35', '2016-08-09 21:56:35'),
(118, 169, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')', '>', '19', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2016-08-09 21:56:35', '2016-08-09 21:56:35'),
(119, 170, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (\'25.76500500\', \'26.13793600\', \'26.00998700\', \'25.73629600\', \'25.88674000\') AND `longitude` NOT IN (\'-80.24379700\', \'-80.13943500\', \'-80.29447200\', \'-80.24479700\', \'-80.16329200\')', '>', '49', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2016-08-09 21:56:36', '2016-08-09 21:56:36'),
(120, 171, 'sql', 'SELECT COUNT(*) FROM PREFIX_webservice_account', '>=', '1', '', 'hook', 'actionAdminWebserviceControllerSaveAfter', 0, '2016-08-09 21:56:36', '2016-08-09 21:56:36'),
(121, 172, 'sql', 'SELECT COUNT(*) FROM PREFIX_webservice_account', '>=', '2', '', 'hook', 'actionAdminWebserviceControllerSaveAfter', 0, '2016-08-09 21:56:36', '2016-08-09 21:56:36'),
(122, 173, 'sql', 'SELECT COUNT(*) FROM PREFIX_webservice_account', '>=', '3', '', 'hook', 'actionAdminWebserviceControllerSaveAfter', 0, '2016-08-09 21:56:36', '2016-08-09 21:56:36'),
(123, 174, 'sql', 'SELECT COUNT(*) FROM PREFIX_webservice_account', '>=', '4', '', 'hook', 'actionAdminWebserviceControllerSaveAfter', 0, '2016-08-09 21:56:36', '2016-08-09 21:56:36'),
(124, 320, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%shopgate%" ', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:36', '2016-08-09 21:56:36'),
(125, 322, 'configuration', 'SHOPGATE_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:36', '2016-08-10 01:53:21'),
(126, 375, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%shopgate%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '1', '0', 'time', '1', 0, '2016-08-09 21:56:36', '2016-08-10 01:53:21'),
(127, 376, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%shopgate%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '1', 0, '2016-08-09 21:56:37', '2016-08-10 01:53:21'),
(128, 140, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%moneybookers%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:37', '2016-08-09 21:56:37'),
(129, 326, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'MONEYBOOKERS_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'MB_PAY_TO_EMAIL \') AND ( value != \'testaccount2@moneybookers.com \'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:37', '2016-08-10 01:53:21'),
(130, 377, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%moneybookers%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '1', '0', 'time', '1', 0, '2016-08-09 21:56:37', '2016-08-10 01:53:21'),
(131, 394, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%sofortbanking%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '1', 0, '2016-08-09 21:56:37', '2016-08-10 01:53:21'),
(132, 325, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE name LIKE \'SHOPPINGFLUXEXPORT_CONFIGURATION_OK\' OR name LIKE \'SHOPPINGFLUXEXPORT_CONFIGURED\'', '>=', '1', '0', 'time', '1', 0, '2016-08-09 21:56:37', '2016-08-10 01:53:21'),
(133, 424, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%alliance3%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:37', '2016-08-09 21:56:37'),
(134, 425, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'ALLIANCE3_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'ALLIANCE_DEMO\') AND ( value = \'0\'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:37', '2016-08-10 01:53:21'),
(135, 426, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%alliance3%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:38', '2016-08-09 21:56:38'),
(136, 427, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%alliance3%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:38', '2016-08-09 21:56:38'),
(137, 429, 'configuration', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'AUTHORIZEAIM_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'AUTHORIZE_AIM_SANDBOX\') AND ( value = \'0\'))', '==', '2', '', 'time', '2', 0, '2016-08-09 21:56:38', '2016-08-09 21:56:38'),
(138, 430, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%authorizeaim%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:38', '2016-08-09 21:56:38'),
(139, 431, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%authorizeaim%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:38', '2016-08-09 21:56:38'),
(140, 434, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%bluepay%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:38', '2016-08-09 21:56:38'),
(141, 435, 'configuration', 'BLUEPAY_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:38', '2016-08-10 01:53:21'),
(142, 436, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%bluepay%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:39', '2016-08-09 21:56:39'),
(143, 437, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%bluepay%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:39', '2016-08-09 21:56:39'),
(144, 136, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%ebay%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:39', '2016-08-09 21:56:39'),
(145, 209, 'configuration', 'EBAY_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:39', '2016-08-10 01:53:21'),
(146, 358, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%ebay%" AND os.logable = 1', '>=', '1', '0', 'time', '1', 0, '2016-08-09 21:56:39', '2016-08-10 01:53:21'),
(147, 359, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%ebay%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '1', 0, '2016-08-09 21:56:39', '2016-08-10 01:53:21'),
(148, 438, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%payplug%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:39', '2016-08-09 21:56:39'),
(149, 439, 'configuration', 'PAYPLUG_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:39', '2016-08-10 01:53:21'),
(150, 440, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%payplug%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:40', '2016-08-09 21:56:40'),
(151, 441, 'sql', 'SELECT SUM(o.total_paid) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%payplug%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '10000', '0', 'time', '7', 0, '2016-08-09 21:56:40', '2016-08-09 21:56:40'),
(152, 442, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%affinityitems%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:40', '2016-08-09 21:56:40'),
(153, 443, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE name LIKE \'AFFINITYITEMS_CONFIGURATION_OK\' AND value = \'1\'', '==', '1', '0', 'time', '1', 0, '2016-08-09 21:56:40', '2016-08-10 01:53:21'),
(154, 446, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%dpdpoland%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:40', '2016-08-09 21:56:40'),
(155, 447, 'configuration', 'DPDPOLAND_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:40', '2016-08-10 01:53:21'),
(156, 448, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like "%dpdpoland%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:40', '2016-08-09 21:56:40'),
(157, 449, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like "%dpdpoland%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '100', '0', 'time', '7', 0, '2016-08-09 21:56:40', '2016-08-09 21:56:40'),
(158, 450, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%envoimoinscher%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:40', '2016-08-09 21:56:40'),
(159, 451, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'ENVOIMOINSCHER_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'EMC_ENV \') AND ( value != \'TEST\'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:41', '2016-08-10 01:53:21'),
(160, 452, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like "%envoimoinscher%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:41', '2016-08-09 21:56:41'),
(161, 453, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like "%envoimoinscher%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '100', '0', 'time', '7', 0, '2016-08-09 21:56:41', '2016-08-09 21:56:41'),
(162, 454, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%klikandpay%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:41', '2016-08-09 21:56:41'),
(163, 455, 'configuration', 'KLIKANDPAY_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:41', '2016-08-10 01:53:21'),
(164, 456, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%klikandpay%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:42', '2016-08-09 21:56:42'),
(165, 457, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%klikandpay%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:42', '2016-08-09 21:56:42'),
(166, 458, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%clickline%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:42', '2016-08-09 21:56:42'),
(167, 459, 'configuration', 'CLICKLINE_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:42', '2016-08-10 01:53:21'),
(168, 460, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like "%clickline%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:42', '2016-08-09 21:56:42'),
(169, 461, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state LEFT JOIN PREFIX_carrier c ON c.id_carrier = o.id_carrier WHERE c.name like "%clickline%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '100', '0', 'time', '7', 0, '2016-08-09 21:56:42', '2016-08-09 21:56:42'),
(170, 462, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%cdiscount%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:43', '2016-08-09 21:56:43'),
(171, 463, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '100', 0, '2016-08-09 21:56:43', '2016-08-09 21:56:43'),
(172, 464, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%cdiscount%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:43', '2016-08-09 21:56:43'),
(173, 465, 'sql', 'SELECT SUM(o.total_paid) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%cdiscount%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 365 DAY)', '>=', '500', '0', 'time', '7', 0, '2016-08-09 21:56:43', '2016-08-09 21:56:43'),
(174, 467, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%erpillicopresta%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:44', '2016-08-09 21:56:44'),
(175, 468, 'configuration', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'ERPILLICOPRESTA_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'ERP_LICENCE_VALIDITY \') AND ( value == \'1\')) OR (( name LIKE \'ERP_MONTH_FREE_ACTIVE \') AND ( value == \'0\'))', '==', '3', '', 'time', '1', 0, '2016-08-09 21:56:44', '2016-08-10 01:53:21'),
(176, 469, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '100', 0, '2016-08-09 21:56:45', '2016-08-09 21:56:45'),
(177, 470, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '100', 0, '2016-08-09 21:56:45', '2016-08-09 21:56:45'),
(178, 471, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%netreviews%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:46', '2016-08-09 21:56:46'),
(179, 472, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'NETREVIEWS_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'AVISVERIFIES_URLCERTIFICAT \') AND ( value IS NOT LIKE \'%preprod%\'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:47', '2016-08-09 21:56:47'),
(180, 473, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '100', 0, '2016-08-09 21:56:47', '2016-08-09 21:56:47'),
(181, 474, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '100', 0, '2016-08-09 21:56:47', '2016-08-09 21:56:47'),
(182, 475, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%bluesnap%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:47', '2016-08-09 21:56:47'),
(183, 476, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'BLUESNAP_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'BLUESNAP_SANDBOX \') AND ( value NOT LIKE \'%sandbox%\'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:48', '2016-08-10 01:53:21'),
(184, 477, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%bluesnap%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:48', '2016-08-09 21:56:48'),
(185, 478, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%bluesnap%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:48', '2016-08-09 21:56:48'),
(186, 479, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%desjardins%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:48', '2016-08-09 21:56:48'),
(187, 480, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'DESJARDINS_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'DESJARDINS_MODE \') AND ( value NOT LIKE \'%test%\'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:49', '2016-08-10 01:53:21'),
(188, 481, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%desjardins%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:49', '2016-08-09 21:56:49'),
(189, 482, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%desjardins%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:49', '2016-08-09 21:56:49'),
(190, 483, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%firstdata%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:49', '2016-08-09 21:56:49'),
(191, 484, 'configuration', 'FIRSTDATA_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:49', '2016-08-10 01:53:21'),
(192, 485, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%firstdata%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:49', '2016-08-09 21:56:49'),
(193, 486, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%firstdata%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:50', '2016-08-09 21:56:50'),
(194, 487, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%giveit%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:50', '2016-08-09 21:56:50'),
(195, 488, 'sql', 'GIVEIT_CONFIGURATION_OK', '>=', '1', '0', 'time', '1', 0, '2016-08-09 21:56:50', '2016-08-09 21:56:50'),
(196, 489, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '365', 0, '2016-08-09 21:56:50', '2016-08-09 21:56:50'),
(197, 490, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '365', 0, '2016-08-09 21:56:50', '2016-08-09 21:56:50'),
(198, 491, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%ganalytics%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:50', '2016-08-09 21:56:50'),
(199, 492, 'configuration', 'GANALYTICS_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:50', '2016-08-10 01:53:21'),
(200, 493, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '1', 0, '2016-08-09 21:56:50', '2016-08-10 01:53:21'),
(201, 494, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '365', 0, '2016-08-09 21:56:51', '2016-08-09 21:56:51'),
(202, 496, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%pagseguro%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:51', '2016-08-09 21:56:51'),
(203, 497, 'configuration', 'PAGSEGURO_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:51', '2016-08-10 01:53:21'),
(204, 498, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%pagseguro%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:51', '2016-08-09 21:56:51'),
(205, 499, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%pagseguro%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:51', '2016-08-09 21:56:51'),
(206, 500, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%paypalmx%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:52', '2016-08-09 21:56:52'),
(207, 501, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'PAYPALMX_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'PAYPAL_MX_SANDBOX\') AND ( value = \'0\'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:52', '2016-08-10 01:53:21'),
(208, 502, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%paypalmx%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:52', '2016-08-09 21:56:52'),
(209, 503, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%paypalmx%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:52', '2016-08-09 21:56:52'),
(210, 505, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%paypalusa%"', '==', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:52', '2016-08-09 21:56:52'),
(211, 506, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'PAYPALUSA_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'PAYPAL_USA_SANDBOX\') AND ( value = \'0\'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:53', '2016-08-10 01:53:22'),
(212, 507, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%paypalusa%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:53', '2016-08-09 21:56:53'),
(213, 508, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%paypalmx%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:53', '2016-08-09 21:56:53'),
(214, 509, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%payulatam%"', '==', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:53', '2016-08-09 21:56:53');
INSERT INTO `ps_condition` (`id_condition`, `id_ps_condition`, `type`, `request`, `operator`, `value`, `result`, `calculation_type`, `calculation_detail`, `validated`, `date_add`, `date_upd`) VALUES
(215, 510, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'PAYULATAM_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'PAYU_LATAM_TEST\') AND ( value = \'1\'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:53', '2016-08-10 01:53:22'),
(216, 511, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%payulatam%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:53', '2016-08-09 21:56:53'),
(217, 512, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%payulatam%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:54', '2016-08-09 21:56:54'),
(218, 513, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%prestastats%"', '==', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:54', '2016-08-09 21:56:54'),
(219, 514, 'configuration', 'PRESTASTATS_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:54', '2016-08-10 01:53:22'),
(220, 515, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '365', 0, '2016-08-09 21:56:54', '2016-08-09 21:56:54'),
(221, 516, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '365', 0, '2016-08-09 21:56:54', '2016-08-09 21:56:54'),
(222, 517, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%riskified%"', '==', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:54', '2016-08-09 21:56:54'),
(223, 518, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'RISKIFIED_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'RISKIFIED_MODE\') AND ( value = \'1\'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:54', '2016-08-10 01:53:22'),
(224, 519, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%riskified%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:54', '2016-08-09 21:56:54'),
(225, 520, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%riskified%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:54', '2016-08-09 21:56:54'),
(226, 522, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'SIMPLIFY_CONFIGURATION_OK\') AND ( value = \'1\')) OR (( name LIKE \'SIMPLIFY_MODE\') AND ( value = \'1\'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:54', '2016-08-10 01:53:22'),
(227, 523, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%simplifycommerce%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:54', '2016-08-09 21:56:54'),
(228, 524, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%simplifycommerce%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:54', '2016-08-09 21:56:54'),
(229, 525, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%vtpayment%"', '==', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:54', '2016-08-09 21:56:54'),
(230, 526, 'configuration', 'VTPAYMENT_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:55', '2016-08-10 01:53:22'),
(231, 527, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%vtpayment%" AND os.logable = 1', '>=', '1', '0', 'time', '2', 0, '2016-08-09 21:56:55', '2016-08-09 21:56:55'),
(232, 528, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o LEFT JOIN PREFIX_order_state os ON os.id_order_state = o.current_state WHERE o.module like "%vtpayment%" AND os.logable = 1 AND o.date_add > DATE_SUB(NOW(), INTERVAL 90 DAY)', '>=', '30', '0', 'time', '7', 0, '2016-08-09 21:56:55', '2016-08-09 21:56:55'),
(233, 529, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%yotpo%"', '==', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:55', '2016-08-09 21:56:55'),
(234, 530, 'configuration', 'YOTPO_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:55', '2016-08-10 01:53:22'),
(235, 531, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '365', 0, '2016-08-09 21:56:55', '2016-08-09 21:56:55'),
(236, 532, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '365', 0, '2016-08-09 21:56:55', '2016-08-09 21:56:55'),
(237, 533, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%yotpo%"', '==', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:55', '2016-08-09 21:56:55'),
(238, 534, 'sql', 'SELECT COUNT(*) FROM PREFIX_configuration WHERE (( name LIKE \'YOUSTICERESOLUTIONSYSTEM_CONF_OK\') AND ( value = \'1\')) OR (( name LIKE \'YRS_SANDBOX\') AND ( value = \'0\'))', '==', '2', '0', 'time', '1', 0, '2016-08-09 21:56:55', '2016-08-10 01:53:22'),
(239, 535, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '365', 0, '2016-08-09 21:56:55', '2016-08-09 21:56:55'),
(240, 536, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '365', 0, '2016-08-09 21:56:55', '2016-08-09 21:56:55'),
(241, 537, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like "%loyaltylion%"', '>=', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2016-08-09 21:56:56', '2016-08-09 21:56:56'),
(242, 538, 'configuration', 'LOYALTYLION_CONFIGURATION_OK', '==', '1', '', 'time', '1', 0, '2016-08-09 21:56:56', '2016-08-10 01:53:22'),
(243, 539, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '365', 0, '2016-08-09 21:56:56', '2016-08-09 21:56:56'),
(244, 540, 'sql', 'SELECT 1', '!=', '1', '1', 'time', '365', 0, '2016-08-09 21:56:56', '2016-08-09 21:56:56');

-- --------------------------------------------------------

--
-- Structure de la table `ps_condition_advice`
--

CREATE TABLE `ps_condition_advice` (
  `id_condition` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL,
  `display` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_condition_advice`
--

INSERT INTO `ps_condition_advice` (`id_condition`, `id_advice`, `display`) VALUES
(1, 1, 1),
(1, 39, 1),
(1, 77, 1),
(1, 115, 1),
(1, 153, 1),
(1, 191, 1),
(2, 1, 0),
(2, 39, 0),
(2, 77, 0),
(2, 115, 0),
(2, 153, 0),
(2, 191, 0),
(3, 2, 1),
(3, 3, 1),
(3, 4, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 13, 1),
(3, 14, 1),
(3, 17, 1),
(3, 18, 1),
(3, 19, 1),
(3, 20, 1),
(3, 21, 1),
(3, 22, 1),
(3, 23, 1),
(3, 24, 1),
(3, 25, 1),
(3, 26, 1),
(3, 27, 1),
(3, 28, 1),
(3, 29, 1),
(3, 30, 1),
(3, 31, 1),
(3, 32, 1),
(3, 33, 1),
(3, 34, 1),
(3, 35, 1),
(3, 36, 1),
(3, 37, 1),
(3, 38, 1),
(3, 40, 1),
(3, 41, 1),
(3, 42, 1),
(3, 44, 1),
(3, 45, 1),
(3, 46, 1),
(3, 47, 1),
(3, 48, 1),
(3, 51, 1),
(3, 52, 1),
(3, 55, 1),
(3, 56, 1),
(3, 57, 1),
(3, 58, 1),
(3, 59, 1),
(3, 60, 1),
(3, 61, 1),
(3, 62, 1),
(3, 63, 1),
(3, 64, 1),
(3, 65, 1),
(3, 66, 1),
(3, 67, 1),
(3, 68, 1),
(3, 69, 1),
(3, 70, 1),
(3, 71, 1),
(3, 72, 1),
(3, 73, 1),
(3, 74, 1),
(3, 75, 1),
(3, 76, 1),
(3, 78, 1),
(3, 79, 1),
(3, 80, 1),
(3, 82, 1),
(3, 83, 1),
(3, 84, 1),
(3, 85, 1),
(3, 86, 1),
(3, 89, 1),
(3, 90, 1),
(3, 93, 1),
(3, 94, 1),
(3, 95, 1),
(3, 96, 1),
(3, 97, 1),
(3, 98, 1),
(3, 99, 1),
(3, 100, 1),
(3, 101, 1),
(3, 102, 1),
(3, 103, 1),
(3, 104, 1),
(3, 105, 1),
(3, 106, 1),
(3, 107, 1),
(3, 108, 1),
(3, 109, 1),
(3, 110, 1),
(3, 111, 1),
(3, 112, 1),
(3, 113, 1),
(3, 114, 1),
(3, 116, 1),
(3, 117, 1),
(3, 118, 1),
(3, 120, 1),
(3, 121, 1),
(3, 122, 1),
(3, 123, 1),
(3, 124, 1),
(3, 127, 1),
(3, 128, 1),
(3, 131, 1),
(3, 132, 1),
(3, 133, 1),
(3, 134, 1),
(3, 135, 1),
(3, 136, 1),
(3, 137, 1),
(3, 138, 1),
(3, 139, 1),
(3, 140, 1),
(3, 141, 1),
(3, 142, 1),
(3, 143, 1),
(3, 144, 1),
(3, 145, 1),
(3, 146, 1),
(3, 147, 1),
(3, 148, 1),
(3, 149, 1),
(3, 150, 1),
(3, 151, 1),
(3, 152, 1),
(3, 154, 1),
(3, 155, 1),
(3, 156, 1),
(3, 158, 1),
(3, 159, 1),
(3, 160, 1),
(3, 161, 1),
(3, 162, 1),
(3, 165, 1),
(3, 166, 1),
(3, 169, 1),
(3, 170, 1),
(3, 171, 1),
(3, 172, 1),
(3, 173, 1),
(3, 174, 1),
(3, 175, 1),
(3, 176, 1),
(3, 177, 1),
(3, 178, 1),
(3, 179, 1),
(3, 180, 1),
(3, 181, 1),
(3, 182, 1),
(3, 183, 1),
(3, 184, 1),
(3, 185, 1),
(3, 186, 1),
(3, 187, 1),
(3, 188, 1),
(3, 189, 1),
(3, 190, 1),
(3, 192, 1),
(3, 193, 1),
(3, 194, 1),
(3, 196, 1),
(3, 197, 1),
(3, 198, 1),
(3, 199, 1),
(3, 200, 1),
(3, 203, 1),
(3, 204, 1),
(3, 207, 1),
(3, 208, 1),
(3, 209, 1),
(3, 210, 1),
(3, 211, 1),
(3, 212, 1),
(3, 213, 1),
(3, 214, 1),
(3, 215, 1),
(3, 216, 1),
(3, 217, 1),
(3, 218, 1),
(3, 219, 1),
(3, 220, 1),
(3, 221, 1),
(3, 222, 1),
(3, 223, 1),
(3, 224, 1),
(3, 225, 1),
(3, 226, 1),
(3, 227, 1),
(3, 228, 1),
(4, 2, 0),
(4, 3, 0),
(4, 6, 0),
(4, 10, 0),
(4, 16, 0),
(4, 40, 0),
(4, 41, 0),
(4, 44, 0),
(4, 48, 0),
(4, 54, 0),
(4, 78, 0),
(4, 79, 0),
(4, 82, 0),
(4, 86, 0),
(4, 92, 0),
(4, 116, 0),
(4, 117, 0),
(4, 120, 0),
(4, 124, 0),
(4, 130, 0),
(4, 154, 0),
(4, 155, 0),
(4, 158, 0),
(4, 162, 0),
(4, 168, 0),
(4, 192, 0),
(4, 193, 0),
(4, 196, 0),
(4, 200, 0),
(4, 206, 0),
(5, 5, 1),
(5, 43, 1),
(5, 81, 1),
(5, 119, 1),
(5, 157, 1),
(5, 195, 1),
(6, 5, 1),
(6, 43, 1),
(6, 81, 1),
(6, 119, 1),
(6, 157, 1),
(6, 195, 1),
(7, 5, 0),
(7, 43, 0),
(7, 81, 0),
(7, 119, 0),
(7, 157, 0),
(7, 195, 0),
(8, 9, 0),
(8, 47, 0),
(8, 85, 0),
(8, 123, 0),
(8, 161, 0),
(8, 199, 0),
(9, 11, 1),
(9, 12, 1),
(9, 49, 1),
(9, 50, 1),
(9, 87, 1),
(9, 88, 1),
(9, 125, 1),
(9, 126, 1),
(9, 163, 1),
(9, 164, 1),
(9, 201, 1),
(9, 202, 1),
(10, 15, 1),
(10, 53, 1),
(10, 91, 1),
(10, 129, 1),
(10, 167, 1),
(10, 205, 1),
(11, 15, 0),
(11, 53, 0),
(11, 91, 0),
(11, 129, 0),
(11, 167, 0),
(11, 205, 0),
(12, 16, 1),
(12, 54, 1),
(12, 92, 1),
(12, 130, 1),
(12, 168, 1),
(12, 206, 1),
(13, 16, 1),
(13, 27, 0),
(13, 54, 1),
(13, 65, 0),
(13, 92, 1),
(13, 103, 0),
(13, 130, 1),
(13, 141, 0),
(13, 168, 1),
(13, 179, 0),
(13, 206, 1),
(13, 217, 0),
(14, 18, 0),
(14, 56, 0),
(14, 94, 0),
(14, 132, 0),
(14, 170, 0),
(14, 208, 0),
(15, 20, 0),
(15, 58, 0),
(15, 96, 0),
(15, 134, 0),
(15, 172, 0),
(15, 210, 0),
(16, 21, 1),
(16, 59, 1),
(16, 97, 1),
(16, 135, 1),
(16, 173, 1),
(16, 211, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_condition_badge`
--

CREATE TABLE `ps_condition_badge` (
  `id_condition` int(11) NOT NULL,
  `id_badge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_condition_badge`
--

INSERT INTO `ps_condition_badge` (`id_condition`, `id_badge`) VALUES
(3, 141),
(4, 162),
(7, 9),
(8, 105),
(9, 177),
(10, 137),
(11, 161),
(14, 15),
(17, 125),
(18, 126),
(19, 126),
(20, 126),
(21, 127),
(22, 128),
(23, 129),
(24, 130),
(25, 131),
(26, 132),
(27, 133),
(28, 134),
(29, 135),
(30, 136),
(31, 138),
(32, 139),
(33, 140),
(34, 142),
(35, 143),
(36, 144),
(37, 145),
(38, 146),
(39, 147),
(40, 148),
(41, 149),
(42, 150),
(43, 151),
(44, 152),
(45, 153),
(46, 154),
(47, 155),
(48, 156),
(49, 157),
(50, 158),
(51, 159),
(52, 160),
(53, 163),
(54, 164),
(55, 165),
(56, 166),
(57, 167),
(58, 168),
(59, 169),
(60, 170),
(61, 171),
(62, 172),
(63, 173),
(64, 174),
(65, 175),
(66, 176),
(67, 178),
(68, 179),
(69, 180),
(70, 181),
(71, 182),
(72, 183),
(73, 184),
(74, 185),
(75, 186),
(76, 187),
(77, 188),
(78, 189),
(79, 190),
(80, 191),
(81, 192),
(82, 193),
(83, 194),
(84, 195),
(85, 196),
(86, 197),
(87, 198),
(88, 199),
(89, 200),
(90, 201),
(91, 202),
(92, 203),
(93, 204),
(94, 205),
(95, 206),
(96, 207),
(97, 208),
(98, 209),
(99, 210),
(100, 211),
(101, 212),
(102, 213),
(103, 214),
(104, 215),
(105, 216),
(106, 217),
(107, 218),
(108, 219),
(109, 220),
(110, 221),
(111, 222),
(112, 223),
(113, 224),
(114, 225),
(115, 226),
(116, 227),
(117, 228),
(118, 229),
(119, 230),
(120, 231),
(121, 232),
(122, 233),
(123, 234),
(124, 1),
(125, 2),
(126, 3),
(127, 4),
(128, 5),
(129, 6),
(130, 7),
(131, 8),
(132, 10),
(133, 11),
(134, 12),
(135, 13),
(136, 14),
(137, 16),
(138, 17),
(139, 18),
(140, 19),
(141, 20),
(142, 21),
(143, 22),
(144, 23),
(145, 24),
(146, 25),
(147, 26),
(148, 27),
(149, 28),
(150, 29),
(151, 30),
(152, 31),
(153, 32),
(154, 33),
(155, 34),
(156, 35),
(157, 36),
(158, 37),
(159, 38),
(160, 39),
(161, 40),
(162, 41),
(163, 42),
(164, 43),
(165, 44),
(166, 45),
(167, 46),
(168, 47),
(169, 48),
(170, 49),
(171, 50),
(172, 51),
(173, 52),
(174, 53),
(175, 54),
(176, 55),
(177, 56),
(178, 57),
(179, 58),
(180, 59),
(181, 60),
(182, 61),
(183, 62),
(184, 63),
(185, 64),
(186, 65),
(187, 66),
(188, 67),
(189, 68),
(190, 69),
(191, 70),
(192, 71),
(193, 72),
(194, 73),
(195, 74),
(196, 75),
(197, 76),
(198, 77),
(199, 78),
(200, 79),
(201, 80),
(202, 81),
(203, 82),
(204, 83),
(205, 84),
(206, 85),
(207, 86),
(208, 87),
(209, 88),
(210, 89),
(211, 90),
(212, 91),
(213, 92),
(214, 93),
(215, 94),
(216, 95),
(217, 96),
(218, 97),
(219, 98),
(220, 99),
(221, 100),
(222, 101),
(223, 102),
(224, 103),
(225, 104),
(226, 106),
(227, 107),
(228, 108),
(229, 109),
(230, 110),
(231, 111),
(232, 112),
(233, 113),
(234, 114),
(235, 115),
(236, 116),
(237, 117),
(238, 118),
(239, 119),
(240, 120),
(241, 121),
(242, 122),
(243, 123),
(244, 124);

-- --------------------------------------------------------

--
-- Structure de la table `ps_configuration`
--

CREATE TABLE `ps_configuration` (
  `id_configuration` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED DEFAULT NULL,
  `id_shop` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(254) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_configuration`
--

INSERT INTO `ps_configuration` (`id_configuration`, `id_shop_group`, `id_shop`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1, NULL, NULL, 'PS_LANG_DEFAULT', '1', '2016-07-29 08:53:47', '2016-07-29 08:53:47'),
(2, NULL, NULL, 'PS_VERSION_DB', '1.6.1.6', '2016-07-29 08:53:47', '2016-07-29 08:53:47'),
(3, NULL, NULL, 'PS_INSTALL_VERSION', '1.6.1.6', '2016-07-29 08:53:47', '2016-07-29 08:53:47'),
(4, NULL, NULL, 'PS_CARRIER_DEFAULT', '5', '2016-07-29 08:54:11', '2016-07-29 09:22:41'),
(5, NULL, NULL, 'PS_GROUP_FEATURE_ACTIVE', '1', '2016-07-29 08:54:11', '2016-07-29 08:54:11'),
(6, NULL, NULL, 'PS_SEARCH_INDEXATION', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, NULL, NULL, 'PS_ONE_PHONE_AT_LEAST', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, NULL, NULL, 'PS_CURRENCY_DEFAULT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, NULL, NULL, 'PS_COUNTRY_DEFAULT', '21', '0000-00-00 00:00:00', '2016-07-29 09:22:54'),
(10, NULL, NULL, 'PS_REWRITING_SETTINGS', '1', '0000-00-00 00:00:00', '2016-07-29 08:54:38'),
(11, NULL, NULL, 'PS_ORDER_OUT_OF_STOCK', '1', '0000-00-00 00:00:00', '2016-08-04 01:41:44'),
(12, NULL, NULL, 'PS_LAST_QTIES', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, NULL, NULL, 'PS_CART_REDIRECT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, NULL, NULL, 'PS_CONDITIONS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, NULL, NULL, 'PS_RECYCLABLE_PACK', '1', '0000-00-00 00:00:00', '2016-07-29 09:22:55'),
(16, NULL, NULL, 'PS_GIFT_WRAPPING', '1', '0000-00-00 00:00:00', '2016-07-29 09:22:55'),
(17, NULL, NULL, 'PS_GIFT_WRAPPING_PRICE', '2', '0000-00-00 00:00:00', '2016-07-29 09:22:55'),
(18, NULL, NULL, 'PS_STOCK_MANAGEMENT', '0', '0000-00-00 00:00:00', '2016-08-04 01:41:44'),
(19, NULL, NULL, 'PS_NAVIGATION_PIPE', '>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, NULL, NULL, 'PS_PRODUCTS_PER_PAGE', '6', '0000-00-00 00:00:00', '2016-07-29 09:06:23'),
(21, NULL, NULL, 'PS_PURCHASE_MINIMUM', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:53'),
(22, NULL, NULL, 'PS_PRODUCTS_ORDER_WAY', '0', '0000-00-00 00:00:00', '2016-08-04 01:41:44'),
(23, NULL, NULL, 'PS_PRODUCTS_ORDER_BY', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, NULL, NULL, 'PS_DISPLAY_QTIES', '0', '0000-00-00 00:00:00', '2016-08-04 01:41:44'),
(25, NULL, NULL, 'PS_SHIPPING_HANDLING', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, NULL, NULL, 'PS_SHIPPING_FREE_PRICE', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:54'),
(27, NULL, NULL, 'PS_SHIPPING_FREE_WEIGHT', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:54'),
(28, NULL, NULL, 'PS_SHIPPING_METHOD', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, NULL, NULL, 'PS_TAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, NULL, NULL, 'PS_SHOP_ENABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, NULL, NULL, 'PS_NB_DAYS_NEW_PRODUCT', '1000', '0000-00-00 00:00:00', '2016-08-03 23:16:54'),
(32, NULL, NULL, 'PS_SSL_ENABLED', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:54'),
(33, NULL, NULL, 'PS_WEIGHT_UNIT', 'lb', '0000-00-00 00:00:00', '2016-07-29 09:22:58'),
(34, NULL, NULL, 'PS_BLOCK_CART_AJAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, NULL, NULL, 'PS_ORDER_RETURN', '1', '0000-00-00 00:00:00', '2016-07-29 09:22:58'),
(36, NULL, NULL, 'PS_ORDER_RETURN_NB_DAYS', '1000', '0000-00-00 00:00:00', '2016-07-29 09:22:58'),
(37, NULL, NULL, 'PS_MAIL_TYPE', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, NULL, NULL, 'PS_PRODUCT_PICTURE_MAX_SIZE', '8388608', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, NULL, NULL, 'PS_PRODUCT_PICTURE_WIDTH', '64', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, NULL, NULL, 'PS_PRODUCT_PICTURE_HEIGHT', '64', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, NULL, NULL, 'PS_INVOICE_PREFIX', '#IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, NULL, NULL, 'PS_INVCE_INVOICE_ADDR_RULES', '{"avoid":["vat_number","phone","phone_mobile"]}', '0000-00-00 00:00:00', '2016-07-29 09:22:59'),
(43, NULL, NULL, 'PS_INVCE_DELIVERY_ADDR_RULES', '{"avoid":["vat_number","phone","phone_mobile"]}', '0000-00-00 00:00:00', '2016-07-29 09:22:59'),
(44, NULL, NULL, 'PS_DELIVERY_PREFIX', '#DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, NULL, NULL, 'PS_DELIVERY_NUMBER', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:55'),
(46, NULL, NULL, 'PS_RETURN_PREFIX', '#RE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, NULL, NULL, 'PS_INVOICE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, NULL, NULL, 'PS_PASSWD_TIME_BACK', '360', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, NULL, NULL, 'PS_PASSWD_TIME_FRONT', '360', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, NULL, NULL, 'PS_DISP_UNAVAILABLE_ATTR', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, NULL, NULL, 'PS_SEARCH_MINWORDLEN', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, NULL, NULL, 'PS_SEARCH_BLACKLIST', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, NULL, NULL, 'PS_SEARCH_WEIGHT_PNAME', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, NULL, NULL, 'PS_SEARCH_WEIGHT_REF', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, NULL, NULL, 'PS_SEARCH_WEIGHT_SHORTDESC', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, NULL, NULL, 'PS_SEARCH_WEIGHT_DESC', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, NULL, NULL, 'PS_SEARCH_WEIGHT_CNAME', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, NULL, NULL, 'PS_SEARCH_WEIGHT_MNAME', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, NULL, NULL, 'PS_SEARCH_WEIGHT_TAG', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, NULL, NULL, 'PS_SEARCH_WEIGHT_ATTRIBUTE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, NULL, NULL, 'PS_SEARCH_WEIGHT_FEATURE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, NULL, NULL, 'PS_SEARCH_AJAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, NULL, NULL, 'PS_TIMEZONE', 'US/Eastern', '0000-00-00 00:00:00', '2016-07-29 09:23:00'),
(64, NULL, NULL, 'PS_THEME_V11', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, NULL, NULL, 'PRESTASTORE_LIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, NULL, NULL, 'PS_TIN_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, NULL, NULL, 'PS_SHOW_ALL_MODULES', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, NULL, NULL, 'PS_BACKUP_ALL', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, NULL, NULL, 'PS_1_3_UPDATE_DATE', '2011-12-27 10:20:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, NULL, NULL, 'PS_PRICE_ROUND_MODE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, NULL, NULL, 'PS_1_3_2_UPDATE_DATE', '2011-12-27 10:20:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, NULL, NULL, 'PS_CONDITIONS_CMS_ID', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, NULL, NULL, 'TRACKING_DIRECT_TRAFFIC', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:55'),
(74, NULL, NULL, 'PS_META_KEYWORDS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, NULL, NULL, 'PS_DISPLAY_JQZOOM', '1', '0000-00-00 00:00:00', '2016-07-29 09:23:00'),
(76, NULL, NULL, 'PS_VOLUME_UNIT', 'gal', '0000-00-00 00:00:00', '2016-07-29 09:23:00'),
(77, NULL, NULL, 'PS_CIPHER_ALGORITHM', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:56'),
(78, NULL, NULL, 'PS_ATTRIBUTE_CATEGORY_DISPLAY', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, NULL, NULL, 'PS_CUSTOMER_SERVICE_FILE_UPLOAD', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, NULL, NULL, 'PS_CUSTOMER_SERVICE_SIGNATURE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, NULL, NULL, 'PS_BLOCK_BESTSELLERS_DISPLAY', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:56'),
(82, NULL, NULL, 'PS_BLOCK_NEWPRODUCTS_DISPLAY', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:56'),
(83, NULL, NULL, 'PS_BLOCK_SPECIALS_DISPLAY', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:56'),
(84, NULL, NULL, 'PS_STOCK_MVT_REASON_DEFAULT', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, NULL, NULL, 'PS_COMPARATOR_MAX_ITEM', '2', '0000-00-00 00:00:00', '2016-07-29 09:23:01'),
(86, NULL, NULL, 'PS_ORDER_PROCESS_TYPE', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:56'),
(87, NULL, NULL, 'PS_SPECIFIC_PRICE_PRIORITIES', 'id_shop;id_currency;id_country;id_group', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, NULL, NULL, 'PS_TAX_DISPLAY', '1', '0000-00-00 00:00:00', '2016-07-29 09:23:01'),
(89, NULL, NULL, 'PS_SMARTY_FORCE_COMPILE', '1', '0000-00-00 00:00:00', '2016-08-08 01:58:48'),
(90, NULL, NULL, 'PS_DISTANCE_UNIT', 'mi', '0000-00-00 00:00:00', '2016-07-29 09:23:01'),
(91, NULL, NULL, 'PS_STORES_DISPLAY_CMS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, NULL, NULL, 'PS_STORES_DISPLAY_FOOTER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, NULL, NULL, 'PS_STORES_SIMPLIFIED', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:57'),
(94, NULL, NULL, 'SHOP_LOGO_WIDTH', '198', '0000-00-00 00:00:00', '2016-08-04 01:47:36'),
(95, NULL, NULL, 'SHOP_LOGO_HEIGHT', '88', '0000-00-00 00:00:00', '2016-08-04 01:47:36'),
(96, NULL, NULL, 'EDITORIAL_IMAGE_WIDTH', '530', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, NULL, NULL, 'EDITORIAL_IMAGE_HEIGHT', '228', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, NULL, NULL, 'PS_STATSDATA_CUSTOMER_PAGESVIEWS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, NULL, NULL, 'PS_STATSDATA_PAGESVIEWS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, NULL, NULL, 'PS_STATSDATA_PLUGINS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, NULL, NULL, 'PS_GEOLOCATION_ENABLED', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, NULL, NULL, 'PS_ALLOWED_COUNTRIES', 'AF;ZA;AX;AL;DZ;DE;AD;AO;AI;AQ;AG;AN;SA;AR;AM;AW;AU;AT;AZ;BS;BH;BD;BB;BY;BE;BZ;BJ;BM;BT;BO;BA;BW;BV;BR;BN;BG;BF;MM;BI;KY;KH;CM;CA;CV;CF;CL;CN;CX;CY;CC;CO;KM;CG;CD;CK;KR;KP;CR;CI;HR;CU;DK;DJ;DM;EG;IE;SV;AE;EC;ER;ES;EE;ET;FK;FO;FJ;FI;FR;GA;GM;GE;GS;GH;GI;GR;GD;GL;GP;GU;GT;GG;GN;GQ;GW;GY;GF;HT;HM;HN;HK;HU;IM;MU;VG;VI;IN;ID;IR;IQ;IS;IL;IT;JM;JP;JE;JO;KZ;KE;KG;KI;KW;LA;LS;LV;LB;LR;LY;LI;LT;LU;MO;MK;MG;MY;MW;MV;ML;MT;MP;MA;MH;MQ;MR;YT;MX;FM;MD;MC;MN;ME;MS;MZ;NA;NR;NP;NI;NE;NG;NU;NF;NO;NC;NZ;IO;OM;UG;UZ;PK;PW;PS;PA;PG;PY;NL;PE;PH;PN;PL;PF;PR;PT;QA;DO;CZ;RE;RO;GB;RU;RW;EH;BL;KN;SM;MF;PM;VA;VC;LC;SB;WS;AS;ST;SN;RS;SC;SL;SG;SK;SI;SO;SD;LK;SE;CH;SR;SJ;SZ;SY;TJ;TW;TZ;TD;TF;TH;TL;TG;TK;TO;TT;TN;TM;TC;TR;TV;UA;UY;US;VU;VE;VN;WF;YE;ZM;ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, NULL, NULL, 'PS_GEOLOCATION_BEHAVIOR', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, NULL, NULL, 'PS_LOCALE_LANGUAGE', 'en', '0000-00-00 00:00:00', '2016-07-29 08:54:38'),
(105, NULL, NULL, 'PS_LOCALE_COUNTRY', 'us', '0000-00-00 00:00:00', '2016-07-29 09:23:02'),
(106, NULL, NULL, 'PS_ATTACHMENT_MAXIMUM_SIZE', '64', '0000-00-00 00:00:00', '2016-07-29 09:23:02'),
(107, NULL, NULL, 'PS_SMARTY_CACHE', '0', '0000-00-00 00:00:00', '2016-08-05 03:04:20'),
(108, NULL, NULL, 'PS_DIMENSION_UNIT', 'in', '0000-00-00 00:00:00', '2016-07-29 09:23:02'),
(109, NULL, NULL, 'PS_GUEST_CHECKOUT_ENABLED', '1', '0000-00-00 00:00:00', '2016-07-29 09:23:03'),
(110, NULL, NULL, 'PS_DISPLAY_SUPPLIERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, NULL, NULL, 'PS_DISPLAY_BEST_SELLERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, NULL, NULL, 'PS_CATALOG_MODE', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:58'),
(113, NULL, NULL, 'PS_GEOLOCATION_WHITELIST', '127;209.185.108;209.185.253;209.85.238;209.85.238.11;209.85.238.4;216.239.33.96;216.239.33.97;216.239.33.98;216.239.33.99;216.239.37.98;216.239.37.99;216.239.39.98;216.239.39.99;216.239.41.96;216.239.41.97;216.239.41.98;216.239.41.99;216.239.45.4;216.239.46;216.239.51.96;216.239.51.97;216.239.51.98;216.239.51.99;216.239.53.98;216.239.53.99;216.239.57.96;91.240.109;216.239.57.97;216.239.57.98;216.239.57.99;216.239.59.98;216.239.59.99;216.33.229.163;64.233.173.193;64.233.173.194;64.233.173.195;64.233.173.196;64.233.173.197;64.233.173.198;64.233.173.199;64.233.173.200;64.233.173.201;64.233.173.202;64.233.173.203;64.233.173.204;64.233.173.205;64.233.173.206;64.233.173.207;64.233.173.208;64.233.173.209;64.233.173.210;64.233.173.211;64.233.173.212;64.233.173.213;64.233.173.214;64.233.173.215;64.233.173.216;64.233.173.217;64.233.173.218;64.233.173.219;64.233.173.220;64.233.173.221;64.233.173.222;64.233.173.223;64.233.173.224;64.233.173.225;64.233.173.226;64.233.173.227;64.233.173.228;64.233.173.229;64.233.173.230;64.233.173.231;64.233.173.232;64.233.173.233;64.233.173.234;64.233.173.235;64.233.173.236;64.233.173.237;64.233.173.238;64.233.173.239;64.233.173.240;64.233.173.241;64.233.173.242;64.233.173.243;64.233.173.244;64.233.173.245;64.233.173.246;64.233.173.247;64.233.173.248;64.233.173.249;64.233.173.250;64.233.173.251;64.233.173.252;64.233.173.253;64.233.173.254;64.233.173.255;64.68.80;64.68.81;64.68.82;64.68.83;64.68.84;64.68.85;64.68.86;64.68.87;64.68.88;64.68.89;64.68.90.1;64.68.90.10;64.68.90.11;64.68.90.12;64.68.90.129;64.68.90.13;64.68.90.130;64.68.90.131;64.68.90.132;64.68.90.133;64.68.90.134;64.68.90.135;64.68.90.136;64.68.90.137;64.68.90.138;64.68.90.139;64.68.90.14;64.68.90.140;64.68.90.141;64.68.90.142;64.68.90.143;64.68.90.144;64.68.90.145;64.68.90.146;64.68.90.147;64.68.90.148;64.68.90.149;64.68.90.15;64.68.90.150;64.68.90.151;64.68.90.152;64.68.90.153;64.68.90.154;64.68.90.155;64.68.90.156;64.68.90.157;64.68.90.158;64.68.90.159;64.68.90.16;64.68.90.160;64.68.90.161;64.68.90.162;64.68.90.163;64.68.90.164;64.68.90.165;64.68.90.166;64.68.90.167;64.68.90.168;64.68.90.169;64.68.90.17;64.68.90.170;64.68.90.171;64.68.90.172;64.68.90.173;64.68.90.174;64.68.90.175;64.68.90.176;64.68.90.177;64.68.90.178;64.68.90.179;64.68.90.18;64.68.90.180;64.68.90.181;64.68.90.182;64.68.90.183;64.68.90.184;64.68.90.185;64.68.90.186;64.68.90.187;64.68.90.188;64.68.90.189;64.68.90.19;64.68.90.190;64.68.90.191;64.68.90.192;64.68.90.193;64.68.90.194;64.68.90.195;64.68.90.196;64.68.90.197;64.68.90.198;64.68.90.199;64.68.90.2;64.68.90.20;64.68.90.200;64.68.90.201;64.68.90.202;64.68.90.203;64.68.90.204;64.68.90.205;64.68.90.206;64.68.90.207;64.68.90.208;64.68.90.21;64.68.90.22;64.68.90.23;64.68.90.24;64.68.90.25;64.68.90.26;64.68.90.27;64.68.90.28;64.68.90.29;64.68.90.3;64.68.90.30;64.68.90.31;64.68.90.32;64.68.90.33;64.68.90.34;64.68.90.35;64.68.90.36;64.68.90.37;64.68.90.38;64.68.90.39;64.68.90.4;64.68.90.40;64.68.90.41;64.68.90.42;64.68.90.43;64.68.90.44;64.68.90.45;64.68.90.46;64.68.90.47;64.68.90.48;64.68.90.49;64.68.90.5;64.68.90.50;64.68.90.51;64.68.90.52;64.68.90.53;64.68.90.54;64.68.90.55;64.68.90.56;64.68.90.57;64.68.90.58;64.68.90.59;64.68.90.6;64.68.90.60;64.68.90.61;64.68.90.62;64.68.90.63;64.68.90.64;64.68.90.65;64.68.90.66;64.68.90.67;64.68.90.68;64.68.90.69;64.68.90.7;64.68.90.70;64.68.90.71;64.68.90.72;64.68.90.73;64.68.90.74;64.68.90.75;64.68.90.76;64.68.90.77;64.68.90.78;64.68.90.79;64.68.90.8;64.68.90.80;64.68.90.9;64.68.91;64.68.92;66.249.64;66.249.65;66.249.66;66.249.67;66.249.68;66.249.69;66.249.70;66.249.71;66.249.72;66.249.73;66.249.78;66.249.79;72.14.199;8.6.48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, NULL, NULL, 'PS_LOGS_BY_EMAIL', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, NULL, NULL, 'PS_COOKIE_CHECKIP', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, NULL, NULL, 'PS_STORES_CENTER_LAT', '25.948969', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, NULL, NULL, 'PS_STORES_CENTER_LONG', '-80.226439', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, NULL, NULL, 'PS_USE_ECOTAX', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:58'),
(119, NULL, NULL, 'PS_CANONICAL_REDIRECT', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:59'),
(120, NULL, NULL, 'PS_IMG_UPDATE_TIME', '1470635761', '0000-00-00 00:00:00', '2016-08-08 01:56:01'),
(121, NULL, NULL, 'PS_BACKUP_DROP_TABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, NULL, NULL, 'PS_OS_CHEQUE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, NULL, NULL, 'PS_OS_PAYMENT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, NULL, NULL, 'PS_OS_PREPARATION', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, NULL, NULL, 'PS_OS_SHIPPING', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, NULL, NULL, 'PS_OS_DELIVERED', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, NULL, NULL, 'PS_OS_CANCELED', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, NULL, NULL, 'PS_OS_REFUND', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, NULL, NULL, 'PS_OS_ERROR', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, NULL, NULL, 'PS_OS_OUTOFSTOCK', '9', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, NULL, NULL, 'PS_OS_BANKWIRE', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, NULL, NULL, 'PS_OS_PAYPAL', '11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, NULL, NULL, 'PS_OS_WS_PAYMENT', '12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, NULL, NULL, 'PS_OS_OUTOFSTOCK_PAID', '9', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, NULL, NULL, 'PS_OS_OUTOFSTOCK_UNPAID', '13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, NULL, NULL, 'PS_OS_COD_VALIDATION', '15', '0000-00-00 00:00:00', '2016-07-29 09:23:04'),
(137, NULL, NULL, 'PS_LEGACY_IMAGES', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:59'),
(138, NULL, NULL, 'PS_IMAGE_QUALITY', 'png', '0000-00-00 00:00:00', '2016-07-29 09:23:04'),
(139, NULL, NULL, 'PS_PNG_QUALITY', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, NULL, NULL, 'PS_JPEG_QUALITY', '90', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, NULL, NULL, 'PS_COOKIE_LIFETIME_FO', '480', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, NULL, NULL, 'PS_COOKIE_LIFETIME_BO', '480', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, NULL, NULL, 'PS_RESTRICT_DELIVERED_COUNTRIES', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, NULL, NULL, 'PS_SHOW_NEW_ORDERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, NULL, NULL, 'PS_SHOW_NEW_CUSTOMERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, NULL, NULL, 'PS_SHOW_NEW_MESSAGES', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, NULL, NULL, 'PS_FEATURE_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, NULL, NULL, 'PS_COMBINATION_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, NULL, NULL, 'PS_SPECIFIC_PRICE_FEATURE_ACTIVE', NULL, '0000-00-00 00:00:00', '2016-08-03 23:45:49'),
(150, NULL, NULL, 'PS_SCENE_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, NULL, NULL, 'PS_VIRTUAL_PROD_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, NULL, NULL, 'PS_CUSTOMIZATION_FEATURE_ACTIVE', NULL, '0000-00-00 00:00:00', '2016-08-05 05:59:05'),
(153, NULL, NULL, 'PS_CART_RULE_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, NULL, NULL, 'PS_PACK_FEATURE_ACTIVE', NULL, '0000-00-00 00:00:00', '2016-08-10 05:03:55'),
(155, NULL, NULL, 'PS_ALIAS_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, NULL, NULL, 'PS_TAX_ADDRESS_TYPE', 'id_address_delivery', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, NULL, NULL, 'PS_SHOP_DEFAULT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, NULL, NULL, 'PS_CARRIER_DEFAULT_SORT', NULL, '0000-00-00 00:00:00', '2016-08-03 23:16:59'),
(159, NULL, NULL, 'PS_STOCK_MVT_INC_REASON_DEFAULT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, NULL, NULL, 'PS_STOCK_MVT_DEC_REASON_DEFAULT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, NULL, NULL, 'PS_ADVANCED_STOCK_MANAGEMENT', '0', '0000-00-00 00:00:00', '2016-08-04 01:41:44'),
(162, NULL, NULL, 'PS_ADMINREFRESH_NOTIFICATION', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, NULL, NULL, 'PS_STOCK_MVT_TRANSFER_TO', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, NULL, NULL, 'PS_STOCK_MVT_TRANSFER_FROM', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, NULL, NULL, 'PS_CARRIER_DEFAULT_ORDER', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, NULL, NULL, 'PS_STOCK_MVT_SUPPLY_ORDER', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, NULL, NULL, 'PS_STOCK_CUSTOMER_ORDER_REASON', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, NULL, NULL, 'PS_UNIDENTIFIED_GROUP', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, NULL, NULL, 'PS_GUEST_GROUP', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, NULL, NULL, 'PS_CUSTOMER_GROUP', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, NULL, NULL, 'PS_SMARTY_CONSOLE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, NULL, NULL, 'PS_INVOICE_MODEL', 'invoice', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, NULL, NULL, 'PS_LIMIT_UPLOAD_IMAGE_VALUE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, NULL, NULL, 'PS_LIMIT_UPLOAD_FILE_VALUE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, NULL, NULL, 'MB_PAY_TO_EMAIL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, NULL, NULL, 'MB_SECRET_WORD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, NULL, NULL, 'MB_HIDE_LOGIN', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, NULL, NULL, 'MB_ID_LOGO', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, NULL, NULL, 'MB_ID_LOGO_WALLET', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, NULL, NULL, 'MB_PARAMETERS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, NULL, NULL, 'MB_PARAMETERS_2', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, NULL, NULL, 'MB_DISPLAY_MODE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, NULL, NULL, 'MB_CANCEL_URL', 'http://www.yoursite.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, NULL, NULL, 'MB_LOCAL_METHODS', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, NULL, NULL, 'MB_INTER_METHODS', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, NULL, NULL, 'BANK_WIRE_CURRENCIES', '2,1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, NULL, NULL, 'CHEQUE_CURRENCIES', '2,1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, NULL, NULL, 'PRODUCTS_VIEWED_NBR', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, NULL, NULL, 'BLOCK_CATEG_DHTML', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, NULL, NULL, 'BLOCK_CATEG_MAX_DEPTH', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, NULL, NULL, 'MANUFACTURER_DISPLAY_FORM', '1', '0000-00-00 00:00:00', '2016-07-29 08:57:27'),
(192, NULL, NULL, 'MANUFACTURER_DISPLAY_TEXT', '1', '0000-00-00 00:00:00', '2016-07-29 08:57:26'),
(193, NULL, NULL, 'MANUFACTURER_DISPLAY_TEXT_NB', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, NULL, NULL, 'NEW_PRODUCTS_NBR', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, NULL, NULL, 'PS_TOKEN_ENABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, NULL, NULL, 'PS_STATS_RENDER', 'graphnvd3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, NULL, NULL, 'PS_STATS_OLD_CONNECT_AUTO_CLEAN', 'never', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, NULL, NULL, 'PS_STATS_GRID_RENDER', 'gridhtml', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, NULL, NULL, 'BLOCKTAGS_NBR', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, NULL, NULL, 'CHECKUP_DESCRIPTIONS_LT', '100', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, NULL, NULL, 'CHECKUP_DESCRIPTIONS_GT', '400', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, NULL, NULL, 'CHECKUP_IMAGES_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, NULL, NULL, 'CHECKUP_IMAGES_GT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, NULL, NULL, 'CHECKUP_SALES_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, NULL, NULL, 'CHECKUP_SALES_GT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, NULL, NULL, 'CHECKUP_STOCK_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, NULL, NULL, 'CHECKUP_STOCK_GT', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, NULL, NULL, 'FOOTER_CMS', '0_4|0_6', '0000-00-00 00:00:00', '2016-07-29 09:23:06'),
(209, NULL, NULL, 'FOOTER_BLOCK_ACTIVATION', '1', '0000-00-00 00:00:00', '2016-07-29 09:23:06'),
(210, NULL, NULL, 'FOOTER_POWEREDBY', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, NULL, NULL, 'BLOCKADVERT_LINK', 'http://www.prestashop.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, NULL, NULL, 'BLOCKSTORE_IMG', 'store.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, NULL, NULL, 'BLOCKADVERT_IMG_EXT', 'jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, NULL, NULL, 'MOD_BLOCKTOPMENU_ITEMS', 'CAT45,CAT46,LNK1', '0000-00-00 00:00:00', '2016-08-04 23:25:01'),
(215, NULL, NULL, 'MOD_BLOCKTOPMENU_SEARCH', NULL, '0000-00-00 00:00:00', '2016-08-04 23:25:01'),
(216, NULL, NULL, 'BLOCKSOCIAL_FACEBOOK', 'http://www.facebook.com/prestashop', '0000-00-00 00:00:00', '2016-07-29 08:56:49'),
(217, NULL, NULL, 'BLOCKSOCIAL_TWITTER', 'http://www.twitter.com/prestashop', '0000-00-00 00:00:00', '2016-07-29 08:56:49'),
(218, NULL, NULL, 'BLOCKSOCIAL_RSS', NULL, '0000-00-00 00:00:00', '2016-08-03 23:17:01'),
(219, NULL, NULL, 'BLOCKCONTACTINFOS_COMPANY', 'My Company', '0000-00-00 00:00:00', '2016-07-29 08:57:25'),
(220, NULL, NULL, 'BLOCKCONTACTINFOS_ADDRESS', '42 avenue des Champs Elysées\n75000 Paris\nFrance', '0000-00-00 00:00:00', '2016-07-29 09:23:07'),
(221, NULL, NULL, 'BLOCKCONTACTINFOS_PHONE', '0123-456-789', '0000-00-00 00:00:00', '2016-07-29 08:57:25'),
(222, NULL, NULL, 'BLOCKCONTACTINFOS_EMAIL', 'sales@yourcompany.com', '0000-00-00 00:00:00', '2016-07-29 08:57:25'),
(223, NULL, NULL, 'BLOCKCONTACT_TELNUMBER', '0123-456-789', '0000-00-00 00:00:00', '2016-07-29 08:57:25'),
(224, NULL, NULL, 'BLOCKCONTACT_EMAIL', 'sales@yourcompany.com', '0000-00-00 00:00:00', '2016-07-29 08:57:25'),
(225, NULL, NULL, 'SUPPLIER_DISPLAY_TEXT', '1', '0000-00-00 00:00:00', '2016-07-29 08:57:35'),
(226, NULL, NULL, 'SUPPLIER_DISPLAY_TEXT_NB', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, NULL, NULL, 'SUPPLIER_DISPLAY_FORM', '1', '0000-00-00 00:00:00', '2016-07-29 08:57:35'),
(228, NULL, NULL, 'BLOCK_CATEG_NBR_COLUMN_FOOTER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, NULL, NULL, 'UPGRADER_BACKUPDB_FILENAME', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, NULL, NULL, 'UPGRADER_BACKUPFILES_FILENAME', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, NULL, NULL, 'BLOCKREINSURANCE_NBBLOCKS', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, NULL, NULL, 'HOMESLIDER_WIDTH', '1170', '0000-00-00 00:00:00', '2016-07-29 09:23:08'),
(233, NULL, NULL, 'HOMESLIDER_SPEED', '500', '0000-00-00 00:00:00', '2016-07-29 08:57:55'),
(234, NULL, NULL, 'HOMESLIDER_PAUSE', '2500', '0000-00-00 00:00:00', '2016-08-04 02:09:12'),
(235, NULL, NULL, 'HOMESLIDER_LOOP', '1', '0000-00-00 00:00:00', '2016-08-04 02:07:24'),
(236, NULL, NULL, 'PS_BASE_DISTANCE_UNIT', 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, NULL, NULL, 'PS_SHOP_DOMAIN', 'localhost', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, NULL, NULL, 'PS_SHOP_DOMAIN_SSL', 'localhost', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, NULL, NULL, 'PS_SHOP_NAME', 'Custom keychain shop', '0000-00-00 00:00:00', '2016-08-04 23:16:52'),
(240, NULL, NULL, 'PS_SHOP_EMAIL', 'admin@admin.com', '0000-00-00 00:00:00', '2016-07-29 09:23:08'),
(241, NULL, NULL, 'PS_MAIL_METHOD', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, NULL, NULL, 'PS_SHOP_ACTIVITY', '10', '0000-00-00 00:00:00', '2016-07-29 08:54:38'),
(243, NULL, NULL, 'PS_LOGO', 'custom-keychain-shop-logo-1470289655.jpg', '0000-00-00 00:00:00', '2016-08-04 01:47:35'),
(244, NULL, NULL, 'PS_FAVICON', 'favicon.ico', '0000-00-00 00:00:00', '2016-08-04 01:47:36'),
(245, NULL, NULL, 'PS_STORES_ICON', 'logo_stores.gif', '0000-00-00 00:00:00', '2016-07-29 09:23:08'),
(246, NULL, NULL, 'PS_ROOT_CATEGORY', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, NULL, NULL, 'PS_HOME_CATEGORY', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, NULL, NULL, 'PS_CONFIGURATION_AGREMENT', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, NULL, NULL, 'PS_MAIL_SERVER', 'smtp.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, NULL, NULL, 'PS_MAIL_USER', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, NULL, NULL, 'PS_MAIL_PASSWD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, NULL, NULL, 'PS_MAIL_SMTP_ENCRYPTION', 'off', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, NULL, NULL, 'PS_MAIL_SMTP_PORT', '25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, NULL, NULL, 'PS_MAIL_COLOR', '#db3484', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, NULL, NULL, 'NW_SALT', 'jRWHGeNkmqYow8DN', '0000-00-00 00:00:00', '2016-07-29 08:57:31'),
(256, NULL, NULL, 'PS_PAYMENT_LOGO_CMS_ID', NULL, '0000-00-00 00:00:00', '2016-08-03 23:17:03'),
(257, NULL, NULL, 'HOME_FEATURED_NBR', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, NULL, NULL, 'SEK_MIN_OCCURENCES', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, NULL, NULL, 'SEK_FILTER_KW', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, NULL, NULL, 'PS_ALLOW_MOBILE_DEVICE', '0', '0000-00-00 00:00:00', '2016-08-04 01:47:36'),
(261, NULL, NULL, 'PS_CUSTOMER_CREATION_EMAIL', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, NULL, NULL, 'PS_SMARTY_CONSOLE_KEY', 'SMARTY_DEBUG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, NULL, NULL, 'PS_DASHBOARD_USE_PUSH', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, NULL, NULL, 'PS_ATTRIBUTE_ANCHOR_SEPARATOR', '-', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, NULL, NULL, 'CONF_AVERAGE_PRODUCT_MARGIN', '40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, NULL, NULL, 'PS_DASHBOARD_SIMULATION', '0', '0000-00-00 00:00:00', '2016-08-01 23:13:42'),
(267, NULL, NULL, 'PS_QUICK_VIEW', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, NULL, NULL, 'PS_USE_HTMLPURIFIER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, NULL, NULL, 'PS_SMARTY_CACHING_TYPE', 'filesystem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, NULL, NULL, 'PS_SMARTY_CLEAR_CACHE', 'everytime', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, NULL, NULL, 'PS_DETECT_LANG', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, NULL, NULL, 'PS_DETECT_COUNTRY', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, NULL, NULL, 'PS_ROUND_TYPE', '3', '0000-00-00 00:00:00', '2016-07-29 09:23:09'),
(274, NULL, NULL, 'PS_PRICE_DISPLAY_PRECISION', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, NULL, NULL, 'PS_LOG_EMAILS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, NULL, NULL, 'PS_CUSTOMER_NWSL', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, NULL, NULL, 'PS_CUSTOMER_OPTIN', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, NULL, NULL, 'PS_PACK_STOCK_TYPE', '0', '0000-00-00 00:00:00', '2016-08-04 01:41:44'),
(279, NULL, NULL, 'PS_LOG_MODULE_PERFS_MODULO', NULL, '0000-00-00 00:00:00', '2016-08-03 23:17:03'),
(280, NULL, NULL, 'PS_DISALLOW_HISTORY_REORDERING', NULL, '0000-00-00 00:00:00', '2016-08-03 23:17:03'),
(281, NULL, NULL, 'PS_DISPLAY_PRODUCT_WEIGHT', NULL, '0000-00-00 00:00:00', '2016-08-03 23:17:03'),
(282, NULL, NULL, 'PS_PRODUCT_WEIGHT_PRECISION', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, NULL, NULL, 'PS_ADVANCED_PAYMENT_API', NULL, '0000-00-00 00:00:00', '2016-08-03 23:17:03'),
(284, NULL, NULL, 'PS_SC_TWITTER', '1', '2016-07-29 08:56:44', '2016-07-29 08:56:44'),
(285, NULL, NULL, 'PS_SC_FACEBOOK', '1', '2016-07-29 08:56:44', '2016-07-29 08:56:44'),
(286, NULL, NULL, 'PS_SC_GOOGLE', '1', '2016-07-29 08:56:44', '2016-07-29 08:56:44'),
(287, NULL, NULL, 'PS_SC_PINTEREST', '1', '2016-07-29 08:56:44', '2016-07-29 08:56:44'),
(288, NULL, NULL, 'BLOCKBANNER_IMG', NULL, '2016-07-29 08:56:45', '2016-07-29 08:56:45'),
(289, NULL, NULL, 'BLOCKBANNER_LINK', NULL, '2016-07-29 08:56:45', '2016-07-29 08:56:45'),
(290, NULL, NULL, 'BLOCKBANNER_DESC', NULL, '2016-07-29 08:56:45', '2016-07-29 08:56:45'),
(291, NULL, NULL, 'CONF_BANKWIRE_FIXED', '0.2', '2016-07-29 08:56:46', '2016-07-29 08:56:46'),
(292, NULL, NULL, 'CONF_BANKWIRE_VAR', '2', '2016-07-29 08:56:46', '2016-07-29 08:56:46'),
(293, NULL, NULL, 'CONF_BANKWIRE_FIXED_FOREIGN', '0.2', '2016-07-29 08:56:47', '2016-07-29 08:56:47'),
(294, NULL, NULL, 'CONF_BANKWIRE_VAR_FOREIGN', '2', '2016-07-29 08:56:47', '2016-07-29 08:56:47'),
(295, NULL, NULL, 'PS_BLOCK_BESTSELLERS_TO_DISPLAY', '10', '2016-07-29 08:56:48', '2016-07-29 08:56:48'),
(296, NULL, NULL, 'PS_BLOCK_CART_XSELL_LIMIT', '12', '2016-07-29 08:56:49', '2016-07-29 08:56:49'),
(297, NULL, NULL, 'PS_BLOCK_CART_SHOW_CROSSSELLING', '1', '2016-07-29 08:56:49', '2016-07-29 08:56:49'),
(298, NULL, NULL, 'BLOCKSOCIAL_YOUTUBE', 'http://www.prestashop.com', '2016-07-29 08:56:49', '2016-07-29 09:23:11'),
(299, NULL, NULL, 'BLOCKSOCIAL_GOOGLE_PLUS', 'https://www.google.com/+prestashop', '2016-07-29 08:56:49', '2016-07-29 08:56:49'),
(300, NULL, NULL, 'BLOCKSOCIAL_PINTEREST', NULL, '2016-07-29 08:56:49', '2016-08-03 23:17:04'),
(301, NULL, NULL, 'BLOCKSOCIAL_VIMEO', NULL, '2016-07-29 08:56:49', '2016-08-03 23:17:05'),
(302, NULL, NULL, 'BLOCKSOCIAL_INSTAGRAM', NULL, '2016-07-29 08:56:49', '2016-08-03 23:17:05'),
(303, NULL, NULL, 'BLOCK_CATEG_ROOT_CATEGORY', '1', '2016-07-29 08:56:50', '2016-07-29 08:56:50'),
(304, NULL, NULL, 'blockfacebook_url', 'https://www.facebook.com/prestashop', '2016-07-29 08:56:51', '2016-07-29 08:56:51'),
(305, NULL, NULL, 'PS_LAYERED_HIDE_0_VALUES', '1', '2016-07-29 08:56:52', '2016-07-29 08:56:52'),
(306, NULL, NULL, 'PS_LAYERED_SHOW_QTIES', '1', '2016-07-29 08:56:52', '2016-07-29 08:56:52'),
(307, NULL, NULL, 'PS_LAYERED_FULL_TREE', '1', '2016-07-29 08:56:52', '2016-07-29 08:56:52'),
(308, NULL, NULL, 'PS_LAYERED_FILTER_PRICE_USETAX', '1', '2016-07-29 08:56:52', '2016-07-29 08:56:52'),
(309, NULL, NULL, 'PS_LAYERED_FILTER_CATEGORY_DEPTH', '1', '2016-07-29 08:56:52', '2016-07-29 08:56:52'),
(310, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_QTY', NULL, '2016-07-29 08:56:52', '2016-08-03 23:17:05'),
(311, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_CDT', NULL, '2016-07-29 08:56:52', '2016-08-03 23:17:05'),
(312, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_MNF', NULL, '2016-07-29 08:56:52', '2016-08-03 23:17:06'),
(313, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_CAT', NULL, '2016-07-29 08:56:53', '2016-08-03 23:17:06'),
(314, NULL, NULL, 'PS_LAYERED_FILTER_PRICE_ROUNDING', '1', '2016-07-29 08:56:53', '2016-07-29 08:56:53'),
(315, NULL, NULL, 'PS_LAYERED_INDEXED', '1', '2016-07-29 08:57:03', '2016-07-29 08:57:03'),
(316, NULL, NULL, 'FOOTER_PRICE-DROP', '1', '2016-07-29 08:57:20', '2016-07-29 08:57:20'),
(317, NULL, NULL, 'FOOTER_NEW-PRODUCTS', '1', '2016-07-29 08:57:20', '2016-07-29 08:57:20'),
(318, NULL, NULL, 'FOOTER_BEST-SALES', '1', '2016-07-29 08:57:20', '2016-07-29 08:57:20'),
(319, NULL, NULL, 'FOOTER_CONTACT', '1', '2016-07-29 08:57:20', '2016-07-29 08:57:20'),
(320, NULL, NULL, 'FOOTER_SITEMAP', '1', '2016-07-29 08:57:21', '2016-07-29 08:57:21'),
(321, NULL, NULL, 'PS_NEWSLETTER_RAND', '1158931898', '2016-07-29 08:57:30', '2016-07-29 09:23:13'),
(322, NULL, NULL, 'BLOCKSPECIALS_NB_CACHES', '20', '2016-07-29 08:57:32', '2016-07-29 08:57:32'),
(323, NULL, NULL, 'BLOCKSPECIALS_SPECIALS_NBR', '5', '2016-07-29 08:57:33', '2016-07-29 08:57:33'),
(324, NULL, NULL, 'BLOCKTAGS_MAX_LEVEL', '3', '2016-07-29 08:57:35', '2016-07-29 08:57:35'),
(325, NULL, NULL, 'CONF_CHEQUE_FIXED', '0.2', '2016-07-29 08:57:43', '2016-07-29 08:57:43'),
(326, NULL, NULL, 'CONF_CHEQUE_VAR', '2', '2016-07-29 08:57:43', '2016-07-29 08:57:43'),
(327, NULL, NULL, 'CONF_CHEQUE_FIXED_FOREIGN', '0.2', '2016-07-29 08:57:43', '2016-07-29 08:57:43'),
(328, NULL, NULL, 'CONF_CHEQUE_VAR_FOREIGN', '2', '2016-07-29 08:57:43', '2016-07-29 08:57:43'),
(329, NULL, NULL, 'DASHACTIVITY_CART_ACTIVE', '30', '2016-07-29 08:57:44', '2016-07-29 08:57:44'),
(330, NULL, NULL, 'DASHACTIVITY_CART_ABANDONED_MIN', '24', '2016-07-29 08:57:45', '2016-07-29 08:57:45'),
(331, NULL, NULL, 'DASHACTIVITY_CART_ABANDONED_MAX', '48', '2016-07-29 08:57:45', '2016-07-29 08:57:45'),
(332, NULL, NULL, 'DASHACTIVITY_VISITOR_ONLINE', '30', '2016-07-29 08:57:45', '2016-07-29 08:57:45'),
(333, NULL, NULL, 'PS_DASHGOALS_CURRENT_YEAR', '2016', '2016-07-29 08:57:49', '2016-07-29 08:57:49'),
(334, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_LAST_ORDER', '10', '2016-07-29 08:57:53', '2016-07-29 08:57:53'),
(335, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_BEST_SELLER', '10', '2016-07-29 08:57:53', '2016-07-29 08:57:53'),
(336, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_MOST_VIEWED', '10', '2016-07-29 08:57:53', '2016-07-29 08:57:53'),
(337, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_TOP_SEARCH', '10', '2016-07-29 08:57:53', '2016-07-29 08:57:53'),
(338, NULL, NULL, 'HOME_FEATURED_CAT', '2', '2016-07-29 08:58:00', '2016-07-29 08:58:00'),
(339, NULL, NULL, 'PRODUCTPAYMENTLOGOS_IMG', 'payment-logo.png', '2016-07-29 08:58:01', '2016-07-29 08:58:01'),
(340, NULL, NULL, 'PRODUCTPAYMENTLOGOS_LINK', NULL, '2016-07-29 08:58:01', '2016-08-03 23:17:07'),
(341, NULL, NULL, 'PRODUCTPAYMENTLOGOS_TITLE', NULL, '2016-07-29 08:58:01', '2016-08-03 23:17:07'),
(342, NULL, NULL, 'PS_TC_THEMES', 'a:9:{i:0;s:6:"theme1";i:1;s:6:"theme2";i:2;s:6:"theme3";i:3;s:6:"theme4";i:4;s:6:"theme5";i:5;s:6:"theme6";i:6;s:6:"theme7";i:7;s:6:"theme8";i:8;s:6:"theme9";}', '2016-07-29 08:58:16', '2016-07-29 08:58:16'),
(343, NULL, NULL, 'PS_TC_FONTS', 'a:10:{s:5:"font1";s:9:"Open Sans";s:5:"font2";s:12:"Josefin Slab";s:5:"font3";s:4:"Arvo";s:5:"font4";s:4:"Lato";s:5:"font5";s:7:"Volkorn";s:5:"font6";s:13:"Abril Fatface";s:5:"font7";s:6:"Ubuntu";s:5:"font8";s:7:"PT Sans";s:5:"font9";s:15:"Old Standard TT";s:6:"font10";s:10:"Droid Sans";}', '2016-07-29 08:58:17', '2016-07-29 08:58:17'),
(344, NULL, NULL, 'PS_TC_THEME', NULL, '2016-07-29 08:58:17', '2016-08-03 23:17:07'),
(345, NULL, NULL, 'PS_TC_FONT', NULL, '2016-07-29 08:58:17', '2016-08-03 23:17:07'),
(346, NULL, NULL, 'PS_TC_ACTIVE', '1', '2016-07-29 08:58:17', '2016-07-29 08:58:17'),
(347, NULL, NULL, 'PS_SET_DISPLAY_SUBCATEGORIES', '1', '2016-07-29 08:58:17', '2016-07-29 08:58:17'),
(348, NULL, NULL, 'GF_INSTALL_CALC', '1', '2016-07-29 08:58:33', '2016-07-29 09:03:00'),
(349, NULL, NULL, 'GF_CURRENT_LEVEL', '2', '2016-07-29 08:58:33', '2016-08-04 23:16:57'),
(350, NULL, NULL, 'GF_CURRENT_LEVEL_PERCENT', '50', '2016-07-29 08:58:33', '2016-08-09 00:26:47'),
(351, NULL, NULL, 'GF_NOTIFICATION', '14', '2016-07-29 08:58:34', '2016-08-09 00:26:47'),
(352, NULL, NULL, 'CRONJOBS_ADMIN_DIR', 'c20a671b4a7b8e2231ffad5e6bb9c9dd', '2016-07-29 08:58:34', '2016-07-29 09:02:41'),
(353, NULL, NULL, 'CRONJOBS_MODE', 'webservice', '2016-07-29 08:58:34', '2016-07-29 08:58:34'),
(354, NULL, NULL, 'CRONJOBS_MODULE_VERSION', '1.3.3', '2016-07-29 08:58:34', '2016-08-01 05:46:07'),
(355, NULL, NULL, 'CRONJOBS_WEBSERVICE_ID', '0', '2016-07-29 08:58:34', '2016-07-29 08:58:34'),
(356, NULL, NULL, 'CRONJOBS_EXECUTION_TOKEN', '4aeb07ceb0748d0a452a07b501b0f43b', '2016-07-29 08:58:34', '2016-07-29 08:58:34'),
(357, NULL, NULL, 'PS_ONBOARDING_CURRENT_STEP', '0', '2016-07-29 08:58:35', '2016-07-29 04:33:28'),
(358, NULL, NULL, 'PS_ONBOARDING_LAST_VALIDATE_STEP', '0', '2016-07-29 08:58:35', '2016-07-29 08:58:35'),
(359, NULL, NULL, 'PS_ONBOARDING_STEP_1_COMPLETED', '0', '2016-07-29 08:58:35', '2016-07-29 08:58:35'),
(360, NULL, NULL, 'PS_ONBOARDING_STEP_2_COMPLETED', '0', '2016-07-29 08:58:35', '2016-07-29 08:58:35'),
(361, NULL, NULL, 'PS_ONBOARDING_STEP_3_COMPLETED', '0', '2016-07-29 08:58:35', '2016-07-29 08:58:35'),
(362, NULL, NULL, 'PS_ONBOARDING_STEP_4_COMPLETED', '0', '2016-07-29 08:58:35', '2016-07-29 08:58:35'),
(363, NULL, NULL, 'GF_NOT_VIEWED_BADGE', '147', '2016-07-29 09:03:03', '2016-08-09 00:26:47'),
(379, NULL, NULL, 'smartblog_quick_access', '4', '2016-07-29 09:05:32', '2016-07-29 09:05:32'),
(380, NULL, NULL, 'smart_update_period', 'hourly', '2016-07-29 09:05:38', '2016-07-29 09:05:38'),
(381, NULL, NULL, 'smart_update_frequency', '1', '2016-07-29 09:05:38', '2016-07-29 09:05:38'),
(388, NULL, NULL, 'TMTWITTERFEED_ID', NULL, '2016-07-29 09:06:02', '2016-08-03 23:17:09'),
(389, NULL, NULL, 'TMFACEBOOK_ID', 'https://www.facebook.com/TemplateMonster', '2016-07-29 09:06:02', '2016-08-03 23:17:09'),
(390, NULL, NULL, 'TMPINTEREST_ID', NULL, '2016-07-29 09:06:02', '2016-08-03 23:17:09'),
(391, NULL, NULL, 'TMINSTAGRAM_ID', NULL, '2016-07-29 09:06:02', '2016-08-03 23:17:09'),
(392, NULL, NULL, 'TMINSTAGRAM_USERNAME', NULL, '2016-07-29 09:06:02', '2016-08-03 23:17:09'),
(393, NULL, NULL, 'TMINSTAGRAM_ACCESSTOKEN', NULL, '2016-07-29 09:06:02', '2016-08-03 23:17:09'),
(394, NULL, NULL, 'TMINSTAGRAM_USERID', NULL, '2016-07-29 09:06:02', '2016-08-03 23:17:10'),
(395, NULL, NULL, 'TMINSTAGRAM_TYPE', 'tagged', '2016-07-29 09:06:02', '2016-07-29 09:23:17'),
(396, NULL, NULL, 'TMINSTAGRAM_TAG', NULL, '2016-07-29 09:06:02', '2016-08-03 23:17:10'),
(397, NULL, NULL, 'CROSSSELLING_DISPLAY_PRICE', NULL, '2016-07-29 09:06:21', '2016-08-03 23:17:10'),
(398, NULL, NULL, 'CROSSSELLING_NBR', '10', '2016-07-29 09:06:21', '2016-07-29 09:06:21'),
(399, NULL, NULL, 'PRODUCTSCATEGORY_DISPLAY_PRICE', NULL, '2016-07-29 09:06:22', '2016-08-03 23:17:10'),
(403, NULL, NULL, 'PRICE_DISPLAY_METHOD', '1', '2016-07-29 09:23:10', '2016-07-29 09:23:10'),
(404, NULL, NULL, 'PRODUCT_COMMENTS_MINIMAL_TIME', '30', '2016-07-29 09:23:14', '2016-07-29 09:23:14'),
(405, NULL, NULL, 'PRODUCT_COMMENTS_ALLOW_GUESTS', NULL, '2016-07-29 09:23:14', '2016-08-03 23:17:07'),
(406, NULL, NULL, 'PRODUCT_COMMENTS_MODERATE', '1', '2016-07-29 09:23:14', '2016-07-29 09:23:14'),
(407, NULL, NULL, 'SDI_SHOW_MASSEGE', NULL, '2016-07-29 09:23:18', '2016-08-03 23:17:10'),
(408, NULL, NULL, 'PS_SHIP_WHEN_AVAILABLE', '1', '2016-07-29 09:23:18', '2016-07-29 09:23:18'),
(409, NULL, NULL, 'PS_GIFT_WRAPPING_TAX_RULES_GROUP', '1', '2016-07-29 09:23:18', '2016-07-29 09:23:18'),
(410, NULL, NULL, 'PS_PRODUCT_SHORT_DESC_LIMIT', NULL, '2016-07-29 09:23:18', '2016-08-03 23:17:11'),
(411, NULL, NULL, 'PS_QTY_DISCOUNT_ON_COMBINATION', NULL, '2016-07-29 09:23:18', '2016-08-03 23:17:11'),
(412, NULL, NULL, 'PS_FORCE_FRIENDLY_PRODUCT', NULL, '2016-07-29 09:23:18', '2016-08-03 23:17:11'),
(413, NULL, NULL, 'PS_DISPLAY_DISCOUNT_PRICE', NULL, '2016-07-29 09:23:18', '2016-08-03 23:17:11'),
(414, NULL, NULL, 'PS_FORCE_ASM_NEW_PRODUCT', '0', '2016-07-29 09:23:18', '2016-08-04 01:41:44'),
(415, NULL, NULL, 'PS_DEFAULT_WAREHOUSE_NEW_PRODUCT', NULL, '2016-07-29 09:23:19', '2016-08-04 01:41:44'),
(416, NULL, NULL, 'PS_REGISTRATION_PROCESS_TYPE', NULL, '2016-07-29 09:23:19', '2016-08-03 23:17:11'),
(417, NULL, NULL, 'PS_CART_FOLLOWING', NULL, '2016-07-29 09:23:19', '2016-08-03 23:17:11'),
(418, NULL, NULL, 'PS_B2B_ENABLE', NULL, '2016-07-29 09:23:19', '2016-08-03 23:17:11'),
(419, NULL, NULL, 'PS_ALLOW_ACCENTED_CHARS_URL', NULL, '2016-07-29 09:23:19', '2016-08-03 23:17:11'),
(420, NULL, NULL, 'PS_STORES_DISPLAY_SITEMAP', '1', '2016-07-29 09:23:19', '2016-07-29 09:23:19'),
(421, NULL, NULL, 'PS_SHOP_DETAILS', NULL, '2016-07-29 09:23:19', '2016-08-04 23:16:52'),
(422, NULL, NULL, 'PS_SHOP_ADDR1', NULL, '2016-07-29 09:23:19', '2016-08-04 23:16:52'),
(423, NULL, NULL, 'PS_SHOP_ADDR2', NULL, '2016-07-29 09:23:20', '2016-08-04 23:16:52'),
(424, NULL, NULL, 'PS_SHOP_CODE', NULL, '2016-07-29 09:23:20', '2016-08-04 23:16:52'),
(425, NULL, NULL, 'PS_SHOP_CITY', NULL, '2016-07-29 09:23:20', '2016-08-04 23:16:53'),
(426, NULL, NULL, 'PS_SHOP_COUNTRY_ID', '21', '2016-07-29 09:23:20', '2016-07-29 09:23:20'),
(427, NULL, NULL, 'PS_SHOP_COUNTRY', 'United States', '2016-07-29 09:23:20', '2016-07-29 09:23:20'),
(428, NULL, NULL, 'PS_SHOP_PHONE', NULL, '2016-07-29 09:23:20', '2016-08-04 23:16:53'),
(429, NULL, NULL, 'PS_SHOP_FAX', NULL, '2016-07-29 09:23:20', '2016-08-04 23:16:53'),
(430, NULL, NULL, 'PS_INSTANT_SEARCH', '1', '2016-07-29 09:23:20', '2016-07-29 09:23:20'),
(431, NULL, NULL, 'PS_SEARCH_START', '1', '2016-07-29 09:23:21', '2016-07-29 09:23:21'),
(432, NULL, NULL, 'PS_CSS_THEME_CACHE', NULL, '2016-07-29 09:23:21', '2016-08-03 23:17:12'),
(433, NULL, NULL, 'PS_JS_THEME_CACHE', NULL, '2016-07-29 09:23:21', '2016-08-03 23:17:12'),
(434, NULL, NULL, 'PS_HTML_THEME_COMPRESSION', NULL, '2016-07-29 09:23:21', '2016-08-03 23:17:13'),
(435, NULL, NULL, 'PS_JS_HTML_THEME_COMPRESSION', NULL, '2016-07-29 09:23:21', '2016-08-03 23:17:13'),
(436, NULL, NULL, 'PS_JS_DEFER', NULL, '2016-07-29 09:23:21', '2016-08-03 23:17:13'),
(437, NULL, NULL, 'PS_HTACCESS_CACHE_CONTROL', NULL, '2016-07-29 09:23:21', '2016-08-03 23:17:13'),
(438, NULL, NULL, 'PS_DISABLE_NON_NATIVE_MODULE', NULL, '2016-07-29 09:23:21', '2016-08-03 23:17:13'),
(439, NULL, NULL, 'PS_DISABLE_OVERRIDES', NULL, '2016-07-29 09:23:21', '2016-08-03 23:17:13'),
(440, NULL, NULL, 'PS_REFERRERS_CACHE_LIKE', ' \'2014-12-16 00:00:00\' AND \'2015-01-16 23:59:59\' ', '2016-07-29 09:23:22', '2016-07-29 09:23:22'),
(441, NULL, NULL, 'PS_REFERRERS_CACHE_DATE', '2015-01-16 09:32:15', '2016-07-29 09:23:22', '2016-07-29 09:23:22'),
(443, NULL, NULL, 'PS_GRID_PRODUCT', NULL, '2016-07-29 09:23:22', '2016-08-03 23:17:13'),
(444, NULL, NULL, 'PS_SHOW_CAT_MODULES_1', NULL, '2016-07-29 09:23:22', '2016-08-04 00:34:34'),
(445, NULL, NULL, 'PS_IMAGE_GENERATION_METHOD', NULL, '2016-07-29 09:23:22', '2016-08-03 23:17:14'),
(446, NULL, NULL, 'smooth_scroll_on', '1', '2016-07-29 09:23:22', '2016-07-29 09:23:22'),
(447, NULL, NULL, 'smooth_scroll_time', '330', '2016-07-29 09:23:22', '2016-07-29 09:23:22'),
(448, NULL, NULL, 'smooth_scroll_distance', '100', '2016-07-29 09:23:22', '2016-07-29 09:23:22'),
(449, NULL, NULL, 'TMOLARKCHAT_ID', '7830-582-10-3714', '2016-07-29 09:23:23', '2016-07-29 09:23:23'),
(450, NULL, NULL, 'TMOLARKCHAT_LIVE_MODE', '1', '2016-07-29 09:23:23', '2016-07-29 09:23:23'),
(451, NULL, NULL, 'FOOTER_CMS_TEXT_1', NULL, '2016-07-29 09:23:23', '2016-08-03 23:17:14'),
(452, NULL, NULL, 'FOOTER_CMS_TEXT_2', NULL, '2016-07-29 09:23:23', '2016-08-03 23:17:14'),
(453, NULL, NULL, 'FOOTER_CMS_TEXT_3', NULL, '2016-07-29 09:23:23', '2016-08-03 23:17:14'),
(454, NULL, NULL, 'FOOTER_CMS_TEXT_4', NULL, '2016-07-29 09:23:23', '2016-08-03 23:17:14'),
(455, NULL, NULL, 'FOOTER_CMS_TEXT_5', NULL, '2016-07-29 09:23:23', '2016-08-03 23:17:15'),
(456, NULL, NULL, 'TMTWITTERFEED_DISPLAY', NULL, '2016-07-29 09:23:23', '2016-08-03 23:17:15'),
(457, NULL, NULL, 'TMFACEBOOK_DISPLAY', '1', '2016-07-29 09:23:24', '2016-07-29 09:23:24'),
(458, NULL, NULL, 'TMPINTEREST_DISPLAY', NULL, '2016-07-29 09:23:24', '2016-08-03 23:17:15'),
(459, NULL, NULL, 'TMINSTAGRAM_DISPLAY', NULL, '2016-07-29 09:23:24', '2016-08-03 23:17:15'),
(461, NULL, NULL, 'PS_SHOW_TYPE_MODULES_1', 'allModules', '2016-07-29 03:43:08', '2016-07-29 03:43:08'),
(462, NULL, NULL, 'PS_SHOW_INSTALLED_MODULES_1', 'installedUninstalled', '2016-07-29 03:43:08', '2016-08-01 05:44:45'),
(463, NULL, NULL, 'PS_SHOW_ENABLED_MODULES_1', 'enabledDisabled', '2016-07-29 03:43:08', '2016-08-02 05:47:55'),
(464, NULL, NULL, 'PS_CCCJS_VERSION', '5', '2016-08-01 04:46:44', '2016-08-09 00:27:23'),
(465, NULL, NULL, 'PS_CCCCSS_VERSION', '5', '2016-08-01 04:46:44', '2016-08-09 00:27:24'),
(466, NULL, NULL, 'PS_HTACCESS_DISABLE_MULTIVIEWS', '0', '2016-08-01 05:16:34', '2016-08-01 05:16:34'),
(467, NULL, NULL, 'PS_HTACCESS_DISABLE_MODSEC', '0', '2016-08-01 05:16:34', '2016-08-01 05:16:34'),
(468, NULL, NULL, 'PS_ROUTE_product_rule', '{category:/}{id}-{rewrite}{-:ean13}', '2016-08-01 05:16:34', '2016-08-01 05:16:34'),
(469, NULL, NULL, 'PS_ROUTE_category_rule', NULL, '2016-08-01 05:16:34', '2016-08-01 05:19:41'),
(470, NULL, NULL, 'PS_ROUTE_layered_rule', NULL, '2016-08-01 05:16:34', '2016-08-01 05:19:41'),
(471, NULL, NULL, 'PS_ROUTE_supplier_rule', NULL, '2016-08-01 05:16:34', '2016-08-01 05:19:41'),
(472, NULL, NULL, 'PS_ROUTE_manufacturer_rule', NULL, '2016-08-01 05:16:34', '2016-08-01 05:19:41'),
(473, NULL, NULL, 'PS_ROUTE_cms_rule', NULL, '2016-08-01 05:16:34', '2016-08-01 05:19:41'),
(474, NULL, NULL, 'PS_ROUTE_cms_category_rule', NULL, '2016-08-01 05:16:34', '2016-08-01 05:19:42'),
(475, NULL, NULL, 'PS_ROUTE_module', 'module/{module}{/:controller}', '2016-08-01 05:16:34', '2016-08-01 05:16:34'),
(476, NULL, NULL, 'CFEATURED_NBR', '8', '2016-08-01 05:59:31', '2016-08-01 05:59:31'),
(477, NULL, NULL, 'CFEATURED_ID', '45', '2016-08-01 06:00:59', '2016-08-01 23:41:44'),
(478, NULL, NULL, 'CFEATURED_WHERE', '1', '2016-08-01 06:00:59', '2016-08-01 23:55:41'),
(479, NULL, NULL, 'PS_SSL_ENABLED_EVERYWHERE', '0', '2016-08-09 00:09:15', '2016-08-09 00:09:15'),
(480, NULL, NULL, 'PS_ALLOW_HTML_IFRAME', '0', '2016-08-09 00:09:15', '2016-08-09 00:09:15'),
(481, NULL, NULL, 'PS_MULTISHOP_FEATURE_ACTIVE', '1', '2016-08-09 00:09:15', '2016-08-09 00:09:15');

-- --------------------------------------------------------

--
-- Structure de la table `ps_configuration_kpi`
--

CREATE TABLE `ps_configuration_kpi` (
  `id_configuration_kpi` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED DEFAULT NULL,
  `id_shop` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_configuration_kpi`
--

INSERT INTO `ps_configuration_kpi` (`id_configuration_kpi`, `id_shop_group`, `id_shop`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1, NULL, NULL, 'DASHGOALS_TRAFFIC_01_2016', '600', '2016-07-29 08:57:49', '2016-07-29 08:57:49'),
(2, NULL, NULL, 'DASHGOALS_CONVERSION_01_2016', '2', '2016-07-29 08:57:49', '2016-07-29 08:57:49'),
(3, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_01_2016', '80', '2016-07-29 08:57:49', '2016-07-29 08:57:49'),
(4, NULL, NULL, 'DASHGOALS_TRAFFIC_02_2016', '600', '2016-07-29 08:57:49', '2016-07-29 08:57:49'),
(5, NULL, NULL, 'DASHGOALS_CONVERSION_02_2016', '2', '2016-07-29 08:57:49', '2016-07-29 08:57:49'),
(6, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_02_2016', '80', '2016-07-29 08:57:49', '2016-07-29 08:57:49'),
(7, NULL, NULL, 'DASHGOALS_TRAFFIC_03_2016', '600', '2016-07-29 08:57:49', '2016-07-29 08:57:49'),
(8, NULL, NULL, 'DASHGOALS_CONVERSION_03_2016', '2', '2016-07-29 08:57:49', '2016-07-29 08:57:49'),
(9, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_03_2016', '80', '2016-07-29 08:57:49', '2016-07-29 08:57:49'),
(10, NULL, NULL, 'DASHGOALS_TRAFFIC_04_2016', '600', '2016-07-29 08:57:50', '2016-07-29 08:57:50'),
(11, NULL, NULL, 'DASHGOALS_CONVERSION_04_2016', '2', '2016-07-29 08:57:50', '2016-07-29 08:57:50'),
(12, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_04_2016', '80', '2016-07-29 08:57:50', '2016-07-29 08:57:50'),
(13, NULL, NULL, 'DASHGOALS_TRAFFIC_05_2016', '600', '2016-07-29 08:57:50', '2016-07-29 08:57:50'),
(14, NULL, NULL, 'DASHGOALS_CONVERSION_05_2016', '2', '2016-07-29 08:57:50', '2016-07-29 08:57:50'),
(15, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_05_2016', '80', '2016-07-29 08:57:50', '2016-07-29 08:57:50'),
(16, NULL, NULL, 'DASHGOALS_TRAFFIC_06_2016', '600', '2016-07-29 08:57:50', '2016-07-29 08:57:50'),
(17, NULL, NULL, 'DASHGOALS_CONVERSION_06_2016', '2', '2016-07-29 08:57:50', '2016-07-29 08:57:50'),
(18, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_06_2016', '80', '2016-07-29 08:57:50', '2016-07-29 08:57:50'),
(19, NULL, NULL, 'DASHGOALS_TRAFFIC_07_2016', '600', '2016-07-29 08:57:50', '2016-07-29 08:57:50'),
(20, NULL, NULL, 'DASHGOALS_CONVERSION_07_2016', '2', '2016-07-29 08:57:50', '2016-07-29 08:57:50'),
(21, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_07_2016', '80', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(22, NULL, NULL, 'DASHGOALS_TRAFFIC_08_2016', '600', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(23, NULL, NULL, 'DASHGOALS_CONVERSION_08_2016', '2', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(24, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_08_2016', '80', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(25, NULL, NULL, 'DASHGOALS_TRAFFIC_09_2016', '600', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(26, NULL, NULL, 'DASHGOALS_CONVERSION_09_2016', '2', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(27, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_09_2016', '80', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(28, NULL, NULL, 'DASHGOALS_TRAFFIC_10_2016', '600', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(29, NULL, NULL, 'DASHGOALS_CONVERSION_10_2016', '2', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(30, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_10_2016', '80', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(31, NULL, NULL, 'DASHGOALS_TRAFFIC_11_2016', '600', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(32, NULL, NULL, 'DASHGOALS_CONVERSION_11_2016', '2', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(33, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_11_2016', '80', '2016-07-29 08:57:51', '2016-07-29 08:57:51'),
(34, NULL, NULL, 'DASHGOALS_TRAFFIC_12_2016', '600', '2016-07-29 08:57:52', '2016-07-29 08:57:52'),
(35, NULL, NULL, 'DASHGOALS_CONVERSION_12_2016', '2', '2016-07-29 08:57:52', '2016-07-29 08:57:52'),
(36, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_12_2016', '80', '2016-07-29 08:57:52', '2016-07-29 08:57:52'),
(37, NULL, NULL, 'UPDATE_MODULES', '0', '2016-07-29 03:42:24', '2016-08-01 05:46:11'),
(38, NULL, NULL, 'INSTALLED_MODULES', '84', '2016-07-29 03:42:27', '2016-08-03 23:01:02'),
(39, NULL, NULL, 'DISABLED_MODULES', '3', '2016-07-29 03:42:27', '2016-08-03 23:01:02'),
(40, NULL, NULL, 'INSTALLED_MODULES_EXPIRE', '1470279782', '2016-07-29 03:42:27', '2016-08-03 23:01:02'),
(41, NULL, NULL, 'DISABLED_MODULES_EXPIRE', '1470279782', '2016-07-29 03:42:27', '2016-08-03 23:01:02'),
(42, NULL, NULL, 'UPDATE_MODULES_EXPIRE', '1470279784', '2016-07-29 03:42:29', '2016-08-03 23:01:04'),
(43, NULL, NULL, 'PRODUCT_AVG_GROSS_MARGIN', '0%', '2016-07-29 03:44:56', '2016-08-01 23:14:01'),
(44, NULL, NULL, 'PERCENT_PRODUCT_OUT_OF_STOCK', '0%', '2016-07-29 03:44:56', '2016-07-29 03:44:56'),
(45, NULL, NULL, '8020_SALES_CATALOG', '0% of your Catalog', '2016-07-29 03:44:56', '2016-07-29 03:44:56'),
(46, NULL, NULL, 'DISABLED_PRODUCTS', '0%', '2016-07-29 03:44:56', '2016-07-29 03:44:56'),
(47, NULL, NULL, 'PRODUCT_AVG_GROSS_MARGIN_EXPIRE', '1470300818', '2016-07-29 03:44:56', '2016-08-03 22:53:38'),
(48, NULL, NULL, 'PERCENT_PRODUCT_OUT_OF_STOCK_EXPIRE', '1470049594', '2016-07-29 03:44:56', '2016-08-01 03:06:34'),
(49, NULL, NULL, 'DISABLED_PRODUCTS_EXPIRE', '1470286417', '2016-07-29 03:44:56', '2016-08-03 22:53:37'),
(50, NULL, NULL, '8020_SALES_CATALOG_EXPIRE', '1470320615', '2016-07-29 03:44:56', '2016-08-03 22:23:35'),
(51, NULL, NULL, 'DISABLED_CATEGORIES', '0', '2016-07-29 04:24:26', '2016-07-29 04:24:26'),
(52, NULL, NULL, 'PRODUCTS_PER_CATEGORY', '1', '2016-07-29 04:24:26', '2016-08-01 06:00:24'),
(53, NULL, NULL, 'TOP_CATEGORY', NULL, '2016-07-29 04:24:26', '2016-07-29 04:24:26'),
(54, NULL, NULL, 'PRODUCTS_PER_CATEGORY_EXPIRE', '1470129025', '2016-07-29 04:24:26', '2016-08-02 04:10:25'),
(55, NULL, NULL, 'EMPTY_CATEGORIES', '0', '2016-07-29 04:24:26', '2016-08-02 04:57:42'),
(56, NULL, NULL, 'DISABLED_CATEGORIES_EXPIRE', '1470135617', '2016-07-29 04:24:26', '2016-08-02 05:00:17'),
(57, NULL, NULL, 'EMPTY_CATEGORIES_EXPIRE', '1470135462', '2016-07-29 04:24:26', '2016-08-02 04:57:42'),
(58, NULL, NULL, 'TOP_CATEGORY_EXPIRE', NULL, '2016-07-29 04:24:26', '2016-07-29 04:24:26'),
(59, NULL, NULL, 'AVG_ORDER_VALUE', '$0.00', '2016-07-29 05:19:13', '2016-07-29 05:19:13'),
(60, NULL, NULL, 'CONVERSION_RATE', '0%', '2016-07-29 05:19:13', '2016-07-29 05:19:13'),
(61, NULL, NULL, 'AVG_ORDER_VALUE_EXPIRE', '1470110400', '2016-07-29 05:19:13', '2016-08-01 03:13:22'),
(62, NULL, NULL, 'CONVERSION_RATE_EXPIRE', '1470196800', '2016-07-29 05:19:13', '2016-08-02 05:55:45'),
(63, NULL, NULL, 'NETPROFIT_VISIT', '$0.00', '2016-07-29 05:19:13', '2016-07-29 05:19:13'),
(64, NULL, NULL, 'ABANDONED_CARTS', '0', '2016-07-29 05:19:13', '2016-07-29 05:19:13'),
(65, NULL, NULL, 'NETPROFIT_VISIT_EXPIRE', '1470110400', '2016-07-29 05:19:13', '2016-08-01 03:13:22'),
(66, NULL, NULL, 'ABANDONED_CARTS_EXPIRE', '1470135345', '2016-07-29 05:19:13', '2016-08-02 05:55:45'),
(67, NULL, NULL, 'MAIN_COUNTRY', NULL, '2016-08-02 23:05:40', '2016-08-02 23:05:40'),
(68, NULL, NULL, 'FRONTOFFICE_TRANSLATIONS', '0%', '2016-08-02 23:05:40', '2016-08-02 23:05:40'),
(69, NULL, NULL, 'ENABLED_LANGUAGES', '1', '2016-08-02 23:05:40', '2016-08-02 23:05:40'),
(70, NULL, NULL, 'FRONTOFFICE_TRANSLATIONS_EXPIRE', '1470203012', '2016-08-02 23:05:40', '2016-08-03 01:41:32'),
(71, NULL, NULL, 'MAIN_COUNTRY_EXPIRE', NULL, '2016-08-02 23:05:40', '2016-08-02 23:05:40'),
(72, NULL, NULL, 'ENABLED_LANGUAGES_EXPIRE', '1470202952', '2016-08-02 23:05:40', '2016-08-03 01:41:32'),
(73, 1, 1, 'PRODUCT_AVG_GROSS_MARGIN', '0%', '2016-08-09 00:26:59', '2016-08-09 00:26:59'),
(74, 1, 1, 'DISABLED_PRODUCTS', '0%', '2016-08-09 00:26:59', '2016-08-09 00:26:59'),
(75, 1, 1, '8020_SALES_CATALOG', '0% of your Catalog', '2016-08-09 00:26:59', '2016-08-09 00:26:59'),
(76, 1, 1, 'PRODUCT_AVG_GROSS_MARGIN_EXPIRE', '1470738419', '2016-08-09 00:26:59', '2016-08-09 00:26:59'),
(77, 1, 1, '8020_SALES_CATALOG_EXPIRE', '1470760019', '2016-08-09 00:26:59', '2016-08-09 00:26:59'),
(78, 1, 1, 'DISABLED_PRODUCTS_EXPIRE', '1470724019', '2016-08-09 00:26:59', '2016-08-09 00:26:59'),
(79, 1, 2, '8020_SALES_CATALOG', '0% of your Catalog', '2016-08-09 00:28:27', '2016-08-09 00:28:27'),
(80, 1, 2, 'DISABLED_PRODUCTS', '0%', '2016-08-09 00:28:27', '2016-08-09 00:28:27'),
(81, 1, 2, 'PRODUCT_AVG_GROSS_MARGIN', '0%', '2016-08-09 00:28:27', '2016-08-09 00:28:27'),
(82, 1, 2, '8020_SALES_CATALOG_EXPIRE', '1470760107', '2016-08-09 00:28:27', '2016-08-09 00:28:27'),
(83, 1, 2, 'DISABLED_PRODUCTS_EXPIRE', '1470724107', '2016-08-09 00:28:27', '2016-08-09 00:28:27'),
(84, 1, 2, 'PRODUCT_AVG_GROSS_MARGIN_EXPIRE', '1470738507', '2016-08-09 00:28:27', '2016-08-09 00:28:27');

-- --------------------------------------------------------

--
-- Structure de la table `ps_configuration_kpi_lang`
--

CREATE TABLE `ps_configuration_kpi_lang` (
  `id_configuration_kpi` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_configuration_kpi_lang`
--

INSERT INTO `ps_configuration_kpi_lang` (`id_configuration_kpi`, `id_lang`, `value`, `date_upd`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL),
(1, 3, NULL, NULL),
(1, 4, NULL, NULL),
(1, 5, NULL, NULL),
(2, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(2, 5, NULL, NULL),
(3, 1, NULL, NULL),
(3, 2, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL),
(3, 5, NULL, NULL),
(4, 1, NULL, NULL),
(4, 2, NULL, NULL),
(4, 3, NULL, NULL),
(4, 4, NULL, NULL),
(4, 5, NULL, NULL),
(5, 1, NULL, NULL),
(5, 2, NULL, NULL),
(5, 3, NULL, NULL),
(5, 4, NULL, NULL),
(5, 5, NULL, NULL),
(6, 1, NULL, NULL),
(6, 2, NULL, NULL),
(6, 3, NULL, NULL),
(6, 4, NULL, NULL),
(6, 5, NULL, NULL),
(7, 1, NULL, NULL),
(7, 2, NULL, NULL),
(7, 3, NULL, NULL),
(7, 4, NULL, NULL),
(7, 5, NULL, NULL),
(8, 1, NULL, NULL),
(8, 2, NULL, NULL),
(8, 3, NULL, NULL),
(8, 4, NULL, NULL),
(8, 5, NULL, NULL),
(9, 1, NULL, NULL),
(9, 2, NULL, NULL),
(9, 3, NULL, NULL),
(9, 4, NULL, NULL),
(9, 5, NULL, NULL),
(10, 1, NULL, NULL),
(10, 2, NULL, NULL),
(10, 3, NULL, NULL),
(10, 4, NULL, NULL),
(10, 5, NULL, NULL),
(11, 1, NULL, NULL),
(11, 2, NULL, NULL),
(11, 3, NULL, NULL),
(11, 4, NULL, NULL),
(11, 5, NULL, NULL),
(12, 1, NULL, NULL),
(12, 2, NULL, NULL),
(12, 3, NULL, NULL),
(12, 4, NULL, NULL),
(12, 5, NULL, NULL),
(13, 1, NULL, NULL),
(13, 2, NULL, NULL),
(13, 3, NULL, NULL),
(13, 4, NULL, NULL),
(13, 5, NULL, NULL),
(14, 1, NULL, NULL),
(14, 2, NULL, NULL),
(14, 3, NULL, NULL),
(14, 4, NULL, NULL),
(14, 5, NULL, NULL),
(15, 1, NULL, NULL),
(15, 2, NULL, NULL),
(15, 3, NULL, NULL),
(15, 4, NULL, NULL),
(15, 5, NULL, NULL),
(16, 1, NULL, NULL),
(16, 2, NULL, NULL),
(16, 3, NULL, NULL),
(16, 4, NULL, NULL),
(16, 5, NULL, NULL),
(17, 1, NULL, NULL),
(17, 2, NULL, NULL),
(17, 3, NULL, NULL),
(17, 4, NULL, NULL),
(17, 5, NULL, NULL),
(18, 1, NULL, NULL),
(18, 2, NULL, NULL),
(18, 3, NULL, NULL),
(18, 4, NULL, NULL),
(18, 5, NULL, NULL),
(19, 1, NULL, NULL),
(19, 2, NULL, NULL),
(19, 3, NULL, NULL),
(19, 4, NULL, NULL),
(19, 5, NULL, NULL),
(20, 1, NULL, NULL),
(20, 2, NULL, NULL),
(20, 3, NULL, NULL),
(20, 4, NULL, NULL),
(20, 5, NULL, NULL),
(21, 1, NULL, NULL),
(21, 2, NULL, NULL),
(21, 3, NULL, NULL),
(21, 4, NULL, NULL),
(21, 5, NULL, NULL),
(22, 1, NULL, NULL),
(22, 2, NULL, NULL),
(22, 3, NULL, NULL),
(22, 4, NULL, NULL),
(22, 5, NULL, NULL),
(23, 1, NULL, NULL),
(23, 2, NULL, NULL),
(23, 3, NULL, NULL),
(23, 4, NULL, NULL),
(23, 5, NULL, NULL),
(24, 1, NULL, NULL),
(24, 2, NULL, NULL),
(24, 3, NULL, NULL),
(24, 4, NULL, NULL),
(24, 5, NULL, NULL),
(25, 1, NULL, NULL),
(25, 2, NULL, NULL),
(25, 3, NULL, NULL),
(25, 4, NULL, NULL),
(25, 5, NULL, NULL),
(26, 1, NULL, NULL),
(26, 2, NULL, NULL),
(26, 3, NULL, NULL),
(26, 4, NULL, NULL),
(26, 5, NULL, NULL),
(27, 1, NULL, NULL),
(27, 2, NULL, NULL),
(27, 3, NULL, NULL),
(27, 4, NULL, NULL),
(27, 5, NULL, NULL),
(28, 1, NULL, NULL),
(28, 2, NULL, NULL),
(28, 3, NULL, NULL),
(28, 4, NULL, NULL),
(28, 5, NULL, NULL),
(29, 1, NULL, NULL),
(29, 2, NULL, NULL),
(29, 3, NULL, NULL),
(29, 4, NULL, NULL),
(29, 5, NULL, NULL),
(30, 1, NULL, NULL),
(30, 2, NULL, NULL),
(30, 3, NULL, NULL),
(30, 4, NULL, NULL),
(30, 5, NULL, NULL),
(31, 1, NULL, NULL),
(31, 2, NULL, NULL),
(31, 3, NULL, NULL),
(31, 4, NULL, NULL),
(31, 5, NULL, NULL),
(32, 1, NULL, NULL),
(32, 2, NULL, NULL),
(32, 3, NULL, NULL),
(32, 4, NULL, NULL),
(32, 5, NULL, NULL),
(33, 1, NULL, NULL),
(33, 2, NULL, NULL),
(33, 3, NULL, NULL),
(33, 4, NULL, NULL),
(33, 5, NULL, NULL),
(34, 1, NULL, NULL),
(34, 2, NULL, NULL),
(34, 3, NULL, NULL),
(34, 4, NULL, NULL),
(34, 5, NULL, NULL),
(35, 1, NULL, NULL),
(35, 2, NULL, NULL),
(35, 3, NULL, NULL),
(35, 4, NULL, NULL),
(35, 5, NULL, NULL),
(36, 1, NULL, NULL),
(36, 2, NULL, NULL),
(36, 3, NULL, NULL),
(36, 4, NULL, NULL),
(36, 5, NULL, NULL),
(37, 1, NULL, NULL),
(37, 2, NULL, NULL),
(37, 3, NULL, NULL),
(37, 4, NULL, NULL),
(37, 5, NULL, NULL),
(38, 1, NULL, NULL),
(38, 2, NULL, NULL),
(38, 3, NULL, NULL),
(38, 4, NULL, NULL),
(38, 5, NULL, NULL),
(39, 1, NULL, NULL),
(39, 2, NULL, NULL),
(39, 3, NULL, NULL),
(39, 4, NULL, NULL),
(39, 5, NULL, NULL),
(40, 1, NULL, NULL),
(40, 2, NULL, NULL),
(40, 3, NULL, NULL),
(40, 4, NULL, NULL),
(40, 5, NULL, NULL),
(41, 1, NULL, NULL),
(41, 2, NULL, NULL),
(41, 3, NULL, NULL),
(41, 4, NULL, NULL),
(41, 5, NULL, NULL),
(42, 1, NULL, NULL),
(42, 2, NULL, NULL),
(42, 3, NULL, NULL),
(42, 4, NULL, NULL),
(42, 5, NULL, NULL),
(43, 1, NULL, NULL),
(43, 2, NULL, NULL),
(43, 3, NULL, NULL),
(43, 4, NULL, NULL),
(43, 5, NULL, NULL),
(44, 1, NULL, NULL),
(44, 2, NULL, NULL),
(44, 3, NULL, NULL),
(44, 4, NULL, NULL),
(44, 5, NULL, NULL),
(45, 1, NULL, NULL),
(45, 2, NULL, NULL),
(45, 3, NULL, NULL),
(45, 4, NULL, NULL),
(45, 5, NULL, NULL),
(46, 1, NULL, NULL),
(46, 2, NULL, NULL),
(46, 3, NULL, NULL),
(46, 4, NULL, NULL),
(46, 5, NULL, NULL),
(47, 1, NULL, NULL),
(47, 2, NULL, NULL),
(47, 3, NULL, NULL),
(47, 4, NULL, NULL),
(47, 5, NULL, NULL),
(48, 1, NULL, NULL),
(48, 2, NULL, NULL),
(48, 3, NULL, NULL),
(48, 4, NULL, NULL),
(48, 5, NULL, NULL),
(49, 1, NULL, NULL),
(49, 2, NULL, NULL),
(49, 3, NULL, NULL),
(49, 4, NULL, NULL),
(49, 5, NULL, NULL),
(50, 1, NULL, NULL),
(50, 2, NULL, NULL),
(50, 3, NULL, NULL),
(50, 4, NULL, NULL),
(50, 5, NULL, NULL),
(51, 1, NULL, NULL),
(51, 2, NULL, NULL),
(51, 3, NULL, NULL),
(51, 4, NULL, NULL),
(51, 5, NULL, NULL),
(52, 1, NULL, NULL),
(52, 2, NULL, NULL),
(52, 3, NULL, NULL),
(52, 4, NULL, NULL),
(52, 5, NULL, NULL),
(53, 1, 'Aluminium', '2016-08-05 17:31:17'),
(53, 2, 'Designs', '2016-08-02 11:41:38'),
(53, 3, 'Designs', '2016-08-02 11:41:38'),
(53, 4, 'Designs', '2016-08-02 11:41:38'),
(53, 5, 'Designs', '2016-08-02 11:41:38'),
(54, 1, NULL, NULL),
(54, 2, NULL, NULL),
(54, 3, NULL, NULL),
(54, 4, NULL, NULL),
(54, 5, NULL, NULL),
(55, 1, NULL, NULL),
(55, 2, NULL, NULL),
(55, 3, NULL, NULL),
(55, 4, NULL, NULL),
(55, 5, NULL, NULL),
(56, 1, NULL, NULL),
(56, 2, NULL, NULL),
(56, 3, NULL, NULL),
(56, 4, NULL, NULL),
(56, 5, NULL, NULL),
(57, 1, NULL, NULL),
(57, 2, NULL, NULL),
(57, 3, NULL, NULL),
(57, 4, NULL, NULL),
(57, 5, NULL, NULL),
(58, 1, '1470808778', '2016-08-09 13:59:38'),
(58, 2, '1470195698', '2016-08-02 11:41:38'),
(58, 3, '1470195698', '2016-08-02 11:41:38'),
(58, 4, '1470195698', '2016-08-02 11:41:38'),
(58, 5, '1470195698', '2016-08-02 11:41:38'),
(59, 1, NULL, NULL),
(59, 2, NULL, NULL),
(59, 3, NULL, NULL),
(59, 4, NULL, NULL),
(59, 5, NULL, NULL),
(60, 1, NULL, NULL),
(60, 2, NULL, NULL),
(60, 3, NULL, NULL),
(60, 4, NULL, NULL),
(60, 5, NULL, NULL),
(61, 1, NULL, NULL),
(61, 2, NULL, NULL),
(61, 3, NULL, NULL),
(61, 4, NULL, NULL),
(61, 5, NULL, NULL),
(62, 1, NULL, NULL),
(62, 2, NULL, NULL),
(62, 3, NULL, NULL),
(62, 4, NULL, NULL),
(62, 5, NULL, NULL),
(63, 1, NULL, NULL),
(63, 2, NULL, NULL),
(63, 3, NULL, NULL),
(63, 4, NULL, NULL),
(63, 5, NULL, NULL),
(64, 1, NULL, NULL),
(64, 2, NULL, NULL),
(64, 3, NULL, NULL),
(64, 4, NULL, NULL),
(64, 5, NULL, NULL),
(65, 1, NULL, NULL),
(65, 2, NULL, NULL),
(65, 3, NULL, NULL),
(65, 4, NULL, NULL),
(65, 5, NULL, NULL),
(66, 1, NULL, NULL),
(66, 2, NULL, NULL),
(66, 3, NULL, NULL),
(66, 4, NULL, NULL),
(66, 5, NULL, NULL),
(67, 1, 'No orders', '2016-08-02 23:05:40'),
(67, 2, 'No orders', '2016-08-02 23:05:40'),
(67, 3, 'No orders', '2016-08-02 23:05:40'),
(67, 4, 'No orders', '2016-08-02 23:05:40'),
(67, 5, 'No orders', '2016-08-02 23:05:40'),
(68, 1, NULL, NULL),
(68, 2, NULL, NULL),
(68, 3, NULL, NULL),
(68, 4, NULL, NULL),
(68, 5, NULL, NULL),
(69, 1, NULL, NULL),
(69, 2, NULL, NULL),
(69, 3, NULL, NULL),
(69, 4, NULL, NULL),
(69, 5, NULL, NULL),
(70, 1, NULL, NULL),
(70, 2, NULL, NULL),
(70, 3, NULL, NULL),
(70, 4, NULL, NULL),
(70, 5, NULL, NULL),
(71, 1, '1470279940', '2016-08-02 23:05:40'),
(71, 2, '1470279940', '2016-08-02 23:05:40'),
(71, 3, '1470279940', '2016-08-02 23:05:40'),
(71, 4, '1470279940', '2016-08-02 23:05:40'),
(71, 5, '1470279940', '2016-08-02 23:05:40'),
(72, 1, NULL, NULL),
(72, 2, NULL, NULL),
(72, 3, NULL, NULL),
(72, 4, NULL, NULL),
(72, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ps_configuration_lang`
--

CREATE TABLE `ps_configuration_lang` (
  `id_configuration` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_configuration_lang`
--

INSERT INTO `ps_configuration_lang` (`id_configuration`, `id_lang`, `value`, `date_upd`) VALUES
(41, 1, '#IN', NULL),
(41, 2, '#FA', NULL),
(44, 1, '#DE', NULL),
(44, 2, '#LI', NULL),
(46, 1, '#RE', NULL),
(46, 2, '#RE', NULL),
(52, 1, 'a|about|above|after|again|against|all|am|an|and|any|are|aren|as|at|be|because|been|before|being|below|between|both|but|by|can|cannot|could|couldn|did|didn|do|does|doesn|doing|don|down|during|each|few|for|from|further|had|hadn|has|hasn|have|haven|having|he|ll|her|here|hers|herself|him|himself|his|how|ve|if|in|into|is|isn|it|its|itself|let|me|more|most|mustn|my|myself|no|nor|not|of|off|on|once|only|or|other|ought|our|ours|ourselves|out|over|own|same|shan|she|should|shouldn|so|some|such|than|that|the|their|theirs|them|themselves|then|there|these|they|re|this|those|through|to|too|under|until|up|very|was|wasn|we|were|weren|what|when|where|which|while|who|whom|why|with|won|would|wouldn|you|your|yours|yourself|yourselves', NULL),
(52, 2, 'alors|au|aucuns|aussi|autre|avant|avec|avoir|bon|car|ce|cela|ces|ceux|chaque|ci|comme|comment|dans|des|du|dedans|dehors|depuis|deux|devrait|doit|donc|dos|droite|début|elle|elles|en|encore|essai|est|et|eu|fait|faites|fois|font|force|haut|hors|ici|il|ils|je|juste|la|le|les|leur|là|ma|maintenant|mais|mes|mine|moins|mon|mot|même|ni|nommés|notre|nous|nouveaux|ou|où|par|parce|parole|pas|personnes|peut|peu|pièce|plupart|pour|pourquoi|quand|que|quel|quelle|quelles|quels|qui|sa|sans|ses|seulement|si|sien|son|sont|sous|soyez|sujet|sur|ta|tandis|tellement|tels|tes|ton|tous|tout|trop|très|tu|valeur|voie|voient|vont|votre|vous|vu|ça|étaient|état|étions|été|être', NULL),
(74, 1, '0', NULL),
(74, 2, '0', NULL),
(80, 1, 'Dear Customer,\r\n\r\nRegards,\r\nCustomer service', NULL),
(80, 2, 'Chère cliente, cher client,\n\nCordialement,\nLe service client', NULL),
(288, 1, 'sale70.png', '2016-07-29 08:56:45'),
(288, 2, 'sale70.png', '2016-07-29 08:56:45'),
(289, 1, '', '2016-07-29 08:56:45'),
(289, 2, '', '2016-07-29 08:56:45'),
(290, 1, '', '2016-07-29 08:56:45'),
(290, 2, '', '2016-07-29 08:56:46');

-- --------------------------------------------------------

--
-- Structure de la table `ps_connections`
--

CREATE TABLE `ps_connections` (
  `id_connections` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_guest` int(10) UNSIGNED NOT NULL,
  `id_page` int(10) UNSIGNED NOT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_connections`
--

INSERT INTO `ps_connections` (`id_connections`, `id_shop_group`, `id_shop`, `id_guest`, `id_page`, `ip_address`, `date_add`, `http_referer`) VALUES
(1, 1, 1, 1, 1, 2130706433, '2016-07-29 08:56:09', 'http://www.prestashop.com'),
(2, 1, 1, 2, 1, 0, '2016-07-29 09:00:42', ''),
(3, 1, 1, 3, 1, 0, '2016-07-29 03:25:28', ''),
(4, 1, 1, 3, 2, 0, '2016-07-29 05:43:38', ''),
(5, 1, 1, 4, 1, 0, '2016-07-31 21:51:12', ''),
(6, 1, 1, 4, 3, 0, '2016-08-01 05:16:56', ''),
(7, 1, 1, 5, 1, 0, '2016-08-01 23:12:09', ''),
(8, 1, 1, 5, 4, 0, '2016-08-02 03:11:53', ''),
(9, 1, 1, 6, 1, 0, '2016-08-02 21:26:00', ''),
(10, 1, 1, 6, 1, 0, '2016-08-03 03:53:58', ''),
(11, 1, 1, 6, 1, 0, '2016-08-03 04:24:06', ''),
(12, 1, 1, 6, 1, 0, '2016-08-03 04:55:56', ''),
(13, 1, 1, 6, 1, 0, '2016-08-03 05:28:25', ''),
(14, 1, 1, 6, 1, 0, '2016-08-03 21:32:37', ''),
(15, 1, 1, 6, 1, 0, '2016-08-03 22:18:51', ''),
(16, 1, 1, 6, 2, 0, '2016-08-04 00:33:51', ''),
(17, 1, 1, 7, 1, 0, '2016-08-04 21:36:09', ''),
(18, 1, 1, 7, 2, 0, '2016-08-04 22:13:58', ''),
(19, 1, 1, 7, 2, 0, '2016-08-04 22:53:11', ''),
(20, 1, 1, 7, 5, 0, '2016-08-04 23:25:06', ''),
(21, 1, 1, 7, 2, 0, '2016-08-05 03:54:36', ''),
(22, 1, 1, 7, 2, 0, '2016-08-05 04:26:10', ''),
(23, 1, 1, 7, 2, 0, '2016-08-05 04:57:03', ''),
(24, 1, 1, 8, 5, 0, '2016-08-05 05:00:17', ''),
(25, 1, 1, 8, 2, 0, '2016-08-05 05:34:51', ''),
(26, 1, 1, 8, 2, 0, '2016-08-05 05:34:51', ''),
(27, 1, 1, 9, 1, 0, '2016-08-07 21:35:27', ''),
(28, 1, 1, 10, 1, 0, '2016-08-07 21:53:30', ''),
(29, 1, 1, 11, 1, 0, '2016-08-07 22:07:06', ''),
(30, 1, 1, 12, 1, 0, '2016-08-07 22:13:30', ''),
(31, 1, 1, 13, 1, 0, '2016-08-07 22:31:48', ''),
(32, 1, 1, 14, 1, 0, '2016-08-07 22:37:13', ''),
(33, 1, 1, 9, 2, 0, '2016-08-07 23:29:18', ''),
(34, 1, 1, 9, 5, 0, '2016-08-08 00:02:05', ''),
(35, 1, 1, 9, 5, 0, '2016-08-08 00:33:59', ''),
(36, 1, 1, 9, 5, 0, '2016-08-08 01:43:49', ''),
(37, 1, 1, 9, 2, 0, '2016-08-08 02:20:29', ''),
(38, 1, 1, 9, 2, 0, '2016-08-08 02:20:29', ''),
(39, 1, 1, 9, 2, 0, '2016-08-08 02:54:10', ''),
(40, 1, 1, 9, 2, 0, '2016-08-08 02:54:10', ''),
(41, 1, 1, 9, 2, 0, '2016-08-08 03:27:40', ''),
(42, 1, 1, 9, 2, 0, '2016-08-08 03:27:40', ''),
(43, 1, 1, 9, 2, 0, '2016-08-08 04:00:26', ''),
(44, 1, 1, 9, 2, 0, '2016-08-08 04:31:04', ''),
(45, 1, 1, 9, 2, 0, '2016-08-08 05:08:14', ''),
(46, 1, 1, 9, 2, 0, '2016-08-08 05:08:14', ''),
(47, 1, 1, 9, 2, 0, '2016-08-08 05:49:37', ''),
(48, 1, 1, 9, 2, 0, '2016-08-08 05:49:37', ''),
(49, 1, 1, 15, 5, 0, '2016-08-08 21:33:57', ''),
(50, 1, 1, 15, 5, 0, '2016-08-08 22:11:30', ''),
(51, 1, 1, 15, 5, 0, '2016-08-08 22:42:01', ''),
(52, 1, 1, 15, 5, 0, '2016-08-08 23:13:26', ''),
(53, 1, 1, 15, 5, 0, '2016-08-08 23:54:43', ''),
(54, 1, 1, 15, 1, 0, '2016-08-09 00:32:41', ''),
(55, 1, 1, 15, 2, 0, '2016-08-09 01:52:16', ''),
(56, 1, 1, 15, 2, 0, '2016-08-09 02:36:27', ''),
(57, 1, 1, 15, 2, 0, '2016-08-09 02:36:27', ''),
(58, 1, 1, 15, 2, 0, '2016-08-09 03:07:14', ''),
(59, 1, 1, 15, 2, 0, '2016-08-09 03:07:14', ''),
(60, 1, 1, 15, 2, 0, '2016-08-09 03:39:17', ''),
(61, 1, 1, 15, 2, 0, '2016-08-09 04:11:26', ''),
(62, 1, 1, 15, 2, 0, '2016-08-09 04:42:26', ''),
(63, 1, 1, 15, 2, 0, '2016-08-09 04:42:26', ''),
(64, 1, 1, 15, 2, 0, '2016-08-09 05:29:49', ''),
(65, 1, 1, 15, 2, 0, '2016-08-09 05:29:49', ''),
(66, 1, 1, 15, 2, 0, '2016-08-09 06:00:53', ''),
(67, 1, 1, 16, 1, 0, '2016-08-09 21:37:22', ''),
(68, 1, 1, 16, 2, 0, '2016-08-09 22:35:45', ''),
(69, 1, 1, 16, 2, 0, '2016-08-09 22:35:45', ''),
(70, 1, 1, 16, 2, 0, '2016-08-09 23:09:56', ''),
(71, 1, 1, 16, 2, 0, '2016-08-09 23:09:56', ''),
(72, 1, 1, 16, 2, 0, '2016-08-09 23:52:13', ''),
(73, 1, 1, 16, 2, 0, '2016-08-09 23:52:13', ''),
(74, 1, 1, 16, 5, 0, '2016-08-10 00:24:54', ''),
(75, 1, 1, 16, 5, 0, '2016-08-10 01:48:18', ''),
(76, 1, 1, 16, 5, 0, '2016-08-10 02:20:45', ''),
(77, 1, 1, 16, 5, 0, '2016-08-10 03:01:59', ''),
(78, 1, 1, 16, 5, 0, '2016-08-10 03:32:31', ''),
(79, 1, 1, 16, 5, 0, '2016-08-10 04:04:49', ''),
(80, 1, 1, 16, 5, 0, '2016-08-10 04:40:06', ''),
(81, 1, 1, 16, 5, 0, '2016-08-10 05:12:18', ''),
(82, 1, 1, 16, 5, 0, '2016-08-10 05:43:42', '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_connections_page`
--

CREATE TABLE `ps_connections_page` (
  `id_connections` int(10) UNSIGNED NOT NULL,
  `id_page` int(10) UNSIGNED NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_connections_source`
--

CREATE TABLE `ps_connections_source` (
  `id_connections_source` int(10) UNSIGNED NOT NULL,
  `id_connections` int(10) UNSIGNED NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_contact`
--

CREATE TABLE `ps_contact` (
  `id_contact` int(10) UNSIGNED NOT NULL,
  `email` varchar(128) NOT NULL,
  `customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint(2) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_contact`
--

INSERT INTO `ps_contact` (`id_contact`, `email`, `customer_service`, `position`) VALUES
(1, 'admin@admin.com', 1, 0),
(2, 'admin@admin.com', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_contact_lang`
--

CREATE TABLE `ps_contact_lang` (
  `id_contact` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_contact_lang`
--

INSERT INTO `ps_contact_lang` (`id_contact`, `id_lang`, `name`, `description`) VALUES
(1, 1, 'Webmaster', 'If a technical problem occurs on this website'),
(1, 2, 'Webmaster', 'If a technical problem occurs on this website'),
(1, 3, 'Webmaster', 'If a technical problem occurs on this website'),
(1, 4, 'Webmaster', 'If a technical problem occurs on this website'),
(1, 5, 'Webmaster', 'If a technical problem occurs on this website'),
(2, 1, 'Customer service', 'For any question about a product, an order'),
(2, 2, 'Customer service', 'For any question about a product, an order'),
(2, 3, 'Customer service', 'For any question about a product, an order'),
(2, 4, 'Customer service', 'For any question about a product, an order'),
(2, 5, 'Customer service', 'For any question about a product, an order');

-- --------------------------------------------------------

--
-- Structure de la table `ps_contact_shop`
--

CREATE TABLE `ps_contact_shop` (
  `id_contact` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_contact_shop`
--

INSERT INTO `ps_contact_shop` (`id_contact`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_country`
--

CREATE TABLE `ps_country` (
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_zone` int(10) UNSIGNED NOT NULL,
  `id_currency` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `iso_code` varchar(3) NOT NULL,
  `call_prefix` int(10) NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  `need_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `zip_code_format` varchar(12) NOT NULL DEFAULT '',
  `display_tax_label` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_country`
--

INSERT INTO `ps_country` (`id_country`, `id_zone`, `id_currency`, `iso_code`, `call_prefix`, `active`, `contains_states`, `need_identification_number`, `need_zip_code`, `zip_code_format`, `display_tax_label`) VALUES
(1, 1, 0, 'DE', 49, 1, 0, 0, 1, 'NNNNN', 1),
(2, 1, 0, 'AT', 43, 1, 0, 0, 1, 'NNNN', 1),
(3, 1, 0, 'BE', 32, 1, 0, 0, 1, 'NNNN', 1),
(4, 2, 0, 'CA', 1, 1, 1, 0, 1, 'LNL NLN', 0),
(5, 3, 0, 'CN', 86, 1, 0, 0, 1, 'NNNNNN', 1),
(6, 1, 0, 'ES', 34, 1, 0, 1, 1, 'NNNNN', 1),
(7, 1, 0, 'FI', 358, 1, 0, 0, 1, 'NNNNN', 1),
(8, 1, 0, 'FR', 33, 1, 0, 0, 1, 'NNNNN', 1),
(9, 1, 0, 'GR', 30, 1, 0, 0, 1, 'NNNNN', 1),
(10, 1, 0, 'IT', 39, 1, 1, 0, 1, 'NNNNN', 1),
(11, 3, 0, 'JP', 81, 1, 1, 0, 1, 'NNN-NNNN', 1),
(12, 1, 0, 'LU', 352, 1, 0, 0, 1, 'NNNN', 1),
(13, 1, 0, 'NL', 31, 1, 0, 0, 1, 'NNNN LL', 1),
(14, 1, 0, 'PL', 48, 1, 0, 0, 1, 'NN-NNN', 1),
(15, 1, 0, 'PT', 351, 1, 0, 0, 1, 'NNNN-NNN', 1),
(16, 1, 0, 'CZ', 420, 1, 0, 0, 1, 'NNN NN', 1),
(17, 1, 0, 'GB', 44, 1, 0, 0, 1, '', 1),
(18, 1, 0, 'SE', 46, 1, 0, 0, 1, 'NNN NN', 1),
(19, 7, 0, 'CH', 41, 1, 0, 0, 1, 'NNNN', 1),
(20, 1, 0, 'DK', 45, 1, 0, 0, 1, 'NNNN', 1),
(21, 2, 0, 'US', 1, 1, 1, 0, 1, 'NNNNN', 0),
(22, 3, 0, 'HK', 852, 1, 0, 0, 0, '', 1),
(23, 7, 0, 'NO', 47, 1, 0, 0, 1, 'NNNN', 1),
(24, 5, 0, 'AU', 61, 1, 0, 0, 1, 'NNNN', 1),
(25, 3, 0, 'SG', 65, 1, 0, 0, 1, 'NNNNNN', 1),
(26, 1, 0, 'IE', 353, 1, 0, 0, 0, '', 1),
(27, 5, 0, 'NZ', 64, 1, 0, 0, 1, 'NNNN', 1),
(28, 3, 0, 'KR', 82, 1, 0, 0, 1, 'NNN-NNN', 1),
(29, 3, 0, 'IL', 972, 1, 0, 0, 1, 'NNNNNNN', 1),
(30, 4, 0, 'ZA', 27, 1, 0, 0, 1, 'NNNN', 1),
(31, 4, 0, 'NG', 234, 1, 0, 0, 1, '', 1),
(32, 4, 0, 'CI', 225, 1, 0, 0, 1, '', 1),
(33, 4, 0, 'TG', 228, 1, 0, 0, 1, '', 1),
(34, 6, 0, 'BO', 591, 1, 0, 0, 1, '', 1),
(35, 4, 0, 'MU', 230, 1, 0, 0, 1, '', 1),
(36, 1, 0, 'RO', 40, 1, 0, 0, 1, 'NNNNNN', 1),
(37, 1, 0, 'SK', 421, 1, 0, 0, 1, 'NNN NN', 1),
(38, 4, 0, 'DZ', 213, 1, 0, 0, 1, 'NNNNN', 1),
(39, 2, 0, 'AS', 0, 1, 0, 0, 1, '', 1),
(40, 7, 0, 'AD', 376, 1, 0, 0, 1, 'CNNN', 1),
(41, 4, 0, 'AO', 244, 1, 0, 0, 0, '', 1),
(42, 8, 0, 'AI', 0, 1, 0, 0, 1, '', 1),
(43, 2, 0, 'AG', 0, 1, 0, 0, 1, '', 1),
(44, 6, 0, 'AR', 54, 1, 1, 0, 1, 'LNNNN', 1),
(45, 3, 0, 'AM', 374, 1, 0, 0, 1, 'NNNN', 1),
(46, 8, 0, 'AW', 297, 1, 0, 0, 1, '', 1),
(47, 3, 0, 'AZ', 994, 1, 0, 0, 1, 'CNNNN', 1),
(48, 2, 0, 'BS', 0, 1, 0, 0, 1, '', 1),
(49, 3, 0, 'BH', 973, 1, 0, 0, 1, '', 1),
(50, 3, 0, 'BD', 880, 1, 0, 0, 1, 'NNNN', 1),
(51, 2, 0, 'BB', 0, 1, 0, 0, 1, 'CNNNNN', 1),
(52, 7, 0, 'BY', 0, 1, 0, 0, 1, 'NNNNNN', 1),
(53, 8, 0, 'BZ', 501, 1, 0, 0, 0, '', 1),
(54, 4, 0, 'BJ', 229, 1, 0, 0, 0, '', 1),
(55, 2, 0, 'BM', 0, 1, 0, 0, 1, '', 1),
(56, 3, 0, 'BT', 975, 1, 0, 0, 1, '', 1),
(57, 4, 0, 'BW', 267, 1, 0, 0, 1, '', 1),
(58, 6, 0, 'BR', 55, 1, 0, 0, 1, 'NNNNN-NNN', 1),
(59, 3, 0, 'BN', 673, 1, 0, 0, 1, 'LLNNNN', 1),
(60, 4, 0, 'BF', 226, 1, 0, 0, 1, '', 1),
(61, 3, 0, 'MM', 95, 1, 0, 0, 1, '', 1),
(62, 4, 0, 'BI', 257, 1, 0, 0, 1, '', 1),
(63, 3, 0, 'KH', 855, 1, 0, 0, 1, 'NNNNN', 1),
(64, 4, 0, 'CM', 237, 1, 0, 0, 1, '', 1),
(65, 4, 0, 'CV', 238, 1, 0, 0, 1, 'NNNN', 1),
(66, 4, 0, 'CF', 236, 1, 0, 0, 1, '', 1),
(67, 4, 0, 'TD', 235, 1, 0, 0, 1, '', 1),
(68, 6, 0, 'CL', 56, 1, 0, 0, 1, 'NNN-NNNN', 1),
(69, 6, 0, 'CO', 57, 1, 0, 0, 1, 'NNNNNN', 1),
(70, 4, 0, 'KM', 269, 1, 0, 0, 1, '', 1),
(71, 4, 0, 'CD', 242, 1, 0, 0, 1, '', 1),
(72, 4, 0, 'CG', 243, 1, 0, 0, 1, '', 1),
(73, 8, 0, 'CR', 506, 1, 0, 0, 1, 'NNNNN', 1),
(74, 7, 0, 'HR', 385, 1, 0, 0, 1, 'NNNNN', 1),
(75, 8, 0, 'CU', 53, 1, 0, 0, 1, '', 1),
(76, 1, 0, 'CY', 357, 1, 0, 0, 1, 'NNNN', 1),
(77, 4, 0, 'DJ', 253, 1, 0, 0, 1, '', 1),
(78, 8, 0, 'DM', 0, 1, 0, 0, 1, '', 1),
(79, 8, 0, 'DO', 0, 1, 0, 0, 1, '', 1),
(80, 3, 0, 'TL', 670, 1, 0, 0, 1, '', 1),
(81, 6, 0, 'EC', 593, 1, 0, 0, 1, 'CNNNNNN', 1),
(82, 4, 0, 'EG', 20, 1, 0, 0, 0, '', 1),
(83, 8, 0, 'SV', 503, 1, 0, 0, 1, '', 1),
(84, 4, 0, 'GQ', 240, 1, 0, 0, 1, '', 1),
(85, 4, 0, 'ER', 291, 1, 0, 0, 1, '', 1),
(86, 1, 0, 'EE', 372, 1, 0, 0, 1, 'NNNNN', 1),
(87, 4, 0, 'ET', 251, 1, 0, 0, 1, '', 1),
(88, 8, 0, 'FK', 0, 1, 0, 0, 1, 'LLLL NLL', 1),
(89, 7, 0, 'FO', 298, 1, 0, 0, 1, '', 1),
(90, 5, 0, 'FJ', 679, 1, 0, 0, 1, '', 1),
(91, 4, 0, 'GA', 241, 1, 0, 0, 1, '', 1),
(92, 4, 0, 'GM', 220, 1, 0, 0, 1, '', 1),
(93, 3, 0, 'GE', 995, 1, 0, 0, 1, 'NNNN', 1),
(94, 4, 0, 'GH', 233, 1, 0, 0, 1, '', 1),
(95, 8, 0, 'GD', 0, 1, 0, 0, 1, '', 1),
(96, 7, 0, 'GL', 299, 1, 0, 0, 1, '', 1),
(97, 7, 0, 'GI', 350, 1, 0, 0, 1, '', 1),
(98, 8, 0, 'GP', 590, 1, 0, 0, 1, '', 1),
(99, 5, 0, 'GU', 0, 1, 0, 0, 1, '', 1),
(100, 8, 0, 'GT', 502, 1, 0, 0, 1, '', 1),
(101, 7, 0, 'GG', 0, 1, 0, 0, 1, 'LLN NLL', 1),
(102, 4, 0, 'GN', 224, 1, 0, 0, 1, '', 1),
(103, 4, 0, 'GW', 245, 1, 0, 0, 1, '', 1),
(104, 6, 0, 'GY', 592, 1, 0, 0, 1, '', 1),
(105, 8, 0, 'HT', 509, 1, 0, 0, 1, '', 1),
(106, 5, 0, 'HM', 0, 1, 0, 0, 1, '', 1),
(107, 7, 0, 'VA', 379, 1, 0, 0, 1, 'NNNNN', 1),
(108, 8, 0, 'HN', 504, 1, 0, 0, 1, '', 1),
(109, 7, 0, 'IS', 354, 1, 0, 0, 1, 'NNN', 1),
(110, 3, 0, 'IN', 91, 1, 0, 0, 1, 'NNN NNN', 1),
(111, 3, 0, 'ID', 62, 1, 1, 0, 1, 'NNNNN', 1),
(112, 3, 0, 'IR', 98, 1, 0, 0, 1, 'NNNNN-NNNNN', 1),
(113, 3, 0, 'IQ', 964, 1, 0, 0, 1, 'NNNNN', 1),
(114, 7, 0, 'IM', 0, 1, 0, 0, 1, 'CN NLL', 1),
(115, 8, 0, 'JM', 0, 1, 0, 0, 1, '', 1),
(116, 7, 0, 'JE', 0, 1, 0, 0, 1, 'CN NLL', 1),
(117, 3, 0, 'JO', 962, 1, 0, 0, 1, '', 1),
(118, 3, 0, 'KZ', 7, 1, 0, 0, 1, 'NNNNNN', 1),
(119, 4, 0, 'KE', 254, 1, 0, 0, 1, '', 1),
(120, 5, 0, 'KI', 686, 1, 0, 0, 1, '', 1),
(121, 3, 0, 'KP', 850, 1, 0, 0, 1, '', 1),
(122, 3, 0, 'KW', 965, 1, 0, 0, 1, '', 1),
(123, 3, 0, 'KG', 996, 1, 0, 0, 1, '', 1),
(124, 3, 0, 'LA', 856, 1, 0, 0, 1, '', 1),
(125, 1, 0, 'LV', 371, 1, 0, 0, 1, 'C-NNNN', 1),
(126, 3, 0, 'LB', 961, 1, 0, 0, 1, '', 1),
(127, 4, 0, 'LS', 266, 1, 0, 0, 1, '', 1),
(128, 4, 0, 'LR', 231, 1, 0, 0, 1, '', 1),
(129, 4, 0, 'LY', 218, 1, 0, 0, 1, '', 1),
(130, 1, 0, 'LI', 423, 1, 0, 0, 1, 'NNNN', 1),
(131, 1, 0, 'LT', 370, 1, 0, 0, 1, 'NNNNN', 1),
(132, 3, 0, 'MO', 853, 1, 0, 0, 0, '', 1),
(133, 7, 0, 'MK', 389, 1, 0, 0, 1, '', 1),
(134, 4, 0, 'MG', 261, 1, 0, 0, 1, '', 1),
(135, 4, 0, 'MW', 265, 1, 0, 0, 1, '', 1),
(136, 3, 0, 'MY', 60, 1, 0, 0, 1, 'NNNNN', 1),
(137, 3, 0, 'MV', 960, 1, 0, 0, 1, '', 1),
(138, 4, 0, 'ML', 223, 1, 0, 0, 1, '', 1),
(139, 1, 0, 'MT', 356, 1, 0, 0, 1, 'LLL NNNN', 1),
(140, 5, 0, 'MH', 692, 1, 0, 0, 1, '', 1),
(141, 8, 0, 'MQ', 596, 1, 0, 0, 1, '', 1),
(142, 4, 0, 'MR', 222, 1, 0, 0, 1, '', 1),
(143, 1, 0, 'HU', 36, 1, 0, 0, 1, 'NNNN', 1),
(144, 4, 0, 'YT', 262, 1, 0, 0, 1, '', 1),
(145, 2, 0, 'MX', 52, 1, 1, 1, 1, 'NNNNN', 1),
(146, 5, 0, 'FM', 691, 1, 0, 0, 1, '', 1),
(147, 7, 0, 'MD', 373, 1, 0, 0, 1, 'C-NNNN', 1),
(148, 7, 0, 'MC', 377, 1, 0, 0, 1, '980NN', 1),
(149, 3, 0, 'MN', 976, 1, 0, 0, 1, '', 1),
(150, 7, 0, 'ME', 382, 1, 0, 0, 1, 'NNNNN', 1),
(151, 8, 0, 'MS', 0, 1, 0, 0, 1, '', 1),
(152, 4, 0, 'MA', 212, 1, 0, 0, 1, 'NNNNN', 1),
(153, 4, 0, 'MZ', 258, 1, 0, 0, 1, '', 1),
(154, 4, 0, 'NA', 264, 1, 0, 0, 1, '', 1),
(155, 5, 0, 'NR', 674, 1, 0, 0, 1, '', 1),
(156, 3, 0, 'NP', 977, 1, 0, 0, 1, '', 1),
(157, 8, 0, 'AN', 599, 1, 0, 0, 1, '', 1),
(158, 5, 0, 'NC', 687, 1, 0, 0, 1, '', 1),
(159, 8, 0, 'NI', 505, 1, 0, 0, 1, 'NNNNNN', 1),
(160, 4, 0, 'NE', 227, 1, 0, 0, 1, '', 1),
(161, 5, 0, 'NU', 683, 1, 0, 0, 1, '', 1),
(162, 5, 0, 'NF', 0, 1, 0, 0, 1, '', 1),
(163, 5, 0, 'MP', 0, 1, 0, 0, 1, '', 1),
(164, 3, 0, 'OM', 968, 1, 0, 0, 1, '', 1),
(165, 3, 0, 'PK', 92, 1, 0, 0, 1, '', 1),
(166, 5, 0, 'PW', 680, 1, 0, 0, 1, '', 1),
(167, 3, 0, 'PS', 0, 1, 0, 0, 1, '', 1),
(168, 8, 0, 'PA', 507, 1, 0, 0, 1, 'NNNNNN', 1),
(169, 5, 0, 'PG', 675, 1, 0, 0, 1, '', 1),
(170, 6, 0, 'PY', 595, 1, 0, 0, 1, '', 1),
(171, 6, 0, 'PE', 51, 1, 0, 0, 1, '', 1),
(172, 3, 0, 'PH', 63, 1, 0, 0, 1, 'NNNN', 1),
(173, 5, 0, 'PN', 0, 1, 0, 0, 1, 'LLLL NLL', 1),
(174, 8, 0, 'PR', 0, 1, 0, 0, 1, 'NNNNN', 1),
(175, 3, 0, 'QA', 974, 1, 0, 0, 1, '', 1),
(176, 4, 0, 'RE', 262, 1, 0, 0, 1, '', 1),
(177, 7, 0, 'RU', 7, 1, 0, 0, 1, 'NNNNNN', 1),
(178, 4, 0, 'RW', 250, 1, 0, 0, 1, '', 1),
(179, 8, 0, 'BL', 0, 1, 0, 0, 1, '', 1),
(180, 8, 0, 'KN', 0, 1, 0, 0, 1, '', 1),
(181, 8, 0, 'LC', 0, 1, 0, 0, 1, '', 1),
(182, 8, 0, 'MF', 0, 1, 0, 0, 1, '', 1),
(183, 8, 0, 'PM', 508, 1, 0, 0, 1, '', 1),
(184, 8, 0, 'VC', 0, 1, 0, 0, 1, '', 1),
(185, 5, 0, 'WS', 685, 1, 0, 0, 1, '', 1),
(186, 7, 0, 'SM', 378, 1, 0, 0, 1, 'NNNNN', 1),
(187, 4, 0, 'ST', 239, 1, 0, 0, 1, '', 1),
(188, 3, 0, 'SA', 966, 1, 0, 0, 1, '', 1),
(189, 4, 0, 'SN', 221, 1, 0, 0, 1, '', 1),
(190, 7, 0, 'RS', 381, 1, 0, 0, 1, 'NNNNN', 1),
(191, 4, 0, 'SC', 248, 1, 0, 0, 1, '', 1),
(192, 4, 0, 'SL', 232, 1, 0, 0, 1, '', 1),
(193, 1, 0, 'SI', 386, 1, 0, 0, 1, 'C-NNNN', 1),
(194, 5, 0, 'SB', 677, 1, 0, 0, 1, '', 1),
(195, 4, 0, 'SO', 252, 1, 0, 0, 1, '', 1),
(196, 8, 0, 'GS', 0, 1, 0, 0, 1, 'LLLL NLL', 1),
(197, 3, 0, 'LK', 94, 1, 0, 0, 1, 'NNNNN', 1),
(198, 4, 0, 'SD', 249, 1, 0, 0, 1, '', 1),
(199, 8, 0, 'SR', 597, 1, 0, 0, 1, '', 1),
(200, 7, 0, 'SJ', 0, 1, 0, 0, 1, '', 1),
(201, 4, 0, 'SZ', 268, 1, 0, 0, 1, '', 1),
(202, 3, 0, 'SY', 963, 1, 0, 0, 1, '', 1),
(203, 3, 0, 'TW', 886, 1, 0, 0, 1, 'NNNNN', 1),
(204, 3, 0, 'TJ', 992, 1, 0, 0, 1, '', 1),
(205, 4, 0, 'TZ', 255, 1, 0, 0, 1, '', 1),
(206, 3, 0, 'TH', 66, 1, 0, 0, 1, 'NNNNN', 1),
(207, 5, 0, 'TK', 690, 1, 0, 0, 1, '', 1),
(208, 5, 0, 'TO', 676, 1, 0, 0, 1, '', 1),
(209, 6, 0, 'TT', 0, 1, 0, 0, 1, '', 1),
(210, 4, 0, 'TN', 216, 1, 0, 0, 1, '', 1),
(211, 7, 0, 'TR', 90, 1, 0, 0, 1, 'NNNNN', 1),
(212, 3, 0, 'TM', 993, 1, 0, 0, 1, '', 1),
(213, 8, 0, 'TC', 0, 1, 0, 0, 1, 'LLLL NLL', 1),
(214, 5, 0, 'TV', 688, 1, 0, 0, 1, '', 1),
(215, 4, 0, 'UG', 256, 1, 0, 0, 1, '', 1),
(216, 1, 0, 'UA', 380, 1, 0, 0, 1, 'NNNNN', 1),
(217, 3, 0, 'AE', 971, 1, 0, 0, 1, '', 1),
(218, 6, 0, 'UY', 598, 1, 0, 0, 1, '', 1),
(219, 3, 0, 'UZ', 998, 1, 0, 0, 1, '', 1),
(220, 5, 0, 'VU', 678, 1, 0, 0, 1, '', 1),
(221, 6, 0, 'VE', 58, 1, 0, 0, 1, '', 1),
(222, 3, 0, 'VN', 84, 1, 0, 0, 1, 'NNNNNN', 1),
(223, 2, 0, 'VG', 0, 1, 0, 0, 1, 'CNNNN', 1),
(224, 2, 0, 'VI', 0, 1, 0, 0, 1, '', 1),
(225, 5, 0, 'WF', 681, 1, 0, 0, 1, '', 1),
(226, 4, 0, 'EH', 0, 1, 0, 0, 1, '', 1),
(227, 3, 0, 'YE', 967, 1, 0, 0, 1, '', 1),
(228, 4, 0, 'ZM', 260, 1, 0, 0, 1, '', 1),
(229, 4, 0, 'ZW', 263, 1, 0, 0, 1, '', 1),
(230, 7, 0, 'AL', 355, 1, 0, 0, 1, 'NNNN', 1),
(231, 3, 0, 'AF', 93, 1, 0, 0, 0, '', 1),
(232, 5, 0, 'AQ', 0, 1, 0, 0, 1, '', 1),
(233, 1, 0, 'BA', 387, 1, 0, 0, 1, '', 1),
(234, 5, 0, 'BV', 0, 1, 0, 0, 1, '', 1),
(235, 5, 0, 'IO', 0, 1, 0, 0, 1, 'LLLL NLL', 1),
(236, 1, 0, 'BG', 359, 1, 0, 0, 1, 'NNNN', 1),
(237, 8, 0, 'KY', 0, 1, 0, 0, 1, '', 1),
(238, 3, 0, 'CX', 0, 1, 0, 0, 1, '', 1),
(239, 3, 0, 'CC', 0, 1, 0, 0, 1, '', 1),
(240, 5, 0, 'CK', 682, 1, 0, 0, 1, '', 1),
(241, 6, 0, 'GF', 594, 1, 0, 0, 1, '', 1),
(242, 5, 0, 'PF', 689, 1, 0, 0, 1, '', 1),
(243, 5, 0, 'TF', 0, 1, 0, 0, 1, '', 1),
(244, 7, 0, 'AX', 0, 1, 0, 0, 1, 'NNNNN', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_country_lang`
--

CREATE TABLE `ps_country_lang` (
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_country_lang`
--

INSERT INTO `ps_country_lang` (`id_country`, `id_lang`, `name`) VALUES
(1, 1, 'Germany'),
(1, 2, 'Germany'),
(1, 3, 'Germany'),
(1, 4, 'Germany'),
(1, 5, 'Germany'),
(2, 1, 'Austria'),
(2, 2, 'Austria'),
(2, 3, 'Austria'),
(2, 4, 'Austria'),
(2, 5, 'Austria'),
(3, 1, 'Belgium'),
(3, 2, 'Belgium'),
(3, 3, 'Belgium'),
(3, 4, 'Belgium'),
(3, 5, 'Belgium'),
(4, 1, 'Canada'),
(4, 2, 'Canada'),
(4, 3, 'Canada'),
(4, 4, 'Canada'),
(4, 5, 'Canada'),
(5, 1, 'China'),
(5, 2, 'China'),
(5, 3, 'China'),
(5, 4, 'China'),
(5, 5, 'China'),
(6, 1, 'Spain'),
(6, 2, 'Spain'),
(6, 3, 'Spain'),
(6, 4, 'Spain'),
(6, 5, 'Spain'),
(7, 1, 'Finland'),
(7, 2, 'Finland'),
(7, 3, 'Finland'),
(7, 4, 'Finland'),
(7, 5, 'Finland'),
(8, 1, 'France'),
(8, 2, 'France'),
(8, 3, 'France'),
(8, 4, 'France'),
(8, 5, 'France'),
(9, 1, 'Greece'),
(9, 2, 'Greece'),
(9, 3, 'Greece'),
(9, 4, 'Greece'),
(9, 5, 'Greece'),
(10, 1, 'Italy'),
(10, 2, 'Italy'),
(10, 3, 'Italy'),
(10, 4, 'Italy'),
(10, 5, 'Italy'),
(11, 1, 'Japan'),
(11, 2, 'Japan'),
(11, 3, 'Japan'),
(11, 4, 'Japan'),
(11, 5, 'Japan'),
(12, 1, 'Luxemburg'),
(12, 2, 'Luxemburg'),
(12, 3, 'Luxemburg'),
(12, 4, 'Luxemburg'),
(12, 5, 'Luxemburg'),
(13, 1, 'Netherlands'),
(13, 2, 'Netherlands'),
(13, 3, 'Netherlands'),
(13, 4, 'Netherlands'),
(13, 5, 'Netherlands'),
(14, 1, 'Poland'),
(14, 2, 'Poland'),
(14, 3, 'Poland'),
(14, 4, 'Poland'),
(14, 5, 'Poland'),
(15, 1, 'Portugal'),
(15, 2, 'Portugal'),
(15, 3, 'Portugal'),
(15, 4, 'Portugal'),
(15, 5, 'Portugal'),
(16, 1, 'Czech Republic'),
(16, 2, 'Czech Republic'),
(16, 3, 'Czech Republic'),
(16, 4, 'Czech Republic'),
(16, 5, 'Czech Republic'),
(17, 1, 'United Kingdom'),
(17, 2, 'United Kingdom'),
(17, 3, 'United Kingdom'),
(17, 4, 'United Kingdom'),
(17, 5, 'United Kingdom'),
(18, 1, 'Sweden'),
(18, 2, 'Sweden'),
(18, 3, 'Sweden'),
(18, 4, 'Sweden'),
(18, 5, 'Sweden'),
(19, 1, 'Switzerland'),
(19, 2, 'Switzerland'),
(19, 3, 'Switzerland'),
(19, 4, 'Switzerland'),
(19, 5, 'Switzerland'),
(20, 1, 'Denmark'),
(20, 2, 'Denmark'),
(20, 3, 'Denmark'),
(20, 4, 'Denmark'),
(20, 5, 'Denmark'),
(21, 1, 'United States'),
(21, 2, 'United States'),
(21, 3, 'United States'),
(21, 4, 'United States'),
(21, 5, 'United States'),
(22, 1, 'HongKong'),
(22, 2, 'HongKong'),
(22, 3, 'HongKong'),
(22, 4, 'HongKong'),
(22, 5, 'HongKong'),
(23, 1, 'Norway'),
(23, 2, 'Norway'),
(23, 3, 'Norway'),
(23, 4, 'Norway'),
(23, 5, 'Norway'),
(24, 1, 'Australia'),
(24, 2, 'Australia'),
(24, 3, 'Australia'),
(24, 4, 'Australia'),
(24, 5, 'Australia'),
(25, 1, 'Singapore'),
(25, 2, 'Singapore'),
(25, 3, 'Singapore'),
(25, 4, 'Singapore'),
(25, 5, 'Singapore'),
(26, 1, 'Ireland'),
(26, 2, 'Ireland'),
(26, 3, 'Ireland'),
(26, 4, 'Ireland'),
(26, 5, 'Ireland'),
(27, 1, 'New Zealand'),
(27, 2, 'New Zealand'),
(27, 3, 'New Zealand'),
(27, 4, 'New Zealand'),
(27, 5, 'New Zealand'),
(28, 1, 'South Korea'),
(28, 2, 'South Korea'),
(28, 3, 'South Korea'),
(28, 4, 'South Korea'),
(28, 5, 'South Korea'),
(29, 1, 'Israel'),
(29, 2, 'Israel'),
(29, 3, 'Israel'),
(29, 4, 'Israel'),
(29, 5, 'Israel'),
(30, 1, 'South Africa'),
(30, 2, 'South Africa'),
(30, 3, 'South Africa'),
(30, 4, 'South Africa'),
(30, 5, 'South Africa'),
(31, 1, 'Nigeria'),
(31, 2, 'Nigeria'),
(31, 3, 'Nigeria'),
(31, 4, 'Nigeria'),
(31, 5, 'Nigeria'),
(32, 1, 'Ivory Coast'),
(32, 2, 'Ivory Coast'),
(32, 3, 'Ivory Coast'),
(32, 4, 'Ivory Coast'),
(32, 5, 'Ivory Coast'),
(33, 1, 'Togo'),
(33, 2, 'Togo'),
(33, 3, 'Togo'),
(33, 4, 'Togo'),
(33, 5, 'Togo'),
(34, 1, 'Bolivia'),
(34, 2, 'Bolivia'),
(34, 3, 'Bolivia'),
(34, 4, 'Bolivia'),
(34, 5, 'Bolivia'),
(35, 1, 'Mauritius'),
(35, 2, 'Mauritius'),
(35, 3, 'Mauritius'),
(35, 4, 'Mauritius'),
(35, 5, 'Mauritius'),
(36, 1, 'Romania'),
(36, 2, 'Romania'),
(36, 3, 'Romania'),
(36, 4, 'Romania'),
(36, 5, 'Romania'),
(37, 1, 'Slovakia'),
(37, 2, 'Slovakia'),
(37, 3, 'Slovakia'),
(37, 4, 'Slovakia'),
(37, 5, 'Slovakia'),
(38, 1, 'Algeria'),
(38, 2, 'Algeria'),
(38, 3, 'Algeria'),
(38, 4, 'Algeria'),
(38, 5, 'Algeria'),
(39, 1, 'American Samoa'),
(39, 2, 'American Samoa'),
(39, 3, 'American Samoa'),
(39, 4, 'American Samoa'),
(39, 5, 'American Samoa'),
(40, 1, 'Andorra'),
(40, 2, 'Andorra'),
(40, 3, 'Andorra'),
(40, 4, 'Andorra'),
(40, 5, 'Andorra'),
(41, 1, 'Angola'),
(41, 2, 'Angola'),
(41, 3, 'Angola'),
(41, 4, 'Angola'),
(41, 5, 'Angola'),
(42, 1, 'Anguilla'),
(42, 2, 'Anguilla'),
(42, 3, 'Anguilla'),
(42, 4, 'Anguilla'),
(42, 5, 'Anguilla'),
(43, 1, 'Antigua and Barbuda'),
(43, 2, 'Antigua and Barbuda'),
(43, 3, 'Antigua and Barbuda'),
(43, 4, 'Antigua and Barbuda'),
(43, 5, 'Antigua and Barbuda'),
(44, 1, 'Argentina'),
(44, 2, 'Argentina'),
(44, 3, 'Argentina'),
(44, 4, 'Argentina'),
(44, 5, 'Argentina'),
(45, 1, 'Armenia'),
(45, 2, 'Armenia'),
(45, 3, 'Armenia'),
(45, 4, 'Armenia'),
(45, 5, 'Armenia'),
(46, 1, 'Aruba'),
(46, 2, 'Aruba'),
(46, 3, 'Aruba'),
(46, 4, 'Aruba'),
(46, 5, 'Aruba'),
(47, 1, 'Azerbaijan'),
(47, 2, 'Azerbaijan'),
(47, 3, 'Azerbaijan'),
(47, 4, 'Azerbaijan'),
(47, 5, 'Azerbaijan'),
(48, 1, 'Bahamas'),
(48, 2, 'Bahamas'),
(48, 3, 'Bahamas'),
(48, 4, 'Bahamas'),
(48, 5, 'Bahamas'),
(49, 1, 'Bahrain'),
(49, 2, 'Bahrain'),
(49, 3, 'Bahrain'),
(49, 4, 'Bahrain'),
(49, 5, 'Bahrain'),
(50, 1, 'Bangladesh'),
(50, 2, 'Bangladesh'),
(50, 3, 'Bangladesh'),
(50, 4, 'Bangladesh'),
(50, 5, 'Bangladesh'),
(51, 1, 'Barbados'),
(51, 2, 'Barbados'),
(51, 3, 'Barbados'),
(51, 4, 'Barbados'),
(51, 5, 'Barbados'),
(52, 1, 'Belarus'),
(52, 2, 'Belarus'),
(52, 3, 'Belarus'),
(52, 4, 'Belarus'),
(52, 5, 'Belarus'),
(53, 1, 'Belize'),
(53, 2, 'Belize'),
(53, 3, 'Belize'),
(53, 4, 'Belize'),
(53, 5, 'Belize'),
(54, 1, 'Benin'),
(54, 2, 'Benin'),
(54, 3, 'Benin'),
(54, 4, 'Benin'),
(54, 5, 'Benin'),
(55, 1, 'Bermuda'),
(55, 2, 'Bermuda'),
(55, 3, 'Bermuda'),
(55, 4, 'Bermuda'),
(55, 5, 'Bermuda'),
(56, 1, 'Bhutan'),
(56, 2, 'Bhutan'),
(56, 3, 'Bhutan'),
(56, 4, 'Bhutan'),
(56, 5, 'Bhutan'),
(57, 1, 'Botswana'),
(57, 2, 'Botswana'),
(57, 3, 'Botswana'),
(57, 4, 'Botswana'),
(57, 5, 'Botswana'),
(58, 1, 'Brazil'),
(58, 2, 'Brazil'),
(58, 3, 'Brazil'),
(58, 4, 'Brazil'),
(58, 5, 'Brazil'),
(59, 1, 'Brunei'),
(59, 2, 'Brunei'),
(59, 3, 'Brunei'),
(59, 4, 'Brunei'),
(59, 5, 'Brunei'),
(60, 1, 'Burkina Faso'),
(60, 2, 'Burkina Faso'),
(60, 3, 'Burkina Faso'),
(60, 4, 'Burkina Faso'),
(60, 5, 'Burkina Faso'),
(61, 1, 'Burma (Myanmar)'),
(61, 2, 'Burma (Myanmar)'),
(61, 3, 'Burma (Myanmar)'),
(61, 4, 'Burma (Myanmar)'),
(61, 5, 'Burma (Myanmar)'),
(62, 1, 'Burundi'),
(62, 2, 'Burundi'),
(62, 3, 'Burundi'),
(62, 4, 'Burundi'),
(62, 5, 'Burundi'),
(63, 1, 'Cambodia'),
(63, 2, 'Cambodia'),
(63, 3, 'Cambodia'),
(63, 4, 'Cambodia'),
(63, 5, 'Cambodia'),
(64, 1, 'Cameroon'),
(64, 2, 'Cameroon'),
(64, 3, 'Cameroon'),
(64, 4, 'Cameroon'),
(64, 5, 'Cameroon'),
(65, 1, 'Cape Verde'),
(65, 2, 'Cape Verde'),
(65, 3, 'Cape Verde'),
(65, 4, 'Cape Verde'),
(65, 5, 'Cape Verde'),
(66, 1, 'Central African Republic'),
(66, 2, 'Central African Republic'),
(66, 3, 'Central African Republic'),
(66, 4, 'Central African Republic'),
(66, 5, 'Central African Republic'),
(67, 1, 'Chad'),
(67, 2, 'Chad'),
(67, 3, 'Chad'),
(67, 4, 'Chad'),
(67, 5, 'Chad'),
(68, 1, 'Chile'),
(68, 2, 'Chile'),
(68, 3, 'Chile'),
(68, 4, 'Chile'),
(68, 5, 'Chile'),
(69, 1, 'Colombia'),
(69, 2, 'Colombia'),
(69, 3, 'Colombia'),
(69, 4, 'Colombia'),
(69, 5, 'Colombia'),
(70, 1, 'Comoros'),
(70, 2, 'Comoros'),
(70, 3, 'Comoros'),
(70, 4, 'Comoros'),
(70, 5, 'Comoros'),
(71, 1, 'Congo, Dem. Republic'),
(71, 2, 'Congo, Dem. Republic'),
(71, 3, 'Congo, Dem. Republic'),
(71, 4, 'Congo, Dem. Republic'),
(71, 5, 'Congo, Dem. Republic'),
(72, 1, 'Congo, Republic'),
(72, 2, 'Congo, Republic'),
(72, 3, 'Congo, Republic'),
(72, 4, 'Congo, Republic'),
(72, 5, 'Congo, Republic'),
(73, 1, 'Costa Rica'),
(73, 2, 'Costa Rica'),
(73, 3, 'Costa Rica'),
(73, 4, 'Costa Rica'),
(73, 5, 'Costa Rica'),
(74, 1, 'Croatia'),
(74, 2, 'Croatia'),
(74, 3, 'Croatia'),
(74, 4, 'Croatia'),
(74, 5, 'Croatia'),
(75, 1, 'Cuba'),
(75, 2, 'Cuba'),
(75, 3, 'Cuba'),
(75, 4, 'Cuba'),
(75, 5, 'Cuba'),
(76, 1, 'Cyprus'),
(76, 2, 'Cyprus'),
(76, 3, 'Cyprus'),
(76, 4, 'Cyprus'),
(76, 5, 'Cyprus'),
(77, 1, 'Djibouti'),
(77, 2, 'Djibouti'),
(77, 3, 'Djibouti'),
(77, 4, 'Djibouti'),
(77, 5, 'Djibouti'),
(78, 1, 'Dominica'),
(78, 2, 'Dominica'),
(78, 3, 'Dominica'),
(78, 4, 'Dominica'),
(78, 5, 'Dominica'),
(79, 1, 'Dominican Republic'),
(79, 2, 'Dominican Republic'),
(79, 3, 'Dominican Republic'),
(79, 4, 'Dominican Republic'),
(79, 5, 'Dominican Republic'),
(80, 1, 'East Timor'),
(80, 2, 'East Timor'),
(80, 3, 'East Timor'),
(80, 4, 'East Timor'),
(80, 5, 'East Timor'),
(81, 1, 'Ecuador'),
(81, 2, 'Ecuador'),
(81, 3, 'Ecuador'),
(81, 4, 'Ecuador'),
(81, 5, 'Ecuador'),
(82, 1, 'Egypt'),
(82, 2, 'Egypt'),
(82, 3, 'Egypt'),
(82, 4, 'Egypt'),
(82, 5, 'Egypt'),
(83, 1, 'El Salvador'),
(83, 2, 'El Salvador'),
(83, 3, 'El Salvador'),
(83, 4, 'El Salvador'),
(83, 5, 'El Salvador'),
(84, 1, 'Equatorial Guinea'),
(84, 2, 'Equatorial Guinea'),
(84, 3, 'Equatorial Guinea'),
(84, 4, 'Equatorial Guinea'),
(84, 5, 'Equatorial Guinea'),
(85, 1, 'Eritrea'),
(85, 2, 'Eritrea'),
(85, 3, 'Eritrea'),
(85, 4, 'Eritrea'),
(85, 5, 'Eritrea'),
(86, 1, 'Estonia'),
(86, 2, 'Estonia'),
(86, 3, 'Estonia'),
(86, 4, 'Estonia'),
(86, 5, 'Estonia'),
(87, 1, 'Ethiopia'),
(87, 2, 'Ethiopia'),
(87, 3, 'Ethiopia'),
(87, 4, 'Ethiopia'),
(87, 5, 'Ethiopia'),
(88, 1, 'Falkland Islands'),
(88, 2, 'Falkland Islands'),
(88, 3, 'Falkland Islands'),
(88, 4, 'Falkland Islands'),
(88, 5, 'Falkland Islands'),
(89, 1, 'Faroe Islands'),
(89, 2, 'Faroe Islands'),
(89, 3, 'Faroe Islands'),
(89, 4, 'Faroe Islands'),
(89, 5, 'Faroe Islands'),
(90, 1, 'Fiji'),
(90, 2, 'Fiji'),
(90, 3, 'Fiji'),
(90, 4, 'Fiji'),
(90, 5, 'Fiji'),
(91, 1, 'Gabon'),
(91, 2, 'Gabon'),
(91, 3, 'Gabon'),
(91, 4, 'Gabon'),
(91, 5, 'Gabon'),
(92, 1, 'Gambia'),
(92, 2, 'Gambia'),
(92, 3, 'Gambia'),
(92, 4, 'Gambia'),
(92, 5, 'Gambia'),
(93, 1, 'Georgia'),
(93, 2, 'Georgia'),
(93, 3, 'Georgia'),
(93, 4, 'Georgia'),
(93, 5, 'Georgia'),
(94, 1, 'Ghana'),
(94, 2, 'Ghana'),
(94, 3, 'Ghana'),
(94, 4, 'Ghana'),
(94, 5, 'Ghana'),
(95, 1, 'Grenada'),
(95, 2, 'Grenada'),
(95, 3, 'Grenada'),
(95, 4, 'Grenada'),
(95, 5, 'Grenada'),
(96, 1, 'Greenland'),
(96, 2, 'Greenland'),
(96, 3, 'Greenland'),
(96, 4, 'Greenland'),
(96, 5, 'Greenland'),
(97, 1, 'Gibraltar'),
(97, 2, 'Gibraltar'),
(97, 3, 'Gibraltar'),
(97, 4, 'Gibraltar'),
(97, 5, 'Gibraltar'),
(98, 1, 'Guadeloupe'),
(98, 2, 'Guadeloupe'),
(98, 3, 'Guadeloupe'),
(98, 4, 'Guadeloupe'),
(98, 5, 'Guadeloupe'),
(99, 1, 'Guam'),
(99, 2, 'Guam'),
(99, 3, 'Guam'),
(99, 4, 'Guam'),
(99, 5, 'Guam'),
(100, 1, 'Guatemala'),
(100, 2, 'Guatemala'),
(100, 3, 'Guatemala'),
(100, 4, 'Guatemala'),
(100, 5, 'Guatemala'),
(101, 1, 'Guernsey'),
(101, 2, 'Guernsey'),
(101, 3, 'Guernsey'),
(101, 4, 'Guernsey'),
(101, 5, 'Guernsey'),
(102, 1, 'Guinea'),
(102, 2, 'Guinea'),
(102, 3, 'Guinea'),
(102, 4, 'Guinea'),
(102, 5, 'Guinea'),
(103, 1, 'Guinea-Bissau'),
(103, 2, 'Guinea-Bissau'),
(103, 3, 'Guinea-Bissau'),
(103, 4, 'Guinea-Bissau'),
(103, 5, 'Guinea-Bissau'),
(104, 1, 'Guyana'),
(104, 2, 'Guyana'),
(104, 3, 'Guyana'),
(104, 4, 'Guyana'),
(104, 5, 'Guyana'),
(105, 1, 'Haiti'),
(105, 2, 'Haiti'),
(105, 3, 'Haiti'),
(105, 4, 'Haiti'),
(105, 5, 'Haiti'),
(106, 1, 'Heard Island and McDonald Islands'),
(106, 2, 'Heard Island and McDonald Islands'),
(106, 3, 'Heard Island and McDonald Islands'),
(106, 4, 'Heard Island and McDonald Islands'),
(106, 5, 'Heard Island and McDonald Islands'),
(107, 1, 'Vatican City State'),
(107, 2, 'Vatican City State'),
(107, 3, 'Vatican City State'),
(107, 4, 'Vatican City State'),
(107, 5, 'Vatican City State'),
(108, 1, 'Honduras'),
(108, 2, 'Honduras'),
(108, 3, 'Honduras'),
(108, 4, 'Honduras'),
(108, 5, 'Honduras'),
(109, 1, 'Iceland'),
(109, 2, 'Iceland'),
(109, 3, 'Iceland'),
(109, 4, 'Iceland'),
(109, 5, 'Iceland'),
(110, 1, 'India'),
(110, 2, 'India'),
(110, 3, 'India'),
(110, 4, 'India'),
(110, 5, 'India'),
(111, 1, 'Indonesia'),
(111, 2, 'Indonesia'),
(111, 3, 'Indonesia'),
(111, 4, 'Indonesia'),
(111, 5, 'Indonesia'),
(112, 1, 'Iran'),
(112, 2, 'Iran'),
(112, 3, 'Iran'),
(112, 4, 'Iran'),
(112, 5, 'Iran'),
(113, 1, 'Iraq'),
(113, 2, 'Iraq'),
(113, 3, 'Iraq'),
(113, 4, 'Iraq'),
(113, 5, 'Iraq'),
(114, 1, 'Man Island'),
(114, 2, 'Man Island'),
(114, 3, 'Man Island'),
(114, 4, 'Man Island'),
(114, 5, 'Man Island'),
(115, 1, 'Jamaica'),
(115, 2, 'Jamaica'),
(115, 3, 'Jamaica'),
(115, 4, 'Jamaica'),
(115, 5, 'Jamaica'),
(116, 1, 'Jersey'),
(116, 2, 'Jersey'),
(116, 3, 'Jersey'),
(116, 4, 'Jersey'),
(116, 5, 'Jersey'),
(117, 1, 'Jordan'),
(117, 2, 'Jordan'),
(117, 3, 'Jordan'),
(117, 4, 'Jordan'),
(117, 5, 'Jordan'),
(118, 1, 'Kazakhstan'),
(118, 2, 'Kazakhstan'),
(118, 3, 'Kazakhstan'),
(118, 4, 'Kazakhstan'),
(118, 5, 'Kazakhstan'),
(119, 1, 'Kenya'),
(119, 2, 'Kenya'),
(119, 3, 'Kenya'),
(119, 4, 'Kenya'),
(119, 5, 'Kenya'),
(120, 1, 'Kiribati'),
(120, 2, 'Kiribati'),
(120, 3, 'Kiribati'),
(120, 4, 'Kiribati'),
(120, 5, 'Kiribati'),
(121, 1, 'Korea, Dem. Republic of'),
(121, 2, 'Korea, Dem. Republic of'),
(121, 3, 'Korea, Dem. Republic of'),
(121, 4, 'Korea, Dem. Republic of'),
(121, 5, 'Korea, Dem. Republic of'),
(122, 1, 'Kuwait'),
(122, 2, 'Kuwait'),
(122, 3, 'Kuwait'),
(122, 4, 'Kuwait'),
(122, 5, 'Kuwait'),
(123, 1, 'Kyrgyzstan'),
(123, 2, 'Kyrgyzstan'),
(123, 3, 'Kyrgyzstan'),
(123, 4, 'Kyrgyzstan'),
(123, 5, 'Kyrgyzstan'),
(124, 1, 'Laos'),
(124, 2, 'Laos'),
(124, 3, 'Laos'),
(124, 4, 'Laos'),
(124, 5, 'Laos'),
(125, 1, 'Latvia'),
(125, 2, 'Latvia'),
(125, 3, 'Latvia'),
(125, 4, 'Latvia'),
(125, 5, 'Latvia'),
(126, 1, 'Lebanon'),
(126, 2, 'Lebanon'),
(126, 3, 'Lebanon'),
(126, 4, 'Lebanon'),
(126, 5, 'Lebanon'),
(127, 1, 'Lesotho'),
(127, 2, 'Lesotho'),
(127, 3, 'Lesotho'),
(127, 4, 'Lesotho'),
(127, 5, 'Lesotho'),
(128, 1, 'Liberia'),
(128, 2, 'Liberia'),
(128, 3, 'Liberia'),
(128, 4, 'Liberia'),
(128, 5, 'Liberia'),
(129, 1, 'Libya'),
(129, 2, 'Libya'),
(129, 3, 'Libya'),
(129, 4, 'Libya'),
(129, 5, 'Libya'),
(130, 1, 'Liechtenstein'),
(130, 2, 'Liechtenstein'),
(130, 3, 'Liechtenstein'),
(130, 4, 'Liechtenstein'),
(130, 5, 'Liechtenstein'),
(131, 1, 'Lithuania'),
(131, 2, 'Lithuania'),
(131, 3, 'Lithuania'),
(131, 4, 'Lithuania'),
(131, 5, 'Lithuania'),
(132, 1, 'Macau'),
(132, 2, 'Macau'),
(132, 3, 'Macau'),
(132, 4, 'Macau'),
(132, 5, 'Macau'),
(133, 1, 'Macedonia'),
(133, 2, 'Macedonia'),
(133, 3, 'Macedonia'),
(133, 4, 'Macedonia'),
(133, 5, 'Macedonia'),
(134, 1, 'Madagascar'),
(134, 2, 'Madagascar'),
(134, 3, 'Madagascar'),
(134, 4, 'Madagascar'),
(134, 5, 'Madagascar'),
(135, 1, 'Malawi'),
(135, 2, 'Malawi'),
(135, 3, 'Malawi'),
(135, 4, 'Malawi'),
(135, 5, 'Malawi'),
(136, 1, 'Malaysia'),
(136, 2, 'Malaysia'),
(136, 3, 'Malaysia'),
(136, 4, 'Malaysia'),
(136, 5, 'Malaysia'),
(137, 1, 'Maldives'),
(137, 2, 'Maldives'),
(137, 3, 'Maldives'),
(137, 4, 'Maldives'),
(137, 5, 'Maldives'),
(138, 1, 'Mali'),
(138, 2, 'Mali'),
(138, 3, 'Mali'),
(138, 4, 'Mali'),
(138, 5, 'Mali'),
(139, 1, 'Malta'),
(139, 2, 'Malta'),
(139, 3, 'Malta'),
(139, 4, 'Malta'),
(139, 5, 'Malta'),
(140, 1, 'Marshall Islands'),
(140, 2, 'Marshall Islands'),
(140, 3, 'Marshall Islands'),
(140, 4, 'Marshall Islands'),
(140, 5, 'Marshall Islands'),
(141, 1, 'Martinique'),
(141, 2, 'Martinique'),
(141, 3, 'Martinique'),
(141, 4, 'Martinique'),
(141, 5, 'Martinique'),
(142, 1, 'Mauritania'),
(142, 2, 'Mauritania'),
(142, 3, 'Mauritania'),
(142, 4, 'Mauritania'),
(142, 5, 'Mauritania'),
(143, 1, 'Hungary'),
(143, 2, 'Hungary'),
(143, 3, 'Hungary'),
(143, 4, 'Hungary'),
(143, 5, 'Hungary'),
(144, 1, 'Mayotte'),
(144, 2, 'Mayotte'),
(144, 3, 'Mayotte'),
(144, 4, 'Mayotte'),
(144, 5, 'Mayotte'),
(145, 1, 'Mexico'),
(145, 2, 'Mexico'),
(145, 3, 'Mexico'),
(145, 4, 'Mexico'),
(145, 5, 'Mexico'),
(146, 1, 'Micronesia'),
(146, 2, 'Micronesia'),
(146, 3, 'Micronesia'),
(146, 4, 'Micronesia'),
(146, 5, 'Micronesia'),
(147, 1, 'Moldova'),
(147, 2, 'Moldova'),
(147, 3, 'Moldova'),
(147, 4, 'Moldova'),
(147, 5, 'Moldova'),
(148, 1, 'Monaco'),
(148, 2, 'Monaco'),
(148, 3, 'Monaco'),
(148, 4, 'Monaco'),
(148, 5, 'Monaco'),
(149, 1, 'Mongolia'),
(149, 2, 'Mongolia'),
(149, 3, 'Mongolia'),
(149, 4, 'Mongolia'),
(149, 5, 'Mongolia'),
(150, 1, 'Montenegro'),
(150, 2, 'Montenegro'),
(150, 3, 'Montenegro'),
(150, 4, 'Montenegro'),
(150, 5, 'Montenegro'),
(151, 1, 'Montserrat'),
(151, 2, 'Montserrat'),
(151, 3, 'Montserrat'),
(151, 4, 'Montserrat'),
(151, 5, 'Montserrat'),
(152, 1, 'Morocco'),
(152, 2, 'Morocco'),
(152, 3, 'Morocco'),
(152, 4, 'Morocco'),
(152, 5, 'Morocco'),
(153, 1, 'Mozambique'),
(153, 2, 'Mozambique'),
(153, 3, 'Mozambique'),
(153, 4, 'Mozambique'),
(153, 5, 'Mozambique'),
(154, 1, 'Namibia'),
(154, 2, 'Namibia'),
(154, 3, 'Namibia'),
(154, 4, 'Namibia'),
(154, 5, 'Namibia'),
(155, 1, 'Nauru'),
(155, 2, 'Nauru'),
(155, 3, 'Nauru'),
(155, 4, 'Nauru'),
(155, 5, 'Nauru'),
(156, 1, 'Nepal'),
(156, 2, 'Nepal'),
(156, 3, 'Nepal'),
(156, 4, 'Nepal'),
(156, 5, 'Nepal'),
(157, 1, 'Netherlands Antilles'),
(157, 2, 'Netherlands Antilles'),
(157, 3, 'Netherlands Antilles'),
(157, 4, 'Netherlands Antilles'),
(157, 5, 'Netherlands Antilles'),
(158, 1, 'New Caledonia'),
(158, 2, 'New Caledonia'),
(158, 3, 'New Caledonia'),
(158, 4, 'New Caledonia'),
(158, 5, 'New Caledonia'),
(159, 1, 'Nicaragua'),
(159, 2, 'Nicaragua'),
(159, 3, 'Nicaragua'),
(159, 4, 'Nicaragua'),
(159, 5, 'Nicaragua'),
(160, 1, 'Niger'),
(160, 2, 'Niger'),
(160, 3, 'Niger'),
(160, 4, 'Niger'),
(160, 5, 'Niger'),
(161, 1, 'Niue'),
(161, 2, 'Niue'),
(161, 3, 'Niue'),
(161, 4, 'Niue'),
(161, 5, 'Niue'),
(162, 1, 'Norfolk Island'),
(162, 2, 'Norfolk Island'),
(162, 3, 'Norfolk Island'),
(162, 4, 'Norfolk Island'),
(162, 5, 'Norfolk Island'),
(163, 1, 'Northern Mariana Islands'),
(163, 2, 'Northern Mariana Islands'),
(163, 3, 'Northern Mariana Islands'),
(163, 4, 'Northern Mariana Islands'),
(163, 5, 'Northern Mariana Islands'),
(164, 1, 'Oman'),
(164, 2, 'Oman'),
(164, 3, 'Oman'),
(164, 4, 'Oman'),
(164, 5, 'Oman'),
(165, 1, 'Pakistan'),
(165, 2, 'Pakistan'),
(165, 3, 'Pakistan'),
(165, 4, 'Pakistan'),
(165, 5, 'Pakistan'),
(166, 1, 'Palau'),
(166, 2, 'Palau'),
(166, 3, 'Palau'),
(166, 4, 'Palau'),
(166, 5, 'Palau'),
(167, 1, 'Palestinian Territories'),
(167, 2, 'Palestinian Territories'),
(167, 3, 'Palestinian Territories'),
(167, 4, 'Palestinian Territories'),
(167, 5, 'Palestinian Territories'),
(168, 1, 'Panama'),
(168, 2, 'Panama'),
(168, 3, 'Panama'),
(168, 4, 'Panama'),
(168, 5, 'Panama'),
(169, 1, 'Papua New Guinea'),
(169, 2, 'Papua New Guinea'),
(169, 3, 'Papua New Guinea'),
(169, 4, 'Papua New Guinea'),
(169, 5, 'Papua New Guinea'),
(170, 1, 'Paraguay'),
(170, 2, 'Paraguay'),
(170, 3, 'Paraguay'),
(170, 4, 'Paraguay'),
(170, 5, 'Paraguay'),
(171, 1, 'Peru'),
(171, 2, 'Peru'),
(171, 3, 'Peru'),
(171, 4, 'Peru'),
(171, 5, 'Peru'),
(172, 1, 'Philippines'),
(172, 2, 'Philippines'),
(172, 3, 'Philippines'),
(172, 4, 'Philippines'),
(172, 5, 'Philippines'),
(173, 1, 'Pitcairn'),
(173, 2, 'Pitcairn'),
(173, 3, 'Pitcairn'),
(173, 4, 'Pitcairn'),
(173, 5, 'Pitcairn'),
(174, 1, 'Puerto Rico'),
(174, 2, 'Puerto Rico'),
(174, 3, 'Puerto Rico'),
(174, 4, 'Puerto Rico'),
(174, 5, 'Puerto Rico'),
(175, 1, 'Qatar'),
(175, 2, 'Qatar'),
(175, 3, 'Qatar'),
(175, 4, 'Qatar'),
(175, 5, 'Qatar'),
(176, 1, 'Reunion Island'),
(176, 2, 'Reunion Island'),
(176, 3, 'Reunion Island'),
(176, 4, 'Reunion Island'),
(176, 5, 'Reunion Island'),
(177, 1, 'Russian Federation'),
(177, 2, 'Russian Federation'),
(177, 3, 'Russian Federation'),
(177, 4, 'Russian Federation'),
(177, 5, 'Russian Federation'),
(178, 1, 'Rwanda'),
(178, 2, 'Rwanda'),
(178, 3, 'Rwanda'),
(178, 4, 'Rwanda'),
(178, 5, 'Rwanda'),
(179, 1, 'Saint Barthelemy'),
(179, 2, 'Saint Barthelemy'),
(179, 3, 'Saint Barthelemy'),
(179, 4, 'Saint Barthelemy'),
(179, 5, 'Saint Barthelemy'),
(180, 1, 'Saint Kitts and Nevis'),
(180, 2, 'Saint Kitts and Nevis'),
(180, 3, 'Saint Kitts and Nevis'),
(180, 4, 'Saint Kitts and Nevis'),
(180, 5, 'Saint Kitts and Nevis'),
(181, 1, 'Saint Lucia'),
(181, 2, 'Saint Lucia'),
(181, 3, 'Saint Lucia'),
(181, 4, 'Saint Lucia'),
(181, 5, 'Saint Lucia'),
(182, 1, 'Saint Martin'),
(182, 2, 'Saint Martin'),
(182, 3, 'Saint Martin'),
(182, 4, 'Saint Martin'),
(182, 5, 'Saint Martin'),
(183, 1, 'Saint Pierre and Miquelon'),
(183, 2, 'Saint Pierre and Miquelon'),
(183, 3, 'Saint Pierre and Miquelon'),
(183, 4, 'Saint Pierre and Miquelon'),
(183, 5, 'Saint Pierre and Miquelon'),
(184, 1, 'Saint Vincent and the Grenadines'),
(184, 2, 'Saint Vincent and the Grenadines'),
(184, 3, 'Saint Vincent and the Grenadines'),
(184, 4, 'Saint Vincent and the Grenadines'),
(184, 5, 'Saint Vincent and the Grenadines'),
(185, 1, 'Samoa'),
(185, 2, 'Samoa'),
(185, 3, 'Samoa'),
(185, 4, 'Samoa'),
(185, 5, 'Samoa'),
(186, 1, 'San Marino'),
(186, 2, 'San Marino'),
(186, 3, 'San Marino'),
(186, 4, 'San Marino'),
(186, 5, 'San Marino'),
(187, 1, 'São Tomé and Príncipe'),
(187, 2, 'São Tomé and Príncipe'),
(187, 3, 'São Tomé and Príncipe'),
(187, 4, 'São Tomé and Príncipe'),
(187, 5, 'São Tomé and Príncipe'),
(188, 1, 'Saudi Arabia'),
(188, 2, 'Saudi Arabia'),
(188, 3, 'Saudi Arabia'),
(188, 4, 'Saudi Arabia'),
(188, 5, 'Saudi Arabia'),
(189, 1, 'Senegal'),
(189, 2, 'Senegal'),
(189, 3, 'Senegal'),
(189, 4, 'Senegal'),
(189, 5, 'Senegal'),
(190, 1, 'Serbia'),
(190, 2, 'Serbia'),
(190, 3, 'Serbia'),
(190, 4, 'Serbia'),
(190, 5, 'Serbia'),
(191, 1, 'Seychelles'),
(191, 2, 'Seychelles'),
(191, 3, 'Seychelles'),
(191, 4, 'Seychelles'),
(191, 5, 'Seychelles'),
(192, 1, 'Sierra Leone'),
(192, 2, 'Sierra Leone'),
(192, 3, 'Sierra Leone'),
(192, 4, 'Sierra Leone'),
(192, 5, 'Sierra Leone'),
(193, 1, 'Slovenia'),
(193, 2, 'Slovenia'),
(193, 3, 'Slovenia'),
(193, 4, 'Slovenia'),
(193, 5, 'Slovenia'),
(194, 1, 'Solomon Islands'),
(194, 2, 'Solomon Islands'),
(194, 3, 'Solomon Islands'),
(194, 4, 'Solomon Islands'),
(194, 5, 'Solomon Islands'),
(195, 1, 'Somalia'),
(195, 2, 'Somalia'),
(195, 3, 'Somalia'),
(195, 4, 'Somalia'),
(195, 5, 'Somalia'),
(196, 1, 'South Georgia and the South Sandwich Islands'),
(196, 2, 'South Georgia and the South Sandwich Islands'),
(196, 3, 'South Georgia and the South Sandwich Islands'),
(196, 4, 'South Georgia and the South Sandwich Islands'),
(196, 5, 'South Georgia and the South Sandwich Islands'),
(197, 1, 'Sri Lanka'),
(197, 2, 'Sri Lanka'),
(197, 3, 'Sri Lanka'),
(197, 4, 'Sri Lanka'),
(197, 5, 'Sri Lanka'),
(198, 1, 'Sudan'),
(198, 2, 'Sudan'),
(198, 3, 'Sudan'),
(198, 4, 'Sudan'),
(198, 5, 'Sudan'),
(199, 1, 'Suriname'),
(199, 2, 'Suriname'),
(199, 3, 'Suriname'),
(199, 4, 'Suriname'),
(199, 5, 'Suriname'),
(200, 1, 'Svalbard and Jan Mayen'),
(200, 2, 'Svalbard and Jan Mayen'),
(200, 3, 'Svalbard and Jan Mayen'),
(200, 4, 'Svalbard and Jan Mayen'),
(200, 5, 'Svalbard and Jan Mayen'),
(201, 1, 'Swaziland'),
(201, 2, 'Swaziland'),
(201, 3, 'Swaziland'),
(201, 4, 'Swaziland'),
(201, 5, 'Swaziland'),
(202, 1, 'Syria'),
(202, 2, 'Syria'),
(202, 3, 'Syria'),
(202, 4, 'Syria'),
(202, 5, 'Syria'),
(203, 1, 'Taiwan'),
(203, 2, 'Taiwan'),
(203, 3, 'Taiwan'),
(203, 4, 'Taiwan'),
(203, 5, 'Taiwan'),
(204, 1, 'Tajikistan'),
(204, 2, 'Tajikistan'),
(204, 3, 'Tajikistan'),
(204, 4, 'Tajikistan'),
(204, 5, 'Tajikistan'),
(205, 1, 'Tanzania'),
(205, 2, 'Tanzania'),
(205, 3, 'Tanzania'),
(205, 4, 'Tanzania'),
(205, 5, 'Tanzania'),
(206, 1, 'Thailand'),
(206, 2, 'Thailand'),
(206, 3, 'Thailand'),
(206, 4, 'Thailand'),
(206, 5, 'Thailand'),
(207, 1, 'Tokelau'),
(207, 2, 'Tokelau'),
(207, 3, 'Tokelau'),
(207, 4, 'Tokelau'),
(207, 5, 'Tokelau'),
(208, 1, 'Tonga'),
(208, 2, 'Tonga'),
(208, 3, 'Tonga'),
(208, 4, 'Tonga'),
(208, 5, 'Tonga'),
(209, 1, 'Trinidad and Tobago'),
(209, 2, 'Trinidad and Tobago'),
(209, 3, 'Trinidad and Tobago'),
(209, 4, 'Trinidad and Tobago'),
(209, 5, 'Trinidad and Tobago'),
(210, 1, 'Tunisia'),
(210, 2, 'Tunisia'),
(210, 3, 'Tunisia'),
(210, 4, 'Tunisia'),
(210, 5, 'Tunisia'),
(211, 1, 'Turkey'),
(211, 2, 'Turkey'),
(211, 3, 'Turkey'),
(211, 4, 'Turkey'),
(211, 5, 'Turkey'),
(212, 1, 'Turkmenistan'),
(212, 2, 'Turkmenistan'),
(212, 3, 'Turkmenistan'),
(212, 4, 'Turkmenistan'),
(212, 5, 'Turkmenistan'),
(213, 1, 'Turks and Caicos Islands'),
(213, 2, 'Turks and Caicos Islands'),
(213, 3, 'Turks and Caicos Islands'),
(213, 4, 'Turks and Caicos Islands'),
(213, 5, 'Turks and Caicos Islands'),
(214, 1, 'Tuvalu'),
(214, 2, 'Tuvalu'),
(214, 3, 'Tuvalu'),
(214, 4, 'Tuvalu'),
(214, 5, 'Tuvalu'),
(215, 1, 'Uganda'),
(215, 2, 'Uganda'),
(215, 3, 'Uganda'),
(215, 4, 'Uganda'),
(215, 5, 'Uganda'),
(216, 1, 'Ukraine'),
(216, 2, 'Ukraine'),
(216, 3, 'Ukraine'),
(216, 4, 'Ukraine'),
(216, 5, 'Ukraine'),
(217, 1, 'United Arab Emirates'),
(217, 2, 'United Arab Emirates'),
(217, 3, 'United Arab Emirates'),
(217, 4, 'United Arab Emirates'),
(217, 5, 'United Arab Emirates'),
(218, 1, 'Uruguay'),
(218, 2, 'Uruguay'),
(218, 3, 'Uruguay'),
(218, 4, 'Uruguay'),
(218, 5, 'Uruguay'),
(219, 1, 'Uzbekistan'),
(219, 2, 'Uzbekistan'),
(219, 3, 'Uzbekistan'),
(219, 4, 'Uzbekistan'),
(219, 5, 'Uzbekistan'),
(220, 1, 'Vanuatu'),
(220, 2, 'Vanuatu'),
(220, 3, 'Vanuatu'),
(220, 4, 'Vanuatu'),
(220, 5, 'Vanuatu'),
(221, 1, 'Venezuela'),
(221, 2, 'Venezuela'),
(221, 3, 'Venezuela'),
(221, 4, 'Venezuela'),
(221, 5, 'Venezuela'),
(222, 1, 'Vietnam'),
(222, 2, 'Vietnam'),
(222, 3, 'Vietnam'),
(222, 4, 'Vietnam'),
(222, 5, 'Vietnam'),
(223, 1, 'Virgin Islands (British)'),
(223, 2, 'Virgin Islands (British)'),
(223, 3, 'Virgin Islands (British)'),
(223, 4, 'Virgin Islands (British)'),
(223, 5, 'Virgin Islands (British)'),
(224, 1, 'Virgin Islands (U.S.)'),
(224, 2, 'Virgin Islands (U.S.)'),
(224, 3, 'Virgin Islands (U.S.)'),
(224, 4, 'Virgin Islands (U.S.)'),
(224, 5, 'Virgin Islands (U.S.)'),
(225, 1, 'Wallis and Futuna'),
(225, 2, 'Wallis and Futuna'),
(225, 3, 'Wallis and Futuna'),
(225, 4, 'Wallis and Futuna'),
(225, 5, 'Wallis and Futuna'),
(226, 1, 'Western Sahara'),
(226, 2, 'Western Sahara'),
(226, 3, 'Western Sahara'),
(226, 4, 'Western Sahara'),
(226, 5, 'Western Sahara'),
(227, 1, 'Yemen'),
(227, 2, 'Yemen'),
(227, 3, 'Yemen'),
(227, 4, 'Yemen'),
(227, 5, 'Yemen'),
(228, 1, 'Zambia'),
(228, 2, 'Zambia'),
(228, 3, 'Zambia'),
(228, 4, 'Zambia'),
(228, 5, 'Zambia'),
(229, 1, 'Zimbabwe'),
(229, 2, 'Zimbabwe'),
(229, 3, 'Zimbabwe'),
(229, 4, 'Zimbabwe'),
(229, 5, 'Zimbabwe'),
(230, 1, 'Albania'),
(230, 2, 'Albania'),
(230, 3, 'Albania'),
(230, 4, 'Albania'),
(230, 5, 'Albania'),
(231, 1, 'Afghanistan'),
(231, 2, 'Afghanistan'),
(231, 3, 'Afghanistan'),
(231, 4, 'Afghanistan'),
(231, 5, 'Afghanistan'),
(232, 1, 'Antarctica'),
(232, 2, 'Antarctica'),
(232, 3, 'Antarctica'),
(232, 4, 'Antarctica'),
(232, 5, 'Antarctica'),
(233, 1, 'Bosnia and Herzegovina'),
(233, 2, 'Bosnia and Herzegovina'),
(233, 3, 'Bosnia and Herzegovina'),
(233, 4, 'Bosnia and Herzegovina'),
(233, 5, 'Bosnia and Herzegovina'),
(234, 1, 'Bouvet Island'),
(234, 2, 'Bouvet Island'),
(234, 3, 'Bouvet Island'),
(234, 4, 'Bouvet Island'),
(234, 5, 'Bouvet Island'),
(235, 1, 'British Indian Ocean Territory'),
(235, 2, 'British Indian Ocean Territory'),
(235, 3, 'British Indian Ocean Territory'),
(235, 4, 'British Indian Ocean Territory'),
(235, 5, 'British Indian Ocean Territory'),
(236, 1, 'Bulgaria'),
(236, 2, 'Bulgaria'),
(236, 3, 'Bulgaria'),
(236, 4, 'Bulgaria'),
(236, 5, 'Bulgaria'),
(237, 1, 'Cayman Islands'),
(237, 2, 'Cayman Islands'),
(237, 3, 'Cayman Islands'),
(237, 4, 'Cayman Islands'),
(237, 5, 'Cayman Islands'),
(238, 1, 'Christmas Island'),
(238, 2, 'Christmas Island'),
(238, 3, 'Christmas Island'),
(238, 4, 'Christmas Island'),
(238, 5, 'Christmas Island'),
(239, 1, 'Cocos (Keeling) Islands'),
(239, 2, 'Cocos (Keeling) Islands'),
(239, 3, 'Cocos (Keeling) Islands'),
(239, 4, 'Cocos (Keeling) Islands'),
(239, 5, 'Cocos (Keeling) Islands'),
(240, 1, 'Cook Islands'),
(240, 2, 'Cook Islands'),
(240, 3, 'Cook Islands'),
(240, 4, 'Cook Islands'),
(240, 5, 'Cook Islands'),
(241, 1, 'French Guiana'),
(241, 2, 'French Guiana'),
(241, 3, 'French Guiana'),
(241, 4, 'French Guiana'),
(241, 5, 'French Guiana'),
(242, 1, 'French Polynesia'),
(242, 2, 'French Polynesia'),
(242, 3, 'French Polynesia'),
(242, 4, 'French Polynesia'),
(242, 5, 'French Polynesia'),
(243, 1, 'French Southern Territories'),
(243, 2, 'French Southern Territories'),
(243, 3, 'French Southern Territories'),
(243, 4, 'French Southern Territories'),
(243, 5, 'French Southern Territories'),
(244, 1, 'Åland Islands'),
(244, 2, 'Åland Islands'),
(244, 3, 'Åland Islands'),
(244, 4, 'Åland Islands'),
(244, 5, 'Åland Islands');

-- --------------------------------------------------------

--
-- Structure de la table `ps_country_shop`
--

CREATE TABLE `ps_country_shop` (
  `id_country` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_country_shop`
--

INSERT INTO `ps_country_shop` (`id_country`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_cronjobs`
--

CREATE TABLE `ps_cronjobs` (
  `id_cronjob` int(10) NOT NULL,
  `id_module` int(10) DEFAULT NULL,
  `description` text,
  `task` text,
  `hour` int(11) DEFAULT '-1',
  `day` int(11) DEFAULT '-1',
  `month` int(11) DEFAULT '-1',
  `day_of_week` int(11) DEFAULT '-1',
  `updated_at` datetime DEFAULT NULL,
  `one_shot` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `id_shop` int(11) DEFAULT '0',
  `id_shop_group` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_currency`
--

CREATE TABLE `ps_currency` (
  `id_currency` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `iso_code_num` varchar(3) NOT NULL DEFAULT '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `format` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_currency`
--

INSERT INTO `ps_currency` (`id_currency`, `name`, `iso_code`, `iso_code_num`, `sign`, `blank`, `format`, `decimals`, `conversion_rate`, `deleted`, `active`) VALUES
(1, 'Dollar', 'USD', '840', '$', 0, 1, 1, '1.000000', 0, 1),
(2, 'Euro', 'EUR', '978', '€', 0, 2, 1, '0.729661', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_currency_shop`
--

CREATE TABLE `ps_currency_shop` (
  `id_currency` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_currency_shop`
--

INSERT INTO `ps_currency_shop` (`id_currency`, `id_shop`, `conversion_rate`) VALUES
(1, 1, '1.000000'),
(2, 1, '0.729661');

-- --------------------------------------------------------

--
-- Structure de la table `ps_customer`
--

CREATE TABLE `ps_customer` (
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_gender` int(10) UNSIGNED NOT NULL,
  `id_default_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED DEFAULT NULL,
  `id_risk` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `company` varchar(64) DEFAULT NULL,
  `siret` varchar(14) DEFAULT NULL,
  `ape` varchar(5) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `website` varchar(128) DEFAULT NULL,
  `outstanding_allow_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_public_prices` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `max_payment_days` int(10) UNSIGNED NOT NULL DEFAULT '60',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_customer`
--

INSERT INTO `ps_customer` (`id_customer`, `id_shop_group`, `id_shop`, `id_gender`, `id_default_group`, `id_lang`, `id_risk`, `company`, `siret`, `ape`, `firstname`, `lastname`, `email`, `passwd`, `last_passwd_gen`, `birthday`, `newsletter`, `ip_registration_newsletter`, `newsletter_date_add`, `optin`, `website`, `outstanding_allow_amount`, `show_public_prices`, `max_payment_days`, `secure_key`, `note`, `active`, `is_guest`, `deleted`, `date_add`, `date_upd`) VALUES
(1, 1, 1, 1, 3, 1, 0, '', '', '', 'John', 'DOE', 'pub@prestashop.com', 'bf6950e833b27164f7cbcfa64f5b0f3a', '2016-07-28 18:55:10', '1970-01-15', 1, '', '2013-12-13 08:19:15', 1, '', '0.000000', 0, 0, '16af9feaa6249127998327bc5fc51167', '', 1, 0, 0, '2016-07-29 08:55:10', '2016-07-29 08:55:10'),
(2, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Maxime', 'Lefèvre', 'maxime.lefevre89@gmail.com', '49a82c64a597266e357be824c54ca7fe', '2016-08-02 08:27:11', '0000-00-00', 0, NULL, '0000-00-00 00:00:00', 0, NULL, '0.000000', 0, 0, '5f3c209a3793b9082d230293b7a3bc8c', NULL, 1, 0, 0, '2016-08-02 22:27:11', '2016-08-02 22:27:11');

-- --------------------------------------------------------

--
-- Structure de la table `ps_customer_group`
--

CREATE TABLE `ps_customer_group` (
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_customer_group`
--

INSERT INTO `ps_customer_group` (`id_customer`, `id_group`) VALUES
(1, 3),
(2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `ps_customer_message`
--

CREATE TABLE `ps_customer_message` (
  `id_customer_message` int(10) UNSIGNED NOT NULL,
  `id_customer_thread` int(11) DEFAULT NULL,
  `id_employee` int(10) UNSIGNED DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `file_name` varchar(18) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_customer_message_sync_imap`
--

CREATE TABLE `ps_customer_message_sync_imap` (
  `md5_header` varbinary(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_customer_thread`
--

CREATE TABLE `ps_customer_thread` (
  `id_customer_thread` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_contact` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED DEFAULT NULL,
  `id_order` int(10) UNSIGNED DEFAULT NULL,
  `id_product` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('open','closed','pending1','pending2') NOT NULL DEFAULT 'open',
  `email` varchar(128) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_customization`
--

CREATE TABLE `ps_customization` (
  `id_customization` int(10) UNSIGNED NOT NULL,
  `id_product_attribute` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_address_delivery` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL DEFAULT '0',
  `quantity_returned` int(11) NOT NULL DEFAULT '0',
  `in_cart` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_customization_field`
--

CREATE TABLE `ps_customization_field` (
  `id_customization_field` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_customization_field_lang`
--

CREATE TABLE `ps_customization_field_lang` (
  `id_customization_field` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_customized_data`
--

CREATE TABLE `ps_customized_data` (
  `id_customization` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_date_range`
--

CREATE TABLE `ps_date_range` (
  `id_date_range` int(10) UNSIGNED NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_delivery`
--

CREATE TABLE `ps_delivery` (
  `id_delivery` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED DEFAULT NULL,
  `id_shop_group` int(10) UNSIGNED DEFAULT NULL,
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_range_price` int(10) UNSIGNED DEFAULT NULL,
  `id_range_weight` int(10) UNSIGNED DEFAULT NULL,
  `id_zone` int(10) UNSIGNED NOT NULL,
  `price` decimal(20,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_delivery`
--

INSERT INTO `ps_delivery` (`id_delivery`, `id_shop`, `id_shop_group`, `id_carrier`, `id_range_price`, `id_range_weight`, `id_zone`, `price`) VALUES
(1, 0, 0, 2, 1, 0, 1, '0.000000'),
(2, 0, 0, 2, 1, 0, 2, '0.000000'),
(3, 0, 0, 2, 0, 1, 1, '0.000000'),
(4, 0, 0, 2, 0, 1, 2, '0.000000'),
(5, 0, 0, 2, 0, 1, 1, '5.000000'),
(6, 0, 0, 2, 0, 1, 2, '5.000000'),
(7, 0, 0, 2, 1, 0, 1, '5.000000'),
(8, 0, 0, 2, 1, 0, 2, '5.000000'),
(11, 0, 0, 4, 0, 2, 1, '5.000000'),
(12, 0, 0, 4, 0, 2, 2, '5.000000'),
(21, 0, 0, 6, 0, 3, 4, '0.000000'),
(22, 0, 0, 6, 0, 3, 3, '0.000000'),
(23, 0, 0, 6, 0, 3, 8, '0.000000'),
(24, 0, 0, 6, 0, 3, 1, '5.000000'),
(25, 0, 0, 6, 0, 3, 7, '0.000000'),
(26, 0, 0, 6, 0, 3, 2, '5.000000'),
(27, 0, 0, 6, 0, 3, 5, '0.000000'),
(28, 0, 0, 6, 0, 3, 6, '0.000000');

-- --------------------------------------------------------

--
-- Structure de la table `ps_employee`
--

CREATE TABLE `ps_employee` (
  `id_employee` int(10) UNSIGNED NOT NULL,
  `id_profile` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `stats_compare_from` date DEFAULT NULL,
  `stats_compare_to` date DEFAULT NULL,
  `stats_compare_option` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `preselect_date_range` varchar(32) DEFAULT NULL,
  `bo_color` varchar(32) DEFAULT NULL,
  `bo_theme` varchar(32) DEFAULT NULL,
  `bo_css` varchar(64) DEFAULT NULL,
  `default_tab` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bo_width` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bo_menu` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `optin` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `id_last_order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_last_customer_message` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_last_customer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_connection_date` date DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_employee`
--

INSERT INTO `ps_employee` (`id_employee`, `id_profile`, `id_lang`, `lastname`, `firstname`, `email`, `passwd`, `last_passwd_gen`, `stats_date_from`, `stats_date_to`, `stats_compare_from`, `stats_compare_to`, `stats_compare_option`, `preselect_date_range`, `bo_color`, `bo_theme`, `bo_css`, `default_tab`, `bo_width`, `bo_menu`, `active`, `optin`, `id_last_order`, `id_last_customer_message`, `id_last_customer`, `last_connection_date`) VALUES
(1, 1, 1, 'Lefèvre', 'Maxime', 'maxime.lefevre89@gmail.com', '49a82c64a597266e357be824c54ca7fe', '2016-07-28 18:54:57', '2016-08-01', '2016-08-09', '0000-00-00', '0000-00-00', 1, '', '', 'default', 'admin-theme.css', 1, 0, 1, 1, 1, 0, 0, 0, '2016-08-10');

-- --------------------------------------------------------

--
-- Structure de la table `ps_employee_shop`
--

CREATE TABLE `ps_employee_shop` (
  `id_employee` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_employee_shop`
--

INSERT INTO `ps_employee_shop` (`id_employee`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_feature`
--

CREATE TABLE `ps_feature` (
  `id_feature` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_feature`
--

INSERT INTO `ps_feature` (`id_feature`, `position`) VALUES
(8, 0),
(9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_feature_lang`
--

CREATE TABLE `ps_feature_lang` (
  `id_feature` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_feature_lang`
--

INSERT INTO `ps_feature_lang` (`id_feature`, `id_lang`, `name`) VALUES
(9, 1, 'Design size'),
(8, 1, 'Item size'),
(8, 2, 'Height'),
(9, 2, 'Width'),
(8, 3, 'Height'),
(9, 3, 'Width'),
(8, 4, 'Height'),
(9, 4, 'Width'),
(8, 5, 'Height'),
(9, 5, 'Width');

-- --------------------------------------------------------

--
-- Structure de la table `ps_feature_product`
--

CREATE TABLE `ps_feature_product` (
  `id_feature` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_feature_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_feature_product`
--

INSERT INTO `ps_feature_product` (`id_feature`, `id_product`, `id_feature_value`) VALUES
(8, 22, 89),
(9, 22, 90),
(8, 23, 101),
(9, 23, 102);

-- --------------------------------------------------------

--
-- Structure de la table `ps_feature_shop`
--

CREATE TABLE `ps_feature_shop` (
  `id_feature` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_feature_shop`
--

INSERT INTO `ps_feature_shop` (`id_feature`, `id_shop`) VALUES
(8, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_feature_value`
--

CREATE TABLE `ps_feature_value` (
  `id_feature_value` int(10) UNSIGNED NOT NULL,
  `id_feature` int(10) UNSIGNED NOT NULL,
  `custom` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_feature_value`
--

INSERT INTO `ps_feature_value` (`id_feature_value`, `id_feature`, `custom`) VALUES
(89, 8, 1),
(90, 9, 1),
(101, 8, 1),
(102, 9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_feature_value_lang`
--

CREATE TABLE `ps_feature_value_lang` (
  `id_feature_value` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_feature_value_lang`
--

INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES
(89, 1, 'Ø 22 x 6 mm'),
(89, 2, 'Ø 22 x 6 mm'),
(89, 3, 'Ø 22 x 6 mm'),
(89, 4, 'Ø 22 x 6 mm'),
(89, 5, 'Ø 22 x 6 mm'),
(90, 1, 'Ø 22 mm'),
(90, 2, 'Ø 22 mm'),
(90, 3, 'Ø 22 mm'),
(90, 4, 'Ø 22 mm'),
(90, 5, 'Ø 22 mm'),
(101, 1, '60*25*2 mm'),
(101, 2, '60*25*2 mm'),
(101, 3, '60*25*2 mm'),
(101, 4, '60*25*2 mm'),
(101, 5, '60*25*2 mm'),
(102, 1, '31*16 mm'),
(102, 2, '31*16 mm'),
(102, 3, '31*16 mm'),
(102, 4, '31*16 mm'),
(102, 5, '31*16 mm');

-- --------------------------------------------------------

--
-- Structure de la table `ps_gender`
--

CREATE TABLE `ps_gender` (
  `id_gender` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_gender`
--

INSERT INTO `ps_gender` (`id_gender`, `type`) VALUES
(1, 0),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_gender_lang`
--

CREATE TABLE `ps_gender_lang` (
  `id_gender` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_gender_lang`
--

INSERT INTO `ps_gender_lang` (`id_gender`, `id_lang`, `name`) VALUES
(1, 1, 'Mr.'),
(1, 2, 'M'),
(1, 3, 'Mr.'),
(1, 4, 'Mr.'),
(1, 5, 'Mr.'),
(2, 1, 'Mrs.'),
(2, 2, 'Mme'),
(2, 3, 'Mrs.'),
(2, 4, 'Mrs.'),
(2, 5, 'Mrs.');

-- --------------------------------------------------------

--
-- Structure de la table `ps_group`
--

CREATE TABLE `ps_group` (
  `id_group` int(10) UNSIGNED NOT NULL,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint(4) NOT NULL DEFAULT '0',
  `show_prices` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_group`
--

INSERT INTO `ps_group` (`id_group`, `reduction`, `price_display_method`, `show_prices`, `date_add`, `date_upd`) VALUES
(1, '0.00', 0, 1, '2016-07-29 08:54:11', '2016-07-29 08:54:11'),
(2, '0.00', 0, 1, '2016-07-29 08:54:12', '2016-07-29 08:54:12'),
(3, '0.00', 0, 1, '2016-07-29 08:54:12', '2016-07-29 08:54:12');

-- --------------------------------------------------------

--
-- Structure de la table `ps_group_lang`
--

CREATE TABLE `ps_group_lang` (
  `id_group` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_group_lang`
--

INSERT INTO `ps_group_lang` (`id_group`, `id_lang`, `name`) VALUES
(1, 1, 'Visitor'),
(1, 2, 'Visiteur'),
(1, 3, 'Visitor'),
(1, 4, 'Visitor'),
(1, 5, 'Visitor'),
(2, 1, 'Guest'),
(2, 2, 'Invité'),
(2, 3, 'Guest'),
(2, 4, 'Guest'),
(2, 5, 'Guest'),
(3, 1, 'Customer'),
(3, 2, 'Client'),
(3, 3, 'Customer'),
(3, 4, 'Customer'),
(3, 5, 'Customer');

-- --------------------------------------------------------

--
-- Structure de la table `ps_group_reduction`
--

CREATE TABLE `ps_group_reduction` (
  `id_group_reduction` mediumint(8) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `reduction` decimal(4,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_group_shop`
--

CREATE TABLE `ps_group_shop` (
  `id_group` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_group_shop`
--

INSERT INTO `ps_group_shop` (`id_group`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_guest`
--

CREATE TABLE `ps_guest` (
  `id_guest` int(10) UNSIGNED NOT NULL,
  `id_operating_system` int(10) UNSIGNED DEFAULT NULL,
  `id_web_browser` int(10) UNSIGNED DEFAULT NULL,
  `id_customer` int(10) UNSIGNED DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint(5) UNSIGNED DEFAULT NULL,
  `screen_resolution_y` smallint(5) UNSIGNED DEFAULT NULL,
  `screen_color` tinyint(3) UNSIGNED DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_guest`
--

INSERT INTO `ps_guest` (`id_guest`, `id_operating_system`, `id_web_browser`, `id_customer`, `javascript`, `screen_resolution_x`, `screen_resolution_y`, `screen_color`, `sun_java`, `adobe_flash`, `adobe_director`, `apple_quicktime`, `real_player`, `windows_media`, `accept_language`, `mobile_theme`) VALUES
(1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(2, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(3, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(4, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(5, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(6, 3, 11, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(7, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(8, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(9, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(10, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(11, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(12, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(13, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(14, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(15, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0),
(16, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fr', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_homeslider`
--

CREATE TABLE `ps_homeslider` (
  `id_homeslider_slides` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_homeslider`
--

INSERT INTO `ps_homeslider` (`id_homeslider_slides`, `id_shop`) VALUES
(7, 1),
(7, 2),
(8, 1),
(8, 2);

-- --------------------------------------------------------

--
-- Structure de la table `ps_homeslider_slides`
--

CREATE TABLE `ps_homeslider_slides` (
  `id_homeslider_slides` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_homeslider_slides`
--

INSERT INTO `ps_homeslider_slides` (`id_homeslider_slides`, `position`, `active`) VALUES
(7, 0, 1),
(8, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_homeslider_slides_lang`
--

CREATE TABLE `ps_homeslider_slides_lang` (
  `id_homeslider_slides` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `legend` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_homeslider_slides_lang`
--

INSERT INTO `ps_homeslider_slides_lang` (`id_homeslider_slides`, `id_lang`, `title`, `description`, `legend`, `url`, `image`) VALUES
(7, 1, 'Zamac hotel & rental keychain #ZHK', '<p>Zamac hotel &amp; rental keychain #ZHK</p>', 'Zamac hotel & rental keychain #ZHK', 'products/23-zamac-hotel-rental-keychain-zhk', 'e5f8208014e925dda6a695a376893ec9ee5425fb_ZHK-zamac-hotel-and-rental-keychain (1).jpg'),
(7, 2, 'Zamac hotel & rental keychain #ZHK', '', 'Zamac hotel & rental keychain #ZHK', 'products/23-zamac-hotel-rental-keychain-zhk', ''),
(7, 3, 'Zamac hotel & rental keychain #ZHK', '', 'Zamac hotel & rental keychain #ZHK', 'products/23-zamac-hotel-rental-keychain-zhk', ''),
(7, 4, 'Zamac hotel & rental keychain #ZHK', '', 'Zamac hotel & rental keychain #ZHK', 'products/23-zamac-hotel-rental-keychain-zhk', ''),
(7, 5, 'Zamac hotel & rental keychain #ZHK', '', 'Zamac hotel & rental keychain #ZHK', 'products/23-zamac-hotel-rental-keychain-zhk', ''),
(8, 1, 'Plastic glass holder badge and keychain #PKGH', '<p>Plastic glass holder badge and keychain #PKGH</p>', 'Plastic glass holder badge and keychain #PKGH', 'products/22-plastic-glass-holder-badge-and-keychain-pkgh', 'f405d62d1054787159ca1813d035eae5b06b8542_pkgh.jpg'),
(8, 2, 'Plastic glass holder badge and keychain #PKGH', '', 'Plastic glass holder badge and keychain #PKGH', 'products/22-plastic-glass-holder-badge-and-keychain-pkgh', ''),
(8, 3, 'Plastic glass holder badge and keychain #PKGH', '', 'Plastic glass holder badge and keychain #PKGH', 'products/22-plastic-glass-holder-badge-and-keychain-pkgh', ''),
(8, 4, 'Plastic glass holder badge and keychain #PKGH', '', 'Plastic glass holder badge and keychain #PKGH', 'products/22-plastic-glass-holder-badge-and-keychain-pkgh', ''),
(8, 5, 'Plastic glass holder badge and keychain #PKGH', '', 'Plastic glass holder badge and keychain #PKGH', 'products/22-plastic-glass-holder-badge-and-keychain-pkgh', '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_hook`
--

CREATE TABLE `ps_hook` (
  `id_hook` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `live_edit` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_hook`
--

INSERT INTO `ps_hook` (`id_hook`, `name`, `title`, `description`, `position`, `live_edit`) VALUES
(1, 'displayPayment', 'Payment', 'This hook displays new elements on the payment page', 1, 1),
(2, 'actionValidateOrder', 'New orders', '', 1, 0),
(3, 'displayMaintenance', 'Maintenance Page', 'This hook displays new elements on the maintenance page', 1, 0),
(4, 'actionPaymentConfirmation', 'Payment confirmation', 'This hook displays new elements after the payment is validated', 1, 0),
(5, 'displayPaymentReturn', 'Payment return', '', 1, 0),
(6, 'actionUpdateQuantity', 'Quantity update', 'Quantity is updated only when a customer effectively places their order', 1, 0),
(7, 'displayRightColumn', 'Right column blocks', 'This hook displays new elements in the right-hand column', 1, 1),
(8, 'displayLeftColumn', 'Left column blocks', 'This hook displays new elements in the left-hand column', 1, 1),
(9, 'displayHome', 'Homepage content', 'This hook displays new elements on the homepage', 1, 1),
(10, 'Header', 'Pages html head section', 'This hook adds additional elements in the head section of your pages (head section of html)', 1, 0),
(11, 'actionCartSave', 'Cart creation and update', 'This hook is displayed when a product is added to the cart or if the cart\'s content is modified', 1, 0),
(12, 'actionAuthentication', 'Successful customer authentication', 'This hook is displayed after a customer successfully signs in', 1, 0),
(13, 'actionProductAdd', 'Product creation', 'This hook is displayed after a product is created', 1, 0),
(14, 'actionProductUpdate', 'Product update', 'This hook is displayed after a product has been updated', 1, 0),
(15, 'displayTop', 'Top of pages', 'This hook displays additional elements at the top of your pages', 1, 0),
(16, 'displayRightColumnProduct', 'New elements on the product page (right column)', 'This hook displays new elements in the right-hand column of the product page', 1, 0),
(17, 'actionProductDelete', 'Product deletion', 'This hook is called when a product is deleted', 1, 0),
(18, 'displayFooterProduct', 'Product footer', 'This hook adds new blocks under the product\'s description', 1, 1),
(19, 'displayInvoice', 'Invoice', 'This hook displays new blocks on the invoice (order)', 1, 0),
(20, 'actionOrderStatusUpdate', 'Order status update - Event', 'This hook launches modules when the status of an order changes.', 1, 0),
(21, 'displayAdminOrder', 'Display new elements in the Back Office, tab AdminOrder', 'This hook launches modules when the AdminOrder tab is displayed in the Back Office', 1, 0),
(22, 'displayAdminOrderTabOrder', 'Display new elements in Back Office, AdminOrder, panel Order', 'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel tabs', 1, 0),
(23, 'displayAdminOrderTabShip', 'Display new elements in Back Office, AdminOrder, panel Shipping', 'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel tabs', 1, 0),
(24, 'displayAdminOrderContentOrder', 'Display new elements in Back Office, AdminOrder, panel Order', 'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel content', 1, 0),
(25, 'displayAdminOrderContentShip', 'Display new elements in Back Office, AdminOrder, panel Shipping', 'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel content', 1, 0),
(26, 'displayFooter', 'Footer', 'This hook displays new blocks in the footer', 1, 0),
(27, 'displayPDFInvoice', 'PDF Invoice', 'This hook allows you to display additional information on PDF invoices', 1, 0),
(28, 'displayInvoiceLegalFreeText', 'PDF Invoice - Legal Free Text', 'This hook allows you to modify the legal free text on PDF invoices', 1, 0),
(29, 'displayAdminCustomers', 'Display new elements in the Back Office, tab AdminCustomers', 'This hook launches modules when the AdminCustomers tab is displayed in the Back Office', 1, 0),
(30, 'displayOrderConfirmation', 'Order confirmation page', 'This hook is called within an order\'s confirmation page', 1, 0),
(31, 'actionCustomerAccountAdd', 'Successful customer account creation', 'This hook is called when a new customer creates an account successfully', 1, 0),
(32, 'displayCustomerAccount', 'Customer account displayed in Front Office', 'This hook displays new elements on the customer account page', 1, 0),
(33, 'displayCustomerIdentityForm', 'Customer identity form displayed in Front Office', 'This hook displays new elements on the form to update a customer identity', 1, 0),
(34, 'actionOrderSlipAdd', 'Order slip creation', 'This hook is called when a new credit slip is added regarding client order', 1, 0),
(35, 'displayProductTab', 'Tabs on product page', 'This hook is called on the product page\'s tab', 1, 0),
(36, 'displayProductTabContent', 'Tabs content on the product page', 'This hook is called on the product page\'s tab', 1, 0),
(37, 'displayShoppingCartFooter', 'Shopping cart footer', 'This hook displays some specific information on the shopping cart\'s page', 1, 0),
(38, 'displayCustomerAccountForm', 'Customer account creation form', 'This hook displays some information on the form to create a customer account', 1, 0),
(39, 'displayAdminStatsModules', 'Stats - Modules', '', 1, 0),
(40, 'displayAdminStatsGraphEngine', 'Graph engines', '', 1, 0),
(41, 'actionOrderReturn', 'Returned product', 'This hook is displayed when a customer returns a product ', 1, 0),
(42, 'displayProductButtons', 'Product page actions', 'This hook adds new action buttons on the product page', 1, 0),
(43, 'displayBackOfficeHome', 'Administration panel homepage', 'This hook is displayed on the admin panel\'s homepage', 1, 0),
(44, 'displayAdminStatsGridEngine', 'Grid engines', '', 1, 0),
(45, 'actionWatermark', 'Watermark', '', 1, 0),
(46, 'actionProductCancel', 'Product cancelled', 'This hook is called when you cancel a product in an order', 1, 0),
(47, 'displayLeftColumnProduct', 'New elements on the product page (left column)', 'This hook displays new elements in the left-hand column of the product page', 1, 0),
(48, 'actionProductOutOfStock', 'Out-of-stock product', 'This hook displays new action buttons if a product is out of stock', 1, 0),
(49, 'actionProductAttributeUpdate', 'Product attribute update', 'This hook is displayed when a product\'s attribute is updated', 1, 0),
(50, 'displayCarrierList', 'Extra carrier (module mode)', '', 1, 0),
(51, 'displayShoppingCart', 'Shopping cart - Additional button', 'This hook displays new action buttons within the shopping cart', 1, 0),
(52, 'actionSearch', 'Search', '', 1, 0),
(53, 'displayBeforePayment', 'Redirect during the order process', 'This hook redirects the user to the module instead of displaying payment modules', 1, 0),
(54, 'actionCarrierUpdate', 'Carrier Update', 'This hook is called when a carrier is updated', 1, 0),
(55, 'actionOrderStatusPostUpdate', 'Post update of order status', '', 1, 0),
(56, 'displayCustomerAccountFormTop', 'Block above the form for create an account', 'This hook is displayed above the customer\'s account creation form', 1, 0),
(57, 'displayBackOfficeHeader', 'Administration panel header', 'This hook is displayed in the header of the admin panel', 1, 0),
(58, 'displayBackOfficeTop', 'Administration panel hover the tabs', 'This hook is displayed on the roll hover of the tabs within the admin panel', 1, 0),
(59, 'displayBackOfficeFooter', 'Administration panel footer', 'This hook is displayed within the admin panel\'s footer', 1, 0),
(60, 'actionProductAttributeDelete', 'Product attribute deletion', 'This hook is displayed when a product\'s attribute is deleted', 1, 0),
(61, 'actionCarrierProcess', 'Carrier process', '', 1, 0),
(62, 'actionOrderDetail', 'Order detail', 'This hook is used to set the follow-up in Smarty when an order\'s detail is called', 1, 0),
(63, 'displayBeforeCarrier', 'Before carriers list', 'This hook is displayed before the carrier list in Front Office', 1, 0),
(64, 'displayOrderDetail', 'Order detail', 'This hook is displayed within the order\'s details in Front Office', 1, 0),
(65, 'actionPaymentCCAdd', 'Payment CC added', '', 1, 0),
(66, 'displayProductComparison', 'Extra product comparison', '', 1, 0),
(67, 'actionCategoryAdd', 'Category creation', 'This hook is displayed when a category is created', 1, 0),
(68, 'actionCategoryUpdate', 'Category modification', 'This hook is displayed when a category is modified', 1, 0),
(69, 'actionCategoryDelete', 'Category deletion', 'This hook is displayed when a category is deleted', 1, 0),
(70, 'actionBeforeAuthentication', 'Before authentication', 'This hook is displayed before the customer\'s authentication', 1, 0),
(71, 'displayPaymentTop', 'Top of payment page', 'This hook is displayed at the top of the payment page', 1, 0),
(72, 'actionHtaccessCreate', 'After htaccess creation', 'This hook is displayed after the htaccess creation', 1, 0),
(73, 'actionAdminMetaSave', 'After saving the configuration in AdminMeta', 'This hook is displayed after saving the configuration in AdminMeta', 1, 0),
(74, 'displayAttributeGroupForm', 'Add fields to the form \'attribute group\'', 'This hook adds fields to the form \'attribute group\'', 1, 0),
(75, 'actionAttributeGroupSave', 'Saving an attribute group', 'This hook is called while saving an attributes group', 1, 0),
(76, 'actionAttributeGroupDelete', 'Deleting attribute group', 'This hook is called while deleting an attributes  group', 1, 0),
(77, 'displayFeatureForm', 'Add fields to the form \'feature\'', 'This hook adds fields to the form \'feature\'', 1, 0),
(78, 'actionFeatureSave', 'Saving attributes\' features', 'This hook is called while saving an attributes features', 1, 0),
(79, 'actionFeatureDelete', 'Deleting attributes\' features', 'This hook is called while deleting an attributes features', 1, 0),
(80, 'actionProductSave', 'Saving products', 'This hook is called while saving products', 1, 0),
(81, 'actionProductListOverride', 'Assign a products list to a category', 'This hook assigns a products list to a category', 1, 0),
(82, 'displayAttributeGroupPostProcess', 'On post-process in admin attribute group', 'This hook is called on post-process in admin attribute group', 1, 0),
(83, 'displayFeaturePostProcess', 'On post-process in admin feature', 'This hook is called on post-process in admin feature', 1, 0),
(84, 'displayFeatureValueForm', 'Add fields to the form \'feature value\'', 'This hook adds fields to the form \'feature value\'', 1, 0),
(85, 'displayFeatureValuePostProcess', 'On post-process in admin feature value', 'This hook is called on post-process in admin feature value', 1, 0),
(86, 'actionFeatureValueDelete', 'Deleting attributes\' features\' values', 'This hook is called while deleting an attributes features value', 1, 0),
(87, 'actionFeatureValueSave', 'Saving an attributes features value', 'This hook is called while saving an attributes features value', 1, 0),
(88, 'displayAttributeForm', 'Add fields to the form \'attribute value\'', 'This hook adds fields to the form \'attribute value\'', 1, 0),
(89, 'actionAttributePostProcess', 'On post-process in admin feature value', 'This hook is called on post-process in admin feature value', 1, 0),
(90, 'actionAttributeDelete', 'Deleting an attributes features value', 'This hook is called while deleting an attributes features value', 1, 0),
(91, 'actionAttributeSave', 'Saving an attributes features value', 'This hook is called while saving an attributes features value', 1, 0),
(92, 'actionTaxManager', 'Tax Manager Factory', '', 1, 0),
(93, 'displayMyAccountBlock', 'My account block', 'This hook displays extra information within the \'my account\' block"', 1, 0),
(94, 'actionModuleInstallBefore', 'actionModuleInstallBefore', '', 1, 0),
(95, 'actionModuleInstallAfter', 'actionModuleInstallAfter', '', 1, 0),
(96, 'displayHomeTab', 'Home Page Tabs', 'This hook displays new elements on the homepage tabs', 1, 1),
(97, 'displayHomeTabContent', 'Home Page Tabs Content', 'This hook displays new elements on the homepage tabs content', 1, 1),
(98, 'displayTopColumn', 'Top column blocks', 'This hook displays new elements in the top of columns', 1, 1),
(99, 'displayBackOfficeCategory', 'Display new elements in the Back Office, tab AdminCategories', 'This hook launches modules when the AdminCategories tab is displayed in the Back Office', 1, 0),
(100, 'displayProductListFunctionalButtons', 'Display new elements in the Front Office, products list', 'This hook launches modules when the products list is displayed in the Front Office', 1, 0),
(101, 'displayNav', 'Navigation', '', 1, 1),
(102, 'displayOverrideTemplate', 'Change the default template of current controller', '', 1, 0),
(103, 'actionAdminLoginControllerSetMedia', 'Set media on admin login page header', 'This hook is called after adding media to admin login page header', 1, 0),
(104, 'actionOrderEdited', 'Order edited', 'This hook is called when an order is edited.', 1, 0),
(105, 'actionEmailAddBeforeContent', 'Add extra content before mail content', 'This hook is called just before fetching mail template', 1, 0),
(106, 'actionEmailAddAfterContent', 'Add extra content after mail content', 'This hook is called just after fetching mail template', 1, 0),
(107, 'actionObjectProductUpdateAfter', 'actionObjectProductUpdateAfter', '', 0, 0),
(108, 'actionObjectProductDeleteAfter', 'actionObjectProductDeleteAfter', '', 0, 0),
(109, 'displayCompareExtraInformation', 'displayCompareExtraInformation', '', 1, 1),
(110, 'displaySocialSharing', 'displaySocialSharing', '', 1, 1),
(111, 'displayBanner', 'displayBanner', '', 1, 1),
(112, 'actionObjectLanguageAddAfter', 'actionObjectLanguageAddAfter', '', 0, 0),
(113, 'displayPaymentEU', 'displayPaymentEU', '', 1, 1),
(114, 'actionCartListOverride', 'actionCartListOverride', '', 0, 0),
(115, 'actionAdminMetaControllerUpdate_optionsBefore', 'actionAdminMetaControllerUpdate_optionsBefore', '', 0, 0),
(116, 'actionAdminLanguagesControllerStatusBefore', 'actionAdminLanguagesControllerStatusBefore', '', 0, 0),
(117, 'actionObjectCmsUpdateAfter', 'actionObjectCmsUpdateAfter', '', 0, 0),
(118, 'actionObjectCmsDeleteAfter', 'actionObjectCmsDeleteAfter', '', 0, 0),
(119, 'actionShopDataDuplication', 'actionShopDataDuplication', '', 0, 0),
(120, 'actionAdminStoresControllerUpdate_optionsAfter', 'actionAdminStoresControllerUpdate_optionsAfter', '', 0, 0),
(121, 'actionObjectManufacturerDeleteAfter', 'actionObjectManufacturerDeleteAfter', '', 0, 0),
(122, 'actionObjectManufacturerAddAfter', 'actionObjectManufacturerAddAfter', '', 0, 0),
(123, 'actionObjectManufacturerUpdateAfter', 'actionObjectManufacturerUpdateAfter', '', 0, 0),
(125, 'actionModuleRegisterHookAfter', 'actionModuleRegisterHookAfter', '', 0, 0),
(126, 'actionModuleUnRegisterHookAfter', 'actionModuleUnRegisterHookAfter', '', 0, 0),
(127, 'displayMyAccountBlockfooter', 'My account block', 'Display extra informations inside the "my account" block', 1, 0),
(128, 'displayMobileTopSiteMap', 'displayMobileTopSiteMap', '', 1, 1),
(129, 'displaySearch', 'displaySearch', '', 1, 1),
(130, 'actionObjectSupplierDeleteAfter', 'actionObjectSupplierDeleteAfter', '', 0, 0),
(131, 'actionObjectSupplierAddAfter', 'actionObjectSupplierAddAfter', '', 0, 0),
(132, 'actionObjectSupplierUpdateAfter', 'actionObjectSupplierUpdateAfter', '', 0, 0),
(133, 'actionObjectCategoryUpdateAfter', 'actionObjectCategoryUpdateAfter', '', 0, 0),
(134, 'actionObjectCategoryDeleteAfter', 'actionObjectCategoryDeleteAfter', '', 0, 0),
(135, 'actionObjectCategoryAddAfter', 'actionObjectCategoryAddAfter', '', 0, 0),
(136, 'actionObjectCmsAddAfter', 'actionObjectCmsAddAfter', '', 0, 0),
(137, 'actionObjectProductAddAfter', 'actionObjectProductAddAfter', '', 0, 0),
(138, 'dashboardZoneOne', 'dashboardZoneOne', '', 0, 0),
(139, 'dashboardData', 'dashboardData', '', 0, 0),
(140, 'actionObjectOrderAddAfter', 'actionObjectOrderAddAfter', '', 0, 0),
(141, 'actionObjectCustomerAddAfter', 'actionObjectCustomerAddAfter', '', 0, 0),
(142, 'actionObjectCustomerMessageAddAfter', 'actionObjectCustomerMessageAddAfter', '', 0, 0),
(143, 'actionObjectCustomerThreadAddAfter', 'actionObjectCustomerThreadAddAfter', '', 0, 0),
(144, 'actionObjectOrderReturnAddAfter', 'actionObjectOrderReturnAddAfter', '', 0, 0),
(145, 'actionAdminControllerSetMedia', 'actionAdminControllerSetMedia', '', 0, 0),
(146, 'dashboardZoneTwo', 'dashboardZoneTwo', '', 0, 0),
(165, 'moduleRoutes', 'moduleRoutes', '', 0, 0),
(166, 'displayAdminProductsExtra', 'displayAdminProductsExtra', '', 1, 1),
(167, 'displayProductVideoTab', 'displayProductVideoTab', '', 1, 1),
(168, 'displayProductVideoTabContent', 'displayProductVideoTabContent', '', 1, 1),
(169, 'displayProductListGallery', 'displayProductListGallery', '', 1, 1),
(170, 'actionAdminMetaControllerUpdate_optionsAfter', 'actionAdminMetaControllerUpdate_optionsAfter', '', 0, 0),
(171, 'actionAdminPerformanceControllerSaveAfter', 'actionAdminPerformanceControllerSaveAfter', '', 0, 0),
(172, 'actionObjectCarrierAddAfter', 'actionObjectCarrierAddAfter', '', 0, 0),
(173, 'actionObjectContactAddAfter', 'actionObjectContactAddAfter', '', 0, 0),
(174, 'actionAdminThemesControllerUpdate_optionsAfter', 'actionAdminThemesControllerUpdate_optionsAfter', '', 0, 0),
(175, 'actionObjectShopUpdateAfter', 'actionObjectShopUpdateAfter', '', 0, 0),
(176, 'actionAdminPreferencesControllerUpdate_optionsAfter', 'actionAdminPreferencesControllerUpdate_optionsAfter', '', 0, 0),
(177, 'actionObjectShopAddAfter', 'actionObjectShopAddAfter', '', 0, 0),
(178, 'actionObjectShopGroupAddAfter', 'actionObjectShopGroupAddAfter', '', 0, 0),
(179, 'actionObjectCartAddAfter', 'actionObjectCartAddAfter', '', 0, 0),
(180, 'actionObjectEmployeeAddAfter', 'actionObjectEmployeeAddAfter', '', 0, 0),
(181, 'actionObjectImageAddAfter', 'actionObjectImageAddAfter', '', 0, 0),
(182, 'actionObjectCartRuleAddAfter', 'actionObjectCartRuleAddAfter', '', 0, 0),
(183, 'actionAdminStoresControllerSaveAfter', 'actionAdminStoresControllerSaveAfter', '', 0, 0),
(184, 'actionAdminWebserviceControllerSaveAfter', 'actionAdminWebserviceControllerSaveAfter', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_hook_alias`
--

CREATE TABLE `ps_hook_alias` (
  `id_hook_alias` int(10) UNSIGNED NOT NULL,
  `alias` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_hook_alias`
--

INSERT INTO `ps_hook_alias` (`id_hook_alias`, `alias`, `name`) VALUES
(1, 'payment', 'displayPayment'),
(2, 'newOrder', 'actionValidateOrder'),
(3, 'paymentConfirm', 'actionPaymentConfirmation'),
(4, 'paymentReturn', 'displayPaymentReturn'),
(5, 'updateQuantity', 'actionUpdateQuantity'),
(6, 'rightColumn', 'displayRightColumn'),
(7, 'leftColumn', 'displayLeftColumn'),
(8, 'home', 'displayHome'),
(9, 'displayHeader', 'Header'),
(10, 'cart', 'actionCartSave'),
(11, 'authentication', 'actionAuthentication'),
(12, 'addproduct', 'actionProductAdd'),
(13, 'updateproduct', 'actionProductUpdate'),
(14, 'top', 'displayTop'),
(15, 'extraRight', 'displayRightColumnProduct'),
(16, 'deleteproduct', 'actionProductDelete'),
(17, 'productfooter', 'displayFooterProduct'),
(18, 'invoice', 'displayInvoice'),
(19, 'updateOrderStatus', 'actionOrderStatusUpdate'),
(20, 'adminOrder', 'displayAdminOrder'),
(21, 'footer', 'displayFooter'),
(22, 'PDFInvoice', 'displayPDFInvoice'),
(23, 'adminCustomers', 'displayAdminCustomers'),
(24, 'orderConfirmation', 'displayOrderConfirmation'),
(25, 'createAccount', 'actionCustomerAccountAdd'),
(26, 'customerAccount', 'displayCustomerAccount'),
(27, 'orderSlip', 'actionOrderSlipAdd'),
(28, 'productTab', 'displayProductTab'),
(29, 'productTabContent', 'displayProductTabContent'),
(30, 'shoppingCart', 'displayShoppingCartFooter'),
(31, 'createAccountForm', 'displayCustomerAccountForm'),
(32, 'AdminStatsModules', 'displayAdminStatsModules'),
(33, 'GraphEngine', 'displayAdminStatsGraphEngine'),
(34, 'orderReturn', 'actionOrderReturn'),
(35, 'productActions', 'displayProductButtons'),
(36, 'backOfficeHome', 'displayBackOfficeHome'),
(37, 'GridEngine', 'displayAdminStatsGridEngine'),
(38, 'watermark', 'actionWatermark'),
(39, 'cancelProduct', 'actionProductCancel'),
(40, 'extraLeft', 'displayLeftColumnProduct'),
(41, 'productOutOfStock', 'actionProductOutOfStock'),
(42, 'updateProductAttribute', 'actionProductAttributeUpdate'),
(43, 'extraCarrier', 'displayCarrierList'),
(44, 'shoppingCartExtra', 'displayShoppingCart'),
(45, 'search', 'actionSearch'),
(46, 'backBeforePayment', 'displayBeforePayment'),
(47, 'updateCarrier', 'actionCarrierUpdate'),
(48, 'postUpdateOrderStatus', 'actionOrderStatusPostUpdate'),
(49, 'createAccountTop', 'displayCustomerAccountFormTop'),
(50, 'backOfficeHeader', 'displayBackOfficeHeader'),
(51, 'backOfficeTop', 'displayBackOfficeTop'),
(52, 'backOfficeFooter', 'displayBackOfficeFooter'),
(53, 'deleteProductAttribute', 'actionProductAttributeDelete'),
(54, 'processCarrier', 'actionCarrierProcess'),
(55, 'orderDetail', 'actionOrderDetail'),
(56, 'beforeCarrier', 'displayBeforeCarrier'),
(57, 'orderDetailDisplayed', 'displayOrderDetail'),
(58, 'paymentCCAdded', 'actionPaymentCCAdd'),
(59, 'extraProductComparison', 'displayProductComparison'),
(60, 'categoryAddition', 'actionCategoryAdd'),
(61, 'categoryUpdate', 'actionCategoryUpdate'),
(62, 'categoryDeletion', 'actionCategoryDelete'),
(63, 'beforeAuthentication', 'actionBeforeAuthentication'),
(64, 'paymentTop', 'displayPaymentTop'),
(65, 'afterCreateHtaccess', 'actionHtaccessCreate'),
(66, 'afterSaveAdminMeta', 'actionAdminMetaSave'),
(67, 'attributeGroupForm', 'displayAttributeGroupForm'),
(68, 'afterSaveAttributeGroup', 'actionAttributeGroupSave'),
(69, 'afterDeleteAttributeGroup', 'actionAttributeGroupDelete'),
(70, 'featureForm', 'displayFeatureForm'),
(71, 'afterSaveFeature', 'actionFeatureSave'),
(72, 'afterDeleteFeature', 'actionFeatureDelete'),
(73, 'afterSaveProduct', 'actionProductSave'),
(74, 'productListAssign', 'actionProductListOverride'),
(75, 'postProcessAttributeGroup', 'displayAttributeGroupPostProcess'),
(76, 'postProcessFeature', 'displayFeaturePostProcess'),
(77, 'featureValueForm', 'displayFeatureValueForm'),
(78, 'postProcessFeatureValue', 'displayFeatureValuePostProcess'),
(79, 'afterDeleteFeatureValue', 'actionFeatureValueDelete'),
(80, 'afterSaveFeatureValue', 'actionFeatureValueSave'),
(81, 'attributeForm', 'displayAttributeForm'),
(82, 'postProcessAttribute', 'actionAttributePostProcess'),
(83, 'afterDeleteAttribute', 'actionAttributeDelete'),
(84, 'afterSaveAttribute', 'actionAttributeSave'),
(85, 'taxManager', 'actionTaxManager'),
(86, 'myAccountBlock', 'displayMyAccountBlock');

-- --------------------------------------------------------

--
-- Structure de la table `ps_hook_module`
--

CREATE TABLE `ps_hook_module` (
  `id_module` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_hook` int(10) UNSIGNED NOT NULL,
  `position` tinyint(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_hook_module`
--

INSERT INTO `ps_hook_module` (`id_module`, `id_shop`, `id_hook`, `position`) VALUES
(1, 1, 10, 1),
(1, 1, 16, 1),
(1, 1, 107, 1),
(1, 1, 108, 1),
(1, 1, 109, 1),
(1, 1, 110, 1),
(3, 1, 1, 1),
(3, 1, 5, 1),
(3, 1, 113, 1),
(5, 1, 114, 1),
(7, 1, 67, 1),
(7, 1, 68, 1),
(7, 1, 69, 1),
(7, 1, 99, 1),
(7, 1, 115, 1),
(7, 1, 116, 1),
(10, 1, 101, 1),
(11, 1, 8, 1),
(11, 1, 74, 1),
(11, 1, 75, 1),
(11, 1, 76, 1),
(11, 1, 77, 1),
(11, 1, 78, 1),
(11, 1, 79, 1),
(11, 1, 80, 1),
(11, 1, 81, 1),
(11, 1, 82, 1),
(11, 1, 83, 1),
(11, 1, 84, 1),
(11, 1, 85, 1),
(11, 1, 86, 1),
(11, 1, 87, 1),
(11, 1, 88, 1),
(11, 1, 89, 1),
(11, 1, 90, 1),
(11, 1, 91, 1),
(12, 1, 117, 1),
(12, 1, 118, 1),
(12, 1, 119, 1),
(12, 1, 120, 1),
(16, 1, 121, 1),
(16, 1, 122, 1),
(16, 1, 123, 1),
(17, 1, 125, 1),
(18, 1, 126, 1),
(19, 1, 13, 1),
(19, 1, 14, 1),
(19, 1, 17, 1),
(20, 1, 26, 1),
(20, 1, 31, 1),
(22, 1, 15, 1),
(22, 1, 128, 1),
(22, 1, 129, 1),
(23, 1, 96, 1),
(23, 1, 97, 1),
(25, 1, 130, 1),
(25, 1, 131, 1),
(25, 1, 132, 1),
(27, 1, 133, 1),
(27, 1, 134, 1),
(27, 1, 135, 1),
(27, 1, 136, 1),
(27, 1, 137, 1),
(31, 1, 138, 1),
(31, 1, 139, 1),
(31, 1, 140, 1),
(31, 1, 141, 1),
(31, 1, 142, 1),
(31, 1, 143, 1),
(31, 1, 144, 1),
(31, 1, 145, 1),
(32, 1, 146, 1),
(35, 1, 40, 1),
(36, 1, 44, 1),
(37, 1, 98, 1),
(40, 1, 39, 1),
(50, 1, 12, 1),
(63, 1, 9, 1),
(63, 1, 57, 1),
(64, 1, 2, 1),
(64, 1, 20, 1),
(64, 1, 95, 1),
(64, 1, 170, 1),
(64, 1, 171, 1),
(64, 1, 172, 1),
(64, 1, 173, 1),
(64, 1, 174, 1),
(64, 1, 175, 1),
(64, 1, 176, 1),
(64, 1, 177, 1),
(64, 1, 178, 1),
(64, 1, 179, 1),
(64, 1, 180, 1),
(64, 1, 181, 1),
(64, 1, 182, 1),
(64, 1, 183, 1),
(64, 1, 184, 1),
(79, 1, 166, 1),
(79, 1, 167, 1),
(79, 1, 168, 1),
(82, 1, 169, 1),
(84, 1, 47, 1),
(86, 1, 18, 1),
(86, 1, 37, 1),
(86, 1, 55, 1),
(92, 1, 11, 1),
(92, 1, 29, 1),
(92, 1, 32, 1),
(92, 1, 93, 1),
(92, 1, 100, 1),
(2, 1, 10, 2),
(4, 1, 55, 2),
(4, 1, 96, 2),
(4, 1, 97, 2),
(5, 1, 15, 2),
(6, 1, 26, 2),
(8, 1, 101, 2),
(11, 1, 67, 2),
(11, 1, 68, 2),
(11, 1, 69, 2),
(13, 1, 9, 2),
(18, 1, 125, 2),
(23, 1, 13, 2),
(23, 1, 14, 2),
(23, 1, 17, 2),
(27, 1, 107, 2),
(27, 1, 108, 2),
(27, 1, 117, 2),
(27, 1, 118, 2),
(27, 1, 119, 2),
(27, 1, 121, 2),
(27, 1, 122, 2),
(27, 1, 123, 2),
(27, 1, 130, 2),
(27, 1, 131, 2),
(27, 1, 132, 2),
(30, 1, 1, 2),
(30, 1, 5, 2),
(30, 1, 113, 2),
(32, 1, 139, 2),
(32, 1, 145, 2),
(33, 1, 146, 2),
(39, 1, 42, 2),
(41, 1, 39, 2),
(50, 1, 31, 2),
(60, 1, 52, 2),
(64, 1, 57, 2),
(64, 1, 120, 2),
(64, 1, 136, 2),
(64, 1, 137, 2),
(64, 1, 140, 2),
(64, 1, 141, 2),
(64, 1, 143, 2),
(81, 1, 8, 2),
(87, 1, 18, 2),
(5, 1, 10, 3),
(14, 1, 8, 3),
(19, 1, 97, 3),
(27, 1, 15, 3),
(27, 1, 68, 3),
(33, 1, 139, 3),
(33, 1, 145, 3),
(34, 1, 146, 3),
(37, 1, 119, 3),
(38, 1, 13, 3),
(38, 1, 14, 3),
(38, 1, 17, 3),
(42, 1, 39, 3),
(63, 1, 26, 3),
(65, 1, 57, 3),
(65, 1, 125, 3),
(65, 1, 126, 3),
(80, 1, 101, 3),
(81, 1, 9, 3),
(92, 1, 42, 3),
(6, 1, 10, 4),
(12, 1, 26, 4),
(28, 1, 15, 4),
(34, 1, 139, 4),
(35, 1, 145, 4),
(43, 1, 39, 4),
(81, 1, 57, 4),
(85, 1, 101, 4),
(87, 1, 13, 4),
(87, 1, 14, 4),
(87, 1, 17, 4),
(91, 1, 9, 4),
(91, 1, 68, 4),
(92, 1, 8, 4),
(7, 1, 8, 5),
(7, 1, 10, 5),
(7, 1, 26, 5),
(26, 1, 13, 5),
(26, 1, 17, 5),
(40, 1, 15, 5),
(44, 1, 39, 5),
(79, 1, 14, 5),
(79, 1, 145, 5),
(83, 1, 57, 5),
(4, 1, 13, 6),
(4, 1, 17, 6),
(8, 1, 10, 6),
(11, 1, 26, 6),
(12, 1, 8, 6),
(26, 1, 14, 6),
(41, 1, 15, 6),
(45, 1, 39, 6),
(4, 1, 14, 7),
(9, 1, 10, 7),
(16, 1, 8, 7),
(18, 1, 26, 7),
(46, 1, 39, 7),
(91, 1, 13, 7),
(91, 1, 17, 7),
(92, 1, 15, 7),
(10, 1, 10, 8),
(17, 1, 8, 8),
(47, 1, 39, 8),
(50, 1, 26, 8),
(91, 1, 14, 8),
(11, 1, 10, 9),
(21, 1, 8, 9),
(48, 1, 39, 9),
(12, 1, 10, 10),
(23, 1, 8, 10),
(49, 1, 39, 10),
(81, 1, 26, 10),
(14, 1, 10, 11),
(24, 1, 8, 11),
(51, 1, 39, 11),
(15, 1, 10, 12),
(25, 1, 8, 12),
(52, 1, 39, 12),
(16, 1, 10, 13),
(26, 1, 8, 13),
(53, 1, 39, 13),
(17, 1, 10, 14),
(29, 1, 8, 14),
(54, 1, 39, 14),
(18, 1, 10, 15),
(55, 1, 39, 15),
(63, 1, 8, 15),
(4, 1, 8, 16),
(19, 1, 10, 16),
(56, 1, 39, 16),
(20, 1, 10, 17),
(57, 1, 39, 17),
(21, 1, 10, 18),
(58, 1, 39, 18),
(22, 1, 10, 19),
(59, 1, 39, 19),
(23, 1, 10, 20),
(60, 1, 39, 20),
(24, 1, 10, 21),
(61, 1, 39, 21),
(25, 1, 10, 22),
(62, 1, 39, 22),
(26, 1, 10, 23),
(29, 1, 10, 24),
(37, 1, 10, 25),
(28, 1, 10, 26),
(38, 1, 10, 27),
(39, 1, 10, 28),
(63, 1, 10, 29),
(84, 1, 10, 30),
(85, 1, 10, 31),
(86, 1, 10, 32),
(87, 1, 10, 33),
(79, 1, 10, 34),
(80, 1, 10, 35),
(27, 1, 10, 36),
(81, 1, 10, 37),
(82, 1, 10, 38),
(4, 1, 10, 39),
(91, 1, 10, 40),
(92, 1, 10, 41);

-- --------------------------------------------------------

--
-- Structure de la table `ps_hook_module_exceptions`
--

CREATE TABLE `ps_hook_module_exceptions` (
  `id_hook_module_exceptions` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_module` int(10) UNSIGNED NOT NULL,
  `id_hook` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_hook_module_exceptions`
--

INSERT INTO `ps_hook_module_exceptions` (`id_hook_module_exceptions`, `id_shop`, `id_module`, `id_hook`, `file_name`) VALUES
(1, 1, 4, 8, 'category'),
(2, 1, 16, 8, 'category'),
(3, 1, 17, 8, 'category'),
(4, 1, 21, 8, 'category'),
(5, 1, 25, 8, 'category'),
(8, 1, 4, 8, 'category'),
(9, 1, 4, 8, 'category'),
(10, 1, 7, 8, 'order'),
(11, 1, 7, 8, 'address'),
(12, 1, 7, 8, 'index'),
(13, 1, 7, 8, 'contact'),
(14, 1, 7, 8, 'orderslip'),
(15, 1, 7, 8, 'identity'),
(16, 1, 7, 8, 'discount'),
(17, 1, 7, 8, 'myaccount'),
(18, 1, 7, 8, 'orderfollow'),
(19, 1, 7, 8, 'orderopc'),
(20, 1, 7, 8, 'password'),
(21, 1, 7, 8, 'stores'),
(22, 1, 7, 8, 'cms'),
(23, 1, 7, 8, 'auth'),
(24, 1, 7, 8, 'product'),
(25, 1, 7, 8, 'pagenotfound'),
(26, 1, 7, 8, 'addresses'),
(27, 1, 7, 8, 'cart'),
(28, 1, 7, 8, 'sitemap'),
(29, 1, 11, 8, 'cms'),
(30, 1, 11, 8, 'password'),
(31, 1, 11, 8, 'orderfollow'),
(32, 1, 11, 8, 'index'),
(33, 1, 11, 8, 'order'),
(34, 1, 11, 8, 'contact'),
(35, 1, 11, 8, 'address'),
(36, 1, 11, 8, 'auth'),
(37, 1, 11, 8, 'pagenotfound'),
(38, 1, 11, 8, 'addresses'),
(39, 1, 11, 8, 'orderopc'),
(40, 1, 11, 8, 'myaccount'),
(41, 1, 11, 8, 'identity'),
(42, 1, 11, 8, 'discount'),
(43, 1, 11, 8, 'product'),
(44, 1, 11, 8, 'sitemap'),
(45, 1, 11, 8, 'cart'),
(46, 1, 11, 8, 'orderslip'),
(47, 1, 11, 8, 'stores'),
(48, 1, 16, 8, 'category'),
(49, 1, 16, 8, 'category'),
(50, 1, 16, 8, 'category'),
(51, 1, 17, 8, 'category'),
(52, 1, 17, 8, 'category'),
(53, 1, 17, 8, 'category'),
(54, 1, 21, 8, 'category'),
(55, 1, 21, 8, 'category'),
(56, 1, 21, 8, 'category'),
(57, 1, 24, 8, 'orderslip'),
(58, 1, 24, 8, 'cms'),
(59, 1, 24, 8, 'stores'),
(60, 1, 24, 8, 'contact'),
(61, 1, 24, 8, 'address'),
(62, 1, 24, 8, 'auth'),
(63, 1, 24, 8, 'password'),
(64, 1, 24, 8, 'orderopc'),
(65, 1, 24, 8, 'order'),
(66, 1, 24, 8, 'index'),
(67, 1, 24, 8, 'cart'),
(68, 1, 24, 8, 'identity'),
(69, 1, 24, 8, 'myaccount'),
(70, 1, 24, 8, 'orderfollow'),
(71, 1, 24, 8, 'addresses'),
(72, 1, 24, 8, 'product'),
(73, 1, 24, 8, 'discount'),
(74, 1, 24, 8, 'sitemap'),
(75, 1, 24, 8, 'pagenotfound'),
(76, 1, 25, 8, 'category'),
(77, 1, 25, 8, 'category'),
(78, 1, 25, 8, 'category');

-- --------------------------------------------------------

--
-- Structure de la table `ps_image`
--

CREATE TABLE `ps_image` (
  `id_image` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `position` smallint(2) UNSIGNED NOT NULL DEFAULT '0',
  `cover` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_image`
--

INSERT INTO `ps_image` (`id_image`, `id_product`, `position`, `cover`) VALUES
(81, 17, 1, 1),
(82, 17, 2, NULL),
(83, 17, 3, NULL),
(84, 17, 4, NULL),
(85, 17, 5, NULL),
(101, 21, 1, 1),
(102, 22, 1, 1),
(103, 22, 2, NULL),
(104, 23, 1, 1),
(105, 23, 2, NULL),
(106, 24, 2, NULL),
(107, 24, 1, 1),
(108, 25, 1, 1),
(109, 25, 2, NULL),
(110, 26, 1, 1),
(111, 27, 1, 1),
(112, 28, 1, 1),
(125, 27, 2, NULL),
(126, 22, 3, NULL),
(127, 22, 4, NULL),
(128, 22, 5, NULL),
(129, 22, 6, NULL),
(130, 22, 7, NULL),
(131, 22, 8, NULL),
(133, 27, 3, NULL),
(134, 23, 3, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ps_image_lang`
--

CREATE TABLE `ps_image_lang` (
  `id_image` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `legend` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_image_lang`
--

INSERT INTO `ps_image_lang` (`id_image`, `id_lang`, `legend`) VALUES
(81, 1, ''),
(81, 2, ''),
(81, 3, ''),
(81, 4, ''),
(81, 5, ''),
(82, 1, ''),
(82, 2, ''),
(82, 3, ''),
(82, 4, ''),
(82, 5, ''),
(83, 1, ''),
(83, 2, ''),
(83, 3, ''),
(83, 4, ''),
(83, 5, ''),
(84, 1, ''),
(84, 2, ''),
(84, 3, ''),
(84, 4, ''),
(84, 5, ''),
(85, 1, ''),
(85, 2, ''),
(85, 3, ''),
(85, 4, ''),
(85, 5, ''),
(101, 1, 'Monkey'),
(101, 2, 'Monkey'),
(101, 3, 'Monkey'),
(101, 4, 'Monkey'),
(101, 5, 'Monkey'),
(102, 1, 'Plastic glass holder badge and keychain PKGH'),
(102, 2, 'Plastic glass holder badge and keychain PKGH'),
(102, 3, 'Plastic glass holder badge and keychain PKGH'),
(102, 4, 'Plastic glass holder badge and keychain PKGH'),
(102, 5, 'Plastic glass holder badge and keychain PKGH'),
(103, 1, 'Plastic glass holder badge and keychain PKGH'),
(103, 2, 'Plastic glass holder badge and keychain PKGH'),
(103, 3, 'Plastic glass holder badge and keychain PKGH'),
(103, 4, 'Plastic glass holder badge and keychain PKGH'),
(103, 5, 'Plastic glass holder badge and keychain PKGH'),
(104, 1, 'Zamac hotel & rental keychain ZHK'),
(104, 2, 'Zamac hotel & rental keychain ZHK'),
(104, 3, 'Zamac hotel & rental keychain ZHK'),
(104, 4, 'Zamac hotel & rental keychain ZHK'),
(104, 5, 'Zamac hotel & rental keychain ZHK'),
(105, 1, 'Zamac hotel & rental keychain ZHK'),
(105, 2, 'Zamac hotel & rental keychain ZHK'),
(105, 3, 'Zamac hotel & rental keychain ZHK'),
(105, 4, 'Zamac hotel & rental keychain ZHK'),
(105, 5, 'Zamac hotel & rental keychain ZHK'),
(106, 1, '"8" figure aluminium bottle opener keychain POP8S'),
(106, 2, '"8" figure aluminium bottle opener keychain POP8S'),
(106, 3, '"8" figure aluminium bottle opener keychain POP8S'),
(106, 4, '"8" figure aluminium bottle opener keychain POP8S'),
(106, 5, '"8" figure aluminium bottle opener keychain POP8S'),
(107, 1, '"8" figure aluminium bottle opener keychain POP8S'),
(107, 2, '"8" figure aluminium bottle opener keychain POP8S'),
(107, 3, '"8" figure aluminium bottle opener keychain POP8S'),
(107, 4, '"8" figure aluminium bottle opener keychain POP8S'),
(107, 5, '"8" figure aluminium bottle opener keychain POP8S'),
(108, 1, 'Plastic key hanger PHM203'),
(108, 2, 'Plastic key hanger PHM203'),
(108, 3, 'Plastic key hanger PHM203'),
(108, 4, 'Plastic key hanger PHM203'),
(108, 5, 'Plastic key hanger PHM203'),
(109, 1, 'Plastic key hanger PHM203'),
(109, 2, 'Plastic key hanger PHM203'),
(109, 3, 'Plastic key hanger PHM203'),
(109, 4, 'Plastic key hanger PHM203'),
(109, 5, 'Plastic key hanger PHM203'),
(110, 1, 'Cloud'),
(110, 2, 'Cloud'),
(110, 3, 'Cloud'),
(110, 4, 'Cloud'),
(110, 5, 'Cloud'),
(111, 1, 'Angry Bird'),
(111, 2, 'Angry Bird'),
(111, 3, 'Angry Bird'),
(111, 4, 'Angry Bird'),
(111, 5, 'Angry Bird'),
(112, 1, 'Sunset'),
(112, 2, 'Sunset'),
(112, 3, 'Sunset'),
(112, 4, 'Sunset'),
(112, 5, 'Sunset'),
(125, 1, 'PKGH'),
(125, 2, 'Angry Bird'),
(125, 3, 'Angry Bird'),
(125, 4, 'Angry Bird'),
(125, 5, 'Angry Bird'),
(126, 1, '03'),
(126, 2, 'Plastic glass holder badge and keychain PKGH'),
(126, 3, 'Plastic glass holder badge and keychain PKGH'),
(126, 4, 'Plastic glass holder badge and keychain PKGH'),
(126, 5, 'Plastic glass holder badge and keychain PKGH'),
(127, 1, '11'),
(127, 2, 'Plastic glass holder badge and keychain PKGH'),
(127, 3, 'Plastic glass holder badge and keychain PKGH'),
(127, 4, 'Plastic glass holder badge and keychain PKGH'),
(127, 5, 'Plastic glass holder badge and keychain PKGH'),
(128, 1, '10'),
(128, 2, 'Plastic glass holder badge and keychain PKGH'),
(128, 3, 'Plastic glass holder badge and keychain PKGH'),
(128, 4, 'Plastic glass holder badge and keychain PKGH'),
(128, 5, 'Plastic glass holder badge and keychain PKGH'),
(129, 1, '07'),
(129, 2, 'Plastic glass holder badge and keychain PKGH'),
(129, 3, 'Plastic glass holder badge and keychain PKGH'),
(129, 4, 'Plastic glass holder badge and keychain PKGH'),
(129, 5, 'Plastic glass holder badge and keychain PKGH'),
(130, 1, '06'),
(130, 2, 'Plastic glass holder badge and keychain PKGH'),
(130, 3, 'Plastic glass holder badge and keychain PKGH'),
(130, 4, 'Plastic glass holder badge and keychain PKGH'),
(130, 5, 'Plastic glass holder badge and keychain PKGH'),
(131, 1, '05'),
(131, 2, 'Plastic glass holder badge and keychain PKGH'),
(131, 3, 'Plastic glass holder badge and keychain PKGH'),
(131, 4, 'Plastic glass holder badge and keychain PKGH'),
(131, 5, 'Plastic glass holder badge and keychain PKGH'),
(133, 1, 'ZHK'),
(133, 2, 'Angry Bird'),
(133, 3, 'Angry Bird'),
(133, 4, 'Angry Bird'),
(133, 5, 'Angry Bird'),
(134, 1, 'blank'),
(134, 2, 'Zamac hotel & rental keychain ZHK'),
(134, 3, 'Zamac hotel & rental keychain ZHK'),
(134, 4, 'Zamac hotel & rental keychain ZHK'),
(134, 5, 'Zamac hotel & rental keychain ZHK');

-- --------------------------------------------------------

--
-- Structure de la table `ps_image_shop`
--

CREATE TABLE `ps_image_shop` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_image` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `cover` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_image_shop`
--

INSERT INTO `ps_image_shop` (`id_product`, `id_image`, `id_shop`, `cover`) VALUES
(17, 82, 1, NULL),
(17, 83, 1, NULL),
(17, 84, 1, NULL),
(17, 85, 1, NULL),
(17, 81, 1, 1),
(21, 101, 1, 1),
(22, 103, 1, NULL),
(22, 126, 1, NULL),
(22, 127, 1, NULL),
(22, 128, 1, NULL),
(22, 129, 1, NULL),
(22, 130, 1, NULL),
(22, 131, 1, NULL),
(22, 102, 1, 1),
(23, 105, 1, NULL),
(23, 134, 1, NULL),
(23, 104, 1, 1),
(24, 106, 1, NULL),
(24, 107, 1, 1),
(25, 109, 1, NULL),
(25, 108, 1, 1),
(26, 110, 1, 1),
(27, 125, 1, NULL),
(27, 133, 1, NULL),
(27, 111, 1, 1),
(28, 112, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_image_type`
--

CREATE TABLE `ps_image_type` (
  `id_image_type` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `width` int(10) UNSIGNED NOT NULL,
  `height` int(10) UNSIGNED NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `scenes` tinyint(1) NOT NULL DEFAULT '1',
  `stores` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_image_type`
--

INSERT INTO `ps_image_type` (`id_image_type`, `name`, `width`, `height`, `products`, `categories`, `manufacturers`, `suppliers`, `scenes`, `stores`) VALUES
(10, 'small_default', 98, 98, 1, 0, 1, 1, 0, 1),
(11, 'medium_default', 125, 125, 1, 1, 1, 1, 0, 1),
(12, 'home_default', 270, 270, 1, 0, 0, 0, 0, 1),
(13, 'large_default', 458, 458, 1, 0, 1, 1, 0, 1),
(14, 'thickbox_default', 800, 800, 1, 0, 0, 0, 0, 1),
(15, 'category_default', 870, 217, 0, 1, 0, 0, 0, 1),
(16, 'scene_default', 520, 189, 0, 0, 0, 0, 1, 1),
(17, 'm_scene_default', 161, 58, 0, 0, 0, 0, 1, 1),
(18, 'tm_home_default', 270, 270, 1, 1, 0, 0, 0, 1),
(19, 'tm_large_default', 458, 458, 1, 0, 0, 0, 0, 1),
(20, 'tm_small_default', 98, 98, 1, 0, 0, 0, 0, 1),
(21, 'tm_cart_default', 80, 80, 1, 0, 0, 0, 0, 1),
(22, 'tm_medium_default', 125, 125, 1, 1, 1, 1, 0, 1),
(23, 'tm_thickbox_default', 800, 800, 1, 0, 0, 0, 0, 1),
(24, 'tm_category_default', 870, 217, 0, 1, 0, 0, 0, 1),
(25, 'cart_default', 80, 80, 1, 0, 0, 0, 0, 1),
(26, 'layout', 600, 600, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_import_match`
--

CREATE TABLE `ps_import_match` (
  `id_import_match` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `match` text NOT NULL,
  `skip` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_info`
--

CREATE TABLE `ps_info` (
  `id_info` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_info_lang`
--

CREATE TABLE `ps_info_lang` (
  `id_info` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_lang`
--

CREATE TABLE `ps_lang` (
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `iso_code` char(2) NOT NULL,
  `language_code` char(5) NOT NULL,
  `date_format_lite` char(32) NOT NULL DEFAULT 'Y-m-d',
  `date_format_full` char(32) NOT NULL DEFAULT 'Y-m-d H:i:s',
  `is_rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_lang`
--

INSERT INTO `ps_lang` (`id_lang`, `name`, `active`, `iso_code`, `language_code`, `date_format_lite`, `date_format_full`, `is_rtl`) VALUES
(1, 'English (United States)', 1, 'en', 'en-us', 'm/d/Y', 'm/d/Y H:i:s', 0),
(2, 'Deutsch (German)', 0, 'de', 'de-de', 'd.m.Y', 'd.m.Y H:i:s', 0),
(3, 'Русский (Russian)', 0, 'ru', 'ru-ru', 'Y-m-d', 'Y-m-d H:i:s', 0),
(4, 'Español (Spanish)', 0, 'es', 'es-es', 'd/m/Y', 'd/m/Y H:i:s', 0),
(5, 'Français (French)', 0, 'fr', 'fr-fr', 'd/m/Y', 'd/m/Y H:i:s', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_lang_shop`
--

CREATE TABLE `ps_lang_shop` (
  `id_lang` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_lang_shop`
--

INSERT INTO `ps_lang_shop` (`id_lang`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_category`
--

CREATE TABLE `ps_layered_category` (
  `id_layered_category` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_value` int(10) UNSIGNED DEFAULT '0',
  `type` enum('category','id_feature','id_attribute_group','quantity','condition','manufacturer','weight','price') NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `filter_type` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filter_show_limit` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ps_layered_category`
--

INSERT INTO `ps_layered_category` (`id_layered_category`, `id_shop`, `id_category`, `id_value`, `type`, `position`, `filter_type`, `filter_show_limit`) VALUES
(1, 1, 10, NULL, 'category', 1, 0, 0),
(2, 1, 10, 0, 'id_attribute_group', 2, 0, 0),
(3, 1, 10, 3, 'id_attribute_group', 3, 0, 0),
(4, 1, 10, 7, 'id_feature', 4, 0, 0),
(5, 1, 10, 5, 'id_feature', 5, 0, 0),
(6, 1, 10, 6, 'id_feature', 6, 0, 0),
(7, 1, 10, NULL, 'quantity', 7, 0, 0),
(8, 1, 10, NULL, 'manufacturer', 8, 0, 0),
(9, 1, 10, NULL, 'condition', 9, 0, 0),
(10, 1, 10, NULL, 'weight', 10, 0, 0),
(11, 1, 10, NULL, 'price', 11, 0, 0),
(12, 1, 9, NULL, 'category', 1, 0, 0),
(13, 1, 9, 3, 'id_attribute_group', 2, 0, 0),
(14, 1, 9, 0, 'id_attribute_group', 3, 0, 0),
(15, 1, 9, 6, 'id_feature', 4, 0, 0),
(16, 1, 9, 5, 'id_feature', 5, 0, 0),
(17, 1, 9, 7, 'id_feature', 6, 0, 0),
(18, 1, 9, NULL, 'quantity', 7, 0, 0),
(19, 1, 9, NULL, 'manufacturer', 8, 0, 0),
(20, 1, 9, NULL, 'condition', 9, 0, 0),
(21, 1, 9, NULL, 'weight', 10, 0, 0),
(22, 1, 9, NULL, 'price', 11, 0, 0),
(23, 1, 8, NULL, 'category', 1, 0, 0),
(24, 1, 8, 3, 'id_attribute_group', 2, 0, 0),
(25, 1, 8, 0, 'id_attribute_group', 3, 0, 0),
(26, 1, 8, 5, 'id_feature', 4, 0, 0),
(27, 1, 8, 6, 'id_feature', 5, 0, 0),
(28, 1, 8, 7, 'id_feature', 6, 0, 0),
(29, 1, 8, NULL, 'quantity', 7, 0, 0),
(30, 1, 8, NULL, 'manufacturer', 8, 0, 0),
(31, 1, 8, NULL, 'condition', 9, 0, 0),
(32, 1, 8, NULL, 'weight', 10, 0, 0),
(33, 1, 8, NULL, 'price', 11, 0, 0),
(34, 1, 7, NULL, 'category', 1, 0, 0),
(35, 1, 7, 0, 'id_attribute_group', 2, 0, 0),
(36, 1, 7, 3, 'id_attribute_group', 3, 0, 0),
(37, 1, 7, 7, 'id_feature', 4, 0, 0),
(38, 1, 7, 5, 'id_feature', 5, 0, 0),
(39, 1, 7, 6, 'id_feature', 6, 0, 0),
(40, 1, 7, NULL, 'quantity', 7, 0, 0),
(41, 1, 7, NULL, 'manufacturer', 8, 0, 0),
(42, 1, 7, NULL, 'condition', 9, 0, 0),
(43, 1, 7, NULL, 'weight', 10, 0, 0),
(44, 1, 7, NULL, 'price', 11, 0, 0),
(45, 1, 5, NULL, 'category', 1, 0, 0),
(46, 1, 5, 0, 'id_attribute_group', 2, 0, 0),
(47, 1, 5, 3, 'id_attribute_group', 3, 0, 0),
(48, 1, 5, 7, 'id_feature', 4, 0, 0),
(49, 1, 5, 5, 'id_feature', 5, 0, 0),
(50, 1, 5, 6, 'id_feature', 6, 0, 0),
(51, 1, 5, NULL, 'quantity', 7, 0, 0),
(52, 1, 5, NULL, 'manufacturer', 8, 0, 0),
(53, 1, 5, NULL, 'condition', 9, 0, 0),
(54, 1, 5, NULL, 'weight', 10, 0, 0),
(55, 1, 5, NULL, 'price', 11, 0, 0),
(56, 1, 11, NULL, 'category', 1, 0, 0),
(57, 1, 11, 0, 'id_attribute_group', 2, 0, 0),
(58, 1, 11, 3, 'id_attribute_group', 3, 0, 0),
(59, 1, 11, 6, 'id_feature', 4, 0, 0),
(60, 1, 11, 7, 'id_feature', 5, 0, 0),
(61, 1, 11, 5, 'id_feature', 6, 0, 0),
(62, 1, 11, NULL, 'quantity', 7, 0, 0),
(63, 1, 11, NULL, 'manufacturer', 8, 0, 0),
(64, 1, 11, NULL, 'condition', 9, 0, 0),
(65, 1, 11, NULL, 'weight', 10, 0, 0),
(66, 1, 11, NULL, 'price', 11, 0, 0),
(67, 1, 4, NULL, 'category', 1, 0, 0),
(68, 1, 4, 0, 'id_attribute_group', 2, 0, 0),
(69, 1, 4, 3, 'id_attribute_group', 3, 0, 0),
(70, 1, 4, 7, 'id_feature', 4, 0, 0),
(71, 1, 4, 5, 'id_feature', 5, 0, 0),
(72, 1, 4, 6, 'id_feature', 6, 0, 0),
(73, 1, 4, NULL, 'quantity', 7, 0, 0),
(74, 1, 4, NULL, 'manufacturer', 8, 0, 0),
(75, 1, 4, NULL, 'condition', 9, 0, 0),
(76, 1, 4, NULL, 'weight', 10, 0, 0),
(77, 1, 4, NULL, 'price', 11, 0, 0),
(78, 1, 2, NULL, 'category', 1, 0, 0),
(79, 1, 2, 1, 'id_attribute_group', 2, 0, 0),
(80, 1, 2, 3, 'id_attribute_group', 3, 0, 0),
(81, 1, 2, 5, 'id_feature', 4, 0, 0),
(82, 1, 2, 6, 'id_feature', 5, 0, 0),
(83, 1, 2, 7, 'id_feature', 6, 0, 0),
(84, 1, 2, NULL, 'quantity', 7, 0, 0),
(85, 1, 2, NULL, 'manufacturer', 8, 0, 0),
(86, 1, 2, NULL, 'condition', 9, 0, 0),
(87, 1, 2, NULL, 'weight', 10, 0, 0),
(88, 1, 2, NULL, 'price', 11, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_filter`
--

CREATE TABLE `ps_layered_filter` (
  `id_layered_filter` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `filters` text,
  `n_categories` int(10) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_layered_filter`
--

INSERT INTO `ps_layered_filter` (`id_layered_filter`, `name`, `filters`, `n_categories`, `date_add`) VALUES
(1, 'My template 2016-07-29', 'a:13:{s:10:"categories";a:8:{i:0;i:4;i:1;i:5;i:3;i:2;i:4;i:7;i:5;i:8;i:6;i:9;i:7;i:10;i:8;i:11;}s:9:"shop_list";a:1:{i:1;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_1";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_5";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_6";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_7";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:23:"layered_selection_stock";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_manufacturer";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:27:"layered_selection_condition";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:31:"layered_selection_weight_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}}', 9, '2016-07-29 14:56:54'),
(2, 'My template 2016-07-29', 'a:13:{s:10:"categories";a:0:{}s:9:"shop_list";a:1:{i:1;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_0";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_7";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_5";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_6";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:23:"layered_selection_stock";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_manufacturer";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:27:"layered_selection_condition";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:31:"layered_selection_weight_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}}', 1, '2016-07-29 15:18:26'),
(3, 'My template 2016-07-29', 'a:13:{s:10:"categories";a:1:{i:0;i:4;}s:9:"shop_list";a:1:{i:1;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_0";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_7";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_5";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_6";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:23:"layered_selection_stock";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_manufacturer";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:27:"layered_selection_condition";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:31:"layered_selection_weight_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}}', 1, '2016-07-29 15:18:40'),
(4, 'My template 2016-07-29', 'a:13:{s:10:"categories";a:1:{i:0;i:11;}s:9:"shop_list";a:1:{i:1;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_0";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_6";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_7";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_5";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:23:"layered_selection_stock";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_manufacturer";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:27:"layered_selection_condition";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:31:"layered_selection_weight_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}}', 1, '2016-07-29 15:18:42'),
(5, 'My template 2016-07-29', 'a:13:{s:10:"categories";a:1:{i:0;i:5;}s:9:"shop_list";a:1:{i:1;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_0";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_7";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_5";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_6";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:23:"layered_selection_stock";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_manufacturer";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:27:"layered_selection_condition";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:31:"layered_selection_weight_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}}', 1, '2016-07-29 15:18:52'),
(6, 'My template 2016-07-29', 'a:13:{s:10:"categories";a:1:{i:0;i:7;}s:9:"shop_list";a:1:{i:1;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_0";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_7";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_5";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_6";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:23:"layered_selection_stock";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_manufacturer";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:27:"layered_selection_condition";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:31:"layered_selection_weight_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}}', 1, '2016-07-29 15:18:58'),
(7, 'My template 2016-07-29', 'a:13:{s:10:"categories";a:1:{i:0;i:8;}s:9:"shop_list";a:1:{i:1;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_0";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_5";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_6";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_7";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:23:"layered_selection_stock";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_manufacturer";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:27:"layered_selection_condition";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:31:"layered_selection_weight_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}}', 1, '2016-07-29 15:19:02'),
(8, 'My template 2016-07-29', 'a:13:{s:10:"categories";a:1:{i:0;i:9;}s:9:"shop_list";a:1:{i:1;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_0";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_6";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_5";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_7";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:23:"layered_selection_stock";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_manufacturer";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:27:"layered_selection_condition";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:31:"layered_selection_weight_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}}', 1, '2016-07-29 15:19:05'),
(9, 'My template 2016-07-29', 'a:13:{s:10:"categories";a:1:{i:0;i:10;}s:9:"shop_list";a:1:{i:1;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_0";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_7";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_5";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_6";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:23:"layered_selection_stock";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_manufacturer";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:27:"layered_selection_condition";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:31:"layered_selection_weight_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}}', 1, '2016-07-29 15:19:09');

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_filter_shop`
--

CREATE TABLE `ps_layered_filter_shop` (
  `id_layered_filter` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_layered_filter_shop`
--

INSERT INTO `ps_layered_filter_shop` (`id_layered_filter`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_friendly_url`
--

CREATE TABLE `ps_layered_friendly_url` (
  `id_layered_friendly_url` int(11) NOT NULL,
  `url_key` varchar(32) NOT NULL,
  `data` varchar(200) NOT NULL,
  `id_lang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_layered_friendly_url`
--

INSERT INTO `ps_layered_friendly_url` (`id_layered_friendly_url`, `url_key`, `data`, `id_lang`) VALUES
(1, '03c8c4cf29ea8a405778f138021df5df', 'a:1:{s:8:"category";a:1:{i:7;s:1:"7";}}', 1),
(2, '2def08957abfc829e80d5279c5086b73', 'a:1:{s:8:"category";a:1:{i:9;s:1:"9";}}', 1),
(3, 'eaaa28d2b62b097bb8706dd014c8203b', 'a:1:{s:8:"category";a:1:{i:8;s:1:"8";}}', 1),
(4, '84ce4d36b2b77bb85d2a7aebd27c8a67', 'a:1:{s:8:"category";a:1:{i:10;s:2:"10";}}', 1),
(5, 'e22ad4e9f8f445df1283ec3383c55ed8', 'a:1:{s:8:"category";a:1:{i:2;s:1:"2";}}', 1),
(6, '3f1005f8be7881795fc5feddfdba756f', 'a:1:{s:8:"category";a:1:{i:1;s:1:"1";}}', 1),
(7, '3f9036e3dcf0507782e3d6a1d3ca1fe1', 'a:1:{s:8:"category";a:1:{i:11;s:2:"11";}}', 1),
(8, '6fc253242f3fe98946ecdd26762e95eb', 'a:1:{s:8:"category";a:1:{i:5;s:1:"5";}}', 1),
(9, 'c66ef06ef2ca8b06dd3d19b70727adb7', 'a:1:{s:8:"category";a:1:{i:4;s:1:"4";}}', 1),
(10, '929674e49248753da273092629bb45ec', 'a:1:{s:8:"category";a:1:{i:3;s:1:"3";}}', 1),
(11, 'c4d7335317f2f1ba381e038fb625d918', 'a:1:{s:10:"id_feature";a:1:{i:1;s:3:"5_1";}}', 1),
(12, '18f41c9cab1c150e429f1b670cae3bc1', 'a:1:{s:10:"id_feature";a:1:{i:2;s:3:"5_2";}}', 1),
(13, '823192a052e44927f06b39b32bcef002', 'a:1:{s:10:"id_feature";a:1:{i:3;s:3:"5_3";}}', 1),
(14, '905fe5b57eb2e1353911171da4ee7706', 'a:1:{s:10:"id_feature";a:1:{i:4;s:3:"5_4";}}', 1),
(15, 'ebb42f1bbf0d25b40049c14f1860b952', 'a:1:{s:10:"id_feature";a:1:{i:5;s:3:"5_5";}}', 1),
(16, 'f9a71edd8befbb99baceadc2b2fbe793', 'a:1:{s:10:"id_feature";a:1:{i:6;s:3:"5_6";}}', 1),
(17, 'e195459fb3d97a32e94673db75dcf299', 'a:1:{s:10:"id_feature";a:1:{i:7;s:3:"5_7";}}', 1),
(18, 'b7783cae5eeefc81ff4a69f4ea712ea7', 'a:1:{s:10:"id_feature";a:1:{i:8;s:3:"5_8";}}', 1),
(19, '45f1d9162a9fe2ffcf9f365eace9eeec', 'a:1:{s:10:"id_feature";a:1:{i:9;s:3:"5_9";}}', 1),
(20, '7a04872959f09781f3b883a91c5332c7', 'a:1:{s:10:"id_feature";a:1:{i:10;s:4:"6_10";}}', 1),
(21, '025d11eb379709c8e409a7d712d8e362', 'a:1:{s:10:"id_feature";a:1:{i:11;s:4:"6_11";}}', 1),
(22, 'e224c427b75f7805c14e8b63ca9e4e0c', 'a:1:{s:10:"id_feature";a:1:{i:12;s:4:"6_12";}}', 1),
(23, '677717092975926de02151dd9227864e', 'a:1:{s:10:"id_feature";a:1:{i:13;s:4:"6_13";}}', 1),
(24, '00dff7b63b6f7ddb4b341a9308422730', 'a:1:{s:10:"id_feature";a:1:{i:14;s:4:"6_14";}}', 1),
(25, 'ff721a9727728b15cd4654a462aaeea0', 'a:1:{s:10:"id_feature";a:1:{i:15;s:4:"6_15";}}', 1),
(26, '0327a5c6fbcd99ae1fa8ef01f1e7e100', 'a:1:{s:10:"id_feature";a:1:{i:16;s:4:"6_16";}}', 1),
(27, '58ddd7a988c042c25121ffeb149f3ac7', 'a:1:{s:10:"id_feature";a:1:{i:17;s:4:"7_17";}}', 1),
(28, 'b7248af6c62c1e54b6f13739739e2d17', 'a:1:{s:10:"id_feature";a:1:{i:18;s:4:"7_18";}}', 1),
(29, 'b97d201e9d169f46c2a9e6fa356e40d2', 'a:1:{s:10:"id_feature";a:1:{i:19;s:4:"7_19";}}', 1),
(30, 'de50b73f078d5cde7cc9d8efc61c9e55', 'a:1:{s:10:"id_feature";a:1:{i:20;s:4:"7_20";}}', 1),
(31, '85a3c64761151fe72e5d027e729072a3', 'a:1:{s:10:"id_feature";a:1:{i:21;s:4:"7_21";}}', 1),
(32, '97d9dd08827238b39342d37e16ee7fc3', 'a:1:{s:18:"id_attribute_group";a:1:{i:1;s:3:"1_1";}}', 1),
(33, '2f3d5048a6335cac20241e0f8cb5294e', 'a:1:{s:18:"id_attribute_group";a:1:{i:2;s:3:"1_2";}}', 1),
(34, '19819345209f29bb2865355fa2cdb800', 'a:1:{s:18:"id_attribute_group";a:1:{i:3;s:3:"1_3";}}', 1),
(35, '27dd5799da96500f9e0ab61387a556b5', 'a:1:{s:18:"id_attribute_group";a:1:{i:4;s:3:"1_4";}}', 1),
(36, '6a73ce72468db97129f092fa3d9a0b2e', 'a:1:{s:18:"id_attribute_group";a:1:{i:5;s:3:"3_5";}}', 1),
(37, 'f1fc935c7d64dfac606eb814dcc6c4a7', 'a:1:{s:18:"id_attribute_group";a:1:{i:6;s:3:"3_6";}}', 1),
(38, 'f036e061c6e0e9cd6b3c463f72f524a5', 'a:1:{s:18:"id_attribute_group";a:1:{i:7;s:3:"3_7";}}', 1),
(39, '468a278b79ece55c0ed0d3bd1b2dd01f', 'a:1:{s:18:"id_attribute_group";a:1:{i:8;s:3:"3_8";}}', 1),
(40, '8996dbd99c9d2240f117ba0d26b39b10', 'a:1:{s:18:"id_attribute_group";a:1:{i:9;s:3:"3_9";}}', 1),
(41, '601a4dd13077730810f102b18680b537', 'a:1:{s:18:"id_attribute_group";a:1:{i:10;s:4:"3_10";}}', 1),
(42, '0a68b3ba0819d7126935f51335ef9503', 'a:1:{s:18:"id_attribute_group";a:1:{i:11;s:4:"3_11";}}', 1),
(43, '5f556205d67d7c26c2726dba638c2d95', 'a:1:{s:18:"id_attribute_group";a:1:{i:12;s:4:"3_12";}}', 1),
(44, '4b4bb79b20455e8047c972f9ca69cd72', 'a:1:{s:18:"id_attribute_group";a:1:{i:13;s:4:"3_13";}}', 1),
(45, '54dd539ce8bbf02b44485941f2d8d80b', 'a:1:{s:18:"id_attribute_group";a:1:{i:14;s:4:"3_14";}}', 1),
(46, '73b845a28e9ced9709fa414f9b97dae9', 'a:1:{s:18:"id_attribute_group";a:1:{i:15;s:4:"3_15";}}', 1),
(47, 'be50cfae4c360fdb124af017a4e80905', 'a:1:{s:18:"id_attribute_group";a:1:{i:16;s:4:"3_16";}}', 1),
(48, '4c4550abfc4eec4c91e558fa9b5171c9', 'a:1:{s:18:"id_attribute_group";a:1:{i:17;s:4:"3_17";}}', 1),
(49, 'ab223cc0ca7ebf34af71e067556ee2aa', 'a:1:{s:18:"id_attribute_group";a:1:{i:24;s:4:"3_24";}}', 1),
(50, '14ef3952eddf958ec1f628065f6c7689', 'a:1:{s:8:"quantity";a:1:{i:0;i:0;}}', 1),
(51, '19e5bdea58716c8f3ff52345d1b5a442', 'a:1:{s:8:"quantity";a:1:{i:0;i:1;}}', 1),
(52, '11c2881845b925423888cd329d0c4953', 'a:1:{s:9:"condition";a:1:{s:3:"new";s:3:"new";}}', 1),
(53, '074755ccbf623ca666bd866203d0dec7', 'a:1:{s:9:"condition";a:1:{s:4:"used";s:4:"used";}}', 1),
(54, '70b63b881a45f66c86ea78ace4cfb6a7', 'a:1:{s:9:"condition";a:1:{s:11:"refurbished";s:11:"refurbished";}}', 1),
(55, '7b51d2594a28b8f82cfe82b0c3f161e7', 'a:1:{s:12:"manufacturer";a:1:{i:1;s:1:"1";}}', 1),
(56, '36a16718f4cb2ce8d9f3b35d415e63d6', 'a:1:{s:8:"category";a:1:{i:2;s:1:"2";}}', 2),
(57, '7a4ffc9cb67cf29eef533c17393dfc3e', 'a:1:{s:8:"category";a:1:{i:7;s:1:"7";}}', 2),
(58, '51e8d398ed66c295641c8dca1161ebd6', 'a:1:{s:8:"category";a:1:{i:3;s:1:"3";}}', 2),
(59, '0f41ee5f2abf55e5393f435e5e0bd9d4', 'a:1:{s:8:"category";a:1:{i:1;s:1:"1";}}', 2),
(60, 'ae60a0eece843ba21f76674d40c774b6', 'a:1:{s:8:"category";a:1:{i:8;s:1:"8";}}', 2),
(61, 'c5d0498c409ac4d725f0759736f8470a', 'a:1:{s:8:"category";a:1:{i:11;s:2:"11";}}', 2),
(62, '65c1021a065e407623177257c509da90', 'a:1:{s:8:"category";a:1:{i:10;s:2:"10";}}', 2),
(63, '2e0199d50a3c1ee9fb40e6318f2ca6be', 'a:1:{s:8:"category";a:1:{i:9;s:1:"9";}}', 2),
(64, '6fc253242f3fe98946ecdd26762e95eb', 'a:1:{s:8:"category";a:1:{i:5;s:1:"5";}}', 2),
(65, 'c66ef06ef2ca8b06dd3d19b70727adb7', 'a:1:{s:8:"category";a:1:{i:4;s:1:"4";}}', 2),
(66, 'c4d7335317f2f1ba381e038fb625d918', 'a:1:{s:10:"id_feature";a:1:{i:1;s:3:"5_1";}}', 2),
(67, '518876640cfedb267b8df5683b243a83', 'a:1:{s:10:"id_feature";a:1:{i:2;s:3:"5_2";}}', 2),
(68, '823192a052e44927f06b39b32bcef002', 'a:1:{s:10:"id_feature";a:1:{i:3;s:3:"5_3";}}', 2),
(69, 'b738d5f9723e1d914d9ba5c7a0265d44', 'a:1:{s:10:"id_feature";a:1:{i:4;s:3:"5_4";}}', 2),
(70, 'c4379cd7a4a9ee1db8aed47692d81117', 'a:1:{s:10:"id_feature";a:1:{i:5;s:3:"5_5";}}', 2),
(71, '957ab4ceed0e6b5def103afd50c00541', 'a:1:{s:10:"id_feature";a:1:{i:6;s:3:"5_6";}}', 2),
(72, '07cf4b14281fa5bc7ec5bfec06e39805', 'a:1:{s:10:"id_feature";a:1:{i:7;s:3:"5_7";}}', 2),
(73, '368959b3bd09a132e577e2bebc8f2686', 'a:1:{s:10:"id_feature";a:1:{i:8;s:3:"5_8";}}', 2),
(74, 'c42fcf15b837dfe9d2ddd6264567944a', 'a:1:{s:10:"id_feature";a:1:{i:9;s:3:"5_9";}}', 2),
(75, '185d6e37f34a04af8207e7fe8f3c4d2e', 'a:1:{s:10:"id_feature";a:1:{i:10;s:4:"6_10";}}', 2),
(76, '0dd0ff328ece7352a6df6754b07137da', 'a:1:{s:10:"id_feature";a:1:{i:11;s:4:"6_11";}}', 2),
(77, '0fddc3ff926b2198af48f892e1d2f21d', 'a:1:{s:10:"id_feature";a:1:{i:12;s:4:"6_12";}}', 2),
(78, 'eb4ca448a07a6639ebc63d8acf45b166', 'a:1:{s:10:"id_feature";a:1:{i:13;s:4:"6_13";}}', 2),
(79, '00dff7b63b6f7ddb4b341a9308422730', 'a:1:{s:10:"id_feature";a:1:{i:14;s:4:"6_14";}}', 2),
(80, '2c30af3405dcf541af55d379e5f70ad2', 'a:1:{s:10:"id_feature";a:1:{i:15;s:4:"6_15";}}', 2),
(81, 'd6147565988940adfe08e736ed044c03', 'a:1:{s:10:"id_feature";a:1:{i:16;s:4:"6_16";}}', 2),
(82, '7aecf03cdc7cb968b794038a9eb617f5', 'a:1:{s:10:"id_feature";a:1:{i:17;s:4:"7_17";}}', 2),
(83, '0c5c01c6a5703cbeabcaa24ff4a3f18e', 'a:1:{s:10:"id_feature";a:1:{i:18;s:4:"7_18";}}', 2),
(84, 'c1cce7ff7605ea2677865d04038a693a', 'a:1:{s:10:"id_feature";a:1:{i:19;s:4:"7_19";}}', 2),
(85, '5e33f621d32f8aacd7fea1a3e381f58f', 'a:1:{s:10:"id_feature";a:1:{i:20;s:4:"7_20";}}', 2),
(86, 'bc632b4cd2605492c3f0ec2c9f904eb8', 'a:1:{s:10:"id_feature";a:1:{i:21;s:4:"7_21";}}', 2),
(87, '0b2aaba61c30885d941453599e20f408', 'a:1:{s:18:"id_attribute_group";a:1:{i:1;s:3:"1_1";}}', 2),
(88, '656d3b6e07efc838f64977a0a4ce7533', 'a:1:{s:18:"id_attribute_group";a:1:{i:2;s:3:"1_2";}}', 2),
(89, '2b4f155ba70596a04b22182d9d6fb462', 'a:1:{s:18:"id_attribute_group";a:1:{i:3;s:3:"1_3";}}', 2),
(90, 'b329c7e7fea645456048d3482ededb40', 'a:1:{s:18:"id_attribute_group";a:1:{i:4;s:3:"1_4";}}', 2),
(91, '6016e3155ed97b7d0a951061c2b73535', 'a:1:{s:18:"id_attribute_group";a:1:{i:5;s:3:"3_5";}}', 2),
(92, '57b75870d64c76eae692c80b50fa58e2', 'a:1:{s:18:"id_attribute_group";a:1:{i:6;s:3:"3_6";}}', 2),
(93, 'b2bf64fa7f72f53eb93e7805555e3cd2', 'a:1:{s:18:"id_attribute_group";a:1:{i:7;s:3:"3_7";}}', 2),
(94, '2819c36f4dbaaedc9b2b35b42097edaa', 'a:1:{s:18:"id_attribute_group";a:1:{i:8;s:3:"3_8";}}', 2),
(95, '36cbb04f09f486c4c527921d9b43bd95', 'a:1:{s:18:"id_attribute_group";a:1:{i:9;s:3:"3_9";}}', 2),
(96, 'fa8f6104126208864be7953faa622383', 'a:1:{s:18:"id_attribute_group";a:1:{i:10;s:4:"3_10";}}', 2),
(97, '4f6be0e4cd0cfb9226e1b3edf90e17da', 'a:1:{s:18:"id_attribute_group";a:1:{i:11;s:4:"3_11";}}', 2),
(98, '27efddb9fdf432904fcbad936620a2c8', 'a:1:{s:18:"id_attribute_group";a:1:{i:12;s:4:"3_12";}}', 2),
(99, '74ed66030793dee307982ace222b4726', 'a:1:{s:18:"id_attribute_group";a:1:{i:13;s:4:"3_13";}}', 2),
(100, 'e3e573cccebcd56436d674887f5ecdf7', 'a:1:{s:18:"id_attribute_group";a:1:{i:14;s:4:"3_14";}}', 2),
(101, '78ab5a36f2160733f009dfba8c2c4b02', 'a:1:{s:18:"id_attribute_group";a:1:{i:15;s:4:"3_15";}}', 2),
(102, 'c9675dd50f5bce7a8aab98e299befe14', 'a:1:{s:18:"id_attribute_group";a:1:{i:16;s:4:"3_16";}}', 2),
(103, '03012ad1764f10e703d360ca9185b337', 'a:1:{s:18:"id_attribute_group";a:1:{i:17;s:4:"3_17";}}', 2),
(104, '2b92704d5b1a18938fbda7b201c2d94a', 'a:1:{s:18:"id_attribute_group";a:1:{i:24;s:4:"3_24";}}', 2),
(105, 'c8bab8565a8dc38e4ba196d04b1ab75a', 'a:1:{s:8:"quantity";a:1:{i:0;i:0;}}', 2),
(106, 'aecc91ef502878d2b704377d49f7e8fb', 'a:1:{s:8:"quantity";a:1:{i:0;i:1;}}', 2),
(107, '47a6f6a9db83de31a52dc9366236ac18', 'a:1:{s:9:"condition";a:1:{s:3:"new";s:3:"new";}}', 2),
(108, 'e67a9c5323b69dd8689bd121632c9f0d', 'a:1:{s:9:"condition";a:1:{s:4:"used";s:4:"used";}}', 2),
(109, '843057e2c505cc5164e3cb9729cad768', 'a:1:{s:9:"condition";a:1:{s:11:"refurbished";s:11:"refurbished";}}', 2),
(110, 'aa4848c11a9cd606b68ee0a7d3be1097', 'a:1:{s:12:"manufacturer";a:1:{i:1;s:1:"1";}}', 2);

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_indexable_attribute_group`
--

CREATE TABLE `ps_layered_indexable_attribute_group` (
  `id_attribute_group` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_layered_indexable_attribute_group`
--

INSERT INTO `ps_layered_indexable_attribute_group` (`id_attribute_group`, `indexable`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_indexable_attribute_group_lang_value`
--

CREATE TABLE `ps_layered_indexable_attribute_group_lang_value` (
  `id_attribute_group` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_indexable_attribute_lang_value`
--

CREATE TABLE `ps_layered_indexable_attribute_lang_value` (
  `id_attribute` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_layered_indexable_attribute_lang_value`
--

INSERT INTO `ps_layered_indexable_attribute_lang_value` (`id_attribute`, `id_lang`, `url_name`, `meta_title`) VALUES
(5, 1, '01-pms021c', ''),
(5, 2, 'grey', ''),
(5, 3, 'grey', ''),
(5, 4, 'grey', ''),
(5, 5, 'grey', ''),
(25, 1, '02-pms200c', ''),
(25, 2, '', ''),
(25, 3, '', ''),
(25, 4, '', ''),
(25, 5, '', ''),
(26, 1, '03-pms287c', ''),
(26, 2, '', ''),
(26, 3, '', ''),
(26, 4, '', ''),
(26, 5, '', ''),
(27, 1, '04-pms2602', ''),
(27, 2, '', ''),
(27, 3, '', ''),
(27, 4, '', ''),
(27, 5, '', ''),
(28, 1, '05-pmsblack', ''),
(28, 2, '', ''),
(28, 3, '', ''),
(28, 4, '', ''),
(28, 5, '', ''),
(29, 1, '06-pmsgreenc', ''),
(29, 2, '', ''),
(29, 3, '', ''),
(29, 4, '', ''),
(29, 5, '', ''),
(30, 1, '07-pms1', ''),
(30, 2, '', ''),
(30, 3, '', ''),
(30, 4, '', ''),
(30, 5, '', ''),
(31, 1, '08-pms312c', ''),
(31, 2, '', ''),
(31, 3, '', ''),
(31, 4, '', ''),
(31, 5, '', ''),
(32, 1, '09-pms237c', ''),
(32, 2, '', ''),
(32, 3, '', ''),
(32, 4, '', ''),
(32, 5, '', ''),
(33, 1, '10-pms116c', ''),
(33, 2, '', ''),
(33, 3, '', ''),
(33, 4, '', ''),
(33, 5, '', ''),
(34, 1, '11-pms032c', ''),
(34, 2, '', ''),
(34, 3, '', ''),
(34, 4, '', ''),
(34, 5, '', ''),
(35, 1, '12-pms367c', ''),
(35, 2, '', ''),
(35, 3, '', ''),
(35, 4, '', ''),
(35, 5, '', ''),
(36, 1, '13-pms349c', ''),
(36, 2, '', ''),
(36, 3, '', ''),
(36, 4, '', ''),
(36, 5, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_indexable_feature`
--

CREATE TABLE `ps_layered_indexable_feature` (
  `id_feature` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_layered_indexable_feature`
--

INSERT INTO `ps_layered_indexable_feature` (`id_feature`, `indexable`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_indexable_feature_lang_value`
--

CREATE TABLE `ps_layered_indexable_feature_lang_value` (
  `id_feature` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_layered_indexable_feature_lang_value`
--

INSERT INTO `ps_layered_indexable_feature_lang_value` (`id_feature`, `id_lang`, `url_name`, `meta_title`) VALUES
(8, 1, 'item-size', ''),
(8, 2, 'height', ''),
(8, 3, 'height', ''),
(8, 4, 'height', ''),
(8, 5, 'height', ''),
(9, 1, 'design-size', ''),
(9, 2, 'width', ''),
(9, 3, 'width', ''),
(9, 4, 'width', ''),
(9, 5, 'width', ''),
(11, 1, 'zhk', ''),
(11, 2, '', ''),
(11, 3, '', ''),
(11, 4, '', ''),
(11, 5, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_indexable_feature_value_lang_value`
--

CREATE TABLE `ps_layered_indexable_feature_value_lang_value` (
  `id_feature_value` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_layered_indexable_feature_value_lang_value`
--

INSERT INTO `ps_layered_indexable_feature_value_lang_value` (`id_feature_value`, `id_lang`, `url_name`, `meta_title`) VALUES
(64, 1, '', ''),
(64, 2, '', ''),
(64, 3, '', ''),
(64, 4, '', ''),
(64, 5, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_price_index`
--

CREATE TABLE `ps_layered_price_index` (
  `id_product` int(11) NOT NULL,
  `id_currency` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `price_min` int(11) NOT NULL,
  `price_max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_layered_price_index`
--

INSERT INTO `ps_layered_price_index` (`id_product`, `id_currency`, `id_shop`, `price_min`, `price_max`) VALUES
(1, 1, 1, 278, 290),
(1, 2, 1, 203, 212),
(2, 1, 1, 327, 341),
(2, 2, 1, 239, 249),
(3, 1, 1, 177, 185),
(3, 2, 1, 129, 135),
(4, 1, 1, 244, 254),
(4, 2, 1, 178, 185),
(5, 1, 1, 318, 332),
(5, 2, 1, 232, 242),
(6, 1, 1, 320, 333),
(6, 2, 1, 233, 243),
(7, 1, 1, 318, 332),
(7, 2, 1, 232, 242),
(8, 1, 1, 278, 290),
(8, 2, 1, 203, 212),
(9, 1, 1, 232, 241),
(9, 2, 1, 169, 176),
(10, 1, 1, 180, 187),
(10, 2, 1, 131, 137),
(11, 1, 1, 320, 333),
(11, 2, 1, 233, 243),
(12, 1, 1, 296, 308),
(12, 2, 1, 216, 225),
(13, 1, 1, 192, 200),
(13, 2, 1, 140, 146),
(14, 1, 1, 270, 281),
(14, 2, 1, 197, 205),
(15, 1, 1, 190, 198),
(15, 2, 1, 138, 144),
(16, 1, 1, 196, 204),
(16, 2, 1, 143, 149),
(17, 1, 1, 214, 223),
(17, 2, 1, 156, 163),
(18, 1, 1, 288, 301),
(18, 2, 1, 210, 219),
(19, 1, 1, 228, 238),
(19, 2, 1, 167, 174),
(20, 1, 1, 198, 207),
(20, 2, 1, 145, 151),
(21, 1, 1, 0, 0),
(22, 1, 1, 0, 0),
(23, 1, 1, 0, 0),
(24, 1, 1, 0, 0),
(24, 2, 1, 0, 0),
(25, 1, 1, 0, 0),
(25, 2, 1, 0, 0),
(26, 1, 1, 0, 0),
(26, 2, 1, 0, 0),
(27, 1, 1, 0, 0),
(28, 1, 1, 0, 0),
(28, 2, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_layered_product_attribute`
--

CREATE TABLE `ps_layered_product_attribute` (
  `id_attribute` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_attribute_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_layered_product_attribute`
--

INSERT INTO `ps_layered_product_attribute` (`id_attribute`, `id_product`, `id_attribute_group`, `id_shop`) VALUES
(26, 22, 3, 1),
(28, 22, 3, 1),
(29, 22, 3, 1),
(30, 22, 3, 1),
(33, 22, 3, 1),
(34, 22, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_linksmenutop`
--

CREATE TABLE `ps_linksmenutop` (
  `id_linksmenutop` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `new_window` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_linksmenutop`
--

INSERT INTO `ps_linksmenutop` (`id_linksmenutop`, `id_shop`, `new_window`) VALUES
(1, 1, 0),
(2, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_linksmenutop_lang`
--

CREATE TABLE `ps_linksmenutop_lang` (
  `id_linksmenutop` int(11) UNSIGNED NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `label` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_linksmenutop_lang`
--

INSERT INTO `ps_linksmenutop_lang` (`id_linksmenutop`, `id_lang`, `id_shop`, `label`, `link`) VALUES
(1, 1, 1, 'Layout maker', '/shop/layout-maker'),
(1, 2, 1, '', ''),
(1, 3, 1, '', ''),
(1, 4, 1, '', ''),
(1, 5, 1, '', ''),
(2, 1, 2, '0', '0'),
(2, 2, 2, '0', '0'),
(2, 3, 2, '0', '0'),
(2, 4, 2, '0', '0'),
(2, 5, 2, '0', '0');

-- --------------------------------------------------------

--
-- Structure de la table `ps_log`
--

CREATE TABLE `ps_log` (
  `id_log` int(10) UNSIGNED NOT NULL,
  `severity` tinyint(1) NOT NULL,
  `error_code` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` int(10) UNSIGNED DEFAULT NULL,
  `id_employee` int(10) UNSIGNED DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_log`
--

INSERT INTO `ps_log` (`id_log`, `severity`, `error_code`, `message`, `object_type`, `object_id`, `id_employee`, `date_add`, `date_upd`) VALUES
(1, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-07-29 09:02:38', '2016-07-29 09:02:38'),
(2, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-07-29 03:29:34', '2016-07-29 03:29:34'),
(3, 1, 0, 'Tab addition', 'Tab', 111, 1, '2016-07-29 05:07:42', '2016-07-29 05:07:42'),
(4, 1, 0, 'Tab modification', 'Tab', 111, 1, '2016-07-29 05:20:48', '2016-07-29 05:20:48'),
(5, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-07-29 06:03:51', '2016-07-29 06:03:51'),
(6, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-07-31 21:52:20', '2016-07-31 21:52:20'),
(7, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-07-31 22:11:24', '2016-07-31 22:11:24'),
(8, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-01 03:04:28', '2016-08-01 03:04:28'),
(9, 1, 0, 'Product modification', 'Product', 1, 1, '2016-08-01 03:24:49', '2016-08-01 03:24:49'),
(10, 1, 0, 'Product modification', 'Product', 1, 1, '2016-08-01 03:27:03', '2016-08-01 03:27:03'),
(11, 1, 0, 'Product modification', 'Product', 1, 1, '2016-08-01 03:27:33', '2016-08-01 03:27:33'),
(12, 1, 0, 'Product modification', 'Product', 1, 1, '2016-08-01 03:29:02', '2016-08-01 03:29:02'),
(13, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-01 04:36:25', '2016-08-01 04:36:25'),
(14, 1, 0, 'Category addition', 'Category', 45, 1, '2016-08-01 04:38:16', '2016-08-01 04:38:16'),
(15, 1, 0, 'Category addition', 'Category', 46, 1, '2016-08-01 04:39:05', '2016-08-01 04:39:05'),
(16, 1, 0, 'Product addition', 'Product', 21, 1, '2016-08-01 04:42:00', '2016-08-01 04:42:00'),
(17, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-01 04:43:04', '2016-08-01 04:43:04'),
(18, 1, 0, 'Product deletion', 'Product', 1, 1, '2016-08-01 04:51:42', '2016-08-01 04:51:42'),
(19, 1, 0, 'Product deletion', 'Product', 2, 1, '2016-08-01 04:51:50', '2016-08-01 04:51:50'),
(20, 1, 0, 'Product deletion', 'Product', 3, 1, '2016-08-01 04:52:05', '2016-08-01 04:52:05'),
(21, 1, 0, 'Product deletion', 'Product', 4, 1, '2016-08-01 04:52:17', '2016-08-01 04:52:17'),
(22, 1, 0, 'Product deletion', 'Product', 5, 1, '2016-08-01 04:52:23', '2016-08-01 04:52:23'),
(23, 1, 0, 'Product deletion', 'Product', 6, 1, '2016-08-01 04:52:28', '2016-08-01 04:52:28'),
(24, 1, 0, 'Product deletion', 'Product', 7, 1, '2016-08-01 04:52:34', '2016-08-01 04:52:34'),
(25, 1, 0, 'Product deletion', 'Product', 8, 1, '2016-08-01 04:52:41', '2016-08-01 04:52:41'),
(26, 1, 0, 'Product deletion', 'Product', 9, 1, '2016-08-01 04:52:48', '2016-08-01 04:52:48'),
(27, 1, 0, 'Product deletion', 'Product', 10, 1, '2016-08-01 04:52:55', '2016-08-01 04:52:55'),
(28, 1, 0, 'Product deletion', 'Product', 11, 1, '2016-08-01 04:53:00', '2016-08-01 04:53:00'),
(29, 1, 0, 'Product deletion', 'Product', 12, 1, '2016-08-01 04:53:05', '2016-08-01 04:53:05'),
(30, 1, 0, 'Product deletion', 'Product', 13, 1, '2016-08-01 04:53:10', '2016-08-01 04:53:10'),
(31, 1, 0, 'Product deletion', 'Product', 14, 1, '2016-08-01 04:53:15', '2016-08-01 04:53:15'),
(32, 1, 0, 'Product deletion', 'Product', 15, 1, '2016-08-01 04:53:20', '2016-08-01 04:53:20'),
(33, 1, 0, 'Product deletion', 'Product', 16, 1, '2016-08-01 04:53:24', '2016-08-01 04:53:24'),
(34, 1, 0, 'Product deletion', 'Product', 17, 1, '2016-08-01 04:53:28', '2016-08-01 04:53:28'),
(35, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:02', '2016-08-01 04:55:02'),
(36, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:02', '2016-08-01 04:55:02'),
(37, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:02', '2016-08-01 04:55:02'),
(38, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:02', '2016-08-01 04:55:02'),
(39, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:02', '2016-08-01 04:55:02'),
(40, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:02', '2016-08-01 04:55:02'),
(41, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:03', '2016-08-01 04:55:03'),
(42, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:03', '2016-08-01 04:55:03'),
(43, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:03', '2016-08-01 04:55:03'),
(44, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:03', '2016-08-01 04:55:03'),
(45, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:03', '2016-08-01 04:55:03'),
(46, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:03', '2016-08-01 04:55:03'),
(47, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:03', '2016-08-01 04:55:03'),
(48, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:03', '2016-08-01 04:55:03'),
(49, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:03', '2016-08-01 04:55:03'),
(50, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:03', '2016-08-01 04:55:03'),
(51, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:03', '2016-08-01 04:55:03'),
(52, 1, 0, 'Product deletion', '', 0, 1, '2016-08-01 04:55:04', '2016-08-01 04:55:04'),
(53, 1, 0, 'Product deletion', 'Product', 19, 1, '2016-08-01 04:55:06', '2016-08-01 04:55:06'),
(54, 1, 0, 'Product deletion', 'Product', 20, 1, '2016-08-01 04:55:08', '2016-08-01 04:55:08'),
(55, 1, 0, 'Category deletion', 'Category', 3, 1, '2016-08-01 05:00:16', '2016-08-01 05:00:16'),
(56, 1, 0, 'Category deletion', 'Category', 39, 1, '2016-08-01 05:00:17', '2016-08-01 05:00:17'),
(57, 1, 0, 'Category deletion', 'Category', 40, 1, '2016-08-01 05:00:18', '2016-08-01 05:00:18'),
(58, 1, 0, 'Category deletion', 'Category', 41, 1, '2016-08-01 05:00:19', '2016-08-01 05:00:19'),
(59, 1, 0, 'Category deletion', 'Category', 42, 1, '2016-08-01 05:00:20', '2016-08-01 05:00:20'),
(60, 1, 0, 'Category deletion', 'Category', 43, 1, '2016-08-01 05:00:20', '2016-08-01 05:00:20'),
(61, 1, 0, 'Category deletion', 'Category', 44, 1, '2016-08-01 05:00:21', '2016-08-01 05:00:21'),
(62, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-01 05:15:45', '2016-08-01 05:15:45'),
(63, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-01 05:17:49', '2016-08-01 05:17:49'),
(64, 1, 0, 'Product addition', 'Product', 22, 1, '2016-08-01 05:24:57', '2016-08-01 05:24:57'),
(65, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-01 05:26:24', '2016-08-01 05:26:24'),
(66, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-01 05:27:00', '2016-08-01 05:27:00'),
(67, 1, 0, 'Category addition', 'Category', 47, 1, '2016-08-01 05:28:07', '2016-08-01 05:28:07'),
(68, 1, 0, 'Category addition', 'Category', 48, 1, '2016-08-01 05:28:25', '2016-08-01 05:28:25'),
(69, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-01 05:28:45', '2016-08-01 05:28:45'),
(70, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-01 05:29:35', '2016-08-01 05:29:35'),
(71, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-01 05:30:15', '2016-08-01 05:30:15'),
(72, 1, 0, 'Product addition', 'Product', 23, 1, '2016-08-01 05:31:06', '2016-08-01 05:31:06'),
(73, 1, 0, 'Product modification', 'Product', 23, 1, '2016-08-01 05:31:37', '2016-08-01 05:31:37'),
(74, 1, 0, 'Product modification', 'Product', 23, 1, '2016-08-01 05:32:06', '2016-08-01 05:32:06'),
(75, 1, 0, 'Category modification', 'Category', 47, 1, '2016-08-01 05:34:22', '2016-08-01 05:34:22'),
(76, 1, 0, 'Category modification', 'Category', 47, 1, '2016-08-01 05:35:20', '2016-08-01 05:35:20'),
(77, 1, 0, 'Category modification', 'Category', 48, 1, '2016-08-01 05:36:11', '2016-08-01 05:36:11'),
(78, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-01 23:13:06', '2016-08-01 23:13:06'),
(79, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-02 00:33:42', '2016-08-02 00:33:42'),
(80, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-02 01:28:10', '2016-08-02 01:28:10'),
(81, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-02 01:38:39', '2016-08-02 01:38:39'),
(82, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-02 02:05:23', '2016-08-02 02:05:23'),
(83, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-02 02:51:15', '2016-08-02 02:51:15'),
(84, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-02 03:37:52', '2016-08-02 03:37:52'),
(85, 1, 0, 'Product addition', 'Product', 24, 1, '2016-08-02 04:09:21', '2016-08-02 04:09:21'),
(86, 1, 0, 'Product modification', 'Product', 24, 1, '2016-08-02 04:09:51', '2016-08-02 04:09:51'),
(87, 1, 0, 'Product modification', 'Product', 24, 1, '2016-08-02 04:11:32', '2016-08-02 04:11:32'),
(88, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-02 04:33:07', '2016-08-02 04:33:07'),
(89, 1, 0, 'Product modification', 'Product', 25, 1, '2016-08-02 04:45:13', '2016-08-02 04:45:13'),
(90, 1, 0, 'Product status switched to enable', 'Product', 25, 1, '2016-08-02 04:45:39', '2016-08-02 04:45:39'),
(91, 1, 0, 'Product modification', 'Product', 26, 1, '2016-08-02 04:47:42', '2016-08-02 04:47:42'),
(92, 1, 0, 'Product status switched to enable', 'Product', 26, 1, '2016-08-02 04:47:53', '2016-08-02 04:47:53'),
(93, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-02 04:49:36', '2016-08-02 04:49:36'),
(94, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-02 04:50:08', '2016-08-02 04:50:08'),
(95, 1, 0, 'Product addition', 'Product', 28, 1, '2016-08-02 04:54:44', '2016-08-02 04:54:44'),
(96, 1, 0, 'Product modification', 'Product', 28, 1, '2016-08-02 04:55:54', '2016-08-02 04:55:54'),
(97, 1, 0, 'Category addition', 'Category', 49, 1, '2016-08-02 05:00:12', '2016-08-02 05:00:12'),
(98, 1, 0, 'Product modification', 'Product', 28, 1, '2016-08-02 05:02:30', '2016-08-02 05:02:30'),
(99, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-02 05:02:55', '2016-08-02 05:02:55'),
(100, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-02 05:22:14', '2016-08-02 05:22:14'),
(101, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-02 05:40:39', '2016-08-02 05:40:39'),
(102, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-02 21:39:28', '2016-08-02 21:39:28'),
(103, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-02 22:02:19', '2016-08-02 22:02:19'),
(104, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-02 23:05:10', '2016-08-02 23:05:10'),
(105, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-03 01:41:23', '2016-08-03 01:41:23'),
(106, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-03 05:17:19', '2016-08-03 05:17:19'),
(107, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-03 22:02:43', '2016-08-03 22:02:43'),
(108, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-03 22:23:26', '2016-08-03 22:23:26'),
(109, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-03 23:40:13', '2016-08-03 23:40:13'),
(110, 1, 0, 'Product deletion', 'Product', 1, 1, '2016-08-03 23:40:58', '2016-08-03 23:40:58'),
(111, 1, 0, 'Product deletion', 'Product', 2, 1, '2016-08-03 23:41:07', '2016-08-03 23:41:07'),
(112, 1, 0, 'Product deletion', 'Product', 3, 1, '2016-08-03 23:41:16', '2016-08-03 23:41:16'),
(113, 1, 0, 'Product deletion', 'Product', 4, 1, '2016-08-03 23:41:27', '2016-08-03 23:41:27'),
(114, 1, 0, 'Product deletion', 'Product', 5, 1, '2016-08-03 23:41:36', '2016-08-03 23:41:36'),
(115, 1, 0, 'Product deletion', 'Product', 6, 1, '2016-08-03 23:41:42', '2016-08-03 23:41:42'),
(116, 1, 0, 'Product deletion', 'Product', 7, 1, '2016-08-03 23:41:49', '2016-08-03 23:41:49'),
(117, 1, 0, 'Product deletion', 'Product', 8, 1, '2016-08-03 23:41:56', '2016-08-03 23:41:56'),
(118, 1, 0, 'Product deletion', 'Product', 9, 1, '2016-08-03 23:42:02', '2016-08-03 23:42:02'),
(119, 1, 0, 'Product deletion', 'Product', 10, 1, '2016-08-03 23:42:10', '2016-08-03 23:42:10'),
(120, 1, 0, 'Product deletion', 'Product', 11, 1, '2016-08-03 23:42:17', '2016-08-03 23:42:17'),
(121, 1, 0, 'Product deletion', 'Product', 12, 1, '2016-08-03 23:42:23', '2016-08-03 23:42:23'),
(122, 1, 0, 'Product deletion', 'Product', 13, 1, '2016-08-03 23:42:28', '2016-08-03 23:42:28'),
(123, 1, 0, 'Product deletion', 'Product', 14, 1, '2016-08-03 23:42:35', '2016-08-03 23:42:35'),
(124, 1, 0, 'Product deletion', 'Product', 15, 1, '2016-08-03 23:42:40', '2016-08-03 23:42:40'),
(125, 1, 0, 'Product deletion', 'Product', 16, 1, '2016-08-03 23:42:43', '2016-08-03 23:42:43'),
(126, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(127, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(128, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(129, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(130, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(131, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(132, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(133, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(134, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(135, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(136, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(137, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:50', '2016-08-03 23:45:50'),
(138, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:51', '2016-08-03 23:45:51'),
(139, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:51', '2016-08-03 23:45:51'),
(140, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:51', '2016-08-03 23:45:51'),
(141, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:51', '2016-08-03 23:45:51'),
(142, 1, 0, 'Product deletion', '', 0, 1, '2016-08-03 23:45:51', '2016-08-03 23:45:51'),
(143, 1, 0, 'Product deletion', 'Product', 18, 1, '2016-08-03 23:45:55', '2016-08-03 23:45:55'),
(144, 1, 0, 'Product deletion', 'Product', 19, 1, '2016-08-03 23:45:57', '2016-08-03 23:45:57'),
(145, 1, 0, 'Product deletion', 'Product', 20, 1, '2016-08-03 23:45:59', '2016-08-03 23:45:59'),
(146, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-04 00:29:53', '2016-08-04 00:29:53'),
(147, 1, 0, 'Category deletion', 'Category', 3, 1, '2016-08-04 00:30:33', '2016-08-04 00:30:33'),
(148, 1, 0, 'Category deletion', 'Category', 39, 1, '2016-08-04 00:30:34', '2016-08-04 00:30:34'),
(149, 1, 0, 'Category deletion', 'Category', 40, 1, '2016-08-04 00:30:36', '2016-08-04 00:30:36'),
(150, 1, 0, 'Category deletion', 'Category', 41, 1, '2016-08-04 00:30:36', '2016-08-04 00:30:36'),
(151, 1, 0, 'Category deletion', 'Category', 42, 1, '2016-08-04 00:30:37', '2016-08-04 00:30:37'),
(152, 1, 0, 'Category deletion', 'Category', 43, 1, '2016-08-04 00:30:37', '2016-08-04 00:30:37'),
(153, 1, 0, 'Category deletion', 'Category', 44, 1, '2016-08-04 00:30:39', '2016-08-04 00:30:39'),
(154, 1, 0, 'Category addition', 'Category', 45, 1, '2016-08-04 00:31:01', '2016-08-04 00:31:01'),
(155, 1, 0, 'Category addition', 'Category', 46, 1, '2016-08-04 00:31:14', '2016-08-04 00:31:14'),
(156, 1, 0, 'Category addition', 'Category', 47, 1, '2016-08-04 00:31:28', '2016-08-04 00:31:28'),
(157, 1, 0, 'Category addition', 'Category', 48, 1, '2016-08-04 00:31:41', '2016-08-04 00:31:41'),
(158, 1, 0, 'Category addition', 'Category', 49, 1, '2016-08-04 00:31:52', '2016-08-04 00:31:52'),
(159, 1, 0, 'Product addition', 'Product', 21, 1, '2016-08-04 00:32:25', '2016-08-04 00:32:25'),
(160, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-04 00:32:38', '2016-08-04 00:32:38'),
(161, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-04 00:32:56', '2016-08-04 00:32:56'),
(162, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-04 01:37:08', '2016-08-04 01:37:08'),
(163, 1, 0, 'Product addition', 'Product', 22, 1, '2016-08-04 01:37:37', '2016-08-04 01:37:37'),
(164, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-04 01:37:56', '2016-08-04 01:37:56'),
(165, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-04 01:38:48', '2016-08-04 01:38:48'),
(166, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-04 01:39:59', '2016-08-04 01:39:59'),
(167, 1, 0, 'Product addition', 'Product', 23, 1, '2016-08-04 01:52:06', '2016-08-04 01:52:06'),
(168, 1, 0, 'Product modification', 'Product', 23, 1, '2016-08-04 01:53:31', '2016-08-04 01:53:31'),
(169, 1, 0, 'Product addition', 'Product', 24, 1, '2016-08-04 01:54:40', '2016-08-04 01:54:40'),
(170, 1, 0, 'Product modification', 'Product', 24, 1, '2016-08-04 01:55:21', '2016-08-04 01:55:21'),
(171, 1, 0, 'Product modification', 'Product', 24, 1, '2016-08-04 01:55:31', '2016-08-04 01:55:31'),
(172, 1, 0, 'Product modification', 'Product', 24, 1, '2016-08-04 01:55:54', '2016-08-04 01:55:54'),
(173, 1, 0, 'Product addition', 'Product', 25, 1, '2016-08-04 01:57:59', '2016-08-04 01:57:59'),
(174, 1, 0, 'Product modification', 'Product', 25, 1, '2016-08-04 01:58:30', '2016-08-04 01:58:30'),
(175, 1, 0, 'Product modification', 'Product', 25, 1, '2016-08-04 02:00:43', '2016-08-04 02:00:43'),
(176, 1, 0, 'Product addition', 'Product', 26, 1, '2016-08-04 02:01:09', '2016-08-04 02:01:09'),
(177, 1, 0, 'Product modification', 'Product', 26, 1, '2016-08-04 02:01:21', '2016-08-04 02:01:21'),
(178, 1, 0, 'Product modification', 'Product', 26, 1, '2016-08-04 02:01:37', '2016-08-04 02:01:37'),
(179, 1, 0, 'Product addition', 'Product', 27, 1, '2016-08-04 02:02:03', '2016-08-04 02:02:03'),
(180, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-04 02:02:14', '2016-08-04 02:02:14'),
(181, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-04 02:02:53', '2016-08-04 02:02:53'),
(182, 1, 0, 'Product addition', 'Product', 28, 1, '2016-08-04 02:04:02', '2016-08-04 02:04:02'),
(183, 1, 0, 'Product modification', 'Product', 28, 1, '2016-08-04 02:04:27', '2016-08-04 02:04:27'),
(184, 1, 0, 'Product modification', 'Product', 28, 1, '2016-08-04 02:05:05', '2016-08-04 02:05:05'),
(185, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-04 04:19:47', '2016-08-04 04:19:47'),
(186, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-04 04:58:13', '2016-08-04 04:58:13'),
(187, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-04 21:37:19', '2016-08-04 21:37:19'),
(188, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-04 22:48:16', '2016-08-04 22:48:16'),
(189, 1, 0, 'Product modification', 'Product', 24, 1, '2016-08-04 22:52:16', '2016-08-04 22:52:16'),
(190, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-04 23:12:59', '2016-08-04 23:12:59'),
(191, 1, 0, 'Meta addition', 'Meta', 43, 1, '2016-08-04 23:20:31', '2016-08-04 23:20:31'),
(192, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-05 00:12:20', '2016-08-05 00:12:20'),
(193, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-05 02:34:15', '2016-08-05 02:34:15'),
(194, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-05 03:33:06', '2016-08-05 03:33:06'),
(195, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-05 04:54:40', '2016-08-05 04:54:40'),
(196, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-05 05:00:27', '2016-08-05 05:00:27'),
(197, 1, 0, 'Tab deletion', 'Tab', 111, 1, '2016-08-05 05:02:16', '2016-08-05 05:02:16'),
(198, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-05 05:23:52', '2016-08-05 05:23:52'),
(199, 1, 0, 'Feature addition', 'Feature', 11, 1, '2016-08-05 05:27:22', '2016-08-05 05:27:22'),
(200, 1, 0, 'Feature deletion', 'Feature', 11, 1, '2016-08-05 05:28:30', '2016-08-05 05:28:30'),
(201, 1, 0, 'Attachment addition', 'Attachment', 1, 1, '2016-08-05 05:31:00', '2016-08-05 05:31:00'),
(202, 1, 0, 'AttributeGroup addition', 'AttributeGroup', 4, 1, '2016-08-05 05:32:12', '2016-08-05 05:32:12'),
(203, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-05 05:33:30', '2016-08-05 05:33:30'),
(204, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-05 05:56:56', '2016-08-05 05:56:56'),
(205, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-05 05:57:19', '2016-08-05 05:57:19'),
(206, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-05 05:59:04', '2016-08-05 05:59:04'),
(207, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-07 21:39:27', '2016-08-07 21:39:27'),
(208, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-07 23:34:49', '2016-08-07 23:34:49'),
(209, 1, 0, 'Meta modification', 'Meta', 43, 1, '2016-08-07 23:37:20', '2016-08-07 23:37:20'),
(210, 1, 0, 'Meta deletion', 'Meta', 43, 1, '2016-08-07 23:44:36', '2016-08-07 23:44:36'),
(211, 1, 0, 'Meta addition', 'Meta', 46, 1, '2016-08-07 23:46:21', '2016-08-07 23:46:21'),
(212, 1, 0, 'Currency modification', 'Currency', 2, 1, '2016-08-07 23:57:30', '2016-08-07 23:57:30'),
(213, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-08 00:25:48', '2016-08-08 00:25:48'),
(214, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-08 01:54:29', '2016-08-08 01:54:29'),
(215, 1, 0, 'Product modification', 'Product', 21, 1, '2016-08-08 02:06:25', '2016-08-08 02:06:25'),
(216, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-08 02:31:27', '2016-08-08 02:31:27'),
(217, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-08 02:38:02', '2016-08-08 02:38:02'),
(218, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-08 03:12:15', '2016-08-08 03:12:15'),
(219, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-08 04:02:26', '2016-08-08 04:02:26'),
(220, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-08 04:09:35', '2016-08-08 04:09:35'),
(221, 1, 0, 'ImageType addition', 'ImageType', 26, 1, '2016-08-08 04:31:51', '2016-08-08 04:31:51'),
(222, 1, 0, 'ImageType modification', 'ImageType', 26, 1, '2016-08-08 04:33:17', '2016-08-08 04:33:17'),
(223, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-08 04:34:11', '2016-08-08 04:34:11'),
(224, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-08 04:34:30', '2016-08-08 04:34:30'),
(225, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-08 04:34:51', '2016-08-08 04:34:51'),
(226, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 04:52:24', '2016-08-08 04:52:24'),
(227, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 04:52:50', '2016-08-08 04:52:50'),
(228, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 04:53:08', '2016-08-08 04:53:08'),
(229, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 04:53:35', '2016-08-08 04:53:35'),
(230, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 04:54:20', '2016-08-08 04:54:20'),
(231, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 04:55:03', '2016-08-08 04:55:03'),
(232, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-08 21:55:13', '2016-08-08 21:55:13'),
(233, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-08 22:18:31', '2016-08-08 22:18:31'),
(234, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 22:27:42', '2016-08-08 22:27:42'),
(235, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 22:27:57', '2016-08-08 22:27:57'),
(236, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 22:28:16', '2016-08-08 22:28:16'),
(237, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 22:28:43', '2016-08-08 22:28:43'),
(238, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 22:29:09', '2016-08-08 22:29:09'),
(239, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 22:30:07', '2016-08-08 22:30:07'),
(240, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-08 22:30:23', '2016-08-08 22:30:23'),
(241, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-08 23:01:06', '2016-08-08 23:01:06'),
(242, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-09 00:08:17', '2016-08-09 00:08:17'),
(243, 1, 0, 'ShopGroup addition', 'ShopGroup', 2, 1, '2016-08-09 00:18:37', '2016-08-09 00:18:37'),
(244, 1, 0, 'ShopGroup modification', 'ShopGroup', 1, 1, '2016-08-09 00:18:51', '2016-08-09 00:18:51'),
(245, 1, 0, 'ShopGroup modification', 'ShopGroup', 1, 1, '2016-08-09 00:19:00', '2016-08-09 00:19:00'),
(246, 1, 0, 'ShopGroup modification', 'ShopGroup', 1, 1, '2016-08-09 00:23:37', '2016-08-09 00:23:37'),
(247, 1, 0, 'ShopGroup deletion', 'ShopGroup', 2, 1, '2016-08-09 00:23:43', '2016-08-09 00:23:43'),
(248, 1, 0, 'ShopUrl addition', 'ShopUrl', 2, 1, '2016-08-09 00:27:23', '2016-08-09 00:27:23'),
(249, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-09 01:56:14', '2016-08-09 01:56:14'),
(250, 1, 0, 'ShopUrl deletion', 'ShopUrl', 2, 1, '2016-08-09 01:56:24', '2016-08-09 01:56:24'),
(251, 1, 0, 'Shop deletion', 'Shop', 2, 1, '2016-08-09 02:03:44', '2016-08-09 02:03:44'),
(252, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-09 02:45:57', '2016-08-09 02:45:57'),
(253, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-09 21:44:37', '2016-08-09 21:44:37'),
(254, 1, 0, 'Feature modification', 'Feature', 8, 1, '2016-08-09 21:46:54', '2016-08-09 21:46:54'),
(255, 1, 0, 'Feature modification', 'Feature', 8, 1, '2016-08-09 21:47:04', '2016-08-09 21:47:04'),
(256, 1, 0, 'Feature modification', 'Feature', 9, 1, '2016-08-09 21:47:21', '2016-08-09 21:47:21'),
(257, 1, 0, 'Feature deletion', 'Feature', 10, 1, '2016-08-09 21:47:29', '2016-08-09 21:47:29'),
(258, 1, 0, 'FeatureValue deletion', 'FeatureValue', 62, 1, '2016-08-09 21:47:42', '2016-08-09 21:47:42'),
(259, 1, 0, 'FeatureValue deletion', 'FeatureValue', 63, 1, '2016-08-09 21:49:07', '2016-08-09 21:49:07'),
(260, 1, 0, 'AttributeGroup deletion', 'AttributeGroup', 4, 1, '2016-08-09 21:49:31', '2016-08-09 21:49:31'),
(261, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 21:55:27', '2016-08-09 21:55:27'),
(262, 1, 0, 'Attribute modification', 'Attribute', 5, 1, '2016-08-09 22:01:22', '2016-08-09 22:01:22'),
(263, 1, 0, 'Attribute addition', 'Attribute', 25, 1, '2016-08-09 22:01:54', '2016-08-09 22:01:54'),
(264, 1, 0, 'Attribute addition', 'Attribute', 26, 1, '2016-08-09 22:02:20', '2016-08-09 22:02:20'),
(265, 1, 0, 'Attribute addition', 'Attribute', 27, 1, '2016-08-09 22:02:40', '2016-08-09 22:02:40'),
(266, 1, 0, 'Attribute addition', 'Attribute', 28, 1, '2016-08-09 22:03:09', '2016-08-09 22:03:09'),
(267, 1, 0, 'Attribute addition', 'Attribute', 29, 1, '2016-08-09 22:03:30', '2016-08-09 22:03:30'),
(268, 1, 0, 'Attribute addition', 'Attribute', 30, 1, '2016-08-09 22:04:37', '2016-08-09 22:04:37'),
(269, 1, 0, 'Attribute addition', 'Attribute', 31, 1, '2016-08-09 22:04:58', '2016-08-09 22:04:58'),
(270, 1, 0, 'Attribute addition', 'Attribute', 32, 1, '2016-08-09 22:05:20', '2016-08-09 22:05:20'),
(271, 1, 0, 'Attribute addition', 'Attribute', 33, 1, '2016-08-09 22:06:37', '2016-08-09 22:06:37'),
(272, 1, 0, 'Attribute addition', 'Attribute', 34, 1, '2016-08-09 22:06:58', '2016-08-09 22:06:58'),
(273, 1, 0, 'Attribute addition', 'Attribute', 35, 1, '2016-08-09 22:07:16', '2016-08-09 22:07:16'),
(274, 1, 0, 'Attribute addition', 'Attribute', 36, 1, '2016-08-09 22:07:34', '2016-08-09 22:07:34'),
(275, 1, 0, 'Attachment deletion', 'Attachment', 1, 1, '2016-08-09 22:11:32', '2016-08-09 22:11:32'),
(276, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:19:03', '2016-08-09 22:19:03'),
(277, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:19:08', '2016-08-09 22:19:08'),
(278, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:20:30', '2016-08-09 22:20:30'),
(279, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:21:10', '2016-08-09 22:21:10'),
(280, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:21:29', '2016-08-09 22:21:29'),
(281, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:21:46', '2016-08-09 22:21:46'),
(282, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:22:04', '2016-08-09 22:22:04'),
(283, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:22:30', '2016-08-09 22:22:30'),
(284, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:22:43', '2016-08-09 22:22:43'),
(285, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:23:22', '2016-08-09 22:23:22'),
(286, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:23:46', '2016-08-09 22:23:46'),
(287, 1, 0, 'Product modification', 'Product', 22, 1, '2016-08-09 22:23:59', '2016-08-09 22:23:59'),
(288, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-09 22:48:28', '2016-08-09 22:48:28'),
(289, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-09 23:12:00', '2016-08-09 23:12:00'),
(290, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-09 23:18:45', '2016-08-09 23:18:45'),
(291, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-09 23:19:05', '2016-08-09 23:19:05'),
(292, 1, 0, 'Product modification', 'Product', 27, 1, '2016-08-09 23:20:33', '2016-08-09 23:20:33'),
(293, 1, 0, 'Product modification', 'Product', 23, 1, '2016-08-09 23:28:09', '2016-08-09 23:28:09'),
(294, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-10 01:53:17', '2016-08-10 01:53:17'),
(295, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-10 02:22:22', '2016-08-10 02:22:22'),
(296, 1, 0, 'Back Office connection from ::1', '', 0, 1, '2016-08-10 04:58:32', '2016-08-10 04:58:32'),
(297, 1, 0, 'Product modification', 'Product', 23, 1, '2016-08-10 04:59:40', '2016-08-10 04:59:40'),
(298, 1, 0, 'Product modification', 'Product', 23, 1, '2016-08-10 04:59:42', '2016-08-10 04:59:42'),
(299, 1, 0, 'Product modification', 'Product', 23, 1, '2016-08-10 04:59:59', '2016-08-10 04:59:59'),
(300, 1, 0, 'Product modification', 'Product', 23, 1, '2016-08-10 05:03:43', '2016-08-10 05:03:43'),
(301, 1, 0, 'Product modification', 'Product', 23, 1, '2016-08-10 05:03:54', '2016-08-10 05:03:54');

-- --------------------------------------------------------

--
-- Structure de la table `ps_mail`
--

CREATE TABLE `ps_mail` (
  `id_mail` int(11) UNSIGNED NOT NULL,
  `recipient` varchar(126) NOT NULL,
  `template` varchar(62) NOT NULL,
  `subject` varchar(254) NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_manufacturer`
--

CREATE TABLE `ps_manufacturer` (
  `id_manufacturer` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_manufacturer`
--

INSERT INTO `ps_manufacturer` (`id_manufacturer`, `name`, `date_add`, `date_upd`, `active`) VALUES
(2, 'Fusce a viverra nulla', '2016-08-03 23:14:12', '2016-08-03 23:14:12', 1),
(3, 'Fusce vitae auctor erat', '2016-08-03 23:14:13', '2016-08-03 23:14:13', 1),
(4, 'Lorem ipsum dolor', '2016-08-03 23:14:14', '2016-08-03 23:14:14', 1),
(5, 'Nullam aliquam odio tellus', '2016-08-03 23:14:15', '2016-08-03 23:14:15', 1),
(6, 'Sed tincidunt lacinia elit', '2016-08-03 23:14:16', '2016-08-03 23:14:16', 1),
(7, 'Ut feugiat lobortis ligula', '2016-08-03 23:14:17', '2016-08-03 23:14:17', 1),
(8, 'Duis semper congue metus', '2016-08-03 23:14:10', '2016-08-03 23:14:10', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_manufacturer_lang`
--

CREATE TABLE `ps_manufacturer_lang` (
  `id_manufacturer` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `description` text,
  `short_description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_manufacturer_lang`
--

INSERT INTO `ps_manufacturer_lang` (`id_manufacturer`, `id_lang`, `description`, `short_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(2, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(2, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(2, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(2, 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(3, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(3, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(3, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(3, 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(4, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(4, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(4, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(4, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(4, 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(5, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(5, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(5, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(5, 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(6, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(6, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(6, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(6, 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(7, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(7, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(7, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(7, 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat. Fusce vitae auctor erat, vitae eleifend libero. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt lacinia elit, ac varius dui. Aenean aliquet ipsum nec erat molestie feugiat. Morbi in volutpat eros, quis venenatis lacus. Maecenas vel ornare orci. In posuere est lectus, in dignissim mauris varius ac. Sed imperdiet porttitor nulla, eu egestas leo lacinia at. Duis sed felis vel orci aliquet venenatis. Aenean ut nisi vel nulla tincidunt convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut feugiat lobortis ligula. Nullam aliquam odio tellus, ut vestibulum lorem dictum ac. Pellentesque adipiscing dapibus feugiat.', '', '', ''),
(8, 1, '<p>Duis semper congue metus in pellentesque. Nulla dictum enim eu enim feugiat, eget vulputate justo aliquam. Fusce sed porta justo. Aliquam nibh turpis, tempus vel sagittis id, volutpat a lacus. In a nunc ultricies, lacinia est id, bibendum orci. Aenean bibendum nulla eros, vel fermentum nisl sodales ut. Phasellus a erat id mi pulvinar cursus. Vestibulum elit libero, tristique in scelerisque id, tempor a neque. Cras ante mauris, elementum vel ultrices in, facilisis ac ipsum.</p>', '<p>Duis semper congue metus in pellentesque. Nulla dictum enim eu enim feugiat, eget vulputate justo aliquam. Fusce sed porta justo. Aliquam nibh turpis, tempus vel sagittis id, volutpat a lacus.</p>', '', '', ''),
(8, 2, '<p>Duis semper congue metus in pellentesque. Nulla dictum enim eu enim feugiat, eget vulputate justo aliquam. Fusce sed porta justo. Aliquam nibh turpis, tempus vel sagittis id, volutpat a lacus. In a nunc ultricies, lacinia est id, bibendum orci. Aenean bibendum nulla eros, vel fermentum nisl sodales ut. Phasellus a erat id mi pulvinar cursus. Vestibulum elit libero, tristique in scelerisque id, tempor a neque. Cras ante mauris, elementum vel ultrices in, facilisis ac ipsum.</p>', '<p>Duis semper congue metus in pellentesque. Nulla dictum enim eu enim feugiat, eget vulputate justo aliquam. Fusce sed porta justo. Aliquam nibh turpis, tempus vel sagittis id, volutpat a lacus.</p>', '', '', ''),
(8, 3, '<p>Duis semper congue metus in pellentesque. Nulla dictum enim eu enim feugiat, eget vulputate justo aliquam. Fusce sed porta justo. Aliquam nibh turpis, tempus vel sagittis id, volutpat a lacus. In a nunc ultricies, lacinia est id, bibendum orci. Aenean bibendum nulla eros, vel fermentum nisl sodales ut. Phasellus a erat id mi pulvinar cursus. Vestibulum elit libero, tristique in scelerisque id, tempor a neque. Cras ante mauris, elementum vel ultrices in, facilisis ac ipsum.</p>', '<p>Duis semper congue metus in pellentesque. Nulla dictum enim eu enim feugiat, eget vulputate justo aliquam. Fusce sed porta justo. Aliquam nibh turpis, tempus vel sagittis id, volutpat a lacus.</p>', '', '', ''),
(8, 4, '<p>Duis semper congue metus in pellentesque. Nulla dictum enim eu enim feugiat, eget vulputate justo aliquam. Fusce sed porta justo. Aliquam nibh turpis, tempus vel sagittis id, volutpat a lacus. In a nunc ultricies, lacinia est id, bibendum orci. Aenean bibendum nulla eros, vel fermentum nisl sodales ut. Phasellus a erat id mi pulvinar cursus. Vestibulum elit libero, tristique in scelerisque id, tempor a neque. Cras ante mauris, elementum vel ultrices in, facilisis ac ipsum.</p>', '<p>Duis semper congue metus in pellentesque. Nulla dictum enim eu enim feugiat, eget vulputate justo aliquam. Fusce sed porta justo. Aliquam nibh turpis, tempus vel sagittis id, volutpat a lacus.</p>', '', '', ''),
(8, 5, '<p>Duis semper congue metus in pellentesque. Nulla dictum enim eu enim feugiat, eget vulputate justo aliquam. Fusce sed porta justo. Aliquam nibh turpis, tempus vel sagittis id, volutpat a lacus. In a nunc ultricies, lacinia est id, bibendum orci. Aenean bibendum nulla eros, vel fermentum nisl sodales ut. Phasellus a erat id mi pulvinar cursus. Vestibulum elit libero, tristique in scelerisque id, tempor a neque. Cras ante mauris, elementum vel ultrices in, facilisis ac ipsum.</p>', '<p>Duis semper congue metus in pellentesque. Nulla dictum enim eu enim feugiat, eget vulputate justo aliquam. Fusce sed porta justo. Aliquam nibh turpis, tempus vel sagittis id, volutpat a lacus.</p>', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_manufacturer_shop`
--

CREATE TABLE `ps_manufacturer_shop` (
  `id_manufacturer` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_manufacturer_shop`
--

INSERT INTO `ps_manufacturer_shop` (`id_manufacturer`, `id_shop`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_memcached_servers`
--

CREATE TABLE `ps_memcached_servers` (
  `id_memcached_server` int(11) UNSIGNED NOT NULL,
  `ip` varchar(254) NOT NULL,
  `port` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_message`
--

CREATE TABLE `ps_message` (
  `id_message` int(10) UNSIGNED NOT NULL,
  `id_cart` int(10) UNSIGNED DEFAULT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_employee` int(10) UNSIGNED DEFAULT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_message_readed`
--

CREATE TABLE `ps_message_readed` (
  `id_message` int(10) UNSIGNED NOT NULL,
  `id_employee` int(10) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_meta`
--

CREATE TABLE `ps_meta` (
  `id_meta` int(10) UNSIGNED NOT NULL,
  `page` varchar(64) NOT NULL,
  `configurable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_meta`
--

INSERT INTO `ps_meta` (`id_meta`, `page`, `configurable`) VALUES
(1, 'pagenotfound', 1),
(2, 'best-sales', 1),
(3, 'contact', 1),
(4, 'index', 1),
(5, 'manufacturer', 1),
(6, 'new-products', 1),
(7, 'password', 1),
(8, 'prices-drop', 1),
(9, 'sitemap', 1),
(10, 'supplier', 1),
(11, 'address', 1),
(12, 'addresses', 1),
(13, 'authentication', 1),
(14, 'cart', 1),
(15, 'discount', 1),
(16, 'history', 1),
(17, 'identity', 1),
(18, 'my-account', 1),
(19, 'order-follow', 1),
(20, 'order-slip', 1),
(21, 'order', 1),
(22, 'search', 1),
(23, 'stores', 1),
(24, 'order-opc', 1),
(25, 'guest-tracking', 1),
(26, 'order-confirmation', 1),
(27, 'product', 0),
(28, 'category', 0),
(29, 'cms', 0),
(30, 'module-cheque-payment', 0),
(31, 'module-cheque-validation', 0),
(32, 'module-bankwire-validation', 0),
(33, 'module-bankwire-payment', 0),
(34, 'module-cashondelivery-validation', 0),
(35, 'products-comparison', 1),
(36, 'module-blocknewsletter-verification', 1),
(37, 'module-cronjobs-callback', 1),
(44, 'module-blockwishlist-mywishlist', 1),
(45, 'module-blockwishlist-view', 1),
(46, 'layoutmaker', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_meta_lang`
--

CREATE TABLE `ps_meta_lang` (
  `id_meta` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `url_rewrite` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_meta_lang`
--

INSERT INTO `ps_meta_lang` (`id_meta`, `id_shop`, `id_lang`, `title`, `description`, `keywords`, `url_rewrite`) VALUES
(1, 1, 1, '404 error', 'This page cannot be found', '', 'page-not-found'),
(1, 1, 2, 'Erreur 404', 'Impossible de trouver la page', '', 'page-introuvable'),
(1, 1, 3, '404 error', 'This page cannot be found', '', 'page-not-found'),
(1, 1, 4, '404 error', 'This page cannot be found', '', 'page-not-found'),
(1, 1, 5, '404 error', 'This page cannot be found', '', 'page-not-found'),
(2, 1, 1, 'Best sales', 'Our best sales', '', 'best-sales'),
(2, 1, 2, 'Meilleures ventes', 'Nos meilleures ventes', '', 'meilleures-ventes'),
(2, 1, 3, 'Best sales', 'Our best sales', '', 'best-sales'),
(2, 1, 4, 'Best sales', 'Our best sales', '', 'best-sales'),
(2, 1, 5, 'Best sales', 'Our best sales', '', 'best-sales'),
(3, 1, 1, 'Contact us', 'Use our form to contact us', '', 'contact-us'),
(3, 1, 2, 'Nous contacter', 'Utiliser le formulaire pour nous contacter', '', 'nous-contacter'),
(3, 1, 3, 'Contact us', 'Use our form to contact us', '', 'contact-us'),
(3, 1, 4, 'Contact us', 'Use our form to contact us', '', 'contact-us'),
(3, 1, 5, 'Contact us', 'Use our form to contact us', '', 'contact-us'),
(4, 1, 1, '', 'Shop powered by PrestaShop', '', ''),
(4, 1, 2, '', 'Boutique propulsée par PrestaShop', '', ''),
(4, 1, 3, '', 'Shop powered by PrestaShop', '', ''),
(4, 1, 4, '', 'Shop powered by PrestaShop', '', ''),
(4, 1, 5, '', 'Shop powered by PrestaShop', '', ''),
(5, 1, 1, 'Manufacturers', 'Manufacturers list', '', 'manufacturers'),
(5, 1, 2, 'Fabricants', 'Liste des fabricants', '', 'fabricants'),
(5, 1, 3, 'Manufacturers', 'Manufacturers list', '', 'manufacturers'),
(5, 1, 4, 'Manufacturers', 'Manufacturers list', '', 'manufacturers'),
(5, 1, 5, 'Manufacturers', 'Manufacturers list', '', 'manufacturers'),
(6, 1, 1, 'New products', 'Our new products', '', 'new-products'),
(6, 1, 2, 'Nouveaux produits', 'Nos nouveaux produits', '', 'nouveaux-produits'),
(6, 1, 3, 'New products', 'Our new products', '', 'new-products'),
(6, 1, 4, 'New products', 'Our new products', '', 'new-products'),
(6, 1, 5, 'New products', 'Our new products', '', 'new-products'),
(7, 1, 1, 'Forgot your password', 'Enter the e-mail address you use to sign in to receive an e-mail with a new password', '', 'password-recovery'),
(7, 1, 2, 'Mot de passe oublié', 'Entrez l\'adresse e-mail que vous utilisez pour vous connecter afin de recevoir un e-mail avec un nouveau mot de passe', '', 'recuperation-mot-de-passe'),
(7, 1, 3, 'Forgot your password', 'Enter the e-mail address you use to sign in to receive an e-mail with a new password', '', 'password-recovery'),
(7, 1, 4, 'Forgot your password', 'Enter the e-mail address you use to sign in to receive an e-mail with a new password', '', 'password-recovery'),
(7, 1, 5, 'Forgot your password', 'Enter the e-mail address you use to sign in to receive an e-mail with a new password', '', 'password-recovery'),
(8, 1, 1, 'Prices drop', 'Our special products', '', 'prices-drop'),
(8, 1, 2, 'Promotions', 'Nos promotions', '', 'promotions'),
(8, 1, 3, 'Prices drop', 'Our special products', '', 'prices-drop'),
(8, 1, 4, 'Prices drop', 'Our special products', '', 'prices-drop'),
(8, 1, 5, 'Prices drop', 'Our special products', '', 'prices-drop'),
(9, 1, 1, 'Sitemap', 'Lost ? Find what your are looking for', '', 'sitemap'),
(9, 1, 2, 'Plan du site', 'Vous êtes perdu ? Trouvez ce que vous cherchez', '', 'plan-site'),
(9, 1, 3, 'Sitemap', 'Lost ? Find what your are looking for', '', 'sitemap'),
(9, 1, 4, 'Sitemap', 'Lost ? Find what your are looking for', '', 'sitemap'),
(9, 1, 5, 'Sitemap', 'Lost ? Find what your are looking for', '', 'sitemap'),
(10, 1, 1, 'Suppliers', 'Suppliers list', '', 'supplier'),
(10, 1, 2, 'Fournisseurs', 'Liste des fournisseurs', '', 'fournisseur'),
(10, 1, 3, 'Suppliers', 'Suppliers list', '', 'supplier'),
(10, 1, 4, 'Suppliers', 'Suppliers list', '', 'supplier'),
(10, 1, 5, 'Suppliers', 'Suppliers list', '', 'supplier'),
(11, 1, 1, 'Address', '', '', 'address'),
(11, 1, 2, 'Adresse', '', '', 'adresse'),
(11, 1, 3, 'Address', '', '', 'address'),
(11, 1, 4, 'Address', '', '', 'address'),
(11, 1, 5, 'Address', '', '', 'address'),
(12, 1, 1, 'Addresses', '', '', 'addresses'),
(12, 1, 2, 'Adresses', '', '', 'adresses'),
(12, 1, 3, 'Addresses', '', '', 'addresses'),
(12, 1, 4, 'Addresses', '', '', 'addresses'),
(12, 1, 5, 'Addresses', '', '', 'addresses'),
(13, 1, 1, 'Login', '', '', 'login'),
(13, 1, 2, 'Connexion', '', '', 'connexion'),
(13, 1, 3, 'Login', '', '', 'login'),
(13, 1, 4, 'Login', '', '', 'login'),
(13, 1, 5, 'Login', '', '', 'login'),
(14, 1, 1, 'Cart', '', '', 'cart'),
(14, 1, 2, 'Panier', '', '', 'panier'),
(14, 1, 3, 'Cart', '', '', 'cart'),
(14, 1, 4, 'Cart', '', '', 'cart'),
(14, 1, 5, 'Cart', '', '', 'cart'),
(15, 1, 1, 'Discount', '', '', 'discount'),
(15, 1, 2, 'Réduction', '', '', 'reduction'),
(15, 1, 3, 'Discount', '', '', 'discount'),
(15, 1, 4, 'Discount', '', '', 'discount'),
(15, 1, 5, 'Discount', '', '', 'discount'),
(16, 1, 1, 'Order history', '', '', 'order-history'),
(16, 1, 2, 'Historique des commandes', '', '', 'historique-commandes'),
(16, 1, 3, 'Order history', '', '', 'order-history'),
(16, 1, 4, 'Order history', '', '', 'order-history'),
(16, 1, 5, 'Order history', '', '', 'order-history'),
(17, 1, 1, 'Identity', '', '', 'identity'),
(17, 1, 2, 'Identité', '', '', 'identite'),
(17, 1, 3, 'Identity', '', '', 'identity'),
(17, 1, 4, 'Identity', '', '', 'identity'),
(17, 1, 5, 'Identity', '', '', 'identity'),
(18, 1, 1, 'My account', '', '', 'my-account'),
(18, 1, 2, 'Mon compte', '', '', 'mon-compte'),
(18, 1, 3, 'My account', '', '', 'my-account'),
(18, 1, 4, 'My account', '', '', 'my-account'),
(18, 1, 5, 'My account', '', '', 'my-account'),
(19, 1, 1, 'Order follow', '', '', 'order-follow'),
(19, 1, 2, 'Suivi de commande', '', '', 'suivi-commande'),
(19, 1, 3, 'Order follow', '', '', 'order-follow'),
(19, 1, 4, 'Order follow', '', '', 'order-follow'),
(19, 1, 5, 'Order follow', '', '', 'order-follow'),
(20, 1, 1, 'Credit slip', '', '', 'credit-slip'),
(20, 1, 2, 'Avoirs', '', '', 'avoirs'),
(20, 1, 3, 'Credit slip', '', '', 'credit-slip'),
(20, 1, 4, 'Credit slip', '', '', 'credit-slip'),
(20, 1, 5, 'Credit slip', '', '', 'credit-slip'),
(21, 1, 1, 'Order', '', '', 'order'),
(21, 1, 2, 'Commande', '', '', 'commande'),
(21, 1, 3, 'Order', '', '', 'order'),
(21, 1, 4, 'Order', '', '', 'order'),
(21, 1, 5, 'Order', '', '', 'order'),
(22, 1, 1, 'Search', '', '', 'search'),
(22, 1, 2, 'Recherche', '', '', 'recherche'),
(22, 1, 3, 'Search', '', '', 'search'),
(22, 1, 4, 'Search', '', '', 'search'),
(22, 1, 5, 'Search', '', '', 'search'),
(23, 1, 1, 'Stores', '', '', 'stores'),
(23, 1, 2, 'Magasins', '', '', 'magasins'),
(23, 1, 3, 'Stores', '', '', 'stores'),
(23, 1, 4, 'Stores', '', '', 'stores'),
(23, 1, 5, 'Stores', '', '', 'stores'),
(24, 1, 1, 'Order', '', '', 'quick-order'),
(24, 1, 2, 'Commande', '', '', 'commande-rapide'),
(24, 1, 3, 'Order', '', '', 'quick-order'),
(24, 1, 4, 'Order', '', '', 'quick-order'),
(24, 1, 5, 'Order', '', '', 'quick-order'),
(25, 1, 1, 'Guest tracking', '', '', 'guest-tracking'),
(25, 1, 2, 'Suivi de commande invité', '', '', 'suivi-commande-invite'),
(25, 1, 3, 'Guest tracking', '', '', 'guest-tracking'),
(25, 1, 4, 'Guest tracking', '', '', 'guest-tracking'),
(25, 1, 5, 'Guest tracking', '', '', 'guest-tracking'),
(26, 1, 1, 'Order confirmation', '', '', 'order-confirmation'),
(26, 1, 2, 'Confirmation de commande', '', '', 'confirmation-commande'),
(26, 1, 3, 'Order confirmation', '', '', 'order-confirmation'),
(26, 1, 4, 'Order confirmation', '', '', 'order-confirmation'),
(26, 1, 5, 'Order confirmation', '', '', 'order-confirmation'),
(27, 0, 1, NULL, NULL, NULL, ''),
(27, 0, 2, NULL, NULL, NULL, ''),
(27, 0, 3, NULL, NULL, NULL, ''),
(27, 0, 4, NULL, NULL, NULL, ''),
(27, 0, 5, NULL, NULL, NULL, ''),
(28, 0, 1, NULL, NULL, NULL, ''),
(28, 0, 2, NULL, NULL, NULL, ''),
(28, 0, 3, NULL, NULL, NULL, ''),
(28, 0, 4, NULL, NULL, NULL, ''),
(28, 0, 5, NULL, NULL, NULL, ''),
(29, 0, 1, NULL, NULL, NULL, ''),
(29, 0, 2, NULL, NULL, NULL, ''),
(29, 0, 3, NULL, NULL, NULL, ''),
(29, 0, 4, NULL, NULL, NULL, ''),
(29, 0, 5, NULL, NULL, NULL, ''),
(30, 0, 1, NULL, NULL, NULL, ''),
(30, 0, 2, NULL, NULL, NULL, ''),
(30, 0, 3, NULL, NULL, NULL, ''),
(30, 0, 4, NULL, NULL, NULL, ''),
(30, 0, 5, NULL, NULL, NULL, ''),
(31, 0, 1, NULL, NULL, NULL, ''),
(31, 0, 2, NULL, NULL, NULL, ''),
(31, 0, 3, NULL, NULL, NULL, ''),
(31, 0, 4, NULL, NULL, NULL, ''),
(31, 0, 5, NULL, NULL, NULL, ''),
(32, 0, 1, NULL, NULL, NULL, ''),
(32, 0, 2, NULL, NULL, NULL, ''),
(32, 0, 3, NULL, NULL, NULL, ''),
(32, 0, 4, NULL, NULL, NULL, ''),
(32, 0, 5, NULL, NULL, NULL, ''),
(33, 0, 1, NULL, NULL, NULL, ''),
(33, 0, 2, NULL, NULL, NULL, ''),
(33, 0, 3, NULL, NULL, NULL, ''),
(33, 0, 4, NULL, NULL, NULL, ''),
(33, 0, 5, NULL, NULL, NULL, ''),
(34, 0, 1, NULL, NULL, NULL, ''),
(34, 0, 2, NULL, NULL, NULL, ''),
(34, 0, 3, NULL, NULL, NULL, ''),
(34, 0, 4, NULL, NULL, NULL, ''),
(34, 0, 5, NULL, NULL, NULL, ''),
(35, 1, 1, 'Products Comparison', '', '', 'products-comparison'),
(35, 1, 2, 'Comparaison de produits', '', '', 'comparaison-produits'),
(35, 1, 3, 'Products Comparison', '', '', 'products-comparison'),
(35, 1, 4, 'Products Comparison', '', '', 'products-comparison'),
(35, 1, 5, 'Products Comparison', '', '', 'products-comparison'),
(36, 1, 1, '', '', '', ''),
(36, 1, 2, '', '', '', ''),
(36, 1, 3, '', '', '', ''),
(36, 1, 4, '', '', '', ''),
(36, 1, 5, '', '', '', ''),
(37, 1, 1, '', '', '', ''),
(37, 1, 2, '', '', '', ''),
(37, 1, 3, '', '', '', ''),
(37, 1, 4, '', '', '', ''),
(37, 1, 5, '', '', '', ''),
(44, 1, 1, '', '', '', ''),
(44, 1, 2, '', '', '', ''),
(44, 1, 3, '', '', '', ''),
(44, 1, 4, '', '', '', ''),
(44, 1, 5, '', '', '', ''),
(45, 1, 1, '', '', '', ''),
(45, 1, 2, '', '', '', ''),
(45, 1, 3, '', '', '', ''),
(45, 1, 4, '', '', '', ''),
(45, 1, 5, '', '', '', ''),
(46, 1, 1, 'Layout maker', '', '', 'layout-maker'),
(46, 1, 2, '', '', '', 'layout-maker'),
(46, 1, 3, '', '', '', 'layout-maker'),
(46, 1, 4, '', '', '', 'layout-maker'),
(46, 1, 5, '', '', '', 'layout-maker');

-- --------------------------------------------------------

--
-- Structure de la table `ps_module`
--

CREATE TABLE `ps_module` (
  `id_module` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `version` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_module`
--

INSERT INTO `ps_module` (`id_module`, `name`, `active`, `version`) VALUES
(1, 'socialsharing', 1, '1.4.2'),
(2, 'blockbanner', 1, '1.4.1'),
(3, 'bankwire', 1, '1.1.2'),
(4, 'blockbestsellers', 1, '1.8.1'),
(5, 'blockcart', 1, '1.6.1'),
(6, 'blocksocial', 1, '1.2.2'),
(7, 'blockcategories', 1, '2.9.4'),
(8, 'blockcurrencies', 1, '0.4.1'),
(9, 'blockfacebook', 1, '1.4.1'),
(10, 'blocklanguages', 1, '1.5.1'),
(11, 'blocklayered', 1, '2.2.0'),
(12, 'blockcms', 1, '2.1.2'),
(13, 'blockcmsinfo', 1, '1.6.1'),
(14, 'blockcontact', 1, '1.4.1'),
(15, 'blockcontactinfos', 1, '1.2.1'),
(16, 'blockmanufacturer', 1, '1.4.1'),
(17, 'blockmyaccount', 1, '1.4.1'),
(18, 'blockmyaccountfooter', 1, '1.6.1'),
(19, 'blocknewproducts', 1, '1.10.1'),
(20, 'blocknewsletter', 1, '2.3.2'),
(21, 'blockpaymentlogo', 1, '0.4.1'),
(22, 'blocksearch', 1, '1.7.1'),
(23, 'blockspecials', 1, '1.3.1'),
(24, 'blockstore', 1, '1.3.1'),
(25, 'blocksupplier', 1, '1.2.1'),
(26, 'blocktags', 1, '1.3.1'),
(27, 'blocktopmenu', 1, '2.2.4'),
(28, 'blockuserinfo', 1, '0.4.0'),
(29, 'blockviewed', 1, '1.3.1'),
(30, 'cheque', 1, '2.7.2'),
(31, 'dashactivity', 1, '0.5.0'),
(32, 'dashtrends', 1, '0.8.1'),
(33, 'dashgoals', 1, '0.7.0'),
(34, 'dashproducts', 1, '0.3.5'),
(35, 'graphnvd3', 1, '1.5.0'),
(36, 'gridhtml', 1, '1.3.0'),
(37, 'homeslider', 1, '1.6.1'),
(38, 'homefeatured', 1, '1.8.1'),
(39, 'productpaymentlogos', 1, '1.4.1'),
(40, 'pagesnotfound', 1, '1.5.0'),
(41, 'sekeywords', 1, '1.4.0'),
(42, 'statsbestcategories', 1, '1.5.0'),
(43, 'statsbestcustomers', 1, '1.5.0'),
(44, 'statsbestproducts', 1, '1.5.0'),
(45, 'statsbestsuppliers', 1, '1.4.0'),
(46, 'statsbestvouchers', 1, '1.5.0'),
(47, 'statscarrier', 1, '1.4.0'),
(48, 'statscatalog', 1, '1.3.0'),
(49, 'statscheckup', 1, '1.4.0'),
(50, 'statsdata', 1, '1.5.0'),
(51, 'statsequipment', 1, '1.3.0'),
(52, 'statsforecast', 1, '1.4.0'),
(53, 'statslive', 1, '1.3.0'),
(54, 'statsnewsletter', 1, '1.4.0'),
(55, 'statsorigin', 1, '1.4.0'),
(56, 'statspersonalinfos', 1, '1.4.0'),
(57, 'statsproduct', 1, '1.4.0'),
(58, 'statsregistrations', 1, '1.4.0'),
(59, 'statssales', 1, '1.3.0'),
(60, 'statssearch', 1, '1.4.0'),
(61, 'statsstock', 1, '1.5.0'),
(62, 'statsvisits', 1, '1.6.0'),
(63, 'themeconfigurator', 1, '2.1.2'),
(64, 'gamification', 1, '1.12.0'),
(65, 'cronjobs', 1, '1.3.3'),
(79, 'tmproductvideos', 1, '1.0.0'),
(80, 'tmheaderaccount', 1, '1.0.0'),
(81, 'tmsocialfeeds', 1, '1.0'),
(82, 'tmproductlistgallery', 1, '1.0.0'),
(83, 'sampledatainstall', 1, '2.2.0'),
(84, 'sendtoafriend', 1, '1.9.0'),
(85, 'blockpermanentlinks', 1, '0.3.1'),
(86, 'crossselling', 1, '1.1.2'),
(87, 'productscategory', 1, '1.8.1'),
(91, 'featuredcategory', 1, '1.6'),
(92, 'blockwishlist', 1, '1.3.2');

-- --------------------------------------------------------

--
-- Structure de la table `ps_modules_perfs`
--

CREATE TABLE `ps_modules_perfs` (
  `id_modules_perfs` int(11) UNSIGNED NOT NULL,
  `session` int(11) UNSIGNED NOT NULL,
  `module` varchar(62) NOT NULL,
  `method` varchar(126) NOT NULL,
  `time_start` double UNSIGNED NOT NULL,
  `time_end` double UNSIGNED NOT NULL,
  `memory_start` int(10) UNSIGNED NOT NULL,
  `memory_end` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_module_access`
--

CREATE TABLE `ps_module_access` (
  `id_profile` int(10) UNSIGNED NOT NULL,
  `id_module` int(10) UNSIGNED NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `configure` tinyint(1) NOT NULL DEFAULT '0',
  `uninstall` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_module_access`
--

INSERT INTO `ps_module_access` (`id_profile`, `id_module`, `view`, `configure`, `uninstall`) VALUES
(2, 1, 1, 1, 1),
(2, 2, 1, 1, 1),
(2, 3, 1, 1, 1),
(2, 4, 1, 1, 1),
(2, 5, 1, 1, 1),
(2, 6, 1, 1, 1),
(2, 7, 1, 1, 1),
(2, 8, 1, 1, 1),
(2, 9, 1, 1, 1),
(2, 10, 1, 1, 1),
(2, 11, 1, 1, 1),
(2, 12, 1, 1, 1),
(2, 13, 1, 1, 1),
(2, 14, 1, 1, 1),
(2, 15, 1, 1, 1),
(2, 16, 1, 1, 1),
(2, 17, 1, 1, 1),
(2, 18, 1, 1, 1),
(2, 19, 1, 1, 1),
(2, 20, 1, 1, 1),
(2, 21, 1, 1, 1),
(2, 22, 1, 1, 1),
(2, 23, 1, 1, 1),
(2, 24, 1, 1, 1),
(2, 25, 1, 1, 1),
(2, 26, 1, 1, 1),
(2, 27, 1, 1, 1),
(2, 28, 1, 1, 1),
(2, 29, 1, 1, 1),
(2, 30, 1, 1, 1),
(2, 31, 1, 1, 1),
(2, 32, 1, 1, 1),
(2, 33, 1, 1, 1),
(2, 34, 1, 1, 1),
(2, 35, 1, 1, 1),
(2, 36, 1, 1, 1),
(2, 37, 1, 1, 1),
(2, 38, 1, 1, 1),
(2, 39, 1, 1, 1),
(2, 40, 1, 1, 1),
(2, 41, 1, 1, 1),
(2, 42, 1, 1, 1),
(2, 43, 1, 1, 1),
(2, 44, 1, 1, 1),
(2, 45, 1, 1, 1),
(2, 46, 1, 1, 1),
(2, 47, 1, 1, 1),
(2, 48, 1, 1, 1),
(2, 49, 1, 1, 1),
(2, 50, 1, 1, 1),
(2, 51, 1, 1, 1),
(2, 52, 1, 1, 1),
(2, 53, 1, 1, 1),
(2, 54, 1, 1, 1),
(2, 55, 1, 1, 1),
(2, 56, 1, 1, 1),
(2, 57, 1, 1, 1),
(2, 58, 1, 1, 1),
(2, 59, 1, 1, 1),
(2, 60, 1, 1, 1),
(2, 61, 1, 1, 1),
(2, 62, 1, 1, 1),
(2, 63, 1, 1, 1),
(2, 64, 1, 1, 1),
(2, 65, 1, 1, 1),
(2, 79, 1, 1, 1),
(2, 80, 1, 1, 1),
(2, 81, 1, 1, 1),
(2, 82, 1, 1, 1),
(2, 83, 1, 1, 1),
(2, 84, 1, 1, 1),
(2, 85, 1, 1, 1),
(2, 86, 1, 1, 1),
(2, 87, 1, 1, 1),
(2, 91, 1, 1, 1),
(2, 92, 1, 1, 1),
(3, 1, 1, 0, 0),
(3, 2, 1, 0, 0),
(3, 3, 1, 0, 0),
(3, 4, 1, 0, 0),
(3, 5, 1, 0, 0),
(3, 6, 1, 0, 0),
(3, 7, 1, 0, 0),
(3, 8, 1, 0, 0),
(3, 9, 1, 0, 0),
(3, 10, 1, 0, 0),
(3, 11, 1, 0, 0),
(3, 12, 1, 0, 0),
(3, 13, 1, 0, 0),
(3, 14, 1, 0, 0),
(3, 15, 1, 0, 0),
(3, 16, 1, 0, 0),
(3, 17, 1, 0, 0),
(3, 18, 1, 0, 0),
(3, 19, 1, 0, 0),
(3, 20, 1, 0, 0),
(3, 21, 1, 0, 0),
(3, 22, 1, 0, 0),
(3, 23, 1, 0, 0),
(3, 24, 1, 0, 0),
(3, 25, 1, 0, 0),
(3, 26, 1, 0, 0),
(3, 27, 1, 0, 0),
(3, 28, 1, 0, 0),
(3, 29, 1, 0, 0),
(3, 30, 1, 0, 0),
(3, 31, 1, 0, 0),
(3, 32, 1, 0, 0),
(3, 33, 1, 0, 0),
(3, 34, 1, 0, 0),
(3, 35, 1, 0, 0),
(3, 36, 1, 0, 0),
(3, 37, 1, 0, 0),
(3, 38, 1, 0, 0),
(3, 39, 1, 0, 0),
(3, 40, 1, 0, 0),
(3, 41, 1, 0, 0),
(3, 42, 1, 0, 0),
(3, 43, 1, 0, 0),
(3, 44, 1, 0, 0),
(3, 45, 1, 0, 0),
(3, 46, 1, 0, 0),
(3, 47, 1, 0, 0),
(3, 48, 1, 0, 0),
(3, 49, 1, 0, 0),
(3, 50, 1, 0, 0),
(3, 51, 1, 0, 0),
(3, 52, 1, 0, 0),
(3, 53, 1, 0, 0),
(3, 54, 1, 0, 0),
(3, 55, 1, 0, 0),
(3, 56, 1, 0, 0),
(3, 57, 1, 0, 0),
(3, 58, 1, 0, 0),
(3, 59, 1, 0, 0),
(3, 60, 1, 0, 0),
(3, 61, 1, 0, 0),
(3, 62, 1, 0, 0),
(3, 63, 1, 0, 0),
(3, 64, 1, 0, 0),
(3, 65, 1, 0, 0),
(3, 79, 1, 0, 0),
(3, 80, 1, 0, 0),
(3, 81, 1, 0, 0),
(3, 82, 1, 0, 0),
(3, 83, 1, 0, 0),
(3, 84, 1, 0, 0),
(3, 85, 1, 0, 0),
(3, 86, 1, 0, 0),
(3, 87, 1, 0, 0),
(3, 91, 1, 0, 0),
(3, 92, 1, 0, 0),
(4, 1, 1, 1, 1),
(4, 2, 1, 1, 1),
(4, 3, 1, 1, 1),
(4, 4, 1, 1, 1),
(4, 5, 1, 1, 1),
(4, 6, 1, 1, 1),
(4, 7, 1, 1, 1),
(4, 8, 1, 1, 1),
(4, 9, 1, 1, 1),
(4, 10, 1, 1, 1),
(4, 11, 1, 1, 1),
(4, 12, 1, 1, 1),
(4, 13, 1, 1, 1),
(4, 14, 1, 1, 1),
(4, 15, 1, 1, 1),
(4, 16, 1, 1, 1),
(4, 17, 1, 1, 1),
(4, 18, 1, 1, 1),
(4, 19, 1, 1, 1),
(4, 20, 1, 1, 1),
(4, 21, 1, 1, 1),
(4, 22, 1, 1, 1),
(4, 23, 1, 1, 1),
(4, 24, 1, 1, 1),
(4, 25, 1, 1, 1),
(4, 26, 1, 1, 1),
(4, 27, 1, 1, 1),
(4, 28, 1, 1, 1),
(4, 29, 1, 1, 1),
(4, 30, 1, 1, 1),
(4, 31, 1, 1, 1),
(4, 32, 1, 1, 1),
(4, 33, 1, 1, 1),
(4, 34, 1, 1, 1),
(4, 35, 1, 1, 1),
(4, 36, 1, 1, 1),
(4, 37, 1, 1, 1),
(4, 38, 1, 1, 1),
(4, 39, 1, 1, 1),
(4, 40, 1, 1, 1),
(4, 41, 1, 1, 1),
(4, 42, 1, 1, 1),
(4, 43, 1, 1, 1),
(4, 44, 1, 1, 1),
(4, 45, 1, 1, 1),
(4, 46, 1, 1, 1),
(4, 47, 1, 1, 1),
(4, 48, 1, 1, 1),
(4, 49, 1, 1, 1),
(4, 50, 1, 1, 1),
(4, 51, 1, 1, 1),
(4, 52, 1, 1, 1),
(4, 53, 1, 1, 1),
(4, 54, 1, 1, 1),
(4, 55, 1, 1, 1),
(4, 56, 1, 1, 1),
(4, 57, 1, 1, 1),
(4, 58, 1, 1, 1),
(4, 59, 1, 1, 1),
(4, 60, 1, 1, 1),
(4, 61, 1, 1, 1),
(4, 62, 1, 1, 1),
(4, 63, 1, 1, 1),
(4, 64, 1, 1, 1),
(4, 65, 1, 1, 1),
(4, 79, 1, 1, 1),
(4, 80, 1, 1, 1),
(4, 81, 1, 1, 1),
(4, 82, 1, 1, 1),
(4, 83, 1, 1, 1),
(4, 84, 1, 1, 1),
(4, 85, 1, 1, 1),
(4, 86, 1, 1, 1),
(4, 87, 1, 1, 1),
(4, 91, 1, 1, 1),
(4, 92, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_module_country`
--

CREATE TABLE `ps_module_country` (
  `id_module` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_country` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_module_country`
--

INSERT INTO `ps_module_country` (`id_module`, `id_shop`, `id_country`) VALUES
(3, 1, 1),
(3, 1, 2),
(3, 1, 3),
(3, 1, 4),
(3, 1, 5),
(3, 1, 6),
(3, 1, 7),
(3, 1, 8),
(3, 1, 9),
(3, 1, 10),
(3, 1, 11),
(3, 1, 12),
(3, 1, 13),
(3, 1, 14),
(3, 1, 15),
(3, 1, 16),
(3, 1, 17),
(3, 1, 18),
(3, 1, 19),
(3, 1, 20),
(3, 1, 21),
(3, 1, 22),
(3, 1, 23),
(3, 1, 24),
(3, 1, 25),
(3, 1, 26),
(3, 1, 27),
(3, 1, 28),
(3, 1, 29),
(3, 1, 30),
(3, 1, 31),
(3, 1, 32),
(3, 1, 33),
(3, 1, 34),
(3, 1, 35),
(3, 1, 36),
(3, 1, 37),
(3, 1, 38),
(3, 1, 39),
(3, 1, 40),
(3, 1, 41),
(3, 1, 42),
(3, 1, 43),
(3, 1, 44),
(3, 1, 45),
(3, 1, 46),
(3, 1, 47),
(3, 1, 48),
(3, 1, 49),
(3, 1, 50),
(3, 1, 51),
(3, 1, 52),
(3, 1, 53),
(3, 1, 54),
(3, 1, 55),
(3, 1, 56),
(3, 1, 57),
(3, 1, 58),
(3, 1, 59),
(3, 1, 60),
(3, 1, 61),
(3, 1, 62),
(3, 1, 63),
(3, 1, 64),
(3, 1, 65),
(3, 1, 66),
(3, 1, 67),
(3, 1, 68),
(3, 1, 69),
(3, 1, 70),
(3, 1, 71),
(3, 1, 72),
(3, 1, 73),
(3, 1, 74),
(3, 1, 75),
(3, 1, 76),
(3, 1, 77),
(3, 1, 78),
(3, 1, 79),
(3, 1, 80),
(3, 1, 81),
(3, 1, 82),
(3, 1, 83),
(3, 1, 84),
(3, 1, 85),
(3, 1, 86),
(3, 1, 87),
(3, 1, 88),
(3, 1, 89),
(3, 1, 90),
(3, 1, 91),
(3, 1, 92),
(3, 1, 93),
(3, 1, 94),
(3, 1, 95),
(3, 1, 96),
(3, 1, 97),
(3, 1, 98),
(3, 1, 99),
(3, 1, 100),
(3, 1, 101),
(3, 1, 102),
(3, 1, 103),
(3, 1, 104),
(3, 1, 105),
(3, 1, 106),
(3, 1, 107),
(3, 1, 108),
(3, 1, 109),
(3, 1, 110),
(3, 1, 111),
(3, 1, 112),
(3, 1, 113),
(3, 1, 114),
(3, 1, 115),
(3, 1, 116),
(3, 1, 117),
(3, 1, 118),
(3, 1, 119),
(3, 1, 120),
(3, 1, 121),
(3, 1, 122),
(3, 1, 123),
(3, 1, 124),
(3, 1, 125),
(3, 1, 126),
(3, 1, 127),
(3, 1, 128),
(3, 1, 129),
(3, 1, 130),
(3, 1, 131),
(3, 1, 132),
(3, 1, 133),
(3, 1, 134),
(3, 1, 135),
(3, 1, 136),
(3, 1, 137),
(3, 1, 138),
(3, 1, 139),
(3, 1, 140),
(3, 1, 141),
(3, 1, 142),
(3, 1, 143),
(3, 1, 144),
(3, 1, 145),
(3, 1, 146),
(3, 1, 147),
(3, 1, 148),
(3, 1, 149),
(3, 1, 150),
(3, 1, 151),
(3, 1, 152),
(3, 1, 153),
(3, 1, 154),
(3, 1, 155),
(3, 1, 156),
(3, 1, 157),
(3, 1, 158),
(3, 1, 159),
(3, 1, 160),
(3, 1, 161),
(3, 1, 162),
(3, 1, 163),
(3, 1, 164),
(3, 1, 165),
(3, 1, 166),
(3, 1, 167),
(3, 1, 168),
(3, 1, 169),
(3, 1, 170),
(3, 1, 171),
(3, 1, 172),
(3, 1, 173),
(3, 1, 174),
(3, 1, 175),
(3, 1, 176),
(3, 1, 177),
(3, 1, 178),
(3, 1, 179),
(3, 1, 180),
(3, 1, 181),
(3, 1, 182),
(3, 1, 183),
(3, 1, 184),
(3, 1, 185),
(3, 1, 186),
(3, 1, 187),
(3, 1, 188),
(3, 1, 189),
(3, 1, 190),
(3, 1, 191),
(3, 1, 192),
(3, 1, 193),
(3, 1, 194),
(3, 1, 195),
(3, 1, 196),
(3, 1, 197),
(3, 1, 198),
(3, 1, 199),
(3, 1, 200),
(3, 1, 201),
(3, 1, 202),
(3, 1, 203),
(3, 1, 204),
(3, 1, 205),
(3, 1, 206),
(3, 1, 207),
(3, 1, 208),
(3, 1, 209),
(3, 1, 210),
(3, 1, 211),
(3, 1, 212),
(3, 1, 213),
(3, 1, 214),
(3, 1, 215),
(3, 1, 216),
(3, 1, 217),
(3, 1, 218),
(3, 1, 219),
(3, 1, 220),
(3, 1, 221),
(3, 1, 222),
(3, 1, 223),
(3, 1, 224),
(3, 1, 225),
(3, 1, 226),
(3, 1, 227),
(3, 1, 228),
(3, 1, 229),
(3, 1, 230),
(3, 1, 231),
(3, 1, 232),
(3, 1, 233),
(3, 1, 234),
(3, 1, 235),
(3, 1, 236),
(3, 1, 237),
(3, 1, 238),
(3, 1, 239),
(3, 1, 240),
(3, 1, 241),
(3, 1, 242),
(3, 1, 243),
(3, 1, 244),
(30, 1, 1),
(30, 1, 2),
(30, 1, 3),
(30, 1, 4),
(30, 1, 5),
(30, 1, 6),
(30, 1, 7),
(30, 1, 8),
(30, 1, 9),
(30, 1, 10),
(30, 1, 11),
(30, 1, 12),
(30, 1, 13),
(30, 1, 14),
(30, 1, 15),
(30, 1, 16),
(30, 1, 17),
(30, 1, 18),
(30, 1, 19),
(30, 1, 20),
(30, 1, 21),
(30, 1, 22),
(30, 1, 23),
(30, 1, 24),
(30, 1, 25),
(30, 1, 26),
(30, 1, 27),
(30, 1, 28),
(30, 1, 29),
(30, 1, 30),
(30, 1, 31),
(30, 1, 32),
(30, 1, 33),
(30, 1, 34),
(30, 1, 35),
(30, 1, 36),
(30, 1, 37),
(30, 1, 38),
(30, 1, 39),
(30, 1, 40),
(30, 1, 41),
(30, 1, 42),
(30, 1, 43),
(30, 1, 44),
(30, 1, 45),
(30, 1, 46),
(30, 1, 47),
(30, 1, 48),
(30, 1, 49),
(30, 1, 50),
(30, 1, 51),
(30, 1, 52),
(30, 1, 53),
(30, 1, 54),
(30, 1, 55),
(30, 1, 56),
(30, 1, 57),
(30, 1, 58),
(30, 1, 59),
(30, 1, 60),
(30, 1, 61),
(30, 1, 62),
(30, 1, 63),
(30, 1, 64),
(30, 1, 65),
(30, 1, 66),
(30, 1, 67),
(30, 1, 68),
(30, 1, 69),
(30, 1, 70),
(30, 1, 71),
(30, 1, 72),
(30, 1, 73),
(30, 1, 74),
(30, 1, 75),
(30, 1, 76),
(30, 1, 77),
(30, 1, 78),
(30, 1, 79),
(30, 1, 80),
(30, 1, 81),
(30, 1, 82),
(30, 1, 83),
(30, 1, 84),
(30, 1, 85),
(30, 1, 86),
(30, 1, 87),
(30, 1, 88),
(30, 1, 89),
(30, 1, 90),
(30, 1, 91),
(30, 1, 92),
(30, 1, 93),
(30, 1, 94),
(30, 1, 95),
(30, 1, 96),
(30, 1, 97),
(30, 1, 98),
(30, 1, 99),
(30, 1, 100),
(30, 1, 101),
(30, 1, 102),
(30, 1, 103),
(30, 1, 104),
(30, 1, 105),
(30, 1, 106),
(30, 1, 107),
(30, 1, 108),
(30, 1, 109),
(30, 1, 110),
(30, 1, 111),
(30, 1, 112),
(30, 1, 113),
(30, 1, 114),
(30, 1, 115),
(30, 1, 116),
(30, 1, 117),
(30, 1, 118),
(30, 1, 119),
(30, 1, 120),
(30, 1, 121),
(30, 1, 122),
(30, 1, 123),
(30, 1, 124),
(30, 1, 125),
(30, 1, 126),
(30, 1, 127),
(30, 1, 128),
(30, 1, 129),
(30, 1, 130),
(30, 1, 131),
(30, 1, 132),
(30, 1, 133),
(30, 1, 134),
(30, 1, 135),
(30, 1, 136),
(30, 1, 137),
(30, 1, 138),
(30, 1, 139),
(30, 1, 140),
(30, 1, 141),
(30, 1, 142),
(30, 1, 143),
(30, 1, 144),
(30, 1, 145),
(30, 1, 146),
(30, 1, 147),
(30, 1, 148),
(30, 1, 149),
(30, 1, 150),
(30, 1, 151),
(30, 1, 152),
(30, 1, 153),
(30, 1, 154),
(30, 1, 155),
(30, 1, 156),
(30, 1, 157),
(30, 1, 158),
(30, 1, 159),
(30, 1, 160),
(30, 1, 161),
(30, 1, 162),
(30, 1, 163),
(30, 1, 164),
(30, 1, 165),
(30, 1, 166),
(30, 1, 167),
(30, 1, 168),
(30, 1, 169),
(30, 1, 170),
(30, 1, 171),
(30, 1, 172),
(30, 1, 173),
(30, 1, 174),
(30, 1, 175),
(30, 1, 176),
(30, 1, 177),
(30, 1, 178),
(30, 1, 179),
(30, 1, 180),
(30, 1, 181),
(30, 1, 182),
(30, 1, 183),
(30, 1, 184),
(30, 1, 185),
(30, 1, 186),
(30, 1, 187),
(30, 1, 188),
(30, 1, 189),
(30, 1, 190),
(30, 1, 191),
(30, 1, 192),
(30, 1, 193),
(30, 1, 194),
(30, 1, 195),
(30, 1, 196),
(30, 1, 197),
(30, 1, 198),
(30, 1, 199),
(30, 1, 200),
(30, 1, 201),
(30, 1, 202),
(30, 1, 203),
(30, 1, 204),
(30, 1, 205),
(30, 1, 206),
(30, 1, 207),
(30, 1, 208),
(30, 1, 209),
(30, 1, 210),
(30, 1, 211),
(30, 1, 212),
(30, 1, 213),
(30, 1, 214),
(30, 1, 215),
(30, 1, 216),
(30, 1, 217),
(30, 1, 218),
(30, 1, 219),
(30, 1, 220),
(30, 1, 221),
(30, 1, 222),
(30, 1, 223),
(30, 1, 224),
(30, 1, 225),
(30, 1, 226),
(30, 1, 227),
(30, 1, 228),
(30, 1, 229),
(30, 1, 230),
(30, 1, 231),
(30, 1, 232),
(30, 1, 233),
(30, 1, 234),
(30, 1, 235),
(30, 1, 236),
(30, 1, 237),
(30, 1, 238),
(30, 1, 239),
(30, 1, 240),
(30, 1, 241),
(30, 1, 242),
(30, 1, 243),
(30, 1, 244);

-- --------------------------------------------------------

--
-- Structure de la table `ps_module_currency`
--

CREATE TABLE `ps_module_currency` (
  `id_module` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_currency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_module_currency`
--

INSERT INTO `ps_module_currency` (`id_module`, `id_shop`, `id_currency`) VALUES
(3, 1, 1),
(30, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_module_group`
--

CREATE TABLE `ps_module_group` (
  `id_module` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_group` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_module_group`
--

INSERT INTO `ps_module_group` (`id_module`, `id_shop`, `id_group`) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(2, 1, 1),
(2, 1, 2),
(2, 1, 3),
(3, 1, 1),
(3, 1, 2),
(3, 1, 3),
(4, 1, 1),
(4, 1, 2),
(4, 1, 3),
(5, 1, 1),
(5, 1, 2),
(5, 1, 3),
(6, 1, 1),
(6, 1, 2),
(6, 1, 3),
(7, 1, 1),
(7, 1, 2),
(7, 1, 3),
(8, 1, 1),
(8, 1, 2),
(8, 1, 3),
(9, 1, 1),
(9, 1, 2),
(9, 1, 3),
(10, 1, 1),
(10, 1, 2),
(10, 1, 3),
(11, 1, 1),
(11, 1, 2),
(11, 1, 3),
(12, 1, 1),
(12, 1, 2),
(12, 1, 3),
(13, 1, 1),
(13, 1, 2),
(13, 1, 3),
(14, 1, 1),
(14, 1, 2),
(14, 1, 3),
(15, 1, 1),
(15, 1, 2),
(15, 1, 3),
(16, 1, 1),
(16, 1, 2),
(16, 1, 3),
(17, 1, 1),
(17, 1, 2),
(17, 1, 3),
(18, 1, 1),
(18, 1, 2),
(18, 1, 3),
(19, 1, 1),
(19, 1, 2),
(19, 1, 3),
(20, 1, 1),
(20, 1, 2),
(20, 1, 3),
(21, 1, 1),
(21, 1, 2),
(21, 1, 3),
(22, 1, 1),
(22, 1, 2),
(22, 1, 3),
(23, 1, 1),
(23, 1, 2),
(23, 1, 3),
(24, 1, 1),
(24, 1, 2),
(24, 1, 3),
(25, 1, 1),
(25, 1, 2),
(25, 1, 3),
(26, 1, 1),
(26, 1, 2),
(26, 1, 3),
(27, 1, 1),
(27, 1, 2),
(27, 1, 3),
(28, 1, 1),
(28, 1, 2),
(28, 1, 3),
(29, 1, 1),
(29, 1, 2),
(29, 1, 3),
(30, 1, 1),
(30, 1, 2),
(30, 1, 3),
(31, 1, 1),
(31, 1, 2),
(31, 1, 3),
(32, 1, 1),
(32, 1, 2),
(32, 1, 3),
(33, 1, 1),
(33, 1, 2),
(33, 1, 3),
(34, 1, 1),
(34, 1, 2),
(34, 1, 3),
(35, 1, 1),
(35, 1, 2),
(35, 1, 3),
(36, 1, 1),
(36, 1, 2),
(36, 1, 3),
(37, 1, 1),
(37, 1, 2),
(37, 1, 3),
(38, 1, 1),
(38, 1, 2),
(38, 1, 3),
(39, 1, 1),
(39, 1, 2),
(39, 1, 3),
(40, 1, 1),
(40, 1, 2),
(40, 1, 3),
(41, 1, 1),
(41, 1, 2),
(41, 1, 3),
(42, 1, 1),
(42, 1, 2),
(42, 1, 3),
(43, 1, 1),
(43, 1, 2),
(43, 1, 3),
(44, 1, 1),
(44, 1, 2),
(44, 1, 3),
(45, 1, 1),
(45, 1, 2),
(45, 1, 3),
(46, 1, 1),
(46, 1, 2),
(46, 1, 3),
(47, 1, 1),
(47, 1, 2),
(47, 1, 3),
(48, 1, 1),
(48, 1, 2),
(48, 1, 3),
(49, 1, 1),
(49, 1, 2),
(49, 1, 3),
(50, 1, 1),
(50, 1, 2),
(50, 1, 3),
(51, 1, 1),
(51, 1, 2),
(51, 1, 3),
(52, 1, 1),
(52, 1, 2),
(52, 1, 3),
(53, 1, 1),
(53, 1, 2),
(53, 1, 3),
(54, 1, 1),
(54, 1, 2),
(54, 1, 3),
(55, 1, 1),
(55, 1, 2),
(55, 1, 3),
(56, 1, 1),
(56, 1, 2),
(56, 1, 3),
(57, 1, 1),
(57, 1, 2),
(57, 1, 3),
(58, 1, 1),
(58, 1, 2),
(58, 1, 3),
(59, 1, 1),
(59, 1, 2),
(59, 1, 3),
(60, 1, 1),
(60, 1, 2),
(60, 1, 3),
(61, 1, 1),
(61, 1, 2),
(61, 1, 3),
(62, 1, 1),
(62, 1, 2),
(62, 1, 3),
(63, 1, 1),
(63, 1, 2),
(63, 1, 3),
(64, 1, 1),
(64, 1, 2),
(64, 1, 3),
(65, 1, 1),
(65, 1, 2),
(65, 1, 3),
(79, 1, 1),
(79, 1, 2),
(79, 1, 3),
(80, 1, 1),
(80, 1, 2),
(80, 1, 3),
(81, 1, 1),
(81, 1, 2),
(81, 1, 3),
(82, 1, 1),
(82, 1, 2),
(82, 1, 3),
(83, 1, 1),
(83, 1, 2),
(83, 1, 3),
(84, 1, 1),
(84, 1, 2),
(84, 1, 3),
(85, 1, 1),
(85, 1, 2),
(85, 1, 3),
(86, 1, 1),
(86, 1, 2),
(86, 1, 3),
(87, 1, 1),
(87, 1, 2),
(87, 1, 3),
(91, 1, 1),
(91, 1, 2),
(91, 1, 3),
(92, 1, 1),
(92, 1, 2),
(92, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `ps_module_preference`
--

CREATE TABLE `ps_module_preference` (
  `id_module_preference` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `interest` tinyint(1) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_module_shop`
--

CREATE TABLE `ps_module_shop` (
  `id_module` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `enable_device` tinyint(1) NOT NULL DEFAULT '7'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_module_shop`
--

INSERT INTO `ps_module_shop` (`id_module`, `id_shop`, `enable_device`) VALUES
(1, 1, 7),
(2, 1, 3),
(3, 1, 7),
(4, 1, 7),
(5, 1, 7),
(6, 1, 7),
(7, 1, 7),
(8, 1, 7),
(9, 1, 7),
(10, 1, 7),
(11, 1, 7),
(12, 1, 7),
(13, 1, 1),
(14, 1, 7),
(15, 1, 7),
(16, 1, 7),
(17, 1, 7),
(18, 1, 7),
(20, 1, 7),
(21, 1, 7),
(22, 1, 7),
(23, 1, 7),
(24, 1, 7),
(25, 1, 7),
(26, 1, 7),
(27, 1, 7),
(29, 1, 7),
(30, 1, 7),
(31, 1, 7),
(32, 1, 7),
(33, 1, 7),
(34, 1, 7),
(35, 1, 7),
(36, 1, 7),
(37, 1, 3),
(40, 1, 7),
(41, 1, 7),
(42, 1, 7),
(43, 1, 7),
(44, 1, 7),
(45, 1, 7),
(46, 1, 7),
(47, 1, 7),
(48, 1, 7),
(49, 1, 7),
(50, 1, 7),
(51, 1, 7),
(52, 1, 7),
(53, 1, 7),
(54, 1, 7),
(55, 1, 7),
(56, 1, 7),
(57, 1, 7),
(58, 1, 7),
(59, 1, 7),
(60, 1, 7),
(61, 1, 7),
(62, 1, 7),
(63, 1, 7),
(64, 1, 7),
(65, 1, 7),
(79, 1, 7),
(80, 1, 7),
(81, 1, 7),
(82, 1, 7),
(83, 1, 7),
(84, 1, 7),
(85, 1, 7),
(86, 1, 7),
(87, 1, 7),
(91, 1, 7),
(92, 1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `ps_newsletter`
--

CREATE TABLE `ps_newsletter` (
  `id` int(6) NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `ip_registration_newsletter` varchar(15) NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_operating_system`
--

CREATE TABLE `ps_operating_system` (
  `id_operating_system` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_operating_system`
--

INSERT INTO `ps_operating_system` (`id_operating_system`, `name`) VALUES
(1, 'Windows XP'),
(2, 'Windows Vista'),
(3, 'Windows 7'),
(4, 'Windows 8'),
(5, 'MacOsX'),
(6, 'Linux'),
(7, 'Android');

-- --------------------------------------------------------

--
-- Structure de la table `ps_orders`
--

CREATE TABLE `ps_orders` (
  `id_order` int(10) UNSIGNED NOT NULL,
  `reference` varchar(9) DEFAULT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_currency` int(10) UNSIGNED NOT NULL,
  `id_address_delivery` int(10) UNSIGNED NOT NULL,
  `id_address_invoice` int(10) UNSIGNED NOT NULL,
  `current_state` int(10) UNSIGNED NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `gift` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_number` varchar(64) DEFAULT NULL,
  `total_discounts` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_real` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `carrier_tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_wrapping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `round_mode` tinyint(1) NOT NULL DEFAULT '2',
  `round_type` tinyint(1) NOT NULL DEFAULT '1',
  `invoice_number` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `delivery_number` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_orders`
--

INSERT INTO `ps_orders` (`id_order`, `reference`, `id_shop_group`, `id_shop`, `id_carrier`, `id_lang`, `id_customer`, `id_cart`, `id_currency`, `id_address_delivery`, `id_address_invoice`, `current_state`, `secure_key`, `payment`, `conversion_rate`, `module`, `recyclable`, `gift`, `gift_message`, `mobile_theme`, `shipping_number`, `total_discounts`, `total_discounts_tax_incl`, `total_discounts_tax_excl`, `total_paid`, `total_paid_tax_incl`, `total_paid_tax_excl`, `total_paid_real`, `total_products`, `total_products_wt`, `total_shipping`, `total_shipping_tax_incl`, `total_shipping_tax_excl`, `carrier_tax_rate`, `total_wrapping`, `total_wrapping_tax_incl`, `total_wrapping_tax_excl`, `round_mode`, `round_type`, `invoice_number`, `delivery_number`, `invoice_date`, `delivery_date`, `valid`, `date_add`, `date_upd`) VALUES
(1, 'XKBKNABJK', 1, 1, 2, 1, 1, 1, 1, 4, 4, 6, 'b44a6d9efd7a0076a0fbce6b15eaf3b1', 'Payment by check', '1.000000', 'cheque', 0, 0, '', 0, '', '0.000000', '0.000000', '0.000000', '55.000000', '55.000000', '55.000000', '0.000000', '53.000000', '53.000000', '2.000000', '2.000000', '2.000000', '0.000', '0.000000', '0.000000', '0.000000', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2016-07-29 08:56:22', '2016-07-29 08:56:25'),
(2, 'OHSATSERP', 1, 1, 2, 1, 1, 2, 1, 4, 4, 1, 'b44a6d9efd7a0076a0fbce6b15eaf3b1', 'Payment by check', '1.000000', 'cheque', 0, 0, '', 0, '', '0.000000', '0.000000', '0.000000', '75.900000', '75.900000', '75.900000', '0.000000', '73.900000', '73.900000', '2.000000', '2.000000', '2.000000', '0.000', '0.000000', '0.000000', '0.000000', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2016-07-29 08:56:22', '2016-07-29 08:56:24'),
(3, 'UOYEVOLI', 1, 1, 2, 1, 1, 3, 1, 4, 4, 8, 'b44a6d9efd7a0076a0fbce6b15eaf3b1', 'Payment by check', '1.000000', 'cheque', 0, 0, '', 0, '', '0.000000', '0.000000', '0.000000', '76.010000', '76.010000', '76.010000', '0.000000', '74.010000', '74.010000', '2.000000', '2.000000', '2.000000', '0.000', '0.000000', '0.000000', '0.000000', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2016-07-29 08:56:23', '2016-07-29 08:56:25'),
(4, 'FFATNOMMJ', 1, 1, 2, 1, 1, 4, 1, 4, 4, 1, 'b44a6d9efd7a0076a0fbce6b15eaf3b1', 'Payment by check', '1.000000', 'cheque', 0, 0, '', 0, '', '0.000000', '0.000000', '0.000000', '89.890000', '89.890000', '89.890000', '0.000000', '87.890000', '87.890000', '2.000000', '2.000000', '2.000000', '0.000', '0.000000', '0.000000', '0.000000', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2016-07-29 08:56:23', '2016-07-29 08:56:25'),
(5, 'KHWLILZLL', 1, 1, 2, 1, 1, 5, 1, 4, 4, 10, 'b44a6d9efd7a0076a0fbce6b15eaf3b1', 'Bank wire', '1.000000', 'bankwire', 0, 0, '', 0, '', '0.000000', '0.000000', '0.000000', '71.510000', '71.510000', '71.510000', '0.000000', '69.510000', '69.510000', '2.000000', '2.000000', '2.000000', '0.000', '0.000000', '0.000000', '0.000000', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2016-07-29 08:56:23', '2016-07-29 08:56:25');

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_carrier`
--

CREATE TABLE `ps_order_carrier` (
  `id_order_carrier` int(11) NOT NULL,
  `id_order` int(11) UNSIGNED NOT NULL,
  `id_carrier` int(11) UNSIGNED NOT NULL,
  `id_order_invoice` int(11) UNSIGNED DEFAULT NULL,
  `weight` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_excl` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_incl` decimal(20,6) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_order_carrier`
--

INSERT INTO `ps_order_carrier` (`id_order_carrier`, `id_order`, `id_carrier`, `id_order_invoice`, `weight`, `shipping_cost_tax_excl`, `shipping_cost_tax_incl`, `tracking_number`, `date_add`) VALUES
(1, 1, 2, 0, '0.000000', '2.000000', '2.000000', '', '2016-07-29 08:56:23'),
(2, 2, 2, 0, '0.000000', '2.000000', '2.000000', '', '2016-07-29 08:56:23'),
(3, 3, 2, 0, '0.000000', '2.000000', '2.000000', '', '2016-07-29 08:56:23'),
(4, 4, 2, 0, '0.000000', '2.000000', '2.000000', '', '2016-07-29 08:56:23'),
(5, 5, 2, 0, '0.000000', '2.000000', '2.000000', '', '2016-07-29 08:56:23');

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_cart_rule`
--

CREATE TABLE `ps_order_cart_rule` (
  `id_order_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_order_invoice` int(10) UNSIGNED DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `value_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_detail`
--

CREATE TABLE `ps_order_detail` (
  `id_order_detail` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_order_invoice` int(11) DEFAULT NULL,
  `id_warehouse` int(10) UNSIGNED DEFAULT '0',
  `id_shop` int(11) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_attribute_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int(10) NOT NULL DEFAULT '0',
  `product_quantity_refunded` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_quantity_return` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_upc` varchar(12) DEFAULT NULL,
  `product_reference` varchar(32) DEFAULT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_weight` decimal(20,6) NOT NULL,
  `id_tax_rules_group` int(11) UNSIGNED DEFAULT '0',
  `tax_computation_method` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL DEFAULT '0.000',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int(10) UNSIGNED DEFAULT '0',
  `download_deadline` datetime DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `purchase_supplier_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_order_detail`
--

INSERT INTO `ps_order_detail` (`id_order_detail`, `id_order`, `id_order_invoice`, `id_warehouse`, `id_shop`, `product_id`, `product_attribute_id`, `product_name`, `product_quantity`, `product_quantity_in_stock`, `product_quantity_refunded`, `product_quantity_return`, `product_quantity_reinjected`, `product_price`, `reduction_percent`, `reduction_amount`, `reduction_amount_tax_incl`, `reduction_amount_tax_excl`, `group_reduction`, `product_quantity_discount`, `product_ean13`, `product_upc`, `product_reference`, `product_supplier_reference`, `product_weight`, `id_tax_rules_group`, `tax_computation_method`, `tax_name`, `tax_rate`, `ecotax`, `ecotax_tax_rate`, `discount_quantity_applied`, `download_hash`, `download_nb`, `download_deadline`, `total_price_tax_incl`, `total_price_tax_excl`, `unit_price_tax_incl`, `unit_price_tax_excl`, `total_shipping_price_tax_incl`, `total_shipping_price_tax_excl`, `purchase_supplier_price`, `original_product_price`, `original_wholesale_price`) VALUES
(1, 1, 0, 0, 1, 2, 10, 'Blouse - Color : White, Size : M', 1, 1, 0, 0, 0, '26.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_2', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '27.000000', '27.000000', '27.000000', '27.000000', '0.000000', '0.000000', '0.000000', '26.999852', '8.100000'),
(2, 1, 0, 0, 1, 3, 13, 'Printed Dress - Color : Orange, Size : S', 1, 1, 0, 0, 0, '25.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_3', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '26.000000', '26.000000', '26.000000', '26.000000', '0.000000', '0.000000', '0.000000', '25.999852', '7.800000'),
(3, 2, 0, 0, 1, 2, 10, 'Blouse - Color : White, Size : M', 1, 1, 0, 0, 0, '26.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_2', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '27.000000', '27.000000', '27.000000', '27.000000', '0.000000', '0.000000', '0.000000', '26.999852', '8.100000'),
(4, 2, 0, 0, 1, 6, 32, 'Printed Summer Dress - Color : Yellow, Size : M', 1, 1, 0, 0, 0, '30.502569', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_6', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '30.500000', '30.500000', '30.500000', '30.500000', '0.000000', '0.000000', '0.000000', '30.502569', '9.150000'),
(5, 2, 0, 0, 1, 7, 34, 'Printed Chiffon Dress - Color : Yellow, Size : S', 1, 1, 0, 0, 0, '20.501236', '20.00', '0.000000', '0.000000', '0.000000', '0.00', '17.400000', '', '', 'demo_7', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '16.400000', '16.400000', '16.400000', '16.400000', '0.000000', '0.000000', '0.000000', '20.501236', '6.150000'),
(6, 3, 0, 0, 1, 1, 1, 'Faded Short Sleeve T-shirts - Color : Orange, Size : S', 1, 1, 0, 0, 0, '16.510000', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_1', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '16.510000', '16.510000', '16.510000', '16.510000', '0.000000', '0.000000', '0.000000', '16.510000', '4.950000'),
(7, 3, 0, 0, 1, 2, 10, 'Blouse - Color : White, Size : M', 1, 1, 0, 0, 0, '26.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_2', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '27.000000', '27.000000', '27.000000', '27.000000', '0.000000', '0.000000', '0.000000', '26.999852', '8.100000'),
(8, 3, 0, 0, 1, 6, 32, 'Printed Summer Dress - Color : Yellow, Size : M', 1, 1, 0, 0, 0, '30.502569', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_6', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '30.500000', '30.500000', '30.500000', '30.500000', '0.000000', '0.000000', '0.000000', '30.502569', '9.150000'),
(9, 4, 0, 0, 1, 1, 1, 'Faded Short Sleeve T-shirts - Color : Orange, Size : S', 1, 1, 0, 0, 0, '16.510000', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_1', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '16.510000', '16.510000', '16.510000', '16.510000', '0.000000', '0.000000', '0.000000', '16.510000', '4.950000'),
(10, 4, 0, 0, 1, 3, 13, 'Printed Dress - Color : Orange, Size : S', 1, 1, 0, 0, 0, '25.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_3', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '26.000000', '26.000000', '26.000000', '26.000000', '0.000000', '0.000000', '0.000000', '25.999852', '7.800000'),
(11, 4, 0, 0, 1, 5, 19, 'Printed Summer Dress - Color : Yellow, Size : S', 1, 1, 0, 0, 0, '30.506321', '5.00', '0.000000', '0.000000', '0.000000', '0.00', '29.980000', '', '', 'demo_5', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '28.980000', '28.980000', '28.980000', '28.980000', '0.000000', '0.000000', '0.000000', '30.506321', '9.150000'),
(12, 4, 0, 0, 1, 7, 34, 'Printed Chiffon Dress - Color : Yellow, Size : S', 1, 1, 0, 0, 0, '20.501236', '20.00', '0.000000', '0.000000', '0.000000', '0.00', '17.400000', '', '', 'demo_7', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '16.400000', '16.400000', '16.400000', '16.400000', '0.000000', '0.000000', '0.000000', '20.501236', '6.150000'),
(13, 5, 0, 0, 1, 1, 1, 'Faded Short Sleeve T-shirts - Color : Orange, Size : S', 1, 1, 0, 0, 0, '16.510000', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_1', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '16.510000', '16.510000', '16.510000', '16.510000', '0.000000', '0.000000', '0.000000', '16.510000', '4.950000'),
(14, 5, 0, 0, 1, 2, 7, 'Blouse - Color : Black, Size : S', 1, 1, 0, 0, 0, '26.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_2', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '27.000000', '27.000000', '27.000000', '27.000000', '0.000000', '0.000000', '0.000000', '26.999852', '8.100000'),
(15, 5, 0, 0, 1, 3, 13, 'Printed Dress - Color : Orange, Size : S', 1, 1, 0, 0, 0, '25.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_3', '', '0.000000', 0, 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '26.000000', '26.000000', '26.000000', '26.000000', '0.000000', '0.000000', '0.000000', '25.999852', '7.800000');

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_detail_tax`
--

CREATE TABLE `ps_order_detail_tax` (
  `id_order_detail` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_history`
--

CREATE TABLE `ps_order_history` (
  `id_order_history` int(10) UNSIGNED NOT NULL,
  `id_employee` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_order_state` int(10) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_order_history`
--

INSERT INTO `ps_order_history` (`id_order_history`, `id_employee`, `id_order`, `id_order_state`, `date_add`) VALUES
(1, 0, 1, 1, '2016-07-29 08:56:24'),
(2, 0, 2, 1, '2016-07-29 08:56:24'),
(3, 0, 3, 1, '2016-07-29 08:56:24'),
(4, 0, 4, 1, '2016-07-29 08:56:25'),
(5, 0, 5, 10, '2016-07-29 08:56:25'),
(6, 1, 1, 6, '2016-07-29 08:56:25'),
(7, 1, 3, 8, '2016-07-29 08:56:25');

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_invoice`
--

CREATE TABLE `ps_order_invoice` (
  `id_order_invoice` int(11) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `delivery_number` int(11) NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `total_discount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shipping_tax_computation_method` int(10) UNSIGNED NOT NULL,
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shop_address` text,
  `invoice_address` text,
  `delivery_address` text,
  `note` text,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_invoice_payment`
--

CREATE TABLE `ps_order_invoice_payment` (
  `id_order_invoice` int(11) UNSIGNED NOT NULL,
  `id_order_payment` int(11) UNSIGNED NOT NULL,
  `id_order` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_invoice_tax`
--

CREATE TABLE `ps_order_invoice_tax` (
  `id_order_invoice` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `amount` decimal(10,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_message`
--

CREATE TABLE `ps_order_message` (
  `id_order_message` int(10) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_order_message`
--

INSERT INTO `ps_order_message` (`id_order_message`, `date_add`) VALUES
(1, '2016-07-29 08:56:25');

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_message_lang`
--

CREATE TABLE `ps_order_message_lang` (
  `id_order_message` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_order_message_lang`
--

INSERT INTO `ps_order_message_lang` (`id_order_message`, `id_lang`, `name`, `message`) VALUES
(1, 1, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),
(1, 2, 'Retard', 'Bonjour,\n\nMalheureusement, un article que vous avez commandé est actuellement en rupture de stock. Pour cette raison, il est possible que la livraison de votre commande soit légèrement retardée.\nNous vous prions de bien vouloir accepter nos excuses. Nous faisons tout notre possible pour remédier à cette situation.\n\nCordialement,'),
(1, 3, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),
(1, 4, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),
(1, 5, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,');

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_payment`
--

CREATE TABLE `ps_order_payment` (
  `id_order_payment` int(11) NOT NULL,
  `order_reference` varchar(9) DEFAULT NULL,
  `id_currency` int(10) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `transaction_id` varchar(254) DEFAULT NULL,
  `card_number` varchar(254) DEFAULT NULL,
  `card_brand` varchar(254) DEFAULT NULL,
  `card_expiration` char(7) DEFAULT NULL,
  `card_holder` varchar(254) DEFAULT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_return`
--

CREATE TABLE `ps_order_return` (
  `id_order_return` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_return_detail`
--

CREATE TABLE `ps_order_return_detail` (
  `id_order_return` int(10) UNSIGNED NOT NULL,
  `id_order_detail` int(10) UNSIGNED NOT NULL,
  `id_customization` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_quantity` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_return_state`
--

CREATE TABLE `ps_order_return_state` (
  `id_order_return_state` int(10) UNSIGNED NOT NULL,
  `color` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_order_return_state`
--

INSERT INTO `ps_order_return_state` (`id_order_return_state`, `color`) VALUES
(1, '#4169E1'),
(2, '#8A2BE2'),
(3, '#32CD32'),
(4, '#DC143C'),
(5, '#108510');

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_return_state_lang`
--

CREATE TABLE `ps_order_return_state_lang` (
  `id_order_return_state` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_order_return_state_lang`
--

INSERT INTO `ps_order_return_state_lang` (`id_order_return_state`, `id_lang`, `name`) VALUES
(1, 1, 'Waiting for confirmation'),
(1, 2, 'En attente de confirmation'),
(1, 3, 'Waiting for confirmation'),
(1, 4, 'Waiting for confirmation'),
(1, 5, 'Waiting for confirmation'),
(2, 1, 'Waiting for package'),
(2, 2, 'En attente du colis'),
(2, 3, 'Waiting for package'),
(2, 4, 'Waiting for package'),
(2, 5, 'Waiting for package'),
(3, 1, 'Package received'),
(3, 2, 'Colis reçu'),
(3, 3, 'Package received'),
(3, 4, 'Package received'),
(3, 5, 'Package received'),
(4, 1, 'Return denied'),
(4, 2, 'Retour refusé'),
(4, 3, 'Return denied'),
(4, 4, 'Return denied'),
(4, 5, 'Return denied'),
(5, 1, 'Return completed'),
(5, 2, 'Retour terminé'),
(5, 3, 'Return completed'),
(5, 4, 'Return completed'),
(5, 5, 'Return completed');

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_slip`
--

CREATE TABLE `ps_order_slip` (
  `id_order_slip` int(10) UNSIGNED NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `total_products_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_products_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_incl` decimal(20,6) DEFAULT NULL,
  `shipping_cost` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `shipping_cost_amount` decimal(10,2) NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `order_slip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_slip_detail`
--

CREATE TABLE `ps_order_slip_detail` (
  `id_order_slip` int(10) UNSIGNED NOT NULL,
  `id_order_detail` int(10) UNSIGNED NOT NULL,
  `product_quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `unit_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `amount_tax_excl` decimal(20,6) DEFAULT NULL,
  `amount_tax_incl` decimal(20,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_slip_detail_tax`
--

CREATE TABLE `ps_order_slip_detail_tax` (
  `id_order_slip_detail` int(11) UNSIGNED NOT NULL,
  `id_tax` int(11) UNSIGNED NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_state`
--

CREATE TABLE `ps_order_state` (
  `id_order_state` int(10) UNSIGNED NOT NULL,
  `invoice` tinyint(1) UNSIGNED DEFAULT '0',
  `send_email` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint(1) UNSIGNED NOT NULL,
  `hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `shipped` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `paid` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pdf_invoice` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pdf_delivery` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_order_state`
--

INSERT INTO `ps_order_state` (`id_order_state`, `invoice`, `send_email`, `module_name`, `color`, `unremovable`, `hidden`, `logable`, `delivery`, `shipped`, `paid`, `pdf_invoice`, `pdf_delivery`, `deleted`) VALUES
(1, 0, 1, 'cheque', '#4169E1', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 1, '', '#32CD32', 1, 0, 1, 0, 0, 1, 1, 0, 0),
(3, 1, 1, '', '#FF8C00', 1, 0, 1, 1, 0, 1, 0, 0, 0),
(4, 1, 1, '', '#8A2BE2', 1, 0, 1, 1, 1, 1, 0, 0, 0),
(5, 1, 0, '', '#108510', 1, 0, 1, 1, 1, 1, 0, 0, 0),
(6, 0, 1, '', '#DC143C', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 1, 1, '', '#ec2e15', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 1, '', '#8f0621', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 1, 1, '', '#FF69B4', 1, 0, 0, 0, 0, 1, 0, 0, 0),
(10, 0, 1, 'bankwire', '#4169E1', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 0, '', '#4169E1', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 1, 1, '', '#32CD32', 1, 0, 1, 0, 0, 1, 0, 0, 0),
(13, 0, 1, '', '#FF69B4', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 0, 'cashondelivery', '#4169E1', 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_order_state_lang`
--

CREATE TABLE `ps_order_state_lang` (
  `id_order_state` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_order_state_lang`
--

INSERT INTO `ps_order_state_lang` (`id_order_state`, `id_lang`, `name`, `template`) VALUES
(1, 1, 'Awaiting check payment', 'cheque'),
(1, 2, 'En attente de paiement par chèque', 'cheque'),
(1, 3, 'Awaiting check payment', 'cheque'),
(1, 4, 'Awaiting check payment', 'cheque'),
(1, 5, 'Awaiting check payment', 'cheque'),
(2, 1, 'Payment accepted', 'payment'),
(2, 2, 'Paiement accepté', 'payment'),
(2, 3, 'Payment accepted', 'payment'),
(2, 4, 'Payment accepted', 'payment'),
(2, 5, 'Payment accepted', 'payment'),
(3, 1, 'Processing in progress', 'preparation'),
(3, 2, 'En cours de préparation', 'preparation'),
(3, 3, 'Processing in progress', 'preparation'),
(3, 4, 'Processing in progress', 'preparation'),
(3, 5, 'Processing in progress', 'preparation'),
(4, 1, 'Shipped', 'shipped'),
(4, 2, 'Expédié', 'shipped'),
(4, 3, 'Shipped', 'shipped'),
(4, 4, 'Shipped', 'shipped'),
(4, 5, 'Shipped', 'shipped'),
(5, 1, 'Delivered', ''),
(5, 2, 'Livré', ''),
(5, 3, 'Delivered', ''),
(5, 4, 'Delivered', ''),
(5, 5, 'Delivered', ''),
(6, 1, 'Canceled', 'order_canceled'),
(6, 2, 'Annulé', 'order_canceled'),
(6, 3, 'Canceled', 'order_canceled'),
(6, 4, 'Canceled', 'order_canceled'),
(6, 5, 'Canceled', 'order_canceled'),
(7, 1, 'Refunded', 'refund'),
(7, 2, 'Remboursé', 'refund'),
(7, 3, 'Refunded', 'refund'),
(7, 4, 'Refunded', 'refund'),
(7, 5, 'Refunded', 'refund'),
(8, 1, 'Payment error', 'payment_error'),
(8, 2, 'Erreur de paiement', 'payment_error'),
(8, 3, 'Payment error', 'payment_error'),
(8, 4, 'Payment error', 'payment_error'),
(8, 5, 'Payment error', 'payment_error'),
(9, 1, 'On backorder (paid)', 'outofstock'),
(9, 2, 'En attente de réapprovisionnement (payé)', 'outofstock'),
(9, 3, 'On backorder (paid)', 'outofstock'),
(9, 4, 'On backorder (paid)', 'outofstock'),
(9, 5, 'On backorder (paid)', 'outofstock'),
(10, 1, 'Awaiting bank wire payment', 'bankwire'),
(10, 2, 'En attente de virement bancaire', 'bankwire'),
(10, 3, 'Awaiting bank wire payment', 'bankwire'),
(10, 4, 'Awaiting bank wire payment', 'bankwire'),
(10, 5, 'Awaiting bank wire payment', 'bankwire'),
(11, 1, 'Awaiting PayPal payment', ''),
(11, 2, 'En attente de paiement PayPal', ''),
(11, 3, 'Awaiting PayPal payment', ''),
(11, 4, 'Awaiting PayPal payment', ''),
(11, 5, 'Awaiting PayPal payment', ''),
(12, 1, 'Remote payment accepted', 'payment'),
(12, 2, 'Paiement à distance accepté', 'payment'),
(12, 3, 'Remote payment accepted', 'payment'),
(12, 4, 'Remote payment accepted', 'payment'),
(12, 5, 'Remote payment accepted', 'payment'),
(13, 1, 'On backorder (not paid)', 'outofstock'),
(13, 2, 'En attente de réapprovisionnement (non payé)', 'outofstock'),
(13, 3, 'On backorder (not paid)', 'outofstock'),
(13, 4, 'On backorder (not paid)', 'outofstock'),
(13, 5, 'On backorder (not paid)', 'outofstock'),
(14, 1, 'Awaiting Cash On Delivery validation', 'cashondelivery'),
(14, 2, 'En attente de paiement à la livraison', 'cashondelivery'),
(14, 3, 'Awaiting Cash On Delivery validation', 'cashondelivery'),
(14, 4, 'Awaiting Cash On Delivery validation', 'cashondelivery'),
(14, 5, 'Awaiting Cash On Delivery validation', 'cashondelivery');

-- --------------------------------------------------------

--
-- Structure de la table `ps_pack`
--

CREATE TABLE `ps_pack` (
  `id_product_pack` int(10) UNSIGNED NOT NULL,
  `id_product_item` int(10) UNSIGNED NOT NULL,
  `id_product_attribute_item` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_page`
--

CREATE TABLE `ps_page` (
  `id_page` int(10) UNSIGNED NOT NULL,
  `id_page_type` int(10) UNSIGNED NOT NULL,
  `id_object` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_page`
--

INSERT INTO `ps_page` (`id_page`, `id_page_type`, `id_object`) VALUES
(1, 1, NULL),
(2, 2, NULL),
(3, 3, 21),
(4, 4, 46),
(5, 5, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ps_pagenotfound`
--

CREATE TABLE `ps_pagenotfound` (
  `id_pagenotfound` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_pagenotfound`
--

INSERT INTO `ps_pagenotfound` (`id_pagenotfound`, `id_shop`, `id_shop_group`, `request_uri`, `http_referer`, `date_add`) VALUES
(1, 1, 1, '/shop/themes/default-bootstrap/css/global.css.map', '', '2016-07-29 15:02:56'),
(2, 1, 1, '/shop/themes/default-bootstrap/css/autoload/uniform.default.css.map', '', '2016-07-29 15:03:00'),
(3, 1, 1, '/shop/themes/default-bootstrap/css/modules/blockbestsellers/blockbestsellers.css.map', '', '2016-07-29 15:03:02'),
(4, 1, 1, '/shop/themes/default-bootstrap/css/modules/blockbanner/blockbanner.css.map', '', '2016-07-29 15:03:03'),
(5, 1, 1, '/shop/themes/default-bootstrap/css/product_list.css.map', '', '2016-07-29 15:03:04'),
(6, 1, 1, '/shop/themes/default-bootstrap/css/modules/blocklanguages/blocklanguages.css.map', '', '2016-07-29 15:03:07'),
(7, 1, 1, '/shop/themes/default-bootstrap/css/modules/blockcategories/blockcategories.css.map', '', '2016-07-29 15:03:07'),
(8, 1, 1, '/shop/themes/default-bootstrap/css/modules/blockcurrencies/blockcurrencies.css.map', '', '2016-07-29 15:03:08'),
(9, 1, 1, '/shop/themes/default-bootstrap/css/modules/blockcart/blockcart.css.map', '', '2016-07-29 15:03:08'),
(10, 1, 1, '/shop/en/home/6-maximum-protection-dental-guard.html', 'http://localhost/shop/fr/home/6-maximum-protection-dental-guard.html', '2016-07-29 15:33:07'),
(11, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-07-29 17:43:37'),
(12, 1, 1, '/shop/plastic-glass-holder-badge-and-keychain-pkgh', 'http://localhost/shop/', '2016-08-01 17:16:46'),
(13, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.woff2', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:48:58'),
(14, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.woff', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:49:02'),
(15, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.ttf', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:49:06'),
(16, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.woff2', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:50:32'),
(17, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.woff', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:50:36'),
(18, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.ttf', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:50:40'),
(19, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.woff2', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:51:56'),
(20, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.woff', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:52:00'),
(21, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.ttf', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:52:04'),
(22, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.woff2', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:52:26'),
(23, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.woff', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:52:30'),
(24, 1, 1, '/shop/themes/theme1189/css/fonts/glyphicons-halflings-regular.ttf', 'http://localhost/shop/themes/theme1189/css/autoload/bootstrap.min.css', '2016-08-03 10:52:34'),
(25, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-04 12:33:50'),
(26, 1, 1, '/shop/layout-maker', '', '2016-08-05 10:06:06'),
(27, 1, 1, '/shop/en/layout-maker', '', '2016-08-05 10:18:03'),
(28, 1, 1, '/shop/layout-maker', '', '2016-08-05 10:21:20'),
(29, 1, 1, '/shop/layout-maker', '', '2016-08-05 10:21:35'),
(30, 1, 1, '/shop/en/plastic-glass-holder-badge-and-keychain-pkgh', 'http://localhost/shop/en/46-designs', '2016-08-05 11:02:27'),
(31, 1, 1, '/shop/en/products/en/layout-maker', 'http://localhost/shop/en/products/22-plastic-glass-holder-badge-and-keychain-pkgh', '2016-08-05 11:39:14'),
(32, 1, 1, '/shop/en/products/en/layout-maker', 'http://localhost/shop/en/products/22-plastic-glass-holder-badge-and-keychain-pkgh', '2016-08-05 11:39:38'),
(33, 1, 1, '/shop/en/index.php?controller=404', '', '2016-08-05 11:49:44'),
(34, 1, 1, '/shop/en/products/layout-maker', 'http://localhost/shop/en/products/22-plastic-glass-holder-badge-and-keychain-pkgh', '2016-08-05 11:50:23'),
(35, 1, 1, '/shop/en/module/blockwishlist/mywishlist', 'http://localhost/shop/en/login?back=my-account', '2016-08-05 12:11:34'),
(36, 1, 1, '/shop/en/module/blockwishlist/mywishlist', 'http://localhost/shop/en/module/blockwishlist/index.php?fc=module&module=smartblog&controller=category', '2016-08-05 12:11:57'),
(37, 1, 1, '/shop/en/index.php?fc=module&module=smartblog&controller=category', 'http://localhost/shop/en/login?back=http%3A%2F%2Flocalhost%2Fshop%2Fen%2Fmodule%2Fblockwishlist%2Fmywishlist', '2016-08-05 12:15:12'),
(38, 1, 1, '/shop/en/index.php?fc=module&module=smartblog&controller=category', 'http://localhost/shop/en/login?back=http%3A%2F%2Flocalhost%2Fshop%2Fen%2Fmodule%2Fblockwishlist%2Fmywishlist', '2016-08-05 12:15:12'),
(39, 1, 1, '/shop/en/-', 'http://localhost/shop/en/products/23-zamac-hotel-rental-keychain-zhk', '2016-08-05 12:29:53'),
(40, 1, 1, '/shop/en/-', 'http://localhost/shop/en/products/23-zamac-hotel-rental-keychain-zhk', '2016-08-05 12:30:27'),
(41, 1, 1, '/shop/en/-', 'http://localhost/shop/en/products/23-zamac-hotel-rental-keychain-zhk', '2016-08-05 12:30:30'),
(42, 1, 1, '/shop/en/-', 'http://localhost/shop/en/-', '2016-08-05 12:30:33'),
(43, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 15:54:35'),
(44, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 15:54:50'),
(45, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 15:58:34'),
(46, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 15:58:34'),
(47, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 15:59:02'),
(48, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 15:59:02'),
(49, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:10:59'),
(50, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:10:59'),
(51, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:11:29'),
(52, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:11:29'),
(53, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:13:04'),
(54, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:13:04'),
(55, 1, 1, '/shop/themes/theme1189/img/img/layout_maker/reload.svg', 'http://localhost/shop/en/layout-maker', '2016-08-05 16:13:51'),
(56, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:13:51'),
(57, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:13:51'),
(58, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:14:25'),
(59, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:14:25'),
(60, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:21:55'),
(61, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:21:55'),
(62, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:26:09'),
(63, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:26:09'),
(64, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:29:21'),
(65, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:29:21'),
(66, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:29:47'),
(67, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:29:47'),
(68, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:30:40'),
(69, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:30:40'),
(70, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:35:06'),
(71, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:35:06'),
(72, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:37:46'),
(73, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:37:46'),
(74, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:38:58'),
(75, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:38:58'),
(76, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:40:45'),
(77, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:40:45'),
(78, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:41:04'),
(79, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:41:04'),
(80, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:44:08'),
(81, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:44:08'),
(82, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:45:05'),
(83, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:45:05'),
(84, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:49:02'),
(85, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:49:02'),
(86, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:51:29'),
(87, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:51:29'),
(88, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 16:52:35'),
(89, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 16:52:35'),
(90, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 16:54:37'),
(91, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 16:54:51'),
(92, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 16:55:33'),
(93, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 16:56:04'),
(94, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 16:56:33'),
(95, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 16:56:40'),
(96, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 16:57:03'),
(97, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:00:18'),
(98, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:00:18'),
(99, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:00:25'),
(100, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:00:29'),
(101, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:00:47'),
(102, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:00:53'),
(103, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:00:56'),
(104, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:01:15'),
(105, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:01:24'),
(106, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:01:26'),
(107, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:01:37'),
(108, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:02:11'),
(109, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:02:17'),
(110, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:05:03'),
(111, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:05:03'),
(112, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:05:24'),
(113, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:05:24'),
(114, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:05:55'),
(115, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:05:55'),
(116, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:06:49'),
(117, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:06:49'),
(118, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:09:33'),
(119, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:09:33'),
(120, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:10:17'),
(121, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:10:17'),
(122, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:11:09'),
(123, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:11:09'),
(124, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:11:16'),
(125, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:11:16'),
(126, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:11:30'),
(127, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:11:30'),
(128, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:11:49'),
(129, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:11:49'),
(130, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:12:10'),
(131, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:12:11'),
(132, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:12:49'),
(133, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:12:49'),
(134, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:13:16'),
(135, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:13:16'),
(136, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:13:50'),
(137, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:13:50'),
(138, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:14:11'),
(139, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:14:11'),
(140, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:14:31'),
(141, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:14:31'),
(142, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:14:53'),
(143, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:14:53'),
(144, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:16:28'),
(145, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:16:28'),
(146, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:17:39'),
(147, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:17:39'),
(148, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:23:42'),
(149, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:23:54'),
(150, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:25:59'),
(151, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:26:34'),
(152, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:27:24'),
(153, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:27:36'),
(154, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-05 17:27:39'),
(155, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:34:50'),
(156, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:34:51'),
(157, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:35:03'),
(158, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:35:03'),
(159, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:37:31'),
(160, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:37:31'),
(161, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:42:34'),
(162, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:42:34'),
(163, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:42:38'),
(164, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:42:38'),
(165, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 17:56:03'),
(166, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 17:56:03'),
(167, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-05 18:03:13'),
(168, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-05 18:03:13'),
(169, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 09:52:53'),
(170, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 09:52:53'),
(171, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 09:53:03'),
(172, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 09:53:03'),
(173, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 10:13:00'),
(174, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 10:13:00'),
(175, 1, 1, '/shop/modules/homeslider/img/', 'http://localhost/shop/', '2016-08-08 10:17:22'),
(176, 1, 1, '/shop/modules/homeslider/img/', 'http://localhost/shop/', '2016-08-08 10:19:29'),
(177, 1, 1, '/shop/en/', 'http://localhost/shop/', '2016-08-08 10:35:37'),
(178, 1, 1, '/shop/en/layout-maker', 'http://localhost/shop/', '2016-08-08 10:35:46'),
(179, 1, 1, '/shop/en/layout-maker', 'http://localhost/shop/', '2016-08-08 10:37:42'),
(180, 1, 1, '/shop/en/layout-maker', 'http://localhost/shop/', '2016-08-08 10:49:48'),
(181, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:34:48'),
(182, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:34:54'),
(183, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:36:38'),
(184, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:37:04'),
(185, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:37:23'),
(186, 1, 1, '/shop/en-layout-maker/', '', '2016-08-08 11:37:32'),
(187, 1, 1, '/shop/en/layout-maker/', '', '2016-08-08 11:37:35'),
(188, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:44:37'),
(189, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:44:46'),
(190, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:46:23'),
(191, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:46:33'),
(192, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:57:09'),
(193, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:57:20'),
(194, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:57:26'),
(195, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 11:57:32'),
(196, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 13:53:22'),
(197, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 13:53:23'),
(198, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 13:53:59'),
(199, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 13:53:59'),
(200, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 13:55:16'),
(201, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 13:55:16'),
(202, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 13:55:31'),
(203, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 13:55:31'),
(204, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 13:56:07'),
(205, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 13:56:26'),
(206, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 13:56:27'),
(207, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 13:56:50'),
(208, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 13:56:50'),
(209, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 13:58:39'),
(210, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 13:58:39'),
(211, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:12:44'),
(212, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:12:44'),
(213, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:13:47'),
(214, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:13:47'),
(215, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:20:28'),
(216, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:20:28'),
(217, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:25:02'),
(218, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:25:02'),
(219, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:27:19'),
(220, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:27:19'),
(221, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:28:46'),
(222, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:28:46'),
(223, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:29:00'),
(224, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:29:00'),
(225, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:29:14'),
(226, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:29:14'),
(227, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:30:21'),
(228, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:30:21'),
(229, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:30:23'),
(230, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:30:23'),
(231, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:31:50'),
(232, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:31:50'),
(233, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:34:16'),
(234, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:34:16'),
(235, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:48:43'),
(236, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:48:43'),
(237, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:49:16'),
(238, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:49:16'),
(239, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:49:42'),
(240, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:49:42'),
(241, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:54:10'),
(242, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:54:10'),
(243, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:56:07'),
(244, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:56:07'),
(245, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 14:59:45'),
(246, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 14:59:45'),
(247, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:02:07'),
(248, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:02:07'),
(249, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:04:05'),
(250, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:04:05'),
(251, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:05:37'),
(252, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:05:37'),
(253, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:09:53'),
(254, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:09:53'),
(255, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:10:02'),
(256, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:10:02'),
(257, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:11:59'),
(258, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:11:59'),
(259, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:12:35'),
(260, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:12:35'),
(261, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:13:02'),
(262, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:13:02'),
(263, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:14:06'),
(264, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:14:06'),
(265, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:14:43'),
(266, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:14:43'),
(267, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:16:43'),
(268, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:16:43'),
(269, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:17:15'),
(270, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:17:15'),
(271, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:17:46'),
(272, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:17:46'),
(273, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:18:43'),
(274, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:18:43'),
(275, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:19:02'),
(276, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:19:02'),
(277, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:19:41'),
(278, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:19:41'),
(279, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:20:15'),
(280, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:20:15'),
(281, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:22:09'),
(282, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:22:09'),
(283, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:27:39'),
(284, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:27:40'),
(285, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:34:45'),
(286, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:34:45'),
(287, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:35:42'),
(288, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:35:42'),
(289, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 15:40:20'),
(290, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 15:40:20'),
(291, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 16:00:26'),
(292, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 16:00:26'),
(293, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:02:25'),
(294, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:02:30'),
(295, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:09:06'),
(296, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:09:09'),
(297, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:09:39'),
(298, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 16:17:18'),
(299, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 16:17:18'),
(300, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:19:41'),
(301, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 16:20:44'),
(302, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 16:20:44'),
(303, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 16:24:12'),
(304, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 16:24:12'),
(305, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 16:25:03'),
(306, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 16:25:03'),
(307, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 16:25:53'),
(308, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 16:25:53'),
(309, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 16:26:17'),
(310, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 16:26:17'),
(311, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 16:28:14'),
(312, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 16:28:14'),
(313, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:28:50'),
(314, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:31:03'),
(315, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:31:27'),
(316, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:31:53'),
(317, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:32:09'),
(318, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 16:33:03'),
(319, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 16:33:03'),
(320, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:33:13'),
(321, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:33:18'),
(322, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 16:33:23'),
(323, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 16:33:24'),
(324, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:33:35'),
(325, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:33:38'),
(326, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:33:45'),
(327, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:34:15'),
(328, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:34:33'),
(329, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:34:56'),
(330, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 16:35:02'),
(331, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 16:35:02'),
(332, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:40:20'),
(333, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:40:23'),
(334, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:43:38'),
(335, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:52:01'),
(336, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:52:08'),
(337, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:52:28'),
(338, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:52:54'),
(339, 1, 1, '/shop/admin4475uqijs/themes/default/css/admin-theme.css.map', '', '2016-08-08 16:53:12'),
(340, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 17:08:14'),
(341, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 17:08:14'),
(342, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 17:10:30'),
(343, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 17:10:30'),
(344, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 17:12:12'),
(345, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 17:12:12'),
(346, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 17:14:03'),
(347, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 17:14:03'),
(348, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 17:49:37'),
(349, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 17:49:37'),
(350, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 17:55:14'),
(351, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 17:55:14'),
(352, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 17:57:36'),
(353, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 17:57:36'),
(354, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 17:59:34'),
(355, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 17:59:34'),
(356, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 18:00:27'),
(357, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 18:00:27'),
(358, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-08 18:01:20'),
(359, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-08 18:01:20'),
(360, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 09:34:23'),
(361, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 09:34:23'),
(362, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 09:38:45'),
(363, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 09:38:45'),
(364, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 09:40:06'),
(365, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 09:40:06'),
(366, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 09:42:08'),
(367, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 09:42:08'),
(368, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 09:42:25'),
(369, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 09:42:25'),
(370, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 09:42:59'),
(371, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 09:43:00'),
(372, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 09:43:04'),
(373, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 09:43:04'),
(374, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 09:43:13'),
(375, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 09:43:13'),
(376, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 09:44:17'),
(377, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 09:44:17'),
(378, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 09:55:21'),
(379, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 09:55:21'),
(380, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 10:11:32'),
(381, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 10:11:32'),
(382, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 10:12:39'),
(383, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 10:12:39'),
(384, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 10:30:33'),
(385, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 10:30:33'),
(386, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 10:31:44'),
(387, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 10:31:44'),
(388, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 10:38:49'),
(389, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 10:38:49'),
(390, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 10:39:14'),
(391, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 10:39:14'),
(392, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 10:39:36'),
(393, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 10:39:36'),
(394, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 10:41:33'),
(395, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 10:41:33'),
(396, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 10:42:02'),
(397, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 10:42:02'),
(398, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 10:47:25'),
(399, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 10:47:25'),
(400, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 11:13:27'),
(401, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 11:13:27'),
(402, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 11:22:10'),
(403, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 11:22:11'),
(404, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 11:23:12'),
(405, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 11:23:12'),
(406, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 11:33:02'),
(407, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 11:33:02'),
(408, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 11:54:45'),
(409, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 11:54:45'),
(410, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 11:55:09'),
(411, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 11:55:09'),
(412, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 11:59:30'),
(413, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 11:59:30'),
(414, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 12:01:47'),
(415, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 12:01:47'),
(416, 1, 1, '/shop/french-shop/', '', '2016-08-09 13:52:14'),
(417, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 14:07:23'),
(418, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 14:07:23'),
(419, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 14:36:27'),
(420, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 14:36:27'),
(421, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 14:39:32'),
(422, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 14:39:32'),
(423, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 14:40:44'),
(424, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 14:40:44'),
(425, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:01:37'),
(426, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:01:37'),
(427, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:01:56'),
(428, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:01:57'),
(429, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:05:09'),
(430, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:05:09'),
(431, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:05:54'),
(432, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:05:54'),
(433, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:06:29'),
(434, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:06:29'),
(435, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:07:14'),
(436, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:07:14'),
(437, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:07:59'),
(438, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:07:59'),
(439, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:19:40'),
(440, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:19:40'),
(441, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:20:40'),
(442, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:20:40'),
(443, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:20:54'),
(444, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:20:54'),
(445, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:21:28'),
(446, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:21:28'),
(447, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:21:38'),
(448, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:21:38'),
(449, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:22:13'),
(450, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:22:13'),
(451, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:23:49'),
(452, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:23:49'),
(453, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:27:12'),
(454, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:27:12'),
(455, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:27:26'),
(456, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:27:26'),
(457, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:28:59'),
(458, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:28:59'),
(459, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:29:14'),
(460, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:29:14'),
(461, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:30:35'),
(462, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:30:35'),
(463, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:37:01'),
(464, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:37:01'),
(465, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:37:29'),
(466, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:37:29'),
(467, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:39:17'),
(468, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:39:17'),
(469, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:40:20'),
(470, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:40:20'),
(471, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:48:01');
INSERT INTO `ps_pagenotfound` (`id_pagenotfound`, `id_shop`, `id_shop_group`, `request_uri`, `http_referer`, `date_add`) VALUES
(472, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:48:01'),
(473, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:48:31'),
(474, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:48:31'),
(475, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:48:57'),
(476, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:48:57'),
(477, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:50:06'),
(478, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:50:06'),
(479, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 15:57:09'),
(480, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 15:57:09'),
(481, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:01:04'),
(482, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:01:04'),
(483, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:02:32'),
(484, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:02:32'),
(485, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:02:47'),
(486, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:02:47'),
(487, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:03:10'),
(488, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:03:11'),
(489, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:07:01'),
(490, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:07:01'),
(491, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:11:26'),
(492, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:11:26'),
(493, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:12:33'),
(494, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:12:33'),
(495, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:14:30'),
(496, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:14:30'),
(497, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:16:17'),
(498, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:16:17'),
(499, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:16:45'),
(500, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:16:45'),
(501, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:17:54'),
(502, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:17:54'),
(503, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:20:31'),
(504, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:20:31'),
(505, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:21:14'),
(506, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:21:14'),
(507, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:22:32'),
(508, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:22:32'),
(509, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:28:27'),
(510, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:28:27'),
(511, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:28:56'),
(512, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:28:56'),
(513, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:29:46'),
(514, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:29:46'),
(515, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:30:18'),
(516, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:30:18'),
(517, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:42:26'),
(518, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:42:26'),
(519, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:44:23'),
(520, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:44:23'),
(521, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:53:55'),
(522, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:53:55'),
(523, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 16:55:13'),
(524, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 16:55:13'),
(525, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:04:46'),
(526, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:04:46'),
(527, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:04:59'),
(528, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:04:59'),
(529, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:06:49'),
(530, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:06:49'),
(531, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:08:15'),
(532, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:08:15'),
(533, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:08:31'),
(534, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:08:31'),
(535, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:29:49'),
(536, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:29:49'),
(537, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:36:21'),
(538, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:36:22'),
(539, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:44:07'),
(540, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:44:07'),
(541, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:45:40'),
(542, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:45:40'),
(543, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:46:02'),
(544, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:46:02'),
(545, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:47:17'),
(546, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:47:17'),
(547, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:47:58'),
(548, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:47:58'),
(549, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:51:55'),
(550, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:51:55'),
(551, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:53:39'),
(552, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:53:39'),
(553, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:55:39'),
(554, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:55:39'),
(555, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 17:57:40'),
(556, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 17:57:40'),
(557, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 18:00:53'),
(558, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 18:00:53'),
(559, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-09 18:01:04'),
(560, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-09 18:01:04'),
(561, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 10:35:45'),
(562, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 10:35:45'),
(563, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 10:36:25'),
(564, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 10:36:25'),
(565, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 10:42:30'),
(566, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 10:42:30'),
(567, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 10:47:06'),
(568, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 10:47:06'),
(569, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 10:50:24'),
(570, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 10:50:24'),
(571, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 10:52:10'),
(572, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 10:52:10'),
(573, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 10:56:28'),
(574, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 10:56:28'),
(575, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 10:57:02'),
(576, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 10:57:02'),
(577, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 10:57:33'),
(578, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 10:57:33'),
(579, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 10:58:56'),
(580, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 10:58:56'),
(581, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:09:56'),
(582, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:09:56'),
(583, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:19:16'),
(584, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:19:16'),
(585, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:20:43'),
(586, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:20:43'),
(587, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:23:55'),
(588, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:23:55'),
(589, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:24:13'),
(590, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:24:13'),
(591, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:24:33'),
(592, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:24:33'),
(593, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:25:33'),
(594, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:25:33'),
(595, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:28:19'),
(596, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:28:19'),
(597, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:29:22'),
(598, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:29:22'),
(599, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:30:23'),
(600, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:30:23'),
(601, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:30:49'),
(602, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:30:49'),
(603, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:31:14'),
(604, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:31:14'),
(605, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:52:12'),
(606, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:52:12'),
(607, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 11:53:48'),
(608, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 11:53:48'),
(609, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 12:10:51'),
(610, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 12:10:51'),
(611, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 12:11:10'),
(612, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 12:11:10'),
(613, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 12:12:29'),
(614, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 12:12:29'),
(615, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 12:13:47'),
(616, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 12:13:47'),
(617, 1, 1, '/shop/en/layout-maker?live_configurator_token=22df8bdb2a13d442cc145129c9f12b5d&id_shop=1&id_employee=1&theme=&theme_font=', 'http://localhost/shop/45-products?live_configurator_token=22df8bdb2a13d442cc145129c9f12b5d&id_shop=1&id_employee=1&theme=&theme_font=', '2016-08-10 12:19:20'),
(618, 1, 1, '/shop//layout-maker?live_configurator_token=22df8bdb2a13d442cc145129c9f12b5d&id_shop=1&id_employee=1&theme=&theme_font=', 'http://localhost/shop/45-products?live_configurator_token=22df8bdb2a13d442cc145129c9f12b5d&id_shop=1&id_employee=1&theme=&theme_font=', '2016-08-10 12:19:56'),
(619, 1, 1, '/shop//layout-maker?live_configurator_token=22df8bdb2a13d442cc145129c9f12b5d&id_shop=1&id_employee=1&theme=&theme_font=', 'http://localhost/shop/45-products?live_configurator_token=22df8bdb2a13d442cc145129c9f12b5d&id_shop=1&id_employee=1&theme=&theme_font=', '2016-08-10 12:20:08'),
(620, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 12:28:45'),
(621, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 12:28:46'),
(622, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 12:35:00'),
(623, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 12:35:00'),
(624, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 12:35:41'),
(625, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 12:35:41'),
(626, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 13:48:21'),
(627, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 13:48:21'),
(628, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 13:48:54'),
(629, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 13:48:55'),
(630, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 13:49:27'),
(631, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 13:49:27'),
(632, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 13:53:54'),
(633, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 13:53:54'),
(634, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 13:56:07'),
(635, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 13:56:07'),
(636, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 13:56:30'),
(637, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 13:56:30'),
(638, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:00:25'),
(639, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:00:25'),
(640, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:02:41'),
(641, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:02:41'),
(642, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:05:54'),
(643, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:05:55'),
(644, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:10:57'),
(645, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:10:57'),
(646, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:12:16'),
(647, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:12:16'),
(648, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:12:24'),
(649, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:12:24'),
(650, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:12:54'),
(651, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:12:54'),
(652, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:20:46'),
(653, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:20:46'),
(654, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:22:10'),
(655, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:22:10'),
(656, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:23:09'),
(657, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:23:09'),
(658, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:25:25'),
(659, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:25:25'),
(660, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:27:03'),
(661, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:27:03'),
(662, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:28:39'),
(663, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:28:39'),
(664, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 14:44:55'),
(665, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 14:44:55'),
(666, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:02:01'),
(667, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:02:01'),
(668, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:03:14'),
(669, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:03:14'),
(670, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:05:47'),
(671, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:05:47'),
(672, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:06:55'),
(673, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:06:55'),
(674, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:09:41'),
(675, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:09:41'),
(676, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:11:07'),
(677, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:11:07'),
(678, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:13:49'),
(679, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:13:49'),
(680, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:14:43'),
(681, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:14:43'),
(682, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:15:50'),
(683, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:15:50'),
(684, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:17:18'),
(685, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:17:18'),
(686, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:17:53'),
(687, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:17:53'),
(688, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:18:14'),
(689, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:18:14'),
(690, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:18:29'),
(691, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:18:29'),
(692, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:19:06'),
(693, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:19:06'),
(694, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:19:18'),
(695, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:19:18'),
(696, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:20:31'),
(697, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:20:31'),
(698, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:21:58'),
(699, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:21:59'),
(700, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:23:24'),
(701, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:23:24'),
(702, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:26:01'),
(703, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:26:01'),
(704, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:27:52'),
(705, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:27:52'),
(706, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:32:32'),
(707, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:32:32'),
(708, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:37:50'),
(709, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:37:50'),
(710, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:38:04'),
(711, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:38:04'),
(712, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:44:15'),
(713, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:44:15'),
(714, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:46:29'),
(715, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:46:29'),
(716, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:48:09'),
(717, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:48:09'),
(718, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:53:48'),
(719, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:53:48'),
(720, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 15:58:56'),
(721, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 15:58:56'),
(722, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 16:04:50'),
(723, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 16:04:50'),
(724, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 16:29:04'),
(725, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 16:29:04'),
(726, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 16:40:08'),
(727, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 16:40:08'),
(728, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 16:41:03'),
(729, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 16:41:03'),
(730, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 16:42:42'),
(731, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 16:42:42'),
(732, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:02:20'),
(733, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:02:20'),
(734, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:02:46'),
(735, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:02:46'),
(736, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:04:47'),
(737, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:04:47'),
(738, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:06:24'),
(739, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:06:24'),
(740, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:07:19'),
(741, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:07:19'),
(742, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:08:50'),
(743, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:08:50'),
(744, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:10:17'),
(745, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:10:17'),
(746, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:10:29'),
(747, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:10:29'),
(748, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:10:42'),
(749, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:10:42'),
(750, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:12:19'),
(751, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:12:19'),
(752, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:14:39'),
(753, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:14:39'),
(754, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:16:16'),
(755, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:16:16'),
(756, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:17:16'),
(757, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:17:16'),
(758, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:19:20'),
(759, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:19:20'),
(760, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:23:15'),
(761, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:23:15'),
(762, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:25:06'),
(763, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:25:06'),
(764, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:26:09'),
(765, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:26:09'),
(766, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:27:03'),
(767, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:27:03'),
(768, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:30:38'),
(769, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:30:38'),
(770, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:30:48'),
(771, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:30:48'),
(772, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:36:50'),
(773, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:36:50'),
(774, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:37:11'),
(775, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:37:11'),
(776, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:40:10'),
(777, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:40:10'),
(778, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:40:43'),
(779, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:40:43'),
(780, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:41:42'),
(781, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:41:42'),
(782, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:42:39'),
(783, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:42:39'),
(784, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:43:43'),
(785, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:43:43'),
(786, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:47:04'),
(787, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:47:04'),
(788, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:47:34'),
(789, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:47:34'),
(790, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:51:30'),
(791, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:51:30'),
(792, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:51:58'),
(793, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:51:58'),
(794, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:53:31'),
(795, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:53:31'),
(796, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:54:03'),
(797, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:54:03'),
(798, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:54:55'),
(799, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:54:55'),
(800, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:56:06'),
(801, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:56:06'),
(802, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:56:19'),
(803, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:56:19'),
(804, 1, 1, '/shop/themes/theme1189/js/fileupload/load-image.all.min.js.map', '', '2016-08-10 17:56:48'),
(805, 1, 1, '/shop/themes/theme1189/js/fileupload/canvas-to-blob.min.js.map', '', '2016-08-10 17:56:48');

-- --------------------------------------------------------

--
-- Structure de la table `ps_page_type`
--

CREATE TABLE `ps_page_type` (
  `id_page_type` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_page_type`
--

INSERT INTO `ps_page_type` (`id_page_type`, `name`) VALUES
(4, 'category'),
(1, 'index'),
(5, 'layoutmaker'),
(2, 'pagenotfound'),
(3, 'product');

-- --------------------------------------------------------

--
-- Structure de la table `ps_page_viewed`
--

CREATE TABLE `ps_page_viewed` (
  `id_page` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_date_range` int(10) UNSIGNED NOT NULL,
  `counter` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_product`
--

CREATE TABLE `ps_product` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(10) UNSIGNED DEFAULT NULL,
  `id_manufacturer` int(10) UNSIGNED DEFAULT NULL,
  `id_category_default` int(10) UNSIGNED DEFAULT NULL,
  `id_shop_default` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_tax_rules_group` int(11) UNSIGNED NOT NULL,
  `on_sale` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `online_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `height` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `depth` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `out_of_stock` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `cache_default_attribute` int(10) UNSIGNED DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `pack_stock_type` int(11) UNSIGNED NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_product`
--

INSERT INTO `ps_product` (`id_product`, `id_supplier`, `id_manufacturer`, `id_category_default`, `id_shop_default`, `id_tax_rules_group`, `on_sale`, `online_only`, `ean13`, `upc`, `ecotax`, `quantity`, `minimal_quantity`, `price`, `wholesale_price`, `unity`, `unit_price_ratio`, `additional_shipping_cost`, `reference`, `supplier_reference`, `location`, `width`, `height`, `depth`, `weight`, `out_of_stock`, `quantity_discount`, `customizable`, `uploadable_files`, `text_fields`, `active`, `redirect_type`, `id_product_redirected`, `available_for_order`, `available_date`, `condition`, `show_price`, `indexed`, `visibility`, `cache_is_pack`, `cache_has_attachments`, `is_virtual`, `cache_default_attribute`, `date_add`, `date_upd`, `advanced_stock_management`, `pack_stock_type`) VALUES
(21, 0, 0, 46, 1, 0, 0, 0, '', '', '0.000000', 0, 1, '0.000000', '0.000000', '', '0.000000', '0.00', '', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2016-08-04 00:32:24', '2016-08-08 02:06:24', 0, 3),
(22, 0, 0, 45, 1, 0, 0, 0, '', '', '0.000000', 0, 1, '0.000000', '0.000000', '', '0.000000', '0.00', 'PKGH', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 1, '2016-08-04 01:37:35', '2016-08-09 22:23:58', 0, 3),
(23, 0, 0, 45, 1, 0, 0, 0, '', '', '0.000000', 0, 1, '0.000000', '0.000000', '', '0.000000', '0.00', 'ZHK', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2016-08-04 01:52:05', '2016-08-10 05:03:53', 0, 3),
(24, 0, 0, 45, 1, 0, 0, 0, '', '', '0.000000', 0, 1, '0.000000', '0.000000', '', '0.000000', '0.00', 'POP8S', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2016-08-04 01:54:39', '2016-08-04 22:52:14', 0, 3),
(25, 0, 0, 45, 1, 0, 0, 0, '', '', '0.000000', 0, 1, '0.000000', '0.000000', '', '0.000000', '0.00', 'PHM203', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2016-08-04 01:57:58', '2016-08-04 02:00:42', 0, 3),
(26, 0, 0, 46, 1, 0, 0, 0, '', '', '0.000000', 0, 1, '0.000000', '0.000000', '', '0.000000', '0.00', '', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2016-08-04 02:01:08', '2016-08-04 02:01:37', 0, 3),
(27, 0, 0, 46, 1, 0, 0, 0, '', '', '0.000000', 0, 1, '0.000000', '0.000000', '', '0.000000', '0.00', '', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2016-08-04 02:02:01', '2016-08-09 23:20:33', 0, 3),
(28, 0, 0, 46, 1, 0, 0, 0, '', '', '0.000000', 0, 1, '0.000000', '0.000000', '', '0.000000', '0.00', '', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2016-08-04 02:04:01', '2016-08-04 02:05:05', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_attachment`
--

CREATE TABLE `ps_product_attachment` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_attachment` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_attribute`
--

CREATE TABLE `ps_product_attribute` (
  `id_product_attribute` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint(1) UNSIGNED DEFAULT NULL,
  `minimal_quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_product_attribute`
--

INSERT INTO `ps_product_attribute` (`id_product_attribute`, `id_product`, `reference`, `supplier_reference`, `location`, `ean13`, `upc`, `wholesale_price`, `price`, `ecotax`, `quantity`, `weight`, `unit_price_impact`, `default_on`, `minimal_quantity`, `available_date`) VALUES
(1, 22, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.000000', 1, 1, '0000-00-00'),
(2, 22, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.000000', NULL, 1, '0000-00-00'),
(3, 22, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.000000', NULL, 1, '0000-00-00'),
(4, 22, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.000000', NULL, 1, '0000-00-00'),
(5, 22, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.000000', NULL, 1, '0000-00-00'),
(6, 22, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.000000', NULL, 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_attribute_combination`
--

CREATE TABLE `ps_product_attribute_combination` (
  `id_attribute` int(10) UNSIGNED NOT NULL,
  `id_product_attribute` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_product_attribute_combination`
--

INSERT INTO `ps_product_attribute_combination` (`id_attribute`, `id_product_attribute`) VALUES
(26, 1),
(28, 2),
(29, 3),
(30, 4),
(33, 5),
(34, 6);

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_attribute_image`
--

CREATE TABLE `ps_product_attribute_image` (
  `id_product_attribute` int(10) UNSIGNED NOT NULL,
  `id_image` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_attribute_shop`
--

CREATE TABLE `ps_product_attribute_shop` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_product_attribute` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint(1) UNSIGNED DEFAULT NULL,
  `minimal_quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_product_attribute_shop`
--

INSERT INTO `ps_product_attribute_shop` (`id_product`, `id_product_attribute`, `id_shop`, `wholesale_price`, `price`, `ecotax`, `weight`, `unit_price_impact`, `default_on`, `minimal_quantity`, `available_date`) VALUES
(22, 1, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 1, '0000-00-00'),
(22, 2, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, 1, '0000-00-00'),
(22, 3, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, 1, '0000-00-00'),
(22, 4, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, 1, '0000-00-00'),
(22, 5, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, 1, '0000-00-00'),
(22, 6, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_carrier`
--

CREATE TABLE `ps_product_carrier` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_carrier_reference` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_country_tax`
--

CREATE TABLE `ps_product_country_tax` (
  `id_product` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_download`
--

CREATE TABLE `ps_product_download` (
  `id_product_download` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) UNSIGNED DEFAULT NULL,
  `nb_downloadable` int(10) UNSIGNED DEFAULT '1',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `is_shareable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_group_reduction_cache`
--

CREATE TABLE `ps_product_group_reduction_cache` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL,
  `reduction` decimal(4,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_lang`
--

CREATE TABLE `ps_product_lang` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_product_lang`
--

INSERT INTO `ps_product_lang` (`id_product`, `id_shop`, `id_lang`, `description`, `description_short`, `link_rewrite`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `available_now`, `available_later`) VALUES
(21, 1, 1, '', '', 'monkey', '', '', '', 'Monkey', '', ''),
(21, 1, 2, '', '', 'monkey', '', '', '', 'Monkey', '', ''),
(21, 1, 3, '', '', 'monkey', '', '', '', 'Monkey', '', ''),
(21, 1, 4, '', '', 'monkey', '', '', '', 'Monkey', '', ''),
(21, 1, 5, '', '', 'monkey', '', '', '', 'Monkey', '', ''),
(22, 1, 1, '', '', 'plastic-glass-holder-badge-and-keychain-pkgh', '', '', '', 'Plastic glass holder badge and keychain PKGH', '', ''),
(22, 1, 2, '', '', 'plastic-glass-holder-badge-and-keychain-pkgh', '', '', '', 'Plastic glass holder badge and keychain PKGH', '', ''),
(22, 1, 3, '', '', 'plastic-glass-holder-badge-and-keychain-pkgh', '', '', '', 'Plastic glass holder badge and keychain PKGH', '', ''),
(22, 1, 4, '', '', 'plastic-glass-holder-badge-and-keychain-pkgh', '', '', '', 'Plastic glass holder badge and keychain PKGH', '', ''),
(22, 1, 5, '', '', 'plastic-glass-holder-badge-and-keychain-pkgh', '', '', '', 'Plastic glass holder badge and keychain PKGH', '', ''),
(23, 1, 1, '', '', 'zamac-hotel-rental-keychain-zhk', '', '', '', 'Zamac hotel & rental keychain ZHK', '', ''),
(23, 1, 2, '', '', 'zamac-hotel-rental-keychain-zhk', '', '', '', 'Zamac hotel & rental keychain ZHK', '', ''),
(23, 1, 3, '', '', 'zamac-hotel-rental-keychain-zhk', '', '', '', 'Zamac hotel & rental keychain ZHK', '', ''),
(23, 1, 4, '', '', 'zamac-hotel-rental-keychain-zhk', '', '', '', 'Zamac hotel & rental keychain ZHK', '', ''),
(23, 1, 5, '', '', 'zamac-hotel-rental-keychain-zhk', '', '', '', 'Zamac hotel & rental keychain ZHK', '', ''),
(24, 1, 1, '', '', '8-figure-aluminium-bottle-opener-keychain-pop8s', '', '', '', '"8" figure aluminium bottle opener keychain POP8S', '', ''),
(24, 1, 2, '', '', '8-figure-aluminium-bottle-opener-keychain-pop8s', '', '', '', '"8" figure aluminium bottle opener keychain POP8S', '', ''),
(24, 1, 3, '', '', '8-figure-aluminium-bottle-opener-keychain-pop8s', '', '', '', '"8" figure aluminium bottle opener keychain POP8S', '', ''),
(24, 1, 4, '', '', '8-figure-aluminium-bottle-opener-keychain-pop8s', '', '', '', '"8" figure aluminium bottle opener keychain POP8S', '', ''),
(24, 1, 5, '', '', '8-figure-aluminium-bottle-opener-keychain-pop8s', '', '', '', '"8" figure aluminium bottle opener keychain POP8S', '', ''),
(25, 1, 1, '', '', 'plastic-key-hanger-phm203', '', '', '', 'Plastic key hanger PHM203', '', ''),
(25, 1, 2, '', '', 'plastic-key-hanger-phm203', '', '', '', 'Plastic key hanger PHM203', '', ''),
(25, 1, 3, '', '', 'plastic-key-hanger-phm203', '', '', '', 'Plastic key hanger PHM203', '', ''),
(25, 1, 4, '', '', 'plastic-key-hanger-phm203', '', '', '', 'Plastic key hanger PHM203', '', ''),
(25, 1, 5, '', '', 'plastic-key-hanger-phm203', '', '', '', 'Plastic key hanger PHM203', '', ''),
(26, 1, 1, '', '', 'cloud', '', '', '', 'Cloud', '', ''),
(26, 1, 2, '', '', 'cloud', '', '', '', 'Cloud', '', ''),
(26, 1, 3, '', '', 'cloud', '', '', '', 'Cloud', '', ''),
(26, 1, 4, '', '', 'cloud', '', '', '', 'Cloud', '', ''),
(26, 1, 5, '', '', 'cloud', '', '', '', 'Cloud', '', ''),
(27, 1, 1, '', '', 'angry-bird', '', '', '', 'Angry Bird', '', ''),
(27, 1, 2, '', '', 'angry-bird', '', '', '', 'Angry Bird', '', ''),
(27, 1, 3, '', '', 'angry-bird', '', '', '', 'Angry Bird', '', ''),
(27, 1, 4, '', '', 'angry-bird', '', '', '', 'Angry Bird', '', ''),
(27, 1, 5, '', '', 'angry-bird', '', '', '', 'Angry Bird', '', ''),
(28, 1, 1, '', '', 'sunset', '', '', '', 'Sunset', '', ''),
(28, 1, 2, '', '', 'sunset', '', '', '', 'Sunset', '', ''),
(28, 1, 3, '', '', 'sunset', '', '', '', 'Sunset', '', ''),
(28, 1, 4, '', '', 'sunset', '', '', '', 'Sunset', '', ''),
(28, 1, 5, '', '', 'sunset', '', '', '', 'Sunset', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_sale`
--

CREATE TABLE `ps_product_sale` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sale_nbr` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_upd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_shop`
--

CREATE TABLE `ps_product_shop` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `id_category_default` int(10) UNSIGNED DEFAULT NULL,
  `id_tax_rules_group` int(11) UNSIGNED NOT NULL,
  `on_sale` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `online_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `minimal_quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_default_attribute` int(10) UNSIGNED DEFAULT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `pack_stock_type` int(11) UNSIGNED NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_product_shop`
--

INSERT INTO `ps_product_shop` (`id_product`, `id_shop`, `id_category_default`, `id_tax_rules_group`, `on_sale`, `online_only`, `ecotax`, `minimal_quantity`, `price`, `wholesale_price`, `unity`, `unit_price_ratio`, `additional_shipping_cost`, `customizable`, `uploadable_files`, `text_fields`, `active`, `redirect_type`, `id_product_redirected`, `available_for_order`, `available_date`, `condition`, `show_price`, `indexed`, `visibility`, `cache_default_attribute`, `advanced_stock_management`, `date_add`, `date_upd`, `pack_stock_type`) VALUES
(21, 1, 46, 0, 0, 0, '0.000000', 1, '0.000000', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2016-08-04 00:32:24', '2016-08-08 02:06:24', 3),
(22, 1, 45, 0, 0, 0, '0.000000', 1, '0.000000', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 1, 0, '2016-08-04 01:37:35', '2016-08-09 22:23:58', 3),
(23, 1, 45, 0, 0, 0, '0.000000', 1, '0.000000', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2016-08-04 01:52:05', '2016-08-10 05:03:53', 3),
(24, 1, 45, 0, 0, 0, '0.000000', 1, '0.000000', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2016-08-04 01:54:39', '2016-08-04 22:52:14', 3),
(25, 1, 45, 0, 0, 0, '0.000000', 1, '0.000000', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2016-08-04 01:57:58', '2016-08-04 02:00:42', 3),
(26, 1, 46, 0, 0, 0, '0.000000', 1, '0.000000', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2016-08-04 02:01:08', '2016-08-04 02:01:37', 3),
(27, 1, 46, 0, 0, 0, '0.000000', 1, '0.000000', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2016-08-04 02:02:01', '2016-08-09 23:20:33', 3),
(28, 1, 46, 0, 0, 0, '0.000000', 1, '0.000000', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2016-08-04 02:04:01', '2016-08-04 02:05:05', 3);

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_supplier`
--

CREATE TABLE `ps_product_supplier` (
  `id_product_supplier` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_product_attribute` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `id_supplier` int(11) UNSIGNED NOT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_supplier_price_te` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_currency` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_product_supplier`
--

INSERT INTO `ps_product_supplier` (`id_product_supplier`, `id_product`, `id_product_attribute`, `id_supplier`, `product_supplier_reference`, `product_supplier_price_te`, `id_currency`) VALUES
(17, 17, 0, 1, '', '0.000000', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_tag`
--

CREATE TABLE `ps_product_tag` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_tag` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_video`
--

CREATE TABLE `ps_product_video` (
  `id_video` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_product_video`
--

INSERT INTO `ps_product_video` (`id_video`, `id_shop`, `id_product`) VALUES
(1, 1, 1),
(3, 1, 3),
(4, 1, 4),
(5, 1, 2),
(6, 1, 5),
(7, 1, 6),
(8, 1, 7),
(9, 1, 8);

-- --------------------------------------------------------

--
-- Structure de la table `ps_product_video_lang`
--

CREATE TABLE `ps_product_video_lang` (
  `id_video` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_product_video_lang`
--

INSERT INTO `ps_product_video_lang` (`id_video`, `id_shop`, `id_product`, `id_lang`, `link`, `name`, `description`, `sort_order`, `status`) VALUES
(1, 1, 1, 1, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'iHealth BLOOD PRESSURE DOCK', '<h2 class="page-title">iHealth BLOOD PRESSURE DOCK promo video</h2>', 1, 1),
(1, 1, 1, 2, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'iHealth BLOOD PRESSURE DOCK', '<h2 class="page-title">iHealth BLOOD PRESSURE DOCK promo video</h2>', 1, 1),
(1, 1, 1, 3, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'iHealth BLOOD PRESSURE DOCK', '<h2 class="page-title">iHealth BLOOD PRESSURE DOCK promo video</h2>', 1, 1),
(1, 1, 1, 4, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'iHealth BLOOD PRESSURE DOCK', '<h2 class="page-title">iHealth BLOOD PRESSURE DOCK promo video</h2>', 1, 1),
(1, 1, 1, 5, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'iHealth BLOOD PRESSURE DOCK', '<h2 class="page-title">iHealth BLOOD PRESSURE DOCK promo video</h2>', 1, 1),
(3, 1, 3, 1, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Edan Pulse Oximeter', '<h2 class="page-title">Edan Pulse Oximeter promo video</h2>', 1, 1),
(3, 1, 3, 2, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Edan Pulse Oximeter', '<h2 class="page-title">Edan Pulse Oximeter promo video</h2>', 1, 1),
(3, 1, 3, 3, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Edan Pulse Oximeter', '<h2 class="page-title">Edan Pulse Oximeter promo video</h2>', 1, 1),
(3, 1, 3, 4, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Edan Pulse Oximeter', '<h2 class="page-title">Edan Pulse Oximeter promo video</h2>', 1, 1),
(3, 1, 3, 5, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Edan Pulse Oximeter', '<h2 class="page-title">Edan Pulse Oximeter promo video</h2>', 1, 1),
(4, 1, 4, 1, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Blood Pressure Bluetooth Monitor', '<h2 class="page-title">Blood Pressure Bluetooth Monitor promo video</h2>', 1, 1),
(4, 1, 4, 2, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Blood Pressure Bluetooth Monitor', '<h2 class="page-title">Blood Pressure Bluetooth Monitor promo video</h2>', 1, 1),
(4, 1, 4, 3, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Blood Pressure Bluetooth Monitor', '<h2 class="page-title">Blood Pressure Bluetooth Monitor promo video</h2>', 1, 1),
(4, 1, 4, 4, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Blood Pressure Bluetooth Monitor', '<h2 class="page-title">Blood Pressure Bluetooth Monitor promo video</h2>', 1, 1),
(4, 1, 4, 5, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Blood Pressure Bluetooth Monitor', '<h2 class="page-title">Blood Pressure Bluetooth Monitor promo video</h2>', 1, 1),
(5, 1, 2, 1, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'iHealth WIRELESS BLOOD PRESSURE MONITOR', '<h2 class="page-title">iHealth WIRELESS BLOOD PRESSURE MONITOR promo video</h2>', 1, 1),
(5, 1, 2, 2, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'iHealth WIRELESS BLOOD PRESSURE MONITOR', '<h2 class="page-title">iHealth WIRELESS BLOOD PRESSURE MONITOR promo video</h2>', 1, 1),
(5, 1, 2, 3, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'iHealth WIRELESS BLOOD PRESSURE MONITOR', '<h2 class="page-title">iHealth WIRELESS BLOOD PRESSURE MONITOR promo video</h2>', 1, 1),
(5, 1, 2, 4, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'iHealth WIRELESS BLOOD PRESSURE MONITOR', '<h2 class="page-title">iHealth WIRELESS BLOOD PRESSURE MONITOR promo video</h2>', 1, 1),
(5, 1, 2, 5, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'iHealth WIRELESS BLOOD PRESSURE MONITOR', '<h2 class="page-title">iHealth WIRELESS BLOOD PRESSURE MONITOR promo video</h2>', 1, 1),
(6, 1, 5, 1, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Blood Pressure Bluetooth Monitor', '<h2 class="page-title">Blood Pressure Bluetooth Monitor promo video</h2>', 1, 1),
(6, 1, 5, 2, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Blood Pressure Bluetooth Monitor', '<h2 class="page-title">Blood Pressure Bluetooth Monitor promo video</h2>', 1, 1),
(6, 1, 5, 3, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Blood Pressure Bluetooth Monitor', '<h2 class="page-title">Blood Pressure Bluetooth Monitor promo video</h2>', 1, 1),
(6, 1, 5, 4, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Blood Pressure Bluetooth Monitor', '<h2 class="page-title">Blood Pressure Bluetooth Monitor promo video</h2>', 1, 1),
(6, 1, 5, 5, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Blood Pressure Bluetooth Monitor', '<h2 class="page-title">Blood Pressure Bluetooth Monitor promo video</h2>', 1, 1),
(7, 1, 6, 1, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Maximum Protection Dental Guard', '<h2 class="page-title">Maximum Protection Dental Guard promo video</h2>', 1, 1),
(7, 1, 6, 2, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Maximum Protection Dental Guard', '<h2 class="page-title">Maximum Protection Dental Guard promo video</h2>', 1, 1),
(7, 1, 6, 3, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Maximum Protection Dental Guard', '<h2 class="page-title">Maximum Protection Dental Guard promo video</h2>', 1, 1),
(7, 1, 6, 4, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Maximum Protection Dental Guard', '<h2 class="page-title">Maximum Protection Dental Guard promo video</h2>', 1, 1),
(7, 1, 6, 5, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Maximum Protection Dental Guard', '<h2 class="page-title">Maximum Protection Dental Guard promo video</h2>', 1, 1),
(8, 1, 7, 1, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Wrist Blood Pressure Monitor', '<h2 class="page-title">Wrist Blood Pressure Monitor promo video</h2>', 1, 1),
(8, 1, 7, 2, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Wrist Blood Pressure Monitor', '<h2 class="page-title">Wrist Blood Pressure Monitor promo video</h2>', 1, 1),
(8, 1, 7, 3, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Wrist Blood Pressure Monitor', '<h2 class="page-title">Wrist Blood Pressure Monitor promo video</h2>', 1, 1),
(8, 1, 7, 4, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Wrist Blood Pressure Monitor', '<h2 class="page-title">Wrist Blood Pressure Monitor promo video</h2>', 1, 1),
(8, 1, 7, 5, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Wrist Blood Pressure Monitor', '<h2 class="page-title">Wrist Blood Pressure Monitor promo video</h2>', 1, 1),
(9, 1, 8, 1, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Scrub Betweens Dental Pick', '<h2 class="page-title">Scrub Betweens Dental Pick promo video</h2>', 1, 1),
(9, 1, 8, 2, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Scrub Betweens Dental Pick', '<h2 class="page-title">Scrub Betweens Dental Pick promo video</h2>', 1, 1),
(9, 1, 8, 3, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Scrub Betweens Dental Pick', '<h2 class="page-title">Scrub Betweens Dental Pick promo video</h2>', 1, 1),
(9, 1, 8, 4, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Scrub Betweens Dental Pick', '<h2 class="page-title">Scrub Betweens Dental Pick promo video</h2>', 1, 1),
(9, 1, 8, 5, 'https://www.youtube.com/embed/_-TxmDjlmGc', 'Scrub Betweens Dental Pick', '<h2 class="page-title">Scrub Betweens Dental Pick promo video</h2>', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_profile`
--

CREATE TABLE `ps_profile` (
  `id_profile` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_profile`
--

INSERT INTO `ps_profile` (`id_profile`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Structure de la table `ps_profile_lang`
--

CREATE TABLE `ps_profile_lang` (
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_profile` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_profile_lang`
--

INSERT INTO `ps_profile_lang` (`id_lang`, `id_profile`, `name`) VALUES
(1, 1, 'SuperAdmin'),
(2, 1, 'SuperAdmin'),
(3, 1, 'SuperAdmin'),
(4, 1, 'SuperAdmin'),
(5, 1, 'SuperAdmin'),
(1, 2, 'Logistician'),
(2, 2, 'Logisticien'),
(3, 2, 'Logistician'),
(4, 2, 'Logistician'),
(5, 2, 'Logistician'),
(1, 3, 'Translator'),
(2, 3, 'Traducteur'),
(3, 3, 'Translator'),
(4, 3, 'Translator'),
(5, 3, 'Translator'),
(1, 4, 'Salesman'),
(2, 4, 'Commercial'),
(3, 4, 'Salesman'),
(4, 4, 'Salesman'),
(5, 4, 'Salesman');

-- --------------------------------------------------------

--
-- Structure de la table `ps_quick_access`
--

CREATE TABLE `ps_quick_access` (
  `id_quick_access` int(10) UNSIGNED NOT NULL,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_quick_access`
--

INSERT INTO `ps_quick_access` (`id_quick_access`, `new_window`, `link`) VALUES
(1, 0, 'index.php?controller=AdminCategories&addcategory'),
(2, 0, 'index.php?controller=AdminProducts&addproduct'),
(3, 0, 'index.php?controller=AdminCartRules&addcart_rule');

-- --------------------------------------------------------

--
-- Structure de la table `ps_quick_access_lang`
--

CREATE TABLE `ps_quick_access_lang` (
  `id_quick_access` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_quick_access_lang`
--

INSERT INTO `ps_quick_access_lang` (`id_quick_access`, `id_lang`, `name`) VALUES
(1, 1, 'New category'),
(1, 2, 'Nouvelle catégorie'),
(1, 3, 'New category'),
(1, 4, 'New category'),
(1, 5, 'New category'),
(2, 1, 'New product'),
(2, 2, 'Nouveau produit'),
(2, 3, 'New product'),
(2, 4, 'New product'),
(2, 5, 'New product'),
(3, 1, 'New voucher'),
(3, 2, 'Nouveau bon de réduction'),
(3, 3, 'New voucher'),
(3, 4, 'New voucher'),
(3, 5, 'New voucher');

-- --------------------------------------------------------

--
-- Structure de la table `ps_range_price`
--

CREATE TABLE `ps_range_price` (
  `id_range_price` int(10) UNSIGNED NOT NULL,
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_range_weight`
--

CREATE TABLE `ps_range_weight` (
  `id_range_weight` int(10) UNSIGNED NOT NULL,
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_range_weight`
--

INSERT INTO `ps_range_weight` (`id_range_weight`, `id_carrier`, `delimiter1`, `delimiter2`) VALUES
(1, 6, '0.000000', '10000.000000');

-- --------------------------------------------------------

--
-- Structure de la table `ps_referrer`
--

CREATE TABLE `ps_referrer` (
  `id_referrer` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_referrer_cache`
--

CREATE TABLE `ps_referrer_cache` (
  `id_connections_source` int(11) UNSIGNED NOT NULL,
  `id_referrer` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_referrer_shop`
--

CREATE TABLE `ps_referrer_shop` (
  `id_referrer` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_visitors` int(11) DEFAULT NULL,
  `cache_visits` int(11) DEFAULT NULL,
  `cache_pages` int(11) DEFAULT NULL,
  `cache_registrations` int(11) DEFAULT NULL,
  `cache_orders` int(11) DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_request_sql`
--

CREATE TABLE `ps_request_sql` (
  `id_request_sql` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sql` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_required_field`
--

CREATE TABLE `ps_required_field` (
  `id_required_field` int(11) NOT NULL,
  `object_name` varchar(32) NOT NULL,
  `field_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_risk`
--

CREATE TABLE `ps_risk` (
  `id_risk` int(11) UNSIGNED NOT NULL,
  `percent` tinyint(3) NOT NULL,
  `color` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_risk`
--

INSERT INTO `ps_risk` (`id_risk`, `percent`, `color`) VALUES
(1, 0, '#32CD32'),
(2, 35, '#FF8C00'),
(3, 75, '#DC143C'),
(4, 100, '#ec2e15');

-- --------------------------------------------------------

--
-- Structure de la table `ps_risk_lang`
--

CREATE TABLE `ps_risk_lang` (
  `id_risk` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_risk_lang`
--

INSERT INTO `ps_risk_lang` (`id_risk`, `id_lang`, `name`) VALUES
(1, 1, 'None'),
(1, 2, 'Aucun'),
(1, 3, 'None'),
(1, 4, 'None'),
(1, 5, 'None'),
(2, 1, 'Low'),
(2, 2, 'Faible'),
(2, 3, 'Low'),
(2, 4, 'Low'),
(2, 5, 'Low'),
(3, 1, 'Medium'),
(3, 2, 'Moyen'),
(3, 3, 'Medium'),
(3, 4, 'Medium'),
(3, 5, 'Medium'),
(4, 1, 'High'),
(4, 2, 'Élevé'),
(4, 3, 'High'),
(4, 4, 'High'),
(4, 5, 'High');

-- --------------------------------------------------------

--
-- Structure de la table `ps_scene`
--

CREATE TABLE `ps_scene` (
  `id_scene` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_scene_category`
--

CREATE TABLE `ps_scene_category` (
  `id_scene` int(10) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_scene_lang`
--

CREATE TABLE `ps_scene_lang` (
  `id_scene` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_scene_products`
--

CREATE TABLE `ps_scene_products` (
  `id_scene` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `x_axis` int(4) NOT NULL,
  `y_axis` int(4) NOT NULL,
  `zone_width` int(3) NOT NULL,
  `zone_height` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_scene_shop`
--

CREATE TABLE `ps_scene_shop` (
  `id_scene` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_search_engine`
--

CREATE TABLE `ps_search_engine` (
  `id_search_engine` int(10) UNSIGNED NOT NULL,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_search_engine`
--

INSERT INTO `ps_search_engine` (`id_search_engine`, `server`, `getvar`) VALUES
(1, 'google', 'q'),
(2, 'aol', 'q'),
(3, 'yandex', 'text'),
(4, 'ask.com', 'q'),
(5, 'nhl.com', 'q'),
(6, 'yahoo', 'p'),
(7, 'baidu', 'wd'),
(8, 'lycos', 'query'),
(9, 'exalead', 'q'),
(10, 'search.live', 'q'),
(11, 'voila', 'rdata'),
(12, 'altavista', 'q'),
(13, 'bing', 'q'),
(14, 'daum', 'q'),
(15, 'eniro', 'search_word'),
(16, 'naver', 'query'),
(17, 'msn', 'q'),
(18, 'netscape', 'query'),
(19, 'cnn', 'query'),
(20, 'about', 'terms'),
(21, 'mamma', 'query'),
(22, 'alltheweb', 'q'),
(23, 'virgilio', 'qs'),
(24, 'alice', 'qs'),
(25, 'najdi', 'q'),
(26, 'mama', 'query'),
(27, 'seznam', 'q'),
(28, 'onet', 'qt'),
(29, 'szukacz', 'q'),
(30, 'yam', 'k'),
(31, 'pchome', 'q'),
(32, 'kvasir', 'q'),
(33, 'sesam', 'q'),
(34, 'ozu', 'q'),
(35, 'terra', 'query'),
(36, 'mynet', 'q'),
(37, 'ekolay', 'q'),
(38, 'rambler', 'words');

-- --------------------------------------------------------

--
-- Structure de la table `ps_search_index`
--

CREATE TABLE `ps_search_index` (
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_word` int(11) UNSIGNED NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_search_index`
--

INSERT INTO `ps_search_index` (`id_product`, `id_word`, `weight`) VALUES
(21, 1, 6),
(21, 2, 3),
(26, 2, 3),
(27, 2, 3),
(28, 2, 3),
(21, 3, 6),
(21, 4, 3),
(26, 4, 3),
(27, 4, 3),
(28, 4, 3),
(21, 5, 6),
(21, 6, 3),
(26, 6, 3),
(27, 6, 3),
(28, 6, 3),
(21, 7, 6),
(21, 8, 3),
(26, 8, 3),
(27, 8, 3),
(28, 8, 3),
(21, 9, 6),
(21, 10, 3),
(26, 10, 3),
(27, 10, 3),
(28, 10, 3),
(21, 11, 6),
(21, 12, 3),
(26, 12, 3),
(28, 12, 3),
(21, 13, 6),
(21, 14, 3),
(26, 14, 3),
(28, 14, 3),
(21, 15, 6),
(21, 16, 3),
(26, 16, 3),
(28, 16, 3),
(21, 17, 6),
(21, 18, 3),
(26, 18, 3),
(28, 18, 3),
(21, 19, 6),
(21, 20, 3),
(26, 20, 3),
(28, 20, 3),
(22, 21, 6),
(25, 21, 6),
(22, 22, 6),
(22, 23, 6),
(22, 24, 6),
(22, 25, 6),
(23, 25, 6),
(24, 25, 6),
(22, 26, 16),
(22, 27, 3),
(23, 27, 3),
(24, 27, 3),
(25, 27, 3),
(22, 28, 6),
(25, 28, 6),
(22, 29, 6),
(22, 30, 6),
(22, 31, 6),
(22, 32, 6),
(22, 33, 6),
(23, 33, 6),
(24, 33, 6),
(22, 34, 16),
(22, 35, 3),
(23, 35, 3),
(24, 35, 3),
(25, 35, 3),
(22, 36, 6),
(25, 36, 6),
(22, 37, 6),
(22, 38, 6),
(22, 39, 6),
(22, 40, 6),
(22, 41, 6),
(23, 41, 6),
(24, 41, 6),
(22, 42, 16),
(22, 43, 3),
(23, 43, 3),
(24, 43, 3),
(25, 43, 3),
(22, 44, 6),
(25, 44, 6),
(22, 45, 6),
(22, 46, 6),
(22, 47, 6),
(22, 48, 6),
(22, 49, 6),
(23, 49, 6),
(24, 49, 6),
(22, 50, 16),
(22, 51, 3),
(23, 51, 3),
(24, 51, 3),
(25, 51, 3),
(22, 52, 6),
(25, 52, 6),
(22, 53, 6),
(22, 54, 6),
(22, 55, 6),
(22, 56, 6),
(22, 57, 6),
(23, 57, 6),
(24, 57, 6),
(22, 58, 16),
(22, 59, 3),
(23, 59, 3),
(24, 59, 3),
(25, 59, 3),
(25, 60, 6),
(24, 64, 6),
(24, 66, 3),
(25, 66, 3),
(25, 67, 6),
(24, 72, 6),
(24, 74, 3),
(25, 74, 3),
(25, 75, 6),
(24, 80, 6),
(24, 82, 3),
(25, 82, 3),
(25, 83, 6),
(24, 88, 6),
(24, 90, 3),
(25, 90, 3),
(25, 91, 6),
(24, 96, 6),
(24, 98, 3),
(25, 98, 3),
(23, 99, 6),
(23, 100, 6),
(23, 101, 6),
(23, 102, 16),
(23, 105, 6),
(23, 106, 6),
(23, 107, 6),
(23, 108, 16),
(23, 111, 6),
(23, 112, 6),
(23, 113, 6),
(23, 114, 16),
(23, 117, 6),
(23, 118, 6),
(23, 119, 6),
(23, 120, 16),
(23, 123, 6),
(23, 124, 6),
(23, 125, 6),
(23, 126, 16),
(24, 159, 6),
(24, 160, 6),
(24, 161, 6),
(24, 162, 6),
(24, 163, 16),
(24, 166, 6),
(24, 167, 6),
(24, 168, 6),
(24, 169, 6),
(24, 170, 16),
(24, 173, 6),
(24, 174, 6),
(24, 175, 6),
(24, 176, 6),
(24, 177, 16),
(24, 180, 6),
(24, 181, 6),
(24, 182, 6),
(24, 183, 6),
(24, 184, 16),
(24, 187, 6),
(24, 188, 6),
(24, 189, 6),
(24, 190, 6),
(24, 191, 16),
(24, 194, 6),
(24, 195, 6),
(24, 196, 6),
(24, 197, 6),
(24, 198, 16),
(24, 201, 6),
(24, 202, 6),
(24, 203, 6),
(24, 204, 6),
(24, 205, 16),
(24, 208, 6),
(24, 209, 6),
(24, 210, 6),
(24, 211, 6),
(24, 212, 16),
(24, 215, 6),
(24, 216, 6),
(24, 217, 6),
(24, 218, 6),
(24, 219, 16),
(24, 222, 6),
(24, 223, 6),
(24, 224, 6),
(24, 225, 6),
(24, 226, 16),
(25, 229, 6),
(25, 230, 6),
(25, 231, 16),
(25, 234, 6),
(25, 235, 6),
(25, 236, 16),
(25, 239, 6),
(25, 240, 6),
(25, 241, 16),
(25, 244, 6),
(25, 245, 6),
(25, 246, 16),
(25, 249, 6),
(25, 250, 6),
(25, 251, 16),
(25, 254, 6),
(25, 255, 6),
(25, 256, 16),
(25, 259, 6),
(25, 260, 6),
(25, 261, 16),
(25, 264, 6),
(25, 265, 6),
(25, 266, 16),
(25, 269, 6),
(25, 270, 6),
(25, 271, 16),
(25, 274, 6),
(25, 275, 6),
(25, 276, 16),
(26, 279, 6),
(26, 281, 6),
(26, 283, 6),
(26, 285, 6),
(26, 287, 6),
(26, 289, 6),
(26, 291, 6),
(26, 293, 6),
(26, 295, 6),
(26, 297, 6),
(27, 299, 6),
(27, 300, 6),
(27, 302, 6),
(27, 303, 6),
(27, 305, 6),
(27, 306, 6),
(27, 308, 6),
(27, 309, 6),
(27, 311, 6),
(27, 312, 6),
(28, 329, 6),
(28, 331, 6),
(28, 333, 6),
(28, 335, 6),
(28, 337, 6),
(28, 339, 6),
(28, 341, 6),
(28, 343, 6),
(28, 345, 6),
(28, 347, 6),
(22, 387, 2),
(22, 395, 2),
(22, 404, 2),
(22, 413, 2),
(22, 422, 2),
(22, 475, 2),
(22, 484, 2),
(22, 494, 2),
(22, 504, 2),
(22, 514, 2),
(22, 524, 2),
(22, 534, 2),
(22, 545, 2),
(22, 556, 2),
(22, 567, 2),
(22, 578, 2),
(22, 589, 2),
(22, 601, 2),
(22, 613, 2),
(22, 625, 2),
(22, 637, 2),
(22, 649, 2),
(22, 662, 2),
(22, 675, 2),
(22, 688, 2),
(22, 701, 2),
(22, 714, 2),
(22, 728, 2),
(22, 742, 2),
(22, 756, 2),
(23, 1160, 2),
(23, 1161, 2),
(23, 1168, 2),
(23, 1169, 2),
(23, 1176, 2),
(23, 1177, 2),
(23, 1184, 2),
(23, 1185, 2),
(23, 1192, 2),
(23, 1193, 2);

-- --------------------------------------------------------

--
-- Structure de la table `ps_search_word`
--

CREATE TABLE `ps_search_word` (
  `id_word` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `word` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_search_word`
--

INSERT INTO `ps_search_word` (`id_word`, `id_shop`, `id_lang`, `word`) VALUES
(1161, 1, 1, '3116'),
(1160, 1, 1, '60252'),
(160, 1, 1, 'aluminium'),
(299, 1, 1, 'angry'),
(24, 1, 1, 'badge'),
(300, 1, 1, 'bird'),
(161, 1, 1, 'bottle'),
(279, 1, 1, 'cloud'),
(2, 1, 1, 'designs'),
(159, 1, 1, 'figure'),
(22, 1, 1, 'glass'),
(230, 1, 1, 'hanger'),
(23, 1, 1, 'holder'),
(100, 1, 1, 'hotel'),
(229, 1, 1, 'key'),
(25, 1, 1, 'keychain'),
(1, 1, 1, 'monkey'),
(162, 1, 1, 'opener'),
(231, 1, 1, 'phm203'),
(26, 1, 1, 'pkgh'),
(21, 1, 1, 'plastic'),
(701, 1, 1, 'pms032c'),
(578, 1, 1, 'pms1'),
(637, 1, 1, 'pms116c'),
(387, 1, 1, 'pms287c'),
(475, 1, 1, 'pmsblack'),
(524, 1, 1, 'pmsgreenc'),
(163, 1, 1, 'pop8s'),
(27, 1, 1, 'products'),
(101, 1, 1, 'rental'),
(329, 1, 1, 'sunset'),
(99, 1, 1, 'zamac'),
(102, 1, 1, 'zhk'),
(195, 2, 1, 'aluminium'),
(314, 2, 1, 'angry'),
(63, 2, 1, 'badge'),
(315, 2, 1, 'bird'),
(196, 2, 1, 'bottle'),
(289, 2, 1, 'cloud'),
(12, 2, 1, 'designs'),
(194, 2, 1, 'figure'),
(61, 2, 1, 'glass'),
(255, 2, 1, 'hanger'),
(62, 2, 1, 'holder'),
(130, 2, 1, 'hotel'),
(254, 2, 1, 'key'),
(64, 2, 1, 'keychain'),
(11, 2, 1, 'monkey'),
(197, 2, 1, 'opener'),
(256, 2, 1, 'phm203'),
(65, 2, 1, 'pkgh'),
(60, 2, 1, 'plastic'),
(198, 2, 1, 'pop8s'),
(66, 2, 1, 'products'),
(131, 2, 1, 'rental'),
(339, 2, 1, 'sunset'),
(129, 2, 1, 'zamac'),
(132, 2, 1, 'zhk'),
(1169, 1, 2, '3116'),
(1168, 1, 2, '60252'),
(167, 1, 2, 'aluminium'),
(32, 1, 2, 'and'),
(302, 1, 2, 'angry'),
(31, 1, 2, 'badge'),
(303, 1, 2, 'bird'),
(168, 1, 2, 'bottle'),
(281, 1, 2, 'cloud'),
(4, 1, 2, 'designs'),
(166, 1, 2, 'figure'),
(29, 1, 2, 'glass'),
(235, 1, 2, 'hanger'),
(30, 1, 2, 'holder'),
(106, 1, 2, 'hotel'),
(234, 1, 2, 'key'),
(33, 1, 2, 'keychain'),
(3, 1, 2, 'monkey'),
(169, 1, 2, 'opener'),
(236, 1, 2, 'phm203'),
(34, 1, 2, 'pkgh'),
(28, 1, 2, 'plastic'),
(714, 1, 2, 'pms032c'),
(589, 1, 2, 'pms1'),
(649, 1, 2, 'pms116c'),
(395, 1, 2, 'pms287c'),
(484, 1, 2, 'pmsblack'),
(534, 1, 2, 'pmsgreenc'),
(170, 1, 2, 'pop8s'),
(35, 1, 2, 'products'),
(107, 1, 2, 'rental'),
(331, 1, 2, 'sunset'),
(105, 1, 2, 'zamac'),
(108, 1, 2, 'zhk'),
(202, 2, 2, 'aluminium'),
(71, 2, 2, 'and'),
(317, 2, 2, 'angry'),
(70, 2, 2, 'badge'),
(318, 2, 2, 'bird'),
(203, 2, 2, 'bottle'),
(291, 2, 2, 'cloud'),
(14, 2, 2, 'designs'),
(201, 2, 2, 'figure'),
(68, 2, 2, 'glass'),
(260, 2, 2, 'hanger'),
(69, 2, 2, 'holder'),
(136, 2, 2, 'hotel'),
(259, 2, 2, 'key'),
(72, 2, 2, 'keychain'),
(13, 2, 2, 'monkey'),
(204, 2, 2, 'opener'),
(261, 2, 2, 'phm203'),
(73, 2, 2, 'pkgh'),
(67, 2, 2, 'plastic'),
(205, 2, 2, 'pop8s'),
(74, 2, 2, 'products'),
(137, 2, 2, 'rental'),
(341, 2, 2, 'sunset'),
(135, 2, 2, 'zamac'),
(138, 2, 2, 'zhk'),
(1177, 1, 3, '3116'),
(1176, 1, 3, '60252'),
(174, 1, 3, 'aluminium'),
(40, 1, 3, 'and'),
(305, 1, 3, 'angry'),
(39, 1, 3, 'badge'),
(306, 1, 3, 'bird'),
(175, 1, 3, 'bottle'),
(283, 1, 3, 'cloud'),
(6, 1, 3, 'designs'),
(173, 1, 3, 'figure'),
(37, 1, 3, 'glass'),
(240, 1, 3, 'hanger'),
(38, 1, 3, 'holder'),
(112, 1, 3, 'hotel'),
(239, 1, 3, 'key'),
(41, 1, 3, 'keychain'),
(5, 1, 3, 'monkey'),
(176, 1, 3, 'opener'),
(241, 1, 3, 'phm203'),
(42, 1, 3, 'pkgh'),
(36, 1, 3, 'plastic'),
(728, 1, 3, 'pms032c'),
(601, 1, 3, 'pms1'),
(662, 1, 3, 'pms116c'),
(404, 1, 3, 'pms287c'),
(494, 1, 3, 'pmsblack'),
(545, 1, 3, 'pmsgreenc'),
(177, 1, 3, 'pop8s'),
(43, 1, 3, 'products'),
(113, 1, 3, 'rental'),
(333, 1, 3, 'sunset'),
(111, 1, 3, 'zamac'),
(114, 1, 3, 'zhk'),
(209, 2, 3, 'aluminium'),
(79, 2, 3, 'and'),
(320, 2, 3, 'angry'),
(78, 2, 3, 'badge'),
(321, 2, 3, 'bird'),
(210, 2, 3, 'bottle'),
(293, 2, 3, 'cloud'),
(16, 2, 3, 'designs'),
(208, 2, 3, 'figure'),
(76, 2, 3, 'glass'),
(265, 2, 3, 'hanger'),
(77, 2, 3, 'holder'),
(142, 2, 3, 'hotel'),
(264, 2, 3, 'key'),
(80, 2, 3, 'keychain'),
(15, 2, 3, 'monkey'),
(211, 2, 3, 'opener'),
(266, 2, 3, 'phm203'),
(81, 2, 3, 'pkgh'),
(75, 2, 3, 'plastic'),
(212, 2, 3, 'pop8s'),
(82, 2, 3, 'products'),
(143, 2, 3, 'rental'),
(343, 2, 3, 'sunset'),
(141, 2, 3, 'zamac'),
(144, 2, 3, 'zhk'),
(1185, 1, 4, '3116'),
(1184, 1, 4, '60252'),
(181, 1, 4, 'aluminium'),
(48, 1, 4, 'and'),
(308, 1, 4, 'angry'),
(47, 1, 4, 'badge'),
(309, 1, 4, 'bird'),
(182, 1, 4, 'bottle'),
(285, 1, 4, 'cloud'),
(8, 1, 4, 'designs'),
(180, 1, 4, 'figure'),
(45, 1, 4, 'glass'),
(245, 1, 4, 'hanger'),
(46, 1, 4, 'holder'),
(118, 1, 4, 'hotel'),
(244, 1, 4, 'key'),
(49, 1, 4, 'keychain'),
(7, 1, 4, 'monkey'),
(183, 1, 4, 'opener'),
(246, 1, 4, 'phm203'),
(50, 1, 4, 'pkgh'),
(44, 1, 4, 'plastic'),
(742, 1, 4, 'pms032c'),
(613, 1, 4, 'pms1'),
(675, 1, 4, 'pms116c'),
(413, 1, 4, 'pms287c'),
(504, 1, 4, 'pmsblack'),
(556, 1, 4, 'pmsgreenc'),
(184, 1, 4, 'pop8s'),
(51, 1, 4, 'products'),
(119, 1, 4, 'rental'),
(335, 1, 4, 'sunset'),
(117, 1, 4, 'zamac'),
(120, 1, 4, 'zhk'),
(216, 2, 4, 'aluminium'),
(87, 2, 4, 'and'),
(323, 2, 4, 'angry'),
(86, 2, 4, 'badge'),
(324, 2, 4, 'bird'),
(217, 2, 4, 'bottle'),
(295, 2, 4, 'cloud'),
(18, 2, 4, 'designs'),
(215, 2, 4, 'figure'),
(84, 2, 4, 'glass'),
(270, 2, 4, 'hanger'),
(85, 2, 4, 'holder'),
(148, 2, 4, 'hotel'),
(269, 2, 4, 'key'),
(88, 2, 4, 'keychain'),
(17, 2, 4, 'monkey'),
(218, 2, 4, 'opener'),
(271, 2, 4, 'phm203'),
(89, 2, 4, 'pkgh'),
(83, 2, 4, 'plastic'),
(219, 2, 4, 'pop8s'),
(90, 2, 4, 'products'),
(149, 2, 4, 'rental'),
(345, 2, 4, 'sunset'),
(147, 2, 4, 'zamac'),
(150, 2, 4, 'zhk'),
(1193, 1, 5, '3116'),
(1192, 1, 5, '60252'),
(188, 1, 5, 'aluminium'),
(56, 1, 5, 'and'),
(311, 1, 5, 'angry'),
(55, 1, 5, 'badge'),
(312, 1, 5, 'bird'),
(189, 1, 5, 'bottle'),
(287, 1, 5, 'cloud'),
(10, 1, 5, 'designs'),
(187, 1, 5, 'figure'),
(53, 1, 5, 'glass'),
(250, 1, 5, 'hanger'),
(54, 1, 5, 'holder'),
(124, 1, 5, 'hotel'),
(249, 1, 5, 'key'),
(57, 1, 5, 'keychain'),
(9, 1, 5, 'monkey'),
(190, 1, 5, 'opener'),
(251, 1, 5, 'phm203'),
(58, 1, 5, 'pkgh'),
(52, 1, 5, 'plastic'),
(756, 1, 5, 'pms032c'),
(625, 1, 5, 'pms1'),
(688, 1, 5, 'pms116c'),
(422, 1, 5, 'pms287c'),
(514, 1, 5, 'pmsblack'),
(567, 1, 5, 'pmsgreenc'),
(191, 1, 5, 'pop8s'),
(59, 1, 5, 'products'),
(125, 1, 5, 'rental'),
(337, 1, 5, 'sunset'),
(123, 1, 5, 'zamac'),
(126, 1, 5, 'zhk'),
(223, 2, 5, 'aluminium'),
(95, 2, 5, 'and'),
(326, 2, 5, 'angry'),
(94, 2, 5, 'badge'),
(327, 2, 5, 'bird'),
(224, 2, 5, 'bottle'),
(297, 2, 5, 'cloud'),
(20, 2, 5, 'designs'),
(222, 2, 5, 'figure'),
(92, 2, 5, 'glass'),
(275, 2, 5, 'hanger'),
(93, 2, 5, 'holder'),
(154, 2, 5, 'hotel'),
(274, 2, 5, 'key'),
(96, 2, 5, 'keychain'),
(19, 2, 5, 'monkey'),
(225, 2, 5, 'opener'),
(276, 2, 5, 'phm203'),
(97, 2, 5, 'pkgh'),
(91, 2, 5, 'plastic'),
(226, 2, 5, 'pop8s'),
(98, 2, 5, 'products'),
(155, 2, 5, 'rental'),
(347, 2, 5, 'sunset'),
(153, 2, 5, 'zamac'),
(156, 2, 5, 'zhk');

-- --------------------------------------------------------

--
-- Structure de la table `ps_sekeyword`
--

CREATE TABLE `ps_sekeyword` (
  `id_sekeyword` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_shop`
--

CREATE TABLE `ps_shop` (
  `id_shop` int(11) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `id_category` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_theme` int(1) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_shop`
--

INSERT INTO `ps_shop` (`id_shop`, `id_shop_group`, `name`, `id_category`, `id_theme`, `active`, `deleted`) VALUES
(1, 1, 'Custom keychain shop', 2, 2, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_shop_group`
--

CREATE TABLE `ps_shop_group` (
  `id_shop_group` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `share_customer` tinyint(1) NOT NULL,
  `share_order` tinyint(1) NOT NULL,
  `share_stock` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_shop_group`
--

INSERT INTO `ps_shop_group` (`id_shop_group`, `name`, `share_customer`, `share_order`, `share_stock`, `active`, `deleted`) VALUES
(1, 'Default', 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_shop_url`
--

CREATE TABLE `ps_shop_url` (
  `id_shop_url` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `domain` varchar(150) NOT NULL,
  `domain_ssl` varchar(150) NOT NULL,
  `physical_uri` varchar(64) NOT NULL,
  `virtual_uri` varchar(64) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_shop_url`
--

INSERT INTO `ps_shop_url` (`id_shop_url`, `id_shop`, `domain`, `domain_ssl`, `physical_uri`, `virtual_uri`, `main`, `active`) VALUES
(1, 1, 'localhost', 'localhost', '/shop/', '', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_smarty_cache`
--

CREATE TABLE `ps_smarty_cache` (
  `id_smarty_cache` char(40) NOT NULL,
  `name` char(40) NOT NULL,
  `cache_id` varchar(254) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_smarty_last_flush`
--

CREATE TABLE `ps_smarty_last_flush` (
  `type` enum('compile','template') NOT NULL,
  `last_flush` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_smarty_last_flush`
--

INSERT INTO `ps_smarty_last_flush` (`type`, `last_flush`) VALUES
('compile', '2016-08-02 18:02:38'),
('template', '2016-08-02 18:02:38');

-- --------------------------------------------------------

--
-- Structure de la table `ps_smarty_lazy_cache`
--

CREATE TABLE `ps_smarty_lazy_cache` (
  `template_hash` varchar(32) NOT NULL DEFAULT '',
  `cache_id` varchar(255) NOT NULL DEFAULT '',
  `compile_id` varchar(32) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_specific_price`
--

CREATE TABLE `ps_specific_price` (
  `id_specific_price` int(10) UNSIGNED NOT NULL,
  `id_specific_price_rule` int(11) UNSIGNED NOT NULL,
  `id_cart` int(11) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop_group` int(11) UNSIGNED NOT NULL,
  `id_currency` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_product_attribute` int(10) UNSIGNED NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `from_quantity` mediumint(8) UNSIGNED NOT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_specific_price_priority`
--

CREATE TABLE `ps_specific_price_priority` (
  `id_specific_price_priority` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `priority` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_specific_price_priority`
--

INSERT INTO `ps_specific_price_priority` (`id_specific_price_priority`, `id_product`, `priority`) VALUES
(1, 1, 'id_shop;id_currency;id_country;id_group'),
(5, 21, 'id_shop;id_currency;id_country;id_group'),
(8, 22, 'id_shop;id_currency;id_country;id_group'),
(13, 23, 'id_shop;id_currency;id_country;id_group'),
(15, 24, 'id_shop;id_currency;id_country;id_group'),
(17, 25, 'id_shop;id_currency;id_country;id_group'),
(18, 26, 'id_shop;id_currency;id_country;id_group'),
(19, 27, 'id_shop;id_currency;id_country;id_group'),
(21, 28, 'id_shop;id_currency;id_country;id_group');

-- --------------------------------------------------------

--
-- Structure de la table `ps_specific_price_rule`
--

CREATE TABLE `ps_specific_price_rule` (
  `id_specific_price_rule` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_currency` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL,
  `from_quantity` mediumint(8) UNSIGNED NOT NULL,
  `price` decimal(20,6) DEFAULT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_specific_price_rule_condition`
--

CREATE TABLE `ps_specific_price_rule_condition` (
  `id_specific_price_rule_condition` int(11) UNSIGNED NOT NULL,
  `id_specific_price_rule_condition_group` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_specific_price_rule_condition_group`
--

CREATE TABLE `ps_specific_price_rule_condition_group` (
  `id_specific_price_rule_condition_group` int(11) UNSIGNED NOT NULL,
  `id_specific_price_rule` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_state`
--

CREATE TABLE `ps_state` (
  `id_state` int(10) UNSIGNED NOT NULL,
  `id_country` int(11) UNSIGNED NOT NULL,
  `id_zone` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(7) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_state`
--

INSERT INTO `ps_state` (`id_state`, `id_country`, `id_zone`, `name`, `iso_code`, `tax_behavior`, `active`) VALUES
(1, 21, 2, 'Alabama', 'AL', 0, 1),
(2, 21, 2, 'Alaska', 'AK', 0, 1),
(3, 21, 2, 'Arizona', 'AZ', 0, 1),
(4, 21, 2, 'Arkansas', 'AR', 0, 1),
(5, 21, 2, 'California', 'CA', 0, 1),
(6, 21, 2, 'Colorado', 'CO', 0, 1),
(7, 21, 2, 'Connecticut', 'CT', 0, 1),
(8, 21, 2, 'Delaware', 'DE', 0, 1),
(9, 21, 2, 'Florida', 'FL', 0, 1),
(10, 21, 2, 'Georgia', 'GA', 0, 1),
(11, 21, 2, 'Hawaii', 'HI', 0, 1),
(12, 21, 2, 'Idaho', 'ID', 0, 1),
(13, 21, 2, 'Illinois', 'IL', 0, 1),
(14, 21, 2, 'Indiana', 'IN', 0, 1),
(15, 21, 2, 'Iowa', 'IA', 0, 1),
(16, 21, 2, 'Kansas', 'KS', 0, 1),
(17, 21, 2, 'Kentucky', 'KY', 0, 1),
(18, 21, 2, 'Louisiana', 'LA', 0, 1),
(19, 21, 2, 'Maine', 'ME', 0, 1),
(20, 21, 2, 'Maryland', 'MD', 0, 1),
(21, 21, 2, 'Massachusetts', 'MA', 0, 1),
(22, 21, 2, 'Michigan', 'MI', 0, 1),
(23, 21, 2, 'Minnesota', 'MN', 0, 1),
(24, 21, 2, 'Mississippi', 'MS', 0, 1),
(25, 21, 2, 'Missouri', 'MO', 0, 1),
(26, 21, 2, 'Montana', 'MT', 0, 1),
(27, 21, 2, 'Nebraska', 'NE', 0, 1),
(28, 21, 2, 'Nevada', 'NV', 0, 1),
(29, 21, 2, 'New Hampshire', 'NH', 0, 1),
(30, 21, 2, 'New Jersey', 'NJ', 0, 1),
(31, 21, 2, 'New Mexico', 'NM', 0, 1),
(32, 21, 2, 'New York', 'NY', 0, 1),
(33, 21, 2, 'North Carolina', 'NC', 0, 1),
(34, 21, 2, 'North Dakota', 'ND', 0, 1),
(35, 21, 2, 'Ohio', 'OH', 0, 1),
(36, 21, 2, 'Oklahoma', 'OK', 0, 1),
(37, 21, 2, 'Oregon', 'OR', 0, 1),
(38, 21, 2, 'Pennsylvania', 'PA', 0, 1),
(39, 21, 2, 'Rhode Island', 'RI', 0, 1),
(40, 21, 2, 'South Carolina', 'SC', 0, 1),
(41, 21, 2, 'South Dakota', 'SD', 0, 1),
(42, 21, 2, 'Tennessee', 'TN', 0, 1),
(43, 21, 2, 'Texas', 'TX', 0, 1),
(44, 21, 2, 'Utah', 'UT', 0, 1),
(45, 21, 2, 'Vermont', 'VT', 0, 1),
(46, 21, 2, 'Virginia', 'VA', 0, 1),
(47, 21, 2, 'Washington', 'WA', 0, 1),
(48, 21, 2, 'West Virginia', 'WV', 0, 1),
(49, 21, 2, 'Wisconsin', 'WI', 0, 1),
(50, 21, 2, 'Wyoming', 'WY', 0, 1),
(51, 21, 2, 'Puerto Rico', 'PR', 0, 1),
(52, 21, 2, 'US Virgin Islands', 'VI', 0, 1),
(53, 21, 2, 'District of Columbia', 'DC', 0, 1),
(54, 145, 2, 'Aguascalientes', 'AGS', 0, 1),
(55, 145, 2, 'Baja California', 'BCN', 0, 1),
(56, 145, 2, 'Baja California Sur', 'BCS', 0, 1),
(57, 145, 2, 'Campeche', 'CAM', 0, 1),
(58, 145, 2, 'Chiapas', 'CHP', 0, 1),
(59, 145, 2, 'Chihuahua', 'CHH', 0, 1),
(60, 145, 2, 'Coahuila', 'COA', 0, 1),
(61, 145, 2, 'Colima', 'COL', 0, 1),
(62, 145, 2, 'Distrito Federal', 'DIF', 0, 1),
(63, 145, 2, 'Durango', 'DUR', 0, 1),
(64, 145, 2, 'Guanajuato', 'GUA', 0, 1),
(65, 145, 2, 'Guerrero', 'GRO', 0, 1),
(66, 145, 2, 'Hidalgo', 'HID', 0, 1),
(67, 145, 2, 'Jalisco', 'JAL', 0, 1),
(68, 145, 2, 'Estado de México', 'MEX', 0, 1),
(69, 145, 2, 'Michoacán', 'MIC', 0, 1),
(70, 145, 2, 'Morelos', 'MOR', 0, 1),
(71, 145, 2, 'Nayarit', 'NAY', 0, 1),
(72, 145, 2, 'Nuevo León', 'NLE', 0, 1),
(73, 145, 2, 'Oaxaca', 'OAX', 0, 1),
(74, 145, 2, 'Puebla', 'PUE', 0, 1),
(75, 145, 2, 'Querétaro', 'QUE', 0, 1),
(76, 145, 2, 'Quintana Roo', 'ROO', 0, 1),
(77, 145, 2, 'San Luis Potosí', 'SLP', 0, 1),
(78, 145, 2, 'Sinaloa', 'SIN', 0, 1),
(79, 145, 2, 'Sonora', 'SON', 0, 1),
(80, 145, 2, 'Tabasco', 'TAB', 0, 1),
(81, 145, 2, 'Tamaulipas', 'TAM', 0, 1),
(82, 145, 2, 'Tlaxcala', 'TLA', 0, 1),
(83, 145, 2, 'Veracruz', 'VER', 0, 1),
(84, 145, 2, 'Yucatán', 'YUC', 0, 1),
(85, 145, 2, 'Zacatecas', 'ZAC', 0, 1),
(86, 4, 2, 'Ontario', 'ON', 0, 1),
(87, 4, 2, 'Quebec', 'QC', 0, 1),
(88, 4, 2, 'British Columbia', 'BC', 0, 1),
(89, 4, 2, 'Alberta', 'AB', 0, 1),
(90, 4, 2, 'Manitoba', 'MB', 0, 1),
(91, 4, 2, 'Saskatchewan', 'SK', 0, 1),
(92, 4, 2, 'Nova Scotia', 'NS', 0, 1),
(93, 4, 2, 'New Brunswick', 'NB', 0, 1),
(94, 4, 2, 'Newfoundland and Labrador', 'NL', 0, 1),
(95, 4, 2, 'Prince Edward Island', 'PE', 0, 1),
(96, 4, 2, 'Northwest Territories', 'NT', 0, 1),
(97, 4, 2, 'Yukon', 'YT', 0, 1),
(98, 4, 2, 'Nunavut', 'NU', 0, 1),
(99, 44, 6, 'Buenos Aires', 'B', 0, 1),
(100, 44, 6, 'Catamarca', 'K', 0, 1),
(101, 44, 6, 'Chaco', 'H', 0, 1),
(102, 44, 6, 'Chubut', 'U', 0, 1),
(103, 44, 6, 'Ciudad de Buenos Aires', 'C', 0, 1),
(104, 44, 6, 'Córdoba', 'X', 0, 1),
(105, 44, 6, 'Corrientes', 'W', 0, 1),
(106, 44, 6, 'Entre Ríos', 'E', 0, 1),
(107, 44, 6, 'Formosa', 'P', 0, 1),
(108, 44, 6, 'Jujuy', 'Y', 0, 1),
(109, 44, 6, 'La Pampa', 'L', 0, 1),
(110, 44, 6, 'La Rioja', 'F', 0, 1),
(111, 44, 6, 'Mendoza', 'M', 0, 1),
(112, 44, 6, 'Misiones', 'N', 0, 1),
(113, 44, 6, 'Neuquén', 'Q', 0, 1),
(114, 44, 6, 'Río Negro', 'R', 0, 1),
(115, 44, 6, 'Salta', 'A', 0, 1),
(116, 44, 6, 'San Juan', 'J', 0, 1),
(117, 44, 6, 'San Luis', 'D', 0, 1),
(118, 44, 6, 'Santa Cruz', 'Z', 0, 1),
(119, 44, 6, 'Santa Fe', 'S', 0, 1),
(120, 44, 6, 'Santiago del Estero', 'G', 0, 1),
(121, 44, 6, 'Tierra del Fuego', 'V', 0, 1),
(122, 44, 6, 'Tucumán', 'T', 0, 1),
(123, 10, 1, 'Agrigento', 'AG', 0, 1),
(124, 10, 1, 'Alessandria', 'AL', 0, 1),
(125, 10, 1, 'Ancona', 'AN', 0, 1),
(126, 10, 1, 'Aosta', 'AO', 0, 1),
(127, 10, 1, 'Arezzo', 'AR', 0, 1),
(128, 10, 1, 'Ascoli Piceno', 'AP', 0, 1),
(129, 10, 1, 'Asti', 'AT', 0, 1),
(130, 10, 1, 'Avellino', 'AV', 0, 1),
(131, 10, 1, 'Bari', 'BA', 0, 1),
(132, 10, 1, 'Barletta-Andria-Trani', 'BT', 0, 1),
(133, 10, 1, 'Belluno', 'BL', 0, 1),
(134, 10, 1, 'Benevento', 'BN', 0, 1),
(135, 10, 1, 'Bergamo', 'BG', 0, 1),
(136, 10, 1, 'Biella', 'BI', 0, 1),
(137, 10, 1, 'Bologna', 'BO', 0, 1),
(138, 10, 1, 'Bolzano', 'BZ', 0, 1),
(139, 10, 1, 'Brescia', 'BS', 0, 1),
(140, 10, 1, 'Brindisi', 'BR', 0, 1),
(141, 10, 1, 'Cagliari', 'CA', 0, 1),
(142, 10, 1, 'Caltanissetta', 'CL', 0, 1),
(143, 10, 1, 'Campobasso', 'CB', 0, 1),
(144, 10, 1, 'Carbonia-Iglesias', 'CI', 0, 1),
(145, 10, 1, 'Caserta', 'CE', 0, 1),
(146, 10, 1, 'Catania', 'CT', 0, 1),
(147, 10, 1, 'Catanzaro', 'CZ', 0, 1),
(148, 10, 1, 'Chieti', 'CH', 0, 1),
(149, 10, 1, 'Como', 'CO', 0, 1),
(150, 10, 1, 'Cosenza', 'CS', 0, 1),
(151, 10, 1, 'Cremona', 'CR', 0, 1),
(152, 10, 1, 'Crotone', 'KR', 0, 1),
(153, 10, 1, 'Cuneo', 'CN', 0, 1),
(154, 10, 1, 'Enna', 'EN', 0, 1),
(155, 10, 1, 'Fermo', 'FM', 0, 1),
(156, 10, 1, 'Ferrara', 'FE', 0, 1),
(157, 10, 1, 'Firenze', 'FI', 0, 1),
(158, 10, 1, 'Foggia', 'FG', 0, 1),
(159, 10, 1, 'Forlì-Cesena', 'FC', 0, 1),
(160, 10, 1, 'Frosinone', 'FR', 0, 1),
(161, 10, 1, 'Genova', 'GE', 0, 1),
(162, 10, 1, 'Gorizia', 'GO', 0, 1),
(163, 10, 1, 'Grosseto', 'GR', 0, 1),
(164, 10, 1, 'Imperia', 'IM', 0, 1),
(165, 10, 1, 'Isernia', 'IS', 0, 1),
(166, 10, 1, 'L\'Aquila', 'AQ', 0, 1),
(167, 10, 1, 'La Spezia', 'SP', 0, 1),
(168, 10, 1, 'Latina', 'LT', 0, 1),
(169, 10, 1, 'Lecce', 'LE', 0, 1),
(170, 10, 1, 'Lecco', 'LC', 0, 1),
(171, 10, 1, 'Livorno', 'LI', 0, 1),
(172, 10, 1, 'Lodi', 'LO', 0, 1),
(173, 10, 1, 'Lucca', 'LU', 0, 1),
(174, 10, 1, 'Macerata', 'MC', 0, 1),
(175, 10, 1, 'Mantova', 'MN', 0, 1),
(176, 10, 1, 'Massa', 'MS', 0, 1),
(177, 10, 1, 'Matera', 'MT', 0, 1),
(178, 10, 1, 'Medio Campidano', 'VS', 0, 1),
(179, 10, 1, 'Messina', 'ME', 0, 1),
(180, 10, 1, 'Milano', 'MI', 0, 1),
(181, 10, 1, 'Modena', 'MO', 0, 1),
(182, 10, 1, 'Monza e della Brianza', 'MB', 0, 1),
(183, 10, 1, 'Napoli', 'NA', 0, 1),
(184, 10, 1, 'Novara', 'NO', 0, 1),
(185, 10, 1, 'Nuoro', 'NU', 0, 1),
(186, 10, 1, 'Ogliastra', 'OG', 0, 1),
(187, 10, 1, 'Olbia-Tempio', 'OT', 0, 1),
(188, 10, 1, 'Oristano', 'OR', 0, 1),
(189, 10, 1, 'Padova', 'PD', 0, 1),
(190, 10, 1, 'Palermo', 'PA', 0, 1),
(191, 10, 1, 'Parma', 'PR', 0, 1),
(192, 10, 1, 'Pavia', 'PV', 0, 1),
(193, 10, 1, 'Perugia', 'PG', 0, 1),
(194, 10, 1, 'Pesaro-Urbino', 'PU', 0, 1),
(195, 10, 1, 'Pescara', 'PE', 0, 1),
(196, 10, 1, 'Piacenza', 'PC', 0, 1),
(197, 10, 1, 'Pisa', 'PI', 0, 1),
(198, 10, 1, 'Pistoia', 'PT', 0, 1),
(199, 10, 1, 'Pordenone', 'PN', 0, 1),
(200, 10, 1, 'Potenza', 'PZ', 0, 1),
(201, 10, 1, 'Prato', 'PO', 0, 1),
(202, 10, 1, 'Ragusa', 'RG', 0, 1),
(203, 10, 1, 'Ravenna', 'RA', 0, 1),
(204, 10, 1, 'Reggio Calabria', 'RC', 0, 1),
(205, 10, 1, 'Reggio Emilia', 'RE', 0, 1),
(206, 10, 1, 'Rieti', 'RI', 0, 1),
(207, 10, 1, 'Rimini', 'RN', 0, 1),
(208, 10, 1, 'Roma', 'RM', 0, 1),
(209, 10, 1, 'Rovigo', 'RO', 0, 1),
(210, 10, 1, 'Salerno', 'SA', 0, 1),
(211, 10, 1, 'Sassari', 'SS', 0, 1),
(212, 10, 1, 'Savona', 'SV', 0, 1),
(213, 10, 1, 'Siena', 'SI', 0, 1),
(214, 10, 1, 'Siracusa', 'SR', 0, 1),
(215, 10, 1, 'Sondrio', 'SO', 0, 1),
(216, 10, 1, 'Taranto', 'TA', 0, 1),
(217, 10, 1, 'Teramo', 'TE', 0, 1),
(218, 10, 1, 'Terni', 'TR', 0, 1),
(219, 10, 1, 'Torino', 'TO', 0, 1),
(220, 10, 1, 'Trapani', 'TP', 0, 1),
(221, 10, 1, 'Trento', 'TN', 0, 1),
(222, 10, 1, 'Treviso', 'TV', 0, 1),
(223, 10, 1, 'Trieste', 'TS', 0, 1),
(224, 10, 1, 'Udine', 'UD', 0, 1),
(225, 10, 1, 'Varese', 'VA', 0, 1),
(226, 10, 1, 'Venezia', 'VE', 0, 1),
(227, 10, 1, 'Verbano-Cusio-Ossola', 'VB', 0, 1),
(228, 10, 1, 'Vercelli', 'VC', 0, 1),
(229, 10, 1, 'Verona', 'VR', 0, 1),
(230, 10, 1, 'Vibo Valentia', 'VV', 0, 1),
(231, 10, 1, 'Vicenza', 'VI', 0, 1),
(232, 10, 1, 'Viterbo', 'VT', 0, 1),
(233, 111, 3, 'Aceh', 'AC', 0, 1),
(234, 111, 3, 'Bali', 'BA', 0, 1),
(235, 111, 3, 'Bangka', 'BB', 0, 1),
(236, 111, 3, 'Banten', 'BT', 0, 1),
(237, 111, 3, 'Bengkulu', 'BE', 0, 1),
(238, 111, 3, 'Central Java', 'JT', 0, 1),
(239, 111, 3, 'Central Kalimantan', 'KT', 0, 1),
(240, 111, 3, 'Central Sulawesi', 'ST', 0, 1),
(241, 111, 3, 'Coat of arms of East Java', 'JI', 0, 1),
(242, 111, 3, 'East kalimantan', 'KI', 0, 1),
(243, 111, 3, 'East Nusa Tenggara', 'NT', 0, 1),
(244, 111, 3, 'Lambang propinsi', 'GO', 0, 1),
(245, 111, 3, 'Jakarta', 'JK', 0, 1),
(246, 111, 3, 'Jambi', 'JA', 0, 1),
(247, 111, 3, 'Lampung', 'LA', 0, 1),
(248, 111, 3, 'Maluku', 'MA', 0, 1),
(249, 111, 3, 'North Maluku', 'MU', 0, 1),
(250, 111, 3, 'North Sulawesi', 'SA', 0, 1),
(251, 111, 3, 'North Sumatra', 'SU', 0, 1),
(252, 111, 3, 'Papua', 'PA', 0, 1),
(253, 111, 3, 'Riau', 'RI', 0, 1),
(254, 111, 3, 'Lambang Riau', 'KR', 0, 1),
(255, 111, 3, 'Southeast Sulawesi', 'SG', 0, 1),
(256, 111, 3, 'South Kalimantan', 'KS', 0, 1),
(257, 111, 3, 'South Sulawesi', 'SN', 0, 1),
(258, 111, 3, 'South Sumatra', 'SS', 0, 1),
(259, 111, 3, 'West Java', 'JB', 0, 1),
(260, 111, 3, 'West Kalimantan', 'KB', 0, 1),
(261, 111, 3, 'West Nusa Tenggara', 'NB', 0, 1),
(262, 111, 3, 'Lambang Provinsi Papua Barat', 'PB', 0, 1),
(263, 111, 3, 'West Sulawesi', 'SR', 0, 1),
(264, 111, 3, 'West Sumatra', 'SB', 0, 1),
(265, 111, 3, 'Yogyakarta', 'YO', 0, 1),
(266, 11, 3, 'Aichi', '23', 0, 1),
(267, 11, 3, 'Akita', '05', 0, 1),
(268, 11, 3, 'Aomori', '02', 0, 1),
(269, 11, 3, 'Chiba', '12', 0, 1),
(270, 11, 3, 'Ehime', '38', 0, 1),
(271, 11, 3, 'Fukui', '18', 0, 1),
(272, 11, 3, 'Fukuoka', '40', 0, 1),
(273, 11, 3, 'Fukushima', '07', 0, 1),
(274, 11, 3, 'Gifu', '21', 0, 1),
(275, 11, 3, 'Gunma', '10', 0, 1),
(276, 11, 3, 'Hiroshima', '34', 0, 1),
(277, 11, 3, 'Hokkaido', '01', 0, 1),
(278, 11, 3, 'Hyogo', '28', 0, 1),
(279, 11, 3, 'Ibaraki', '08', 0, 1),
(280, 11, 3, 'Ishikawa', '17', 0, 1),
(281, 11, 3, 'Iwate', '03', 0, 1),
(282, 11, 3, 'Kagawa', '37', 0, 1),
(283, 11, 3, 'Kagoshima', '46', 0, 1),
(284, 11, 3, 'Kanagawa', '14', 0, 1),
(285, 11, 3, 'Kochi', '39', 0, 1),
(286, 11, 3, 'Kumamoto', '43', 0, 1),
(287, 11, 3, 'Kyoto', '26', 0, 1),
(288, 11, 3, 'Mie', '24', 0, 1),
(289, 11, 3, 'Miyagi', '04', 0, 1),
(290, 11, 3, 'Miyazaki', '45', 0, 1),
(291, 11, 3, 'Nagano', '20', 0, 1),
(292, 11, 3, 'Nagasaki', '42', 0, 1),
(293, 11, 3, 'Nara', '29', 0, 1),
(294, 11, 3, 'Niigata', '15', 0, 1),
(295, 11, 3, 'Oita', '44', 0, 1),
(296, 11, 3, 'Okayama', '33', 0, 1),
(297, 11, 3, 'Okinawa', '47', 0, 1),
(298, 11, 3, 'Osaka', '27', 0, 1),
(299, 11, 3, 'Saga', '41', 0, 1),
(300, 11, 3, 'Saitama', '11', 0, 1),
(301, 11, 3, 'Shiga', '25', 0, 1),
(302, 11, 3, 'Shimane', '32', 0, 1),
(303, 11, 3, 'Shizuoka', '22', 0, 1),
(304, 11, 3, 'Tochigi', '09', 0, 1),
(305, 11, 3, 'Tokushima', '36', 0, 1),
(306, 11, 3, 'Tokyo', '13', 0, 1),
(307, 11, 3, 'Tottori', '31', 0, 1),
(308, 11, 3, 'Toyama', '16', 0, 1),
(309, 11, 3, 'Wakayama', '30', 0, 1),
(310, 11, 3, 'Yamagata', '06', 0, 1),
(311, 11, 3, 'Yamaguchi', '35', 0, 1),
(312, 11, 3, 'Yamanashi', '19', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_statssearch`
--

CREATE TABLE `ps_statssearch` (
  `id_statssearch` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL,
  `results` int(6) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_statssearch`
--

INSERT INTO `ps_statssearch` (`id_statssearch`, `id_shop`, `id_shop_group`, `keywords`, `results`, `date_add`) VALUES
(1, 1, 1, 'max', 1, '2016-07-29 15:25:56'),
(2, 1, 1, 'maxi', 1, '2016-07-29 15:26:01'),
(3, 1, 1, 'maxime', 0, '2016-07-29 15:33:33'),
(4, 1, 1, 'maxime', 0, '2016-07-29 15:33:34'),
(5, 1, 1, 'maxim', 1, '2016-07-29 15:33:34'),
(6, 1, 1, 'maxim', 1, '2016-07-29 15:33:35'),
(7, 1, 1, 'maxim', 1, '2016-07-29 15:33:35'),
(8, 1, 1, 'pkgh', 1, '2016-08-01 17:14:22'),
(9, 1, 1, 'pkgh', 1, '2016-08-01 17:17:10'),
(10, 1, 1, 'pkgh', 1, '2016-08-01 17:18:02'),
(11, 1, 1, 'pkh', 0, '2016-08-01 17:19:15'),
(12, 1, 1, 'pkgh', 1, '2016-08-01 17:19:16'),
(13, 1, 1, 'monke', 1, '2016-08-03 10:15:51'),
(14, 1, 1, 'monkey', 1, '2016-08-03 10:15:52'),
(15, 1, 1, 'monkey', 1, '2016-08-03 10:15:55'),
(16, 1, 1, 'monke', 1, '2016-08-03 10:15:55'),
(17, 1, 1, 'design', 2, '2016-08-03 10:15:56'),
(18, 1, 1, 'monke', 1, '2016-08-03 10:15:57'),
(19, 1, 1, 'desig', 2, '2016-08-03 10:16:01'),
(20, 1, 1, 'design', 2, '2016-08-03 10:16:02'),
(21, 1, 1, 'designs', 2, '2016-08-03 10:16:03'),
(22, 1, 1, 'pkgh', 1, '2016-08-10 09:51:31');

-- --------------------------------------------------------

--
-- Structure de la table `ps_stock`
--

CREATE TABLE `ps_stock` (
  `id_stock` int(11) UNSIGNED NOT NULL,
  `id_warehouse` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_product_attribute` int(11) UNSIGNED NOT NULL,
  `reference` varchar(32) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `physical_quantity` int(11) UNSIGNED NOT NULL,
  `usable_quantity` int(11) UNSIGNED NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_stock_available`
--

CREATE TABLE `ps_stock_available` (
  `id_stock_available` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_product_attribute` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT '0',
  `depends_on_stock` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `out_of_stock` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_stock_available`
--

INSERT INTO `ps_stock_available` (`id_stock_available`, `id_product`, `id_product_attribute`, `id_shop`, `id_shop_group`, `quantity`, `depends_on_stock`, `out_of_stock`) VALUES
(21, 21, 0, 1, 0, 0, 0, 2),
(22, 22, 0, 1, 0, 0, 0, 2),
(23, 23, 0, 1, 0, 0, 0, 2),
(24, 24, 0, 1, 0, 0, 0, 2),
(25, 25, 0, 1, 0, 0, 0, 2),
(26, 26, 0, 1, 0, 0, 0, 2),
(27, 27, 0, 1, 0, 0, 0, 2),
(28, 28, 0, 1, 0, 0, 0, 2),
(29, 22, 1, 1, 0, 0, 0, 2),
(30, 22, 2, 1, 0, 0, 0, 2),
(31, 22, 3, 1, 0, 0, 0, 2),
(32, 22, 4, 1, 0, 0, 0, 2),
(33, 22, 5, 1, 0, 0, 0, 2),
(34, 22, 6, 1, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `ps_stock_mvt`
--

CREATE TABLE `ps_stock_mvt` (
  `id_stock_mvt` bigint(20) UNSIGNED NOT NULL,
  `id_stock` int(11) UNSIGNED NOT NULL,
  `id_order` int(11) UNSIGNED DEFAULT NULL,
  `id_supply_order` int(11) UNSIGNED DEFAULT NULL,
  `id_stock_mvt_reason` int(11) UNSIGNED NOT NULL,
  `id_employee` int(11) UNSIGNED NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `physical_quantity` int(11) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `last_wa` decimal(20,6) DEFAULT '0.000000',
  `current_wa` decimal(20,6) DEFAULT '0.000000',
  `referer` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_stock_mvt_reason`
--

CREATE TABLE `ps_stock_mvt_reason` (
  `id_stock_mvt_reason` int(11) UNSIGNED NOT NULL,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_stock_mvt_reason`
--

INSERT INTO `ps_stock_mvt_reason` (`id_stock_mvt_reason`, `sign`, `date_add`, `date_upd`, `deleted`) VALUES
(1, 1, '2016-07-29 08:54:29', '2016-07-29 08:54:29', 0),
(2, -1, '2016-07-29 08:54:29', '2016-07-29 08:54:29', 0),
(3, -1, '2016-07-29 08:54:29', '2016-07-29 08:54:29', 0),
(4, -1, '2016-07-29 08:54:29', '2016-07-29 08:54:29', 0),
(5, 1, '2016-07-29 08:54:29', '2016-07-29 08:54:29', 0),
(6, -1, '2016-07-29 08:54:30', '2016-07-29 08:54:30', 0),
(7, 1, '2016-07-29 08:54:30', '2016-07-29 08:54:30', 0),
(8, 1, '2016-07-29 08:54:30', '2016-07-29 08:54:30', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_stock_mvt_reason_lang`
--

CREATE TABLE `ps_stock_mvt_reason_lang` (
  `id_stock_mvt_reason` int(11) UNSIGNED NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_stock_mvt_reason_lang`
--

INSERT INTO `ps_stock_mvt_reason_lang` (`id_stock_mvt_reason`, `id_lang`, `name`) VALUES
(1, 1, 'Increase'),
(1, 2, 'Augmentation'),
(1, 3, 'Increase'),
(1, 4, 'Increase'),
(1, 5, 'Increase'),
(2, 1, 'Decrease'),
(2, 2, 'Baisse'),
(2, 3, 'Decrease'),
(2, 4, 'Decrease'),
(2, 5, 'Decrease'),
(3, 1, 'Customer Order'),
(3, 2, 'Commande client'),
(3, 3, 'Customer Order'),
(3, 4, 'Customer Order'),
(3, 5, 'Customer Order'),
(4, 1, 'Regulation following an inventory of stock'),
(4, 2, 'Régularisation suite à inventaire'),
(4, 3, 'Regulation following an inventory of stock'),
(4, 4, 'Regulation following an inventory of stock'),
(4, 5, 'Regulation following an inventory of stock'),
(5, 1, 'Regulation following an inventory of stock'),
(5, 2, 'Régularisation suite à inventaire'),
(5, 3, 'Regulation following an inventory of stock'),
(5, 4, 'Regulation following an inventory of stock'),
(5, 5, 'Regulation following an inventory of stock'),
(6, 1, 'Transfer to another warehouse'),
(6, 2, 'Transfert vers un autre entrepôt'),
(6, 3, 'Transfer to another warehouse'),
(6, 4, 'Transfer to another warehouse'),
(6, 5, 'Transfer to another warehouse'),
(7, 1, 'Transfer from another warehouse'),
(7, 2, 'Transfert depuis un autre entrepôt'),
(7, 3, 'Transfer from another warehouse'),
(7, 4, 'Transfer from another warehouse'),
(7, 5, 'Transfer from another warehouse'),
(8, 1, 'Supply Order'),
(8, 2, 'Commande fournisseur'),
(8, 3, 'Supply Order'),
(8, 4, 'Supply Order'),
(8, 5, 'Supply Order');

-- --------------------------------------------------------

--
-- Structure de la table `ps_store`
--

CREATE TABLE `ps_store` (
  `id_store` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_state` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `postcode` varchar(12) NOT NULL,
  `latitude` decimal(13,8) DEFAULT NULL,
  `longitude` decimal(13,8) DEFAULT NULL,
  `hours` varchar(254) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `note` text,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_store`
--

INSERT INTO `ps_store` (`id_store`, `id_country`, `id_state`, `name`, `address1`, `address2`, `city`, `postcode`, `latitude`, `longitude`, `hours`, `phone`, `fax`, `email`, `note`, `active`, `date_add`, `date_upd`) VALUES
(1, 21, 9, 'Dade County', '3030 SW 8th St Miami', '', 'Miami', ' 33135', '25.76500500', '-80.24379700', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2016-07-29 08:56:37', '2016-07-29 08:56:37'),
(2, 21, 9, 'E Fort Lauderdale', '1000 Northeast 4th Ave Fort Lauderdale', '', 'Miami', ' 33304', '26.13793600', '-80.13943500', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2016-07-29 08:56:37', '2016-07-29 08:56:37'),
(3, 21, 9, 'Pembroke Pines', '11001 Pines Blvd Pembroke Pines', '', 'Miami', '33026', '26.00998700', '-80.29447200', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2016-07-29 08:56:37', '2016-07-29 08:56:37'),
(4, 21, 9, 'Coconut Grove', '2999 SW 32nd Avenue', '', 'Miami', ' 33133', '25.73629600', '-80.24479700', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2016-07-29 08:56:37', '2016-07-29 08:56:37'),
(5, 21, 9, 'N Miami/Biscayne', '12055 Biscayne Blvd', '', 'Miami', '33181', '25.88674000', '-80.16329200', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2016-07-29 08:56:38', '2016-07-29 08:56:38');

-- --------------------------------------------------------

--
-- Structure de la table `ps_store_shop`
--

CREATE TABLE `ps_store_shop` (
  `id_store` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_store_shop`
--

INSERT INTO `ps_store_shop` (`id_store`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_supplier`
--

CREATE TABLE `ps_supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_supplier`
--

INSERT INTO `ps_supplier` (`id_supplier`, `name`, `date_add`, `date_upd`, `active`) VALUES
(1, 'Curabitur ac ipsum pellentesque', '2016-08-03 23:14:20', '2016-08-03 23:14:20', 1),
(2, 'Lorem ipsum dolor sit amet', '2016-08-03 23:14:21', '2016-08-03 23:14:21', 1),
(3, 'Consectetur adipiscing elit', '2016-08-03 23:14:19', '2016-08-03 23:14:19', 1),
(4, 'Ut feugiat lobortis', '2016-08-03 23:14:24', '2016-08-03 23:14:24', 1),
(5, 'Nullam aliquam odio tellus', '2016-08-03 23:14:22', '2016-08-03 23:14:22', 1),
(6, 'Interdum et malesuada', '2016-08-03 23:14:21', '2016-08-03 23:14:21', 1),
(7, 'Morbi in volutpat eros', '2016-08-03 23:14:22', '2016-08-03 23:14:22', 1),
(8, 'Sed imperdiet porttitor nulla', '2016-08-03 23:14:23', '2016-08-03 23:14:23', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_supplier_lang`
--

CREATE TABLE `ps_supplier_lang` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_supplier_lang`
--

INSERT INTO `ps_supplier_lang` (`id_supplier`, `id_lang`, `description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(1, 2, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(1, 3, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(1, 4, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(1, 5, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(2, 1, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(2, 2, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(2, 3, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(2, 4, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(2, 5, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(3, 1, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(3, 2, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(3, 3, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(3, 4, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(3, 5, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(4, 1, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(4, 2, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(4, 3, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(4, 4, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(4, 5, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(5, 1, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(5, 2, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(5, 3, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(5, 4, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(5, 5, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(6, 1, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(6, 2, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(6, 3, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(6, 4, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(6, 5, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(7, 1, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(7, 2, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(7, 3, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(7, 4, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(7, 5, 'Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.', '', '', ''),
(8, 1, '<p>Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.</p>', '', '', ''),
(8, 2, '<p>Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.</p>', '', '', ''),
(8, 3, '<p>Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.</p>', '', '', ''),
(8, 4, '<p>Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.</p>', '', '', ''),
(8, 5, '<p>Curabitur ac ipsum pellentesque, scelerisque odio a, viverra nulla. Suspendisse semper lectus non ante pretium, eget dapibus mi venenatis. Pellentesque ullamcorper tempus tempor. Cras sodales lacus nec est porta, ac dapibus dui posuere. Mauris tristique magna ultrices tortor imperdiet, id imperdiet mi venenatis. Pellentesque eget dui viverra, pellentesque nunc eget, suscipit elit. Nulla facilisi. Cras pulvinar nibh tortor, in laoreet magna vehicula a. Fusce sit amet molestie felis. Integer congue metus diam, nec lobortis augue bibendum sed. Suspendisse sodales nibh eu nunc eleifend vestibulum. Donec nibh tellus, mattis eget blandit at, gravida vitae massa. In eu nibh vulputate, scelerisque ante ut, luctus turpis. Aenean interdum dolor eros.</p>', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_supplier_shop`
--

CREATE TABLE `ps_supplier_shop` (
  `id_supplier` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_supplier_shop`
--

INSERT INTO `ps_supplier_shop` (`id_supplier`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_supply_order`
--

CREATE TABLE `ps_supply_order` (
  `id_supply_order` int(11) UNSIGNED NOT NULL,
  `id_supplier` int(11) UNSIGNED NOT NULL,
  `supplier_name` varchar(64) NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `id_warehouse` int(11) UNSIGNED NOT NULL,
  `id_supply_order_state` int(11) UNSIGNED NOT NULL,
  `id_currency` int(11) UNSIGNED NOT NULL,
  `id_ref_currency` int(11) UNSIGNED NOT NULL,
  `reference` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `date_delivery_expected` datetime DEFAULT NULL,
  `total_te` decimal(20,6) DEFAULT '0.000000',
  `total_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `total_tax` decimal(20,6) DEFAULT '0.000000',
  `total_ti` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `is_template` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_supply_order_detail`
--

CREATE TABLE `ps_supply_order_detail` (
  `id_supply_order_detail` int(11) UNSIGNED NOT NULL,
  `id_supply_order` int(11) UNSIGNED NOT NULL,
  `id_currency` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_product_attribute` int(11) UNSIGNED NOT NULL,
  `reference` varchar(32) NOT NULL,
  `supplier_reference` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `exchange_rate` decimal(20,6) DEFAULT '0.000000',
  `unit_price_te` decimal(20,6) DEFAULT '0.000000',
  `quantity_expected` int(11) UNSIGNED NOT NULL,
  `quantity_received` int(11) UNSIGNED NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `price_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `tax_rate` decimal(20,6) DEFAULT '0.000000',
  `tax_value` decimal(20,6) DEFAULT '0.000000',
  `price_ti` decimal(20,6) DEFAULT '0.000000',
  `tax_value_with_order_discount` decimal(20,6) DEFAULT '0.000000',
  `price_with_order_discount_te` decimal(20,6) DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_supply_order_history`
--

CREATE TABLE `ps_supply_order_history` (
  `id_supply_order_history` int(11) UNSIGNED NOT NULL,
  `id_supply_order` int(11) UNSIGNED NOT NULL,
  `id_employee` int(11) UNSIGNED NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_state` int(11) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_supply_order_receipt_history`
--

CREATE TABLE `ps_supply_order_receipt_history` (
  `id_supply_order_receipt_history` int(11) UNSIGNED NOT NULL,
  `id_supply_order_detail` int(11) UNSIGNED NOT NULL,
  `id_employee` int(11) UNSIGNED NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_supply_order_state` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_supply_order_state`
--

CREATE TABLE `ps_supply_order_state` (
  `id_supply_order_state` int(11) UNSIGNED NOT NULL,
  `delivery_note` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `receipt_state` tinyint(1) NOT NULL DEFAULT '0',
  `pending_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `enclosed` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_supply_order_state`
--

INSERT INTO `ps_supply_order_state` (`id_supply_order_state`, `delivery_note`, `editable`, `receipt_state`, `pending_receipt`, `enclosed`, `color`) VALUES
(1, 0, 1, 0, 0, 0, '#faab00'),
(2, 1, 0, 0, 0, 0, '#273cff'),
(3, 0, 0, 0, 1, 0, '#ff37f5'),
(4, 0, 0, 1, 1, 0, '#ff3e33'),
(5, 0, 0, 1, 0, 1, '#00d60c'),
(6, 0, 0, 0, 0, 1, '#666666');

-- --------------------------------------------------------

--
-- Structure de la table `ps_supply_order_state_lang`
--

CREATE TABLE `ps_supply_order_state_lang` (
  `id_supply_order_state` int(11) UNSIGNED NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_supply_order_state_lang`
--

INSERT INTO `ps_supply_order_state_lang` (`id_supply_order_state`, `id_lang`, `name`) VALUES
(1, 1, '1 - Creation in progress'),
(1, 2, '1 - En cours de création'),
(1, 3, '1 - Creation in progress'),
(1, 4, '1 - Creation in progress'),
(1, 5, '1 - Creation in progress'),
(2, 1, '2 - Order validated'),
(2, 2, '2 - Commande validée'),
(2, 3, '2 - Order validated'),
(2, 4, '2 - Order validated'),
(2, 5, '2 - Order validated'),
(3, 1, '3 - Pending receipt'),
(3, 2, '3 - En attente de réception'),
(3, 3, '3 - Pending receipt'),
(3, 4, '3 - Pending receipt'),
(3, 5, '3 - Pending receipt'),
(4, 1, '4 - Order received in part'),
(4, 2, '4 - Commande reçue partiellement'),
(4, 3, '4 - Order received in part'),
(4, 4, '4 - Order received in part'),
(4, 5, '4 - Order received in part'),
(5, 1, '5 - Order received completely'),
(5, 2, '5 - Commande reçue intégralement'),
(5, 3, '5 - Order received completely'),
(5, 4, '5 - Order received completely'),
(5, 5, '5 - Order received completely'),
(6, 1, '6 - Order canceled'),
(6, 2, '6 - Commande annulée'),
(6, 3, '6 - Order canceled'),
(6, 4, '6 - Order canceled'),
(6, 5, '6 - Order canceled');

-- --------------------------------------------------------

--
-- Structure de la table `ps_tab`
--

CREATE TABLE `ps_tab` (
  `id_tab` int(10) UNSIGNED NOT NULL,
  `id_parent` int(11) NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hide_host_mode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_tab`
--

INSERT INTO `ps_tab` (`id_tab`, `id_parent`, `class_name`, `module`, `position`, `active`, `hide_host_mode`) VALUES
(1, 0, 'AdminDashboard', '', 0, 1, 0),
(2, -1, 'AdminCms', '', 0, 1, 0),
(3, -1, 'AdminCmsCategories', '', 1, 1, 0),
(4, -1, 'AdminAttributeGenerator', '', 2, 1, 0),
(5, -1, 'AdminSearch', '', 3, 1, 0),
(6, -1, 'AdminLogin', '', 4, 1, 0),
(7, -1, 'AdminShop', '', 5, 1, 0),
(8, -1, 'AdminShopUrl', '', 6, 1, 0),
(9, 0, 'AdminCatalog', '', 1, 1, 0),
(10, 0, 'AdminParentOrders', '', 2, 1, 0),
(11, 0, 'AdminParentCustomer', '', 3, 1, 0),
(12, 0, 'AdminPriceRule', '', 4, 1, 0),
(13, 0, 'AdminParentModules', '', 5, 1, 0),
(14, 0, 'AdminParentShipping', '', 6, 1, 0),
(15, 0, 'AdminParentLocalization', '', 7, 1, 0),
(16, 0, 'AdminParentPreferences', '', 8, 1, 0),
(17, 0, 'AdminTools', '', 9, 1, 0),
(18, 0, 'AdminAdmin', '', 10, 1, 0),
(19, 0, 'AdminParentStats', '', 11, 1, 0),
(20, 0, 'AdminStock', '', 12, 1, 0),
(21, 9, 'AdminProducts', '', 1, 1, 0),
(22, 9, 'AdminCategories', '', 2, 1, 0),
(23, 9, 'AdminTracking', '', 3, 1, 0),
(24, 9, 'AdminAttributesGroups', '', 4, 1, 0),
(25, 9, 'AdminFeatures', '', 5, 1, 0),
(26, 9, 'AdminManufacturers', '', 6, 1, 0),
(27, 9, 'AdminSuppliers', '', 7, 1, 0),
(28, 9, 'AdminTags', '', 8, 1, 0),
(29, 9, 'AdminAttachments', '', 9, 1, 0),
(30, 10, 'AdminOrders', '', 0, 1, 0),
(31, 10, 'AdminInvoices', '', 1, 1, 0),
(32, 10, 'AdminReturn', '', 2, 1, 0),
(33, 10, 'AdminDeliverySlip', '', 3, 1, 0),
(34, 10, 'AdminSlip', '', 4, 1, 0),
(35, 10, 'AdminStatuses', '', 5, 1, 0),
(36, 10, 'AdminOrderMessage', '', 6, 1, 0),
(37, 11, 'AdminCustomers', '', 0, 1, 0),
(38, 11, 'AdminAddresses', '', 1, 1, 0),
(39, 11, 'AdminGroups', '', 2, 1, 0),
(40, 11, 'AdminCarts', '', 3, 1, 0),
(41, 11, 'AdminCustomerThreads', '', 4, 1, 0),
(42, 11, 'AdminContacts', '', 5, 1, 0),
(43, 11, 'AdminGenders', '', 6, 1, 0),
(44, 11, 'AdminOutstanding', '', 7, 0, 0),
(45, 12, 'AdminCartRules', '', 0, 1, 0),
(46, 12, 'AdminSpecificPriceRule', '', 1, 1, 0),
(47, 12, 'AdminMarketing', '', 2, 1, 0),
(48, 14, 'AdminCarriers', '', 0, 1, 0),
(49, 14, 'AdminShipping', '', 1, 1, 0),
(50, 14, 'AdminCarrierWizard', '', 2, 1, 0),
(51, 15, 'AdminLocalization', '', 0, 1, 0),
(52, 15, 'AdminLanguages', '', 1, 1, 0),
(53, 15, 'AdminZones', '', 2, 1, 0),
(54, 15, 'AdminCountries', '', 3, 1, 0),
(55, 15, 'AdminStates', '', 4, 1, 0),
(56, 15, 'AdminCurrencies', '', 5, 1, 0),
(57, 15, 'AdminTaxes', '', 6, 1, 0),
(58, 15, 'AdminTaxRulesGroup', '', 7, 1, 0),
(59, 15, 'AdminTranslations', '', 8, 1, 0),
(60, 13, 'AdminModules', '', 0, 1, 0),
(61, 13, 'AdminAddonsCatalog', '', 1, 1, 0),
(62, 13, 'AdminModulesPositions', '', 2, 1, 0),
(63, 13, 'AdminPayment', '', 3, 1, 0),
(64, 16, 'AdminPreferences', '', 0, 1, 0),
(65, 16, 'AdminOrderPreferences', '', 1, 1, 0),
(66, 16, 'AdminPPreferences', '', 2, 1, 0),
(67, 16, 'AdminCustomerPreferences', '', 3, 1, 0),
(68, 16, 'AdminThemes', '', 4, 1, 0),
(69, 16, 'AdminMeta', '', 5, 1, 0),
(70, 16, 'AdminCmsContent', '', 6, 1, 0),
(71, 16, 'AdminImages', '', 7, 1, 0),
(72, 16, 'AdminStores', '', 8, 1, 0),
(73, 16, 'AdminSearchConf', '', 9, 1, 0),
(74, 16, 'AdminMaintenance', '', 10, 1, 0),
(75, 16, 'AdminGeolocation', '', 11, 1, 0),
(76, 17, 'AdminInformation', '', 0, 1, 0),
(77, 17, 'AdminPerformance', '', 1, 1, 0),
(78, 17, 'AdminEmails', '', 2, 1, 0),
(79, 17, 'AdminShopGroup', '', 3, 1, 0),
(80, 17, 'AdminImport', '', 4, 1, 0),
(81, 17, 'AdminBackup', '', 5, 1, 0),
(82, 17, 'AdminRequestSql', '', 6, 1, 0),
(83, 17, 'AdminLogs', '', 7, 1, 0),
(84, 17, 'AdminWebservice', '', 8, 1, 0),
(85, 18, 'AdminAdminPreferences', '', 0, 1, 0),
(86, 18, 'AdminQuickAccesses', '', 1, 1, 0),
(87, 18, 'AdminEmployees', '', 2, 1, 0),
(88, 18, 'AdminProfiles', '', 3, 1, 0),
(89, 18, 'AdminAccess', '', 4, 1, 0),
(90, 18, 'AdminTabs', '', 5, 1, 0),
(91, 19, 'AdminStats', '', 0, 1, 0),
(92, 19, 'AdminSearchEngines', '', 1, 1, 0),
(93, 19, 'AdminReferrers', '', 2, 1, 0),
(94, 20, 'AdminWarehouses', '', 0, 1, 0),
(95, 20, 'AdminStockManagement', '', 1, 1, 0),
(96, 20, 'AdminStockMvt', '', 2, 1, 0),
(97, 20, 'AdminStockInstantState', '', 3, 1, 0),
(98, 20, 'AdminStockCover', '', 4, 1, 0),
(99, 20, 'AdminSupplyOrders', '', 5, 1, 0),
(100, 20, 'AdminStockConfiguration', '', 6, 1, 0),
(101, -1, 'AdminBlockCategories', 'blockcategories', 7, 1, 0),
(102, -1, 'AdminDashgoals', 'dashgoals', 8, 1, 0),
(103, -1, 'AdminThemeConfigurator', 'themeconfigurator', 9, 1, 0),
(104, 18, 'AdminGamification', 'gamification', 6, 1, 0),
(105, -1, 'AdminCronJobs', 'cronjobs', 10, 1, 0),
(107, -1, 'AdminTMProductVideos', 'tmproductvideos', 11, 1, 0),
(108, 0, 'AdminSampleDataInstall', 'sampledatainstall', 13, 1, 0),
(109, 108, 'AdminSampleDataInstallImport', 'sampledatainstall', 1, 1, 0),
(110, 108, 'AdminSampleDataInstallExport', 'sampledatainstall', 2, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_tab_advice`
--

CREATE TABLE `ps_tab_advice` (
  `id_tab` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_tab_advice`
--

INSERT INTO `ps_tab_advice` (`id_tab`, `id_advice`) VALUES
(0, 4),
(0, 42),
(0, 80),
(0, 118),
(0, 156),
(0, 194),
(1, 3),
(1, 7),
(1, 8),
(1, 9),
(1, 13),
(1, 14),
(1, 16),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 41),
(1, 45),
(1, 46),
(1, 47),
(1, 51),
(1, 52),
(1, 54),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 79),
(1, 83),
(1, 84),
(1, 85),
(1, 89),
(1, 90),
(1, 92),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 117),
(1, 121),
(1, 122),
(1, 123),
(1, 127),
(1, 128),
(1, 130),
(1, 132),
(1, 133),
(1, 134),
(1, 135),
(1, 136),
(1, 137),
(1, 138),
(1, 139),
(1, 140),
(1, 141),
(1, 142),
(1, 143),
(1, 144),
(1, 145),
(1, 146),
(1, 147),
(1, 148),
(1, 149),
(1, 150),
(1, 151),
(1, 152),
(1, 155),
(1, 159),
(1, 160),
(1, 161),
(1, 165),
(1, 166),
(1, 168),
(1, 170),
(1, 171),
(1, 172),
(1, 173),
(1, 174),
(1, 175),
(1, 176),
(1, 177),
(1, 178),
(1, 179),
(1, 180),
(1, 181),
(1, 182),
(1, 183),
(1, 184),
(1, 185),
(1, 186),
(1, 187),
(1, 188),
(1, 189),
(1, 190),
(1, 193),
(1, 197),
(1, 198),
(1, 199),
(1, 203),
(1, 204),
(1, 206),
(1, 208),
(1, 209),
(1, 210),
(1, 211),
(1, 212),
(1, 213),
(1, 214),
(1, 215),
(1, 216),
(1, 217),
(1, 218),
(1, 219),
(1, 220),
(1, 221),
(1, 222),
(1, 223),
(1, 224),
(1, 225),
(1, 226),
(1, 227),
(1, 228),
(9, 15),
(9, 53),
(9, 91),
(9, 129),
(9, 167),
(9, 205),
(21, 1),
(21, 5),
(21, 6),
(21, 11),
(21, 12),
(21, 16),
(21, 39),
(21, 43),
(21, 44),
(21, 49),
(21, 50),
(21, 54),
(21, 77),
(21, 81),
(21, 82),
(21, 87),
(21, 88),
(21, 92),
(21, 115),
(21, 119),
(21, 120),
(21, 125),
(21, 126),
(21, 130),
(21, 153),
(21, 157),
(21, 158),
(21, 163),
(21, 164),
(21, 168),
(21, 191),
(21, 195),
(21, 196),
(21, 201),
(21, 202),
(21, 206),
(22, 1),
(22, 16),
(22, 17),
(22, 39),
(22, 54),
(22, 55),
(22, 77),
(22, 92),
(22, 93),
(22, 115),
(22, 130),
(22, 131),
(22, 153),
(22, 168),
(22, 169),
(22, 191),
(22, 206),
(22, 207),
(30, 11),
(30, 49),
(30, 87),
(30, 125),
(30, 163),
(30, 201),
(31, 1),
(31, 39),
(31, 77),
(31, 115),
(31, 153),
(31, 191),
(37, 10),
(37, 15),
(37, 48),
(37, 53),
(37, 86),
(37, 91),
(37, 124),
(37, 129),
(37, 162),
(37, 167),
(37, 200),
(37, 205),
(39, 15),
(39, 53),
(39, 91),
(39, 129),
(39, 167),
(39, 205),
(41, 10),
(41, 48),
(41, 86),
(41, 124),
(41, 162),
(41, 200),
(59, 2),
(59, 40),
(59, 78),
(59, 116),
(59, 154),
(59, 192),
(60, 16),
(60, 54),
(60, 92),
(60, 130),
(60, 168),
(60, 206),
(68, 16),
(68, 54),
(68, 92),
(68, 130),
(68, 168),
(68, 206),
(70, 16),
(70, 54),
(70, 92),
(70, 130),
(70, 168),
(70, 206),
(72, 1),
(72, 39),
(72, 77),
(72, 115),
(72, 153),
(72, 191),
(80, 16),
(80, 54),
(80, 92),
(80, 130),
(80, 168),
(80, 206);

-- --------------------------------------------------------

--
-- Structure de la table `ps_tab_lang`
--

CREATE TABLE `ps_tab_lang` (
  `id_tab` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_tab_lang`
--

INSERT INTO `ps_tab_lang` (`id_tab`, `id_lang`, `name`) VALUES
(1, 1, 'Dashboard'),
(1, 2, 'Übersicht'),
(1, 3, 'Пульт'),
(1, 4, 'Panel de control'),
(1, 5, 'Tableau de bord'),
(2, 1, 'CMS Pages'),
(2, 2, 'CMS-Seiten'),
(2, 3, 'Страницы CMS'),
(2, 4, 'Páginas CMS'),
(2, 5, 'Pages et Catégories CMS'),
(3, 1, 'CMS Categories'),
(3, 2, 'CMS-Kategorien'),
(3, 3, 'Категории CMS'),
(3, 4, 'Categorías CMS'),
(3, 5, 'Pages et Catégories CMS'),
(4, 1, 'Combinations Generator'),
(4, 2, 'Variantengenerator'),
(4, 3, 'Генератор комбинаций'),
(4, 4, 'Generador de combinaciones'),
(4, 5, 'Générateur de déclinaisons'),
(5, 1, 'Search'),
(5, 2, 'Suche'),
(5, 3, 'Поиск'),
(5, 4, 'Buscar'),
(5, 5, 'Rechercher'),
(6, 1, 'Login'),
(6, 2, 'Anmelden'),
(6, 3, 'Вход'),
(6, 4, 'Iniciar Sesión'),
(6, 5, 'Identifiant'),
(7, 1, 'Shops'),
(7, 2, 'Geschäfte'),
(7, 3, 'Магазины'),
(7, 4, 'Tiendas'),
(7, 5, 'Boutiques'),
(8, 1, 'Shop URLs'),
(8, 2, 'Shop-URLs'),
(8, 3, 'Ссылки магазина'),
(8, 4, 'URLs de la tienda'),
(8, 5, 'URL des boutiques'),
(9, 1, 'Catalog'),
(9, 2, 'Katalog'),
(9, 3, 'Каталог'),
(9, 4, 'Catálogo'),
(9, 5, 'Catalogue'),
(10, 1, 'Orders'),
(10, 2, 'Bestellungen'),
(10, 3, 'Заказы'),
(10, 4, 'Pedidos'),
(10, 5, 'Commandes'),
(11, 1, 'Customers'),
(11, 2, 'Kunden'),
(11, 3, 'Клиенты'),
(11, 4, 'Clientes'),
(11, 5, 'Clients'),
(12, 1, 'Price Rules'),
(12, 2, 'Preisregeln'),
(12, 3, 'Ценовые правила'),
(12, 4, 'Reglas de precios'),
(12, 5, 'Promotions'),
(13, 1, 'Modules and Services'),
(13, 2, 'Module'),
(13, 3, 'Модули и Сервисы'),
(13, 4, 'Módulos y Servicios'),
(13, 5, 'Modules et services'),
(14, 1, 'Shipping'),
(14, 2, 'Versand'),
(14, 3, 'Доставка'),
(14, 4, 'Envío'),
(14, 5, 'Livraison'),
(15, 1, 'Localization'),
(15, 2, 'Lokalisierung'),
(15, 3, 'Локализация'),
(15, 4, 'Localización'),
(15, 5, 'Localisation'),
(16, 1, 'Preferences'),
(16, 2, 'Voreinstellungen'),
(16, 3, 'Настройки'),
(16, 4, 'Preferencias'),
(16, 5, 'Préférences'),
(17, 1, 'Advanced Parameters'),
(17, 2, 'Erweiterte Einstellungen'),
(17, 3, 'Расширенные параметры'),
(17, 4, 'Parámetros avanzados'),
(17, 5, 'Paramètres avancés'),
(18, 1, 'Administration'),
(18, 2, 'Verwaltung'),
(18, 3, 'Администрирование'),
(18, 4, 'Administración'),
(18, 5, 'Administration'),
(19, 1, 'Stats'),
(19, 2, 'Statistiken'),
(19, 3, 'Статистика'),
(19, 4, 'Estadísticas'),
(19, 5, 'Statistiques'),
(20, 1, 'Stock'),
(20, 2, 'Lager'),
(20, 3, 'Запасы'),
(20, 4, 'Stock'),
(20, 5, 'Stock'),
(21, 1, 'Products'),
(21, 2, 'Artikel'),
(21, 3, 'Товары'),
(21, 4, 'Productos'),
(21, 5, 'Produits'),
(22, 1, 'Categories'),
(22, 2, 'Kategorien'),
(22, 3, 'Категории'),
(22, 4, 'Categorías'),
(22, 5, 'Catégories'),
(23, 1, 'Monitoring'),
(23, 2, 'Kontrollübersicht'),
(23, 3, 'Мониторинг'),
(23, 4, 'Monitoreo'),
(23, 5, 'Suivi'),
(24, 1, 'Product Attributes'),
(24, 2, 'Artikelvarianten'),
(24, 3, 'Атрибуты товара'),
(24, 4, 'Atributos de producto'),
(24, 5, 'Attributs des produits'),
(25, 1, 'Product Features'),
(25, 2, 'Artikeleigenschaften'),
(25, 3, 'Характеристики товара'),
(25, 4, 'Características de producto'),
(25, 5, 'Caractéristiques'),
(26, 1, 'Manufacturers'),
(26, 2, 'Hersteller'),
(26, 3, 'Производители'),
(26, 4, 'Fabricantes'),
(26, 5, 'Fabricants'),
(27, 1, 'Suppliers'),
(27, 2, 'Lieferanten'),
(27, 3, 'Поставщики'),
(27, 4, 'Proveedores'),
(27, 5, 'Fournisseurs'),
(28, 1, 'Tags'),
(28, 2, 'Tags'),
(28, 3, 'Теги'),
(28, 4, 'Etiquetas'),
(28, 5, 'Mots-clés'),
(29, 1, 'Attachments'),
(29, 2, 'Anhänge'),
(29, 3, 'Вложения'),
(29, 4, 'Archivos adjuntos'),
(29, 5, 'Documents joints'),
(30, 1, 'Orders'),
(30, 2, 'Bestellungen'),
(30, 3, 'Заказы'),
(30, 4, 'Pedidos'),
(30, 5, 'Commandes'),
(31, 1, 'Invoices'),
(31, 2, 'Rechnungen'),
(31, 3, 'По счетам'),
(31, 4, 'Facturas'),
(31, 5, 'Factures'),
(32, 1, 'Merchandise Returns'),
(32, 2, 'Warenrücksendungen'),
(32, 3, 'Возвраты товаров'),
(32, 4, 'Devoluciones'),
(32, 5, 'Retours produits'),
(33, 1, 'Delivery Slips'),
(33, 2, 'Lieferscheine'),
(33, 3, 'Транспортные накладные'),
(33, 4, 'Albaranes de entrega'),
(33, 5, 'Bons de livraison'),
(34, 1, 'Credit Slips'),
(34, 2, 'Rückvergütungen'),
(34, 3, 'Платежные квитанции'),
(34, 4, 'Credit Slips'),
(34, 5, 'Avoirs'),
(35, 1, 'Statuses'),
(35, 2, 'Status'),
(35, 3, 'Статусы'),
(35, 4, 'Estados'),
(35, 5, 'États'),
(36, 1, 'Order Messages'),
(36, 2, 'Bestellnachrichten'),
(36, 3, 'Сообщения о заказах'),
(36, 4, 'Order Messages'),
(36, 5, 'Messages prédéfinis'),
(37, 1, 'Customers'),
(37, 2, 'Kunden'),
(37, 3, 'Клиенты'),
(37, 4, 'Clientes'),
(37, 5, 'Clients'),
(38, 1, 'Addresses'),
(38, 2, 'Adressen'),
(38, 3, 'Адреса'),
(38, 4, 'Direcciones'),
(38, 5, 'Adresses'),
(39, 1, 'Groups'),
(39, 2, 'Gruppen'),
(39, 3, 'Группы'),
(39, 4, 'Grupos'),
(39, 5, 'Groupes'),
(40, 1, 'Shopping Carts'),
(40, 2, 'Warenkörbe'),
(40, 3, 'Корзины'),
(40, 4, 'Carros de compra'),
(40, 5, 'Paniers'),
(41, 1, 'Customer Service'),
(41, 2, 'Kundenservice'),
(41, 3, 'Клиентская служба'),
(41, 4, 'Servicio al cliente'),
(41, 5, 'SAV'),
(42, 1, 'Contacts'),
(42, 2, 'Kontakte'),
(42, 3, 'Контакты'),
(42, 4, 'Contacts'),
(42, 5, 'Contacts'),
(43, 1, 'Titles'),
(43, 2, 'Anreden'),
(43, 3, 'Обращение'),
(43, 4, 'Titles'),
(43, 5, 'Titres de civilité'),
(44, 1, 'Outstanding'),
(44, 2, 'Offene Posten'),
(44, 3, 'Неоплаченный(е)'),
(44, 4, 'Cuentas por pagar'),
(44, 5, 'Encours autorisés'),
(45, 1, 'Cart Rules'),
(45, 2, 'Warenkorb Preisregeln'),
(45, 3, 'Правила корзины'),
(45, 4, 'Cart Rules'),
(45, 5, 'Règles panier'),
(46, 1, 'Catalog Price Rules'),
(46, 2, 'Katalog Preisregeln'),
(46, 3, 'Ценовые правила каталога'),
(46, 4, 'Catalog Price Rules'),
(46, 5, 'Règles de prix catalogue'),
(47, 1, 'Marketing'),
(47, 2, 'Marketing-Addons'),
(47, 3, 'Маркетинг'),
(47, 4, 'Márketing'),
(47, 5, 'Marketing'),
(48, 1, 'Carriers'),
(48, 2, 'Versanddienste'),
(48, 3, 'Перевозчики'),
(48, 4, 'Transportistas'),
(48, 5, 'Transporteurs'),
(49, 1, 'Preferences'),
(49, 2, 'Voreinstellungen'),
(49, 3, 'Настройки'),
(49, 4, 'Preferencias'),
(49, 5, 'Préférences'),
(50, 1, 'Carrier'),
(50, 2, 'Versanddienst'),
(50, 3, 'Перевозчик'),
(50, 4, 'Transportista'),
(50, 5, 'Transporteur'),
(51, 1, 'Localization'),
(51, 2, 'Lokalisierung'),
(51, 3, 'Локализация'),
(51, 4, 'Localización'),
(51, 5, 'Localisation'),
(52, 1, 'Languages'),
(52, 2, 'Sprachen'),
(52, 3, 'Язык'),
(52, 4, 'Idiomas'),
(52, 5, 'Langues'),
(53, 1, 'Zones'),
(53, 2, 'Gebiete'),
(53, 3, 'Зоны'),
(53, 4, 'Zones'),
(53, 5, 'Zones'),
(54, 1, 'Countries'),
(54, 2, 'Länder'),
(54, 3, 'Страны'),
(54, 4, 'Países'),
(54, 5, 'Pays'),
(55, 1, 'States'),
(55, 2, 'Bundesländer'),
(55, 3, 'Штаты'),
(55, 4, 'States'),
(55, 5, 'États'),
(56, 1, 'Currencies'),
(56, 2, 'Währungen'),
(56, 3, 'Валюты'),
(56, 4, 'Monedas'),
(56, 5, 'Devises'),
(57, 1, 'Taxes'),
(57, 2, 'Steuersätze'),
(57, 3, 'Налоги'),
(57, 4, 'Impuestos'),
(57, 5, 'Taxes'),
(58, 1, 'Tax Rules'),
(58, 2, 'Steuerregeln'),
(58, 3, 'Налоговые правила'),
(58, 4, 'Reglas de impuestos'),
(58, 5, 'Règles de taxes'),
(59, 1, 'Translations'),
(59, 2, 'Übersetzungen'),
(59, 3, 'Переводы'),
(59, 4, 'Traducciones'),
(59, 5, 'Traductions'),
(60, 1, 'Modules and Services'),
(60, 2, 'Module'),
(60, 3, 'Модули и Сервисы'),
(60, 4, 'Módulos y Servicios'),
(60, 5, 'Modules et services'),
(61, 1, 'Modules & Themes Catalog'),
(61, 2, 'Modul- und Template-Shop'),
(61, 3, 'Каталог модулей и шаблонов'),
(61, 4, 'Catálogo de Módulos y Temas'),
(61, 5, 'Catalogue de Modules et Thèmes'),
(62, 1, 'Positions'),
(62, 2, 'Positionen'),
(62, 3, 'Расположение блоков'),
(62, 4, 'Positions'),
(62, 5, 'Positions'),
(63, 1, 'Payment'),
(63, 2, 'Zahlungsart'),
(63, 3, 'Оплата'),
(63, 4, 'Payment'),
(63, 5, 'Paiement'),
(64, 1, 'General'),
(64, 2, 'Allgemein'),
(64, 3, 'Общее'),
(64, 4, 'Configuración'),
(64, 5, 'Paramètres généraux'),
(65, 1, 'Orders'),
(65, 2, 'Bestellungen'),
(65, 3, 'Заказы'),
(65, 4, 'Pedidos'),
(65, 5, 'Commandes'),
(66, 1, 'Products'),
(66, 2, 'Artikel'),
(66, 3, 'Товары'),
(66, 4, 'Productos'),
(66, 5, 'Produits'),
(67, 1, 'Customers'),
(67, 2, 'Kunden'),
(67, 3, 'Клиенты'),
(67, 4, 'Clientes'),
(67, 5, 'Clients'),
(68, 1, 'Themes'),
(68, 2, 'Templates'),
(68, 3, 'Шаблоны'),
(68, 4, 'Temas'),
(68, 5, 'Thèmes'),
(69, 1, 'SEO & URLs'),
(69, 2, 'SEO & URLs'),
(69, 3, 'SEO и URL'),
(69, 4, 'SEO & URLs'),
(69, 5, 'SEO & URL'),
(70, 1, 'CMS'),
(70, 2, 'CMS-Seiten'),
(70, 3, 'Страницы'),
(70, 4, 'CMS'),
(70, 5, 'CMS'),
(71, 1, 'Images'),
(71, 2, 'Bilder'),
(71, 3, 'Изображения'),
(71, 4, 'Imágenes'),
(71, 5, 'Images'),
(72, 1, 'Store Contacts'),
(72, 2, 'Shopadressen'),
(72, 3, 'Контакты магазина'),
(72, 4, 'Contactos de la tienda'),
(72, 5, 'Coordonnées et magasins'),
(73, 1, 'Search'),
(73, 2, 'Suche'),
(73, 3, 'Поиск'),
(73, 4, 'Buscar'),
(73, 5, 'Rechercher'),
(74, 1, 'Maintenance'),
(74, 2, 'Wartung'),
(74, 3, 'Обслуживание'),
(74, 4, 'Mantenimiento'),
(74, 5, 'Maintenance'),
(75, 1, 'Geolocation'),
(75, 2, 'Geotargeting'),
(75, 3, 'Геолокация'),
(75, 4, 'Geolocalización'),
(75, 5, 'Géolocalisation'),
(76, 1, 'Configuration Information'),
(76, 2, 'Systemeinstellungen'),
(76, 3, 'Информация о конфигурации'),
(76, 4, 'Información de configuración'),
(76, 5, 'Informations'),
(77, 1, 'Performance'),
(77, 2, 'Leistung'),
(77, 3, 'Производительность'),
(77, 4, 'Rendimiento'),
(77, 5, 'Performances'),
(78, 1, 'E-mail'),
(78, 2, 'E-Mail'),
(78, 3, 'E-mail'),
(78, 4, 'Correo electrónico'),
(78, 5, 'Email'),
(79, 1, 'Multistore'),
(79, 2, 'Multishop'),
(79, 3, 'Мультимагазин'),
(79, 4, 'Multitienda'),
(79, 5, 'Multiboutique'),
(80, 1, 'CSV Import'),
(80, 2, 'CSV-Import'),
(80, 3, 'Импорт CSV'),
(80, 4, 'Importación CSV'),
(80, 5, 'Imports CSV'),
(81, 1, 'DB Backup'),
(81, 2, 'Datenbank-Backup'),
(81, 3, 'Резервирование БД'),
(81, 4, 'Respaldar BBDD'),
(81, 5, 'Sauvegarde BDD'),
(82, 1, 'SQL Manager'),
(82, 2, 'SQL-Abfragen'),
(82, 3, 'Менеджер SQL'),
(82, 4, 'Gestor SQL'),
(82, 5, 'Gestionnaire SQL'),
(83, 1, 'Logs'),
(83, 2, 'Log-Dateien'),
(83, 3, 'Журнал событий'),
(83, 4, 'Registros'),
(83, 5, 'Logs'),
(84, 1, 'Webservice'),
(84, 2, 'Webservice'),
(84, 3, 'Веб службы'),
(84, 4, 'Webservice'),
(84, 5, 'Webservice'),
(85, 1, 'Preferences'),
(85, 2, 'Voreinstellungen'),
(85, 3, 'Настройки'),
(85, 4, 'Preferencias'),
(85, 5, 'Préférences'),
(86, 1, 'Quick Access'),
(86, 2, 'Schnellzugriff'),
(86, 3, 'Быстрый доступ'),
(86, 4, 'Acceso rápido'),
(86, 5, 'Accès rapide'),
(87, 1, 'Employees'),
(87, 2, 'Mitarbeiter'),
(87, 3, 'Сотрудники'),
(87, 4, 'Empleados'),
(87, 5, 'Employés'),
(88, 1, 'Profiles'),
(88, 2, 'Profile'),
(88, 3, 'Профили'),
(88, 4, 'Perfiles'),
(88, 5, 'Profils'),
(89, 1, 'Permissions'),
(89, 2, 'Berechtigungen'),
(89, 3, 'Права'),
(89, 4, 'Permisos'),
(89, 5, 'Permissions'),
(90, 1, 'Menus'),
(90, 2, 'Menüpunkte'),
(90, 3, 'Пункт меню'),
(90, 4, 'Menús'),
(90, 5, 'Menus'),
(91, 1, 'Stats'),
(91, 2, 'Statistiken'),
(91, 3, 'Статистика'),
(91, 4, 'Estadísticas'),
(91, 5, 'Statistiques'),
(92, 1, 'Search Engines'),
(92, 2, 'Suchmaschinen'),
(92, 3, 'Поисковые системы'),
(92, 4, 'Search Engines'),
(92, 5, 'Moteurs de recherche'),
(93, 1, 'Referrers'),
(93, 2, 'Referrer'),
(93, 3, 'Рефереры'),
(93, 4, 'Afiliados'),
(93, 5, 'Affiliés'),
(94, 1, 'Warehouses'),
(94, 2, 'Lager'),
(94, 3, 'Склады'),
(94, 4, 'Almacenes'),
(94, 5, 'Entrepôts'),
(95, 1, 'Stock Management'),
(95, 2, 'Lagerverwaltung'),
(95, 3, 'Управление складом'),
(95, 4, 'Stock Management'),
(95, 5, 'Gestion du stock'),
(96, 1, 'Stock Movement'),
(96, 2, 'Lagerbewegung'),
(96, 3, 'Движение запасов'),
(96, 4, 'Stock Movement'),
(96, 5, 'Mouvements de stock'),
(97, 1, 'Instant Stock Status'),
(97, 2, 'Aktueller Lagerstand'),
(97, 3, 'Текущее состояние склада'),
(97, 4, 'Instant Stock Status'),
(97, 5, 'État instantané du stock'),
(98, 1, 'Stock Coverage'),
(98, 2, 'Lagerbestand'),
(98, 3, 'Складские запасы'),
(98, 4, 'Cobertura de stock'),
(98, 5, 'Couverture du stock'),
(99, 1, 'Supply orders'),
(99, 2, 'Bestellaufträge'),
(99, 3, 'Заказы на поставку'),
(99, 4, 'Supply orders'),
(99, 5, 'Commandes fournisseurs'),
(100, 1, 'Configuration'),
(100, 2, 'Einstellungen'),
(100, 3, 'Конфигурация'),
(100, 4, 'Configuración'),
(100, 5, 'Paramètres'),
(101, 1, 'BlockCategories'),
(101, 2, 'Block Kategorien'),
(101, 3, 'Блок Категории'),
(101, 4, 'Bloque Categorías'),
(101, 5, 'Bloc Catégories'),
(102, 1, 'Dashgoals'),
(102, 2, 'Schnellübersicht'),
(102, 3, 'Пульт целей'),
(102, 4, 'Dashgoals'),
(102, 5, 'Objectifs'),
(103, 1, 'Theme Configurator'),
(103, 2, 'Template-Konfigurator'),
(103, 3, 'конфигуратор шаблона'),
(103, 4, 'Configurador del tema'),
(103, 5, 'Configurateur de thème'),
(104, 1, 'Merchant Expertise'),
(104, 2, 'Handelserfolg'),
(104, 3, 'Торговое мастерство'),
(104, 4, 'Experiencia Comercial'),
(104, 5, 'Expertise PrestaShop'),
(105, 1, 'Cron Jobs'),
(105, 2, 'Cron Jobs'),
(105, 3, 'Cron Jobs'),
(105, 4, 'Cron Jobs'),
(105, 5, 'Cron Jobs'),
(107, 1, 'tmproductvideos'),
(107, 2, 'tmproductvideos'),
(107, 3, 'tmproductvideos'),
(107, 4, 'tmproductvideos'),
(107, 5, 'tmproductvideos'),
(108, 1, 'Sample Data Install'),
(108, 2, 'Sample Data Install'),
(108, 3, 'Sample Data Install'),
(108, 4, 'Sample Data Install'),
(108, 5, 'Sample Data Install'),
(109, 1, 'Import Data'),
(109, 2, 'Import Data'),
(109, 3, 'Import Data'),
(109, 4, 'Import Data'),
(109, 5, 'Import Data'),
(110, 1, 'Export Data'),
(110, 2, 'Export Data'),
(110, 3, 'Export Data'),
(110, 4, 'Export Data'),
(110, 5, 'Export Data');

-- --------------------------------------------------------

--
-- Structure de la table `ps_tab_module_preference`
--

CREATE TABLE `ps_tab_module_preference` (
  `id_tab_module_preference` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_tag`
--

CREATE TABLE `ps_tag` (
  `id_tag` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_tag_count`
--

CREATE TABLE `ps_tag_count` (
  `id_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_tag` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_lang` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `counter` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_tax`
--

CREATE TABLE `ps_tax` (
  `id_tax` int(10) UNSIGNED NOT NULL,
  `rate` decimal(10,3) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_tax`
--

INSERT INTO `ps_tax` (`id_tax`, `rate`, `active`, `deleted`) VALUES
(1, '4.000', 1, 0),
(2, '0.000', 1, 0),
(3, '6.600', 1, 0),
(4, '6.000', 1, 0),
(5, '8.250', 1, 0),
(6, '2.900', 1, 0),
(7, '0.000', 1, 0),
(8, '0.000', 1, 0),
(9, '6.000', 1, 0),
(10, '4.000', 1, 0),
(11, '4.000', 1, 0),
(12, '6.000', 1, 0),
(13, '6.250', 1, 0),
(14, '7.000', 1, 0),
(15, '6.000', 1, 0),
(16, '5.300', 1, 0),
(17, '6.000', 1, 0),
(18, '4.000', 1, 0),
(19, '5.000', 1, 0),
(20, '6.000', 1, 0),
(21, '6.250', 1, 0),
(22, '6.000', 1, 0),
(23, '6.875', 1, 0),
(24, '7.000', 1, 0),
(25, '4.225', 1, 0),
(26, '0.000', 1, 0),
(27, '5.500', 1, 0),
(28, '6.850', 1, 0),
(29, '0.000', 1, 0),
(30, '7.000', 1, 0),
(31, '5.125', 1, 0),
(32, '4.000', 1, 0),
(33, '5.500', 1, 0),
(34, '5.000', 1, 0),
(35, '5.500', 1, 0),
(36, '4.500', 1, 0),
(37, '0.000', 1, 0),
(38, '6.000', 1, 0),
(39, '7.000', 1, 0),
(40, '6.000', 1, 0),
(41, '4.000', 1, 0),
(42, '7.000', 1, 0),
(43, '6.250', 1, 0),
(44, '4.750', 1, 0),
(45, '6.000', 1, 0),
(46, '4.000', 1, 0),
(47, '6.500', 1, 0),
(48, '6.000', 1, 0),
(49, '5.000', 1, 0),
(50, '4.000', 1, 0),
(51, '5.500', 1, 0),
(52, '6.000', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_tax_lang`
--

CREATE TABLE `ps_tax_lang` (
  `id_tax` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_tax_lang`
--

INSERT INTO `ps_tax_lang` (`id_tax`, `id_lang`, `name`) VALUES
(1, 1, 'Sales-taxes US-AL 4%'),
(1, 2, 'Sales-taxes US-AL 4%'),
(1, 3, 'Sales-taxes US-AL 4%'),
(1, 4, 'Sales-taxes US-AL 4%'),
(1, 5, 'Sales-taxes US-AL 4%'),
(2, 1, 'Sales-taxes US-AK 0%'),
(2, 2, 'Sales-taxes US-AK 0%'),
(2, 3, 'Sales-taxes US-AK 0%'),
(2, 4, 'Sales-taxes US-AK 0%'),
(2, 5, 'Sales-taxes US-AK 0%'),
(3, 1, 'Sales-taxes US-AZ 6.6%'),
(3, 2, 'Sales-taxes US-AZ 6.6%'),
(3, 3, 'Sales-taxes US-AZ 6.6%'),
(3, 4, 'Sales-taxes US-AZ 6.6%'),
(3, 5, 'Sales-taxes US-AZ 6.6%'),
(4, 1, 'Sales-taxes US-AR 6%'),
(4, 2, 'Sales-taxes US-AR 6%'),
(4, 3, 'Sales-taxes US-AR 6%'),
(4, 4, 'Sales-taxes US-AR 6%'),
(4, 5, 'Sales-taxes US-AR 6%'),
(5, 1, 'Sales-taxes US-CA 8.25%'),
(5, 2, 'Sales-taxes US-CA 8.25%'),
(5, 3, 'Sales-taxes US-CA 8.25%'),
(5, 4, 'Sales-taxes US-CA 8.25%'),
(5, 5, 'Sales-taxes US-CA 8.25%'),
(6, 1, 'Sales-taxes US-CO 2.9%'),
(6, 2, 'Sales-taxes US-CO 2.9%'),
(6, 3, 'Sales-taxes US-CO 2.9%'),
(6, 4, 'Sales-taxes US-CO 2.9%'),
(6, 5, 'Sales-taxes US-CO 2.9%'),
(7, 1, 'Sales-taxes US-CT 0%'),
(7, 2, 'Sales-taxes US-CT 0%'),
(7, 3, 'Sales-taxes US-CT 0%'),
(7, 4, 'Sales-taxes US-CT 0%'),
(7, 5, 'Sales-taxes US-CT 0%'),
(8, 1, 'Sales-taxes US-DE 0%'),
(8, 2, 'Sales-taxes US-DE 0%'),
(8, 3, 'Sales-taxes US-DE 0%'),
(8, 4, 'Sales-taxes US-DE 0%'),
(8, 5, 'Sales-taxes US-DE 0%'),
(9, 1, 'Sales-taxes US-FL 6%'),
(9, 2, 'Sales-taxes US-FL 6%'),
(9, 3, 'Sales-taxes US-FL 6%'),
(9, 4, 'Sales-taxes US-FL 6%'),
(9, 5, 'Sales-taxes US-FL 6%'),
(10, 1, 'Sales-taxes US-GA 4%'),
(10, 2, 'Sales-taxes US-GA 4%'),
(10, 3, 'Sales-taxes US-GA 4%'),
(10, 4, 'Sales-taxes US-GA 4%'),
(10, 5, 'Sales-taxes US-GA 4%'),
(11, 1, 'Sales-taxes US-HI 4%'),
(11, 2, 'Sales-taxes US-HI 4%'),
(11, 3, 'Sales-taxes US-HI 4%'),
(11, 4, 'Sales-taxes US-HI 4%'),
(11, 5, 'Sales-taxes US-HI 4%'),
(12, 1, 'Sales-taxes US-ID 6%'),
(12, 2, 'Sales-taxes US-ID 6%'),
(12, 3, 'Sales-taxes US-ID 6%'),
(12, 4, 'Sales-taxes US-ID 6%'),
(12, 5, 'Sales-taxes US-ID 6%'),
(13, 1, 'Sales-taxes US-IL 6.25%'),
(13, 2, 'Sales-taxes US-IL 6.25%'),
(13, 3, 'Sales-taxes US-IL 6.25%'),
(13, 4, 'Sales-taxes US-IL 6.25%'),
(13, 5, 'Sales-taxes US-IL 6.25%'),
(14, 1, 'Sales-taxes US-IN 7%'),
(14, 2, 'Sales-taxes US-IN 7%'),
(14, 3, 'Sales-taxes US-IN 7%'),
(14, 4, 'Sales-taxes US-IN 7%'),
(14, 5, 'Sales-taxes US-IN 7%'),
(15, 1, 'Sales-taxes US-IA 6%'),
(15, 2, 'Sales-taxes US-IA 6%'),
(15, 3, 'Sales-taxes US-IA 6%'),
(15, 4, 'Sales-taxes US-IA 6%'),
(15, 5, 'Sales-taxes US-IA 6%'),
(16, 1, 'Sales-taxes US-KS 5.3%'),
(16, 2, 'Sales-taxes US-KS 5.3%'),
(16, 3, 'Sales-taxes US-KS 5.3%'),
(16, 4, 'Sales-taxes US-KS 5.3%'),
(16, 5, 'Sales-taxes US-KS 5.3%'),
(17, 1, 'Sales-taxes US-KY 6%'),
(17, 2, 'Sales-taxes US-KY 6%'),
(17, 3, 'Sales-taxes US-KY 6%'),
(17, 4, 'Sales-taxes US-KY 6%'),
(17, 5, 'Sales-taxes US-KY 6%'),
(18, 1, 'Sales-taxes US-LA 4%'),
(18, 2, 'Sales-taxes US-LA 4%'),
(18, 3, 'Sales-taxes US-LA 4%'),
(18, 4, 'Sales-taxes US-LA 4%'),
(18, 5, 'Sales-taxes US-LA 4%'),
(19, 1, 'Sales-taxes US-ME 5%'),
(19, 2, 'Sales-taxes US-ME 5%'),
(19, 3, 'Sales-taxes US-ME 5%'),
(19, 4, 'Sales-taxes US-ME 5%'),
(19, 5, 'Sales-taxes US-ME 5%'),
(20, 1, 'Sales-taxes US-MD 6%'),
(20, 2, 'Sales-taxes US-MD 6%'),
(20, 3, 'Sales-taxes US-MD 6%'),
(20, 4, 'Sales-taxes US-MD 6%'),
(20, 5, 'Sales-taxes US-MD 6%'),
(21, 1, 'Sales-taxes US-MA 6.25%'),
(21, 2, 'Sales-taxes US-MA 6.25%'),
(21, 3, 'Sales-taxes US-MA 6.25%'),
(21, 4, 'Sales-taxes US-MA 6.25%'),
(21, 5, 'Sales-taxes US-MA 6.25%'),
(22, 1, 'Sales-taxes US-MI 6%'),
(22, 2, 'Sales-taxes US-MI 6%'),
(22, 3, 'Sales-taxes US-MI 6%'),
(22, 4, 'Sales-taxes US-MI 6%'),
(22, 5, 'Sales-taxes US-MI 6%'),
(23, 1, 'Sales-taxes US-MN 6.875%'),
(23, 2, 'Sales-taxes US-MN 6.875%'),
(23, 3, 'Sales-taxes US-MN 6.875%'),
(23, 4, 'Sales-taxes US-MN 6.875%'),
(23, 5, 'Sales-taxes US-MN 6.875%'),
(24, 1, 'Sales-taxes US-MS 7%'),
(24, 2, 'Sales-taxes US-MS 7%'),
(24, 3, 'Sales-taxes US-MS 7%'),
(24, 4, 'Sales-taxes US-MS 7%'),
(24, 5, 'Sales-taxes US-MS 7%'),
(25, 1, 'Sales-taxes US-MO 4.225%'),
(25, 2, 'Sales-taxes US-MO 4.225%'),
(25, 3, 'Sales-taxes US-MO 4.225%'),
(25, 4, 'Sales-taxes US-MO 4.225%'),
(25, 5, 'Sales-taxes US-MO 4.225%'),
(26, 1, 'Sales-taxes US-MT 0.0%'),
(26, 2, 'Sales-taxes US-MT 0.0%'),
(26, 3, 'Sales-taxes US-MT 0.0%'),
(26, 4, 'Sales-taxes US-MT 0.0%'),
(26, 5, 'Sales-taxes US-MT 0.0%'),
(27, 1, 'Sales-taxes US-NE 5.5%'),
(27, 2, 'Sales-taxes US-NE 5.5%'),
(27, 3, 'Sales-taxes US-NE 5.5%'),
(27, 4, 'Sales-taxes US-NE 5.5%'),
(27, 5, 'Sales-taxes US-NE 5.5%'),
(28, 1, 'Sales-taxes US-NV 6.85%'),
(28, 2, 'Sales-taxes US-NV 6.85%'),
(28, 3, 'Sales-taxes US-NV 6.85%'),
(28, 4, 'Sales-taxes US-NV 6.85%'),
(28, 5, 'Sales-taxes US-NV 6.85%'),
(29, 1, 'Sales-taxes US-NH 0%'),
(29, 2, 'Sales-taxes US-NH 0%'),
(29, 3, 'Sales-taxes US-NH 0%'),
(29, 4, 'Sales-taxes US-NH 0%'),
(29, 5, 'Sales-taxes US-NH 0%'),
(30, 1, 'Sales-taxes US-NJ 7%'),
(30, 2, 'Sales-taxes US-NJ 7%'),
(30, 3, 'Sales-taxes US-NJ 7%'),
(30, 4, 'Sales-taxes US-NJ 7%'),
(30, 5, 'Sales-taxes US-NJ 7%'),
(31, 1, 'Sales-taxes US-NM 5.125%'),
(31, 2, 'Sales-taxes US-NM 5.125%'),
(31, 3, 'Sales-taxes US-NM 5.125%'),
(31, 4, 'Sales-taxes US-NM 5.125%'),
(31, 5, 'Sales-taxes US-NM 5.125%'),
(32, 1, 'Sales-taxes US-NY 4%'),
(32, 2, 'Sales-taxes US-NY 4%'),
(32, 3, 'Sales-taxes US-NY 4%'),
(32, 4, 'Sales-taxes US-NY 4%'),
(32, 5, 'Sales-taxes US-NY 4%'),
(33, 1, 'Sales-taxes US-NC 5.5%'),
(33, 2, 'Sales-taxes US-NC 5.5%'),
(33, 3, 'Sales-taxes US-NC 5.5%'),
(33, 4, 'Sales-taxes US-NC 5.5%'),
(33, 5, 'Sales-taxes US-NC 5.5%'),
(34, 1, 'Sales-taxes US-ND 5%'),
(34, 2, 'Sales-taxes US-ND 5%'),
(34, 3, 'Sales-taxes US-ND 5%'),
(34, 4, 'Sales-taxes US-ND 5%'),
(34, 5, 'Sales-taxes US-ND 5%'),
(35, 1, 'Sales-taxes US-OH 5.5%'),
(35, 2, 'Sales-taxes US-OH 5.5%'),
(35, 3, 'Sales-taxes US-OH 5.5%'),
(35, 4, 'Sales-taxes US-OH 5.5%'),
(35, 5, 'Sales-taxes US-OH 5.5%'),
(36, 1, 'Sales-taxes US-OK 4.5%'),
(36, 2, 'Sales-taxes US-OK 4.5%'),
(36, 3, 'Sales-taxes US-OK 4.5%'),
(36, 4, 'Sales-taxes US-OK 4.5%'),
(36, 5, 'Sales-taxes US-OK 4.5%'),
(37, 1, 'Sales-taxes US-OR 0%'),
(37, 2, 'Sales-taxes US-OR 0%'),
(37, 3, 'Sales-taxes US-OR 0%'),
(37, 4, 'Sales-taxes US-OR 0%'),
(37, 5, 'Sales-taxes US-OR 0%'),
(38, 1, 'Sales-taxes US-PA 6%'),
(38, 2, 'Sales-taxes US-PA 6%'),
(38, 3, 'Sales-taxes US-PA 6%'),
(38, 4, 'Sales-taxes US-PA 6%'),
(38, 5, 'Sales-taxes US-PA 6%'),
(39, 1, 'Sales-taxes US-RI 7%'),
(39, 2, 'Sales-taxes US-RI 7%'),
(39, 3, 'Sales-taxes US-RI 7%'),
(39, 4, 'Sales-taxes US-RI 7%'),
(39, 5, 'Sales-taxes US-RI 7%'),
(40, 1, 'Sales-taxes US-SC 6%'),
(40, 2, 'Sales-taxes US-SC 6%'),
(40, 3, 'Sales-taxes US-SC 6%'),
(40, 4, 'Sales-taxes US-SC 6%'),
(40, 5, 'Sales-taxes US-SC 6%'),
(41, 1, 'Sales-taxes US-SD 4%'),
(41, 2, 'Sales-taxes US-SD 4%'),
(41, 3, 'Sales-taxes US-SD 4%'),
(41, 4, 'Sales-taxes US-SD 4%'),
(41, 5, 'Sales-taxes US-SD 4%'),
(42, 1, 'Sales-taxes US-TN 7%'),
(42, 2, 'Sales-taxes US-TN 7%'),
(42, 3, 'Sales-taxes US-TN 7%'),
(42, 4, 'Sales-taxes US-TN 7%'),
(42, 5, 'Sales-taxes US-TN 7%'),
(43, 1, 'Sales-taxes US-TX 6.25%'),
(43, 2, 'Sales-taxes US-TX 6.25%'),
(43, 3, 'Sales-taxes US-TX 6.25%'),
(43, 4, 'Sales-taxes US-TX 6.25%'),
(43, 5, 'Sales-taxes US-TX 6.25%'),
(44, 1, 'Sales-taxes US-UT 4.75%'),
(44, 2, 'Sales-taxes US-UT 4.75%'),
(44, 3, 'Sales-taxes US-UT 4.75%'),
(44, 4, 'Sales-taxes US-UT 4.75%'),
(44, 5, 'Sales-taxes US-UT 4.75%'),
(45, 1, 'Sales-taxes US-VT 6%'),
(45, 2, 'Sales-taxes US-VT 6%'),
(45, 3, 'Sales-taxes US-VT 6%'),
(45, 4, 'Sales-taxes US-VT 6%'),
(45, 5, 'Sales-taxes US-VT 6%'),
(46, 1, 'Sales-taxes US-VA 4%'),
(46, 2, 'Sales-taxes US-VA 4%'),
(46, 3, 'Sales-taxes US-VA 4%'),
(46, 4, 'Sales-taxes US-VA 4%'),
(46, 5, 'Sales-taxes US-VA 4%'),
(47, 1, 'Sales-taxes US-WA 6.5%'),
(47, 2, 'Sales-taxes US-WA 6.5%'),
(47, 3, 'Sales-taxes US-WA 6.5%'),
(47, 4, 'Sales-taxes US-WA 6.5%'),
(47, 5, 'Sales-taxes US-WA 6.5%'),
(48, 1, 'Sales-taxes US-WV 6%'),
(48, 2, 'Sales-taxes US-WV 6%'),
(48, 3, 'Sales-taxes US-WV 6%'),
(48, 4, 'Sales-taxes US-WV 6%'),
(48, 5, 'Sales-taxes US-WV 6%'),
(49, 1, 'Sales-taxes US-WI 5%'),
(49, 2, 'Sales-taxes US-WI 5%'),
(49, 3, 'Sales-taxes US-WI 5%'),
(49, 4, 'Sales-taxes US-WI 5%'),
(49, 5, 'Sales-taxes US-WI 5%'),
(50, 1, 'Sales-taxes US-WY 4%'),
(50, 2, 'Sales-taxes US-WY 4%'),
(50, 3, 'Sales-taxes US-WY 4%'),
(50, 4, 'Sales-taxes US-WY 4%'),
(50, 5, 'Sales-taxes US-WY 4%'),
(51, 1, 'Sales-taxes US-PR 5.5%'),
(51, 2, 'Sales-taxes US-PR 5.5%'),
(51, 3, 'Sales-taxes US-PR 5.5%'),
(51, 4, 'Sales-taxes US-PR 5.5%'),
(51, 5, 'Sales-taxes US-PR 5.5%'),
(52, 1, 'Sales-taxes US-DC 6%'),
(52, 2, 'Sales-taxes US-DC 6%'),
(52, 3, 'Sales-taxes US-DC 6%'),
(52, 4, 'Sales-taxes US-DC 6%'),
(52, 5, 'Sales-taxes US-DC 6%');

-- --------------------------------------------------------

--
-- Structure de la table `ps_tax_rule`
--

CREATE TABLE `ps_tax_rule` (
  `id_tax_rule` int(11) NOT NULL,
  `id_tax_rules_group` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `zipcode_from` varchar(12) NOT NULL,
  `zipcode_to` varchar(12) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `behavior` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_tax_rule`
--

INSERT INTO `ps_tax_rule` (`id_tax_rule`, `id_tax_rules_group`, `id_country`, `id_state`, `zipcode_from`, `zipcode_to`, `id_tax`, `behavior`, `description`) VALUES
(1, 1, 21, 1, '0', '0', 1, 1, ''),
(2, 2, 21, 2, '0', '0', 2, 1, ''),
(3, 3, 21, 3, '0', '0', 3, 1, ''),
(4, 4, 21, 4, '0', '0', 4, 1, ''),
(5, 5, 21, 5, '0', '0', 5, 1, ''),
(6, 6, 21, 6, '0', '0', 6, 1, ''),
(7, 7, 21, 7, '0', '0', 7, 1, ''),
(8, 8, 21, 8, '0', '0', 8, 1, ''),
(9, 9, 21, 9, '0', '0', 9, 1, ''),
(10, 10, 21, 10, '0', '0', 10, 1, ''),
(11, 11, 21, 11, '0', '0', 11, 1, ''),
(12, 12, 21, 12, '0', '0', 12, 1, ''),
(13, 13, 21, 13, '0', '0', 13, 1, ''),
(14, 14, 21, 14, '0', '0', 14, 1, ''),
(15, 15, 21, 15, '0', '0', 15, 1, ''),
(16, 16, 21, 16, '0', '0', 16, 1, ''),
(17, 17, 21, 17, '0', '0', 17, 1, ''),
(18, 18, 21, 18, '0', '0', 18, 1, ''),
(19, 19, 21, 19, '0', '0', 19, 1, ''),
(20, 20, 21, 20, '0', '0', 20, 1, ''),
(21, 21, 21, 21, '0', '0', 21, 1, ''),
(22, 22, 21, 22, '0', '0', 22, 1, ''),
(23, 23, 21, 23, '0', '0', 23, 1, ''),
(24, 24, 21, 24, '0', '0', 24, 1, ''),
(25, 25, 21, 25, '0', '0', 25, 1, ''),
(26, 26, 21, 26, '0', '0', 26, 1, ''),
(27, 27, 21, 27, '0', '0', 27, 1, ''),
(28, 28, 21, 28, '0', '0', 28, 1, ''),
(29, 29, 21, 29, '0', '0', 29, 1, ''),
(30, 30, 21, 30, '0', '0', 30, 1, ''),
(31, 31, 21, 31, '0', '0', 31, 1, ''),
(32, 32, 21, 32, '0', '0', 32, 1, ''),
(33, 33, 21, 33, '0', '0', 33, 1, ''),
(34, 34, 21, 34, '0', '0', 34, 1, ''),
(35, 35, 21, 35, '0', '0', 35, 1, ''),
(36, 36, 21, 36, '0', '0', 36, 1, ''),
(37, 37, 21, 37, '0', '0', 37, 1, ''),
(38, 38, 21, 38, '0', '0', 38, 1, ''),
(39, 39, 21, 39, '0', '0', 39, 1, ''),
(40, 40, 21, 40, '0', '0', 40, 1, ''),
(41, 41, 21, 41, '0', '0', 41, 1, ''),
(42, 42, 21, 42, '0', '0', 42, 1, ''),
(43, 43, 21, 43, '0', '0', 43, 1, ''),
(44, 44, 21, 44, '0', '0', 44, 1, ''),
(45, 45, 21, 45, '0', '0', 45, 1, ''),
(46, 46, 21, 46, '0', '0', 46, 1, ''),
(47, 47, 21, 47, '0', '0', 47, 1, ''),
(48, 48, 21, 48, '0', '0', 48, 1, ''),
(49, 49, 21, 49, '0', '0', 49, 1, ''),
(50, 50, 21, 50, '0', '0', 50, 1, ''),
(51, 51, 21, 51, '0', '0', 51, 1, ''),
(52, 52, 21, 53, '0', '0', 52, 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `ps_tax_rules_group`
--

CREATE TABLE `ps_tax_rules_group` (
  `id_tax_rules_group` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_tax_rules_group`
--

INSERT INTO `ps_tax_rules_group` (`id_tax_rules_group`, `name`, `active`, `deleted`, `date_add`, `date_upd`) VALUES
(1, 'US-AL Rate (4%)', 1, 0, '2016-08-03 23:11:32', '2016-08-03 23:11:32'),
(2, 'US-AK Rate (0%)', 1, 0, '2016-08-03 23:11:32', '2016-08-03 23:11:32'),
(3, 'US-AZ Rate (6.6%)', 1, 0, '2016-08-03 23:11:32', '2016-08-03 23:11:32'),
(4, 'US-AR Rate (6%)', 1, 0, '2016-08-03 23:11:32', '2016-08-03 23:11:32'),
(5, 'US-CA Rate (8.25%)', 1, 0, '2016-08-03 23:11:32', '2016-08-03 23:11:32'),
(6, 'US-CO Rate (2.9%)', 1, 0, '2016-08-03 23:11:32', '2016-08-03 23:11:32'),
(7, 'US-CT Rate (0%)', 1, 0, '2016-08-03 23:11:33', '2016-08-03 23:11:33'),
(8, 'US-DE Rate (0%)', 1, 0, '2016-08-03 23:11:33', '2016-08-03 23:11:33'),
(9, 'US-FL Rate (6%)', 1, 0, '2016-08-03 23:11:33', '2016-08-03 23:11:33'),
(10, 'US-GA Rate (4%)', 1, 0, '2016-08-03 23:11:33', '2016-08-03 23:11:33'),
(11, 'US-HI Rate (4%)', 1, 0, '2016-08-03 23:11:33', '2016-08-03 23:11:33'),
(12, 'US-ID Rate (6%)', 1, 0, '2016-08-03 23:11:34', '2016-08-03 23:11:34'),
(13, 'US-IL Rate (6.25%)', 1, 0, '2016-08-03 23:11:34', '2016-08-03 23:11:34'),
(14, 'US-IN Rate (7%)', 1, 0, '2016-08-03 23:11:34', '2016-08-03 23:11:34'),
(15, 'US-IA Rate (6%)', 1, 0, '2016-08-03 23:11:33', '2016-08-03 23:11:33'),
(16, 'US-KS Rate (5.3%)', 1, 0, '2016-08-03 23:11:34', '2016-08-03 23:11:34'),
(17, 'US-KY Rate (6%)', 1, 0, '2016-08-03 23:11:34', '2016-08-03 23:11:34'),
(18, 'US-LA Rate (4%)', 1, 0, '2016-08-03 23:11:34', '2016-08-03 23:11:34'),
(19, 'US-ME Rate (5%)', 1, 0, '2016-08-03 23:11:35', '2016-08-03 23:11:35'),
(20, 'US-MD Rate (6%)', 1, 0, '2016-08-03 23:11:35', '2016-08-03 23:11:35'),
(21, 'US-MA Rate (6.25%)', 1, 0, '2016-08-03 23:11:35', '2016-08-03 23:11:35'),
(22, 'US-MI Rate (6%)', 1, 0, '2016-08-03 23:11:35', '2016-08-03 23:11:35'),
(23, 'US-MN Rate (6.875%)', 1, 0, '2016-08-03 23:11:35', '2016-08-03 23:11:35'),
(24, 'US-MS Rate (7%)', 1, 0, '2016-08-03 23:11:35', '2016-08-03 23:11:35'),
(25, 'US-MO Rate (4.225%)', 1, 0, '2016-08-03 23:11:35', '2016-08-03 23:11:35'),
(26, 'US-MT Rate (0%)', 1, 0, '2016-08-03 23:11:35', '2016-08-03 23:11:35'),
(27, 'US-NE Rate (5.5%)', 1, 0, '2016-08-03 23:11:36', '2016-08-03 23:11:36'),
(28, 'US-NV Rate (6.85%)', 1, 0, '2016-08-03 23:11:36', '2016-08-03 23:11:36'),
(29, 'US-NH Rate (0%)', 1, 0, '2016-08-03 23:11:36', '2016-08-03 23:11:36'),
(30, 'US-NJ Rate (7%)', 1, 0, '2016-08-03 23:11:36', '2016-08-03 23:11:36'),
(31, 'US-NM Rate (5.125%)', 1, 0, '2016-08-03 23:11:36', '2016-08-03 23:11:36'),
(32, 'US-NY Rate (4%)', 1, 0, '2016-08-03 23:11:37', '2016-08-03 23:11:37'),
(33, 'US-NC Rate (5.5%)', 1, 0, '2016-08-03 23:11:35', '2016-08-03 23:11:35'),
(34, 'US-ND Rate (5%)', 1, 0, '2016-08-03 23:11:35', '2016-08-03 23:11:35'),
(35, 'US-OH Rate (5.5%)', 1, 0, '2016-08-03 23:11:37', '2016-08-03 23:11:37'),
(36, 'US-OK Rate (4.5%)', 1, 0, '2016-08-03 23:11:37', '2016-08-03 23:11:37'),
(37, 'US-OR Rate (0%)', 1, 0, '2016-08-03 23:11:37', '2016-08-03 23:11:37'),
(38, 'US-PA Rate (6%)', 1, 0, '2016-08-03 23:11:37', '2016-08-03 23:11:37'),
(39, 'US-RI Rate (7%)', 1, 0, '2016-08-03 23:11:38', '2016-08-03 23:11:38'),
(40, 'US-SC Rate (6%)', 1, 0, '2016-08-03 23:11:38', '2016-08-03 23:11:38'),
(41, 'US-SD Rate (4%)', 1, 0, '2016-08-03 23:11:38', '2016-08-03 23:11:38'),
(42, 'US-TN Rate (7%)', 1, 0, '2016-08-03 23:11:38', '2016-08-03 23:11:38'),
(43, 'US-TX Rate (6.25%)', 1, 0, '2016-08-03 23:11:38', '2016-08-03 23:11:38'),
(44, 'US-UT Rate (4.75%)', 1, 0, '2016-08-03 23:11:38', '2016-08-03 23:11:38'),
(45, 'US-VT Rate (6%)', 1, 0, '2016-08-03 23:11:39', '2016-08-03 23:11:39'),
(46, 'US-VA Rate (4%)', 1, 0, '2016-08-03 23:11:39', '2016-08-03 23:11:39'),
(47, 'US-WA Rate (6.5%)', 1, 0, '2016-08-03 23:11:39', '2016-08-03 23:11:39'),
(48, 'US-WV Rate (6%)', 1, 0, '2016-08-03 23:11:39', '2016-08-03 23:11:39'),
(49, 'US-WI Rate (5%)', 1, 0, '2016-08-03 23:11:39', '2016-08-03 23:11:39'),
(50, 'US-WY Rate (4%)', 1, 0, '2016-08-03 23:11:39', '2016-08-03 23:11:39'),
(51, 'US-PR Rate (5.5%)', 1, 0, '2016-08-03 23:11:38', '2016-08-03 23:11:38'),
(52, 'US-DC Rate (6%)', 1, 0, '2016-08-03 23:11:33', '2016-08-03 23:11:33');

-- --------------------------------------------------------

--
-- Structure de la table `ps_tax_rules_group_shop`
--

CREATE TABLE `ps_tax_rules_group_shop` (
  `id_tax_rules_group` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_tax_rules_group_shop`
--

INSERT INTO `ps_tax_rules_group_shop` (`id_tax_rules_group`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_theme`
--

CREATE TABLE `ps_theme` (
  `id_theme` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `directory` varchar(64) NOT NULL,
  `responsive` tinyint(1) NOT NULL DEFAULT '0',
  `default_left_column` tinyint(1) NOT NULL DEFAULT '0',
  `default_right_column` tinyint(1) NOT NULL DEFAULT '0',
  `product_per_page` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_theme`
--

INSERT INTO `ps_theme` (`id_theme`, `name`, `directory`, `responsive`, `default_left_column`, `default_right_column`, `product_per_page`) VALUES
(1, 'default-bootstrap', 'default-bootstrap', 1, 1, 0, 12),
(2, 'theme1189', 'theme1189', 1, 1, 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `ps_themeconfigurator`
--

CREATE TABLE `ps_themeconfigurator` (
  `id_item` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `item_order` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `title_use` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hook` varchar(100) DEFAULT NULL,
  `url` text,
  `target` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(100) DEFAULT NULL,
  `image_w` varchar(10) DEFAULT NULL,
  `image_h` varchar(10) DEFAULT NULL,
  `html` text,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_themeconfigurator`
--

INSERT INTO `ps_themeconfigurator` (`id_item`, `id_shop`, `id_lang`, `item_order`, `title`, `title_use`, `hook`, `url`, `target`, `image`, `image_w`, `image_h`, `html`, `active`) VALUES
(10, 1, 1, 1, '', 0, 'footer', 'index.php', 0, 'fcf4fb12296424071f36c1e98ca5d5ca1632b9fb_logo.jpg', '175', '0', '<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>', 1),
(11, 1, 2, 1, NULL, 0, 'footer', 'index.php', 0, '559748c6797af8b7dff9e428366d65761f1e215d_logo-footer.png', '175', NULL, '<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>', 1),
(12, 1, 3, 1, NULL, 0, 'footer', 'index.php', 0, '5efda538d4a0d8604509ba3b30ae72938c8c5765_logo-footer.png', '175', NULL, '<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>', 1),
(13, 1, 4, 1, NULL, 0, 'footer', 'index.php', 0, 'cfd79384500d7cebdddec2d51b7ebb231ec100ee_logo-footer.png', '175', NULL, '<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>', 1),
(14, 1, 5, 1, NULL, 0, 'footer', 'index.php', 0, '02506e700e437c79cf7c31f077e644f9166a11b0_logo-footer.png', '175', NULL, '<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>', 1),
(15, 1, 2, 1, 'baner 4', 0, 'home', NULL, 0, '0edbab4713920301a039ddd3cdd203795b3ede20_box-1.jpg', '0', '0', '<div class="container">\r\n<h4>Siemens</h4>\r\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing\r\nelit, sed do eiusmod tempor</p>\r\n<div class="sh-now"><a href="index.php?id_category=41&amp;controller=category">Shop Now!</a></div>\r\n</div>', 1),
(16, 1, 3, 1, 'baner 4', 0, 'home', NULL, 0, '89b208ee33b244470e221c09ac643f387b3d2b09_box-1.jpg', '0', '0', '<div class="container">\r\n<h4>Siemens</h4>\r\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing\r\nelit, sed do eiusmod tempor</p>\r\n<div class="sh-now"><a href="index.php?id_category=41&amp;controller=category">Shop Now!</a></div>\r\n</div>', 1),
(17, 1, 4, 1, 'baner 4', 0, 'home', NULL, 0, '07a3260aa922d4af55171457c86c05266c708499_box-1.jpg', '0', '0', '<div class="container">\r\n<h4>Siemens</h4>\r\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing\r\nelit, sed do eiusmod tempor</p>\r\n<div class="sh-now"><a href="index.php?id_category=41&amp;controller=category">Shop Now!</a></div>\r\n</div>', 1),
(18, 1, 5, 1, 'baner 4', 0, 'home', NULL, 0, '54ebd84c81ee529f9d6ff2a21703066504b2bb58_box-1.jpg', '0', '0', '<div class="container">\r\n<h4>Siemens</h4>\r\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing\r\nelit, sed do eiusmod tempor</p>\r\n<div class="sh-now"><a href="index.php?id_category=41&amp;controller=category">Shop Now!</a></div>\r\n</div>', 1),
(19, 1, 2, 1, 'baner 1', 0, 'top', 'index.php?id_category=5&controller=category', 0, 'eb22ef6f02cda320c9ec3a03b0fd6cdb40e88913_cat-1.jpg', NULL, NULL, '<h4><span>Dental</span> supplies</h4>', 1),
(20, 1, 3, 1, 'baner 1', 0, 'top', 'index.php?id_category=5&controller=category', 0, 'c633b8922130f12397aac6513c738f7f912bf1da_cat-1.jpg', NULL, NULL, '<h4><span>Dental</span> supplies</h4>', 1),
(21, 1, 4, 1, 'baner 1', 0, 'top', 'index.php?id_category=5&controller=category', 0, '42f663a8d69c742a7d0661e9ac3d6f9429fcd727_cat-1.jpg', NULL, NULL, '<h4><span>Dental</span> supplies</h4>', 1),
(22, 1, 5, 1, 'baner 1', 0, 'top', 'index.php?id_category=5&controller=category', 0, '11846f97bc676ccf7c3b88da6006baa3b71f1e6a_cat-1.jpg', NULL, NULL, '<h4><span>Dental</span> supplies</h4>', 1),
(23, 1, 2, 2, 'baner 2', 0, 'top', 'index.php?id_category=3&controller=category', 0, '3885cef7a6acfdaade930e1d961f6e809071ef4e_cat-2.jpg', NULL, NULL, '<h4><span>RAPID Point</span> Systems</h4>', 1),
(24, 1, 3, 2, 'baner 2', 0, 'top', 'index.php?id_category=3&controller=category', 0, '5d679a20af459f76e7e275ba13daa757e54f05d8_cat-2.jpg', NULL, NULL, '<h4><span>RAPID Point</span> Systems</h4>', 1),
(25, 1, 4, 2, 'baner 2', 0, 'top', 'index.php?id_category=3&controller=category', 0, '93e49edc32bcdffa2d95884ffbdd840fb571c214_cat-2.jpg', NULL, NULL, '<h4><span>RAPID Point</span> Systems</h4>', 1),
(26, 1, 5, 2, 'baner 2', 0, 'top', 'index.php?id_category=3&controller=category', 0, '829d983098a7ea1f06f58aa8b2a09ff7bb88042d_cat-2.jpg', NULL, NULL, '<h4><span>RAPID Point</span> Systems</h4>', 1),
(27, 1, 2, 3, 'baner 3', 0, 'top', 'index.php?id_category=4&controller=category', 0, '4f992c8d272e10c7921fd3edd5e793c606c0bb22_cat-3.jpg', NULL, NULL, '<h4><span>X-rays</span></h4>', 1),
(28, 1, 3, 3, 'baner 3', 0, 'top', 'index.php?id_category=4&controller=category', 0, '88767735d380e0057d46d9d9cdb1e36c54839870_cat-3.jpg', NULL, NULL, '<h4><span>X-rays</span></h4>', 1),
(29, 1, 4, 3, 'baner 3', 0, 'top', 'index.php?id_category=4&controller=category', 0, '12dd0a7545110d37aa3daa626e166932dee7a224_cat-3.jpg', NULL, NULL, '<h4><span>X-rays</span></h4>', 1),
(30, 1, 5, 3, 'baner 3', 0, 'top', 'index.php?id_category=4&controller=category', 0, '0233657d82710af51d05dacd0d34e6992b84a5c2_cat-3.jpg', NULL, NULL, '<h4><span>X-rays</span></h4>', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_theme_meta`
--

CREATE TABLE `ps_theme_meta` (
  `id_theme_meta` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL,
  `id_meta` int(10) UNSIGNED NOT NULL,
  `left_column` tinyint(1) NOT NULL DEFAULT '1',
  `right_column` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_theme_meta`
--

INSERT INTO `ps_theme_meta` (`id_theme_meta`, `id_theme`, `id_meta`, `left_column`, `right_column`) VALUES
(1, 1, 1, 0, 0),
(2, 1, 2, 1, 0),
(3, 1, 3, 0, 0),
(4, 1, 4, 0, 0),
(5, 1, 5, 1, 0),
(6, 1, 6, 1, 0),
(7, 1, 7, 0, 0),
(8, 1, 8, 1, 0),
(9, 1, 9, 1, 0),
(10, 1, 10, 0, 0),
(11, 1, 11, 0, 0),
(12, 1, 12, 0, 0),
(13, 1, 13, 0, 0),
(14, 1, 14, 0, 0),
(15, 1, 15, 0, 0),
(16, 1, 16, 0, 0),
(17, 1, 17, 0, 0),
(18, 1, 18, 0, 0),
(19, 1, 19, 0, 0),
(20, 1, 20, 0, 0),
(21, 1, 21, 0, 0),
(22, 1, 22, 1, 0),
(23, 1, 23, 0, 0),
(24, 1, 24, 0, 0),
(25, 1, 25, 0, 0),
(26, 1, 26, 0, 0),
(27, 1, 28, 1, 0),
(28, 1, 29, 0, 0),
(29, 1, 27, 0, 0),
(30, 1, 30, 0, 0),
(31, 1, 31, 0, 0),
(32, 1, 32, 0, 0),
(33, 1, 33, 0, 0),
(34, 1, 34, 0, 0),
(35, 1, 36, 1, 0),
(36, 1, 37, 1, 0),
(37, 2, 2, 1, 0),
(38, 2, 3, 0, 0),
(39, 2, 4, 0, 0),
(40, 2, 5, 1, 0),
(41, 2, 6, 1, 0),
(42, 2, 7, 0, 0),
(43, 2, 8, 1, 0),
(44, 2, 9, 1, 0),
(45, 2, 10, 1, 0),
(46, 2, 11, 1, 0),
(47, 2, 12, 1, 0),
(48, 2, 13, 1, 0),
(49, 2, 14, 0, 0),
(50, 2, 15, 1, 0),
(51, 2, 16, 1, 0),
(52, 2, 17, 1, 0),
(53, 2, 18, 0, 0),
(54, 2, 19, 1, 0),
(55, 2, 20, 1, 0),
(56, 2, 21, 0, 0),
(57, 2, 22, 1, 0),
(58, 2, 23, 0, 0),
(59, 2, 24, 1, 0),
(60, 2, 25, 1, 0),
(61, 2, 26, 1, 0),
(62, 2, 27, 0, 0),
(63, 2, 28, 1, 0),
(64, 2, 29, 1, 0),
(65, 2, 30, 1, 0),
(66, 2, 31, 1, 0),
(67, 2, 32, 1, 0),
(68, 2, 33, 1, 0),
(69, 2, 35, 0, 0),
(70, 2, 37, 1, 0),
(83, 1, 44, 1, 0),
(84, 2, 44, 1, 0),
(85, 1, 45, 1, 0),
(86, 2, 45, 1, 0),
(89, 1, 46, 1, 0),
(90, 2, 46, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ps_theme_specific`
--

CREATE TABLE `ps_theme_specific` (
  `id_theme` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `entity` int(11) UNSIGNED NOT NULL,
  `id_object` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_timezone`
--

CREATE TABLE `ps_timezone` (
  `id_timezone` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_timezone`
--

INSERT INTO `ps_timezone` (`id_timezone`, `name`) VALUES
(1, 'Africa/Abidjan'),
(2, 'Africa/Accra'),
(3, 'Africa/Addis_Ababa'),
(4, 'Africa/Algiers'),
(5, 'Africa/Asmara'),
(6, 'Africa/Asmera'),
(7, 'Africa/Bamako'),
(8, 'Africa/Bangui'),
(9, 'Africa/Banjul'),
(10, 'Africa/Bissau'),
(11, 'Africa/Blantyre'),
(12, 'Africa/Brazzaville'),
(13, 'Africa/Bujumbura'),
(14, 'Africa/Cairo'),
(15, 'Africa/Casablanca'),
(16, 'Africa/Ceuta'),
(17, 'Africa/Conakry'),
(18, 'Africa/Dakar'),
(19, 'Africa/Dar_es_Salaam'),
(20, 'Africa/Djibouti'),
(21, 'Africa/Douala'),
(22, 'Africa/El_Aaiun'),
(23, 'Africa/Freetown'),
(24, 'Africa/Gaborone'),
(25, 'Africa/Harare'),
(26, 'Africa/Johannesburg'),
(27, 'Africa/Kampala'),
(28, 'Africa/Khartoum'),
(29, 'Africa/Kigali'),
(30, 'Africa/Kinshasa'),
(31, 'Africa/Lagos'),
(32, 'Africa/Libreville'),
(33, 'Africa/Lome'),
(34, 'Africa/Luanda'),
(35, 'Africa/Lubumbashi'),
(36, 'Africa/Lusaka'),
(37, 'Africa/Malabo'),
(38, 'Africa/Maputo'),
(39, 'Africa/Maseru'),
(40, 'Africa/Mbabane'),
(41, 'Africa/Mogadishu'),
(42, 'Africa/Monrovia'),
(43, 'Africa/Nairobi'),
(44, 'Africa/Ndjamena'),
(45, 'Africa/Niamey'),
(46, 'Africa/Nouakchott'),
(47, 'Africa/Ouagadougou'),
(48, 'Africa/Porto-Novo'),
(49, 'Africa/Sao_Tome'),
(50, 'Africa/Timbuktu'),
(51, 'Africa/Tripoli'),
(52, 'Africa/Tunis'),
(53, 'Africa/Windhoek'),
(54, 'America/Adak'),
(55, 'America/Anchorage '),
(56, 'America/Anguilla'),
(57, 'America/Antigua'),
(58, 'America/Araguaina'),
(59, 'America/Argentina/Buenos_Aires'),
(60, 'America/Argentina/Catamarca'),
(61, 'America/Argentina/ComodRivadavia'),
(62, 'America/Argentina/Cordoba'),
(63, 'America/Argentina/Jujuy'),
(64, 'America/Argentina/La_Rioja'),
(65, 'America/Argentina/Mendoza'),
(66, 'America/Argentina/Rio_Gallegos'),
(67, 'America/Argentina/Salta'),
(68, 'America/Argentina/San_Juan'),
(69, 'America/Argentina/San_Luis'),
(70, 'America/Argentina/Tucuman'),
(71, 'America/Argentina/Ushuaia'),
(72, 'America/Aruba'),
(73, 'America/Asuncion'),
(74, 'America/Atikokan'),
(75, 'America/Atka'),
(76, 'America/Bahia'),
(77, 'America/Barbados'),
(78, 'America/Belem'),
(79, 'America/Belize'),
(80, 'America/Blanc-Sablon'),
(81, 'America/Boa_Vista'),
(82, 'America/Bogota'),
(83, 'America/Boise'),
(84, 'America/Buenos_Aires'),
(85, 'America/Cambridge_Bay'),
(86, 'America/Campo_Grande'),
(87, 'America/Cancun'),
(88, 'America/Caracas'),
(89, 'America/Catamarca'),
(90, 'America/Cayenne'),
(91, 'America/Cayman'),
(92, 'America/Chicago'),
(93, 'America/Chihuahua'),
(94, 'America/Coral_Harbour'),
(95, 'America/Cordoba'),
(96, 'America/Costa_Rica'),
(97, 'America/Cuiaba'),
(98, 'America/Curacao'),
(99, 'America/Danmarkshavn'),
(100, 'America/Dawson'),
(101, 'America/Dawson_Creek'),
(102, 'America/Denver'),
(103, 'America/Detroit'),
(104, 'America/Dominica'),
(105, 'America/Edmonton'),
(106, 'America/Eirunepe'),
(107, 'America/El_Salvador'),
(108, 'America/Ensenada'),
(109, 'America/Fort_Wayne'),
(110, 'America/Fortaleza'),
(111, 'America/Glace_Bay'),
(112, 'America/Godthab'),
(113, 'America/Goose_Bay'),
(114, 'America/Grand_Turk'),
(115, 'America/Grenada'),
(116, 'America/Guadeloupe'),
(117, 'America/Guatemala'),
(118, 'America/Guayaquil'),
(119, 'America/Guyana'),
(120, 'America/Halifax'),
(121, 'America/Havana'),
(122, 'America/Hermosillo'),
(123, 'America/Indiana/Indianapolis'),
(124, 'America/Indiana/Knox'),
(125, 'America/Indiana/Marengo'),
(126, 'America/Indiana/Petersburg'),
(127, 'America/Indiana/Tell_City'),
(128, 'America/Indiana/Vevay'),
(129, 'America/Indiana/Vincennes'),
(130, 'America/Indiana/Winamac'),
(131, 'America/Indianapolis'),
(132, 'America/Inuvik'),
(133, 'America/Iqaluit'),
(134, 'America/Jamaica'),
(135, 'America/Jujuy'),
(136, 'America/Juneau'),
(137, 'America/Kentucky/Louisville'),
(138, 'America/Kentucky/Monticello'),
(139, 'America/Knox_IN'),
(140, 'America/La_Paz'),
(141, 'America/Lima'),
(142, 'America/Los_Angeles'),
(143, 'America/Louisville'),
(144, 'America/Maceio'),
(145, 'America/Managua'),
(146, 'America/Manaus'),
(147, 'America/Marigot'),
(148, 'America/Martinique'),
(149, 'America/Mazatlan'),
(150, 'America/Mendoza'),
(151, 'America/Menominee'),
(152, 'America/Merida'),
(153, 'America/Mexico_City'),
(154, 'America/Miquelon'),
(155, 'America/Moncton'),
(156, 'America/Monterrey'),
(157, 'America/Montevideo'),
(158, 'America/Montreal'),
(159, 'America/Montserrat'),
(160, 'America/Nassau'),
(161, 'America/New_York'),
(162, 'America/Nipigon'),
(163, 'America/Nome'),
(164, 'America/Noronha'),
(165, 'America/North_Dakota/Center'),
(166, 'America/North_Dakota/New_Salem'),
(167, 'America/Panama'),
(168, 'America/Pangnirtung'),
(169, 'America/Paramaribo'),
(170, 'America/Phoenix'),
(171, 'America/Port-au-Prince'),
(172, 'America/Port_of_Spain'),
(173, 'America/Porto_Acre'),
(174, 'America/Porto_Velho'),
(175, 'America/Puerto_Rico'),
(176, 'America/Rainy_River'),
(177, 'America/Rankin_Inlet'),
(178, 'America/Recife'),
(179, 'America/Regina'),
(180, 'America/Resolute'),
(181, 'America/Rio_Branco'),
(182, 'America/Rosario'),
(183, 'America/Santarem'),
(184, 'America/Santiago'),
(185, 'America/Santo_Domingo'),
(186, 'America/Sao_Paulo'),
(187, 'America/Scoresbysund'),
(188, 'America/Shiprock'),
(189, 'America/St_Barthelemy'),
(190, 'America/St_Johns'),
(191, 'America/St_Kitts'),
(192, 'America/St_Lucia'),
(193, 'America/St_Thomas'),
(194, 'America/St_Vincent'),
(195, 'America/Swift_Current'),
(196, 'America/Tegucigalpa'),
(197, 'America/Thule'),
(198, 'America/Thunder_Bay'),
(199, 'America/Tijuana'),
(200, 'America/Toronto'),
(201, 'America/Tortola'),
(202, 'America/Vancouver'),
(203, 'America/Virgin'),
(204, 'America/Whitehorse'),
(205, 'America/Winnipeg'),
(206, 'America/Yakutat'),
(207, 'America/Yellowknife'),
(208, 'Antarctica/Casey'),
(209, 'Antarctica/Davis'),
(210, 'Antarctica/DumontDUrville'),
(211, 'Antarctica/Mawson'),
(212, 'Antarctica/McMurdo'),
(213, 'Antarctica/Palmer'),
(214, 'Antarctica/Rothera'),
(215, 'Antarctica/South_Pole'),
(216, 'Antarctica/Syowa'),
(217, 'Antarctica/Vostok'),
(218, 'Arctic/Longyearbyen'),
(219, 'Asia/Aden'),
(220, 'Asia/Almaty'),
(221, 'Asia/Amman'),
(222, 'Asia/Anadyr'),
(223, 'Asia/Aqtau'),
(224, 'Asia/Aqtobe'),
(225, 'Asia/Ashgabat'),
(226, 'Asia/Ashkhabad'),
(227, 'Asia/Baghdad'),
(228, 'Asia/Bahrain'),
(229, 'Asia/Baku'),
(230, 'Asia/Bangkok'),
(231, 'Asia/Beirut'),
(232, 'Asia/Bishkek'),
(233, 'Asia/Brunei'),
(234, 'Asia/Calcutta'),
(235, 'Asia/Choibalsan'),
(236, 'Asia/Chongqing'),
(237, 'Asia/Chungking'),
(238, 'Asia/Colombo'),
(239, 'Asia/Dacca'),
(240, 'Asia/Damascus'),
(241, 'Asia/Dhaka'),
(242, 'Asia/Dili'),
(243, 'Asia/Dubai'),
(244, 'Asia/Dushanbe'),
(245, 'Asia/Gaza'),
(246, 'Asia/Harbin'),
(247, 'Asia/Ho_Chi_Minh'),
(248, 'Asia/Hong_Kong'),
(249, 'Asia/Hovd'),
(250, 'Asia/Irkutsk'),
(251, 'Asia/Istanbul'),
(252, 'Asia/Jakarta'),
(253, 'Asia/Jayapura'),
(254, 'Asia/Jerusalem'),
(255, 'Asia/Kabul'),
(256, 'Asia/Kamchatka'),
(257, 'Asia/Karachi'),
(258, 'Asia/Kashgar'),
(259, 'Asia/Kathmandu'),
(260, 'Asia/Katmandu'),
(261, 'Asia/Kolkata'),
(262, 'Asia/Krasnoyarsk'),
(263, 'Asia/Kuala_Lumpur'),
(264, 'Asia/Kuching'),
(265, 'Asia/Kuwait'),
(266, 'Asia/Macao'),
(267, 'Asia/Macau'),
(268, 'Asia/Magadan'),
(269, 'Asia/Makassar'),
(270, 'Asia/Manila'),
(271, 'Asia/Muscat'),
(272, 'Asia/Nicosia'),
(273, 'Asia/Novosibirsk'),
(274, 'Asia/Omsk'),
(275, 'Asia/Oral'),
(276, 'Asia/Phnom_Penh'),
(277, 'Asia/Pontianak'),
(278, 'Asia/Pyongyang'),
(279, 'Asia/Qatar'),
(280, 'Asia/Qyzylorda'),
(281, 'Asia/Rangoon'),
(282, 'Asia/Riyadh'),
(283, 'Asia/Saigon'),
(284, 'Asia/Sakhalin'),
(285, 'Asia/Samarkand'),
(286, 'Asia/Seoul'),
(287, 'Asia/Shanghai'),
(288, 'Asia/Singapore'),
(289, 'Asia/Taipei'),
(290, 'Asia/Tashkent'),
(291, 'Asia/Tbilisi'),
(292, 'Asia/Tehran'),
(293, 'Asia/Tel_Aviv'),
(294, 'Asia/Thimbu'),
(295, 'Asia/Thimphu'),
(296, 'Asia/Tokyo'),
(297, 'Asia/Ujung_Pandang'),
(298, 'Asia/Ulaanbaatar'),
(299, 'Asia/Ulan_Bator'),
(300, 'Asia/Urumqi'),
(301, 'Asia/Vientiane'),
(302, 'Asia/Vladivostok'),
(303, 'Asia/Yakutsk'),
(304, 'Asia/Yekaterinburg'),
(305, 'Asia/Yerevan'),
(306, 'Atlantic/Azores'),
(307, 'Atlantic/Bermuda'),
(308, 'Atlantic/Canary'),
(309, 'Atlantic/Cape_Verde'),
(310, 'Atlantic/Faeroe'),
(311, 'Atlantic/Faroe'),
(312, 'Atlantic/Jan_Mayen'),
(313, 'Atlantic/Madeira'),
(314, 'Atlantic/Reykjavik'),
(315, 'Atlantic/South_Georgia'),
(316, 'Atlantic/St_Helena'),
(317, 'Atlantic/Stanley'),
(318, 'Australia/ACT'),
(319, 'Australia/Adelaide'),
(320, 'Australia/Brisbane'),
(321, 'Australia/Broken_Hill'),
(322, 'Australia/Canberra'),
(323, 'Australia/Currie'),
(324, 'Australia/Darwin'),
(325, 'Australia/Eucla'),
(326, 'Australia/Hobart'),
(327, 'Australia/LHI'),
(328, 'Australia/Lindeman'),
(329, 'Australia/Lord_Howe'),
(330, 'Australia/Melbourne'),
(331, 'Australia/North'),
(332, 'Australia/NSW'),
(333, 'Australia/Perth'),
(334, 'Australia/Queensland'),
(335, 'Australia/South'),
(336, 'Australia/Sydney'),
(337, 'Australia/Tasmania'),
(338, 'Australia/Victoria'),
(339, 'Australia/West'),
(340, 'Australia/Yancowinna'),
(341, 'Europe/Amsterdam'),
(342, 'Europe/Andorra'),
(343, 'Europe/Athens'),
(344, 'Europe/Belfast'),
(345, 'Europe/Belgrade'),
(346, 'Europe/Berlin'),
(347, 'Europe/Bratislava'),
(348, 'Europe/Brussels'),
(349, 'Europe/Bucharest'),
(350, 'Europe/Budapest'),
(351, 'Europe/Chisinau'),
(352, 'Europe/Copenhagen'),
(353, 'Europe/Dublin'),
(354, 'Europe/Gibraltar'),
(355, 'Europe/Guernsey'),
(356, 'Europe/Helsinki'),
(357, 'Europe/Isle_of_Man'),
(358, 'Europe/Istanbul'),
(359, 'Europe/Jersey'),
(360, 'Europe/Kaliningrad'),
(361, 'Europe/Kiev'),
(362, 'Europe/Lisbon'),
(363, 'Europe/Ljubljana'),
(364, 'Europe/London'),
(365, 'Europe/Luxembourg'),
(366, 'Europe/Madrid'),
(367, 'Europe/Malta'),
(368, 'Europe/Mariehamn'),
(369, 'Europe/Minsk'),
(370, 'Europe/Monaco'),
(371, 'Europe/Moscow'),
(372, 'Europe/Nicosia'),
(373, 'Europe/Oslo'),
(374, 'Europe/Paris'),
(375, 'Europe/Podgorica'),
(376, 'Europe/Prague'),
(377, 'Europe/Riga'),
(378, 'Europe/Rome'),
(379, 'Europe/Samara'),
(380, 'Europe/San_Marino'),
(381, 'Europe/Sarajevo'),
(382, 'Europe/Simferopol'),
(383, 'Europe/Skopje'),
(384, 'Europe/Sofia'),
(385, 'Europe/Stockholm'),
(386, 'Europe/Tallinn'),
(387, 'Europe/Tirane'),
(388, 'Europe/Tiraspol'),
(389, 'Europe/Uzhgorod'),
(390, 'Europe/Vaduz'),
(391, 'Europe/Vatican'),
(392, 'Europe/Vienna'),
(393, 'Europe/Vilnius'),
(394, 'Europe/Volgograd'),
(395, 'Europe/Warsaw'),
(396, 'Europe/Zagreb'),
(397, 'Europe/Zaporozhye'),
(398, 'Europe/Zurich'),
(399, 'Indian/Antananarivo'),
(400, 'Indian/Chagos'),
(401, 'Indian/Christmas'),
(402, 'Indian/Cocos'),
(403, 'Indian/Comoro'),
(404, 'Indian/Kerguelen'),
(405, 'Indian/Mahe'),
(406, 'Indian/Maldives'),
(407, 'Indian/Mauritius'),
(408, 'Indian/Mayotte'),
(409, 'Indian/Reunion'),
(410, 'Pacific/Apia'),
(411, 'Pacific/Auckland'),
(412, 'Pacific/Chatham'),
(413, 'Pacific/Easter'),
(414, 'Pacific/Efate'),
(415, 'Pacific/Enderbury'),
(416, 'Pacific/Fakaofo'),
(417, 'Pacific/Fiji'),
(418, 'Pacific/Funafuti'),
(419, 'Pacific/Galapagos'),
(420, 'Pacific/Gambier'),
(421, 'Pacific/Guadalcanal'),
(422, 'Pacific/Guam'),
(423, 'Pacific/Honolulu'),
(424, 'Pacific/Johnston'),
(425, 'Pacific/Kiritimati'),
(426, 'Pacific/Kosrae'),
(427, 'Pacific/Kwajalein'),
(428, 'Pacific/Majuro'),
(429, 'Pacific/Marquesas'),
(430, 'Pacific/Midway'),
(431, 'Pacific/Nauru'),
(432, 'Pacific/Niue'),
(433, 'Pacific/Norfolk'),
(434, 'Pacific/Noumea'),
(435, 'Pacific/Pago_Pago'),
(436, 'Pacific/Palau'),
(437, 'Pacific/Pitcairn'),
(438, 'Pacific/Ponape'),
(439, 'Pacific/Port_Moresby'),
(440, 'Pacific/Rarotonga'),
(441, 'Pacific/Saipan'),
(442, 'Pacific/Samoa'),
(443, 'Pacific/Tahiti'),
(444, 'Pacific/Tarawa'),
(445, 'Pacific/Tongatapu'),
(446, 'Pacific/Truk'),
(447, 'Pacific/Wake'),
(448, 'Pacific/Wallis'),
(449, 'Pacific/Yap'),
(450, 'Brazil/Acre'),
(451, 'Brazil/DeNoronha'),
(452, 'Brazil/East'),
(453, 'Brazil/West'),
(454, 'Canada/Atlantic'),
(455, 'Canada/Central'),
(456, 'Canada/East-Saskatchewan'),
(457, 'Canada/Eastern'),
(458, 'Canada/Mountain'),
(459, 'Canada/Newfoundland'),
(460, 'Canada/Pacific'),
(461, 'Canada/Saskatchewan'),
(462, 'Canada/Yukon'),
(463, 'CET'),
(464, 'Chile/Continental'),
(465, 'Chile/EasterIsland'),
(466, 'CST6CDT'),
(467, 'Cuba'),
(468, 'EET'),
(469, 'Egypt'),
(470, 'Eire'),
(471, 'EST'),
(472, 'EST5EDT'),
(473, 'Etc/GMT'),
(474, 'Etc/GMT+0'),
(475, 'Etc/GMT+1'),
(476, 'Etc/GMT+10'),
(477, 'Etc/GMT+11'),
(478, 'Etc/GMT+12'),
(479, 'Etc/GMT+2'),
(480, 'Etc/GMT+3'),
(481, 'Etc/GMT+4'),
(482, 'Etc/GMT+5'),
(483, 'Etc/GMT+6'),
(484, 'Etc/GMT+7'),
(485, 'Etc/GMT+8'),
(486, 'Etc/GMT+9'),
(487, 'Etc/GMT-0'),
(488, 'Etc/GMT-1'),
(489, 'Etc/GMT-10'),
(490, 'Etc/GMT-11'),
(491, 'Etc/GMT-12'),
(492, 'Etc/GMT-13'),
(493, 'Etc/GMT-14'),
(494, 'Etc/GMT-2'),
(495, 'Etc/GMT-3'),
(496, 'Etc/GMT-4'),
(497, 'Etc/GMT-5'),
(498, 'Etc/GMT-6'),
(499, 'Etc/GMT-7'),
(500, 'Etc/GMT-8'),
(501, 'Etc/GMT-9'),
(502, 'Etc/GMT0'),
(503, 'Etc/Greenwich'),
(504, 'Etc/UCT'),
(505, 'Etc/Universal'),
(506, 'Etc/UTC'),
(507, 'Etc/Zulu'),
(508, 'Factory'),
(509, 'GB'),
(510, 'GB-Eire'),
(511, 'GMT'),
(512, 'GMT+0'),
(513, 'GMT-0'),
(514, 'GMT0'),
(515, 'Greenwich'),
(516, 'Hongkong'),
(517, 'HST'),
(518, 'Iceland'),
(519, 'Iran'),
(520, 'Israel'),
(521, 'Jamaica'),
(522, 'Japan'),
(523, 'Kwajalein'),
(524, 'Libya'),
(525, 'MET'),
(526, 'Mexico/BajaNorte'),
(527, 'Mexico/BajaSur'),
(528, 'Mexico/General'),
(529, 'MST'),
(530, 'MST7MDT'),
(531, 'Navajo'),
(532, 'NZ'),
(533, 'NZ-CHAT'),
(534, 'Poland'),
(535, 'Portugal'),
(536, 'PRC'),
(537, 'PST8PDT'),
(538, 'ROC'),
(539, 'ROK'),
(540, 'Singapore'),
(541, 'Turkey'),
(542, 'UCT'),
(543, 'Universal'),
(544, 'US/Alaska'),
(545, 'US/Aleutian'),
(546, 'US/Arizona'),
(547, 'US/Central'),
(548, 'US/East-Indiana'),
(549, 'US/Eastern'),
(550, 'US/Hawaii'),
(551, 'US/Indiana-Starke'),
(552, 'US/Michigan'),
(553, 'US/Mountain'),
(554, 'US/Pacific'),
(555, 'US/Pacific-New'),
(556, 'US/Samoa'),
(557, 'UTC'),
(558, 'W-SU'),
(559, 'WET'),
(560, 'Zulu');

-- --------------------------------------------------------

--
-- Structure de la table `ps_tmsocialfeed`
--

CREATE TABLE `ps_tmsocialfeed` (
  `id_item` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `item_order` int(10) UNSIGNED NOT NULL,
  `item_type` varchar(100) DEFAULT NULL,
  `hook` varchar(100) DEFAULT NULL,
  `item_theme` varchar(100) DEFAULT NULL,
  `item_width` int(10) UNSIGNED NOT NULL,
  `item_height` int(10) UNSIGNED NOT NULL,
  `item_limit` int(10) UNSIGNED NOT NULL,
  `item_header` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `item_footer` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `item_border` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `item_replies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `item_scroll` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `item_background` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `item_col_width` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_tmsocialfeed`
--

INSERT INTO `ps_tmsocialfeed` (`id_item`, `id_shop`, `item_order`, `item_type`, `hook`, `item_theme`, `item_width`, `item_height`, `item_limit`, `item_header`, `item_footer`, `item_border`, `item_replies`, `item_scroll`, `item_background`, `item_col_width`, `active`) VALUES
(1, 1, 0, 'facebook', 'footer', 'light', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_warehouse`
--

CREATE TABLE `ps_warehouse` (
  `id_warehouse` int(11) UNSIGNED NOT NULL,
  `id_currency` int(11) UNSIGNED NOT NULL,
  `id_address` int(11) UNSIGNED NOT NULL,
  `id_employee` int(11) UNSIGNED NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `management_type` enum('WA','FIFO','LIFO') NOT NULL DEFAULT 'WA',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_warehouse_carrier`
--

CREATE TABLE `ps_warehouse_carrier` (
  `id_carrier` int(11) UNSIGNED NOT NULL,
  `id_warehouse` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_warehouse_product_location`
--

CREATE TABLE `ps_warehouse_product_location` (
  `id_warehouse_product_location` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_product_attribute` int(11) UNSIGNED NOT NULL,
  `id_warehouse` int(11) UNSIGNED NOT NULL,
  `location` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_warehouse_shop`
--

CREATE TABLE `ps_warehouse_shop` (
  `id_shop` int(11) UNSIGNED NOT NULL,
  `id_warehouse` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_webservice_account`
--

CREATE TABLE `ps_webservice_account` (
  `id_webservice_account` int(11) NOT NULL,
  `key` varchar(32) NOT NULL,
  `description` text,
  `class_name` varchar(50) NOT NULL DEFAULT 'WebserviceRequest',
  `is_module` tinyint(2) NOT NULL DEFAULT '0',
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_webservice_account_shop`
--

CREATE TABLE `ps_webservice_account_shop` (
  `id_webservice_account` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_webservice_permission`
--

CREATE TABLE `ps_webservice_permission` (
  `id_webservice_permission` int(11) NOT NULL,
  `resource` varchar(50) NOT NULL,
  `method` enum('GET','POST','PUT','DELETE','HEAD') NOT NULL,
  `id_webservice_account` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_web_browser`
--

CREATE TABLE `ps_web_browser` (
  `id_web_browser` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_web_browser`
--

INSERT INTO `ps_web_browser` (`id_web_browser`, `name`) VALUES
(1, 'Safari'),
(2, 'Safari iPad'),
(3, 'Firefox'),
(4, 'Opera'),
(5, 'IE 6'),
(6, 'IE 7'),
(7, 'IE 8'),
(8, 'IE 9'),
(9, 'IE 10'),
(10, 'IE 11'),
(11, 'Chrome');

-- --------------------------------------------------------

--
-- Structure de la table `ps_wishlist`
--

CREATE TABLE `ps_wishlist` (
  `id_wishlist` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `token` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `counter` int(10) UNSIGNED DEFAULT NULL,
  `id_shop` int(10) UNSIGNED DEFAULT '1',
  `id_shop_group` int(10) UNSIGNED DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `default` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_wishlist_email`
--

CREATE TABLE `ps_wishlist_email` (
  `id_wishlist` int(10) UNSIGNED NOT NULL,
  `email` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_wishlist_product`
--

CREATE TABLE `ps_wishlist_product` (
  `id_wishlist_product` int(10) NOT NULL,
  `id_wishlist` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_product_attribute` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `priority` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_wishlist_product_cart`
--

CREATE TABLE `ps_wishlist_product_cart` (
  `id_wishlist_product` int(10) UNSIGNED NOT NULL,
  `id_cart` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ps_zone`
--

CREATE TABLE `ps_zone` (
  `id_zone` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_zone`
--

INSERT INTO `ps_zone` (`id_zone`, `name`, `active`) VALUES
(1, 'Europe', 1),
(2, 'North America', 1),
(3, 'Asia', 1),
(4, 'Africa', 1),
(5, 'Oceania', 1),
(6, 'South America', 1),
(7, 'Europe (non-EU)', 1),
(8, 'Central America/Antilla', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ps_zone_shop`
--

CREATE TABLE `ps_zone_shop` (
  `id_zone` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ps_zone_shop`
--

INSERT INTO `ps_zone_shop` (`id_zone`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ps_access`
--
ALTER TABLE `ps_access`
  ADD PRIMARY KEY (`id_profile`,`id_tab`);

--
-- Index pour la table `ps_accessory`
--
ALTER TABLE `ps_accessory`
  ADD KEY `accessory_product` (`id_product_1`,`id_product_2`);

--
-- Index pour la table `ps_address`
--
ALTER TABLE `ps_address`
  ADD PRIMARY KEY (`id_address`),
  ADD KEY `address_customer` (`id_customer`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `id_state` (`id_state`),
  ADD KEY `id_manufacturer` (`id_manufacturer`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_warehouse` (`id_warehouse`);

--
-- Index pour la table `ps_address_format`
--
ALTER TABLE `ps_address_format`
  ADD PRIMARY KEY (`id_country`);

--
-- Index pour la table `ps_advice`
--
ALTER TABLE `ps_advice`
  ADD PRIMARY KEY (`id_advice`);

--
-- Index pour la table `ps_advice_lang`
--
ALTER TABLE `ps_advice_lang`
  ADD PRIMARY KEY (`id_advice`,`id_lang`);

--
-- Index pour la table `ps_alias`
--
ALTER TABLE `ps_alias`
  ADD PRIMARY KEY (`id_alias`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Index pour la table `ps_attachment`
--
ALTER TABLE `ps_attachment`
  ADD PRIMARY KEY (`id_attachment`);

--
-- Index pour la table `ps_attachment_lang`
--
ALTER TABLE `ps_attachment_lang`
  ADD PRIMARY KEY (`id_attachment`,`id_lang`);

--
-- Index pour la table `ps_attribute`
--
ALTER TABLE `ps_attribute`
  ADD PRIMARY KEY (`id_attribute`),
  ADD KEY `attribute_group` (`id_attribute_group`);

--
-- Index pour la table `ps_attribute_group`
--
ALTER TABLE `ps_attribute_group`
  ADD PRIMARY KEY (`id_attribute_group`);

--
-- Index pour la table `ps_attribute_group_lang`
--
ALTER TABLE `ps_attribute_group_lang`
  ADD PRIMARY KEY (`id_attribute_group`,`id_lang`);

--
-- Index pour la table `ps_attribute_group_shop`
--
ALTER TABLE `ps_attribute_group_shop`
  ADD PRIMARY KEY (`id_attribute_group`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_attribute_impact`
--
ALTER TABLE `ps_attribute_impact`
  ADD PRIMARY KEY (`id_attribute_impact`),
  ADD UNIQUE KEY `id_product` (`id_product`,`id_attribute`);

--
-- Index pour la table `ps_attribute_lang`
--
ALTER TABLE `ps_attribute_lang`
  ADD PRIMARY KEY (`id_attribute`,`id_lang`),
  ADD KEY `id_lang` (`id_lang`,`name`);

--
-- Index pour la table `ps_attribute_shop`
--
ALTER TABLE `ps_attribute_shop`
  ADD PRIMARY KEY (`id_attribute`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_badge`
--
ALTER TABLE `ps_badge`
  ADD PRIMARY KEY (`id_badge`);

--
-- Index pour la table `ps_badge_lang`
--
ALTER TABLE `ps_badge_lang`
  ADD PRIMARY KEY (`id_badge`,`id_lang`);

--
-- Index pour la table `ps_carrier`
--
ALTER TABLE `ps_carrier`
  ADD PRIMARY KEY (`id_carrier`),
  ADD KEY `deleted` (`deleted`,`active`),
  ADD KEY `id_tax_rules_group` (`id_tax_rules_group`),
  ADD KEY `reference` (`id_reference`,`deleted`,`active`);

--
-- Index pour la table `ps_carrier_group`
--
ALTER TABLE `ps_carrier_group`
  ADD PRIMARY KEY (`id_carrier`,`id_group`);

--
-- Index pour la table `ps_carrier_lang`
--
ALTER TABLE `ps_carrier_lang`
  ADD PRIMARY KEY (`id_lang`,`id_shop`,`id_carrier`);

--
-- Index pour la table `ps_carrier_shop`
--
ALTER TABLE `ps_carrier_shop`
  ADD PRIMARY KEY (`id_carrier`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_carrier_tax_rules_group_shop`
--
ALTER TABLE `ps_carrier_tax_rules_group_shop`
  ADD PRIMARY KEY (`id_carrier`,`id_tax_rules_group`,`id_shop`);

--
-- Index pour la table `ps_carrier_zone`
--
ALTER TABLE `ps_carrier_zone`
  ADD PRIMARY KEY (`id_carrier`,`id_zone`);

--
-- Index pour la table `ps_cart`
--
ALTER TABLE `ps_cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `cart_customer` (`id_customer`),
  ADD KEY `id_address_delivery` (`id_address_delivery`),
  ADD KEY `id_address_invoice` (`id_address_invoice`),
  ADD KEY `id_carrier` (`id_carrier`),
  ADD KEY `id_lang` (`id_lang`),
  ADD KEY `id_currency` (`id_currency`),
  ADD KEY `id_guest` (`id_guest`),
  ADD KEY `id_shop_group` (`id_shop_group`),
  ADD KEY `id_shop_2` (`id_shop`,`date_upd`),
  ADD KEY `id_shop` (`id_shop`,`date_add`);

--
-- Index pour la table `ps_cart_cart_rule`
--
ALTER TABLE `ps_cart_cart_rule`
  ADD PRIMARY KEY (`id_cart`,`id_cart_rule`),
  ADD KEY `id_cart_rule` (`id_cart_rule`);

--
-- Index pour la table `ps_cart_product`
--
ALTER TABLE `ps_cart_product`
  ADD PRIMARY KEY (`id_cart`,`id_product`,`id_product_attribute`,`id_address_delivery`),
  ADD KEY `id_product_attribute` (`id_product_attribute`),
  ADD KEY `id_cart_order` (`id_cart`,`date_add`,`id_product`,`id_product_attribute`);

--
-- Index pour la table `ps_cart_rule`
--
ALTER TABLE `ps_cart_rule`
  ADD PRIMARY KEY (`id_cart_rule`),
  ADD KEY `id_customer` (`id_customer`,`active`,`date_to`),
  ADD KEY `group_restriction` (`group_restriction`,`active`,`date_to`),
  ADD KEY `id_customer_2` (`id_customer`,`active`,`highlight`,`date_to`),
  ADD KEY `group_restriction_2` (`group_restriction`,`active`,`highlight`,`date_to`);

--
-- Index pour la table `ps_cart_rule_carrier`
--
ALTER TABLE `ps_cart_rule_carrier`
  ADD PRIMARY KEY (`id_cart_rule`,`id_carrier`);

--
-- Index pour la table `ps_cart_rule_combination`
--
ALTER TABLE `ps_cart_rule_combination`
  ADD PRIMARY KEY (`id_cart_rule_1`,`id_cart_rule_2`),
  ADD KEY `id_cart_rule_1` (`id_cart_rule_1`),
  ADD KEY `id_cart_rule_2` (`id_cart_rule_2`);

--
-- Index pour la table `ps_cart_rule_country`
--
ALTER TABLE `ps_cart_rule_country`
  ADD PRIMARY KEY (`id_cart_rule`,`id_country`);

--
-- Index pour la table `ps_cart_rule_group`
--
ALTER TABLE `ps_cart_rule_group`
  ADD PRIMARY KEY (`id_cart_rule`,`id_group`);

--
-- Index pour la table `ps_cart_rule_lang`
--
ALTER TABLE `ps_cart_rule_lang`
  ADD PRIMARY KEY (`id_cart_rule`,`id_lang`);

--
-- Index pour la table `ps_cart_rule_product_rule`
--
ALTER TABLE `ps_cart_rule_product_rule`
  ADD PRIMARY KEY (`id_product_rule`);

--
-- Index pour la table `ps_cart_rule_product_rule_group`
--
ALTER TABLE `ps_cart_rule_product_rule_group`
  ADD PRIMARY KEY (`id_product_rule_group`);

--
-- Index pour la table `ps_cart_rule_product_rule_value`
--
ALTER TABLE `ps_cart_rule_product_rule_value`
  ADD PRIMARY KEY (`id_product_rule`,`id_item`);

--
-- Index pour la table `ps_cart_rule_shop`
--
ALTER TABLE `ps_cart_rule_shop`
  ADD PRIMARY KEY (`id_cart_rule`,`id_shop`);

--
-- Index pour la table `ps_category`
--
ALTER TABLE `ps_category`
  ADD PRIMARY KEY (`id_category`),
  ADD KEY `category_parent` (`id_parent`),
  ADD KEY `nleftrightactive` (`nleft`,`nright`,`active`),
  ADD KEY `level_depth` (`level_depth`),
  ADD KEY `nright` (`nright`),
  ADD KEY `activenleft` (`active`,`nleft`),
  ADD KEY `activenright` (`active`,`nright`);

--
-- Index pour la table `ps_category_group`
--
ALTER TABLE `ps_category_group`
  ADD PRIMARY KEY (`id_category`,`id_group`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_group` (`id_group`);

--
-- Index pour la table `ps_category_lang`
--
ALTER TABLE `ps_category_lang`
  ADD PRIMARY KEY (`id_category`,`id_shop`,`id_lang`),
  ADD KEY `category_name` (`name`);

--
-- Index pour la table `ps_category_product`
--
ALTER TABLE `ps_category_product`
  ADD PRIMARY KEY (`id_category`,`id_product`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_category` (`id_category`,`position`);

--
-- Index pour la table `ps_category_shop`
--
ALTER TABLE `ps_category_shop`
  ADD PRIMARY KEY (`id_category`,`id_shop`);

--
-- Index pour la table `ps_cms`
--
ALTER TABLE `ps_cms`
  ADD PRIMARY KEY (`id_cms`);

--
-- Index pour la table `ps_cms_block`
--
ALTER TABLE `ps_cms_block`
  ADD PRIMARY KEY (`id_cms_block`);

--
-- Index pour la table `ps_cms_block_lang`
--
ALTER TABLE `ps_cms_block_lang`
  ADD PRIMARY KEY (`id_cms_block`,`id_lang`);

--
-- Index pour la table `ps_cms_block_page`
--
ALTER TABLE `ps_cms_block_page`
  ADD PRIMARY KEY (`id_cms_block_page`);

--
-- Index pour la table `ps_cms_block_shop`
--
ALTER TABLE `ps_cms_block_shop`
  ADD PRIMARY KEY (`id_cms_block`,`id_shop`);

--
-- Index pour la table `ps_cms_category`
--
ALTER TABLE `ps_cms_category`
  ADD PRIMARY KEY (`id_cms_category`),
  ADD KEY `category_parent` (`id_parent`);

--
-- Index pour la table `ps_cms_category_lang`
--
ALTER TABLE `ps_cms_category_lang`
  ADD PRIMARY KEY (`id_cms_category`,`id_shop`,`id_lang`),
  ADD KEY `category_name` (`name`);

--
-- Index pour la table `ps_cms_category_shop`
--
ALTER TABLE `ps_cms_category_shop`
  ADD PRIMARY KEY (`id_cms_category`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_cms_lang`
--
ALTER TABLE `ps_cms_lang`
  ADD PRIMARY KEY (`id_cms`,`id_shop`,`id_lang`);

--
-- Index pour la table `ps_cms_role`
--
ALTER TABLE `ps_cms_role`
  ADD PRIMARY KEY (`id_cms_role`,`id_cms`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `ps_cms_role_lang`
--
ALTER TABLE `ps_cms_role_lang`
  ADD PRIMARY KEY (`id_cms_role`,`id_lang`,`id_shop`);

--
-- Index pour la table `ps_cms_shop`
--
ALTER TABLE `ps_cms_shop`
  ADD PRIMARY KEY (`id_cms`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_compare`
--
ALTER TABLE `ps_compare`
  ADD PRIMARY KEY (`id_compare`);

--
-- Index pour la table `ps_compare_product`
--
ALTER TABLE `ps_compare_product`
  ADD PRIMARY KEY (`id_compare`,`id_product`);

--
-- Index pour la table `ps_condition`
--
ALTER TABLE `ps_condition`
  ADD PRIMARY KEY (`id_condition`,`id_ps_condition`);

--
-- Index pour la table `ps_condition_advice`
--
ALTER TABLE `ps_condition_advice`
  ADD PRIMARY KEY (`id_condition`,`id_advice`);

--
-- Index pour la table `ps_condition_badge`
--
ALTER TABLE `ps_condition_badge`
  ADD PRIMARY KEY (`id_condition`,`id_badge`);

--
-- Index pour la table `ps_configuration`
--
ALTER TABLE `ps_configuration`
  ADD PRIMARY KEY (`id_configuration`),
  ADD KEY `name` (`name`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_shop_group` (`id_shop_group`);

--
-- Index pour la table `ps_configuration_kpi`
--
ALTER TABLE `ps_configuration_kpi`
  ADD PRIMARY KEY (`id_configuration_kpi`),
  ADD KEY `name` (`name`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_shop_group` (`id_shop_group`);

--
-- Index pour la table `ps_configuration_kpi_lang`
--
ALTER TABLE `ps_configuration_kpi_lang`
  ADD PRIMARY KEY (`id_configuration_kpi`,`id_lang`);

--
-- Index pour la table `ps_configuration_lang`
--
ALTER TABLE `ps_configuration_lang`
  ADD PRIMARY KEY (`id_configuration`,`id_lang`);

--
-- Index pour la table `ps_connections`
--
ALTER TABLE `ps_connections`
  ADD PRIMARY KEY (`id_connections`),
  ADD KEY `id_guest` (`id_guest`),
  ADD KEY `date_add` (`date_add`),
  ADD KEY `id_page` (`id_page`);

--
-- Index pour la table `ps_connections_page`
--
ALTER TABLE `ps_connections_page`
  ADD PRIMARY KEY (`id_connections`,`id_page`,`time_start`);

--
-- Index pour la table `ps_connections_source`
--
ALTER TABLE `ps_connections_source`
  ADD PRIMARY KEY (`id_connections_source`),
  ADD KEY `connections` (`id_connections`),
  ADD KEY `orderby` (`date_add`),
  ADD KEY `http_referer` (`http_referer`),
  ADD KEY `request_uri` (`request_uri`);

--
-- Index pour la table `ps_contact`
--
ALTER TABLE `ps_contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Index pour la table `ps_contact_lang`
--
ALTER TABLE `ps_contact_lang`
  ADD PRIMARY KEY (`id_contact`,`id_lang`);

--
-- Index pour la table `ps_contact_shop`
--
ALTER TABLE `ps_contact_shop`
  ADD PRIMARY KEY (`id_contact`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_country`
--
ALTER TABLE `ps_country`
  ADD PRIMARY KEY (`id_country`),
  ADD KEY `country_iso_code` (`iso_code`),
  ADD KEY `country_` (`id_zone`);

--
-- Index pour la table `ps_country_lang`
--
ALTER TABLE `ps_country_lang`
  ADD PRIMARY KEY (`id_country`,`id_lang`);

--
-- Index pour la table `ps_country_shop`
--
ALTER TABLE `ps_country_shop`
  ADD PRIMARY KEY (`id_country`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_cronjobs`
--
ALTER TABLE `ps_cronjobs`
  ADD PRIMARY KEY (`id_cronjob`),
  ADD KEY `id_module` (`id_module`);

--
-- Index pour la table `ps_currency`
--
ALTER TABLE `ps_currency`
  ADD PRIMARY KEY (`id_currency`);

--
-- Index pour la table `ps_currency_shop`
--
ALTER TABLE `ps_currency_shop`
  ADD PRIMARY KEY (`id_currency`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_customer`
--
ALTER TABLE `ps_customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `customer_email` (`email`),
  ADD KEY `customer_login` (`email`,`passwd`),
  ADD KEY `id_customer_passwd` (`id_customer`,`passwd`),
  ADD KEY `id_gender` (`id_gender`),
  ADD KEY `id_shop_group` (`id_shop_group`),
  ADD KEY `id_shop` (`id_shop`,`date_add`);

--
-- Index pour la table `ps_customer_group`
--
ALTER TABLE `ps_customer_group`
  ADD PRIMARY KEY (`id_customer`,`id_group`),
  ADD KEY `customer_login` (`id_group`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Index pour la table `ps_customer_message`
--
ALTER TABLE `ps_customer_message`
  ADD PRIMARY KEY (`id_customer_message`),
  ADD KEY `id_customer_thread` (`id_customer_thread`),
  ADD KEY `id_employee` (`id_employee`);

--
-- Index pour la table `ps_customer_message_sync_imap`
--
ALTER TABLE `ps_customer_message_sync_imap`
  ADD KEY `md5_header_index` (`md5_header`(4));

--
-- Index pour la table `ps_customer_thread`
--
ALTER TABLE `ps_customer_thread`
  ADD PRIMARY KEY (`id_customer_thread`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_lang` (`id_lang`),
  ADD KEY `id_contact` (`id_contact`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Index pour la table `ps_customization`
--
ALTER TABLE `ps_customization`
  ADD PRIMARY KEY (`id_customization`,`id_cart`,`id_product`,`id_address_delivery`),
  ADD KEY `id_product_attribute` (`id_product_attribute`),
  ADD KEY `id_cart_product` (`id_cart`,`id_product`,`id_product_attribute`);

--
-- Index pour la table `ps_customization_field`
--
ALTER TABLE `ps_customization_field`
  ADD PRIMARY KEY (`id_customization_field`),
  ADD KEY `id_product` (`id_product`);

--
-- Index pour la table `ps_customization_field_lang`
--
ALTER TABLE `ps_customization_field_lang`
  ADD PRIMARY KEY (`id_customization_field`,`id_lang`,`id_shop`);

--
-- Index pour la table `ps_customized_data`
--
ALTER TABLE `ps_customized_data`
  ADD PRIMARY KEY (`id_customization`,`type`,`index`);

--
-- Index pour la table `ps_date_range`
--
ALTER TABLE `ps_date_range`
  ADD PRIMARY KEY (`id_date_range`);

--
-- Index pour la table `ps_delivery`
--
ALTER TABLE `ps_delivery`
  ADD PRIMARY KEY (`id_delivery`),
  ADD KEY `id_zone` (`id_zone`),
  ADD KEY `id_carrier` (`id_carrier`,`id_zone`),
  ADD KEY `id_range_price` (`id_range_price`),
  ADD KEY `id_range_weight` (`id_range_weight`);

--
-- Index pour la table `ps_employee`
--
ALTER TABLE `ps_employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `employee_login` (`email`,`passwd`),
  ADD KEY `id_employee_passwd` (`id_employee`,`passwd`),
  ADD KEY `id_profile` (`id_profile`);

--
-- Index pour la table `ps_employee_shop`
--
ALTER TABLE `ps_employee_shop`
  ADD PRIMARY KEY (`id_employee`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_feature`
--
ALTER TABLE `ps_feature`
  ADD PRIMARY KEY (`id_feature`);

--
-- Index pour la table `ps_feature_lang`
--
ALTER TABLE `ps_feature_lang`
  ADD PRIMARY KEY (`id_feature`,`id_lang`),
  ADD KEY `id_lang` (`id_lang`,`name`);

--
-- Index pour la table `ps_feature_product`
--
ALTER TABLE `ps_feature_product`
  ADD PRIMARY KEY (`id_feature`,`id_product`),
  ADD KEY `id_feature_value` (`id_feature_value`),
  ADD KEY `id_product` (`id_product`);

--
-- Index pour la table `ps_feature_shop`
--
ALTER TABLE `ps_feature_shop`
  ADD PRIMARY KEY (`id_feature`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_feature_value`
--
ALTER TABLE `ps_feature_value`
  ADD PRIMARY KEY (`id_feature_value`),
  ADD KEY `feature` (`id_feature`);

--
-- Index pour la table `ps_feature_value_lang`
--
ALTER TABLE `ps_feature_value_lang`
  ADD PRIMARY KEY (`id_feature_value`,`id_lang`);

--
-- Index pour la table `ps_gender`
--
ALTER TABLE `ps_gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Index pour la table `ps_gender_lang`
--
ALTER TABLE `ps_gender_lang`
  ADD PRIMARY KEY (`id_gender`,`id_lang`),
  ADD KEY `id_gender` (`id_gender`);

--
-- Index pour la table `ps_group`
--
ALTER TABLE `ps_group`
  ADD PRIMARY KEY (`id_group`);

--
-- Index pour la table `ps_group_lang`
--
ALTER TABLE `ps_group_lang`
  ADD PRIMARY KEY (`id_group`,`id_lang`);

--
-- Index pour la table `ps_group_reduction`
--
ALTER TABLE `ps_group_reduction`
  ADD PRIMARY KEY (`id_group_reduction`),
  ADD UNIQUE KEY `id_group` (`id_group`,`id_category`);

--
-- Index pour la table `ps_group_shop`
--
ALTER TABLE `ps_group_shop`
  ADD PRIMARY KEY (`id_group`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_guest`
--
ALTER TABLE `ps_guest`
  ADD PRIMARY KEY (`id_guest`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_operating_system` (`id_operating_system`),
  ADD KEY `id_web_browser` (`id_web_browser`);

--
-- Index pour la table `ps_homeslider`
--
ALTER TABLE `ps_homeslider`
  ADD PRIMARY KEY (`id_homeslider_slides`,`id_shop`);

--
-- Index pour la table `ps_homeslider_slides`
--
ALTER TABLE `ps_homeslider_slides`
  ADD PRIMARY KEY (`id_homeslider_slides`);

--
-- Index pour la table `ps_homeslider_slides_lang`
--
ALTER TABLE `ps_homeslider_slides_lang`
  ADD PRIMARY KEY (`id_homeslider_slides`,`id_lang`);

--
-- Index pour la table `ps_hook`
--
ALTER TABLE `ps_hook`
  ADD PRIMARY KEY (`id_hook`),
  ADD UNIQUE KEY `hook_name` (`name`);

--
-- Index pour la table `ps_hook_alias`
--
ALTER TABLE `ps_hook_alias`
  ADD PRIMARY KEY (`id_hook_alias`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Index pour la table `ps_hook_module`
--
ALTER TABLE `ps_hook_module`
  ADD PRIMARY KEY (`id_module`,`id_hook`,`id_shop`),
  ADD KEY `id_hook` (`id_hook`),
  ADD KEY `id_module` (`id_module`),
  ADD KEY `position` (`id_shop`,`position`);

--
-- Index pour la table `ps_hook_module_exceptions`
--
ALTER TABLE `ps_hook_module_exceptions`
  ADD PRIMARY KEY (`id_hook_module_exceptions`),
  ADD KEY `id_module` (`id_module`),
  ADD KEY `id_hook` (`id_hook`);

--
-- Index pour la table `ps_image`
--
ALTER TABLE `ps_image`
  ADD PRIMARY KEY (`id_image`),
  ADD UNIQUE KEY `id_product_cover` (`id_product`,`cover`),
  ADD UNIQUE KEY `idx_product_image` (`id_image`,`id_product`,`cover`),
  ADD KEY `image_product` (`id_product`);

--
-- Index pour la table `ps_image_lang`
--
ALTER TABLE `ps_image_lang`
  ADD PRIMARY KEY (`id_image`,`id_lang`),
  ADD KEY `id_image` (`id_image`);

--
-- Index pour la table `ps_image_shop`
--
ALTER TABLE `ps_image_shop`
  ADD PRIMARY KEY (`id_image`,`id_shop`),
  ADD UNIQUE KEY `id_product` (`id_product`,`id_shop`,`cover`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_image_type`
--
ALTER TABLE `ps_image_type`
  ADD PRIMARY KEY (`id_image_type`),
  ADD KEY `image_type_name` (`name`);

--
-- Index pour la table `ps_import_match`
--
ALTER TABLE `ps_import_match`
  ADD PRIMARY KEY (`id_import_match`);

--
-- Index pour la table `ps_info`
--
ALTER TABLE `ps_info`
  ADD PRIMARY KEY (`id_info`);

--
-- Index pour la table `ps_info_lang`
--
ALTER TABLE `ps_info_lang`
  ADD PRIMARY KEY (`id_info`,`id_lang`);

--
-- Index pour la table `ps_lang`
--
ALTER TABLE `ps_lang`
  ADD PRIMARY KEY (`id_lang`),
  ADD KEY `lang_iso_code` (`iso_code`);

--
-- Index pour la table `ps_lang_shop`
--
ALTER TABLE `ps_lang_shop`
  ADD PRIMARY KEY (`id_lang`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_layered_category`
--
ALTER TABLE `ps_layered_category`
  ADD PRIMARY KEY (`id_layered_category`),
  ADD KEY `id_category` (`id_category`,`type`);

--
-- Index pour la table `ps_layered_filter`
--
ALTER TABLE `ps_layered_filter`
  ADD PRIMARY KEY (`id_layered_filter`);

--
-- Index pour la table `ps_layered_filter_shop`
--
ALTER TABLE `ps_layered_filter_shop`
  ADD PRIMARY KEY (`id_layered_filter`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_layered_friendly_url`
--
ALTER TABLE `ps_layered_friendly_url`
  ADD PRIMARY KEY (`id_layered_friendly_url`),
  ADD KEY `id_lang` (`id_lang`),
  ADD KEY `url_key` (`url_key`(5));

--
-- Index pour la table `ps_layered_indexable_attribute_group`
--
ALTER TABLE `ps_layered_indexable_attribute_group`
  ADD PRIMARY KEY (`id_attribute_group`);

--
-- Index pour la table `ps_layered_indexable_attribute_group_lang_value`
--
ALTER TABLE `ps_layered_indexable_attribute_group_lang_value`
  ADD PRIMARY KEY (`id_attribute_group`,`id_lang`);

--
-- Index pour la table `ps_layered_indexable_attribute_lang_value`
--
ALTER TABLE `ps_layered_indexable_attribute_lang_value`
  ADD PRIMARY KEY (`id_attribute`,`id_lang`);

--
-- Index pour la table `ps_layered_indexable_feature`
--
ALTER TABLE `ps_layered_indexable_feature`
  ADD PRIMARY KEY (`id_feature`);

--
-- Index pour la table `ps_layered_indexable_feature_lang_value`
--
ALTER TABLE `ps_layered_indexable_feature_lang_value`
  ADD PRIMARY KEY (`id_feature`,`id_lang`);

--
-- Index pour la table `ps_layered_indexable_feature_value_lang_value`
--
ALTER TABLE `ps_layered_indexable_feature_value_lang_value`
  ADD PRIMARY KEY (`id_feature_value`,`id_lang`);

--
-- Index pour la table `ps_layered_price_index`
--
ALTER TABLE `ps_layered_price_index`
  ADD PRIMARY KEY (`id_product`,`id_currency`,`id_shop`),
  ADD KEY `id_currency` (`id_currency`),
  ADD KEY `price_min` (`price_min`),
  ADD KEY `price_max` (`price_max`);

--
-- Index pour la table `ps_layered_product_attribute`
--
ALTER TABLE `ps_layered_product_attribute`
  ADD PRIMARY KEY (`id_attribute`,`id_product`,`id_shop`),
  ADD UNIQUE KEY `id_attribute_group` (`id_attribute_group`,`id_attribute`,`id_product`,`id_shop`);

--
-- Index pour la table `ps_linksmenutop`
--
ALTER TABLE `ps_linksmenutop`
  ADD PRIMARY KEY (`id_linksmenutop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_linksmenutop_lang`
--
ALTER TABLE `ps_linksmenutop_lang`
  ADD KEY `id_linksmenutop` (`id_linksmenutop`,`id_lang`,`id_shop`);

--
-- Index pour la table `ps_log`
--
ALTER TABLE `ps_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Index pour la table `ps_mail`
--
ALTER TABLE `ps_mail`
  ADD PRIMARY KEY (`id_mail`),
  ADD KEY `recipient` (`recipient`(10));

--
-- Index pour la table `ps_manufacturer`
--
ALTER TABLE `ps_manufacturer`
  ADD PRIMARY KEY (`id_manufacturer`);

--
-- Index pour la table `ps_manufacturer_lang`
--
ALTER TABLE `ps_manufacturer_lang`
  ADD PRIMARY KEY (`id_manufacturer`,`id_lang`);

--
-- Index pour la table `ps_manufacturer_shop`
--
ALTER TABLE `ps_manufacturer_shop`
  ADD PRIMARY KEY (`id_manufacturer`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_memcached_servers`
--
ALTER TABLE `ps_memcached_servers`
  ADD PRIMARY KEY (`id_memcached_server`);

--
-- Index pour la table `ps_message`
--
ALTER TABLE `ps_message`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `message_order` (`id_order`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_employee` (`id_employee`);

--
-- Index pour la table `ps_message_readed`
--
ALTER TABLE `ps_message_readed`
  ADD PRIMARY KEY (`id_message`,`id_employee`);

--
-- Index pour la table `ps_meta`
--
ALTER TABLE `ps_meta`
  ADD PRIMARY KEY (`id_meta`),
  ADD UNIQUE KEY `page` (`page`);

--
-- Index pour la table `ps_meta_lang`
--
ALTER TABLE `ps_meta_lang`
  ADD PRIMARY KEY (`id_meta`,`id_shop`,`id_lang`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_lang` (`id_lang`);

--
-- Index pour la table `ps_module`
--
ALTER TABLE `ps_module`
  ADD PRIMARY KEY (`id_module`),
  ADD KEY `name` (`name`);

--
-- Index pour la table `ps_modules_perfs`
--
ALTER TABLE `ps_modules_perfs`
  ADD PRIMARY KEY (`id_modules_perfs`),
  ADD KEY `session` (`session`);

--
-- Index pour la table `ps_module_access`
--
ALTER TABLE `ps_module_access`
  ADD PRIMARY KEY (`id_profile`,`id_module`);

--
-- Index pour la table `ps_module_country`
--
ALTER TABLE `ps_module_country`
  ADD PRIMARY KEY (`id_module`,`id_shop`,`id_country`);

--
-- Index pour la table `ps_module_currency`
--
ALTER TABLE `ps_module_currency`
  ADD PRIMARY KEY (`id_module`,`id_shop`,`id_currency`),
  ADD KEY `id_module` (`id_module`);

--
-- Index pour la table `ps_module_group`
--
ALTER TABLE `ps_module_group`
  ADD PRIMARY KEY (`id_module`,`id_shop`,`id_group`);

--
-- Index pour la table `ps_module_preference`
--
ALTER TABLE `ps_module_preference`
  ADD PRIMARY KEY (`id_module_preference`),
  ADD UNIQUE KEY `employee_module` (`id_employee`,`module`);

--
-- Index pour la table `ps_module_shop`
--
ALTER TABLE `ps_module_shop`
  ADD PRIMARY KEY (`id_module`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_newsletter`
--
ALTER TABLE `ps_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ps_operating_system`
--
ALTER TABLE `ps_operating_system`
  ADD PRIMARY KEY (`id_operating_system`);

--
-- Index pour la table `ps_orders`
--
ALTER TABLE `ps_orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `reference` (`reference`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `invoice_number` (`invoice_number`),
  ADD KEY `id_carrier` (`id_carrier`),
  ADD KEY `id_lang` (`id_lang`),
  ADD KEY `id_currency` (`id_currency`),
  ADD KEY `id_address_delivery` (`id_address_delivery`),
  ADD KEY `id_address_invoice` (`id_address_invoice`),
  ADD KEY `id_shop_group` (`id_shop_group`),
  ADD KEY `current_state` (`current_state`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `date_add` (`date_add`);

--
-- Index pour la table `ps_order_carrier`
--
ALTER TABLE `ps_order_carrier`
  ADD PRIMARY KEY (`id_order_carrier`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_carrier` (`id_carrier`),
  ADD KEY `id_order_invoice` (`id_order_invoice`);

--
-- Index pour la table `ps_order_cart_rule`
--
ALTER TABLE `ps_order_cart_rule`
  ADD PRIMARY KEY (`id_order_cart_rule`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_cart_rule` (`id_cart_rule`);

--
-- Index pour la table `ps_order_detail`
--
ALTER TABLE `ps_order_detail`
  ADD PRIMARY KEY (`id_order_detail`),
  ADD KEY `order_detail_order` (`id_order`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_attribute_id` (`product_attribute_id`),
  ADD KEY `id_tax_rules_group` (`id_tax_rules_group`),
  ADD KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`);

--
-- Index pour la table `ps_order_detail_tax`
--
ALTER TABLE `ps_order_detail_tax`
  ADD KEY `id_order_detail` (`id_order_detail`),
  ADD KEY `id_tax` (`id_tax`);

--
-- Index pour la table `ps_order_history`
--
ALTER TABLE `ps_order_history`
  ADD PRIMARY KEY (`id_order_history`),
  ADD KEY `order_history_order` (`id_order`),
  ADD KEY `id_employee` (`id_employee`),
  ADD KEY `id_order_state` (`id_order_state`);

--
-- Index pour la table `ps_order_invoice`
--
ALTER TABLE `ps_order_invoice`
  ADD PRIMARY KEY (`id_order_invoice`),
  ADD KEY `id_order` (`id_order`);

--
-- Index pour la table `ps_order_invoice_payment`
--
ALTER TABLE `ps_order_invoice_payment`
  ADD PRIMARY KEY (`id_order_invoice`,`id_order_payment`),
  ADD KEY `order_payment` (`id_order_payment`),
  ADD KEY `id_order` (`id_order`);

--
-- Index pour la table `ps_order_invoice_tax`
--
ALTER TABLE `ps_order_invoice_tax`
  ADD KEY `id_tax` (`id_tax`);

--
-- Index pour la table `ps_order_message`
--
ALTER TABLE `ps_order_message`
  ADD PRIMARY KEY (`id_order_message`);

--
-- Index pour la table `ps_order_message_lang`
--
ALTER TABLE `ps_order_message_lang`
  ADD PRIMARY KEY (`id_order_message`,`id_lang`);

--
-- Index pour la table `ps_order_payment`
--
ALTER TABLE `ps_order_payment`
  ADD PRIMARY KEY (`id_order_payment`),
  ADD KEY `order_reference` (`order_reference`);

--
-- Index pour la table `ps_order_return`
--
ALTER TABLE `ps_order_return`
  ADD PRIMARY KEY (`id_order_return`),
  ADD KEY `order_return_customer` (`id_customer`),
  ADD KEY `id_order` (`id_order`);

--
-- Index pour la table `ps_order_return_detail`
--
ALTER TABLE `ps_order_return_detail`
  ADD PRIMARY KEY (`id_order_return`,`id_order_detail`,`id_customization`);

--
-- Index pour la table `ps_order_return_state`
--
ALTER TABLE `ps_order_return_state`
  ADD PRIMARY KEY (`id_order_return_state`);

--
-- Index pour la table `ps_order_return_state_lang`
--
ALTER TABLE `ps_order_return_state_lang`
  ADD PRIMARY KEY (`id_order_return_state`,`id_lang`);

--
-- Index pour la table `ps_order_slip`
--
ALTER TABLE `ps_order_slip`
  ADD PRIMARY KEY (`id_order_slip`),
  ADD KEY `order_slip_customer` (`id_customer`),
  ADD KEY `id_order` (`id_order`);

--
-- Index pour la table `ps_order_slip_detail`
--
ALTER TABLE `ps_order_slip_detail`
  ADD PRIMARY KEY (`id_order_slip`,`id_order_detail`);

--
-- Index pour la table `ps_order_slip_detail_tax`
--
ALTER TABLE `ps_order_slip_detail_tax`
  ADD KEY `id_order_slip_detail` (`id_order_slip_detail`),
  ADD KEY `id_tax` (`id_tax`);

--
-- Index pour la table `ps_order_state`
--
ALTER TABLE `ps_order_state`
  ADD PRIMARY KEY (`id_order_state`),
  ADD KEY `module_name` (`module_name`);

--
-- Index pour la table `ps_order_state_lang`
--
ALTER TABLE `ps_order_state_lang`
  ADD PRIMARY KEY (`id_order_state`,`id_lang`);

--
-- Index pour la table `ps_pack`
--
ALTER TABLE `ps_pack`
  ADD PRIMARY KEY (`id_product_pack`,`id_product_item`,`id_product_attribute_item`),
  ADD KEY `product_item` (`id_product_item`,`id_product_attribute_item`);

--
-- Index pour la table `ps_page`
--
ALTER TABLE `ps_page`
  ADD PRIMARY KEY (`id_page`),
  ADD KEY `id_page_type` (`id_page_type`),
  ADD KEY `id_object` (`id_object`);

--
-- Index pour la table `ps_pagenotfound`
--
ALTER TABLE `ps_pagenotfound`
  ADD PRIMARY KEY (`id_pagenotfound`),
  ADD KEY `date_add` (`date_add`);

--
-- Index pour la table `ps_page_type`
--
ALTER TABLE `ps_page_type`
  ADD PRIMARY KEY (`id_page_type`),
  ADD KEY `name` (`name`);

--
-- Index pour la table `ps_page_viewed`
--
ALTER TABLE `ps_page_viewed`
  ADD PRIMARY KEY (`id_page`,`id_date_range`,`id_shop`);

--
-- Index pour la table `ps_product`
--
ALTER TABLE `ps_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `product_supplier` (`id_supplier`),
  ADD KEY `product_manufacturer` (`id_manufacturer`,`id_product`),
  ADD KEY `id_category_default` (`id_category_default`),
  ADD KEY `indexed` (`indexed`),
  ADD KEY `date_add` (`date_add`);

--
-- Index pour la table `ps_product_attachment`
--
ALTER TABLE `ps_product_attachment`
  ADD PRIMARY KEY (`id_product`,`id_attachment`);

--
-- Index pour la table `ps_product_attribute`
--
ALTER TABLE `ps_product_attribute`
  ADD PRIMARY KEY (`id_product_attribute`),
  ADD UNIQUE KEY `product_default` (`id_product`,`default_on`),
  ADD KEY `product_attribute_product` (`id_product`),
  ADD KEY `reference` (`reference`),
  ADD KEY `supplier_reference` (`supplier_reference`),
  ADD KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`);

--
-- Index pour la table `ps_product_attribute_combination`
--
ALTER TABLE `ps_product_attribute_combination`
  ADD PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  ADD KEY `id_product_attribute` (`id_product_attribute`);

--
-- Index pour la table `ps_product_attribute_image`
--
ALTER TABLE `ps_product_attribute_image`
  ADD PRIMARY KEY (`id_product_attribute`,`id_image`),
  ADD KEY `id_image` (`id_image`);

--
-- Index pour la table `ps_product_attribute_shop`
--
ALTER TABLE `ps_product_attribute_shop`
  ADD PRIMARY KEY (`id_product_attribute`,`id_shop`),
  ADD UNIQUE KEY `id_product` (`id_product`,`id_shop`,`default_on`);

--
-- Index pour la table `ps_product_carrier`
--
ALTER TABLE `ps_product_carrier`
  ADD PRIMARY KEY (`id_product`,`id_carrier_reference`,`id_shop`);

--
-- Index pour la table `ps_product_country_tax`
--
ALTER TABLE `ps_product_country_tax`
  ADD PRIMARY KEY (`id_product`,`id_country`);

--
-- Index pour la table `ps_product_download`
--
ALTER TABLE `ps_product_download`
  ADD PRIMARY KEY (`id_product_download`),
  ADD UNIQUE KEY `id_product` (`id_product`),
  ADD KEY `product_active` (`id_product`,`active`);

--
-- Index pour la table `ps_product_group_reduction_cache`
--
ALTER TABLE `ps_product_group_reduction_cache`
  ADD PRIMARY KEY (`id_product`,`id_group`);

--
-- Index pour la table `ps_product_lang`
--
ALTER TABLE `ps_product_lang`
  ADD PRIMARY KEY (`id_product`,`id_shop`,`id_lang`),
  ADD KEY `id_lang` (`id_lang`),
  ADD KEY `name` (`name`);

--
-- Index pour la table `ps_product_sale`
--
ALTER TABLE `ps_product_sale`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `quantity` (`quantity`);

--
-- Index pour la table `ps_product_shop`
--
ALTER TABLE `ps_product_shop`
  ADD PRIMARY KEY (`id_product`,`id_shop`),
  ADD KEY `id_category_default` (`id_category_default`),
  ADD KEY `date_add` (`date_add`,`active`,`visibility`),
  ADD KEY `indexed` (`indexed`,`active`,`id_product`);

--
-- Index pour la table `ps_product_supplier`
--
ALTER TABLE `ps_product_supplier`
  ADD PRIMARY KEY (`id_product_supplier`),
  ADD UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_supplier`),
  ADD KEY `id_supplier` (`id_supplier`,`id_product`);

--
-- Index pour la table `ps_product_tag`
--
ALTER TABLE `ps_product_tag`
  ADD PRIMARY KEY (`id_product`,`id_tag`),
  ADD KEY `id_tag` (`id_tag`),
  ADD KEY `id_lang` (`id_lang`,`id_tag`);

--
-- Index pour la table `ps_product_video`
--
ALTER TABLE `ps_product_video`
  ADD PRIMARY KEY (`id_video`,`id_shop`);

--
-- Index pour la table `ps_product_video_lang`
--
ALTER TABLE `ps_product_video_lang`
  ADD PRIMARY KEY (`id_video`,`id_lang`);

--
-- Index pour la table `ps_profile`
--
ALTER TABLE `ps_profile`
  ADD PRIMARY KEY (`id_profile`);

--
-- Index pour la table `ps_profile_lang`
--
ALTER TABLE `ps_profile_lang`
  ADD PRIMARY KEY (`id_profile`,`id_lang`);

--
-- Index pour la table `ps_quick_access`
--
ALTER TABLE `ps_quick_access`
  ADD PRIMARY KEY (`id_quick_access`);

--
-- Index pour la table `ps_quick_access_lang`
--
ALTER TABLE `ps_quick_access_lang`
  ADD PRIMARY KEY (`id_quick_access`,`id_lang`);

--
-- Index pour la table `ps_range_price`
--
ALTER TABLE `ps_range_price`
  ADD PRIMARY KEY (`id_range_price`),
  ADD UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`);

--
-- Index pour la table `ps_range_weight`
--
ALTER TABLE `ps_range_weight`
  ADD PRIMARY KEY (`id_range_weight`),
  ADD UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`);

--
-- Index pour la table `ps_referrer`
--
ALTER TABLE `ps_referrer`
  ADD PRIMARY KEY (`id_referrer`);

--
-- Index pour la table `ps_referrer_cache`
--
ALTER TABLE `ps_referrer_cache`
  ADD PRIMARY KEY (`id_connections_source`,`id_referrer`);

--
-- Index pour la table `ps_referrer_shop`
--
ALTER TABLE `ps_referrer_shop`
  ADD PRIMARY KEY (`id_referrer`,`id_shop`);

--
-- Index pour la table `ps_request_sql`
--
ALTER TABLE `ps_request_sql`
  ADD PRIMARY KEY (`id_request_sql`);

--
-- Index pour la table `ps_required_field`
--
ALTER TABLE `ps_required_field`
  ADD PRIMARY KEY (`id_required_field`),
  ADD KEY `object_name` (`object_name`);

--
-- Index pour la table `ps_risk`
--
ALTER TABLE `ps_risk`
  ADD PRIMARY KEY (`id_risk`);

--
-- Index pour la table `ps_risk_lang`
--
ALTER TABLE `ps_risk_lang`
  ADD PRIMARY KEY (`id_risk`,`id_lang`),
  ADD KEY `id_risk` (`id_risk`);

--
-- Index pour la table `ps_scene`
--
ALTER TABLE `ps_scene`
  ADD PRIMARY KEY (`id_scene`);

--
-- Index pour la table `ps_scene_category`
--
ALTER TABLE `ps_scene_category`
  ADD PRIMARY KEY (`id_scene`,`id_category`);

--
-- Index pour la table `ps_scene_lang`
--
ALTER TABLE `ps_scene_lang`
  ADD PRIMARY KEY (`id_scene`,`id_lang`);

--
-- Index pour la table `ps_scene_products`
--
ALTER TABLE `ps_scene_products`
  ADD PRIMARY KEY (`id_scene`,`id_product`,`x_axis`,`y_axis`);

--
-- Index pour la table `ps_scene_shop`
--
ALTER TABLE `ps_scene_shop`
  ADD PRIMARY KEY (`id_scene`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_search_engine`
--
ALTER TABLE `ps_search_engine`
  ADD PRIMARY KEY (`id_search_engine`);

--
-- Index pour la table `ps_search_index`
--
ALTER TABLE `ps_search_index`
  ADD PRIMARY KEY (`id_word`,`id_product`),
  ADD KEY `id_product` (`id_product`);

--
-- Index pour la table `ps_search_word`
--
ALTER TABLE `ps_search_word`
  ADD PRIMARY KEY (`id_word`),
  ADD UNIQUE KEY `id_lang` (`id_lang`,`id_shop`,`word`);

--
-- Index pour la table `ps_sekeyword`
--
ALTER TABLE `ps_sekeyword`
  ADD PRIMARY KEY (`id_sekeyword`);

--
-- Index pour la table `ps_shop`
--
ALTER TABLE `ps_shop`
  ADD PRIMARY KEY (`id_shop`),
  ADD KEY `id_shop_group` (`id_shop_group`,`deleted`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_theme` (`id_theme`);

--
-- Index pour la table `ps_shop_group`
--
ALTER TABLE `ps_shop_group`
  ADD PRIMARY KEY (`id_shop_group`),
  ADD KEY `deleted` (`deleted`,`name`);

--
-- Index pour la table `ps_shop_url`
--
ALTER TABLE `ps_shop_url`
  ADD PRIMARY KEY (`id_shop_url`),
  ADD UNIQUE KEY `full_shop_url` (`domain`,`physical_uri`,`virtual_uri`),
  ADD UNIQUE KEY `full_shop_url_ssl` (`domain_ssl`,`physical_uri`,`virtual_uri`),
  ADD KEY `id_shop` (`id_shop`,`main`);

--
-- Index pour la table `ps_smarty_cache`
--
ALTER TABLE `ps_smarty_cache`
  ADD PRIMARY KEY (`id_smarty_cache`),
  ADD KEY `name` (`name`),
  ADD KEY `cache_id` (`cache_id`),
  ADD KEY `modified` (`modified`);

--
-- Index pour la table `ps_smarty_last_flush`
--
ALTER TABLE `ps_smarty_last_flush`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `ps_smarty_lazy_cache`
--
ALTER TABLE `ps_smarty_lazy_cache`
  ADD PRIMARY KEY (`template_hash`,`cache_id`,`compile_id`);

--
-- Index pour la table `ps_specific_price`
--
ALTER TABLE `ps_specific_price`
  ADD PRIMARY KEY (`id_specific_price`),
  ADD UNIQUE KEY `id_product_2` (`id_product`,`id_product_attribute`,`id_customer`,`id_cart`,`from`,`to`,`id_shop`,`id_shop_group`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`id_specific_price_rule`),
  ADD KEY `id_product` (`id_product`,`id_shop`,`id_currency`,`id_country`,`id_group`,`id_customer`,`from_quantity`,`from`,`to`),
  ADD KEY `from_quantity` (`from_quantity`),
  ADD KEY `id_specific_price_rule` (`id_specific_price_rule`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `id_product_attribute` (`id_product_attribute`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`);

--
-- Index pour la table `ps_specific_price_priority`
--
ALTER TABLE `ps_specific_price_priority`
  ADD PRIMARY KEY (`id_specific_price_priority`,`id_product`),
  ADD UNIQUE KEY `id_product` (`id_product`);

--
-- Index pour la table `ps_specific_price_rule`
--
ALTER TABLE `ps_specific_price_rule`
  ADD PRIMARY KEY (`id_specific_price_rule`),
  ADD KEY `id_product` (`id_shop`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`from`,`to`);

--
-- Index pour la table `ps_specific_price_rule_condition`
--
ALTER TABLE `ps_specific_price_rule_condition`
  ADD PRIMARY KEY (`id_specific_price_rule_condition`),
  ADD KEY `id_specific_price_rule_condition_group` (`id_specific_price_rule_condition_group`);

--
-- Index pour la table `ps_specific_price_rule_condition_group`
--
ALTER TABLE `ps_specific_price_rule_condition_group`
  ADD PRIMARY KEY (`id_specific_price_rule_condition_group`,`id_specific_price_rule`);

--
-- Index pour la table `ps_state`
--
ALTER TABLE `ps_state`
  ADD PRIMARY KEY (`id_state`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `name` (`name`),
  ADD KEY `id_zone` (`id_zone`);

--
-- Index pour la table `ps_statssearch`
--
ALTER TABLE `ps_statssearch`
  ADD PRIMARY KEY (`id_statssearch`);

--
-- Index pour la table `ps_stock`
--
ALTER TABLE `ps_stock`
  ADD PRIMARY KEY (`id_stock`),
  ADD KEY `id_warehouse` (`id_warehouse`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_product_attribute` (`id_product_attribute`);

--
-- Index pour la table `ps_stock_available`
--
ALTER TABLE `ps_stock_available`
  ADD PRIMARY KEY (`id_stock_available`),
  ADD UNIQUE KEY `product_sqlstock` (`id_product`,`id_product_attribute`,`id_shop`,`id_shop_group`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_shop_group` (`id_shop_group`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_product_attribute` (`id_product_attribute`);

--
-- Index pour la table `ps_stock_mvt`
--
ALTER TABLE `ps_stock_mvt`
  ADD PRIMARY KEY (`id_stock_mvt`),
  ADD KEY `id_stock` (`id_stock`),
  ADD KEY `id_stock_mvt_reason` (`id_stock_mvt_reason`);

--
-- Index pour la table `ps_stock_mvt_reason`
--
ALTER TABLE `ps_stock_mvt_reason`
  ADD PRIMARY KEY (`id_stock_mvt_reason`);

--
-- Index pour la table `ps_stock_mvt_reason_lang`
--
ALTER TABLE `ps_stock_mvt_reason_lang`
  ADD PRIMARY KEY (`id_stock_mvt_reason`,`id_lang`);

--
-- Index pour la table `ps_store`
--
ALTER TABLE `ps_store`
  ADD PRIMARY KEY (`id_store`);

--
-- Index pour la table `ps_store_shop`
--
ALTER TABLE `ps_store_shop`
  ADD PRIMARY KEY (`id_store`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_supplier`
--
ALTER TABLE `ps_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Index pour la table `ps_supplier_lang`
--
ALTER TABLE `ps_supplier_lang`
  ADD PRIMARY KEY (`id_supplier`,`id_lang`);

--
-- Index pour la table `ps_supplier_shop`
--
ALTER TABLE `ps_supplier_shop`
  ADD PRIMARY KEY (`id_supplier`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_supply_order`
--
ALTER TABLE `ps_supply_order`
  ADD PRIMARY KEY (`id_supply_order`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_warehouse` (`id_warehouse`),
  ADD KEY `reference` (`reference`);

--
-- Index pour la table `ps_supply_order_detail`
--
ALTER TABLE `ps_supply_order_detail`
  ADD PRIMARY KEY (`id_supply_order_detail`),
  ADD KEY `id_supply_order` (`id_supply_order`,`id_product`),
  ADD KEY `id_product_attribute` (`id_product_attribute`),
  ADD KEY `id_product_product_attribute` (`id_product`,`id_product_attribute`);

--
-- Index pour la table `ps_supply_order_history`
--
ALTER TABLE `ps_supply_order_history`
  ADD PRIMARY KEY (`id_supply_order_history`),
  ADD KEY `id_supply_order` (`id_supply_order`),
  ADD KEY `id_employee` (`id_employee`),
  ADD KEY `id_state` (`id_state`);

--
-- Index pour la table `ps_supply_order_receipt_history`
--
ALTER TABLE `ps_supply_order_receipt_history`
  ADD PRIMARY KEY (`id_supply_order_receipt_history`),
  ADD KEY `id_supply_order_detail` (`id_supply_order_detail`),
  ADD KEY `id_supply_order_state` (`id_supply_order_state`);

--
-- Index pour la table `ps_supply_order_state`
--
ALTER TABLE `ps_supply_order_state`
  ADD PRIMARY KEY (`id_supply_order_state`);

--
-- Index pour la table `ps_supply_order_state_lang`
--
ALTER TABLE `ps_supply_order_state_lang`
  ADD PRIMARY KEY (`id_supply_order_state`,`id_lang`);

--
-- Index pour la table `ps_tab`
--
ALTER TABLE `ps_tab`
  ADD PRIMARY KEY (`id_tab`),
  ADD KEY `class_name` (`class_name`),
  ADD KEY `id_parent` (`id_parent`);

--
-- Index pour la table `ps_tab_advice`
--
ALTER TABLE `ps_tab_advice`
  ADD PRIMARY KEY (`id_tab`,`id_advice`);

--
-- Index pour la table `ps_tab_lang`
--
ALTER TABLE `ps_tab_lang`
  ADD PRIMARY KEY (`id_tab`,`id_lang`);

--
-- Index pour la table `ps_tab_module_preference`
--
ALTER TABLE `ps_tab_module_preference`
  ADD PRIMARY KEY (`id_tab_module_preference`),
  ADD UNIQUE KEY `employee_module` (`id_employee`,`id_tab`,`module`);

--
-- Index pour la table `ps_tag`
--
ALTER TABLE `ps_tag`
  ADD PRIMARY KEY (`id_tag`),
  ADD KEY `tag_name` (`name`),
  ADD KEY `id_lang` (`id_lang`);

--
-- Index pour la table `ps_tag_count`
--
ALTER TABLE `ps_tag_count`
  ADD PRIMARY KEY (`id_group`,`id_tag`),
  ADD KEY `id_group` (`id_group`,`id_lang`,`id_shop`,`counter`);

--
-- Index pour la table `ps_tax`
--
ALTER TABLE `ps_tax`
  ADD PRIMARY KEY (`id_tax`);

--
-- Index pour la table `ps_tax_lang`
--
ALTER TABLE `ps_tax_lang`
  ADD PRIMARY KEY (`id_tax`,`id_lang`);

--
-- Index pour la table `ps_tax_rule`
--
ALTER TABLE `ps_tax_rule`
  ADD PRIMARY KEY (`id_tax_rule`),
  ADD KEY `id_tax_rules_group` (`id_tax_rules_group`),
  ADD KEY `id_tax` (`id_tax`),
  ADD KEY `category_getproducts` (`id_tax_rules_group`,`id_country`,`id_state`,`zipcode_from`);

--
-- Index pour la table `ps_tax_rules_group`
--
ALTER TABLE `ps_tax_rules_group`
  ADD PRIMARY KEY (`id_tax_rules_group`);

--
-- Index pour la table `ps_tax_rules_group_shop`
--
ALTER TABLE `ps_tax_rules_group_shop`
  ADD PRIMARY KEY (`id_tax_rules_group`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_theme`
--
ALTER TABLE `ps_theme`
  ADD PRIMARY KEY (`id_theme`);

--
-- Index pour la table `ps_themeconfigurator`
--
ALTER TABLE `ps_themeconfigurator`
  ADD PRIMARY KEY (`id_item`);

--
-- Index pour la table `ps_theme_meta`
--
ALTER TABLE `ps_theme_meta`
  ADD PRIMARY KEY (`id_theme_meta`),
  ADD UNIQUE KEY `id_theme_2` (`id_theme`,`id_meta`),
  ADD KEY `id_theme` (`id_theme`),
  ADD KEY `id_meta` (`id_meta`);

--
-- Index pour la table `ps_theme_specific`
--
ALTER TABLE `ps_theme_specific`
  ADD PRIMARY KEY (`id_theme`,`id_shop`,`entity`,`id_object`);

--
-- Index pour la table `ps_timezone`
--
ALTER TABLE `ps_timezone`
  ADD PRIMARY KEY (`id_timezone`);

--
-- Index pour la table `ps_tmsocialfeed`
--
ALTER TABLE `ps_tmsocialfeed`
  ADD PRIMARY KEY (`id_item`);

--
-- Index pour la table `ps_warehouse`
--
ALTER TABLE `ps_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Index pour la table `ps_warehouse_carrier`
--
ALTER TABLE `ps_warehouse_carrier`
  ADD PRIMARY KEY (`id_warehouse`,`id_carrier`),
  ADD KEY `id_warehouse` (`id_warehouse`),
  ADD KEY `id_carrier` (`id_carrier`);

--
-- Index pour la table `ps_warehouse_product_location`
--
ALTER TABLE `ps_warehouse_product_location`
  ADD PRIMARY KEY (`id_warehouse_product_location`),
  ADD UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_warehouse`);

--
-- Index pour la table `ps_warehouse_shop`
--
ALTER TABLE `ps_warehouse_shop`
  ADD PRIMARY KEY (`id_warehouse`,`id_shop`),
  ADD KEY `id_warehouse` (`id_warehouse`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_webservice_account`
--
ALTER TABLE `ps_webservice_account`
  ADD PRIMARY KEY (`id_webservice_account`),
  ADD KEY `key` (`key`);

--
-- Index pour la table `ps_webservice_account_shop`
--
ALTER TABLE `ps_webservice_account_shop`
  ADD PRIMARY KEY (`id_webservice_account`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- Index pour la table `ps_webservice_permission`
--
ALTER TABLE `ps_webservice_permission`
  ADD PRIMARY KEY (`id_webservice_permission`),
  ADD UNIQUE KEY `resource_2` (`resource`,`method`,`id_webservice_account`),
  ADD KEY `resource` (`resource`),
  ADD KEY `method` (`method`),
  ADD KEY `id_webservice_account` (`id_webservice_account`);

--
-- Index pour la table `ps_web_browser`
--
ALTER TABLE `ps_web_browser`
  ADD PRIMARY KEY (`id_web_browser`);

--
-- Index pour la table `ps_wishlist`
--
ALTER TABLE `ps_wishlist`
  ADD PRIMARY KEY (`id_wishlist`);

--
-- Index pour la table `ps_wishlist_product`
--
ALTER TABLE `ps_wishlist_product`
  ADD PRIMARY KEY (`id_wishlist_product`);

--
-- Index pour la table `ps_zone`
--
ALTER TABLE `ps_zone`
  ADD PRIMARY KEY (`id_zone`);

--
-- Index pour la table `ps_zone_shop`
--
ALTER TABLE `ps_zone_shop`
  ADD PRIMARY KEY (`id_zone`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `ps_address`
--
ALTER TABLE `ps_address`
  MODIFY `id_address` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `ps_advice`
--
ALTER TABLE `ps_advice`
  MODIFY `id_advice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT pour la table `ps_alias`
--
ALTER TABLE `ps_alias`
  MODIFY `id_alias` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ps_attachment`
--
ALTER TABLE `ps_attachment`
  MODIFY `id_attachment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ps_attachment_lang`
--
ALTER TABLE `ps_attachment_lang`
  MODIFY `id_attachment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ps_attribute`
--
ALTER TABLE `ps_attribute`
  MODIFY `id_attribute` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `ps_attribute_group`
--
ALTER TABLE `ps_attribute_group`
  MODIFY `id_attribute_group` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `ps_attribute_impact`
--
ALTER TABLE `ps_attribute_impact`
  MODIFY `id_attribute_impact` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_badge`
--
ALTER TABLE `ps_badge`
  MODIFY `id_badge` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
--
-- AUTO_INCREMENT pour la table `ps_carrier`
--
ALTER TABLE `ps_carrier`
  MODIFY `id_carrier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `ps_cart`
--
ALTER TABLE `ps_cart`
  MODIFY `id_cart` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `ps_cart_rule`
--
ALTER TABLE `ps_cart_rule`
  MODIFY `id_cart_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_cart_rule_product_rule`
--
ALTER TABLE `ps_cart_rule_product_rule`
  MODIFY `id_product_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_cart_rule_product_rule_group`
--
ALTER TABLE `ps_cart_rule_product_rule_group`
  MODIFY `id_product_rule_group` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_category`
--
ALTER TABLE `ps_category`
  MODIFY `id_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `ps_cms`
--
ALTER TABLE `ps_cms`
  MODIFY `id_cms` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `ps_cms_block`
--
ALTER TABLE `ps_cms_block`
  MODIFY `id_cms_block` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ps_cms_block_page`
--
ALTER TABLE `ps_cms_block_page`
  MODIFY `id_cms_block_page` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `ps_cms_block_shop`
--
ALTER TABLE `ps_cms_block_shop`
  MODIFY `id_cms_block` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ps_cms_category`
--
ALTER TABLE `ps_cms_category`
  MODIFY `id_cms_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ps_cms_category_shop`
--
ALTER TABLE `ps_cms_category_shop`
  MODIFY `id_cms_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ps_cms_role`
--
ALTER TABLE `ps_cms_role`
  MODIFY `id_cms_role` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_compare`
--
ALTER TABLE `ps_compare`
  MODIFY `id_compare` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ps_condition`
--
ALTER TABLE `ps_condition`
  MODIFY `id_condition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT pour la table `ps_configuration`
--
ALTER TABLE `ps_configuration`
  MODIFY `id_configuration` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;
--
-- AUTO_INCREMENT pour la table `ps_configuration_kpi`
--
ALTER TABLE `ps_configuration_kpi`
  MODIFY `id_configuration_kpi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT pour la table `ps_connections`
--
ALTER TABLE `ps_connections`
  MODIFY `id_connections` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT pour la table `ps_connections_source`
--
ALTER TABLE `ps_connections_source`
  MODIFY `id_connections_source` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_contact`
--
ALTER TABLE `ps_contact`
  MODIFY `id_contact` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ps_country`
--
ALTER TABLE `ps_country`
  MODIFY `id_country` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT pour la table `ps_cronjobs`
--
ALTER TABLE `ps_cronjobs`
  MODIFY `id_cronjob` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_currency`
--
ALTER TABLE `ps_currency`
  MODIFY `id_currency` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ps_customer`
--
ALTER TABLE `ps_customer`
  MODIFY `id_customer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ps_customer_message`
--
ALTER TABLE `ps_customer_message`
  MODIFY `id_customer_message` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_customer_thread`
--
ALTER TABLE `ps_customer_thread`
  MODIFY `id_customer_thread` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_customization`
--
ALTER TABLE `ps_customization`
  MODIFY `id_customization` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_customization_field`
--
ALTER TABLE `ps_customization_field`
  MODIFY `id_customization_field` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_date_range`
--
ALTER TABLE `ps_date_range`
  MODIFY `id_date_range` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_delivery`
--
ALTER TABLE `ps_delivery`
  MODIFY `id_delivery` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `ps_employee`
--
ALTER TABLE `ps_employee`
  MODIFY `id_employee` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ps_feature`
--
ALTER TABLE `ps_feature`
  MODIFY `id_feature` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `ps_feature_value`
--
ALTER TABLE `ps_feature_value`
  MODIFY `id_feature_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT pour la table `ps_gender`
--
ALTER TABLE `ps_gender`
  MODIFY `id_gender` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ps_group`
--
ALTER TABLE `ps_group`
  MODIFY `id_group` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ps_group_reduction`
--
ALTER TABLE `ps_group_reduction`
  MODIFY `id_group_reduction` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_guest`
--
ALTER TABLE `ps_guest`
  MODIFY `id_guest` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `ps_homeslider`
--
ALTER TABLE `ps_homeslider`
  MODIFY `id_homeslider_slides` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `ps_homeslider_slides`
--
ALTER TABLE `ps_homeslider_slides`
  MODIFY `id_homeslider_slides` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `ps_hook`
--
ALTER TABLE `ps_hook`
  MODIFY `id_hook` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT pour la table `ps_hook_alias`
--
ALTER TABLE `ps_hook_alias`
  MODIFY `id_hook_alias` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT pour la table `ps_hook_module_exceptions`
--
ALTER TABLE `ps_hook_module_exceptions`
  MODIFY `id_hook_module_exceptions` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT pour la table `ps_image`
--
ALTER TABLE `ps_image`
  MODIFY `id_image` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT pour la table `ps_image_type`
--
ALTER TABLE `ps_image_type`
  MODIFY `id_image_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `ps_import_match`
--
ALTER TABLE `ps_import_match`
  MODIFY `id_import_match` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_info`
--
ALTER TABLE `ps_info`
  MODIFY `id_info` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_lang`
--
ALTER TABLE `ps_lang`
  MODIFY `id_lang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ps_layered_category`
--
ALTER TABLE `ps_layered_category`
  MODIFY `id_layered_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT pour la table `ps_layered_filter`
--
ALTER TABLE `ps_layered_filter`
  MODIFY `id_layered_filter` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `ps_layered_friendly_url`
--
ALTER TABLE `ps_layered_friendly_url`
  MODIFY `id_layered_friendly_url` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT pour la table `ps_linksmenutop`
--
ALTER TABLE `ps_linksmenutop`
  MODIFY `id_linksmenutop` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ps_log`
--
ALTER TABLE `ps_log`
  MODIFY `id_log` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;
--
-- AUTO_INCREMENT pour la table `ps_mail`
--
ALTER TABLE `ps_mail`
  MODIFY `id_mail` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_manufacturer`
--
ALTER TABLE `ps_manufacturer`
  MODIFY `id_manufacturer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `ps_memcached_servers`
--
ALTER TABLE `ps_memcached_servers`
  MODIFY `id_memcached_server` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_message`
--
ALTER TABLE `ps_message`
  MODIFY `id_message` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_meta`
--
ALTER TABLE `ps_meta`
  MODIFY `id_meta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `ps_module`
--
ALTER TABLE `ps_module`
  MODIFY `id_module` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT pour la table `ps_modules_perfs`
--
ALTER TABLE `ps_modules_perfs`
  MODIFY `id_modules_perfs` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_module_preference`
--
ALTER TABLE `ps_module_preference`
  MODIFY `id_module_preference` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_newsletter`
--
ALTER TABLE `ps_newsletter`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_operating_system`
--
ALTER TABLE `ps_operating_system`
  MODIFY `id_operating_system` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `ps_orders`
--
ALTER TABLE `ps_orders`
  MODIFY `id_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ps_order_carrier`
--
ALTER TABLE `ps_order_carrier`
  MODIFY `id_order_carrier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ps_order_cart_rule`
--
ALTER TABLE `ps_order_cart_rule`
  MODIFY `id_order_cart_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_order_detail`
--
ALTER TABLE `ps_order_detail`
  MODIFY `id_order_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `ps_order_history`
--
ALTER TABLE `ps_order_history`
  MODIFY `id_order_history` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `ps_order_invoice`
--
ALTER TABLE `ps_order_invoice`
  MODIFY `id_order_invoice` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_order_message`
--
ALTER TABLE `ps_order_message`
  MODIFY `id_order_message` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ps_order_payment`
--
ALTER TABLE `ps_order_payment`
  MODIFY `id_order_payment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_order_return`
--
ALTER TABLE `ps_order_return`
  MODIFY `id_order_return` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_order_return_state`
--
ALTER TABLE `ps_order_return_state`
  MODIFY `id_order_return_state` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ps_order_slip`
--
ALTER TABLE `ps_order_slip`
  MODIFY `id_order_slip` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_order_state`
--
ALTER TABLE `ps_order_state`
  MODIFY `id_order_state` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `ps_page`
--
ALTER TABLE `ps_page`
  MODIFY `id_page` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ps_pagenotfound`
--
ALTER TABLE `ps_pagenotfound`
  MODIFY `id_pagenotfound` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=806;
--
-- AUTO_INCREMENT pour la table `ps_page_type`
--
ALTER TABLE `ps_page_type`
  MODIFY `id_page_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ps_product`
--
ALTER TABLE `ps_product`
  MODIFY `id_product` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `ps_product_attribute`
--
ALTER TABLE `ps_product_attribute`
  MODIFY `id_product_attribute` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `ps_product_download`
--
ALTER TABLE `ps_product_download`
  MODIFY `id_product_download` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_product_supplier`
--
ALTER TABLE `ps_product_supplier`
  MODIFY `id_product_supplier` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `ps_product_video`
--
ALTER TABLE `ps_product_video`
  MODIFY `id_video` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `ps_profile`
--
ALTER TABLE `ps_profile`
  MODIFY `id_profile` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `ps_quick_access`
--
ALTER TABLE `ps_quick_access`
  MODIFY `id_quick_access` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ps_range_price`
--
ALTER TABLE `ps_range_price`
  MODIFY `id_range_price` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_range_weight`
--
ALTER TABLE `ps_range_weight`
  MODIFY `id_range_weight` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ps_referrer`
--
ALTER TABLE `ps_referrer`
  MODIFY `id_referrer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_referrer_shop`
--
ALTER TABLE `ps_referrer_shop`
  MODIFY `id_referrer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_request_sql`
--
ALTER TABLE `ps_request_sql`
  MODIFY `id_request_sql` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_required_field`
--
ALTER TABLE `ps_required_field`
  MODIFY `id_required_field` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_risk`
--
ALTER TABLE `ps_risk`
  MODIFY `id_risk` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `ps_scene`
--
ALTER TABLE `ps_scene`
  MODIFY `id_scene` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_search_engine`
--
ALTER TABLE `ps_search_engine`
  MODIFY `id_search_engine` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `ps_search_word`
--
ALTER TABLE `ps_search_word`
  MODIFY `id_word` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1400;
--
-- AUTO_INCREMENT pour la table `ps_sekeyword`
--
ALTER TABLE `ps_sekeyword`
  MODIFY `id_sekeyword` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_shop`
--
ALTER TABLE `ps_shop`
  MODIFY `id_shop` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ps_shop_group`
--
ALTER TABLE `ps_shop_group`
  MODIFY `id_shop_group` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ps_shop_url`
--
ALTER TABLE `ps_shop_url`
  MODIFY `id_shop_url` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ps_specific_price`
--
ALTER TABLE `ps_specific_price`
  MODIFY `id_specific_price` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_specific_price_priority`
--
ALTER TABLE `ps_specific_price_priority`
  MODIFY `id_specific_price_priority` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `ps_specific_price_rule`
--
ALTER TABLE `ps_specific_price_rule`
  MODIFY `id_specific_price_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_specific_price_rule_condition`
--
ALTER TABLE `ps_specific_price_rule_condition`
  MODIFY `id_specific_price_rule_condition` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_specific_price_rule_condition_group`
--
ALTER TABLE `ps_specific_price_rule_condition_group`
  MODIFY `id_specific_price_rule_condition_group` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_state`
--
ALTER TABLE `ps_state`
  MODIFY `id_state` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;
--
-- AUTO_INCREMENT pour la table `ps_statssearch`
--
ALTER TABLE `ps_statssearch`
  MODIFY `id_statssearch` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `ps_stock`
--
ALTER TABLE `ps_stock`
  MODIFY `id_stock` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_stock_available`
--
ALTER TABLE `ps_stock_available`
  MODIFY `id_stock_available` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT pour la table `ps_stock_mvt`
--
ALTER TABLE `ps_stock_mvt`
  MODIFY `id_stock_mvt` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_stock_mvt_reason`
--
ALTER TABLE `ps_stock_mvt_reason`
  MODIFY `id_stock_mvt_reason` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `ps_store`
--
ALTER TABLE `ps_store`
  MODIFY `id_store` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ps_supplier`
--
ALTER TABLE `ps_supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `ps_supply_order`
--
ALTER TABLE `ps_supply_order`
  MODIFY `id_supply_order` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_supply_order_detail`
--
ALTER TABLE `ps_supply_order_detail`
  MODIFY `id_supply_order_detail` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_supply_order_history`
--
ALTER TABLE `ps_supply_order_history`
  MODIFY `id_supply_order_history` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_supply_order_receipt_history`
--
ALTER TABLE `ps_supply_order_receipt_history`
  MODIFY `id_supply_order_receipt_history` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_supply_order_state`
--
ALTER TABLE `ps_supply_order_state`
  MODIFY `id_supply_order_state` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `ps_tab`
--
ALTER TABLE `ps_tab`
  MODIFY `id_tab` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT pour la table `ps_tab_module_preference`
--
ALTER TABLE `ps_tab_module_preference`
  MODIFY `id_tab_module_preference` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_tag`
--
ALTER TABLE `ps_tag`
  MODIFY `id_tag` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_tax`
--
ALTER TABLE `ps_tax`
  MODIFY `id_tax` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pour la table `ps_tax_rule`
--
ALTER TABLE `ps_tax_rule`
  MODIFY `id_tax_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pour la table `ps_tax_rules_group`
--
ALTER TABLE `ps_tax_rules_group`
  MODIFY `id_tax_rules_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pour la table `ps_theme`
--
ALTER TABLE `ps_theme`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ps_themeconfigurator`
--
ALTER TABLE `ps_themeconfigurator`
  MODIFY `id_item` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `ps_theme_meta`
--
ALTER TABLE `ps_theme_meta`
  MODIFY `id_theme_meta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT pour la table `ps_timezone`
--
ALTER TABLE `ps_timezone`
  MODIFY `id_timezone` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;
--
-- AUTO_INCREMENT pour la table `ps_tmsocialfeed`
--
ALTER TABLE `ps_tmsocialfeed`
  MODIFY `id_item` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ps_warehouse`
--
ALTER TABLE `ps_warehouse`
  MODIFY `id_warehouse` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_warehouse_product_location`
--
ALTER TABLE `ps_warehouse_product_location`
  MODIFY `id_warehouse_product_location` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_webservice_account`
--
ALTER TABLE `ps_webservice_account`
  MODIFY `id_webservice_account` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_webservice_permission`
--
ALTER TABLE `ps_webservice_permission`
  MODIFY `id_webservice_permission` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_web_browser`
--
ALTER TABLE `ps_web_browser`
  MODIFY `id_web_browser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `ps_wishlist`
--
ALTER TABLE `ps_wishlist`
  MODIFY `id_wishlist` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_wishlist_product`
--
ALTER TABLE `ps_wishlist_product`
  MODIFY `id_wishlist_product` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ps_zone`
--
ALTER TABLE `ps_zone`
  MODIFY `id_zone` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
