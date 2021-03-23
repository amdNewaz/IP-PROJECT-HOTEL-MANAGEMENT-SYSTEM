-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2021 at 05:36 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookinglist`
--

CREATE TABLE `bookinglist` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `ic` varchar(30) NOT NULL,
  `nationality` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `position` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emplist`
--

CREATE TABLE `emplist` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `ic` varchar(30) NOT NULL,
  `nationality` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `position` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emplist`
--

INSERT INTO `emplist` (`id`, `name`, `ic`, `nationality`, `address`, `hp`, `position`) VALUES
(1, 'null', 'null', 'null', 'null', '1123369764', 'null'),
(2, 'Ameer bin Talib', 'B18K0023', 'Indonesia', 'MA5,KTDI,Skudai,Johor', '01123369764', 'Floor cleaner'),
(3, 'Shameer Bin Ahmad Ali', 'A18CS056', 'Indonesia', 'Taman University, Jln Kebudayaan 2, Skudai,Johor', '0111159746', 'Waiter'),
(4, 'Syafiq bin Salleh', '900425015768', 'Malaysia', 'MA5,KTDI,Skudai,Johor', '01123369764', 'Junior Chef'),
(5, 'Shafiq bin Rafiq', '900425015768', 'Malaysia', '342,Jln Kasawari, Skudai,Johor.', '0111159746', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `hp` int(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `password`, `hp`, `email`) VALUES
(1, 'sharas', '12345', 1123369764, 'shara96@gmail.com'),
(2, 'kogheen', '555', 1123369764, 'ksv@gmail.com'),
(3, 'sharashini', '888', 1123369764, 'shara2504@gmail.com'),
(4, 'sharashini', '888', 1123369764, 'shara2504@gmail.com'),
(6, 'ksv', '666', 1123369764, 'v@gmail.com'),
(7, 'reshma', '5799', 1123369764, 'v@gmail.com'),
(8, 'simbu', '9999', 1123369764, 'simbu@gmail.com'),
(9, 'fadhil', 'fadhil', 1131088747, 'fadhilsayyid01@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `roomlist`
--

CREATE TABLE `roomlist` (
  `id` int(11) NOT NULL,
  `R_number` varchar(10) NOT NULL,
  `block` varchar(30) NOT NULL,
  `type` varchar(8) NOT NULL,
  `price` double NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookinglist`
--
ALTER TABLE `bookinglist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emplist`
--
ALTER TABLE `emplist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomlist`
--
ALTER TABLE `roomlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookinglist`
--
ALTER TABLE `bookinglist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `emplist`
--
ALTER TABLE `emplist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roomlist`
--
ALTER TABLE `roomlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
