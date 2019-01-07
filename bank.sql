-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2018 at 10:04 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `AccNo` int(8) NOT NULL COMMENT 'account number',
  `UserId` int(8) NOT NULL COMMENT 'user to whom account belongs',
  `ACC_Type` char(8) NOT NULL,
  `ACC_TypeINTERESTRATE` decimal(4,0) NOT NULL,
  `Balance` decimal(10,0) NOT NULL,
  `Acc_Postdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`AccNo`, `UserId`, `ACC_Type`, `ACC_TypeINTERESTRATE`, `Balance`, `Acc_Postdate`) VALUES
(1210, 1414, 'loan', '2', '145234', '2018-01-01'),
(1211, 4132, 'saving', '2', '876', '2017-12-04'),
(1212, 36323, 'depos', '1', '17545', '2017-11-15'),
(1213, 1533, 'loan', '3', '7853', '2018-02-12'),
(1214, 24942, 'saving', '3', '14152', '2018-02-23'),
(1235, 2, 'saving', '4', '12321', '2018-02-04'),
(1236, 3, 'saving', '4', '944', '2018-01-10'),
(1237, 4, 'loan', '2', '1232', '2018-02-23'),
(1238, 5, 'saving', '2', '76548', '2018-02-13'),
(1239, 1412, 'loan', '1', '42141', '2018-02-23'),
(1240, 8692, 'loan', '3', '4243', '2018-01-03'),
(1241, 411313, 'saving', '4', '297271', '2018-02-23'),
(2722, 2722, 'deposit', '1', '2151', '2017-12-20'),
(2723, 2723, 'saving', '3', '1644', '2018-02-23'),
(2724, 2724, 'saving', '2', '1785', '2017-12-13'),
(124411, 1, 'deposit', '4', '1234', '2018-02-23'),
(6591010, 2722, 'saving', '2', '2970', '2018-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Transc_Id` int(8) NOT NULL,
  `AccNo` char(11) NOT NULL,
  `Transc_postDate` timestamp NOT NULL,
  `Transc_Amount` decimal(10,0) NOT NULL,
  `Transc_Type` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Transc_Id`, `AccNo`, `Transc_postDate`, `Transc_Amount`, `Transc_Type`) VALUES
(15422, '1210', '2018-02-23 12:05:22', '3400', 'saving'),
(25241, '1211', '2018-02-23 12:05:22', '2140', 'depos'),
(17533, '1213', '2018-02-23 12:05:22', '2400', 'saving'),
(175427, '1214', '2018-02-23 12:05:22', '590', 'saving'),
(31212, '1235', '2018-02-23 12:05:22', '2', 'sav'),
(3131, '1236', '2018-02-23 12:05:22', '1', 'depos'),
(252523, '1237', '2018-02-23 12:05:22', '781', 'depos'),
(26592, '1238', '2018-02-23 12:05:22', '1201', 'saving'),
(41342, '6591010', '2018-02-23 12:05:22', '3400', 'depos'),
(5447, 'AH124411', '2018-02-23 12:05:22', '4100', 'depos');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserId` int(8) NOT NULL COMMENT 'User iBank number',
  `User_name` varchar(16) NOT NULL,
  `Password` varchar(12) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Last_name` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Country` varchar(40) NOT NULL,
  `Status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `User_name`, `Password`, `Name`, `Last_name`, `Email`, `Address`, `Phone`, `Country`, `Status`) VALUES
(1210, 'smithh', '11001@128', 'smith', 'hall', 'smithha@yahoo.com', '9th avenue london ', 408047242, 'UK', 'A'),
(1211, 'Jallen', 'jan@19831', 'jonson', 'allen', 'allenjan@yahoo.com', '9th avenue, Manchester', 10283082, 'UK', 'P'),
(1235, 'eli72', 'eli@pass12', 'eli', 'julian', 'julianeli@yahoo.com', '7th avenue, Athens', 694876562, 'Greece', 'A'),
(1238, 'haziz', '26720@13?', 'haris', 'aziz', 'haris94@yahoo.com', '9th avenue, Bayreuth ', 275027223, 'Lebanan', 'A'),
(1239, 'mmurphy', '78ma@183/', 'michel', 'murphy', 'murphymic@gmail.com', '9th avenue, Washington DC', 102205720, 'United States', 'P'),
(2723, 'glazy', '17017kdhl', 'George', 'serfakis', 'gesertf@dronem.com', '7th avenue, Athens', 1223427350, 'USA', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`AccNo`),
  ADD KEY `ACC_NO` (`AccNo`),
  ADD KEY `User_No` (`UserId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`AccNo`),
  ADD KEY `Transc_Id` (`Transc_Id`),
  ADD KEY `Transc_Id_2` (`Transc_Id`),
  ADD KEY `Transc_Id_3` (`Transc_Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `User_No` (`UserId`),
  ADD KEY `idx_userNL` (`Name`,`Last_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `AccNo` int(8) NOT NULL AUTO_INCREMENT COMMENT 'account number', AUTO_INCREMENT=6591011;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Transc_Id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252524;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `accounts` (`AccNo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
