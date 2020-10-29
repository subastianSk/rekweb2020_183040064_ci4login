-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2020 at 09:42 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'One Piece', 'one-piece', 'Eiichiro Oda', 'Gramedia', 'one-piece.png', NULL, NULL),
(2, 'Black Clover', 'black-clover', 'Yūki Tabata', 'Shueisha', 'black-clover.jpg', NULL, NULL),
(14, 'One Punch Man', 'one-punch-man', 'ONE', 'Viz Media', '3893767-1.jpg', '2020-08-22 22:32:23', '2020-08-22 22:32:23'),
(20, 'Naruto 38-58', 'naruto-38-58', 'subastian', 'SK', '1602343338_92e2706e4f06e327707b.jpg', '2020-10-10 10:22:18', '2020-10-10 10:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-08-24-061807', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1598250390, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Suci Lailasari', 'Gg. S. Parman No. 467, Bitung 47322, KalTim', '1994-07-15 03:04:21', '1983-09-15 19:23:21'),
(2, 'Rachel Susanti', 'Jr. HOS. Cjokroaminoto (Pasirkaliki) No. 384, Blitar 76315, KalBar', '1984-12-16 08:03:06', '2006-09-24 15:07:05'),
(3, 'Warsa Lazuardi', 'Jr. Achmad Yani No. 443, Mojokerto 44423, NTB', '2004-01-23 21:22:41', '2020-02-27 04:32:05'),
(4, 'Ida Paramita Yolanda', 'Ds. Bara Tambar No. 729, Palu 13999, KalTeng', '1994-04-16 03:16:08', '2010-08-10 05:32:38'),
(5, 'Juli Safina Padmasari S.Gz', 'Dk. Kyai Gede No. 577, Madiun 15889, KalBar', '1989-10-14 13:47:38', '2016-10-15 21:15:40'),
(6, 'Kuncara Wadi Sitorus S.Gz', 'Psr. Soekarno Hatta No. 146, Balikpapan 75054, SulUt', '1987-05-26 05:04:44', '1987-05-24 08:38:51'),
(7, 'Nyoman Saefullah', 'Ds. Cut Nyak Dien No. 982, Tanjungbalai 44952, BaBel', '1974-03-04 01:06:27', '2002-12-03 08:58:27'),
(8, 'Unjani Sudiati', 'Dk. Sudiarto No. 347, Gunungsitoli 83418, PapBar', '1988-06-20 14:17:21', '2000-07-14 02:15:07'),
(9, 'Kawaya Rajata S.IP', 'Kpg. Banceng Pondok No. 836, Sabang 22809, SulUt', '1995-09-02 18:24:36', '2018-04-01 04:17:25'),
(10, 'Rachel Kusmawati', 'Gg. K.H. Maskur No. 417, Palu 52553, SulUt', '2002-03-20 20:34:47', '2007-07-14 01:00:15'),
(11, 'Ridwan Maryadi', 'Ds. Barat No. 958, Bau-Bau 83741, SumBar', '2003-11-29 18:56:28', '2020-06-04 09:18:14'),
(12, 'Ira Tantri Aryani M.M.', 'Dk. W.R. Supratman No. 937, Malang 83754, DIY', '2019-05-27 02:12:05', '1995-05-16 22:13:31'),
(13, 'Maryadi Danang Anggriawan', 'Ds. Padma No. 636, Sukabumi 83056, SumUt', '2009-10-25 10:55:01', '1975-09-30 14:44:45'),
(14, 'Hasna Titi Rahmawati', 'Psr. Yogyakarta No. 877, Mataram 90761, SulSel', '2005-12-02 12:40:17', '1990-08-01 00:32:09'),
(15, 'Zulaikha Hartati', 'Jr. Radio No. 561, Bogor 74549, Bali', '2008-07-15 00:57:15', '1984-12-12 13:36:38'),
(16, 'Yessi Oktaviani', 'Ki. Yohanes No. 871, Denpasar 26520, Riau', '2001-12-13 11:57:43', '2014-01-02 20:36:04'),
(17, 'Cager Utama', 'Dk. Bappenas No. 41, Samarinda 14655, Lampung', '2000-09-03 21:33:55', '2020-03-31 05:31:48'),
(18, 'Rini Hartati', 'Kpg. Setia Budi No. 444, Magelang 14781, NTB', '1981-05-08 23:33:09', '1972-10-24 07:06:17'),
(19, 'Paramita Ana Safitri', 'Ki. Ters. Buah Batu No. 580, Banjarbaru 58189, SumBar', '1992-03-09 20:00:58', '2004-07-31 07:44:28'),
(20, 'Safina Gasti Wastuti S.Ked', 'Kpg. Kalimantan No. 404, Kupang 83683, SumBar', '1985-05-24 04:31:02', '2020-03-31 14:51:46'),
(21, 'Okto Maryadi S.Gz', 'Jr. Sunaryo No. 43, Tidore Kepulauan 58927, KalSel', '1997-07-21 00:52:38', '2009-12-03 00:07:36'),
(22, 'Luluh Marbun', 'Gg. Daan No. 969, Administrasi Jakarta Selatan 14209, Riau', '1970-11-09 12:19:28', '2019-03-23 19:48:41'),
(23, 'Dariati Sitompul', 'Ki. Yos Sudarso No. 749, Bekasi 29950, Jambi', '1990-10-28 09:11:49', '1977-07-03 14:59:17'),
(24, 'Gadang Nababan S.I.Kom', 'Dk. Gatot Subroto No. 156, Administrasi Jakarta Pusat 24688, Jambi', '1985-02-09 05:53:52', '2001-09-04 14:38:50'),
(25, 'Betania Putri Suartini S.T.', 'Dk. Ters. Kiaracondong No. 129, Magelang 78655, KalUt', '2006-11-25 22:55:56', '2012-04-07 15:09:26'),
(26, 'Adika Saragih', 'Psr. HOS. Cjokroaminoto (Pasirkaliki) No. 529, Sorong 78781, SulSel', '2016-09-26 07:46:54', '1992-04-29 20:06:56'),
(27, 'Septi Astuti', 'Ds. Bagonwoto  No. 237, Banjarmasin 95672, Bali', '1995-02-22 18:52:44', '2010-08-13 01:01:49'),
(28, 'Gatot Firmansyah S.Gz', 'Jr. Monginsidi No. 430, Blitar 78255, SumSel', '1980-08-18 13:34:24', '1972-10-21 14:38:37'),
(29, 'Tiara Almira Wijayanti S.Kom', 'Jr. Baiduri No. 741, Sukabumi 55628, Riau', '2010-07-20 13:29:42', '1983-10-22 22:24:08'),
(30, 'Betania Olivia Rahimah S.H.', 'Gg. Basmol Raya No. 192, Batam 92811, SulUt', '1982-06-19 04:29:43', '2006-01-26 03:42:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
