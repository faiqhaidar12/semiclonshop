-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 11:25 AM
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
(4, 'laptop', 'Laptop'),
(10, 'lain-lain', 'Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` date NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `status` enum('waiting','paid','delivered','cancel') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `date`, `invoice`, `total`, `name`, `address`, `phone`, `status`) VALUES
(1, 7, '2023-05-29', '720230529120946', 5800000, 'faiq', 'perumahan sinargiripeni blok A07 Wates Kulonprogo rt 35 rw 16', '089616908941', 'paid'),
(2, 10, '2023-05-29', '1020230529122629', 8900000, 'ana', 'wates', '089616908982', 'waiting'),
(3, 10, '2023-05-29', '1020230529122954', 2900000, 'ana', 'wates', '089616908982', 'waiting'),
(4, 7, '2023-05-29', '720230529141304', 2900000, 'faiq', 'perumahan sinargiripeni blok A07 Wates Kulonprogo rt 35 rw 16', '089616908941', 'paid'),
(5, 7, '2023-05-29', '720230529141317', 2900000, 'faiq', 'perumahan sinargiripeni blok A07 Wates Kulonprogo rt 35 rw 16', '089616908941', 'paid'),
(6, 7, '2023-05-29', '720230529141353', 2900000, 'faiq', 'perumahan sinargiripeni blok A07 Wates Kulonprogo rt 35 rw 16', '089616908941', 'paid'),
(7, 7, '2023-05-29', '720230529141401', 2900000, 'faiq', 'perumahan sinargiripeni blok A07 Wates Kulonprogo rt 35 rw 16', '089616908941', 'waiting'),
(8, 10, '2023-05-29', '1020230529141603', 14500000, 'ana', 'wates', '089616908982', 'waiting'),
(9, 7, '2023-05-29', '720230529142911', 3900000, 'faiq', 'perumahan sinargiripeni blok A07 Wates Kulonprogo rt 35 rw 16', '089616908941', 'waiting'),
(10, 10, '2023-05-29', '1020230529151147', 4000000, 'ana', 'wates', '089616908982', 'waiting'),
(11, 10, '2023-05-29', '1020230529151308', 4000000, 'ana', 'wates', '089616908982', 'waiting');

-- --------------------------------------------------------

--
-- Table structure for table `orders_confirm`
--

CREATE TABLE `orders_confirm` (
  `id` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_confirm`
--

INSERT INTO `orders_confirm` (`id`, `id_orders`, `account_name`, `account_number`, `nominal`, `note`, `image`) VALUES
(1, 1, 'faiq', '0988662', 5800000, 'sudah bayar', '720230529120946-20230529155942.png'),
(2, 4, 'faiq', '0987766', 2900000, '-', '720230529141304-20230529160150.png'),
(3, 5, 'faiq', '0987787', 2900000, '-', '720230529141317-20230529162145.png'),
(4, 6, 'faiq', '1231234532', 2900000, '-', '720230529141353-20230529162252.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(4) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `id_orders`, `id_product`, `qty`, `subtotal`) VALUES
(1, 1, 12, 2, 5800000),
(2, 2, 15, 1, 4900000),
(3, 2, 17, 1, 4000000),
(4, 3, 12, 1, 2900000),
(5, 4, 12, 1, 2900000),
(6, 5, 12, 1, 2900000),
(7, 6, 12, 1, 2900000),
(8, 7, 12, 1, 2900000),
(9, 8, 12, 5, 14500000),
(10, 9, 13, 1, 3900000),
(11, 10, 17, 1, 4000000),
(12, 11, 17, 1, 4000000);

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
(17, 2, 'playstation-4', 'Playstation 4', 'Playstation 4 Pro 1TB Second / Bekas kondisi terawat layak jual\r\n\r\nGaransi 1 bulan PS4 setelah barang diterima .\r\n\r\n** Firmware official/resmi original\r\n** Bisa main CD , bisa main game digital\r\n** bisa main online utk game ps+ extra\r\n** Full Akun pribadi, bukan share akun\r\n** ID login dan password, akan kami infokan, password bisa diganti sendiri\r\n** Game sudah siap main sampai rumah , ga perlu download2 lagi full update', 4000000, 1, 'playstation-4-20230523133613.jpg');

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_confirm`
--
ALTER TABLE `orders_confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders_confirm`
--
ALTER TABLE `orders_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
