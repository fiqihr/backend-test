-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2024 at 08:55 AM
-- Server version: 10.6.8-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_active`, `created_at`, `updated_at`) VALUES
(1, 'samsung', '1', NULL, NULL),
(2, 'oppo', '1', '2024-08-27 22:32:18', '2024-08-27 22:32:18'),
(3, 'apple', '1', '2024-08-27 23:48:24', '2024-08-27 23:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_28_022148_create_personal_access_tokens_table', 1),
(5, '2024_08_28_024226_create_brands_table', 1),
(6, '2024_08_28_034641_create_products_table', 1);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', '7c05c01ea5e721acd329a18b201460bcbb7f903d9c7bfe6b663cab3c1a5b42b1', '[\"*\"]', NULL, NULL, '2024-08-27 20:49:37', '2024-08-27 20:49:37'),
(2, 'App\\Models\\User', 1, 'MyApp', 'af4ca6f395422782c8382b6c0d5f54d91f6616b5965f9935501d9d7135009b89', '[\"*\"]', NULL, NULL, '2024-08-27 20:49:58', '2024-08-27 20:49:58'),
(3, 'App\\Models\\User', 1, 'MyApp', 'fd20600102e951e31e86e1ff62361026c6ba817efc94eab76d0c19c38a66d1c4', '[\"*\"]', NULL, NULL, '2024-08-27 21:02:58', '2024-08-27 21:02:58'),
(4, 'App\\Models\\User', 2, 'MyApp', '5e962e6bde14e2c8252bc45b5370cafd5e7fe5778acc9fc66c250cf029aed392', '[\"*\"]', NULL, NULL, '2024-08-27 21:09:23', '2024-08-27 21:09:23'),
(5, 'App\\Models\\User', 2, 'MyApp', '5dd60a1ad4d00a91f07be2ef10b665b0eda0dccbe22b584271a09b0ff6718038', '[\"*\"]', NULL, NULL, '2024-08-27 21:11:21', '2024-08-27 21:11:21'),
(6, 'App\\Models\\User', 2, 'MyApp', '77ff9a1701add652ef3399708780dc1afc283785efdef41a4bc1ebb0ecb13d81', '[\"*\"]', NULL, NULL, '2024-08-27 22:44:44', '2024-08-27 22:44:44'),
(7, 'App\\Models\\User', 2, 'MyApp', 'f41b77a4b27842c6e1d14897aacac5432bd3698e35c0ea529d4796b0829c00ac', '[\"*\"]', NULL, NULL, '2024-08-27 22:45:56', '2024-08-27 22:45:56'),
(8, 'App\\Models\\User', 1, 'MyApp', 'd6f3fc8d07bc009595e953621b1d3fdaaf664e7454e5678c60789f15fa7f812f', '[\"*\"]', NULL, NULL, '2024-08-27 22:46:17', '2024-08-27 22:46:17'),
(9, 'App\\Models\\User', 2, 'MyApp', 'e2ae74139c93e7a1e571ac34c88cdbf19882d65910b5d6111532fc5b96541b2f', '[\"*\"]', NULL, NULL, '2024-08-27 22:49:03', '2024-08-27 22:49:03'),
(10, 'App\\Models\\User', 2, 'MyApp', '454676f4b9e6292efe27c7b117d5c25a384b1afa69665ad0405dc2cb5430900e', '[\"*\"]', NULL, NULL, '2024-08-27 22:50:15', '2024-08-27 22:50:15'),
(11, 'App\\Models\\User', 2, 'MyApp', '9cc40f514489d26fad359c398648b7fa07ee01ae5df87bdbd6f6170e6470ffd1', '[\"*\"]', NULL, NULL, '2024-08-27 22:51:19', '2024-08-27 22:51:19'),
(12, 'App\\Models\\User', 2, 'MyApp', 'ebc772bf4e8d4119f6b78a0ced0dffbf819eb55ef5e2cfc70b5454e2888e2505', '[\"*\"]', NULL, NULL, '2024-08-27 22:59:23', '2024-08-27 22:59:23'),
(15, 'App\\Models\\User', 5, 'MyApp', '8ce59bcd42f7e2820673aea2d0717327d6f190a1e8bccf97a27e5c32c552d1f8', '[\"*\"]', NULL, NULL, '2024-08-27 23:06:50', '2024-08-27 23:06:50'),
(16, 'App\\Models\\User', 6, 'MyApp', '9a8237cc031a371f1473953292938b22a23ccd2247960906965221dcb8dda034', '[\"*\"]', NULL, NULL, '2024-08-27 23:07:10', '2024-08-27 23:07:10'),
(18, 'App\\Models\\User', 2, 'MyApp', '80dc1136d73b1544aeac056fa6dae67e92dd952bfddde881354e1d24adbaffe6', '[\"*\"]', '2024-08-27 23:16:14', NULL, '2024-08-27 23:15:52', '2024-08-27 23:16:14'),
(21, 'App\\Models\\User', 1, 'MyApp', 'b5d927b919c37d91eac6ca338ac6056b3b5efa1728453fccd64e1f7a15f7408e', '[\"*\"]', '2024-08-27 23:30:47', NULL, '2024-08-27 23:29:25', '2024-08-27 23:30:47'),
(23, 'App\\Models\\User', 7, 'MyApp', '3ab3ec68a8f4978aa5355a19ef1791624c25ebe12eb57cf03432ca47b7bce092', '[\"*\"]', NULL, NULL, '2024-08-27 23:44:56', '2024-08-27 23:44:56'),
(24, 'App\\Models\\User', 7, 'MyApp', 'cd7073da0fb1a769d882ee0faa8dd47796a939f7eaac967a23058fbedf50c727', '[\"*\"]', '2024-08-27 23:53:08', NULL, '2024-08-27 23:45:38', '2024-08-27 23:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `brand_id`, `product_price`, `product_stock`, `product_active`, `created_at`, `updated_at`) VALUES
(1, 'samsung a23', 1, 232323, 12, '1', NULL, NULL),
(2, 'samsung s23', 1, 1212, 34, '1', '2024-08-27 22:24:50', '2024-08-27 22:24:50'),
(3, 'iphone 15', 1, 454, 22, '1', '2024-08-27 23:49:20', '2024-08-27 23:49:20'),
(4, 'iphone 16', 3, 454, 22, '1', '2024-08-27 23:52:53', '2024-08-27 23:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abctest', 'abctest@mail.com', NULL, '$2y$12$jPzvTKHdOkVMtzz97OWWZOUhTVjF9EL.dfo45.g1nLCTBGs2k73Yi', NULL, '2024-08-27 20:49:37', '2024-08-27 20:49:37'),
(2, 'test12', 'test12@mail.com', NULL, '$2y$12$0xTylpHQXDdRHN2.RQRg..KgFT6iHm.Ar5jAMIkLiul6ttYbtJ40q', NULL, '2024-08-27 21:09:23', '2024-08-27 21:09:23'),
(3, 'test13', 'test13@mail.com', NULL, '$2y$12$uNBbjilBR8eB3x1J65P0PeZrFL03dALZLBFQwfjiLJ65iVMY4Rv1O', NULL, '2024-08-27 23:02:45', '2024-08-27 23:02:45'),
(5, 'test14', 'test14@mail.com', NULL, '$2y$12$lihsQZwZip7auiEXGek2AOQgrOGYVyQtLzpXwm7Qf6UU8syANPati', NULL, '2024-08-27 23:06:50', '2024-08-27 23:06:50'),
(6, 'abctest1', 'abctest1@mail.com', NULL, '$2y$12$E5BgW0/iInFmArXQFBZ.kuRDymmPS5sYq1T9hno9OxTphJF/5Imem', NULL, '2024-08-27 23:07:10', '2024-08-27 23:07:10'),
(7, 'test15', 'test15@mail.com', NULL, '$2y$12$GwkYdfd9GyUw25c4H0l/aO77aLhv4oXgyGkwDggRM7heh1yeBs9GG', NULL, '2024-08-27 23:44:56', '2024-08-27 23:44:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
