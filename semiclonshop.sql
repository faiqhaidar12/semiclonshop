-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 08:57 AM
-- Server version: 10.4.28-MariaDB
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
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_product`, `qty`, `subtotal`) VALUES
(1, 7, 12, 1, 2900000);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `slug`, `title`) VALUES
(1, 'smartphones', 'Smartphones'),
(2, 'console', 'Console'),
(3, 'games-console', 'Games Console'),
(4, 'laptop', 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_category`, `slug`, `title`, `description`, `price`, `is_available`, `image`) VALUES
(12, 2, 'nintendo-switch-lite', 'Nintendo Switch Lite', 'Kelengkapan :\r\n1x Unit console Nintendo Switch Lite\r\n1x Adaptor original\r\n1x Dus/Box', 2900000, 1, 'nintendo-switch-lite-20230523130217.jpg'),
(13, 2, 'nintendo-switch-v2', 'Nintendo Switch V2', 'FULLSET CONDITION:\r\n- Nintendo Switch™ Console HAC-001(-01)\r\n- Joy‑Con™ (L/R)\r\n- Nintendo Switch Dock\r\n- Joy‑Con™ Wrist Straps\r\n- Joy‑Con™ Grip\r\n- HDMI™ Cable\r\n- AC Adapter', 3900000, 1, 'nintendo-switch-v2-20230523130233.jpg'),
(15, 2, 'nintendo-switch-oled', 'Nintendo Switch Oled', 'Nintendo Switch Oled Model.\r\nBarang 100?ru dan original!\r\n\r\nKelengkapan :\r\n-1 Tablet Nintendo Switch Oled\r\n-2 Joy con R/L\r\n-2 Joy con strap\r\n-1 Joy con grip\r\n-1 Adaptor/Charger\r\n-1 Docking Oled Model\r\n\r\n- Garansi Console 30 hari, Garansi Accesories 7 hari.\r\n- S&K(Garansi tidak berlaku jika * segel rusak, cacat fisik,kotor, kena air & kerusakan lainnya dikarenakan kesalahan pengguna)', 4900000, 1, 'nintendo-switch-oled-20230523133208.jpg'),
(17, 2, 'playstation-4', 'Playstation 4', 'Playstation 4 Pro 1TB Second / Bekas kondisi terawat layak jual\r\n\r\nGaransi 1 bulan PS4 setelah barang diterima .\r\n\r\n** Firmware official/resmi original\r\n** Bisa main CD , bisa main game digital\r\n** bisa main online utk game ps+ extra\r\n** Full Akun pribadi, bukan share akun\r\n** ID login dan password, akan kami infokan, password bisa diganti sendiri\r\n** Game sudah siap main sampai rumah , ga perlu download2 lagi full update', 4000000, 1, 'playstation-4-20230523133613.jpg'),
(20, 1, 'testing-testing', 'testing testing', 'testing testing', 23333, 1, ''),
(21, 2, 'ps-5', 'ps 5', 'ps5', 10000000, 1, ''),
(22, 2, 'ps-1', 'ps 1', 'ps1', 2147483647, 1, ''),
(23, 2, 'testing-testing2', 'testing testing2', 'testing testing2', 2147483647, 1, ''),
(24, 2, 'testing-testing3', 'testing testing3', 'testing testing3', 2147483647, 1, ''),
(25, 2, 'nintendo-switch-lite22', 'Nintendo Switch Lite22', 'testing testing3', 2147483647, 1, ''),
(26, 2, 'testing-testing-testing-testing', 'testing testing testing testing ', 'testing testing testing testing ', 2147483647, 1, ''),
(27, 2, 'testing-testing232', 'testing testing232', '$route[\'shop/(:num)\']            = \'home/index/$1\';\r\n$route[\'shop/(:num)\']             = \'home/index/$1\';\r\n$route[\'search/(:num)\']             = \'home/index/$1\';', 2147483647, 1, '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `is_active`, `image`) VALUES
(7, 'Admin', 'admin@gmail.com', '$2y$10$cmhj6BxFUMnK8vYhaULjGONN6YFIPW2s4hLL9FoIeeDfHOH52sTaS', 'admin', 1, 'admin-20230524155959.png'),
(8, 'Faiq', 'faiqhaidar1@gmail.com', '$2y$10$pQ.VpprEOKjTs6Q1Cl69AOug4LumwbyPCVzztyxk4K0qeQW8Q3U7G', 'admin', 1, NULL),
(9, 'budi', 'budi@gmail.com', '$2y$10$mEnH2IraqeJBe/9qOAqnmesJiLeUumfnymf36i97IVNKi/.avVGf2', 'admin', 0, NULL),
(10, 'ana', 'ana@gmail.com', '$2y$10$OlYRRPKwQL6PoqsYio5g6O6ec/iZCR3epm3gnwboEr11McOYoBDXS', 'member', 1, NULL);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
