-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2017 at 07:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webims`
--

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` int(7) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(3) NOT NULL DEFAULT '999',
  `_by` int(7) NOT NULL DEFAULT '0',
  `_from` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`id`, `code`, `text`, `sort`, `_by`, `_from`, `_on`) VALUES
(1, 'ex-1', 'Instructed to return to station ASAP', 999, 0, '', '2017-07-17 04:11:22'),
(2, 'ex-2', 'Requested to contact Dispatch Central by voice', 999, 0, '', '2017-07-17 04:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `id` int(2) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` longtext,
  `icon` varchar(128) NOT NULL,
  `_by` int(6) NOT NULL,
  `_on` datetime NOT NULL,
  `_from` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(7) NOT NULL,
  `name` varchar(48) NOT NULL,
  `organization` varchar(48) DEFAULT NULL,
  `phone` varchar(24) DEFAULT NULL,
  `mobile` varchar(24) DEFAULT NULL,
  `email` varchar(48) NOT NULL,
  `other` varchar(24) DEFAULT NULL,
  `as-of` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dispach`
--

CREATE TABLE `dispach` (
  `id` int(11) NOT NULL,
  `cad` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) CHARACTER SET utf8 NOT NULL,
  `location` text NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000' ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dispach`
--

INSERT INTO `dispach` (`id`, `cad`, `name`, `location`, `date`) VALUES
(1, 10, 'Flooding', 'SR 20 Crill ave at RR Under pass', '2017-06-05 00:00:00.000000'),
(2, 11, 'Qi Roberts', '', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE `doc` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` enum('locked','unlocked','na') NOT NULL DEFAULT 'na',
  `locked_by` int(7) NOT NULL COMMENT 'user index',
  `locked_on` datetime DEFAULT NULL,
  `info` tinytext,
  `keyword` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED DEFAULT NULL,
  `source` int(10) UNSIGNED DEFAULT NULL,
  `maintainer` int(10) UNSIGNED DEFAULT NULL,
  `revision` varchar(64) DEFAULT NULL COMMENT 'revision information',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `by` int(7) NOT NULL COMMENT 'user index',
  `from` varchar(16) NOT NULL COMMENT 'IP addr',
  `on` datetime NOT NULL COMMENT 'last update'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(8) NOT NULL,
  `name` text,
  `street` varchar(28) DEFAULT NULL,
  `city` varchar(28) DEFAULT NULL,
  `state` char(4) DEFAULT NULL,
  `direcs` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0=>no directions, 1=> yes',
  `description` text NOT NULL,
  `beds_a` varchar(6) DEFAULT NULL COMMENT 'Available',
  `beds_o` varchar(6) DEFAULT NULL COMMENT 'Occupied',
  `beds_info` varchar(2048) DEFAULT NULL COMMENT 'Information',
  `capab` varchar(255) DEFAULT NULL COMMENT 'Capability',
  `status_id` int(4) NOT NULL DEFAULT '0',
  `status_about` varchar(512) DEFAULT NULL,
  `other` varchar(96) DEFAULT NULL,
  `handle` varchar(24) DEFAULT NULL,
  `icon_str` char(3) DEFAULT NULL COMMENT 'map icon value',
  `boundary` int(3) NOT NULL DEFAULT '0',
  `contact_name` varchar(64) DEFAULT NULL,
  `send_no` varchar(64) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `type` smallint(5) NOT NULL DEFAULT '0',
  `updated` datetime DEFAULT NULL,
  `user_id` int(4) DEFAULT NULL,
  `callsign` varchar(24) DEFAULT NULL,
  `notify_when` int(1) NOT NULL DEFAULT '1' COMMENT 'Sets when to notify facility, 1,2 or 3 for all, open or close',
  `_by` int(7) DEFAULT NULL,
  `_from` varchar(16) DEFAULT NULL,
  `_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `name` char(100) CHARACTER SET utf8 NOT NULL,
  `status` char(50) CHARACTER SET utf8 NOT NULL,
  `location` text CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `resources` char(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`name`, `status`, `location`, `description`, `resources`) VALUES
('Buckman Fire', 'Active', 'Ocala National Forest', '10 Acre Wild Fire', 'None'),
('Road Flooding SR-20 underpass', 'Active', 'ST -20', 'Flooding at St road 20 underpass', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `in_types`
--

CREATE TABLE `in_types` (
  `id` bigint(4) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` varchar(60) NOT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `set_severity` int(1) NOT NULL DEFAULT '0' COMMENT 'sets incident severity',
  `watch` int(2) NOT NULL DEFAULT '0',
  `group` varchar(20) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `radius` int(4) DEFAULT NULL,
  `color` varchar(8) DEFAULT NULL,
  `opacity` int(3) DEFAULT NULL,
  `notify_mailgroup` int(4) DEFAULT NULL,
  `notify_email` varchar(256) DEFAULT NULL,
  `notify_when` int(1) NOT NULL DEFAULT '1' COMMENT 'When Notifies are sent, 1,2 or 3 for all, open or close'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Incident types';

--
-- Dumping data for table `in_types`
--

INSERT INTO `in_types` (`id`, `type`, `description`, `protocol`, `set_severity`, `watch`, `group`, `sort`, `radius`, `color`, `opacity`, `notify_mailgroup`, `notify_email`, `notify_when`) VALUES
(1, 'examp1', 'Example one', NULL, 0, 0, 'grp 1', 1, 0, NULL, 0, NULL, NULL, 1),
(2, 'examp2', 'Example two', NULL, 0, 0, 'grp 2', 2, 0, NULL, 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `location` char(50) CHARACTER SET utf8 NOT NULL,
  `info` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mmarkup`
--

CREATE TABLE `mmarkup` (
  `id` bigint(4) NOT NULL,
  `line_name` varchar(32) NOT NULL,
  `line_status` int(2) NOT NULL DEFAULT '0' COMMENT '0 => show, 1 => hide',
  `line_type` varchar(1) DEFAULT NULL COMMENT 'poly, circle, banner, ellipse',
  `line_ident` varchar(10) DEFAULT NULL,
  `line_cat_id` int(3) NOT NULL DEFAULT '0',
  `line_data` varchar(4096) NOT NULL,
  `use_with_bm` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'use with base map',
  `use_with_r` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'use with regions',
  `use_with_f` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'use with facilities',
  `use_with_u_ex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'use with units - exclusion zone',
  `use_with_u_rf` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'use with units - ringfence',
  `line_color` varchar(8) DEFAULT NULL,
  `line_opacity` float DEFAULT NULL,
  `line_width` int(2) DEFAULT NULL,
  `fill_color` varchar(8) DEFAULT NULL,
  `fill_opacity` float DEFAULT NULL,
  `filled` int(1) DEFAULT '0',
  `_by` int(7) NOT NULL DEFAULT '0',
  `_from` varchar(16) DEFAULT NULL,
  `_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Lines and borders';

--
-- Dumping data for table `mmarkup`
--

INSERT INTO `mmarkup` (`id`, `line_name`, `line_status`, `line_type`, `line_ident`, `line_cat_id`, `line_data`, `use_with_bm`, `use_with_r`, `use_with_f`, `use_with_u_ex`, `use_with_u_rf`, `line_color`, `line_opacity`, `line_width`, `fill_color`, `fill_opacity`, `filled`, `_by`, `_from`, `_on`) VALUES
(1, 'test', 0, 'c', 'test', 5, '29.993002,-81.683807;11', 1, 0, 0, 0, 0, 'FF0000', 0.5, 2, 'FF0000', 0.5, 0, 1, '::1', '2017-07-19 02:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `mmarkup_cats`
--

CREATE TABLE `mmarkup_cats` (
  `id` bigint(4) NOT NULL,
  `category` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `_by` int(7) NOT NULL DEFAULT '0',
  `_from` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Map markup categories';

--
-- Dumping data for table `mmarkup_cats`
--

INSERT INTO `mmarkup_cats` (`id`, `category`, `_by`, `_from`, `_on`) VALUES
(1, 'Region Boundary', 1, 'install routine', '2017-07-17 10:11:24'),
(2, 'Banners', 1, 'install routine', '2017-07-17 10:11:24'),
(3, 'Facility Catchment', 1, 'install routine', '2017-07-17 10:11:24'),
(4, 'Ring Fence', 1, 'install routine', '2017-07-17 10:11:24'),
(5, 'Exclusion Zone', 1, 'install routine', '2017-07-17 10:11:24'),
(6, 'Basemap', 0, 'Install Routine', '2017-07-17 04:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `organisations`
--

CREATE TABLE `organisations` (
  `id` int(4) NOT NULL,
  `name` varchar(128) NOT NULL,
  `street` varchar(256) NOT NULL,
  `city` varchar(64) NOT NULL,
  `state` varchar(4) NOT NULL,
  `tel` varchar(16) NOT NULL,
  `email` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `callsign` varchar(8) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL,
  `st` varchar(2) NOT NULL,
  `phone` varchar(14) NOT NULL DEFAULT '(***)-***-****',
  `capabilities` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`id`, `name`, `callsign`, `address`, `city`, `st`, `phone`, `capabilities`, `notes`) VALUES
(1, 'Bob elder', 'N7WWK', '2112 Crill Ave', 'Palatka', 'FL', '386-385-2664', 'Extra Class Ham cpr first aid wilderness first responder', 'ICS-100,200,300,400,800,802'),
(2, 'Linda O\'Byrne', 'KI4WQF', '2111 Alice Street', 'Palatka', 'FL', '352-214-0467', 'CDL Bus Driver', 'ICS-100,200');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(8) NOT NULL,
  `description` varchar(256) NOT NULL,
  `ticket_id` int(7) NOT NULL COMMENT 'associated ticket id',
  `taken_by` varchar(48) DEFAULT NULL,
  `taken_on` varchar(24) DEFAULT NULL,
  `by` int(7) NOT NULL COMMENT 'user id',
  `on` datetime NOT NULL,
  `from` varchar(16) NOT NULL COMMENT 'ip address'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
-- Table structure for table `responder`
--

CREATE TABLE `responder` (
  `id` bigint(8) NOT NULL,
  `name` text,
  `street` varchar(28) DEFAULT NULL,
  `city` varchar(28) DEFAULT NULL,
  `state` char(4) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `mobile` tinyint(2) DEFAULT '0',
  `direcs` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0=>no directions, 1=> yes',
  `multi` int(1) NOT NULL DEFAULT '0' COMMENT 'if 1, allow multiple call assigns',
  `aprs` tinyint(2) NOT NULL DEFAULT '0',
  `instam` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'instamapper',
  `ogts` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'value = 1 iff unit uses OpenGTS tracking',
  `t_tracker` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'if 1 unit uses LocateA tracking - required to set callsign',
  `mob_tracker` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'if 1 unit uses Mobile screen tracking - callsign set automatically',
  `xastir_tracker` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'APRS tracking using XASTIR',
  `ring_fence` int(3) NOT NULL DEFAULT '0',
  `excl_zone` int(3) NOT NULL DEFAULT '0',
  `locatea` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'if 1 unit uses LocateA tracking - required to set callsign',
  `gtrack` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'if 1 unit uses Gtrack tracking - required to set callsign',
  `glat` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'if 1 unit uses Google Latitude tracking - required to set callsign',
  `description` text NOT NULL,
  `capab` varchar(255) DEFAULT NULL COMMENT 'Capability',
  `un_status_id` int(4) NOT NULL DEFAULT '0',
  `status_about` varchar(512) DEFAULT NULL,
  `other` varchar(96) DEFAULT NULL,
  `callsign` varchar(24) DEFAULT NULL,
  `handle` varchar(24) DEFAULT NULL COMMENT 'Unit Handle',
  `icon_str` char(3) DEFAULT NULL COMMENT 'map icon value',
  `contact_name` varchar(64) DEFAULT NULL,
  `contact_via` varchar(64) DEFAULT NULL,
  `smsg_id` varchar(16) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `at_facility` int(6) NOT NULL DEFAULT '0',
  `updated` datetime DEFAULT NULL,
  `status_updated` datetime DEFAULT NULL,
  `user_id` int(4) DEFAULT NULL,
  `followmee_tracker` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'Tracking using FollowMee'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shelter`
--

CREATE TABLE `shelter` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shelter`
--

INSERT INTO `shelter` (`id`, `name`) VALUES
(1, 'QI Roberts Middle School');

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
(15, 'Palatka High School', 'status', '', '', 'yes', '', '', '0000-00-00 00:00:00'),
(16, 'Middelton Burney Elementry', 'status', '', '0', 'yes', '', '', '0000-00-00 00:00:00'),
(17, 'Cresent City High School', 'status', '', '0', 'yes', '', 'pets', '0000-00-00 00:00:00');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cad_2` (`cad`),
  ADD UNIQUE KEY `cad_3` (`cad`),
  ADD KEY `cad` (`cad`);

--
-- Indexes for table `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shelter`
--
ALTER TABLE `shelter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`status`,`adult`,`children`,`leo`,`ems`,`pets`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dispach`
--
ALTER TABLE `dispach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `shelter`
--
ALTER TABLE `shelter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
