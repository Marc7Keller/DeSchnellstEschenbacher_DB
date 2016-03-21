-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Mrz 2016 um 09:42
-- Server-Version: 5.6.26
-- PHP-Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `sport_program`
--
CREATE DATABASE IF NOT EXISTS `sport_program` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sport_program`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `bezeichnung` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `category`
--

INSERT INTO `category` (`category_id`, `bezeichnung`) VALUES
(1, 'Kat 1'),
(28, 'gggg'),
(29, 'KAT 4');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL,
  `stufe` varchar(20) DEFAULT NULL,
  `bezeichnung` varchar(20) DEFAULT NULL,
  `fs_teacher` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `class`
--

INSERT INTO `class` (`class_id`, `stufe`, `bezeichnung`, `fs_teacher`) VALUES
(2, '9', 'BIA13a', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`event_id`, `event_name`, `year`) VALUES
(1, 'Event', 2016),
(2, 'test 2 ', 2016),
(3, 'dssdsd', 0),
(4, 'Event 2016', 2016),
(5, 'Event 2017', 2017);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `laptimes`
--

DROP TABLE IF EXISTS `laptimes`;
CREATE TABLE IF NOT EXISTS `laptimes` (
  `laptime_id` int(11) NOT NULL,
  `first_lap` float DEFAULT NULL,
  `second_lap` float DEFAULT NULL,
  `fs_Participant` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `laptimes`
--

INSERT INTO `laptimes` (`laptime_id`, `first_lap`, `second_lap`, `fs_Participant`) VALUES
(33, 410, 4100, 1),
(34, 10.85, NULL, 6),
(35, 8.25, NULL, 7),
(36, 5.85, 4.58, 8),
(37, 7.24, NULL, 9),
(38, 9.58, 7.58, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `participants`
--

DROP TABLE IF EXISTS `participants`;
CREATE TABLE IF NOT EXISTS `participants` (
  `participant_id` int(11) NOT NULL,
  `fs_person` int(11) DEFAULT NULL,
  `fs_class` int(11) DEFAULT NULL,
  `fs_category` int(11) DEFAULT NULL,
  `fs_event` int(11) DEFAULT NULL,
  `startnummer` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `participants`
--

INSERT INTO `participants` (`participant_id`, `fs_person`, `fs_class`, `fs_category`, `fs_event`, `startnummer`) VALUES
(1, 1, 2, 28, 2, 2),
(6, 2, 2, 28, 1, 0),
(7, 3, 2, 1, 1, 0),
(8, 4, 2, 1, 1, 0),
(9, 5, 2, 1, 2, 0),
(10, 1, 2, 1, 2, 0),
(11, 1, 2, 1, 2, 0),
(12, 1, 2, 1, 1, 0),
(13, 7, 2, 1, 1, 0),
(14, 9, 2, 1, 1, 0),
(15, 10, 2, 1, 1, 0),
(16, 2, 2, 1, 2, 0),
(17, 12, 2, 28, 2, 0),
(18, 13, 2, 29, 3, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `person_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `plz` varchar(10) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `person`
--

INSERT INTO `person` (`person_id`, `name`, `firstname`, `birthdate`, `plz`, `place`, `street`) VALUES
(1, 'Muster', 'Peter', '2015-11-24', '8520', 'Eschi', 'Bahnhofstrasse 90'),
(2, 'Keller', 'Marc', '2010-01-20', '9630', 'asdf', 'asdf'),
(3, 'Kelelr', 'Marc', '2010-02-10', '850', 'asdf', 'asdf'),
(4, 'asdf', 'asdf', '0000-00-00', '850', 'asdf', 'asddf'),
(5, 'wefdsvcx', 'edsfcx', '0000-00-00', '8520', 'asdfafs', 'ASDF'),
(6, 'test', 'Marc', '0000-00-00', '8520', 'asdfasf', 'asdfasdf'),
(7, 'asdfasf', 'asdfasfasdf', '2015-02-10', '710', 'asdfasf', 'asdfasdf'),
(8, 'asdfasf', 'asdfasfasdf', '2015-02-10', '710', 'asdfasf', 'asdfasdf'),
(9, 'asdfasdfasdf', 'asfdasdfasdfasf', '0000-00-00', '8520', 'asdfasdf', 'asdfasdfsaf'),
(10, 'asdfasdfasdfasf', 'asss', '2010-02-10', '8520', 'asdfasdf', 'asdfasdfasdf'),
(11, 'Keller', 'Marc', '2010-01-20', '9630', 'asdf', 'asdf'),
(12, 'TESTTEST', 'TESTTEST', '2015-10-20', '8/520', 'asdfasf', 'asdfsadf'),
(13, 'Muster', 'Max', '1980-02-20', '7410', 'asfasdf', 'asdfasdf');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL,
  `last_active_year` int(11) DEFAULT NULL,
  `fs_person` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `last_active_year`, `fs_person`) VALUES
(1, 2016, 1);

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
  ADD PRIMARY KEY (`category_id`);

--
-- Indizes für die Tabelle `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `fs_teacher` (`fs_teacher`);

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
  ADD KEY `fs_Participant` (`fs_Participant`);

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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT für Tabelle `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `laptimes`
--
ALTER TABLE `laptimes`
  MODIFY `laptime_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT für Tabelle `participants`
--
ALTER TABLE `participants`
  MODIFY `participant_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT für Tabelle `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT für Tabelle `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`fs_teacher`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints der Tabelle `laptimes`
--
ALTER TABLE `laptimes`
  ADD CONSTRAINT `laptimes_ibfk_1` FOREIGN KEY (`fs_Participant`) REFERENCES `participants` (`participant_id`);

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
