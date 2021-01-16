-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 04:29 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Rubaiyat Karim', 'admin', 'admin@gmail.com', 'a0e122fd7ecddd0526003e3cf0fa7824', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Acer'),
(2, 'Samsung'),
(3, 'Iphone'),
(4, 'Lenovo'),
(5, 'LG'),
(7, 'Huawei');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 'c196c0fjkocqj46iov70hv7j8j', 7, 'Lorem Ipsum is simply', 677.20, 4, 'uploads/4774e61757.jpg'),
(4, 'pkatdobi1q2uk8o85e82thn1cu', 8, 'Lorem Ipsum is simply', 677.20, 2, 'uploads/e24e224770.jpg'),
(5, 'pkatdobi1q2uk8o85e82thn1cu', 6, 'Lorem Ipsum is simply', 677.20, 1, 'uploads/1b1e9d69d8.jpg'),
(6, 'g9l6jorsucnd51kfguna6egao5', 8, 'Lorem Ipsum is simply', 677.20, 3, 'uploads/e24e224770.jpg'),
(7, 'g9l6jorsucnd51kfguna6egao5', 6, 'Lorem Ipsum is simply', 677.20, 1, 'uploads/1b1e9d69d8.jpg'),
(16, 'mk44qlogcqbm6vphqdjsqt2rh6', 3, 'Lorem Ipsum is simply', 1200.00, 3, 'uploads/7bc463b05e.jpg'),
(17, '98mlp9bqm551hksqhg8p5hm849', 2, 'Lorem Ipsum is simply', 2500.60, 1, 'uploads/9fa30fc0c9.jpg'),
(18, 'aj6n3uo54gch502veviio6a1id', 2, 'Lorem Ipsum is simply', 2500.60, 1, 'uploads/9fa30fc0c9.jpg'),
(20, 'jqps8v3spjk7l7huiem59hklin', 2, 'Lorem Ipsum is simply', 2500.60, 1, 'uploads/9fa30fc0c9.jpg'),
(47, 'rokffvtridfjqcicog4sb4ue01', 6, 'Lorem Ipsum is simply', 677.20, 1, 'uploads/43c36a790a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Desktop'),
(2, 'Laptop'),
(3, 'Mobile Phones'),
(4, 'Accessories'),
(5, 'Software'),
(6, 'Sports'),
(7, 'Footwear'),
(8, 'haaaa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(4, 'Rana', 'Feni', 'Feni', 'Bangladesh', '3900', '123', 'rupaksyed@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'rifat', 'Feni', 'Feni', 'Bangladesh', '3900', '123', 'rrr', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'mom', 'dhaka', 'Dhaka', 'Bangladesh', '3900', '123', '@hh', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(58, 1, 3, 'Lorem Ipsum is simply', 1, 1200.00, 'uploads/16b56a3f29.jpg', '2020-09-21 08:00:04', 1),
(59, 1, 8, 'Lorem Ipsum is simply', 1, 677.20, 'uploads/e24e224770.jpg', '2020-09-21 08:00:15', 0),
(60, 1, 3, 'Lorem Ipsum is simply', 1, 1200.00, 'uploads/16b56a3f29.jpg', '2020-09-21 08:00:44', 1),
(61, 1, 8, 'Lorem Ipsum is simply', 2, 1354.40, 'uploads/e24e224770.jpg', '2020-09-21 08:46:29', 0),
(62, 4, 8, 'Lorem Ipsum is simply', 4, 2712.80, 'uploads/e24e224770.jpg', '2021-01-10 02:24:04', 0),
(63, 4, 2, 'Lorem Ipsum is simply', 1, 2500.60, 'uploads/9fa30fc0c9.jpg', '2021-01-10 02:45:19', 0),
(64, 4, 8, 'Lorem Ipsum is simply', 1, 678.20, 'uploads/e24e224770.jpg', '2021-01-10 02:50:31', 0),
(65, 5, 8, 'Lorem Ipsum is simply', 4, 2712.80, 'uploads/e24e224770.jpg', '2021-01-10 03:10:52', 0),
(66, 5, 6, 'Lorem Ipsum is simply', 5, 3386.00, 'uploads/43c36a790a.jpg', '2021-01-10 03:10:52', 0),
(67, 5, 7, 'Lorem Ipsum is simply', 1, 677.20, 'uploads/4774e61757.jpg', '2021-01-10 03:10:52', 0),
(68, 4, 8, 'Lorem Ipsum is simply', 1, 678.20, 'uploads/e24e224770.jpg', '2021-01-10 03:13:21', 0),
(69, 4, 2, 'Lorem Ipsum is simply', 4, 10002.40, 'uploads/9fa30fc0c9.jpg', '2021-01-10 03:16:08', 0),
(70, 4, 8, 'Lorem Ipsum is simply', 3, 2034.60, 'uploads/e24e224770.jpg', '2021-01-10 03:16:26', 0),
(71, 4, 6, 'Lorem Ipsum is simply', 1, 677.20, 'uploads/43c36a790a.jpg', '2021-01-10 03:16:38', 0),
(72, 6, 2, 'Lorem Ipsum is simply', 2, 5001.20, 'uploads/9fa30fc0c9.jpg', '2021-01-10 11:40:26', 0),
(73, 4, 9, 'retey', 1, 4535345.00, 'uploads/56c9e569c8.png', '2021-01-14 19:25:01', 0),
(74, 4, 7, 'Lenovo laptop is awesome', 1, 677.20, 'uploads/4774e61757.jpg', '2021-01-14 20:24:04', 0),
(75, 4, 2, 'Iphone is expensive', 1, 2500.60, 'uploads/9fa30fc0c9.jpg', '2021-01-14 20:26:52', 0),
(76, 4, 8, 'Samsung is simply', 1, 678.20, 'uploads/e24e224770.jpg', '2021-01-14 20:26:52', 0),
(77, 4, 9, 'retey', 1, 4535345.00, 'uploads/56c9e569c8.png', '2021-01-14 20:37:16', 0),
(78, 4, 9, 'retey', 1, 4535345.00, 'uploads/56c9e569c8.png', '2021-01-14 20:49:47', 0),
(79, 4, 2, 'Iphone is expensive', 1, 2500.60, 'uploads/9fa30fc0c9.jpg', '2021-01-14 20:49:47', 0),
(80, 4, 8, 'Samsung is simply', 1, 678.20, 'uploads/e24e224770.jpg', '2021-01-14 20:56:04', 0),
(81, 4, 8, 'Samsung is simply', 1, 678.20, 'uploads/e24e224770.jpg', '2021-01-15 01:57:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(1, 'Lorem Ipsum is simply', 3, 2, '<p>Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product</p>', 1000.50, 'uploads/2c23e74d67.jpg', 0),
(2, 'Iphone is expensive', 3, 3, '<p>Hello Appleusers...Hello Appleusers...Hello Appleusers...Hello Appleusers...Hello Appleusers...Hello Appleusers...</p>', 2500.60, 'uploads/9fa30fc0c9.jpg', 0),
(3, 'Lorem Ipsum is simply', 1, 2, '<p>Dextop details...Dextop details...Dextop details...Dextop details...Dextop details...Dextop details...Dextop details...</p>', 1200.00, 'uploads/16b56a3f29.jpg', 0),
(6, 'Macrolab', 4, 2, '<p>CCTV!you are in screen!</p>', 677.20, 'uploads/43c36a790a.jpg', 0),
(7, 'Lenovo laptop is awesome', 2, 4, '<p>Lenovo Laptop...Lenovo Laptop...Lenovo Laptop...Lenovo Laptop...</p>', 677.20, 'uploads/4774e61757.jpg', 0),
(8, 'Samsung is simply', 4, 2, '<p>Product is updated ..........Hurrehhhh!Product is updated ..........Hurrehhhh!</p>', 678.20, 'uploads/e24e224770.jpg', 1),
(9, 'retey', 6, 7, '<p>yreyey</p>', 4535345.00, 'uploads/56c9e569c8.png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
