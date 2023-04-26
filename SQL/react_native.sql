-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 09:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_native`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `image`) VALUES
(1, 'About Us Title', 'About Us Description', 'about_us.jpg');about_us

-- --------------------------------------------------------

--
-- Table structure for table `ads_section`
--

CREATE TABLE `ads_section` (
  `id` int(11) NOT NULL,
  `ads_title` varchar(255) NOT NULL,
  `ads_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ads_section`
--

INSERT INTO `ads_section` (`id`, `ads_title`, `ads_description`) VALUES
(1, 'My Ads Title', 'My Ads Description......');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pandit_id` int(11) NOT NULL,
  `pooja_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `user_id`, `pandit_id`, `pooja_id`, `date`, `time`, `status`) VALUES
(1, 2, 3, 1, '03-04-2023', '04:50', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `message` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `message`, `created_at`) VALUES
(5, 'Ayush', 'ayush@gmail.com', '1234565432', 'hi i want know someting about your React Native App', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `global_setting`
--

CREATE TABLE `global_setting` (
  `id` int(11) NOT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `website_logo` varchar(120) DEFAULT NULL,
  `favicon_title` varchar(255) NOT NULL,
  `favicon_icon` varchar(100) DEFAULT NULL,
  `website_footer` varchar(255) DEFAULT NULL,
  `website_mobile` varchar(12) NOT NULL,
  `website_mobile2` varchar(12) NOT NULL,
  `website_email` varchar(100) NOT NULL,
  `website_email2` varchar(100) NOT NULL,
  `website_address` varchar(255) NOT NULL,
  `website_insta` text NOT NULL,
  `website_facebook_page` text NOT NULL,
  `website_youtube_channel` text NOT NULL,
  `website_twitter_page` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `global_setting`
--

INSERT INTO `global_setting` (`id`, `website_name`, `website_logo`, `favicon_title`, `favicon_icon`, `website_footer`, `website_mobile`, `website_mobile2`, `website_email`, `website_email2`, `website_address`, `website_insta`, `website_facebook_page`, `website_youtube_channel`, `website_twitter_page`, `created_at`) VALUES
(2, 'My React App Name', 'react_app_logo.png', 'My React App Name', 'react_app_favicon.png', 'Copyright © 2023 React App Name. All rights reserved.\n\n', '1234554321', '5432112345', 'reactapp1@gmail.com', 'reactapp2@gmail.com', 'ABC Building , Opposite XYZ Street , Mumbai', 'https://www.instagram.com/', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', '2023-04-05 21:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `pandit_details`
--

CREATE TABLE `pandit_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstName` varchar(250) NOT NULL,
  `lastName` varchar(250) NOT NULL,
  `image` text NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `feePerCunsultation` varchar(200) NOT NULL,
  `start_timing` varchar(250) NOT NULL,
  `end_timing` varchar(250) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `reviews` varchar(300) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pandit_details`
--

INSERT INTO `pandit_details` (`id`, `user_id`, `firstName`, `lastName`, `image`, `specialization`, `experience`, `feePerCunsultation`, `start_timing`, `end_timing`, `rating`, `reviews`, `status`) VALUES
(1, 3, 'Manish Suryawanshi', 'Pratab Suryawanshi', 'manish.jpg', 'Expert In Pandit Field', '3 years', '20', '03:50', '07:50', '', '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `pooja_category`
--

CREATE TABLE `pooja_category` (
  `id` int(12) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pooja_category`
--

INSERT INTO `pooja_category` (`id`, `name`) VALUES
(1, 'cat 1'),
(2, 'cat 2'),
(3, 'cat 3');

-- --------------------------------------------------------

--
-- Table structure for table `pooja_details`
--

CREATE TABLE `pooja_details` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `short_description` varchar(300) NOT NULL,
  `long_description` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pooja_details`
--

INSERT INTO `pooja_details` (`id`, `category_id`, `title`, `short_description`, `long_description`, `status`, `created_at`) VALUES
(1, 1, 'maha pooja', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'active', '2023-04-05 21:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `title`) VALUES
(1, '15712102932266slide-6.jpg', ''),
(2, '15712103562212slide-7.jpg', ''),
(3, '15712103656170slide-8.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `remember_me` varchar(10) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'user',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `mobile`, `email`, `pincode`, `address`, `remember_me`, `type`, `created_at`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1234567893', 'admin@gmail.com', '424001', 'XYZ Street', '0', 'admin', '2023-04-05 21:26:47'),
(2, 'Saud', 'saud123', '154b169e589ea874a39cd96b661c1115', '1234567891', 'saud@gmail.com', '424001', 'XYZ Street', '0', 'user', '2023-04-05 21:18:16'),
(3, 'Manish', 'manish123', 'b2fd8301040ce1dae22f4bfcd54017b0', '1234567892', 'manish@gmail.com', '424001', 'XYZ Street', '0', 'pandit', '2023-04-05 21:18:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_section`
--
ALTER TABLE `ads_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_setting`
--
ALTER TABLE `global_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pandit_details`
--
ALTER TABLE `pandit_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pooja_category`
--
ALTER TABLE `pooja_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pooja_details`
--
ALTER TABLE `pooja_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads_section`
--
ALTER TABLE `ads_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `global_setting`
--
ALTER TABLE `global_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pandit_details`
--
ALTER TABLE `pandit_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pooja_category`
--
ALTER TABLE `pooja_category`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pooja_details`
--
ALTER TABLE `pooja_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
