-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2025 at 02:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Elektronik', '2025-05-30 23:36:02'),
(2, 'Fashion', '2025-05-30 23:36:02'),
(3, 'Buku', '2025-05-30 23:36:02'),
(4, 'Makanan', '2025-05-30 23:36:02'),
(7, 'Buah', '2025-05-31 08:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `status`, `created_at`) VALUES
(1, 'Customer Satu', 'cust1@example.com', NULL, 1, '2025-05-30 23:35:40'),
(2, 'Customer Dua', 'cust2@example.com', NULL, 1, '2025-05-30 23:35:40'),
(3, 'Customer Tiga', 'cust3@example.com', NULL, 1, '2025-05-30 23:35:40'),
(4, 'Customer Empat', 'cust4@example.com', NULL, 1, '2025-05-30 23:35:40'),
(5, 'Customer Lima', 'cust5@example.com', NULL, 1, '2025-05-30 23:35:40'),
(6, 'siti', 'siti@gmail.com', '$2y$10$iMl5z/EQ5l2IQRhTBe12sehpvPRHztW1yLILy.IbwqrfRKtBndhUy', 1, '2025-05-31 00:32:10'),
(7, 'akbar', 'akbar@gmail.com', '$2y$10$BHDOoDpU9Jh2FxuJgainCuxPDh9DMHbrC634A5wvtLkD7bWysSsVa', 1, '2025-05-31 00:37:25'),
(8, 'seno', 'seno@gmail.com', '$2y$10$6rZuM9parMUR2wrOLuD8n.zoSY.zxy7Xfe.n01JXDcnXEHabtrbgu', 1, '2025-05-31 02:02:31'),
(9, 'alam', 'alam@gmail.com', '$2y$10$663M6uaNcLLPzpDizOEtiedoj05MdqBb.sJBPz93EIHFXYbNZJ0DW', 1, '2025-05-31 02:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `status` enum('pending','processing','completed','cancelled') DEFAULT 'pending',
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `status`, `total`) VALUES
(1, 1, '2025-05-31 06:36:38', 'completed', 8750000),
(2, 2, '2025-05-31 06:36:38', 'pending', 75000),
(3, 3, '2025-05-31 06:36:38', 'processing', 120000),
(4, 4, '2025-05-31 06:36:38', 'completed', 25000),
(5, 5, '2025-05-31 06:36:38', 'cancelled', 50000),
(6, 7, '2025-05-31 00:00:00', 'pending', 75000),
(7, 7, '2025-05-31 00:00:00', 'pending', 75000),
(8, 7, '2025-05-31 00:00:00', 'pending', 75000),
(9, 7, '2025-05-31 00:00:00', 'pending', 120000),
(10, 7, '2025-05-31 00:00:00', 'pending', 75000);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 1, 1, 8500000),
(2, 1, 2, 1, 75000),
(3, 2, 2, 1, 75000),
(4, 3, NULL, 1, 120000),
(5, 4, NULL, 1, 25000),
(6, 5, NULL, 1, 50000),
(7, 6, 2, 1, 75000),
(8, 7, 2, 1, 75000),
(9, 8, 2, 1, 75000),
(10, 9, NULL, 1, 120000),
(11, 10, 2, 1, 75000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `image`, `created_at`) VALUES
(1, 1, 'Laptop ASUS', 'Laptop gaming murah', 8500000, 'laptop.jpg', '2025-05-30 23:36:20'),
(2, 2, 'Kaos Polos', 'Kaos katun premium', 75000, 'kaos.jpg', '2025-05-30 23:36:20'),
(13, 7, 'es jeruk', 'kecut\r\n', 2000, '1748682261_esjeruk.jpg', '2025-05-31 09:03:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `created_at`, `email`) VALUES
(1, 'admin1', '$2y$10$akkgFKRVa4C23flfCBItZO7WbIiSMxM.pT6E/YjGu1XeQG7tusFl6', 'Admin Satu', '2025-05-30 23:35:17', 'admin1@gmail.com'),
(3, 'admin3', '', 'Admin Tiga', '2025-05-30 23:35:17', 'admin3@gmail.com'),
(4, 'admin4', '', 'Admin Empat', '2025-05-30 23:35:17', 'admin4@gmail.com'),
(5, 'admin5', '', 'Admin Lima', '2025-05-30 23:35:17', 'admin5@gmail.com'),
(6, '', '$2y$10$UduSJfGuU09dx9aaunypt.bjoFogiw8TGL46qL2ZVHoTIrHTaJE4e', 'aa', '2025-05-31 05:43:56', 'a@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
