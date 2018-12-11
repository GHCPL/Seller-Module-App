-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2018 at 08:13 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_sh`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_details`
--

CREATE TABLE `account_details` (
  `emp_id` varchar(255) NOT NULL,
  `bank` text NOT NULL,
  `account_no` int(11) NOT NULL,
  `account_holder_name` text NOT NULL,
  `ifsc_code` varchar(20) NOT NULL,
  `pan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_admin`
--

CREATE TABLE `app_admin` (
  `admin_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_img` varchar(255) NOT NULL DEFAULT 'https://www.smashusmle.com/wp-content/uploads/2015/01/User-icon.png',
  `image_handel` int(255) NOT NULL DEFAULT '10',
  `currency` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tax` varchar(255) NOT NULL DEFAULT '0.0',
  `shipping` varchar(255) NOT NULL,
  `compney` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_admin`
--

INSERT INTO `app_admin` (`admin_id`, `name`, `email`, `password`, `user_img`, `image_handel`, `currency`, `tax`, `shipping`, `compney`, `address`, `phone`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', 'admin.png', 5, 'USD', '10', '1', '        AbhiAndroid', '        F352 Mohali Phase 8B Industrial Area', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `app_category`
--

CREATE TABLE `app_category` (
  `cat_id` int(255) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `category_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_category`
--

INSERT INTO `app_category` (`cat_id`, `category_name`, `category_image`) VALUES
(1, 'Groceries', 'vegetables.jpg'),
(2, 'Household', 'ownveg.jpeg'),
(3, 'Personnel Care', 'livewalls.jpg'),
(6, 'Fruits', 'fruits.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `app_products`
--

CREATE TABLE `app_products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `product_id` int(250) NOT NULL,
  `cat_id` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `sellprice` varchar(255) NOT NULL DEFAULT '0',
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `product_status` varchar(11) NOT NULL DEFAULT 'In-stock',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `date` varchar(255) NOT NULL,
  `plimit` int(255) NOT NULL DEFAULT '10',
  `unit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_products`
--

INSERT INTO `app_products` (`id`, `product_name`, `product_id`, `cat_id`, `description`, `price`, `sellprice`, `color`, `size`, `product_status`, `quantity`, `date`, `plimit`, `unit`) VALUES
(4, 'Potato', 2, '01', 'potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato ', '25', '15', NULL, NULL, 'In-stock', 200, '14/09/2018', 20, 'kg'),
(5, 'Onion', 5, '02', 'Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion Onion ', '35', '20', NULL, NULL, 'In-stock', 25, '14/09/2018', 36, 'kg');

-- --------------------------------------------------------

--
-- Table structure for table `app_productsmain`
--

CREATE TABLE `app_productsmain` (
  `id` int(11) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `product_id` int(250) NOT NULL,
  `description` longtext NOT NULL,
  `price` varchar(255) NOT NULL,
  `sellprice` varchar(255) NOT NULL DEFAULT '0',
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `product_status` varchar(11) NOT NULL DEFAULT 'In-stock',
  `quantity` int(255) NOT NULL DEFAULT '0',
  `date` varchar(255) NOT NULL,
  `plimit` int(255) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_productsmain`
--

INSERT INTO `app_productsmain` (`id`, `product_name`, `product_id`, `description`, `price`, `sellprice`, `color`, `size`, `product_status`, `quantity`, `date`, `plimit`) VALUES
(2, 'Coconut', 1377, '&lt;p&gt;full&lt;/p&gt;\r\n', '40', '50', '', '', 'Instock', 29, '22/08/2018', 2),
(3, 'potato', 4, 'potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato ', '20', '15', NULL, NULL, 'In-stock', 100, '01/11/2018', 5),
(4, 'onion', 5, 'onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion onion ', '25', '20', NULL, NULL, 'In-stock', 200, '24/11/2018', 5);

-- --------------------------------------------------------

--
-- Table structure for table `app_slider`
--

CREATE TABLE `app_slider` (
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_slider`
--

INSERT INTO `app_slider` (`product_id`, `id`, `image`, `product_name`) VALUES
('2', 1, 'slider1.jpeg', 'Potato'),
('5', 2, 'slider2.jpeg', 'Onion');

-- --------------------------------------------------------

--
-- Table structure for table `confirmation`
--

CREATE TABLE `confirmation` (
  `order_id` varchar(255) NOT NULL,
  `delivery_id` varchar(255) NOT NULL,
  `seller_id` varchar(255) NOT NULL,
  `seller_conf` tinyint(1) NOT NULL DEFAULT '0',
  `delivery_boy_conf` tinyint(1) NOT NULL DEFAULT '0',
  `customer_conf` tinyint(1) NOT NULL DEFAULT '0',
  `payment_mode` varchar(255) NOT NULL DEFAULT 'Online'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `confirmation`
--

INSERT INTO `confirmation` (`order_id`, `delivery_id`, `seller_id`, `seller_conf`, `delivery_boy_conf`, `customer_conf`, `payment_mode`) VALUES
('OD10125SD157', 'DEL20015', '1', 0, 0, 0, 'Online'),
('OD25436', 'DEL2008', '1', 0, 0, 0, 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` int(10) NOT NULL,
  `alt_mobile` int(10) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `addhar` varchar(20) NOT NULL,
  `verification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_details`
--

CREATE TABLE `delivery_boy_details` (
  `id` int(11) NOT NULL,
  `delivery_boy_id` varchar(25) NOT NULL,
  `location_latti` varchar(255) DEFAULT NULL,
  `location_longi` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_wallet`
--

CREATE TABLE `delivery_boy_wallet` (
  `order_id` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `emp_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `description`) VALUES
(1, 'FAQ', '&lt;p&gt;Please&amp;nbsp;write your FAQ(Frequently asked questions) here.&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `main_wallet`
--

CREATE TABLE `main_wallet` (
  `order_id` varchar(255) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `seller_amount` int(11) NOT NULL,
  `delivery_boy_amount` int(11) NOT NULL,
  `company_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordered_product`
--

CREATE TABLE `ordered_product` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sellprice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `emp_id` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `terms` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`terms`) VALUES
('&lt;p&gt;Please write your App privacy policy, terms and conditions here.&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`) VALUES
(1, '2', 'potato.jpeg'),
(2, '5', 'onion.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` int(10) NOT NULL,
  `alt_mobile` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `verification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller_details`
--

CREATE TABLE `seller_details` (
  `id` int(11) NOT NULL,
  `seller_id` varchar(25) NOT NULL,
  `location_lati` varchar(20) DEFAULT NULL,
  `location_longi` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallet`
--

CREATE TABLE `seller_wallet` (
  `order_id` varchar(255) NOT NULL,
  `seller_id` varchar(255) NOT NULL,
  `seller_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `com_code` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'INACTIVE',
  `forgot` varchar(255) DEFAULT NULL,
  `logintype` varchar(255) NOT NULL DEFAULT 'email',
  `uid` varchar(255) NOT NULL,
  `cart_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_cart`
--

CREATE TABLE `users_cart` (
  `id` int(11) NOT NULL,
  `cart_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_cart`
--

INSERT INTO `users_cart` (`id`, `cart_id`, `uid`, `product_id`, `size`, `color`, `quantity`) VALUES
(1, '1', NULL, 21, NULL, NULL, '5');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentmode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'In-Processing',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `landmark` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_wishlist`
--

CREATE TABLE `users_wishlist` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_details`
--
ALTER TABLE `account_details`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `app_admin`
--
ALTER TABLE `app_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `app_category`
--
ALTER TABLE `app_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `app_products`
--
ALTER TABLE `app_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `app_productsmain`
--
ALTER TABLE `app_productsmain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_slider`
--
ALTER TABLE `app_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmation`
--
ALTER TABLE `confirmation`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `delivery_boy_wallet`
--
ALTER TABLE `delivery_boy_wallet`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_wallet`
--
ALTER TABLE `main_wallet`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `ordered_product`
--
ALTER TABLE `ordered_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `aadhar` (`aadhar`);

--
-- Indexes for table `seller_details`
--
ALTER TABLE `seller_details`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `seller_wallet`
--
ALTER TABLE `seller_wallet`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_cart`
--
ALTER TABLE `users_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users_wishlist`
--
ALTER TABLE `users_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_admin`
--
ALTER TABLE `app_admin`
  MODIFY `admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `app_category`
--
ALTER TABLE `app_category`
  MODIFY `cat_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `app_products`
--
ALTER TABLE `app_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `app_productsmain`
--
ALTER TABLE `app_productsmain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `app_slider`
--
ALTER TABLE `app_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ordered_product`
--
ALTER TABLE `ordered_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_cart`
--
ALTER TABLE `users_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_wishlist`
--
ALTER TABLE `users_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery_boy_wallet`
--
ALTER TABLE `delivery_boy_wallet`
  ADD CONSTRAINT `delivery_boy_wallet_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `main_wallet` (`order_id`);

--
-- Constraints for table `main_wallet`
--
ALTER TABLE `main_wallet`
  ADD CONSTRAINT `main_wallet_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `confirmation` (`order_id`);

--
-- Constraints for table `seller_wallet`
--
ALTER TABLE `seller_wallet`
  ADD CONSTRAINT `seller_wallet_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `main_wallet` (`order_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
