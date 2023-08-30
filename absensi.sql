-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 12:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `app_absen_user`
--

CREATE TABLE `app_absen_user` (
  `id_` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `session` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_absen_user`
--

INSERT INTO `app_absen_user` (`id_`, `email`, `password`, `session`) VALUES
(1, 'admin@adminabsen.com', '$2y$10$AtEAlsYB81ztb0xo1wZuVuveym6/c5AtzeeNRW9Ir4/y9MRv.hFWi', '');

-- --------------------------------------------------------

--
-- Table structure for table `app_class`
--

CREATE TABLE `app_class` (
  `id_` int(11) NOT NULL,
  `cl_code` varchar(40) NOT NULL,
  `cl_name` varchar(50) NOT NULL,
  `cl_grade` varchar(4) NOT NULL,
  `cl_major` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_class`
--

INSERT INTO `app_class` (`id_`, `cl_code`, `cl_name`, `cl_grade`, `cl_major`) VALUES
(1, '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA'),
(2, '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA'),
(3, '10-MIPA-3', '10 - MIPA - 3', '10', 'MIPA'),
(5, '10-IPS-1', '10 - IPS - 1', '10', 'IPS'),
(6, '10-IPS-2', '10 - IPS - 2', '10', 'IPS'),
(7, '10-IPS-3', '10 - IPS - 3', '10', 'IPS'),
(8, '10-IPS-4', '10 - IPS - 4', '10', 'IPS'),
(9, '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA'),
(10, '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA'),
(11, '11-MIPA-3', '11 - MIPA - 3', '11', 'MIPA'),
(12, '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA'),
(13, '11-IPS-1', '11 - IPS - 1', '11', 'IPS'),
(14, '11-IPS-2', '11 - IPS - 2', '11', 'IPS'),
(15, '11-IPS-3', '11 - IPS - 3', '11', 'IPS'),
(16, '11-IPS-4', '11 - IPS - 4', '11', 'IPS'),
(17, '12-MIPA-1', '12 - MIPA - 1', '12', 'MIPA'),
(18, '12-MIPA-2', '12 - MIPA - 2', '12', 'MIPA'),
(19, '12-IPS-1', '12 - IPS - 1', '12', 'IPS'),
(20, '12-IPS-2', '12 - IPS - 2', '12', 'IPS'),
(21, '12-IPS-3', '12 - IPS - 3', '12', 'IPS'),
(22, '12-IPS-4', '12 - IPS - 4', '12', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `app_month`
--

CREATE TABLE `app_month` (
  `id_` int(11) NOT NULL,
  `m_code` varchar(2) NOT NULL,
  `m_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_month`
--

INSERT INTO `app_month` (`id_`, `m_code`, `m_name`) VALUES
(1, '01', 'Januari'),
(2, '02', 'Februari'),
(3, '03', 'Maret'),
(4, '04', 'April'),
(5, '05', 'Mei'),
(6, '06', 'Juni'),
(7, '07', 'Juli'),
(8, '08', 'Agustus'),
(9, '09', 'September'),
(10, '10', 'Oktober'),
(11, '11', 'November'),
(12, '12', 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `app_school`
--

CREATE TABLE `app_school` (
  `id_` int(11) NOT NULL,
  `npsn` varchar(8) NOT NULL,
  `sch_name` varchar(50) NOT NULL,
  `sch_address` text NOT NULL,
  `sch_tlp` varchar(15) NOT NULL,
  `sch_email` varchar(50) NOT NULL,
  `sch_web` varchar(50) NOT NULL,
  `sch_logo` varchar(50) NOT NULL,
  `sch_about` text NOT NULL,
  `sch_tp` varchar(20) NOT NULL,
  `sch_semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_school`
--

INSERT INTO `app_school` (`id_`, `npsn`, `sch_name`, `sch_address`, `sch_tlp`, `sch_email`, `sch_web`, `sch_logo`, `sch_about`, `sch_tp`, `sch_semester`) VALUES
(1, '30300700', 'SMAN 1 Jorong', 'Jl. A Yani Km 96 Jorong', '082153240501', 'jorongsmatala@gmail.com', 'http://www.sman1jrg.sch.id', 'logo.jpg', 'Selamat datang di sistem informasi SMA Negeri 1 Jorong', '2019/2020', 'Ganjil');

-- --------------------------------------------------------

--
-- Table structure for table `app_semester`
--

CREATE TABLE `app_semester` (
  `id_` int(11) NOT NULL,
  `sem_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_semester`
--

INSERT INTO `app_semester` (`id_`, `sem_name`) VALUES
(1, 'Ganjil'),
(2, 'Genap');

-- --------------------------------------------------------

--
-- Table structure for table `app_student`
--

CREATE TABLE `app_student` (
  `id_` int(9) UNSIGNED NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `std_nisn` varchar(15) NOT NULL,
  `std_class_code` varchar(30) NOT NULL,
  `std_class_name` varchar(50) NOT NULL,
  `std_grade` varchar(2) NOT NULL,
  `std_major` varchar(30) NOT NULL,
  `std_address` text NOT NULL,
  `std_hp` varchar(15) NOT NULL,
  `std_email` varchar(50) NOT NULL,
  `std_activity` varchar(100) NOT NULL,
  `std_sick` varchar(3) NOT NULL,
  `std_ijin` varchar(3) NOT NULL,
  `std_absen` varchar(3) NOT NULL,
  `std_status` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_student`
--

INSERT INTO `app_student` (`id_`, `std_name`, `std_nisn`, `std_class_code`, `std_class_name`, `std_grade`, `std_major`, `std_address`, `std_hp`, `std_email`, `std_activity`, `std_sick`, `std_ijin`, `std_absen`, `std_status`) VALUES
(1, 'ADE KURNIA RAHMAN', '0048581067', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'JL. BATANG BANYU RT 3 RW 1 DESA ALUR KECAMATAN Kec. Jorong', '085246086618', '', '1', '2', '3', '', '1'),
(2, 'ALFIA ANDINI', '0030657847', '10-IPS-1', '10 - IPS - 1', '12', 'IPS', 'Ambawang RT 9 RW  DESA Ambawang KECAMATAN Kec. Batu Ampar', '08225555707', '', '', '', '', '', '1'),
(3, 'ALFINNUR', '0025312275', '10-IPS-1', '10 - IPS - 1', '12', 'IPS', 'DAMIT RT 2 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082253685264', '', '', '', '', '', '1'),
(4, 'ANI SUPARTI', '0048200749', '10-IPS-1', '10 - IPS - 1', '12', 'IPS', 'Jl. Swasembada RT 10 RW  DESA Jorong KECAMATAN Kec. Jorong', '082256321011', '', '', '', '', '', '1'),
(5, 'ANITA SAFITRI', '0036650834', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'KASTURI RT 3 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085248734508', '', '', '', '', '', '1'),
(6, 'EMIRA NAISYA IMANI', '0044705413', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'KUBIS RT 1 RW 1 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082153439831', '', '', '', '', '', '1'),
(7, 'EMMELLYA WULAN TRIWIDYANA', '3042378820', '10-IPS-1', '10 - IPS - 1', '11', 'IPS', 'Jl. A. Yani RT 2 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '083805776503', '', '', '', '', '', '1'),
(8, 'HENDRA SATIMAN', '0041693139', '10-IPS-1', '10 - IPS - 1', '12', 'IPS', 'DS. ASRI MULYA RT 6 RW 2 DESA ASRI MULYA KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(9, 'JANWAR ADIPITRA', '0045748313', '10-IPS-1', '10 - IPS - 1', '12', 'IPS', 'Krakatau RT 7 RW 7 DESA Asam Jaya KECAMATAN Kec. Jorong', '082352549329', '', '', '', '', '', '1'),
(10, 'JEFRY HERWANTO', '0027030909', '10-IPS-1', '10 - IPS - 1', '11', 'IPS', 'PT. GMK RT 11 RW 0 DESA PT. GMK KECAMATAN Kec. Batu Ampar', '0823391631591', '', '', '', '', '', '1'),
(11, 'M. AFGHA ZIZHOU BOEJASIN', '0042790064', '10-IPS-1', '10 - IPS - 1', '11', 'IPS', 'Desa Alur RT 9 RW 3 DESA Alur KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(12, 'M. ARSYAD', '3033070958', '10-IPS-1', '10 - IPS - 1', '11', 'IPS', 'Asrikaton RT 2 RW 1 DESA Ambawang KECAMATAN Kec. Batu Ampar', '', '', '', '', '', '', '1'),
(13, 'M. GERRY SYAHBANA', '0024346530', '10-IPS-1', '10 - IPS - 1', '12', 'IPS', 'Trans 200 RT 3 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(14, 'M. NUR ADI', '0024577960', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'JL. A. YANI RT 13 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '085390600357', '', '', '', '', '', '1'),
(15, 'M. UMAR', '3035991076', '10-IPS-1', '10 - IPS - 1', '12', 'IPS', 'KARANG TARUNA RT 9 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '082250187011', '', '', '', '', '', '1'),
(16, 'MANSYAH', '0010478569', '10-IPS-1', '10 - IPS - 1', '11', 'IPS', 'Datuk Timang RT 7 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '082154481730', '', '', '', '', '', '1'),
(17, 'MAYLINDA ANGGRAINI', '3048468352', '10-IPS-1', '10 - IPS - 1', '12', 'IPS', 'Jl. H. Marhalit RT 1 RW 1 DESA Asam-Asam KECAMATAN Kec. Jorong', '083141555692', '', '', '', '', '', '1'),
(18, 'MUHAMMAD RAHMAT RIDUAN', '0036933556', '10-IPS-1', '10 - IPS - 1', '11', 'IPS', 'ALUR SABUHUR RT 19 RW 5 DESA SABUHUR KECAMATAN Kec. Jorong', '081298530963', '', '', '', '', '', '1'),
(19, 'MURNI', '0035960286', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'Cempaka Putih RT 2 RW  DESA Batalang KECAMATAN Kec. Jorong', '081233279865', '', '', '', '', '', '1'),
(20, 'MUTIARA', '0030639610', '10-IPS-1', '10 - IPS - 1', '12', 'IPS', 'Banjar Arum RT 16 RW 5 DESA Karang Rejo KECAMATAN Kec. Jorong', '087722948733', '', '', '', '', '', '1'),
(21, 'NIDA HASANAH', '0017511996', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'Tempurejo RT 9 RW  DESA Ambawang KECAMATAN Kec. Batu Ampar', '082251946657', '', '', '', '', '', '1'),
(22, 'NORRAHMAH', '3036249372', '10-IPS-1', '10 - IPS - 1', '11', 'IPS', 'Jl. PDAM RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082252937188', '', '', '', '', '', '1'),
(23, 'NUR HALIZA', '0043299655', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'Jln PDAM RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(24, 'NUR LAILIYANA', '0041466110', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'Jl. Tanjung Perak RT 7 RW 2 DESA Asam-Asam KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(25, 'PATRICIA MAHARANI PUTRI UTAMI', '0030717230', '10-IPS-1', '10 - IPS - 1', '12', 'IPS', 'Muara Asam-Asam RT 2 RW 1 DESA Muara Asam-Asam KECAMATAN Kec. Jorong', '085393882743', '', '', '', '', '', '1'),
(26, 'PRIO IRWANTO', '0036600416', '10-IPS-1', '10 - IPS - 1', '11', 'IPS', 'HANGTUAH RT 4 RW 2 DESA SWARANGAN KECAMATAN Kec. Jorong', '082252088442', '', '', '', '', '', '1'),
(27, 'RAFIKA KHASANAH', '0024555028', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'TEGUHAN RT 4 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082251307094', '', '', '', '', '', '1'),
(28, 'RAJAA ALIM PERDANA', '0030652482', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'Jl.Meratus RT 4 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '089347753711', '', '', '', '', '', '1'),
(29, 'REINDYTO DWI SANTOSO', '0041693140', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'JL. DESA RT 4 RW 2 DESA ASRI MULYA KECAMATAN Kec. Jorong', '087770768055', '', '', '', '', '', '1'),
(30, 'RISKA LIANA', '0043219615', '10-IPS-1', '10 - IPS - 1', '11', 'IPS', 'ALUR SABUHUR RT 21 RW 1 DESA SABUHUR KECAMATAN Kec. Jorong', '081331892772', '', '', '', '', '', '1'),
(31, 'SABARUDDIN', '0046539438', '10-IPS-1', '10 - IPS - 1', '11', 'IPS', 'Jl. Nangka RT 5 RW 3 DESA Asam Jaya KECAMATAN Kec. Jorong', '081251231875', '', '', '', '', '', '1'),
(32, 'SARHANI', '0034308957', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'DAMIT HULU RT 10 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '081350977956', '', '', '', '', '', '1'),
(33, 'SEPIANUR AHMAD NABIL', '0045634294', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'TUNGKARAN NAIK RT 8 RW 4 DESA SWARANGAN KECAMATAN Kec. Jorong', '082250723640', '', '', '', '', '', '1'),
(34, 'SYIFA FITRI ARDISA', '0028839837', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'Banjar Arum RT 15 RW 5 DESA Karang Rejo KECAMATAN Kec. Jorong', '082350176718', '', '', '', '', '', '1'),
(35, 'WARIS CAHYONO', '0030652501', '10-IPS-1', '10 - IPS - 1', '10', 'IPS', 'Jl. A. Yani RT 2 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '083142351460', '', '', '', '', '', '1'),
(36, 'ABDUL LATIF', '0027786238', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'A. Yani RT 2 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '082254979810', '', '', '', '', '', '1'),
(37, 'AFIQ IMAM PAMBUDI', '0041597140', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'Trans 200 RT 2 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '081351232387', '', '', '', '', '', '1'),
(38, 'AHMAD RIYADI', '0030711011', '10-IPS-2', '10 - IPS - 2', '10', 'IPS', 'PDAM RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(39, 'AKHMAD NAWAWI', '0023911954', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'HANGTUAH RT 2 RW 1 DESA SWARANGAN KECAMATAN Kec. Jorong', '085345959529', '', '', '', '', '', '1'),
(40, 'ANGGA RIZKY MAULANA', '0045420088', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'ALUR SABUHUR RT 19 RW 5 DESA SABUHUR KECAMATAN Kec. Jorong', '085345944817', '', '', '', '', '', '1'),
(41, 'ARDI', '0041445189', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'Jl. Ahmad Yani RT 1 RW 1 DESA Alur KECAMATAN Kec. Jorong', '082251715537', '', '', '', '', '', '1'),
(42, 'ARMAN MULYADI', '0039546003', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'Jln Datuk Timang RT 9 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(43, 'CITRA AYUNINGTIAS', '0024618411', '10-IPS-2', '10 - IPS - 2', '12', 'IPS', 'Trans 200 RT 10 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '085348832856', '', '', '', '', '', '1'),
(44, 'DANTI ALMA VIANDRA', '0038906066', '10-IPS-2', '10 - IPS - 2', '10', 'IPS', 'AMBAWANG RT 4 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082255448382', '', '', '', '', '', '1'),
(45, 'DELLA TRI YULIYANTI', '0043903184', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'Trans 200 RT 6 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '081347378468', '', '', '', '', '', '1'),
(46, 'DEVI LIANA', '0041597145', '10-IPS-2', '10 - IPS - 2', '10', 'IPS', 'Dusun Banjar sari RT 10 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '085821501956', '', '', '', '', '', '1'),
(47, 'EFFENDY', '0034143678', '10-IPS-2', '10 - IPS - 2', '12', 'IPS', 'jalan raya damit RT 4 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082251035895', '', '', '', '', '', '1'),
(48, 'HALIMATUS SA\'DIAH', '0031694907', '10-IPS-2', '10 - IPS - 2', '12', 'IPS', 'Jl Raya Damit RT 5 RW 0 DESA Damit KECAMATAN Kec. Batu Ampar', '082153784137', '', '', '', '', '', '1'),
(49, 'HENDRO KARTIKO', '0041597161', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'A YAni RT 12 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '085346973734', '', '', '', '', '', '1'),
(50, 'INDRI MUSYAFA AZIZAH', '0042870180', '10-IPS-2', '10 - IPS - 2', '10', 'IPS', 'AMBAWANG RT 7 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '08225177903', '', '', '', '', '', '1'),
(51, 'ISAHAK', '0042871863', '10-IPS-2', '10 - IPS - 2', '12', 'IPS', 'JL. A. YANI RT 15 RW 4 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '081348777138', '', '', '', '', '', '1'),
(52, 'LUTHFI AFIF ZAKARIYYA', '0037722243', '10-IPS-2', '10 - IPS - 2', '12', 'IPS', 'A YAni RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082251125623', '', '', '', '', '', '1'),
(53, 'M HASANI', '0030652487', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'Jln Raya Jorong RT 4 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '083150492134', '', '', '', '', '', '1'),
(54, 'M. NUR ILHAM APRIYAN', '0012900913', '10-IPS-2', '10 - IPS - 2', '10', 'IPS', 'DUSUN SUMBER AGUNG RT 17 RW 0 DESA DURIAN BUNGKUK KECAMATAN Kec. Batu Ampar', '082153889920', '', '', '', '', '', '1'),
(55, 'MUHAMMAD AGUNG PRAYOGI', '0035124869', '10-IPS-2', '10 - IPS - 2', '12', 'IPS', 'DUSUN KARANG ANYAR RT 16 RW  DESA Damit KECAMATAN Kec. Batu Ampar', '082250719673', '', '', '', '', '', '1'),
(56, 'MUHAMMAD DANI RAHMAN', '0030813620', '10-IPS-2', '10 - IPS - 2', '10', 'IPS', 'HANGTUAH RT 2 RW 1 DESA SWARANGAN KECAMATAN Kec. Jorong', '085386365519', '', '', '', '', '', '1'),
(57, 'MUHAMMAD FAJAR SAKTI', '0042870209', '10-IPS-2', '10 - IPS - 2', '12', 'IPS', 'MUNGGUR KAMINTING RT 6 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082353155036', '', '', '', '', '', '1'),
(58, 'MUHAMMAD HANAFI', '3031838764', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'Ambawang RT 1 RW 1 DESA Ambawang KECAMATAN Kec. Batu Ampar', '082250712734', '', '', '', '', '', '1'),
(59, 'MUHAMMAD RIFKY FIRMANSYAH', '0028817226', '10-IPS-2', '10 - IPS - 2', '10', 'IPS', 'Jl. 11 Maret RT 13 RW 3 DESA Alur KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(60, 'MUSLIMIN IKHSAN', '0025312270', '10-IPS-2', '10 - IPS - 2', '10', 'IPS', 'Bangun Rejo RT 7 RW  DESA Damit KECAMATAN Kec. Batu Ampar', '083143579704', '', '', '', '', '', '1'),
(61, 'NGESTI NUGRAHAENI', '0027201407', '10-IPS-2', '10 - IPS - 2', '12', 'IPS', 'Trans 200 RT 10 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '08152139001', '', '', '', '', '', '1'),
(62, 'NOR HESTI SEPTIANDA', '0036579451', '10-IPS-2', '10 - IPS - 2', '12', 'IPS', 'Cempaka Putih RT 4 RW 1 DESA BATALANG KECAMATAN Kec. Batu Ampar', '081250463612', '', '', '', '', '', '1'),
(63, 'NURHAFIZAH', '0023278188', '10-IPS-2', '10 - IPS - 2', '10', 'IPS', 'Jl. Karang Taruna RT 8 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '083150198376', '', '', '', '', '', '1'),
(64, 'QATHRUN NADA', '0031722576', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'JL. DESA RT 1 RW 1 DESA ASRI MULYA KECAMATAN Kec. Jorong', '081251325245', '', '', '', '', '', '1'),
(65, 'SELVIA', '0031507857', '10-IPS-2', '10 - IPS - 2', '10', 'IPS', 'Raya Jorong RT 11 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '085249797081', '', '', '', '', '', '1'),
(66, 'SULUNG ADHITIYA', '0023911931', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'JL A Yani RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082153473827', '', '', '', '', '', '1'),
(67, 'TARIZA SALSABILLA', '0024555064', '10-IPS-2', '10 - IPS - 2', '11', 'IPS', 'K Taruna RT 5 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '085248037557', '', '', '', '', '', '1'),
(68, 'ULAN DARI', '0030652299', '10-IPS-2', '10 - IPS - 2', '12', 'IPS', 'DAMIT RT 8 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082253714935', '', '', '', '', '', '1'),
(69, 'WAHYU ROMADHONI', '0042870194', '10-IPS-2', '10 - IPS - 2', '12', 'IPS', 'KAMPUNG BARU RT 6 RW 4 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085391294489', '', '', '', '', '', '1'),
(70, 'AHMAD ADIT', '0041841042', '10-IPS-3', '10 - IPS - 3', '12', 'IPS', 'A. Yani Km 103 RT 13 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '082251523444', '', '', '', '', '', '1'),
(71, 'AHMAD RIZANNI', '0033615995', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'Jl. Suka Maju RT 5 RW 2 DESA Jilatan KECAMATAN Kec. Batu Ampar', '085245212126', '', '', '', '', '', '1'),
(72, 'ALDY KURNIA', '0024672171', '10-IPS-3', '10 - IPS - 3', '10', 'IPS', 'TUNGKARAN NAIK RT 7 RW 4 DESA SWARANGAN KECAMATAN Kec. Jorong', '082150179557', '', '', '', '', '', '1'),
(73, 'ANNISA', '0043548859', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'Sukorejo RT 23 RW 0 DESA Jorong KECAMATAN Kec. Jorong', '082256045828', '', '', '', '', '', '1'),
(74, 'ASHAURA DINA FITRIANA', '0029801891', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'Jalan Muara Asam-Asam RT 7 RW 2 DESA Muara Asam-Asam KECAMATAN Kec. Jorong', '083332534582', '', '', '', '', '', '1'),
(75, 'BENI BUDI PANGESTU', '0041597163', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'Trans 200 RT 5 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '081250574260', '', '', '', '', '', '1'),
(76, 'DHAULAT IZHAR', '0049143239', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'JL. A. YANI RT 1 RW 1 DESA SEI BARU KECAMATAN Kec. Jorong', '082157907060', '', '', '', '', '', '1'),
(77, 'DIMAS AGUS PURWANTO', '0014436390', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'JALAN R.A. KARTINI RT 4 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '081251229726', '', '', '', '', '', '1'),
(78, 'DWI NURISMA', '0036650831', '10-IPS-3', '10 - IPS - 3', '12', 'IPS', 'SAWO RT 4 RW 1 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082251272476', '', '', '', '', '', '1'),
(79, 'ERNAWATI', '0043733085', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'trans 200 RT 29 RW 9 DESA Karang rejo KECAMATAN Kec. Jorong', '081521921995', '', '', '', '', '', '1'),
(80, 'I PUTU MADA NUGRAHAYA', '0047489997', '10-IPS-3', '10 - IPS - 3', '12', 'IPS', 'Jl. PT. CPKA RT 5 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '0821591417625', '', '', '', '', '', '1'),
(81, 'INDRA GUNAWAN', '0042870182', '10-IPS-3', '10 - IPS - 3', '10', 'IPS', 'AMBAWANG RT 8 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '085346689428', '', '', '', '', '', '1'),
(82, 'KUSNUL HOTIMAH', '0041862120', '10-IPS-3', '10 - IPS - 3', '12', 'IPS', 'BANGUN SARI RT 16 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '085251553129', '', '', '', '', '', '1'),
(83, 'LILI HIDAYATULLAH', '0041597162', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'A Yani RT 13 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '08524637229', '', '', '', '', '', '1'),
(84, 'LISA ANDRIANI', '0024672179', '10-IPS-3', '10 - IPS - 3', '10', 'IPS', 'HANGTUAH RT 4 RW 2 DESA SWARANGAN KECAMATAN Kec. Jorong', '085386693525', '', '', '', '', '', '1'),
(85, 'M FARIZ ZAUHARI', '0042870188', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'AMBAWANG RT 6 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082254331712', '', '', '', '', '', '1'),
(86, 'M. SAM\'ANI', '0030652497', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'Jl. Katang Taruna RT 9 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '087754176626', '', '', '', '', '', '1'),
(87, 'MARIYAM ALPIYA', '0042870213', '10-IPS-3', '10 - IPS - 3', '10', 'IPS', 'Batang Banyu RT 4 RW 1 DESA Alur KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(88, 'MUHAMMAD BAYU AL FURQON', '0038132347', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'JL. DESA RT 9 RW 3 DESA ASRI MULYA KECAMATAN Kec. Jorong', '081351483355', '', '', '', '', '', '1'),
(89, 'MUHAMMAD DHIYA ULHAQ', '0042842528', '10-IPS-3', '10 - IPS - 3', '10', 'IPS', 'JL. KARYA RT 10 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(90, 'MUHAMMAD FAJAR ASSIDIQ', '3039943302', '10-IPS-3', '10 - IPS - 3', '10', 'IPS', 'Jl. A. Yani RT 10 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '085322292817', '', '', '', '', '', '1'),
(91, 'MUHAMMAD RIZKI INSANI', '0032577217', '10-IPS-3', '10 - IPS - 3', '10', 'IPS', 'SABUHUR RT 9 RW 0 DESA SABUHUR KECAMATAN Kec. Jorong', '085348445773', '', '', '', '', '', '1'),
(92, 'MUHAMMAD RYAN ABDUL AZIZ', '0041597158', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'Trans 200 RT 9 RW 2 DESA Karang rejo KECAMATAN Kec. Jorong', '081348493548', '', '', '', '', '', '1'),
(93, 'MUHAMMAD SIGIT ALWI', '0048347148', '10-IPS-3', '10 - IPS - 3', '12', 'IPS', 'JL.DATUK BUNGUR RT 2 RW 1 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '0859189638713', '', '', '', '', '', '1'),
(94, 'NADA MUSLIMAH', '0036651825', '10-IPS-3', '10 - IPS - 3', '12', 'IPS', 'PT. GMK RT 13 RW 0 DESA PT. GMK KECAMATAN Kec. Batu Ampar', '085251040008', '', '', '', '', '', '1'),
(95, 'RAJUDINOR', '0002735098', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'PDAM RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082254919001', '', '', '', '', '', '1'),
(96, 'RIZKI AZIZAH', '0054207673', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'Desa Asam Jaya RT 7 RW 4 DESA Asam Jaya KECAMATAN Kec. Jorong', '081250183169', '', '', '', '', '', '1'),
(97, 'SAHRUL', '0040693369', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'Damit RT 13 RW 4 DESA Damit KECAMATAN Kec. Batu Ampar', '082357667877', '', '', '', '', '', '1'),
(98, 'SARI YATI', '0058789403', '10-IPS-3', '10 - IPS - 3', '10', 'IPS', 'HANGTUAH RT 4 RW 2 DESA SWARANGAN KECAMATAN Kec. Jorong', '085148214582', '', '', '', '', '', '1'),
(99, 'SATRIO NOVANTO', '0024672173', '10-IPS-3', '10 - IPS - 3', '10', 'IPS', 'HANGTUAH RT 4 RW 2 DESA SWARANGAN KECAMATAN Kec. Jorong', '085347346149', '', '', '', '', '', '1'),
(100, 'SATYA DEVI', '0025353171', '10-IPS-3', '10 - IPS - 3', '11', 'IPS', 'ASRIKATON RT 2 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '085332228844', '', '', '', '', '', '1'),
(101, 'SITI NURAJIZAH', '0042790267', '10-IPS-3', '10 - IPS - 3', '10', 'IPS', 'PAUH RT 0 RW 0 DESA BATALANG KECAMATAN Kec. Batu Ampar', '082252671556', '', '', '', '', '', '1'),
(102, 'SUSI RANIAWATI', '0038176689', '10-IPS-3', '10 - IPS - 3', '12', 'IPS', 'JL.TUNGKARAN NAIK RT 8 RW 4 DESA SWARANGAN KECAMATAN Kec. Jorong', '082255523516', '', '', '', '', '', '1'),
(103, 'ADE RIFKY FEBRIAN', '0047799737', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'Sultan Hasanudin RT 4 RW 1 DESA Asam Jaya KECAMATAN Kec. Jorong', '081381211031', '', '', '', '', '', '1'),
(104, 'AHMAD MAULIDI', '0049867932', '10-IPS-4', '10 - IPS - 4', '12', 'IPS', 'TUNGKARAN NAIK RT 8 RW 4 DESA SWARANGAN KECAMATAN Kec. Jorong', '081254429029', '', '', '', '', '', '1'),
(105, 'AHMAD RASYIDAN', '0028109057', '10-IPS-4', '10 - IPS - 4', '11', 'IPS', 'Ambawang RT 5 RW  DESA Ambawang KECAMATAN Kec. Batu Ampar', '082252064246', '', '', '', '', '', '1'),
(106, 'AINUN JARIAH', '0030750446', '10-IPS-4', '10 - IPS - 4', '12', 'IPS', 'Trans 200 RT 5 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '082251723075', '', '', '', '', '', '1'),
(107, 'ANISSA', '0042870203', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'MUNGGUR KAMINTING RT 12 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '081349502730', '', '', '', '', '', '1'),
(108, 'ANNISA SILVIA PUTRI', '0042724820', '10-IPS-4', '10 - IPS - 4', '12', 'IPS', 'Dusun Bangun Rejo Rt. 07 RT 7 RW  DESA Damit KECAMATAN Kec. Batu Ampar', '081349313963', '', '', '', '', '', '1'),
(109, 'ARMADANI', '0047604088', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'JL. DATUK TIMANG RT 6 RW 4 DESA JORONG KECAMATAN Kec. Jorong', '085348668000', '', '', '', '', '', '1'),
(110, 'ASDAR RIFAI', '0031709500', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'AMBAWANG RT 5 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082253687051', '', '', '', '', '', '1'),
(111, 'AZIZAH NUR RASYIDAH', '0036728287', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'Jl. Makmur RT 9 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '082255834352', '', '', '', '', '', '1'),
(112, 'BAHROMI RAHMAN', '0021405228', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'Desa Asri Mulya RT 13 RW 0 DESA Asri Mulya KECAMATAN Kec. Jorong', '085210403871', '', '', '', '', '', '1'),
(113, 'DEVI DEWI ANGGELA PUTRI', '0029760774', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'ALUR SABUHUR RT 19 RW 5 DESA SABUHUR KECAMATAN Kec. Jorong', '085332838862', '', '', '', '', '', '1'),
(114, 'DIMAS ADITYA', '0042790060', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'Alur RT 6 RW 2 DESA Alur KECAMATAN Kec. Jorong', '083150127747', '', '', '', '', '', '1'),
(115, 'ELSYA PUTRI PRAMITHA', '3036499747', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'Jl. A. Yani RT 1 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '087814874840', '', '', '', '', '', '1'),
(116, 'ERNY RACHMAWATI', '0042871559', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'Jl. Sei. Pampan RT 11 RW 5 DESA Swarangan KECAMATAN Kec. Jorong', '085390802651', '', '', '', '', '', '1'),
(117, 'FADILA IFKA SULASTRI', '0037831683', '10-IPS-4', '10 - IPS - 4', '12', 'IPS', 'MUNGGUR KAMINTING RT 7 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '', '', '', '', '', '', '1'),
(118, 'FINA FEBRIANTI', '0004440904', '10-IPS-4', '10 - IPS - 4', '12', 'IPS', 'KARANG REJO RT 5 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '081352311225', '', '', '', '', '', '1'),
(119, 'FITRI INDRIYANI', '0037088530', '10-IPS-4', '10 - IPS - 4', '11', 'IPS', 'JILATAN ALUR RT 12 RW 5 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '0822515545517', '', '', '', '', '', '1'),
(120, 'HAFIT ANSORI', '0025819892', '10-IPS-4', '10 - IPS - 4', '12', 'IPS', 'Jl. A. Yani, Rt. 12, Rw. 4, Kel. Jorong, Kec. Jorong RT 12 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '085345047622', '', '', '', '', '', '1'),
(121, 'IMAM KURNIANTO', '0045694199', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'AMBAWANG RT 2 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '', '', '', '', '', '', '1'),
(122, 'KHATIMATUL HUSNA', '0041597048', '10-IPS-4', '10 - IPS - 4', '11', 'IPS', 'Ambawang RT 6 RW  DESA Ambawang KECAMATAN Kec. Batu Ampar', '082251934052', '', '', '', '', '', '1'),
(123, 'LIDYA PUTRI MURLIYANI', '0043299648', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'A Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(124, 'MEYLIANI ADITIARA', '3037490139', '10-IPS-4', '10 - IPS - 4', '11', 'IPS', 'Damit RT 1 RW 2 DESA Damit KECAMATAN Kec. Batu Ampar', '082255983763', '', '', '', '', '', '1'),
(125, 'MUHAMMAD AKMALUDIN', '0027776955', '10-IPS-4', '10 - IPS - 4', '11', 'IPS', 'JILATAN ALUR RT 1 RW 1 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082351929812', '', '', '', '', '', '1'),
(126, 'MUHAMMAD ILHAM FADILLA', '0030813623', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'HANGTUAH RT 2 RW 1 DESA SWARANGAN KECAMATAN Kec. Jorong', '081253561528', '', '', '', '', '', '1'),
(127, 'MUHAMMAD RISWANDI', '0042131164', '10-IPS-4', '10 - IPS - 4', '11', 'IPS', 'TEGUHAN RT 1 RW 2 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082159016565', '', '', '', '', '', '1'),
(128, 'MURTI LESTARI', '0042790262', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'BATALANG RT 4 RW 0 DESA BATALANG KECAMATAN Kec. Jorong', '085348303545', '', '', '', '', '', '1'),
(129, 'NUR MUHAMMAD SIDDIQ', '0042870195', '10-IPS-4', '10 - IPS - 4', '12', 'IPS', 'Trans Alur RT 14 RW 3 DESA Alur KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(130, 'NURMAYANTI', '3035240031', '10-IPS-4', '10 - IPS - 4', '11', 'IPS', 'Jl.A. Yani km 112 RT 15 RW 7 DESA Asam-Asam KECAMATAN Kec. Jorong', '082151218553', '', '', '', '', '', '1'),
(131, 'RENA WINDARYANTI', '0026547532', '10-IPS-4', '10 - IPS - 4', '11', 'IPS', 'A Yani RT 4 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '087786631739', '', '', '', '', '', '1'),
(132, 'RISNA WATI', '0043046582', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'TUNGKARN NAIK RT 7 RW 4 DESA SWARANGAN KECAMATAN Kec. Jorong', '082255518766', '', '', '', '', '', '1'),
(133, 'SALSABILA SYIFA NUR KHAIRINA', '0048052470', '10-IPS-4', '10 - IPS - 4', '11', 'IPS', 'Muara Asam-Asam RT 1 RW 1 DESA Muara Asam-Asam KECAMATAN Kec. Jorong', '085281464606', '', '', '', '', '', '1'),
(134, 'SUFIA RAHMADANI', '0035653730', '10-IPS-4', '10 - IPS - 4', '10', 'IPS', 'Trans 200 RT 7 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '082148079154', '', '', '', '', '', '1'),
(135, 'SUTRI PARAMUDITA', '0041693134', '10-IPS-4', '10 - IPS - 4', '11', 'IPS', 'Asri Mulya RT 11 RW 4 DESA Asri Mulya KECAMATAN Kec. Jorong', '081350505588', '', '', '', '', '', '1'),
(136, 'ADHITYA PUTRA', '0042871792', '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA', 'Damit Hulu RT 16 RW 2 DESA Damit Hulu KECAMATAN Kec. Batu Ampar', '085248759862', '', '', '', '', '', '1'),
(137, 'AMELIA WULANDARI', '0041597153', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'BANJAR SARI RT 7 RW 2 DESA KARANG REJO KECAMATAN Kec. Jorong', '0813519557237', '', '', '', '', '', '1'),
(138, 'ANGGI TAUFIQ SYAHRIN RAMADHONY', '0042871794', '10-MIPA-1', '10 - MIPA - 1', '12', 'MIPA', 'PT. GMK RT 14 RW 0 DESA Damit Hulu KECAMATAN Kec. Batu Ampar', '081351069971', '', '', '', '', '', '1'),
(139, 'BAEIHAKI AKBAR', '0042790065', '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA', 'Alur RT 9 RW 2 DESA Alur KECAMATAN Kec. Jorong', '081348629571', '', '', '', '', '', '1'),
(140, 'DODI SETIAWAN', '0024618434', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'Trans 200 RT 5 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '08223546341', '', '', '', '', '', '1'),
(141, 'FEBRI ADI RAHMATDANI', '0039628638', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'ASRIKATON RT 2 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082252938396', '', '', '', '', '', '1'),
(142, 'FEBRIYANTO', '0044318002', '10-MIPA-1', '10 - MIPA - 1', '12', 'MIPA', 'Asrikaton RT 1 RW  DESA Ambawang KECAMATAN Kec. Batu Ampar', '085348364221', '', '', '', '', '', '1'),
(143, 'HIKMAL RIYANTAMA', '0046539444', '10-MIPA-1', '10 - MIPA - 1', '12', 'MIPA', 'Jl. Krakatau RT 9 RW 4 DESA Asam Jaya KECAMATAN Kec. Jorong', '085349337882', '', '', '', '', '', '1'),
(144, 'IPANSYAH', '0043219618', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'ALUR SABUHUR RT 19 RW 5 DESA SABUHUR KECAMATAN Kec. Jorong', '085348252709', '', '', '', '', '', '1'),
(145, 'KIKI KURNIATI', '0029658612', '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA', 'JL. SEBELAS MARET RT 7 RW 3 DESA ALUR KECAMATAN Kec. Jorong', '087841278491', '', '', '', '', '', '1'),
(146, 'KISMAYANTI', '0041693138', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'JL. DESA RT 5 RW 1 DESA ASRI MULYA KECAMATAN Kec. Jorong', '082354866210', '', '', '', '', '', '1'),
(147, 'LUTFIA', '0046801633', '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA', 'Jl. Gang Rahmah RT 8 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '083141112449', '', '', '', '', '', '1'),
(148, 'M YUSUF EFFENDI', '0039746121', '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA', 'Dusun III RT 13 RW 3 DESA Alur KECAMATAN Kec. Jorong', '081935682211', '', '', '', '', '', '1'),
(149, 'M. RIQI AL FARIZ', '0042790263', '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA', 'PAUH RT 6 RW 0 DESA BATALANG KECAMATAN Kec. Jorong', '085251594025', '', '', '', '', '', '1'),
(150, 'MISFA AHRINA', '0035869296', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'HANGTUAH RT 6 RW 3 DESA SWARANGAN KECAMATAN Kec. Jorong', '085348267615', '', '', '', '', '', '1'),
(151, 'MUHAMMAD DIDIN', '0037243083', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'A Yani RT 4 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082158255148', '', '', '', '', '', '1'),
(152, 'MUHAMMAD REZA ELFA', '0048064095', '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA', 'ALUR SABUHUR RT 20 RW 3 DESA SABUHUR KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(153, 'MUHAMMAD RIFA\'I', '0042870204', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'JILATAN ALUR RT 11 RW 5 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082251388955', '', '', '', '', '', '1'),
(154, 'NANDA SUPARDIANSYAH', '0049440951', '10-MIPA-1', '10 - MIPA - 1', '12', 'MIPA', 'BATALANG RT 2 RW 1 DESA BATALANG KECAMATAN Kec. Batu Ampar', '083150489195', '', '', '', '', '', '1'),
(155, 'NELLA DIANA PUTRI', '0048153067', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'AMBAWANG RT 8 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082254923427', '', '', '', '', '', '1'),
(156, 'NORHIKMAH', '0039431756', '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA', 'Munggur Kaminting RT 3 RW 0 DESA Jilatan Alur KECAMATAN Kec. Batu Ampar', '082353031986', '', '', '', '', '', '1'),
(157, 'NOVIYANTI', '0042870202', '10-MIPA-1', '10 - MIPA - 1', '12', 'MIPA', 'JILATAN ALUR RT 5 RW 0 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082336424311', '', '', '', '', '', '1'),
(158, 'NUR SAYYIDAH', '0035776493', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'PT. GMK RT 14 RW 0 DESA Damit Hulu KECAMATAN Kec. Batu Ampar', '082358723467', '', '', '', '', '', '1'),
(159, 'RAMDANI', '0042871561', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'Jl. Sei. Pampan RT 10 RW 5 DESA Swarangan KECAMATAN Kec. Jorong', '085251324098', '', '', '', '', '', '1'),
(160, 'REJA AFRILIYADI', '0042870151', '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA', 'JL. DATUK BUNGUR RT 13 RW 4 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '08524884023', '', '', '', '', '', '1'),
(161, 'SEPTEYANDITA ALLIFIA NOOR RIZKY', '0043219617', '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA', 'ALUR SABUHUR RT 20 RW 1 DESA SABUHUR KECAMATAN Kec. Jorong', '085251179258', '', '', '', '', '', '1'),
(162, 'SEPTIANI DWI ASTUTI', '0037584849', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'MERANTI RT 21 RW 1 DESA SABUHUR KECAMATAN Kec. Jorong', '081255575399', '', '', '', '', '', '1'),
(163, 'SETYO WAHYU NINGSIH', '0036651873', '10-MIPA-1', '10 - MIPA - 1', '12', 'MIPA', 'PASAR MINGGU RT 10 RW 2 DESA SEI BARU KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(164, 'SITI FAUZIAH', '0035914554', '10-MIPA-1', '10 - MIPA - 1', '10', 'MIPA', 'A. Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085350082108', '', '', '', '', '', '1'),
(165, 'SITI NURHALIZA', '0047837290', '10-MIPA-1', '10 - MIPA - 1', '12', 'MIPA', 'Swasembada RT 10 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '08534751196', '', '', '', '', '', '1'),
(166, 'WIDYA AULIA PUTRI', '0032163172', '10-MIPA-1', '10 - MIPA - 1', '12', 'MIPA', 'ASRIKATON RT 5 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082251714336', '', '', '', '', '', '1'),
(167, 'YATI ELISA', '0025171609', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'DAMIT HULU RT 5 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '081251510371', '', '', '', '', '', '1'),
(168, 'YULIANA DEA SAFANA', '0042870147', '10-MIPA-1', '10 - MIPA - 1', '11', 'MIPA', 'Jl. Bawah Binjai Rt. 001 Rw. 001 RT 1 RW 1 DESA Asam-Asam KECAMATAN Kec. Jorong', '085952757861', '', '', '', '', '', '1'),
(169, 'ABDUL KHAIR', '0024605633', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'RAYA DAMIT HULU RT 10 RW 0 DESA Damit Hulu KECAMATAN Kec. Batu Ampar', '082358287851', '', '', '', '', '', '1'),
(170, 'ADITYA MERIEK ALFIAN', '0048486754', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'dusun wonokoyo RT 3 RW  DESA Damit Hulu KECAMATAN Kec. Batu Ampar', '082182265428', '', '', '', '', '', '1'),
(171, 'AHMAD ZAINIL MAKIE', '0041872611', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'Hangtuah RT 1 RW 1 DESA Swarangan KECAMATAN Kec. Jorong', '081348410708', '', '', '', '', '', '1'),
(172, 'AHMAD ZAJULI', '0022342758', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'Trans 200 RT 5 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(173, 'ARBAINAH', '0035653729', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'Trans 200 RT 1 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '082153620661', '', '', '', '', '', '1'),
(174, 'AULIA INSAN', '0042790260', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'BATALANG RT 3 RW 1 DESA BATALANG KECAMATAN Kec. Batu Ampar', '082250516074', '', '', '', '', '', '1'),
(175, 'AYU WULAN NISA', '0025593511', '10-MIPA-2', '10 - MIPA - 2', '11', 'MIPA', 'Jl. A. Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082252218051', '', '', '', '', '', '1'),
(176, 'BAIQ AFRYANTI AYU LESTARI', '0042871558', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'Dusun Banjar Arum ERt. 011 Rw. 003 RT 11 RW 3 DESA Karang Rejo KECAMATAN Kec. Jorong', '082153610001', '', '', '', '', '', '1'),
(177, 'BOYKE ARIA DANA', '0033882197', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'WONOSARI RT 1 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '083150485591', '', '', '', '', '', '1'),
(178, 'ELSA MAYDA', '0035776502', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'TEGUHAN RT 1 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082254911131', '', '', '', '', '', '1'),
(179, 'EVA SAHRANI', '0049790997', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'WONOKOYO RT 2 RW  DESA Damit Hulu KECAMATAN Kec. Batu Ampar', '0822529800680', '', '', '', '', '', '1'),
(180, 'HERLITA ADAWIAH', '0021897395', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'Muara Asam-Asam RT 2 RW 1 DESA Muara Asam-Asam KECAMATAN Kec. Jorong', '085248660216', '', '', '', '', '', '1'),
(181, 'INTAN PANDINI', '0051042360', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'Jl. A. Yani Rt.005/Rw.002, Rt. 5, Rw. 2, Kel. Jorong, Kec. Jorong RT 5 RW 5 DESA Jorong KECAMATAN Kec. Jorong', '081233729960', '', '', '', '', '', '1'),
(182, 'IRMA LESTARI', '0036651831', '10-MIPA-2', '10 - MIPA - 2', '11', 'MIPA', 'Batang Banyu RT 4 RW 1 DESA Alur KECAMATAN Kec. Jorong', '0853499548183', '', '', '', '', '', '1'),
(183, 'ISMALIA YUNISSA PUTRI', '0047993007', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'PDAM RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '081256356878', '', '', '', '', '', '1'),
(184, 'LISA SALSA BILLA', '0044053626', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'DAMIT HULU RT 4 RW 4 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '085393008181', '', '', '', '', '', '1'),
(185, 'MAULIA', '0041597165', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'Trans 200 RT 5 RW 1 DESA Karangrejo KECAMATAN Kec. Jorong', '085252558356', '', '', '', '', '', '1'),
(186, 'MUHAMMAD ARIS PURWANTO', '0043219616', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'Meranti RT 18 RW  DESA Sabuhur KECAMATAN Kec. Jorong', '085251343037', '', '', '', '', '', '1'),
(187, 'MUHAMMAD INDRA SETIADI', '0040933039', '10-MIPA-2', '10 - MIPA - 2', '11', 'MIPA', 'JL. A. YANI KM. 122 RT 12 RW 2 DESA SEI BARU KECAMATAN Kec. Jorong', '081346804063', '', '', '', '', '', '1'),
(188, 'NOVIANTI', '0050470111', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'Jln Sebelas Maret RT 14 RW 3 DESA Alur KECAMATAN Kec. Jorong', '085217737571', '', '', '', '', '', '1'),
(189, 'OKKY SATRIO WARDANI', '0036650836', '10-MIPA-2', '10 - MIPA - 2', '11', 'MIPA', 'JILATAN ALUR RT 11 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '', '', '', '', '', '', '1'),
(190, 'PERDI', '0045337649', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'Jl. Krakatau RT 7 RW 4 DESA Asam Jaya KECAMATAN Kec. Jorong', '082357747880', '', '', '', '', '', '1'),
(191, 'RATIH', '0037142475', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'AMBAWANG RT 7 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '081351744778', '', '', '', '', '', '1'),
(192, 'RAUDATUN NI\'MAH', '0038698888', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'Jl. Sei. Pampan RT 10 RW 5 DESA Suwarangan KECAMATAN Kec. Jorong', '082251063546', '', '', '', '', '', '1'),
(193, 'RAUDHATUL MADINA', '3042212813', '10-MIPA-2', '10 - MIPA - 2', '11', 'MIPA', 'Jl. A. Yani Rt.005/Rw.002, Rt. 5, Rw. 2, Kel. Jorong, Kec. Jorong RT 6 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '082251218436', '', '', '', '', '', '1'),
(194, 'RIZKY', '0036650763', '10-MIPA-2', '10 - MIPA - 2', '11', 'MIPA', 'DAMIT HULU RT 7 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '', '', '', '', '', '', '1'),
(195, 'SITI KHOLIFAH', '0048291021', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'JL. Damit RT 2 RW 0 DESA Damit KECAMATAN Kec. Batu Ampar', '081245204885', '', '', '', '', '', '1'),
(196, 'SITI SA\'DIAH', '0029170571', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'Banjarsari RT 1 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '082151231865', '', '', '', '', '', '1'),
(197, 'SUGENG RIADHI', '0042987196', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'MUNGGUR KAMINTING RT 10 RW 4 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085345631541', '', '', '', '', '', '1'),
(198, 'UJANG WAHYUDI', '0043338937', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'Batang BAnyu RT 3 RW 1 DESA Alur KECAMATAN Kec. Jorong', '083141542354', '', '', '', '', '', '1'),
(199, 'WENDY IRAWAN', '0023071364', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'DAMIT HULU RT 7 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '085245585808', '', '', '', '', '', '1'),
(200, 'YASMADI', '0036650772', '10-MIPA-2', '10 - MIPA - 2', '10', 'MIPA', 'DAMIT HULU RT 2 RW 3 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082153473985', '', '', '', '', '', '1'),
(201, 'YESI SULASTRI', '0036650871', '10-MIPA-2', '10 - MIPA - 2', '12', 'MIPA', 'DAMIT RT 0 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '085350772512', '', '', '', '', '', '1'),
(202, 'ADI CHANDRA', '0042790058', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'Jln Sebelas Maret RT 6 RW 2 DESA Alur KECAMATAN Kec. Jorong', '082255532509', '', '', '', '', '', '1'),
(203, 'AHMAD RAMADANI', '0043219614', '10-MIPA-3', '10 - MIPA - 3', '10', 'MIPA', 'PINUS RT 20 RW 5 DESA SABUHUR KECAMATAN Kec. Jorong', '085252641663', '', '', '', '', '', '1'),
(204, 'AHMAD YADI', '0005402603', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'Jl. A. Yani RT 12 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '082253174994', '', '', '', '', '', '1'),
(205, 'AKHMAD SURYANATA', '0041742030', '10-MIPA-3', '10 - MIPA - 3', '12', 'MIPA', 'JL. A. YANI RT 13 RW 4 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '08315252607808', '', '', '', '', '', '1'),
(206, 'ANDIKA AFRIANSYAH', '0035195489', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'Sumber Jaya RT 5 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '085251168295', '', '', '', '', '', '1'),
(207, 'ANGGUN SRINAWATI', '0041597051', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'Ambawang RT 6 RW 0 DESA Ambawang KECAMATAN Kec. Batu Ampar', '081913314432', '', '', '', '', '', '1'),
(208, 'ARI SANDI', '0035776501', '10-MIPA-3', '10 - MIPA - 3', '12', 'MIPA', 'Damit, Rt. 4, Kel. Damit, Kec. Batu Ampar RT 4 RW 4 DESA Damit KECAMATAN Kec. Batu Ampar', '082357604834', '', '', '', '', '', '1'),
(209, 'DANANG IBRAHIM', '0044813590', '10-MIPA-3', '10 - MIPA - 3', '10', 'MIPA', 'JL. A. YANI RT 19 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '085932947148', '', '', '', '', '', '1'),
(210, 'DIVKY ARDIANTO NOFALDI', '3048287816', '10-MIPA-3', '10 - MIPA - 3', '10', 'MIPA', 'Ambawang RT 13 RW  DESA Ambawang KECAMATAN Kec. Batu Ampar', '081251577001', '', '', '', '', '', '1'),
(211, 'FITRIYANI', '0054195149', '10-MIPA-3', '10 - MIPA - 3', '12', 'MIPA', 'JL. A. YANI RT 9 RW 3 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '085393046137', '', '', '', '', '', '1'),
(212, 'GUSNADI', '0042130442', '10-MIPA-3', '10 - MIPA - 3', '12', 'MIPA', 'JL. A. YANI KM. 118 RT 10 RW 3 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '085251844657', '', '', '', '', '', '1'),
(213, 'HENDRIYANI', '0040973735', '10-MIPA-3', '10 - MIPA - 3', '10', 'MIPA', 'Trans 200 RT 3 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '081254044134', '', '', '', '', '', '1'),
(214, 'IMAM SAMUDRA', '0024553127', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'Banjar Arum RT 13 RW 4 DESA Karang Rejo KECAMATAN Kec. Jorong', '085246957225', '', '', '', '', '', '1'),
(215, 'LIA HIDAYAH', '0031584505', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'TEGUHAN RT 4 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '08134284191', '', '', '', '', '', '1'),
(216, 'LISTIYA NURHAFIZAH', '0043307223', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'A. Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082199036020', '', '', '', '', '', '1'),
(217, 'LULU SUKMA BELLA', '3043498494', '10-MIPA-3', '10 - MIPA - 3', '12', 'MIPA', 'SUKA MAJU RT 1 RW 1 DESA Jilatan KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(218, 'M RIYALDI RAHMAN', '0033320502', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'Jalan Batang Banyu RT 5 RW 1 DESA Alur KECAMATAN Kec. Jorong', '082236301490', '', '', '', '', '', '1'),
(219, 'M. RAVI ARDITA RIZQI', '0042131166', '10-MIPA-3', '10 - MIPA - 3', '10', 'MIPA', 'Bangun Rejo RT 9 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082153058239', '', '', '', '', '', '1'),
(220, 'MARLINA WULANDARI', '3034818145', '10-MIPA-3', '10 - MIPA - 3', '12', 'MIPA', 'Jl. A. Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '087801817012', '', '', '', '', '', '1'),
(221, 'MUHAIMIN', '0036057804', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'BANGUN REJO RT 8 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082352175640', '', '', '', '', '', '1'),
(222, 'MUHAMMAD NUR', '0041445394', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'Telkom RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '08134883971', '', '', '', '', '', '1'),
(223, 'MUHAMMAD NURKHOLIS', '0041136821', '10-MIPA-3', '10 - MIPA - 3', '10', 'MIPA', 'JL. TERATAI RT 3 RW 2 DESA ASAM JAYA KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(224, 'MUHAMMAD YUSUF MUTTAQIN', '3038509775', '10-MIPA-3', '10 - MIPA - 3', '12', 'MIPA', 'Jl. Gotong Royong RT 9 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '081522397560', '', '', '', '', '', '1'),
(225, 'NINA', '3037624753', '10-MIPA-3', '10 - MIPA - 3', '12', 'MIPA', 'Teguhan RT 6 RW  DESA Damit KECAMATAN Kec. Batu Ampar', '081346513462', '', '', '', '', '', '1'),
(226, 'RAFA WIDI WIJAYA', '0033569109', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'RA KARTINI RT 6 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082153261128', '', '', '', '', '', '1'),
(227, 'RAHMA DINI FITRI', '0048079146', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'JL. DUTUK BUNGUR RT 3 RW 1 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082254930082', '', '', '', '', '', '1'),
(228, 'RIDHA RAHMALIZA AZIDAH', '0034864608', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'Datuk Timang RT 6 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '082211499632', '', '', '', '', '', '1'),
(229, 'RISKA AMELIA PUTRI', '0036057798', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'BANGUN REJO RT 8 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '085219402154', '', '', '', '', '', '1'),
(230, 'RIYAN NAPARIN', '0033573263', '10-MIPA-3', '10 - MIPA - 3', '12', 'MIPA', 'PINUS RT 1 RW 1 DESA SABUHUR KECAMATAN Kec. Jorong', '085347214442', '', '', '', '', '', '1'),
(231, 'SITI ALFIYAH', '0042790062', '10-MIPA-3', '10 - MIPA - 3', '11', 'MIPA', 'Mesjid Abror RT 2 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085249367279', '', '', '', '', '', '1'),
(232, 'STEVANO TANGKA', '0040933025', '10-MIPA-3', '10 - MIPA - 3', '10', 'MIPA', 'JL. A. YANI KM. 121 RT 12 RW 2 DESA SEI BARU KECAMATAN Kec. Jorong', '083159293853', '', '', '', '', '', '1'),
(233, 'TRI NURHAYATI', '0041693131', '10-MIPA-3', '10 - MIPA - 3', '12', 'MIPA', 'JL. DESA RT 7 RW 2 DESA ASRI MULYA KECAMATAN Kec. Jorong', '082148916676', '', '', '', '', '', '1'),
(234, 'AHMAD HAIDIR ANSARI', '0024208158', '11-IPS-1', '11 - IPS - 1', '12', 'IPS', 'Mentimun RT 1 RW 0 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085388846911', '', '', '', '', '', '1'),
(235, 'AHMAD LUKMAN', '0027037431', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'SUMBER MAKARTI RT 13 RW 6 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082236301211', '', '', '', '', '', '1'),
(236, 'AHMAD SOLEHUDIN', '0023071386', '11-IPS-1', '11 - IPS - 1', '11', 'IPS', 'A Yani RT 12 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '082358169276', '', '', '', '', '', '1'),
(237, 'ANA MAIRINA', '0024442189', '11-IPS-1', '11 - IPS - 1', '12', 'IPS', 'A. Yani RT 11 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '082357754554', '', '', '', '', '', '1'),
(238, 'ANDREE IRAWAN', '0030711002', '11-IPS-1', '11 - IPS - 1', '11', 'IPS', 'A Yani RT 11 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '085249985496', '', '', '', '', '', '1'),
(239, 'ANNISA ERLIANY', '0027030914', '11-IPS-1', '11 - IPS - 1', '12', 'IPS', 'PT GMK KEBUN BARAT RT 14 RW 0 DESA Damit Hulu KECAMATAN Kec. Batu Ampar', '082250516857', '', '', '', '', '', '1'),
(240, 'ARIFIN ILHAM', '0025353157', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'Ambawang RT 8 RW  DESA Ambawang KECAMATAN Kec. Batu Ampar', '082250508816', '', '', '', '', '', '1'),
(241, 'DWI WAHYUDI', '0024387583', '11-IPS-1', '11 - IPS - 1', '11', 'IPS', 'Trans 200 RT 5 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '085248427966', '', '', '', '', '', '1'),
(242, 'DYAH REGITHA AULIA RIYADI', '0024672156', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'Krakatau RT 7 RW 4 DESA Asam Jaya KECAMATAN Kec. Jorong', '082251858086', '', '', '', '', '', '1'),
(243, 'ERNI', '0034865228', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'PINUS RT 19 RW 5 DESA SABUHUR KECAMATAN Kec. Jorong', '085332841332', '', '', '', '', '', '1'),
(244, 'FAHRULRAJI', '0030710997', '11-IPS-1', '11 - IPS - 1', '11', 'IPS', 'A. Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085251255084', '', '', '', '', '', '1'),
(245, 'FEBBY MEGI SUPIT', '0030652471', '11-IPS-1', '11 - IPS - 1', '12', 'IPS', 'A Yani RT 2 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085390655476', '', '', '', '', '', '1'),
(246, 'FIRDA AMELIA', '0027037439', '11-IPS-1', '11 - IPS - 1', '12', 'IPS', 'Akasia RT 2 RW 1 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082251045806', '', '', '', '', '', '1'),
(247, 'HARIYA HIDAYAT', '0005769066', '11-IPS-1', '11 - IPS - 1', '11', 'IPS', 'A. Yani RT 1 RW 1 DESA Alur KECAMATAN Kec. Jorong', '082251125447', '', '', '', '', '', '1'),
(248, 'HAYATUN NIZMAH', '0001126772', '11-IPS-1', '11 - IPS - 1', '12', 'IPS', 'Jl. Krakatau RT 7 RW 4 DESA Asam Jaya KECAMATAN Kec. Jorong', '082255461523', '', '', '', '', '', '1'),
(249, 'M. MUSTAQIM NUR IMAN', '0021008088', '11-IPS-1', '11 - IPS - 1', '12', 'IPS', 'Damar Lima RT 3 RW 3 DESA Damar Lima KECAMATAN Kec. Batu Ampar', '082254182117', '', '', '', '', '', '1'),
(250, 'MIRDAWATI', '0023071379', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'A. Yani RT 11 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '085332597192', '', '', '', '', '', '1'),
(251, 'MUHAMMAD ALFARIZI', '0022088389', '11-IPS-1', '11 - IPS - 1', '11', 'IPS', 'Bangunrejo RT 11 RW  DESA Damit KECAMATAN Kec. Batu Ampar', '082255413060', '', '', '', '', '', '1'),
(252, 'MUHAMMAD ARIFIN ILHAM', '0027894638', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'DATUK BUNGUR RT 3 RW 1 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '085349594822', '', '', '', '', '', '1'),
(253, 'MUHAMMAD JAINAL ARIFIN', '0013464949', '11-IPS-1', '11 - IPS - 1', '11', 'IPS', 'Datuk Timang RT 8 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '082255259883', '', '', '', '', '', '1'),
(254, 'MUHAMMAD NANJAR', '0039139618', '11-IPS-1', '11 - IPS - 1', '11', 'IPS', 'PDAM RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085332629670', '', '', '', '', '', '1'),
(255, 'MUHAMMAD RIFANI', '0007848597', '11-IPS-1', '11 - IPS - 1', '12', 'IPS', 'Datuk Timang RT 8 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '082248353587', '', '', '', '', '', '1'),
(256, 'MUHAMMAD SAHRULLAH', '0032837616', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'A. Yani Km. 101 RT 12 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '82351958880', '', '', '', '', '', '1'),
(257, 'RISKA ANGGRAINI', '0032648522', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'Trans RT 8 RW 2 DESA Alur KECAMATAN Kec. Jorong', '081345223460', '', '', '', '', '', '1'),
(258, 'RIZKY WULANDARI', '0027037440', '11-IPS-1', '11 - IPS - 1', '12', 'IPS', 'MUNGGUR KAMINTING RT 6 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085245135953', '', '', '', '', '', '1'),
(259, 'RYAN NASTIAR', '0034515934', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'DATUK BUNGUR RT 3 RW 1 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082351104265', '', '', '', '', '', '1'),
(260, 'SABHILA AINUN TASNA', '0021896868', '11-IPS-1', '11 - IPS - 1', '11', 'IPS', 'A. Yani RT 11 RW 3 DESA Desa Karang Rejo KECAMATAN Kec. Jorong', '085252668360', '', '', '', '', '', '1'),
(261, 'SABRIYANNOR', '0033833050', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'MUNGGUR KAMINTING RT 2 RW 1 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '08128819973', '', '', '', '', '', '1'),
(262, 'SAPRUDIN', '0011985256', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'Batang Banyu RT 5 RW 1 DESA Alur KECAMATAN Kec. Jorong', '082351939293', '', '', '', '', '', '1'),
(263, 'SITI AISYAH', '0023207733', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'MUNGGUR KAMINTING RT 10 RW 2 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085346344869', '', '', '', '', '', '1'),
(264, 'SITI FACHRIYANTIKA RAHMADANI', '0033573269', '11-IPS-1', '11 - IPS - 1', '10', 'IPS', 'Pinus RT 22 RW 0 DESA SABUHUR KECAMATAN Kec. Jorong', '085247269477', '', '', '', '', '', '1'),
(265, 'WIDYA ULVA', '0033573266', '11-IPS-1', '11 - IPS - 1', '11', 'IPS', 'SUKOREJO RT 23 RW 5 DESA SABUHUR KECAMATAN Kec. Jorong', '08525266131', '', '', '', '', '', '1'),
(266, 'YUNIAR PATRASARI', '0011324708', '11-IPS-1', '11 - IPS - 1', '12', 'IPS', 'BASE CAMP IMPLASEMENT PT GMK BARAT RT 16 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '085249468189', '', '', '', '', '', '1'),
(267, 'ANGGER MIDO DWI ANDIKA', '0024618422', '11-IPS-2', '11 - IPS - 2', '10', 'IPS', 'Trans 200 RT 10 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '085388254820', '', '', '', '', '', '1'),
(268, 'DIAN APRIANI', '0030711014', '11-IPS-2', '11 - IPS - 2', '12', 'IPS', 'Datuk Timang RT 9 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '085251318018', '', '', '', '', '', '1'),
(269, 'FITRI YANI', '0039722478', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'PT. CPKA RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085249525679', '', '', '', '', '', '1'),
(270, 'GUSTI PRAJA MUKTI', '0015666773', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'Komplek Pasar Jorong RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082256154356', '', '', '', '', '', '1'),
(271, 'HADIJAH COBRO', '0033599932', '11-IPS-2', '11 - IPS - 2', '10', 'IPS', 'BASE CAMP PKS JORONG RT 19 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082250507354', '', '', '', '', '', '1'),
(272, 'HENDRA SAPUTRA', '0027662933', '11-IPS-2', '11 - IPS - 2', '10', 'IPS', 'A. Yani Km. 12 RT 12 RW 1 DESA Simpang Sungai baru KECAMATAN Kec. Jorong', '082254836649', '', '', '', '', '', '1');
INSERT INTO `app_student` (`id_`, `std_name`, `std_nisn`, `std_class_code`, `std_class_name`, `std_grade`, `std_major`, `std_address`, `std_hp`, `std_email`, `std_activity`, `std_sick`, `std_ijin`, `std_absen`, `std_status`) VALUES
(273, 'HESTY PRATIWI', '0026686835', '11-IPS-2', '11 - IPS - 2', '10', 'IPS', 'Pantai Wisata RT 5 RW 3 DESA SWARANGAN KECAMATAN Kec. Jorong', '082250458027', '', '', '', '', '', '1'),
(274, 'JHON CLEYMAINTE', '0030813612', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'HANGTUAH RT 2 RW 1 DESA SWARANGAN KECAMATAN Kec. Jorong', '082248367038', '', '', '', '', '', '1'),
(275, 'JULIANA SABILLA', '0023059397', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'Camp Alpha PT GMK TE RT 3 RW  DESA Jorong KECAMATAN Kec. Jorong', '082255525475', '', '', '', '', '', '1'),
(276, 'KOLOSE DAYTONA SIMANJUNTAK', '0027209613', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'Pauh RT 7 RW 1 DESA BATALANG KECAMATAN Kec. Jorong', '085251812852', '', '', '', '', '', '1'),
(277, 'LIDIYA WATI', '0027983978', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'ASRIKATON RT 4 RW 0 DESA Ambawang KECAMATAN Kec. Batu Ampar', '085346762517', '', '', '', '', '', '1'),
(278, 'M. FUJIANNOOR', '0018071551', '11-IPS-2', '11 - IPS - 2', '10', 'IPS', 'HANGTUAH RT 7 RW 8 DESA SWARANGAN KECAMATAN Kec. Jorong', '082255645920', '', '', '', '', '', '1'),
(279, 'M. SYAHRIANOR', '0025128196', '11-IPS-2', '11 - IPS - 2', '10', 'IPS', 'JL. A. YANI RT 13 RW 4 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082251519443', '', '', '', '', '', '1'),
(280, 'MARIANI', '0030813619', '11-IPS-2', '11 - IPS - 2', '10', 'IPS', 'TUNGKARAN NAIK RT 8 RW 4 DESA SWARANGAN KECAMATAN Kec. Jorong', '082253031435', '', '', '', '', '', '1'),
(281, 'MELINDA NUR FALAH SARI', '0010606496', '11-IPS-2', '11 - IPS - 2', '12', 'IPS', 'Jalan Esa Karya RT 0 RW 0 DESA Jorong KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(282, 'MUHAMMAD AMIN', '0029603145', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'KASTURI RT 11 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082353490494', '', '', '', '', '', '1'),
(283, 'MUHAMMAD JAINURI', '0028341078', '11-IPS-2', '11 - IPS - 2', '12', 'IPS', 'MELATI RT 19 RW 0 DESA SABUHUR KECAMATAN Kec. Jorong', '081346887950', '', '', '', '', '', '1'),
(284, 'MUHAMMAD RISWANDI', '0016734017', '11-IPS-2', '11 - IPS - 2', '10', 'IPS', 'Trans 200 RT 10 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '081348746625', '', '', '', '', '', '1'),
(285, 'NURUL HUDA', '0025819920', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'Banjar sari RT 4 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '081348405428', '', '', '', '', '', '1'),
(286, 'RAHMAD DIVA SRI MAHENDRA', '0023984295', '11-IPS-2', '11 - IPS - 2', '12', 'IPS', 'Base Camp PT GMK RT 12 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '082251978259', '', '', '', '', '', '1'),
(287, 'RANGGA AGRA NARA', '0014809709', '11-IPS-2', '11 - IPS - 2', '10', 'IPS', 'Ambawang RT 9 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082250752735', '', '', '', '', '', '1'),
(288, 'RIRIN KURNIAWATI', '0037301718', '11-IPS-2', '11 - IPS - 2', '12', 'IPS', 'A. Yani RT 13 RW 5 DESA Karang Rejo KECAMATAN Kec. Jorong', '085349559901', '', '', '', '', '', '1'),
(289, 'RUDIANSYAH', '0024550843', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'A. Yani Km. 123 RT 6 RW 1 DESA Asam-Asam KECAMATAN Kec. Jorong', '085248095888', '', '', '', '', '', '1'),
(290, 'SITI AMILIA', '0028247345', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'ULIN RT 21 RW 1 DESA SABUHUR KECAMATAN Kec. Jorong', '085285899088', '', '', '', '', '', '1'),
(291, 'SUPRIADI', '0025125856', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'A. Yani Km. 103 RT 6 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '082252936504', '', '', '', '', '', '1'),
(292, 'SUYETNO', '0035081528', '11-IPS-2', '11 - IPS - 2', '11', 'IPS', 'A. Yani RT 1 RW 0 DESA Karang Rejo KECAMATAN Kec. Jorong', '082255041397', '', '', '', '', '', '1'),
(293, 'SYAHRIL ANWAR', '0029928853', '11-IPS-2', '11 - IPS - 2', '12', 'IPS', 'Trans 200 RT 10 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '081348746625', '', '', '', '', '', '1'),
(294, 'WAHYU DWI ARDIANTO', '0024553126', '11-IPS-2', '11 - IPS - 2', '12', 'IPS', 'A. Yani RT 16 RW 5 DESA Karang Rejo KECAMATAN Kec. Jorong', '085348498269', '', '', '', '', '', '1'),
(295, 'WAHYUDI UTOMO', '0030652500', '11-IPS-2', '11 - IPS - 2', '12', 'IPS', 'A. Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085249993543', '', '', '', '', '', '1'),
(296, 'YASIRUL FAHMI', '0015482064', '11-IPS-2', '11 - IPS - 2', '10', 'IPS', 'JILATAN RT 11 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085251982528', '', '', '', '', '', '1'),
(297, 'YULIANA', '0024672152', '11-IPS-2', '11 - IPS - 2', '10', 'IPS', 'Nangka RT 6 RW 3 DESA ASAM JAYA KECAMATAN Kec. Jorong', '082154674736', '', '', '', '', '', '1'),
(298, 'ADI PRASETYO', '0023911952', '11-IPS-3', '11 - IPS - 3', '12', 'IPS', 'Pantai Wisata RT 6 RW 4 DESA SWARANGAN KECAMATAN Kec. Jorong', '081257854286', '', '', '', '', '', '1'),
(299, 'AHMAD RAZIF', '0033389516', '11-IPS-3', '11 - IPS - 3', '12', 'IPS', 'Ahmad Yani RT 2 RW 1 DESA Jilatan KECAMATAN Kec. Batu Ampar', '082253703997', '', '', '', '', '', '1'),
(300, 'AHMAD RIDHUNI', '0030750437', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'Trans 200 RT 7 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '082256436850', '', '', '', '', '', '1'),
(301, 'AHMAD SUPIAN', '0015583350', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'trans 200 RT 9 RW 2 DESA Karang rejo KECAMATAN Kec. Jorong', '082151720792', '', '', '', '', '', '1'),
(302, 'AKHMAD RIZKY NUGROHO', '0037324107', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'BATALANG RT 3 RW 0 DESA BATALANG KECAMATAN Kec. Batu Ampar', '085388846516', '', '', '', '', '', '1'),
(303, 'AMY SYAROH', '0026246991', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'A. Yani RT 18 RW 5 DESA Karang Rejo KECAMATAN Kec. Jorong', '085391393400', '', '', '', '', '', '1'),
(304, 'ANNISA PEBRIANTI', '0031672666', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'Jl. A. Yani RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082256043729', '', '', '', '', '', '1'),
(305, 'ARI RAHMAWATI', '0009923530', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'TUNGKARAN NAIK RT 7 RW 4 DESA SWARANGAN KECAMATAN Kec. Jorong', '082256433546', '', '', '', '', '', '1'),
(306, 'DINA FITRIANI', '0010478479', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'Gembira RT 13 RW 4 DESA ASRI MULYA KECAMATAN Kec. Jorong', '08225291476', '', '', '', '', '', '1'),
(307, 'EKA RAHMAWATI', '0030750432', '11-IPS-3', '11 - IPS - 3', '12', 'IPS', 'A Yani RT 13 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '081351164489', '', '', '', '', '', '1'),
(308, 'FALLAH VERPO CHORIWANUHA A', '0009191588', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'Datuk Timang RT 9 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '082198825850', '', '', '', '', '', '1'),
(309, 'FITRI ANINGSIH', '0026994502', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'ULIN RT 21 RW 2 DESA SABUHUR KECAMATAN Kec. Jorong', '08238894942', '', '', '', '', '', '1'),
(310, 'HASYIM SURYA', '0028204051', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'PDAM RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085332839391', '', '', '', '', '', '1'),
(311, 'HUSNI MUBAROK', '0038893106', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'Nangka RT 5 RW 3 DESA Asam Jaya KECAMATAN Kec. Jorong', '082330791877', '', '', '', '', '', '1'),
(312, 'KHAIRUNNISA AGUSTINA', '0030717228', '11-IPS-3', '11 - IPS - 3', '12', 'IPS', 'TANAH HABANG RT 6 RW 1 DESA Muara Asam-Asam KECAMATAN Kec. Jorong', '081348999967', '', '', '', '', '', '1'),
(313, 'KHOLILUR RAHMAN', '0046673281', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'Base Camp PT Indoraya RT 8 RW 2 DESA Betalang KECAMATAN Kec. Jorong', '085249842420', '', '', '', '', '', '1'),
(314, 'MUHAMMAD DIMAS DRAJAD', '0026160610', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'ASRI MULYA RT 7 RW 2 DESA ASRI MULYA KECAMATAN Kec. Jorong', '082253249984', '', '', '', '', '', '1'),
(315, 'MUHAMMAD NURHUDA FIRDAUS', '0012945304', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'Bangun Sari RT 21 RW  DESA Damit KECAMATAN Kec. Batu Ampar', '', '', '', '', '', '', '1'),
(316, 'MUHAMMAD RAMADHANI', '0019075453', '11-IPS-3', '11 - IPS - 3', '12', 'IPS', 'TANAH HABANG RT 1 RW 1 DESA MUARA ASAM-ASAM KECAMATAN Kec. Jorong', '082154938006', '', '', '', '', '', '1'),
(317, 'NUR AIDA', '0039798920', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'Sultan Hasanudin RT 7 RW 4 DESA Asam Jaya KECAMATAN Kec. Jorong', '085248209457', '', '', '', '', '', '1'),
(318, 'NURDIANTO', '0028367862', '11-IPS-3', '11 - IPS - 3', '12', 'IPS', 'A. Yani RT 4 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085251178812', '', '', '', '', '', '1'),
(319, 'OKTA MELISA', '0023085645', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'Trans Alur RT 7 RW 2 DESA Alur KECAMATAN Kec. Jorong', '085386786828', '', '', '', '', '', '1'),
(320, 'REFINA ANGGRAENI', '0023074799', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'DANAU BIAWAK RT 5 RW 1 DESA BATALANG KECAMATAN Kec. Jorong', '082255519931', '', '', '', '', '', '1'),
(321, 'RIKI MARDIYANTO', '0031493980', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'Sarbini RT 7 RW 0 DESA Damit Hulu KECAMATAN Kec. Batu Ampar', '082255553472', '', '', '', '', '', '1'),
(322, 'RIO AGUS FERDIANTO', '0017963834', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'AMBAWANG RT 2 RW 1 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082250977149', '', '', '', '', '', '1'),
(323, 'ROSI NELLI WATI', '0004686793', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'Trans 200 RT 10 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '085332587591', '', '', '', '', '', '1'),
(324, 'SANDI WARDANI', '0023071395', '11-IPS-3', '11 - IPS - 3', '12', 'IPS', 'A. YANI RT 11 RW 2 DESA JORONG KECAMATAN Kec. Jorong', '082253536906', '', '', '', '', '', '1'),
(325, 'SETIA SURYA NUGRAHA', '0029722820', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'DS. ASRI MULYA RT 7 RW 2 DESA ASRI MULYA KECAMATAN Kec. Jorong', '082254929275', '', '', '', '', '', '1'),
(326, 'SIROJUL HUDA', '0028817310', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'CEMPAKA PUTIH RT 3 RW 1 DESA BATALANG KECAMATAN Kec. Jorong', '0812513455992', '', '', '', '', '', '1'),
(327, 'SITI AS SA\'DIYAH', '0021660802', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'A Yani RT 11 RW 2 DESA Swarangan KECAMATAN Kec. Jorong', '082352824624', '', '', '', '', '', '1'),
(328, 'SITI NUR LAELA', '0049232888', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'A Yani RT 3 RW 1 DESA Alur KECAMATAN Kec. Jorong', '082214531319', '', '', '', '', '', '1'),
(329, 'SUJA MAULANA', '0013845789', '11-IPS-3', '11 - IPS - 3', '10', 'IPS', 'ASRIKATON RT 9 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082250520362', '', '', '', '', '', '1'),
(330, 'TIKA SETIAWATI', '0037465858', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'Cempaka Putih RT 1 RW 0 DESA BATALANG KECAMATAN Kec. Jorong', '081345399942', '', '', '', '', '', '1'),
(331, 'YANG ALIM ROMADHAN', '0034628900', '11-IPS-3', '11 - IPS - 3', '11', 'IPS', 'AMBAWANG RT 8 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082151846073', '', '', '', '', '', '1'),
(332, 'AHMAD DITO JUNAEDI', '0057686322', '11-IPS-4', '11 - IPS - 4', '12', 'IPS', 'JALAN HANGTUAH RT 2 RW 1 DESA SWARANGAN KECAMATAN Kec. Jorong', '085251224418', '', '', '', '', '', '1'),
(333, 'AHMAD YUDA', '0026541927', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'Suka Ramai RT 5 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082251857988', '', '', '', '', '', '1'),
(334, 'ANI', '0024555076', '11-IPS-4', '11 - IPS - 4', '10', 'IPS', 'A Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082357281887', '', '', '', '', '', '1'),
(335, 'ARYA ROBI ERWANDA', '0029689666', '11-IPS-4', '11 - IPS - 4', '10', 'IPS', 'IMAM BONJOL RT 4 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082253089074', '', '', '', '', '', '1'),
(336, 'BETNI PUTRINI', '0025785563', '11-IPS-4', '11 - IPS - 4', '12', 'IPS', 'Jalan Hidayatullah RT 20 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '085369565130', '', '', '', '', '', '1'),
(337, 'DEVI CEVRELIANA', '0036650842', '11-IPS-4', '11 - IPS - 4', '10', 'IPS', 'A. Yani RT 2 RW 1 DESA Alur KECAMATAN Kec. Jorong', '085250008083', '', '', '', '', '', '1'),
(338, 'DIMAS RICO SAPUTRA', '0030639617', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'A. Yani RT 18 RW 5 DESA Karang Rejo KECAMATAN Kec. Jorong', '082154961777', '', '', '', '', '', '1'),
(339, 'DWI AYU LESTARI', '0010478844', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'DAMIT HULU RT 3 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082253349023', '', '', '', '', '', '1'),
(340, 'DWI FONI ANDRIANI', '0036579240', '11-IPS-4', '11 - IPS - 4', '10', 'IPS', 'Sebelas Maret RT 12 RW 2 DESA Alur KECAMATAN Kec. Jorong', '082153360301', '', '', '', '', '', '1'),
(341, 'EKA YULIARTI', '0025312269', '11-IPS-4', '11 - IPS - 4', '12', 'IPS', 'Raya Damit RT 16 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082299391865', '', '', '', '', '', '1'),
(342, 'ELI FINA NURSANTI', '0023071351', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'Imam Bonjol RT 5 RW 3 DESA Damit Hulu KECAMATAN Kec. Batu Ampar', '082256057194', '', '', '', '', '', '1'),
(343, 'ENDANG SRI WAHYUNI', '0032999944', '11-IPS-4', '11 - IPS - 4', '12', 'IPS', 'A. YANI RT 12 RW 4 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082153024970', '', '', '', '', '', '1'),
(344, 'IRFAN EFENDY', '0034260898', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'Datuk Timang RT 8 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '085390484550', '', '', '', '', '', '1'),
(345, 'JAINAH', '0010933347', '11-IPS-4', '11 - IPS - 4', '12', 'IPS', 'MUARA ASAM ASAM RT 5 RW 1 DESA MUARA ASAM ASAM KECAMATAN Kec. Jorong', '082258622266', '', '', '', '', '', '1'),
(346, 'LISA', '0021983391', '11-IPS-4', '11 - IPS - 4', '10', 'IPS', 'Binjai RT 1 RW 1 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '081348026072', '', '', '', '', '', '1'),
(347, 'M HARTONI', '0024555066', '11-IPS-4', '11 - IPS - 4', '10', 'IPS', 'A. Yani RT 12 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '082252255787', '', '', '', '', '', '1'),
(348, 'M. YOGA WIBAWA', '0027820949', '11-IPS-4', '11 - IPS - 4', '12', 'IPS', 'Jl. A. Yani RT 1 RW 1 DESA Jilatan KECAMATAN Kec. Jorong', '085249941265', '', '', '', '', '', '1'),
(349, 'MAULANA ABDUL RAHMAN', '0027308743', '11-IPS-4', '11 - IPS - 4', '10', 'IPS', 'MUNGGUR KAMINTING RT 8 RW 3 DESA Jilatan Alur KECAMATAN Kec. Batu Ampar', '081349502730', '', '', '', '', '', '1'),
(350, 'MUHAMAD AKBAR FITRIANTO', '0024618415', '11-IPS-4', '11 - IPS - 4', '12', 'IPS', 'A. Yani Km. 103 RT 8 RW 2 DESA Karangrejo KECAMATAN Kec. Jorong', '082251015372', '', '', '', '', '', '1'),
(351, 'MUHAMMAD AL PAJRI', '0017002701', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'Datuk Bungur RT 2 RW 1 DESA Asam - asam KECAMATAN Kec. Jorong', '082391349016', '', '', '', '', '', '1'),
(352, 'MUHAMMAD ALDI SUSANTO', '0026105496', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'RA Kartini RT 6 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '085393747044', '', '', '', '', '', '1'),
(353, 'MUHAMMAD BOY SAMUDRA', '0021429521', '11-IPS-4', '11 - IPS - 4', '10', 'IPS', 'MUNGGUR KAMINTING RT 6 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085332584191', '', '', '', '', '', '1'),
(354, 'MUHAMMAD HUSAIN HAEKAL', '0029092520', '11-IPS-4', '11 - IPS - 4', '10', 'IPS', 'A Yani RT  RW  DESA Jilatan KECAMATAN Kec. Batu Ampar', '082254418868', '', '', '', '', '', '1'),
(355, 'MUHAMMAD YUSUF', '0035871003', '11-IPS-4', '11 - IPS - 4', '10', 'IPS', 'A. Yani RT 16 RW 3 DESA Karang Rejo KECAMATAN Kec. Jorong', '085345635213', '', '', '', '', '', '1'),
(356, 'NOURMALA', '0028683611', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'Sebelas Maret RT 13 RW 4 DESA Alur KECAMATAN Kec. Jorong', '082299400428', '', '', '', '', '', '1'),
(357, 'RINA LESTARI', '0029107686', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'Gembira RT 1 RW 4 DESA ASRI MULYA KECAMATAN Kec. Jorong', '081255132037', '', '', '', '', '', '1'),
(358, 'RINI SULISTYOWATI', '0036579234', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'Sebelas Maret RT 12 RW  DESA Alur KECAMATAN Kec. Jorong', '085246260206', '', '', '', '', '', '1'),
(359, 'SAIPUL', '0024758080', '11-IPS-4', '11 - IPS - 4', '10', 'IPS', 'BAWAH BINJAI RT 1 RW 1 DESA ASAM- ASAM KECAMATAN Kec. Jorong', '081322898590', '', '', '', '', '', '1'),
(360, 'SEFTIA NORAZIZAH', '0033043477', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'Anggrek RT 1 RW 2 DESA Asam Jaya KECAMATAN Kec. Jorong', '082251755343', '', '', '', '', '', '1'),
(361, 'SHIVA ANNISA', '0030750450', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'Jl. A. Yani RT 4 RW 1 DESA Karangrejo KECAMATAN Kec. Jorong', '082250519369', '', '', '', '', '', '1'),
(362, 'WAHYU ARIANTI', '0033573261', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'ULIN RT 21 RW 3 DESA ALUR SABUHUR KECAMATAN Kec. Jorong', '085350093776', '', '', '', '', '', '1'),
(363, 'YUSPITA WULANDARI', '0029085270', '11-IPS-4', '11 - IPS - 4', '12', 'IPS', 'JL. SUKA RAMAI RT 5 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082234368295', '', '', '', '', '', '1'),
(364, 'ZAINAL ADI PRABOWO', '0034823148', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'A. Yani Km 101 RT 12 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '081346333376', '', '', '', '', '', '1'),
(365, 'ZIMAH', '0007301108', '11-IPS-4', '11 - IPS - 4', '11', 'IPS', 'TRANS 200 RT 5 RW 1 DESA KARANG REJO KECAMATAN Kec. Jorong', '082255634902', '', '', '', '', '', '1'),
(366, 'ADDIENA NOORRAHMA SARI', '0022944264', '11-MIPA-1', '11 - MIPA - 1', '10', 'MIPA', 'A Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082230415865', '', '', '', '', '', '1'),
(367, 'AFRIZAL GHALIH PRAMUDIA', '0016517752', '11-MIPA-1', '11 - MIPA - 1', '12', 'MIPA', 'A. Yani Km 102 RT 12 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '081215331870', '', '', '', '', '', '1'),
(368, 'DESI WARDANI', '0033573267', '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA', 'PINUS RT 19 RW 2 DESA ALUR SABUHUR KECAMATAN Kec. Jorong', '085332583784', '', '', '', '', '', '1'),
(369, 'ELIZA DEA FIRNANDA', '0034306306', '11-MIPA-1', '11 - MIPA - 1', '10', 'MIPA', 'Teguhan RT 4 RW 0 DESA Damit KECAMATAN Kec. Batu Ampar', '082255433752', '', '', '', '', '', '1'),
(370, 'FANDI AHMAD', '0016289400', '11-MIPA-1', '11 - MIPA - 1', '12', 'MIPA', 'Trans 400 RT 1 RW 1 DESA Asam Jaya KECAMATAN Kec. Jorong', '082250604118', '', '', '', '', '', '1'),
(371, 'HENGKY ARDIANSYAH', '0025312268', '11-MIPA-1', '11 - MIPA - 1', '12', 'MIPA', 'BANGUN REJO RT 9 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082254024932', '', '', '', '', '', '1'),
(372, 'IRLIZA LUTFIA UTAMI', '0031493984', '11-MIPA-1', '11 - MIPA - 1', '10', 'MIPA', 'RA Kartini RT 1 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082250510418', '', '', '', '', '', '1'),
(373, 'KRISTYAN WAHYU ALDIANTO', '0028817225', '11-MIPA-1', '11 - MIPA - 1', '10', 'MIPA', 'A Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085348250676', '', '', '', '', '', '1'),
(374, 'LIDYA APRILIA', '0022521133', '11-MIPA-1', '11 - MIPA - 1', '10', 'MIPA', 'DAMIT HULU RT 8 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082253773287', '', '', '', '', '', '1'),
(375, 'MAHRANI', '0039399763', '11-MIPA-1', '11 - MIPA - 1', '10', 'MIPA', 'A Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082261915740', '', '', '', '', '', '1'),
(376, 'MUHAMMAD ARIF SETIAWAN', '0034515929', '11-MIPA-1', '11 - MIPA - 1', '12', 'MIPA', 'PASAR JUM\'AT RT 4 RW 1 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082253714792', '', '', '', '', '', '1'),
(377, 'MUHAMMAD DZAKWAN AIFA', '0022745189', '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA', 'MUNGGUR KAMINTING RT 9 RW 2 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082254914960', '', '', '', '', '', '1'),
(378, 'MUHAMMAD ERWIN PRAMANA', '0030652504', '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA', 'Telkom RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '081258507344', '', '', '', '', '', '1'),
(379, 'MUHAMMAD IRFAN', '0030652495', '11-MIPA-1', '11 - MIPA - 1', '12', 'MIPA', 'A Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '081349612324', '', '', '', '', '', '1'),
(380, 'MUHAMMAD NOOR', '0029522941', '11-MIPA-1', '11 - MIPA - 1', '10', 'MIPA', 'Asrikaton RT 5 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '08225`717231', '', '', '', '', '', '1'),
(381, 'NANA HERLINA', '0024469269', '11-MIPA-1', '11 - MIPA - 1', '12', 'MIPA', 'DAMIT RT 3 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082254583139', '', '', '', '', '', '1'),
(382, 'NORRIDA', '0038309675', '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA', 'A. Yani Km.101 RT 12 RW 4 DESA Swarangan KECAMATAN Kec. Jorong', '08225208445', '', '', '', '', '', '1'),
(383, 'NURUL SITI AISAH', '0039636957', '11-MIPA-1', '11 - MIPA - 1', '10', 'MIPA', 'Sebelas Maret RT 12 RW 2 DESA Alur KECAMATAN Kec. Jorong', '082353396373', '', '', '', '', '', '1'),
(384, 'PAIZAL', '0024618428', '11-MIPA-1', '11 - MIPA - 1', '10', 'MIPA', 'A. Yani Km. 98.5 RT 8 RW 2 DESA Karangrejo KECAMATAN Kec. Jorong', '082251132013', '', '', '', '', '', '1'),
(385, 'PUTRI ANJANI', '0025312271', '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA', 'RA. Kartini RT 9 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082255412736', '', '', '', '', '', '1'),
(386, 'PUTRI HANDAYANI', '0037569097', '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA', 'Teguhan RT 4 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '085245541784', '', '', '', '', '', '1'),
(387, 'RIDHA MAULANI', '0031694920', '11-MIPA-1', '11 - MIPA - 1', '10', 'MIPA', 'Imam Bonjol RT 4 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '085348969562', '', '', '', '', '', '1'),
(388, 'RIKA DWI DARMI', '0030639619', '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA', 'Sei Pampan RT 10 RW 5 DESA Swarangan KECAMATAN Kec. Jorong', '085388890887', '', '', '', '', '', '1'),
(389, 'RIZKY FADILLAH', '0029400422', '11-MIPA-1', '11 - MIPA - 1', '12', 'MIPA', 'A. Yani RT 17 RW 5 DESA Karang Rejo KECAMATAN Kec. Jorong', '085347404719', '', '', '', '', '', '1'),
(390, 'SANDI', '0024555077', '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA', 'A Yani RT 5 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '082255654956', '', '', '', '', '', '1'),
(391, 'TARSIAH', '0030750445', '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA', 'Trans 200 RT 3 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '081351077869', '', '', '', '', '', '1'),
(392, 'USNATUL ADAWIYAH', '0035194841', '11-MIPA-1', '11 - MIPA - 1', '12', 'MIPA', 'Gang Annur RT 1 RW 1 DESA Asam-Asam KECAMATAN Kec. Jorong', '085346526314', '', '', '', '', '', '1'),
(393, 'WINDI KURNIAWATI', '0030652498', '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA', 'A. Yani RT 4 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '085345632130', '', '', '', '', '', '1'),
(394, 'YULITA FAHMI SAPUTRI', '0036579248', '11-MIPA-1', '11 - MIPA - 1', '11', 'MIPA', 'Bagio RT 2 RW 2 DESA Alur KECAMATAN Kec. Jorong', '082262170038', '', '', '', '', '', '1'),
(395, 'ZIMAH', '0036579449', '11-MIPA-1', '11 - MIPA - 1', '', 'MIPA', 'Cempaka Putih RT 3 RW 0 DESA BATALANG KECAMATAN Kec. Jorong', '082153555178', '', '', '', '', '', '1'),
(396, 'ABDULLAH', '0016732714', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'Datuk Timang RT 8 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '082357629229', '', '', '', '', '', '1'),
(397, 'AGUS SALIM', '0024283269', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'Pauh RT 6 RW 2 DESA BATALANG KECAMATAN Kec. Jorong', '082251307006', '', '', '', '', '', '1'),
(398, 'ANA', '0037761694', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'BAYAM RT 7 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082154034166', '', '', '', '', '', '1'),
(399, 'ANUGRAH  WINDU TERTIARY', '0030653538', '11-MIPA-2', '11 - MIPA - 2', '10', 'MIPA', 'Damit RT 19 RW 0 DESA Damit KECAMATAN Kec. Batu Ampar', '085332963159', '', '', '', '', '', '1'),
(400, 'FEBRI EKSANUDIN', '0033609980', '11-MIPA-2', '11 - MIPA - 2', '10', 'MIPA', 'JALAN RAYA DAMIT RT 9 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082251045892', '', '', '', '', '', '1'),
(401, 'GUSTI TIA ANDRIANI', '0038996589', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'Teratai RT 3 RW 2 DESA Asam Jaya KECAMATAN Kec. Jorong', '082153743999', '', '', '', '', '', '1'),
(402, 'HAVIZHULMAM NAZIR', '0027441807', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'A Yani RT 3 RW 1 DESA Alur KECAMATAN Kec. Jorong', '085248087184', '', '', '', '', '', '1'),
(403, 'IKSAN', '0030652478', '11-MIPA-2', '11 - MIPA - 2', '12', 'MIPA', 'PDAM RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '083142112646', '', '', '', '', '', '1'),
(404, 'INDAH ISMAWARNI', '0032861627', '11-MIPA-2', '11 - MIPA - 2', '12', 'MIPA', 'PDAM RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085251684967', '', '', '', '', '', '1'),
(405, 'IRMA NADIA YANTI', '0021896876', '11-MIPA-2', '11 - MIPA - 2', '10', 'MIPA', 'A. Yani RT 10 RW 5 DESA Karang Rejo KECAMATAN Kec. Jorong', '085332057152', '', '', '', '', '', '1'),
(406, 'KARISMA PUTRI NOFIANTI', '0024618417', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'Trans 200 RT 5 RW 1 DESA Karang Rejo KECAMATAN Kec. Jorong', '082357844842', '', '', '', '', '', '1'),
(407, 'LIAN ALFIADI', '0033618567', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'Munggur Kaminting RT 13 RW 5 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085348528928', '', '', '', '', '', '1'),
(408, 'M RIFAUL AZIS', '0030652494', '11-MIPA-2', '11 - MIPA - 2', '10', 'MIPA', 'PDAM RT 3 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '085252629209', '', '', '', '', '', '1'),
(409, 'M SYAMSUL MA\'ARIP', '0024618414', '11-MIPA-2', '11 - MIPA - 2', '10', 'MIPA', 'A. Yani RT 12 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '082153665077', '', '', '', '', '', '1'),
(410, 'MUARIFAL DWI SETIAWAN', '0025344865', '11-MIPA-2', '11 - MIPA - 2', '10', 'MIPA', 'Kertak Tinggi RT 11 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '082254567742', '', '', '', '', '', '1'),
(411, 'MUHAMMAD ISRAFFI', '0029032374', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'Jl. Swasembada RT 9 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '082250153909', '', '', '', '', '', '1'),
(412, 'MUHAMMAD SUBHAN FADHILLAH', '0023146662', '11-MIPA-2', '11 - MIPA - 2', '12', 'MIPA', 'Asrikaton RT 2 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082256162778', '', '', '', '', '', '1'),
(413, 'NABILA SUPRIYANTHI', '0037107245', '11-MIPA-2', '11 - MIPA - 2', '10', 'MIPA', 'A Yani RT 12 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '085252665601', '', '', '', '', '', '1'),
(414, 'NOVA GUSTINA', '0030639616', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'A. Yani RT 12 RW 3 DESA Karang Rejo KECAMATAN Kec. Jorong', '085346061922', '', '', '', '', '', '1'),
(415, 'NOVALYA CATUR RAMADANTI', '0036579446', '11-MIPA-2', '11 - MIPA - 2', '12', 'MIPA', 'Cempaka Putih RT 2 RW 0 DESA BATALANG KECAMATAN Kec. Jorong', '082151788848', '', '', '', '', '', '1'),
(416, 'NOVITA YULIANTI', '0037584210', '11-MIPA-2', '11 - MIPA - 2', '10', 'MIPA', 'MUNGGUR KAMINTING RT 10 RW 1 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082250543024', '', '', '', '', '', '1'),
(417, 'PUTRI FEBRIANTI', '0039479628', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'DAMIT RT 18 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082252254457', '', '', '', '', '', '1'),
(418, 'PUTRI SARI AYU FEBRIYANTI', '0033552285', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'JGang Rahmah RT 8 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '085386635228', '', '', '', '', '', '1'),
(419, 'PUTRI SETIYA LESTARI', '0039505548', '11-MIPA-2', '11 - MIPA - 2', '10', 'MIPA', 'DAMIT RT 8 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '081251078460', '', '', '', '', '', '1'),
(420, 'RAMBLI', '0005504886', '11-MIPA-2', '11 - MIPA - 2', '10', 'MIPA', 'ASRI MULYA RT 11 RW 4 DESA ASRI MULYA KECAMATAN Kec. Jorong', '085214001510', '', '', '', '', '', '1'),
(421, 'ROHANA JUWITA', '0024766213', '11-MIPA-2', '11 - MIPA - 2', '12', 'MIPA', 'Anggrek RT 3 RW 2 DESA Asam Jaya KECAMATAN Kec. Jorong', '082353385317', '', '', '', '', '', '1'),
(422, 'SIGIT PRIANTO', '0029100455', '11-MIPA-2', '11 - MIPA - 2', '12', 'MIPA', 'Banjar Sari RT 1 RW 1 DESA Karangrejo KECAMATAN Kec. Jorong', '082250519372', '', '', '', '', '', '1'),
(423, 'SUPRIADI', '0018183016', '11-MIPA-2', '11 - MIPA - 2', '12', 'MIPA', 'Trans Alur RT 7 RW 2 DESA Alur KECAMATAN Kec. Jorong', '082358742159', '', '', '', '', '', '1'),
(424, 'WINDY PUSPITASARI', '0034565880', '11-MIPA-2', '11 - MIPA - 2', '11', 'MIPA', 'A Yani RT 13 RW 4 DESA Jorong KECAMATAN Kec. Jorong', '082358118104', '', '', '', '', '', '1'),
(425, 'AGUSTYA PRAYOGA SINAGA', '0016788013', '11-MIPA-3', '11 - MIPA - 3', '10', 'MIPA', 'SUKOREJO RT 19 RW 5 DESA SABUHUR KECAMATAN Kec. Jorong', '085348254920', '', '', '', '', '', '1'),
(426, 'AIDA YANTI', '0043143225', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'Banyu Agung RT 5 RW 1 DESA Alur KECAMATAN Kec. Jorong', '08225553683', '', '', '', '', '', '1'),
(427, 'AKNES NOVITA', '0033599933', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'CAMP PT GMK TENGAH RT 13 RW 0 DESA Damit Hulu KECAMATAN Kec. Jorong', '082351518835', '', '', '', '', '', '1'),
(428, 'ARMAN ROJALI', '0024550836', '11-MIPA-3', '11 - MIPA - 3', '11', 'MIPA', 'A. Yani RT 12 RW 3 DESA Sungai Banta KECAMATAN Kec. Jorong', '081251907214', '', '', '', '', '', '1'),
(429, 'ATIKA SAL SABELA', '0024577959', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'Mawar RT 3 RW 2 DESA Asam Jaya KECAMATAN Kec. Jorong', '085248325906', '', '', '', '', '', '1'),
(430, 'CAHYO BUDIONO', '0033618571', '11-MIPA-3', '11 - MIPA - 3', '10', 'MIPA', 'MUNGGUR KAMINTING RT 8 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '081351922351', '', '', '', '', '', '1'),
(431, 'FITRIA UTAMI', '0030639624', '11-MIPA-3', '11 - MIPA - 3', '10', 'MIPA', 'Jl. A. Yani RT 18 RW 5 DESA Karang Rejo KECAMATAN Kec. Jorong', '085390926421', '', '', '', '', '', '1'),
(432, 'JUNAIDI', '0030639615', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'A. Yani RT 18 RW 6 DESA Karang Rejo KECAMATAN Kec. Jorong', '085348126293', '', '', '', '', '', '1'),
(433, 'M. ARDAN REHANDRA HERSA', '0017511757', '11-MIPA-3', '11 - MIPA - 3', '10', 'MIPA', 'Tanjung Perak RT 5 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '085390927266', '', '', '', '', '', '1'),
(434, 'M. IKMAL NIZAM', '0029091276', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'H.M Sarbini RT 1 RW 1 DESA Damar Lima KECAMATAN Kec. Batu Ampar', '081251405334', '', '', '', '', '', '1'),
(435, 'MUHAMMAD ANSHARI', '0045092008', '11-MIPA-3', '11 - MIPA - 3', '11', 'MIPA', 'A. Yani RT 1 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '0852', '', '', '', '', '', '1'),
(436, 'MUHAMMAD FAHRIZA', '0030652489', '11-MIPA-3', '11 - MIPA - 3', '10', 'MIPA', 'A .Yani RT 4 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '085251117373', '', '', '', '', '', '1'),
(437, 'NENA FERNANDA', '0030750441', '11-MIPA-3', '11 - MIPA - 3', '10', 'MIPA', 'A. Yani RT 7 RW 2 DESA Karangrejo KECAMATAN Kec. Jorong', '082250798856', '', '', '', '', '', '1'),
(438, 'NOOR VITASARI', '0023911959', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'Hangtuah RT 2 RW 1 DESA SWARANGAN KECAMATAN Kec. Jorong', '082250468737', '', '', '', '', '', '1'),
(439, 'NOVIANA KARTIKASARI', '0032525516', '11-MIPA-3', '11 - MIPA - 3', '10', 'MIPA', 'A. Yani Km. 115 RT 14 RW 4 DESA Asam-Asam KECAMATAN Kec. Jorong', '082250584332', '', '', '', '', '', '1'),
(440, 'QORI IRSANDY NUGRAHA', '0030652486', '11-MIPA-3', '11 - MIPA - 3', '10', 'MIPA', 'PDAM RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '082353898780', '', '', '', '', '', '1'),
(441, 'RAFI DWI KURNIA', '0031694914', '11-MIPA-3', '11 - MIPA - 3', '10', 'MIPA', 'Datuk Timang RT 6 RW  DESA Jorong KECAMATAN Kec. Jorong', '082353037022', '', '', '', '', '', '1'),
(442, 'RENDI RAMADHAN', '0025312262', '11-MIPA-3', '11 - MIPA - 3', '11', 'MIPA', 'Bangunrejo RT 9 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082253559812', '', '', '', '', '', '1'),
(443, 'RIAN HIDAYAT', '0027885160', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'Datuk Timang RT 6 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '081249367524', '', '', '', '', '', '1'),
(444, 'RIZKI PRASETIAWAN', '0030639611', '11-MIPA-3', '11 - MIPA - 3', '10', 'MIPA', 'A. Yani RT 14 RW 4 DESA Karang Rejo KECAMATAN Kec. Jorong', '082154163240', '', '', '', '', '', '1'),
(445, 'RIZKY RAMADHANI', '0029886499', '11-MIPA-3', '11 - MIPA - 3', '11', 'MIPA', 'Tempurejo RT 7 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '081349490914', '', '', '', '', '', '1'),
(446, 'SAID AKBAR', '0023071370', '11-MIPA-3', '11 - MIPA - 3', '11', 'MIPA', 'Datuk Timang RT 8 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '085252856373', '', '', '', '', '', '1'),
(447, 'SEFYA ANTIKA', '0030636132', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'Gembira RT 11 RW  DESA Asri Mulya KECAMATAN Kec. Jorong', '085391080606', '', '', '', '', '', '1'),
(448, 'SETIA FHIRNANDA', '0029208352', '11-MIPA-3', '11 - MIPA - 3', '11', 'MIPA', 'Meranti RT 20 RW 0 DESA Alur Sabuhur KECAMATAN Kec. Jorong', '082213815811', '', '', '', '', '', '1'),
(449, 'SITI NUR ALIYAH ', '0028241284', '11-MIPA-3', '11 - MIPA - 3', '11', 'MIPA', 'Batang Banyu RT 4 RW 1 DESA Alur KECAMATAN Kec. Jorong', '085393500912', '', '', '', '', '', '1'),
(450, 'SYAHRI RAMADAN', '0022329540', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'MUNGGUR KAMINTING RT 8 RW 3 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082299492280', '', '', '', '', '', '1'),
(451, 'TIARA', '0023073530', '11-MIPA-3', '11 - MIPA - 3', '11', 'MIPA', 'Tran 200 RT 8 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '082253769306', '', '', '', '', '', '1'),
(452, 'TOTI SUGIANTO', '0026616335', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'MUNGGUR KAMINTING RT 9 RW 2 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082254011091', '', '', '', '', '', '1'),
(453, 'YERIKHO DION WAHYU NATA', '0036579253', '11-MIPA-3', '11 - MIPA - 3', '10', 'MIPA', 'Trans RT 3 RW 2 DESA Alur KECAMATAN Kec. Jorong', '085246078050', '', '', '', '', '', '1'),
(454, 'YOGA PRASETIYA', '0028682034', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'JL. A. YANI RT 1 RW 1 DESA Sungai Baru KECAMATAN Kec. Jorong', '081253391609', '', '', '', '', '', '1'),
(455, 'YUSTIKANING KINANTI', '0038123994', '11-MIPA-3', '11 - MIPA - 3', '12', 'MIPA', 'Trans 200 RT 8 RW 2 DESA Karang Rejo KECAMATAN Kec. Jorong', '085348255152', '', '', '', '', '', '1'),
(456, 'AHMAD RAHADIAN NOOR', '0026144931', '11-MIPA-4', '11 - MIPA - 4', '10', 'MIPA', 'A. Yani RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '083143663615', '', '', '', '', '', '1'),
(457, 'AHMAD YUDITA RAHMAN', '0039030161', '11-MIPA-4', '11 - MIPA - 4', '10', 'MIPA', 'A. YANI RT 15 RW 4 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '085332817211', '', '', '', '', '', '1'),
(458, 'ANDRIANI ENDAH SAWITRI', '0025225404', '11-MIPA-4', '11 - MIPA - 4', '10', 'MIPA', 'RA KARTINI RT 4 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082251370680', '', '', '', '', '', '1'),
(459, 'ANISA FINDIA FALAHUDIN', '0021908796', '11-MIPA-4', '11 - MIPA - 4', '12', 'MIPA', 'DAMIT RT 8 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082250723469', '', '', '', '', '', '1'),
(460, 'ARIF SULAIMAN', '0033573265', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'MERANTI RT 20 RW 0 DESA SABUHUR KECAMATAN Kec. Jorong', '082251006742', '', '', '', '', '', '1'),
(461, 'AYU YOHANA', '0029971546', '11-MIPA-4', '11 - MIPA - 4', '10', 'MIPA', 'Imam Bonjol RT 10 RW 5 DESA Damit Hulu KECAMATAN Kec. Batu Ampar', '082255218249', '', '', '', '', '', '1'),
(462, 'DESNADA HEMA PUTRI', '0037934172', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'BANJAR SARI RT 3 RW 1 DESA KARANG REJO KECAMATAN Kec. Jorong', '081348571503', '', '', '', '', '', '1'),
(463, 'DESSY INDRIANI RAMADHANI', '0024555070', '11-MIPA-4', '11 - MIPA - 4', '12', 'MIPA', 'PDAM RT 3 RW 1 DESA Jorong KECAMATAN Kec. Jorong', '085348833644', '', '', '', '', '', '1'),
(464, 'FERRY AZI FIRDAUZ', '0026633305', '11-MIPA-4', '11 - MIPA - 4', '12', 'MIPA', 'Singabana RT 1 RW 3 DESA Sabuhur KECAMATAN Kec. Jorong', '085345320165', '', '', '', '', '', '1'),
(465, 'FITA FATIMAH', '0031844876', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'Cempaka Putih RT 2 RW 0 DESA BATALANG KECAMATAN Kec. Batu Ampar', '085387001020', '', '', '', '', '', '1'),
(466, 'GHINA NAFISA', '0029216884', '11-MIPA-4', '11 - MIPA - 4', '10', 'MIPA', 'DAMIT RT 8 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082236503014', '', '', '', '', '', '1'),
(467, 'HERU UTOMO', '0019892707', '11-MIPA-4', '11 - MIPA - 4', '12', 'MIPA', 'Asrikaton RT 3 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082258514976', '', '', '', '', '', '1'),
(468, 'IKA PURNAMA SARI', '0038131935', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'Banjar Sari RT 9 RW 5 DESA Karangrejo KECAMATAN Kec. Jorong', '085389658949', '', '', '', '', '', '1'),
(469, 'KHAIRUL ANWAR', '0028811494', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'Bangunrejo RT 8 RW 0 DESA Damit KECAMATAN Kec. Batu Ampar', '02252219146', '', '', '', '', '', '1'),
(470, 'LUKMAN NUL HAKIM', '0030711001', '11-MIPA-4', '11 - MIPA - 4', '10', 'MIPA', 'A. Yani RT 8 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '082154012450', '', '', '', '', '', '1'),
(471, 'MEGA SELVIA', '0043444938', '11-MIPA-4', '11 - MIPA - 4', '12', 'MIPA', 'A. Yani RT 4 RW 1 DESA Alur KECAMATAN Kec. Jorong', '082156798884', '', '', '', '', '', '1'),
(472, 'MIFTAHUL JANNAH', '0035524346', '11-MIPA-4', '11 - MIPA - 4', '12', 'MIPA', 'A.Yani 111 RT 15 RW 4 DESA Asam-Asam KECAMATAN Kec. Jorong', '085349244905', '', '', '', '', '', '1'),
(473, 'MUHAMAD SIDIK RAHMADANI', '0048756357', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'JALAN CEMPAKA PUTIH RT 4 RW 0 DESA BATALANG KECAMATAN Kec. Batu Ampar', '085332832959', '', '', '', '', '', '1'),
(474, 'MUHAMMAD ACHWAN', '0022440924', '11-MIPA-4', '11 - MIPA - 4', '12', 'MIPA', 'JALAN RAYA DAMIT HULU RT 1 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '085332997682', '', '', '', '', '', '1'),
(475, 'MUHAMMAD ALRIN SUSANTO, Y.S', '0025322893', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'SUKA RAMAI RT 5 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '0822535393344', '', '', '', '', '', '1'),
(476, 'MUHAMMAD MIFTAHUDDIN', '0023911936', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'Datuk Timang RT 8 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '082251523771', '', '', '', '', '', '1'),
(477, 'MUHAMMAD NURHIDAYATULLAH', '0037666719', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'Camp. PT. CPKA RT 0 RW 0 DESA Batalang KECAMATAN Kec. Jorong', '085247064874', '', '', '', '', '', '1'),
(478, 'NOVAL RAHMAN', '0019533518', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'DAMIT RT 4 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082253254979', '', '', '', '', '', '1'),
(479, 'PUTRI MEYNANDA ZASKIA', '0033618565', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'KASTURI RT 11 RW 0 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085344537234', '', '', '', '', '', '1'),
(480, 'RAMADANI', '0023338547', '11-MIPA-4', '11 - MIPA - 4', '12', 'MIPA', 'Datuk Timang RT 9 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '081349761835', '', '', '', '', '', '1'),
(481, 'RAYHAN KAN ALMALIK', '0030750436', '11-MIPA-4', '11 - MIPA - 4', '11', 'MIPA', 'A. Yani Km. 98,5 RT 10 RW 2 DESA Karangrejo KECAMATAN Kec. Jorong', '085332529990', '', '', '', '', '', '1'),
(482, 'RIFKI ADITYA FAHMI', '0030652493', '11-MIPA-4', '11 - MIPA - 4', '12', 'MIPA', 'A. Yani RT 5 RW 2 DESA Jorong KECAMATAN Kec. Jorong', '082250382052', '', '', '', '', '', '1'),
(483, 'RISKI BAYU IFANI', '0030691286', '11-MIPA-4', '11 - MIPA - 4', '12', 'MIPA', 'A. Yani RT 15 RW 4 DESA Asam-Asam KECAMATAN Kec. Jorong', '083152113100', '', '', '', '', '', '1'),
(484, 'TYO ABIB PRATAMA', '0030711005', '11-MIPA-4', '11 - MIPA - 4', '10', 'MIPA', 'Datuk Timang RT 5 RW 3 DESA Jorong KECAMATAN Kec. Jorong', '082154681839', '', '', '', '', '', '1'),
(485, 'ABDILLAH', '0025254480', '12-IPS-1', '12 - IPS - 1', '12', 'IPS', 'CAMP PT GMK BARAT RT 14 RW 0 DESA Damit KECAMATAN Kec. Batu Ampar', '081255066125', '', '', '', '', '', '1'),
(486, 'ABDUL KARIM', '0002734964', '12-IPS-1', '12 - IPS - 1', '10', 'IPS', 'A YANI RT 2 RW 1 DESA ALUR KECAMATAN Kec. Jorong', '085348984229', '', '', '', '', '', '1'),
(487, 'AKLUN ZACKY RAIHAN FADILLAH', '0023071377', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'MAKMUR RT 4 RW 3 DESA JORONG KECAMATAN Kec. Jorong', '082255636823', '', '', '', '', '', '1'),
(488, 'DESY RAHMADANI', '0023070916', '12-IPS-1', '12 - IPS - 1', '12', 'IPS', 'BASE CAMP PT. GMK KEBUN TENGAH RT 3 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082157091632', '', '', '', '', '', '1'),
(489, 'DWI TRESNA KISTIANINGSIH ARIANI', '0023073543', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'Trans 200 RT 9 RW 2 DESA KARANG REJO KECAMATAN Kec. Jorong', '082155630563', '', '', '', '', '', '1'),
(490, 'EKA WAHYUDI', '0022522166', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'Sawit RT 1 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '085345719331', '', '', '', '', '', '1'),
(491, 'ERLINA DIAH SURYANI', '0023070918', '12-IPS-1', '12 - IPS - 1', '10', 'IPS', 'PT GMK KEBUN TENGAH CAMP RT 0 RW 0 DESA BATALANG KECAMATAN Kec. Jorong', '082251239486', '', '', '', '', '', '1'),
(492, 'EVIN TIRTANA', '0012243495', '12-IPS-1', '12 - IPS - 1', '10', 'IPS', 'A. YANI KM. 115 RT 3 RW 1 DESA Asam-Asam KECAMATAN Kec. Jorong', '082298928008', '', '', '', '', '', '1'),
(493, 'HAIRUNNISA', '0011271914', '12-IPS-1', '12 - IPS - 1', '10', 'IPS', 'DATUK BUNGUR RT 2 RW 1 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082214014819', '', '', '', '', '', '1'),
(494, 'HARIMAH', '0017945314', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'BANUA LAMA RT 10 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '085332966077', '', '', '', '', '', '1'),
(495, 'HENDRIAWAN PUTRA', '9994236823', '12-IPS-1', '12 - IPS - 1', '10', 'IPS', 'TRAN 500 RT 13 RW 4 DESA ASRI MULYA KECAMATAN Kec. Jorong', '082188056114', '', '', '', '', '', '1'),
(496, 'HERFANI', '0017511992', '12-IPS-1', '12 - IPS - 1', '12', 'IPS', 'Asri Katon RT 4 RW 2 DESA Ambawang KECAMATAN Kec. Batu Ampar', '082256525410', '', '', '', '', '', '1'),
(497, 'HUSEN MARDANI', '0021896882', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'TRANS 300 RT 12 RW 3 DESA KARANG REJO KECAMATAN Kec. Jorong', '082254102538', '', '', '', '', '', '1'),
(498, 'ICHA AYU SAPUTRI', '0016732553', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'BASE CAMP PT. GMK KEBUN TENGAH RT 6 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '081349588980', '', '', '', '', '', '1'),
(499, 'M. JAILANI TAKDIR', '0021896350', '12-IPS-1', '12 - IPS - 1', '12', 'IPS', 'A. YANI KM 11 RT 15 RW 4 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082251891382', '', '', '', '', '', '1'),
(500, 'MA\'MUN SARIPUDIN', '0024617677', '12-IPS-1', '12 - IPS - 1', '12', 'IPS', 'A YANI RT 13 RW 4 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '085248774429', '', '', '', '', '', '1'),
(501, 'MARTINA ESPERANZA', '0033146429', '12-IPS-1', '12 - IPS - 1', '12', 'IPS', 'BATALANG RT 2 RW 1 DESA BATALANG KECAMATAN Kec. Jorong', '082251755326', '', '', '', '', '', '1'),
(502, 'MENTARI GIRI SAPUTRI', '0023073517', '12-IPS-1', '12 - IPS - 1', '12', 'IPS', 'TRANS 200 RT 10 RW 2 DESA KARANG REJO KECAMATAN Kec. Jorong', '085348206050', '', '', '', '', '', '1'),
(503, 'MUHAMMAD RESGI AL-BINTARO', '0021896346', '12-IPS-1', '12 - IPS - 1', '10', 'IPS', 'ASAM-ASAM RT 15 RW 4 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082256745984', '', '', '', '', '', '1'),
(504, 'NADILA RISMAWATI', '0024073554', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'BAGUN REJO RT 8 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '', '', '', '', '', '', '1'),
(505, 'NIA LESTARI', '0002735092', '12-IPS-1', '12 - IPS - 1', '12', 'IPS', 'JORONG RT 4 RW 2 DESA JORONG KECAMATAN Kec. Jorong', '082247456853', '', '', '', '', '', '1'),
(506, 'NISA SULISTIA WATI', '0002734805', '12-IPS-1', '12 - IPS - 1', '12', 'IPS', 'A. YANI RT 2 RW 0 DESA JORONG KECAMATAN Kec. Jorong', '082350078702', '', '', '', '', '', '1'),
(507, 'RAMADHAN', '9994236769', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'CEMPAKA RT 1 RW 1 DESA BATALANG KECAMATAN Kec. Jorong', '082253652995', '', '', '', '', '', '1'),
(508, 'RIFLI HARIADI', '0010299396', '12-IPS-1', '12 - IPS - 1', '12', 'IPS', 'SEBELAS MARET RT 2 RW 0 DESA ALUR KECAMATAN Kec. Jorong', '085249343646', '', '', '', '', '', '1'),
(509, 'RIZKY INDRAYANA', '9997145357', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'TRANS 200 RT 12 RW 5 DESA KARANG REJO KECAMATAN Kec. Jorong', '085349188237', '', '', '', '', '', '1'),
(510, 'ROBIAH ROBINGATUL ADABIYAH', '0019588428', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'TRANS 300 RT 16 RW 5 DESA KARANG REJO KECAMATAN Kec. Jorong', '082243465438', '', '', '', '', '', '1'),
(511, 'SILVIANA ARIYANTI', '0017512036', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'TEGUHAN RT 2 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '', '', '', '', '', '', '1'),
(512, 'SITI MUAVIAH', '0011271904', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'SIMPANG 3 RT 12 RW 3 DESA SWARANGAN KECAMATAN Kec. Jorong', '085332949117', '', '', '', '', '', '1'),
(513, 'SYAHRIANTO RAHMANANDA', '0015207962', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'A. YANI RT 13 RW 4 DESA JORONG KECAMATAN Kec. Jorong', '082250099437', '', '', '', '', '', '1'),
(514, 'SYAHRUL ANWAR', '0010299409', '12-IPS-1', '12 - IPS - 1', '10', 'IPS', 'BATANG BANYU RT 4 RW 1 DESA ALUR KECAMATAN Kec. Jorong', '082254525743', '', '', '', '', '', '1'),
(515, 'WAHYU HERMAWAN', '0023911871', '12-IPS-1', '12 - IPS - 1', '12', 'IPS', 'A. YANI RT 13 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '083150500088', '', '', '', '', '', '1'),
(516, 'YUDA CAHYANTO', '0023911915', '12-IPS-1', '12 - IPS - 1', '11', 'IPS', 'Krakatau RT 7 RW 4 DESA Asam Jaya KECAMATAN Kec. Jorong', '082250037609', '', '', '', '', '', '1'),
(517, 'AGUS PRATAMA', '0002852184', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'JILATAN ALUR RT 2 RW 0 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085388783095', '', '', '', '', '', '1'),
(518, 'ANA SEPTIA', '0023911932', '12-IPS-2', '12 - IPS - 2', '10', 'IPS', 'PERUM CPKA RT 1 RW 0 DESA JORONG KECAMATAN Kec. Jorong', '082250459147', '', '', '', '', '', '1'),
(519, 'ARIF PERDANA KUSUMA', '0002735068', '12-IPS-2', '12 - IPS - 2', '12', 'IPS', 'PDAM RT 2 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '085332845317', '', '', '', '', '', '1'),
(520, 'BULQIS AZ ZAHRA', '0021896887', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'KARANG REJO RT 16 RW 5 DESA KARANG REJO KECAMATAN Kec. Jorong', '081251340412', '', '', '', '', '', '1'),
(521, 'EGA BINTANG GIRIYANTO', '0010299449', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'A YANI RT 4 RW 0 DESA JORONG KECAMATAN Kec. Jorong', '085251664058', '', '', '', '', '', '1'),
(522, 'FENDRI AHYAR', '0017512004', '12-IPS-2', '12 - IPS - 2', '12', 'IPS', 'ASRIKATON RT 4 RW 2 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082257098144', '', '', '', '', '', '1'),
(523, 'FINA NOVITA SARI', '0007387553', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'A. YANI RT 1 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '082251009530', '', '', '', '', '', '1'),
(524, 'GALUH LAKSITA PALUPI DEVANA PURWITA', '0023074804', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'BATALANG RT 4 RW 0 DESA BATALANG KECAMATAN Kec. Jorong', '085945108414', '', '', '', '', '', '1'),
(525, 'HAIRUL ADANI', '0002503160', '12-IPS-2', '12 - IPS - 2', '12', 'IPS', 'BANGUN REJO RT 7 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082255047147', '', '', '', '', '', '1'),
(526, 'HELDA YULIANTI', '0018293823', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'BANUA LAMA RT 11 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '085332237163', '', '', '', '', '', '1'),
(527, 'HERI SUSANTO', '9993851598', '12-IPS-2', '12 - IPS - 2', '12', 'IPS', 'SEI. DANAU RT 9 RW 4 DESA JORONG KECAMATAN Kec. Jorong', '082256407053', '', '', '', '', '', '1'),
(528, 'HERMANSYAH', '0018293819', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'Wonokoyo RT 9 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082252938423', '', '', '', '', '', '1'),
(529, 'HOT MAHTU MAIMUN', '0021896867', '12-IPS-2', '12 - IPS - 2', '12', 'IPS', 'Banjar Arum RT 12 RW 3 DESA KARANG REJO KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(530, 'ILHAM AJI WIBOWO', '0023073510', '12-IPS-2', '12 - IPS - 2', '10', 'IPS', 'TRAN 200 RT 10 RW 2 DESA KARANG REJO KECAMATAN Kec. Jorong', '082258514988', '', '', '', '', '', '1'),
(531, 'JASMIANTI', '0004540308', '12-IPS-2', '12 - IPS - 2', '12', 'IPS', 'BATANG BANYU RT 4 RW 0 DESA ALUR KECAMATAN Kec. Jorong', '085348279022', '', '', '', '', '', '1'),
(532, 'JEFRIANUS NAHAK', '0017283677', '12-IPS-2', '12 - IPS - 2', '10', 'IPS', 'BATANG BANYU RT 4 RW 1 DESA Alur KECAMATAN Kec. Jorong', '082255532505', '', '', '', '', '', '1'),
(533, 'KARINA JULIA FITRI', '0008427701', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'GMK PKS JORONG RT 14 RW 0 DESA JORONG KECAMATAN Kec. Jorong', '082251519741', '', '', '', '', '', '1'),
(534, 'MAWAR GUSTINA', '0023073529', '12-IPS-2', '12 - IPS - 2', '10', 'IPS', 'TRANS 200 RT 1 RW 0 DESA KARANG REJO KECAMATAN Kec. Jorong', '081348164235', '', '', '', '', '', '1'),
(535, 'MILA AGUSTIN', '0017512037', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'KARANG ANYAR RT 14 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '', '', '', '', '', '', '1'),
(536, 'MUHAMMAD IRSAN', '0023200568', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'SUKA MAJU RT 1 RW 1 DESA JILATAN KECAMATAN Kec. Batu Ampar', '081348932085', '', '', '', '', '', '1'),
(537, 'MUHAMMAD MAULA DA\'I FADLILAH', '0014973513', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'A. YANI RT 11 RW 2 DESA JORONG KECAMATAN Kec. Jorong', '082253552846', '', '', '', '', '', '1'),
(538, 'MUHYAR SAFARI', '0028817217', '12-IPS-2', '12 - IPS - 2', '12', 'IPS', 'TRAN ALUR RT 10 RW 2 DESA ALUR KECAMATAN Kec. Jorong', '081349601038', '', '', '', '', '', '1'),
(539, 'NANDA AZHARI', '0025840666', '12-IPS-2', '12 - IPS - 2', '10', 'IPS', 'DANAU BIAWAK RT 5 RW 3 DESA BATALANG KECAMATAN Kec. Jorong', '085251269117', '', '', '', '', '', '1'),
(540, 'NICO SAPUTRA', '9984153099', '12-IPS-2', '12 - IPS - 2', '10', 'IPS', 'DAMIT RT 14 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082254300385', '', '', '', '', '', '1'),
(541, 'NISSA', '0023074805', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'DANAU BIAWAK RT 5 RW 3 DESA BATALANG KECAMATAN Kec. Jorong', '085246847381', '', '', '', '', '', '1'),
(542, 'RAHMI MAHDALENA', '9995833763', '12-IPS-2', '12 - IPS - 2', '10', 'IPS', 'A. YANI RT 10 RW 3 DESA JORONG KECAMATAN Kec. Jorong', '082254673085', '', '', '', '', '', '1'),
(543, 'RIKA', '0023911930', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'PDAM RT 3 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '083152233802', '', '', '', '', '', '1'),
(544, 'SITI LASMINA', '0027944828', '12-IPS-2', '12 - IPS - 2', '12', 'IPS', 'AMBAWANG RT 13 RW 0 DESA Ambawang KECAMATAN Kec. Batu Ampar', '082251882950', '', '', '', '', '', '1'),
(545, 'SUGIANTO', '0023911907', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'MERBABU RT 7 RW 4 DESA ASAM JAYA KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1');
INSERT INTO `app_student` (`id_`, `std_name`, `std_nisn`, `std_class_code`, `std_class_name`, `std_grade`, `std_major`, `std_address`, `std_hp`, `std_email`, `std_activity`, `std_sick`, `std_ijin`, `std_absen`, `std_status`) VALUES
(546, 'UMI SALAMAH', '0028433782', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'TRANS 200 RT 3 RW 1 DESA KARANG REJO KECAMATAN Kec. Jorong', '085332975581', '', '', '', '', '', '1'),
(547, 'WAHYU MAULANA', '0017511997', '12-IPS-2', '12 - IPS - 2', '10', 'IPS', 'AMBAWANG RT 9 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082230829307', '', '', '', '', '', '1'),
(548, 'YOGA PRANATA', '0017512033', '12-IPS-2', '12 - IPS - 2', '11', 'IPS', 'TEGUHAN RT 1 RW 1 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082251799809', '', '', '', '', '', '1'),
(549, 'ADITIYA JUNI AFRIANI NINGSIH', '0014949096', '12-IPS-3', '12 - IPS - 3', '10', 'IPS', 'AMBAWANG RT 3 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082255439717', '', '', '', '', '', '1'),
(550, 'AGUNG LIDIANTO', '0010353806', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'JILATAN ALUR RT 3 RW 0 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '083140532127', '', '', '', '', '', '1'),
(551, 'AGUS KURNIAWAN', '0016188816', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'DUSUN BANJAR ARUM RT 16 RW 5 DESA KARANG REJO KECAMATAN Kec. Jorong', '085390655195', '', '', '', '', '', '1'),
(552, 'AHMAD FAHRUROZI', '0023070921', '12-IPS-3', '12 - IPS - 3', '11', 'IPS', 'BATANG BANYU RT 5 RW 1 DESA BATANG BANYU KECAMATAN Kec. Jorong', '082338706363', '', '', '', '', '', '1'),
(553, 'ALDI', '0010489380', '12-IPS-3', '12 - IPS - 3', '10', 'IPS', 'ASAM JAYA RT 4 RW 2 DESA ASAM JAYA KECAMATAN Kec. Jorong', '082351761878', '', '', '', '', '', '1'),
(554, 'ALSYA DEA MUSTIKA', '0003094680', '12-IPS-3', '12 - IPS - 3', '10', 'IPS', 'HM SARBINI RT 2 RW 1 DESA DAMAR LIMA KECAMATAN Kec. Batu Ampar', '085347122497', '', '', '', '', '', '1'),
(555, 'ANISA LAILANI', '0021896355', '12-IPS-3', '12 - IPS - 3', '10', 'IPS', 'A YANI RT 3 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082251520149', '', '', '', '', '', '1'),
(556, 'ANNISA NUR AISYAH', '9993899594', '12-IPS-3', '12 - IPS - 3', '11', 'IPS', 'A. YANI RT 11 RW 2 DESA JORONG KECAMATAN Kec. Jorong', '085332057150', '', '', '', '', '', '1'),
(557, 'ANNISA ZAIN ROFIFAH', '0023911938', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'AKASIA RT 2 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '082210509126', '', '', '', '', '', '1'),
(558, 'ARIF RAHMAN HAKIM', '0016642451', '12-IPS-3', '12 - IPS - 3', '11', 'IPS', 'A. Yani RT 5 RW 0 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '081349656258', '', '', '', '', '', '1'),
(559, 'AULIA AGUSTINA', '0023911935', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'A. YANI RT 2 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '081351404182', '', '', '', '', '', '1'),
(560, 'AULIA ASTUTI', '0021896308', '12-IPS-3', '12 - IPS - 3', '10', 'IPS', 'GG SEJAHTERA RT 17 RW 2 DESA JORONG KECAMATAN Kec. Jorong', '085287442738', '', '', '', '', '', '1'),
(561, 'DIDIT SUJANA', '0021896872', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'TRANS 200 RT 11 RW 3 DESA KARANG REJO KECAMATAN Kec. Jorong', '082350078333', '', '', '', '', '', '1'),
(562, 'DIKI SETIAWAN', '0003094090', '12-IPS-3', '12 - IPS - 3', '10', 'IPS', 'Danau Biawak RT 4 RW 0 DESA BATALANG KECAMATAN Kec. Jorong', '085248743577', '', '', '', '', '', '1'),
(563, 'FARIDA', '0002852193', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'Bumi Asri RT 6 RW 8 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082260428885', '', '', '', '', '', '1'),
(564, 'FENI WIDIYAWATI', '0016732713', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'SIMPANG 3 RT 12 RW 4 DESA SWARANGAN KECAMATAN Kec. Jorong', '081349412036', '', '', '', '', '', '1'),
(565, 'FIDO ALFIANO', '0028817221', '12-IPS-3', '12 - IPS - 3', '10', 'IPS', 'ALUR RT 13 RW 2 DESA ALUR KECAMATAN Kec. Jorong', '082254317330', '', '', '', '', '', '1'),
(566, 'MEILINA', '0016404070', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'HANG TUAH RT 4 RW 2 DESA JORONG KECAMATAN Kec. Jorong', '082252133671', '', '', '', '', '', '1'),
(567, 'MUHAMMAD ARIFIN', '0010478458', '12-IPS-3', '12 - IPS - 3', '11', 'IPS', 'DANAU BIAWAK RT 5 RW 0 DESA BATALANG KECAMATAN Kec. Jorong', '082234134592', '', '', '', '', '', '1'),
(568, 'MUHAMMAD ARIYADI', '0017512028', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'DAMIT RT 5 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082153535660', '', '', '', '', '', '1'),
(569, 'MUHAMMAD AZIS MAULANA', '0022226076', '12-IPS-3', '12 - IPS - 3', '10', 'IPS', 'BINJAI RT 1 RW 1 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '081250920472', '', '', '', '', '', '1'),
(570, 'MUHAMMAD JUMADIL FAZERI', '9993851639', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'PDAM RT 3 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '085345130396', '', '', '', '', '', '1'),
(571, 'RAHMADANI', '0016732559', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'AMBAWANG RT 6 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '085248460853', '', '', '', '', '', '1'),
(572, 'RAHMAT MAULANA', '0029924469', '12-IPS-3', '12 - IPS - 3', '12', 'IPS', 'TRANS 200 RT 18 RW 5 DESA KARANG REJO KECAMATAN Kec. Jorong', '082253769335', '', '', '', '', '', '1'),
(573, 'RICO PUJI CAHYANTO', '9983790220', '12-IPS-3', '12 - IPS - 3', '11', 'IPS', 'A. YANI RT 4 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '082253552844', '', '', '', '', '', '1'),
(574, 'SELMA HAKASA', '0023325716', '12-IPS-3', '12 - IPS - 3', '10', 'IPS', 'TRANS 200 RT 1 RW 1 DESA KARANG REJO KECAMATAN Kec. Jorong', '085388546517', '', '', '', '', '', '1'),
(575, 'SHAIFUL RAHMAN', '0010478852', '12-IPS-3', '12 - IPS - 3', '11', 'IPS', 'WONO SARI RT 12 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082255989819', '', '', '', '', '', '1'),
(576, 'SUSILO ADITYA PRATAMA', '0021897793', '12-IPS-3', '12 - IPS - 3', '10', 'IPS', 'ALUR SABUHUR RT 19 RW 5 DESA ALUR SABUHUR KECAMATAN Kec. Jorong', '085346294043', '', '', '', '', '', '1'),
(577, 'TRI ASTUTI', '0021105601', '12-IPS-3', '12 - IPS - 3', '10', 'IPS', 'AMBAWANG RT 7 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082251934036', '', '', '', '', '', '1'),
(578, 'WIDYA FIRLIANI', '0028817222', '12-IPS-3', '12 - IPS - 3', '11', 'IPS', 'SEBELAS MARET RT 9 RW 2 DESA ALUR KECAMATAN Kec. Jorong', '082352195052', '', '', '', '', '', '1'),
(579, 'YUPI FAHRIADI', '0024648766', '12-IPS-3', '12 - IPS - 3', '11', 'IPS', 'TRANS 200 RT 2 RW 1 DESA KARANG REJO KECAMATAN Kec. Jorong', '082255154794', '', '', '', '', '', '1'),
(580, 'ZAENAL FADHLI', '0010353824', '12-IPS-3', '12 - IPS - 3', '11', 'IPS', 'DS JILATAN ALUR RT 13 RW 6 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082254980656', '', '', '', '', '', '1'),
(581, 'ALFINA DAMAYANTI', '0023911839', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'PULAU DURIAN ASAM-ASAM RT 5 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082298829536', '', '', '', '', '', '1'),
(582, 'DAFFA SURYA APRILYAWAN', '0017157285', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'TRANS 400 RT 2 RW 1 DESA ASAM JAYA KECAMATAN Kec. Jorong', '085332971772', '', '', '', '', '', '1'),
(583, 'EKO SULIYANTO', '0025531063', '12-IPS-4', '12 - IPS - 4', '12', 'IPS', 'BATALANG RT 3 RW 1 DESA BATALANG KECAMATAN Kec. Batu Ampar', '082251772432', '', '', '', '', '', '1'),
(584, 'FEBIYANI', '0024289273', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'Banjar Arum RT 11 RW 3 DESA KARANG REJO KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(585, 'GUSTI ADI SAPUTRA', '0023911939', '12-IPS-4', '12 - IPS - 4', '11', 'IPS', 'A YANI RT 2 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '083150523807', '', '', '', '', '', '1'),
(586, 'HERVINA', '0024618408', '12-IPS-4', '12 - IPS - 4', '11', 'IPS', 'PERUM CITRA BLOK A 9 RT 0 RW 0 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082251513428', '', '', '', '', '', '1'),
(587, 'ISMA SYARA', '0028477918', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'TRAN 500 RT 14 RW 4 DESA ASRI MULYA KECAMATAN Kec. Jorong', '082251174931', '', '', '', '', '', '1'),
(588, 'LATA DONNI PRANATA HAYON', '0014488167', '12-IPS-4', '12 - IPS - 4', '12', 'IPS', 'TRANS 200 RT 14 RW 3 DESA KARANG REJO KECAMATAN Kec. Jorong', '082255750992', '', '', '', '', '', '1'),
(589, 'LELY PURWITA HANDAYANI', '0003094345', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'Bumi Asri RT 2 RW 1 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082253559686', '', '', '', '', '', '1'),
(590, 'M. JAINI', '0017511754', '12-IPS-4', '12 - IPS - 4', '11', 'IPS', 'PDAM RT 3 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '081348248108', '', '', '', '', '', '1'),
(591, 'MEILISSA ANGGREINI', '0023912209', '12-IPS-4', '12 - IPS - 4', '12', 'IPS', 'TEGUHAN RT 4 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '081348107610', '', '', '', '', '', '1'),
(592, 'MELIANTI DIANG', '0026382045', '12-IPS-4', '12 - IPS - 4', '11', 'IPS', 'TRANS 300 RT 18 RW 5 DESA KARANG REJO KECAMATAN Kec. Jorong', '085251764654', '', '', '', '', '', '1'),
(593, 'MUHAMAD ANWAR', '0012280967', '12-IPS-4', '12 - IPS - 4', '11', 'IPS', 'DAMIT HULU RT 7 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082320038227', '', '', '', '', '', '1'),
(594, 'MUHAMMAD AFIF FARICHIN', '0018558459', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'SIMPANG EMPAT RT 3 RW 1 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082256407094', '', '', '', '', '', '1'),
(595, 'MUHAMMAD AINUR RIZKY', '0017511990', '12-IPS-4', '12 - IPS - 4', '12', 'IPS', 'AMBAWANG RT 9 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '085287449585', '', '', '', '', '', '1'),
(596, 'MUHAMMAD FERDI EKA RAMADANI', '0010353813', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'JILATAN ALUR RT 6 RW 2 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '085386706442', '', '', '', '', '', '1'),
(597, 'MUHAMMAD RIFKI', '0023911874', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'A. YANI RT 13 RW 4 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082250154873', '', '', '', '', '', '1'),
(598, 'MUHAMMAD YASSAR FADHIL', '0010478422', '12-IPS-4', '12 - IPS - 4', '11', 'IPS', 'Ambawang RT 3 RW 3 DESA Ambawang KECAMATAN Kec. Batu Ampar', '082256948245', '', '', '', '', '', '1'),
(599, 'MUJI', '0009012404', '12-IPS-4', '12 - IPS - 4', '12', 'IPS', 'WONOKOYO RT 5 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '087709208142', '', '', '', '', '', '1'),
(600, 'MULIANSYAH', '0017511797', '12-IPS-4', '12 - IPS - 4', '12', 'IPS', 'SWARANGAN RT 1 RW 2 DESA SWARANGAN KECAMATAN Kec. Jorong', '082254914716', '', '', '', '', '', '1'),
(601, 'NADILA APRILIA', '0017511762', '12-IPS-4', '12 - IPS - 4', '12', 'IPS', 'A. YANI RT 1 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '05151755638', '', '', '', '', '', '1'),
(602, 'NIA', '0023071361', '12-IPS-4', '12 - IPS - 4', '12', 'IPS', 'Wonorejo RT 8 RW 0 DESA Damit Hulu KECAMATAN Kec. Batu Ampar', '082253769396', '', '', '', '', '', '1'),
(603, 'NUR AENI', '0026901555', '12-IPS-4', '12 - IPS - 4', '11', 'IPS', 'CAMP PT GMK RT 9 RW 0 DESA BATALANG KECAMATAN Kec. Jorong', '082251772440', '', '', '', '', '', '1'),
(604, 'NURFADILLAH', '0023074809', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'BATALANG RT 2 RW 0 DESA BATALANG KECAMATAN Kec. Jorong', '082217406953', '', '', '', '', '', '1'),
(605, 'RISKY FAHLIDA LASMI', '0018151993', '12-IPS-4', '12 - IPS - 4', '12', 'IPS', 'TRAN 200 RT 8 RW 2 DESA KARANG REJO KECAMATAN Kec. Jorong', '082255634912', '', '', '', '', '', '1'),
(606, 'RIYANTI DWI UTAMI', '0017511759', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'A. YANI RT 2 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '082251599271', '', '', '', '', '', '1'),
(607, 'SITI ROHMAH FITRIANI', '0017512040', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'BANGUN REJO RT 9 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082254583157', '', '', '', '', '', '1'),
(608, 'SOPYA RAHMA YUNIAR', '0021897414', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'MUARA ASAM ASAM RT 2 RW 1 DESA MUARA ASAM ASAM KECAMATAN Kec. Jorong', '081255606572', '', '', '', '', '', '1'),
(609, 'SURIADI', '0010378658', '12-IPS-4', '12 - IPS - 4', '10', 'IPS', 'Sukorejo RT 19 RW 0 DESA SABUHUR KECAMATAN Kec. Jorong', '082256298779', '', '', '', '', '', '1'),
(610, 'VERA APRILIANA', '0023493421', '12-IPS-4', '12 - IPS - 4', '11', 'IPS', 'KAMPUNG BARU RT 3 RW 1 DESA KAMPUNG BARU KECAMATAN Kec. Jorong', '085247166655', '', '', '', '', '', '1'),
(611, 'WAHYUDI', '0006064625', '12-IPS-4', '12 - IPS - 4', '11', 'IPS', 'AMBAWANG RT 5 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082254563571', '', '', '', '', '', '1'),
(612, 'YUNITA SARI', '0028477919', '12-IPS-4', '12 - IPS - 4', '12', 'IPS', 'TRANS 500 RT 6 RW 2 DESA ASRI MULYA KECAMATAN Kec. Jorong', '082358702216', '', '', '', '', '', '1'),
(613, 'AGUS MASKUN BAIHAQI', '0023912174', '12-MIPA-1', '12 - MIPA - 1', '12', 'MIPA', 'AMBAWANG RT 2 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082251036938', '', '', '', '', '', '1'),
(614, 'AHMAD OKTOVIANSAH', '0023073518', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'TRANS 200 RT 5 RW 1 DESA KARANG REJO KECAMATAN Kec. Jorong', '082237645626', '', '', '', '', '', '1'),
(615, 'AHMAD REZA FAHLEVI', '0023911879', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'A. YANI RT 13 RW 4 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082216229860', '', '', '', '', '', '1'),
(616, 'AKHMAD FAUZI', '0002734930', '12-MIPA-1', '12 - MIPA - 1', '10', 'MIPA', 'SEBELAS MARET RT 13 RW 3 DESA ALUR KECAMATAN Kec. Jorong', '082251388649', '', '', '', '', '', '1'),
(617, 'ANUGERAH ADHI BRILIAN', '0017511760', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'A. YANI RT 1 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '081348484237', '', '', '', '', '', '1'),
(618, 'AULIA SAFITRI', '0028014999', '12-MIPA-1', '12 - MIPA - 1', '10', 'MIPA', 'Sukorejo RT 19 RW 0 DESA ALUR SABUHUR KECAMATAN Kec. Jorong', '082254698604', '', '', '', '', '', '1'),
(619, 'BISMA ZEGA RYNAWAN K. Y.', '0023912177', '12-MIPA-1', '12 - MIPA - 1', '10', 'MIPA', 'Gunung Sari RT 10 RW 0 DESA AMBAWANG KECAMATAN Kec. Jorong', '082256889036', '', '', '', '', '', '1'),
(620, 'DEVI AMELIA', '0017511761', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'TANJUNG PERAK RT 7 RW 3 DESA JORONG KECAMATAN Kec. Jorong', '082256407038', '', '', '', '', '', '1'),
(621, 'ELA DIANA NOVITA', '0023073533', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'BANJARSARI RT 8 RW 2 DESA KARANG REJO KECAMATAN Kec. Jorong', '082210381003', '', '', '', '', '', '1'),
(622, 'FAHRI', '0028477911', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'A. Yani RT 4 RW 1 DESA ASRI MULYA KECAMATAN Kec. Jorong', '081348666312', '', '', '', '', '', '1'),
(623, 'JABAR NUR', '0023956859', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'Bumi Asri RT 7 RW 0 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082243783472', '', '', '', '', '', '1'),
(624, 'JANATIN NAZIRA IHWANA', '0022167514', '12-MIPA-1', '12 - MIPA - 1', '10', 'MIPA', 'A. YANI RT 15 RW 0 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '085349911747', '', '', '', '', '', '1'),
(625, 'LUSIYANA', '0020031846', '12-MIPA-1', '12 - MIPA - 1', '10', 'MIPA', 'SEBELAS MARET RT 12 RW 2 DESA ALUR KECAMATAN Kec. Jorong', '082254672768', '', '', '', '', '', '1'),
(626, 'LUVITA SARI', '0017512041', '12-MIPA-1', '12 - MIPA - 1', '10', 'MIPA', 'TEGUHAN RT 5 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082254672601', '', '', '', '', '', '1'),
(627, 'M. HASYIM HASBULLAH', '0030313491', '12-MIPA-1', '12 - MIPA - 1', '12', 'MIPA', 'A. YANI RT 1 RW 11 DESA JORONG KECAMATAN Kec. Jorong', '082254045946', '', '', '', '', '', '1'),
(628, 'M. HENDRA', '0016732555', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'A. YANI RT 1 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '085393164538', '', '', '', '', '', '1'),
(629, 'M. YASIN', '0033573262', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'SUKOREJO RT 21 RW 5 DESA SABUHUR KECAMATAN Kec. Jorong', '085349580998', '', '', '', '', '', '1'),
(630, 'MAHFUZATUN ARAFAH', '0003878341', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'TRANS 300 RT 15 RW 5 DESA KARANG REJO KECAMATAN Kec. Jorong', '082255988154', '', '', '', '', '', '1'),
(631, 'MEDY HERMAWAN', '0027305855', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'BUMI AGUNG RT 3 RW 2 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082255154872', '', '', '', '', '', '1'),
(632, 'MUHAMMAD MARUWAN', '0011102735', '12-MIPA-1', '12 - MIPA - 1', '12', 'MIPA', 'CAMP GMK RT 17 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082252871949', '', '', '', '', '', '1'),
(633, 'MUJAYANA', '0027037424', '12-MIPA-1', '12 - MIPA - 1', '12', 'MIPA', 'BUMI ASRI RT 10 RW 4 DESA JILATAN ALUR KECAMATAN Kec. Batu Ampar', '082243784397', '', '', '', '', '', '1'),
(634, 'NABELLA PERMATA SARI', '0023911869', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'A. Yani RT 1 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '081349326364', '', '', '', '', '', '1'),
(635, 'NASRULLAH', '0010478504', '12-MIPA-1', '12 - MIPA - 1', '12', 'MIPA', 'TRANS 400 RT 3 RW 2 DESA ASAM JAYA KECAMATAN Kec. Jorong', '085252667262', '', '', '', '', '', '1'),
(636, 'NOR MAYA', '0012825935', '12-MIPA-1', '12 - MIPA - 1', '10', 'MIPA', 'TRANS 200 RT 3 RW 1 DESA KARANG REJO KECAMATAN Kec. Jorong', '082255321538', '', '', '', '', '', '1'),
(637, 'NOVI PRAMITA SARI', '0021618015', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'A. Yani RT 13 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '081351758724', '', '', '', '', '', '1'),
(638, 'NOVITA', '0012882020', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'SIMPANG 3 RT 12 RW 4 DESA SWARANGAN KECAMATAN Kec. Jorong', '082250795808', '', '', '', '', '', '1'),
(639, 'PAUZI SULTAN AKBAR', '0010827265', '12-MIPA-1', '12 - MIPA - 1', '12', 'MIPA', 'DAMIT HULU RT 1 RW 1 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082251053797', '', '', '', '', '', '1'),
(640, 'RAHMAT BIMANTARA', '0030138459', '12-MIPA-1', '12 - MIPA - 1', '12', 'MIPA', 'TRANS 300 RT 14 RW 4 DESA KARANG REJO KECAMATAN Kec. Jorong', '082255750992', '', '', '', '', '', '1'),
(641, 'RISKA AGUSTIN', '0017511994', '12-MIPA-1', '12 - MIPA - 1', '10', 'MIPA', 'BLOK C RT 9 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082254014136', '', '', '', '', '', '1'),
(642, 'RONI AVIANTO', '0017511758', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'A. YANI RT 2 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '081255608624', '', '', '', '', '', '1'),
(643, 'TULULA ZUHRA', '0021897803', '12-MIPA-1', '12 - MIPA - 1', '11', 'MIPA', 'ALUR SABUHUR RT 19 RW 0 DESA ALUR SABUHUR KECAMATAN Kec. Jorong', '082236301157', '', '', '', '', '', '1'),
(644, 'WALID AL HAFIDZ', '0023912205', '12-MIPA-1', '12 - MIPA - 1', '10', 'MIPA', 'BANGUN REJO RT 9 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '082254248487', '', '', '', '', '', '1'),
(645, 'AHMAD ALPIANOOR', '0023911880', '12-MIPA-2', '12 - MIPA - 2', '11', 'MIPA', 'A. YANI RT 9 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082358712000', '', '', '', '', '', '1'),
(646, 'AHMAD JUNAIDI', '0023071392', '12-MIPA-2', '12 - MIPA - 2', '11', 'MIPA', 'A. YANI RT 11 RW 2 DESA JORONG KECAMATAN Kec. Jorong', '082195084070', '', '', '', '', '', '1'),
(647, 'AIDA DWI AGNES ANDRIANI', '0008177721', '12-MIPA-2', '12 - MIPA - 2', '11', 'MIPA', 'WONOKOYO RT 4 RW 0 DESA DAMIT HULU KECAMATAN Kec. Batu Ampar', '082253258350', '', '', '', '', '', '1'),
(648, 'AINIA MARDIANA', '0021897791', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'SUKOREJO RT 4 RW 0 DESA SABUHUR KECAMATAN Kec. Batu Ampar', '08125186167', '', '', '', '', '', '1'),
(649, 'ANGGUN DELLA FARADILLA', '0011307100', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'TRANS RT 12 RW 0 DESA ALUR KECAMATAN Kec. Jorong', '082236864257', '', '', '', '', '', '1'),
(650, 'ANIDA TRI NASTITI', '0017512006', '12-MIPA-2', '12 - MIPA - 2', '11', 'MIPA', 'AMBAWANG RT 4 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082254053266', '', '', '', '', '', '1'),
(651, 'DIANITAMI ANANDA PUTRI', '0035653724', '12-MIPA-2', '12 - MIPA - 2', '12', 'MIPA', 'TRANS 200 RT 5 RW 1 DESA KARANG REJO KECAMATAN Kec. Jorong', '081255183841', '', '', '', '', '', '1'),
(652, 'FATMAWATI', '0023911924', '12-MIPA-2', '12 - MIPA - 2', '11', 'MIPA', 'A. YANI RT 4 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '085350760556', '', '', '', '', '', '1'),
(653, 'FERRAWATI DEVI RISNA APRILIYA', '0013012423', '12-MIPA-2', '12 - MIPA - 2', '11', 'MIPA', 'Banjar Sari RT 5 RW 1 DESA KARANG REJO KECAMATAN Kec. Jorong', '085245313677', '', '', '', '', '', '1'),
(654, 'FIRMAN', '0017511697', '12-MIPA-2', '12 - MIPA - 2', '11', 'MIPA', 'A. Yani RT 13 RW 1 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '085391299440', '', '', '', '', '', '1'),
(655, 'HELDA', '0024942442', '12-MIPA-2', '12 - MIPA - 2', '12', 'MIPA', 'A. YANI KM. 96 RT 1 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '082254917935', '', '', '', '', '', '1'),
(656, 'HERIANSYAH', '0028817209', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'TRANS RT 10 RW 2 DESA ALUR KECAMATAN Kec. Jorong', '085248151136', '', '', '', '', '', '1'),
(657, 'INDAH LESTARI', '0023911934', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'A. YANI RT 1 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '081349786145', '', '', '', '', '', '1'),
(658, 'ISNA WAHYU HARMIYATI', '0028817213', '12-MIPA-2', '12 - MIPA - 2', '12', 'MIPA', 'Sebelas Maret RT 9 RW 2 DESA Alur KECAMATAN Kec. Jorong', '082256004325', '', '', '', '', '', '1'),
(659, 'KHAIRUR RIZAL', '0019461889', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'DAMIT RT 20 RW 0 DESA DAMIT KECAMATAN Kec. Batu Ampar', '085251035935', '', '', '', '', '', '1'),
(660, 'M. NOR YASYIN', '0011307097', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'TRANS RT 8 RW 2 DESA ALUR KECAMATAN Kec. Jorong', '085348001607', '', '', '', '', '', '1'),
(661, 'MARTINAH', '0017512008', '12-MIPA-2', '12 - MIPA - 2', '11', 'MIPA', 'AMBAWANG RT 13 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '', '', '', '', '', '', '1'),
(662, 'MAULIDA AMALIA', '0023071374', '12-MIPA-2', '12 - MIPA - 2', '12', 'MIPA', 'DATUK TIMANG RT 6 RW 2 DESA JORONG KECAMATAN Kec. Jorong', '082256880349', '', '', '', '', '', '1'),
(663, 'MERRY DWI ANDRIANI', '0011198866', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'A. YANI RT 13 RW 4 DESA JORONG KECAMATAN Kec. Jorong', '081351164489', '', '', '', '', '', '1'),
(664, 'MUHAMMAD AKMAL ROIHAN', '0017328297', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'PULAU DURIAN RT 5 RW 2 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '', '', '', '', '', '', '1'),
(665, 'MUHAMMAD SOPIAN', '0026627282', '12-MIPA-2', '12 - MIPA - 2', '11', 'MIPA', 'A.Yani RT 12 RW 0 DESA Asam jaya KECAMATAN Kec. Jorong', '085278006210', '', '', '', '', '', '1'),
(666, 'MUHAMMAD SYAHRUL ABIDIN', '0021896344', '12-MIPA-2', '12 - MIPA - 2', '12', 'MIPA', 'A. YANI KM. 112 RT 1 RW 11 DESA ASAM-ASAM KECAMATAN Kec. Jorong', '082159202167', '', '', '', '', '', '1'),
(667, 'MUNJIAH', '0010299462', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'PDAM RT 3 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '082254922490', '', '', '', '', '', '1'),
(668, 'NELI SUPRIATI', '0023071381', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'DATUK TIMANG RT 6 RW 2 DESA JORONG KECAMATAN Kec. Jorong', '082254206898', '', '', '', '', '', '1'),
(669, 'NIA YUSTIKASARI', '0028817219', '12-MIPA-2', '12 - MIPA - 2', '12', 'MIPA', 'BAGIO RT 7 RW 0 DESA ALUR KECAMATAN Kec. Jorong', '082236301627', '', '', '', '', '', '1'),
(670, 'NINA SUHARTINI', '0014285963', '12-MIPA-2', '12 - MIPA - 2', '12', 'MIPA', 'HANG TUAH RT 1 RW 2 DESA SWARANGAN KECAMATAN Kec. Jorong', '082254917701', '', '', '', '', '', '1'),
(671, 'NOR AIDA SANTI', '0023912173', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'AMBAWANG RT 7 RW 0 DESA AMBAWANG KECAMATAN Kec. Batu Ampar', '082252633418', '', '', '', '', '', '1'),
(672, 'NUR MUTIA MAULIDA', '0017511846', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'A. YANI KM. 96 RT 1 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '082153236520', '', '', '', '', '', '1'),
(673, 'PEBRIANI', '0023071380', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'GANG RAHMAH RT 8 RW 3 DESA JORONG KECAMATAN Kec. Jorong', '085249777537', '', '', '', '', '', '1'),
(674, 'RISNA', '0028817215', '12-MIPA-2', '12 - MIPA - 2', '10', 'MIPA', 'ALUR RT 8 RW 2 DESA ALUR KECAMATAN Kec. Jorong', '085250008070', '', '', '', '', '', '1'),
(675, 'SANIA SOLIHIN', '0023071391', '12-MIPA-2', '12 - MIPA - 2', '11', 'MIPA', 'DATUK TIMANG RT 9 RW 3 DESA JORONG KECAMATAN Kec. Jorong', '085311122888', '', '', '', '', '', '1'),
(676, 'YUSTIA PURNAMA PUTRA', '0016734013', '12-MIPA-2', '12 - MIPA - 2', '11', 'MIPA', 'A. YANI RT 1 RW 1 DESA JORONG KECAMATAN Kec. Jorong', '082385616150', '', '', '', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `app_tp`
--

CREATE TABLE `app_tp` (
  `id_` int(11) NOT NULL,
  `tp_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_tp`
--

INSERT INTO `app_tp` (`id_`, `tp_name`) VALUES
(1, '2019/2020'),
(2, '2020/2021'),
(3, '2021/2022'),
(4, '2022/2023');

-- --------------------------------------------------------

--
-- Table structure for table `std_absen`
--

CREATE TABLE `std_absen` (
  `id_` int(11) NOT NULL,
  `abs_nisn` varchar(15) NOT NULL,
  `abs_cl_code` varchar(30) NOT NULL,
  `abs_ket` varchar(1) NOT NULL,
  `abs_ket_lain` text NOT NULL,
  `abs_date` date NOT NULL,
  `abs_tg` varchar(2) NOT NULL,
  `abs_bln` varchar(2) NOT NULL,
  `abs_th` varchar(4) NOT NULL,
  `abs_tp` varchar(20) NOT NULL,
  `abs_semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `std_rekap_absen`
--

CREATE TABLE `std_rekap_absen` (
  `id_` int(11) NOT NULL,
  `abs_nisn` varchar(15) NOT NULL,
  `abs_cl_code` varchar(30) NOT NULL,
  `abs_ket` varchar(1) NOT NULL,
  `abs_ket_lain` text NOT NULL,
  `abs_date` date NOT NULL,
  `abs_tg` varchar(2) NOT NULL,
  `abs_bln` varchar(2) NOT NULL,
  `abs_th` varchar(4) NOT NULL,
  `abs_tp` varchar(20) NOT NULL,
  `abs_semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `std_rekap_absen`
--

INSERT INTO `std_rekap_absen` (`id_`, `abs_nisn`, `abs_cl_code`, `abs_ket`, `abs_ket_lain`, `abs_date`, `abs_tg`, `abs_bln`, `abs_th`, `abs_tp`, `abs_semester`) VALUES
(1, '0042871792', '10-MIPA-1', '3', '', '2019-12-22', '22', '12', '2019', '2019/2020', 'Ganjil'),
(2, '0041597153', '10-MIPA-1', '1', '', '2019-12-22', '22', '12', '2019', '2019/2020', 'Ganjil'),
(3, '0042871794', '10-MIPA-1', '2', '', '2019-12-22', '22', '12', '2019', '2019/2020', 'Ganjil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_absen_user`
--
ALTER TABLE `app_absen_user`
  ADD PRIMARY KEY (`id_`);

--
-- Indexes for table `app_class`
--
ALTER TABLE `app_class`
  ADD PRIMARY KEY (`id_`);

--
-- Indexes for table `app_month`
--
ALTER TABLE `app_month`
  ADD PRIMARY KEY (`id_`);

--
-- Indexes for table `app_school`
--
ALTER TABLE `app_school`
  ADD PRIMARY KEY (`id_`);

--
-- Indexes for table `app_semester`
--
ALTER TABLE `app_semester`
  ADD PRIMARY KEY (`id_`);

--
-- Indexes for table `app_student`
--
ALTER TABLE `app_student`
  ADD PRIMARY KEY (`id_`);

--
-- Indexes for table `app_tp`
--
ALTER TABLE `app_tp`
  ADD PRIMARY KEY (`id_`);

--
-- Indexes for table `std_absen`
--
ALTER TABLE `std_absen`
  ADD PRIMARY KEY (`id_`);

--
-- Indexes for table `std_rekap_absen`
--
ALTER TABLE `std_rekap_absen`
  ADD PRIMARY KEY (`id_`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_absen_user`
--
ALTER TABLE `app_absen_user`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_class`
--
ALTER TABLE `app_class`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `app_month`
--
ALTER TABLE `app_month`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `app_school`
--
ALTER TABLE `app_school`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_semester`
--
ALTER TABLE `app_semester`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_student`
--
ALTER TABLE `app_student`
  MODIFY `id_` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=677;

--
-- AUTO_INCREMENT for table `app_tp`
--
ALTER TABLE `app_tp`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `std_absen`
--
ALTER TABLE `std_absen`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `std_rekap_absen`
--
ALTER TABLE `std_rekap_absen`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
