-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2017 at 08:03 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webims-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispach`
--

CREATE TABLE `dispach` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cad` varchar(20) NOT NULL,
  `name` char(50) CHARACTER SET utf8 NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `id` int(11) NOT NULL,
  `tactical_id` int(11) NOT NULL,
  `tactical` char(50) CHARACTER SET utf8 NOT NULL,
  `name` char(100) CHARACTER SET utf8 NOT NULL,
  `type` char(50) CHARACTER SET utf8 NOT NULL,
  `status` char(50) CHARACTER SET utf8 NOT NULL,
  `location` char(50) CHARACTER SET utf8 NOT NULL,
  `latitude` char(10) CHARACTER SET utf8 NOT NULL,
  `longitude` char(10) CHARACTER SET utf8 NOT NULL,
  `map_name` char(50) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `sheltered` char(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`id`, `tactical_id`, `tactical`, `name`, `type`, `status`, `location`, `latitude`, `longitude`, `map_name`, `description`, `sheltered`) VALUES
(1, 10, 'sr20 flood', 'st road 20 crill flood', 'flood', 'aactive', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `name` int(11) NOT NULL,
  `location` char(50) CHARACTER SET utf8 NOT NULL,
  `lat` char(50) CHARACTER SET utf8 NOT NULL,
  `lon` char(50) CHARACTER SET utf8 NOT NULL,
  `info` char(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `content`) VALUES
(1, 'Welcome To Web Incident Management System'),
(2, 'Shelters opening in 3 hours');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `name`, `type`, `notes`) VALUES
(1, 'Radio Operator', 'Ham Radio', 'Licensed Ham Radio Communication volunteer'),
(2, 'Radio Operator', 'Non-Ham', 'Non-licensed Radio Operator'),
(3, 'BBHN Node', 'Linksys ', 'Linksys BBHN Ham Mesh Node');

-- --------------------------------------------------------

--
-- Table structure for table `shelter`
--

CREATE TABLE `shelter` (
  `id` int(11) NOT NULL,
  `tactical` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shelter`
--

INSERT INTO `shelter` (`id`, `tactical`, `name`, `type`) VALUES
(1, 'QIR', 'QI Roberts Middle School', 'General Needs');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(10) NOT NULL,
  `name` char(100) CHARACTER SET utf8 NOT NULL,
  `status` char(50) CHARACTER SET utf8 NOT NULL,
  `adult` char(10) CHARACTER SET utf8 NOT NULL,
  `children` char(10) CHARACTER SET utf8 NOT NULL,
  `leo` char(10) CHARACTER SET utf8 NOT NULL,
  `ems` char(10) CHARACTER SET utf8 NOT NULL,
  `pets` char(10) CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `status`, `adult`, `children`, `leo`, `ems`, `pets`, `date`) VALUES
(1, 'Kelley Smith Elementry School', 'Closed', '0', '0', '0', '0', '0', '0000-00-00 00:00:00'),
(2, 'QI Roberts Middel School', 'Closed', '0', '0', '0', '0', '0', '0000-00-00 00:00:00'),
(3, 'Ochwilla Elementry School', 'Closed', '0', '0', '0', '0', '0', '0000-00-00 00:00:00'),
(4, 'Interlachel Elementry School', 'Closed', '0', '0', '0', '0', '0', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(15, 'admin', '$2y$10$vB3U.IpuzIh1tNqq7.0Q6eLKZ1s.e79NbjTSUZhcnbdtxGZnqzory', '2017-07-11 12:03:21'),
(16, 'n7wwk', '$2y$10$6o5r.22Jxaz0TUMyBB.k.Of83CupnSA4B1zpHExKV5pyKdZkv8pWW', '2017-07-11 14:21:40'),
(17, 'QIRoberts', '$2y$10$VFjCi8qOOwF32KeGreCo8.e9a5WPPfQNmDkXLQAIsMafgHeQgwFJ.', '2017-07-11 14:24:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispach`
--
ALTER TABLE `dispach`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `cad` (`cad`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dispach`
--
ALTER TABLE `dispach`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
