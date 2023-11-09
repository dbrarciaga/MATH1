-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 08:57 PM
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
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `score_ID` int(11) NOT NULL,
  `score_title` varchar(64) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `stud_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `TypeOfTask` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`score_ID`, `score_title`, `score`, `stud_id`, `teacher_id`, `TypeOfTask`) VALUES
(4, 'Grade 1 and 2 Addition + +', 3, 20231020, 20232001, 'Exercise'),
(5, 'Grade 1 and 2 Addition + +', 4, 20231020, 20232001, 'Exercise'),
(6, 'Grade 1 and 2 Addition + +', 3, 20231020, 20232001, 'Exercise'),
(7, 'Grade 1 and 2 Addition + +', 4, 20231020, 20232001, 'Exercise'),
(8, 'Grade 1 and 2 Addition + +', 4, 20231020, 20232001, 'Exercise'),
(9, 'Grade 1 and 2 Addition + +', 4, 20231020, 20232001, 'Exercise'),
(10, 'Grade 1 and 2 Addition + +', 1, 20231020, 20232001, 'Exercise'),
(11, 'Grade 1 and 2 Addition + +', 4, 20231020, 20232001, 'Exercise'),
(12, 'Grade 1 and 2 Addition + +', 4, 20231020, 20232001, 'Exercise'),
(13, 'Grade 1 and 2 Addition + +', 3, 20231020, 20232001, 'Exercise'),
(14, 'Grade 1 and 2 Subtraction - -', 4, 20231020, 20232001, 'Exercise'),
(15, 'Grade 1 and 2 Addition + +', 4, 20231020, 20232001, 'Exercise'),
(16, 'Grade 1 and 2 Subtraction - -', 4, 20231020, 20232001, 'Exercise'),
(17, 'Grade 1 and 2 Addition + +', 3, 20231020, 20232001, 'Exercise'),
(18, 'Grade 1 and 2 Addition + +', 4, 20231020, 20232001, 'Exercise'),
(19, 'Grade 1 and 2 Subtraction - -', 4, 20231069, 20232001, 'Exercise'),
(20, 'Grade 1 and 2 Multiplication x x', 4, 20231069, NULL, 'Exercise'),
(21, 'Grade 1 and 2 Multiplication x x', 4, 20231069, NULL, 'Exercise'),
(22, 'Grade 1 and 2 Multiplication x x', 4, 20231069, NULL, 'Exercise'),
(23, 'Grade 1 and 2 Division ÷ ÷', 4, 20231069, NULL, 'Exercise'),
(24, 'Grade 1 and 2 Addition + +', 4, 20231069, 20232001, 'Exercise'),
(25, 'Grade 1 and 2 Addition + +', 4, 20231069, 20232001, 'Exercise'),
(26, 'Grade 1 and 2 Addition + +', 4, 20231069, 20232001, 'Exercise'),
(27, 'Grade 1 and 2 Subtraction - -', 4, 20231069, 20232001, 'Exercise'),
(28, 'Grade 1 and 2 Multiplication x x', 4, 20231069, NULL, 'Exercise'),
(29, 'Grade 1 and 2 Division ÷ ÷', 4, 20231069, NULL, 'Exercise'),
(30, 'Grade 1 and 2 Division ÷ ÷', 4, 20231069, NULL, 'Exercise'),
(31, 'Grade 1 and 2 Addition + +', 4, 20231069, 20232001, 'Exercise'),
(32, 'Grade 1 and 2 Addition + +', 4, 20231080, 20232001, 'Exercise'),
(33, 'Grade 1 and 2 Addition + +', 4, 20231069, 20232001, 'Exercise'),
(34, 'Grade 1 and 2 Subtraction - -', 4, 20231069, 20232001, 'Exercise'),
(35, 'Grade 1 and 2 Multiplication x x', 4, 20231069, NULL, 'Exercise'),
(36, 'Grade 1 and 2 Division ÷ ÷', 4, 20231069, NULL, 'Exercise'),
(37, ' ADDITION', 4, 20231069, 20232001, 'Exercise'),
(38, 'SUBTRACTION', 4, 20231069, 20232001, 'Exercise'),
(39, 'MULTIPLICATION', 4, 20231069, NULL, 'Exercise'),
(40, 'DIVISION', 4, 20231069, NULL, 'Exercise'),
(41, 'Addition and Subtraction of Integers + -', 0, 20231069, NULL, 'Exercise'),
(42, 'Multiplication of Integers (+) x (-)', 4, 20231069, NULL, 'Exercise'),
(43, 'Drag and Drop', 5, 20231080, 20232001, 'Quiz'),
(44, 'subtraction', 4, 20231080, 20232001, 'Quiz');

-- --------------------------------------------------------

--
-- Table structure for table `activation`
--

CREATE TABLE `activation` (
  `ID` int(11) NOT NULL,
  `stud_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activation`
--

INSERT INTO `activation` (`ID`, `stud_id`) VALUES
(1, 20231011);

-- --------------------------------------------------------

--
-- Table structure for table `activation_teacher`
--

CREATE TABLE `activation_teacher` (
  `ID` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activation_teacher`
--

INSERT INTO `activation_teacher` (`ID`, `teacher_id`) VALUES
(4, 20232076);

-- --------------------------------------------------------

--
-- Table structure for table `attempts`
--

