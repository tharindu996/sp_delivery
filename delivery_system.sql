-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2025 at 09:28 AM
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
-- Database: `delivery_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('5c785c036466adea360111aa28563bfd556b5fba', 'i:1;', 1740039209),
('5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1740039209;', 1740039209);

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
-- Table structure for table `delivery_requests`
--

CREATE TABLE `delivery_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pickup_address` varchar(255) NOT NULL,
  `pickup_name` varchar(255) NOT NULL,
  `pickup_contact_no` varchar(255) NOT NULL,
  `pickup_email` varchar(255) DEFAULT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `delivery_name` varchar(255) NOT NULL,
  `delivery_contact_no` varchar(255) NOT NULL,
  `delivery_email` varchar(255) DEFAULT NULL,
  `goods_type` enum('Document','Parcel') NOT NULL,
  `delivery_provider` enum('DHL','STARTRACK','ZOOM2U','TGE') NOT NULL,
  `priority` enum('Standard','Express','Immediate') NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_time` time NOT NULL,
  `package_description` text NOT NULL,
  `length` decimal(5,2) NOT NULL,
  `height` decimal(5,2) NOT NULL,
  `width` decimal(5,2) NOT NULL,
  `weight` decimal(5,2) NOT NULL,
  `status` enum('Pending','Processing','Shipped','Cancelled') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_requests`
--

INSERT INTO `delivery_requests` (`id`, `pickup_address`, `pickup_name`, `pickup_contact_no`, `pickup_email`, `delivery_address`, `delivery_name`, `delivery_contact_no`, `delivery_email`, `goods_type`, `delivery_provider`, `priority`, `pickup_date`, `pickup_time`, `package_description`, `length`, `height`, `width`, `weight`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nemo dolor accusamus', 'Hic in occaecat sit', '2222222222', 'xosyjo@mailinator.com', 'Ex est corporis qui', 'Sit proident labor', '2222222222', 'qylocuw@mailinator.com', 'Document', 'TGE', 'Standard', '2025-11-21', '01:51:00', 'Velit natus minus qu', 5.00, 5.00, 5.00, 5.00, 'Cancelled', '2025-02-20 00:30:36', '2025-02-20 00:53:41'),
(2, 'Voluptatum sed delec', 'Voluptates amet iru', '2222222222', 'ceqow@mailinator.com', 'Ipsum magnam et vol', 'Iste doloribus ea la', '2222222222', 'hetowymyq@mailinator.com', 'Document', 'DHL', 'Immediate', '2025-11-23', '14:20:00', 'Labore cupidatat vel', 5.00, 5.00, 5.00, 5.00, 'Pending', '2025-02-20 01:19:38', '2025-02-20 01:19:38'),
(3, 'Dolorem ad lorem acc', 'Occaecat et laboris', '5555555555', 'wupavo@mailinator.com', 'Fugit ab aperiam ip', 'Enim fugiat id dolor', '5555555555', 'tyqefoj@mailinator.com', 'Document', 'STARTRACK', 'Standard', '2037-10-18', '21:51:00', 'Ex et consectetur ut', 5.00, 5.00, 5.00, 5.00, 'Pending', '2025-02-20 01:20:32', '2025-02-20 01:20:32'),
(4, 'Laudantium aliquip', 'Similique deserunt t', '5555555555', 'nyfyligo@mailinator.com', 'Enim et animi repre', 'Sit voluptatibus do', '5555555555', 'dohih@mailinator.com', 'Document', 'ZOOM2U', 'Immediate', '2026-07-26', '14:58:00', 'Rem magni tempor ad', 3.00, 3.00, 3.00, 3.00, 'Cancelled', '2025-02-20 01:43:22', '2025-02-20 02:01:35'),
(5, 'Repudiandae deserunt', 'Ad eos reprehenderit', '555555555', 'sevovixeja@mailinator.com', 'Perspiciatis elit', 'Nam in sequi omnis v', '6666666666', 'dadik@mailinator.com', 'Document', 'ZOOM2U', 'Standard', '2026-07-07', '13:15:00', 'Doloribus quia qui i', 3.00, 3.00, 3.00, 3.00, 'Pending', '2025-02-20 01:48:40', '2025-02-20 01:48:40'),
(6, 'Perferendis consequa', 'Voluptas illo id co', '5555555555', 'cyciqenuw@mailinator.com', 'Consequuntur qui per', 'Excepteur et ipsam d', '6666666666', 'qahuwakyl@mailinator.com', 'Document', 'DHL', 'Standard', '2025-11-27', '23:40:00', 'Maiores eveniet ven', 2.00, 2.00, 2.00, 2.00, 'Pending', '2025-02-20 02:14:53', '2025-02-20 02:14:53');

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
(4, '2025_02_20_044028_create_delivery_requests_table', 1);

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
('r389QoM2JjTDG0z8ePPrxUpijelMZkSvZwJCouXX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGFMMld6Q2RYMzh6aUw1WkgwUnZnMkY5Zm9oSGFEV2hJZVduWER6NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZWxpdmVyeS1yZXF1ZXN0cy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1740039160);

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
-- Indexes for table `delivery_requests`
--
ALTER TABLE `delivery_requests`
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
-- AUTO_INCREMENT for table `delivery_requests`
--
ALTER TABLE `delivery_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
