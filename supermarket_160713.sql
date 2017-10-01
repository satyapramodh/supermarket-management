-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2013 at 05:58 AM
-- Server version: 5.5.16
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE IF NOT EXISTS `buy` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_date` date NOT NULL,
  `pids` text NOT NULL,
  `total_amount` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`purchase_id`, `purchase_date`, `pids`, `total_amount`, `profit`, `cid`) VALUES
(1, '2012-11-02', '2,5,11', 6250, 850, 0),
(2, '2012-11-02', '2,5,11,8', 7250, 950, 0),
(3, '2012-11-02', '8,5,1', 46120, 5120, 0),
(4, '2012-11-02', '8,1', 2200, 300, 0),
(5, '2012-11-02', '1', 1200, 200, 0),
(6, '2012-11-02', '1,10,5', 123700, 12700, 0),
(7, '2012-11-02', '1,1', 12000, 2000, 0),
(8, '2012-11-02', '14', 1575, 175, 0),
(9, '2012-11-03', '14,13', 350, 38, 1),
(10, '2012-11-03', '13', 125, 13, 1),
(11, '2012-11-03', '18', 22, 6, 1),
(12, '2012-11-03', '13,19', 1275, 135, 0),
(13, '2012-11-03', '14,21', 2205, 35, 0),
(14, '2012-11-03', '41', 629, 90, 1),
(15, '2012-11-03', '39,21,25', 467, 114, 1),
(16, '2012-11-03', '19', 10, 2, 0),
(17, '2012-11-03', '17,25', 620, 100, 0),
(18, '2012-11-03', '23,16', 999, 209, 0),
(19, '2012-11-03', '26,16', 2300, 550, 1),
(20, '2012-11-03', '16,29', 33169, 2346, 1),
(21, '2012-11-03', '19', 50, 10, 0),
(22, '2012-11-03', '16', 355, 130, 0),
(23, '2012-11-10', '15,22', 520, 140, 0),
(24, '2012-11-10', '16', 128, 38, 0),
(25, '2012-11-10', '15', 420, 120, 3),
(26, '2012-11-10', '23', 200, 30, 3),
(27, '2012-11-12', '21', 180, 10, 0),
(28, '2012-11-12', '22,29', 32939, 2261, 3),
(29, '2012-11-14', '16,19', 684, 194, 3),
(30, '2013-02-11', '15,22', 604, 164, 0),
(31, '2013-03-01', '24', 100, 20, 2),
(32, '2013-04-13', '15', 42, 12, 0),
(33, '2013-04-13', '13', 375, -81, 0),
(34, '2013-04-22', '34', 2198, 444, 55);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `cjoin_date` date NOT NULL,
  `cmoney_spent` int(11) NOT NULL,
  `caddress` varchar(50) NOT NULL,
  `cmoney_spent_reset` int(5) NOT NULL,
  `cphone` int(12) NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cphone` (`cphone`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `first_name`, `last_name`, `cjoin_date`, `cmoney_spent`, `caddress`, `cmoney_spent_reset`, `cphone`) VALUES
(1, 'Vikram', 'Singh', '2012-11-02', 36587, 'Plot #30, Gunrock Enclave, Sec', 0, 77229900),
(2, 'Rishab jain', 'Gupta', '2012-11-03', 100, 'Plot #12, Gandhi Nagar, Hyderabad', 0, 88337733),
(3, 'Pratik', 'Shah', '2012-11-03', 34243, 'Plot No 20, Hyderabad', 0, 44889933);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `manager_id` int(11) NOT NULL,
  `dept_id` int(5) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(40) NOT NULL,
  `manager_start_date` date NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`manager_id`, `dept_id`, `dept_name`, `manager_start_date`) VALUES
