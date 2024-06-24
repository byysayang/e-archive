-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 09:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_arsip`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kardus`
--

CREATE TABLE `tbl_kardus` (
  `id_kardus` int(11) NOT NULL,
  `kd_kardus` varchar(50) NOT NULL,
  `judul_kardus` varchar(100) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `id_shaf` int(11) NOT NULL,
  `sub_total_kardus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `id_uk` int(11) NOT NULL,
  `status_pegawai` enum('Aktif','Nonaktif') NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `skpd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id_pegawai`, `nip`, `nama_pegawai`, `id_uk`, `status_pegawai`, `jabatan`, `skpd`) VALUES
(1, '19811217 201001 2 003', 'a123b456', 1, 'Aktif', 'Pengelola Keuangan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN SURABAYA - SUB '),
(2, '19820511 201001 1 004', 'a123b457', 2, 'Aktif', 'Pengadministrasi Perencanaan dan Program', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN - SEK'),
(3, '19761216 201001 1 001', 'a123b458', 3, 'Aktif', 'Pengadministrasi perizinan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN - SUB'),
(4, '19940222 201903 1 010', 'a123b459', 4, 'Aktif', 'Pengawas Jalan Dan Jembatan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN BANYUWANGI - SE'),
(5, '19691108 199302 1 001', 'a123b460', 5, 'Aktif', 'Pengolah Data', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN - SEK'),
(6, '19700402 199203 1 011', 'a123b461', 6, 'Aktif', 'Pengadministrasi Perencanaan dan Program', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PROBOLINGGO - S'),
(7, '19680208 199103 1 008', 'a123b462', 7, 'Aktif', 'Pemelihara Jalan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MOJOKERTO - SEK'),
(8, '19670717 198810 1 001', 'a123b463', 8, 'Aktif', 'Pengadministrasi Umum', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN - SUB'),
(9, '19820220 202321 1 009', 'a123b464', 9, 'Aktif', 'Teknik Jalan dan Jembatan ()', 'DINAS PEKERJAAN UMUM BINA MARGA - BIDANG PEMBANGUNAN DAN PENINGKATAN - SEKSI PELAKSANAAN PEMBANGUNAN'),
(10, '19660326 198603 1 009', 'a123b465', 10, 'Aktif', 'KEPALA SUB BAGIAN', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN - SUB'),
(11, '19961027 202204 1 001', 'a123b466', 11, 'Aktif', 'Pengawas Jalan Dan Jembatan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN KEDIRI - SEKSI '),
(12, '19730223 200701 1 012', 'a123b467', 12, 'Aktif', 'Pengelola Pemeliharaan Jalan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN JEMBER - SEKSI '),
(13, '19861204 201503 1 005', 'a123b468', 13, 'Aktif', 'Pranata Pengelolaan Leger Jalan', 'DINAS PEKERJAAN UMUM BINA MARGA - BIDANG PENGATURAN DAN PENGENDALIAN - SEKSI PENGENDALIAN JALAN DAN '),
(14, '19660317 199303 1 006', 'a123b469', 14, 'Aktif', 'Pengadministrasi Perencanaan dan Program', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN - SEK'),
(15, '19940726 201903 1 008', 'a123b470', 15, 'Aktif', 'Teknik Jalan dan Jembatan Keahlian Ahli Pertama (III/a)', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MOJOKERTO - SEK'),
(16, '19941024 201903 1 008', 'a123b471', 16, 'Aktif', 'Analis Jalan Jembatan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN - SEK'),
(17, '19880614 202204 1 002', 'a123b472', 17, 'Aktif', 'Pengawas Jalan Dan Jembatan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN BOJONEGORO - SE'),
(18, '19700418 200701 1 012', 'a123b473', 18, 'Aktif', 'Operator Alat Berat', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN JEMBER - SEKSI '),
(19, '19790201 201001 1 002', 'a123b474', 19, 'Aktif', 'Pengawas Jalan Dan Jembatan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MADIUN - SEKSI '),
(20, '19930912 202321 1 021', 'a123b475', 20, 'Aktif', 'Teknik Jalan dan Jembatan ()', 'DINAS PEKERJAAN UMUM BINA MARGA - BIDANG PEMBANGUNAN DAN PENINGKATAN - SEKSI PELAKSANAAN PEMBANGUNAN'),
(21, '19840722 202221 1 001', 'a123b476', 21, 'Aktif', 'Teknik Jalan dan Jembatan ()', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN JEMBER - SEKSI '),
(22, '19721120 200701 1 007', 'a123b477', 22, 'Aktif', 'Pengadministrasi perizinan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MADIUN - SUB BA'),
(23, '19680613 198903 1 006', 'a123b478', 23, 'Aktif', 'Pengelola Pembangunan Dan Peningkatan Jalan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MOJOKERTO - SEK'),
(24, '19930827 202321 1 017', 'a123b479', 24, 'Aktif', 'Teknik Jalan dan Jembatan ()', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN KEDIRI - SEKSI '),
(25, '19770803 201101 1 007', 'a123b480', 25, 'Aktif', 'Teknik Jalan dan Jembatan Keahlian Ahli Muda (III/c)', 'DINAS PEKERJAAN UMUM BINA MARGA - BIDANG BINA TEKNIK'),
(26, '19660802 199403 1 010', 'a123b481', 26, 'Aktif', 'Pengadministrasi Umum', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN BANYUWANGI - SU'),
(27, '19700218 199403 1 005', 'a123b482', 27, 'Aktif', 'KEPALA UPT', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PROBOLINGGO'),
(28, '19670822 198802 1 002', 'a123b483', 28, 'Aktif', 'Pengadministrasi Keuangan', 'DINAS PEKERJAAN UMUM BINA MARGA - SEKRETARIAT'),
(29, '19690808 198803 1 002', 'a123b484', 29, 'Aktif', 'Pengadministrasi perizinan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN SURABAYA - SUB '),
(30, '19780805 201001 1 004', 'a123b485', 30, 'Aktif', 'KEPALA SUB BAGIAN', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN BANYUWANGI - SU'),
(31, '19740817 201001 1 002', 'a123b486', 31, 'Aktif', 'Pengelola Pemanfaatan Barang Milik Daerah', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MALANG - SUB BA'),
(32, '19780501 200901 1 007', 'a123b487', 32, 'Aktif', 'Pengelola Keuangan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN - SUB'),
(33, '19680328 199103 1 005', 'a123b488', 33, 'Aktif', 'Pramu Bakti', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN - SUB'),
(34, '19840802 201412 1 002', 'a123b489', 34, 'Aktif', 'Pemelihara Jalan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PACITAN - SEKSI'),
(35, '19710401 199903 1 003', 'a123b490', 35, 'Aktif', 'KEPALA BIDANG', 'DINAS PEKERJAAN UMUM BINA MARGA - BIDANG PEMELIHARAAN'),
(36, '19810808 201001 1 004', 'a123b491', 36, 'Aktif', 'Analis Jalan Jembatan', 'DINAS PEKERJAAN UMUM BINA MARGA - BIDANG PEMELIHARAAN - SEKSI PEMELIHARAAN JEMBATAN'),
(37, '19860323 201001 1 013', 'a123b492', 37, 'Aktif', 'KEPALA SEKSI', 'DINAS PEKERJAAN UMUM BINA MARGA - BIDANG PEMBANGUNAN DAN PENINGKATAN - SEKSI PELAKSANAAN PEMBANGUNAN'),
(38, '19730705 201001 1 005', 'a123b493', 38, 'Aktif', 'Pengelola Keuangan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS LABORATORIUM PENGUJIAN - SUB BAGIAN TATA USA'),
(39, '19711217 200701 1 011', 'a123b494', 39, 'Aktif', 'Pengelola Keuangan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MOJOKERTO - SUB'),
(40, '19690602 198802 1 001', 'a123b495', 40, 'Aktif', 'Pengadministrasi Perencanaan dan Program', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN SURABAYA - SEKS'),
(41, '19950515 201903 2 022', 'a123b496', 41, 'Aktif', 'Pengelola Teknologi Informasi', 'DINAS PEKERJAAN UMUM BINA MARGA - SEKRETARIAT - SUB BAGIAN UMUM DAN KEPEGAWAIAN'),
(42, '19971016 202204 2 001', 'a123b497', 42, 'Aktif', 'Verifikator Keuangan', 'DINAS PEKERJAAN UMUM BINA MARGA - SEKRETARIAT'),
(43, '19960206 201903 2 014', 'a123b498', 43, 'Aktif', 'Analis Jalan Jembatan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS LABORATORIUM PENGUJIAN - SEKSI MANAJEMEN MUT'),
(44, '19690214 199103 1 007', 'a123b499', 44, 'Aktif', 'KEPALA SEKSI', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN - SEK'),
(45, '19961111 202321 1 014', 'a123b500', 45, 'Aktif', 'Teknik Jalan dan Jembatan ()', 'DINAS PEKERJAAN UMUM BINA MARGA - BIDANG BINA TEKNIK - SEKSI REKAYASA JALAN DAN JEMBATAN'),
(46, '19681110 199903 1 007', 'a123b501', 46, 'Aktif', 'KEPALA UPT', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN KEDIRI'),
(47, '19970722 202204 1 001', 'a123b502', 47, 'Aktif', 'Pengawas Jalan Dan Jembatan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MALANG - SEKSI '),
(48, '19940402 201905 1 001', 'a123b503', 48, 'Aktif', 'Analis Jalan Jembatan', 'DINAS PEKERJAAN UMUM BINA MARGA - UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN JEMBER'),
(49, '19960410 202204 1 001', 'a123b504', 49, 'Aktif', 'Verifikator Keuangan', 'DINAS PEKERJAAN UMUM BINA MARGA - SEKRETARIAT'),
(50, '656757657', 'gcghcghghc', 14, 'Aktif', 'hjhjbhj', 'dfhhbh');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` int(11) NOT NULL,
  `kd_rak` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `baris_ke` varchar(5) NOT NULL,
  `kolom_ke` varchar(5) NOT NULL,
  `id_shaf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `kd_rak`, `keterangan`, `baris_ke`, `kolom_ke`, `id_shaf`) VALUES
(1, 'A1', 'RUANG ARSIP', '1', '1', 1),
(2, 'A2', 'RUANG ARSIP', '1', '1', 2),
(3, 'A3', 'RUANG ARSIP', '2', '1', 2),
(4, 'A4-1', 'KEPEGAWAIAN', '1', '1', 3),
(5, 'A4-2', 'KEPEGAWAIAN', '1', '2', 3),
(6, 'A5-1', 'KEPEGAWAIAN', '2', '1', 3),
(7, 'A5-2', 'KEPEGAWAIAN', '2', '2', 3),
(8, 'A6-1', 'KEPEGAWAIAN', '1', '1', 4),
(9, 'A6-2', 'KEPEGAWAIAN', '1', '2', 4),
(10, 'A7-1', 'KEPEGAWAIAN', '2', '1', 4),
(11, 'A7-2', 'KEPEGAWAIAN', '2', '2', 4),
(12, 'B1-1', 'KEPEGAWAIAN', '1', '1', 5),
(13, 'B1-2', 'KEPEGAWAIAN', '1', '2', 5),
(14, 'B2-1', 'ASET 1', '2', '1', 5),
(15, 'B2-2', 'ASET 1', '2', '2', 5),
(16, 'C1-1', 'PEMELIHARAAN', '2', '1', 6),
(17, 'C1-2', 'PEMELIHARAAN', '2', '2', 6),
(18, 'C10', 'PEMELIHARAAN HIBAH', '2', '5', 7),
(19, 'C2-1', 'PEMELIHARAAN', '1', '1', 6),
(20, 'C2-2', 'PEMELIHARAAN', '1', '2', 6),
(21, 'C3-3', 'PEMELIHARAAN', '1', '3', 6),
(22, 'C3-4', 'PEMELIHARAAN', '1', '4', 6),
(23, 'C4-3', 'PEMELIHARAAN', '2', '3', 5),
(24, 'C4-4', 'PEMELIHARAAN', '2', '4', 5),
(25, 'C5', 'PEMELIHARAAN HIBAH', '1', '5', 5),
(26, 'C6', 'PEMELIHARAAN HIBAH', '2', '5', 5),
(27, 'C7', 'PEMELIHARAAN HIBAH', '1', '5', 6),
(28, 'C8', 'PEMELIHARAAN HIBAH', '2', '5', 6),
(29, 'C9', 'PEMELIHARAAN HIBAH', '1', '5', 7),
(30, 'D1-3', 'TURDAL', '1', '3', 4),
(31, 'D1-4', 'TURDAL', '1', '4', 4),
(32, 'D2-3', 'TURDAL', '2', '3', 4),
(33, 'D2-4', 'TURDAL', '2', '4', 4),
(34, 'D3-3', 'TURDAL', '1', '3', 5),
(35, 'D3-4', 'TURDAL', '1', '4', 5),
(36, 'E1', 'GUDANG PAJAK', '1', '2', 1),
(37, 'E10', '', '1', '3', 1),
(38, 'E2', 'GUDANG PAJAK', '1', '2', 2),
(39, 'E3', 'GUDANG PAJAK', '2', '2', 2),
(40, 'E4-3', 'GUDANG PAJAK', '1', '3', 3),
(41, 'E4-4', 'GUDANG PAJAK', '1', '4', 3),
(42, 'E5-3', 'GUDANG PAJAK', '2', '3', 3),
(43, 'E5-4', 'GUDANG PAJAK', '2', '4', 3),
(44, 'E6', 'SUNGRAM', '2', '5', 3),
(45, 'E7', 'SUNGRAM', '1', '5', 3),
(46, 'E8', '', '2', '3', 2),
(47, 'E9', '', '1', '3', 2),
(48, 'F1-1', 'KEUANGAN', '2', '1', 7),
(49, 'F1-2', 'KEUANGAN', '2', '2', 7),
(50, 'F2-1', 'DEPO PERALATAN', '1', '1', 7),
(51, 'F2-2', 'DEPO PERALATAN', '1', '2', 7),
(52, 'F3-1', 'BISTEK', '1', '1', 8),
(53, 'F3-2', 'BISTEK', '1', '2', 8),
(54, 'F3-3', 'BISTEK', '1', '3', 8),
(55, 'F3-4', 'BISTEK', '1', '4', 8),
(56, 'F3-5', 'BISTEK', '1', '5', 8),
(57, 'P1-3', 'PEMBANGUNAN', '2', '3', 6),
(58, 'P1-4', 'PEMBANGUNAN', '2', '4', 6),
(59, 'P2-3', 'PEMBANGUNAN', '1', '3', 7),
(60, 'P2-4', 'PEMBANGUNAN', '1', '4', 7),
(61, 'P3-3', 'PEMBANGUNAN', '2', '3', 7),
(62, 'P3-4', 'PEMBANGUNAN', '2', '4', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shaf`
--

CREATE TABLE `tbl_shaf` (
  `id_shaf` int(11) NOT NULL,
  `kd_shaf` varchar(10) NOT NULL,
  `kt_shaf` varchar(50) NOT NULL,
  `jumlah_baris` varchar(2) NOT NULL,
  `jumlah_kolom` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_shaf`
--

INSERT INTO `tbl_shaf` (`id_shaf`, `kd_shaf`, `kt_shaf`, `jumlah_baris`, `jumlah_kolom`) VALUES
(1, 'S001', 'A1, E1, E10', '1', '3'),
(2, 'S002', 'A2, A3, E2, E3, E8, E9', '2', '3'),
(3, 'S003', 'A4, A5, E4, E5,E6, E7', '2', '5'),
(4, 'S004', 'A6, A7, D1, D2, C11, C12', '2', '5'),
(5, 'S005', 'B1, B2, C4, C5, C6, D3', '2', '5'),
(6, 'S006', 'C1, C2, C3, C6, C7, P1', '2', '5'),
(7, 'S007', 'C9, C10, F1, F2, P2, P3', '2', '5'),
(8, 'S008', 'F3', '1', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kd_transaksi` varchar(50) NOT NULL,
  `judul_transaksi` varchar(200) NOT NULL,
  `tgl_diterima` date NOT NULL,
  `id_penerima` int(11) NOT NULL,
  `id_pengirim` int(11) NOT NULL,
  `jumlah_kardus` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `kd_transaksi`, `judul_transaksi`, `tgl_diterima`, `id_penerima`, `id_pengirim`, `jumlah_kardus`) VALUES
(1, 'T001', 'Berkas File 2019', '2024-06-03', 14, 20, 10),
(2, 'T002', 'Berkas File Sungram 2010-2023', '2024-05-31', 16, 19, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id_uk` int(11) NOT NULL,
  `kd_uk` varchar(25) NOT NULL,
  `eselon_2` varchar(100) NOT NULL,
  `eselon_3` varchar(100) NOT NULL,
  `eselon_4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`id_uk`, `kd_uk`, `eselon_2`, `eselon_3`, `eselon_4`) VALUES
(1, 'UK001', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN SURABAYA ', ' SUB BAGIAN TATA USAHA'),
(2, 'UK002', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(3, 'UK003', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN ', ' SUB BAGIAN TATA USAHA'),
(4, 'UK004', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN BANYUWANGI ', ' SEKSI PEMBANGUNAN DAN PENINGKATAN JALAN DAN JEMBATAN'),
(5, 'UK005', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN ', ' SEKSI PEMBANGUNAN DAN PENINGKATAN JALAN DAN JEMBATAN'),
(6, 'UK006', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PROBOLINGGO ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(7, 'UK007', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MOJOKERTO ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(8, 'UK008', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN ', ' SUB BAGIAN TATA USAHA'),
(9, 'UK009', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' BIDANG PEMBANGUNAN DAN PENINGKATAN ', ' SEKSI PELAKSANAAN PEMBANGUNAN DAN PENINGKATAN JALAN'),
(10, 'UK010', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN ', ' SUB BAGIAN TATA USAHA'),
(11, 'UK011', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN KEDIRI ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(12, 'UK012', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN JEMBER ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(13, 'UK013', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' BIDANG PENGATURAN DAN PENGENDALIAN ', ' SEKSI PENGENDALIAN JALAN DAN JEMBATAN'),
(14, 'UK014', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(15, 'UK015', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MOJOKERTO ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(16, 'UK016', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(17, 'UK017', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN BOJONEGORO ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(18, 'UK018', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN JEMBER ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(19, 'UK019', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MADIUN ', ' SEKSI PEMBANGUNAN DAN PENINGKATAN JALAN DAN JEMBATAN'),
(20, 'UK020', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' BIDANG PEMBANGUNAN DAN PENINGKATAN ', ' SEKSI PELAKSANAAN PEMBANGUNAN DAN PENINGKATAN JEMBATAN'),
(21, 'UK021', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN JEMBER ', ' SEKSI PEMBANGUNAN DAN PENINGKATAN JALAN DAN JEMBATAN'),
(22, 'UK022', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MADIUN ', ' SUB BAGIAN TATA USAHA'),
(23, 'UK023', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MOJOKERTO ', ' SEKSI PEMBANGUNAN DAN PENINGKATAN JALAN DAN JEMBATAN'),
(24, 'UK024', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN KEDIRI ', ' SEKSI PEMBANGUNAN DAN PENINGKATAN JALAN DAN JEMBATAN'),
(25, 'UK025', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' BIDANG BINA TEKNIK', ''),
(26, 'UK026', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN BANYUWANGI ', ' SUB BAGIAN TATA USAHA'),
(27, 'UK027', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PROBOLINGGO', ''),
(28, 'UK028', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' SEKRETARIAT', ''),
(29, 'UK029', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN SURABAYA ', ' SUB BAGIAN TATA USAHA'),
(30, 'UK030', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN BANYUWANGI ', ' SUB BAGIAN TATA USAHA'),
(31, 'UK031', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MALANG ', ' SUB BAGIAN TATA USAHA'),
(32, 'UK032', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN ', ' SUB BAGIAN TATA USAHA'),
(33, 'UK033', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN ', ' SUB BAGIAN TATA USAHA'),
(34, 'UK034', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PACITAN ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(35, 'UK035', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' BIDANG PEMELIHARAAN', ''),
(36, 'UK036', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' BIDANG PEMELIHARAAN ', ' SEKSI PEMELIHARAAN JEMBATAN'),
(37, 'UK037', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' BIDANG PEMBANGUNAN DAN PENINGKATAN ', ' SEKSI PELAKSANAAN PEMBANGUNAN DAN PENINGKATAN JALAN'),
(38, 'UK038', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS LABORATORIUM PENGUJIAN ', ' SUB BAGIAN TATA USAHA'),
(39, 'UK039', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MOJOKERTO ', ' SUB BAGIAN TATA USAHA'),
(40, 'UK040', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN SURABAYA ', ' SEKSI PEMELIHARAAN JALAN DAN JEMBATAN'),
(41, 'UK041', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' SEKRETARIAT ', ' SUB BAGIAN UMUM DAN KEPEGAWAIAN'),
(42, 'UK042', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' SEKRETARIAT', ''),
(43, 'UK043', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS LABORATORIUM PENGUJIAN ', ' SEKSI MANAJEMEN MUTU'),
(44, 'UK044', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN PAMEKASAN ', ' SEKSI PEMBANGUNAN DAN PENINGKATAN JALAN DAN JEMBATAN'),
(45, 'UK045', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' BIDANG BINA TEKNIK ', ' SEKSI REKAYASA JALAN DAN JEMBATAN'),
(46, 'UK046', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN KEDIRI', ''),
(47, 'UK047', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN MALANG ', ' SEKSI PEMBANGUNAN DAN PENINGKATAN JALAN DAN JEMBATAN'),
(48, 'UK048', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' UNIT PELAKSANA TEKNIS PENGELOLA JALAN DAN JEMBATAN JEMBER', ''),
(49, 'UK049', 'DINAS PEKERJAAN UMUM BINA MARGA ', ' SEKRETARIAT', ''),
(51, 'UK050', 'UPTPJJ', 'PJJ', 'KEP'),
(52, 'UK055', 'UPTPJJ', 'PJJ', 'KEP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kardus`
--
ALTER TABLE `tbl_kardus`
  ADD PRIMARY KEY (`id_kardus`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_rak` (`id_rak`),
  ADD KEY `id_shaf` (`id_shaf`);

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_uk` (`id_uk`);

--
-- Indexes for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`),
  ADD KEY `id_shaf` (`id_shaf`);

--
-- Indexes for table `tbl_shaf`
--
ALTER TABLE `tbl_shaf`
  ADD PRIMARY KEY (`id_shaf`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_penerima` (`id_penerima`),
  ADD KEY `id_pengirim` (`id_pengirim`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id_uk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kardus`
--
ALTER TABLE `tbl_kardus`
  MODIFY `id_kardus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_shaf`
--
ALTER TABLE `tbl_shaf`
  MODIFY `id_shaf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id_uk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_kardus`
--
ALTER TABLE `tbl_kardus`
  ADD CONSTRAINT `tbl_kardus_ibfk_1` FOREIGN KEY (`id_rak`) REFERENCES `tbl_rak` (`id_rak`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_kardus_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `tbl_transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_kardus_ibfk_3` FOREIGN KEY (`id_shaf`) REFERENCES `tbl_shaf` (`id_shaf`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD CONSTRAINT `tbl_pegawai_ibfk_1` FOREIGN KEY (`id_uk`) REFERENCES `unit_kerja` (`id_uk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD CONSTRAINT `tbl_rak_ibfk_1` FOREIGN KEY (`id_shaf`) REFERENCES `tbl_shaf` (`id_shaf`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD CONSTRAINT `tbl_transaksi_ibfk_1` FOREIGN KEY (`id_penerima`) REFERENCES `tbl_pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_transaksi_ibfk_2` FOREIGN KEY (`id_pengirim`) REFERENCES `tbl_pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;