CREATE TABLE `attempts` (
  `ID` int(11) NOT NULL,
  `Exercise` varchar(64) DEFAULT NULL,
  `dateOfAttempt` varchar(64) DEFAULT NULL,
  `stud_id` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auditlog`
--

CREATE TABLE `auditlog` (
  `ID` int(11) NOT NULL,
  `actionTaken` varchar(64) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `dateAction` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auditlog`
--

INSERT INTO `auditlog` (`ID`, `actionTaken`, `username`, `dateAction`) VALUES
(5, 'admin login', 'admin', '11/06/2023 18:20:03'),
(6, 'teacher login', 'maambelen', '11/06/2023 18:20:54'),
(7, 'student login', 'blue', '11/06/2023 18:21:01'),
(8, 'admin login', 'admin', '11/06/2023 18:29:10'),
(9, 'admin login', 'admin', '11/06/2023 18:33:19'),
(10, 'student login', 'gumeroos', '11/06/2023 18:50:09'),
(11, 'student login', 'drea', '11/06/2023 18:54:40'),
(12, 'request enrollment', 'drea', '11/06/2023 06:54:42'),
(13, 'student login', 'drea', '11/06/2023 18:54:48'),
(14, 'student login', 'dumon1', '11/06/2023 18:56:53'),
(15, 'request enrollment', 'dumon1', '11/06/2023 06:56:55'),
(16, 'student login', 'dumon1', '11/06/2023 18:57:03'),
(17, 'student login', 'dumon1', '11/06/2023 19:01:11'),
(18, 'student login', 'dumon1', '11/06/2023 19:01:50'),
(19, 'student login', 'dumon1', '11/06/2023 19:02:40'),
(20, 'student login', 'dumon1', '11/06/2023 19:03:33'),
(21, 'student login', 'dumon1', '11/06/2023 19:04:27'),
(22, 'student login', 'dumon1', '11/06/2023 19:05:53'),
(23, 'student login', 'gumeroos', '11/06/2023 19:06:28'),
(24, 'student login', 'dumon1', '11/06/2023 19:07:11'),
(25, 'admin login', 'admin', '11/06/2023 19:08:08'),
(26, 'admin login', 'admin', '11/06/2023 19:14:49'),
(27, 'admin login', 'admin', '11/06/2023 21:03:21'),
(28, 'admin login', 'admin', '11/06/2023 21:11:33'),
(29, 'admin login', 'admin', '11/06/2023 21:22:24'),
(30, 'admin login', 'admin', '11/06/2023 21:29:17'),
(31, 'admin login', 'admin', '11/06/2023 21:32:00'),
(32, 'student login', 'dumon1', '11/06/2023 21:32:35'),
(33, 'student login', 'blue', '11/06/2023 22:58:53'),
(34, 'student login', 'waow', '11/06/2023 22:59:33'),
(35, 'student login', 'waow', '11/06/2023 23:00:44'),
(36, 'student login', 'waow', '11/06/2023 23:02:46'),
(37, 'student login', 'waow', '11/06/2023 23:05:03'),
(38, 'student login', 'waow', '11/06/2023 23:08:24'),
(39, 'student login', 'waow', '11/06/2023 23:10:04'),
(40, 'student login', 'waow', '11/06/2023 23:10:12'),
(41, 'student login', 'waow', '11/06/2023 23:16:56'),
(42, 'student login', 'waow', '11/06/2023 23:20:26'),
(43, 'student login', 'waow', '11/06/2023 23:24:25'),
(44, 'student login', 'waow', '11/07/2023 01:56:50'),
(45, 'student login', 'waow', '11/07/2023 02:01:11'),
(46, 'student login', 'waow', '11/07/2023 02:02:05'),
(47, 'student login', 'blue', '11/07/2023 17:34:23'),
(48, 'student login', 'waow', '11/07/2023 17:34:37'),
(49, 'student login', 'waow', '11/07/2023 17:39:51'),
(50, 'student login', 'waow', '11/07/2023 18:41:40'),
(51, 'student login', 'waow', '11/07/2023 18:43:41'),
(52, 'student login', 'waow', '11/07/2023 18:47:01'),
(53, 'student login', 'blue', '11/07/2023 18:56:11'),
(54, 'student login', 'waow', '11/07/2023 18:56:51'),
(55, 'student login', 'waow', '11/07/2023 18:59:42'),
(56, 'student login', 'waow', '11/07/2023 19:05:30'),
(57, 'student login', 'waow', '11/07/2023 19:12:24'),
(58, 'student login', 'waow', '11/07/2023 19:14:37'),
(59, 'student login', 'waow', '11/07/2023 20:50:07'),
(60, 'student login', 'waow', '11/07/2023 20:50:44'),
(61, 'student login', 'waow', '11/07/2023 20:51:45'),
(62, 'student login', 'waow', '11/07/2023 21:37:49'),
(63, 'student login', 'waow', '11/07/2023 21:41:57'),
(64, 'admin login', 'admin', '11/07/2023 22:29:59'),
(65, 'admin login', 'admin', '11/07/2023 22:34:20'),
(66, 'admin login', 'admin', '11/07/2023 22:42:31'),
(67, 'student login', 'cindy', '11/07/2023 22:43:42'),
(68, 'admin login', 'admin', '11/07/2023 22:45:28'),
(69, 'admin login', 'admin', '11/08/2023 01:40:31'),
(70, 'Enrolled a student', 'admin', '11/08/2023 01:40:47'),
(71, 'admin login', 'admin', '11/08/2023 21:43:21'),
(72, 'admin login', 'admin', '11/08/2023 21:51:01'),
(73, 'admin login', 'admin', '11/08/2023 21:51:35'),
(74, 'admin login', 'admin', '11/08/2023 21:52:52'),
(75, 'admin login', 'admin', '11/08/2023 22:00:56'),
(76, 'admin login', 'admin', '11/08/2023 22:01:37'),
(77, 'student login', 'gumeroos', '11/08/2023 22:07:09'),
(78, 'student login', 'gumeroos', '11/08/2023 22:11:20'),
(79, 'student login', 'gumeroos', '11/08/2023 22:12:37'),
(80, 'student login', 'gumeroos', '11/08/2023 22:13:54'),
(81, 'student login', 'gumeroos', '11/08/2023 22:19:37'),
(82, 'student login', 'gumeroos', '11/08/2023 22:21:09'),
(83, 'student login', 'gumeroos', '11/08/2023 22:21:50'),
(84, 'student login', 'gumeroos', '11/08/2023 22:27:07'),
(85, 'teacher login', 'sirdm', '11/08/2023 22:36:11'),
(86, 'teacher login', 'sirdm', '11/08/2023 22:42:20'),
(87, 'teacher login', 'sirdm', '11/08/2023 22:43:06'),
(88, 'teacher login', 'sirdm', '11/08/2023 22:48:14'),
(89, 'teacher login', 'sirdm', '11/08/2023 22:56:26'),
(90, 'student login', 'gumeroos', '11/08/2023 22:57:40'),
(91, 'student login', 'gumeroos', '11/08/2023 22:59:05'),
(92, 'student login', 'gumeroos', '11/08/2023 23:01:02'),
(93, 'student login', 'gumeroos', '11/08/2023 23:02:27'),
(94, 'teacher login', 'sirdm', '11/08/2023 23:03:28'),
(95, 'teacher login', 'sirdm', '11/08/2023 23:04:12'),
(96, 'teacher login', 'sirdm', '11/08/2023 23:04:48'),
(97, 'teacher login', 'sirdm', '11/08/2023 23:06:02'),
(98, 'teacher login', 'maambelen', '11/09/2023 14:12:29'),
(99, 'teacher login', 'maambelen', '11/09/2023 14:26:26'),
(100, 'teacher login', 'maambelen', '11/09/2023 14:28:35'),
(101, 'teacher login', 'maambelen', '11/09/2023 14:29:33'),
(102, 'teacher login', 'maambelen', '11/09/2023 14:31:09'),
(103, 'teacher login', 'maambelen', '11/09/2023 14:32:18'),
(104, 'teacher login', 'maambelen', '11/09/2023 14:33:02'),
(105, 'teacher login', 'maambelen', '11/09/2023 14:35:00'),
(106, 'teacher login', 'maambelen', '11/09/2023 14:36:54'),
(107, 'teacher login', 'maambelen', '11/09/2023 14:37:44'),
(108, 'teacher login', 'maambelen', '11/09/2023 14:42:16'),
(109, 'teacher login', 'maambelen', '11/09/2023 14:43:20'),
(110, 'teacher login', 'maambelen', '11/09/2023 14:44:29'),
(111, 'teacher login', 'maambelen', '11/09/2023 14:45:40'),
(112, 'teacher login', 'maambelen', '11/09/2023 15:14:55'),
(113, 'teacher login', 'maambelen', '11/09/2023 15:15:29'),
(114, 'teacher login', 'maambelen', '11/09/2023 15:15:55'),
(115, 'teacher login', 'maambelen', '11/09/2023 15:19:08'),
(116, 'teacher login', 'maambelen', '11/09/2023 15:20:06'),
(117, 'teacher login', 'maambelen', '11/09/2023 17:06:12'),
(118, 'teacher login', 'maambelen', '11/09/2023 17:25:57'),
(119, 'teacher login', 'maambelen', '11/09/2023 17:28:12'),
(120, 'student login', 'blue', '11/09/2023 22:26:06'),
(121, 'student login', 'blue', '11/09/2023 22:32:29'),
(122, 'student login', 'blue', '11/09/2023 22:35:52'),
(123, 'student login', 'blue', '11/09/2023 22:37:21'),
(124, 'student login', 'blue', '11/09/2023 22:46:05'),
(125, 'student login', 'blue', '11/09/2023 22:56:27'),
(126, 'student login', 'blue', '11/09/2023 23:04:55'),
(127, 'student login', 'blue', '11/09/2023 23:05:53'),
(128, 'student login', 'blue', '11/09/2023 23:06:41'),
(129, 'student login', 'blue', '11/09/2023 23:09:02'),
(130, 'student login', 'blue', '11/09/2023 23:09:03'),
(131, 'student login', 'blue', '11/09/2023 23:09:49'),
(132, 'student login', 'blue', '11/09/2023 23:10:28'),
(133, 'student login', 'blue', '11/09/2023 23:12:38'),
(134, 'student login', 'blue', '11/09/2023 23:15:50'),
(135, 'student login', 'blue', '11/09/2023 23:16:45'),
(136, 'student login', 'blue', '11/09/2023 23:17:13'),
(137, 'student login', 'blue', '11/09/2023 23:18:55'),
(138, 'student login', 'blue', '11/09/2023 23:20:00'),
(139, 'student login', 'blue', '11/09/2023 23:21:41'),
(140, 'student login', 'blue', '11/09/2023 23:22:13'),
(141, 'student login', 'blue', '11/09/2023 23:23:03'),
(142, 'student login', 'blue', '11/09/2023 23:24:18'),
(143, 'student login', 'blue', '11/09/2023 23:25:33'),
(144, 'student login', 'blue', '11/09/2023 23:27:36'),
(145, 'student login', 'blue', '11/09/2023 23:28:05'),
(146, 'student login', 'blue', '11/09/2023 23:28:55'),
(147, 'student login', 'blue', '11/09/2023 23:29:30'),
(148, 'student login', 'blue', '11/09/2023 23:29:57'),
(149, 'student login', 'blue', '11/09/2023 23:31:29'),
(150, 'student login', 'blue', '11/09/2023 23:41:38'),
(151, 'student login', 'blue', '11/09/2023 23:42:33'),
(152, 'student login', 'blue', '11/09/2023 23:43:19'),
(153, 'student login', 'blue', '11/09/2023 23:44:57'),
(154, 'student login', 'blue', '11/09/2023 23:45:52'),
(155, 'student login', 'blue', '11/09/2023 23:49:12'),
(156, 'student login', 'blue', '11/09/2023 23:49:39'),
(157, 'student login', 'blue', '11/09/2023 23:51:51'),
(158, 'student login', 'blue', '11/09/2023 23:52:50'),
(159, 'student login', 'blue', '11/09/2023 23:54:08'),
(160, 'student login', 'blue', '11/10/2023 00:02:01'),
(161, 'student login', 'blue', '11/10/2023 00:02:45'),
(162, 'student login', 'blue', '11/10/2023 00:03:19'),
(163, 'student login', 'blue', '11/10/2023 00:08:48'),
(164, 'student login', 'blue', '11/10/2023 00:18:28'),
(165, 'student login', 'blue', '11/10/2023 00:21:38'),
(166, 'student login', 'blue', '11/10/2023 00:22:16'),
(167, 'student login', 'blue', '11/10/2023 00:24:13'),
(168, 'student login', 'blue', '11/10/2023 00:26:04'),
(169, 'student login', 'blue', '11/10/2023 00:27:24'),
(170, 'student login', 'blue', '11/10/2023 00:30:41'),
(171, 'student login', 'blue', '11/10/2023 00:32:22'),
(172, 'student login', 'blue', '11/10/2023 00:33:18'),
(173, 'student login', 'blue', '11/10/2023 00:50:17'),
(174, 'student login', 'blue', '11/10/2023 00:50:55'),
(175, 'student login', 'blue', '11/10/2023 00:51:43'),
(176, 'student login', 'blue', '11/10/2023 00:53:04'),
(177, 'student login', 'blue', '11/10/2023 00:54:48'),
(178, 'student login', 'blue', '11/10/2023 00:55:48'),
(179, 'student login', 'blue', '11/10/2023 00:57:53'),
(180, 'student login', 'blue', '11/10/2023 00:58:38'),
(181, 'student login', 'blue', '11/10/2023 01:00:06'),
(182, 'student login', 'blue', '11/10/2023 01:01:24'),
(183, 'student login', 'blue', '11/10/2023 01:02:37'),
(184, 'student login', 'blue', '11/10/2023 01:04:47'),
(185, 'student login', 'blue', '11/10/2023 01:07:22'),
(186, 'student login', 'blue', '11/10/2023 01:08:34'),
(187, 'student login', 'blue', '11/10/2023 01:10:39'),
(188, 'student login', 'blue', '11/10/2023 01:11:22'),
(189, 'student login', 'blue', '11/10/2023 01:12:52'),
(190, 'student login', 'blue', '11/10/2023 01:14:46'),
(191, 'student login', 'blue', '11/10/2023 01:15:19'),
(192, 'student login', 'blue', '11/10/2023 01:16:03'),
(193, 'student login', 'blue', '11/10/2023 01:17:18'),
(194, 'student login', 'blue', '11/10/2023 01:21:14'),
(195, 'student login', 'blue', '11/10/2023 01:23:07'),
(196, 'student login', 'blue', '11/10/2023 01:24:05'),
(197, 'student login', 'blue', '11/10/2023 01:24:36'),
(198, 'student login', 'blue', '11/10/2023 01:26:03'),
(199, 'student login', 'blue', '11/10/2023 01:27:08'),
(200, 'student login', 'blue', '11/10/2023 01:27:58'),
(201, 'student login', 'blue', '11/10/2023 01:28:44'),
(202, 'student login', 'blue', '11/10/2023 01:30:21'),
(203, 'student login', 'blue', '11/10/2023 01:31:44'),
(204, 'student login', 'blue', '11/10/2023 01:33:27'),
(205, 'student login', 'blue', '11/10/2023 01:34:49'),
(206, 'student login', 'blue', '11/10/2023 01:36:19'),
(207, 'student login', 'blue', '11/10/2023 01:37:15'),
(208, 'student login', 'blue', '11/10/2023 01:39:48'),
(209, 'student login', 'blue', '11/10/2023 01:41:10'),
(210, 'student login', 'blue', '11/10/2023 01:42:57'),
(211, 'student login', 'blue', '11/10/2023 01:44:29'),
(212, 'student login', 'blue', '11/10/2023 01:50:20'),
(213, 'student login', 'blue', '11/10/2023 01:51:06'),
(214, 'student login', 'blue', '11/10/2023 01:54:10'),
(215, 'student login', 'blue', '11/10/2023 02:01:13'),
(216, 'student login', 'blue', '11/10/2023 02:04:20'),
(217, 'student login', 'blue', '11/10/2023 02:07:36'),
(218, 'student login', 'blue', '11/10/2023 02:12:19'),
(219, 'student login', 'blue', '11/10/2023 02:14:08'),
(220, 'student login', 'blue', '11/10/2023 02:14:52'),
(221, 'student login', 'blue', '11/10/2023 02:26:00'),
(222, 'student login', 'blue', '11/10/2023 02:27:06'),
(223, 'student login', 'blue', '11/10/2023 02:28:09'),
(224, 'student login', 'blue', '11/10/2023 02:40:04'),
(225, 'student login', 'blue', '11/10/2023 02:42:37'),
(226, 'student login', 'blue', '11/10/2023 02:43:26'),
(227, 'teacher login', 'maambelen', '11/10/2023 03:17:48'),
(228, 'teacher login', 'maambelen', '11/10/2023 03:20:20'),
(229, 'teacher login', 'maambelen', '11/10/2023 03:22:09'),
(230, 'teacher login', 'maambelen', '11/10/2023 03:23:18'),
(231, 'teacher login', 'maambelen', '11/10/2023 03:35:20'),
(232, 'teacher login', 'maambelen', '11/10/2023 03:41:22'),
(233, 'teacher login', 'maambelen', '11/10/2023 03:46:53'),
(234, 'teacher login', 'maambelen', '11/10/2023 03:49:14'),
(235, 'teacher login', 'maambelen', '11/10/2023 03:53:27'),
(236, 'teacher login', 'maambelen', '11/10/2023 03:55:19');

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
(3, 20231069, 20232001, 1),
(4, 20231099, 20232045, 6),
(7, 20231023, 20232001, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dragdrop`
--

CREATE TABLE `dragdrop` (
  `id` int(11) NOT NULL,
  `q1` text NOT NULL,
  `a1` text NOT NULL,
  `q2` text NOT NULL,
  `a2` text NOT NULL,
  `q3` text NOT NULL,
  `a3` text NOT NULL,
  `q4` text NOT NULL,
  `a4` text NOT NULL,
  `q5` text NOT NULL,
  `a5` text NOT NULL,
  `type` int(11) DEFAULT NULL,
  `quiz_no` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dragdrop`
--

INSERT INTO `dragdrop` (`id`, `q1`, `a1`, `q2`, `a2`, `q3`, `a3`, `q4`, `a4`, `q5`, `a5`, `type`, `quiz_no`, `number`, `grade`) VALUES
(1, '1 +2', '3', '3 + 3', '6', '1+1', '2', '30 / 6', '5', '53 + 45', '98', 3, 3, 1, 1),
(2, '123 + 154 ', '277', '286 - 223', '263', '544 x 8', '4352', '810 ÷ 30', '27', '357 - (-914)', '1271', 3, 3, 1, 3),
(3, '21³', '9261', '(-3²)+265', '256', '540 ÷ (-60)', '-9', '23x(23²÷23)', '529', '1²-1', '1', 3, 3, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `enrollmentrequest`
--

CREATE TABLE `enrollmentrequest` (
  `enroll_id` int(11) NOT NULL,
  `stud_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollmentrequest`
--

INSERT INTO `enrollmentrequest` (`enroll_id`, `stud_id`) VALUES
(4, 202310349);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `ID` int(11) NOT NULL,
  `topic` varchar(64) DEFAULT NULL,
  `gradeLevel` int(11) DEFAULT NULL,
  `stud_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`ID`, `topic`, `gradeLevel`, `stud_id`) VALUES
(4, 'ADDITION', 1, 20231069),
(5, 'SUBTRACTION', 1, 20231069),
(6, 'MULTIPLICATION', 1, 20231069),
(8, 'DIVISION', 1, 20231069),
(9, 'ADDITION', 2, 20231080),
(10, 'ADDITION', 2, 20231069),
(11, 'SUBTRACTION', 2, 20231069),
(12, 'MULTIPLICATION', 2, 20231069),
(13, 'DIVISION', 2, 20231069),
(14, 'ADDITION', 3, 20231069),
(15, 'SUBTRACTION', 3, 20231069),
(16, 'MULTIPLICATION', 3, 20231069),
(17, 'DIVISION', 3, 20231069),
(18, 'ADDSUBINT', 3, 20231069),
(19, 'MULTIINT', 3, 20231069);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_Number` int(11) DEFAULT NULL,
  `quiz_title` varchar(64) DEFAULT NULL,
  `item_number` int(11) DEFAULT NULL,
  `question` varchar(65) DEFAULT NULL,
  `answer` varchar(65) DEFAULT NULL,
  `gradeLevel` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_Number`, `quiz_title`, `item_number`, `question`, `answer`, `gradeLevel`, `class_id`, `teacher_id`) VALUES
(1, 1, 'addition', 1, '1 + 1?', '2', 1, 1, 20232001),
(2, 1, 'addition', 2, '3 + 2?', '5', 1, 1, 20232001),
(3, 1, 'addition', 3, '15 + 5?', '20', 1, 1, 20232001),
(4, 1, 'addition', 4, '53 + 32?', '85', 1, 1, 20232001),
(5, 2, 'subtraction', 1, '5 - 2?', '3', 1, 1, 20232001),
(6, 2, 'subtraction', 2, '10 - 3?', '7', 1, 1, 20232001),
(7, 2, 'subtraction', 3, '15 - 7?', '8', 1, 1, 20232001),
(8, 2, 'subtraction', 4, '53 - 32?', '21', 1, 1, 20232001);

-- --------------------------------------------------------

--
-- Table structure for table `storyboard`
--

CREATE TABLE `storyboard` (
  `id` int(11) NOT NULL,
  `grade_level` int(11) NOT NULL,
  `topic` text NOT NULL,
  `title` text NOT NULL,
  `questionTitle` text NOT NULL,
  `question` text NOT NULL,
  `answer` bigint(11) NOT NULL,
  `exercise_audio` text NOT NULL,
  `exercise_image` text NOT NULL,
  `exercise_image2` text NOT NULL,
  `exercise_image3` text NOT NULL,
  `exercise_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storyboard`
--

INSERT INTO `storyboard` (`id`, `grade_level`, `topic`, `title`, `questionTitle`, `question`, `answer`, `exercise_audio`, `exercise_image`, `exercise_image2`, `exercise_image3`, `exercise_num`) VALUES
(1, 1, 'addition', 'Grade 1 and 2 Addition + +', '<b>Santa\'s Dinner Party</b>', 'On a cold Christmas night Santa invited <b>four (4)</b> Elfs and <b>nine (9)</b> Humans to eat dinner and drink hot chocolate at his house. How many guests will Santa have in total?', 13, 'https://feeds.soundcloud.com/stream/1636726923-rencee-c-banez-g1add1.mp3', 'https://i.imgur.com/6AHBo8c.png', 'https://i.imgur.com/JJCGHDe.png', 'https://i.imgur.com/mtpJSjr.png', 1),
(2, 1, 'addition', 'Grade 1 and 2 Addition + +', '<b>Big Boy\'s Shoe Collection</b>', '  Big Boy\'s shoe collection consist of <b>seventeen (17)</b> Air Jordan 1\'s and <b>fourteen (14)</b> Vans off the wall shoes. Big Boy wants to buy shoeboxes to store his shoes. How many shoebox should Big Boy buy in order to store his shoe collection properly?', 31, 'https://feeds.soundcloud.com/stream/1635927024-rencee-c-banez-add-ex2.mp3', 'https://i.imgur.com/FXmLgpY.png', 'https://i.imgur.com/xR1hwgw.png', 'https://i.imgur.com/DcyJn83.png', 2),
(3, 1, 'addition', 'Grade 1 and 2 Addition + +', '<b>Mikey\'s Birthday Gifts</b>\r\n', 'On Mikey\'s Birthday there were many people who gave him gifts, both on his mother\'s and father\'s side. On Mikey\'s mother side he received <b>12</b> gifts and on his father side he received <b>6</b> gifts. How many gifts did Mikey receive in total?', 18, 'https://feeds.soundcloud.com/stream/1635944193-rencee-c-banez-g1add3.mp3', 'https://i.imgur.com/N1pOqfB.png', 'https://i.imgur.com/KDxcYgT.png', 'https://i.imgur.com/JGhXpyB.png', 3),
(4, 1, 'addition', 'Grade 1 and 2 Addition + +', '<b>Mary and Joel\'s Piggy Bank</b>', 'Mary and Joel just started saving their money, Mary who saves a lot of her money has <b>$ 74</b> in her piggy bank and Joel who saves a bit of money has <b>$ 32</b> in his piggy bank. How much money will they have if they merge their piggy banks?', 106, 'https://feeds.soundcloud.com/stream/1635959442-rencee-c-banez-g1add4.mp3', 'https://i.imgur.com/omFpBtQ.png', 'https://i.imgur.com/isGna8m.png', 'https://i.imgur.com/nM6fKuR.png', 4),
(5, 3, 'addition', 'Grade 3 and 4 Addition + +', '<b>Santa\'s Dinner Party</b>', 'On a cold Christmas night Santa invited <b>Sixty Five (65)</b> Elfs and <b>Eighty Nine (89)</b> Humans to eat dinner and drink hot chocolate at his house. How many guests will Santa have in total?', 154, 'https://feeds.soundcloud.com/stream/1636732941-rencee-c-banez-g3add1-2.mp3', 'https://i.imgur.com/MGi6m9i.png', 'https://i.imgur.com/qyEendi.png', 'https://i.imgur.com/AP41dZP.png', 1),
(6, 3, 'addition', 'Grade 3 and 4 Addition + +', '<b>Big Boy\'s Shoe Collection</b>', 'Big Boy\'s shoe collection consist of <b>One Hundred Seventy Three (173)</b> Air Jordan 1\'s and <b>Fifty Four (54)</b> Vans off the wall shoes. Big Boy wants to buy shoeboxes to store his shoes. How many shoebox should Big Boy buy in order to store his shoe collection properly?', 227, 'https://feeds.soundcloud.com/stream/1636739622-rencee-c-banez-g3add2.mp3', 'https://i.imgur.com/pc4mIOj.png', 'https://i.imgur.com/FvzHfVZ.png', 'https://i.imgur.com/ndEIznH.png', 2),
(7, 3, 'addition', 'Grade 3 and 4 Addition + +', '<b>Mikey\'s Birthday Gifts</b>\r\n', 'On Mikey\'s Birthday there were many people who gave him gifts, both on his mother\'s and father\'s side. On Mikey\'s mother side he received <b>122</b> gifts and on his father side he received <b>167</b> gifts. How many gifts did Mikey receive in total?', 289, 'https://feeds.soundcloud.com/stream/1636746852-rencee-c-banez-g3add3.mp3', 'https://i.imgur.com/353kgum.png', 'https://i.imgur.com/QwiNNbA.png', 'https://i.imgur.com/B9gkqJB.png', 3),
(8, 3, 'addition', 'Grade 3 and 4 Addition + +', '<b>Mary and Joel\'s Piggy Bank</b>', 'Mary and Joel just started saving their money, Mary who saves a lot of her money has <b>$ 976</b> in her piggy bank and Joel who saves a bit of money has <b>$ 648</b> in his piggy bank. How much money will they have if they merge their piggy banks?', 1624, 'https://feeds.soundcloud.com/stream/1636753092-rencee-c-banez-g3add4.mp3', 'https://i.imgur.com/avDxFqT.png', 'https://i.imgur.com/x8Xv6cl.png', 'https://i.imgur.com/4u4s3ls.png', 4),
(9, 5, 'addition', 'Grade 5 and 6 Addition + +', '<b>Santa\'s Dinner Party</b>', 'On a cold Christmas night Santa invited <b>984</b> Elfs and <b>1276</b> Humans to eat dinner and drink hot chocolate at his house. How many guests will Santa have in total?', 2260, 'https://feeds.soundcloud.com/stream/1636763829-rencee-c-banez-g5add1.mp3', 'https://i.imgur.com/hkWIufC.png', 'https://i.imgur.com/pL1j3v6.png', 'https://i.imgur.com/g7AvtIb.png', 1),
(10, 5, 'addition', 'Grade 5 and 6 Addition + +', '<b>Big Boy\'s Shoe Collection</b>', '  Big Boy\'s shoe collection consist of <b>1719</b> Air Jordan 1\'s and <b>1217</b> Vans off the wall shoes. Big Boy wants to buy shoeboxes to store his shoes. How many shoebox should Big Boy buy in order to store his shoe collection properly?', 2936, 'https://feeds.soundcloud.com/stream/1636771086-rencee-c-banez-g5add2.mp3', 'https://i.imgur.com/O54thiO.png', 'https://i.imgur.com/kMjXNXK.png', 'https://i.imgur.com/rL6KJgk.png', 2),
(11, 5, 'addition', 'Grade 5 and 6 Addition + +', '<b>Mikey\'s Birthday Gifts</b>\r\n', 'On Mikey\'s Birthday there were many people who gave him gifts, both on his mother\'s and father\'s side. On Mikey\'s mother side he received <b>7331</b> gifts and on his father side he received <b>8863</b> gifts. How many gifts did Mikey receive in total?', 16194, 'https://feeds.soundcloud.com/stream/1636778727-rencee-c-banez-g5add3.mp3', 'https://i.imgur.com/8gybQB9.png', 'https://i.imgur.com/c0TrMsH.png', 'https://i.imgur.com/etRQNAd.png', 3),
(12, 5, 'addition', 'Grade 5 and 6 Addition + +', '<b>Mary and Joel\'s Piggy Bank</b>', 'Mary and Joel just started saving their money, Mary who saves a lot of her money has <b>$ 43,334</b> in her piggy bank and Joel who saves a bit of money has <b>$ 22,768</b> in his piggy bank. How much money will they have if they merge their piggy banks?', 66102, 'https://feeds.soundcloud.com/stream/1636785600-rencee-c-banez-g5add4.mp3', 'https://i.imgur.com/CShbgMF.png', 'https://i.imgur.com/QKezMtR.png', 'https://i.imgur.com/1ehh5Rx.png', 4),
(13, 1, 'subtraction', 'Grade 1 and 2 Subtraction - -', '<b>Farmer\'s Apples</b>', 'A farmer Picked <b>seven (7)</b> apples from his farm. As he got back to his home he saw and counted that <b>three (3)</b> apples were rotten. How many apples does the farmer have left?', 4, 'https://feeds.soundcloud.com/stream/1636810098-rencee-c-banez-g1sub1.mp3', 'https://i.imgur.com/dj7KAWB.png', 'https://i.imgur.com/Z2Iy4pZ.png', 'https://i.imgur.com/PZUjpSC.png', 1),
(14, 1, 'subtraction', 'Grade 1 and 2 Subtraction - -', '<b>Joel\'s Candies</b>', 'Joel just got back home from trick or treating, he counted his candies that he got and found that he collected <b>9</b> bags of candies. Before Joel sleeps he ate <b>3</b> bags of candies. How many candies does Joel have left?\r\n', 6, 'https://feeds.soundcloud.com/stream/1636821795-rencee-c-banez-g1sub2.mp3', 'https://i.imgur.com/lW00VjX.png', 'https://i.imgur.com/uMSAfz6.png', 'https://i.imgur.com/01MduCO.png', 2),
(15, 1, 'subtraction', 'Grade 1 and 2 Subtraction - -', '<b>Mr. John\'s Pension</b>', 'Mr John just received <b>$ 95</b> for his monthly pension, so Mr John did what he does every month, Mr John pays his bills and buys groceries which totals to <b>$ 47</b>. How much money does Mr. John have left?', 48, 'https://feeds.soundcloud.com/stream/1636830147-rencee-c-banez-g1sub3.mp3', 'https://i.imgur.com/gTx9LY8.png', 'https://i.imgur.com/mdhMLyA.png', 'https://i.imgur.com/cWTHgNq.png', 3),
(16, 1, 'subtraction', 'Grade 1 and 2 Subtraction - -', '<b>The Pandemic</b>', 'In a factory, there were <b>73</b> workers but because of the pandemic <b>9</b> workers got sick and was forced to stay at home. How many workers are left in the Factory?', 64, 'https://feeds.soundcloud.com/stream/1636832007-rencee-c-banez-g1sub4.mp3', 'https://i.imgur.com/JYmEc9W.png', 'https://i.imgur.com/Zjw2bXV.png', 'https://i.imgur.com/AvyvWhE.png', 4),
(17, 3, 'subtraction', 'Grade 3 and 4 Subtraction - -', '<b>Farmer\'s Apples</b>', 'A farmer Picked <b>seventy four (74)</b> apples from his farm. As he got back to his home he saw and counted that <b>thirty five (35)</b> apples were rotten. How many apples does the farmer have left?', 39, 'https://feeds.soundcloud.com/stream/1636838121-rencee-c-banez-g3sub1.mp3', 'https://i.imgur.com/4CBF6xY.png', 'https://i.imgur.com/EsLXdj4.png', 'https://i.imgur.com/0Jd9qVs.png', 1),
(18, 3, 'subtraction', 'Grade 3 and 4 Subtraction - -', '<b>Joel\'s Candies</b>', 'Joel just got back home from trick or treating, he counted his candies that he got and found that he collected <b>19</b> bags of candies. Before Joel sleeps he ate <b>2</b> bags of candies. How many candies does Joel have left?\r\n', 17, 'https://feeds.soundcloud.com/stream/1636850736-rencee-c-banez-g3sub2.mp3', 'https://i.imgur.com/8B8Jmmo.png', 'https://i.imgur.com/XyOWJ2p.png', 'https://i.imgur.com/WxeCnlO.png', 2),
(19, 3, 'subtraction', 'Grade 3 and 4 Subtraction - -', '<b>Mr. John\'s Pension</b>', 'Mr John just received <b>$ 956</b> for his monthly pension, so Mr John did what he does every month, Mr John pays his bills and buys groceries which totals to <b>$ 91</b>. How much money does Mr. John have left?', 865, 'https://feeds.soundcloud.com/stream/1636857084-rencee-c-banez-g3sub3.mp3', 'https://i.imgur.com/ckCGbnq.png', 'https://i.imgur.com/azyAfsP.png\r\n', 'https://i.imgur.com/eh27zzK.png', 3),
(20, 3, 'subtraction', 'Grade 3 and 4 Subtraction - -', '<b>The Pandemic</b>', 'In a factory, there were <b>739</b> workers but because of the pandemic <b>694</b> workers got sick and was forced to stay at home. How many workers are left in the Factory?', 45, 'https://feeds.soundcloud.com/stream/1636858431-rencee-c-banez-g3sub4.mp3', 'https://i.imgur.com/cw04MDn.png', 'https://i.imgur.com/TEni8fP.png', 'https://i.imgur.com/oqCbBCq.png', 4),
(21, 5, 'subtraction', 'Grade 5 and 6 Subtraction - -', '<b>Farmer\'s Apples</b>', 'A farmer Picked <b>742242</b> apples from his farm. As he got back to his home he saw and counted that <b>352321</b> apples were rotten. How many apples does the farmer have left?', 389921, 'https://feeds.soundcloud.com/stream/1636862382-rencee-c-banez-g5sub1.mp3', 'https://i.imgur.com/a5dqOYi.png', 'https://i.imgur.com/tiMYnM3.png', 'https://i.imgur.com/skHDgT1.png', 1),
(22, 5, 'subtraction', 'Grade 5 and 6 Subtraction - -', '<b>Joel\'s Candies</b>', 'Joel and friends just got back home from trick or treating, they counted their candies that they got and found that they collected <b>2212412</b> bags of candies. Before Joel sleeps he ate <b>1345</b> bags of candies. How many candies does Joel have left?\r\n', 2211067, 'https://feeds.soundcloud.com/stream/1636864482-rencee-c-banez-g5sub2.mp3', 'https://i.imgur.com/Gqd8wcE.png', 'https://i.imgur.com/4n8nRM9.png', 'https://i.imgur.com/0JsQMZH.png', 2),
(23, 5, 'subtraction', 'Grade 5 and 6 Subtraction - -', '<b>Mr. John\'s Pension</b>', 'Mr John just received <b>$ 95,645,875</b> for his monthly pension, so Mr John did what he does every month, Mr John pays his bills and buys groceries which totals to <b>$ 43,546,876</b>. How much money does Mr. John have left?', 52098999, 'https://feeds.soundcloud.com/stream/1636866819-rencee-c-banez-g5sub3.mp3', 'https://i.imgur.com/YWev99y.png', 'https://i.imgur.com/wMXcz8n.png', 'https://i.imgur.com/gFTJmIX.png', 3),
(24, 5, 'subtraction', 'Grade 5 and 6 Subtraction - -', '<b>The Pandemic</b>', 'In a factory, there were <b>739,365,330</b> workers but because of the pandemic <b>694,870,553</b> workers got sick and was forced to stay at home. How many workers are left in the Factory?', 44494777, 'https://feeds.soundcloud.com/stream/1636868022-rencee-c-banez-g5sub4.mp3', 'https://i.imgur.com/ZVnkh4K.png', 'https://i.imgur.com/82SNCqV.png', 'https://i.imgur.com/zF7Rlg8.png', 4),
(25, 1, 'multiplication', 'Grade 1 and 2 Multiplication x x', '', '', 30, '', 'https://i.imgur.com/8XLD3Z2.gif', '', '', 1),
(26, 1, 'multiplication', 'Grade 1 and 2 Multiplication x x', '', '', 116, '', 'https://i.imgur.com/TvwqnSR.gif', '', '', 2),
(30, 1, 'multiplication', 'Grade 1 and 2 Multiplication x x', '<b>Cindy\'s apple</b>', 'Cindy, a farmer\'s daughter was asked to put exactly <b>76</b> apples each in <b>7</b> boxes so it can be delivered to the market. How many apples are there in total?', 532, 'https://feeds.soundcloud.com/stream/1637276802-rencee-c-banez-g1mult1.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 3),
(31, 1, 'multiplication', 'Grade 1 and 2 Multiplication x x', '<b> Disney Land</b>', ' Mickey mouse  had so much fun in his Disneyland that he decided to make <b>11</b> more Disnelands across the country. Each Disneyland needs <b>94</b> staff to operate. how many additional staff will Mickey mouse need to hire for his new Disneylands?', 1034, 'https://feeds.soundcloud.com/stream/1637277996-rencee-c-banez-g1mult2.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 4),
(32, 3, 'multiplication', 'Grade 3 and 4 Multiplication x x', '', '', 18326, '', 'https://i.imgur.com/1a7ALwf.gif', '', '', 1),
(33, 3, 'multiplication', 'Grade 3 and 4 Multiplication x x', '', '', 0, '', 'https://i.imgur.com/51iyvkk.gif', '', '', 2),
(34, 3, 'multiplication', 'Grade 3 and 4 Multiplication x x', '<b>Cindy\'s apple</b>', 'Cindy, a farmer\'s daughter was asked to put exactly <b>3568</b> apples each in <b>264</b> boxes so it can be delivered to the market. How many apples are there in total?', 945520, 'https://feeds.soundcloud.com/stream/1637286237-rencee-c-banez-g3mult3.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 3),
(35, 3, 'multiplication', 'Grade 3 and 4 Multiplication x x', '<b> Disney Land</b>', ' Mickey mouse  had so much fun in his Disneyland that he decided to make <b>1011</b> more Disnelands across the country. Each Disneyland needs <b>9543</b> staff to operate. how many additional staff will Mickey mouse need to hire for his new Disneylands?', 965568693, 'https://feeds.soundcloud.com/stream/1637289381-rencee-c-banez-g3mult4.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 4),
(36, 5, 'multiplication', 'Grade 5 and 6 Multiplication x x', '', '', 18357620, '', 'https://i.imgur.com/JJVQiln.gif', '', '', 1),
(37, 5, 'multiplication', 'Grade 5 and 6 Multiplication x x', '', '', 0, '', 'https://i.imgur.com/gmXbDrV.gif', '', '', 1),
(38, 5, 'multiplication', 'Grade 5 and 6 Multiplication x x', '<b>Cindy\'s apple</b>', 'Cindy, a farmer\'s daughter was asked to put exactly <b>3568</b> apples each in <b>264</b> boxes so it can be delivered to the market. How many apples are there in total?', 945520, 'https://feeds.soundcloud.com/stream/1637286237-rencee-c-banez-g3mult3.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 3),
(39, 5, 'multiplication', 'Grade 5 and 6 Multiplication x x', '<b> Disney Land</b>', ' Mickey mouse  had so much fun in his Disneyland that he decided to make <b>1011</b> more Disnelands across the country. Each Disneyland needs <b>9543</b> staff to operate. how many additional staff will Mickey mouse need to hire for his new Disneylands?', 965568693, 'https://feeds.soundcloud.com/stream/1637289381-rencee-c-banez-g3mult4.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 4),
(40, 1, 'division', 'Grade 1 and 2 Division ÷ ÷', '', '', 3, '', 'https://i.imgur.com/bcGeBjh.gif', '', '', 1),
(41, 1, 'division', 'Grade 1 and 2 Division ÷ ÷', '', '', 3, '', 'https://i.imgur.com/7oHoN8v.gif', '', '', 2),
(42, 1, 'division', 'Grade 1 and 2 Division ÷ ÷', '<b>Cindy\'s Crayons</b>', 'Cindy counted her crayons and found out that she has <b>72</b> crayons which she will place in crayon boxes. Every crayon box can contain <b>12</b> crayons. How many crayon boxes does Cindy need?', 6, 'https://feeds.soundcloud.com/stream/1637606238-rencee-c-banez-g1div3.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 3),
(43, 1, 'division', 'Grade 1 and 2 Division ÷ ÷', ' <b>Big Joe\'s Savings</b>', 'Big Joe has saved <b>$84</b> from his business and he wanted to open <b>3</b> Bank Accounts for each of his children. How much money would he need to deposit in each bank to split the money equally?', 28, 'https://feeds.soundcloud.com/stream/1637607612-rencee-c-banez-g1div4.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 4),
(44, 3, 'division', 'Grade 3 and 4 Division ÷ ÷', '', '', 6, '', 'https://i.imgur.com/wWn6uk1.gif', '', '', 1),
(45, 3, 'division', 'Grade 3 and 4 Division ÷ ÷', '', '', 26, '', 'https://i.imgur.com/g0L0ZKu.gif', '', '', 2),
(46, 3, 'division', 'Grade 3 and 4 Division ÷ ÷', '<b>Cindy\'s Crayons</b>', 'Cindy counted her crayons and found out that she has <b>720</b> crayons which she will place in crayon boxes. Every crayon box can contain <b>120</b> crayons. How many crayon boxes does Cindy need?', 6, 'https://feeds.soundcloud.com/stream/1637623509-rencee-c-banez-g3div3.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 3),
(47, 3, 'division', 'Grade 3 and 4 Division ÷ ÷', ' <b>Big Joe\'s Savings</b>', 'Big Joe has saved <b>$8400</b> from his business and he wanted to open <b>300</b> Bank Accounts for each of his employees. How much money would he need to deposit in each bank to split the money equally?', 28, 'https://feeds.soundcloud.com/stream/1637624970-rencee-c-banez-g3div4.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 4),
(48, 5, 'division', 'Grade 5 and 6 Division ÷ ÷', '', '', 6, '', 'https://i.imgur.com/XgLItzc.gif', '', '', 1),
(49, 5, 'division', 'Grade 5 and 6 Division ÷ ÷', '', '', 26, '', 'https://i.imgur.com/3VHc6lX.gif', '', '', 2),
(50, 5, 'division', 'Grade 5 and 6 Division ÷ ÷', '<b>Cindy\'s Crayons</b>', 'Cindy counted her crayons and found out that she has <b>7200</b> crayons which she will place in crayon boxes. Every crayon box can contain <b>1200</b> crayons. How many crayon boxes does Cindy need?', 6, 'https://feeds.soundcloud.com/stream/1637634063-rencee-c-banez-g5div3.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 3),
(51, 5, 'division', 'Grade 5 and 6 Division ÷ ÷', ' <b>Big Joe\'s Savings</b>', 'Big Joe has saved <b>$840000</b> from his business and he wanted to open <b>30000</b> Bank Accounts for each of his employees. How much money would he need to deposit in each bank to split the money equally?', 28, 'https://feeds.soundcloud.com/stream/1637635722-rencee-c-banez-g5div4.mp3', 'https://i.imgur.com/2GWGYkm.gif', '', '', 4),
(52, 3, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -5, '', 'https://i.imgur.com/7UugqR0.gif', '', '', 1),
(53, 3, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -3, '', 'https://i.imgur.com/aTbojyY.gif', '', '', 2),
(54, 3, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', 315, '', 'https://i.imgur.com/ICtt10I.gif', '', '', 3),
(55, 3, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -1506, '', 'https://i.imgur.com/rbrhGXN.gif', '', '', 4),
(56, 5, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -15060, '', 'https://i.imgur.com/oVt4DEo.gif', '', '', 1),
(57, 5, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -70698, '', 'https://i.imgur.com/rRhDsp1.gif', '', '', 2),
(58, 5, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -280006, '', 'https://i.imgur.com/WEszj0A.gif', '', '', 3),
(59, 5, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -602120, '', 'https://i.imgur.com/ftAKWTg.gif', '', '', 4),
(60, 3, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', 16, '', 'https://i.imgur.com/XCbSBhT.gif', '', '', 1),
(61, 3, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', -72, '', 'https://i.imgur.com/DairWsw.gif', '', '', 2),
(62, 3, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', -648, '', 'https://i.imgur.com/GFmxTgE.gif', '', '', 3),
(63, 3, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', 4212, '', 'https://i.imgur.com/16duJNx.gif', '', '', 4),
(64, 5, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', 1555632, '', 'https://i.imgur.com/OJ1dJHe.gif', '', '', 1),
(65, 5, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', -778760752, '', 'https://i.imgur.com/Qf0L3rk.gif', '', '', 2),
(66, 5, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', -221029029, '', 'https://i.imgur.com/yt95Qyf.gif', '', '', 3),
(67, 5, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', -1361363264, '', 'https://i.imgur.com/jKKEoOb.gif', '', '', 4),
(68, 5, 'dInt', 'Division of Integers (+) ÷ (-)', '', '', -200, '', 'https://i.imgur.com/gLuBzyF.gif', '', '', 1),
(69, 5, 'dInt', 'Division of Integers (+) ÷ (-)', '', '', 78, '', 'https://i.imgur.com/ZOEoC0o.gif', '', '', 2),
(70, 5, 'dInt', 'Division of Integers (+) ÷ (-)', '', '', -6, '', 'https://i.imgur.com/N6oaihT.gif', '', '', 3),
(71, 5, 'dInt', 'Division of Integers (+) ÷ (-)', '', '', 2, '', 'https://i.imgur.com/UpuMqyg.gif', '', '', 4),
(72, 5, 'exp', 'Exponents ', '', '', 347, '', 'https://i.imgur.com/OkLBmjU.gif', '', '', 1),
(73, 5, 'exp', 'Exponents ', '', '', 32687, 'https://i.imgur.com/Dn5hg7l.gif', 'https://i.imgur.com/Dn5hg7l.gif', '', '', 2),
(74, 5, 'exp', 'Exponents ', '', '', 41616, '', 'https://i.imgur.com/ifwfZaj.gif', '', '', 3),
(75, 5, 'exp', 'Exponents ', '', '', 661, '', 'https://i.imgur.com/oXvKqMN.gif', '', '', 4),
(76, 5, 'order', 'Grade 5 & 6 Order of Operation + - x ÷', '', '', 184, '', 'https://i.imgur.com/s7dvkUi.gif', '', '', 1),
(77, 5, 'order', 'Grade 5 & 6 Order of Operation + - x ÷', '', '', 0, '', 'https://i.imgur.com/hTpYZza.gif', '', '', 2);

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
  `GradeLevel` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `stats` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stud_id`, `username`, `pass`, `email`, `birthday`, `FirstName`, `LastName`, `GradeLevel`, `score`, `stats`) VALUES
(20231011, 'gumeroos', '1111', 'email4@yahoo.com', '10/3/2010', 'ced', 'flores', 1, 0, 'inactive'),
(20231020, 'jun', '1111', 'email2@yahoo.com', '8/2/2010', 'rencee', 'banez', 2, 8, 'active'),
(20231023, 'drea', '1111', 'email6@yahoo.com', '12/1/2010', 'andrea', 'babae', 4, 0, 'active'),
(20231031, 'steben', '1111', 'email3@yahoo.com', '12/23/2010', 'steven', 'macarasig', 6, 0, 'active'),
(20231069, 'waow', '1111', 'email@yahoo.com', '11/26/2010', 'Brian', 'Blancaflor', 4, 24, 'active'),
(20231080, 'blue', '1111', 'email1@yahoo.com', '7/26/2010', 'danniell blue', 'Arciaga', 2, 10, 'active'),
(20231099, 'cindy', '1111', 'email5@yahoo.com', '5/13/2010', 'cynthia', 'random', 3, 0, 'active'),
(202310349, 'dumon1', '1111', 'DCarter@email.com', '12', 'Dumon', 'Carter', 6, 0, 'active');

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
  `birthday` varchar(64) DEFAULT NULL,
  `stats` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `pass`, `email`, `FirstName`, `LastName`, `birthday`, `stats`) VALUES
(20232001, 'maambelen', '1111', 'email6@yahoo.com', 'Belen', 'Ladesma', NULL, 'active'),
(20232010, 'sireman', '1111', 'email3@yahoo.com', 'Emannuel', 'Transmission', NULL, 'active'),
(20232045, 'maamrhea', '1111', 'email2@yahoo.com', 'Rhea', 'Tortor', NULL, 'active'),
(20232062, 'sirilao', '1111', 'email4@yahoo.com', 'Adomar', 'ilao', NULL, 'active'),
(20232076, 'sirdm', '1111', 'email@yahoo.com', 'Dennis', 'Martillano', NULL, 'inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`score_ID`),
  ADD KEY `stud_id` (`stud_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `activation`
--
ALTER TABLE `activation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `stud_id` (`stud_id`);

--
-- Indexes for table `activation_teacher`
--
ALTER TABLE `activation_teacher`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `attempts`
--
ALTER TABLE `attempts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `stud_id` (`stud_id`);

--
-- Indexes for table `auditlog`
--
ALTER TABLE `auditlog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `classlist`
--
ALTER TABLE `classlist`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `stud_id` (`stud_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `enrollmentrequest`
--
ALTER TABLE `enrollmentrequest`
  ADD PRIMARY KEY (`enroll_id`),
  ADD KEY `stud_id` (`stud_id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `stud_id` (`stud_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `class_id` (`class_id`),
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
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `score_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `activation`
--
ALTER TABLE `activation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activation_teacher`
--
ALTER TABLE `activation_teacher`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attempts`
--
ALTER TABLE `attempts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auditlog`
--
ALTER TABLE `auditlog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `classlist`
--
ALTER TABLE `classlist`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `enrollmentrequest`
--
ALTER TABLE `enrollmentrequest`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202310350;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20232077;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achievements`
--
ALTER TABLE `achievements`
  ADD CONSTRAINT `achievements_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `students` (`stud_id`),
  ADD CONSTRAINT `achievements_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `activation`
--
ALTER TABLE `activation`
  ADD CONSTRAINT `activation_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `students` (`stud_id`);

--
-- Constraints for table `activation_teacher`
--
ALTER TABLE `activation_teacher`
  ADD CONSTRAINT `activation_teacher_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `attempts`
--
ALTER TABLE `attempts`
  ADD CONSTRAINT `attempts_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `students` (`stud_id`);

--
-- Constraints for table `classlist`
--
ALTER TABLE `classlist`
  ADD CONSTRAINT `classlist_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `students` (`stud_id`),
  ADD CONSTRAINT `classlist_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `enrollmentrequest`
--
ALTER TABLE `enrollmentrequest`
  ADD CONSTRAINT `enrollmentrequest_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `students` (`stud_id`);

--
-- Constraints for table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `progress_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `students` (`stud_id`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classlist` (`class_id`),
  ADD CONSTRAINT `quiz_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
