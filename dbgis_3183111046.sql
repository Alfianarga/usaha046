-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 09, 2021 at 02:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbgis_3183111046`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tbadmin_3183111046` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tbadmin_3183111046` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Alfian', 'Alfian77', '522747c269f671321621147a27a1828f');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tbberita_3183111046` (
  `id_berita` varchar(15) NOT NULL,
  `judul_berita` varchar(500) NOT NULL,
  `user_berita` varchar(100) NOT NULL,
  `tanggal_berita` date NOT NULL,
  `isi_berita` text NOT NULL,
  `foto_berita` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tbberita_3183111046` (`id_berita`, `judul_berita`, `user_berita`, `tanggal_berita`, `isi_berita`, `foto_berita`) VALUES
('1', 'Gatau', 'Gatau', '2021-01-02', '<p>gatau</p>\r\n', '1085421594_uty.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tbkaryawan_3183111046` (
  `nik` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `hp` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tbkaryawan_3183111046` (`nik`, `nama`, `hp`, `email`, `alamat`) VALUES
(1, 'Alfian', '089997654321', 'alfian@gmail.com', 'Jakarta'),
(2, 'Arga', '087777779', 'arga@gmail.com', 'Yogyakarta'),
(3, 'Budiyanto', '08777777911', 'budiyanto@gmail', 'bandung');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tbkategori_3183111046` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tbkategori_3183111046` (`id_kategori`, `nama_kategori`) VALUES
(1, 'UMKM Kuliner'),
(2, 'UMKM Digital'),
(3, 'UMKM Agrobisnis');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profil`
--

CREATE TABLE `tbprofil_3183111046` (
  `id_profil` int(11) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `profil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profil`
--

INSERT INTO `tbprofil_3183111046` (`id_profil`, `foto`, `profil`) VALUES
(1, '3183111046.jpg', '<p>Rasanya seperti ingin menjadi irunmen</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisata`
--

CREATE TABLE `tbumkm_3183111046` (
  `id_umkm` varchar(11) NOT NULL,
  `nama_umkm` varchar(155) NOT NULL,
  `kategori_umkm` varchar(20) NOT NULL,
  `lokasi_umkm` varchar(200) NOT NULL,
  `latitude` varchar(500) NOT NULL,
  `longitude` varchar(500) NOT NULL,
  `foto_umkm` varchar(150) NOT NULL,
  `deskripsi_umkm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_wisata`
--

INSERT INTO `tbumkm_3183111046` (`id_umkm`, `nama_umkm`, `kategori_umkm`, `lokasi_umkm`, `latitude`, `longitude`, `foto_umkm`, `deskripsi_umkm`) VALUES
('UMKM01', 'Bubur Ayam', '1', 'Yogyakarta', '-7.80558', '110.39688', 'Gembira-Loka-Zoo.jpg', '<p>Rasanya Mantap</p>\r\n'),
('UMKM02', 'Desain Website', '2', 'Bantul', '-8.02699', '110.33512', 'parangtritis.jpeg', '<p>Tampilan dijamin keren</p>\r\n'),
('UMKM03', 'Paha Domba Organik', '3', 'Yogyakarta', '-7.80995', '110.35887', 'tamansari.jpeg', '<p>Pokoknya enak</p>\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tbadmin_3183111046`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tbberita_3183111046`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tbkaryawan_3183111046`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tbkategori_3183111046`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_profil`
--
ALTER TABLE `tbprofil_3183111046`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `tb_wisata`
--
ALTER TABLE `tbumkm_3183111046`
  ADD PRIMARY KEY (`id_umkm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tbadmin_3183111046`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tbkaryawan_3183111046`
  MODIFY `nik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tbkategori_3183111046`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_profil`
--
ALTER TABLE `tbprofil_3183111046`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
