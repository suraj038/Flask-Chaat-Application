-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 06:56 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surajchat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `msg_by` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `body`, `msg_by`, `msg_to`, `msg_time`) VALUES
(189, 'hey carry..', 1, 15, '2020-06-15 16:50:58'),
(188, 'hey suraj, how r u ?', 15, 1, '2020-06-15 16:50:49'),
(187, 'hey surya, how r u ??', 14, 13, '2020-06-15 16:26:50'),
(186, 'hey, this is surya', 13, 14, '2020-06-15 16:25:05'),
(190, 'how do u do?', 15, 1, '2020-06-15 16:51:18'),
(191, 'hey, suraj , how  r u ?', 1, 17, '2020-06-15 16:54:33'),
(192, 'hey, ajith !! i m doing good', 17, 1, '2020-06-15 16:54:51'),
(193, 'where r u ?', 1, 17, '2020-06-15 16:55:00'),
(194, 'i m n bangalore', 17, 1, '2020-06-15 16:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `reg_time`, `online`) VALUES
(15, 'carry', 'carry@gmail.com', 'carry', '$5$rounds=535000$QUHIn62/ZHngQ4Ij$n1V.8saGrZX7.3mbYUmJYQds39gJTqlHrSZfLxn5Zf3', '2020-06-15 16:39:02', '0'),
(16, 'rahul', 'rahul@gmail.com', 'rahul', '$5$rounds=535000$PGcrf61d0gm3XVDF$vmgbkDWpZYCvcY9e1u1NY3IijkqxGuEP96wDdMD4nl1', '2020-06-15 16:52:46', '0'),
(17, 'ajith', 'ajith@gmail.com', 'ajith', '$5$rounds=535000$Nt478XUmDWb5gaRY$Mr5zsdR7WIVeKms.Gwe7MPACwOxMJrVg.CJc4Cpvpp5', '2020-06-15 16:53:18', '0'),
(1, 'suraj', 'suraj@gmail.com', 'suraj', '$5$rounds=535000$ub.59vcQ.KVUEfms$ZJl6UHBZJXpSvYbxbyvw5uKPKYF1Lr2FxZMNCeWAib3', '2020-06-15 16:15:29', '0'),
(2, 'surya', 'surya@gmail.com', 'surya', '$5$rounds=535000$Mv.t2wkx11vOeFbv$.ZXzG5uq/Up5bH50bLG1vaLZKsLuIhrbtut/zSL5QW1', '2020-06-15 16:20:51', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
