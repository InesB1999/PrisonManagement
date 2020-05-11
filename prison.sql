-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2020 at 02:38 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prison`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `ID` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` char(1) NOT NULL,
  `aDate` date NOT NULL,
  `rDate` date NOT NULL,
  `crime` longtext NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`ID`, `firstname`, `lastname`, `gender`, `aDate`, `rDate`, `crime`, `notes`) VALUES
(1, 'Ines', 'Bouchenir', 'F', '2020-02-01', '2040-02-01', 'Burglary ', 'Good Behaviour'),
(2, 'Sarah', 'Bouchenir', 'F', '2015-02-23', '2020-06-23', 'Beating an old man ', 'Assaulted a guard '),
(3, 'Robert', 'Jones', 'M', '2001-10-21', '2051-04-18', 'Murder', 'Multiple attempts made to escape');

-- --------------------------------------------------------

--
-- Table structure for table `prisoners`
--

CREATE TABLE `prisoners` (
  `ID` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `postcode` varchar(100) NOT NULL,
  `gender` char(1) NOT NULL,
  `aDate` date NOT NULL,
  `rDate` date NOT NULL,
  `block` char(1) NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prisoners`
--

INSERT INTO `prisoners` (`ID`, `firstname`, `lastname`, `dob`, `address`, `postcode`, `gender`, `aDate`, `rDate`, `block`, `notes`) VALUES
(1, 'Ines', 'Bouchenir', '1999-02-23', '7 Bidwell House', 'NW2 7EQ', 'F', '2020-02-01', '2040-02-01', 'B', 'Good Behaviour'),
(2, 'Sarah', 'Bouchenir', '1999-02-23', '7 Bidwell House', 'NW2 7EQ', 'F', '2015-02-23', '2020-06-23', 'B', 'Assaulted a guard '),
(3, 'Robert', 'Jones', '1986-03-11', '13 Oxgate Court', 'NW2 6EA', 'M', '2001-10-21', '2051-04-18', 'A', 'Multiple attempts made to escape ');

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `ID` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `postcode` varchar(100) NOT NULL,
  `gender` char(1) NOT NULL,
  `block` char(1) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `jobDept` varchar(100) NOT NULL,
  `notes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`ID`, `firstname`, `lastname`, `dob`, `address`, `postcode`, `gender`, `block`, `mobile`, `jobDept`, `notes`) VALUES
(1, 'Susan', 'Brown', '1973-05-12', '21 Lance Road', 'E7 5LZ', 'F', 'B', 7890000001, 'Psychologist', ''),
(2, 'Julian', 'Baker', '1989-08-08', '3 Ashford Court', 'NW2 7EA', 'M', 'D', 7505960000, 'Guard', ''),
(3, 'Rue ', 'Smith', '1990-12-16', '12 Queens Street', 'W1 9LZ', 'F', 'B', 7687770000, 'Supervisor', 'Supervisor of Block B'),
(5, 'Ines', 'Brown', '1982-02-23', '21 Block Parade', 'e1 4np', 'F', 'D', 7896692200, 'Intern ', 'Training ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `prisoners`
--
ALTER TABLE `prisoners`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prisoners`
--
ALTER TABLE `prisoners`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
