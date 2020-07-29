-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2020 at 01:17 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nid` int(5) NOT NULL,
  `nama_dosen` varchar(45) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `ttl` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nid`, `nama_dosen`, `alamat`, `jk`, `ttl`) VALUES
(157840, 'Nuryanto', 'Dusun Tambakrejo', 'Laki-laki', 'Magelang, 21 April 1978'),
(157845, 'Agus Setyawan', 'Dusun Deyangan', 'Laki-laki', 'Magelang, 20 Oktober 1987'),
(157849, 'Ardhin Primadewi', 'Perum Depkes', 'Perempuan', 'Magelang, 4 Januari 1982'),
(157850, 'Ully Emilya', 'Jakarta', 'Laki-laki', 'Magelang, 5 Januari 1990');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `kd_jadwal` int(2) NOT NULL,
  `id_makul` int(5) NOT NULL,
  `nid` int(5) NOT NULL,
  `no_ruangan` int(5) NOT NULL,
  `nim` int(5) NOT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `jam` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`kd_jadwal`, `id_makul`, `nid`, `no_ruangan`, `nim`, `hari`, `jam`) VALUES
(1, 124, 12093, 213, 1234, 'senin', '1234'),
(3, 1242, 120121, 213, 1234, 'senin', '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(20) NOT NULL,
  `nama_mahasiswa` varchar(200) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `fakultas` varchar(20) NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mahasiswa`, `alamat`, `ttl`, `jk`, `fakultas`, `prodi`) VALUES
(1805040036, 'Febri Kurniawan', 'Secang', 'Magelang, 14 Februari 1999', 'Laki-laki', 'Fakultas Teknik', 'Informatika S1'),
(1805040048, 'Devara Avila Sebastian', 'Payaman', 'Magelang, 17 Agustus 2001', 'Laki-laki', 'Fakultas Teknik', 'Informatika S1'),
(1805040050, 'Aulia Maharani', 'Payaman', 'Magelang, 13 Juli 2000', 'Perempuan', 'Fakultas Teknik', 'Informatika S1'),
(1805040052, 'Zulfi Achsan Sani', 'Tegalrejo', 'Magelang, 19 September 2000', 'Laki-laki', 'Fakultas Teknik', 'Informatika S1'),
(1805040053, 'Annisa Ari Azzahra', 'Windusari', 'Magelang, 12 Agustus 2000', 'Perempuan', 'Fakultas Teknik', 'Informatika S1'),
(1805040054, 'Dian Adiyoko', 'Purworejo', 'Magelang, 15 Agustus 1999', 'Laki-laki', 'Fakultas Teknik', 'Informatika S1'),
(1805040055, 'Dian Pramuaji', 'Purworejo', 'Magelang, 15 Agustus 1999', 'Laki-laki', 'Fakultas Teknik', 'Informatika S1'),
(1805040056, 'Lidiah Kurnia Putri', 'Borobudur', 'Magelang, 12 Maret 2000', 'Perempuan', 'Fakultas Teknik', 'Informatika S1'),
(1805040057, 'Heru Yusmanto', 'Secang', 'Lampung, 3 Mei 1999', 'Laki-laki', 'Fakultas Teknik', 'Informatika S1'),
(1805040058, 'Muhammad Aulia Tegar', 'Magelang Selatan', 'Magelang, 5 Desember 2000', 'Laki-laki', 'Fakultas Teknik', 'Informatika S1');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_makul` int(2) NOT NULL,
  `nid` int(5) NOT NULL,
  `makul` varchar(30) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_makul`, `nid`, `makul`, `sks`) VALUES
(1, 1909, 'WebPro1', 3),
(2, 1909, 'WebPro1', 3),
(3, 1910, 'Adaptive', 4);

-- --------------------------------------------------------

--
-- Table structure for table `praktikum`
--

CREATE TABLE `praktikum` (
  `kode_matkul` int(50) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `kelas` varchar(7) NOT NULL,
  `ruangan` varchar(30) NOT NULL,
  `jadwal` varchar(50) NOT NULL,
  `dosen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `praktikum`
--

INSERT INTO `praktikum` (`kode_matkul`, `nama_matkul`, `kelas`, `ruangan`, `jadwal`, `dosen`) VALUES
(145863, 'WebPro1', '3C', 'Rabu 08.30-10.30', 'Endah Ratna', 'Endah Ratna'),
(145864, 'WebPro1', '3B', 'Rabu 08.30-10.30', 'Endah Ratna', 'Andi Widyanto'),
(145865, 'Parallel Computing', '4B', 'Kamis 13.00-16.30', 'lab202', 'Setya Nugroho');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `no_ruangan` varchar(30) NOT NULL,
  `gedunng` varchar(45) NOT NULL,
  `fakultas` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`no_ruangan`, `gedunng`, `fakultas`) VALUES
('A-301', 'A', 'Fakultas Agama Islam'),
('A-302', 'A', 'Fakultas Agama Islam'),
('C-301', 'C', 'Fakultas Teknik'),
('C-302', 'C', 'Fakultas Teknik'),
('C-303', 'C', 'Fakultas Teknik'),
('Lab 201', 'C', 'Fakultas Teknik'),
('Lab 202', 'C', 'Fakultas Teknik'),
('Lab 203', 'C', 'Fakultas Teknik'),
('Lab 204', 'C', 'Fakultas Teknik'),
('Lab 205', 'C', 'Fakultas Teknik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`kd_jadwal`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_makul`);

--
-- Indexes for table `praktikum`
--
ALTER TABLE `praktikum`
  ADD PRIMARY KEY (`kode_matkul`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`no_ruangan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `nim` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1805040059;

--
-- AUTO_INCREMENT for table `praktikum`
--
ALTER TABLE `praktikum`
  MODIFY `kode_matkul` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145866;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
