-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2016 at 07:15 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bachatbag`
--

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `invoice_footer` varchar(1000) NOT NULL,
  `tin_number` text NOT NULL,
  `dl_number` text NOT NULL,
  `timings` text NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `company`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `logo`, `invoice_footer`, `tin_number`, `dl_number`, `timings`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(1, 'Mian Saleem', 'Tecdiary IT Solutions', 'Address', 'City', 'Sate', '0000', 'Malaysia', '012345678', 'saleem@tecdairy.com', 'logo.png', '', '', '', '', '', '', '', '', '', ''),
(2, 'Biller Billa', 'Billa Company', 'Bangalore', 'Bangalore', 'Karnataka', '560035', 'India', '8888888888', 'biller1@gmail.com', 'logo.png', '&lt;p&gt;\r\n   Check It.  It is Invoice Footer information\r\n&lt;/p&gt;', '', '', '', 'Check1', 'Check2', 'Check3', 'Check4', 'Check5', 'Check6');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `date` date NOT NULL,
  `data` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cart_management`
--

CREATE TABLE `cart_management` (
  `id` int(11) NOT NULL,
  `product_code` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `size` varchar(250) NOT NULL,
  `color` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_management`
--

INSERT INTO `cart_management` (`id`, `product_code`, `product_name`, `user_id`, `size`, `color`, `price`, `image`) VALUES
(1, 78890, '', 2, '', '', 0, ''),
(2, 78890, '', 19, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `code`, `name`) VALUES
(2, 1002, 'FURNITURES'),
(3, 1001, 'ELECTRONICS'),
(4, 1003, 'GROCERIES');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `images` varchar(250) DEFAULT NULL,
  `front_catalog` varchar(250) DEFAULT NULL,
  `front_navi` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `catalog_id`, `code`, `name`, `images`, `front_catalog`, `front_navi`) VALUES
(21, 3, '485', 'Mac machine', '', NULL, NULL),
(20, 3, '124', 'Tablets', '', NULL, NULL),
(19, 3, '123', 'laptop', '', NULL, NULL),
(22, 3, '1235', 'desktop', '', NULL, NULL),
(23, 3, '123456', 'mobiles', '', NULL, NULL),
(26, 6, '564', 'stapels', '', NULL, NULL),
(27, 4, '786789', 'hgjhgj', '', NULL, NULL),
(28, 3, '68768', 'ghgj', 'product_add1.png', NULL, NULL),
(29, 3, '465', 'cbcvbcv', '1.jpeg', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city`) VALUES
(1, 'bangalore'),
(2, 'mysore');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment`) VALUES
('&lt;h4&gt;Thank you for Purchasing Stock Manager Advance 2.3 with POS Module &lt;/h4&gt;\r\n&lt;p&gt;\r\n              This is latest the latest release of Stock Manager Advance.\r\n&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `company`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `latitude`, `longitude`, `username`, `password`) VALUES
(1, 'Test Customer', 'Customer Company Name', 'Customer Address', 'Petaling Jaya', 'Selangor', '46000', 'Malaysia', '0123456789', 'customer@tecdiary.com', '', '', '', '', '', '', '', '', '', ''),
(2, 'Ramesh', 'Self Employed', '#3, Rajamarket, ', 'Bangalore', 'Karnataka', '560124', 'India', '9800000000', 'ram@gmail.com', '', '', '', '', '', '', '', '', '', ''),
(3, 'Customer Arun', 'Customer1', 'Customer1 Address', 'Bangalore', 'Karnataka', '560128', 'India', '9642158467', 'customer1@gmail.com', 'Customer Custom1', 'Customer Custom2', 'Customer Custom3', 'Customer Custom4', 'Customer Custom5', 'Customer Custom6', '', '', '', ''),
(4, 'Girish', 'Titan', 'manjunathnagar', 'koppal', 'karnataka', '2548745', 'india', '1111111116', 'g@gmail.com', '', '', '', '', '', '', '', '', '', ''),
(5, 'RAVI', 'kle', 'nt nagar', 'bangalore', 'karnataka', '583232', 'india', '9449401451', 'RK@gmail.com', '', '', '', '', '', '', '', '', '', ''),
(6, 'hgfhgh', 'vsg tech', '2464-2498 Co Rd J22, Corydon, IA 50060, USA', 'gfdfgfg', 'gdgfd', '123456', 'gffgfgfg', '9742529954', 'gsdd@gmail.com', '0', '0', '0', '0', '0', '0', '40.84506201402929', '-93.28092456562445', 'krishna@gmail.com', 'krishna');

-- --------------------------------------------------------

--
-- Table structure for table `damage_products`
--

CREATE TABLE `damage_products` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `damage_products`
--

INSERT INTO `damage_products` (`id`, `date`, `product_id`, `quantity`, `warehouse_id`, `note`, `user`, `updated_by`) VALUES
(1, '2015-05-26', 145, 5, 1, '&lt;p&gt;\r\n Tablets damaged\r\n&lt;/p&gt;', 'Owner Owner', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `date_format`
--

CREATE TABLE `date_format` (
  `id` int(11) NOT NULL,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `date_format`
--

INSERT INTO `date_format` (`id`, `js`, `php`, `sql`) VALUES
(1, 'mm-dd-yyyy', 'm-d-Y', '%m-%d-%Y'),
(2, 'mm/dd/yyyy', 'm/d/Y', '%m/%d/%Y'),
(3, 'mm.dd.yyyy', 'm.d.Y', '%m.%d.%Y'),
(4, 'dd-mm-yyyy', 'd-m-Y', '%d-%m-%Y'),
(5, 'dd/mm/yyyy', 'd/m/Y', '%d/%m/%Y'),
(6, 'dd.mm.yyyy', 'd.m.Y', '%d.%m.%Y');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `date`, `time`, `reference_no`, `customer`, `address`, `note`, `user`, `updated_by`) VALUES
(1, '2015-05-20', '01:05 PM', 'SL-0001', 'Test Customer', 'Customer Address Petaling Jaya Selangor 46000 Malaysia. \r\nTel: 0123456789', '', 'Kishore Bakkam', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `discount`, `type`) VALUES
(1, 'No Discount', '0.00', '2'),
(2, '2.5 Percent', '2.50', '1'),
(3, '5 Percent', '5.00', '1'),
(4, '10 Percent', '10.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'owner', 'Owner'),
(2, 'admin', 'Administrator'),
(3, 'purchaser', 'Purchasing Staff'),
(4, 'salesman', 'Sales Staff'),
(5, 'viewer', 'View Only User'),
(6, 'supplier', 'suppliers'),
(7, 'vendor', 'vendors'),
(8, 'customer', 'customer'),
(9, 'warehouse', 'Warehouse'),
(10, 'superadmin', 'Super Admin'),
(11, 'crm', 'CRM'),
(12, 'inventorymanager', 'Inventory Manager');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_types`
--

