-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 01:11 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `somercats`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BookingID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `ArrivalDate` datetime NOT NULL,
  `DepartureDate` datetime NOT NULL,
  `TransportID` int(11) NOT NULL,
  `PaymentStatus` tinytext NOT NULL,
  `PaymentMethod` tinytext NOT NULL,
  `RefrredFrom` tinytext NOT NULL,
  `HasViewingDate` tinyint(1) NOT NULL,
  `ViewingDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BookingID`, `ClientID`, `ArrivalDate`, `DepartureDate`, `TransportID`, `PaymentStatus`, `PaymentMethod`, `RefrredFrom`, `HasViewingDate`, `ViewingDate`) VALUES
(123, 1, '2019-12-18 10:15:00', '2019-12-23 07:25:00', 52489, 'PAID', 'VISA', 'Someone', 1, '2019-12-15'),
(321, 3, '2020-01-02 00:00:00', '2020-01-05 00:00:00', 222, 'Paid', 'Visa', 'Someone Else', 0, '0000-00-00'),
(456, 2, '2019-12-23 10:27:00', '2019-12-31 13:28:00', 48574, 'PENDING', 'CASH', 'Someone Else', 0, '0000-00-00'),
(654, 4, '2020-01-17 00:00:00', '2020-01-23 00:00:00', 444, 'Paid', 'Paypal', 'Someone else', 1, '2019-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `CatID` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL,
  `CatName` tinytext NOT NULL,
  `Age` int(11) NOT NULL,
  `Breed` tinytext NOT NULL,
  `Sex` tinytext NOT NULL,
  `Microchipped` tinyint(1) NOT NULL,
  `Spayed` tinyint(1) NOT NULL,
  `CatflapUser` tinyint(1) NOT NULL,
  `BringingVacc` tinyint(1) NOT NULL,
  `VaccDate` datetime NOT NULL,
  `VetName` tinytext NOT NULL,
  `ChaletID` int(11) NOT NULL,
  `FoodID` int(11) NOT NULL,
  `MedicalHistory` tinytext NOT NULL,
  `FleaWorm` tinyint(1) NOT NULL,
  `HumanContact` tinytext NOT NULL,
  `Possessions` tinytext NOT NULL,
  `PhotosAllowed` tinyint(1) NOT NULL,
  `Notes` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`CatID`, `BookingID`, `CatName`, `Age`, `Breed`, `Sex`, `Microchipped`, `Spayed`, `CatflapUser`, `BringingVacc`, `VaccDate`, `VetName`, `ChaletID`, `FoodID`, `MedicalHistory`, `FleaWorm`, `HumanContact`, `Possessions`, `PhotosAllowed`, `Notes`) VALUES
(111, 123, 'Bagpuss', 5, 'Persian', 'Male', 1, 1, 1, 1, '2019-12-01 00:00:00', 'Mr.Vet', 1212, 3131, 'Run over', 1, 'Yes', 'Bowl', 1, 'It\'s a cat.'),
(222, 456, 'Tom', 11, 'Tom Cat', 'Male', 1, 1, 1, 1, '2019-11-19 00:00:00', 'Mr.Vet ', 2121, 4141, 'None', 1, 'Yes', 'Toy', 1, 'Also a cat'),
(999, 8888, 'Caterina', 3, 'Siamese', 'Female', 1, 1, 1, 1, '2019-12-17 00:00:00', 'Ms. Vet', 12987, 845692, 'None', 1, 'Yes', 'Food bowls,\r\ntoys', 0, 'Many cats'),
(986532, 785421, 'Blub', 8, 'Persian', 'Female', 1, 1, 0, 1, '2020-01-01 00:00:00', 'Mr. Vet', 124578, 456321, 'Ear infection', 1, 'Yes', 'Toys,\r\nbowls', 0, 'Too many cats.');

-- --------------------------------------------------------

--
-- Table structure for table `chalet`
--

