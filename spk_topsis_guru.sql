-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 11:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_topsis_guru`
--

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `id` int(11) NOT NULL,
  `kode_bobot` varchar(15) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`id`, `kode_bobot`, `jumlah`, `keterangan`) VALUES
(1, 'B001', 1, 'Sangat Buruk'),
(2, 'B002', 2, 'Buruk'),
(3, 'B003', 3, 'Cukup'),
(4, 'B004', 4, 'Baik'),
(5, 'B005', 5, 'Sangat Baik');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nip`, `nama`, `alamat`, `jenis_kelamin`, `no_telp`) VALUES
(1, '196208291984031', 'RUKDI', 'KP. RAWA BEBEK RT.03/11\r\n', 'Pria', '088990099'),
(2, '195907291980101', 'TUKIRAN', 'JL. GARDU NO.46 RT.11/02', 'Pria', '088990099'),
(3, '195703221976012', 'DAIS DARTINI', 'JL. LAYAR II NO.24', 'Wanita', '088990099'),
(4, '195706051982072', 'TIORLI SIAHAAN', 'JL. EMPU KANWA XII RT.01/06', 'Wanita', '088990099'),
(5, '195705051983032', 'RUHMIYATI', 'KP PLUIS RT.11/05', 'Wanita', '088990099');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `kode_kriteria` varchar(15) NOT NULL,
  `nama_kriteria` varchar(30) NOT NULL,
  `kategori` varchar(35) DEFAULT NULL,
  `bobot` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `kode_kriteria`, `nama_kriteria`, `kategori`, `bobot`) VALUES
(1, 'C1', 'Absensi', 'Benefit/Keuntungan', 4),
(2, 'C2', 'Attitude', 'Benefit/Keuntungan', 3),
(3, 'C3', 'Disiplin', 'Benefit/Keuntungan', 5),
(4, 'C4', 'Kemampuan Memotivasi', 'Benefit/Keuntungan', 4),
(5, 'C5', 'Tanggung Jawab', 'Benefit/Keuntungan', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_topsis`
--

CREATE TABLE `nilai_topsis` (
  `kode_nilai_guru` varchar(50) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `kode_kriteria` varchar(15) NOT NULL,
  `angka_penilaian` int(12) NOT NULL,
  `nilai_bobot` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nilai_topsis`
--

INSERT INTO `nilai_topsis` (`kode_nilai_guru`, `nip`, `kode_kriteria`, `angka_penilaian`, `nilai_bobot`) VALUES
('195703221976012C1', '195703221976012', 'C1', 99, 5),
('195703221976012C2', '195703221976012', 'C2', 76, 4),
('195703221976012C3', '195703221976012', 'C3', 100, 5),
('195703221976012C4', '195703221976012', 'C4', 66, 4),
('195703221976012C5', '195703221976012', 'C5', 77, 4),
('195705051983032C1', '195705051983032', 'C1', 77, 4),
('195705051983032C2', '195705051983032', 'C2', 88, 5),
('195705051983032C3', '195705051983032', 'C3', 66, 4),
('195705051983032C4', '195705051983032', 'C4', 37, 2),
('195705051983032C5', '195705051983032', 'C5', 78, 4),
('195706051982072C1', '195706051982072', 'C1', 78, 4),
('195706051982072C2', '195706051982072', 'C2', 89, 5),
('195706051982072C3', '195706051982072', 'C3', 100, 5),
('195706051982072C4', '195706051982072', 'C4', 89, 5),
('195706051982072C5', '195706051982072', 'C5', 65, 4),
('195907291980101C1', '195907291980101', 'C1', 88, 5),
('195907291980101C2', '195907291980101', 'C2', 77, 4),
('195907291980101C3', '195907291980101', 'C3', 66, 4),
('195907291980101C4', '195907291980101', 'C4', 100, 5),
('195907291980101C5', '195907291980101', 'C5', 76, 4),
('196208291984031C1', '196208291984031', 'C1', 87, 5),
('196208291984031C2', '196208291984031', 'C2', 76, 4),
('196208291984031C3', '196208291984031', 'C3', 99, 5),
('196208291984031C4', '196208291984031', 'C4', 100, 5),
('196208291984031C5', '196208291984031', 'C5', 76, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hak_akses` enum('Admin','User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `email`, `hak_akses`) VALUES
(1, 'Muthahharoh Zuhro', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', 'Admin'),
(2, 'Kepala Sekolah', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'kepalasekolah@gmail.com', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_topsis`
--
ALTER TABLE `nilai_topsis`
  ADD PRIMARY KEY (`kode_nilai_guru`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