CREATE TABLE `invoice_types` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `type` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu_settings`
--

CREATE TABLE `menu_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `crm` varchar(250) NOT NULL,
  `inventory_manage` varchar(250) NOT NULL,
  `catalog` int(11) NOT NULL,
  `categories` int(11) NOT NULL,
  `suppliers` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `products` int(11) NOT NULL,
  `warehouse` int(11) NOT NULL,
  `transfers` int(11) NOT NULL,
  `purchases` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `deliveries` int(11) NOT NULL,
  `quotation` int(11) NOT NULL,
  `people` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `settings` int(11) NOT NULL,
  `reports` int(11) NOT NULL,
  `backup_database` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_settings`
--

INSERT INTO `menu_settings` (`id`, `user_id`, `email`, `crm`, `inventory_manage`, `catalog`, `categories`, `suppliers`, `customer`, `products`, `warehouse`, `transfers`, `purchases`, `sales`, `deliveries`, `quotation`, `people`, `discount`, `settings`, `reports`, `backup_database`) VALUES
(1, 48, '', '', '', 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1),
(2, 49, '', '', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
(3, 50, '', '', '', 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0),
(4, 51, '', '', '', 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `name`, `company`, `address`, `latitude`, `longitude`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `username`, `password`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(1, 'Test Supplier', 'Supplier Company Name', 'Supplier Address', '', '', 'Petaling Jaya', 'Selangor', '46050', 'Malaysia', '0123456789', 'supplier@tecdiary.com', '', '', '-', '-', '-', '-', '-', '-'),
(2, 'jeevitha', 'vsg', 'New Temple Rd, Nallurhalli, Whitefield, Bengaluru, Karnataka 560066, India', '', '', 'bangalore', 'karnataka', '123456', 'india', '9742529954', 'jeevitha@gmail.com', '', '', '0', '0', '0', '0', '0', '0'),
(3, 'shruthi', 'vsg', 'Amar Dham, 6th Main Rd, Vinayak Nagar B-Block, Vinayak Nagar, Vinayaka Nagar, Konen Agrahara, Bengaluru, Karnataka 560017, India', '12.954003416148225', '77.65854829922318', 'bangalore', 'karnataka', '123456', 'india', '9876543210', 'shruthi@gmail.com', 'sheetal', 'sheetal', '0', '0', '0', '0', '0', '0'),
(4, 'shruthi tv', 'vsg tech', 'Co Rd S43, Russell, IA 50238, USA', '40.850191226229775', '-93.25819909921847', 'bangalore', 'karnataka', '123456', 'india', '98765432104', 'shruthi345@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(5, 'hghg', 'vsg tech', '2359-2361 Watrous, Chariton, IA 50049, USA', '40.89135485507051', '-93.30646277870983', 'ghf', 'hnfg', '576786', 'hg', '9742529954', 'ghng@gmail.com', 'hghgg', 'ghghgg', '0', '0', '0', '0', '0', '0'),
(7, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(8, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(9, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(10, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(11, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(12, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(13, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(14, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(15, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(16, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(17, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(18, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(19, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(20, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(21, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(22, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(23, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(24, 'hgjhg', 'hgfhg', '180th, Russell, IA 50238, USA', '40.85176382158824', '-93.23251605732366', 'hghg', 'hghgf', '6786878', 'ghfg', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(25, 'gdfgbf', 'hfghgfh', '165th, Corydon, IA 50060, USA', '40.84708922145802', '-93.2565486500971', 'hfghfg', 'hfghg', '56546757', 'hbfghbg', '9742529954', 'ghng55@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(26, 'gdfgbf', 'hfghgfh', '165th, Corydon, IA 50060, USA', '40.84708922145802', '-93.2565486500971', 'hfghfg', 'hfghg', '56546757', 'hbfghbg', '9742529954', 'ghng55@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(27, 'gdfgbf', 'hfghgfh', '165th, Corydon, IA 50060, USA', '40.84708922145802', '-93.2565486500971', 'hfghfg', 'hfghg', '56546757', 'hbfghbg', '9742529954', 'ghng55@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(28, 'fgfdgfd', 'gfdgf', '2464-2498 Co Rd J22, Corydon, IA 50060, USA', '40.843453193363494', '-93.27680469257757', 'gfdgdf', 'gfdg', '234556', 'gbdfgfd', '9742529945', 'ghng55@gmail.com', 'jeevitha@gmail.com', 'jeevitha', '0', '0', '0', '0', '0', '0'),
(29, 'fgfdgfd', 'gfdgf', '2464-2498 Co Rd J22, Corydon, IA 50060, USA', '40.843453193363494', '-93.27680469257757', 'gfdgdf', 'gfdg', '234556', 'gbdfgfd', '9742529945', 'ghng55@gmail.com', 'jeevitha@gmail.com', 'jeevitha', '0', '0', '0', '0', '0', '0'),
(30, 'fgfdgfd', 'gfdgf', '2464-2498 Co Rd J22, Corydon, IA 50060, USA', '40.843453193363494', '-93.27680469257757', 'gfdgdf', 'gfdg', '234556', 'gbdfgfd', '9742529945', 'ghng55@gmail.com', 'jeevitha@gmail.com', 'jeevitha', '0', '0', '0', '0', '0', '0'),
(32, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(33, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(34, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(36, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(37, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(38, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(39, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(40, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(41, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(42, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(43, 'gfgdf', 'jghjhg', '2464-2498 Co Rd J22, Corydon, IA 50060, USA', '40.84915242999006', '-93.27502191415988', 'ghgfh', 'hggf', '12345567', 'hjngfjhg', '9742529954', 'lish@gmail.com', 'lish', 'lish', '0', '0', '0', '0', '0', '0'),
(44, 'meena', 'vsg tech', 'Co Rd J22, Corydon, IA 50060, USA', '40.853047831707535', '-93.26558053842746', 'hfghgfh', 'hghgfv', '123456', 'hghgf', '9742529954', 'meena@gmail.com', 'meena', 'meena', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pos_settings`
--