(1, 1, 'Books', '2013-03-09'),
(9, 2, 'Electronics', '2012-10-31'),
(11, 3, 'Clothes', '2012-10-31'),
(0, 4, 'Household', '2012-10-31'),
(10, 5, 'Furniture', '2012-10-31'),
(14, 6, 'Handicraft', '2012-11-03'),
(14, 7, 'Toys', '2012-11-12'),
(2, 8, 'Food', '2012-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) NOT NULL,
  `salary` int(8) NOT NULL,
  `phone_number` int(12) NOT NULL,
  `address` varchar(60) NOT NULL,
  `uid` int(11) NOT NULL,
  `join_date` date NOT NULL,
  `dob` date NOT NULL,
  `end_date` date NOT NULL DEFAULT '0000-00-00',
  `perks` int(11) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`first_name`, `last_name`, `id`, `dept_id`, `salary`, `phone_number`, `address`, `uid`, `join_date`, `dob`, `end_date`, `perks`, `admin`) VALUES
('Owner', '', 1, 0, 50000, 99999999, 'H.no12, Example Nagar', 78945, '2012-10-31', '1992-10-01', '0000-00-00', 0, 2),
('Pramodh', 'Mazumdar', 2, 1, 50000, 99994444, 'L-502', 11, '2012-10-31', '1992-12-11', '0000-00-00', 0, 1),
('Manal', 'Gandhi', 9, 2, 25000, 88343388, 'L-502', 19389, '2012-11-03', '1992-02-22', '0000-00-00', 0, 1),
('Rohith', 'Ravi', 10, 3, 25000, 22338899, 'E-149', 34892, '2012-11-03', '1992-12-14', '0000-00-00', 0, 1),
('Shravya', 'Rao', 11, 4, 25000, 44889922, 'House #39, Gandhi Nagar, Hyderabad', 22889, '2012-11-03', '1992-04-02', '0000-00-00', 0, 1),
('Mukundh', 'Sinha', 12, 1, 20000, 44992200, 'House #19, Shanit Nagar, Hyderabad', 22998, '2012-11-03', '1992-03-11', '0000-00-00', 0, 0),
('ram', 'ram', 13, 0, 8797, 5646, 'asdfhaf', 644, '2012-11-03', '1992-06-12', '0000-00-00', 0, 0),
('Amit', 'Shah', 14, 0, 20000, 88332288, 'House No 10, Hyderabad', 12345, '2012-11-03', '1992-10-10', '0000-00-00', 0, 1),
('Surbhi', 'B', 15, 0, 50000, 88888, 'sadhfja', 8798654, '2013-03-09', '1992-06-12', '0000-00-00', 0, 1),
('agfg', 'asdfasf', 16, 0, 234543, 3456, 'dsfgsdf', 3456, '2013-04-22', '0000-00-00', '0000-00-00', 0, 1),
('', '', 17, 0, 567, 347, 'fdk', 45, '2013-04-23', '0000-00-00', '0000-00-00', 0, 1),
('', '', 18, 0, 34265, 34, 'askdjhf', 2345, '2013-04-23', '0000-00-00', '0000-00-00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `id`, `admin`) VALUES
('owner', '72122ce96bfec66e2396d2e25225d70a', 1, 2),
('pramodh', '1952a01898073d1e561b9b4f2e42cbd7', 2, 1),
('rohith', '7deb2a92e95689fb3bce0a96eca0592f', 4, 1),
('ram', '4641999a7679fcaef2df0e26d11e3c72', 7, 0),
('amit', '0cb1eb413b8f7cee17701a37a1d74dc3', 8, 1),
('surbhi', '326e02a4db651f0d2101044e597d5092', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_from`
--

CREATE TABLE IF NOT EXISTS `orders_from` (
  `status` tinyint(2) NOT NULL,
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(5) NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `cost_price` int(7) NOT NULL,
  `supplier_id` int(6) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `product_type` int(11) NOT NULL,
  `market_price` int(7) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `cost_price`, `supplier_id`, `product_name`, `quantity`, `product_type`, `market_price`) VALUES
(13, 125, 5, 'Dexter', 400, 4, 114),
(14, 225, 5, 'Nancy Drew', 32, 4, 200),
(15, 42, 15, 'War and Peace', 42, 4, 30),
(16, 71, 15, 'Pride and Prejudice', 48, 4, 45),
(17, 12, 5, 'Angels and Demons', 190, 1, 9),
(18, 12, 15, 'Digital Fortress', 218, 1, 8),
(19, 5, 5, 'I Alex Cross', 103, 1, 4),
(20, 10, 5, 'Sherlok Holmes', 70, 1, 8),
(21, 20, 15, 'Five Point Someone', 79, 1, 17),
(22, 10, 15, '2 States', 100, 1, 8),
(23, 20, 15, 'Gulliver''s Travels', 20, 1, 17),
(24, 10, 5, 'Jane Eyre', 68, 1, 8),
(25, 50, 5, 'Game of Thrones', 28, 1, 43),
(26, 159, 15, 'Oliver Twist', 40, 4, 130),
(28, 30999, 13, 'Eragorn', 15, 2, 26920),
(29, 36499, 13, 'E', 8, 2, 30598),
(30, 399, 13, 'BBurn Toaster NN2990', 20, 2, 284),
(31, 450, 13, 'GuBurn Toaster TT390', 7, 2, 377),
(32, 469, 13, 'Huwai Electric Iron ', 20, 2, 340),
(33, 399, 13, 'Kunchua Electric Iro', 30, 2, 279),
(34, 1099, 13, 'LG Rice Cooker  RC48', 8, 2, 877),
(35, 649, 16, 'Nike Jacket JK3390R', 16, 3, 569),
(36, 899, 16, 'Adidas Jacket ADJ480', 10, 3, 720),
(37, 599, 16, 'Levis Jeans RF390F34', 4, 3, 430),
(38, 699, 16, 'Levis Jeans RF390F32', 4, 3, 590),
(39, 399, 16, 'Reebok Track RT101B3', 3, 3, 250),
(40, 659, 16, 'Levis Jeans SF30B34', 7, 3, 499),
(41, 629, 16, 'Levis Jeans SF30B32', 8, 3, 539),
(42, 70099, 11, ' Kunchiku Sofa Set S', 3, 5, 56290),
(43, 81999, 11, ' Kunchiku Sofa Set S', 3, 5, 57200),
(44, 199, 11, 'Nilkamal Chair NC39W', 20, 5, 139),
(45, 259, 11, 'Nilkamal Chair NC31W', 25, 5, 179),
(46, 3599, 11, 'Wichunki Dining Tabl', 5, 5, 2768),
(47, 2500, 13, 'Apple iPod 8GB', 100, 2, 2000),
(48, 450, 5, 'Harry Potter', 100, 1, 500),
(49, 400, 5, 'Da Vinci Code', 100, 1, 450);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE IF NOT EXISTS `promotion` (
  `discount` int(3) NOT NULL,
  `valid_upto` date NOT NULL,
  `promo_code` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`promo_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`discount`, `valid_upto`, `promo_code`, `count`) VALUES
(12, '2010-05-04', 1, 0),
(25, '2014-05-04', 2, 1),
(10, '2012-12-01', 3, 9),
(20, '2010-01-01', 4, 0),
(15, '2013-01-01', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `sdealer` varchar(20) NOT NULL,
  `semail` varchar(40) NOT NULL,
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `saddress` varchar(50) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `sphone` int(12) NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sphone` (`sphone`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sdealer`, `semail`, `sid`, `saddress`, `sname`, `sphone`) VALUES
('KGK Suppliers', 'krishna.mohan@gmail.com', 5, 'Shop No. 67, Monda Market, Sec-500023.', 'Krishna Mohani', 2147483647),
('Furniture Mart', 'rahul@furniturem.net', 11, 'Shop #189, Jan Man Road, Mumbai', 'Rahul Shrma', 28899333),
('SV Electronics', 'ashish@svelec.net', 13, 'Shop #39, Gunrock, Hyderabad', 'Ashish Shah', 33880011),
('GN Suppliers', 'hb@gns.net', 15, 'Shop #420, Gangnumpet, Hyderabad', 'Hasmukh Bhai', 88773397),
('AIO Factory Outlet', 'kn@aiofo.net', 16, 'Shop #229, Old Airport Road, Hyd', 'Kranti Nair', 87844322),
('KVC Suppliers', 'shing@kvc.net', 17, 'Plot No 10, Hyderabad', 'Shing', 33889922);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `p_name` varchar(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
