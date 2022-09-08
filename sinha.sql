-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2022 at 04:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sinha`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(10) NOT NULL,
  `albumimage` varchar(30) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `isPremium` int(10) NOT NULL,
  `isPublish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `albumimage`, `Title`, `Description`, `isPremium`, `isPublish`) VALUES
(27, '1.jpeg', 'Nako', 'Nako is an undiscovered realm of beauty. It is a lakeside hamlet, set on India-China border. The sno', 0, 1),
(28, '9.jpg', 'Kasol', 'Often referred as a ‘hippie heaven’ or ‘backpackers’ paradise’, Kasol is brimming with international', 0, 0),
(29, '10.jpg', 'Munsiyari', 'If you want to experience an organic way of life, look no further than Munsiyari; a tiny village in ', 0, 1),
(33, '25.jpg', 'Bangalore', 'Bangalore officially Bengaluru is the capital and largest city of the Indian state of Karnataka.', 1, 1),
(34, '31.jpg', 'Mumbai', 'Mumbai also known as Bombay the official name until 1995 is the capital city of the Indian state of ', 1, 1),
(35, '39.jpeg', 'Hyderabad', 'Hyderabad is the capital and largest city of the Indian state of Telangana and the de jure capital.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `albumid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `name`, `albumid`) VALUES
(52, '2.jpg', 27),
(53, '3.jpg', 27),
(54, '4.jpg', 27),
(55, '5.jpg', 28),
(56, '6.jpg', 28),
(57, '7.jpg', 28),
(58, '8.jpg', 28),
(59, '11.jpg', 29),
(60, '12.jpg', 29),
(61, '13.jpg', 29),
(62, '14.jpg', 29),
(63, '15.jpg', 29),
(67, '26.jpg', 33),
(68, '27.jpeg', 33),
(69, '27.jpeg', 33),
(70, '28.jpg', 33),
(71, '29.jpg', 33),
(72, '30.jpg', 33),
(73, '32.jpg', 34),
(74, '33.jpg', 34),
(75, '34.jpg', 34),
(76, '35.jpg', 34),
(77, '36.jpg', 35),
(78, '37.jpg', 35),
(79, '38.jpg', 35),
(80, '40.jpg', 35),
(81, '41.jpg', 35);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `isPremium` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `Email`, `password`, `isPremium`) VALUES
(1, 'admin', 'sinhaamit553@gmail.com', 'Amit@1122', 2),
(2, 'amit', 'amit@gmail.com', 'amit123', 1),
(3, 'ajay', 'ajay@gmail.com', 'ajay123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albumid` (`albumid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
