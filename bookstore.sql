-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Erstellungszeit: 10. Jul 2019 um 14:49
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
  `price` float NOT NULL,
  `format` varchar(50) NOT NULL,
  `cover` varchar(60) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `books`
--

INSERT INTO `books` (`book_id`, `title`, `release_date`, `category`, `description`, `price`, `format`, `cover`, `author_id`) VALUES
(61, 'Lord of the Rings', '1954', 'Fantasy', '2 small guys destroy stolen jewellery of a homeless person', 36, 'Hardback', 'C:\\wamp64\\www\\BookShopProject\\coverpics\\lotr_book.png', 1),
(62, 'The Hobbit', '1937', 'Fantasy', 'Introvert is forced to leave the house', 18, 'Softcover', 'C:\\wamp64\\www\\BookShopProject\\coverpics\\hobbit_book.jpg', 1),
(63, 'La Part de l\'Autre', '2001', 'Art', 'Alternate History of little Adolf', 18.5, 'Hardcover', 'C:\\wamp64\\www\\BookShopProject\\coverpics\\lpdla_book.jpg', 2),
(64, 'La Peste', '1947', 'Art', 'World goes down', 19, 'Softcover', 'C:\\wamp64\\www\\BookShopProject\\coverpics\\peste_book.jpg', 3),
(65, 'Shakespear : Collected Works', '1602', 'Art', 'Murder and tragedy in fancy english', 43, 'Hardback', 'C:\\wamp64\\www\\BookShopProject\\coverpics\\shakespear_book.jpg', 4),
(66, 'Des Cannibales', '1557', 'Art', 'Something in french i\'d say', 13, 'Softcover', 'C:\\wamp64\\www\\BookShopProject\\coverpics\\cannibales_book.jpg', 5),
(67, 'Faust', '1808', 'Art', 'Gambling addiction of god and devil', 24, 'Softcover', 'C:\\wamp64\\www\\BookShopProject\\coverpics\\faust_book.jpg', 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `shipping_adress` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_items` varchar(70) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `book_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`book_id`,`order_id`),
  KEY `order_id` (`order_id`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `adress` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `adress`) VALUES
(1, 'Tony ', ' Lucas', '', '', ''),
(2, 'dazdaz', '', '', '', ''),
(3, 'dazdzazd', '', '', '', ''),
(4, 'dazdzadzadazdza', '', '', '', ''),
(5, 'dzazaddzadazdaz', '', '', '', ''),
(6, 'dazdazdazdazdaz', '', '', '', ''),
(7, 'dazdazdazdazdaz', '', '', '', '');

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`);

--
-- Constraints der Tabelle `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints der Tabelle `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
