-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 09:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_moora`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_alternatif`
--

CREATE TABLE `data_alternatif` (
  `no` int(11) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `kelas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_alternatif`
--

INSERT INTO `data_alternatif` (`no`, `judul_buku`, `kelas`) VALUES
(1, 'Matematika', 'VII'),
(2, 'Matematika', 'VIII'),
(3, 'Matematika', 'IX'),
(4, 'Pendidikan Agama Kristen', 'VII'),
(5, 'Pendidikan Agama Kristen', 'VIII'),
(6, 'Pendidikan Agama Kristen', 'IX'),
(7, 'Ilmu Pengetahuan Alam', 'VII'),
(8, 'Ilmu Pengetahuan Alam', 'VIII'),
(9, 'Ilmu Pengetahuan Alam', 'IX'),
(10, 'Ilmu Pengetahuan Sosial', 'VII'),
(11, 'Ilmu Pengetahuan Sosial', 'VIII'),
(12, 'Ilmu Pengetahuan Sosial', 'IX'),
(13, 'Bahasa Indonesia', 'VII'),
(14, 'Bahasa Indonesia', 'VIII'),
(15, 'Bahasa Indonesia', 'IX'),
(16, 'Bahasa Inggris', 'VII'),
(17, 'Bahasa Inggris', 'VIII'),
(18, 'Bahasa Inggris', 'IX'),
(19, 'Pendidikan Kewarganegaraan', 'VII'),
(20, 'Pendidikan Kewarganegaraan', 'VIII'),
(21, 'Pendidikan Kewarganegaraan', 'IX'),
(22, 'Seni Budaya', 'VII'),
(23, 'Seni Budaya', 'VIII'),
(24, 'Seni Budaya', 'IX'),
(25, 'Prakarya', 'VII'),
(26, 'Prakarya', 'VIII'),
(27, 'Prakarya', 'IX'),
(28, 'Pendidikan Jasmani Olahraga Kesehatan', 'VII'),
(29, 'Pendidikan Jasmani Olahraga Kesehatan', 'VIII'),
(30, 'Pendidikan Jasmani Olahraga Kesehatan', 'IX');

-- --------------------------------------------------------

--
-- Table structure for table `data_buku`
--

CREATE TABLE `data_buku` (
  `no` int(11) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `peminjaman` int(11) NOT NULL,
  `tahun_terbit` int(11) NOT NULL,
  `harga_buku` double NOT NULL,
  `stok_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_buku`
--

INSERT INTO `data_buku` (`no`, `judul_buku`, `kelas`, `peminjaman`, `tahun_terbit`, `harga_buku`, `stok_buku`) VALUES
(1, 'Matematika', 'VII', 498, 2016, 55000, 10),
(2, 'Matematika', 'VIII', 294, 2017, 60000, 11),
(3, 'Matematika', 'IX', 233, 2018, 64000, 13),
(4, 'Pendidikan Agama Kristen', 'VII', 85, 2016, 53000, 15),
(5, 'Pendidikan Agama Kristen', 'VIII', 180, 2016, 55000, 10),
(6, 'Pendidikan Agama Kristen', 'IX', 109, 2016, 60000, 12),
(7, 'Ilmu Pengetahuan Alam', 'VII', 280, 2014, 50000, 10),
(8, 'Ilmu Pengetahuan Alam', 'VIII', 303, 2014, 53000, 10),
(9, 'Ilmu Pengetahuan Alam', 'IX', 263, 2018, 56000, 10),
(10, 'Ilmu Pengetahuan Sosial', 'VII', 25, 2016, 55000, 15),
(11, 'Ilmu Pengetahuan Sosial', 'VIII', 22, 2017, 60000, 16),
(12, 'Ilmu Pengetahuan Sosial', 'IX', 20, 2015, 63000, 15),
(13, 'Bahasa Indonesia', 'VII', 460, 2014, 50000, 10),
(14, 'Bahasa Indonesia', 'VIII', 327, 2014, 53000, 11),
(15, 'Bahasa Indonesia', 'IX', 237, 2018, 55000, 13),
(16, 'Bahasa Inggris', 'VII', 153, 2014, 50000, 10),
(17, 'Bahasa Inggris', 'VIII', 355, 2014, 53000, 10),
(18, 'Bahasa Inggris', 'IX', 102, 2014, 55000, 11),
(19, 'Pendidikan Kewarganegaraan', 'VII', 26, 2014, 60000, 15),
(20, 'Pendidikan Kewarganegaraan', 'VIII', 18, 2017, 65000, 20),
(21, 'Pendidikan Kewarganegaraan', 'IX', 26, 2018, 70000, 20),
(22, 'Seni Budaya', 'VII', 80, 2014, 50000, 15),
(23, 'Seni Budaya', 'VIII', 175, 2017, 53000, 10),
(24, 'Seni Budaya', 'IX', 65, 2018, 58000, 17),
(25, 'Prakarya', 'VII', 184, 2016, 53000, 10),
(26, 'Prakarya', 'VIII', 53, 2014, 58000, 15),
(27, 'Prakarya', 'IX', 83, 2018, 60000, 18),
(28, 'Pendidikan Jasmani Olahraga Kesehatan', 'VII', 16, 2016, 53000, 20),
(29, 'Pendidikan Jasmani Olahraga Kesehatan', 'VIII', 14, 2014, 63000, 20),
(30, 'Pendidikan Jasmani Olahraga Kesehatan', 'IX', 18, 2014, 65000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `data_kriteria`
--

CREATE TABLE `data_kriteria` (
  `kode_kriteria` varchar(11) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `bobot` double NOT NULL,
  `jenis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kriteria`
--

INSERT INTO `data_kriteria` (`kode_kriteria`, `nama_kriteria`, `bobot`, `jenis`) VALUES
('C1', 'peminjaman', 0.3, 'benefit'),
('C2', 'tahun terbit', 0.2, 'benefit'),
('C3', 'harga buku', 0.2, 'cost'),
('C4', 'stok buku', 0.3, 'cost');

-- --------------------------------------------------------

--
-- Table structure for table `data_subkriteria`
--

CREATE TABLE `data_subkriteria` (
  `no` int(11) NOT NULL,
  `nama_kriteria` varchar(14) NOT NULL,
  `subkriteria` varchar(15) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_subkriteria`
--

INSERT INTO `data_subkriteria` (`no`, `nama_kriteria`, `subkriteria`, `nilai`) VALUES
(1, 'Peminjaman', '>450', 5),
(2, 'Peminjaman', '350-450', 4),
(3, 'Peminjaman', '250-350', 3),
(4, 'Peminjaman', '150-250', 2),
(5, 'Peminjaman', '0-150', 1),
(6, 'Tahun Terbit', '>2017', 5),
(7, 'Tahun Terbit', '2015-2017', 4),
(8, 'Tahun Terbit', '2012-2015', 3),
(9, 'Tahun Terbit', '2010-2012', 2),
(10, 'Tahun Terbit', '0-2010', 1),
(11, 'Harga Buku', '0-50.000', 5),
(12, 'Harga Buku', '50.000-70.000', 4),
(13, 'Harga Buku', '70.000-90.000', 3),
(14, 'Harga Buku', '90.000-110.000', 2),
(15, 'Harga Buku', '>110.000', 1),
(16, 'Stok Buku', '0-15', 5),
(17, 'Stok Buku', '15-20', 4),
(18, 'Stok Buku', '20-25', 3),
(19, 'Stok Buku', '25-30', 2),
(20, 'Stok Buku', '>30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('smpkristen', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_bobot_alternatif`
--

CREATE TABLE `penilaian_bobot_alternatif` (
  `no` int(11) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `c1` int(13) NOT NULL,
  `c2` int(14) NOT NULL,
  `c3` int(16) NOT NULL,
  `c4` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penilaian_bobot_alternatif`
--

INSERT INTO `penilaian_bobot_alternatif` (`no`, `judul_buku`, `kelas`, `c1`, `c2`, `c3`, `c4`) VALUES
(1, 'Matematika', 'VII', 5, 4, 4, 5),
(2, 'Matematika', 'VIII', 3, 4, 4, 5),
(3, 'Matematika', 'IX', 3, 5, 4, 5),
(4, 'Pendidikan Agama Kristen', 'VII', 1, 4, 4, 5),
(5, 'Pendidikan Agama Kristen', 'VIII', 2, 4, 4, 5),
(6, 'Pendidikan Agama Kristen', 'IX', 1, 4, 4, 5),
(7, 'Ilmu Pengetahuan Alam', 'VII', 3, 3, 5, 5),
(8, 'Ilmu Pengetahuan Alam', 'VIII', 3, 3, 4, 5),
(9, 'Ilmu Pengetahuan Alam', 'IX', 3, 5, 4, 5),
(10, 'Ilmu Pengetahuan Sosial', 'VII', 1, 4, 4, 5),
(11, 'Ilmu Pengetahuan Sosial', 'VIII', 1, 4, 4, 4),
(12, 'Ilmu Pengetahuan Sosial', 'IX', 1, 4, 4, 5),
(13, 'Bahasa Indonesia', 'VII', 5, 3, 5, 5),
(14, 'Bahasa Indonesia', 'VIII', 4, 3, 4, 5),
(15, 'Bahasa Indonesia', 'IX', 3, 5, 4, 5),
(16, 'Bahasa Inggris', 'VII', 2, 3, 5, 5),
(17, 'Bahasa Inggris', 'VIII', 4, 3, 4, 5),
(18, 'Bahasa Inggris', 'IX', 1, 3, 4, 5),
(19, 'Pendidikan Kewarganegaraan', 'VII', 1, 3, 4, 5),
(20, 'Pendidikan Kewarganegaraan', 'VIII', 1, 4, 4, 4),
(21, 'Pendidikan Kewarganegaraan', 'IX', 1, 5, 4, 4),
(22, 'Seni Budaya', 'VII', 1, 3, 5, 5),
(23, 'Seni Budaya', 'VIII', 2, 4, 4, 5),
(24, 'Seni Budaya', 'IX', 1, 5, 4, 4),
(25, 'Prakarya', 'VII', 2, 4, 4, 5),
(26, 'Prakarya', 'VIII', 1, 3, 4, 5),
(27, 'Prakarya', 'IX', 1, 5, 4, 4),
(28, 'Pendidikan Jasmani Olahraga Kesehatan', 'VII', 1, 4, 4, 4),
(29, 'Pendidikan Jasmani Olahraga Kesehatan', 'VIII', 1, 3, 4, 4),
(30, 'Pendidikan Jasmani Olahraga Kesehatan', 'IX', 1, 3, 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_alternatif`
--
ALTER TABLE `data_alternatif`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `data_kriteria`
--
ALTER TABLE `data_kriteria`
  ADD PRIMARY KEY (`kode_kriteria`);

--
-- Indexes for table `data_subkriteria`
--
ALTER TABLE `data_subkriteria`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `penilaian_bobot_alternatif`
--
ALTER TABLE `penilaian_bobot_alternatif`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_alternatif`
--
ALTER TABLE `data_alternatif`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `data_buku`
--
ALTER TABLE `data_buku`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `data_subkriteria`
--
ALTER TABLE `data_subkriteria`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `penilaian_bobot_alternatif`
--
ALTER TABLE `penilaian_bobot_alternatif`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
