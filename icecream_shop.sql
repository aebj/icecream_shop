-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 11, 2021 at 07:24 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icecream_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `flavor`
--

CREATE TABLE `flavor` (
  `id` int(11) NOT NULL,
  `flavor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flavor`
--

INSERT INTO `flavor` (`id`, `flavor`) VALUES
(1, 'vanilla'),
(2, 'chocolate'),
(3, 'orange'),
(4, 'cocoa');

-- --------------------------------------------------------

--
-- Table structure for table `icecream`
--

CREATE TABLE `icecream` (
  `id` int(11) NOT NULL,
  `bar_code` int(12) NOT NULL,
  `stock` int(5) NOT NULL,
  `expiration_date` date NOT NULL,
  `type_id` int(11) NOT NULL,
  `production_year_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `icecream`
--

INSERT INTO `icecream` (`id`, `bar_code`, `stock`, `expiration_date`, `type_id`, `production_year_id`) VALUES
(1, 123, 10, '2021-05-31', 1, 3),
(2, 234, 11, '2021-06-16', 2, 1),
(3, 345, 12, '2021-05-16', 3, 2),
(4, 456, 10, '2021-05-07', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ice_flavor`
--

CREATE TABLE `ice_flavor` (
  `ice_id` int(11) NOT NULL,
  `flavor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ice_flavor`
--

INSERT INTO `ice_flavor` (`ice_id`, `flavor_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `production_year`
--

CREATE TABLE `production_year` (
  `id` int(11) NOT NULL,
  `production_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production_year`
--

INSERT INTO `production_year` (`id`, `production_year`) VALUES
(1, 2020),
(2, 2021),
(3, 2022),
(4, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'customer'),
(2, 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_no` int(8) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zip_code` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `email`, `phone_no`, `address`, `zip_code`) VALUES
(1, 'Clausenis@is.dk', 88881111, 'industrivej 32', 5000),
(2, 'B&J@B&J.dk', 33221166, 'industrivej 27', 5550),
(3, 'Magnum@mag.dk', 27612511, 'rørlykkevej 13', 5250);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_company`
--

CREATE TABLE `supplier_company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `CVR_no` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_company`
--

INSERT INTO `supplier_company` (`id`, `company_name`, `CVR_no`) VALUES
(1, 'Clausenis', 21135732),
(2, 'B&J', 98315368),
(3, 'Magnum', 53215834);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_company_ice`
--

CREATE TABLE `supplier_company_ice` (
  `ice_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_company_ice`
--

INSERT INTO `supplier_company_ice` (`ice_id`, `supplier_id`, `company_id`) VALUES
(1, 2, 2),
(2, 1, 1),
(3, 3, 3),
(4, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `type`) VALUES
(1, 'normal'),
(2, 'vegansk'),
(3, 'glutenfri');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_no` int(8) NOT NULL,
  `address` varchar(100) NOT NULL,
  `role` int(11) NOT NULL,
  `zip_code` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_no`, `address`, `role`, `zip_code`) VALUES
(1, 'john', 'doe', 'jd1@dk.dk', 12345678, 'jernbanegade 1', 1, 5000),
(17, 'jane', 'doe', 'jd2@dk.dk', 43276352, 'østerbro 2', 1, 5550),
(18, 'bob', 'ross', 'bobros@ice.com', 48232922, 'dalumvej 43', 2, 5000),
(19, 'john', 'johnson', 'johjoh@ice.com', 38176458, 'Jagtvej 23', 2, 5250);

-- --------------------------------------------------------

--
-- Table structure for table `zip_code`
--

CREATE TABLE `zip_code` (
  `zip_code` int(4) NOT NULL,
  `city` varchar(189) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zip_code`
--

INSERT INTO `zip_code` (`zip_code`, `city`) VALUES
(5000, 'Odense C'),
(5250, 'Odense SV'),
(5550, 'Langeskov');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flavor`
--
ALTER TABLE `flavor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icecream`
--
ALTER TABLE `icecream`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bar_code` (`bar_code`),
  ADD KEY `production_year_id (FK)` (`production_year_id`),
  ADD KEY `type_id (FK)` (`type_id`);

--
-- Indexes for table `ice_flavor`
--
ALTER TABLE `ice_flavor`
  ADD KEY `ice_id (FK)` (`ice_id`,`flavor_id`),
  ADD KEY `flavor_id (FK)` (`flavor_id`);

--
-- Indexes for table `production_year`
--
ALTER TABLE `production_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zip_code (FK)` (`zip_code`);

--
-- Indexes for table `supplier_company`
--
ALTER TABLE `supplier_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_company_ice`
--
ALTER TABLE `supplier_company_ice`
  ADD KEY `ice_id` (`ice_id`,`supplier_id`,`company_id`),
  ADD KEY `company_id (FK)` (`company_id`),
  ADD KEY `supplier_id (FK)` (`supplier_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role (FK)` (`role`),
  ADD KEY `zip_code (FK)` (`zip_code`) USING BTREE;

--
-- Indexes for table `zip_code`
--
ALTER TABLE `zip_code`
  ADD PRIMARY KEY (`zip_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flavor`
--
ALTER TABLE `flavor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `icecream`
--
ALTER TABLE `icecream`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `production_year`
--
ALTER TABLE `production_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier_company`
--
ALTER TABLE `supplier_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `zip_code`
--
ALTER TABLE `zip_code`
  MODIFY `zip_code` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5551;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `icecream`
--
ALTER TABLE `icecream`
  ADD CONSTRAINT `icecream_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`),
  ADD CONSTRAINT `icecream_ibfk_2` FOREIGN KEY (`production_year_id`) REFERENCES `production_year` (`id`);

--
-- Constraints for table `ice_flavor`
--
ALTER TABLE `ice_flavor`
  ADD CONSTRAINT `ice_flavor_ibfk_1` FOREIGN KEY (`ice_id`) REFERENCES `icecream` (`id`),
  ADD CONSTRAINT `ice_flavor_ibfk_2` FOREIGN KEY (`flavor_id`) REFERENCES `flavor` (`id`);

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`zip_code`) REFERENCES `zip_code` (`zip_code`);

--
-- Constraints for table `supplier_company_ice`
--
ALTER TABLE `supplier_company_ice`
  ADD CONSTRAINT `supplier_company_ice_ibfk_1` FOREIGN KEY (`ice_id`) REFERENCES `icecream` (`id`),
  ADD CONSTRAINT `supplier_company_ice_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `supplier_company` (`id`),
  ADD CONSTRAINT `supplier_company_ice_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`zip_code`) REFERENCES `zip_code` (`zip_code`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`role`) REFERENCES `role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
