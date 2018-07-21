-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2018 at 07:41 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_uauth`
--
CREATE DATABASE IF NOT EXISTS `ci_uauth` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ci_uauth`;

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PREFIX_email_templates`
--

DROP TABLE IF EXISTS `TABLE_PREFIX_email_templates`;
CREATE TABLE `TABLE_PREFIX_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_template_for` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_template_body` text COLLATE utf8_unicode_ci,
  `available_variable` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TABLE_PREFIX_email_templates`
--

INSERT INTO `TABLE_PREFIX_email_templates` (`id`, `email_slug`, `email_template_for`, `email_template_body`, `available_variable`, `status`) VALUES
(1, 'confirmation_email', 'Confirmation email', 'Hi #username,\\r\\nYour signup is successful. Please follow the below link for activating your account:\r\n\\r\\n \\r\\n<a href=\"#activationlink\">Click here to ativate</a> or copy following link and go to browser. #activationlink\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\nThanks\\r\\n#webadmin', '#username,#useremail,#activationlink,#webadmin', 1),
(2, 'recovery_email', 'Recovery email', 'Hi #username,\r\n\\r\\nWe have received an account recovery request from your email. Please follow the below link for setting new password \\r\\n\\r\\n#recoverylink\\r\\n\\r\\nThanks\\r\\n#webadmin', '#username,#recoverylink,#webadmin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PREFIX_users`
--

DROP TABLE IF EXISTS `TABLE_PREFIX_users`;
CREATE TABLE `TABLE_PREFIX_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_role` smallint(4) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT '',
  `last_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT '',
  `gender` tinyint(3) UNSIGNED DEFAULT NULL,
  `profile_picture` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `remember_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `recovery_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `activation_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `activated` tinyint(3) UNSIGNED DEFAULT '0',
  `activated_date` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) UNSIGNED DEFAULT '0',
  `banned` tinyint(1) UNSIGNED DEFAULT '0',
  `banned_date` datetime DEFAULT '0000-00-00 00:00:00',
  `banned_till` datetime DEFAULT '0000-00-00 00:00:00',
  `created_date` datetime DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT '0000-00-00 00:00:00',
  `logged_in` tinyint(1) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TABLE_PREFIX_users`
--

INSERT INTO `TABLE_PREFIX_users` (`id`, `user_role`, `username`, `email`, `password`, `first_name`, `last_name`, `gender`, `profile_picture`, `remember_key`, `recovery_key`, `activation_key`, `activated`, `activated_date`, `status`, `banned`, `banned_date`, `banned_till`, `created_date`, `ip_address`, `last_login`, `logged_in`) VALUES
(1, 4, 'iuttam', 'cseuttamiu@gmail.com', '$2y$10$7.KDDJcfqmfusFANSajLSOaMRyGaz1I0wz4nBEuQpAfzO1F6bOgga', 'Uttam', 'Roy', 0, '', '', '5b3d140adfaff', '5b34822f234a4', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 0),
(2, 4, 'subrata', 'subrata@gmail.com', '$2y$10$LUgxbqhOiMVXSN6lH0gJreeHCHoyVx/0MyG9ctCAIXs06ry7yjnd2', 'Subrata', 'Barman', 0, '', '', '', '5b39bef3e8954', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 0),
(4, 4, 'kumarroy', 'kumarroy@gmail.com', '$2y$10$hc8UQJtlcvcX4FNrl1G3gO3HCARRkV/tYAV.NUogBdnVQYbgg6caW', 'Kumar', 'Roy', 1, '', '', '', '5b3b2779490c7', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 0),
(5, 4, 'nurulislam', 'nurulislam@gmail.com', '$2y$10$1LBKYK.1psx/2Oui8swGQOaAamBlzVWfPj/q4WMyXaa4gAc/Zy01K', 'Nurul', 'Islam', 1, '', '', '', '5b3b3bdfbd5af', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 0),
(6, 4, 'aimitb', 'aimitb@gmail.com', '$2y$10$5pCt2SG9rE/EIygHGFDkKObTAs6mnoKS3bmVIrNjskTRWkp4pl0ve', 'Amit', 'Biswas', 1, '', '', '', '9a1f80fcfe7c5e7300e76731befadba5', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 0),
(7, 4, 'mizanrahman', 'mizanrahman@gmail.com', '$2y$10$EvT5lGlKLB2AzyUrJnKDP.O.wFl71Gfgp69.Ez.oARIwiqJeYTuM2', 'Mizanur', 'Rahman', 1, '', '', '', '', 0, '2018-07-03 17:07:19', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 0),
(8, 4, 'admin123', 'admin@admin.com', '$2y$10$gP5JNfESEt.h7M6GXtl5fes6OWe4KZ3deqCHnhWbldls4uEzyo7pK', 'Uttam Kumar', 'Roy', 1, '', '', '', '', 1, '2018-07-06 14:52:22', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 0),
(9, 4, 'amuktamuk', 'admin@amuktamuk.com', '$2y$10$KcHjLOySvdQ.HVQ1JcDkYOV/iBM9ehzyBf9gsiLp16keWUREMOgfS', 'Amuk', 'Tomuk', 1, '', '', '', '6628d5df6c92075e1e829ee396e6a5af', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 0),
(10, 4, 'tomukamuk', 'tomukamuk@tomukamuk.com', '$2y$10$VbgMzwOws6YzeJyo4d8Ce.CYLtaneXMH9hV.n8Q6kurA3oYXbu/bi', 'Tomuk', 'Amuk', 1, '', '', '', '3a24fd6e72e5e375039d935b179b028d', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PREFIX_variables`
--

DROP TABLE IF EXISTS `TABLE_PREFIX_variables`;
CREATE TABLE `TABLE_PREFIX_variables` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `variable_value` text COLLATE utf8_unicode_ci,
  `variable_type` tinyint(4) UNSIGNED DEFAULT '1' COMMENT '1= Single 2 = Multiple',
  `status` tinyint(4) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TABLE_PREFIX_variables`
--

INSERT INTO `TABLE_PREFIX_variables` (`id`, `variable_name`, `variable_value`, `variable_type`, `status`) VALUES
(1, 'site_name', 'yourdomain', 1, 1),
(2, 'site_url', 'yourdomain.com', 1, 1),
(3, 'contact_email', 'support@yourdomain.com', 1, 1),
(4, 'webadmin_name', 'Webadmin', 1, 1),
(5, 'webadmin_email', 'support@yourdomain.com', 1, 1),
(6, 'test_json', '{\"contact_email\":\"support@yourdomain.com\",\"webadmin_name\":\"Webadmin\",\"webadmin_email\":\"support@yourdomain.com\"}', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `TABLE_PREFIX_email_templates`
--
ALTER TABLE `TABLE_PREFIX_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TABLE_PREFIX_users`
--
ALTER TABLE `TABLE_PREFIX_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TABLE_PREFIX_variables`
--
ALTER TABLE `TABLE_PREFIX_variables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `TABLE_PREFIX_email_templates`
--
ALTER TABLE `TABLE_PREFIX_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `TABLE_PREFIX_users`
--
ALTER TABLE `TABLE_PREFIX_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `TABLE_PREFIX_variables`
--
ALTER TABLE `TABLE_PREFIX_variables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
