-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 08:42 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shiba_vacation`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id_booking` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `total_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id_booking`, `id_user`, `name`, `email`, `phone`, `id_hotel`, `check_in`, `check_out`, `total_harga`, `created_at`, `updated_at`) VALUES
(2, 1, 'Matthew Marcellino', 'matthew.marcellino@yahoo.co.id', '085794933113', 1, '2021-06-12', '2021-06-15', 2400000, '2021-06-10 06:21:34', '2021-06-10 06:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id_hotel` int(11) NOT NULL,
  `id_location` int(11) NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `images` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id_hotel`, `id_location`, `hotel_name`, `address`, `price`, `images`, `hotel_star`, `created_at`, `updated_at`, `room_available`) VALUES
(1, 1, 'Hilton Bali Resort', 'Jalan Nusa Dua Kuta Selatan Kabupaten Badung', 800000, 'hilton.jpeg', 5, '2021-06-02 19:01:23', '2021-06-02 19:01:23', 10),
(2, 1, 'The Apurva Kempinski Bali', 'Jalan Raya Nusa Dua Selatan Sawangan Nusa Dua', 3500000, 'kempinski.jpeg', 5, '2021-06-02 19:02:36', '2021-06-02 19:02:36', 10),
(3, 1, 'The Trans Resort Bali', 'Jalan Sunset Road Kerobokan Seminyak Kuta', 850000, 'trans.jpeg', 5, '2021-06-03 00:44:47', '2021-06-03 00:44:47', 10),
(4, 1, 'Lv8 Resort Bali', 'Jln. Pantai Berawa No. 100xx, Tibubeneng, Canggu, North Kuta – Badung, Canggu, Kuta', 813000, 'lv8.jpeg', 5, '2021-06-03 00:47:13', '2021-06-03 00:47:13', 10),
(7, 1, 'Aksari Resort Ubud', 'Desa Kelabangmoding Tegallalang Ubud, Gianyar,', 1205000, 'aksari.jpeg', 5, '2021-06-05 01:00:18', '2021-06-05 01:00:18', 10),
(9, 2, 'Hotel Indonesia Kempinski Jakarta', 'Jalan MH Thamrin No. 1, Thamrin, Jakarta Pusat', 2400000, 'HI.jpg', 5, '2021-06-09 00:15:43', '2021-06-09 00:15:43', 10),
(11, 2, 'Sari Pasific Jakarta', 'Jl. MH Thamrin No. 6, Thamrin, Jakarta Pusat', 2300000, 'sari_pasific.jpeg', 5, '2021-06-10 01:07:31', '2021-06-10 01:25:10', 10),
(12, 2, 'Merlynn Park Hotel', 'Jl. K.H.Hasyim Ashari 29-31, Gambir, Petojo Utara', 635000, 'Merlynn_park.jpeg', 5, '2021-06-10 01:08:48', '2021-06-10 01:08:48', 10),
(13, 2, 'Aston Priority Simatupang Hotel & Conference Center HOTELS', 'Jl. Let. Jend. T.B. Simatupang Kav. 9 Kebagusan, Cilandak, Kebagusan', 635000, 'aston_priority.jpeg', 4, '2021-06-10 01:11:49', '2021-06-10 01:11:49', 10),
(14, 2, 'Grand Hyatt Jakarta', 'Jalan M. H. Thamrin Kav. 28-30, Thamrin, Jakarta Pusat', 1720000, 'grand_hyatt.jpeg', 5, '2021-06-10 01:14:12', '2021-06-10 01:14:12', 10),
(15, 2, 'Harris Suites FX Sudirman', 'Jl. Jend Sudirman, Pintu Satu Senayan, Kebayoran Baru, Senayan', 750000, 'harris_suites.jpeg', 5, '2021-06-10 01:24:21', '2021-06-10 01:31:21', 10),
(16, 3, 'Hotel Tentrem Yogyakarta', 'JL. P. Mangkubumi No. 72 A, Jetis', 1500000, 'tentrem.jpeg', 5, '2021-06-10 01:27:20', '2021-06-10 01:27:20', 10),
(17, 3, 'Hyatt Regency Yogyakarta', 'Jl Palagan Tentara Pelajar, Ngaglik, Yogyakarta', 850000, 'hyatt_regency.jpeg', 5, '2021-06-10 01:33:05', '2021-06-10 01:33:05', 10),
(18, 3, 'Grand Inna Malioboro', 'Jl. Malioboro 60 Yogyakarta', 500000, 'grand_inna.jpeg', 4, '2021-06-10 01:34:31', '2021-06-10 01:34:31', 10),
(19, 3, 'The Westlake Hotel & Resort Yogyakarta', 'Jalan Ringroad Barat, Bedog, Trihanggo, Sleman, Mlati', 650, 'westlake.jpeg', 4, '2021-06-10 01:35:43', '2021-06-10 01:35:43', 10),
(20, 3, 'Hotel Neo Malioboro by ASTON', 'Jalan Pasar Kembang No 21, Malioboro Street', 430000, 'neo_yogyakarta.jpeg', 3, '2021-06-10 01:37:01', '2021-06-10 01:37:01', 10),
(21, 4, 'Golden Tulip Pontianak', 'Jl. Teuku Umar No. 39, Pontianak Kota', 484000, 'golden_tulip_pontianak.jpeg', 4, '2021-06-10 01:40:47', '2021-06-10 01:40:47', 10),
(22, 4, 'Ibis Pontianak City Center', 'Jl Jendral Ahmad Yani #81, Pontianak Selatan', 263000, 'ibis_pontianak.jpg', 3, '2021-06-10 01:42:03', '2021-06-10 01:42:03', 10),
(23, 4, 'HARRIS Hotel Pontianak', 'alan Gajahmada No. 150, Pontianak Selatan', 450000, 'harris_pontianak.jpeg', 4, '2021-06-10 01:43:32', '2021-06-10 01:43:32', 10),
(25, 4, 'Star Hotel', 'Jl. Gajahmada No. 107-109, Pontianak Selatan', 300000, 'star_hotel.jpeg', 3, '2021-06-10 01:47:33', '2021-06-10 01:47:33', 10),
(26, 7, 'eL Hotel Royale', 'Jl. Merdeka No.2, Merdeka', 578000, 'eL_royale.jpeg', 4, '2021-06-10 01:49:55', '2021-06-10 01:49:55', 10),
(27, 7, 'The Trans Luxury Hotel', 'Jl. Gatot Subroto No. 289, Buahbatu', 1345000, 'the_trans.jpeg', 5, '2021-06-10 01:52:16', '2021-06-10 01:52:16', 10),
(28, 7, 'Grand Tjokro Premiere Bandung', 'Jalan Cihampelas No 211-217 Bandung 40131, Cihampelas', 450000, 'grand_tjokro.jpeg', 4, '2021-06-10 01:54:42', '2021-06-10 01:54:42', 10),
(29, 7, 'InterContinental Bandung Dago Pakar', 'Lapangan Golf Dago Atas No. 78, Dago Atas', 1790000, 'intercontinental_bandung.jpeg', 5, '2021-06-10 01:57:34', '2021-06-10 01:57:34', 10),
(30, 7, 'Grand Tebu Hotel', 'Jalan L.L.R.E Martadinata (Riau) No. 207, Riau Street', 450000, 'grand_tebu.jpeg', 4, '2021-06-10 01:58:49', '2021-06-10 01:58:49', 10);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_images`
--

CREATE TABLE `hotel_images` (
  `id_image` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `carousel_images` varchar(120) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_images`
--

INSERT INTO `hotel_images` (`id_image`, `id_hotel`, `carousel_images`, `created_at`, `updated_at`) VALUES
(1, 1, 'hilton_carousel_1.jpg\r\n', NULL, NULL),
(2, 1, 'hilton_carousel_2.jpg', NULL, NULL),
(3, 1, 'hilton_carousel_3.jpg', NULL, NULL),
(5, 2, 'the_apurva_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(6, 2, 'the_apurva_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(7, 2, 'the_apurva_carousel_3.jpg', '2021-06-10', '2021-06-10'),
(8, 3, 'the_trans_resort_1.jpg', '2021-06-10', '2021-06-10'),
(9, 3, 'the_trans_resort_2.jpg', '2021-06-10', '2021-06-10'),
(10, 3, 'the_trans_resort_3.jpg', '2021-06-10', '2021-06-10'),
(11, 4, 'lv8_resort_bali_1.jpg', '2021-06-10', '2021-06-10'),
(12, 4, 'lv8_resort_bali_2.jpg', '2021-06-10', '2021-06-10'),
(13, 4, 'lv8_resort_bali_3.jpg', '2021-06-10', '2021-06-10'),
(14, 7, 'aksari_resort_ubud_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(15, 7, 'aksari_resort_ubud_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(16, 7, 'aksari_resort_ubud_carousel_3.jpg', '2021-06-10', '2021-06-10'),
(17, 9, 'hotel_indonesia_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(18, 9, 'hotel_indonesia_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(19, 9, 'hotel_indonesia_carousel_3.jpg', '2021-06-10', '2021-06-10'),
(20, 13, 'aston_priority_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(21, 13, 'aston_priority_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(22, 14, 'grand_hyatt_jakarta_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(23, 14, 'grand_hyatt_jakarta_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(24, 14, 'grand_hyatt_jakarta_carousel_3.jpg', '2021-06-10', '2021-06-10'),
(25, 15, 'harris_fx_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(26, 15, 'harris_fx_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(27, 16, 'tentrem_yogya_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(28, 16, 'tentrem_yogya_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(29, 16, 'tentrem_yogya_carousel_3.jpg', '2021-06-10', '2021-06-10'),
(30, 17, 'hyatt_yogyakarta_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(31, 14, 'hyatt_yogyakarta_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(32, 18, 'grand_inna_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(33, 18, 'grand_inna_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(34, 19, 'westlake_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(35, 19, 'westlake_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(36, 20, 'neo_yogya_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(37, 20, 'neo_yogya_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(38, 21, 'golden_tulip_pontianak_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(39, 21, 'golden_tulip_pontianak_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(40, 22, 'ibis_pontianak_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(41, 22, 'ibis_pontianak_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(43, 23, 'harris_pontianak_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(44, 23, 'harris_pontianak_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(45, 25, 'star_pontianak_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(46, 25, 'star_pontianak_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(47, 26, 'el_royale_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(48, 26, 'el_royale_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(49, 27, 'trans_bandung_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(50, 27, 'trans_bandung_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(51, 28, 'tjokro_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(52, 28, 'tjokro_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(53, 29, 'intercontinental_carousel-1.jpg', '2021-06-10', '2021-06-10'),
(54, 29, 'intercontinental_carousel-2.jpg', '2021-06-10', '2021-06-10'),
(55, 30, 'tebu_carousel_1.jpg', '2021-06-10', '2021-06-10'),
(56, 30, 'tebu_carousel_2.jpg', '2021-06-10', '2021-06-10'),
(57, 11, 'sari_pasific_carousel_1.jpg', NULL, NULL),
(58, 11, 'sari_pasific_carousel_2.jpg', NULL, NULL),
(59, 12, 'merylnn_park_carousel_1.jpg', NULL, NULL),
(60, 12, 'merylnn_park_carousel_2.jpg', NULL, NULL),
(61, 17, 'hyatt_yogyakarta_carousel_2.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id_location` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id_location`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Bali', '2021-06-02 04:58:32', '2021-06-02 04:58:32'),
(2, 'Jakarta', '2021-06-02 04:58:32', '2021-06-02 04:58:32'),
(3, 'Yogyakarta', '2021-06-02 04:58:32', '2021-06-02 04:58:32'),
(4, 'Pontianak', '2021-06-03 01:22:03', '2021-06-03 01:22:03'),
(7, 'Bandung', '2021-06-03 01:28:16', '2021-06-03 01:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_02_115323_create_location_table', 1),
(5, '2021_06_03_085728_create_hotels_table', 1),
(6, '2021_06_08_105425_create_bookings_table', 2),
(8, '2014_10_12_000000_create_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthDate` date NOT NULL,
  `images` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `password`, `phoneNumber`, `birthDate`, `images`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Matthew Marcellino', 'matthew.marcellino@yahoo.co.id', '$2y$10$H6sTH7lu46pFawnNoNVdt.qGZ54.BbXIWqfELxsgUakiJmNH7RUmy', '085794933113', '2021-06-08', 'hilton_room.jpg', 'user', '2021-06-10 03:59:49', '2021-06-10 03:59:49'),
(2, 'admin', 'admin@gmail.com', '$2y$10$z6RcdF6lTJ/zKw97JjjoeOAvftda0szaKW8qkc9EX7.jD2ppGpKAS', '085794933113', '2001-07-11', 'shiba_vacation.jpg', 'admin', '2021-06-10 09:13:07', '2021-06-10 09:13:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id_booking`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id_hotel`),
  ADD KEY `hotels_id_location_foreign` (`id_location`);

--
-- Indexes for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id_location`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id_booking` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `hotel_images`
--
ALTER TABLE `hotel_images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id_location` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `id_hotel` FOREIGN KEY (`id_hotel`) REFERENCES `hotels` (`id_hotel`);

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_id_location_foreign` FOREIGN KEY (`id_location`) REFERENCES `location` (`id_location`);

--
-- Constraints for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD CONSTRAINT `hotel_images_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotels` (`id_hotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
