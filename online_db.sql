-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2023 at 08:08 AM
-- Server version: 8.0.32-0ubuntu0.20.04.2
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_id`, `cat_name`, `cat_color`, `created_at`, `updated_at`) VALUES
(1, '1', 'Beverage', 'Green', NULL, NULL),
(2, '2', 'health_care', 'red', NULL, NULL);

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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `user_id`, `user_name`, `pid`, `pname`, `price`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(10, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-01 00:23:52', '2023-05-01 00:23:52'),
(11, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '2', '2200', '2023-05-01 00:23:52', '2023-05-01 00:23:52'),
(12, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-01 00:37:55', '2023-05-01 00:37:55'),
(13, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '2', '2200', '2023-05-01 00:37:56', '2023-05-01 00:37:56'),
(14, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-01 03:14:26', '2023-05-01 03:14:26'),
(15, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '2', '2200', '2023-05-01 03:14:26', '2023-05-01 03:14:26'),
(16, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-01 03:15:30', '2023-05-01 03:15:30'),
(17, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '2', '2200', '2023-05-01 03:15:31', '2023-05-01 03:15:31'),
(18, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-01 03:16:15', '2023-05-01 03:16:15'),
(19, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '2', '2200', '2023-05-01 03:16:15', '2023-05-01 03:16:15'),
(20, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-01 03:18:29', '2023-05-01 03:18:29'),
(21, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '2', '2200', '2023-05-01 03:18:29', '2023-05-01 03:18:29'),
(22, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:33:58', '2023-05-02 05:33:58'),
(23, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:33:59', '2023-05-02 05:33:59'),
(24, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:41:00', '2023-05-02 05:41:00'),
(25, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:41:00', '2023-05-02 05:41:00'),
(26, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:41:07', '2023-05-02 05:41:07'),
(27, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:41:08', '2023-05-02 05:41:08'),
(28, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:44:41', '2023-05-02 05:44:41'),
(29, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:44:41', '2023-05-02 05:44:41'),
(30, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:45:31', '2023-05-02 05:45:31'),
(31, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:45:31', '2023-05-02 05:45:31'),
(32, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:46:19', '2023-05-02 05:46:19'),
(33, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:46:19', '2023-05-02 05:46:19'),
(34, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:49:13', '2023-05-02 05:49:13'),
(35, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:49:13', '2023-05-02 05:49:13'),
(36, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:51:28', '2023-05-02 05:51:28'),
(37, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:51:28', '2023-05-02 05:51:28'),
(38, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:56:07', '2023-05-02 05:56:07'),
(39, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:56:07', '2023-05-02 05:56:07'),
(40, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:56:41', '2023-05-02 05:56:41'),
(41, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:56:42', '2023-05-02 05:56:42'),
(42, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:58:00', '2023-05-02 05:58:00'),
(43, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:58:00', '2023-05-02 05:58:00'),
(44, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 05:58:21', '2023-05-02 05:58:21'),
(45, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 05:58:22', '2023-05-02 05:58:22'),
(46, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 06:01:03', '2023-05-02 06:01:03'),
(47, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 06:01:04', '2023-05-02 06:01:04'),
(48, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 06:10:10', '2023-05-02 06:10:10'),
(49, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 06:10:10', '2023-05-02 06:10:10'),
(50, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 06:15:06', '2023-05-02 06:15:06'),
(51, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 06:15:07', '2023-05-02 06:15:07'),
(52, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 06:16:32', '2023-05-02 06:16:32'),
(53, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 06:16:32', '2023-05-02 06:16:32'),
(54, '23', 'saeed ramzan', '9', 'Anchor 400g', '1100', '1', '1100', '2023-05-02 06:17:15', '2023-05-02 06:17:15'),
(55, '23', 'saeed ramzan', '8', 'Signal', '100', '1', '100', '2023-05-02 06:17:15', '2023-05-02 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `item_masters`
--

CREATE TABLE `item_masters` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `g_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_masters`
--

INSERT INTO `item_masters` (`id`, `user_id`, `user_name`, `date`, `g_total`, `d_charge`, `created_at`, `updated_at`) VALUES
(1, 'test_id', 'test name', '2023', '3000', 'D Total', '2023-05-01 03:16:16', '2023-05-01 03:16:16'),
(2, '23', 'saeed ramzan', '2023-05-01', '2300', 'D Total', '2023-05-01 03:18:29', '2023-05-01 03:18:29'),
(3, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:34:00', '2023-05-02 05:34:00'),
(4, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:41:01', '2023-05-02 05:41:01'),
(5, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:41:08', '2023-05-02 05:41:08'),
(6, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:44:42', '2023-05-02 05:44:42'),
(7, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:45:31', '2023-05-02 05:45:31'),
(8, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:46:19', '2023-05-02 05:46:19'),
(9, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:49:13', '2023-05-02 05:49:13'),
(10, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:51:29', '2023-05-02 05:51:29'),
(11, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:56:07', '2023-05-02 05:56:07'),
(12, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:56:43', '2023-05-02 05:56:43'),
(13, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:58:00', '2023-05-02 05:58:00'),
(14, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 05:58:22', '2023-05-02 05:58:22'),
(15, '23', 'saeed ramzan', '2023-05-02', '1200', 'D Total', '2023-05-02 06:01:04', '2023-05-02 06:01:04'),
(16, '23', 'saeed ramzan', '2023-05-02', '1200', '150', '2023-05-02 06:10:10', '2023-05-02 06:10:10'),
(17, '23', 'saeed ramzan', '2023-05-02', '1200', '150', '2023-05-02 06:15:07', '2023-05-02 06:15:07'),
(18, '23', 'saeed ramzan', '2023-05-02', '1200', '150', '2023-05-02 06:16:33', '2023-05-02 06:16:33'),
(19, '23', 'saeed ramzan', '2023-05-02', '1200', '150', '2023-05-02 06:17:15', '2023-05-02 06:17:15');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_21_140811_create_table_cart', 1),
(6, '2023_03_27_094656_crate_table_item', 2),
(7, '2023_04_29_074411_add_image_column', 3),
(8, '2023_04_30_060133_table_item', 4),
(9, '2023_05_01_063547_table_item_masters', 5),
(10, '2023_05_04_111021_add_category_column', 6),
(11, '2023_06_03_152412_add_cat_column', 7),
(12, '2023_06_03_152602_add_cate_colum', 7);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pqty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `pname`, `pqty`, `price`, `total`, `image`, `category`) VALUES
(8, '2023-04-29 02:49:40', '2023-04-29 02:49:40', 'Signal', '300', '100', NULL, 'Pro-Test-2023-04-29.jpg', 'beve'),
(9, '2023-04-29 10:58:13', '2023-04-29 10:58:13', 'Anchor 400g', '10', '1100', NULL, 'Anchor-400g-2023-04-29.png', 'beverage'),
(10, '2023-06-03 02:47:11', '2023-06-03 02:47:11', 'ProName', '7', '30', NULL, 'ProName-2023-06-03.ico', 'cat'),
(12, '2023-06-03 06:23:38', '2023-06-03 06:23:38', 'ProName', '2', '50', NULL, 'ProName-2023-06-03.ico', 'cat'),
(13, '2023-06-03 06:24:34', '2023-06-03 06:24:34', 'ProName', '20', '40', NULL, 'ProName-2023-06-03.ico', 'cat'),
(14, '2023-06-03 06:25:28', '2023-06-03 06:25:28', 'Anchor', '7', '30', NULL, 'Anchor-2023-06-03.jpg', 'cat'),
(15, '2023-06-03 06:28:13', '2023-06-03 06:28:13', 'ProName', '50', 'ProPrice', NULL, 'ProName-2023-06-03.png', 'cat'),
(16, '2023-06-03 06:29:44', '2023-06-03 06:29:44', 'Anchor', '2', '30', NULL, 'Anchor-2023-06-03.ico', 'cat');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(23, 'saeed ramzan', 'saeedramzaan@gmail.com', NULL, '123', NULL, '2023-04-26 03:22:33', '2023-04-26 03:22:33'),
(24, 'Saeed', 'saeed@gmail.com', NULL, 'mypass123', NULL, '2023-05-18 03:16:29', '2023-05-18 03:16:29'),
(26, 'Name', 'ram@gmail.com', NULL, '123456', NULL, '2023-05-31 03:08:53', '2023-05-31 03:08:53'),
(27, 'Name', 'kkjk@gmail.com', NULL, '123456', NULL, '2023-05-31 03:09:22', '2023-05-31 03:09:22'),
(28, 'rwqr', 'ram2@gmail.com', NULL, '3232', NULL, '2023-05-31 03:28:42', '2023-05-31 03:28:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_masters`
--
ALTER TABLE `item_masters`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `item_masters`
--
ALTER TABLE `item_masters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
