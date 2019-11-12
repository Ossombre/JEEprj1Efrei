-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 12 Novembre 2019 à 15:26
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `jeeprj`
--

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `fname` varchar(64) NOT NULL,
  `lname` varchar(64) NOT NULL,
  `hphone` varchar(15) DEFAULT NULL,
  `mPhone` varchar(15) DEFAULT NULL,
  `pPhone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `postcode` varchar(5) NOT NULL,
  `city` varchar(64) NOT NULL,
  `mail` varchar(150) NOT NULL,
  PRIMARY KEY (`mail`),
  UNIQUE KEY `pPhone` (`pPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employees`
--

INSERT INTO `employees` (`fname`, `lname`, `hphone`, `mPhone`, `pPhone`, `address`, `postcode`, `city`, `mail`) VALUES
('SMITH', 'John', '0981677657', '0654729666', '0715239164', '1, Hamilton st.', '65298', 'Liverpool', 'john.smith@gmail.com'),
('Vador', 'Dark', '0982584796', '0715489658', '0184758962', '17 corridor Obi', '25487', 'DeathStar', 'pere.luc@emperor.univ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
