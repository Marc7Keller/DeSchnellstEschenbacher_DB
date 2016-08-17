-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 17. Aug 2016 um 22:42
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

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `late_registration` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `year_of_birth` year(4) DEFAULT NULL,
  `plz` varchar(10) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `last_active_year` int(11) DEFAULT NULL,
  `fs_person` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `usertype`) VALUES
(3, 'admin', 'rootdse', 1);

--
-- Indizes der exportierten Tabellen
--

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
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT für Tabelle `laptimes`
--
ALTER TABLE `laptimes`
  MODIFY `laptime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
