-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 07:33 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `ID` int(10) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Modified_at` datetime NOT NULL,
  `Created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`ID`, `UserName`, `Password`, `Email`, `Modified_at`, `Created_at`) VALUES
(1, 'Admin', '$2y$10$XdoEAwY0QqtxL.RyNqSOQ.I31QQVpR6HhKHnAKNyuc/6deOiSWsAW', 'admin@gmail.com', '2022-04-05 00:00:00', '2022-04-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `ID` int(10) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State_ID` int(10) NOT NULL,
  `Country_ID` int(10) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Modified_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`ID`, `City`, `State_ID`, `Country_ID`, `Created_At`, `Modified_At`) VALUES
(1, 'AHMEDABAD', 1, 1, '2022-04-08 09:05:38', '2022-04-13 04:47:38'),
(6, 'SULTANPUR', 3, 1, '2022-04-12 05:38:48', '2022-04-12 05:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `ID` int(10) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `IsActive` int(2) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Modified_At` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`ID`, `Country`, `IsActive`, `Created_At`, `Modified_At`) VALUES
(1, 'INDIA', 0, '2022-04-13 04:41:24', '2022-04-13 04:41:24'),
(2, 'NEPAL', 0, '2022-04-08 11:49:14', '2022-04-08 11:49:14'),
(4, 'USA', 0, '2022-04-12 05:09:00', '2022-04-11 06:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(10) NOT NULL,
  `Product_Name` varchar(100) NOT NULL,
  `Product_Description` varchar(255) NOT NULL,
  `Product_Price` int(10) NOT NULL,
  `Product_Quantity` int(10) NOT NULL,
  `Product_Color_ID` varchar(10) NOT NULL,
  `IsTrending` int(2) DEFAULT NULL,
  `Product_Size` varchar(10) NOT NULL,
  `Category_ID` int(10) NOT NULL,
  `Subcategory_ID` int(10) NOT NULL,
  `SKU` varchar(50) DEFAULT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Modified_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Product_Name`, `Product_Description`, `Product_Price`, `Product_Quantity`, `Product_Color_ID`, `IsTrending`, `Product_Size`, `Category_ID`, `Subcategory_ID`, `SKU`, `Created_At`, `Modified_At`) VALUES
(23, 'product2 kids tshirt', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected', 1000, 1, '2', 0, '6', 53, 14, NULL, '2022-04-13 06:51:01', '2022-04-14 03:58:36'),
(24, 'product3 men shirt', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected', 2000, 2, '3', 0, '1', 9, 4, NULL, '2022-04-13 06:54:28', '2022-04-13 12:02:32'),
(25, 'product1 women jeans', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected', 5000, 11, '2', 1, '6', 10, 6, NULL, '2022-04-13 07:38:58', '2022-04-13 07:38:58'),
(26, 'product4 accessories wallet', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected', 2556, 12, '3', 0, '1', 69, 15, NULL, '2022-04-18 09:45:08', '2022-04-18 09:45:08'),
(27, 'product8 men shirt', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 1456, 12, '2', 1, '6', 9, 4, NULL, '2022-04-19 03:44:38', '2022-04-19 03:44:38'),
(28, 'product9 man product9 man product9 mansssssssssss ', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 2554, 14, '7', 0, '6', 9, 12, NULL, '2022-04-19 03:52:40', '2022-04-19 03:52:40'),
(29, 'product9 men jeans', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 4444, 44, '2', 0, '1', 9, 16, NULL, '2022-04-19 03:52:40', '2022-04-19 03:52:40'),
(30, 'product10 men shirt', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 1212, 11, '2', 0, '1', 9, 4, NULL, '2022-04-19 03:52:40', '2022-04-19 03:52:40'),
(31, 'product11 men shirt', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 1213, 22, '3', 1, '1', 9, 4, NULL, '2022-04-19 03:52:40', '2022-04-19 03:52:40'),
(32, 'product 12 men shirt', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 2121, 11, '3', 0, '6', 9, 4, NULL, '2022-04-19 03:52:40', '2022-04-19 03:52:40'),
(33, 'product 13 men shirt', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 2131, 12, '2', 1, '1', 9, 4, NULL, '2022-04-19 03:52:40', '2022-04-19 03:52:40'),
(34, 'product 14 women  jeans', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 2154, 12, '2', 0, '6', 10, 6, NULL, '2022-04-19 03:52:40', '2022-04-19 03:52:40'),
(35, 'product 15 women jeans', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 2563, 12, '3', 0, '1', 10, 6, NULL, '2022-04-19 03:52:40', '2022-04-19 03:52:40'),
(36, 'product 16 women tshirt', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 1232, 12, '7', 1, '1', 10, 18, NULL, '2022-04-19 03:52:40', '2022-04-19 03:52:40'),
(37, 'product 17  women tshirt', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 2563, 21, '2', 0, '6', 10, 18, NULL, '2022-04-19 03:52:40', '2022-04-19 03:52:40'),
(38, 'product 20 women jeans', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 1000, 12, '3', 1, '1', 10, 6, NULL, '2022-04-19 03:56:28', '2022-04-19 03:56:28'),
(39, 'product 22 women tshirt', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 2564, 11, '7', 0, '6', 10, 18, NULL, '2022-04-19 03:56:28', '2022-04-19 03:56:28'),
(40, 'product25 men jacket', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 2525, 22, '2', 1, '1', 9, 17, NULL, '2022-04-19 04:03:34', '2022-04-19 04:03:34'),
(41, 'product 29 men jacket', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 2527, 14, '3', 1, '6', 9, 17, NULL, '2022-04-19 04:03:34', '2022-04-19 04:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `ID` int(11) NOT NULL,
  `Category_Name` varchar(255) NOT NULL,
  `Category_desc` varchar(255) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Modified_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`ID`, `Category_Name`, `Category_desc`, `Created_At`, `Modified_At`) VALUES
(9, 'MEN', 'abcdd', '2022-04-07 15:33:33', '2022-04-15 14:02:46'),
(10, 'WOMEN', 'efg', '2022-04-07 15:33:41', '2022-04-15 14:02:52'),
(53, 'KIDS', 'hij', '2022-04-08 06:25:55', '2022-04-15 14:02:57'),
(69, 'ACCESSORIES', 'aa', '2022-04-15 04:09:16', '2022-04-15 04:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `ID` int(10) NOT NULL,
  `Product_Color` varchar(255) NOT NULL,
  `Color_Code` varchar(25) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Modified_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`ID`, `Product_Color`, `Color_Code`, `Created_At`, `Modified_At`) VALUES
(2, 'PINK', '#fb09e7', '2022-04-09 05:57:48', '2022-04-13 04:35:35'),
(3, 'BLUE', '#2a5ccf', '2022-04-11 06:29:04', '2022-04-11 06:29:04'),
(7, 'RED', '#ff0000', '2022-04-18 05:50:45', '2022-04-18 05:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Image_Path` varchar(255) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Modified_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`ID`, `Product_ID`, `Image_Path`, `Created_At`, `Modified_At`) VALUES
(24, 23, '1945108352.jpg', '2022-04-13 06:51:01', '2022-04-13 06:51:01'),
(26, 24, '1945108352.jpg', '2022-04-13 06:54:28', '2022-04-13 06:54:28'),
(33, 25, '1945108352.jpg', '2022-04-13 07:38:58', '2022-04-13 07:38:58'),
(34, 25, '1945108352.jpg', '2022-04-13 07:44:58', '2022-04-13 07:44:58'),
(38, 26, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(39, 27, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(40, 28, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(41, 29, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(42, 30, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(43, 31, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(44, 32, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(45, 33, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(46, 34, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(47, 35, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(48, 36, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(49, 37, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(50, 38, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(51, 39, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(52, 40, '1945108352.jpg', '2022-04-22 04:05:58', '2022-04-22 04:05:58'),
(53, 41, '1945108352.jpg', '2022-04-22 04:06:15', '2022-04-22 04:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `ID` int(10) NOT NULL,
  `Product_Size` varchar(255) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Modified_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`ID`, `Product_Size`, `Created_At`, `Modified_At`) VALUES
(1, 'M', '2022-04-09 06:25:10', '2022-04-13 04:38:17'),
(6, 'XL', '2022-04-13 06:52:51', '2022-04-13 06:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_subcategory`
--

CREATE TABLE `product_subcategory` (
  `ID` int(10) NOT NULL,
  `Category_ID` int(10) NOT NULL,
  `Subcategory_Name` varchar(255) NOT NULL,
  `Subcategory_desc` varchar(255) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Modified_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_subcategory`
--

INSERT INTO `product_subcategory` (`ID`, `Category_ID`, `Subcategory_Name`, `Subcategory_desc`, `Created_At`, `Modified_At`) VALUES
(4, 9, 'Shirt', 'bg', '2022-04-08 08:32:02', '2022-04-13 10:09:50'),
(6, 10, 'JEANS', 'dd', '2022-04-08 10:43:18', '2022-04-08 10:43:18'),
(12, 9, 'T-shirt', 'abcd', '2022-04-12 05:50:25', '2022-04-12 05:50:25'),
(14, 53, 'T-shirt', 'aws', '2022-04-15 04:18:06', '2022-04-15 04:18:06'),
(15, 69, 'WALLET', 'Abc', '2022-04-15 04:23:43', '2022-04-15 04:23:43'),
(16, 9, 'JEANS', 'aa', '2022-04-18 14:42:41', '2022-04-18 14:42:41'),
(17, 9, 'Jacket', 'dd', '2022-04-18 14:43:53', '2022-04-18 14:43:53'),
(18, 10, 'T-shirt', 'aa', '2022-04-18 14:44:26', '2022-04-18 14:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `ID` int(11) NOT NULL,
  `Country_ID` int(10) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Modified_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`ID`, `Country_ID`, `State`, `Created_At`, `Modified_At`) VALUES
(1, 1, 'GUJARAT', '2022-04-08 09:03:52', '2022-04-13 04:44:39'),
(3, 1, 'DELHI', '2022-04-08 12:42:46', '2022-04-08 12:42:46'),
(7, 2, 'JANAKPUR', '2022-04-12 05:09:47', '2022-04-12 05:09:47'),
(8, 4, 'TEXAS', '2022-04-12 05:10:18', '2022-04-12 05:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(10) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Gender` enum('M','F') NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Mobile` varchar(12) NOT NULL,
  `Intrest` varchar(50) DEFAULT NULL,
  `Created_At` datetime NOT NULL,
  `Modified_At` datetime NOT NULL,
  `Status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `UserName`, `FirstName`, `LastName`, `Email`, `Password`, `Gender`, `Phone`, `Mobile`, `Intrest`, `Created_At`, `Modified_At`, `Status`) VALUES
(1, 'kps', 'kenil', 'soni', 'abc@gmail.com', '1111111', 'M', '11111111', '11111111', NULL, '2022-04-13 12:00:00', '2022-04-13 12:00:00', 1),
(2, 'aaa', 'jenil', 'soni', 'abc@gmail.com', '1111111', 'M', '11111111', '5478965478', NULL, '2022-04-13 12:00:00', '2022-04-13 12:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `ID` int(10) NOT NULL,
  `User_ID` int(10) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `Country_ID` int(10) NOT NULL,
  `State_ID` int(10) NOT NULL,
  `City_ID` int(10) NOT NULL,
  `Address_Type` enum('Billing','Shipping') NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`ID`, `User_ID`, `Street`, `Country_ID`, `State_ID`, `City_ID`, `Address_Type`, `Created_At`) VALUES
(1, 1, 'abc', 1, 1, 1, 'Shipping', '2022-04-12 13:12:44'),
(2, 2, 'abcdef', 1, 1, 1, 'Billing', '2022-04-08 10:33:17'),
(3, 1, 'fgh', 1, 3, 6, 'Billing', '2022-04-13 05:05:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `city_ibfk_1` (`State_ID`),
  ADD KEY `Country_ID` (`Country_ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `product_ibfk_1` (`Category_ID`),
  ADD KEY `product_ibfk_2` (`Subcategory_ID`),
  ADD KEY `product_ibfk_3` (`Product_Color_ID`),
  ADD KEY `product_ibfk_4` (`Product_Size`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `product_image_ibfk_1` (`Product_ID`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product_subcategory`
--
ALTER TABLE `product_subcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `product_subcategory_ibfk_1` (`Category_ID`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Country_ID` (`Country_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_address_ibfk_1` (`User_ID`),
  ADD KEY `Country_ID` (`Country_ID`),
  ADD KEY `State_ID` (`State_ID`),
  ADD KEY `City_ID` (`City_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_subcategory`
--
ALTER TABLE `product_subcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`State_ID`) REFERENCES `state` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `city_ibfk_2` FOREIGN KEY (`Country_ID`) REFERENCES `country` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `product_category` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`Subcategory_ID`) REFERENCES `product_subcategory` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_subcategory`
--
ALTER TABLE `product_subcategory`
  ADD CONSTRAINT `product_subcategory_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `product_category` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`Country_ID`) REFERENCES `country` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_address_ibfk_2` FOREIGN KEY (`Country_ID`) REFERENCES `country` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_address_ibfk_3` FOREIGN KEY (`State_ID`) REFERENCES `state` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_address_ibfk_4` FOREIGN KEY (`City_ID`) REFERENCES `city` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
