-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 10:08 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laurian`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Birthday` date NOT NULL,
  `FavoriteDish` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `Email`, `Address`, `City`, `Phone`, `Birthday`, `FavoriteDish`) VALUES
(1, 'Fatima', 'Msodoki', 'fatima.mohammed@example.com', '123 Kilimani St', 'Dar es Salaam', '+255 700 123456', '1990-08-15', 'Ugali with Fish Curry'),
(2, 'Rashid', 'Makame', 'rashid.makame@example.com', '456 Mnazi Mmoja St', 'Zanzibar', '+255 777 987654', '1985-03-20', 'Pilau'),
(3, 'Aisha', 'Said', 'aisha.said@example.com', '789 Kenyatta Rd', 'Arusha', '+255 787 654321', '1978-11-10', 'Nyama Choma'),
(4, 'Osama', 'Mwinyi', 'Osama.mwinyi@example.com', '321 Makumbusho St', 'Dodoma', '+255 716 111222', '1988-06-25', 'Mshikaki'),
(5, 'Zainab', 'Musa', 'zainab.musa@example.com', '654 Uhuru St', 'Mwanza', '+255 754 333444', '1995-01-03', 'Chapati with Beef Stew'),
(6, 'Said', 'Hamisi', 'said.hamisi@example.com', '987 Kariakoo St', 'Morogoro', '+255 783 556677', '1983-09-18', 'Pilipili Chicken'),
(7, 'Mariam', 'Juma', 'mariam.juma@example.com', '741 Samora St', 'Mbeya', '+255 767 778899', '1990-12-30', 'Matoke'),
(8, 'Hassan', 'Rashid', 'hassan.rashid@example.com', '369 Mzinga Rd', 'Tanga', '+255 718 990011', '1992-06-08', 'Kachumbari Salad'),
(9, 'Amina', 'Juma', 'amina.juma@example.com', '852 Mbagala St', 'Mbagala', '+255 715 112233', '1983-04-17', 'Mishkaki'),
(10, 'Salim', 'Khamis', 'salim.khamis@example.com', '147 Magomeni St', 'Mtwara', '+255 789 334455', '1976-10-05', 'Kuku Wa Kupaka'),
(11, 'Nuru', 'Mbaraka', 'nuru.mbaraka@example.com', '258 Sinza St', 'Kinondoni', '+255 717 556677', '1998-02-12', 'Ndizi Nyama'),
(12, 'Hamisi', 'Juma', 'hamisi.juma@example.com', '369 Mwenge St', 'Morogoro', '+255 755 778899', '1981-07-24', 'Biryani'),
(13, 'Zuwena', 'Rashidi', 'zuwena.rashidi@example.com', '741 Mlimani St', 'Moshi', '+255 780 990011', '1990-03-19', 'Maharage Ya Nazi'),
(14, 'Ali', 'Mussa', 'ali.mussa@example.com', '147 Boma Rd', 'Dodoma', '+255 712 112233', '1974-11-28', 'Mchuzi Wa Samaki'),
(15, 'Zainabu', 'Suleiman', 'zainabu.suleiman@example.com', '258 Pugu Rd', 'Temeke', '+255 767 334455', '1987-09-14', 'Wali Na Kuku'),
(16, 'laur', 'Omar', 'laur.omar@example.com', '369 Buguruni St', 'Ilala', '+255 713 556677', '1995-05-22', 'Supu Ya Ndizi'),
(17, 'Halima', 'Hassan', 'halima.hassan@example.com', '123 Kibaha St', 'Kibaha', '+255 758 778899', '1984-08-07', 'Kisamvu'),
(18, 'Musa', 'Juma', 'musa.juma@example.com', '456 Bagamoyo Rd', 'Bagamoyo', '+255 711 990011', '1991-02-01', 'Mandazi'),
(19, 'Fatma', 'Salim', 'fatma.salim@example.com', '789 Ifakara St', 'Ifakara', '+255 780 112233', '1977-06-09', 'Nyama Ya Nguruwe'),
(20, 'Hemed', 'Ali', 'hemed.ali@example.com', '654 Songea St', 'Songea', '+255 769 334455', '1982-12-03', 'Kitumbua');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `DishID` int(11) NOT NULL,
  `Quality` varchar(20) NOT NULL,
  `DishDescription` varchar(100) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`DishID`, `Quality`, `DishDescription`, `CustomerID`) VALUES
(1, 'High', 'Ugali with Fish Curry', 1),
(2, 'Medium', 'Pilau', 2),
(3, 'Low', 'Nyama Choma', 3),
(4, 'High', 'Mshikaki', 4),
(5, 'Medium', 'Chapati with Beef Stew', 5),
(6, 'Low', 'Pilipili Chicken', 6),
(7, 'High', 'Matoke', 7),
(8, 'Medium', 'Kachumbari Salad', 8),
(9, 'Low', 'Mishkaki', 9),
(10, 'High', 'Kuku Wa Kupaka', 10),
(11, 'Medium', 'Ndizi Nyama', 11),
(12, 'Low', 'Biryani', 12),
(13, 'High', 'Maharage Ya Nazi', 13),
(14, 'Medium', 'Mchuzi Wa Samaki', 14),
(15, 'Low', 'Wali Na Kuku', 15),
(16, 'High', 'Supu Ya Ndizi', 16),
(17, 'Medium', 'Kisamvu', 17),
(18, 'Low', 'Mandazi', 18),
(19, 'High', 'Nyama Ya Nguruwe', 19),
(20, 'Medium', 'Kitumbua', 20);

-- --------------------------------------------------------

--
-- Table structure for table `dishesorders`
--

CREATE TABLE `dishesorders` (
  `DishesOrdersID` int(11) NOT NULL,
  `DishID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishesorders`
--

INSERT INTO `dishesorders` (`DishesOrdersID`, `DishID`, `OrderID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `OrderDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `OrderDate`) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-01-02'),
(3, 3, '2024-01-03'),
(4, 4, '2024-01-04'),
(5, 5, '2024-01-05'),
(6, 6, '2024-01-06'),
(7, 7, '2024-01-07'),
(8, 8, '2024-01-08'),
(9, 9, '2024-01-09'),
(10, 10, '2024-01-10'),
(11, 11, '2024-01-11'),
(12, 12, '2024-01-12'),
(13, 13, '2024-01-13'),
(14, 14, '2024-01-14'),
(15, 15, '2024-01-15'),
(16, 16, '2024-01-16'),
(17, 17, '2024-01-17'),
(18, 18, '2024-01-18'),
(19, 19, '2024-01-19'),
(20, 20, '2024-01-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`DishID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `dishesorders`
--
ALTER TABLE `dishesorders`
  ADD PRIMARY KEY (`DishesOrdersID`),
  ADD KEY `DishID` (`DishID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `DishID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dishesorders`
--
ALTER TABLE `dishesorders`
  MODIFY `DishesOrdersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);

--
-- Constraints for table `dishesorders`
--
ALTER TABLE `dishesorders`
  ADD CONSTRAINT `dishesorders_ibfk_1` FOREIGN KEY (`DishID`) REFERENCES `dishes` (`DishID`),
  ADD CONSTRAINT `dishesorders_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
