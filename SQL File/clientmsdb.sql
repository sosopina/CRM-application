-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01 Sept, 2022 at 06:06 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clientmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555562, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-09-01 07:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblclient`
--

CREATE TABLE `tblclient` (
  `ID` int(10) NOT NULL,
  `AccountID` int(10) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `ContactName` varchar(120) DEFAULT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `State` varchar(120) DEFAULT NULL,
  `ZipCode` int(10) DEFAULT NULL,
  `Workphnumber` bigint(10) DEFAULT NULL,
  `Cellphnumber` bigint(10) DEFAULT NULL,
  `Otherphnumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `WebsiteAddress` varchar(200) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclient`
--

INSERT INTO `tblclient` (`ID`, `AccountID`, `AccountType`, `ContactName`, `CompanyName`, `Address`, `City`, `State`, `ZipCode`, `Workphnumber`, `Cellphnumber`, `Otherphnumber`, `Email`, `WebsiteAddress`, `Notes`, `Password`, `CreationDate`) VALUES
(1, 900370752, 'Active Account', 'Hamid Malik', 'Sony', '12 lotissement jrada ,Fes', 'Fes', 'Fes-Meknes', 30000, 0620393483, 0587272782, 0599377477, 'sony_fes@gmail.com', 'www.Sony-fes.com', 'Good Client', '202cb962ac59075b964b07152d234b70', '2022-09-01 04:40:11'),
(2, 426546224, 'Active Account', 'Sabar Med', 'Sabar electronics', '9  rue adarissa el bassatine, meknes', 'Meknes', 'Fes-Meknes', 110001, 9354778033, 9354778033, 9354778033, 'med-sabar@gmail.com', 'https://sabarelectro.com', 'New User', 'f925916e2754e5e03f75dd58a5733251', '2022-09-01 16:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `ID` int(10) NOT NULL,
  `Userid` varchar(120) DEFAULT NULL,
  `ServiceId` varchar(120) DEFAULT NULL,
  `BillingId` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`ID`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, '2', '2', '135792633', '2022-09-01 11:51:43'),
(2, '2', '3', '135792633', '2022-09-02 11:51:43'),
(3, '1', '4', '899898097', '2022-09-02 04:20:40'),
(4, '1', '6', '899898097', '2022-09-01 04:20:40'),
(5, '4', '1', '159659268', '2022-09-01 07:16:45'),
(6, '6', '9', '847895377', '2022-09-01 16:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '', NULL, NULL, '2019-10-24 07:54:52'),
(2, 'contactus', 'Contact Us', '14, El bassatine, Meknes, Morocco', 'info@gmail.com', 8529631237, '2022-09-01 07:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServicePrice`, `CreationDate`) VALUES
(1, 'Sony', '120', '2022-09-05 13:42:29'),
(2, 'Sabar electronics', '250', '2022-09-06 15:58:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclient`
--
ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclient`
--
ALTER TABLE `tblclient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
