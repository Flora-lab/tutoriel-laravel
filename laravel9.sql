-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2025 at 10:14 PM
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
-- Database: `laravel9`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caracteristiques` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `qtestock` varchar(255) NOT NULL,
  `prixAchat` varchar(255) NOT NULL,
  `prixVente` varchar(255) NOT NULL,
  `prixSolde` varchar(255) NOT NULL,
  `imageartpetitf` varchar(255) NOT NULL,
  `imageartgrandf` varchar(255) NOT NULL,
  `categorieID` bigint(20) UNSIGNED NOT NULL,
  `scategorieID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `caracteristiques`, `designation`, `marque`, `reference`, `qtestock`, `prixAchat`, `prixVente`, `prixSolde`, `imageartpetitf`, `imageartgrandf`, `categorieID`, `scategorieID`, `created_at`, `updated_at`) VALUES
(1, 'Intel i5, 8GB RAM, 256GB SSDe', 'ordinateur', 'HP', 'HP-1234', '10', '500', '650', '600', 'images/articles/petit/hp1234.jpg', 'images/articles/grand/hp1234.jpg', 1, 2, '2025-04-07 20:13:48', '2025-04-07 20:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomcategorie` varchar(255) NOT NULL,
  `imagecategorie` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nomcategorie`, `imagecategorie`, `created_at`, `updated_at`) VALUES
(1, 'exemple', '', '2025-04-07 19:37:37', '2025-04-07 19:37:37'),
(2, 'support', 'images/scategories/support.php', '2025-04-07 18:41:52', '2025-04-07 18:41:52'),
(3, 'engins', 'images/scategories/engin.php', '2025-04-07 18:42:13', '2025-04-07 18:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `npr` varchar(255) NOT NULL,
  `adresse` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `npr`, `adresse`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Vidal Wolf', '8269 Freeda Junctions Suite 284Faheymouth, ND 61741', 'vincent43@example1.org', '2025-04-04 02:09:22', '2025-04-04 13:35:11'),
(2, 'Madelynn Franecki', '312 Halvorson Glen\nAbernathychester, KS 50240', 'forest.hartmann@example.org', '2025-04-04 02:09:22', '2025-04-04 02:09:22'),
(3, 'Eleanora Abbott', '112 Johnathan Parkways Apt. 988\nNew Jessyca, CA 58688-8341', 'dfarrell@example.org', '2025-04-04 02:09:22', '2025-04-04 02:09:22'),
(4, 'Yesenia Herzog', '499 Loma Port Apt. 882\nPort Joey, NM 01172', 'rokuneva@example.com', '2025-04-04 02:09:22', '2025-04-04 02:09:22'),
(5, 'Hank Crona', '81814 Ebert Islands\nNorth Imelda, AL 34781', 'reginald46@example.org', '2025-04-04 02:09:22', '2025-04-04 02:09:22'),
(6, 'Prof. Will Leffler', '570 Friesen Squares\nEast Deondre, ID 09171', 'thomenick@example.org', '2025-04-04 02:09:22', '2025-04-04 02:09:22'),
(7, 'Sigmund Zemlak Jr.', '1430 Marisol Wall\nLake Robinchester, NC 64277', 'lillian84@example.net', '2025-04-04 02:09:22', '2025-04-04 02:09:22'),
(8, 'Dr. Kara Connelly I', '189 Stephen Bridge Suite 891\nLefflerbury, MO 38357', 'pschumm@example.org', '2025-04-04 02:09:22', '2025-04-04 02:09:22'),
(9, 'Dr. Arno Kling', '342 Anya Underpass Suite 184\nMacejkovicburgh, WY 43501-2400', 'nschaden@example.org', '2025-04-04 02:09:22', '2025-04-04 02:09:22'),
(10, 'Prof. Maye Yundt Jr.', '318 Damon Roads Suite 720\nMayertburgh, RI 02712', 'casper.claudine@example.net', '2025-04-04 02:09:22', '2025-04-04 02:09:22'),
(11, 'Maddison Hodkiewicz DVM', '5650 Eusebio Track\nLake Jessikaside, NC 18918-1166', 'schimmel.jazlyn@example.net', '2025-04-04 02:09:23', '2025-04-04 02:09:23'),
(12, 'Mr. Efren Simonis II', '530 Torphy Bypass\nNorth Ashton, WA 74010', 'gaylord.luettgen@example.com', '2025-04-04 02:09:23', '2025-04-04 02:09:23'),
(13, 'Ben O\'Keefe', '478 McDermott Stravenue\nNew Jamesonburgh, VT 15070', 'balistreri.cleve@example.com', '2025-04-04 02:09:23', '2025-04-04 02:09:23'),
(14, 'Kira Marks I', '56624 Feeney Forge Apt. 769\nIzabellafort, IL 19169-1380', 'ansley.funk@example.org', '2025-04-04 02:09:23', '2025-04-04 02:09:23'),
(15, 'Evangeline Roberts', '757 Roob Branch\nTerryport, NY 97928', 'joanie20@example.com', '2025-04-04 02:09:23', '2025-04-04 02:09:23'),
(16, 'Porter Terry', '179 Cassin Place\nHageneston, MT 60975-0298', 'pansy.miller@example.com', '2025-04-04 02:09:23', '2025-04-04 02:09:23'),
(17, 'Joannie Okuneva', '72798 Tromp Ford Suite 149\nLake Felton, WI 85687', 'heaven45@example.com', '2025-04-04 02:09:23', '2025-04-04 02:09:23'),
(18, 'Reymundo Collier', '8599 Wilderman Tunnel Suite 192\nNorth Tyreek, AR 99333-8011', 'qdare@example.org', '2025-04-04 02:09:23', '2025-04-04 02:09:23'),
(19, 'Albert Kassulke V', '828 Stokes View\nHillside, AK 10772', 'lea91@example.com', '2025-04-04 02:09:24', '2025-04-04 02:09:24'),
(20, 'Domenica Brekke', '500 Mattie Mission\nWest Kianmouth, GA 23829', 'orin.kemmer@example.org', '2025-04-04 02:09:24', '2025-04-04 02:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_04_023130_create_clients_table', 1),
(5, '2025_04_04_025252_create_contacts_table', 1),
(7, '2025_04_04_035859_create_categories_table', 2),
(8, '2025_04_07_130535_create_scategories_table', 3),
(9, '2025_04_07_194919_create_articles_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scategories`
--

CREATE TABLE `scategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomscategorie` varchar(255) NOT NULL,
  `imagescat` varchar(255) NOT NULL,
  `categorieID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scategories`
--

INSERT INTO `scategories` (`id`, `nomscategorie`, `imagescat`, `categorieID`, `created_at`, `updated_at`) VALUES
(2, 'accessoires', 'images/scategories/accessoires.php', 1, '2025-04-07 18:37:49', '2025-04-07 18:37:49'),
(3, 'macat', 'images/scategories/23.php', 2, '2025-04-07 18:46:18', '2025-04-07 18:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cphHTHrXJWxkorJ03RpTQSggU2VfpcDJI0ZQxZUw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVVLcWg4UjlsYVIyMnA3eG0wQzJFZ05ncWl1TjVHUWRnUXg4eW9jSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jbGllbnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1744014785),
('f3MzexrVYw0GNIHvLsU4PAkYBMznUACIbHwhZplC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjVFbUt6a3RHVUpBTGt4YzFMeDZrUG81akpsUlVObkZXOERreXh1MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jbGllbnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743780859),
('pTvxDxg1S45Ewa0eUSBZ3IMcsvCla2fr6YVoj4ji', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVNJNUpZV0tNV1J5eUozNWNPYXRhcHhYVkdVcjRTQ3NkYTB0NUUzTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jbGllbnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743738501),
('VVWP9LCOgerWJf7ZOP9N7v2OvpCaqKrt4IKZ4UWB', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzhnYXM5MGY4NnpUS2RJUUlRWjFNQzVaU3hTZjY2TE9ySWI3NGgyRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jbGllbnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1744747977),
('wNkLPmrin1jrFtlsuB7bXCFAzSfc5nPTiLVUVTys', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW9XU2ZiMXZTSjdBOGo5TU1BTUpwa2ZJUEIzcUxUSWE2enBqVkxsRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jbGllbnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743849777);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-04-04 02:09:24', '$2y$12$KRJgqlS3..WWSCsft9PkIuhApo.Ctb62D7AeUDEpniESXp7hbaxru', '7Bn6RE13tq', '2025-04-04 02:09:24', '2025-04-04 02:09:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_categorieid_foreign` (`categorieID`),
  ADD KEY `articles_scategorieid_foreign` (`scategorieID`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `scategories`
--
ALTER TABLE `scategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scategories_categorieid_foreign` (`categorieID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `scategories`
--
ALTER TABLE `scategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_categorieid_foreign` FOREIGN KEY (`categorieID`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_scategorieid_foreign` FOREIGN KEY (`scategorieID`) REFERENCES `scategories` (`id`);

--
-- Constraints for table `scategories`
--
ALTER TABLE `scategories`
  ADD CONSTRAINT `scategories_categorieid_foreign` FOREIGN KEY (`categorieID`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
