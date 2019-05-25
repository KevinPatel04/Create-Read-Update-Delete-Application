-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 25, 2019 at 08:51 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `john_bros`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `DID` int(11) NOT NULL,
  `STID` int(11) DEFAULT NULL,
  `DNAME` varchar(30) DEFAULT NULL,
  `DMGR` int(11) DEFAULT NULL,
  PRIMARY KEY (`DID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DID`, `STID`, `DNAME`, `DMGR`) VALUES
(40, 1, 'PERIPHERALS', 111),
(42, 1, 'PRINTERS', 199),
(43, 1, 'SCANNERS', 112),
(48, 2, 'NETWORK DEVICES', 116),
(47, 2, 'PERIPHERALS', 117),
(49, 2, 'STORAGE DEVICES', 115),
(58, 3, 'NETWORK DEVICES', 114);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `EID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `STID` int(11) DEFAULT NULL,
  `DID` int(11) DEFAULT NULL,
  `SAL` int(11) NOT NULL,
  `MGRID` int(11) DEFAULT NULL,
  `DESG` varchar(20) NOT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EID`, `FNAME`, `LNAME`, `STID`, `DID`, `SAL`, `MGRID`, `DESG`) VALUES
(100, 'GEORGE', 'MARTIN', 1, NULL, 500000, NULL, 'MANAGER'),
(101, 'ALLEN', 'STARK', 1, 40, 50000, 100, 'CLERK'),
(103, 'SANSA', 'STARK', 1, 43, 250000, 100, 'SALESMAN'),
(102, 'JOHN', 'SNOW', 2, NULL, 500000, NULL, 'MANAGER'),
(104, 'ARYA', 'STARK', 2, 48, 210000, 102, 'SALESMAN'),
(105, 'BRANDON', 'STARK', 2, 47, 54000, 102, 'CLERK'),
(106, 'NIGHT', 'KING', 2, 47, 175000, 102, 'SALESMAN'),
(107, 'DAENERYS', 'TARGARYEN', 2, 49, 180000, 102, 'SALESMAN'),
(109, 'AEGON', 'TARGARYEN', 3, NULL, 550000, NULL, 'MANAGER'),
(108, 'SMITH', 'JOBS', 3, 58, 20000, 109, 'SALESMAN'),
(110, 'TYRION', 'LANNISTER', 3, 59, 150000, 109, 'SALESMEN'),
(117, 'GREGOR', 'CLEGANE', 3, 59, 50000, 109, 'CLERK'),
(111, 'JAIME', 'LANNISTER', 1, 40, 340000, 100, 'MANAGER'),
(112, 'JOFFREY', 'BARATHEON', 1, 43, 350000, 100, 'MANAGER'),
(113, 'CERSEI', 'LANNISTER', 3, 59, 350000, 109, 'MANAGER'),
(114, 'THEON', 'GRAYJOY', 3, 58, 360000, 109, 'MANAGER'),
(115, 'EDDARD', 'STARK', 2, 49, 370000, 109, 'MANAGER'),
(116, 'KHAL', 'DROGO', 2, 48, 390000, 109, 'MANAGER'),
(118, 'JORAH', 'MORMONT', 2, NULL, 450000, NULL, 'MANAGER');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `STID` int(11) NOT NULL,
  `STADDR` varchar(60) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `STMGR` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`STID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`STID`, `STADDR`, `CITY`, `STMGR`) VALUES
(1, 'Old padra rd', 'Vadodara', '100'),
(2, 'Race Course rd', 'Vadodara', '102'),
(3, 'M G Road', 'Mumbai', '109');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
