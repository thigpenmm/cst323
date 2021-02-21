-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Feb 14, 2021 at 02:47 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `ID` int(2) NOT NULL,
  `ITEM_NO` int(3) NOT NULL,
  `PROD_DESC` varchar(50) NOT NULL,
  `PRICE` float(10,0) NOT NULL,
  `QUANTITY` int(3) NOT NULL,
  `PHOTOS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`ID`, `ITEM_NO`, `PROD_DESC`, `PRICE`, `QUANTITY`, `PHOTOS`) VALUES
(1, 2, 'Red Pencils', 1, 100, 'itemPics/redpencils.jpg'),
(2, 200, 'Blue Pens', 2, 520, 'itemPics/bluepens.jpg'),
(3, 481, 'Green Pencils', 1, 152, 'itemPics/greenpencils.jpg'),
(4, 471, 'Pink Erasers', 3, 145, 'itemPics/pinkerasers.jpg'),
(5, 474, 'Scented Markers', 10, 170, 'itemPics/scentedmarkers.jpg'),
(6, 4, 'Colored Pencils', 5, 147, 'itemPics/coloredpencils.jpg'),
(7, 1, 'Paper', 15, 800, 'itemPics/paper.jpg'),
(8, 7, 'Index Cards', 1, 745, 'itemPics/indexcards.jpg'),
(9, 9, 'Post its', 4, 400, 'itemPics/postits.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `ID` int(11) NOT NULL,
  `ORDERS_ID` int(11) NOT NULL,
  `PRODUCTS_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `CURRENTPRICE` float NOT NULL,
  `CURRENTDESCRIPTION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`ID`, `ORDERS_ID`, `PRODUCTS_ID`, `QUANTITY`, `CURRENTPRICE`, `CURRENTDESCRIPTION`) VALUES
(1, 1, 9, 2, 8, 'Post its'),
(2, 2, 474, 3, 30, 'Scented Markers'),
(3, 3, 8, 4, 4, 'Index Cards'),
(4, 4, 471, 3, 9, 'Pink Erasers'),
(5, 5, 4, 4, 20, 'Colored Pencils'),
(6, 6, 481, 6, 6, 'Green Pencils');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `TOTAL` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `DATE`, `USERNAME`, `TOTAL`) VALUES
(1, '2021-02-03', 'MickMouse1', 8),
(2, '2021-02-04', 'DaisyDuck1', 30),
(3, '2021-02-05', 'MickMouse1', 4),
(4, '2021-02-05', 'MinnMouse1', 9),
(5, '2021-02-13', 'MercyMe', 20),
(6, '2021-02-13', 'MickMouse1', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `Admin`) VALUES
(1, 'MickMouse1', 'themouse', 'Mickey', 'Mouse', 'thisguy@disney.com', 1),
(2, 'DaisyDuck1', 'purplebow', 'Daisy', 'Duck', 'flor@disney.com', 0),
(3, 'MinnMouse1', 'redbow', 'Minnie', 'Mouse', 'thisgirl@disney.com', 0),
(12, 'Test', 'test', 'Test', 'Account', 'test@test.com', 0),
(16, 'mercyme', 'test1', 'Mercy', 'Thigpen', 'me@project.com', 0),
(17, 'CaptUnderpants', 'test1', 'Capt', 'Underpants', 'principal@school.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
