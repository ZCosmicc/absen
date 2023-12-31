-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 31, 2023 at 08:04 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

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

DROP TABLE IF EXISTS `app_absen_user`;
CREATE TABLE IF NOT EXISTS `app_absen_user` (
  `id_` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(10) NOT NULL,
  `session` varchar(100) NOT NULL,
  PRIMARY KEY (`id_`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_absen_user`
--

INSERT INTO `app_absen_user` (`id_`, `email`, `name`, `password`, `role`, `session`) VALUES
(0, 'admin1@tes.com', 'tes1', '$2y$10$C4k4RPjL.rRQILKQaEgj1eVllsczZyiSSS0pJ1UVeeYkOV9hxQE8S', 'tes1', ''),
(1, 'admin@adminabsen.com', 'admin1', '$2a$12$bM19hiVd7zztvy4nHAcguemav9D/d46aJCaVgZvuW7sybSs886Y1C', 'admin', ''),
(2, 'guru1@gmail.com', 'Guru 1', '$2a$12$nTlciY5318pvL5l9ZaAGBuIx.HKl4WyE4nLhZWW/j0lw/SsKI/YK6', 'guru', ''),
(3, 'guru2@gmail.com', 'Guru 2', '$2a$12$klqqQBB7bWQpcyHAFW8oIOjC6P1TdzAFI6.jx0Hnr4nnSyMOSCAsK', 'guru', '');

-- --------------------------------------------------------

--
-- Table structure for table `app_class`
--

DROP TABLE IF EXISTS `app_class`;
CREATE TABLE IF NOT EXISTS `app_class` (
  `id_` int NOT NULL AUTO_INCREMENT,
  `cl_code` varchar(30) NOT NULL,
  `cl_name` varchar(50) NOT NULL,
  `cl_grade` varchar(4) NOT NULL,
  `cl_teacher` varchar(50) NOT NULL,
  PRIMARY KEY (`id_`),
  KEY `cl_teacher` (`cl_teacher`),
  KEY `cl_code` (`cl_code`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_class`
--

INSERT INTO `app_class` (`id_`, `cl_code`, `cl_name`, `cl_grade`, `cl_teacher`) VALUES
(1, '7-A', '7A', '7', 'guru1@gmail.com'),
(2, '7-B', '7B', '7', 'guru1@gmail.com'),
(3, '7-C', '7C', '7', 'guru2@gmail.com'),
(4, '8-A', '8A', '8', 'guru1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `app_month`
--

DROP TABLE IF EXISTS `app_month`;
CREATE TABLE IF NOT EXISTS `app_month` (
  `id_` int NOT NULL AUTO_INCREMENT,
  `m_code` varchar(2) NOT NULL,
  `m_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

DROP TABLE IF EXISTS `app_school`;
CREATE TABLE IF NOT EXISTS `app_school` (
  `id_` int NOT NULL AUTO_INCREMENT,
  `npsn` varchar(8) NOT NULL,
  `sch_name` varchar(50) NOT NULL,
  `sch_address` text NOT NULL,
  `sch_tlp` varchar(15) NOT NULL,
  `sch_email` varchar(50) NOT NULL,
  `sch_web` varchar(50) NOT NULL,
  `sch_logo` varchar(50) NOT NULL,
  `sch_about` text NOT NULL,
  `sch_tp` varchar(20) NOT NULL,
  `sch_semester` varchar(10) NOT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_school`
--

INSERT INTO `app_school` (`id_`, `npsn`, `sch_name`, `sch_address`, `sch_tlp`, `sch_email`, `sch_web`, `sch_logo`, `sch_about`, `sch_tp`, `sch_semester`) VALUES
(1, '30304201', 'SMP Negeri 31 Banjarmasin', 'Gg. Jamaluddin 1 No.RT.18, Antasan Kecil Tim., Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70123', '(0511) 3302693', 'smpn31bjm.sedapmalam@gmail.com', 'https://sekolahloka.com/data/smp-negeri-31-banjarm', 'logo.png', 'Selamat datang di sistem absensi siswa SMP Negeri 31 Banjarmasin', '2022/2023', 'Genap');

-- --------------------------------------------------------

--
-- Table structure for table `app_semester`
--

DROP TABLE IF EXISTS `app_semester`;
CREATE TABLE IF NOT EXISTS `app_semester` (
  `id_` int NOT NULL AUTO_INCREMENT,
  `sem_name` varchar(10) NOT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

DROP TABLE IF EXISTS `app_student`;
CREATE TABLE IF NOT EXISTS `app_student` (
  `id_` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `std_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_nisn` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_class_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_class_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_grade` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_major` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_activity` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_sick` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_ijin` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_absen` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `std_status` enum('0','1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_`),
  KEY `std_class_code` (`std_class_code`)
) ENGINE=InnoDB AUTO_INCREMENT=685 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `app_student`
--

INSERT INTO `app_student` (`id_`, `std_name`, `std_nisn`, `std_class_code`, `std_class_name`, `std_grade`, `std_major`, `std_address`, `std_hp`, `std_email`, `std_activity`, `std_sick`, `std_ijin`, `std_absen`, `std_status`) VALUES
(679, 'tes', 'tes', '7-A', '7A', '7', 'tes', 'tes', 'tes', 'tes', '', '', '', '', '1'),
(683, 'tes', 'tes', '7-A', '7A', '7', '-', 'tes', 'tes', 'tes', '-', '-', '-', '-', '1'),
(684, 'tes', 'tes', '7-A', '7A', '7', '-', 'tes', 'tes', 'tes', '-', '-', '-', '-', '1');

-- --------------------------------------------------------

--
-- Table structure for table `app_tp`
--

DROP TABLE IF EXISTS `app_tp`;
CREATE TABLE IF NOT EXISTS `app_tp` (
  `id_` int NOT NULL AUTO_INCREMENT,
  `tp_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_tp`
--

INSERT INTO `app_tp` (`id_`, `tp_name`) VALUES
(1, '2022/2023'),
(2, '2023/2024'),
(3, '2024/2025'),
(4, '2025/2026');

-- --------------------------------------------------------

--
-- Table structure for table `std_absen`
--

DROP TABLE IF EXISTS `std_absen`;
CREATE TABLE IF NOT EXISTS `std_absen` (
  `id_` int NOT NULL AUTO_INCREMENT,
  `abs_nisn` varchar(15) NOT NULL,
  `abs_cl_code` varchar(30) NOT NULL,
  `abs_ket` varchar(1) NOT NULL,
  `abs_ket_lain` text NOT NULL,
  `abs_date` date NOT NULL,
  `abs_tg` varchar(2) NOT NULL,
  `abs_bln` varchar(2) NOT NULL,
  `abs_th` varchar(4) NOT NULL,
  `abs_tp` varchar(20) NOT NULL,
  `abs_semester` varchar(20) NOT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `std_rekap_absen`
--

DROP TABLE IF EXISTS `std_rekap_absen`;
CREATE TABLE IF NOT EXISTS `std_rekap_absen` (
  `id_` int NOT NULL AUTO_INCREMENT,
  `abs_nisn` varchar(15) NOT NULL,
  `abs_cl_code` varchar(30) NOT NULL,
  `abs_ket` varchar(1) NOT NULL,
  `abs_ket_lain` text NOT NULL,
  `abs_date` date NOT NULL,
  `abs_tg` varchar(2) NOT NULL,
  `abs_bln` varchar(2) NOT NULL,
  `abs_th` varchar(4) NOT NULL,
  `abs_tp` varchar(20) NOT NULL,
  `abs_semester` varchar(20) NOT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_class`
--
ALTER TABLE `app_class`
  ADD CONSTRAINT `app_class_ibfk_1` FOREIGN KEY (`cl_teacher`) REFERENCES `app_absen_user` (`email`);

--
-- Constraints for table `app_student`
--
ALTER TABLE `app_student`
  ADD CONSTRAINT `app_student_ibfk_1` FOREIGN KEY (`std_class_code`) REFERENCES `app_class` (`cl_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
