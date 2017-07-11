-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2017 at 04:58 PM
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
  `id` int(11) NOT NULL,
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
(1, 'Welcome To Web Incident Management System');

-- --------------------------------------------------------

--
-- Table structure for table `shelter`
--

CREATE TABLE `shelter` (
  `tactical` char(50) CHARACTER SET utf8 NOT NULL,
  `name` char(100) CHARACTER SET utf8 NOT NULL,
  `type` char(50) CHARACTER SET utf8 NOT NULL,
  `status` char(50) CHARACTER SET utf8 NOT NULL,
  `adult` char(10) CHARACTER SET utf8 NOT NULL,
  `children` char(10) CHARACTER SET utf8 NOT NULL,
  `leo` char(10) CHARACTER SET utf8 NOT NULL,
  `ems` char(10) CHARACTER SET utf8 NOT NULL,
  `pets` char(10) CHARACTER SET utf8 NOT NULL,
  `sheltered` char(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shelter`
--

INSERT INTO `shelter` (`tactical`, `name`, `type`, `status`, `adult`, `children`, `leo`, `ems`, `pets`, `sheltered`) VALUES
('QIR', 'QI Roberts Middle School', 'General Needs', 'Closed', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sheltered`
--

CREATE TABLE `sheltered` (
  `id` int(11) NOT NULL,
  `adults` char(50) CHARACTER SET utf8 NOT NULL,
  `children` char(50) CHARACTER SET utf8 NOT NULL,
  `leo` char(50) CHARACTER SET utf8 NOT NULL,
  `ems` char(50) CHARACTER SET utf8 NOT NULL,
  `pets` char(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'admin', '$2y$10$.GhwUvS54H0qLM9W7z/nFOlFnMTfkUqG.RTBUwUAVNQOq6GsVGlem', '2017-07-04 10:06:33'),
(2, 'QIRoberts', '$2y$10$sQvLPG4zQxNEEqdnfRiLuOcve11zx16CyrOlpEgIaHJNUV02QLeUy', '2017-07-04 12:19:23'),
(3, 'KellySmith', '$2y$10$EblVgcvsD7Ddz2703YxPY.dH5LpqmVwOEb2CNrsZbCCNYgxGKWwEe', '2017-07-04 12:19:54'),
(4, 'PalatkaHS', '$2y$10$oqxLgaEF8n3E0wrOJPit3.IDuINR5pJ.4ToDPe/HAAhydXtlgVFv2', '2017-07-04 12:44:03'),
(5, 'N7WWK', '$2y$10$.qHxQzJiWAz3W7AEOW4diedqA6otK0vxkVIDo0RWzkfnv8azcHFFW', '2017-07-04 13:14:28'),
(6, 'splash', '$2y$10$kNtO8vdUUh1vYZjhfglHM.MZQaYZx/XGl2sV0NCDY7051xaG.vsUm', '2017-07-08 10:52:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispach`
--
ALTER TABLE `dispach`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `shelter`
--
ALTER TABLE `shelter`
  ADD UNIQUE KEY `tactical` (`tactical`);

--
-- Indexes for table `sheltered`
--
ALTER TABLE `sheltered`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sheltered`
--
ALTER TABLE `sheltered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
