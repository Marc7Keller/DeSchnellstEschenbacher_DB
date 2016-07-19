-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Jul 2016 um 22:27
-- Server-Version: 10.1.10-MariaDB
-- PHP-Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `dbdse`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `admin`
--

DROP DATABASE IF EXISTS dbdse;
CREATE DATABASE dbdse;
USE dbdse;

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'rootdse');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `track_length` int(11) NOT NULL,
  `year_of_birth_start` int(11) DEFAULT NULL,
  `year_of_birth_end` int(11) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `fs_event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `track_length`, `year_of_birth_start`, `year_of_birth_end`, `gender`, `fs_event`) VALUES
(4, 'Testkategorie 2016', 100, 1999, 2000, 'MÃ¤nnlich', 1),
(5, 'Test', 0, 2000, 2001, 'Weiblich', 2),
(6, 'Test', 300, 0, 0, 'Weiblich', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `number_of_students` int(11) NOT NULL,
  `school` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `fs_teacher` int(11) NOT NULL,
  `fs_event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `number_of_students`, `school`, `place`, `fs_teacher`, `fs_event`) VALUES
(1, '', 23, 'Sunneschii', 'Ermenswil', 1, 2),
(2, 'k', 34, '', 'SDFasdf', 5, 2),
(3, '', 23, 'test', 'test', 4, 2),
(4, 'dfgsd', 87, 'ksdhfak', 'poiujasdf', 4, 2),
(5, 'zhrvb', 56, 'sdfasdf', 'sdfasdf', 4, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`event_id`, `event_name`, `year`) VALUES
(1, 'De Schnellst Eschenbacher', 2016),
(2, 'De Schnellst Eschenbacher 2017', 2018),
(3, 'Testanlass', 2019),
(4, 'Testanlass', 2019),
(5, 'Nomal en Testalass', 2018),
(6, 'Nomal en Testalass', 2018),
(7, 'Und nomal eine', 2019),
(8, 'Und nomal eine', 2019),
(9, 'Weissneed', 2018),
(10, 'Weissneed', 2018),
(11, 'kjhlsf', 1998),
(12, 'Test', 2016),
(13, 'sdkjfhas', 7354);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `laptimes`
--

