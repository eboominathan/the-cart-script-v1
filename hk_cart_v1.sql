-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2015 at 11:01 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hk_cart_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'test', '098f6bcd4621d373cade4e832627b4f6');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE IF NOT EXISTS `buy` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `city` text NOT NULL,
  `pincode` int(6) NOT NULL,
  `address` text NOT NULL,
  `booked_time` int(11) NOT NULL,
  `dispatch_time` int(11) NOT NULL,
  `status` text NOT NULL,
  `status_code` int(1) NOT NULL,
  `product_stack` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`id`, `user_id`, `name`, `email`, `mobile`, `city`, `pincode`, `address`, `booked_time`, `dispatch_time`, `status`, `status_code`, `product_stack`) VALUES
(1, 1, 'husain saify', 'hsnsaify22@gmail.com', '8962239913', 'bhopal', 462001, '2 lakherapura bho[', 1440837817, 0, 'Shipped', 3, '7,');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` varchar(1) NOT NULL,
  `buy_id` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `active`, `buy_id`) VALUES
(1, 7, 1, 'n', '1');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(1, 'Mobile Phone', 'images/c71ebc0f910bcd807a3d3454d89e61f4/phone1.jpg'),
(2, 'Laptops', 'images/62f15fdd0cedbae7914d783e0945f25f/asus-n76.jpg'),
(3, 'Footwear', 'images/2bc03581595400210f9f7d2a3ba37af3/footware.jpeg'),
(5, 'Dresses', 'images/c791e95aafaf865ec7dcc764e0d75c99/dress2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE IF NOT EXISTS `offer` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `image`, `link`) VALUES
(1, 'images/50303fbfe983a35a36b60e760445fc9c/20130527-230650-homepage-banner-tuesday-sale-electronics.jpg', 'http://localhost/blog/cartv1/product.php?id=1'),
(2, 'images/b12d67c96412d4710e62968db8a029f5/mens-offer-banner.jpg', '#'),
(3, 'images/796efdd4da258b8fbe5c2135c8943f17/slider-1.jpg', 'http://google.comd');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `mp` int(11) NOT NULL,
  `sp` int(11) NOT NULL,
  `off` varchar(4) NOT NULL,
  `shipping` int(11) NOT NULL,
  `tags` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `image`, `description`, `mp`, `sp`, `off`, `shipping`, `tags`) VALUES
(1, 5, 'Black Dress', 'images/11626a29f667dc270c7e8176c7b9d8f4/dress2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sodales dignissim cursus. Etiam nisl lorem, mattis semper luctus at, tincidunt quis mauris. Aliquam aliquet urna sed malesuada rutrum. Cras luctus purus massa, vel tristique purus varius ac. Maecenas tristique tempus quam et tincidunt. Nunc quis scelerisque nisi, et volutpat ante. Phasellus semper ante sit amet lectus facilisis pretium. Maecenas sit amet lorem vel tortor vulputate elementum in sed mi. Etiam fermentum semper ante, at volutpat dui vestibulum in. Morbi tristique, mauris et tempus pretium, lacus eros tempus ipsum, eget maximus sem turpis id ligula. Aenean lacus erat, aliquam ut quam id, semper convallis nunc.', 1500, 1000, '15%', 10, 'black,dress,ladie dress,ladies graments,garments'),
(2, 5, 'Red Dress', 'images/654d6ddb9b4471aa12fdb36235644980/dress.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sodales dignissim cursus. Etiam nisl lorem, mattis semper luctus at, tincidunt quis mauris. Aliquam aliquet urna sed malesuada rutrum. Cras luctus purus massa, vel tristique purus varius ac. Maecenas tristique tempus quam et tincidunt. Nunc quis scelerisque nisi, et volutpat ante. Phasellus semper ante sit amet lectus facilisis pretium. Mae', 1000, 500, '50%', 40, 'black,dress,ladie dress,ladies graments,garments'),
(3, 1, 'Sony Experia', 'images/37ceeba595f587255002afaaa13a3820/experia.jpg', 'black,dress,ladie dress,ladies graments,garments', 7000, 6000, '20%', 50, 'phone,sony,expria,e1'),
(4, 1, 'Iphone 6s', 'images/8b508afcaeed10fbf24cc2866b4bed4d/phone.jpg', 'Aliquam gravida purus in eleifend semper. Vestibulum placerat nisl quis euismod sodales. Sed consequat congue leo, ut lobortis nibh pellentesque sit amet. Aliquam feugiat auctor dapibus. Nulla tempor eget ante ut hendrerit. Nulla pharetra nunc at quam imperdiet, ac vulputate massa dignissim. Morbi arcu se', 80000, 5000, '95%', 5000, 'iphone,phone,apple'),
(5, 2, 'Asus Laptop', 'images/5f6e5aeaff6de280657ea614d23c506f/asus-n76.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sodales dignissim cursus. Etiam nisl lorem, mattis semper luctus at, tincidunt quis mauris. Aliquam aliquet urna sed malesuada rutrum. Cras luctus purus massa, vel tristique purus varius ac. Maecenas tristique tempus quam et tincidunt. Nunc quis scelerisque nisi, et volutpat ante. Phasellus semper ante sit amet lectus facilisis pretium. Maecenas sit amet lorem vel tortor', 50000, 45000, '50%', 42, 'laptops,asus,'),
(6, 2, 'macbook air', 'images/01ae3f7f2ca9b0b08709821bfa669b4f/mac-book-air.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sodales dignissim cursus. Etiam nisl lorem, mattis semper luctus at, tincidunt quis mauris. Aliquam aliquet urna sed malesuada rutrum. Cras luctus purus massa, vel tristique purus varius ac. Maecenas tristique tempus quam et tincidunt. Nunc quis scelerisque nisi, et volutpat ante. Phasellus semper ante sit amet lectus facilisis pretium. Maecenas sit amet lorem vel tortor', 555555, 444444, '50%', 15, 'mac book air,macbook pro,iphone,apple'),
(7, 3, 'Mochi shoes', 'images/cd6abad0c7ff0a53082ab4bcd7f31f92/Shoe-Island-Tan-Ankle-Length-SDL054680536-1-1cfe3.jpg', 'mochi shoes', 1000, 999, '1%`', 0, 'shoes,footwear,gender,men');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone`, `password`) VALUES
(1, 'test', 'test@test.com', '8962239913', '098f6bcd4621d373cade4e832627b4f6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
