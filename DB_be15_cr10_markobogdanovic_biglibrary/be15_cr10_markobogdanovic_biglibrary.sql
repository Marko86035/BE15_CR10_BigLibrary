-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 04:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15_cr10_markobogdanovic_biglibrary`
--
CREATE DATABASE IF NOT EXISTS `be15_cr10_markobogdanovic_biglibrary` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be15_cr10_markobogdanovic_biglibrary`;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picture` varchar(30) DEFAULT NULL,
  `short_description` varchar(100) NOT NULL,
  `author_first_name` varchar(30) NOT NULL,
  `author_last_name` varchar(30) NOT NULL,
  `publisher_name` varchar(30) NOT NULL,
  `publisher_address` varchar(40) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `ISBN_code` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_id`, `name`, `type`, `picture`, `short_description`, `author_first_name`, `author_last_name`, `publisher_name`, `publisher_address`, `publish_date`, `ISBN_code`) VALUES
(1, 'The Bridge on the Drina', 'Book', 'The _Bridge on_the_Drina.jpg', 'A stone bridge from the 16th century, an endowment of Mehmed-pasha Sokolovic, like a mute witness re', 'Ivo', 'Andric', 'Delfi', 'Kralja Petra I, 18', '2022-01-01', 111),
(2, 'Baku', 'Book', 'baku.jpg', 'Azerbaijan is a country with a rich history, culture, traditions and customs, a country where East a', 'Nargiz', 'Mammadova', 'Delfi', 'Kralja Petra I, 18', '2022-02-02', 222),
(3, 'The Awakening', 'Book', 'the_awakening.jpg', 'I dont want to settle down with some Alpha-born pup my father chooses.', 'Sara', 'Slow', 'Delfi', 'Kralja Petra I, 18', '2022-03-03', 333),
(4, 'Dein CEO', 'Book', 'dein_ceo.jpg', 'Respektlosigkeit und Freude waren meine Markenzeichen', 'Melina', 'Santos', 'Delfi', 'Kralja Petra I, 18', '2022-04-04', 444),
(5, 'Die Bücher des Todes', 'Book', 'Die_Bücher_des_Todes.jpg', 'Es ist so ein friedlicher Morgen.', 'Charles', 'H.Barnes', 'Delfi', 'Kralja Petra I, 18', '2022-05-05', 555),
(6, 'Ciao Ciao Bambina', 'Audio CD', 'Ciao_Ciao_Bambina.jpg', 'Italien Hits 60s-70s', 'Various', 'Various', 'Italia', 'Kralja Petra I, 18', '2022-06-06', 666),
(7, 'Beethoven-Das Beste', 'Audio CD', 'Beethoven_Das_Beste.jpg', 'Das Beste von Beethoven', 'Martin', 'Stadtfeld ', 'Ludwig Van B.', 'Kohllergasse 3, 8', '2022-07-07', 777),
(8, 'I am', 'Audio CD', 'I_am.jpg', 'I am ... Sasha Fierce - Platinum Edition', 'Beyoncé Giselle', 'Knowles', 'JZ Records', 'B.avenue', '2022-08-08', 888),
(9, 'Venom: Let There Be Carnage', 'DVD', 'Venom_Let_There_Be_Carnage.jpg', 'Aktuell haben wir leider keine ausführliche Beschreibung zu diesem Artikel.', 'Andy', 'Serkis', 'Sony Pictures Entertainment', 'Schweglerstrasse 3, 5', '2022-09-09', 999),
(10, 'Die Twilight Saga', 'DVD', 'Die_Twilight_Saga.jpg', 'Bella Swan (Kristen Stewart) war schon immer ein wenig anders als ihre gleichaltrigen Mitschüler', 'Catherine', 'Hardwicke', 'Concorde Video', 'Luise-Ullrich-Straße 6', '2022-10-10', 1000),
(11, 'Chicago Fire', 'DVD', 'Chicago_Fire.jpg', 'Auch in Staffel Sieben setzen die Feuerwehrleute, Rettungskräfte und Sanitäter der Feuerwache 51 in ', 'Jesse', 'Spencer', 'Universal Pictures Germany', 'Herriotstraße 6-8,', '2022-11-11', 1100),
(12, 'Rocky', 'DVD', 'Rocky.jpg', 'Rocky Balboa (Sylvester Stallone) ist ein begnadeter Boxer', 'Sylvester', 'Stallone', 'Twentieth Century Fox', 'Hintzerstraße 9, 1030 Wien', '2022-12-12', 1200),
(13, 'Star Wars', 'DVD', 'Star_Wars.jpg', 'Mit Star Wars: Der Aufstieg Skywalkers gelang Lucasfilm und Regisseur J.J. Abrams ein fulminanter Ab', 'Daisy', 'Ridley', 'Walt Disney', 'Handelskai 94- 96', '2023-01-01', 1300),
(14, 'The Dark Knight Trilogie', 'DVD', 'The_Dark_Knight_Trilogie.jpg', 'In Batman Begins werden die Anfänge der Legende des Dunklen Ritters ergründet', 'Christopher', 'Nolan', 'Warner Home Video', '123 Av. Charles de Gaulle 115', '2023-02-02', 1400),
(15, 'Alf', 'DVD', 'Alf.jpg', 'Generationen von Menschen blickten gen Himmel, auf der Suche nach intelligentem Leben', 'Max', 'Wright', 'Warner Home Video', '123 Av. Charles de Gaulle 115', '2023-03-03', 1500),
(16, 'Avengers Endgame', 'DVD', 'Avengers_Endgame.jpg', 'Nie wurde über ein Fingerschnipsen mehr spekuliert und diskutiert, nie waren die Folgen verheerender', 'Anthony', 'Russo', 'Walt Disney', 'Handelskai 94,96', '2023-06-06', 1600),
(17, 'Doctor Strange', 'DVD', 'Doctor_Strange.jpg', 'Das Leben des weltberühmten Neurochirurgen Dr. Stephen Strange (Benedict Cumberbatch) ändert sich un', 'Scott', 'Derrickson', 'Walt Disney', 'Handelskai 94- 96', '2023-07-07', 1700),
(18, 'Jumanji', 'DVD', 'Jumanji.jpg', 'Als vier Highschool-Kids eine alte Spielkonsole zusammen mit einem ihnen unbekannten Videospiel name', 'Jake', 'Kasdan', 'Sony Pictures Home', 'Apostelgasse 23', '2023-08-08', 1800),
(19, 'The Father', 'DVD', 'The_Father.jpg', 'Aktuell haben wir leider keine ausführliche Beschreibung zu diesem Artikel.', 'Olivia', 'Colman', 'LEONINE', 'Apostelgasse 23', '2023-09-09', 1900),
(20, 'The Walking Dead', 'DVD', 'The_Walking_Dead.jpg', 'Aktuell haben wir leider keine ausführliche Beschreibung zu diesem Artikel.', 'Frank', 'Darabont', 'eOne Entertainment', '45 Warren St, London W1T 6AG', '2023-10-10', 2000),
(21, 'Test', 'DVD', '6235efc4e853b.jpg', 'TestTestTestTestTestTestTestTestTestTestTestTestTestTest', 'TestTest', 'TestTestTest', 'TestTestTestTest,TestTestTestT', 'Test23, 2', '2023-12-15', 8520);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`),
  ADD UNIQUE KEY `ISBN_code` (`ISBN_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
