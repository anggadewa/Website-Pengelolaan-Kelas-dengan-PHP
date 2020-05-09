-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2019 at 02:36 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4ia18`
--

-- --------------------------------------------------------

--
-- Table structure for table `infokelas`
--

CREATE TABLE `infokelas` (
  `id_status` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `matkul` varchar(25) NOT NULL,
  `deskripsi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infokelas`
--

INSERT INTO `infokelas` (`id_status`, `nama`, `matkul`, `deskripsi`, `waktu`) VALUES
(1, 'Admin', 'RPL', 'Bapaknya vclass tanggal 32 Februari 2035', '2018-10-31 06:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `infolab`
--

CREATE TABLE `infolab` (
  `id_status` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `matkul` varchar(25) NOT NULL,
  `deskripsi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infolab`
--

INSERT INTO `infolab` (`id_status`, `nama`, `matkul`, `deskripsi`, `waktu`) VALUES
(3, 'Admin', 'JARKOMLAN', 'LP: <br>\r\n1. Apa itu router?', '2018-11-27 14:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `infotugas`
--

CREATE TABLE `infotugas` (
  `id_status` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `matkul` varchar(25) NOT NULL,
  `deskripsi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infotugas`
--

INSERT INTO `infotugas` (`id_status`, `nama`, `matkul`, `deskripsi`, `waktu`) VALUES
(29, 'Admin', 'coba1', 'aaaa', '2018-11-05 15:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `username` varchar(25) NOT NULL,
  `nama_mhs` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('mhs','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`username`, `nama_mhs`, `password`, `level`) VALUES
('admin', 'admin', 'admin', 'admin'),
('coba3', 'coba3', 'coba3', 'mhs'),
('dudu', 'Dudu', 'dudu', 'mhs'),
('mahasiswa', 'mahasiswa', 'mahasiswa', 'mhs');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id_upload` int(3) NOT NULL,
  `npm` varchar(25) NOT NULL,
  `nama_mhs` varchar(25) NOT NULL,
  `matkul` varchar(25) NOT NULL,
  `periode` int(2) NOT NULL,
  `file` varchar(25) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id_upload`, `npm`, `nama_mhs`, `matkul`, `periode`, `file`, `deskripsi`, `tgl_upload`) VALUES
(15, 'mahasiswa', 'mahasiswa', 'JARKOMLAN', 4, 'Scan KRS.jpg', 'adasd', '2018-11-09'),
(17, 'mahasiswa', 'mahasiswa', 'JARKOMLAN', 1, 'Jawaban Vclass RK Minggu ', 'adasd', '2018-11-09'),
(18, 'mahasiswa', 'mahasiswa', 'PPC', 1, 'Tugas1.xlsx', 'Tugas Bu Meta', '2018-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `upload_kelas`
--

CREATE TABLE `upload_kelas` (
  `id_upload` int(3) NOT NULL,
  `kode_admin` varchar(25) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `matkul` varchar(25) NOT NULL,
  `periode` int(2) NOT NULL,
  `file` varchar(25) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_kelas`
--

INSERT INTO `upload_kelas` (`id_upload`, `kode_admin`, `nama`, `matkul`, `periode`, `file`, `deskripsi`, `tgl_upload`) VALUES
(4, 'admin', 'Admin', 'JARKOMLAN', 4, '1.PNG', 'adasd', '2018-11-09 12:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `upload_lab`
--

CREATE TABLE `upload_lab` (
  `id_upload` int(3) NOT NULL,
  `kode_admin` varchar(25) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `matkul` varchar(25) NOT NULL,
  `periode` int(2) NOT NULL,
  `file` varchar(25) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_lab`
--

INSERT INTO `upload_lab` (`id_upload`, `kode_admin`, `nama`, `matkul`, `periode`, `file`, `deskripsi`, `tgl_upload`) VALUES
(4, 'admin', 'Admin', 'JARKOMLAN', 4, '2.PNG', 'adasd', '2018-11-09 12:46:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `infokelas`
--
ALTER TABLE `infokelas`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `infolab`
--
ALTER TABLE `infolab`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `infotugas`
--
ALTER TABLE `infotugas`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id_upload`);

--
-- Indexes for table `upload_kelas`
--
ALTER TABLE `upload_kelas`
  ADD PRIMARY KEY (`id_upload`);

--
-- Indexes for table `upload_lab`
--
ALTER TABLE `upload_lab`
  ADD PRIMARY KEY (`id_upload`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `infokelas`
--
ALTER TABLE `infokelas`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infolab`
--
ALTER TABLE `infolab`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `infotugas`
--
ALTER TABLE `infotugas`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id_upload` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `upload_kelas`
--
ALTER TABLE `upload_kelas`
  MODIFY `id_upload` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `upload_lab`
--
ALTER TABLE `upload_lab`
  MODIFY `id_upload` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
