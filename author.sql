-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Erstellungszeit: 09. Jul 2019 um 14:35
-- Server-Version: 5.7.26
-- PHP-Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `bookstore`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `birth_year` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `biography` varchar(70) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `author`
--

INSERT INTO `author` (`author_id`, `name`, `birth_year`, `gender`, `biography`) VALUES
(1, 'J.R.R Tolkien', '1892', 'm', 'https://en.wikipedia.org/wiki/J._R._R._Tolkien'),
(2, 'Eric Emmanuel Schmitt', '1960', 'm', 'https://en.wikipedia.org/wiki/%C3%89ric-Emmanuel_Schmitt'),
(3, 'Albert Camus', '1913', 'm', 'https://en.wikipedia.org/wiki/Albert_Camus'),
(4, 'William Shakespear', '1564', 'm', 'https://en.wikipedia.org/wiki/William_Shakespeare'),
(5, 'Michel de Montaigne', '1533', 'm', 'https://en.wikipedia.org/wiki/Michel_de_Montaigne'),
(6, 'Johann Wolfgang von Goethe', '1749', 'm', 'https://en.wikipedia.org/wiki/Johann_Wolfgang_von_Goethe');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