CREATE TABLE `chalet` (
  `ChaletID` int(11) NOT NULL,
  `PriceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chalet`
--

INSERT INTO `chalet` (`ChaletID`, `PriceID`) VALUES
(1212, 200),
(2121, 180);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ClientID` int(11) NOT NULL,
  `Title` tinytext NOT NULL,
  `FirstName` tinytext NOT NULL,
  `LastName` tinytext NOT NULL,
  `Address` tinytext NOT NULL,
  `Postcode` tinytext NOT NULL,
  `Email` tinytext NOT NULL,
  `PhoneHome` tinytext NOT NULL,
  `PhoneMob` tinytext NOT NULL,
  `EmergencyName` tinytext NOT NULL,
  `EmergencyNum` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ClientID`, `Title`, `FirstName`, `LastName`, `Address`, `Postcode`, `Email`, `PhoneHome`, `PhoneMob`, `EmergencyName`, `EmergencyNum`) VALUES
(1, 'Ms', 'Person', 'One', '19 Road Name,\r\nTown One\r\n', 'GH67 REU', 'customerone@outlook.com', '45454545454', '87778787878', 'Mr. Emergency', '999'),
(2, 'Mr', 'Customer', 'Two', '20 Road Name,\r\nTown two', 'JU76 YGR', 'customertwo@gmail.com', '8874878487', '65465454654', 'Mrs. Emergency', '911'),
(3, 'Miss', 'Cat', 'Astrophe', '54552\r\nLondon\r\n', 'SW4', 'helpme@catastrophe.com', '8787877777', '9586235', 'Mr. Consumers Servce', '111'),
(4, 'Mr.', 'Cat', 'Man', '222\r\nCoventry', 'CV22 7GY', 'catman@catmanbegins.com', '444111222', '365214523641', 'Miss.Cat', '999');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `FoodID` int(11) NOT NULL,
  `CatID` int(11) NOT NULL,
  `FoodName` tinytext NOT NULL,
  `Quantity` int(11) NOT NULL,
  `FeedingTimes` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`FoodID`, `CatID`, `FoodName`, `Quantity`, `FeedingTimes`) VALUES
(9, 222, 'Ceasars', 100, '8AM 4PM'),
(10, 111, 'Whiskers', 100, '7AM 4PM');

-- --------------------------------------------------------

--
-- Table structure for table `pricetable`
--

CREATE TABLE `pricetable` (
  `PriceID` int(11) NOT NULL,
  `Type` tinytext NOT NULL,
  `Cats` int(11) NOT NULL,
  `Cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricetable`
--

INSERT INTO `pricetable` (`PriceID`, `Type`, `Cats`, `Cost`) VALUES
(200, 'Big', 2, 45),
(180, 'Small', 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `TransportID` int(11) NOT NULL,
  `CollectionTime` tinytext NOT NULL,
  `DropOffTime` tinytext NOT NULL,
  `Distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`TransportID`, `CollectionTime`, `DropOffTime`, `Distance`) VALUES
(48574, '2PM', '1PM', 15),
(52489, '4PM', '10AM', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`CatID`),
  ADD KEY `CatID` (`CatID`);

--
-- Indexes for table `chalet`
--
ALTER TABLE `chalet`
  ADD PRIMARY KEY (`ChaletID`),
  ADD KEY `ChaletID` (`ChaletID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ClientID`),
  ADD KEY `ClientID` (`ClientID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`FoodID`),
  ADD KEY `FoodID` (`FoodID`);

--
-- Indexes for table `pricetable`
--
ALTER TABLE `pricetable`
  ADD KEY `PriceID` (`PriceID`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`TransportID`),
  ADD KEY `TransportID` (`TransportID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=785422;

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `CatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986533;

--
-- AUTO_INCREMENT for table `chalet`
--
ALTER TABLE `chalet`
  MODIFY `ChaletID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2122;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48575;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `FoodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `TransportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52490;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
