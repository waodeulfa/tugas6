-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 05:48 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `nomor_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `nim`, `jurusan`, `alamat`, `nomor_telp`) VALUES
(1, 'WAODE SITTI RAHMAWATI', 'E1E114073', 'TEKNIK INFORMATIKA', 'JALAN PERINTIS', '085211134373'),
(2, 'DERA HAMID', 'E1E114077', 'KESEHATAN LINGKUNGAN', 'KEMARAYA', '082190508157'),
(3, 'YUYUN MUNDARI', 'E1E114078', 'EKONOMI', 'LABIBIA', '085341197353'),
(5, 'RISDARIA', 'E1E114033', 'TEKNIK INFORMATIKA', 'ANDUONOHU', '085211134375'),
(6, 'LILIS ANGGRIANI', 'E1E114043', 'TEKNIK INFORMATIKA', 'PERINTIS', '081245782472'),
(7, 'MUGITAWASI', 'E1E114032', 'TEKNIK INFORMATIKA', 'BERINGIN', '085341197352'),
(9, 'MULATIFA LALIHA', 'E1E114003', 'TEKNIK INFORMATIKA', 'PERINTIS', '082394632928'),
(10, 'SRI WAYUN WARDANI', 'E1E114048', 'TEKNIK INFORMATIKA', 'ANDUONOHU', '081245782571');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
