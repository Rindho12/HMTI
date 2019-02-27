-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2019 at 10:01 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmti`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `nim_anggota` int(8) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `username_auth` varchar(20) NOT NULL,
  `jabatan_anggota` varchar(20) NOT NULL,
  `nama_anggota` varchar(40) NOT NULL,
  `foto_anggota` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `username_auth` varchar(20) NOT NULL,
  `password_auth` varchar(60) NOT NULL,
  `level_auth` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `nama_divisi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id_files` int(11) NOT NULL,
  `nama_files` text NOT NULL,
  `status_files` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kas_iuran`
--

CREATE TABLE `kas_iuran` (
  `id_iuran` int(11) NOT NULL,
  `nim_anggota` int(11) NOT NULL,
  `tgl_iuran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kas_pengaturan`
--

CREATE TABLE `kas_pengaturan` (
  `jumlah_iuran` int(10) NOT NULL,
  `simpanan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kas_pengeluaran`
--

CREATE TABLE `kas_pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `nim_anggota` int(11) NOT NULL,
  `keterangan_pengeluaran` text NOT NULL,
  `jumlah_pengeluaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `nim_anggota` int(11) NOT NULL,
  `judul_konten` varchar(50) NOT NULL,
  `desc_konten` text NOT NULL,
  `tipe_konten` int(11) NOT NULL,
  `gambar_konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nim_anggota`),
  ADD KEY `id_divisi` (`id_divisi`),
  ADD KEY `username_auth` (`username_auth`);

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`username_auth`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_files`);

--
-- Indexes for table `kas_iuran`
--
ALTER TABLE `kas_iuran`
  ADD PRIMARY KEY (`id_iuran`),
  ADD KEY `nim_anggota` (`nim_anggota`);

--
-- Indexes for table `kas_pengeluaran`
--
ALTER TABLE `kas_pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `nim_anggota` (`nim_anggota`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`),
  ADD KEY `nim_anggota` (`nim_anggota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id_files` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kas_iuran`
--
ALTER TABLE `kas_iuran`
  MODIFY `id_iuran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kas_pengeluaran`
--
ALTER TABLE `kas_pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`),
  ADD CONSTRAINT `anggota_ibfk_2` FOREIGN KEY (`username_auth`) REFERENCES `auth` (`username_auth`);

--
-- Constraints for table `kas_iuran`
--
ALTER TABLE `kas_iuran`
  ADD CONSTRAINT `kas_iuran_ibfk_1` FOREIGN KEY (`nim_anggota`) REFERENCES `anggota` (`nim_anggota`);

--
-- Constraints for table `kas_pengeluaran`
--
ALTER TABLE `kas_pengeluaran`
  ADD CONSTRAINT `kas_pengeluaran_ibfk_1` FOREIGN KEY (`nim_anggota`) REFERENCES `anggota` (`nim_anggota`);

--
-- Constraints for table `konten`
--
ALTER TABLE `konten`
  ADD CONSTRAINT `konten_ibfk_1` FOREIGN KEY (`nim_anggota`) REFERENCES `anggota` (`nim_anggota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