CREATE TABLE `laptimes` (
  `laptime_id` int(11) NOT NULL,
  `first_lap` float DEFAULT NULL,
  `second_lap` float DEFAULT NULL,
  `fs_participant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `participants`
--

CREATE TABLE `participants` (
  `participant_id` int(11) NOT NULL,
  `fs_person` int(11) NOT NULL,
  `fs_class` int(11) DEFAULT NULL,
  `fs_category` int(11) NOT NULL,
  `fs_event` int(11) NOT NULL,
  `start_number` int(11) DEFAULT '0',
  `late_registration` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `participants`
--

INSERT INTO `participants` (`participant_id`, `fs_person`, `fs_class`, `fs_category`, `fs_event`, `start_number`, `late_registration`) VALUES
(1, 2, 1, 5, 2, 0, 0),
(2, 3, 1, 5, 2, 0, 0),
(3, 3, 1, 5, 2, 0, 0),
(4, 3, 1, 5, 2, 0, 0),
(5, 6, 1, 5, 2, 0, 1),
(6, 6, 1, 5, 2, 0, NULL),
(7, 6, 1, 5, 2, 0, NULL),
(8, 6, 1, 5, 2, 0, NULL),
(9, 6, 1, 5, 2, 0, NULL),
(10, 6, 1, 5, 2, 0, NULL),
(11, 6, 1, 5, 2, 0, NULL),
(12, 6, 1, 5, 2, 0, NULL),
(13, 6, 1, 5, 2, 0, NULL),
(14, 6, 1, 5, 2, 0, NULL),
(15, 3, 1, 5, 2, 0, 0),
(16, 3, 1, 5, 2, 0, 0),
(17, 23, 1, 5, 2, 0, 0),
(18, 24, 1, 5, 2, 0, 1),
(19, 2, 1, 5, 2, 0, 0),
(20, 2, 1, 5, 2, 0, 0),
(21, 3, 5, 6, 2, 0, 0),
(22, 2, 1, 5, 2, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `birthdate` year(4) DEFAULT NULL,
  `plz` varchar(10) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `person`
--

INSERT INTO `person` (`person_id`, `name`, `firstname`, `birthdate`, `plz`, `place`, `street`) VALUES
(1, 'Waldvogel', 'Dominik', NULL, '8733', 'Eschenbach', 'Teststrasse 55'),
(2, 'Keller', 'Marc', 1997, '8734', 'Ermenswil', 'Aleestrasse 30'),
(3, 'Bisig', 'Christian', 1997, '8733', 'Eschenbach', 'Teststrasse 54'),
(4, 'Bisig', 'Christian', 1997, '8733', 'Eschenbach', 'Teststrasse 54'),
(5, 'Bisig', 'Christian', 1997, '8733', 'Eschenbach', 'Teststrasse 54'),
(6, 'Alguacil', 'Dominique', 1997, '8356', 'Berikon', 'Teststrasse 36'),
(7, 'Keller', 'Marc', NULL, '8734', 'Ermenswil', 'Aleestrasse 30'),
(8, '', 'Marc', NULL, '8734', 'Ermenswil', 'Aleestrasse 30'),
(9, 'Bisig', 'Christian', NULL, '8733', 'Eschenbach', 'Teststrasse 54'),
(10, '', '', NULL, '8354', 'Testort', 'Teststrasse 127'),
(11, 'Asti', 'Gianni', NULL, '6598', 'Wasweissichdorf', 'Wasweissichstrasse'),
(12, 'Alguacil', 'Dominique', 1997, '8356', 'Berikon', 'Teststrasse 36'),
(13, 'Alguacil', 'Dominique', 1997, '8356', 'Berikon', 'Teststrasse 36'),
(14, 'Alguacil', 'Dominique', 1997, '8356', 'Berikon', 'Teststrasse 36'),
(15, 'Alguacil', 'Dominique', 1997, '8356', 'Berikon', 'Teststrasse 36'),
(16, 'Alguacil', 'Dominique', 1997, '8356', 'Berikon', 'Teststrasse 36'),
(17, 'Alguacil', 'Dominique', 1997, '8356', 'Berikon', 'Teststrasse 36'),
(18, 'Alguacil', 'Dominique', 1997, '8356', 'Berikon', 'Teststrasse 36'),
(19, 'Alguacil', 'Dominique', 1997, '8356', 'Berikon', 'Teststrasse 36'),
(20, 'Alguacil', 'Dominique', 1997, '8356', 'Berikon', 'Teststrasse 36'),
(21, 'Bisig', 'Christian', 1997, '8733', 'Eschenbach', 'Teststrasse 54'),
(22, 'Bisig', 'Christian', 1997, '8733', 'Eschenbach', 'Teststrasse 54'),
(23, 'Muster', 'Peter', 1996, '7345', 'Berikon', 'Teststrasse'),
(24, 'Mustermann', 'Max', 1990, '6534', 'Testort', 'Teststrasse'),
(25, 'Keller', 'Marc', 1997, '8734', 'Ermenswil', 'Aleestrasse 30'),
(26, 'Keller', 'Marc', 1997, '8734', 'Ermenswil', 'Aleestrasse 30'),
(27, 'Bisig', 'Christian', 1997, '8733', 'Eschenbach', 'Teststrasse 54'),
(28, 'Keller', 'Marc', 1997, '8734', 'Ermenswil', 'Aleestrasse');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `last_active_year` int(11) DEFAULT NULL,
  `fs_person` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `last_active_year`, `fs_person`) VALUES
(1, 2016, 1),
(2, 2013, 7),
(3, 2013, 7),
(4, 2011, 3),
(5, 2016, 10),
(6, 0, 11);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indizes für die Tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `fs_event` (`fs_event`);

--
-- Indizes für die Tabelle `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `fs_teacher` (`fs_teacher`),
  ADD KEY `fs_event` (`fs_event`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indizes für die Tabelle `laptimes`
--
ALTER TABLE `laptimes`
  ADD PRIMARY KEY (`laptime_id`),
  ADD KEY `fs_Participant` (`fs_participant`);

--
-- Indizes für die Tabelle `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`participant_id`),
  ADD KEY `fs_person` (`fs_person`),
  ADD KEY `fs_class` (`fs_class`),
  ADD KEY `fs_category` (`fs_category`),
  ADD KEY `fs_event` (`fs_event`);

--
-- Indizes für die Tabelle `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indizes für die Tabelle `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `fs_person` (`fs_person`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT für Tabelle `laptimes`
--
ALTER TABLE `laptimes`
  MODIFY `laptime_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `participants`
--
ALTER TABLE `participants`
  MODIFY `participant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT für Tabelle `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT für Tabelle `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`fs_event`) REFERENCES `event` (`event_id`);

--
-- Constraints der Tabelle `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`fs_teacher`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`fs_event`) REFERENCES `event` (`event_id`);

--
-- Constraints der Tabelle `laptimes`
--
ALTER TABLE `laptimes`
  ADD CONSTRAINT `laptimes_ibfk_1` FOREIGN KEY (`fs_participant`) REFERENCES `participants` (`participant_id`);

--
-- Constraints der Tabelle `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`fs_person`) REFERENCES `person` (`person_id`),
  ADD CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`fs_class`) REFERENCES `class` (`class_id`),
  ADD CONSTRAINT `participants_ibfk_3` FOREIGN KEY (`fs_category`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `participants_ibfk_4` FOREIGN KEY (`fs_event`) REFERENCES `event` (`event_id`);

--
-- Constraints der Tabelle `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`fs_person`) REFERENCES `person` (`person_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
