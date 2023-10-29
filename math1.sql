-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2023 at 01:53 PM
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
(1, 20231099);

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
  `exercise_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storyboard`
--

INSERT INTO `storyboard` (`id`, `grade_level`, `topic`, `title`, `questionTitle`, `question`, `answer`, `exercise_audio`, `exercise_image`, `exercise_num`) VALUES
(1, 1, 'addition', 'Grade 1 and 2 Addition + +', '<b>Santa\'s Dinner Party</b>', 'On a cold Christmas night Santa invited <b>four (4)</b> Elfs and <b>nine (9)</b> Humans to eat dinner and drink hot chocolate at his house. How many guests will Santa have in total?', 13, 'https://feeds.soundcloud.com/stream/1636726923-rencee-c-banez-g1add1.mp3', 'https://i.imgur.com/2GWGYkm.gif', 1),
(2, 1, 'addition', 'Grade 1 and 2 Addition + +', '<b>Big Boy\'s Shoe Collection</b>', '  Big Boy\'s shoe collection consist of <b>seventeen (17)</b> Air Jordan 1\'s and <b>fourteen (14)</b> Vans off the wall shoes. Big Boy wants to buy shoeboxes to store his shoes. How many shoebox should Big Boy buy in order to store his shoe collection properly?', 31, 'https://feeds.soundcloud.com/stream/1635927024-rencee-c-banez-add-ex2.mp3', 'https://i.imgur.com/2GWGYkm.gif', 2),
(3, 1, 'addition', 'Grade 1 and 2 Addition + +', '<b>Mikey\'s Birthday Gifts</b>\r\n', 'On Mikey\'s Birthday there were many people who gave him gifts, both on his mother\'s and father\'s side. On Mikey\'s mother side he received <b>12</b> gifts and on his father side he received <b>6</b> gifts. How many gifts did Mikey receive in total?', 18, 'https://feeds.soundcloud.com/stream/1635944193-rencee-c-banez-g1add3.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(4, 1, 'addition', 'Grade 1 and 2 Addition + +', '<b>Mary and Joel\'s Piggy Bank</b>', 'Mary and Joel just started saving their money, Mary who saves a lot of her money has <b>$ 74</b> in her piggy bank and Joel who saves a bit of money has <b>$ 32</b> in his piggy bank. How much money will they have if they merge their piggy banks?', 106, 'https://feeds.soundcloud.com/stream/1635959442-rencee-c-banez-g1add4.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(5, 3, 'addition', 'Grade 3 and 4 Addition + +', '<b>Santa\'s Dinner Party</b>', 'On a cold Christmas night Santa invited <b>Sixty Five (65)</b> Elfs and <b>Eighty Nine (89)</b> Humans to eat dinner and drink hot chocolate at his house. How many guests will Santa have in total?', 154, 'https://feeds.soundcloud.com/stream/1636732941-rencee-c-banez-g3add1-2.mp3', 'https://i.imgur.com/2GWGYkm.gif', 1),
(6, 3, 'addition', 'Grade 3 and 4 Addition + +', '<b>Big Boy\'s Shoe Collection</b>', 'Big Boy\'s shoe collection consist of <b>One Hundred Seventy Three (173)</b> Air Jordan 1\'s and <b>Fifty Four (54)</b> Vans off the wall shoes. Big Boy wants to buy shoeboxes to store his shoes. How many shoebox should Big Boy buy in order to store his shoe collection properly?', 227, 'https://feeds.soundcloud.com/stream/1636739622-rencee-c-banez-g3add2.mp3', 'https://i.imgur.com/2GWGYkm.gif', 2),
(7, 3, 'addition', 'Grade 3 and 4 Addition + +', '<b>Mikey\'s Birthday Gifts</b>\r\n', 'On Mikey\'s Birthday there were many people who gave him gifts, both on his mother\'s and father\'s side. On Mikey\'s mother side he received <b>122</b> gifts and on his father side he received <b>167</b> gifts. How many gifts did Mikey receive in total?', 289, 'https://feeds.soundcloud.com/stream/1636746852-rencee-c-banez-g3add3.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(8, 3, 'addition', 'Grade 3 and 4 Addition + +', '<b>Mary and Joel\'s Piggy Bank</b>', 'Mary and Joel just started saving their money, Mary who saves a lot of her money has <b>$ 976</b> in her piggy bank and Joel who saves a bit of money has <b>$ 648</b> in his piggy bank. How much money will they have if they merge their piggy banks?', 1624, 'https://feeds.soundcloud.com/stream/1636753092-rencee-c-banez-g3add4.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(9, 5, 'addition', 'Grade 5 and 6 Addition + +', '<b>Santa\'s Dinner Party</b>', 'On a cold Christmas night Santa invited <b>984</b> Elfs and <b>1276</b> Humans to eat dinner and drink hot chocolate at his house. How many guests will Santa have in total?', 2260, 'https://feeds.soundcloud.com/stream/1636763829-rencee-c-banez-g5add1.mp3', 'https://i.imgur.com/2GWGYkm.gif', 1),
(10, 5, 'addition', 'Grade 5 and 6 Addition + +', '<b>Big Boy\'s Shoe Collection</b>', '  Big Boy\'s shoe collection consist of <b>1719</b> Air Jordan 1\'s and <b>1217</b> Vans off the wall shoes. Big Boy wants to buy shoeboxes to store his shoes. How many shoebox should Big Boy buy in order to store his shoe collection properly?', 2936, 'https://feeds.soundcloud.com/stream/1636771086-rencee-c-banez-g5add2.mp3', 'https://i.imgur.com/2GWGYkm.gif', 2),
(11, 5, 'addition', 'Grade 5 and 6 Addition + +', '<b>Mikey\'s Birthday Gifts</b>\r\n', 'On Mikey\'s Birthday there were many people who gave him gifts, both on his mother\'s and father\'s side. On Mikey\'s mother side he received <b>7331</b> gifts and on his father side he received <b>8863</b> gifts. How many gifts did Mikey receive in total?', 16194, 'https://feeds.soundcloud.com/stream/1636778727-rencee-c-banez-g5add3.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(12, 5, 'addition', 'Grade 5 and 6 Addition + +', '<b>Mary and Joel\'s Piggy Bank</b>', 'Mary and Joel just started saving their money, Mary who saves a lot of her money has <b>$ 43,334</b> in her piggy bank and Joel who saves a bit of money has <b>$ 22,768</b> in his piggy bank. How much money will they have if they merge their piggy banks?', 66102, 'https://feeds.soundcloud.com/stream/1636785600-rencee-c-banez-g5add4.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(13, 1, 'subtraction', 'Grade 1 and 2 Subtraction - -', '<b>Farmer\'s Apples</b>', 'A farmer Picked <b>seven (7)</b> apples from his farm. As he got back to his home he saw and counted that <b>three (3)</b> apples were rotten. How many apples does the farmer have left?', 4, 'https://feeds.soundcloud.com/stream/1636810098-rencee-c-banez-g1sub1.mp3', 'https://i.imgur.com/2GWGYkm.gif', 1),
(14, 1, 'subtraction', 'Grade 1 and 2 Subtraction - -', '<b>Joel\'s Candies</b>', 'Joel just got back home from trick or treating, he counted his candies that he got and found that he collected <b>9</b> bags of candies. Before Joel sleeps he ate <b>3</b> bags of candies. How many candies does Joel have left?\r\n', 6, 'https://feeds.soundcloud.com/stream/1636821795-rencee-c-banez-g1sub2.mp3', 'https://i.imgur.com/2GWGYkm.gif', 2),
(15, 1, 'subtraction', 'Grade 1 and 2 Subtraction - -', '<b>Mr. John\'s Pension</b>', 'Mr John just received <b>$ 95</b> for his monthly pension, so Mr John did what he does every month, Mr John pays his bills and buys groceries which totals to <b>$ 47</b>. How much money does Mr. John have left?', 48, 'https://feeds.soundcloud.com/stream/1636830147-rencee-c-banez-g1sub3.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(16, 1, 'subtraction', 'Grade 1 and 2 Subtraction - -', '<b>The Pandemic</b>', 'In a factory, there were <b>73</b> workers but because of the pandemic <b>9</b> workers got sick and was forced to stay at home. How many workers are left in the Factory?', 64, 'https://feeds.soundcloud.com/stream/1636832007-rencee-c-banez-g1sub4.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(17, 3, 'subtraction', 'Grade 3 and 4 Subtraction - -', '<b>Farmer\'s Apples</b>', 'A farmer Picked <b>seventy four (74)</b> apples from his farm. As he got back to his home he saw and counted that <b>thirty five (35)</b> apples were rotten. How many apples does the farmer have left?', 39, 'https://feeds.soundcloud.com/stream/1636838121-rencee-c-banez-g3sub1.mp3', 'https://i.imgur.com/2GWGYkm.gif', 1),
(18, 3, 'subtraction', 'Grade 3 and 4 Subtraction - -', '<b>Joel\'s Candies</b>', 'Joel just got back home from trick or treating, he counted his candies that he got and found that he collected <b>19</b> bags of candies. Before Joel sleeps he ate <b>2</b> bags of candies. How many candies does Joel have left?\r\n', 17, 'https://feeds.soundcloud.com/stream/1636850736-rencee-c-banez-g3sub2.mp3', 'https://i.imgur.com/2GWGYkm.gif', 2),
(19, 3, 'subtraction', 'Grade 3 and 4 Subtraction - -', '<b>Mr. John\'s Pension</b>', 'Mr John just received <b>$ 956</b> for his monthly pension, so Mr John did what he does every month, Mr John pays his bills and buys groceries which totals to <b>$ 91</b>. How much money does Mr. John have left?', 865, 'https://feeds.soundcloud.com/stream/1636857084-rencee-c-banez-g3sub3.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(20, 3, 'subtraction', 'Grade 3 and 4 Subtraction - -', '<b>The Pandemic</b>', 'In a factory, there were <b>739</b> workers but because of the pandemic <b>694</b> workers got sick and was forced to stay at home. How many workers are left in the Factory?', 45, 'https://feeds.soundcloud.com/stream/1636858431-rencee-c-banez-g3sub4.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(21, 5, 'subtraction', 'Grade 5 and 6 Subtraction - -', '<b>Farmer\'s Apples</b>', 'A farmer Picked <b>742242</b> apples from his farm. As he got back to his home he saw and counted that <b>352321</b> apples were rotten. How many apples does the farmer have left?', 389921, 'https://feeds.soundcloud.com/stream/1636862382-rencee-c-banez-g5sub1.mp3', 'https://i.imgur.com/2GWGYkm.gif', 1),
(22, 5, 'subtraction', 'Grade 5 and 6 Subtraction - -', '<b>Joel\'s Candies</b>', 'Joel and friends just got back home from trick or treating, they counted their candies that they got and found that they collected <b>2212412</b> bags of candies. Before Joel sleeps he ate <b>1345</b> bags of candies. How many candies does Joel have left?\r\n', 2211067, 'https://feeds.soundcloud.com/stream/1636864482-rencee-c-banez-g5sub2.mp3', 'https://i.imgur.com/2GWGYkm.gif', 2),
(23, 5, 'subtraction', 'Grade 5 and 6 Subtraction - -', '<b>Mr. John\'s Pension</b>', 'Mr John just received <b>$ 95,645,875</b> for his monthly pension, so Mr John did what he does every month, Mr John pays his bills and buys groceries which totals to <b>$ 43,546,876</b>. How much money does Mr. John have left?', 52098999, 'https://feeds.soundcloud.com/stream/1636866819-rencee-c-banez-g5sub3.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(24, 5, 'subtraction', 'Grade 5 and 6 Subtraction - -', '<b>The Pandemic</b>', 'In a factory, there were <b>739,365,330</b> workers but because of the pandemic <b>694,870,553</b> workers got sick and was forced to stay at home. How many workers are left in the Factory?', 44494777, 'https://feeds.soundcloud.com/stream/1636868022-rencee-c-banez-g5sub4.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(25, 1, 'multiplication', 'Grade 1 and 2 Multiplication x x', '', '', 30, '', 'https://i.imgur.com/8XLD3Z2.gif', 1),
(26, 1, 'multiplication', 'Grade 1 and 2 Multiplication x x', '', '', 116, '', 'https://i.imgur.com/TvwqnSR.gif', 2),
(30, 1, 'multiplication', 'Grade 1 and 2 Multiplication x x', '<b>Cindy\'s apple</b>', 'Cindy, a farmer\'s daughter was asked to put exactly <b>76</b> apples each in <b>7</b> boxes so it can be delivered to the market. How many apples are there in total?', 532, 'https://feeds.soundcloud.com/stream/1637276802-rencee-c-banez-g1mult1.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(31, 1, 'multiplication', 'Grade 1 and 2 Multiplication x x', '<b> Disney Land</b>', ' Mickey mouse  had so much fun in his Disneyland that he decided to make <b>11</b> more Disnelands across the country. Each Disneyland needs <b>94</b> staff to operate. how many additional staff will Mickey mouse need to hire for his new Disneylands?', 1034, 'https://feeds.soundcloud.com/stream/1637277996-rencee-c-banez-g1mult2.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(32, 3, 'multiplication', 'Grade 3 and 4 Multiplication x x', '', '', 0, '', '', 1),
(33, 3, 'multiplication', 'Grade 3 and 4 Multiplication x x', '', '', 0, '', '', 2),
(34, 3, 'multiplication', 'Grade 3 and 4 Multiplication x x', '<b>Cindy\'s apple</b>', 'Cindy, a farmer\'s daughter was asked to put exactly <b>3568</b> apples each in <b>264</b> boxes so it can be delivered to the market. How many apples are there in total?', 945520, 'https://feeds.soundcloud.com/stream/1637286237-rencee-c-banez-g3mult3.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(35, 3, 'multiplication', 'Grade 3 and 4 Multiplication x x', '<b> Disney Land</b>', ' Mickey mouse  had so much fun in his Disneyland that he decided to make <b>1011</b> more Disnelands across the country. Each Disneyland needs <b>9543</b> staff to operate. how many additional staff will Mickey mouse need to hire for his new Disneylands?', 965568693, 'https://feeds.soundcloud.com/stream/1637289381-rencee-c-banez-g3mult4.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(36, 5, 'multiplication', 'Grade 5 and 6 Multiplication x x', '', '', 0, '', '', 1),
(37, 5, 'multiplication', 'Grade 5 and 6 Multiplication x x', '', '', 0, '', '', 1),
(38, 5, 'multiplication', 'Grade 5 and 6 Multiplication x x', '<b>Cindy\'s apple</b>', 'Cindy, a farmer\'s daughter was asked to put exactly <b>3568</b> apples each in <b>264</b> boxes so it can be delivered to the market. How many apples are there in total?', 945520, 'https://feeds.soundcloud.com/stream/1637286237-rencee-c-banez-g3mult3.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(39, 5, 'multiplication', 'Grade 5 and 6 Multiplication x x', '<b> Disney Land</b>', ' Mickey mouse  had so much fun in his Disneyland that he decided to make <b>1011</b> more Disnelands across the country. Each Disneyland needs <b>9543</b> staff to operate. how many additional staff will Mickey mouse need to hire for his new Disneylands?', 965568693, 'https://feeds.soundcloud.com/stream/1637289381-rencee-c-banez-g3mult4.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(40, 1, 'division', 'Grade 1 and 2 Division ÷ ÷', '', '', 3, '', 'https://i.imgur.com/bcGeBjh.gif', 1),
(41, 1, 'division', 'Grade 1 and 2 Division ÷ ÷', '', '', 3, '', 'https://i.imgur.com/7oHoN8v.gif', 2),
(42, 1, 'division', 'Grade 1 and 2 Division ÷ ÷', '<b>Cindy\'s Crayons</b>', 'Cindy counted her crayons and found out that she has <b>72</b> crayons which she will place in crayon boxes. Every crayon box can contain <b>12</b> crayons. How many crayon boxes does Cindy need?', 6, 'https://feeds.soundcloud.com/stream/1637606238-rencee-c-banez-g1div3.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(43, 1, 'division', 'Grade 1 and 2 Division ÷ ÷', ' <b>Big Joe\'s Savings</b>', 'Big Joe has saved <b>$84</b> from his business and he wanted to open <b>3</b> Bank Accounts for each of his children. How much money would he need to deposit in each bank to split the money equally?', 28, 'https://feeds.soundcloud.com/stream/1637607612-rencee-c-banez-g1div4.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(44, 3, 'division', 'Grade 3 and 4 Division ÷ ÷', '', '', 6, '', 'https://i.imgur.com/wWn6uk1.gif', 1),
(45, 3, 'division', 'Grade 3 and 4 Division ÷ ÷', '', '', 26, '', 'https://i.imgur.com/g0L0ZKu.gif', 2),
(46, 3, 'division', 'Grade 3 and 4 Division ÷ ÷', '<b>Cindy\'s Crayons</b>', 'Cindy counted her crayons and found out that she has <b>720</b> crayons which she will place in crayon boxes. Every crayon box can contain <b>120</b> crayons. How many crayon boxes does Cindy need?', 6, 'https://feeds.soundcloud.com/stream/1637623509-rencee-c-banez-g3div3.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(47, 3, 'division', 'Grade 3 and 4 Division ÷ ÷', ' <b>Big Joe\'s Savings</b>', 'Big Joe has saved <b>$8400</b> from his business and he wanted to open <b>300</b> Bank Accounts for each of his employees. How much money would he need to deposit in each bank to split the money equally?', 28, 'https://feeds.soundcloud.com/stream/1637624970-rencee-c-banez-g3div4.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(48, 5, 'division', 'Grade 5 and 6 Division ÷ ÷', '', '', 6, '', 'https://i.imgur.com/XgLItzc.gif', 1),
(49, 5, 'division', 'Grade 5 and 6 Division ÷ ÷', '', '', 26, '', 'https://i.imgur.com/3VHc6lX.gif', 2),
(50, 5, 'division', 'Grade 5 and 6 Division ÷ ÷', '<b>Cindy\'s Crayons</b>', 'Cindy counted her crayons and found out that she has <b>7200</b> crayons which she will place in crayon boxes. Every crayon box can contain <b>1200</b> crayons. How many crayon boxes does Cindy need?', 6, 'https://feeds.soundcloud.com/stream/1637634063-rencee-c-banez-g5div3.mp3', 'https://i.imgur.com/2GWGYkm.gif', 3),
(51, 5, 'division', 'Grade 5 and 6 Division ÷ ÷', ' <b>Big Joe\'s Savings</b>', 'Big Joe has saved <b>$840000</b> from his business and he wanted to open <b>30000</b> Bank Accounts for each of his employees. How much money would he need to deposit in each bank to split the money equally?', 28, 'https://feeds.soundcloud.com/stream/1637635722-rencee-c-banez-g5div4.mp3', 'https://i.imgur.com/2GWGYkm.gif', 4),
(52, 3, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -5, '', 'https://i.imgur.com/7UugqR0.gif', 1),
(53, 3, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -3, '', 'https://i.imgur.com/aTbojyY.gif', 2),
(54, 3, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', 315, '', 'https://i.imgur.com/ICtt10I.gif', 3),
(55, 3, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -1506, '', 'https://i.imgur.com/rbrhGXN.gif', 4),
(56, 5, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -15060, '', 'https://i.imgur.com/oVt4DEo.gif', 1),
(57, 5, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -70698, '', 'https://i.imgur.com/rRhDsp1.gif', 2),
(58, 5, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -280006, '', 'https://i.imgur.com/WEszj0A.gif', 3),
(59, 5, 'addsubInt', 'Addition and Subtraction of Integers + -', '', '', -602120, '', 'https://i.imgur.com/ftAKWTg.gif', 4),
(60, 3, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', 16, '', 'https://i.imgur.com/XCbSBhT.gif', 1),
(61, 3, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', -72, '', 'https://i.imgur.com/DairWsw.gif', 2),
(62, 3, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', -648, '', 'https://i.imgur.com/GFmxTgE.gif', 3),
(63, 3, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', 4212, '', 'https://i.imgur.com/16duJNx.gif', 4),
(64, 5, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', 1555632, '', 'https://i.imgur.com/OJ1dJHe.gif', 1),
(65, 5, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', -778760752, '', 'https://i.imgur.com/Qf0L3rk.gif', 2),
(66, 5, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', -221029029, '', 'https://i.imgur.com/yt95Qyf.gif', 3),
(67, 5, 'mInt', 'Multiplication of Integers (+) x (-)', '', '', -1361363264, '', 'https://i.imgur.com/jKKEoOb.gif', 4),
(68, 5, 'dInt', 'Division of Integers (+) ÷ (-)', '', '', -200, '', 'https://i.imgur.com/gLuBzyF.gif', 1),
(69, 5, 'dInt', 'Division of Integers (+) ÷ (-)', '', '', 78, '', 'https://i.imgur.com/ZOEoC0o.gif', 2),
(70, 5, 'dInt', 'Division of Integers (+) ÷ (-)', '', '', -6, '', 'https://i.imgur.com/N6oaihT.gif', 3),
(71, 5, 'dInt', 'Division of Integers (+) ÷ (-)', '', '', 2, '', 'https://i.imgur.com/UpuMqyg.gif', 4),
(72, 5, 'exp', 'Exponents ', '', '', 347, '', 'https://i.imgur.com/OkLBmjU.gif', 1),
(73, 5, 'exp', 'Exponents ', '', '', 32687, 'https://i.imgur.com/Dn5hg7l.gif', 'https://i.imgur.com/Dn5hg7l.gif', 2),
(74, 5, 'exp', 'Exponents ', '', '', 41616, '', 'https://i.imgur.com/ifwfZaj.gif', 3),
(75, 5, 'exp', 'Exponents ', '', '', 661, '', 'https://i.imgur.com/oXvKqMN.gif', 4),
(76, 5, 'order', 'Grade 5 & 6 Order of Operation + - x ÷', '', '', 184, '', 'https://i.imgur.com/s7dvkUi.gif', 1),
(77, 5, 'order', 'Grade 5 & 6 Order of Operation + - x ÷', '', '', 0, '', 'https://i.imgur.com/hTpYZza.gif', 2);

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
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stud_id`, `username`, `pass`, `email`, `birthday`, `FirstName`, `LastName`, `GradeLevel`, `score`) VALUES
(20231011, 'gumeroos', '1111', 'email4@yahoo.com', '10/3/2010', 'ced', 'flores', 1, NULL),
(20231020, 'jun', '1111', 'email2@yahoo.com', '8/2/2010', 'rencee', 'banez', 2, NULL),
(20231023, 'drea', '1111', 'email6@yahoo.com', '12/1/2010', 'andrea', 'babae', 4, NULL),
(20231031, 'steben', '1111', 'email3@yahoo.com', '12/23/2010', 'steven', 'macarasig', 6, NULL),
(20231069, 'waow', '1111', 'email@yahoo.com', '11/26/2010', 'Brian', 'Blancaflor', 5, NULL),
(20231080, 'blue', '1111', 'email1@yahoo.com', '7/26/2010', 'danniell blue', 'Arciaga', 2, 10),
(20231099, 'cindy', '1111', 'email5@yahoo.com', '5/13/2010', 'cynthia', 'random', 3, NULL),
(202310349, 'dumon1', '1111', 'DCarter@email.com', '12', 'Dumon', 'Carter', 6, NULL);

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
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`score_ID`),
  ADD KEY `stud_id` (`stud_id`),
  ADD KEY `teacher_id` (`teacher_id`);

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
  MODIFY `score_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classlist`
--
ALTER TABLE `classlist`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enrollmentrequest`
--
ALTER TABLE `enrollmentrequest`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classlist` (`class_id`),
  ADD CONSTRAINT `quiz_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
