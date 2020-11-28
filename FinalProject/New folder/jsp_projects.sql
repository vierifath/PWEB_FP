-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 05:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jsp_projects`
--

-- --------------------------------------------------------

--
-- Table structure for table `cashdata`
--

CREATE TABLE `cashdata` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `week1` int(11) NOT NULL,
  `week2` int(11) NOT NULL,
  `week3` int(11) NOT NULL,
  `week4` int(11) NOT NULL,
  `week5` int(11) NOT NULL,
  `week6` int(11) NOT NULL,
  `week7` int(11) NOT NULL,
  `week8` int(11) NOT NULL,
  `week9` int(11) NOT NULL,
  `week10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashdata`
--

INSERT INTO `cashdata` (`id`, `name`, `email`, `week1`, `week2`, `week3`, `week4`, `week5`, `week6`, `week7`, `week8`, `week9`, `week10`) VALUES
(24, 'Sofyan', 'sofyan@gmail.com', 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `creditdata`
--

CREATE TABLE `creditdata` (
  `id` int(11) NOT NULL,
  `dates` varchar(20) NOT NULL,
  `information` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `creditdata`
--

INSERT INTO `creditdata` (`id`, `dates`, `information`, `amount`) VALUES
(6, '12 November 2020', 'Buy a teacher table', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `jsp_crud_user`
--

CREATE TABLE `jsp_crud_user` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `User_Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jsp_crud_user`
--

INSERT INTO `jsp_crud_user` (`ID`, `Name`, `Username`, `Email`, `User_Password`) VALUES
(1, 'ex_name', 'ex_username', 'exname@example.com', '12345668'),
(17, 'Adi', 'Adip', 'adiperwira75@gmail.com', 'Vieri123.'),
(18, 'Sofyan', 'sofyan', 'sofyan@gmail.com', 'sofyan'),
(21, 'Vieri Fath', 'vieri', 'vieri.ayuba@gmail.com', 'vieri'),
(22, 'Vieri Fath', 'vierifathhh', 'vierifathhh@gmail.com', 'Medula21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cashdata`
--
ALTER TABLE `cashdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `creditdata`
--
ALTER TABLE `creditdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jsp_crud_user`
--
ALTER TABLE `jsp_crud_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cashdata`
--
ALTER TABLE `cashdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `creditdata`
--
ALTER TABLE `creditdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jsp_crud_user`
--
ALTER TABLE `jsp_crud_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
