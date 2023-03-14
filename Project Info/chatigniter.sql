-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 05:46 AM
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
-- Database: `chatigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `block_user`
--

CREATE TABLE `block_user` (
  `blocked_from` varchar(10) NOT NULL,
  `blocked_to` varchar(10) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `unique_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_fname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_lname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bio` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `user_pass` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_avtar` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_logout` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `unique_id`, `user_fname`, `user_lname`, `user_email`, `bio`, `created_at`, `dob`, `phone`, `address`, `user_pass`, `user_avtar`, `user_status`, `last_logout`) VALUES
(1, '2bc812', 'Sample', 'Account', 'sample@gmail.com', 'Just a dummy account', '20-6-2021', '12-12-1980', '7410000000', '69 Dummy Address', 'password', '9b1a8f8c.jpg', 'active', ''),
(2, '8986cb', 'Munna', 'Hasan', 'freelancermunna4@gmail.com', 'This is munna', '14-3-2023', '01-01-0000', '0193803102', 'Sirajganj', '1234', '5c82ae53.jpg', 'active', ''),
(3, 'cade9d', 'Sohan', 'Khan', 'sohan@gmail.com', '', '14-3-2023', '', '', '', '1234', '8a4964bb.jpg', 'active', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `time` datetime(6) NOT NULL,
  `sender_message_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `receiver_message_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `message` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`time`, `sender_message_id`, `receiver_message_id`, `message`) VALUES
('2023-03-14 10:29:56.000000', '8986cb', 'cade9d', 'Hi'),
('2023-03-14 10:30:27.000000', 'cade9d', '8986cb', 'Hello'),
('2023-03-14 10:31:10.000000', 'cade9d', '8986cb', 'Just Amizing'),
('2023-03-14 10:31:24.000000', '8986cb', 'cade9d', 'Yes... you can try now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`unique_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
