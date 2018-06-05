-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2018 at 10:17 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `_absensi`
--

CREATE TABLE `_absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `absen_hari` varchar(10) NOT NULL,
  `jam_masuk_kantor` time NOT NULL,
  `jam_keluar_kantor` time NOT NULL,
  `jam_masuk_absen` time NOT NULL,
  `jam_keluar_absen` time NOT NULL,
  `tanggal` datetime NOT NULL,
  `keterangan` text NOT NULL,
  `status` enum('masuk kerja','terlambat','ijin','sakit','cuti') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_absensi`
--

INSERT INTO `_absensi` (`id_absensi`, `id_karyawan`, `absen_hari`, `jam_masuk_kantor`, `jam_keluar_kantor`, `jam_masuk_absen`, `jam_keluar_absen`, `tanggal`, `keterangan`, `status`) VALUES
(1, 0, '', '07:00:00', '16:00:00', '00:00:00', '00:00:00', '2018-05-30 00:00:00', 'masuk', 'masuk kerja');

-- --------------------------------------------------------

--
-- Table structure for table `_jam_kerja`
--

CREATE TABLE `_jam_kerja` (
  `id_jam_kerja` int(11) NOT NULL,
  `lokasi_id` int(11) NOT NULL,
  `kerja_hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_jam_kerja`
--

INSERT INTO `_jam_kerja` (`id_jam_kerja`, `lokasi_id`, `kerja_hari`, `jam_masuk`, `jam_keluar`) VALUES
(37, 18, 'Senin', '07:00:00', '15:00:00'),
(38, 18, 'Selasa', '07:00:00', '15:00:00'),
(39, 18, 'Rabu', '07:00:00', '15:00:00'),
(40, 18, 'Kamis', '07:00:00', '15:00:00'),
(41, 18, 'Jumat', '08:00:00', '15:00:00'),
(42, 17, 'Senin', '07:00:00', '16:00:00'),
(43, 17, 'Selasa', '07:00:00', '16:00:00'),
(44, 17, 'Rabu', '07:00:00', '16:00:00'),
(45, 17, 'Kamis', '07:00:00', '16:00:00'),
(46, 17, 'Jumat', '07:00:00', '16:00:00'),
(47, 17, 'Sabtu', '07:00:00', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `_karyawan`
--

CREATE TABLE `_karyawan` (
  `karyawan_id` int(11) NOT NULL,
  `lokasi_id` int(11) NOT NULL,
  `karyawan_nama` varchar(200) NOT NULL,
  `karyawan_jabatan` varchar(50) NOT NULL,
  `karyawan_ttl` date NOT NULL,
  `karyawan_email` varchar(100) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `karyawan_alamat` text NOT NULL,
  `karyawan_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_karyawan`
--

INSERT INTO `_karyawan` (`karyawan_id`, `lokasi_id`, `karyawan_nama`, `karyawan_jabatan`, `karyawan_ttl`, `karyawan_email`, `no_hp`, `karyawan_alamat`, `karyawan_salary`) VALUES
(2, 11, 'Eni', 'Karyawan', '1993-05-31', 'eni@gmail.com', '', 'Tajem, Maguwoharjo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `_lokasi`
--

CREATE TABLE `_lokasi` (
  `lokasi_id` int(11) NOT NULL,
  `lokasi_nama` varchar(50) NOT NULL,
  `perusahaan_id` int(11) NOT NULL,
  `perusahaan_title` enum('pusat','cabang') NOT NULL,
  `perusahaan_alamat` text NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `qr_code` varchar(50) NOT NULL,
  `id_jam_kerja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_lokasi`
--

INSERT INTO `_lokasi` (`lokasi_id`, `lokasi_nama`, `perusahaan_id`, `perusahaan_title`, `perusahaan_alamat`, `latitude`, `longitude`, `qr_code`, `id_jam_kerja`) VALUES
(11, 'Amikom Yogyakarta', 1, 'pusat', 'Jalan Ring Road Utara, Condongcatur, Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', -7.760144, 110.406548, 'amikom-yogyakarta-310518013145.png', 0),
(12, 'PT Otret Yogyakarta', 1, 'cabang', 'Jl. Magelang KM.8 No.89, Kricak, Tegalrejo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55285', -7.774353, 110.360794, 'pt-otret-yogyakarta-310518013039.png', 0),
(14, 'Building 6 Of AMIKOM', 1, 'cabang', 'Jl. Mancasan Indah III No.14, Ngringin, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', -7.759692, 110.409515, 'building-6-of-amikom-310518013044.png', 0),
(15, 'Magelang Resto', 1, 'cabang', 'Jl. Magelang KM.8 No.89, Kricak, Tegalrejo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55285', -7.774353, 110.360794, 'magelang-resto-310518014031.png', 0),
(17, 'PT Otret Siemens', 1, 'pusat', 'Siemens Business Park, Building F Jl. MT. Haryono Kav. 58-60 Jakarta Selatan 12780', -6.245731, 106.846031, 'pt-otret-siemens-310518013939.png', 0),
(18, 'Testing Dulu', 1, 'pusat', 'Jl.Palagan Yogyakarta', -7.732234, 110.383232, 'testing-dulu-310518034524.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `_perusahaan`
--

CREATE TABLE `_perusahaan` (
  `perusahaan_id` int(11) NOT NULL,
  `perusahaan_nama` varchar(200) NOT NULL,
  `perusahaan_alamat` text NOT NULL,
  `perusahaan_telp` varchar(12) NOT NULL,
  `perusahaan_bidang` varchar(100) NOT NULL,
  `perusahaan_email` varchar(100) NOT NULL,
  `perusahaan_user` varchar(100) NOT NULL,
  `perusahaan_logo` varchar(100) NOT NULL,
  `perusahaan_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_perusahaan`
--

INSERT INTO `_perusahaan` (`perusahaan_id`, `perusahaan_nama`, `perusahaan_alamat`, `perusahaan_telp`, `perusahaan_bidang`, `perusahaan_email`, `perusahaan_user`, `perusahaan_logo`, `perusahaan_password`) VALUES
(1, 'PT Otret Jogja', 'Jl. Gito Gati', '085743328656', 'Web Developer', 'root@mastercms.com', 'root@mastercms.com', 'user1.jpg', 'c3284d0f94606de1fd2af172aba15bf3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `_absensi`
--
ALTER TABLE `_absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `_jam_kerja`
--
ALTER TABLE `_jam_kerja`
  ADD PRIMARY KEY (`id_jam_kerja`);

--
-- Indexes for table `_karyawan`
--
ALTER TABLE `_karyawan`
  ADD PRIMARY KEY (`karyawan_id`);

--
-- Indexes for table `_lokasi`
--
ALTER TABLE `_lokasi`
  ADD PRIMARY KEY (`lokasi_id`);

--
-- Indexes for table `_perusahaan`
--
ALTER TABLE `_perusahaan`
  ADD PRIMARY KEY (`perusahaan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `_absensi`
--
ALTER TABLE `_absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_jam_kerja`
--
ALTER TABLE `_jam_kerja`
  MODIFY `id_jam_kerja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `_karyawan`
--
ALTER TABLE `_karyawan`
  MODIFY `karyawan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `_lokasi`
--
ALTER TABLE `_lokasi`
  MODIFY `lokasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `_perusahaan`
--
ALTER TABLE `_perusahaan`
  MODIFY `perusahaan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
