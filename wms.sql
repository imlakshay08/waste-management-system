-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2021 at 10:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wms`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `Id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT 'admin',
  `password` varchar(255) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`Id`, `username`, `password`) VALUES
(1, 'admin', 'admintest'),
(3, 'janak', 'adminjanak');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tbl`
--

CREATE TABLE `adminlogin_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin_tbl`
--

INSERT INTO `adminlogin_tbl` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(5, 'janak bista', 'bistajanak303@gmail.com', '$2y$10$fAYZ4i4Ozhe2NOX.sc3dhuOc3XAmnFHyptgRCFQIm6IHt6FvKz9ou', 0, 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `contactEmail` varchar(20) NOT NULL,
  `contactPhone` varchar(10) NOT NULL,
  `comment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`fname`, `lname`, `contactEmail`, `contactPhone`, `comment`) VALUES
('mark', 'Zukerberg', 'janak@gmail.com', '1234', 'Hello wms!'),
('mark', 'bista', 'janak@gmail.com', '1234', 'hello'),
('Janak', 'Bista', 'janak@gmail.com', '8747832827', 'Hello!'),
('John', 'Doe', 'bistajanak303@gmail.', '9828912874', 'nice app!');

-- --------------------------------------------------------

--
-- Table structure for table `garbageinfo`
--

CREATE TABLE `garbageinfo` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `wastetype` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `locationdescription` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `garbageinfo`
--

INSERT INTO `garbageinfo` (`Id`, `name`, `mobile`, `email`, `wastetype`, `location`, `locationdescription`, `file`, `date`, `status`) VALUES
(77, 'janak bista', '9828912874', 'janak.bista@sagarmatha.edu.np', 'mixed,', 'Ktm', 'mmmmmm', 'Capture.PNG', '12:11pm ,\r\n Sunday 25th April 2021', 'Completed'),
(102, 'janak bist', '9848726051', 'bistajanak303@gmail.com', 'mixed,', 'Ktm', 'Pulchowk campus', 'kalankiwaste.jpg', '4:21pm ,\r\n Thursday 22nd July 2021', 'Completed'),
(103, 'janak bist', '98487260511', 'bistajanak303@gmail.com', 'mixed,', 'sanepa', 'near sagramatha college', 'wasteimg.jpg', '7:47pm ,\r\n Friday 23rd July 2021', 'Pending'),
(105, 'janak bist', '9848726051', 'bistajanak303@gmail.com', 'inorganic,', 'Bktpur', 'bhaktapur durbar square', 'ktmwaste.jpg', '7:50pm ,\r\n Friday 23rd July 2021', 'Pending'),
(106, 'janak bist', '9828912874', 'janak.bista@sagarmatha.edu.np', 'inorganic,', 'Kalanki', 'thankot road', 'waste1.jpg', '8:50pm ,\r\n Friday 23rd July 2021', 'Pending'),
(110, 'janak bist', '9848726051', 'bistajanak303@gmail.com', 'mixed,', 'lalitpur', 'pulchowk campus', 'waste.jpg', '9:11pm ,\r\n Friday 23rd July 2021', 'Pending'),
(111, 'janak bist', '9848726051', 'janak.bista@sagarmatha.edu.np', 'mixed,', 'Ktm', 'aaaaaaaaaaaaaaaa', 'tnq.jpg', '9:19pm ,\r\n Friday 23rd July 2021', 'Pending'),
(114, 'janak bist', '9848726051', 'janak.bista@sagarmatha.edu.np', 'inorganic,', 'lalitpur', 'aaaa', 'wip.jpg', '7:20am ,\r\n Saturday 24th July 2021', 'Pending'),
(115, 'Image Kunwar', '9808713012', 'imagekunwar@gmail.com', 'organic,mixed,', 'Ktm', 'collect the waste nerar Mahendra Ratna Campus gate, around 40 kg waste is available there', 'wasteimg.jpg', '8:40am ,\r\n Saturday 24th July 2021', 'Pending'),
(116, 'janak bist', '9848726051', 'janak.bista@sagarmatha.edu.np', 'Household,', 'Bktpur', 'near durbar square', 'kalankiwaste.jpg', '9:44am ,\r\n Saturday 24th July 2021', 'Completed'),
(117, 'janak bist', '9848726051', 'bistajanak303@gmail.com', 'mixed,', 'Bktpur', 'aakkksa', 'benjamin.PNG', '5:17pm ,\r\n Thursday 26th August 2021', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(17, 'janak bist', 'bistajanak303@gmail.com', '$2y$10$V/MVcUMG.lrwL0owFuzgDO1cY/laDV2Sl5uawn74Olg9HrVvJIGSm', 0, 'verified'),
(27, 'Image', 'imagekunwar@gmail.com', '$2y$10$2Z/FobzUkJyHW9625lSW1.odNvd5sRykoSDGWSxJ7bPQbPaP/Qck.', 0, 'verified'),
(28, 'janak bist', 'janak.bista@sagarmatha.edu.np', '$2y$10$PG0ub9mnIJKwP3NTa2E4suoXfzI6rfz/vdPkuA1jgfrpIeJa2HFzC', 0, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `adminlogin_tbl`
--
ALTER TABLE `adminlogin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garbageinfo`
--
ALTER TABLE `garbageinfo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminlogin_tbl`
--
ALTER TABLE `adminlogin_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `garbageinfo`
--
ALTER TABLE `garbageinfo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
