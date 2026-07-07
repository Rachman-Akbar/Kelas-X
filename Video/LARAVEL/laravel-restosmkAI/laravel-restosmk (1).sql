-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2025 at 11:09 AM
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
-- Database: `laravel-restosmk`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `idkategori` int(10) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`idkategori`, `kategori`, `created_at`, `updated_at`) VALUES
(12, 'Minuman', '2025-03-22 20:47:05', '2025-03-22 20:47:05'),
(13, 'Makanan', '2025-03-22 20:47:16', '2025-03-22 20:47:16'),
(14, 'Goreng', '2025-03-22 20:47:24', '2025-04-29 01:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `idmenu` bigint(20) UNSIGNED NOT NULL,
  `idkategori` int(11) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`idmenu`, `idkategori`, `menu`, `gambar`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES
(9, 7, 'Sus', 'logo.jpeg', 'manis', 2000.00, '2025-03-22 20:42:15', '2025-03-22 20:42:15'),
(13, 11, 'Sus enak', 'esjeruk.jpeg', 'Manis', 222.00, '2025-03-22 20:59:35', '2025-03-22 22:06:10'),
(14, 12, 'Es Teh', 'esteh.jpeg', 'Manis', 222.00, '2025-03-22 21:09:09', '2025-03-22 21:09:09'),
(15, 13, 'Bakso', 'bakso.jpeg', 'Manis', 222.00, '2025-03-22 21:10:00', '2025-03-22 21:10:00'),
(16, 12, 'Sus enak', 'Screenshot (2).png', 'es sus', 222.00, '2025-04-29 01:59:35', '2025-04-29 01:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_03_20_094029_create_pelanggans_table', 1),
(6, '2025_03_20_094114_create_orders_table', 1),
(7, '2025_03_20_094134_create_orderdetails_table', 1),
(8, '2025_03_20_094248_create_menus_table', 1),
(9, '2025_03_20_094309_create_kategoris_table', 1),
(10, '2025_03_22_051132_add_level_to_users', 2),
(11, '2025_03_22_051228_add_status_to_orders', 2),
(12, '2025_03_22_051305_add_aktif_to_pelanggans', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `idorderdetail` int(10) UNSIGNED NOT NULL,
  `idorder` varchar(255) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `hargajual` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`idorderdetail`, `idorder`, `idmenu`, `jumlah`, `hargajual`, `created_at`, `updated_at`) VALUES
(5, '20250322030336', 2, 2, 2000.00, '2025-03-21 20:17:36', '2025-03-21 20:17:36'),
(6, '20250322030336', 4, 2, 100.00, '2025-03-21 20:17:36', '2025-03-21 20:17:36'),
(7, '20250322030336', 5, 4, 200.00, '2025-03-21 20:17:36', '2025-03-21 20:17:36'),
(8, '20250323130326', 13, 7, 222.00, '2025-03-23 06:44:26', '2025-03-23 06:44:26'),
(9, '20250323130326', 15, 1, 222.00, '2025-03-23 06:44:26', '2025-03-23 06:44:26'),
(10, '20250323130326', 14, 1, 222.00, '2025-03-23 06:44:26', '2025-03-23 06:44:26'),
(11, '20250417120423', 13, 1, 222.00, '2025-04-17 05:17:23', '2025-04-17 05:17:23'),
(12, '20250417160456', 9, 1, 2000.00, '2025-04-17 09:59:56', '2025-04-17 09:59:56'),
(13, '20250417160456', 14, 1, 222.00, '2025-04-17 09:59:56', '2025-04-17 09:59:56'),
(14, '20250417170425', 13, 1, 222.00, '2025-04-17 10:00:25', '2025-04-17 10:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `idorder` varchar(255) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `tglorder` date NOT NULL,
  `total` double(8,2) NOT NULL,
  `bayar` double(8,2) NOT NULL,
  `kembali` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`idorder`, `idpelanggan`, `tglorder`, `total`, `bayar`, `kembali`, `created_at`, `updated_at`, `status`) VALUES
('20250322030300', 11, '2025-03-22', 16200.00, 0.00, 0.00, '2025-03-21 20:15:00', '2025-03-21 20:15:00', 0),
('20250322030325', 11, '2025-03-22', 16200.00, 0.00, 0.00, '2025-03-21 20:14:25', '2025-03-21 20:14:25', 0),
('20250322030336', 13, '2025-03-22', 5000.00, 50000.00, 45000.00, '2025-03-21 20:17:36', '2025-03-23 01:28:32', 1),
('20250323130326', 13, '2025-03-23', 1998.00, 0.00, 0.00, '2025-03-23 06:44:26', '2025-03-23 06:44:26', 0),
('20250417120423', 13, '2025-04-17', 222.00, 0.00, 0.00, '2025-04-17 05:17:23', '2025-04-17 05:17:23', 0),
('20250417160456', 13, '2025-04-17', 2222.00, 2222.00, 0.00, '2025-04-17 09:59:56', '2025-04-21 07:20:23', 1),
('20250417170425', 13, '2025-04-17', 222.00, 222.00, 0.00, '2025-04-17 10:00:25', '2025-04-29 02:00:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggans`
--

CREATE TABLE `pelanggans` (
  `idpelanggan` bigint(20) UNSIGNED NOT NULL,
  `pelanggan` varchar(255) NOT NULL,
  `jeniskelamin` enum('P','L') NOT NULL DEFAULT 'P',
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggans`
--

INSERT INTO `pelanggans` (`idpelanggan`, `pelanggan`, `jeniskelamin`, `alamat`, `telp`, `email`, `password`, `created_at`, `updated_at`, `aktif`) VALUES
(13, 'siti', 'P', 'Sidoarjo', '123', 'siti@gmail.com', '$2y$10$nayzVCFsMBoJLTriGcW5iOh3/27Faa4yjIxgrROP7iW7d8AdNQ.S2', '2025-03-21 20:16:47', '2025-04-29 01:59:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$.Tz.imqvpanaF01rEM58qux4OvgJZrFkgkMBTRzx8UH64ftEv/oKC', NULL, '2025-03-21 22:30:09', '2025-04-22 15:17:41', 'admin'),
(3, 'manager', 'manager@gmail.com', NULL, '$2y$10$znkY1MW2zg1nnSNHVZW5L.N/jXT2TioqRLTCz6Cc89JCDvgwA3AMG', NULL, '2025-03-21 22:30:09', '2025-03-21 22:30:09', 'manager'),
(12, 'bayu', 'bayu@gmail.com', NULL, '$2y$10$EBT8LycVx/2emLMqxt.0Bue.vZS4vGJYKNPpfsQLUJSX/SIpEPlb2', NULL, '2025-04-21 08:17:56', '2025-04-21 08:17:56', 'kasir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`idorderdetail`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idorder`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `idkategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `idmenu` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `idorderdetail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `idpelanggan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
