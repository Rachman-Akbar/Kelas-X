-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2025 at 02:19 PM
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
-- Database: `dbrestauran`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblkategori`
--

CREATE TABLE `tblkategori` (
  `idkategori` int(11) NOT NULL,
  `kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblkategori`
--

INSERT INTO `tblkategori` (`idkategori`, `kategori`) VALUES
(5, 'Jajan'),
(7, 'Makanan'),
(12, 'Gorengan '),
(15, 'Minuman'),
(16, 'Dessert'),
(17, 'Minuman'),
(18, 'Milo');

-- --------------------------------------------------------

--
-- Table structure for table `tblmenu`
--

CREATE TABLE `tblmenu` (
  `idmenu` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblmenu`
--

INSERT INTO `tblmenu` (`idmenu`, `idkategori`, `menu`, `gambar`, `harga`) VALUES
(0, 15, 'Es doger', 'esdoger.jpg', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `idorder` int(11) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `tglorder` date NOT NULL,
  `total` float NOT NULL DEFAULT 0,
  `bayar` float NOT NULL DEFAULT 0,
  `kembali` float NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`idorder`, `idpelanggan`, `tglorder`, `total`, `bayar`, `kembali`, `status`) VALUES
(1, 2, '2025-05-28', 60000, 0, 0, 0),
(2, 2, '2025-05-28', 60000, 0, 0, 0),
(3, 2, '2025-05-28', 60000, 0, 0, 0),
(4, 2, '2025-05-28', 60000, 0, 0, 0),
(5, 2, '2025-05-28', 60000, 0, 0, 0),
(6, 2, '2025-05-28', 20000, 0, 0, 0),
(7, 2, '2025-05-28', 100000, 0, 0, 0),
(8, 2, '2025-05-28', 20000, 0, 0, 0),
(9, 2, '2025-05-28', 20000, 0, 0, 0),
(10, 2, '2025-05-28', 40000, 0, 0, 0),
(11, 2, '2025-05-28', 20000, 0, 0, 0),
(12, 2, '2025-05-28', 20000, 0, 0, 0),
(13, 2, '2025-05-28', 20000, 0, 0, 0),
(14, 2, '2025-05-28', 20000, 0, 0, 0),
(15, 2, '2025-05-28', 20000, 0, 0, 0),
(16, 2, '2025-05-28', 20000, 0, 0, 0),
(17, 2, '2025-05-28', 20000, 0, 0, 0),
(18, 2, '2025-05-28', 20000, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderdetail`
--

CREATE TABLE `tblorderdetail` (
  `idorderdetail` int(11) NOT NULL,
  `idorder` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorderdetail`
--

INSERT INTO `tblorderdetail` (`idorderdetail`, `idorder`, `idmenu`, `jumlah`, `harga`) VALUES
(7, 1, 0, 3, 20000),
(8, 2, 0, 3, 20000),
(9, 3, 0, 3, 20000),
(10, 4, 0, 3, 20000),
(11, 5, 0, 3, 20000),
(12, 6, 0, 1, 20000),
(13, 7, 0, 5, 20000),
(14, 10, 0, 2, 20000),
(15, 11, 0, 1, 20000),
(16, 12, 0, 1, 20000),
(17, 13, 0, 1, 20000),
(18, 14, 0, 1, 20000),
(19, 15, 0, 1, 20000),
(20, 16, 0, 1, 20000),
(21, 17, 0, 1, 20000),
(22, 18, 0, 1, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `tblpelanggan`
--

CREATE TABLE `tblpelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `pelanggan` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telp` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `aktif` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpelanggan`
--

INSERT INTO `tblpelanggan` (`idpelanggan`, `pelanggan`, `alamat`, `telp`, `email`, `password`, `aktif`) VALUES
(1, 'Budi Heru', '', '', 'budi@gmail.com', '1234', 1),
(2, 'siti', '', '', 'siti@gmail.com', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `iduser` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(50) NOT NULL,
  `aktif` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`iduser`, `user`, `email`, `password`, `level`, `aktif`) VALUES
(1, 'yy', 'yyy@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'admin', 1),
(2, 'kasir', 'kasir@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'kasir', 1),
(3, 'koki', 'koki@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'koki', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vorder`
--

CREATE TABLE `vorder` (
  `idorder` int(11) DEFAULT NULL,
  `idpelanggan` int(11) DEFAULT NULL,
  `tglorder` date DEFAULT NULL,
  `total` float DEFAULT NULL,
  `bayar` float DEFAULT NULL,
  `kembali` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `pelanggan` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `telp` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vorderdetail`
--

CREATE TABLE `vorderdetail` (
  `idorderdetail` int(11) DEFAULT NULL,
  `idorder` int(11) DEFAULT NULL,
  `tglorder` date DEFAULT NULL,
  `idpelanggan` int(11) DEFAULT NULL,
  `pelanggan` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `telp` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `idmenu` int(11) DEFAULT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `harga` float DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblkategori`
--
ALTER TABLE `tblkategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `tblmenu`
--
ALTER TABLE `tblmenu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`idorder`);

--
-- Indexes for table `tblorderdetail`
--
ALTER TABLE `tblorderdetail`
  ADD PRIMARY KEY (`idorderdetail`);

--
-- Indexes for table `tblpelanggan`
--
ALTER TABLE `tblpelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblkategori`
--
ALTER TABLE `tblkategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `idorder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tblorderdetail`
--
ALTER TABLE `tblorderdetail`
  MODIFY `idorderdetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblpelanggan`
--
ALTER TABLE `tblpelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
