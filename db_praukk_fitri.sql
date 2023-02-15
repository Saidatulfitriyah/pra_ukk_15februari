-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 08:52 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_praukk_fitri`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dvd1`
--

CREATE TABLE `tb_dvd1` (
  `id_dvd` int(10) NOT NULL,
  `genre_film` varchar(30) NOT NULL,
  `judul_film` varchar(50) NOT NULL,
  `tahun_film` int(4) NOT NULL,
  `tanggal_sewa` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dvd1`
--

INSERT INTO `tb_dvd1` (`id_dvd`, `genre_film`, `judul_film`, `tahun_film`, `tanggal_sewa`, `tanggal_kembali`, `harga`) VALUES
(1, 'ntahh', 'mbohh', 2021, '2023-02-07', '2023-02-28', 1499999),
(2, 'sedih', 'terlihat biasa aja', 2021, '2023-02-08', '2023-02-14', 3457600),
(3, 'sedih', 'terlihat biasa aja', 2021, '2023-02-08', '2023-02-14', 3457600),
(4, 'gf', 'tgfdh', 1234, '2023-02-08', '2023-02-08', 23452453),
(6, 'horor', 'setan', 2019, '2023-01-31', '2023-03-03', 300000),
(7, 'sedih', 'pura-pura bahagia', 2023, '2023-01-29', '2023-02-21', 2000000),
(8, 'seram', 'hantu', 2018, '2023-02-22', '2023-03-02', 35000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyewa1`
--

CREATE TABLE `tb_penyewa1` (
  `id_penyewa` int(10) NOT NULL,
  `nama_penyewa` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_dvd` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penyewa1`
--

INSERT INTO `tb_penyewa1` (`id_penyewa`, `nama_penyewa`, `alamat`, `id_dvd`) VALUES
(1, 'sayaa', 'demakk', 1),
(6, 'saya', ' demak', 6),
(7, 'dia', ' sayung', 7),
(8, 'mereka', ' solo', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dvd1`
--
ALTER TABLE `tb_dvd1`
  ADD PRIMARY KEY (`id_dvd`);

--
-- Indexes for table `tb_penyewa1`
--
ALTER TABLE `tb_penyewa1`
  ADD PRIMARY KEY (`id_penyewa`),
  ADD KEY `id_dvd` (`id_dvd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dvd1`
--
ALTER TABLE `tb_dvd1`
  MODIFY `id_dvd` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_penyewa1`
--
ALTER TABLE `tb_penyewa1`
  MODIFY `id_penyewa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_penyewa1`
--
ALTER TABLE `tb_penyewa1`
  ADD CONSTRAINT `tb_penyewa1_ibfk_1` FOREIGN KEY (`id_dvd`) REFERENCES `tb_dvd1` (`id_dvd`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