CREATE TABLE `pos_settings` (
  `pos_id` int(1) NOT NULL,
  `cat_limit` int(11) NOT NULL,
  `pro_limit` int(11) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_biller` int(11) NOT NULL,
  `display_time` varchar(3) NOT NULL DEFAULT 'yes',
  `cf_title1` varchar(255) DEFAULT NULL,
  `cf_title2` varchar(255) DEFAULT NULL,
  `cf_value1` varchar(255) DEFAULT NULL,
  `cf_value2` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_settings`
--

INSERT INTO `pos_settings` (`pos_id`, `cat_limit`, `pro_limit`, `default_category`, `default_customer`, `default_biller`, `display_time`, `cf_title1`, `cf_title2`, `cf_value1`, `cf_value2`) VALUES
(1, 22, 30, 4, 1, 1, 'yes', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` char(255) NOT NULL,
  `name_hindi` varchar(250) DEFAULT NULL,
  `companyname` varchar(100) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `size` varchar(55) NOT NULL,
  `cost` decimal(25,2) DEFAULT NULL,
  `price` decimal(25,2) NOT NULL,
  `city` varchar(250) DEFAULT NULL,
  `alert_quantity` int(11) NOT NULL DEFAULT '20',
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `catalog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `cf1` varchar(255) DEFAULT NULL,
  `cf2` varchar(255) DEFAULT NULL,
  `cf3` varchar(255) DEFAULT NULL,
  `cf4` varchar(255) DEFAULT NULL,
  `cf5` varchar(255) DEFAULT NULL,
  `cf6` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `max_quantity` int(11) NOT NULL,
  `min_quantity` int(11) NOT NULL,
  `product_mrp` varchar(250) NOT NULL,
  `tax_rate` int(11) DEFAULT NULL,
  `track_quantity` tinyint(4) DEFAULT '1',
  `details` varchar(1000) DEFAULT NULL,
  `display_in_client_side` int(11) DEFAULT NULL,
  `out_of_stock` int(11) NOT NULL,
  `reward_points` varchar(250) NOT NULL,
  `reward_points_value` varchar(250) NOT NULL,
  `related_product` int(11) NOT NULL,
  `daily_deals` int(11) NOT NULL,
  `feature_product` int(11) NOT NULL,
  `new_products` int(11) NOT NULL,
  `best_seller` int(11) NOT NULL,
  `cross_seller` int(11) NOT NULL,
  `up_seller` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `name_hindi`, `companyname`, `unit`, `size`, `cost`, `price`, `city`, `alert_quantity`, `image`, `catalog_id`, `category_id`, `subcategory_id`, `session_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `max_quantity`, `min_quantity`, `product_mrp`, `tax_rate`, `track_quantity`, `details`, `display_in_client_side`, `out_of_stock`, `reward_points`, `reward_points_value`, `related_product`, `daily_deals`, `feature_product`, `new_products`, `best_seller`, `cross_seller`, `up_seller`) VALUES
(175, '78890', 'ghjgj', '165', 'ghgj', '16959', '', '98.00', '8565.00', 'select', 6, 'no_image.jpg', 3, 0, NULL, 1, '0', '0', '0', '0', '0', '0', NULL, 65, 556, '8954', 1, 1, '<p>\r\n hjhkjj\r\n</p>', 0, 1, '', '', 1, 1, 0, 0, 0, 0, 0),
(174, '78890', 'ghjgj', '165', 'ghgj', '16959', '', '98.00', '8959.00', 'select', 6, 'no_image.jpg', 3, 0, 0, 1, '0', '0', '0', '0', '0', '0', NULL, 65, 556, '596', 1, 1, '<p>\r\n hjhkjj\r\n</p>', 0, 1, '', '', 1, 1, 0, 0, 0, 0, 0),
(163, '2857', 'kkkkkkkkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkk', 'hjjjjjjjhkhj', '5695', '', '526.00', '45646.00', 'select', 56, 'no_image.jpg', 3, 0, NULL, 1, '0', '0', '0', '0', '0', '0', NULL, 25, 23, '156416', 2, 1, '<b>ghjhg</b>', 1, 1, '', '', 1, 0, 0, 0, 0, 1, 0),
(162, '2857', 'kkkkkkkkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkk', 'hjjjjjjjhkhj', '5695', '', '526.00', '48496.00', 'select', 56, 'no_image.jpg', 3, 0, 0, 1, '0', '0', '0', '0', '0', '0', NULL, 25, 23, '266565', 2, 1, '<b>ghjhg</b>', 1, 1, '', '', 1, 0, 0, 0, 0, 1, 0),
(164, '56754', 'ghgggjhgj', 'ghjghj', 'fgjghj', '456', '', '547566.00', '567.00', 'bangalore', 45, 'no_image.jpg', 3, 19, 2, 1, '0', '0', '0', '0', '0', '0', NULL, 45, 54, '66', 2, 1, 'ghjg', 1, 1, '', '', 0, 0, 0, 0, 0, 0, 0),
(165, '56754', 'ghgggjhgj', 'ghjghj', 'fgjghj', '456', '', '547566.00', '56.00', 'mysore', 45, 'no_image.jpg', 3, 0, NULL, 1, '0', '0', '0', '0', '0', '0', NULL, 45, 54, '567', 2, 1, 'ghjg', 1, 1, '', '', 0, 0, 0, 0, 0, 0, 0),
(259, '7987', 'hjkjhkh', 'fghftyt', 'fghgfhfg', '568', '', '5686.00', '567676.00', 'bangalore', 5, 'no_image.jpg', 3, 0, NULL, 1, '0', '0', '0', '0', '0', '0', NULL, 756, 1, '76', 1, 1, 'ghjghj', 1, 1, 'yes', 'Percentage', 1, 0, 0, 0, 0, 0, 0),
(258, '7987', 'hjkjhkh', 'fghftyt', 'fghgfhfg', '568', '', '5686.00', '76876.00', 'mysore', 5, 'no_image.jpg', 3, 0, NULL, 1, '0', '0', '0', '0', '0', '0', NULL, 756, 1, '67867', 1, 1, 'ghjghj', 1, 1, 'yes', 'Percentage', 1, 0, 0, 0, 0, 0, 0),
(257, '7987', 'hjkjhkh', 'fghftyt', 'fghgfhfg', '568', '', '5686.00', '67867.00', 'mysore', 5, 'no_image.jpg', 3, 0, 0, 1, '0', '0', '0', '0', '0', '0', NULL, 756, 1, '676', 1, 1, 'ghjghj', 1, 1, 'yes', 'Percentage', 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_feature`
--

CREATE TABLE `product_feature` (
  `id` int(11) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `description_header` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `images` varchar(1000) NOT NULL,
  `header` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_feature`
--

INSERT INTO `product_feature` (`id`, `product_code`, `description_header`, `details`, `images`, `header`, `name`, `value`) VALUES
(116, '8768', 'hgfh', ' fghgf', 'bg-input.png', 'jhg', 'ghjgh', 'hgjgh'),
(117, '8768', 'jhgj', ' hjhg', 'bs-docs-masthead-pattern.png', '', '', ''),
(118, '123', 'description1', ' details1', 'ajax-loader.gif', 'h1', 'n1', 'v1'),
(119, '123', 'description2', ' details2', 'bg-input.png', 'h2', 'n2', 'v2'),
(120, '123', '', '', 'turkish.png', '', '', ''),
(121, '123', '', '', 'vietnamese.png', '', '', ''),
(126, '676576', 'fhgf', ' fghgf', '', 'dgfd', 'fhgf', 'ghgf'),
(127, '676576', 'cxz', ' xzcxz', '', 'fgf', 'fgh', 'fg'),
(128, '676576', 'fhgfh', ' fghgf', '', '', '', ''),
(129, '123355', 'gfd', ' dfgd', '', 'dfgd', 'dfg', 'fdg'),
(130, '5555555', 'hjkhk', ' hjkjhk', '', 'hjkhj', 'hjkjh', 'jkhjk'),
(131, '7878978', 'jkijkl', ' lkl;k', '', 'klk', 'klk', 'kl;k'),
(132, '4444444', 'jkijkl', ' lkl;k', '', 'klk', 'klk', 'kl;k'),
(133, '4444444', '', ' ', '', '', '', ''),
(136, 'PR-010', 'header1', 'details1', '', 'head1', 'name1', 'value1'),
(137, 'PR-010', '', ' ', '', '', '', ''),
(141, 'Apple01', 'apple', ' 1Kg', '', '123', '456', '120'),
(142, 'Apple01', '', ' ', '', '', '', ''),
(143, '1234567', '', ' ', '', '', '', ''),
(148, '56789', 'gdfgd', ' dfgdf', 'MP000000000016787_252Wx374H_20160221040928.jpeg', 'ghdfh', 'hfgh', 'ghfg'),
(149, '56789', 'gdfg', ' fdgdfg', 'MP000000000021376_252Wx374H_20160225080248.jpeg', 'fgh', 'fh', 'fh'),
(150, '56789', '', '', 'MP000000000021379_252Wx374H_20160225080407.jpeg', '', '', ''),
(151, '56789', '', '', 'MP000000000021385_252Wx374H_20160225080311.jpeg', '', '', ''),
(152, '56789', '', '', 'MP000000000021971_252Wx374H_20160301190357.jpeg', '', '', ''),
(153, '56789', '', '', 'MP000000000023067_252Wx374H_20160309021319.jpeg', '', '', ''),
(154, '56789', '', '', 'MP000000000023068_252Wx374H_20160309021227.jpeg', '', '', ''),
(155, '56789', '', '', 'MP000000000023099_252Wx374H_20160301195918.jpeg', '', '', ''),
(156, '565679', 'gfd', ' dhgfh', '2.jpeg', 'thtr', 'rtyrt', 'tryh'),
(207, '575', 'hgj', ' hjk', 'MP000000000118564_252Wx374H_20160415131200.jpeg', 'vghg', 'hgj', 'fcg'),
(208, '575', '', '', 'MP000000000118604_252Wx374H_20160415131344.jpeg', '', '', ''),
(209, '575', '', '', 'MP000000000124554_252Wx374H_20160423201631.jpeg', '', '', ''),
(219, '09876', 'gfd', ' dfgfd', '4.jpeg', 'fgfdg', 'fgf', 'fhgf'),
(220, '09876', 'rtgr', ' reyter', '5.jpeg', '', '', ''),
(221, '09876', '', ' ', '6.jpeg', '', '', ''),
(222, '09876', '', '', '7.jpeg', '', '', ''),
(237, '12334', 'description1', ' ddfdsfs', 'MP000000000023068_252Wx374H_20160309021227.jpeg', 'dgfg', 'fghfgh', 'fghgh'),
(238, '12334', 'gbdfgf', ' fghgfh', 'MP000000000023099_252Wx374H_20160301195918.jpeg', 'fgh', 'fhgh', 'fghfgh'),
(239, '12334', '', ' ', 'MP000000000021391_252Wx374H_20160225080530.jpeg', '', '', ''),
(240, '12334', '', '', 'MP000000000021971_252Wx374H_20160301190357.jpeg', '', '', ''),
(241, '12334', '', '', '', '', '', ''),
(242, '5756', '<p>\r\n <strong>tryhrtf</strong>\r\n</p>', ' ngcn', '', 'gjg', 'ghj', 'ghj'),
(243, '111111111111', '<p>\r\n sdgsd\r\n</p>', ' sdf', '', 'sdf', 'sdf', 'fgh'),
(244, '564564645645645645645', '<p >\r\n <strong><em><u>vgnhvn</u></em></strong>\r\n</p>', ' vbvnvb\r\njklk\r\njkljk\r\nhjkj\r\n', '5.jpeg', 'kl;kl', 'kl;kl;', 'kl;kl;'),
(245, '564564645645645645645', '<p >\r\n <strong><em><u>vgnhvn</u></em></strong>\r\n</p>', ' vbvnvb\r\njklk\r\njkljk\r\nhjkj\r\n', '5.jpeg', 'kl;kl', 'kl;kl;', 'kl;kl;'),
(246, '56456464564564564564567', '<p>\r\n gh\r\n</p>', ' ghg', '', 'gh', 'gh', 'gh'),
(247, '56456464564564564564567676768678678867887886', '<p>\r\n adsa\r\n</p>', ' sAxdsa', '', 'asd', 'sad', 'asd'),
(248, '53', '', ' ', '', '', '', ''),
(249, '5343', '', ' ', '', '', '', ''),
(250, '5343', '', ' ', '', '', '', ''),
(251, '55555555555555', '<p>\r\n kl;lk;lk;\r\n</p>', ' lk;l;', '5.jpeg', 'kl;k;', 'kl;hgjg', 'gfhg'),
(252, '999999999999', '<p>\r\n thfghbgv\r\n</p>', ' gnhghfg', '5.jpeg', 'gfhgf', 'ghg', 'gh'),
(253, '999999999999', '', '', '', 'hgf', 'gfh', 'fgh'),
(254, '466666666666666666666666', '<p>\r\n <strong>fhgfhg</strong>\r\n</p>', ' fghfgh', '4.jpeg', 'ghj', 'ghj', 'ghj'),
(255, '466666666666666666666666', '', ' ghjghj', '', 'ghjg', 'ghj', 'ghj'),
(256, '5654000000000000000000', '<p>\r\n <strong>fhfgh</strong>\r\n</p>', ' fghfgh', '4.jpeg', 'fghfg', 'fgh', 'gfhfgh'),
(257, '5654000000000000000000', '', ' gfhgf', '5.jpeg', 'fghg', 'gh', 'gfhgf'),
(258, '7809008808980907809879789', '<p>\r\n dxvfgdsfgds\r\n</p>', ' fdsfds', '5.jpeg', 'sdfds', 'sdfds', 'dsfds'),
(259, '7809008808980907809879789', '', ' sdfdsf', '5.jpeg', '', '', ''),
(260, '5678', '<p>\r\n <strong>hjhj</strong>\r\n</p>', ' jkjj', '5.jpeg', 'fgh', 'fgh', 'fgh'),
(261, '5678', '', ' fghgf', '5.jpeg', '', '', ''),
(262, '565645646464564', '<p>\r\n 4rtyrtyr\r\n</p>', ' rtytry', '5.jpeg', 'yrty', 'tytyt', 'tyutu'),
(263, '5656456464645643', '<p>\r\n bcvb\r\n</p>', ' chb', '', 'cb', 'vcb', 'vc'),
(264, '57576577777777777777777777777', '<p>\r\n <strong>fthfghfg</strong>\r\n</p>', ' hygh', '5.jpeg', 'ghgh', 'ghjgj', 'ghjhgj'),
(265, '4656445654564', '<p>\r\n <strong>sdfsfs</strong>\r\n</p>', ' sdsfs', '7.jpeg', 'fhgf', 'gh', 'hgh'),
(266, '4656445654564', '', ' sdfsdf\r\nfghg', '5.jpeg', '', '', ''),
(279, '79', '<ul>\r\n <li>jkjj</li>\r\n <li>hjkjk</li>\r\n <li>hjkjk</li>\r\n</ul>', ' ;ll;kl;fghghasas', '', 'sdasdfs', 'sdfsf', 'asdas'),
(280, '79', '', ' vsdfdsf', '', 'wrqw', 'weq', 'qwwa'),
(281, '79', '', ' ', '', '', '', ''),
(294, '2857', 'gjgh', 'hjhgj', '', 'hjhg', 'hjg', 'hgjkgh'),
(295, '2857', '<br>', ' ', '', '', '', ''),
(296, '2857', '<br>', ' ', '', '', '', ''),
(297, '2857', '<br>', ' ', '', '', '', ''),
(298, '56754', 'gfhgh', 'ghgh', '', 'ghj', 'ghj', 'ghj'),
(299, '56754', '', ' ', '', '', '', ''),
(311, '78890', '<p>\r\n <strong>jlkjlj</strong>\r\n</p><br>', ' jhkhjkhj', '', 'hjhk', 'hkjhk', 'hjkjk'),
(312, '78890', 'gfdg', 'fgfhh', '', '', '', ''),
(442, '7987', '<b>gvhg</b>', 'fghg', '', 'bnb', 'ghjh', 'ghj'),
(443, '7987', 'gyhgubujh', 'ghuh', '', 'ghj', 'ghj', 'hj'),
(444, '7987', 'hggg', 'ghjhg', '', '', '', ''),
(445, '7987', 'fbgdfg', 'fgfdgfd', '', '', '', ''),
(446, '7987', '<br>', ' ', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_code` int(11) NOT NULL,
  `images` varchar(500) NOT NULL,
  `isactive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `product_code`, `images`, `isactive`) VALUES
(12, 123, 'biller_add.png', 1),
(13, 123, 'billers.png', 1),
(14, 676576, '3.jpeg', 1),
(15, 676576, '4.jpeg', 1),
(16, 5555555, '', 1),
(17, 7878978, '', 1),
(23, 0, 'Ele.jpg', 1),
(24, 1234567, 'Ele.jpg', 1),
(33, 56789, 'MP000000000056927_252Wx374H_20160317210932.jpeg', 1),
(34, 56789, 'MP000000000070454_252Wx374H_20160325134623.jpeg', 1),
(35, 56789, 'MP000000000102375_252Wx374H_20160408192705.jpeg', 1),
(36, 56789, 'MP000000000102376_252Wx374H_20160408192623.jpeg', 1),
(37, 56789, 'MP000000000102377_252Wx374H_20160408192644.jpeg', 1),
(38, 56789, 'MP000000000154749_252Wx374H_20160526120318.jpeg', 1),
(39, 56789, 'MP000000000154837_252Wx374H_20160507061952.jpeg', 1),
(40, 56789, 'MP000000000190345_252Wx374H_20160517205237.jpeg', 1),
(41, 56789, 'MP000000000214836_252Wx374H_20160603135941.jpeg', 1),
(42, 565679, '2.jpeg', 1),
(43, 565679, '3.jpeg', 1),
(44, 565679, '4.jpeg', 1),
(45, 565679, '7.jpeg', 1),
(88, 575, 'MP000000000001424_252Wx374H_20160310130722.jpeg', 1),
(89, 575, 'MP000000000008479_252Wx374H_20160618022343.jpeg', 1),
(90, 575, 'MP000000000008482_252Wx374H_20160119103638.jpeg', 1),
(91, 575, 'MP000000000037762_252Wx374H_20160308094429.jpeg', 1),
(92, 575, 'MP000000000198283_252Wx374H_20160524140636.jpeg', 1),
(101, 9876, '1.jpeg', 1),
(102, 9876, '2.jpeg', 1),
(103, 9876, '3.jpeg', 1),
(104, 9876, '4.jpeg', 1),
(112, 12334, 'MP000000000016787_252Wx374H_20160221040928.jpeg', 1),
(113, 12334, 'MP000000000021376_252Wx374H_20160225080248.jpeg', 1),
(114, 5756, '3.jpeg', 1),
(115, 2147483647, '2.jpeg', 1),
(116, 2147483647, '2.jpeg', 1),
(117, 2147483647, '2.jpeg', 1),
(118, 2147483647, '', 1),
(119, 2147483647, '', 1),
(120, 53, '', 1),
(121, 5343, '', 1),
(122, 5343, '', 1),
(123, 2147483647, '2.jpeg', 1),
(124, 2147483647, '7.jpeg', 1),
(125, 2147483647, '', 1),
(126, 2147483647, '3.jpeg', 1),
(127, 2147483647, '3.jpeg', 1),
(128, 5678, '3.jpeg', 1),
(129, 2147483647, '2.jpeg', 1),
(130, 2147483647, '', 1),
(131, 2147483647, '3.jpeg', 1),
(132, 2147483647, '7.jpeg', 1),
(138, 79, '2.jpeg', 1),
(144, 2857, '', 1),
(145, 56754, '3.jpeg', 1),
(150, 78890, '', 1),
(159, 7987, 'Chrysanthemum.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` int(11) NOT NULL,
  `product_code` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ratings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `product_code`, `user_id`, `ratings`) VALUES
(1, '78890', 2, 2),
(2, ' 	78890', 19, 4),
(3, ' 	78890', 26, 5);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `total_tax` decimal(25,2) DEFAULT '0.00',
  `inv_total` decimal(25,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `warehouse_id`, `supplier_id`, `supplier_name`, `date`, `note`, `total`, `user`, `updated_by`, `total_tax`, `inv_total`) VALUES
(1, 'PO-0001', 1, 1, 'Test Supplier', '2015-05-19', '', '177.32', 'Owner Owner', NULL, '34.32', '143.00'),
(2, 'PO-0002', 1, 1, 'Test Supplier', '2015-05-19', '', '244.90', 'Owner Owner', NULL, '47.40', '197.50'),
(3, 'PO-0001', 1, 1, 'Test Supplier', '2015-05-20', '', '37.20', 'Owner Owner', NULL, '7.20', '30.00');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `tax_amount` decimal(25,2) DEFAULT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `val_tax` decimal(25,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `product_id`, `product_code`, `product_name`, `quantity`, `unit_price`, `tax_amount`, `gross_total`, `tax_rate_id`, `tax`, `val_tax`) VALUES
(1, 1, 50, '5426', 'LASIX 20MG20mg5x2ml', 100, '1.43', NULL, '143.00', 2, '24.00%', '34.32'),
(2, 2, 56, '1500', 'MEPHAMEZONE3x1ml', 125, '1.58', NULL, '197.50', 2, '24.00%', '47.40'),
(3, 3, 5, '2966', 'ASPEGIC INJECTABLE FLACON1g6', 100, '0.30', NULL, '30.00', 2, '24.00%', '7.20');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller_name` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `inv_total` decimal(25,2) NOT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `total` decimal(25,2) NOT NULL,
  `invoice_type` int(11) DEFAULT NULL,
  `in_type` varchar(55) DEFAULT NULL,
  `total_tax2` decimal(25,2) DEFAULT NULL,
  `tax_rate2_id` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `inv_discount` decimal(25,2) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `shipping` decimal(25,2) DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `reference_no`, `warehouse_id`, `biller_id`, `biller_name`, `customer_id`, `customer_name`, `date`, `note`, `internal_note`, `inv_total`, `total_tax`, `total`, `invoice_type`, `in_type`, `total_tax2`, `tax_rate2_id`, `user`, `updated_by`, `inv_discount`, `discount_id`, `shipping`) VALUES
(1, 'QU-0001', 1, 2, 'Biller Billa', 3, 'Customer Arun', '2015-05-26', '', '', '232819.40', '33432.87', '299685.13', NULL, NULL, '33432.87', 2, 'Owner Owner', NULL, '0.00', 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `quote_items`
--

CREATE TABLE `quote_items` (
  `id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `val_tax` decimal(25,2) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `discount_val` decimal(25,2) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quote_items`
--

INSERT INTO `quote_items` (`id`, `quote_id`, `product_id`, `product_code`, `product_name`, `product_unit`, `tax_rate_id`, `tax`, `quantity`, `unit_price`, `gross_total`, `val_tax`, `serial_no`, `discount_val`, `discount_id`, `discount`) VALUES
(1, 1, 156, '2335', 'BACTISUBTIL35mg20', 'No', 2, '14.36%', 100, '933.18', '93318.00', '13400.46', NULL, '0.00', 1, '0.00'),
(2, 1, 88, '3076', 'URBASON SOLUBILE40mg1x1ml', 'mg', 2, '14.36%', 125, '125.00', '15625.00', '2243.75', NULL, '0.00', 1, '0.00'),
(3, 1, 157, '2591', 'BIO STAR30', 'No', 2, '14.36%', 145, '854.32', '123876.40', '17788.65', NULL, '0.00', 1, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller_name` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `inv_total` decimal(25,2) NOT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `total` decimal(25,2) NOT NULL,
  `invoice_type` int(11) DEFAULT NULL,
  `in_type` varchar(55) DEFAULT NULL,
  `total_tax2` decimal(25,2) DEFAULT NULL,
  `tax_rate2_id` int(11) DEFAULT NULL,
  `inv_discount` decimal(25,2) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `paid_by` varchar(55) DEFAULT 'cash',
  `count` int(11) DEFAULT NULL,
  `shipping` decimal(25,2) DEFAULT '0.00',
  `pos` tinyint(4) NOT NULL DEFAULT '0',
  `paid` decimal(25,2) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(100) DEFAULT NULL,
  `cheque_no` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `warehouse_id`, `biller_id`, `biller_name`, `customer_id`, `customer_name`, `date`, `note`, `internal_note`, `inv_total`, `total_tax`, `total`, `invoice_type`, `in_type`, `total_tax2`, `tax_rate2_id`, `inv_discount`, `discount_id`, `user`, `updated_by`, `paid_by`, `count`, `shipping`, `pos`, `paid`, `cc_no`, `cc_holder`, `cheque_no`) VALUES
(1, 'SL-0001', 1, 1, 'Mian Saleem', 1, 'Test Customer', '2015-05-20', '', '', '3005.92', '721.42', '3727.34', NULL, NULL, '0.00', 1, '0.00', 0, 'Owner Owner', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL),
(2, 'SL-0003', 1, 1, 'Mian Saleem', 2, 'Ramesh', '2015-05-22', '', '', '42065.10', '10095.62', '62256.35', NULL, NULL, '10095.62', 2, '0.00', 0, 'Owner Owner', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL),
(3, 'SL-0003', 1, 1, 'Mian Saleem', 1, 'Test Customer', '2015-05-23', NULL, NULL, '1241.59', '178.29', '1598.17', NULL, NULL, '178.29', 2, '0.00', 0, 'Owner Owner', NULL, 'CC', 14, '0.00', 1, '0.00', 'Sheetal Jain', '1423548735491535', ''),
(4, 'SL-0004', 1, 2, 'Biller Billa', 1, 'Test Customer', '2015-05-23', NULL, NULL, '685.75', '98.47', '882.70', NULL, NULL, '98.47', 2, '0.00', 0, 'Owner Owner', NULL, 'cash', 1, '0.00', 1, '900.00', '', '', ''),
(5, 'SL-0005', 1, 2, 'Biller Billa', 2, 'Ramesh', '2015-05-23', '', '', '58.13', '8.35', '66.64', NULL, NULL, '3.49', 3, '3.32', 0, 'Owner Owner', NULL, 'cash', NULL, '25.00', 0, NULL, NULL, NULL, NULL),
(6, 'SL-0006', 1, 2, 'Biller Billa', 3, 'Customer Arun', '2015-05-23', '', '', '40655.25', '5838.09', '51169.10', NULL, NULL, '5838.09', 2, '1162.33', 0, 'Owner Owner', NULL, 'cash', NULL, '75.00', 0, NULL, NULL, NULL, NULL),
(7, 'SL-0007', 1, 1, 'Mian Saleem', 1, 'Test Customer', '2015-05-26', NULL, NULL, '21909.23', '3146.17', '28201.56', NULL, NULL, '3146.17', 2, '0.00', 0, 'Owner Owner', NULL, 'cash', 5, '0.00', 1, '0.00', '', '', ''),
(8, 'SL-0008', 1, 1, 'Mian Saleem', 1, 'Test Customer', '2015-05-30', NULL, NULL, '142853.90', '20513.82', '183881.54', NULL, NULL, '20513.82', 2, '0.00', 0, 'Owner Owner', NULL, 'cash', 102, '0.00', 1, '190000.00', '', '', ''),
(9, 'SL-0009', 1, 2, 'Biller Billa', 2, 'Ramesh', '2016-02-01', '', '', '7.50', '1.08', '9.23', NULL, NULL, '1.08', 2, '0.43', 0, 'Owner Owner', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL),
(10, 'SL-0010', 1, 2, 'Biller Billa', 2, 'Ramesh', '2016-02-01', '', '', '4862.05', '698.19', '6119.00', NULL, NULL, '698.19', 2, '139.43', 0, 'Owner Owner', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL),
(11, 'SL-0011', 1, 2, 'Biller Billa', 2, 'Ramesh', '2016-02-01', '', '', '4856.05', '697.33', '6250.71', NULL, NULL, '697.33', 2, '0.00', 0, 'Owner Owner', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL),
(12, 'SL-0012', 1, 2, 'Biller Billa', 4, 'Girish', '2016-05-18', '', '', '4.00', '0.57', '5.15', NULL, NULL, '0.57', 2, '0.00', 0, 'Owner Owner', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL),
(13, 'SL-0013', 1, 2, 'Biller Billa', 3, 'Customer Arun', '2016-05-07', '', '', '656.00', '39.36', '789.56', NULL, NULL, '94.20', 2, '0.00', 0, 'Owner Owner', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL),
(14, 'SL-0014', 1, 2, 'Biller Billa', 3, 'Customer Arun', '2016-05-07', '', '', '656.00', '39.36', '789.56', NULL, NULL, '94.20', 2, '0.00', 0, 'Owner Owner', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `expiredate` varchar(100) NOT NULL,
  `batch_no` varchar(100) NOT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `val_tax` decimal(25,2) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `discount_val` decimal(25,2) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `companyname`, `product_unit`, `tax_rate_id`, `tax`, `quantity`, `unit_price`, `expiredate`, `batch_no`, `gross_total`, `val_tax`, `serial_no`, `discount_val`, `discount`, `discount_id`) VALUES
(1, 1, 81, '473', 'SPASFON INJ/SOL6', '', 'mg', 2, '24.00%', 2, '418.00', '', '', '836.00', '200.64', '', '0.00', '0.00', 1),
(2, 1, 4, '1354', 'ANEXATE1mg/10ml5', '', 'mg', 2, '24.00%', 34, '42.08', '', '', '1430.72', '343.37', '', '0.00', '0.00', 1),
(3, 1, 9, '265', 'ATROPINE SULFATE INJ.1mg100 x 1ml', '', 'mg', 2, '24.00%', 12, '61.60', '', '', '739.20', '177.41', '', '0.00', '0.00', 1),
(4, 2, 102, '3151', 'STEROGYL 15 A1', '', 'mg', 2, '24.00%', 3, '550.45', '', '', '1651.35', '396.32', '', '0.00', '0.00', 1),
(5, 2, 1651, '1533', 'PMS-METFORMIN500mg100', '', 'Sheets', 2, '24.00%', 1, '40413.75', '', '', '40413.75', '9699.30', '', '0.00', '0.00', 1),
(6, 3, 3, '3640', 'CLENIL C13200 Inhalations', '', 'ml', 2, '14.36%', 1, '37.75', '', '', '37.75', '5.42', '', '0.00', '0.00', 1),
(7, 3, 1, '2508', 'INTAL INHALER112doses', '', 'ml', 2, '14.36%', 1, '30.00', '', '', '30.00', '4.31', '', '0.00', '0.00', 1),
(8, 3, 2, '3186', 'IPRADOL METERED0.2mg25g', '', 'ml', 2, '14.36%', 1, '34.20', '', '', '34.20', '4.91', '', '0.00', '0.00', 1),
(9, 3, 4, '1354', 'ANEXATE1mg/10ml5', '', 'mg', 2, '14.36%', 1, '42.08', '', '', '42.08', '6.04', '', '0.00', '0.00', 1),
(10, 3, 101, '39', 'ARPHOS B1220x10ml', '', 'mg', 2, '14.36%', 1, '540.00', '', '', '540.00', '77.54', '', '0.00', '0.00', 1),
(11, 3, 6, '2967', 'ASPEGIC INJECTABLE FLACON0.5g6', '', 'mg', 2, '14.36%', 1, '50.05', '', '', '50.05', '7.19', '', '0.00', '0.00', 1),
(12, 3, 5, '2966', 'ASPEGIC INJECTABLE FLACON1g6', '', 'mg', 2, '14.36%', 1, '45.60', '', '', '45.60', '6.55', '', '0.00', '0.00', 1),
(13, 3, 7, '263', 'ATROPINE SULFATE INJ.0.25mg100 x 1ml', '', 'mg', 2, '14.36%', 1, '53.55', '', '', '53.55', '7.69', '', '0.00', '0.00', 1),
(14, 3, 8, '264', 'ATROPINE SULFATE INJ.0.5mg100 x 1ml', '', 'mg', 2, '14.36%', 1, '58.13', '', '', '58.13', '8.35', '', '0.00', '0.00', 1),
(15, 3, 9, '265', 'ATROPINE SULFATE INJ.1mg100 x 1ml', '', 'mg', 2, '14.36%', 1, '61.60', '', '', '61.60', '8.85', '', '0.00', '0.00', 1),
(16, 3, 10, '2183', 'AUXERGYL D33', '', 'mg', 2, '14.36%', 1, '66.30', '', '', '66.30', '9.52', '', '0.00', '0.00', 1),
(17, 3, 11, '1367', 'BECOZYM50 x 2ml', '', 'mg', 2, '14.36%', 1, '69.75', '', '', '69.75', '10.02', '', '0.00', '0.00', 1),
(18, 3, 12, '125', 'BLEU PATENTE V. GUERBET5 x 2ml', '', 'mg', 2, '14.36%', 1, '74.58', '', '', '74.58', '10.71', '', '0.00', '0.00', 1),
(19, 3, 13, '2442', 'BONDRONAT1mg/ml5', '', 'mg', 2, '14.36%', 1, '78.00', '', '', '78.00', '11.20', '', '0.00', '0.00', 1),
(20, 4, 123, '4383', 'ACTI-MOX500mg15', '', 'No', 2, '14.36%', 1, '685.75', '', '', '685.75', '98.47', '', '0.00', '0.00', 1),
(21, 5, 8, '264', 'ATROPINE SULFATE INJ.0.5mg100 x 1ml', '', 'mg', 2, '14.36%', 1, '58.13', '', '', '58.13', '8.35', '142', '3.32', '5.00%', 3),
(22, 6, 335, '2073', 'SPERSACET C10ml', '', 'Unit', 2, '14.36%', 15, '2710.35', '', '', '40655.25', '5838.09', '1527', '1162.33', '2.50%', 2),
(23, 7, 122, '4353', 'ACTI-CEF500mg12', '', 'No', 2, '14.36%', 1, '683.70', '', '', '683.70', '98.18', '', '0.00', '0.00', 1),
(24, 7, 124, '2175', 'ADALAT30', '', 'No', 2, '14.36%', 1, '697.58', '', '', '697.58', '100.17', '', '0.00', '0.00', 1),
(25, 7, 385, '2760', 'CYCLO 340g', '', 'gm', 2, '14.36%', 1, '3351.60', '', '', '3351.60', '481.29', '', '0.00', '0.00', 1),
(26, 7, 415, '1358', 'AROVIT50MUI30', '', 'gm', 2, '14.36%', 1, '3766.35', '', '', '3766.35', '540.85', '', '0.00', '0.00', 1),
(27, 7, 893, '926', 'CEFZIL125mg/5ml50ml', '', 'mg', 2, '14.36%', 1, '13410.00', '', '', '13410.00', '1925.68', '', '0.00', '0.00', 1),
(28, 8, 123, '4383', 'ACTI-MOX500mg15', '', 'No', 2, '14.36%', 1, '685.75', '', '', '685.75', '98.47', '', '0.00', '0.00', 1),
(29, 8, 130, '2527', 'AMLOR5mg28', '', 'No', 2, '14.36%', 1, '739.80', '', '', '739.80', '106.24', '', '0.00', '0.00', 1),
(30, 8, 136, '3883', 'AMPICILLIN250mg10x100', '', 'No', 2, '14.36%', 95, '782.93', '', '', '74378.35', '10680.73', '', '0.00', '0.00', 1),
(31, 8, 893, '926', 'CEFZIL125mg/5ml50ml', '', 'mg', 2, '14.36%', 5, '13410.00', '', '', '67050.00', '9628.38', '', '0.00', '0.00', 1),
(32, 9, 2065, '1120', 'paracetomol', '', '1', 2, '14.36%', 5, '1.50', '', '', '7.50', '1.08', '1120', '0.43', '5.00%', 3),
(33, 10, 2065, '1120', 'paracetomol', '', '1', 2, '14.36%', 3, '1.50', '', '', '4.50', '0.65', '', '0.51', '10.00%', 4),
(34, 10, 2065, '1120', 'paracetomol', '', '1', 2, '14.36%', 1, '1.50', '', '', '1.50', '0.22', '', '0.09', '5.00%', 3),
(35, 10, 486, '4538', 'PARACETAMOL120mg/5ml60ml', '', 'gm', 2, '14.36%', 1, '4856.05', '', '', '4856.05', '697.33', '', '138.83', '2.50%', 2),
(36, 11, 486, '4538', 'PARACETAMOL120mg/5ml60ml', '', 'gm', 2, '14.36%', 1, '4856.05', '', '', '4856.05', '697.33', '', '0.00', '0.00', 1),
(37, 12, 2070, '8689', 'spasmo', '', '1', 2, '14.36%', 1, '4.00', '', '', '4.00', '0.57', '', '0.00', '0.00', 1),
(38, 13, 2071, '678658', 'ghng', 'vsg', '57', 3, '6.00%', 1, '656.00', '10/05/2016', '56', '656.00', '39.36', '', '0.00', '0.00', 1),
(39, 14, 2071, '678658', 'ghng', 'vsg', '57', 3, '6.00%', 1, '656.00', '10/05/2016', '56', '656.00', '39.36', '', '0.00', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `currency_prefix` varchar(3) NOT NULL,
  `default_invoice_type` int(2) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `no_of_rows` int(2) NOT NULL,
  `total_rows` int(2) NOT NULL,
  `version` varchar(5) NOT NULL DEFAULT '2.3',
  `default_tax_rate2` int(11) NOT NULL DEFAULT '0',
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) NOT NULL,
  `quote_prefix` varchar(55) NOT NULL,
  `purchase_prefix` varchar(55) NOT NULL,
  `transfer_prefix` varchar(55) NOT NULL,
  `barcode_symbology` varchar(20) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `discount_option` tinyint(4) NOT NULL,
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `restrict_sale` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_user` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT '0',
  `bstatesave` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `currency_prefix`, `default_invoice_type`, `default_tax_rate`, `rows_per_page`, `no_of_rows`, `total_rows`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `barcode_symbology`, `theme`, `product_serial`, `default_discount`, `discount_option`, `discount_method`, `tax1`, `tax2`, `restrict_sale`, `restrict_user`, `restrict_calendar`, `bstatesave`) VALUES
(1, 'images.png', 'LoginLogo.png', 'Bachatbag', 'english', 1, 'INR', 2, 2, 10, 9, 30, '2.3', 2, 5, 'SL', 'QU', 'PO', 'TR', 'code128', 'cosmo', 1, 1, 2, 2, 1, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `code`, `name`) VALUES
(2, 19, '1234', 'dell'),
(3, 19, '1243', 'acer'),
(4, 21, '39', 'computer,laptops'),
(7, 26, 'OB159', 'dhal');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `company`, `address`, `latitude`, `longitude`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `username`, `password`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(2, 'jeevitha', 'vsg', 'New Temple Rd, Nallurhalli, Whitefield, Bengaluru, Karnataka 560066, India', '', '', 'bangalore', 'karnataka', '123456', 'india', '9742529954', 'jeevitha@gmail.com', '', '', '0', '0', '0', '0', '0', '0'),
(3, 'shruthi', 'vsg', 'Amar Dham, 6th Main Rd, Vinayak Nagar B-Block, Vinayak Nagar, Vinayaka Nagar, Konen Agrahara, Bengaluru, Karnataka 560017, India', '12.954003416148225', '77.65854829922318', 'bangalore', 'karnataka', '123456', 'india', '9876543210', 'shruthi@gmail.com', 'sheetal', 'sheetal', '0', '0', '0', '0', '0', '0'),
(4, 'shruthi tv', 'vsg tech', 'Co Rd S43, Russell, IA 50238, USA', '40.850191226229775', '-93.25819909921847', 'bangalore', 'karnataka', '123456', 'india', '98765432104', 'shruthi345@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(5, 'hghg', 'vsg tech', '2359-2361 Watrous, Chariton, IA 50049, USA', '40.89135485507051', '-93.30646277870983', 'ghf', 'hnfg', '576786', 'hg', '9742529954', 'ghng@gmail.com', 'hghgg', 'ghghgg', '0', '0', '0', '0', '0', '0'),
(7, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(8, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(9, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(10, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(11, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(12, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(13, 'gfgfgf', 'vsg tech', 'Unnamed Road, Govindha Agraharam, Hosur, Tamil Nadu 635126, India', '12.780851665042533', '77.81192757189274', 'hfghfg', 'hgfhgf', '767657', 'hgh', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(14, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(15, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(16, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(17, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(18, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(19, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(20, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(21, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(22, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(23, 'hfgdf', 'ggdfg', '165th, Corydon, IA 50060, USA', '40.842414291552416', '-93.27371478779241', 'ghfhfg', 'gdgfd', '6788', 'gfdgfd', '9742529954', 'gsdd7@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(24, 'hgjhg', 'hgfhg', '180th, Russell, IA 50238, USA', '40.85176382158824', '-93.23251605732366', 'hghg', 'hghgf', '6786878', 'ghfg', '9742529954', 'ghngg@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(25, 'gdfgbf', 'hfghgfh', '165th, Corydon, IA 50060, USA', '40.84708922145802', '-93.2565486500971', 'hfghfg', 'hfghg', '56546757', 'hbfghbg', '9742529954', 'ghng55@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(26, 'gdfgbf', 'hfghgfh', '165th, Corydon, IA 50060, USA', '40.84708922145802', '-93.2565486500971', 'hfghfg', 'hfghg', '56546757', 'hbfghbg', '9742529954', 'ghng55@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(27, 'gdfgbf', 'hfghgfh', '165th, Corydon, IA 50060, USA', '40.84708922145802', '-93.2565486500971', 'hfghfg', 'hfghg', '56546757', 'hbfghbg', '9742529954', 'ghng55@gmail.com', 'suppiler4', 'suppiler4', '0', '0', '0', '0', '0', '0'),
(28, 'fgfdgfd', 'gfdgf', '2464-2498 Co Rd J22, Corydon, IA 50060, USA', '40.843453193363494', '-93.27680469257757', 'gfdgdf', 'gfdg', '234556', 'gbdfgfd', '9742529945', 'ghng55@gmail.com', 'jeevitha@gmail.com', 'jeevitha', '0', '0', '0', '0', '0', '0'),
(29, 'fgfdgfd', 'gfdgf', '2464-2498 Co Rd J22, Corydon, IA 50060, USA', '40.843453193363494', '-93.27680469257757', 'gfdgdf', 'gfdg', '234556', 'gbdfgfd', '9742529945', 'ghng55@gmail.com', 'jeevitha@gmail.com', 'jeevitha', '0', '0', '0', '0', '0', '0'),
(30, 'fgfdgfd', 'gfdgf', '2464-2498 Co Rd J22, Corydon, IA 50060, USA', '40.843453193363494', '-93.27680469257757', 'gfdgdf', 'gfdg', '234556', 'gbdfgfd', '9742529945', 'ghng55@gmail.com', 'jeevitha@gmail.com', 'jeevitha', '0', '0', '0', '0', '0', '0'),
(31, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(32, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(33, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(34, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(36, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(37, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(38, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(39, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(40, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(41, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(42, 'jghjg', 'hbfghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.85019122617397', '-93.26558053842746', 'hgfhfd', 'hgfh', '123434', 'hfghgf', '9742529945', 'shruthi@gmail.com', 'shruthi', 'shruthi', '0', '0', '0', '0', '0', '0'),
(43, 'gfgdf', 'jghjhg', '2464-2498 Co Rd J22, Corydon, IA 50060, USA', '40.84915242999006', '-93.27502191415988', 'ghgfh', 'hggf', '12345567', 'hjngfjhg', '9742529954', 'lish@gmail.com', 'lish', 'lish', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `suspended_bills`
--

CREATE TABLE `suspended_bills` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `tax1` float(25,2) DEFAULT NULL,
  `tax2` float(25,2) DEFAULT NULL,
  `discount` decimal(25,2) DEFAULT NULL,
  `inv_total` decimal(25,2) NOT NULL,
  `total` float(25,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suspended_bills`
--

INSERT INTO `suspended_bills` (`id`, `date`, `customer_id`, `count`, `tax1`, `tax2`, `discount`, `inv_total`, `total`) VALUES
(1, '2015-06-01', 1, 11, 1396.63, 2469.11, '589.59', '17194.35', 20470.50);

-- --------------------------------------------------------

--
-- Table structure for table `suspended_items`
--

CREATE TABLE `suspended_items` (
  `id` int(11) NOT NULL,
  `suspend_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(50) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `val_tax` decimal(25,2) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `discount_val` decimal(25,2) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suspended_items`
--

INSERT INTO `suspended_items` (`id`, `suspend_id`, `product_id`, `product_code`, `product_name`, `product_unit`, `tax_rate_id`, `tax`, `quantity`, `unit_price`, `gross_total`, `val_tax`, `discount`, `discount_id`, `discount_val`, `serial_no`) VALUES
(1, 1, 129, '5005', 'AMINOPHYLLINE\\n200mg50', 'No', 2, '14.36%', 6, '727.60', '4365.60', '626.90', '5.00%', 3, '249.63', 'te680'),
(2, 1, 323, '2065', 'ANTISTIN PRIVIN10ml', 'Unit', 3, '6.00%', 5, '2565.75', '12828.75', '769.73', '2.50%', 2, '339.96', 't34570');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `rate` decimal(8,2) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `name`, `rate`, `type`) VALUES
(1, 'No Tax', '0.00', '2'),
(2, 'VAT', '14.36', '1'),
(3, 'GST', '6.00', '1'),
(4, 'new vat', '14.36', '1');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transfer_no` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `from_warehouse_code` varchar(55) NOT NULL,
  `from_warehouse_name` varchar(55) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `to_warehouse_code` varchar(55) NOT NULL,
  `to_warehouse_name` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `total` decimal(25,2) DEFAULT NULL,
  `tr_total` decimal(25,2) DEFAULT NULL,
  `received_quantity` int(11) NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `difference_in_quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `user_id`, `transfer_no`, `date`, `from_warehouse_id`, `from_warehouse_code`, `from_warehouse_name`, `to_warehouse_id`, `to_warehouse_code`, `to_warehouse_name`, `note`, `user`, `total_tax`, `total`, `tr_total`, `received_quantity`, `received_by`, `difference_in_quantity`) VALUES
