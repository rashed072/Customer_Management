-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 05:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` enum('M','F','O') DEFAULT NULL,
  `address` text NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_name`, `email`, `gender`, `address`, `state`, `country`, `dob`, `password`, `status`, `points`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'Hosneara Mukta', 'hosneara07@gmail.com', 'F', 'Mirpur', 'Istanbul', 'Turkey', '2023-02-02', '345', 1, 0, NULL, '2023-02-06 04:15:43', NULL),
(10, 'Md.Rashedul Islam', 'rashedulislam072@gmail.com', 'M', 'Mirpur', 'Dhaka', 'Bangladesh', '2023-02-06', '202cb962ac59075b964b07152d234b70', 1, 0, '2023-02-05 11:59:41', '2023-02-05 11:59:41', NULL),
(11, 'MD. RASHEDUL ISLAM', 'example@gmail.com', 'M', 'Bakhrabad', 'Delhi', 'India', '2023-02-05', '38db3aed920cf82ab059bfccbd02be6a', 1, 0, '2023-02-05 12:00:56', '2023-02-06 04:05:43', '2023-02-06 04:05:43'),
(12, 'MD. RASHEDUL ISLAM', 'example@gmail.com', 'M', 'Bakhrabad', 'Delhi', 'India', '2023-02-04', '289dff07669d7a23de0ef88d2f7129e7', 1, 0, '2023-02-05 12:01:57', '2023-02-05 12:01:57', NULL),
(13, 'MD. RASHEDUL ISLAM', 'example@gmail.com', 'M', 'Bakhrabad', 'Delhi', 'India', '2023-02-04', '289dff07669d7a23de0ef88d2f7129e7', 1, 0, '2023-02-05 12:03:10', '2023-02-05 12:03:10', NULL),
(16, 'Md.Rakibul Islam', 'example2@gmail.com', 'M', 'PirerBagh', 'Cumilla', 'Turkey', '2023-02-08', 'd81f9c1be2e08964bf9f24b15f0e4900', 1, 0, '2023-02-06 08:19:58', '2023-02-06 08:19:58', NULL),
(18, 'Abdul Karim', 'abdul@gmail.com', 'M', 'Imamdirkandi', 'Istanbul', 'Turkey', '2023-02-05', '68053af2923e00204c3ca7c6a3150cf7', 1, 0, '2023-02-06 13:40:27', '2023-02-06 13:40:27', NULL),
(19, 'Sarah Sharif', 'sarah@gmail.com', 'F', 'Pirer Bagh', 'Dhaka', 'Bangladesh', '2023-01-30', '289dff07669d7a23de0ef88d2f7129e7', 1, 0, '2023-02-06 13:47:46', '2023-02-06 14:58:10', NULL),
(21, 'Md.Rashedul Islam', 'example@gmail.com', NULL, 'Mirpur', 'Dhaka', 'Bangladesh', '2023-02-09', '202cb962ac59075b964b07152d234b70', 1, 0, '2023-02-07 03:56:07', '2023-02-07 03:56:07', NULL),
(22, 'MD. RASHEDUL ISLAM', 'rashedulislam072@gmail.com', NULL, 'Cyclone', 'Istanbul', 'Turkey', '2023-02-02', '202cb962ac59075b964b07152d234b70', 1, 0, '2023-02-07 04:00:13', '2023-02-07 04:00:13', NULL);

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_02_04_193517_create_customers_table', 1),
(12, '2023_02_04_194353_add_columns_to_customers_table', 1),
(13, '2023_02_06_093355_add_deleted_at_to_customers_table', 2),
(14, '2023_02_07_131228_create_groups_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
