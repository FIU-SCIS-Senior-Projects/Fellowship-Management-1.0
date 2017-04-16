-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2017 at 09:28 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_fellowship`
--

-- --------------------------------------------------------

--
-- Table structure for table `deadlines`
--

CREATE TABLE `deadlines` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deadlines`
--

INSERT INTO `deadlines` (`id`, `name`) VALUES
(1, 'Fall'),
(2, 'Spring'),
(3, 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `name`) VALUES
(1, 'Master'),
(2, 'PhD'),
(3, 'Post-Master\'s'),
(4, 'Postdoctoral'),
(5, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `disciplines`
--

CREATE TABLE `disciplines` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disciplines`
--

INSERT INTO `disciplines` (`id`, `name`) VALUES
(1, 'Arts'),
(2, 'Engineering'),
(3, 'Humanities'),
(4, 'Life Sciences'),
(5, 'Mathematics'),
(6, 'Physical Sciences'),
(7, 'Social Sciences'),
(8, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `elegibilities`
--

CREATE TABLE `elegibilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `elegibilities`
--

INSERT INTO `elegibilities` (`id`, `name`) VALUES
(1, 'U.S. Citizen'),
(2, 'U.S. Permanent Resident'),
(3, 'F-1 International Student Visa'),
(4, 'Financial needs'),
(5, 'Under-represented minority'),
(6, 'Women'),
(7, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `fellowships`
--

CREATE TABLE `fellowships` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `description` text,
  `degree_id` int(11) DEFAULT NULL,
  `discipline_id` int(11) DEFAULT NULL,
  `elegibility_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fellowships`
--

INSERT INTO `fellowships` (`id`, `title`, `body`, `created`, `modified`, `description`, `degree_id`, `discipline_id`, `elegibility_id`, `user_id`) VALUES
(5, 'Donald Trump Fellowship $19500', 'Donald Trump Organization is providing this fellowship.', '2017-02-03 20:25:01', '2017-03-26 22:25:07', 'Donald Trump Organization is providing this fellowship.', 1, 2, 2, 1),
(9, 'NYU Partnership with FIU Fellowship', 'This fellowship is funded by NYU and FIU.', '2017-02-07 01:30:56', '2017-02-12 07:28:42', 'This fellowship is funded by NYU and FIU.', 2, 1, 2, 1),
(12, 'FIU Fishbowl Fellowship', 'This Fishbowl Fellowship is funded by the Sea World.', '2017-02-12 08:44:16', '2017-02-12 08:44:16', 'This Fishbowl Fellowship is funded by the Sea World.', 1, 3, 1, 1),
(13, 'Marathon Runners Fellowship', 'This fellowship is worth $2.', '2017-02-12 08:46:01', '2017-02-12 08:46:01', 'This fellowship is worth $2.', 2, 3, 1, 1),
(15, 'Construction Guild Fellowship', 'This fellowship is worth $4,500.', '2017-02-12 08:49:39', '2017-02-12 08:49:39', 'This fellowship is worth $4,500.', 3, 2, 2, 1),
(16, 'Star of David Fellowship', 'This fellowship is worth $7,000.', '2017-02-12 08:50:23', '2017-02-12 08:50:23', 'This fellowship is worth $7,000.', 1, 1, 2, 1),
(18, 'Automobile Manufacturer Fellowship', '$200,000', '2017-02-12 08:52:10', '2017-02-12 08:52:10', '$200,000', 2, 2, 1, 1),
(20, 'Intel Fellowship', '$1,000', '2017-02-12 08:53:21', '2017-02-12 08:53:21', '$1,000', 3, 2, 1, 1),
(21, 'Plant a Tree Foundation Fellowship', '$3000', '2017-02-13 02:24:41', '2017-02-13 02:24:41', '$3000', 2, 1, 1, 1),
(22, 'Plant Many Trees Fellowship', '$3000', '2017-02-13 04:13:36', '2017-02-13 04:13:36', '$3000', 2, 1, 3, 1),
(32, 'Fellowship 123', 'Fellowship 123', '2017-03-10 19:15:40', '2017-03-10 19:15:40', 'Fellowship 123', 3, 3, 3, 1),
(33, 'Invalid Fellowship', 'Invalid', '2017-03-10 20:12:12', '2017-03-10 20:12:12', 'Invalid', 1, 2, 3, 1),
(34, 'Invalid2', 'Invalid2', '2017-03-10 20:52:36', '2017-03-10 20:52:36', 'Invalid2', 1, 2, 2, 1),
(35, 'think of a new name', 'new name', '2017-03-19 21:01:44', '2017-03-19 21:01:44', 'new name', 3, 1, 2, 1),
(37, 'McJob2', 'Fellowship', '2017-03-26 18:01:59', '2017-03-26 18:02:16', 'Fellowship', 2, 1, 2, 1),
(40, 'Heat Basketball Fellowship', 'Heat Basketball Fellowship', '2017-03-27 02:17:58', '2017-03-27 02:17:58', 'Heat Basketball Fellowship', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Fellow'),
(3, 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `gpa` float NOT NULL DEFAULT '0',
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `password`, `created`, `modified`, `gpa`, `last_name`, `first_name`, `role_id`, `address`) VALUES
(1, 'admin', 'w', 'c56e35e413b4fb6aba43f15e8111c4966c737876', '2017-02-07 01:30:56', '2017-04-16 20:25:37', 2, '1', 'User', 1, ''),
(7, 'fellow', 'f', '8ba299dfcc321932170f99f036da17ae5c6c58ee', '2017-02-07 01:30:56', '2017-04-16 20:25:58', 3.4, '3', 'User', 2, ''),
(9, 'admin', 'admin', 'b56b44a22e00e39a6c8206cdc5c54e11772bd14d', '2017-02-07 01:30:56', '2017-04-16 20:25:49', 0, '2', 'User', 1, ''),
(14, 'fellow', 'john', '711da1031d6ee94c84b37d8f0205d284afb8a5e5', '2017-02-07 01:30:56', '2017-04-16 20:26:07', 2.1, '4', 'User', 2, ''),
(18, 'regular', 'awd2', '346e14459f46af9f6bae7a47c802eef7c19c7e55', '2017-02-07 01:30:56', '2017-04-16 20:26:39', 2.5, '5', 'User', 3, ''),
(35, 'regular', 'fth', 'e911de218640f73955039bf77d74c0fb29581f4b', '2017-02-07 01:30:56', '2017-04-16 20:26:27', 3, '6', 'User', 3, ''),
(42, 'regular', 'amorales', '$2y$10$aZYrXprDl8h3BfgoEnngGujjiLdH8K4k2if0klGXxl7hCK.tgt/TO', NULL, NULL, 3.25, 'Morales', 'Alfredo', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_fellowships`
--

CREATE TABLE `users_fellowships` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `fellowship_id` int(10) UNSIGNED NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_fellowships`
--

INSERT INTO `users_fellowships` (`id`, `user_id`, `fellowship_id`, `created`) VALUES
(1, 7, 5, NULL),
(3, 7, 9, NULL),
(22, 18, 5, NULL),
(48, 7, 37, NULL),
(49, 7, 18, NULL),
(50, 7, 12, NULL),
(51, 7, 40, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fellowships`
--
ALTER TABLE `fellowships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- Indexes for table `users_fellowships`
--
ALTER TABLE `users_fellowships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`user_id`),
  ADD KEY `f_id` (`fellowship_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fellowships`
--
ALTER TABLE `fellowships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `users_fellowships`
--
ALTER TABLE `users_fellowships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_fellowships`
--
ALTER TABLE `users_fellowships`
  ADD CONSTRAINT `f_for` FOREIGN KEY (`fellowship_id`) REFERENCES `fellowships` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `u_for` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