(11, 22, 'TR-0011', '2016-08-06', 3, 'WH3', 'warehouse3', 1, 'WHI', 'Warehouse 1', '&lt;p&gt;\r\n fhgfh\r\n&lt;/p&gt;', 'warehouse3 warehouse3', '0.00', '65757.00', '65757.00', 0, '', 0),
(12, 21, 'TR-0012', '2016-08-08', 1, 'WHI', 'Warehouse 1', 3, 'WH3', 'warehouse3', '&lt;p&gt;\r\n dgd\r\n&lt;/p&gt;', 'warehouse warehouse', '0.00', '394542.00', '394542.00', 0, '', 0),
(10, 22, 'TR-0001', '2016-08-06', 3, 'WH3', 'warehouse3', 1, 'WHI', 'Warehouse 1', '&lt;p&gt;\r\n fgdfgfg\r\n&lt;/p&gt;', 'warehouse3 warehouse3', '0.00', '25000.00', '25000.00', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_items`
--

CREATE TABLE `transfer_items` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `tax_val` decimal(25,2) DEFAULT NULL,
  `unit_price` decimal(25,2) DEFAULT NULL,
  `gross_total` decimal(25,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transfer_items`
--

INSERT INTO `transfer_items` (`id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `product_unit`, `quantity`, `tax_rate_id`, `tax`, `tax_val`, `unit_price`, `gross_total`) VALUES
(12, 11, 87, '565679', 'defdfv', '5654', 1, 1, '0.00', '0.00', '65757.00', '65757.00'),
(13, 12, 87, '565679', 'defdfv', '5654', 6, 1, '0.00', '0.00', '65757.00', '394542.00'),
(11, 10, 82, '123', 'dell', '1', 1, 1, '0.00', '0.00', '25000.00', '25000.00');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_received`
--

CREATE TABLE `transfer_received` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `sent_by` varchar(250) NOT NULL,
  `received_id` int(11) NOT NULL,
  `is_received` int(11) NOT NULL,
  `received_by` varchar(250) NOT NULL,
  `received_quantity` varchar(250) NOT NULL,
  `sent_quantity` int(11) NOT NULL,
  `difference_in_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_received`
--

INSERT INTO `transfer_received` (`id`, `transfer_id`, `sent_by`, `received_id`, `is_received`, `received_by`, `received_quantity`, `sent_quantity`, `difference_in_quantity`) VALUES
(8, 2, 'OWNER OWNER', 22, 1, 'warehouse3 warehouse3', '123456.00', 65757, -57699),
(9, 5, 'WAREHOUSE3 WAREHOUSE3', 22, 1, 'warehouse3 warehouse3', '456.00', 65757, 65301),
(10, 3, 'WAREHOUSE3 WAREHOUSE3', 22, 1, 'warehouse3 warehouse3', '1000.00', 25000, 24000),
(11, 7, 'WAREHOUSE3 WAREHOUSE3', 21, 1, 'warehouse warehouse', '1000.00', 65757, 64757),
(12, 8, 'WAREHOUSE WAREHOUSE', 22, 1, 'warehouse3 warehouse3', '4500.00', 25000, 20500),
(13, 9, 'WAREHOUSE WAREHOUSE', 22, 1, 'Received', '0.5', 25000, 25000),
(14, 11, 'WAREHOUSE3 WAREHOUSE3', 21, 1, 'Received', '0.5', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `check_code` varchar(40) DEFAULT NULL,
  `expire_date` text,
  `phone` varchar(20) DEFAULT NULL,
  `catallog` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `check_code`, `expire_date`, `phone`, `catallog`) VALUES
(1, 0x7f0000, 'owner', '54af4ba64ec0a86f4f3e1e45159df08902ab8f40', NULL, 'h2vani@gmail.com', NULL, NULL, NULL, '6d51ca3212f297271477fb4f3ec312d68dfd1702', 1351661704, 1471926338, 1, 'Owner', 'Owner', 'Stock Manager', 'ashok', '1557180000', '0105292122', ''),
(2, 0x7f0000, 'jeevitha', '72f9ea4570fda36adb946334cc6f007c89145501', NULL, 'jeevitha@gmail.com', NULL, NULL, NULL, NULL, 0, 1464075800, 1, 'jeevitha', 'jeevitha', 'vsg tech', 'ashok', '1557180000', '9742529954', 'ELECTRONICS'),
(19, 0x00000000000000000000000000000001, 'meena', 'a560a9ebb033c0686b3651b7cac4ba0440d825a2', NULL, 'meena@gmail.com', NULL, NULL, NULL, NULL, 1464182551, 1470302217, 1, 'meena', NULL, NULL, NULL, NULL, NULL, 'electronics'),
(21, 0x00000000000000000000000000000001, 'warehouse warehouse', '280db2f46b52a87d96b92e7ae35cabade90040e6', NULL, 'warehouse1@gmail.com', NULL, NULL, NULL, NULL, 1470311251, 1471067238, 1, 'warehouse', 'warehouse', 'vsg tech', NULL, NULL, '9742529954', ''),
(22, 0x00000000000000000000000000000001, 'warehouse3 warehouse3', '4a45f8a8416c8010c014c8db19096847fdfd98ad', NULL, 'warehouse3@gmail.com', NULL, NULL, NULL, NULL, 1470376586, 1470489441, 1, 'warehouse3', 'warehouse3', 'vsg', NULL, NULL, '9087654321', ''),
(23, 0x00000000000000000000000000000001, 'warehouse2 warehouse', 'a1140f76602f5fb30f66a5e7265672911d37101b', NULL, 'warehouse2@gmail.com', NULL, NULL, NULL, NULL, 1470471039, 1470471039, 1, 'warehouse2', 'warehouse', 'vsg tech', NULL, NULL, '9258552325', ''),
(26, 0x00000000000000000000000000000001, 'robin house rw3r', 'bcfcde62a1adf68eba020aef1ece1ac7dc9fbde3', NULL, 'robin@gmail.com', NULL, NULL, NULL, NULL, 1470472491, 1470472491, 1, 'robin house', 'rw3r', 'tr34t34', NULL, NULL, '123123242', ''),
(51, 0x00000000000000000000000000000001, 'inv inv', 'baab2a71dcf87c1ad1bf7e96cb9bb1cbbe3d7a16', NULL, 'inv@gmail.com', NULL, NULL, NULL, NULL, 1471066294, 1471070993, 1, 'inv', 'inv', 'vsg tech', NULL, NULL, '9876543210', ''),
(50, 0x00000000000000000000000000000001, 'crm crm', 'f1422219b16fd0e2bdad6e4e2be5ebed9b0a91e5', NULL, 'crm@gmail.com', NULL, NULL, NULL, NULL, 1470911655, 1471068670, 1, 'crm', 'crm', 'vsg tech', NULL, NULL, '9742529958', '1'),
(52, 0x00000000000000000000000000000001, 'jjjjjjj', '0d3ab893df28017e088c2ba8fde4a3b742fa30ec', NULL, 'jjjjj@gmail.com', NULL, NULL, NULL, NULL, 1471413184, 1471413184, 1, 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 6),
(3, 4, 5),
(5, 13, 6),
(6, 14, 6),
(7, 15, 7),
(8, 16, 8),
(9, 17, 1),
(10, 18, 6),
(11, 19, 6),
(13, 21, 9),
(14, 22, 9),
(15, 23, 9),
(18, 26, 9),
(19, 27, 11),
(20, 28, 11),
(21, 29, 11),
(22, 30, 11),
(44, 51, 12),
(43, 50, 11),
(45, 52, 6);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `company`, `address`, `latitude`, `longitude`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `username`, `password`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(0, 'mamtha', 'hghfg', 'Co Rd J22, Corydon, IA 50060, USA', '40.84954198046748', '-93.26437890878879', 'ghfhgf', 'hfghgf', '123456', 'hgfhfg', '9742529954', 'mamatha@gmail.com', 'mamatha', 'mamatha', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(11) NOT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `warehouse_incharge` varchar(250) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `catalog_id`, `session_id`, `warehouse_incharge`, `code`, `name`, `address`, `city`) VALUES
(1, 4, 1, '21', 'WHI', 'Warehouse 1', 'Address', 'City'),
(2, 4, 1, '23', 'WH2', 'warehouse2', 'bangalore', 'bangalore'),
(3, 4, 1, '22', 'WH3', 'warehouse3', 'fgbvdfgfd', 'bangalore'),
(4, 4, 1, '26', 'WH4', 'warehouse4', 'dfdgf', 'fggfdgdf');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses_products`
--

CREATE TABLE `warehouses_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warehouses_products`
--

INSERT INTO `warehouses_products` (`id`, `product_id`, `warehouse_id`, `quantity`) VALUES
(1, 50, 1, 100),
(2, 56, 1, 125),
(3, 5, 1, 99),
(5, 4, 1, -35),
(6, 9, 1, -13),
(7, 102, 1, -3),
(8, 1651, 1, -1),
(9, 3, 1, -1),
(10, 1, 1, -1),
(11, 2, 1, -1),
(12, 101, 1, -1),
(13, 6, 1, -1),
(14, 7, 1, -1),
(15, 8, 1, -2),
(16, 10, 1, -1),
(17, 11, 1, -1),
(18, 12, 1, -1),
(19, 13, 1, -1),
(20, 123, 1, -2),
(21, 335, 1, -15),
(22, 145, 1, -5),
(23, 122, 1, -1),
(24, 124, 1, -1),
(25, 385, 1, -1),
(26, 415, 1, -1),
(27, 893, 1, -6),
(28, 130, 1, -1),
(29, 136, 1, -95),
(30, 2065, 1, -9),
(31, 486, 1, -2),
(32, 2070, 1, -1),
(33, 2071, 1, -2),
(34, 82, 1, 0),
(35, 87, 1, -7),
(36, 84, 1, 0),
(37, 87, 2, 2),
(38, 82, 2, -1),
(39, 87, 4, 1),
(40, 87, 3, 4),
(41, 82, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `cart_management`
--
ALTER TABLE `cart_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damage_products`
--
ALTER TABLE `damage_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date_format`
--
ALTER TABLE `date_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_types`
--
ALTER TABLE `invoice_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_settings`
--
ALTER TABLE `menu_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_settings`
--
ALTER TABLE `pos_settings`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `category_id_2` (`category_id`);

--
-- Indexes for table `product_feature`
--
ALTER TABLE `product_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `quote_items`
--
ALTER TABLE `quote_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_id` (`quote_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suspended_bills`
--
ALTER TABLE `suspended_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suspended_items`
--
ALTER TABLE `suspended_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `transfer_received`
--
ALTER TABLE `transfer_received`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `warehouses_products`
--
ALTER TABLE `warehouses_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cart_management`
--
ALTER TABLE `cart_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `damage_products`
--
ALTER TABLE `damage_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `date_format`
--
ALTER TABLE `date_format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `invoice_types`
--
ALTER TABLE `invoice_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `menu_settings`
--
ALTER TABLE `menu_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;
--
-- AUTO_INCREMENT for table `product_feature`
--
ALTER TABLE `product_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;
--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `quote_items`
--
ALTER TABLE `quote_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `suspended_bills`
--
ALTER TABLE `suspended_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `suspended_items`
--
ALTER TABLE `suspended_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `transfer_items`
--
ALTER TABLE `transfer_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `transfer_received`
--
ALTER TABLE `transfer_received`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `warehouses_products`
--
ALTER TABLE `warehouses_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
