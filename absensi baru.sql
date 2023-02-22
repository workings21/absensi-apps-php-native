-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 22, 2023 at 08:47 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

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
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `building_id` int(8) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `building_scanner` varchar(50) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `long` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`building_id`, `code`, `name`, `address`, `building_scanner`, `lat`, `long`) VALUES
(3, 'SWYRA/2021', 'Kantor Cabang Banyuwangi', 'Jln Jend A. Yani no.12', '', '-6.9825284', '110.4088639'),
(4, 'SWQM6/2021', 'Kantor Unit Licin Banyuwangi', 'Jl. Raya Lijen no 9', '', '-6.2734817', '107.0941054');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employees_code` varchar(20) NOT NULL,
  `employees_email` varchar(30) NOT NULL,
  `employees_password` varchar(100) NOT NULL,
  `employees_name` varchar(50) NOT NULL,
  `position_id` int(5) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_login` datetime NOT NULL,
  `created_cookies` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employees_code`, `employees_email`, `employees_password`, `employees_name`, `position_id`, `shift_id`, `building_id`, `photo`, `created_login`, `created_cookies`) VALUES
(19, 'kusyanto@gmail.com', 'kusyanto@gmail.com', '0c081bbdc41006a43f6dbe733c9f567ccec8251a4fe0e6374add09ca9f9f3373', 'kusyanto isnandar', 7, 4, 4, '2022-11-07926a8a9d72804eb32f757e2e9bd999d0.jpg', '2022-12-18 19:10:32', '1178905638f03078dd4f46e8d3179d97'),
(20, 'reno@gmail.com', 'reno@gmail.com', '070453e78d69f175f68691a5bd10caaefff0e406560dc1ab85a362534f15be8a', 'reno lesgiarto', 7, 3, 4, '2022-11-07570ca40ffead2f8819d45ad5ba1b49d6.jpg', '2022-11-28 09:45:14', '78b804ae694765a95b63a66ff98b79f0'),
(21, 'adrian@gmail.com', 'adrian@gmail.com', '7807e791234041a3e709e473371212f0d868c38c4b6ce70178fe7d2d582a517a', 'adrian rizky', 7, 5, 4, '2022-11-07fb25c18f9324bbef881ab0d3ba13f7dd.jpg', '2023-02-19 16:01:52', 'dfb8efb97efb64dc426b7467cd1cb3e7'),
(89, 'OM001-2022', 'fadlan@gmail.com', 'ccbbd8831f4fd133ce1a45f2cc688ac26aabf99bd29a19d2ffdbac2ef0585d57', 'fadlan', 7, 5, 3, '', '2022-12-16 09:55:28', '55798b8a5b3b4c7508c6ba41590bfae4'),
(90, 'OM001-2023', 'adit@gmail.com', '08ab870f9999a67c014a927ec0ce3cdcdbef423ab638671f6db3e4e32b97d0b5', 'adit', 7, 4, 3, '', '2023-02-19 16:00:03', 'acdad99dc7c4b1ece5d6053026b9fa8d'),
(91, 'OM001-2023', 'ranu@gmail.com', '351e95d43b892ae410d16074d5c87eaa891e45544222246bf08e73d2b3dcd2fd', 'ranu', 7, 5, 4, '', '2023-02-22 08:22:15', '99a16a5d3cd2e8597f05624c716afdd4'),
(92, 'OM001-2023', 'as@gmail.com', 'b3b838a3a37cb991fbd9b998b51603376c6ebfb83804385ee594df087db98edd', 'asd', 7, 5, 3, '', '2023-02-22 00:00:00', 'af67e0eb0f20a1105d2141c90ee948f3');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` int(5) NOT NULL,
  `position_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `position_name`) VALUES
(7, 'Satpam');

-- --------------------------------------------------------

--
-- Table structure for table `presence`
--

CREATE TABLE `presence` (
  `presence_id` int(11) NOT NULL,
  `employees_id` int(11) NOT NULL,
  `presence_date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `picture_in` varchar(150) NOT NULL,
  `picture_out` varchar(150) NOT NULL,
  `present_id` int(11) NOT NULL COMMENT 'Masuk,Pulang,Tidak Hadir',
  `status_izin` enum('0','1') NOT NULL DEFAULT '0',
  `presence_address` text NOT NULL,
  `information` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presence`
--

INSERT INTO `presence` (`presence_id`, `employees_id`, `presence_date`, `time_in`, `time_out`, `picture_in`, `picture_out`, `present_id`, `status_izin`, `presence_address`, `information`) VALUES
(26, 12, '2021-06-26', '05:05:00', '11:05:00', 'sari-murni-in-2021-06-26-12.jpg', 'sari-murni-out-2021-06-26-12.jpg', 1, '0', '-1.4851831,102.43805809999999', ''),
(27, 12, '2021-06-30', '23:37:00', '00:00:00', 'sari-murni-in-2021-06-30-12.jpg', '', 1, '0', '-1.4851831,102.43805809999999', ''),
(28, 18, '2021-06-30', '23:42:00', '00:00:00', 'juki--in-2021-06-30-18.jpg', '', 1, '0', '-1.4851831,102.43805809999999', ''),
(29, 13, '2022-11-07', '11:43:00', '11:45:00', 'sari-ayu-in-2022-11-07-13.jpg', 'sari-ayu-out-2022-11-07-13.jpg', 3, '0', '-8.2288283,114.3513556', 'izin keluar kota'),
(30, 19, '2022-11-07', '12:57:00', '00:00:00', 'kusyanto-isnandar-in-2022-11-07-19.jpg', '', 3, '0', '-8.2288283,114.3513556', 'keluar kota'),
(31, 19, '2022-11-21', '11:43:00', '00:00:00', 'kusyanto-isnandar-in-2022-11-21-19.jpg', '', 1, '0', '-8.2204801,114.3693723', ''),
(32, 19, '2022-11-22', '13:39:00', '00:00:00', 'kusyanto-isnandar-in-2022-11-22-19.jpg', '', 1, '0', '-8.2302406,114.3533519', ''),
(33, 22, '2022-11-25', '07:55:00', '00:00:00', 'ariqrizky--in-2022-11-25-22.jpg', '', 3, '0', '-8.2323182,114.347131', 'ada acara keluarga'),
(34, 19, '2022-11-25', '09:55:00', '17:26:00', 'kusyanto-isnandar-in-2022-11-25-19.jpg', 'kusyanto-isnandar-out-2022-11-25-19.jpg', 1, '0', '-8.2204848,114.3693697', ''),
(35, 19, '2022-11-26', '00:21:00', '23:44:00', 'kusyanto-isnandar-in-2022-11-26-19.jpg', 'kusyanto-isnandar-out-2022-11-26-19.jpg', 1, '0', '-8.2204834,114.3693716', ''),
(36, 22, '2022-11-26', '00:38:00', '00:00:00', 'ariqrizky--in-2022-11-26-22.jpg', '', 1, '0', '-8.2301217,114.3530502', ''),
(37, 20, '2022-11-26', '11:31:00', '00:00:00', 'reno-lesgiarto-in-2022-11-26-20.jpg', '', 1, '0', '-8.230069,114.3511004', ''),
(38, 21, '2022-11-26', '13:24:00', '00:00:00', 'adrian-rizky-in-2022-11-26-21.jpg', '', 1, '0', '-8.230069,114.3511004', ''),
(39, 19, '2022-11-27', '12:17:00', '19:57:00', 'kusyanto-isnandar-in-2022-11-27-19.jpg', 'kusyanto-isnandar-out-2022-11-27-19.jpg', 1, '0', '-8.2303858,114.3483148', ''),
(40, 19, '2022-11-28', '09:44:00', '00:00:00', 'kusyanto-isnandar-in-2022-11-28-19.jpg', '', 1, '0', '-8.2204763,114.3693813', ''),
(41, 20, '2022-11-28', '09:45:00', '00:00:00', 'reno-lesgiarto-in-2022-11-28-20.jpg', '', 1, '0', '-8.2291093,114.3525163', ''),
(42, 21, '2022-11-28', '09:46:00', '00:00:00', 'adrian-rizky-in-2022-11-28-21.jpg', '', 1, '0', '-8.2291093,114.3525163', ''),
(43, 21, '2022-11-29', '12:40:00', '00:00:00', 'adrian-rizky-in-2022-11-29-21.jpg', '', 1, '0', '-8.228622,114.3527252', ''),
(44, 21, '2022-12-01', '13:06:00', '00:00:00', 'adrian-rizky-in-2022-12-01-21.jpg', '', 1, '0', '-8.2285691,114.3529341', ''),
(45, 19, '2022-12-01', '13:06:00', '22:03:00', 'kusyanto-isnandar-in-2022-12-01-19.jpg', 'kusyanto-isnandar-out-2022-12-01-19.jpg', 1, '0', '-8.2285691,114.3529341', ''),
(46, 21, '2022-12-02', '12:15:00', '00:00:00', 'adrian-rizky-in-2022-12-02-21.jpg', '', 2, '0', '-8.2299987,114.3531198', ''),
(47, 21, '2022-12-07', '10:05:00', '00:00:00', 'adrian-rizky-in-2022-12-07-21.jpg', '', 1, '0', '-8.2204822,114.3693803', ''),
(48, 19, '2022-12-07', '10:09:00', '00:00:00', 'kusyanto-isnandar-in-2022-12-07-19.jpg', '', 3, '0', '-8.2300519,114.3473631', ''),
(49, 89, '2022-12-13', '09:09:00', '00:00:00', 'fadlan-in-2022-12-13-89.jpg', '', 3, '0', '-8.220479,114.3693834', 'acara keluarga'),
(50, 19, '2022-12-18', '19:13:00', '00:00:00', 'kusyanto-isnandar-in-2022-12-18-19.jpg', '', 2, '0', '-8.2339476,114.351286', ''),
(51, 21, '2023-02-18', '15:33:00', '00:00:00', 'adrian-rizky-in-2023-02-18-21.jpg', '', 1, '0', '-8.2328163,114.3516807', ''),
(52, 90, '2023-02-19', '16:00:00', '00:00:00', 'adit-in-2023-02-19-90.jpg', '', 3, '0', '', 'keluar kota'),
(53, 21, '2023-02-19', '16:02:00', '00:00:00', 'adrian-rizky-in-2023-02-19-21.jpg', '', 1, '0', '', ''),
(56, 91, '2023-02-22', '10:51:00', '00:00:00', 'ranu-in-2023-02-22-91.jpg', '', 3, '1', '-6.982791378228022,110.4089434229166', 'Izin sakit');

-- --------------------------------------------------------

--
-- Table structure for table `present_status`
--

CREATE TABLE `present_status` (
  `present_id` int(6) NOT NULL,
  `present_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `present_status`
