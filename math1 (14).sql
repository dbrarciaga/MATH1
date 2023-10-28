-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 05:17 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `math1`
--

-- --------------------------------------------------------

--
-- Table structure for table `classlist`
--

CREATE TABLE `classlist` (
  `class_id` int(11) NOT NULL,
  `stud_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `section` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classlist`
--

INSERT INTO `classlist` (`class_id`, `stud_id`, `teacher_id`, `section`) VALUES
(1, 20231020, 20232001, 1),
(2, 20231080, 20232001, 1),
(3, 20231069, 20232001, 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stud_id` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `birthday` varchar(64) DEFAULT NULL,
  `FirstName` varchar(65) DEFAULT NULL,
  `LastName` varchar(65) DEFAULT NULL,
  `GradeLevel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stud_id`, `username`, `pass`, `email`, `birthday`, `FirstName`, `LastName`, `GradeLevel`) VALUES
(20231011, 'gumeroos', '1111', 'email4@yahoo.com', '10/3/2010', 'ced', 'flores', 1),
(20231020, 'jun', '1111', 'email2@yahoo.com', '8/2/2010', 'rencee', 'banez', 2),
(20231023, 'drea', '1111', 'email6@yahoo.com', '12/1/2010', 'andrea', 'babae', 4),
(20231031, 'steben', '1111', 'email3@yahoo.com', '12/23/2010', 'steven', 'macarasig', 6),
(20231069, 'waow', '1111', 'email@yahoo.com', '11/26/2010', 'Brian', 'Blancaflor', 5),
(20231080, 'blue', '1111', 'email1@yahoo.com', '7/26/2010', 'danniell blue', 'Arciaga', 2),
(20231099, 'cindy', '1111', 'email5@yahoo.com', '5/13/2010', 'cynthia', 'random', 3);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `FirstName` varchar(64) DEFAULT NULL,
  `LastName` varchar(65) DEFAULT NULL,
  `birthday` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `pass`, `email`, `FirstName`, `LastName`, `birthday`) VALUES
(20232001, 'maambelen', '1111', 'email6@yahoo.com', 'Belen', 'Ladesma', NULL),
(20232010, 'sireman', '1111', 'email3@yahoo.com', 'Emannuel', 'Transmission', NULL),
(20232045, 'maamrhea', '1111', 'email2@yahoo.com', 'Rhea', 'Tortor', NULL),
(20232062, 'sirilao', '1111', 'email4@yahoo.com', 'Adomar', 'ilao', NULL),
(20232076, 'sirdm', '1111', 'email@yahoo.com', 'Dennis', 'Martillano', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classlist`
--
ALTER TABLE `classlist`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `stud_id` (`stud_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classlist`
--
ALTER TABLE `classlist`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20231100;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20232077;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classlist`
--
ALTER TABLE `classlist`
  ADD CONSTRAINT `classlist_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `students` (`stud_id`),
  ADD CONSTRAINT `classlist_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
