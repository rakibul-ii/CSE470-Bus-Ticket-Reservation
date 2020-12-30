-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 07:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `type` text NOT NULL,
  `date` date NOT NULL,
  `cost` int(11) NOT NULL,
  `departing_time` varchar(50) NOT NULL,
  `arrival_time` varchar(50) NOT NULL,
  `seat_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`, `location`, `type`, `date`, `cost`, `departing_time`, `arrival_time`, `seat_available`) VALUES
(1, 'Shyamoli nr travels', 'Bandarban', 'AC', '2020-09-12', 1400, '10:30 PM', '04:45 AM', 30),
(2, 'Saintmartin Paribahan', 'Bandarban', 'AC', '2020-09-11', 950, '10:45 PM', '07:15 AM', 36),
(3, 'S. Alam Service', 'Bandarban', 'Non-AC', '2020-09-13', 620, '08:15 AM', '06:44 PM', 30),
(4, 'Shyamoli nr travels', 'Bandarban', 'Non-AC', '2020-09-12', 620, '09:45 PM', '06:15 AM', 36),
(5, 'S. Alam Service', 'Bandarban', 'Non-AC', '2020-09-13', 620, '10:01 PM', '05:30 AM', 32),
(6, 'Shyamoli nr travels', 'Bandarban', 'Non-AC', '2020-09-12', 620, '10:15 PM', '04:45 AM', 36);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `number`, `pwd`) VALUES
(1, 'omuk', 1111111111, 'tomuk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
