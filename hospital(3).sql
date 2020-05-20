-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2020 at 01:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `Appointment_Number` int(11) NOT NULL,
  `Patient` tinytext NOT NULL,
  `Procedures` tinytext NOT NULL,
  `Date` date NOT NULL,
  `Start` time(6) NOT NULL,
  `End` time(6) NOT NULL,
  `Duration` int(11) NOT NULL,
  `Room Number` int(11) NOT NULL,
  `Medication_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`Appointment_Number`, `Patient`, `Procedures`, `Date`, `Start`, `End`, `Duration`, `Room Number`, `Medication_ID`) VALUES
(1, 'Barry Gates', 'Minor Surgery', '2020-12-14', '10:00:00.000000', '12:00:00.000000', 2, 1, 1),
(2, 'Stanislaw Bassett', 'Minor Surgery', '2020-04-20', '11:00:00.000000', '13:00:00.000000', 2, 2, 2),
(3, 'Kalvin Dickens', 'Minor Surgery', '2020-04-20', '11:00:00.000000', '13:00:00.000000', 2, 3, 3),
(4, 'Kaydee Stuart', 'Minor Surgery', '2020-12-14', '15:00:00.000000', '16:00:00.000000', 1, 4, 1),
(5, 'Hazel Mcneil', 'Minor Surgery', '2020-03-15', '09:00:00.000000', '11:00:00.000000', 2, 5, 5),
(6, 'Sanaya Mendoza', 'Minor Surgery', '2020-12-14', '17:00:00.000000', '18:00:00.000000', 1, 6, 3),
(7, 'Yehuda Allen', 'Major Surgery', '2020-03-15', '18:00:00.000000', '20:00:00.000000', 2, 7, 7),
(8, 'Patrician Mccarthy', 'Minor Surgery', '2020-12-14', '15:00:00.000000', '15:30:00.000000', 1, 8, 2),
(9, 'Kaan Landry', 'Major Surgery', '2020-12-14', '18:00:00.000000', '20:00:00.000000', 2, 9, 3),
(10, 'Dru Battle', 'Major Surgery', '2020-03-15', '10:00:00.000000', '16:00:00.000000', 6, 10, 1),
(14, 'Patricia Mccarthy', 'Minor Surgery', '2020-12-16', '15:00:00.000000', '15:30:00.000000', 1, 8, 2),
(15, 'Kaan Landry', 'Major Surgery', '2020-12-16', '18:00:00.000000', '20:00:00.000000', 2, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doctor_ID` int(11) NOT NULL,
  `Name` tinytext NOT NULL,
  `Trained_In` tinytext NOT NULL,
  `Patient` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_ID`, `Name`, `Trained_In`, `Patient`) VALUES
(7, 'Rachel Mathis', 'Lineology', 'Kalvin Dickens'),
(8, 'Chester Bains', 'Jamology', 'Kaydee Stuart'),
(9, 'Aditi Wainwright', 'Boneology', 'Hazel Mcneil'),
(10, 'Mia-Rose Espinosa', 'Popology', 'Stanislaw Bassett');

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `Medication_ID` int(11) NOT NULL,
  `Medication_Name` tinytext NOT NULL,
  `Description` tinytext NOT NULL,
  `Brand` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`Medication_ID`, `Medication_Name`, `Description`, `Brand`) VALUES
(1, 'Paracetamol', 'Pain Killer', 'PainResolve'),
(2, 'Ibruprofen', 'Heart Burn', 'HeartRelief'),
(3, 'Zapain', 'Pain Killer', 'Zap!');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `Nurse_ID` int(11) NOT NULL,
  `Name` tinytext NOT NULL,
  `Trained_In` tinytext NOT NULL,
  `Patient` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`Nurse_ID`, `Name`, `Trained_In`, `Patient`) VALUES
(3, 'Edwin Huff', 'Boneology', 'Barry Gates'),
(4, 'Zayyan Saunders', 'Lineology', 'Kalvin Dickens'),
(5, 'Isobelle Hinton', 'Boneology', 'Kaydee Stuart'),
(6, 'Bobby Phelps', 'Boneology', 'Hazel Mcneil');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `Patient_ID` int(11) NOT NULL,
  `PatientName` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` int(11) NOT NULL,
  `Insurance_Number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`Patient_ID`, `PatientName`, `Address`, `Phone`, `Insurance_Number`) VALUES
(1, 'Barry Gates', '66 Rockingham Street, Barnsley, S71 1JR\r\n', 1743887228, 'BAZ12342\r\n'),
(2, 'Stanislaw Bassett', '53 Queen Street, Rushden, NN10 0AY\r\n', 1743887223, 'STA12545\r\n'),
(3, 'Kalvin Dickens', '1 Goudhurst Close, Maidstone, ME16 8QT\r\n', 1743833228, 'KAL12342\r\n'),
(4, 'Kaydee Stuart', '9 Siskin Close, Horsham, RH12 5YR\r\n', 1743882328, 'KAY13345\r\n'),
(5, 'Hazel Mcneil\r\n', '21 Doric Road, Liverpool, L13 3DS\r\n', 1743187222, 'HAZ14355\r\n'),
(6, 'Sanaya Mendoza\r\n', 'Flat 10, Pine Lodge, Leigh Corner, Cobham, KT11 2RB\r\n', 1743837428, 'SAN12645\r\n'),
(7, 'Yehuda Allan\r\n', '18 Waterside Lodges, Elland Road, Elland, HX5 9AQ\r\n', 1743227226, 'YEH12345\r\n'),
(8, 'Patricia Mccarthy\r\n', '5 Crabtree Close, Danesmoor, S45 9BH\r\n', 1743887255, 'PAT12345\r\n'),
(9, 'Kaan Landry\r\n', '2 Larchcroft, Chatham, ME5 0NL\r\n', 1743667228, 'KAA12342\r\n'),
(10, 'River Gale\r\n', '7 Prospect Place, South Brent, TQ10 9AH\r\n', 1743882311, 'GAL12345\r\n'),
(11, 'Sky Rooney\r\n', '24 Merrimans Hill Road, Worcester, WR3 8LW\r\n', 1743127222, 'ROO12345\r\n'),
(12, 'Hallam Shields\r\n', '2 - 3 Sunny Bank, Cragg Vale, HX7 5SL\r\n', 1743835528, 'SHI15545\r\n'),
(13, 'Chantal Page\r\n', 'Pytte Cottage, Clyst St George, EX3 0NU\r\n', 1743226626, 'PAG12645\r\n'),
(14, 'Kurtis Rivera\r\n', 'Park House, Church Street, Talgarth, LD3 0DW\r\n', 1743887233, 'RIV17345\r\n'),
(15, 'Dru Battle\r\n', 'Flat 6, Aperture House, 6 Honduras Street, London, EC1Y 0TH\r\n', 1743667265, 'BAT12345\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `physician`
--

CREATE TABLE `physician` (
  `Phys_ID` int(11) NOT NULL,
  `Name` tinytext NOT NULL,
  `Trained_In` tinytext NOT NULL,
  `Patient` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physician`
