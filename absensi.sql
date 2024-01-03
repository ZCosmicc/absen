-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2024 at 08:40 AM
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
  `email` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(10) NOT NULL,
  `session` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_absen_user`
--

INSERT INTO `app_absen_user` (`id_`, `email`, `name`, `nip`, `password`, `role`, `session`) VALUES
(5, 'admin@gmail.com', 'admin', '0', '$2y$10$nqHl00BeXraGAFAKHbKsZuiY/sudctjZaPtuNntqmiN7nihG1woMq', 'admin', ''),
(8, 'budi@gmail.com', 'budi handi', '0002', '$2y$10$lbEhXAC5E/nb6t4/5l9.g.chJqyO.22IU7NaB3kua7lKFkb8.lb1.', 'guru', ''),
(9, 'andi@gmail.com', 'Andi Ahmad', '0001', '$2y$10$YErQ4DPQY3xwby5QJPSiauErxL2C2NtMr9TZ6YgSZqeWq2qdm2STe', 'guru', '');

-- --------------------------------------------------------

--
-- Table structure for table `app_class`
--

CREATE TABLE `app_class` (
  `id_` int(11) NOT NULL,
  `cl_code` varchar(30) NOT NULL,
  `cl_name` varchar(50) NOT NULL,
  `cl_grade` varchar(4) NOT NULL,
  `cl_teacher` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_class`
--

INSERT INTO `app_class` (`id_`, `cl_code`, `cl_name`, `cl_grade`, `cl_teacher`) VALUES
(1, '7-A', '7A', '7', 'andi@gmail.com'),
(2, '7-B', '7B', '7', 'budi@gmail.com'),
(3, '7-C', '7C', '7', 'andi@gmail.com'),
(4, '8-A', '8A', '8', 'budi@gmail.com');

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
(1, '30304201', 'SMP Negeri 31 Banjarmasin', 'Gg. Jamaluddin 1 No.RT.18, Antasan Kecil Tim., Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70123', '(0511) 3302693', 'smpn31bjm.sedapmalam@gmail.com', 'https://sekolahloka.com/data/smp-negeri-31-banjarm', 'logo.png', 'Selamat datang di sistem absensi siswa SMP Negeri 31 Banjarmasin', '2022/2023', 'Genap');

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
  `std_name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `std_nisn` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `std_class_code` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `std_class_name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `std_grade` varchar(2) CHARACTER SET utf8mb4 NOT NULL,
  `std_major` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `std_address` text CHARACTER SET utf8mb4 NOT NULL,
  `std_hp` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `std_email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `std_activity` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `std_sick` varchar(3) CHARACTER SET utf8mb4 NOT NULL,
  `std_ijin` varchar(3) CHARACTER SET utf8mb4 NOT NULL,
  `std_absen` varchar(3) CHARACTER SET utf8mb4 NOT NULL,
  `std_status` enum('0','1','2') CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_student`
--

INSERT INTO `app_student` (`id_`, `std_name`, `std_nisn`, `std_class_code`, `std_class_name`, `std_grade`, `std_major`, `std_address`, `std_hp`, `std_email`, `std_activity`, `std_sick`, `std_ijin`, `std_absen`, `std_status`) VALUES
(693, 'Ahmad', '0001', '7-A', '7A', '7', '-', 'tes', '123', 'tes@tes', '-', '-', '-', '-', '1'),
(694, 'Andi', '0002', '7-A', '7A', '7', '-', 'tes', '123', 'tes@tes', '-', '-', '-', '-', '1'),
(695, 'Budi', '0003', '7-B', '7B', '7', '-', 'tes', '123', 'tes@tes', '-', '-', '-', '-', '1'),
(696, 'Bedu', '0004', '7-B', '7B', '7', '-', 'tes', '123', 'tes@tes', '-', '-', '-', '-', '1');

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
(1, '2022/2023'),
(2, '2023/2024'),
(3, '2024/2025'),
(4, '2025/2026');

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
(53, '0003', '7-A', '0', '', '2024-01-03', '03', '01', '2024', '2022/2023', 'Genap'),
(54, '0001', '7-A', '0', '', '2024-01-03', '03', '01', '2024', '2022/2023', 'Genap'),
(55, '0002', '7-A', '0', '', '2024-01-03', '03', '01', '2024', '2022/2023', 'Genap'),
(65, '0003', '7-A', '0', '', '2024-01-04', '04', '01', '2024', '2022/2023', 'Genap'),
(66, '0001', '7-A', '0', '', '2024-01-04', '04', '01', '2024', '2022/2023', 'Genap'),
(67, '0002', '7-A', '0', '', '2024-01-04', '04', '01', '2024', '2022/2023', 'Genap');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_absen_user`
--
ALTER TABLE `app_absen_user`
  ADD PRIMARY KEY (`id_`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `app_class`
--
ALTER TABLE `app_class`
  ADD PRIMARY KEY (`id_`),
  ADD KEY `cl_teacher` (`cl_teacher`),
  ADD KEY `cl_code` (`cl_code`);

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
  ADD PRIMARY KEY (`id_`),
  ADD KEY `std_class_code` (`std_class_code`);

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
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id_` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=697;

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
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

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
