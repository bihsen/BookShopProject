-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Erstellungszeit: 09. Jul 2019 um 12:26
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
-- Tabellenstruktur für Tabelle `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `release_date` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(150) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `books`
--

INSERT INTO `books` (`book_id`, `title`, `release_date`, `category`, `description`, `price`) VALUES
(61, 'Lord of the Rings', '1954', 'Fantasy', '2 small guys destroy stolen jewellery of a homeless person', '35'),
(62, 'The Hobbit', '1937', 'Fantasy', 'Introvert is forced to leave the house', '18'),
(63, 'La Part de l\'Autre', '2001', 'Art', 'Alternate History of little Adolf', '18'),
(64, 'La Peste', '1947', 'Art', 'World goes down', '19'),
(65, 'Shakespear : Collected Works', '1602', 'Art', 'Murder and tragedy in fancy english', '43'),
(66, 'Des Cannibales', '1557', 'Art', 'Something in french i\'d say', '13'),
(67, 'Faust', '1808', 'Art', 'Gambling addiction of god and devil', '24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
