-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2020 at 07:47 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `archetypes`
--

-- --------------------------------------------------------

--
-- Table structure for table `archetypes`
--

CREATE TABLE `archetypes` (
  `id` int(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `detail_image` varchar(255) DEFAULT NULL,
  `details` text,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `archetypes`
--

INSERT INTO `archetypes` (`id`, `image`, `detail_image`, `details`, `title`) VALUES
(1, 'images/archetypes/A1.png', 'images/archetypes/A1 Description.png', NULL, 'Escapist'),
(2, 'images/archetypes/A2.png', 'images/archetypes/A2 Description.png', NULL, 'Aspirer'),
(3, 'images/archetypes/A3.png', 'images/archetypes/A3 Description.png', NULL, 'Energizer'),
(4, 'images/archetypes/A4.png', 'images/archetypes/A4 Description.png', NULL, 'Culturist'),
(5, 'images/archetypes/A5.png', 'images/archetypes/A6 Description.png', NULL, 'Fantasist'),
(6, 'images/archetypes/A6.png', 'images/archetypes/A6 Description.png', NULL, 'Master'),
(7, 'images/archetypes/A7.png', 'images/archetypes/A7 Description.png', NULL, 'Change-Maker'),
(8, 'images/archetypes/A8.png', 'images/archetypes/A8 Description.png', NULL, 'Indulger'),
(9, 'images/archetypes/A9.png', 'images/archetypes/A9 Description.png', NULL, 'Trend-Hunter');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(255) NOT NULL,
  `r1` int(255) DEFAULT NULL,
  `r2` int(255) DEFAULT NULL,
  `r3` int(255) DEFAULT NULL,
  `r4` int(255) DEFAULT NULL,
  `r5` int(255) DEFAULT NULL,
  `r6` int(255) DEFAULT NULL,
  `r7` int(255) DEFAULT NULL,
  `r8` int(255) DEFAULT NULL,
  `r9` int(255) DEFAULT NULL,
  `r10` int(255) DEFAULT NULL,
  `archetype` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `r1`, `r2`, `r3`, `r4`, `r5`, `r6`, `r7`, `r8`, `r9`, `r10`, `archetype`, `time`) VALUES
(1, 2, 2, 2, 4, 1, 2, 1, 2, 1, 2, 'Escapist', '2019-12-30 09:48:41'),
(2, 1, 2, 2, 2, 1, 2, 1, 2, 2, 1, 'Master', '2020-01-03 15:56:29'),
(3, 1, 1, 3, 4, 2, 2, 2, 2, 2, 2, 'Energizer', '2020-01-03 17:30:11'),
(4, 1, 1, 3, 4, 2, 2, 2, 2, 2, 2, 'Energizer', '2020-01-03 17:31:08'),
(5, 3, 2, 2, 2, 1, 2, 1, 2, 1, 2, 'Indulger', '2020-01-03 17:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(255) NOT NULL,
  `start` varchar(255) DEFAULT NULL,
  `title` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `start`, `title`) VALUES
(1, 'what', 'word describes you best'),
(2, 'which', 'experience has made you most happy in the last month?'),
(3, 'which', 'of the following might you hope to personally accomplish from being part of an experience?'),
(4, 'what', 'is most important to you when attending an event or experience?'),
(5, 'would', 'you rather'),
(6, 'would', 'you rather'),
(7, 'would', 'you rather'),
(8, 'would', 'you rather'),
(9, 'would', 'you rather'),
(10, 'would', 'you rather');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(255) NOT NULL,
  `question_id` int(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `question_id`, `response`, `image`) VALUES
(1, 1, 'Sophisticated', 'images/Q1/Sophisticated_2.jpg'),
(2, 1, 'Curious', 'images/Q1/Curious_3.jpg'),
(3, 1, 'Trendy', 'images/Q1/Trendy_2.jpg'),
(4, 1, 'Thrill-seeker', 'images/Q1/Thrill-seeker_1.jpg'),
(5, 2, 'Online <br>shopping/Retailer', 'images/Q2/Shopping.jpg'),
(6, 2, 'Sports/Sporting event', 'images/Q2/Sports.jpg'),
(7, 2, 'Live music', 'images/Q2/Music.jpg'),
(8, 2, 'Restaurant/Bar', 'images/Q2/Restaurant.Bar.jpg'),
(9, 3, 'Learn something new ', 'images/Q3/Learn.jpg'),
(10, 3, 'Improve my Holistic <br> well-being', 'images/Q3/Improve Holistic.jpg'),
(11, 3, 'To laugh and have fun', 'images/Q3/Laugh.jpg'),
(12, 3, 'Be Reflective/Nostalgic', 'images/Q3/Reflect.jpg'),
(13, 4, 'Getting up close to <br> action/VIP experience', 'images/Q4/VIP Experience.jpg'),
(14, 4, 'Meeting new people<br>with similar interests ', 'images/Q4/Meeting New People.jpg'),
(15, 4, 'Makes me think <br>differently/smarter ', 'images/Q4/Think Smarter.jpg'),
(16, 4, 'Has unexpected and<br> unique moments', 'images/Q4/Unique Moments.jpg'),
(17, 5, 'Attend a concert for<br> your favorite musician<br> by yourself', 'images/Q5/Yourself.jpg'),
(18, 5, 'Attend a concert for<br> your favorite musician <br>with a group of friends', 'images/Q5/With Friends.jpg'),
(19, 6, 'Host a dinner <br>party at your home', 'images/Q6/Host.jpg'),
(20, 6, 'Attend a dinner party<br> hosted at someone <br>else\'s home', 'images/Q6/Attend.jpg'),
(21, 7, 'Be part of an exclusive <br>event for only 50 people', 'images/Q7/Intimate Event.jpg'),
(22, 7, 'Be part of a larger <br>event for 500 people', 'images/Q7/Big Event.jpg'),
(23, 8, 'Get to meet/have a one<br> hour solo meeting with<br> your favorite celebrity, <br>athlete, or musician, but you<br> can\'t tell anyone about it', 'images/Q8/1on1.jpg'),
(24, 8, 'Be part of a larger meet<br> and greet group with <br>your favorite celebrity, <br>athlete, or musician that you<br> can tell others about', 'images/Q8/Group Meeting.jpg'),
(25, 9, 'Watch your favorite <br>sport either on TV<br> or in person', 'images/Q9/Watch.jpg'),
(26, 9, 'Play your favorite <br>sport/be on a team', 'images/Q9/Play.jpg'),
(27, 10, 'Take a gourmet cooking<br> class', 'images/Q10/Cooking Class.jpg'),
(28, 10, 'Eat at a gourmet <br>restaurant', 'images/Q10/Gourmet Restaurant.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `response_values`
--

CREATE TABLE `response_values` (
  `id` int(255) NOT NULL,
  `question_id` int(255) DEFAULT NULL,
  `response_no` int(255) DEFAULT NULL,
  `archetype_no` int(255) DEFAULT NULL,
  `score` decimal(65,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `response_values`
--

INSERT INTO `response_values` (`id`, `question_id`, `response_no`, `archetype_no`, `score`) VALUES
(1, 1, 1, 1, '0.000'),
(2, 1, 1, 2, '1.096'),
(3, 1, 1, 3, '0.000'),
(4, 1, 1, 4, '0.000'),
(5, 1, 1, 5, '0.000'),
(6, 1, 1, 6, '1.096'),
(7, 1, 1, 7, '0.000'),
(8, 1, 1, 8, '0.000'),
(9, 1, 1, 9, '0.000'),
(10, 1, 2, 1, '0.000'),
(11, 1, 2, 2, '0.000'),
(12, 1, 2, 3, '0.000'),
(13, 1, 2, 4, '1.096'),
(14, 1, 2, 5, '1.096'),
(15, 1, 2, 6, '0.000'),
(16, 1, 2, 7, '0.000'),
(17, 1, 2, 8, '0.000'),
(18, 1, 2, 9, '0.000'),
(19, 1, 3, 1, '0.000'),
(20, 1, 3, 2, '0.000'),
(21, 1, 3, 3, '0.000'),
(22, 1, 3, 4, '0.000'),
(23, 1, 3, 5, '0.000'),
(24, 1, 3, 6, '0.000'),
(25, 1, 3, 7, '0.000'),
(26, 1, 3, 8, '0.000'),
(27, 1, 3, 9, '1.096'),
(28, 1, 4, 1, '0.000'),
(29, 1, 4, 2, '0.000'),
(30, 1, 4, 3, '1.096'),
(31, 1, 4, 4, '0.000'),
(32, 1, 4, 5, '0.000'),
(33, 1, 4, 6, '0.000'),
(34, 1, 4, 7, '0.000'),
(35, 1, 4, 8, '0.000'),
(36, 1, 4, 9, '0.000'),
(37, 2, 1, 1, '0.000'),
(38, 2, 1, 2, '0.000'),
(39, 2, 1, 3, '0.000'),
(40, 2, 1, 4, '0.000'),
(41, 2, 1, 5, '1.129'),
(42, 2, 1, 6, '0.000'),
(43, 2, 1, 7, '0.000'),
(44, 2, 1, 8, '0.000'),
(45, 2, 1, 9, '1.129'),
(46, 2, 2, 1, '0.000'),
(47, 2, 2, 2, '0.000'),
(48, 2, 2, 3, '1.129'),
(49, 2, 2, 4, '0.000'),
(50, 2, 2, 5, '0.000'),
(51, 2, 2, 6, '0.000'),
(52, 2, 2, 7, '0.000'),
(53, 2, 2, 8, '0.000'),
(54, 2, 2, 9, '0.000'),
(55, 2, 3, 1, '1.129'),
(56, 2, 3, 2, '0.000'),
(57, 2, 3, 3, '0.000'),
(58, 2, 3, 4, '0.000'),
(59, 2, 3, 5, '0.000'),
(60, 2, 3, 6, '1.129'),
(61, 2, 3, 7, '0.000'),
(62, 2, 3, 8, '0.000'),
(63, 2, 3, 9, '0.000'),
(64, 2, 4, 1, '0.000'),
(65, 2, 4, 2, '0.000'),
(66, 2, 4, 3, '0.000'),
(67, 2, 4, 4, '0.000'),
(68, 2, 4, 5, '0.000'),
(69, 2, 4, 6, '1.129'),
(70, 2, 4, 7, '0.000'),
(71, 2, 4, 8, '1.129'),
(72, 2, 4, 9, '0.000'),
(73, 3, 1, 1, '0.000'),
(74, 3, 1, 2, '1.107'),
(75, 3, 1, 3, '0.000'),
(76, 3, 1, 4, '0.000'),
(77, 3, 1, 5, '0.000'),
(78, 3, 1, 6, '1.107'),
(79, 3, 1, 7, '1.107'),
(80, 3, 1, 8, '1.107'),
(81, 3, 1, 9, '0.000'),
(82, 3, 2, 1, '1.107'),
(83, 3, 2, 2, '0.000'),
(84, 3, 2, 3, '0.000'),
(85, 3, 2, 4, '0.000'),
(86, 3, 2, 5, '0.000'),
(87, 3, 2, 6, '0.000'),
(88, 3, 2, 7, '1.107'),
(89, 3, 2, 8, '1.107'),
(90, 3, 2, 9, '0.000'),
(91, 3, 3, 1, '0.000'),
(92, 3, 3, 2, '0.000'),
(93, 3, 3, 3, '1.107'),
(94, 3, 3, 4, '0.000'),
(95, 3, 3, 5, '1.107'),
(96, 3, 3, 6, '0.000'),
(97, 3, 3, 7, '0.000'),
(98, 3, 3, 8, '0.000'),
(99, 3, 3, 9, '1.107'),
(100, 3, 4, 1, '0.000'),
(101, 3, 4, 2, '0.000'),
(102, 3, 4, 3, '0.000'),
(103, 3, 4, 4, '1.107'),
(104, 3, 4, 5, '0.000'),
(105, 3, 4, 6, '0.000'),
(106, 3, 4, 7, '1.107'),
(107, 3, 4, 8, '0.000'),
(108, 3, 4, 9, '0.000'),
(109, 4, 1, 1, '0.000'),
(110, 4, 1, 2, '1.118'),
(111, 4, 1, 3, '1.118'),
(112, 4, 1, 4, '0.000'),
(113, 4, 1, 5, '0.000'),
(114, 4, 1, 6, '0.000'),
(115, 4, 1, 7, '0.000'),
(116, 4, 1, 8, '1.118'),
(117, 4, 1, 9, '0.000'),
(118, 4, 2, 1, '0.000'),
(119, 4, 2, 2, '0.000'),
(120, 4, 2, 3, '0.000'),
(121, 4, 2, 4, '1.118'),
(122, 4, 2, 5, '0.000'),
(123, 4, 2, 6, '1.118'),
(124, 4, 2, 7, '1.118'),
(125, 4, 2, 8, '0.000'),
(126, 4, 2, 9, '1.118'),
(127, 4, 3, 1, '0.000'),
(128, 4, 3, 2, '0.000'),
(129, 4, 3, 3, '0.000'),
(130, 4, 3, 4, '1.118'),
(131, 4, 3, 5, '0.000'),
(132, 4, 3, 6, '1.118'),
(133, 4, 3, 7, '1.118'),
(134, 4, 3, 8, '1.118'),
(135, 4, 3, 9, '0.000'),
(136, 4, 4, 1, '1.118'),
(137, 4, 4, 2, '1.118'),
(138, 4, 4, 3, '1.118'),
(139, 4, 4, 4, '0.000'),
(140, 4, 4, 5, '1.118'),
(141, 4, 4, 6, '0.000'),
(142, 4, 4, 7, '0.000'),
(143, 4, 4, 8, '0.000'),
(144, 4, 4, 9, '0.000'),
(145, 5, 1, 1, '1.074'),
(146, 5, 1, 2, '0.000'),
(147, 5, 1, 3, '0.000'),
(148, 5, 1, 4, '0.000'),
(149, 5, 1, 5, '0.000'),
(150, 5, 1, 6, '1.074'),
(151, 5, 1, 7, '0.000'),
(152, 5, 1, 8, '0.000'),
(153, 5, 1, 9, '0.000'),
(154, 5, 2, 1, '0.000'),
(155, 5, 2, 2, '1.074'),
(156, 5, 2, 3, '1.074'),
(157, 5, 2, 4, '1.074'),
(158, 5, 2, 5, '1.074'),
(159, 5, 2, 6, '0.000'),
(160, 5, 2, 7, '1.074'),
(161, 5, 2, 8, '1.074'),
(162, 5, 2, 9, '1.074'),
(163, 6, 1, 1, '0.000'),
(164, 6, 1, 2, '1.063'),
(165, 6, 1, 3, '0.000'),
(166, 6, 1, 4, '0.000'),
(167, 6, 1, 5, '0.000'),
(168, 6, 1, 6, '1.063'),
(169, 6, 1, 7, '0.000'),
(170, 6, 1, 8, '0.000'),
(171, 6, 1, 9, '1.063'),
(172, 6, 2, 1, '1.063'),
(173, 6, 2, 2, '0.000'),
(174, 6, 2, 3, '1.063'),
(175, 6, 2, 4, '1.063'),
(176, 6, 2, 5, '0.000'),
(177, 6, 2, 6, '0.000'),
(178, 6, 2, 7, '0.000'),
(179, 6, 2, 8, '1.063'),
(180, 6, 2, 9, '0.000'),
(181, 7, 1, 1, '1.085'),
(182, 7, 1, 2, '1.085'),
(183, 7, 1, 3, '0.000'),
(184, 7, 1, 4, '0.000'),
(185, 7, 1, 5, '1.085'),
(186, 7, 1, 6, '1.085'),
(187, 7, 1, 7, '0.000'),
(188, 7, 1, 8, '1.085'),
(189, 7, 1, 9, '0.000'),
(190, 7, 2, 1, '0.000'),
(191, 7, 2, 2, '0.000'),
(192, 7, 2, 3, '1.085'),
(193, 7, 2, 4, '1.085'),
(194, 7, 2, 5, '0.000'),
(195, 7, 2, 6, '0.000'),
(196, 7, 2, 7, '1.085'),
(197, 7, 2, 8, '0.000'),
(198, 7, 2, 9, '1.085'),
(199, 8, 1, 1, '1.052'),
(200, 8, 1, 2, '1.052'),
(201, 8, 1, 3, '0.000'),
(202, 8, 1, 4, '0.000'),
(203, 8, 1, 5, '0.000'),
(204, 8, 1, 6, '0.000'),
(205, 8, 1, 7, '0.000'),
(206, 8, 1, 8, '0.000'),
(207, 8, 1, 9, '0.000'),
(208, 8, 2, 1, '0.000'),
(209, 8, 2, 2, '0.000'),
(210, 8, 2, 3, '1.052'),
(211, 8, 2, 4, '1.052'),
(212, 8, 2, 5, '1.052'),
(213, 8, 2, 6, '1.052'),
(214, 8, 2, 7, '1.052'),
(215, 8, 2, 8, '1.052'),
(216, 8, 2, 9, '1.052'),
(217, 9, 1, 1, '0.000'),
(218, 9, 1, 2, '0.000'),
(219, 9, 1, 3, '0.000'),
(220, 9, 1, 4, '0.000'),
(221, 9, 1, 5, '1.041'),
(222, 9, 1, 6, '0.000'),
(223, 9, 1, 7, '0.000'),
(224, 9, 1, 8, '0.000'),
(225, 9, 1, 9, '0.000'),
(226, 9, 2, 1, '0.000'),
(227, 9, 2, 2, '0.000'),
(228, 9, 2, 3, '1.041'),
(229, 9, 2, 4, '1.041'),
(230, 9, 2, 5, '0.000'),
(231, 9, 2, 6, '0.000'),
(232, 9, 2, 7, '0.000'),
(233, 9, 2, 8, '0.000'),
(234, 9, 2, 9, '0.000'),
(235, 10, 1, 1, '0.000'),
(236, 10, 1, 2, '0.000'),
(237, 10, 1, 3, '1.030'),
(238, 10, 1, 4, '0.000'),
(239, 10, 1, 5, '0.000'),
(240, 10, 1, 6, '1.030'),
(241, 10, 1, 7, '0.000'),
(242, 10, 1, 8, '0.000'),
(243, 10, 1, 9, '0.000'),
(244, 10, 2, 1, '0.000'),
(245, 10, 2, 2, '1.030'),
(246, 10, 2, 3, '0.000'),
(247, 10, 2, 4, '0.000'),
(248, 10, 2, 5, '0.000'),
(249, 10, 2, 6, '0.000'),
(250, 10, 2, 7, '0.000'),
(251, 10, 2, 8, '1.030'),
(252, 10, 2, 9, '1.030');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archetypes`
--
ALTER TABLE `archetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `response_values`
--
ALTER TABLE `response_values`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archetypes`
--
ALTER TABLE `archetypes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `response_values`
--
ALTER TABLE `response_values`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
