-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2020 at 04:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni10`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`, `foto`) VALUES
(1, 'Oji', 'admin@admin.com', '81dc9bdb52d04dc20036dbd8313ed055', 'profile1.png');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `tahun_lulus` int(11) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_ijazah` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `nisn`, `nama`, `jk`, `tahun_lulus`, `no_telp`, `alamat`, `email`, `no_ijazah`, `pekerjaan`, `deskripsi`, `foto`) VALUES
(1, 1217425, 'Fozimat Amhas', 'laki-laki', 2013, '082124971970', 'Jalan Ahmad Yani', 'fozimata@gmail.com', 'Dn.2032-Mk.32323', 'Mahasiswa', 'S2', '1217425.jpg'),
(6, 123214, 'Dodi', 'laki-laki', 2015, '08424235435', 'Jalan Tiga Naga', 'dodi@gmail.com', 'Mkjdsajdj 432q4', 'Sales', '', '123214.jpg'),
(8, 42342434, 'Renata Sastro', 'laki-laki', 2015, '082342324234', 'Jalan Durian', 'rena@gmail.com', 'Mk.Dn-2032932', 'Mahasiswa', 'Cek', '42342434.jpg'),
(9, 2343424, 'Adinda', 'perempuan', 2013, '0832323232', 'Jalan Markisa', 'adinda@gmail.com', 'Mk.Dn..19434', 'Marketing', '', '2343424.jpg'),
(10, 3232323, 'Rini', 'laki-laki', 2015, '08423424842', 'Jalan Anggrek', 'ddsad@gmail.com', 'KJSDkjfds42', 'Bos ', 'pw', '3232323.jpg'),
(14, 32323236, 'Putri Novita', 'perempuan', 2008, '64353', 'Jalan Titipapan', 'putnov@gmail.com', 'Dn MK.23242', 'Marketing HRD', 'd3d2d1', '32323236.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `nama_event` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `waktu_mulai` varchar(255) NOT NULL,
  `waktu_berakhir` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `nama_event`, `tanggal`, `lokasi`, `waktu_mulai`, `waktu_berakhir`, `deskripsi`) VALUES
(1, 'Reunian', '2020-03-31', 'Hotel Comfort, Tanjngpinang', '16.00', '20.00', 'Dresscode Bebas');

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `jabatan` varchar(225) NOT NULL,
  `tanggal_posting` date NOT NULL,
  `tanggal_berakhir` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `deskripsi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id`, `nama_perusahaan`, `jabatan`, `tanggal_posting`, `tanggal_berakhir`, `status`, `deskripsi`) VALUES
(1, 'PT Maju Terus', 'Programmer', '2020-01-25', '2020-02-20', 'Tersedia', 'Minimal SLTA');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `jam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `nama`, `email`, `pesan`, `jam`, `status`) VALUES
(1, 'Deris', 'deris@gmail.com', 'Halo halo', '2020-03-27 14:12:03', 1),
(2, 'Fozimat Amhas', 'admin@admin.com', 'Hai apa kabar', '2020-03-27 15:06:32', 0),
(3, 'Rena Safitri', 'Nova27stti@gmail.com', 'Tes', '2020-03-27 15:08:56', 0),
(4, 'Melisa Sinaga', 'oji@gmail.com', 'fasfa', '2020-03-27 15:09:17', 0),
(5, 'Ari Majesari', 'dedexdewa@gmail.com', 'Jix', '2020-03-27 15:28:26', 0),
(6, 'Rena Safitri', 'oji@gmail.com', 'hhss', '2020-03-27 15:31:13', 0),
(7, 'Maya', 'may@gmail.com', 'may', '2020-03-27 15:32:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_alumni`
--

CREATE TABLE `tabel_alumni` (
  `id` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `tahun_lulus` int(11) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tgl_daftar` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_alumni`
--

INSERT INTO `tabel_alumni` (`id`, `nisn`, `nama`, `jk`, `tahun_masuk`, `tahun_lulus`, `no_telp`, `alamat`, `email`, `tgl_lahir`, `tempat_lahir`, `pekerjaan`, `foto`, `tgl_daftar`, `status`) VALUES
(1, 1217425, 'Fozimat Amhas', 'Pria', 2011, 2014, '082124971970', 'Jalan Kuantan', 'fozimatamhas23@gmail.com', '2020-03-02', 'Aceh', 'Programmer', '1217425.jpg', 0, 1),
(2, 1217429, 'Rena Safitri', 'Wanita', 2011, 2014, '083214353433', 'Jalan Apel', 'rena@gmail.co.id', '2020-03-05', 'Medan', 'Ibu Rumah Tangga', '', 0, 1),
(3, 1218923, 'Melisa Sinaga', 'Wanita', 2015, 2018, '082312321234', 'Jalan Hang Tuah', 'malisanaga@yahoo.com', '2020-03-10', 'Sibolga', 'Kuasa Hukum', '', 0, 1),
(4, 1218234, 'Rena Safitri', 'Wanita', 2, 3, '082124971970', 'Jalan Nangka', 'ren3a@gmail.co.id', '2020-03-17', 'Medan', 'Programmer', '', 0, 1),
(6, 1218924, 'Ari Majesari', 'Pria', 2, 2, '082124971970', 'Jalan Hang Tuah', 'renrra@gmail.co.id', '2020-03-11', 'Medan', 'Programmer', 'default.jpg', 0, 1),
(12, 12148924, 'Jeha Uwais', 'Wanita', 2012, 2015, '082124971970', 'Jalan Kuantan', 'jeha@gmail.com', '2000-02-02', 'Bintan', 'Programmer', '', 1584866380, 0),
(15, 123, 'Deden', 'Pria', 2011, 2014, '082323243543', 'Jalan Titipapan', 'deden5markondang@gmail.com', '2000-03-12', 'Medan ', 'Penyanyi Kafe', '123.PNG', 1584954583, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nisn` (`nisn`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_alumni`
--
ALTER TABLE `tabel_alumni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tabel_alumni`
--
ALTER TABLE `tabel_alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
