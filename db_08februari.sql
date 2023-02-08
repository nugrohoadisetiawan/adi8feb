-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 09:04 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_08februari`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_montor`
--

CREATE TABLE `tb_montor` (
  `id_motor1` int(11) NOT NULL,
  `nomor_rangka` int(11) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `jenis_montor` varchar(20) NOT NULL,
  `tahun_montor` int(6) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_montor`
--

INSERT INTO `tb_montor` (`id_motor1`, `nomor_rangka`, `merek`, `jenis_montor`, `tahun_montor`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(2, 345621, 'supra x125', 'honda', 2020, '2023-03-09', '2023-03-23'),
(3, 345621, 'supra x125', 'honda', 2020, '2023-03-09', '2023-03-23'),
(4, 76543, 'astrea', 'honda', 20216, '2023-02-09', '2023-02-27'),
(5, 345621, 'R1 1000', 'honda', 2020, '2023-03-09', '2023-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjam`
--

CREATE TABLE `tb_peminjam` (
  `id_peminjam` int(10) NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `umur` int(10) NOT NULL,
  `keperluan` varchar(20) NOT NULL,
  `jaminan` varchar(20) NOT NULL,
  `id_motor1` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `nama_peminjam`, `alamat`, `umur`, `keperluan`, `jaminan`, `id_motor1`) VALUES
(2, 'tegar', 'bates', 18, 'pinjam', 'akte', 3),
(3, 'wahyuyuyu', 'karangsemprul', 18, 'meminjamtai', 'keluargaku', 4),
(4, 'iqbal', 'tjyrj', 674, 'rtjrt', 'ytetyjrt', 4),
(5, 'bayu', 'trimulyo', 18, 'meminjamtai', 'keluargaku', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_montor`
--
ALTER TABLE `tb_montor`
  ADD PRIMARY KEY (`id_motor1`);

--
-- Indexes for table `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  ADD PRIMARY KEY (`id_peminjam`),
  ADD KEY `montor_tb` (`id_motor1`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_montor`
--
ALTER TABLE `tb_montor`
  MODIFY `id_motor1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  MODIFY `id_peminjam` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  ADD CONSTRAINT `montor_tb` FOREIGN KEY (`id_motor1`) REFERENCES `tb_montor` (`id_motor1`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
