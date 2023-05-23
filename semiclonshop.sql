-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 10:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `semiclonshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `slug`, `title`) VALUES
(1, 'smartphones', 'Smartphones'),
(2, 'console', 'Console'),
(3, 'games-console', 'Games Console'),
(4, 'laptop', 'Laptop'),
(8, 'komputer-rakitan', 'Komputer Rakitan'),
(9, 'lain-lain', 'Lain Lain');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_category`, `slug`, `title`, `description`, `price`, `is_available`, `image`) VALUES
(12, 2, 'nintendo-switch-lite', 'Nintendo Switch Lite', 'Nintendo Switch Lite', 2900000, 1, 'nintendo-switch-lite-20230523130217.jpg'),
(13, 2, 'nintendo-switch-v2', 'Nintendo Switch V2', 'Nintendo Switch V2', 3900000, 1, 'nintendo-switch-v2-20230523130233.jpg'),
(15, 2, 'nintendo-switch-oled', 'Nintendo Switch Oled', 'Nintendo Switch Oled', 4900000, 1, 'nintendo-switch-oled-20230523133208.jpg'),
(16, 4, 'asus-rog-laptop', 'Asus Rog Laptop', 'New Asus Rog Laptop', 8000000, 0, 'asus-rog-laptop-20230523133232.jpg'),
(17, 2, 'playstation-4', 'Playstation 4', 'Playstation 4 Pro', 4000000, 1, 'playstation-4-20230523133613.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','member') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `is_active`, `image`) VALUES
(2, 'faiq', 'faiq@gmail.com', '$2y$10$zLaNU/2jjRG5fEd5TKwyoeqgObzRMSPJayevL5ngDbqG7jYUqrDCO', 'member', 1, ''),
(3, 'faiq', 'faiq1@gmail.com', '$2y$10$jPnc22WtvGSKS9R1PWIE8Oo8vzGWnZpoEaOBD0VwQ2JORLlphU7b.', 'member', 1, ''),
(4, 'faiq haidar', 'haidar@gmail.com', '$2y$10$6JrkDTcYXlnlGJAEVscqXOadLesjjDDgMru1yDMJzYBgQkyOR08Uu', 'member', 1, ''),
(5, 'Ali', 'ali@gmail.com', '$2y$10$09GTuLjHNM6VM0xYg4IB8O07Lfh.ocdK9VR7tyYPMcgoCaLz2tu.u', 'member', 1, ''),
(6, 'Ali', 'ali1@gmail.com', '$2y$10$S8ngrPxrDldDHUCz7IraeevdVSjzXwLcpz6q6RPxBMJGC08jESoRG', 'member', 1, ''),
(7, 'Admin', 'admin@gmail.com', '$2y$10$GjUpu5nLhE196y5T81RlUe7dwUKx15fxRkD5lXEdby4E9gMTLKuXe', 'admin', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