--

INSERT INTO `physician` (`Phys_ID`, `Name`, `Trained_In`, `Patient`) VALUES
(1, 'Bob Harris', 'Kingstology', 'Barry Gates'),
(2, 'Allan Cross', 'Lineology', 'Stanislaw Bassett'),
(11, 'Jeremy Shipton', 'Kingstology', 'Sky Rooney'),
(12, 'Charles Ulter', 'Jamology', 'Hallam Shields'),
(13, 'Christina Bishop', 'Popology', 'Chantal Page'),
(14, 'Sarah Smith', 'Popology', 'Kurtis Rivera'),
(15, 'William B. Hampton', 'Kingstology', 'Dru Battle');

-- --------------------------------------------------------

--
-- Table structure for table `procedures`
--

CREATE TABLE `procedures` (
  `Procedure_ID` int(11) NOT NULL,
  `Patient` tinytext NOT NULL,
  `Procedures` tinytext NOT NULL,
  `Cost` double NOT NULL,
  `Medication_ID` int(11) NOT NULL,
  `Department` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `procedures`
--

INSERT INTO `procedures` (`Procedure_ID`, `Patient`, `Procedures`, `Cost`, `Medication_ID`, `Department`) VALUES
(1, 'Barry Gates', 'Minor Surgery', 600, 1, 'Kingstology/Boneology'),
(2, 'Stanislaw Bassett', 'Minor Surgery', 600, 2, 'Lineology'),
(3, 'Kalvin Dickens', 'Minor Surgery', 800, 3, 'Lineology'),
(4, 'Kaydee Stuart', 'Minor Surgery', 900, 1, 'Boneology/Jamology'),
(5, 'Hazel Mcneil', 'Minor Surgery', 600, 2, 'Boneology/Jamology'),
(6, 'Sanaya Mendoza', 'Minor Surgery', 600, 3, 'NULL'),
(7, 'Yehuda Allan', 'Major Surgery', 1000, 1, 'NULL'),
(8, 'Patricia Mccarthy', 'Minor Surgery', 250, 2, 'NULL'),
(9, 'Kaan Landry', 'Major Surgery', 1000, 3, 'NULL'),
(10, 'Dru Battle', 'Major Surgery', 2000, 1, 'Kingstology'),
(11, 'Patricia Mccarthy', 'Minor Surgery', 750, 2, 'NULL'),
(12, 'Kaan Landry', 'Major Surgery', 1250, 3, 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` int(11) NOT NULL,
  `Available` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `Available`) VALUES
(1, 'No'),
(2, 'No'),
(3, 'No'),
(4, 'No'),
(5, 'No'),
(6, 'No'),
(7, 'No'),
(8, 'No'),
(9, 'No'),
(10, 'No'),
(11, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`Appointment_Number`),
  ADD KEY `Patient` (`Patient`(255)),
  ADD KEY `Procedures` (`Procedures`(255)),
  ADD KEY `Medication_ID` (`Medication_ID`),
  ADD KEY `Room Number` (`Room Number`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_ID`),
  ADD KEY `Patient` (`Patient`(255));

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`Medication_ID`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`Nurse_ID`),
  ADD KEY `Patient` (`Patient`(255));

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `physician`
--
ALTER TABLE `physician`
  ADD PRIMARY KEY (`Phys_ID`),
  ADD KEY `Patient` (`Patient`(255));

--
-- Indexes for table `procedures`
--
ALTER TABLE `procedures`
  ADD PRIMARY KEY (`Procedure_ID`),
  ADD KEY `Patient` (`Patient`(255)),
  ADD KEY `Medication_ID` (`Medication_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `Appointment_Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Doctor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `Medication_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `Nurse_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `Patient_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `physician`
--
ALTER TABLE `physician`
  MODIFY `Phys_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `procedures`
--
ALTER TABLE `procedures`
  MODIFY `Procedure_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `RoomNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`Room Number`) REFERENCES `room` (`RoomNo`);

--
-- Constraints for table `procedures`
--
ALTER TABLE `procedures`
  ADD CONSTRAINT `Medications` FOREIGN KEY (`Medication_ID`) REFERENCES `medication` (`Medication_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
