-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2017 at 03:51 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_customer`
--

CREATE TABLE IF NOT EXISTS `daftar_customer` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `id_type` varchar(255) NOT NULL,
  `no_id` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_customer`
--

INSERT INTO `daftar_customer` (`id`, `nama`, `alamat`, `id_type`, `no_id`, `no_hp`, `umur`, `created_at`, `updated_at`) VALUES
(1, 'Test123', 'Jalan test 1', 'KTP', '1234567', '123456', 21, '2017-07-11 17:21:39', '2017-07-11 17:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_kendaraan`
--

CREATE TABLE IF NOT EXISTS `daftar_kendaraan` (
  `id` int(11) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `harga_per_hari` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_kendaraan`
--

INSERT INTO `daftar_kendaraan` (`id`, `merk`, `jenis`, `harga_per_hari`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', 'Calya', 500000, '2017-07-11 13:02:18', '2017-07-11 13:23:21'),
(2, 'Toyota', 'Avanza', 550000, '2017-07-11 13:23:36', '2017-07-11 13:23:36'),
(4, 'Toyota', 'Yaris', 750000, '2017-07-11 13:37:04', '2017-07-11 13:37:04'),
(5, 'Toyota', 'Alphard', 2500000, '2017-07-11 13:37:17', '2017-07-11 13:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_rental`
--

CREATE TABLE IF NOT EXISTS `daftar_rental` (
  `id` int(11) NOT NULL,
  `id_kendaraan` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `tanggal_sewa` date NOT NULL,
  `total_hari_sewa` int(11) NOT NULL,
  `status_sewa` varchar(255) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_rental`
--

INSERT INTO `daftar_rental` (`id`, `id_kendaraan`, `id_customer`, `tanggal_sewa`, `total_hari_sewa`, `status_sewa`, `total_harga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-07-13', 3, 'Sedang Berjalan', 1500000, '2017-07-13 09:08:47', '2017-07-13 09:08:47'),
(2, 2, 1, '2017-07-13', 10, 'Sedang Berjalan', 5500000, '2017-07-13 09:23:20', '2017-07-13 09:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2017-07-10 14:24:55', '2017-07-10 14:24:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_customer`
--
ALTER TABLE `daftar_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_kendaraan`
--
ALTER TABLE `daftar_kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_rental`
--
ALTER TABLE `daftar_rental`
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
-- AUTO_INCREMENT for table `daftar_customer`
--
ALTER TABLE `daftar_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `daftar_kendaraan`
--
ALTER TABLE `daftar_kendaraan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `daftar_rental`
--
ALTER TABLE `daftar_rental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
