-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2017 at 04:14 AM
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
  `description` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `discipline_id` int(11) DEFAULT NULL,
  `elegibility_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fellowships`
--

INSERT INTO `fellowships` (`id`, `title`, `description`, `created`, `modified`, `degree_id`, `discipline_id`, `elegibility_id`, `user_id`) VALUES
(5, 'Donald Trump Fellowship', 'Donald Trump Organization is providing this fellowship.', '2017-02-03 20:25:01', '2017-02-12 07:30:43', 3, 2, 1, NULL),
(6, 'Faculdade do Rio de Jaineiro Intercambio Fellowshi', 'This fellowship is funded by FRJssssd asdasdasdasdasdasdasdasd', '2017-02-03 20:59:45', '2017-03-08 09:35:08', 1, 2, 3, 1),
(10, 'FIU Research Fellowship', 'This Fellowship is sponsored by the NSF.', '2017-02-12 07:22:18', '2017-02-12 07:22:18', 5, 1, 2, 1),
(12, 'FIU Fishbowl Fellowship', 'This Fishbowl Fellowship is funded by the Sea World.', '2017-02-12 08:44:16', '2017-02-12 08:44:16', 3, 3, 3, 1),
(13, 'Marathon Runners Fellowship', 'This fellowship is worth $2.', '2017-02-12 08:46:01', '2017-02-12 08:46:01', 4, 4, 4, 1),
(16, 'Star of David Fellowship', 'This fellowship is worth $7,000.', '2017-02-12 08:50:23', '2017-02-12 08:50:23', 3, 3, 3, 1),
(17, 'Clean Energy Fellowship', 'This fellowship is worth $400.', '2017-02-12 08:51:20', '2017-03-08 03:49:04', 1, 1, 1, 1),
(18, 'Short Video ', 'Short Video description 2', '2017-02-12 08:52:10', '2017-03-14 03:19:18', 4, 6, 2, 10),
(19, 'Solar Energy Fellowship', 'This fellowship is worth $4,000.', '2017-02-12 08:52:45', '2017-02-12 08:52:45', 1, 2, 2, 1),
(20, 'Intel Fellowship', '$1,000', '2017-02-12 08:53:21', '2017-02-12 08:53:21', 2, 1, 1, 1),
(21, 'New Ferllowship', 'Testing Adding a new Fellwship', '2017-03-14 03:21:24', '2017-03-14 03:21:24', 5, 4, 5, NULL);

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
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT '2017-02-07 01:30:56',
  `modified` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `last_name`, `first_name`, `username`, `password`, `created`, `modified`, `role_id`, `address`) VALUES
(1, 'Morales', 'Alfredo', 'a', '0f4d2ab862a03d0b261868f645b93743e926b458', '2017-02-07 01:30:56', '2017-03-14 01:54:46', 1, '124 WS 71 Street'),
(11, 'Fellow', 'Test', 'fe', 'd77de7d3cf5aed181a1243d7a02dc9585b1def6e', '2017-02-07 01:30:56', '2017-03-14 01:55:09', 2, '124 WS 71 Street'),
(12, 'Dev', 'Admin', 'adminDev', '54d457fc1650b73a10b5bf21007242fd3739fba1', '2017-02-07 01:30:56', '2017-03-14 01:55:43', 1, '124 WS 71 Street'),
(13, 'Morales', 'Alfredo', 'al', 'f1523b1eefb2d1824541527bb9a3169f899bb5e0', '2017-02-07 01:30:56', '2017-03-14 04:05:50', 1, '250 NE 25th Street\r\nMiami FL 33137'),
(14, 'Aldo123', 'morales', 'al', '8d037ce9faa942e2645777e503c7825f6d1b5511', '2017-02-07 01:30:56', '2017-03-07 05:10:14', 2, '124 WS 71 Street'),
(16, 'Regular', 'Test', 'reg', '333c591e2865b5d248bcd6ce31a21f66197a5ef5', '2017-02-07 01:30:56', '2017-03-14 04:00:34', 3, '2005 SW 58 ST\r\nMiami FL 33133'),
(19, 'Registration', 'Testing', 'test', '5725b1bea9deacf8c28effd61ebcea004ce6c39c', '2017-02-07 01:30:56', '2017-03-14 03:15:11', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_fellowships`
--

CREATE TABLE `users_fellowships` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `fellowship_id` int(10) UNSIGNED NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deadlines`
--
ALTER TABLE `deadlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disciplines`
--
ALTER TABLE `disciplines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elegibilities`
--
ALTER TABLE `elegibilities`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `deadlines`
--
ALTER TABLE `deadlines`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `disciplines`
--
ALTER TABLE `disciplines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `elegibilities`
--
ALTER TABLE `elegibilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fellowships`
--
ALTER TABLE `fellowships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `users_fellowships`
--
ALTER TABLE `users_fellowships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
