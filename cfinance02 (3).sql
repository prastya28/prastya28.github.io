-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2019 at 06:35 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cfinance02`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc`
--

CREATE TABLE IF NOT EXISTS `acc` (
`id_acc` int(11) NOT NULL,
  `added` datetime DEFAULT '0000-00-00 00:00:00',
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `acc`
--

INSERT INTO `acc` (`id_acc`, `added`, `code`, `name`) VALUES
(1, '0000-00-00 00:00:00', '10105000', 'EHC'),
(2, '0000-00-00 00:00:00', '10105001', 'C-CARE');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id_cat` int(11) NOT NULL,
  `id_ctg` int(11) NOT NULL,
  `added` datetime DEFAULT '0000-00-00 00:00:00',
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_cat`, `id_ctg`, `added`, `code`, `name`) VALUES
(1, 1, '2018-11-06 16:21:51', 'A1', 'Gaji Pokok Karyawan Tetap'),
(2, 1, '2018-11-06 16:21:51', 'A2', 'Insentif Fungsional Karyawan Tetap'),
(3, 1, '2018-11-06 16:21:51', 'A3', 'Insentif Produktifitas'),
(4, 1, '2018-11-06 16:21:51', 'A4', 'Gaji Honorer'),
(5, 2, '2018-11-06 16:21:51', 'B1', 'Listrik'),
(6, 2, '2018-11-06 16:21:51', 'B2', 'Air'),
(7, 2, '2018-11-06 16:21:51', 'B3', 'Keamanan'),
(8, 2, '2018-11-06 16:21:51', 'B4', 'Internet'),
(9, 2, '2018-11-06 16:21:51', 'B5', 'Telepon/Pulsa'),
(10, 2, '2018-11-06 16:21:51', 'B6', 'Lainnya'),
(11, 3, '2018-11-06 16:21:51', 'C1', 'Komponen Elektronika'),
(12, 3, '2018-11-06 16:21:51', 'C2', 'Komponen Mekanik'),
(13, 3, '2018-11-06 16:21:51', 'C3', 'Bahan Kimia'),
(14, 3, '2018-11-06 16:21:51', 'C4', 'Bahan Bangunan'),
(15, 3, '2018-11-06 16:21:51', 'C5', 'Komponen Lain'),
(16, 3, '2018-11-06 16:21:51', 'C6', 'Bahan Apparel Non Elektronik'),
(17, 4, '2018-11-06 16:21:51', 'D1', 'Komputer'),
(18, 4, '2018-11-06 16:21:51', 'D2', 'Alat-Alat Elektronika'),
(19, 4, '2018-11-06 16:21:51', 'D3', 'Perlengkapan Elektronika'),
(20, 4, '2018-11-06 16:21:51', 'D4', 'Furnitur'),
(21, 4, '2018-11-06 16:21:51', 'D5', 'Alat-Alat Perkakas'),
(22, 4, '2018-11-06 16:21:51', 'D6', 'Alat-Alat Laboratorium'),
(23, 4, '2018-11-06 16:21:51', 'D7', 'Alat-Alat Layanan Kesehatan'),
(24, 4, '2018-11-06 16:21:51', 'D8', 'Alat-Alat Layanan Industri'),
(25, 4, '2018-11-06 16:21:51', 'D9', 'Mesin Produksi'),
(26, 4, '2018-11-06 16:21:51', 'D10', 'Alat Penunjang Produksi'),
(27, 4, '2018-11-06 16:21:51', 'D11', 'Kendaraan Bermotor Untuk Layanan/Produksi'),
(28, 4, '2018-11-06 16:21:51', 'D12', 'Kendaraan Bermotor Untuk Manajer/Direksi'),
(29, 4, '2018-11-06 16:21:51', 'D99', 'Peralatan Lainnya'),
(30, 5, '2018-11-06 16:21:51', 'E1', 'Perjalanan Dinas Dalam Negeri'),
(31, 5, '2018-11-06 16:21:51', 'E2', 'Perjalanan Dinas Luar Negeri'),
(32, 5, '2018-11-06 16:21:51', 'E3', 'Transportasi Lain'),
(33, 5, '2018-11-06 16:21:51', 'E4', 'Liburan Perusahaan'),
(34, 5, '2018-11-06 16:21:51', 'E5', 'Roadshow Perusahaan'),
(35, 6, '2018-11-06 16:21:51', 'F1', 'Katering Makan Siang Dan Malam'),
(36, 6, '2018-11-06 16:21:51', 'F2', 'Konsumsi Rapat'),
(37, 6, '2018-11-06 16:21:51', 'F3', 'Jamuan Tamu'),
(38, 6, '2018-11-06 16:21:51', 'F4', 'Konsumsi Kantor'),
(39, 7, '2018-11-06 16:21:51', 'G1', 'Servis Peralatan'),
(40, 7, '2018-11-06 16:21:51', 'G2', 'Jasa Tukang/Perawatan Gedung'),
(41, 7, '2018-11-06 16:21:51', 'G3', 'Jasa Uji Laboratorium'),
(42, 7, '2018-11-06 16:21:51', 'G4', 'Jasa Servis Kendaraan'),
(43, 7, '2018-11-06 16:21:51', 'G5', 'Jasa Lainnya'),
(44, 8, '2018-11-06 16:21:51', 'H1', 'PPN'),
(45, 8, '2018-11-06 16:21:51', 'H2', 'PPH'),
(46, 8, '2018-11-06 16:21:51', 'H3', 'Pajak/Bea Masuk Ekspor-Impor'),
(47, 8, '2018-11-06 16:21:51', 'H4', 'Royalti'),
(48, 8, '2018-11-06 16:21:51', 'H5', 'Lisensi'),
(49, 8, '2018-11-06 16:21:51', 'H6', 'Lainnya'),
(50, 9, '2018-11-06 16:21:51', 'I1', 'Pengiriman Administrasi Kantor'),
(51, 9, '2018-11-06 16:21:51', 'I2', 'Pengiriman Produk'),
(52, 9, '2018-11-06 16:21:51', 'I3', 'Pengiriman Lainnya'),
(53, 9, '2018-11-06 16:21:51', 'I4', 'Jasa Pengiriman/Impor'),
(54, 10, '2018-11-06 16:21:51', 'J1', 'Perlengkapan Pameran'),
(55, 10, '2018-11-06 16:21:51', 'J2', 'Iklan'),
(56, 10, '2018-11-06 16:21:51', 'J3', 'Publikasi/Seminar'),
(57, 10, '2018-11-06 16:21:51', 'J4', 'Pameran'),
(58, 10, '2018-11-06 16:21:51', 'J5', 'Sponsorship'),
(59, 10, '2018-11-06 16:21:51', 'J6', 'Lainnya'),
(60, 10, '2018-11-06 16:21:51', 'J7', 'Biaya Opersional Marketing'),
(61, 11, '2018-11-06 16:21:51', 'K1', 'Penginapan Karyawan'),
(62, 11, '2018-11-06 16:21:51', 'K2', 'Penginapan Tamu'),
(63, 11, '2018-11-06 16:21:51', 'K3', 'Sewa Gedung'),
(64, 11, '2018-11-06 16:21:51', 'K4', 'Lainnya'),
(65, 12, '2018-11-06 16:21:51', 'L1', 'Tunjangan Hari Raya'),
(66, 12, '2018-11-06 16:21:51', 'L2', 'Tunjangan Pindah Karyawan Baru'),
(67, 12, '2018-11-06 16:21:51', 'L3', 'Tunjangan Kesejahteraan'),
(68, 12, '2018-11-06 16:21:51', 'L4', 'Tunjangan Pendidikan'),
(69, 12, '2018-11-06 16:21:51', 'L5', 'Tunjangan Kesehatan'),
(70, 12, '2018-11-06 16:21:51', 'L6', 'Tunjangan Lainnya'),
(71, 13, '2018-11-06 16:21:51', 'M1', 'Infaq Karyawan'),
(72, 13, '2018-11-06 16:21:51', 'M2', 'Infaq Pendapatan Perusahaan'),
(73, 13, '2018-11-06 16:21:51', 'M3', 'Keringanan Biaya (SKTM/Jamkesmas)'),
(74, 13, '2018-11-06 16:21:51', 'M4', 'Keringanan Biaya Lainnya'),
(75, 13, '2018-11-06 16:21:51', 'M5', 'Hibah'),
(76, 14, '2018-11-06 16:21:51', 'N1', 'ATK'),
(77, 14, '2018-11-06 16:21:51', 'N2', 'Bahan-Bahan Konsumsi Non-Makanan'),
(78, 14, '2018-11-06 16:21:51', 'N3', 'Bahan-Bahan Perawatan Kantor'),
(79, 15, '2018-11-06 16:21:51', 'O1', 'Pinjaman Tunai'),
(80, 15, '2018-11-06 16:21:51', 'O2', 'Pinjaman Kesejahteraan'),
(81, 15, '2018-11-06 16:21:51', 'O3', 'Lainnya'),
(82, 16, '2018-11-06 16:21:51', 'P1', 'Kas Kecil Admin'),
(83, 17, '2018-11-06 16:21:51', 'Q1', 'Investasi Tanah Dan Bangunan Kantor'),
(84, 17, '2018-11-06 16:21:51', 'Q2', 'Piutang Investasi'),
(85, 17, '2018-11-06 16:21:51', 'Q3', 'Investasi Unit Usaha'),
(86, 17, '2018-11-06 16:21:51', 'Q4', 'Investasi Saham'),
(87, 17, '2018-11-06 16:21:51', 'Q5', 'Investasi Pabrik Dan Gedung Produksi'),
(88, 17, '2018-11-06 16:21:51', 'Q6', 'Investasi Gedung Laboratorium'),
(89, 17, '2018-11-06 16:21:51', 'Q7', 'Investasi Tanah, Gedung Dan Bangunan Lainnya'),
(90, 18, '2018-11-06 16:21:51', 'R1', 'Operasional Direktur/Manajer'),
(91, 18, '2018-11-06 16:21:51', 'R2', 'Jamuan Direksi/Manajer'),
(92, 18, '2018-11-06 16:21:51', 'R3', 'Dana Taktis'),
(93, 18, '2018-11-06 16:21:51', 'R4', 'Dana Operasional Lainnya'),
(94, 18, '2018-11-06 16:21:51', 'R5', 'Hibah Produktif'),
(95, 18, '2018-11-06 16:21:51', 'R6', 'CSR'),
(96, 18, '2018-11-06 16:21:51', 'R7', 'Hibah Pendidikan Dan Riset'),
(97, 18, '2018-11-06 16:21:51', 'R8', 'Hibah Lainnya'),
(98, 19, '0000-00-00 00:00:00', 'S1', 'Share Partner Domestik'),
(99, 19, '0000-00-00 00:00:00', 'S2', 'Share Partner Luar Negeri'),
(100, 20, '0000-00-00 00:00:00', 'T1', 'Refund ECCT Dalam Negeri');