--

INSERT INTO `present_status` (`present_id`, `present_name`) VALUES
(1, 'Hadir'),
(2, 'Sakit'),
(3, 'Izin');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(11) NOT NULL,
  `shift_name` varchar(20) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift_name`, `time_in`, `time_out`) VALUES
(3, 'SHIFT MALAM', '19:00:00', '07:00:00'),
(4, 'SHIFT PAGI', '07:00:00', '19:00:00'),
(5, 'FULL TIME', '07:00:00', '06:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `site_id` int(4) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `site_phone` char(12) NOT NULL,
  `site_address` text NOT NULL,
  `site_description` text NOT NULL,
  `site_logo` varchar(50) NOT NULL,
  `site_email` varchar(30) NOT NULL,
  `site_email_domain` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`site_id`, `site_url`, `site_name`, `site_phone`, `site_address`, `site_description`, `site_logo`, `site_email`, `site_email_domain`) VALUES
(1, 'http://localhost/absensi', 'Sistem Presensi Pegawai PKSS Banyuwangi', '089620709172', 'Jl. Letjen Sutoyo no.12 Banyuwangi', 'Sistem Presensi Pegawai PKSS Banyuwangi Berbasis Foto Selfie dan Auto Detect Lokasi. Absen Karyawan Kini Jadi Lebih Efisien. Sistem absensi dengan verifikasi foto selfie atau webcam, dilengkapi fitur deteksi lokasi pengguna yang akurat.', 'pksspng.png', 'ariqsd45@gmail.com', 'ariqsd45@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `registered` datetime NOT NULL,
  `created_login` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `session` varchar(100) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `browser` varchar(30) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `fullname`, `registered`, `created_login`, `last_login`, `session`, `ip`, `browser`, `level`) VALUES
(1, 'admin', 'mycoding@401xd.com', '88b3340abaa6acbf87abe45f68fa8960224c1e36f6a96433bcbc490c84c9c6d2', 'ADMIN', '2021-02-03 10:22:00', '2023-02-22 10:43:56', '2023-02-21 19:59:20', '-', '1', 'Google Crome', 1),
(3, 'operator', '401xdssh@gmail.com', 'c0fc26e449ec10285f6b28a7f92b91dc4497af26dbf02aade5bd798c567390dc', 'OPERATOR', '2021-06-24 22:46:00', '2022-11-22 12:50:38', '2022-11-22 17:33:34', '-', '1', 'Google Crome', 2),
(4, 'ariq', 'ariq@gmail.com', '2692945fdfa9b357adef32891c3bf80cf9ce23d8aafe94bbde5a9e2a477729eb', 'ariq', '2022-11-07 13:35:00', '2022-11-07 13:37:31', '2022-11-07 13:35:00', '-', '1', 'Google Crome', 1),
(5, 'reyhan', 'reyhan@gmail.com', '5de4f7adf0908eb11420b4e1591b13561f49218057af565b9eb742d9cb4833f4', 'reyhan', '2022-11-07 13:36:00', '2022-11-22 12:49:25', '2022-11-07 13:36:00', '-', '1', 'Google Crome', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `level_id` int(4) NOT NULL,
  `level_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`level_id`, `level_name`) VALUES
(1, 'Administrator'),
(2, 'Operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`building_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `presence`
--
ALTER TABLE `presence`
  ADD PRIMARY KEY (`presence_id`);

--
-- Indexes for table `present_status`
--
ALTER TABLE `present_status`
  ADD PRIMARY KEY (`present_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `building_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `presence`
--
ALTER TABLE `presence`
  MODIFY `presence_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `present_status`
--
ALTER TABLE `present_status`
  MODIFY `present_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `site_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `level_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
