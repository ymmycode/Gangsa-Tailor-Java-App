-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2020 at 04:50 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gangsatailor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'rizki', '123'),
(2, 'ymmy', '170998');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `nopesan` int(11) NOT NULL,
  `tanggal` varchar(30) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jenis` varchar(30) DEFAULT NULL,
  `ukuran` varchar(30) DEFAULT NULL,
  `kuantitas` varchar(30) DEFAULT NULL,
  `stat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`nopesan`, `tanggal`, `nama`, `jenis`, `ukuran`, `kuantitas`, `stat`) VALUES
(1, '13 Aug 2020', 'haikal', 'Celana Panjang', 'L', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outcome`
--

CREATE TABLE `outcome` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(30) DEFAULT NULL,
  `keterangan` varchar(30) DEFAULT NULL,
  `jumlah` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outcome`
--

INSERT INTO `outcome` (`id`, `tanggal`, `keterangan`, `jumlah`) VALUES
(1, '13 Aug 2020', 'Beli bahan batik', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `paycustomer`
--

CREATE TABLE `paycustomer` (
  `id` int(11) NOT NULL,
  `idPesanan` int(11) NOT NULL,
  `pembayaran` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paycustomer`
--

INSERT INTO `paycustomer` (`id`, `idPesanan`, `pembayaran`) VALUES
(1, 1, '240000');

-- --------------------------------------------------------

--
-- Table structure for table `paytailor`
--

CREATE TABLE `paytailor` (
  `id` int(11) NOT NULL,
  `idPesanan` int(11) NOT NULL,
  `pembayaran` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paytailor`
--

INSERT INTO `paytailor` (`id`, `idPesanan`, `pembayaran`) VALUES
(1, 1, '200000'),
(2, 2, '360000'),
(3, 3, '150000'),
(4, 4, '400000'),
(5, 6, '360000');

-- --------------------------------------------------------

--
-- Table structure for table `payvermak`
--

CREATE TABLE `payvermak` (
  `id` int(11) NOT NULL,
  `idPesanan` int(11) NOT NULL,
  `pembayaran` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payvermak`
--

INSERT INTO `payvermak` (`id`, `idPesanan`, `pembayaran`) VALUES
(1, 1, '90000');

-- --------------------------------------------------------

--
-- Table structure for table `tailor`
--

CREATE TABLE `tailor` (
  `nopesan` int(11) NOT NULL,
  `tanggal` varchar(30) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jenis` varchar(30) DEFAULT NULL,
  `ukuran` varchar(30) DEFAULT NULL,
  `kuantitas` varchar(30) DEFAULT NULL,
  `stat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tailor`
--

INSERT INTO `tailor` (`nopesan`, `tanggal`, `nama`, `jenis`, `ukuran`, `kuantitas`, `stat`) VALUES
(1, '13 Aug 2020', 'fauzi', 'Kemeja', 'XL', '2', 'DP'),
(2, '13 Aug 2020', 'achmat', 'Celana Panjang', 'XL', '3', NULL),
(3, '13 Aug 2020', 'andi', 'Kebaya', 'L', '1', 'Lunas'),
(4, '13 Aug 2020', 'rizki', 'Kebaya', 'L', '2', NULL),
(6, '13 Aug 2020', 'aditya', 'Celana Panjang', 'XL', '3', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vermak`
--

CREATE TABLE `vermak` (
  `nopesan` int(11) NOT NULL,
  `tanggal` varchar(30) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jenis` varchar(30) DEFAULT NULL,
  `kuantitas` varchar(30) DEFAULT NULL,
  `stat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vermak`
--

INSERT INTO `vermak` (`nopesan`, `tanggal`, `nama`, `jenis`, `kuantitas`, `stat`) VALUES
(1, '13 Aug 2020', 'Afif', 'null', '3', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`nopesan`) USING BTREE;

--
-- Indexes for table `outcome`
--
ALTER TABLE `outcome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paycustomer`
--
ALTER TABLE `paycustomer`
  ADD PRIMARY KEY (`id`,`idPesanan`);

--
-- Indexes for table `paytailor`
--
ALTER TABLE `paytailor`
  ADD PRIMARY KEY (`id`,`idPesanan`);

--
-- Indexes for table `payvermak`
--
ALTER TABLE `payvermak`
  ADD PRIMARY KEY (`id`,`idPesanan`);

--
-- Indexes for table `tailor`
--
ALTER TABLE `tailor`
  ADD PRIMARY KEY (`nopesan`) USING BTREE;

--
-- Indexes for table `vermak`
--
ALTER TABLE `vermak`
  ADD PRIMARY KEY (`nopesan`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `nopesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `outcome`
--
ALTER TABLE `outcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paycustomer`
--
ALTER TABLE `paycustomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paytailor`
--
ALTER TABLE `paytailor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payvermak`
--
ALTER TABLE `payvermak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tailor`
--
ALTER TABLE `tailor`
  MODIFY `nopesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vermak`
--
ALTER TABLE `vermak`
  MODIFY `nopesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
