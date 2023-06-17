-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 10:10 AM
-- Server version: 8.0.33
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `concert_tickets_app_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `concert_id` bigint UNSIGNED NOT NULL,
  `check_in_at` datetime DEFAULT NULL,
  `check_out_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `concerts`
--

CREATE TABLE `concerts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `price` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `concerts`
--

INSERT INTO `concerts` (`id`, `name`, `image`, `location`, `description`, `date`, `price`, `created_at`, `updated_at`) VALUES
(1, 'The Red Chord', 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg', 'The Mosh Pit', 'The Red Chord is an American deathcore band from Revere, Massachusetts, formed in 1999. The band comprises vocalist Guy Kozowyk, guitarist Mike McKenzie, bassist Greg Weeks and drummer Michael Justian.', '2024-06-17 03:39:06', 250000, '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(2, 'The Red Jumpsuit Apparatus', 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg', 'The Mosh Pit', 'The Red Jumpsuit Apparatus is an American rock band that was formed in Middleburg, Florida, in 2003. The band is best known for their 2006 single \"Face Down\" from their major-label release Don\'t You Fake It and has released five studio albums to date.', '2024-06-17 03:39:06', 250000, '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(3, 'The Devil Wears Prada', 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg', 'The Mosh Pit', 'The Devil Wears Prada is an American Christian metalcore band from Dayton, Ohio, formed in 2005. It consists of members Mike Hranica, Jeremy DePoyster, Kyle Sipress, and Giuseppe Capolupo.', '2024-06-17 03:39:06', 250000, '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(4, 'Pierce the Veil', 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg', 'The Mosh Pit', 'Pierce the Veil is an American rock band from San Diego, California. Formed in 2006, the band was founded by brothers Vic and Mike Fuentes after the disbandment of the group Before Today, which was formed out of the San Diego punk rock scene.', '2024-06-17 03:39:06', 250000, '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(5, 'August Burns Red', 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg', 'The Mosh Pit', 'August Burns Red is an American metalcore band from Lancaster, Pennsylvania formed in 2003. The band\'s current lineup consists of lead guitarist John Benjamin \"JB\" Brubaker, rhythm guitarist Brent Rambler, drummer Matt Greiner, lead vocalist Jake Luhrs, and bassist Dustin Davidson.', '2024-06-17 03:39:06', 250000, '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(6, 'As I Lay Dying', 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg', 'The Mosh Pit', 'As I Lay Dying is an American metalcore band from San Diego, California. Founded in 2000 by vocalist Tim Lambesis, the band\'s first full lineup (including Lambesis\' Point of Recognition bandmate Jordan Mancino) was completed in 2001.', '2024-06-17 03:39:06', 250000, '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(7, 'Underoath', 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg', 'The Mosh Pit', 'Underoath is an American rock band from Tampa, Florida. Founded by Dallas Taylor and Luke Morton on November 30, 1997, in Ocala, Florida, subsequently its additional members were from Tampa, Florida.', '2024-06-17 03:39:06', 250000, '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(8, 'Emarosa', 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg', 'The Mosh Pit', 'Emarosa is an American post-hardcore band from Lexington, Kentucky. The band currently consists of founding member and lead guitarist ER White, as well as bass guitarist Robert Joffred, rhythm guitarist Matthew Marcellus, and lead vocalist Bradley Walden.', '2024-06-17 03:39:06', 250000, '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(9, 'The Word Alive', 'https://s3.amazonaws.com/bit-photos/large/891242.jpeg', 'The Mosh Pit', 'The Word Alive is an American metalcore band formed in Phoenix, Arizona, in 2008. The band is signed to Fearless Records since their formation. The band currently consists of vocalist Tyler Smith, guitarists Zack Hansen and Tony Pizzuti, and drummer Matt Horn.', '2024-06-17 03:39:06', 250000, '2023-06-17 00:06:34', '2023-06-17 00:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_06_17_033906_create_concerts_table', 1),
(7, '2023_06_17_033920_create_reservations_table', 1),
(8, '2023_06_17_033924_create_attendances_table', 1);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `concert_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `code`, `first_name`, `last_name`, `email`, `phone`, `user_id`, `concert_id`, `created_at`, `updated_at`) VALUES
(1, '648d5bc52d4f2', 'Aaron', 'Walker', 'aaron@example.com', '081234567890', 12, 1, '2023-06-17 00:07:49', '2023-06-17 00:07:49'),
(2, '648d5f792c722', 'Billy', 'Gates', 'billy@example.com', '081122334455', 13, 6, '2023-06-17 00:23:37', '2023-06-17 00:23:37'),
(3, '648d5fea58a3f', 'Cindy', 'Johansson', 'cindy@example.com', '08111222333', 14, 3, '2023-06-17 00:25:30', '2023-06-17 00:25:30'),
(4, '648d616a321f1', 'Elvan', 'Hidayat', 'elvan.hidayat@gmail.com', '08122020800', 14, 2, '2023-06-17 00:31:54', '2023-06-17 00:31:54'),
(5, '648d69de8f373', 'David', 'Wise', 'david@example.com', '081234512345', 14, 5, '2023-06-17 01:07:58', '2023-06-17 01:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '2023-06-17 00:06:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '6rkNM36ldtSK30CTCzZiHYfiNB1PUHvmGfsFKDqfIcIv12p4Xog3pJfMJY2E', '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(2, 'Cristobal Kirlin', 'eve.runolfsson@example.org', '2023-06-17 00:06:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '6xQydx3sAr', '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(3, 'Enola Russel', 'quincy44@example.net', '2023-06-17 00:06:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '6XecKpjmbn', '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(4, 'Dr. Soledad Keeling', 'zdamore@example.com', '2023-06-17 00:06:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'rMM90IF6ul', '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(5, 'Adrienne Crooks', 'jerde.daron@example.com', '2023-06-17 00:06:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'ViMfIyPneW', '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(6, 'George Boyle II', 'streich.amanda@example.com', '2023-06-17 00:06:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'JxAb5xWUAD', '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(7, 'Dr. Rafael Green', 'polson@example.com', '2023-06-17 00:06:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'sHNzseu6Xf', '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(8, 'Caitlyn Leuschke', 'vesta.schamberger@example.net', '2023-06-17 00:06:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'DbOy029MUh', '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(9, 'Jeffry Stokes', 'parisian.abner@example.net', '2023-06-17 00:06:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'QoYGYCJDyP', '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(10, 'Stefanie O\'Connell', 'ebba98@example.com', '2023-06-17 00:06:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'mF25w4z1al', '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(11, 'Roy Emard', 'ywalsh@example.net', '2023-06-17 00:06:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'IYM7azi3pW', '2023-06-17 00:06:34', '2023-06-17 00:06:34'),
(12, 'aaron', 'aaron@example.com', NULL, '$2y$10$kvIFSbZFHtxY54/vZjk0Le8SoN73pdN4giIiFK1RFJPa1Bv9IZrS.', 0, NULL, '2023-06-17 00:06:49', '2023-06-17 00:06:49'),
(13, 'billy', 'billy@example.com', NULL, '$2y$10$IaBsIY06kmFS5LpBWS1wmeYNxncuIRmmahSRAY/nBXNrdsi3JcHmi', 0, NULL, '2023-06-17 00:23:08', '2023-06-17 00:23:08'),
(14, 'cindy', 'cindy@example.com', NULL, '$2y$10$Tssp3gE2DUmJsMsfGYzYWehzuFYEEbvwFdVoMpaKG1Wt.NPY.b3Na', 0, NULL, '2023-06-17 00:25:06', '2023-06-17 00:25:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`),
  ADD KEY `attendances_concert_id_foreign` (`concert_id`);

--
-- Indexes for table `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservations_code_unique` (`code`),
  ADD KEY `reservations_user_id_foreign` (`user_id`),
  ADD KEY `reservations_concert_id_foreign` (`concert_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `concerts`
--
ALTER TABLE `concerts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_concert_id_foreign` FOREIGN KEY (`concert_id`) REFERENCES `concerts` (`id`),
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_concert_id_foreign` FOREIGN KEY (`concert_id`) REFERENCES `concerts` (`id`),
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