-- --------------------------------------------------------

--
-- Table structure for table `cat_group`
--

CREATE TABLE IF NOT EXISTS `cat_group` (
`id_ctg` int(11) NOT NULL,
  `added` datetime DEFAULT '0000-00-00 00:00:00',
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `cat_group`
--

INSERT INTO `cat_group` (`id_ctg`, `added`, `code`, `name`) VALUES
(1, '2018-11-06 16:14:15', '1', 'Gaji Total'),
(2, '2018-11-06 16:14:15', '2', 'Utilitas Total'),
(3, '2018-11-06 16:14:15', '3', 'Komponen Dan Bahan Total'),
(4, '2018-11-06 16:14:15', '4', 'Peralatan Total'),
(5, '2018-11-06 16:14:15', '5', 'Transportasi Dan Perjalanan Total'),
(6, '2018-11-06 16:14:15', '6', 'Makan Total'),
(7, '2018-11-06 16:14:15', '7', 'Servis Dan Perawatan Total'),
(8, '2018-11-06 16:14:15', '8', 'Pajak Dan Beacukai Total'),
(9, '2018-11-06 16:14:15', '9', 'Pos Dan Pengiriman Total'),
(10, '2018-11-06 16:14:15', '10', 'Biaya Iklan Dan Promosi Total'),
(11, '2018-11-06 16:14:15', '11', 'Kantor Dan Gedung Total'),
(12, '2018-11-06 16:14:15', '12', 'Tunjangan Karyawan Total'),
(13, '2018-11-06 16:14:15', '13', 'Infaq/Shodaqoh Total'),
(14, '2018-11-06 16:14:15', '14', 'Atk Dan Konsumsi Kantor Non-Makanan Total'),
(15, '2018-11-06 16:14:15', '15', 'Piutang Karyawan Total'),
(16, '2018-11-06 16:14:15', '16', 'Kas Kecil Admin Total'),
(17, '2018-11-06 16:14:15', '17', 'Investasi Total'),
(18, '2018-11-06 16:14:15', '18', 'Operasional Lain Dan Hibah Total'),
(19, '2018-12-13 00:00:00', '19', 'Share'),
(20, '2018-12-13 00:00:00', '20', 'Refund');

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

CREATE TABLE IF NOT EXISTS `departement` (
`id_dep` int(11) NOT NULL,
  `added` datetime DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `departement`
--

INSERT INTO `departement` (`id_dep`, `added`, `name`) VALUES
(1, '2018-10-24 16:53:00', '-'),
(2, '2018-10-24 16:53:00', 'Finance'),
(3, '2018-10-24 16:53:00', 'HC-GA'),
(4, '2018-10-24 16:53:00', 'TI'),
(5, '2018-12-03 00:00:00', 'HRD');

-- --------------------------------------------------------

--
-- Table structure for table `fund_in`
--

CREATE TABLE IF NOT EXISTS `fund_in` (
`id_fin` int(11) NOT NULL,
  `id_ro` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `added` datetime DEFAULT '0000-00-00 00:00:00',
  `nominal` int(11) NOT NULL,
  `payment_method` enum('cash','transfer') DEFAULT 'cash',
  `payment_note` varchar(255) DEFAULT NULL,
  `note` text,
  `file_dir` varchar(255) DEFAULT NULL,
  `file_link` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_ext` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `fund_in`
--

INSERT INTO `fund_in` (`id_fin`, `id_ro`, `id_user`, `added`, `nominal`, `payment_method`, `payment_note`, `note`, `file_dir`, `file_link`, `file_size`, `file_ext`) VALUES
(14, 5, 1, '2019-04-25 09:16:55', 3, 'cash', 'Rek 0929892892', '', '', '', 0, ''),
(15, 3, 1, '2019-04-25 09:17:25', 50000, 'transfer', 'Rek 0929892892', '', 'fin', '15_Test 03.png', 21088, 'png'),
(16, 3, 1, '2019-04-25 09:31:03', 1700000, 'transfer', 'Rek 0929892892', '', '', '', 0, ''),
(17, 5, 1, '2019-04-25 14:13:55', 340, 'cash', '', '', '', '', 0, ''),
(24, 2, 1, '2019-04-25 16:06:56', 50000, 'cash', 'Rek 0929892892', 'catatan catatan catatan catatan ', '', '', 0, ''),
(25, 5, 1, '2019-04-25 16:14:56', 50000, 'cash', 'fdfdff', 'test test test test test test ', 'fin', '25_Test 044.docx', 26803, 'docx'),
(34, 5, 1, '2019-05-08 09:49:57', 100000, 'transfer', 'Rek 0929892892', 'testing testing testing testing testing ', 'fin', '34_Test 044.docx', 534182, 'docx'),
(36, 5, 1, '2019-05-08 09:51:03', 400000, 'transfer', 'Rek 0929892892', 'testing testing testing testing testing qqqqqqqqq', 'fin', '36_Test 044.docx', 534182, 'docx'),
(37, 2, 1, '2019-05-15 11:35:14', 2200000, 'cash', 'Catatan 1', 'erere', '', '', 0, ''),
(38, 12, 1, '2019-05-15 14:14:42', 200000, 'transfer', 'Rek 0929892892', 'TK Catatan 1', 'fin', '38_Hmmmmmmmmmmmm.docx', 17137, 'docx'),
(39, 12, 1, '2019-05-15 14:15:04', 50000, 'cash', 'Catatan 1', 'Catatan 1 Catatan 1 Catatan 1', 'fin', '39_Hmmmmmmmmmmmm.png', 3211, 'png');

-- --------------------------------------------------------

--
-- Table structure for table `fund_out`
--

CREATE TABLE IF NOT EXISTS `fund_out` (
`id_fout` int(11) NOT NULL,
  `id_ro` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `added` datetime DEFAULT '0000-00-00 00:00:00',
  `nominal` int(11) NOT NULL,
  `payment_method` enum('cash','transfer') DEFAULT 'cash',
  `payment_note` varchar(255) DEFAULT NULL,
  `note` text,
  `file_dir` varchar(255) NOT NULL,
  `file_link` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_ext` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `requisition_order`
--

CREATE TABLE IF NOT EXISTS `requisition_order` (
`id_ro` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `id_acc` int(11) NOT NULL,
  `added` datetime DEFAULT '0000-00-00 00:00:00',
  `submited` datetime DEFAULT '0000-00-00 00:00:00',
  `reviewed` datetime DEFAULT '0000-00-00 00:00:00',
  `canceled` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approved` datetime DEFAULT '0000-00-00 00:00:00',
  `rejected` datetime DEFAULT '0000-00-00 00:00:00',
  `activated` datetime DEFAULT '0000-00-00 00:00:00',
  `submited_by` int(11) NOT NULL DEFAULT '0',
  `canceled_by` int(11) NOT NULL DEFAULT '0',
  `reviewed_by` int(11) NOT NULL DEFAULT '0',
  `approved_by` int(11) NOT NULL DEFAULT '0',
  `rejected_by` int(11) NOT NULL DEFAULT '0',
  `activated_by` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `priority` enum('1','2','3','4','5','6','7','8','9','10') DEFAULT '10',
  `deadline` datetime DEFAULT '0000-00-00 00:00:00',
  `status` enum('draf','submited','reviewed','canceled','approved','rejected','activated') DEFAULT 'draf',
  `payment_method` enum('cash','transfer') DEFAULT 'cash',
  `payment_note` varchar(255) DEFAULT NULL,
  `note` text,
  `lampiran` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `requisition_order`
--

INSERT INTO `requisition_order` (`id_ro`, `id_user`, `id_cat`, `id_acc`, `added`, `submited`, `reviewed`, `canceled`, `approved`, `rejected`, `activated`, `submited_by`, `canceled_by`, `reviewed_by`, `approved_by`, `rejected_by`, `activated_by`, `number`, `title`, `priority`, `deadline`, `status`, `payment_method`, `payment_note`, `note`, `lampiran`) VALUES
(1, 1, 8, 2, '2019-04-02 14:17:16', '2019-04-04 08:58:14', '2019-04-04 08:59:06', '0000-00-00 00:00:00', '2019-04-04 08:59:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, 'Test 01', '1', '2019-04-06 00:00:00', 'draf', 'cash', 'Catatan 1', 'Test catatan RO', ''),
(2, 1, 17, 1, '2019-04-02 14:20:09', '2019-04-10 13:42:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-04-10 13:42:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0, 1, 0, 0, 2, 'Test 02', '5', '2019-04-20 00:00:00', 'approved', 'transfer', 'Transferjjsjsj', 'Transfer ke rek 09609860986', ''),
(3, 1, 41, 2, '2019-04-02 14:22:02', '2019-04-10 13:42:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-04-10 13:42:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0, 1, 0, 0, 3, 'Test 03', '5', '2019-04-10 00:00:00', 'approved', 'cash', 'Catatan 3', 'Catatan RO 3', ''),
(4, 1, 12, 1, '2019-04-02 14:23:08', '2019-04-11 14:09:56', '2019-04-11 14:10:16', '0000-00-00 00:00:00', '2019-04-11 14:11:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 1, 1, 0, 0, 4, 'Test 04', '10', '2019-04-26 00:00:00', 'approved', 'transfer', 'Rek 0929892892', 'Pembayaran transfer', ''),
(5, 1, 1, 1, '2019-04-04 09:06:09', '2019-04-10 13:42:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-04-10 13:42:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0, 1, 0, 0, 5, 'Test 044', '5', '2019-04-22 00:00:00', 'approved', 'cash', 'Catatan 3a', 'sdddddddd', ''),
(7, 1, 1, 1, '2019-04-08 11:08:36', '2019-04-26 15:58:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-04-26 15:59:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0, 1, 0, 0, 7, 'Test 05', '5', '2019-04-24 00:00:00', 'approved', 'cash', 'Tunai', 'Pembayaran tunai', ''),
(8, 1, 8, 1, '2019-04-08 13:04:28', '2019-04-26 16:00:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0, 0, 0, 0, 8, 'Internet', '5', '2019-04-29 00:00:00', 'submited', 'transfer', 'Mandiri Rek 0808080808080', 'Transfer', ''),
(9, 1, 1, 1, '2019-04-11 11:06:55', '2019-04-11 14:01:57', '2019-04-11 14:02:19', '0000-00-00 00:00:00', '2019-04-11 14:02:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 1, 1, 0, 0, 9, 'Wow', '1', '2019-04-18 00:00:00', 'approved', 'cash', 'Catatan 1', 'fe80::e0f0:ee7c:152f:7a86%10', ''),
(10, 1, 10, 1, '2019-04-26 14:23:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, 'Snack', '5', '2019-04-30 00:00:00', 'draf', 'cash', 'Tunai', 'Tunai Tunai Tunai', ''),
(11, 1, 1, 1, '2019-04-26 14:28:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 2, 'tesssssssssssssss', '5', '2019-05-01 00:00:00', 'draf', 'cash', 'Transferjjsjsj', '', ''),
(12, 1, 10, 1, '2019-04-26 14:29:14', '2019-05-15 14:12:04', '2019-05-15 14:12:27', '0000-00-00 00:00:00', '2019-05-15 14:12:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 1, 1, 0, 0, 3, 'Hmmmmmmmmmmmm', '1', '2019-04-27 00:00:00', 'approved', 'transfer', 'Transferjjsjsj', 'addRequisition addRequisition', ''),
(13, 1, 1, 1, '2019-05-02 09:43:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 4, 'test', '5', '2019-05-08 00:00:00', 'draf', 'cash', 'Rek 0929892892', 'sdegsgrsr', '');

-- --------------------------------------------------------

--
-- Table structure for table `ro_attachment`
--

CREATE TABLE IF NOT EXISTS `ro_attachment` (
`id_atc` int(11) NOT NULL,
  `id_ro` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `added` datetime DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL,
  `note` text,
  `file_dir` varchar(255) NOT NULL,
  `file_link` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_ext` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ro_attachment`
--

INSERT INTO `ro_attachment` (`id_atc`, `id_ro`, `id_user`, `added`, `title`, `note`, `file_dir`, `file_link`, `file_size`, `file_ext`) VALUES
(1, 12, 1, '2019-05-03 10:44:54', 'test 001', 'test 001 test 001 test 001', 'ro', '1_test 001.docx', 534182, 'docx'),
(3, 12, 1, '2019-05-03 10:45:53', 'test 003', 'test 003 test 003 test 003', 'ro', '3_test 003.png', 21088, 'png'),
(4, 11, 1, '2019-05-16 14:44:29', 'palette', 'color palette', 'ro', '4_palette.png', 3211, 'png');

-- --------------------------------------------------------

--
-- Table structure for table `ro_item`
--

CREATE TABLE IF NOT EXISTS `ro_item` (
`id_roi` int(11) NOT NULL,
  `id_ro` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `nominal` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `ar_add` enum('0','1') DEFAULT '0',
  `ar_nominal` int(11) NOT NULL DEFAULT '0',
  `ar_qty` int(11) NOT NULL DEFAULT '0',
  `note` text,
  `lampiran` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `ro_item`
--

INSERT INTO `ro_item` (`id_roi`, `id_ro`, `item_name`, `vendor`, `nominal`, `qty`, `ar_add`, `ar_nominal`, `ar_qty`, `note`, `lampiran`) VALUES
(1, 4, 'Test item', 'Vendor 1', 1500000, 3, '0', 0, 0, NULL, ''),
(2, 3, 'Item 2', 'Vendor 2', 250000, 7, '0', 0, 0, NULL, ''),
(3, 2, 'Item 3', 'Vendor 3', 450000, 5, '0', 0, 0, NULL, ''),
(4, 1, 'Indomie', 'Indofood', 40000, 25, '0', 0, 0, NULL, ''),
(5, 5, 'Dsssss', 'dsds', 500000, 5, '0', 0, 0, NULL, ''),
(6, 6, 'Infaq', 'Pribadi', 50000, 32, '0', 0, 0, NULL, ''),
(7, 5, 'test', 'Indo123', 25500, 21, '0', 0, 0, NULL, ''),
(8, 5, 'yteryt', 'Ussuus', 12333, 11, '0', 0, 0, NULL, ''),
(9, 5, 'test lagi', 'sdfg', 3460, 153, '0', 0, 0, NULL, ''),
(10, 5, '123434', 'sdfg', 34600, 13, '0', 0, 0, NULL, ''),
(11, 7, 'tst', '876876', 6660, 81, '0', 0, 0, NULL, ''),
(12, 8, 'Indomie', 'Indofood', 25000, 4, '0', 0, 0, NULL, ''),
(13, 9, 'Saaaa', 'aaaaa', 260000, 2, '0', 0, 0, NULL, ''),
(14, 9, 'aaaaaaaaa', 'aaaaaaaaaaaa', 16660, 3, '0', 0, 0, NULL, ''),
(15, 9, 'zzzz', 'zzzzz', 100000, 19, '0', 0, 0, NULL, ''),
(16, 10, 'Listrik 1', 'PLN', 550000, 3, '0', 0, 0, NULL, ''),
(17, 7, 'Jeruk', 'Pepohonan Hijau', 25000, 4, '0', 0, 0, NULL, ''),
(18, 7, 'Kacang Goreng', 'Garuda', 10000, 12, '0', 0, 0, NULL, ''),
(19, 7, 'Kopi', 'Biji-bijian', 25000, 5, '0', 0, 0, NULL, ''),
(20, 12, 'Tess', 'Tess', 50000, 5, '0', 0, 0, NULL, ''),
(21, 11, 'Testbsbbbs', 'vvvvv', 35000, 21, '0', 0, 0, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `to_item`
--

CREATE TABLE IF NOT EXISTS `to_item` (
`id_toi` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  `id_ro` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `to_item`
--

INSERT INTO `to_item` (`id_toi`, `id_to`, `id_ro`) VALUES
(6, 4, 1),
(7, 4, 6),
(8, 4, 3),
(9, 4, 2),
(10, 4, 5),
(11, 5, 9),
(12, 6, 10),
(13, 7, 12);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_order`
--

CREATE TABLE IF NOT EXISTS `transfer_order` (
`id_to` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `added` datetime DEFAULT '0000-00-00 00:00:00',
  `approved` datetime DEFAULT '0000-00-00 00:00:00',
  `rejected` datetime DEFAULT '0000-00-00 00:00:00',
  `approved_by` int(11) NOT NULL DEFAULT '0',
  `rejected_by` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `priority` enum('1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '10',
  `deadline` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('submited','approved','rejected') DEFAULT 'submited',
  `payment_method` enum('cash','transfer') DEFAULT 'cash',
  `payment_note` varchar(255) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `transfer_order`
--

INSERT INTO `transfer_order` (`id_to`, `id_user`, `added`, `approved`, `rejected`, `approved_by`, `rejected_by`, `number`, `priority`, `deadline`, `status`, `payment_method`, `payment_note`, `note`) VALUES
(4, 1, '2019-04-10 13:45:24', '2019-04-10 13:45:34', '0000-00-00 00:00:00', 1, 0, 1, '5', '2019-04-12 00:00:00', 'approved', 'cash', 'Transferjjsjsj', ''),
(5, 1, '2019-04-11 14:03:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 2, '5', '0000-00-00 00:00:00', 'submited', 'cash', '', ''),
(6, 1, '2019-04-15 11:47:16', '2019-04-15 11:47:31', '0000-00-00 00:00:00', 1, 0, 3, '5', '2019-04-28 00:00:00', 'approved', 'cash', 'Tunai', 'sddsdsds'),
(7, 1, '2019-05-15 14:13:18', '2019-05-15 14:13:44', '0000-00-00 00:00:00', 1, 0, 1, '5', '2019-05-31 00:00:00', 'approved', 'cash', 'Catatan 1', 'Catatan 1 Catatan 1 Catatan 1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `id_dep` int(11) NOT NULL,
  `added` datetime DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `access` enum('pending','freeze','ro_initiator','to_initiator','reviewer','approver','developer') DEFAULT 'pending'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_dep`, `added`, `username`, `password`, `full_name`, `phone`, `access`) VALUES
(1, 4, '2018-10-24 17:20:01', 'Arfaq', '202cb962ac59075b964b07152d234b70', 'Akhmad Arfaq Rosyada', '082136830355', 'developer'),
(4, 3, '2018-11-27 13:29:30', 'Supri', '202cb962ac59075b964b07152d234b70', 'Supriyanto', '085716291126', 'ro_initiator'),
(5, 2, '2018-11-27 13:31:27', 'Dian', '202cb962ac59075b964b07152d234b70', 'Dian Rosdiana', '085695179744', 'to_initiator'),
(6, 1, '2018-11-27 13:32:32', 'Syamsul', '202cb962ac59075b964b07152d234b70', 'Syamsul Ma''arif', '08170712525', 'reviewer'),
(7, 1, '2018-11-27 13:32:50', 'ES', '202cb962ac59075b964b07152d234b70', 'Edi Sukur', '087888820266', 'approver'),
(8, 5, '2018-11-27 13:29:30', 'Febri', '202cb962ac59075b964b07152d234b70', 'Febri Fransiska', '087797408977', 'ro_initiator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc`
--
ALTER TABLE `acc`
 ADD PRIMARY KEY (`id_acc`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id_cat`), ADD KEY `id_ctg` (`id_ctg`);

--
-- Indexes for table `cat_group`
--
ALTER TABLE `cat_group`
 ADD PRIMARY KEY (`id_ctg`);

--
-- Indexes for table `departement`
--
ALTER TABLE `departement`
 ADD PRIMARY KEY (`id_dep`);

--
-- Indexes for table `fund_in`
--
ALTER TABLE `fund_in`
 ADD PRIMARY KEY (`id_fin`), ADD KEY `id_ro` (`id_ro`);

--
-- Indexes for table `fund_out`
--
ALTER TABLE `fund_out`
 ADD PRIMARY KEY (`id_fout`), ADD KEY `id_ro` (`id_ro`);

--
-- Indexes for table `requisition_order`
--
ALTER TABLE `requisition_order`
 ADD PRIMARY KEY (`id_ro`), ADD KEY `id_user` (`id_user`), ADD KEY `id_cat` (`id_cat`), ADD KEY `id_acc` (`id_acc`);

--
-- Indexes for table `ro_attachment`
--
ALTER TABLE `ro_attachment`
 ADD PRIMARY KEY (`id_atc`), ADD KEY `id_ro` (`id_ro`);

--
-- Indexes for table `ro_item`
--
ALTER TABLE `ro_item`
 ADD PRIMARY KEY (`id_roi`), ADD KEY `id_ro` (`id_ro`);

--
-- Indexes for table `to_item`
--
ALTER TABLE `to_item`
 ADD PRIMARY KEY (`id_toi`), ADD KEY `id_to` (`id_to`), ADD KEY `id_ro` (`id_ro`);

--
-- Indexes for table `transfer_order`
--
ALTER TABLE `transfer_order`
 ADD PRIMARY KEY (`id_to`), ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`), ADD KEY `id_dep` (`id_dep`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc`
--
ALTER TABLE `acc`
MODIFY `id_acc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `cat_group`
--
ALTER TABLE `cat_group`
MODIFY `id_ctg` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `departement`
--
ALTER TABLE `departement`
MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fund_in`
--
ALTER TABLE `fund_in`
MODIFY `id_fin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `fund_out`
--
ALTER TABLE `fund_out`
MODIFY `id_fout` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `requisition_order`
--
ALTER TABLE `requisition_order`
MODIFY `id_ro` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ro_attachment`
--
ALTER TABLE `ro_attachment`
MODIFY `id_atc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ro_item`
--
ALTER TABLE `ro_item`
MODIFY `id_roi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `to_item`
--
ALTER TABLE `to_item`
MODIFY `id_toi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `transfer_order`
--
ALTER TABLE `transfer_order`
MODIFY `id_to` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ro_attachment`
--
ALTER TABLE `ro_attachment`
ADD CONSTRAINT `ro_attachment_ibfk_1` FOREIGN KEY (`id_ro`) REFERENCES `requisition_order` (`id_ro`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
