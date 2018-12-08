-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2018 at 09:08 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lavender`
--

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `entryData` text,
  `title` text,
  `day` date NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `timeOfEntry` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`entryData`, `title`, `day`, `userId`, `timeOfEntry`) VALUES
('I got new glasses, I love it', 'Entry of  28/09/2018 ', '2018-09-28', 6, '1538151712'),
('I like the color in the background', 'Entry of  28/09/2018 ', '2018-09-28', 6, '1538153022'),
('I hate to use Ajax', 'Entry of  28/09/2018 ', '2018-09-28', 6, '1538153036'),
('casda', 'Entry of  28/09/2018 ', '2018-09-28', 6, '1538153456'),
('I ate donuts', 'Entry of  03/11/2018 ', '2018-11-03', 7, '1541251023'),
('I ate pumpkin', 'Entry of  28/11/2018 ', '2018-11-28', 7, '1543373013'),
('I ate cheese crackers', 'Entry of  28/11/2018 ', '2018-11-28', 9, '1543384902'),
('hd', 'Entry of  28/11/2018 ', '2018-11-28', 10, '1543385138'),
('fsg', 'Entry of  28/11/2018 ', '2018-11-28', 10, '1543385143'),
('I had an exam today. I should have prepared well ', 'Entry of  28/11/2018 ', '2018-11-28', 9, '1543429131');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `userName` varchar(100) NOT NULL,
  `feed` text NOT NULL,
  `userId` int(11) NOT NULL,
  `day` date NOT NULL,
  `feedId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`userName`, `feed`, `userId`, `day`, `feedId`) VALUES
('Krish', 'fasfasda', 4, '2018-09-23', 2),
('Krish', 'Improve UI', 4, '2018-09-23', 3),
('Krish', '', 4, '2018-09-23', 4),
('Krish', '', 4, '2018-09-23', 5),
('Reven', '', 5, '2018-09-23', 6),
('Reven', '', 5, '2018-09-23', 7),
('Reven', '', 5, '2018-09-23', 8),
('Reven', '', 5, '2018-09-23', 9),
('Reven', '', 5, '2018-09-23', 10),
('Reven', '', 5, '2018-09-23', 11),
('Reven', '', 5, '2018-09-23', 12),
('Krish', '', 7, '2018-11-03', 13),
('Krishna Rao', '', 9, '2018-11-28', 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(5, 'Reven', 'reven@gmail.com', '7eaf1472e20d2fbd73fdbd8847e8b1168a39e930829317eff6d6ad0ff20eae17'),
(6, 'Krishna Rao', 'hellokrishnarao@gmail.com', '25d9738d3659a04db62a36dd0ac3c627eb125375ed731cd096939ad8abe4141e'),
(7, 'Krish', 'hellokrishnarao345@gmail.com', '1ed8d59fd3620e6621565b88c29a94c68f7f95ccd785119deac4a2f61cec3fb3'),
(8, 'Sunil Suthar', 'sunil@gmail.com', 'fd28a1db3591d1d1c549052899ba97d57352f871344c88cd4efafb8fbdc34f87'),
(9, 'Krishna Rao', 'hellokrishnarao123@gmail.com', '4993a23614decaf5bebc6ca99c2fb013267130f986788d1705c695e0ed9e110a'),
(10, 'Ravindra S', 'ravindra@agmail.com', '298e5768b1906555cdb7d1cb75ecbac0e48412075cd56966af9e1badfcb21d7c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
