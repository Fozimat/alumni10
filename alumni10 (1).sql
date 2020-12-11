-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Agu 2020 pada 16.10
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`, `foto`) VALUES
(1, 'Admin23', 'admin@admin.com', '827ccb0eea8a706c4c34a16891f84e7b', '1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
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
-- Dumping data untuk tabel `alumni`
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
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `nama_event` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `waktu_mulai` varchar(255) NOT NULL,
  `waktu_berakhir` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `nama_event`, `tanggal`, `lokasi`, `waktu_mulai`, `waktu_berakhir`, `deskripsi`, `gambar`) VALUES
(1, 'Reunian212', '2020-03-31', 'Hotel Comfort, Tanjungpinang', '16:00', '20:00', 'Dresscode Bebas', '5eb175d7a3688.PNG'),
(2, 'Cek123', '2020-04-06', 'Batam', '00:00', '13:58', 'hahahahahahah', 'kegiatan.jpg'),
(7, 'Bisnis', '2020-05-07', 'Batam', '01:00', '03:00', 'Siap2 ya', '5eb2b45ad0197.PNG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lowongan`
--

CREATE TABLE `lowongan` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `jabatan` varchar(225) NOT NULL,
  `tanggal_posting` date NOT NULL,
  `tanggal_berakhir` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lowongan`
--

INSERT INTO `lowongan` (`id`, `nama_perusahaan`, `jabatan`, `tanggal_posting`, `tanggal_berakhir`, `status`, `deskripsi`, `gambar`) VALUES
(2, 'CV Saber Indo', 'Accounting Officer', '2020-04-05', '2020-04-09', 'Closed', 'https://drive.google.com/uc?id=10KinGBJ5Z-p5iw1ZHyXADcWCGK1mAneF&export=download', 'pertamina.jpg'),
(3, 'PT.PELNI', 'ABK', '2020-04-08', '2020-04-16', 'Closed', 'S1 Perkapalan', 'pelni.jpg'),
(4, 'CV Poster', 'Direktur', '2020-05-07', '2020-05-22', 'Tersedia', 'Minimal S1', '5eb421752ece5.PNG'),
(5, 'PT Starlight Severine', 'Programmers', '2020-05-12', '2020-06-06', 'Tersedia', 'Fresh Graduate are welcome ^_^', '5eb02bc0b8c08.PNG'),
(6, 'PT Mekasuria', 'Head Officer', '2020-05-07', '2020-05-16', 'Closed', 'Siap grak pak hehe', '5eb2ba408d0be.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
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
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id`, `nama`, `email`, `pesan`, `jam`, `status`) VALUES
(22, 'Fozimat Amhas', 'fozimat@gmail.com', 'Hai', '2020-08-17 13:14:18', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_alumni`
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
  `status` int(2) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_alumni`
--

INSERT INTO `tabel_alumni` (`id`, `nisn`, `nama`, `jk`, `tahun_masuk`, `tahun_lulus`, `no_telp`, `alamat`, `email`, `tgl_lahir`, `tempat_lahir`, `pekerjaan`, `foto`, `tgl_daftar`, `status`, `password`) VALUES
(1, 1217425, 'Fozimat Amhas', 'Pria', 2011, 2014, '082124471972', 'Jalan Ahmad Yani', 'fozimat@gmail.com', '1999-11-30', 'Aceh', 'Programmer', '1217425.JPG', 1594906966, 1, '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 1217429, 'Ucok Sinaga', 'Pria', 2011, 2014, '083214353433', 'Jalan Nanas', 'ucok@gmail.co.id', '2020-03-05', 'Medan', 'Sales', '1217429.jpg', 1594892338, 1, '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 1218923, 'Siti Amelia', 'Wanita', 2014, 2017, '082312321234', 'Jalan Hang Tuah', 'amel@yahoo.com', '1999-01-25', 'Sibolga', 'Kuasa Hukum', '1218923.jpg', 1594895897, 1, 'da0e22de18e3fbe1e96bdc882b912ea4'),
(12, 1214892, 'Bagas Saputra', 'Pria', 2012, 2015, '082124971970', 'Jalan Kuantan', 'bagas@gmail.com', '2000-02-02', 'Bintan', 'Kasir', '1214892.png', 1584866380, 0, '827ccb0eea8a706c4c34a16891f84e7b'),
(13, 3217452, 'Yulita', 'Wanita', 2013, 2016, '081232345435', 'Jalan Rumah', 'litayut@gmail.com', '1999-12-16', 'Karo', 'Desainer', '3217452.png', 1592905966, 0, ''),
(14, 1214567, 'Zahra', 'Wanita', 2011, 2014, '08253632323', 'Jl.Permata', 'zahra@gmail.com', '2000-03-08', 'Jakarta', 'Pramugari', '1214567.jpg', 1594042192, 0, ''),
(15, 3432313, 'Tiara', 'Wanita', 2013, 2017, '08234343234', 'Kebun Nanas', 'tiara@admin.com', '1999-02-17', 'Medan', 'Penyanyi Cafe', '3432313.jpg', 1594824547, 0, ''),
(16, 3432314, 'Citra Dewi', 'Wanita', 2013, 2016, '08526252435', 'Jalan Mengkudu', 'citra@gmail.com', '2020-07-01', 'Sopeng', 'Pengacara', '3432314.png', 1594895838, 0, ''),
(17, 4343243, 'Sesilia', 'Wanita', 2014, 2017, '08736353526', 'Jalan Apel', 'sesilia@gmail.com', '2006-02-13', 'Land of dawn', 'Model', '4343243.jpg', 1594896130, 0, ''),
(27, 123123, 'Rere', 'Wanita', 2008, 2011, '08355464334', 'Jalan Mengkudu', 'rere@gmail.com', '2020-08-05', 'Semarang', '', '123123.png', 1597670292, 0, '81dc9bdb52d04dc20036dbd8313ed055'),
(28, 123321, 'Putra Saputra', 'Pria', 2018, 2021, '08545242524', 'Jalan Apel', 'putra@gmail.com', '2003-06-18', 'Bandung', '', '123321.jpg', 1597671994, 0, '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nisn` (`nisn`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_alumni`
--
ALTER TABLE `tabel_alumni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tabel_alumni`
--
ALTER TABLE `tabel_alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
