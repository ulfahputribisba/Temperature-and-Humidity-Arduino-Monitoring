-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 29, 2018 at 09:31 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `skripsiarduino`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporanpemantauan`
--

CREATE TABLE IF NOT EXISTS `laporanpemantauan` (
  `id_laporan` int(10) NOT NULL AUTO_INCREMENT,
  `waktu` date NOT NULL,
  `ave_suhu` float(6,2) NOT NULL,
  `ave_kelembaban` float(6,2) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id_laporan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `laporanpemantauan`
--

INSERT INTO `laporanpemantauan` (`id_laporan`, `waktu`, `ave_suhu`, `ave_kelembaban`, `ket`) VALUES
(1, '2018-07-16', 29.60, 82.40, 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nik` char(10) NOT NULL,
  `username` char(20) NOT NULL,
  `password` char(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` char(20) NOT NULL,
  `keaktifan` enum('Aktif','Tidak Aktif') NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_user`, `nik`, `username`, `password`, `nama`, `no_telp`, `keaktifan`) VALUES
(1, '12345', 'ulfahpb', 'e302a734092cfc49bbb406a9f1cc0809', 'Ulfah Putri Bisba', '081212100945', 'Aktif'),
(2, '67890', 'upbisba', 'upbisba08', 'Putri Bisba', '081212100954', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `rekamandata`
--

CREATE TABLE IF NOT EXISTS `rekamandata` (
  `id_rekaman` int(10) NOT NULL AUTO_INCREMENT,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `suhu` float(6,2) NOT NULL,
  `kelembaban` float(6,2) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_rekaman`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `rekamandata`
--

INSERT INTO `rekamandata` (`id_rekaman`, `tanggal`, `suhu`, `kelembaban`, `keterangan`) VALUES
(1, '2018-07-16 00:00:00', 27.00, 81.00, 'Normal'),
(2, '2018-07-16 00:00:05', 27.00, 81.00, 'Normal'),
(3, '2018-07-16 00:00:10', 27.70, 81.00, 'Normal'),
(4, '2018-07-16 00:00:15', 27.70, 81.00, 'Normal'),
(5, '2018-07-16 00:00:20', 27.70, 81.00, 'Normal'),
(6, '2018-07-16 00:00:25', 27.70, 81.00, 'Normal'),
(7, '2018-07-16 00:00:30', 27.70, 81.00, 'Normal'),
(8, '2018-07-16 00:00:35', 27.70, 81.00, 'Normal'),
(9, '2018-07-16 00:00:40', 27.70, 81.00, 'Normal'),
(10, '2018-07-16 00:00:45', 27.70, 81.00, 'Normal'),
(11, '2018-07-16 00:00:50', 27.70, 81.00, 'Normal'),
(12, '2018-07-16 00:00:55', 27.70, 81.00, 'Normal'),
(13, '2018-07-16 00:01:00', 27.70, 81.00, 'Normal'),
(14, '2018-07-16 00:01:05', 27.70, 81.00, 'Normal'),
(15, '2018-07-16 00:01:10', 27.70, 81.00, 'Normal'),
(16, '2018-07-16 00:01:15', 27.70, 81.00, 'Normal'),
(17, '2018-07-16 00:01:20', 27.70, 81.00, 'Normal'),
(18, '2018-07-16 00:01:25', 27.70, 81.00, 'Normal'),
(19, '2018-07-16 00:01:30', 27.70, 81.00, 'Normal'),
(20, '2018-07-16 00:01:35', 27.70, 81.00, 'Normal'),
(21, '2018-07-16 00:01:40', 27.70, 81.00, 'Normal'),
(22, '2018-07-16 00:01:45', 27.70, 81.00, 'Normal'),
(23, '2018-07-16 00:01:50', 27.70, 81.00, 'Normal'),
(24, '2018-07-16 00:01:55', 27.70, 81.00, 'Normal'),
(25, '2018-07-16 00:02:00', 27.70, 81.00, 'Normal'),
(26, '2018-07-16 00:02:05', 27.70, 81.00, 'Normal'),
(27, '2018-07-16 00:02:10', 27.20, 81.00, 'Normal'),
(28, '2018-07-16 00:02:15', 27.21, 81.00, 'Normal'),
(29, '2018-07-16 00:02:20', 25.30, 85.00, 'Normal'),
(30, '2018-07-16 00:02:30', 30.00, 85.00, 'Normal'),
(31, '2018-07-16 00:02:35', 35.43, 85.00, 'Normal'),
(32, '2018-07-16 00:02:40', 37.90, 87.00, 'Normal'),
(33, '2018-07-16 00:02:45', 40.03, 90.00, 'Overheat'),
(34, '2018-07-16 00:02:50', 41.21, 90.00, 'Overheat'),
(35, '2018-07-16 00:02:55', 41.21, 90.00, 'Overheat'),
(36, '2018-07-16 00:03:00', 40.53, 88.00, 'Overheat');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
