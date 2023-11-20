-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2023 at 03:44 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wowy1`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'WUXpykzRpCtTioZjfyA76EC0VKLVBGLE', 1, '2023-10-02 00:43:15', '2023-10-02 00:43:15', '2023-10-02 00:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Smart Offer', '2028-10-02 00:00:00', 'not_set', 'IZ6WU8KUALYD', 'promotion/1.png', '/products', 0, 1, 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(2, 'Sale off', '2028-10-02 00:00:00', 'not_set', 'ILSFJVYFGCPZ', 'promotion/2.png', '/products', 0, 2, 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(3, 'New Arrivals', '2028-10-02 00:00:00', 'not_set', 'ILSDKVYFGXPH', 'promotion/3.png', '/products', 0, 3, 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(4, 'Gaming Area', '2028-10-02 00:00:00', 'not_set', 'ILSDKVYFGXPJ', 'promotion/4.png', '/products', 0, 4, 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(5, 'Smart Offer', '2028-10-02 00:00:00', 'not_set', 'IZ6WU8KUALYE', 'promotion/5.png', '/products', 0, 5, 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(6, 'Repair Services', '2028-10-02 00:00:00', 'banner-big', 'IZ6WU8KUALYF', 'promotion/6.png', '/products', 0, 6, 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int UNSIGNED NOT NULL,
  `reference_id` int UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-02 00:45:51', '2023-10-02 00:45:51'),
(2, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-02 03:58:36', '2023-10-02 03:58:36'),
(3, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-02 10:03:25', '2023-10-02 10:03:25'),
(4, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-02 10:03:26', '2023-10-02 10:03:26'),
(5, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-02 10:03:26', '2023-10-02 10:03:26'),
(6, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-02 10:03:26', '2023-10-02 10:03:26'),
(7, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-02 10:03:27', '2023-10-02 10:03:27'),
(8, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-02 10:03:27', '2023-10-02 10:03:27'),
(9, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-02 10:03:27', '2023-10-02 10:03:27'),
(10, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-10-02 10:03:27', '2023-10-02 10:03:27'),
(11, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2023-11-15 20:16:22', '2023-11-15 20:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, 'Dolores qui nam et iste dolores eos minus. Numquam minima quaerat ea maxime. Qui voluptatibus aut adipisci. Inventore quia sed dolores natus quam quaerat.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2023-10-02 00:43:14', '2023-10-02 00:43:14'),
(2, 'Fashion', 0, 'Nihil consequatur vel eum consequatur asperiores sed aut. Aperiam voluptates cum suscipit quas eveniet. Vel nihil optio autem error.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-10-02 00:43:14', '2023-10-02 00:43:14'),
(3, 'Electronic', 0, 'Voluptas accusantium sit quam minima. Et est excepturi excepturi aut rerum facilis. Ea sit delectus sint ipsum odit facere autem. Repellat ipsum harum in et. Ut qui et et quia.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-10-02 00:43:14', '2023-10-02 00:43:14'),
(4, 'Commercial', 0, 'Praesentium non vitae modi minima dolor. Deserunt architecto placeat ut accusamus magni molestiae.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-10-02 00:43:14', '2023-10-02 00:43:14'),
(5, 'Thương mại điện tử', 0, 'Fuga assumenda fugit earum reiciendis pariatur et voluptatem. Voluptatem sint odio velit. Eligendi doloremque adipisci tempora odit.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2023-10-02 00:43:14', '2023-10-02 00:43:14'),
(6, 'Fashion', 0, 'Et quo veritatis voluptatem consequatur facilis omnis nesciunt. Quaerat porro corporis aut. Quia rerum aut ut ipsum. Quasi eum autem qui exercitationem rerum illum.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(7, 'Electronic', 0, 'Facere temporibus iure quae vel et quis dolores quas. Ut vitae aspernatur delectus deleniti fuga accusamus quo. Inventore quod qui voluptatem recusandae ut.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(8, 'Thương mại', 0, 'Autem possimus similique et unde consequuntur nisi. Reprehenderit aut totam necessitatibus iure vel quia sit. Natus debitis molestiae rem enim porro autem. Sed eum error iusto voluptatibus explicabo.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-10-02 00:43:15', '2023-10-02 00:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_1', '2023-10-02 00:45:51', '2023-10-02 00:45:51'),
(2, 'widget_total_2', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(3, 'widget_total_themes', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(4, 'widget_total_3', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(5, 'widget_total_4', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(6, 'widget_total_users', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(7, 'widget_total_pages', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(8, 'widget_total_plugins', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(9, 'widget_analytics_general', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(10, 'widget_analytics_page', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(11, 'widget_analytics_browser', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(12, 'widget_posts_recent', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(13, 'widget_analytics_referrer', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(14, 'widget_audit_logs', '2023-10-02 00:45:52', '2023-10-02 00:45:52'),
(15, 'widget_ecommerce_report_general', '2023-10-02 00:45:52', '2023-10-02 00:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int UNSIGNED NOT NULL,
  `widget_id` int UNSIGNED NOT NULL,
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Perxsion', NULL, NULL, 'brands/1.png', 'published', 0, 1, '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(2, 'Hiching', NULL, NULL, 'brands/2.png', 'published', 1, 1, '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(3, 'Kepslo', NULL, NULL, 'brands/3.png', 'published', 2, 1, '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(4, 'Groneba', NULL, NULL, 'brands/4.png', 'published', 3, 1, '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(5, 'Babian', NULL, NULL, 'brands/5.png', 'published', 4, 1, '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(6, 'Valorant', NULL, NULL, 'brands/6.png', 'published', 5, 1, '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(7, 'Pure', NULL, NULL, 'brands/7.png', 'published', 6, 1, '2023-10-02 00:42:47', '2023-10-02 00:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands_translations`
--

INSERT INTO `ec_brands_translations` (`lang_code`, `ec_brands_id`, `name`, `description`) VALUES
('vi', 1, 'Perxsion', NULL),
('vi', 2, 'Hiching', NULL),
('vi', 3, 'Kepslo', NULL),
('vi', 4, 'Groneba', NULL),
('vi', 5, 'Babian', NULL),
('vi', 6, 'Valorant', NULL),
('vi', 7, 'Pure', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint UNSIGNED DEFAULT '0',
  `order` int UNSIGNED DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 2, 0, 1, 1, '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(2, 'EUR', '€', 0, 2, 1, 0, 0.84, '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(3, 'VND', '₫', 0, 0, 2, 0, 23203, '2023-10-02 00:42:47', '2023-10-02 00:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '$2y$10$S2yQ/imC65F6q.VECGH1cePhoXL2octF2Tp26X0BxrfPxrJMOqGLm', 'customers/1.jpg', NULL, '+14309969959', NULL, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '2023-10-02 06:43:06', NULL),
(2, 'Maida Hartmann MD', 'kdaniel@example.net', '$2y$10$nduWoEufHR7zgNGvGOIXPuq/56Bhn6WBUkZ4y1ycAoF.usNdAaJNK', 'customers/1.jpg', NULL, '+15746926049', NULL, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '2023-10-02 06:43:06', NULL),
(3, 'Mr. Kennith Osinski', 'jolie56@example.net', '$2y$10$lDibkcUM8nbcHxgvUx61r.a90Rp1h2ABybcGI87Jj6R1Q0Dyrc1l2', 'customers/2.jpg', NULL, '+12346719690', NULL, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '2023-10-02 06:43:06', NULL),
(4, 'Marshall Mante', 'nbernier@example.net', '$2y$10$5sqhSAfFzgpLx5JD3IyoneEYcFvgBGO.JH4iiJj/x6TL5QaMsA4I6', 'customers/3.jpg', NULL, '+14630028976', NULL, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '2023-10-02 06:43:06', NULL),
(5, 'Jeanne Hudson', 'robbie.bernier@example.net', '$2y$10$BewdC2ztwA31ek8qxCnSlOssPWT.MetXquv48DiJww7HslANOFo3m', 'customers/4.jpg', NULL, '+16674543943', NULL, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '2023-10-02 06:43:06', NULL),
(6, 'Trey Franecki', 'coralie.wilderman@example.org', '$2y$10$XMdXA7yHRn8z37blDvv3i.uZFqI2zbBRwbJPS7eUTv.YNS7DVAKJO', 'customers/5.jpg', NULL, '+15015561728', NULL, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '2023-10-02 06:43:06', NULL),
(7, 'Hettie Kilback', 'mary17@example.net', '$2y$10$lKpJGNBU6uowxPqy8giWBO6VFI7BVziwsDsQrfBwNkbGnAnpsIm8e', 'customers/6.jpg', NULL, '+16800999567', NULL, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '2023-10-02 06:43:06', NULL),
(8, 'Adaline Skiles', 'alexanne16@example.org', '$2y$10$JY54dqXQj5wllb6EtWXSquDDRvil.LZ1C1dMguU1KSO0ySL0d2WgK', 'customers/7.jpg', NULL, '+13077630507', NULL, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '2023-10-02 06:43:06', NULL),
(9, 'Mr. Kenneth Zulauf', 'ehettinger@example.com', '$2y$10$d/e7iEFVvPEu.j9Axc07KuZRgMJXoVCI1Z0NXtMsSXVprYntvtBmm', 'customers/8.jpg', NULL, '+18381309113', NULL, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '2023-10-02 06:43:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '+16893443873', 'NC', 'Arkansas', 'Odellshire', '124 Brionna Glen Apt. 860', 1, 1, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '72217'),
(2, 'John Smith', 'john.smith@botble.com', '+18593937061', 'BN', 'Alaska', 'West Cullenville', '413 Corine Centers', 1, 0, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '51752'),
(3, 'Maida Hartmann MD', 'kdaniel@example.net', '+19780284978', 'LS', 'Michigan', 'Lake Sharonton', '820 Mertz Plains', 2, 1, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '40635-5774'),
(4, 'Mr. Kennith Osinski', 'jolie56@example.net', '+15401253993', 'BY', 'West Virginia', 'Skilestown', '70856 Mayert Cape Apt. 080', 3, 1, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '03726-2439'),
(5, 'Marshall Mante', 'nbernier@example.net', '+12349794142', 'MZ', 'Utah', 'West Paolostad', '5957 Marvin Corners', 4, 1, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '86856-2194'),
(6, 'Jeanne Hudson', 'robbie.bernier@example.net', '+17312840641', 'BO', 'Oregon', 'East Emmie', '43783 Tracy Passage Apt. 433', 5, 1, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '53958-4408'),
(7, 'Trey Franecki', 'coralie.wilderman@example.org', '+12532793654', 'RO', 'Arizona', 'East Natashahaven', '5121 Cassin Track Suite 316', 6, 1, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '85676'),
(8, 'Hettie Kilback', 'mary17@example.net', '+19842377464', 'ZW', 'Louisiana', 'West Scarlett', '2516 Claud Islands Suite 626', 7, 1, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '85059-1272'),
(9, 'Adaline Skiles', 'alexanne16@example.org', '+13520123601', 'KI', 'South Dakota', 'Larsonville', '6102 Hodkiewicz Track', 8, 1, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '86881'),
(10, 'Mr. Kenneth Zulauf', 'ehettinger@example.com', '+13217679646', 'TD', 'Utah', 'Aniyashire', '81368 Abelardo Mountain', 9, 1, '2023-10-02 00:43:06', '2023-10-02 00:43:06', '17973');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int UNSIGNED NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int UNSIGNED NOT NULL,
  `product_collection_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Deal of the Day.', '2023-10-22 00:00:00', 'published', '2023-10-02 00:43:07', '2023-10-02 00:43:07'),
(2, 'Gadgets & Accessories', '2023-11-09 00:00:00', 'published', '2023-10-02 00:43:07', '2023-10-02 00:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales_translations`
--

INSERT INTO `ec_flash_sales_translations` (`lang_code`, `ec_flash_sales_id`, `name`) VALUES
('vi', 1, 'Khuyến mãi trong ngày.'),
('vi', 2, 'Tiện ích & Phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int UNSIGNED DEFAULT NULL,
  `sold` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 15, 102.66, 11, 5),
(2, 10, 181.98, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_product_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `tax_amount`, `shipping_amount`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `token`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 5, '1', 'default', 'pending', 1957.20, 67.20, 0.00, NULL, NULL, 0.00, 1890.00, 1, NULL, 1, 'yRNe3qSYTJv52cCNziB9R5U8ZbgcK', 1, '2023-09-17 00:43:07', '2023-10-02 00:43:08'),
(2, 8, '1', 'default', 'pending', 853.40, 35.40, 0.00, NULL, NULL, 0.00, 818.00, 1, NULL, 1, '9LA3VFfn2PsOCxvXdTjJRJNbXbTpQ', 2, '2023-09-30 10:43:08', '2023-10-02 00:43:08'),
(3, 6, '1', 'default', 'completed', 647.70, 24.70, 0.00, NULL, NULL, 0.00, 623.00, 1, NULL, 1, 'dpGRy5oO1vkWYLHklvYKovk8L3EYW', 3, '2023-09-20 00:43:08', '2023-10-02 00:43:08'),
(4, 5, '1', 'default', 'completed', 785.20, 37.20, 0.00, NULL, NULL, 0.00, 748.00, 1, NULL, 1, 'buIB30dbdBUQ1eAX0eX1cwewGesDr', 4, '2023-09-23 12:43:08', '2023-10-02 00:43:08'),
(5, 7, '1', 'default', 'completed', 228.60, 16.60, 0.00, NULL, NULL, 0.00, 212.00, 1, NULL, 1, 'eFlYOGfk0sGK42fDKbSHv9KUStfJM', 5, '2023-09-28 00:43:08', '2023-10-02 00:43:08'),
(6, 4, '1', 'default', 'pending', 1300.00, 74.00, 0.00, NULL, NULL, 0.00, 1226.00, 1, NULL, 1, 'MN5S3Xlaz4SjEueVSN7Gg0bsGW7sC', 6, '2023-09-29 12:43:08', '2023-10-02 00:43:08'),
(7, 2, '1', 'default', 'pending', 1223.60, 61.60, 0.00, NULL, NULL, 0.00, 1162.00, 1, NULL, 1, 'SD8gwfofrPYy0tXsKjYqGEyg4Ltnf', 7, '2023-09-20 08:43:08', '2023-10-02 00:43:08'),
(8, 9, '1', 'default', 'completed', 1600.30, 92.30, 0.00, NULL, NULL, 0.00, 1508.00, 1, NULL, 1, 'p1xHY8P672xgCfB7vYpsALvEenGKS', 8, '2023-09-25 12:43:08', '2023-10-02 00:43:08'),
(9, 2, '1', 'default', 'pending', 390.40, 16.40, 0.00, NULL, NULL, 0.00, 374.00, 1, NULL, 1, 'Q6Xq17f6vgXrwuvH0yUdAxRbvO1wp', 9, '2023-09-27 00:43:08', '2023-10-02 00:43:08'),
(10, 3, '1', 'default', 'completed', 493.20, 23.20, 0.00, NULL, NULL, 0.00, 470.00, 1, NULL, 1, 'wDUhgMRETrDodd1Aqk6uV1S4buZG4', 10, '2023-09-23 18:43:08', '2023-10-02 00:43:08'),
(11, 6, '1', 'default', 'completed', 258.50, 23.50, 0.00, NULL, NULL, 0.00, 235.00, 1, NULL, 1, 'U4Cjs2E9XOd6dppXwib8gl4eLlYVJ', 11, '2023-09-24 12:43:08', '2023-10-02 00:43:08'),
(12, 1, '1', 'default', 'pending', 889.50, 69.50, 0.00, NULL, NULL, 0.00, 820.00, 1, NULL, 1, 'Csm3BKqmIwLe0covdCaLglMXZlBDS', 12, '2023-09-26 00:43:08', '2023-10-02 00:43:08'),
(13, 6, '1', 'default', 'completed', 438.00, 29.00, 0.00, NULL, NULL, 0.00, 409.00, 1, NULL, 1, 'm21Vm6A7pb0NtijqE4pXIiEodaLnB', 13, '2023-09-28 00:43:08', '2023-10-02 00:43:08'),
(14, 3, '1', 'default', 'pending', 946.30, 45.30, 0.00, NULL, NULL, 0.00, 901.00, 1, NULL, 1, 'SnpeC36iTdtvTcsU4AbupYp0K1D7o', 14, '2023-09-29 16:43:08', '2023-10-02 00:43:08'),
(15, 3, '1', 'default', 'completed', 756.80, 38.80, 0.00, NULL, NULL, 0.00, 718.00, 1, NULL, 1, '59bHHQyetXcS2yKKNBjWvS49P9aKp', 15, '2023-09-28 12:43:08', '2023-10-02 00:43:08'),
(16, 9, '1', 'default', 'pending', 487.60, 31.60, 0.00, NULL, NULL, 0.00, 456.00, 1, NULL, 1, 'GCvhx0wvU67477zKPGm1CofhohRP3', 16, '2023-10-01 14:43:08', '2023-10-02 00:43:08'),
(17, 4, '1', 'default', 'pending', 1600.30, 76.30, 0.00, NULL, NULL, 0.00, 1524.00, 1, NULL, 1, 'eN2H94GhLcwyYr5ipPSDTB3QARXYU', 17, '2023-10-01 16:43:08', '2023-10-02 00:43:08'),
(18, 6, '1', 'default', 'pending', 980.30, 41.30, 0.00, NULL, NULL, 0.00, 939.00, 1, NULL, 1, 'wp6lkr6uAoQ8mUnAkrFxejzrvWlyN', 18, '2023-09-30 00:43:08', '2023-10-02 00:43:08'),
(19, 8, '1', 'default', 'pending', 977.30, 46.30, 0.00, NULL, NULL, 0.00, 931.00, 1, NULL, 1, 'zIcb1iHD6fpvPRTexTVF13rBE2lCS', 19, '2023-09-30 16:43:08', '2023-10-02 00:43:08'),
(20, 3, '1', 'default', 'pending', 1691.50, 69.50, 0.00, NULL, NULL, 0.00, 1622.00, 1, NULL, 1, 'mzstHmgGNiE4WdmGJdugAhwnLRrlS', 20, '2023-10-01 14:43:08', '2023-10-02 00:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_addresses`
--

INSERT INTO `ec_order_addresses` (`id`, `name`, `phone`, `email`, `country`, `state`, `city`, `address`, `order_id`, `zip_code`) VALUES
(1, 'Jeanne Hudson', '+17312840641', 'robbie.bernier@example.net', 'BO', 'Oregon', 'East Emmie', '43783 Tracy Passage Apt. 433', 1, '53958-4408'),
(2, 'Adaline Skiles', '+13520123601', 'alexanne16@example.org', 'KI', 'South Dakota', 'Larsonville', '6102 Hodkiewicz Track', 2, '86881'),
(3, 'Trey Franecki', '+12532793654', 'coralie.wilderman@example.org', 'RO', 'Arizona', 'East Natashahaven', '5121 Cassin Track Suite 316', 3, '85676'),
(4, 'Jeanne Hudson', '+17312840641', 'robbie.bernier@example.net', 'BO', 'Oregon', 'East Emmie', '43783 Tracy Passage Apt. 433', 4, '53958-4408'),
(5, 'Hettie Kilback', '+19842377464', 'mary17@example.net', 'ZW', 'Louisiana', 'West Scarlett', '2516 Claud Islands Suite 626', 5, '85059-1272'),
(6, 'Marshall Mante', '+12349794142', 'nbernier@example.net', 'MZ', 'Utah', 'West Paolostad', '5957 Marvin Corners', 6, '86856-2194'),
(7, 'Maida Hartmann MD', '+19780284978', 'kdaniel@example.net', 'LS', 'Michigan', 'Lake Sharonton', '820 Mertz Plains', 7, '40635-5774'),
(8, 'Mr. Kenneth Zulauf', '+13217679646', 'ehettinger@example.com', 'TD', 'Utah', 'Aniyashire', '81368 Abelardo Mountain', 8, '17973'),
(9, 'Maida Hartmann MD', '+19780284978', 'kdaniel@example.net', 'LS', 'Michigan', 'Lake Sharonton', '820 Mertz Plains', 9, '40635-5774'),
(10, 'Mr. Kennith Osinski', '+15401253993', 'jolie56@example.net', 'BY', 'West Virginia', 'Skilestown', '70856 Mayert Cape Apt. 080', 10, '03726-2439'),
(11, 'Trey Franecki', '+12532793654', 'coralie.wilderman@example.org', 'RO', 'Arizona', 'East Natashahaven', '5121 Cassin Track Suite 316', 11, '85676'),
(12, 'John Smith', '+16893443873', 'john.smith@botble.com', 'NC', 'Arkansas', 'Odellshire', '124 Brionna Glen Apt. 860', 12, '72217'),
(13, 'Trey Franecki', '+12532793654', 'coralie.wilderman@example.org', 'RO', 'Arizona', 'East Natashahaven', '5121 Cassin Track Suite 316', 13, '85676'),
(14, 'Mr. Kennith Osinski', '+15401253993', 'jolie56@example.net', 'BY', 'West Virginia', 'Skilestown', '70856 Mayert Cape Apt. 080', 14, '03726-2439'),
(15, 'Mr. Kennith Osinski', '+15401253993', 'jolie56@example.net', 'BY', 'West Virginia', 'Skilestown', '70856 Mayert Cape Apt. 080', 15, '03726-2439'),
(16, 'Mr. Kenneth Zulauf', '+13217679646', 'ehettinger@example.com', 'TD', 'Utah', 'Aniyashire', '81368 Abelardo Mountain', 16, '17973'),
(17, 'Marshall Mante', '+12349794142', 'nbernier@example.net', 'MZ', 'Utah', 'West Paolostad', '5957 Marvin Corners', 17, '86856-2194'),
(18, 'Trey Franecki', '+12532793654', 'coralie.wilderman@example.org', 'RO', 'Arizona', 'East Natashahaven', '5121 Cassin Track Suite 316', 18, '85676'),
(19, 'Adaline Skiles', '+13520123601', 'alexanne16@example.org', 'KI', 'South Dakota', 'Larsonville', '6102 Hodkiewicz Track', 19, '86881'),
(20, 'Mr. Kennith Osinski', '+15401253993', 'jolie56@example.net', 'BY', 'West Virginia', 'Skilestown', '70856 Mayert Cape Apt. 080', 20, '03726-2439');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_histories`
--

INSERT INTO `ec_order_histories` (`id`, `action`, `description`, `user_id`, `order_id`, `extras`, `created_at`, `updated_at`) VALUES
(1, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 1, NULL, '2023-09-17 00:43:07', '2023-09-17 00:43:07'),
(2, 'confirm_order', 'Order was verified by %user_name%', 0, 1, NULL, '2023-09-17 00:43:07', '2023-09-17 00:43:07'),
(3, 'create_shipment', 'Created shipment for order', 0, 1, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(4, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 2, NULL, '2023-09-30 10:43:08', '2023-09-30 10:43:08'),
(5, 'confirm_order', 'Order was verified by %user_name%', 0, 2, NULL, '2023-09-30 10:43:08', '2023-09-30 10:43:08'),
(6, 'create_shipment', 'Created shipment for order', 0, 2, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(7, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 3, NULL, '2023-09-20 00:43:08', '2023-09-20 00:43:08'),
(8, 'confirm_order', 'Order was verified by %user_name%', 0, 3, NULL, '2023-09-20 00:43:08', '2023-09-20 00:43:08'),
(9, 'confirm_payment', 'Payment was confirmed (amount $647.70) by %user_name%', 0, 3, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(10, 'create_shipment', 'Created shipment for order', 0, 3, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(11, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 3, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(12, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 4, NULL, '2023-09-23 12:43:08', '2023-09-23 12:43:08'),
(13, 'confirm_order', 'Order was verified by %user_name%', 0, 4, NULL, '2023-09-23 12:43:08', '2023-09-23 12:43:08'),
(14, 'confirm_payment', 'Payment was confirmed (amount $785.20) by %user_name%', 0, 4, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(15, 'create_shipment', 'Created shipment for order', 0, 4, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(16, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 4, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(17, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 5, NULL, '2023-09-28 00:43:08', '2023-09-28 00:43:08'),
(18, 'confirm_order', 'Order was verified by %user_name%', 0, 5, NULL, '2023-09-28 00:43:08', '2023-09-28 00:43:08'),
(19, 'confirm_payment', 'Payment was confirmed (amount $228.60) by %user_name%', 0, 5, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(20, 'create_shipment', 'Created shipment for order', 0, 5, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(21, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 5, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(22, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 6, NULL, '2023-09-29 12:43:08', '2023-09-29 12:43:08'),
(23, 'confirm_order', 'Order was verified by %user_name%', 0, 6, NULL, '2023-09-29 12:43:08', '2023-09-29 12:43:08'),
(24, 'create_shipment', 'Created shipment for order', 0, 6, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(25, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 6, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(26, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 7, NULL, '2023-09-20 08:43:08', '2023-09-20 08:43:08'),
(27, 'confirm_order', 'Order was verified by %user_name%', 0, 7, NULL, '2023-09-20 08:43:08', '2023-09-20 08:43:08'),
(28, 'create_shipment', 'Created shipment for order', 0, 7, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(29, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 8, NULL, '2023-09-25 12:43:08', '2023-09-25 12:43:08'),
(30, 'confirm_order', 'Order was verified by %user_name%', 0, 8, NULL, '2023-09-25 12:43:08', '2023-09-25 12:43:08'),
(31, 'confirm_payment', 'Payment was confirmed (amount $1,600.30) by %user_name%', 0, 8, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(32, 'create_shipment', 'Created shipment for order', 0, 8, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(33, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 8, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(34, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 9, NULL, '2023-09-27 00:43:08', '2023-09-27 00:43:08'),
(35, 'confirm_order', 'Order was verified by %user_name%', 0, 9, NULL, '2023-09-27 00:43:08', '2023-09-27 00:43:08'),
(36, 'create_shipment', 'Created shipment for order', 0, 9, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(37, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 10, NULL, '2023-09-23 18:43:08', '2023-09-23 18:43:08'),
(38, 'confirm_order', 'Order was verified by %user_name%', 0, 10, NULL, '2023-09-23 18:43:08', '2023-09-23 18:43:08'),
(39, 'confirm_payment', 'Payment was confirmed (amount $493.20) by %user_name%', 0, 10, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(40, 'create_shipment', 'Created shipment for order', 0, 10, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(41, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 10, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(42, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 11, NULL, '2023-09-24 12:43:08', '2023-09-24 12:43:08'),
(43, 'confirm_order', 'Order was verified by %user_name%', 0, 11, NULL, '2023-09-24 12:43:08', '2023-09-24 12:43:08'),
(44, 'confirm_payment', 'Payment was confirmed (amount $258.50) by %user_name%', 0, 11, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(45, 'create_shipment', 'Created shipment for order', 0, 11, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(46, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 11, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(47, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 12, NULL, '2023-09-26 00:43:08', '2023-09-26 00:43:08'),
(48, 'confirm_order', 'Order was verified by %user_name%', 0, 12, NULL, '2023-09-26 00:43:08', '2023-09-26 00:43:08'),
(49, 'confirm_payment', 'Payment was confirmed (amount $889.50) by %user_name%', 0, 12, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(50, 'create_shipment', 'Created shipment for order', 0, 12, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(51, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 13, NULL, '2023-09-28 00:43:08', '2023-09-28 00:43:08'),
(52, 'confirm_order', 'Order was verified by %user_name%', 0, 13, NULL, '2023-09-28 00:43:08', '2023-09-28 00:43:08'),
(53, 'confirm_payment', 'Payment was confirmed (amount $438.00) by %user_name%', 0, 13, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(54, 'create_shipment', 'Created shipment for order', 0, 13, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(55, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 13, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(56, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 14, NULL, '2023-09-29 16:43:08', '2023-09-29 16:43:08'),
(57, 'confirm_order', 'Order was verified by %user_name%', 0, 14, NULL, '2023-09-29 16:43:08', '2023-09-29 16:43:08'),
(58, 'confirm_payment', 'Payment was confirmed (amount $946.30) by %user_name%', 0, 14, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(59, 'create_shipment', 'Created shipment for order', 0, 14, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(60, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 15, NULL, '2023-09-28 12:43:08', '2023-09-28 12:43:08'),
(61, 'confirm_order', 'Order was verified by %user_name%', 0, 15, NULL, '2023-09-28 12:43:08', '2023-09-28 12:43:08'),
(62, 'confirm_payment', 'Payment was confirmed (amount $756.80) by %user_name%', 0, 15, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(63, 'create_shipment', 'Created shipment for order', 0, 15, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(64, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 15, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(65, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 16, NULL, '2023-10-01 14:43:08', '2023-10-01 14:43:08'),
(66, 'confirm_order', 'Order was verified by %user_name%', 0, 16, NULL, '2023-10-01 14:43:08', '2023-10-01 14:43:08'),
(67, 'create_shipment', 'Created shipment for order', 0, 16, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(68, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 16, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(69, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 17, NULL, '2023-10-01 16:43:08', '2023-10-01 16:43:08'),
(70, 'confirm_order', 'Order was verified by %user_name%', 0, 17, NULL, '2023-10-01 16:43:08', '2023-10-01 16:43:08'),
(71, 'confirm_payment', 'Payment was confirmed (amount $1,600.30) by %user_name%', 0, 17, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(72, 'create_shipment', 'Created shipment for order', 0, 17, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(73, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 18, NULL, '2023-09-30 00:43:08', '2023-09-30 00:43:08'),
(74, 'confirm_order', 'Order was verified by %user_name%', 0, 18, NULL, '2023-09-30 00:43:08', '2023-09-30 00:43:08'),
(75, 'confirm_payment', 'Payment was confirmed (amount $980.30) by %user_name%', 0, 18, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(76, 'create_shipment', 'Created shipment for order', 0, 18, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(77, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 19, NULL, '2023-09-30 16:43:08', '2023-09-30 16:43:08'),
(78, 'confirm_order', 'Order was verified by %user_name%', 0, 19, NULL, '2023-09-30 16:43:08', '2023-09-30 16:43:08'),
(79, 'create_shipment', 'Created shipment for order', 0, 19, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(80, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 20, NULL, '2023-10-01 14:43:08', '2023-10-01 14:43:08'),
(81, 'confirm_order', 'Order was verified by %user_name%', 0, 20, NULL, '2023-10-01 14:43:08', '2023-10-01 14:43:08'),
(82, 'confirm_payment', 'Payment was confirmed (amount $1,691.50) by %user_name%', 0, 20, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(83, 'create_shipment', 'Created shipment for order', 0, 20, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(84, 'update_status', 'Order confirmed by %user_name%', 0, 3, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(85, 'update_status', 'Order confirmed by %user_name%', 0, 4, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(86, 'update_status', 'Order confirmed by %user_name%', 0, 5, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(87, 'update_status', 'Order confirmed by %user_name%', 0, 8, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(88, 'update_status', 'Order confirmed by %user_name%', 0, 10, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(89, 'update_status', 'Order confirmed by %user_name%', 0, 11, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(90, 'update_status', 'Order confirmed by %user_name%', 0, 13, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(91, 'update_status', 'Order confirmed by %user_name%', 0, 15, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_id`, `product_name`, `weight`, `restock_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 417.00, 41.70, '[]', 30, 'Boxed - Bluetooth Headphone', 1503.00, 0, '2023-10-02 00:43:07', '2023-10-02 00:43:07'),
(2, 1, 2, 70.00, 7.00, '[]', 31, 'Chikie - Bluetooth Speaker', 1306.00, 0, '2023-10-02 00:43:07', '2023-10-02 00:43:07'),
(3, 1, 2, 56.00, 5.60, '[]', 35, 'Camera Samsung SS-24', 1430.00, 0, '2023-10-02 00:43:07', '2023-10-02 00:43:07'),
(4, 1, 3, 129.00, 12.90, '[]', 69, 'Macbook Pro 2015 13 inch', 2199.00, 0, '2023-10-02 00:43:07', '2023-10-02 00:43:07'),
(5, 2, 1, 122.00, 12.20, '[]', 51, 'Macbook Pro 13 inch', 892.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(6, 2, 3, 122.00, 12.20, '[]', 52, 'Macbook Pro 13 inch', 2676.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(7, 2, 3, 110.00, 11.00, '[]', 56, 'MacSafe 80W', 2457.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(8, 3, 2, 118.00, 11.80, '[]', 61, 'Apple Airpods Serial 3', 1554.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(9, 3, 3, 129.00, 12.90, '[]', 69, 'Macbook Pro 2015 13 inch', 2199.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(10, 4, 3, 128.00, 12.80, '[]', 40, 'Macbook Pro 2015', 2241.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(11, 4, 2, 120.00, 12.00, '[]', 62, 'Cool Smart Watches', 1598.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(12, 4, 1, 124.00, 12.40, '[]', 68, 'Leather Watch Band Serial 3', 743.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(13, 5, 2, 46.00, 4.60, '[]', 34, 'Camera Hikvision HK-35VS8', 1286.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(14, 5, 1, 120.00, 12.00, '[]', 62, 'Cool Smart Watches', 799.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(15, 6, 1, 373.00, 37.30, '[]', 25, 'Smart Home Speaker', 626.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(16, 6, 1, 124.00, 12.40, '[]', 67, 'Leather Watch Band Serial 3', 743.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(17, 6, 3, 129.00, 12.90, '[]', 70, 'Macbook Pro 2015 13 inch', 2199.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(18, 6, 3, 114.00, 11.40, '[]', 71, 'Historic Alarm Clock', 2388.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(19, 7, 2, 417.00, 41.70, '[]', 29, 'Boxed - Bluetooth Headphone', 1002.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(20, 7, 1, 70.00, 7.00, '[]', 31, 'Chikie - Bluetooth Speaker', 653.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(21, 7, 2, 129.00, 12.90, '[]', 70, 'Macbook Pro 2015 13 inch', 1466.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(22, 8, 1, 337.00, 33.70, '[]', 43, 'Macbook Air 12 inch', 607.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(23, 8, 2, 337.00, 33.70, '[]', 44, 'Macbook Air 12 inch', 1214.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(24, 8, 3, 124.00, 12.40, '[]', 67, 'Leather Watch Band Serial 3', 2229.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(25, 8, 1, 125.00, 12.50, '[]', 72, 'Black Glasses', 684.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(26, 9, 3, 46.00, 4.60, '[]', 33, 'Camera Hikvision HK-35VS8', 1929.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(27, 9, 2, 118.00, 11.80, '[]', 59, 'Apple Airpods Serial 3', 1554.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(28, 10, 3, 119.00, 11.90, '[]', 66, 'Black Smart Watches', 1611.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(29, 10, 1, 113.00, 11.30, '[]', 80, 'Gaming Keyboard', 519.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(30, 11, 1, 122.00, 12.20, '[]', 52, 'Macbook Pro 13 inch', 892.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(31, 11, 1, 113.00, 11.30, '[]', 80, 'Gaming Keyboard', 519.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(32, 12, 1, 459.00, 45.90, '[]', 27, 'Headphone Ultra Bass', 505.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(33, 12, 2, 125.00, 12.50, '[]', 38, 'Leather Watch Band', 1514.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(34, 12, 1, 111.00, 11.10, '[]', 48, 'Apple Watch Serial 7', 658.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(35, 13, 1, 46.00, 4.60, '[]', 34, 'Camera Hikvision HK-35VS8', 643.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(36, 13, 2, 119.00, 11.90, '[]', 66, 'Black Smart Watches', 1074.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(37, 13, 1, 125.00, 12.50, '[]', 73, 'Black Glasses', 684.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(38, 14, 3, 110.00, 11.00, '[]', 55, 'MacSafe 80W', 2457.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(39, 14, 1, 110.00, 11.00, '[]', 57, 'MacSafe 80W', 819.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(40, 14, 1, 119.00, 11.90, '[]', 66, 'Black Smart Watches', 537.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(41, 14, 3, 114.00, 11.40, '[]', 71, 'Historic Alarm Clock', 2388.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(42, 15, 1, 46.00, 4.60, '[]', 33, 'Camera Hikvision HK-35VS8', 643.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(43, 15, 1, 122.00, 12.20, '[]', 52, 'Macbook Pro 13 inch', 892.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(44, 15, 3, 110.00, 11.00, '[]', 53, 'Apple Keyboard', 1704.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(45, 15, 2, 110.00, 11.00, '[]', 54, 'MacSafe 80W', 1638.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(46, 16, 3, 70.00, 7.00, '[]', 32, 'Chikie - Bluetooth Speaker', 1959.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(47, 16, 1, 122.00, 12.20, '[]', 52, 'Macbook Pro 13 inch', 892.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(48, 16, 1, 124.00, 12.40, '[]', 68, 'Leather Watch Band Serial 3', 743.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(49, 17, 2, 417.00, 41.70, '[]', 29, 'Boxed - Bluetooth Headphone', 1002.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(50, 17, 3, 111.00, 11.10, '[]', 48, 'Apple Watch Serial 7', 1974.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(51, 17, 2, 122.00, 12.20, '[]', 50, 'Macbook Pro 13 inch', 1784.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(52, 17, 1, 113.00, 11.30, '[]', 77, 'Gaming Keyboard', 519.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(53, 18, 2, 70.00, 7.00, '[]', 31, 'Chikie - Bluetooth Speaker', 1306.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(54, 18, 2, 110.00, 11.00, '[]', 53, 'Apple Keyboard', 1136.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(55, 18, 2, 120.00, 12.00, '[]', 64, 'Cool Smart Watches', 1598.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(56, 18, 3, 113.00, 11.30, '[]', 78, 'Gaming Keyboard', 1557.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(57, 19, 2, 122.00, 12.20, '[]', 51, 'Macbook Pro 13 inch', 1784.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(58, 19, 2, 110.00, 11.00, '[]', 53, 'Apple Keyboard', 1136.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(59, 19, 3, 118.00, 11.80, '[]', 58, 'Hand playstation', 1605.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(60, 19, 1, 113.00, 11.30, '[]', 78, 'Gaming Keyboard', 519.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(61, 20, 2, 417.00, 41.70, '[]', 29, 'Boxed - Bluetooth Headphone', 1002.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(62, 20, 2, 46.00, 4.60, '[]', 34, 'Camera Hikvision HK-35VS8', 1286.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(63, 20, 3, 122.00, 12.20, '[]', 50, 'Macbook Pro 13 inch', 2676.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(64, 20, 3, 110.00, 11.00, '[]', 56, 'MacSafe 80W', 2457.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `category_id` int UNSIGNED DEFAULT NULL,
  `brand_id` int UNSIGNED DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `is_searchable` tinyint NOT NULL DEFAULT '0',
  `is_show_on_list` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wide_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int UNSIGNED DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `options`, `category_id`, `brand_id`, `is_variation`, `is_searchable`, `is_show_on_list`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `barcode`, `length_unit`, `wide_unit`, `height_unit`, `weight_unit`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`) VALUES
(1, 'Smart Home Speaker', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]', 'HS-137-A0', 0, 10, 0, 1, 1, NULL, NULL, 3, 0, 0, 0, 0, 373, NULL, NULL, NULL, 11.00, 17.00, 10.00, 626.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:02', '2023-10-02 00:43:03', 1, 47326, 'in_stock'),
(2, 'Headphone Ultra Bass', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]', 'HS-172-A0', 0, 16, 0, 1, 1, NULL, NULL, 6, 0, 0, 0, 0, 459, NULL, NULL, NULL, 13.00, 18.00, 19.00, 505.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:02', '2023-10-02 00:43:03', 1, 184535, 'in_stock'),
(3, 'Boxed - Bluetooth Headphone', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]', 'HS-115-A0', 0, 17, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 0, 417, NULL, NULL, NULL, 18.00, 10.00, 17.00, 501.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:02', '2023-10-02 00:43:03', 1, 171642, 'in_stock'),
(4, 'Chikie - Bluetooth Speaker', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]', 'HS-173-A0', 0, 18, 0, 1, 1, NULL, NULL, 7, 0, 0, 0, 0, 70, 58.8, NULL, NULL, 11.00, 13.00, 17.00, 653.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:02', '2023-10-02 00:43:03', 1, 72101, 'in_stock'),
(5, 'Camera Hikvision HK-35VS8', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]', 'HS-147-A0', 0, 13, 0, 1, 1, NULL, NULL, 5, 0, 0, 0, 0, 46, NULL, NULL, NULL, 15.00, 14.00, 12.00, 643.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:02', '2023-10-02 00:43:03', 1, 85728, 'in_stock'),
(6, 'Camera Samsung SS-24', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]', 'HS-175-A0', 0, 15, 0, 1, 1, NULL, NULL, 7, 0, 0, 0, 0, 56, NULL, NULL, NULL, 10.00, 11.00, 11.00, 715.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:02', '2023-10-02 00:43:03', 1, 81157, 'in_stock'),
(7, 'Leather Watch Band', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]', 'HS-160-A0', 0, 15, 0, 1, 1, NULL, NULL, 6, 0, 0, 0, 0, 125, NULL, NULL, NULL, 12.00, 16.00, 17.00, 757.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:02', '2023-10-02 00:43:03', 1, 116928, 'in_stock'),
(8, 'Apple iPhone 13 Plus', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]', 'HS-107-A0', 0, 20, 0, 1, 1, NULL, NULL, 5, 0, 0, 0, 0, 113, 99.44, NULL, NULL, 19.00, 12.00, 19.00, 782.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:02', '2023-10-02 00:43:03', 1, 26582, 'in_stock'),
(9, 'Macbook Pro 2015', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]', 'HS-143-A0', 0, 10, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 0, 128, NULL, NULL, NULL, 20.00, 17.00, 16.00, 747.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:02', '2023-10-02 00:43:03', 1, 69383, 'in_stock'),
(10, 'Macbook Air 12 inch', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]', 'HS-152-A0', 0, 18, 0, 1, 1, NULL, NULL, 2, 0, 0, 0, 0, 337, NULL, NULL, NULL, 20.00, 15.00, 20.00, 607.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:02', '2023-10-02 00:43:03', 1, 196036, 'in_stock'),
(11, 'Apple Watch Serial 7', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]', 'HS-155-A0', 0, 14, 0, 1, 1, NULL, NULL, 3, 0, 0, 0, 0, 111, NULL, NULL, NULL, 17.00, 18.00, 18.00, 658.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:02', '2023-10-02 00:43:03', 1, 10833, 'in_stock'),
(12, 'Macbook Pro 13 inch', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]', 'HS-152-A0', 0, 16, 0, 1, 1, NULL, NULL, 2, 0, 0, 0, 0, 122, 101.26, NULL, NULL, 10.00, 10.00, 19.00, 892.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 114676, 'in_stock'),
(13, 'Apple Keyboard', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]', 'HS-153-A0', 0, 11, 0, 1, 1, NULL, NULL, 7, 0, 0, 0, 0, 110, NULL, NULL, NULL, 18.00, 19.00, 16.00, 568.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 198261, 'in_stock'),
(14, 'MacSafe 80W', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]', 'HS-113-A0', 0, 11, 0, 1, 1, NULL, NULL, 5, 0, 0, 0, 0, 110, NULL, NULL, NULL, 10.00, 17.00, 10.00, 819.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 168146, 'in_stock'),
(15, 'Hand playstation', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]', 'HS-165-A0', 0, 14, 0, 1, 1, NULL, NULL, 4, 0, 0, 0, 0, 118, NULL, NULL, NULL, 12.00, 16.00, 10.00, 535.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 2749, 'in_stock'),
(16, 'Apple Airpods Serial 3', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/16.jpg\"]', 'HS-122-A0', 0, 11, 0, 1, 1, NULL, NULL, 4, 0, 0, 0, 0, 118, 86.14, NULL, NULL, 15.00, 17.00, 18.00, 777.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 6857, 'in_stock'),
(17, 'Cool Smart Watches', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/17.jpg\"]', 'HS-124-A0', 0, 10, 0, 1, 1, NULL, NULL, 6, 0, 0, 0, 0, 120, NULL, NULL, NULL, 14.00, 12.00, 16.00, 799.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 105097, 'in_stock');
INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `options`, `category_id`, `brand_id`, `is_variation`, `is_searchable`, `is_show_on_list`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `barcode`, `length_unit`, `wide_unit`, `height_unit`, `weight_unit`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`) VALUES
(18, 'Black Smart Watches', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]', 'HS-126-A0', 0, 11, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 0, 119, NULL, NULL, NULL, 19.00, 19.00, 13.00, 537.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 19648, 'in_stock'),
(19, 'Leather Watch Band Serial 3', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]', 'HS-155-A0', 0, 10, 0, 1, 1, NULL, NULL, 3, 0, 0, 0, 0, 124, NULL, NULL, NULL, 17.00, 14.00, 15.00, 743.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 124637, 'in_stock'),
(20, 'Macbook Pro 2015 13 inch', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]', 'HS-140-A0', 0, 16, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 0, 129, 100.62, NULL, NULL, 18.00, 14.00, 13.00, 733.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 72250, 'in_stock'),
(21, 'Historic Alarm Clock', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]', 'HS-144-A0', 0, 19, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 0, 114, NULL, NULL, NULL, 19.00, 20.00, 18.00, 796.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 33720, 'in_stock'),
(22, 'Black Glasses', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]', 'HS-160-A0', 0, 13, 0, 1, 1, NULL, NULL, 3, 0, 0, 0, 0, 125, NULL, NULL, NULL, 12.00, 15.00, 11.00, 684.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 128218, 'in_stock'),
(23, 'Phillips Mouse', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]', 'HS-113-A0', 0, 11, 0, 1, 1, NULL, NULL, 6, 0, 0, 0, 0, 113, NULL, NULL, NULL, 14.00, 17.00, 20.00, 769.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', 1, 112900, 'in_stock'),
(24, 'Gaming Keyboard', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li class=\"mb-10\"><i class=\"far fa-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li class=\"mb-10\"><i class=\"far fa-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"far fa-address-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]', 'HS-198-A0', 0, 18, 0, 1, 1, NULL, NULL, 6, 0, 0, 0, 0, 113, 99.44, NULL, NULL, 14.00, 15.00, 13.00, 519.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:04', 1, 146187, 'in_stock'),
(25, 'Smart Home Speaker', NULL, NULL, 'published', '[\"products\\/1.jpg\"]', 'HS-137-A0', 0, 10, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 373, NULL, NULL, NULL, 11.00, 17.00, 10.00, 626.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(26, 'Smart Home Speaker', NULL, NULL, 'published', '[\"products\\/1-1.jpg\"]', 'HS-137-A0-A1', 0, 10, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 373, NULL, NULL, NULL, 11.00, 17.00, 10.00, 626.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(27, 'Headphone Ultra Bass', NULL, NULL, 'published', '[\"products\\/2.jpg\"]', 'HS-172-A0', 0, 16, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 459, NULL, NULL, NULL, 13.00, 18.00, 19.00, 505.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(28, 'Boxed - Bluetooth Headphone', NULL, NULL, 'published', '[\"products\\/3.jpg\"]', 'HS-115-A0', 0, 17, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 417, NULL, NULL, NULL, 18.00, 10.00, 17.00, 501.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(29, 'Boxed - Bluetooth Headphone', NULL, NULL, 'published', '[\"products\\/3-1.jpg\"]', 'HS-115-A0-A1', 0, 17, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 417, NULL, NULL, NULL, 18.00, 10.00, 17.00, 501.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(30, 'Boxed - Bluetooth Headphone', NULL, NULL, 'published', '[\"products\\/3-2.jpg\"]', 'HS-115-A0-A2', 0, 17, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 417, NULL, NULL, NULL, 18.00, 10.00, 17.00, 501.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(31, 'Chikie - Bluetooth Speaker', NULL, NULL, 'published', '[\"products\\/4.jpg\"]', 'HS-173-A0', 0, 18, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 70, 58.8, NULL, NULL, 11.00, 13.00, 17.00, 653.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(32, 'Chikie - Bluetooth Speaker', NULL, NULL, 'published', '[\"products\\/4-1.jpg\"]', 'HS-173-A0-A1', 0, 18, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 70, 60.2, NULL, NULL, 11.00, 13.00, 17.00, 653.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(33, 'Camera Hikvision HK-35VS8', NULL, NULL, 'published', '[\"products\\/5.jpg\"]', 'HS-147-A0', 0, 13, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 46, NULL, NULL, NULL, 15.00, 14.00, 12.00, 643.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(34, 'Camera Hikvision HK-35VS8', NULL, NULL, 'published', '[\"products\\/5-1.jpg\"]', 'HS-147-A0-A1', 0, 13, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 46, NULL, NULL, NULL, 15.00, 14.00, 12.00, 643.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(35, 'Camera Samsung SS-24', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'HS-175-A0', 0, 15, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 56, NULL, NULL, NULL, 10.00, 11.00, 11.00, 715.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(36, 'Camera Samsung SS-24', NULL, NULL, 'published', '[\"products\\/6-1.jpg\"]', 'HS-175-A0-A1', 0, 15, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 56, NULL, NULL, NULL, 10.00, 11.00, 11.00, 715.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(37, 'Camera Samsung SS-24', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'HS-175-A0-A2', 0, 15, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 56, NULL, NULL, NULL, 10.00, 11.00, 11.00, 715.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(38, 'Leather Watch Band', NULL, NULL, 'published', '[\"products\\/7.jpg\"]', 'HS-160-A0', 0, 15, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 125, NULL, NULL, NULL, 12.00, 16.00, 17.00, 757.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(39, 'Apple iPhone 13 Plus', NULL, NULL, 'published', '[\"products\\/8.jpg\"]', 'HS-107-A0', 0, 20, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 113, 99.44, NULL, NULL, 19.00, 12.00, 19.00, 782.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(40, 'Macbook Pro 2015', NULL, NULL, 'published', '[\"products\\/9.jpg\"]', 'HS-143-A0', 0, 10, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 128, NULL, NULL, NULL, 20.00, 17.00, 16.00, 747.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(41, 'Macbook Pro 2015', NULL, NULL, 'published', '[\"products\\/9-1.jpg\"]', 'HS-143-A0-A1', 0, 10, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 128, NULL, NULL, NULL, 20.00, 17.00, 16.00, 747.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(42, 'Macbook Pro 2015', NULL, NULL, 'published', '[\"products\\/9.jpg\"]', 'HS-143-A0-A2', 0, 10, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 128, NULL, NULL, NULL, 20.00, 17.00, 16.00, 747.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(43, 'Macbook Air 12 inch', NULL, NULL, 'published', '[\"products\\/10.jpg\"]', 'HS-152-A0', 0, 18, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 337, NULL, NULL, NULL, 20.00, 15.00, 20.00, 607.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(44, 'Macbook Air 12 inch', NULL, NULL, 'published', '[\"products\\/10-1.jpg\"]', 'HS-152-A0-A1', 0, 18, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 337, NULL, NULL, NULL, 20.00, 15.00, 20.00, 607.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(45, 'Macbook Air 12 inch', NULL, NULL, 'published', '[\"products\\/10.jpg\"]', 'HS-152-A0-A2', 0, 18, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 337, NULL, NULL, NULL, 20.00, 15.00, 20.00, 607.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(46, 'Apple Watch Serial 7', NULL, NULL, 'published', '[\"products\\/11.jpg\"]', 'HS-155-A0', 0, 14, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 111, NULL, NULL, NULL, 17.00, 18.00, 18.00, 658.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(47, 'Apple Watch Serial 7', NULL, NULL, 'published', '[\"products\\/11-1.jpg\"]', 'HS-155-A0-A1', 0, 14, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 111, NULL, NULL, NULL, 17.00, 18.00, 18.00, 658.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(48, 'Apple Watch Serial 7', NULL, NULL, 'published', '[\"products\\/11.jpg\"]', 'HS-155-A0-A2', 0, 14, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 111, NULL, NULL, NULL, 17.00, 18.00, 18.00, 658.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(49, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/12.jpg\"]', 'HS-152-A0', 0, 16, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 122, 101.26, NULL, NULL, 10.00, 10.00, 19.00, 892.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(50, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/12-1.jpg\"]', 'HS-152-A0-A1', 0, 16, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 122, 102.48, NULL, NULL, 10.00, 10.00, 19.00, 892.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(51, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/12.jpg\"]', 'HS-152-A0-A2', 0, 16, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 122, 96.38, NULL, NULL, 10.00, 10.00, 19.00, 892.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(52, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/12.jpg\"]', 'HS-152-A0-A3', 0, 16, 0, 1, 0, NULL, NULL, 2, 1, 0, 0, 0, 122, 90.28, NULL, NULL, 10.00, 10.00, 19.00, 892.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(53, 'Apple Keyboard', NULL, NULL, 'published', '[\"products\\/13.jpg\"]', 'HS-153-A0', 0, 11, 0, 1, 0, NULL, NULL, 7, 1, 0, 0, 0, 110, NULL, NULL, NULL, 18.00, 19.00, 16.00, 568.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(54, 'MacSafe 80W', NULL, NULL, 'published', '[\"products\\/14.jpg\"]', 'HS-113-A0', 0, 11, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 110, NULL, NULL, NULL, 10.00, 17.00, 10.00, 819.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(55, 'MacSafe 80W', NULL, NULL, 'published', '[\"products\\/14-1.jpg\"]', 'HS-113-A0-A1', 0, 11, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 110, NULL, NULL, NULL, 10.00, 17.00, 10.00, 819.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(56, 'MacSafe 80W', NULL, NULL, 'published', '[\"products\\/14.jpg\"]', 'HS-113-A0-A2', 0, 11, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 110, NULL, NULL, NULL, 10.00, 17.00, 10.00, 819.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(57, 'MacSafe 80W', NULL, NULL, 'published', '[\"products\\/14.jpg\"]', 'HS-113-A0-A3', 0, 11, 0, 1, 0, NULL, NULL, 5, 1, 0, 0, 0, 110, NULL, NULL, NULL, 10.00, 17.00, 10.00, 819.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(58, 'Hand playstation', NULL, NULL, 'published', '[\"products\\/15.jpg\"]', 'HS-165-A0', 0, 14, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 118, NULL, NULL, NULL, 12.00, 16.00, 10.00, 535.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(59, 'Apple Airpods Serial 3', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'HS-122-A0', 0, 11, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 118, 86.14, NULL, NULL, 15.00, 17.00, 18.00, 777.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(60, 'Apple Airpods Serial 3', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'HS-122-A0-A1', 0, 11, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 118, 93.22, NULL, NULL, 15.00, 17.00, 18.00, 777.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(61, 'Apple Airpods Serial 3', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'HS-122-A0-A2', 0, 11, 0, 1, 0, NULL, NULL, 4, 1, 0, 0, 0, 118, 101.48, NULL, NULL, 15.00, 17.00, 18.00, 777.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(62, 'Cool Smart Watches', NULL, NULL, 'published', '[\"products\\/17.jpg\"]', 'HS-124-A0', 0, 10, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 120, NULL, NULL, NULL, 14.00, 12.00, 16.00, 799.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(63, 'Cool Smart Watches', NULL, NULL, 'published', '[\"products\\/17.jpg\"]', 'HS-124-A0-A1', 0, 10, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 120, NULL, NULL, NULL, 14.00, 12.00, 16.00, 799.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(64, 'Cool Smart Watches', NULL, NULL, 'published', '[\"products\\/17.jpg\"]', 'HS-124-A0-A2', 0, 10, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 120, NULL, NULL, NULL, 14.00, 12.00, 16.00, 799.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(65, 'Black Smart Watches', NULL, NULL, 'published', '[\"products\\/18.jpg\"]', 'HS-126-A0', 0, 11, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 119, NULL, NULL, NULL, 19.00, 19.00, 13.00, 537.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(66, 'Black Smart Watches', NULL, NULL, 'published', '[\"products\\/18-1.jpg\"]', 'HS-126-A0-A1', 0, 11, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 119, NULL, NULL, NULL, 19.00, 19.00, 13.00, 537.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(67, 'Leather Watch Band Serial 3', NULL, NULL, 'published', '[\"products\\/19.jpg\"]', 'HS-155-A0', 0, 10, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 124, NULL, NULL, NULL, 17.00, 14.00, 15.00, 743.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(68, 'Leather Watch Band Serial 3', NULL, NULL, 'published', '[\"products\\/19-1.jpg\"]', 'HS-155-A0-A1', 0, 10, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 124, NULL, NULL, NULL, 17.00, 14.00, 15.00, 743.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(69, 'Macbook Pro 2015 13 inch', NULL, NULL, 'published', '[\"products\\/20.jpg\"]', 'HS-140-A0', 0, 16, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 129, 100.62, NULL, NULL, 18.00, 14.00, 13.00, 733.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(70, 'Macbook Pro 2015 13 inch', NULL, NULL, 'published', '[\"products\\/20-1.jpg\"]', 'HS-140-A0-A1', 0, 16, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 129, 90.3, NULL, NULL, 18.00, 14.00, 13.00, 733.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(71, 'Historic Alarm Clock', NULL, NULL, 'published', '[\"products\\/21.jpg\"]', 'HS-144-A0', 0, 19, 0, 1, 0, NULL, NULL, 1, 1, 0, 0, 0, 114, NULL, NULL, NULL, 19.00, 20.00, 18.00, 796.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(72, 'Black Glasses', NULL, NULL, 'published', '[\"products\\/22.jpg\"]', 'HS-160-A0', 0, 13, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 125, NULL, NULL, NULL, 12.00, 15.00, 11.00, 684.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(73, 'Black Glasses', NULL, NULL, 'published', '[\"products\\/22-1.jpg\"]', 'HS-160-A0-A1', 0, 13, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 125, NULL, NULL, NULL, 12.00, 15.00, 11.00, 684.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(74, 'Black Glasses', NULL, NULL, 'published', '[\"products\\/22.jpg\"]', 'HS-160-A0-A2', 0, 13, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 125, NULL, NULL, NULL, 12.00, 15.00, 11.00, 684.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(75, 'Black Glasses', NULL, NULL, 'published', '[\"products\\/22.jpg\"]', 'HS-160-A0-A3', 0, 13, 0, 1, 0, NULL, NULL, 3, 1, 0, 0, 0, 125, NULL, NULL, NULL, 12.00, 15.00, 11.00, 684.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(76, 'Phillips Mouse', NULL, NULL, 'published', '[\"products\\/23.jpg\"]', 'HS-113-A0', 0, 11, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 113, NULL, NULL, NULL, 14.00, 17.00, 20.00, 769.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:03', '2023-10-02 00:43:03', NULL, 0, 'in_stock'),
(77, 'Gaming Keyboard', NULL, NULL, 'published', '[\"products\\/24.jpg\"]', 'HS-198-A0', 0, 18, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 113, 99.44, NULL, NULL, 14.00, 15.00, 13.00, 519.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:04', '2023-10-02 00:43:04', NULL, 0, 'in_stock'),
(78, 'Gaming Keyboard', NULL, NULL, 'published', '[\"products\\/24-1.jpg\"]', 'HS-198-A0-A1', 0, 18, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 113, 93.79, NULL, NULL, 14.00, 15.00, 13.00, 519.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:04', '2023-10-02 00:43:04', NULL, 0, 'in_stock'),
(79, 'Gaming Keyboard', NULL, NULL, 'published', '[\"products\\/24.jpg\"]', 'HS-198-A0-A2', 0, 18, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 113, 89.27, NULL, NULL, 14.00, 15.00, 13.00, 519.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:04', '2023-10-02 00:43:04', NULL, 0, 'in_stock'),
(80, 'Gaming Keyboard', NULL, NULL, 'published', '[\"products\\/24.jpg\"]', 'HS-198-A0-A3', 0, 18, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 113, 90.4, NULL, NULL, 14.00, 15.00, 13.00, 519.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:04', '2023-10-02 00:43:04', NULL, 0, 'in_stock'),
(81, 'Gaming Keyboard', NULL, NULL, 'published', '[\"products\\/24.jpg\"]', 'HS-198-A0-A4', 0, 18, 0, 1, 0, NULL, NULL, 6, 1, 0, 0, 0, 113, 101.7, NULL, NULL, 14.00, 15.00, 13.00, 519.00, NULL, NULL, NULL, NULL, NULL, '2023-10-02 00:43:04', '2023-10-02 00:43:04', NULL, 0, 'in_stock');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products_translations`
--

INSERT INTO `ec_products_translations` (`lang_code`, `ec_products_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Loa thông minh', NULL, NULL),
('vi', 2, 'Tai nghe Ultra Bass', NULL, NULL),
('vi', 3, 'Tai nghe Bluetooth', NULL, NULL),
('vi', 4, 'Chikie - Loa Bluetooth', NULL, NULL),
('vi', 5, 'Camera Hikvision HK-35VS8', NULL, NULL),
('vi', 6, 'Camera Samsung SS-24', NULL, NULL),
('vi', 7, 'Dây đeo đồng hồ da', NULL, NULL),
('vi', 8, 'Điện thoại Apple iPhone 13 Plus', NULL, NULL),
('vi', 9, 'Máy tính Macbook Pro 2015', NULL, NULL),
('vi', 10, 'Máy tính Macbook Air 12 inch', NULL, NULL),
('vi', 11, 'Đồng hồ Apple Serial 7', NULL, NULL),
('vi', 12, 'Máy tính Macbook Pro 13 inch', NULL, NULL),
('vi', 13, 'Bàn phím Apple', NULL, NULL),
('vi', 14, 'Cục sạc MacSafe 80W', NULL, NULL),
('vi', 15, 'Tay cầm chơi game', NULL, NULL),
('vi', 16, 'Apple Airpods Serial 3', NULL, NULL),
('vi', 17, 'Cool Smart Watches', NULL, NULL),
('vi', 18, 'Black Smart Watches', NULL, NULL),
('vi', 19, 'Leather Watch Band Serial 3', NULL, NULL),
('vi', 20, 'Macbook Pro 2015 13 inch', NULL, NULL),
('vi', 21, 'Đồng hồ báo thức cổ điển', NULL, NULL),
('vi', 22, 'Kính đen cool ngầu', NULL, NULL),
('vi', 23, 'Chuột máy tính Phillips', NULL, NULL),
('vi', 24, 'Bàn phím chơi game', NULL, NULL),
('vi', 25, 'Loa thông minh', NULL, NULL),
('vi', 26, 'Loa thông minh', NULL, NULL),
('vi', 27, 'Tai nghe Ultra Bass', NULL, NULL),
('vi', 28, 'Tai nghe Bluetooth', NULL, NULL),
('vi', 29, 'Tai nghe Bluetooth', NULL, NULL),
('vi', 30, 'Tai nghe Bluetooth', NULL, NULL),
('vi', 31, 'Chikie - Loa Bluetooth', NULL, NULL),
('vi', 32, 'Chikie - Loa Bluetooth', NULL, NULL),
('vi', 33, 'Camera Hikvision HK-35VS8', NULL, NULL),
('vi', 34, 'Camera Hikvision HK-35VS8', NULL, NULL),
('vi', 35, 'Camera Samsung SS-24', NULL, NULL),
('vi', 36, 'Camera Samsung SS-24', NULL, NULL),
('vi', 37, 'Camera Samsung SS-24', NULL, NULL),
('vi', 38, 'Dây đeo đồng hồ da', NULL, NULL),
('vi', 39, 'Điện thoại Apple iPhone 13 Plus', NULL, NULL),
('vi', 40, 'Máy tính Macbook Pro 2015', NULL, NULL),
('vi', 41, 'Máy tính Macbook Pro 2015', NULL, NULL),
('vi', 42, 'Máy tính Macbook Pro 2015', NULL, NULL),
('vi', 43, 'Máy tính Macbook Air 12 inch', NULL, NULL),
('vi', 44, 'Máy tính Macbook Air 12 inch', NULL, NULL),
('vi', 45, 'Máy tính Macbook Air 12 inch', NULL, NULL),
('vi', 46, 'Đồng hồ Apple Serial 7', NULL, NULL),
('vi', 47, 'Đồng hồ Apple Serial 7', NULL, NULL),
('vi', 48, 'Đồng hồ Apple Serial 7', NULL, NULL),
('vi', 49, 'Máy tính Macbook Pro 13 inch', NULL, NULL),
('vi', 50, 'Máy tính Macbook Pro 13 inch', NULL, NULL),
('vi', 51, 'Máy tính Macbook Pro 13 inch', NULL, NULL),
('vi', 52, 'Máy tính Macbook Pro 13 inch', NULL, NULL),
('vi', 53, 'Bàn phím Apple', NULL, NULL),
('vi', 54, 'Cục sạc MacSafe 80W', NULL, NULL),
('vi', 55, 'Cục sạc MacSafe 80W', NULL, NULL),
('vi', 56, 'Cục sạc MacSafe 80W', NULL, NULL),
('vi', 57, 'Cục sạc MacSafe 80W', NULL, NULL),
('vi', 58, 'Tay cầm chơi game', NULL, NULL),
('vi', 59, 'Apple Airpods Serial 3', NULL, NULL),
('vi', 60, 'Apple Airpods Serial 3', NULL, NULL),
('vi', 61, 'Apple Airpods Serial 3', NULL, NULL),
('vi', 62, 'Cool Smart Watches', NULL, NULL),
('vi', 63, 'Cool Smart Watches', NULL, NULL),
('vi', 64, 'Cool Smart Watches', NULL, NULL),
('vi', 65, 'Black Smart Watches', NULL, NULL),
('vi', 66, 'Black Smart Watches', NULL, NULL),
('vi', 67, 'Leather Watch Band Serial 3', NULL, NULL),
('vi', 68, 'Leather Watch Band Serial 3', NULL, NULL),
('vi', 69, 'Macbook Pro 2015 13 inch', NULL, NULL),
('vi', 70, 'Macbook Pro 2015 13 inch', NULL, NULL),
('vi', 71, 'Đồng hồ báo thức cổ điển', NULL, NULL),
('vi', 72, 'Kính đen cool ngầu', NULL, NULL),
('vi', 73, 'Kính đen cool ngầu', NULL, NULL),
('vi', 74, 'Kính đen cool ngầu', NULL, NULL),
('vi', 75, 'Kính đen cool ngầu', NULL, NULL),
('vi', 76, 'Chuột máy tính Phillips', NULL, NULL),
('vi', 77, 'Bàn phím chơi game', NULL, NULL),
('vi', 78, 'Bàn phím chơi game', NULL, NULL),
('vi', 79, 'Bàn phím chơi game', NULL, NULL),
('vi', 80, 'Bàn phím chơi game', NULL, NULL),
('vi', 81, 'Bàn phím chơi game', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `attribute_set_id` int UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes`
--

INSERT INTO `ec_product_attributes` (`id`, `attribute_set_id`, `title`, `slug`, `color`, `image`, `is_default`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Green', 'green', '#5FB7D4', NULL, 1, 1, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(2, 1, 'Blue', 'blue', '#333333', NULL, 0, 2, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(3, 1, 'Red', 'red', '#DA323F', NULL, 0, 3, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(4, 1, 'Black', 'back', '#2F366C', NULL, 0, 4, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(5, 1, 'Brown', 'brown', '#87554B', NULL, 0, 5, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(6, 2, 'S', 's', NULL, NULL, 1, 1, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(7, 2, 'M', 'm', NULL, NULL, 1, 2, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(8, 2, 'L', 'l', NULL, NULL, 1, 3, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(9, 2, 'XL', 'xl', NULL, NULL, 1, 4, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(10, 2, 'XXL', 'xxl', NULL, NULL, 1, 5, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes_translations`
--

INSERT INTO `ec_product_attributes_translations` (`lang_code`, `ec_product_attributes_id`, `title`) VALUES
('vi', 1, 'Xanh lá cây'),
('vi', 2, 'Xanh da trời'),
('vi', 3, 'Đỏ'),
('vi', 4, 'Đen'),
('vi', 5, 'Nâu'),
('vi', 6, 'S'),
('vi', 7, 'M'),
('vi', 8, 'L'),
('vi', 9, 'XL'),
('vi', 10, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `is_comparable` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Color', 'color', 'visual', 1, 1, 1, 'published', 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(2, 'Size', 'size', 'text', 1, 1, 1, 'published', 1, '2023-10-02 00:42:49', '2023-10-02 00:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

INSERT INTO `ec_product_attribute_sets_translations` (`lang_code`, `ec_product_attribute_sets_id`, `title`) VALUES
('vi', 1, 'Màu sắc'),
('vi', 2, 'Kích thước');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Hot Promotions', 0, NULL, 'published', 0, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(2, 'Electronics', 0, NULL, 'published', 1, 'product-categories/1.jpg', 1, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(3, 'Home Audio & Theaters', 2, NULL, 'published', 1, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(4, 'TV & Videos', 2, NULL, 'published', 2, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(5, 'Camera, Photos & Videos', 2, NULL, 'published', 3, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(6, 'Cellphones & Accessories', 2, NULL, 'published', 4, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(7, 'Headphones', 2, NULL, 'published', 5, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(8, 'Videos games', 2, NULL, 'published', 6, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(9, 'Wireless Speakers', 2, NULL, 'published', 7, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(10, 'Office Electronic', 2, NULL, 'published', 8, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(11, 'Clothing', 0, NULL, 'published', 2, 'product-categories/2.jpg', 1, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(12, 'Computers', 0, NULL, 'published', 3, 'product-categories/3.jpg', 1, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(13, 'Computer & Tablets', 12, NULL, 'published', 3, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(14, 'Laptop', 12, NULL, 'published', 4, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(15, 'Monitors', 12, NULL, 'published', 5, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(16, 'Computer Components', 12, NULL, 'published', 6, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(17, 'Home & Kitchen', 0, NULL, 'published', 4, 'product-categories/4.jpg', 1, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(18, 'Health & Beauty', 0, NULL, 'published', 5, 'product-categories/5.jpg', 1, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(19, 'Jewelry & Watch', 0, NULL, 'published', 6, 'product-categories/6.jpg', 1, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(20, 'Technology Toys', 0, NULL, 'published', 7, 'product-categories/7.jpg', 1, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(21, 'Drive & Storages', 20, NULL, 'published', 7, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(22, 'Gaming Laptop', 20, NULL, 'published', 8, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(23, 'Security & Protection', 20, NULL, 'published', 9, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(24, 'Accessories', 20, NULL, 'published', 10, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(25, 'Phones', 0, NULL, 'published', 8, 'product-categories/8.jpg', 1, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(26, 'Babies & Moms', 0, NULL, 'published', 9, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(27, 'Sport & Outdoor', 0, NULL, 'published', 10, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(28, 'Books & Office', 0, NULL, 'published', 11, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(29, 'Cars & Motorcycles', 0, NULL, 'published', 12, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(30, 'Home Improvements', 0, NULL, 'published', 13, NULL, 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories_translations`
--

INSERT INTO `ec_product_categories_translations` (`lang_code`, `ec_product_categories_id`, `name`, `description`) VALUES
('vi', 1, 'Khuyến mãi nổi bật', NULL),
('vi', 2, 'Điện tử', NULL),
('vi', 3, 'Âm thanh và hình ảnh', NULL),
('vi', 4, 'TV & Videos', NULL),
('vi', 5, 'Máy ảnh, Ảnh & Videos', NULL),
('vi', 6, 'Điện thoại & Phụ kiện', NULL),
('vi', 7, 'Tai nghe', NULL),
('vi', 8, 'Trò chơi', NULL),
('vi', 9, 'Tai nghe không dây', NULL),
('vi', 10, 'Điện tử văn phòng', NULL),
('vi', 11, 'Quần áo', NULL),
('vi', 12, 'Máy tính', NULL),
('vi', 13, 'Máy tính và máy tính bảng', NULL),
('vi', 14, 'Máy vi tính', NULL),
('vi', 15, 'Màn hình', NULL),
('vi', 16, 'Thiết bị máy tính', NULL),
('vi', 17, 'Đồ dùng nhà bếp', NULL),
('vi', 18, 'Sức khỏe & làm đẹp', NULL),
('vi', 19, 'Đồng hồ & trang sức', NULL),
('vi', 20, 'Đồ chơi công nghệ', NULL),
('vi', 21, 'Thiết bị lưu trữ', NULL),
('vi', 22, 'Máy tính chơi game', NULL),
('vi', 23, 'Bảo mật', NULL),
('vi', 24, 'Phụ kiện', NULL),
('vi', 25, 'Điện thoại', NULL),
('vi', 26, 'Mẹ và bé', NULL),
('vi', 27, 'Thể thao & ngoài trời', NULL),
('vi', 28, 'Sách & Văn phòng', NULL),
('vi', 29, 'Ôto & Xe máy', NULL),
('vi', 30, 'Thiết bị gia đình', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_category_product`
--

INSERT INTO `ec_product_category_product` (`id`, `category_id`, `product_id`) VALUES
(1, 33, 1),
(2, 1, 1),
(3, 4, 1),
(4, 15, 1),
(5, 27, 2),
(6, 25, 2),
(7, 7, 2),
(8, 16, 2),
(9, 4, 3),
(10, 2, 3),
(11, 26, 3),
(12, 15, 3),
(13, 15, 4),
(14, 14, 4),
(15, 19, 4),
(16, 27, 5),
(17, 24, 5),
(18, 22, 5),
(19, 16, 5),
(20, 16, 6),
(21, 5, 6),
(22, 36, 6),
(23, 17, 6),
(24, 36, 7),
(25, 28, 7),
(26, 7, 7),
(27, 16, 7),
(28, 35, 8),
(29, 29, 8),
(30, 22, 8),
(31, 16, 8),
(32, 2, 9),
(33, 30, 9),
(34, 23, 9),
(35, 15, 9),
(36, 29, 10),
(37, 25, 10),
(38, 5, 10),
(39, 17, 10),
(40, 23, 11),
(41, 7, 11),
(42, 3, 11),
(43, 15, 11),
(44, 5, 12),
(45, 1, 12),
(46, 11, 12),
(47, 16, 12),
(48, 29, 13),
(49, 16, 13),
(50, 5, 13),
(51, 15, 13),
(52, 24, 14),
(53, 20, 14),
(54, 1, 14),
(55, 15, 14),
(56, 23, 15),
(57, 24, 15),
(58, 34, 15),
(59, 15, 15),
(60, 26, 16),
(61, 12, 16),
(62, 16, 16),
(63, 15, 16),
(64, 3, 17),
(65, 36, 17),
(66, 25, 17),
(67, 15, 17),
(68, 37, 18),
(69, 22, 18),
(70, 26, 18),
(71, 15, 18),
(72, 32, 19),
(73, 27, 19),
(74, 5, 19),
(75, 16, 19),
(76, 16, 20),
(77, 6, 20),
(78, 3, 20),
(79, 17, 20),
(80, 6, 21),
(81, 32, 21),
(82, 35, 21),
(83, 16, 21),
(84, 36, 22),
(85, 11, 22),
(86, 10, 22),
(87, 17, 22),
(88, 32, 23),
(89, 11, 23),
(90, 27, 23),
(91, 16, 23),
(92, 2, 24),
(93, 21, 24),
(94, 13, 24),
(95, 17, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections_translations`
--

INSERT INTO `ec_product_collections_translations` (`lang_code`, `ec_product_collections_id`, `name`, `description`) VALUES
('vi', 1, 'Hàng mới về', NULL),
('vi', 2, 'Bán chạy nhất', NULL),
('vi', 3, 'Khuyến mãi đặc biệt', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_collection_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collection_products`
--

INSERT INTO `ec_product_collection_products` (`id`, `product_collection_id`, `product_id`) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 1, 3),
(4, 3, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 1, 8),
(9, 3, 9),
(10, 1, 10),
(11, 2, 11),
(12, 3, 12),
(13, 3, 13),
(14, 2, 14),
(15, 3, 15),
(16, 2, 16),
(17, 2, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 3, 22),
(23, 3, 23),
(24, 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint UNSIGNED NOT NULL,
  `from_product_id` int UNSIGNED NOT NULL,
  `to_product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

INSERT INTO `ec_product_cross_sale_relations` (`id`, `from_product_id`, `to_product_id`) VALUES
(1, 1, 4),
(2, 1, 14),
(3, 1, 24),
(4, 2, 14),
(5, 2, 16),
(6, 2, 6),
(7, 2, 19),
(8, 3, 2),
(9, 3, 14),
(10, 3, 4),
(11, 4, 16),
(12, 4, 11),
(13, 4, 20),
(14, 4, 17),
(15, 5, 22),
(16, 5, 2),
(17, 5, 13),
(18, 6, 14),
(19, 6, 18),
(20, 6, 20),
(21, 7, 2),
(22, 7, 17),
(23, 7, 3),
(24, 7, 21),
(25, 8, 23),
(26, 8, 24),
(27, 8, 18),
(28, 8, 5),
(29, 9, 18),
(30, 9, 15),
(31, 9, 1),
(32, 10, 18),
(33, 10, 19),
(34, 10, 7),
(35, 10, 3),
(36, 11, 20),
(37, 11, 4),
(38, 11, 22),
(39, 11, 21),
(40, 12, 3),
(41, 12, 22),
(42, 12, 4),
(43, 12, 15),
(44, 13, 11),
(45, 13, 22),
(46, 13, 8),
(47, 13, 6),
(48, 14, 23),
(49, 14, 12),
(50, 14, 10),
(51, 14, 9),
(52, 15, 23),
(53, 15, 16),
(54, 15, 21),
(55, 15, 18),
(56, 16, 7),
(57, 16, 10),
(58, 16, 1),
(59, 17, 23),
(60, 17, 11),
(61, 17, 10),
(62, 17, 12),
(63, 18, 6),
(64, 18, 24),
(65, 18, 19),
(66, 18, 8),
(67, 19, 17),
(68, 19, 14),
(69, 19, 13),
(70, 19, 11),
(71, 20, 6),
(72, 20, 9),
(73, 20, 7),
(74, 21, 22),
(75, 21, 23),
(76, 21, 14),
(77, 21, 3),
(78, 22, 24),
(79, 22, 7),
(80, 22, 8),
(81, 22, 18),
(82, 23, 20),
(83, 23, 21),
(84, 23, 4),
(85, 23, 13),
(86, 24, 14),
(87, 24, 2),
(88, 24, 5),
(89, 24, 16);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#ec2434', 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(2, 'New', '#00c9a7', 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(3, 'Sale', '#fe9931', 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels_translations`
--

INSERT INTO `ec_product_labels_translations` (`lang_code`, `ec_product_labels_id`, `name`, `description`) VALUES
('vi', 1, 'Nổi bật', NULL),
('vi', 2, 'Mới', NULL),
('vi', 3, 'Giảm giá', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(2, 14),
(2, 21),
(3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `id` bigint UNSIGNED NOT NULL,
  `from_product_id` int UNSIGNED NOT NULL,
  `to_product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags`
--

INSERT INTO `ec_product_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Wallet', NULL, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(2, 'Bags', NULL, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(3, 'Shoes', NULL, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(4, 'Clothes', NULL, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(5, 'Hand bag', NULL, 'published', '2023-10-02 00:42:49', '2023-10-02 00:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 2),
(1, 3),
(1, 5),
(2, 3),
(2, 4),
(2, 5),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 4),
(5, 4),
(5, 5),
(6, 2),
(6, 5),
(7, 4),
(7, 5),
(8, 2),
(8, 4),
(8, 5),
(9, 2),
(9, 4),
(9, 5),
(10, 3),
(10, 5),
(11, 1),
(11, 5),
(11, 6),
(12, 1),
(13, 1),
(13, 2),
(13, 6),
(14, 4),
(14, 6),
(15, 1),
(15, 2),
(16, 3),
(16, 4),
(17, 3),
(17, 5),
(18, 3),
(18, 6),
(19, 2),
(19, 3),
(19, 6),
(20, 3),
(20, 4),
(20, 6),
(21, 4),
(21, 6),
(22, 1),
(22, 2),
(23, 2),
(23, 5),
(24, 1),
(24, 3),
(24, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint UNSIGNED NOT NULL,
  `from_product_id` int UNSIGNED NOT NULL,
  `to_product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `configurable_product_id` int UNSIGNED NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variations`
--

INSERT INTO `ec_product_variations` (`id`, `product_id`, `configurable_product_id`, `is_default`) VALUES
(1, 25, 1, 1),
(2, 26, 1, 0),
(3, 27, 2, 1),
(4, 28, 3, 1),
(5, 29, 3, 0),
(6, 30, 3, 0),
(7, 31, 4, 1),
(8, 32, 4, 0),
(9, 33, 5, 1),
(10, 34, 5, 0),
(11, 35, 6, 1),
(12, 36, 6, 0),
(13, 37, 6, 0),
(14, 38, 7, 1),
(15, 39, 8, 1),
(16, 40, 9, 1),
(17, 41, 9, 0),
(18, 42, 9, 0),
(19, 43, 10, 1),
(20, 44, 10, 0),
(21, 45, 10, 0),
(22, 46, 11, 1),
(23, 47, 11, 0),
(24, 48, 11, 0),
(25, 49, 12, 1),
(26, 50, 12, 0),
(27, 51, 12, 0),
(28, 52, 12, 0),
(29, 53, 13, 1),
(30, 54, 14, 1),
(31, 55, 14, 0),
(32, 56, 14, 0),
(33, 57, 14, 0),
(34, 58, 15, 1),
(35, 59, 16, 1),
(36, 60, 16, 0),
(37, 61, 16, 0),
(38, 62, 17, 1),
(39, 63, 17, 0),
(40, 64, 17, 0),
(41, 65, 18, 1),
(42, 66, 18, 0),
(43, 67, 19, 1),
(44, 68, 19, 0),
(45, 69, 20, 1),
(46, 70, 20, 0),
(47, 71, 21, 1),
(48, 72, 22, 1),
(49, 73, 22, 0),
(50, 74, 22, 0),
(51, 75, 22, 0),
(52, 76, 23, 1),
(53, 77, 24, 1),
(54, 78, 24, 0),
(55, 79, 24, 0),
(56, 80, 24, 0),
(57, 81, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL,
  `variation_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variation_items`
--

INSERT INTO `ec_product_variation_items` (`id`, `attribute_id`, `variation_id`) VALUES
(1, 4, 1),
(2, 7, 1),
(3, 5, 2),
(4, 8, 2),
(5, 1, 3),
(6, 8, 3),
(7, 4, 4),
(8, 7, 4),
(9, 3, 5),
(10, 7, 5),
(11, 1, 6),
(12, 7, 6),
(13, 5, 7),
(14, 9, 7),
(15, 3, 8),
(16, 6, 8),
(17, 4, 9),
(18, 6, 9),
(19, 3, 10),
(20, 8, 10),
(21, 3, 11),
(22, 10, 11),
(23, 1, 12),
(24, 6, 12),
(25, 2, 13),
(26, 9, 13),
(27, 2, 14),
(28, 6, 14),
(29, 1, 15),
(30, 6, 15),
(31, 1, 16),
(32, 7, 16),
(33, 4, 17),
(34, 6, 17),
(35, 2, 18),
(36, 9, 18),
(37, 3, 19),
(38, 7, 19),
(39, 1, 20),
(40, 7, 20),
(41, 3, 21),
(42, 7, 21),
(43, 4, 22),
(44, 8, 22),
(45, 1, 23),
(46, 10, 23),
(47, 2, 24),
(48, 8, 24),
(49, 1, 25),
(50, 8, 25),
(51, 3, 26),
(52, 7, 26),
(53, 4, 27),
(54, 9, 27),
(55, 4, 28),
(56, 9, 28),
(57, 5, 29),
(58, 8, 29),
(59, 1, 30),
(60, 7, 30),
(61, 1, 31),
(62, 6, 31),
(63, 4, 32),
(64, 6, 32),
(65, 1, 33),
(66, 8, 33),
(67, 4, 34),
(68, 10, 34),
(69, 3, 35),
(70, 7, 35),
(71, 3, 36),
(72, 8, 36),
(73, 2, 37),
(74, 7, 37),
(75, 3, 38),
(76, 7, 38),
(77, 1, 39),
(78, 8, 39),
(79, 3, 40),
(80, 8, 40),
(81, 1, 41),
(82, 7, 41),
(83, 1, 42),
(84, 9, 42),
(85, 3, 43),
(86, 8, 43),
(87, 4, 44),
(88, 6, 44),
(89, 4, 45),
(90, 6, 45),
(91, 4, 46),
(92, 9, 46),
(93, 5, 47),
(94, 7, 47),
(95, 3, 48),
(96, 6, 48),
(97, 1, 49),
(98, 9, 49),
(99, 3, 50),
(100, 6, 50),
(101, 1, 51),
(102, 9, 51),
(103, 3, 52),
(104, 6, 52),
(105, 5, 53),
(106, 10, 53),
(107, 4, 54),
(108, 10, 54),
(109, 1, 55),
(110, 9, 55),
(111, 1, 56),
(112, 9, 56),
(113, 5, 57),
(114, 8, 57);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute`
--

CREATE TABLE `ec_product_with_attribute` (
  `id` bigint UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute`
--

INSERT INTO `ec_product_with_attribute` (`id`, `attribute_id`, `product_id`) VALUES
(1, 1, 1),
(2, 9, 1),
(3, 2, 2),
(4, 7, 2),
(5, 1, 3),
(6, 8, 3),
(7, 4, 4),
(8, 10, 4),
(9, 4, 5),
(10, 9, 5),
(11, 5, 6),
(12, 7, 6),
(13, 4, 7),
(14, 9, 7),
(15, 4, 8),
(16, 6, 8),
(17, 2, 9),
(18, 8, 9),
(19, 4, 10),
(20, 7, 10),
(21, 2, 11),
(22, 6, 11),
(23, 1, 12),
(24, 10, 12),
(25, 1, 13),
(26, 8, 13),
(27, 4, 14),
(28, 7, 14),
(29, 5, 15),
(30, 8, 15),
(31, 3, 16),
(32, 6, 16),
(33, 4, 17),
(34, 6, 17),
(35, 3, 18),
(36, 6, 18),
(37, 4, 19),
(38, 7, 19),
(39, 4, 20),
(40, 6, 20),
(41, 3, 21),
(42, 9, 21),
(43, 2, 22),
(44, 7, 22),
(45, 2, 23),
(46, 7, 23),
(47, 3, 24),
(48, 7, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint UNSIGNED NOT NULL,
  `attribute_set_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

INSERT INTO `ec_product_with_attribute_set` (`id`, `attribute_set_id`, `product_id`, `order`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 1, 2, 0),
(4, 2, 2, 0),
(5, 1, 3, 0),
(6, 2, 3, 0),
(7, 1, 4, 0),
(8, 2, 4, 0),
(9, 1, 5, 0),
(10, 2, 5, 0),
(11, 1, 6, 0),
(12, 2, 6, 0),
(13, 1, 7, 0),
(14, 2, 7, 0),
(15, 1, 8, 0),
(16, 2, 8, 0),
(17, 1, 9, 0),
(18, 2, 9, 0),
(19, 1, 10, 0),
(20, 2, 10, 0),
(21, 1, 11, 0),
(22, 2, 11, 0),
(23, 1, 12, 0),
(24, 2, 12, 0),
(25, 1, 13, 0),
(26, 2, 13, 0),
(27, 1, 14, 0),
(28, 2, 14, 0),
(29, 1, 15, 0),
(30, 2, 15, 0),
(31, 1, 16, 0),
(32, 2, 16, 0),
(33, 1, 17, 0),
(34, 2, 17, 0),
(35, 1, 18, 0),
(36, 2, 18, 0),
(37, 1, 19, 0),
(38, 2, 19, 0),
(39, 1, 20, 0),
(40, 2, 20, 0),
(41, 1, 21, 0),
(42, 2, 21, 0),
(43, 1, 22, 0),
(44, 2, 22, 0),
(45, 1, 23, 0),
(46, 2, 23, 0),
(47, 1, 24, 0),
(48, 2, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_reviews`
--

INSERT INTO `ec_reviews` (`id`, `customer_id`, `product_id`, `star`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 6, 2.00, 'Optio nihil illo nulla rem nihil cupiditate. Excepturi maiores reprehenderit consectetur esse temporibus et neque.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(2, 3, 41, 1.00, 'Ullam dolore autem non odio impedit. Quidem quia dolores dolores nobis voluptatum fuga. Magni occaecati sit occaecati minima.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(3, 2, 55, 1.00, 'Atque vero dignissimos inventore. Quia asperiores cum voluptatum eos. Illo quia aspernatur et totam molestiae.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(4, 7, 62, 5.00, 'Et iure et et sit. Exercitationem totam enim quod dolor at rerum voluptatum. Eum nulla dolore quia.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(5, 1, 61, 3.00, 'Est ab id laborum voluptatibus. Dolores nulla perferendis fugit officiis. Nam dolore sed facere veniam sed optio enim.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(6, 5, 57, 2.00, 'Dolore quaerat omnis dolorem placeat. Quasi et iure omnis quam. Reiciendis illo blanditiis molestias.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(7, 3, 44, 5.00, 'Unde dolorum possimus necessitatibus sit. Et voluptas nulla ducimus. Ratione ad maiores fugiat et. Ea omnis dolorem est non non provident.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(8, 6, 58, 1.00, 'Odio voluptate ut exercitationem reiciendis doloribus. Ut architecto ut enim repudiandae. Omnis qui porro fuga. Ex nobis quidem voluptatibus rerum.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(9, 5, 71, 3.00, 'Perferendis consectetur pariatur sit corporis. Sint quo expedita eum consequatur. Ipsum sequi tempora ipsa.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(10, 6, 26, 5.00, 'Ipsa est non similique quisquam aut saepe. Dolore ratione quas ducimus minus qui.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(11, 7, 38, 4.00, 'Sed autem ut velit amet sit quia quo. Aliquam placeat quos voluptates. Consequatur ratione illum reiciendis quia similique harum.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(12, 2, 32, 2.00, 'Eos nobis in temporibus. Alias optio sunt labore rerum alias. Asperiores quis quis maxime odio voluptas commodi autem.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(13, 3, 46, 4.00, 'Maxime autem doloremque pariatur ut eveniet. Omnis quia quibusdam quo fuga iste est consequatur. Quasi aut mollitia quia asperiores mollitia.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(14, 8, 25, 5.00, 'Quasi neque est praesentium cum voluptatem culpa. Molestiae pariatur odit qui sed quis dolorem. Ex neque sunt ex molestiae ab est vel.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(15, 2, 71, 4.00, 'Ut sed adipisci est qui. Reiciendis vel consequatur quos unde. Dignissimos omnis quae iusto est nisi cupiditate fugit ducimus.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(16, 6, 5, 2.00, 'Impedit et magni ut expedita. A neque ipsam et et alias maiores.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(17, 8, 48, 1.00, 'Aut totam eaque nam consectetur. Eum voluptas sint explicabo mollitia. Itaque corporis maxime quisquam quo.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(18, 4, 44, 4.00, 'Est nostrum est odio repellat. Modi illo recusandae sed inventore enim earum totam.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(19, 2, 46, 1.00, 'Doloremque voluptatem sed explicabo voluptatem ea. Voluptatem quaerat officia autem ea modi consequuntur quam. Optio magnam sit libero incidunt aut.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(20, 9, 80, 4.00, 'Distinctio voluptatem illum vel ea. Non et autem distinctio minus dolore ipsa esse magni. Impedit autem beatae animi quasi.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(21, 3, 32, 4.00, 'A est quis fuga fugiat cumque non et. Et explicabo ut earum quia. Esse ut at fugiat. Esse molestiae laudantium corporis voluptatibus.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(22, 2, 13, 3.00, 'Magni vero possimus quae quidem nobis. Voluptatibus perspiciatis quos fugit possimus ut qui mollitia. Et ut eligendi sunt.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(23, 1, 30, 3.00, 'Vel at facere atque. Eligendi eveniet ipsa tenetur sint minus voluptatem similique occaecati. Repellat est rerum dolores pariatur adipisci aut totam.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(24, 9, 42, 1.00, 'Totam consequatur velit iste excepturi et eos quam. Consequatur modi exercitationem et cupiditate numquam dolor voluptatem.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(25, 9, 47, 1.00, 'Autem alias qui porro consequatur ut est. Libero veniam rerum dolor qui voluptatum. Sint atque dolore aliquam eius quia et.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(26, 2, 25, 3.00, 'Eum possimus quas quas sequi. Qui voluptatem possimus dolor possimus. Sit est nostrum vitae dolor quidem voluptas voluptas vel.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(27, 6, 80, 4.00, 'Quia fugit officia omnis dolores sunt iste corrupti quia. Eius quo libero non nihil ut.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(28, 3, 56, 2.00, 'Voluptas numquam excepturi cum laudantium et debitis nam. Eum non tempora non voluptates. Animi rerum odio minima eos ad voluptas.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(29, 1, 23, 1.00, 'Quibusdam doloribus et sed officiis. Ut cum enim ut recusandae consequatur. Sunt animi quas sed cum atque voluptatum.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(30, 8, 52, 5.00, 'Voluptatem eum officiis vel ut optio rem. Architecto accusamus et rerum. Vel illo eum error rerum aliquid maiores doloremque.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(31, 8, 3, 1.00, 'Veniam voluptatum officia ut aspernatur ea voluptatibus sed. Molestiae repellat veniam inventore praesentium voluptatibus sapiente.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(32, 3, 19, 2.00, 'Pariatur commodi qui placeat et sint. Sed nam sunt fugiat doloribus nesciunt.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(33, 2, 60, 1.00, 'Qui voluptate alias magnam. Reprehenderit cupiditate neque impedit nihil. Magni corporis animi ut officia veritatis enim.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(34, 9, 76, 2.00, 'Nemo quidem voluptates aut ipsa. Eius ratione amet modi doloribus. Dicta autem cum cupiditate asperiores corrupti. Et voluptatem esse sed laborum.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(35, 9, 33, 1.00, 'Doloremque et harum nam. Harum aut nemo nam cum. Sed et animi vel iste assumenda et tempora. Optio distinctio recusandae necessitatibus eos.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(36, 2, 34, 3.00, 'Corporis cumque eum dolorem unde at. Et quasi sit voluptatem. Qui autem delectus tenetur eos rem voluptas et.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(37, 5, 64, 2.00, 'Enim et cumque facere. Est numquam temporibus dolor. Non esse praesentium minus doloremque est at commodi.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(38, 2, 77, 4.00, 'Fugit odio dignissimos dolores atque corrupti sunt. Tempora aut quae consequatur dicta. Minus vel suscipit doloribus.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(39, 9, 13, 4.00, 'Voluptatem dolorem est minus aut cum omnis. Exercitationem nobis et animi in in. Optio et temporibus ea alias accusamus nulla ipsa.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(40, 9, 40, 3.00, 'Aut qui omnis illum. Dolorem velit qui ab aut nemo eligendi. Quia omnis non laboriosam ea in aut quibusdam dolorem. Quae vero aut vitae nihil.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(41, 4, 45, 4.00, 'A doloribus voluptatem eveniet fuga a. Non quasi et quidem iste quo qui. Provident est odio voluptatem odio et ex.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(42, 8, 56, 4.00, 'Consequatur natus perspiciatis nihil voluptatem. Delectus voluptatem suscipit animi. Dolor asperiores necessitatibus sint laudantium eos illo neque.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(43, 6, 61, 1.00, 'Ducimus repudiandae autem labore autem commodi. Magni et nobis amet omnis. Excepturi fugit eos sit et veniam quas hic.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(44, 7, 55, 4.00, 'Commodi sunt et ducimus adipisci voluptatem voluptatibus. Vitae molestiae quos dolorum voluptas. Alias in consequuntur recusandae reiciendis et.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(45, 3, 32, 5.00, 'Nulla dolores iste dolor accusantium et iste. Quae dolores fugiat autem sequi minus perspiciatis consequuntur. Error nisi nihil aut doloremque.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(46, 3, 70, 1.00, 'Quos rerum eligendi sit quis. Voluptatem voluptates possimus ducimus culpa eum enim. Earum quibusdam vero ut.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(47, 6, 64, 3.00, 'Enim quo dicta aut iusto vero dolore necessitatibus. Voluptate est placeat quo numquam. Sapiente unde quae consequuntur facere quam ad et ut.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(48, 3, 59, 1.00, 'Veniam quia quia similique et sit. Qui temporibus assumenda quo expedita.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(49, 7, 52, 2.00, 'Corrupti in voluptas repellendus ut repudiandae hic. Non explicabo aspernatur vel modi itaque et nisi. Est voluptas vel enim magni ea ex unde.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(50, 6, 59, 5.00, 'Eum hic atque error aliquam non. Ea vel quo velit qui officia in molestiae. Eius eaque molestiae rerum recusandae blanditiis modi et.', 'published', '2023-10-02 00:43:06', '2023-10-02 00:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipments`
--

INSERT INTO `ec_shipments` (`id`, `order_id`, `user_id`, `weight`, `shipment_id`, `note`, `status`, `cod_amount`, `cod_status`, `cross_checking_status`, `price`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 6438.00, NULL, '', 'approved', 1957.20, 'pending', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(2, 2, NULL, 6025.00, NULL, '', 'approved', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(3, 3, NULL, 3753.00, NULL, '', 'delivered', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(4, 4, NULL, 4582.00, NULL, '', 'delivered', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(5, 5, NULL, 2085.00, NULL, '', 'delivered', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(6, 6, NULL, 5956.00, NULL, '', 'delivered', 1300.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(7, 7, NULL, 3121.00, NULL, '', 'approved', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(8, 8, NULL, 4734.00, NULL, '', 'delivered', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(9, 9, NULL, 3483.00, NULL, '', 'approved', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(10, 10, NULL, 2130.00, NULL, '', 'delivered', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(11, 11, NULL, 1411.00, NULL, '', 'delivered', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(12, 12, NULL, 2677.00, NULL, '', 'approved', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(13, 13, NULL, 2401.00, NULL, '', 'delivered', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(14, 14, NULL, 6201.00, NULL, '', 'approved', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(15, 15, NULL, 4877.00, NULL, '', 'delivered', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(16, 16, NULL, 3594.00, NULL, '', 'delivered', 487.60, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(17, 17, NULL, 5279.00, NULL, '', 'approved', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(18, 18, NULL, 5597.00, NULL, '', 'approved', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(19, 19, NULL, 5044.00, NULL, '', 'approved', 977.30, 'pending', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(20, 20, NULL, 7421.00, NULL, '', 'approved', 0.00, 'completed', 'pending', 0.00, 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `shipment_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipment_histories`
--

INSERT INTO `ec_shipment_histories` (`id`, `action`, `description`, `user_id`, `shipment_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'create_from_order', 'Shipping was created from order %order_id%', 0, 1, 1, '2023-09-17 00:43:07', '2023-09-17 00:43:07'),
(2, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 1, 1, '2023-09-30 08:43:08', '2023-10-02 00:43:08'),
(3, 'create_from_order', 'Shipping was created from order %order_id%', 0, 2, 2, '2023-09-30 10:43:08', '2023-09-30 10:43:08'),
(4, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 2, 2, '2023-09-30 10:43:08', '2023-10-02 00:43:08'),
(5, 'create_from_order', 'Shipping was created from order %order_id%', 0, 3, 3, '2023-09-20 00:43:08', '2023-09-20 00:43:08'),
(6, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 3, 3, '2023-09-30 12:43:08', '2023-10-02 00:43:08'),
(7, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 3, 3, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(8, 'create_from_order', 'Shipping was created from order %order_id%', 0, 4, 4, '2023-09-23 12:43:08', '2023-09-23 12:43:08'),
(9, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 4, 4, '2023-09-30 14:43:08', '2023-10-02 00:43:08'),
(10, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 4, 4, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(11, 'create_from_order', 'Shipping was created from order %order_id%', 0, 5, 5, '2023-09-28 00:43:08', '2023-09-28 00:43:08'),
(12, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 5, 5, '2023-09-30 16:43:08', '2023-10-02 00:43:08'),
(13, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 5, 5, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(14, 'create_from_order', 'Shipping was created from order %order_id%', 0, 6, 6, '2023-09-29 12:43:08', '2023-09-29 12:43:08'),
(15, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 6, 6, '2023-09-30 18:43:08', '2023-10-02 00:43:08'),
(16, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 6, 6, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(17, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 6, 6, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(18, 'create_from_order', 'Shipping was created from order %order_id%', 0, 7, 7, '2023-09-20 08:43:08', '2023-09-20 08:43:08'),
(19, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 7, 7, '2023-09-30 20:43:08', '2023-10-02 00:43:08'),
(20, 'create_from_order', 'Shipping was created from order %order_id%', 0, 8, 8, '2023-09-25 12:43:08', '2023-09-25 12:43:08'),
(21, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 8, 8, '2023-09-30 22:43:08', '2023-10-02 00:43:08'),
(22, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 8, 8, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(23, 'create_from_order', 'Shipping was created from order %order_id%', 0, 9, 9, '2023-09-27 00:43:08', '2023-09-27 00:43:08'),
(24, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 9, 9, '2023-10-01 00:43:08', '2023-10-02 00:43:08'),
(25, 'create_from_order', 'Shipping was created from order %order_id%', 0, 10, 10, '2023-09-23 18:43:08', '2023-09-23 18:43:08'),
(26, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 10, 10, '2023-10-01 02:43:08', '2023-10-02 00:43:08'),
(27, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 10, 10, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(28, 'create_from_order', 'Shipping was created from order %order_id%', 0, 11, 11, '2023-09-24 12:43:08', '2023-09-24 12:43:08'),
(29, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 11, 11, '2023-10-01 04:43:08', '2023-10-02 00:43:08'),
(30, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 11, 11, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(31, 'create_from_order', 'Shipping was created from order %order_id%', 0, 12, 12, '2023-09-26 00:43:08', '2023-09-26 00:43:08'),
(32, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 12, 12, '2023-10-01 06:43:08', '2023-10-02 00:43:08'),
(33, 'create_from_order', 'Shipping was created from order %order_id%', 0, 13, 13, '2023-09-28 00:43:08', '2023-09-28 00:43:08'),
(34, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 13, 13, '2023-10-01 08:43:08', '2023-10-02 00:43:08'),
(35, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 13, 13, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(36, 'create_from_order', 'Shipping was created from order %order_id%', 0, 14, 14, '2023-09-29 16:43:08', '2023-09-29 16:43:08'),
(37, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 14, 14, '2023-10-01 10:43:08', '2023-10-02 00:43:08'),
(38, 'create_from_order', 'Shipping was created from order %order_id%', 0, 15, 15, '2023-09-28 12:43:08', '2023-09-28 12:43:08'),
(39, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 15, 15, '2023-10-01 12:43:08', '2023-10-02 00:43:08'),
(40, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 15, 15, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(41, 'create_from_order', 'Shipping was created from order %order_id%', 0, 16, 16, '2023-10-01 14:43:08', '2023-10-01 14:43:08'),
(42, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 16, 16, '2023-10-01 14:43:08', '2023-10-02 00:43:08'),
(43, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 16, 16, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(44, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 16, 16, '2023-10-02 00:43:08', '2023-10-02 00:43:08'),
(45, 'create_from_order', 'Shipping was created from order %order_id%', 0, 17, 17, '2023-10-01 16:43:08', '2023-10-01 16:43:08'),
(46, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 17, 17, '2023-10-01 16:43:08', '2023-10-02 00:43:08'),
(47, 'create_from_order', 'Shipping was created from order %order_id%', 0, 18, 18, '2023-09-30 00:43:08', '2023-09-30 00:43:08'),
(48, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 18, 18, '2023-10-01 18:43:08', '2023-10-02 00:43:08'),
(49, 'create_from_order', 'Shipping was created from order %order_id%', 0, 19, 19, '2023-09-30 16:43:08', '2023-09-30 16:43:08'),
(50, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 19, 19, '2023-10-01 20:43:08', '2023-10-02 00:43:08'),
(51, 'create_from_order', 'Shipping was created from order %order_id%', 0, 20, 20, '2023-10-01 14:43:08', '2023-10-01 14:43:08'),
(52, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 20, 20, '2023-10-01 22:43:08', '2023-10-02 00:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2023-10-02 00:43:06', '2023-10-02 00:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int UNSIGNED NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Free shipping', 1, 'base_on_price', 0.00, NULL, 0.00, '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(2, 'Local Pickup', 1, 'base_on_price', 0.00, NULL, 20.00, '2023-10-02 00:43:06', '2023-10-02 00:43:06'),
(3, 'Flat Rate', 1, 'base_on_price', 0.00, NULL, 25.00, '2023-10-02 00:43:06', '2023-10-02 00:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint UNSIGNED NOT NULL,
  `shipping_rule_id` int UNSIGNED NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`) VALUES
(1, 'Wowy', 'sales@botble.com', '18006268', 'North Link Building, 10 Admiralty Street', 'SG', 'Singapore', 'Singapore', 1, 1, '2023-10-02 00:43:06', '2023-10-02 00:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10.000000, 1, 'published', '2023-10-02 00:43:04', '2023-10-02 00:43:04'),
(2, 'None', 0.000000, 2, 'published', '2023-10-02 00:43:04', '2023-10-02 00:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '2f221ae602b9bd4926c8d5792d348023', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(2, 'en_US', 'b09f2e2da22f9d84cc1e6856e9f483d7', 2, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(3, 'en_US', 'fc68a4e517893bfd4b977239e34f56ee', 3, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(4, 'en_US', '608092f94b9fb4a5e69ce9812e520d62', 4, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(5, 'vi', '2f221ae602b9bd4926c8d5792d348023', 5, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(6, 'vi', 'b09f2e2da22f9d84cc1e6856e9f483d7', 6, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(7, 'vi', 'fc68a4e517893bfd4b977239e34f56ee', 7, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(8, 'vi', '608092f94b9fb4a5e69ce9812e520d62', 8, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(9, 'en_US', '5b2548c39e085af5037c713f573b0516', 1, 'Botble\\Blog\\Models\\Category'),
(10, 'en_US', '0a98e372f9fa982971a960340cc9026f', 2, 'Botble\\Blog\\Models\\Category'),
(11, 'en_US', '87d56da7a3af7f955f25a77449ef7587', 3, 'Botble\\Blog\\Models\\Category'),
(12, 'en_US', '5e1ec8e0f07c9f4e51f3fdeb5a29b75a', 4, 'Botble\\Blog\\Models\\Category'),
(13, 'vi', '5b2548c39e085af5037c713f573b0516', 5, 'Botble\\Blog\\Models\\Category'),
(14, 'vi', '0a98e372f9fa982971a960340cc9026f', 6, 'Botble\\Blog\\Models\\Category'),
(15, 'vi', '87d56da7a3af7f955f25a77449ef7587', 7, 'Botble\\Blog\\Models\\Category'),
(16, 'vi', '5e1ec8e0f07c9f4e51f3fdeb5a29b75a', 8, 'Botble\\Blog\\Models\\Category'),
(17, 'en_US', 'f3b3922ade84cd9e8d3b382b5179857e', 1, 'Botble\\Blog\\Models\\Tag'),
(18, 'en_US', 'd2e52c3a582b72ed8847b2345cad2010', 2, 'Botble\\Blog\\Models\\Tag'),
(19, 'en_US', '3b97ff15c9632ba74fca13a54f6bfefb', 3, 'Botble\\Blog\\Models\\Tag'),
(20, 'en_US', '9a1f6339ae2bc1997eaa1a0ace560209', 4, 'Botble\\Blog\\Models\\Tag'),
(21, 'en_US', '6ce87381950dd255f36a653bdc0b83a6', 5, 'Botble\\Blog\\Models\\Tag'),
(22, 'vi', 'f3b3922ade84cd9e8d3b382b5179857e', 6, 'Botble\\Blog\\Models\\Tag'),
(23, 'vi', 'd2e52c3a582b72ed8847b2345cad2010', 7, 'Botble\\Blog\\Models\\Tag'),
(24, 'vi', '3b97ff15c9632ba74fca13a54f6bfefb', 8, 'Botble\\Blog\\Models\\Tag'),
(25, 'vi', '9a1f6339ae2bc1997eaa1a0ace560209', 9, 'Botble\\Blog\\Models\\Tag'),
(26, 'vi', '6ce87381950dd255f36a653bdc0b83a6', 10, 'Botble\\Blog\\Models\\Tag'),
(27, 'en_US', 'd7e2557116b471e2320bfadc0af5c0b9', 1, 'Botble\\Blog\\Models\\Post'),
(28, 'en_US', '2167d38e3a2c489a7196aaf91ea449ad', 2, 'Botble\\Blog\\Models\\Post'),
(29, 'en_US', '2b3455cfbef9e084367d47675587091e', 3, 'Botble\\Blog\\Models\\Post'),
(30, 'en_US', '9667eb6d314fb2a3d03a7fe1bd3be5c8', 4, 'Botble\\Blog\\Models\\Post'),
(31, 'en_US', 'afd543d77c523247a0bd9e9004686620', 5, 'Botble\\Blog\\Models\\Post'),
(32, 'en_US', '9976882455d405896a7022a5476c073c', 6, 'Botble\\Blog\\Models\\Post'),
(33, 'en_US', '80941167f671f86e489d0158d06d1990', 7, 'Botble\\Blog\\Models\\Post'),
(34, 'en_US', '0602411c7688165ed6b017647bc09071', 8, 'Botble\\Blog\\Models\\Post'),
(35, 'en_US', '4fb9716bb7ed8e7572569028b8d0b662', 9, 'Botble\\Blog\\Models\\Post'),
(36, 'en_US', 'ece3e11c137647d8600faf80e820d571', 10, 'Botble\\Blog\\Models\\Post'),
(37, 'en_US', '2418dffc760f432221b38e0729c5c53b', 11, 'Botble\\Blog\\Models\\Post'),
(38, 'vi', 'd7e2557116b471e2320bfadc0af5c0b9', 12, 'Botble\\Blog\\Models\\Post'),
(39, 'vi', '2167d38e3a2c489a7196aaf91ea449ad', 13, 'Botble\\Blog\\Models\\Post'),
(40, 'vi', '2b3455cfbef9e084367d47675587091e', 14, 'Botble\\Blog\\Models\\Post'),
(41, 'vi', '9667eb6d314fb2a3d03a7fe1bd3be5c8', 15, 'Botble\\Blog\\Models\\Post'),
(42, 'vi', 'afd543d77c523247a0bd9e9004686620', 16, 'Botble\\Blog\\Models\\Post'),
(43, 'vi', '9976882455d405896a7022a5476c073c', 17, 'Botble\\Blog\\Models\\Post'),
(44, 'vi', '80941167f671f86e489d0158d06d1990', 18, 'Botble\\Blog\\Models\\Post'),
(45, 'vi', '0602411c7688165ed6b017647bc09071', 19, 'Botble\\Blog\\Models\\Post'),
(46, 'vi', '4fb9716bb7ed8e7572569028b8d0b662', 20, 'Botble\\Blog\\Models\\Post'),
(47, 'vi', 'ece3e11c137647d8600faf80e820d571', 21, 'Botble\\Blog\\Models\\Post'),
(48, 'vi', '2418dffc760f432221b38e0729c5c53b', 22, 'Botble\\Blog\\Models\\Post'),
(49, 'en_US', '460eed4931a308de7df7392d8d812165', 1, 'Botble\\Page\\Models\\Page'),
(50, 'en_US', '3458c4b139dfcf150fe1c1e051ccb89d', 2, 'Botble\\Page\\Models\\Page'),
(51, 'en_US', 'd08122da2517d8d615851fc4cecc57cc', 3, 'Botble\\Page\\Models\\Page'),
(52, 'en_US', '5d43b02b1c922c7436580093683d3dc7', 4, 'Botble\\Page\\Models\\Page'),
(53, 'en_US', '1d2561e49420e706494b908f92b19e5b', 5, 'Botble\\Page\\Models\\Page'),
(54, 'en_US', '4d6ccc38570ab0274b437e80b722eebf', 6, 'Botble\\Page\\Models\\Page'),
(55, 'en_US', 'd47707e95b628314da84d5a9511dba08', 7, 'Botble\\Page\\Models\\Page'),
(56, 'en_US', '95425d38e9342691be275dba5400bef1', 8, 'Botble\\Page\\Models\\Page'),
(57, 'en_US', '1b1a3b9155f78979f51c38d27dca8e80', 9, 'Botble\\Page\\Models\\Page'),
(58, 'en_US', '399de0a7d011ce1e5e86db2eae14b4ac', 10, 'Botble\\Page\\Models\\Page'),
(59, 'en_US', 'b2f61fa081076de835e3801afa4ad81b', 11, 'Botble\\Page\\Models\\Page'),
(60, 'en_US', '903e03b9be77aed85cbfc8498ab0923c', 12, 'Botble\\Page\\Models\\Page'),
(61, 'en_US', '2e7d28be1f2019a894d9d118fef6e831', 13, 'Botble\\Page\\Models\\Page'),
(62, 'vi', '460eed4931a308de7df7392d8d812165', 14, 'Botble\\Page\\Models\\Page'),
(63, 'vi', '3458c4b139dfcf150fe1c1e051ccb89d', 15, 'Botble\\Page\\Models\\Page'),
(64, 'vi', 'd08122da2517d8d615851fc4cecc57cc', 16, 'Botble\\Page\\Models\\Page'),
(65, 'vi', '5d43b02b1c922c7436580093683d3dc7', 17, 'Botble\\Page\\Models\\Page'),
(66, 'vi', '1d2561e49420e706494b908f92b19e5b', 18, 'Botble\\Page\\Models\\Page'),
(67, 'vi', '4d6ccc38570ab0274b437e80b722eebf', 19, 'Botble\\Page\\Models\\Page'),
(68, 'vi', 'd47707e95b628314da84d5a9511dba08', 20, 'Botble\\Page\\Models\\Page'),
(69, 'vi', '95425d38e9342691be275dba5400bef1', 21, 'Botble\\Page\\Models\\Page'),
(70, 'vi', '1b1a3b9155f78979f51c38d27dca8e80', 22, 'Botble\\Page\\Models\\Page'),
(71, 'vi', '399de0a7d011ce1e5e86db2eae14b4ac', 23, 'Botble\\Page\\Models\\Page'),
(72, 'vi', 'b2f61fa081076de835e3801afa4ad81b', 24, 'Botble\\Page\\Models\\Page'),
(73, 'vi', '903e03b9be77aed85cbfc8498ab0923c', 25, 'Botble\\Page\\Models\\Page'),
(74, 'vi', '2e7d28be1f2019a894d9d118fef6e831', 26, 'Botble\\Page\\Models\\Page'),
(75, 'en_US', '86e9955d8c9da064415e90fb62bbde4f', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(76, 'en_US', '0296adf8845ac5f1f07c325c1d037899', 1, 'Botble\\Menu\\Models\\Menu'),
(77, 'en_US', 'ad2143c731d2f0f955e04f8b91adb938', 2, 'Botble\\Menu\\Models\\Menu'),
(78, 'en_US', 'c6c5224400a0df4533b5d5c910702fef', 3, 'Botble\\Menu\\Models\\Menu'),
(79, 'vi', '338ee6d65d511828c2babb5be07cfd52', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(80, 'vi', '0296adf8845ac5f1f07c325c1d037899', 4, 'Botble\\Menu\\Models\\Menu'),
(81, 'vi', 'ad2143c731d2f0f955e04f8b91adb938', 5, 'Botble\\Menu\\Models\\Menu'),
(82, 'vi', 'c6c5224400a0df4533b5d5c910702fef', 6, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '1', 1, 'image/png', 727, 'brands/1.png', '[]', '2023-10-02 00:42:46', '2023-10-02 00:42:46', NULL),
(2, 0, '2', 1, 'image/png', 727, 'brands/2.png', '[]', '2023-10-02 00:42:47', '2023-10-02 00:42:47', NULL),
(3, 0, '3', 1, 'image/png', 727, 'brands/3.png', '[]', '2023-10-02 00:42:47', '2023-10-02 00:42:47', NULL),
(4, 0, '4', 1, 'image/png', 727, 'brands/4.png', '[]', '2023-10-02 00:42:47', '2023-10-02 00:42:47', NULL),
(5, 0, '5', 1, 'image/png', 727, 'brands/5.png', '[]', '2023-10-02 00:42:47', '2023-10-02 00:42:47', NULL),
(6, 0, '6', 1, 'image/png', 727, 'brands/6.png', '[]', '2023-10-02 00:42:47', '2023-10-02 00:42:47', NULL),
(7, 0, '7', 1, 'image/png', 727, 'brands/7.png', '[]', '2023-10-02 00:42:47', '2023-10-02 00:42:47', NULL),
(8, 0, '1', 2, 'image/jpeg', 1307, 'product-categories/1.jpg', '[]', '2023-10-02 00:42:48', '2023-10-02 00:42:48', NULL),
(9, 0, '2', 2, 'image/jpeg', 1307, 'product-categories/2.jpg', '[]', '2023-10-02 00:42:48', '2023-10-02 00:42:48', NULL),
(10, 0, '3', 2, 'image/jpeg', 1307, 'product-categories/3.jpg', '[]', '2023-10-02 00:42:48', '2023-10-02 00:42:48', NULL),
(11, 0, '4', 2, 'image/jpeg', 1307, 'product-categories/4.jpg', '[]', '2023-10-02 00:42:48', '2023-10-02 00:42:48', NULL),
(12, 0, '5', 2, 'image/jpeg', 1307, 'product-categories/5.jpg', '[]', '2023-10-02 00:42:48', '2023-10-02 00:42:48', NULL),
(13, 0, '6', 2, 'image/jpeg', 1307, 'product-categories/6.jpg', '[]', '2023-10-02 00:42:48', '2023-10-02 00:42:48', NULL),
(14, 0, '7', 2, 'image/jpeg', 1307, 'product-categories/7.jpg', '[]', '2023-10-02 00:42:48', '2023-10-02 00:42:48', NULL),
(15, 0, '8', 2, 'image/jpeg', 1307, 'product-categories/8.jpg', '[]', '2023-10-02 00:42:49', '2023-10-02 00:42:49', NULL),
(16, 0, '1-1', 3, 'image/jpeg', 2165, 'products/1-1.jpg', '[]', '2023-10-02 00:42:49', '2023-10-02 00:42:49', NULL),
(17, 0, '1-2', 3, 'image/jpeg', 2165, 'products/1-2.jpg', '[]', '2023-10-02 00:42:50', '2023-10-02 00:42:50', NULL),
(18, 0, '1-3', 3, 'image/jpeg', 2165, 'products/1-3.jpg', '[]', '2023-10-02 00:42:50', '2023-10-02 00:42:50', NULL),
(19, 0, '1', 3, 'image/jpeg', 2165, 'products/1.jpg', '[]', '2023-10-02 00:42:50', '2023-10-02 00:42:50', NULL),
(20, 0, '10-1', 3, 'image/jpeg', 2165, 'products/10-1.jpg', '[]', '2023-10-02 00:42:50', '2023-10-02 00:42:50', NULL),
(21, 0, '10', 3, 'image/jpeg', 2165, 'products/10.jpg', '[]', '2023-10-02 00:42:50', '2023-10-02 00:42:50', NULL),
(22, 0, '11-1', 3, 'image/jpeg', 2165, 'products/11-1.jpg', '[]', '2023-10-02 00:42:51', '2023-10-02 00:42:51', NULL),
(23, 0, '11', 3, 'image/jpeg', 2165, 'products/11.jpg', '[]', '2023-10-02 00:42:51', '2023-10-02 00:42:51', NULL),
(24, 0, '12-1', 3, 'image/jpeg', 2165, 'products/12-1.jpg', '[]', '2023-10-02 00:42:51', '2023-10-02 00:42:51', NULL),
(25, 0, '12', 3, 'image/jpeg', 2165, 'products/12.jpg', '[]', '2023-10-02 00:42:51', '2023-10-02 00:42:51', NULL),
(26, 0, '13-1', 3, 'image/jpeg', 2165, 'products/13-1.jpg', '[]', '2023-10-02 00:42:52', '2023-10-02 00:42:52', NULL),
(27, 0, '13', 3, 'image/jpeg', 2165, 'products/13.jpg', '[]', '2023-10-02 00:42:52', '2023-10-02 00:42:52', NULL),
(28, 0, '14-1', 3, 'image/jpeg', 2165, 'products/14-1.jpg', '[]', '2023-10-02 00:42:52', '2023-10-02 00:42:52', NULL),
(29, 0, '14', 3, 'image/jpeg', 2165, 'products/14.jpg', '[]', '2023-10-02 00:42:52', '2023-10-02 00:42:52', NULL),
(30, 0, '15-1', 3, 'image/jpeg', 2165, 'products/15-1.jpg', '[]', '2023-10-02 00:42:52', '2023-10-02 00:42:52', NULL),
(31, 0, '15', 3, 'image/jpeg', 2165, 'products/15.jpg', '[]', '2023-10-02 00:42:53', '2023-10-02 00:42:53', NULL),
(32, 0, '16', 3, 'image/jpeg', 2165, 'products/16.jpg', '[]', '2023-10-02 00:42:53', '2023-10-02 00:42:53', NULL),
(33, 0, '17', 3, 'image/jpeg', 2165, 'products/17.jpg', '[]', '2023-10-02 00:42:53', '2023-10-02 00:42:53', NULL),
(34, 0, '18-1', 3, 'image/jpeg', 2165, 'products/18-1.jpg', '[]', '2023-10-02 00:42:53', '2023-10-02 00:42:53', NULL),
(35, 0, '18-2', 3, 'image/jpeg', 2165, 'products/18-2.jpg', '[]', '2023-10-02 00:42:53', '2023-10-02 00:42:53', NULL),
(36, 0, '18', 3, 'image/jpeg', 2165, 'products/18.jpg', '[]', '2023-10-02 00:42:54', '2023-10-02 00:42:54', NULL),
(37, 0, '19-1', 3, 'image/jpeg', 2165, 'products/19-1.jpg', '[]', '2023-10-02 00:42:54', '2023-10-02 00:42:54', NULL),
(38, 0, '19', 3, 'image/jpeg', 2165, 'products/19.jpg', '[]', '2023-10-02 00:42:54', '2023-10-02 00:42:54', NULL),
(39, 0, '2-1', 3, 'image/jpeg', 2165, 'products/2-1.jpg', '[]', '2023-10-02 00:42:54', '2023-10-02 00:42:54', NULL),
(40, 0, '2-2', 3, 'image/jpeg', 2165, 'products/2-2.jpg', '[]', '2023-10-02 00:42:54', '2023-10-02 00:42:54', NULL),
(41, 0, '2-3', 3, 'image/jpeg', 2165, 'products/2-3.jpg', '[]', '2023-10-02 00:42:55', '2023-10-02 00:42:55', NULL),
(42, 0, '2', 3, 'image/jpeg', 2165, 'products/2.jpg', '[]', '2023-10-02 00:42:55', '2023-10-02 00:42:55', NULL),
(43, 0, '20-1', 3, 'image/jpeg', 2165, 'products/20-1.jpg', '[]', '2023-10-02 00:42:55', '2023-10-02 00:42:55', NULL),
(44, 0, '20', 3, 'image/jpeg', 2165, 'products/20.jpg', '[]', '2023-10-02 00:42:55', '2023-10-02 00:42:55', NULL),
(45, 0, '21-1', 3, 'image/jpeg', 2165, 'products/21-1.jpg', '[]', '2023-10-02 00:42:56', '2023-10-02 00:42:56', NULL),
(46, 0, '21', 3, 'image/jpeg', 2165, 'products/21.jpg', '[]', '2023-10-02 00:42:56', '2023-10-02 00:42:56', NULL),
(47, 0, '22-1', 3, 'image/jpeg', 2165, 'products/22-1.jpg', '[]', '2023-10-02 00:42:56', '2023-10-02 00:42:56', NULL),
(48, 0, '22', 3, 'image/jpeg', 2165, 'products/22.jpg', '[]', '2023-10-02 00:42:56', '2023-10-02 00:42:56', NULL),
(49, 0, '23-1', 3, 'image/jpeg', 2165, 'products/23-1.jpg', '[]', '2023-10-02 00:42:56', '2023-10-02 00:42:56', NULL),
(50, 0, '23', 3, 'image/jpeg', 2165, 'products/23.jpg', '[]', '2023-10-02 00:42:57', '2023-10-02 00:42:57', NULL),
(51, 0, '24-1', 3, 'image/jpeg', 2165, 'products/24-1.jpg', '[]', '2023-10-02 00:42:57', '2023-10-02 00:42:57', NULL),
(52, 0, '24', 3, 'image/jpeg', 2165, 'products/24.jpg', '[]', '2023-10-02 00:42:57', '2023-10-02 00:42:57', NULL),
(53, 0, '3-1', 3, 'image/jpeg', 2165, 'products/3-1.jpg', '[]', '2023-10-02 00:42:57', '2023-10-02 00:42:57', NULL),
(54, 0, '3-2', 3, 'image/jpeg', 2165, 'products/3-2.jpg', '[]', '2023-10-02 00:42:57', '2023-10-02 00:42:57', NULL),
(55, 0, '3-3', 3, 'image/jpeg', 2165, 'products/3-3.jpg', '[]', '2023-10-02 00:42:58', '2023-10-02 00:42:58', NULL),
(56, 0, '3', 3, 'image/jpeg', 2165, 'products/3.jpg', '[]', '2023-10-02 00:42:58', '2023-10-02 00:42:58', NULL),
(57, 0, '4-1', 3, 'image/jpeg', 2165, 'products/4-1.jpg', '[]', '2023-10-02 00:42:58', '2023-10-02 00:42:58', NULL),
(58, 0, '4-2', 3, 'image/jpeg', 2165, 'products/4-2.jpg', '[]', '2023-10-02 00:42:58', '2023-10-02 00:42:58', NULL),
(59, 0, '4-3', 3, 'image/jpeg', 2165, 'products/4-3.jpg', '[]', '2023-10-02 00:42:58', '2023-10-02 00:42:58', NULL),
(60, 0, '4', 3, 'image/jpeg', 2165, 'products/4.jpg', '[]', '2023-10-02 00:42:59', '2023-10-02 00:42:59', NULL),
(61, 0, '5-1', 3, 'image/jpeg', 2165, 'products/5-1.jpg', '[]', '2023-10-02 00:42:59', '2023-10-02 00:42:59', NULL),
(62, 0, '5-2', 3, 'image/jpeg', 2165, 'products/5-2.jpg', '[]', '2023-10-02 00:42:59', '2023-10-02 00:42:59', NULL),
(63, 0, '5-3', 3, 'image/jpeg', 2165, 'products/5-3.jpg', '[]', '2023-10-02 00:42:59', '2023-10-02 00:42:59', NULL),
(64, 0, '5', 3, 'image/jpeg', 2165, 'products/5.jpg', '[]', '2023-10-02 00:42:59', '2023-10-02 00:42:59', NULL),
(65, 0, '6-1', 3, 'image/jpeg', 2165, 'products/6-1.jpg', '[]', '2023-10-02 00:43:00', '2023-10-02 00:43:00', NULL),
(66, 0, '6', 3, 'image/jpeg', 2165, 'products/6.jpg', '[]', '2023-10-02 00:43:00', '2023-10-02 00:43:00', NULL),
(67, 0, '7-1', 3, 'image/jpeg', 2165, 'products/7-1.jpg', '[]', '2023-10-02 00:43:00', '2023-10-02 00:43:00', NULL),
(68, 0, '7', 3, 'image/jpeg', 2165, 'products/7.jpg', '[]', '2023-10-02 00:43:00', '2023-10-02 00:43:00', NULL),
(69, 0, '8-1', 3, 'image/jpeg', 2165, 'products/8-1.jpg', '[]', '2023-10-02 00:43:01', '2023-10-02 00:43:01', NULL),
(70, 0, '8', 3, 'image/jpeg', 2165, 'products/8.jpg', '[]', '2023-10-02 00:43:01', '2023-10-02 00:43:01', NULL),
(71, 0, '9-1', 3, 'image/jpeg', 2165, 'products/9-1.jpg', '[]', '2023-10-02 00:43:01', '2023-10-02 00:43:01', NULL),
(72, 0, '9', 3, 'image/jpeg', 2165, 'products/9.jpg', '[]', '2023-10-02 00:43:01', '2023-10-02 00:43:01', NULL),
(73, 0, '1', 4, 'image/jpeg', 2165, 'customers/1.jpg', '[]', '2023-10-02 00:43:04', '2023-10-02 00:43:04', NULL),
(74, 0, '2', 4, 'image/jpeg', 2165, 'customers/2.jpg', '[]', '2023-10-02 00:43:04', '2023-10-02 00:43:04', NULL),
(75, 0, '3', 4, 'image/jpeg', 2165, 'customers/3.jpg', '[]', '2023-10-02 00:43:04', '2023-10-02 00:43:04', NULL),
(76, 0, '4', 4, 'image/jpeg', 2165, 'customers/4.jpg', '[]', '2023-10-02 00:43:05', '2023-10-02 00:43:05', NULL),
(77, 0, '5', 4, 'image/jpeg', 2165, 'customers/5.jpg', '[]', '2023-10-02 00:43:05', '2023-10-02 00:43:05', NULL),
(78, 0, '6', 4, 'image/jpeg', 2165, 'customers/6.jpg', '[]', '2023-10-02 00:43:05', '2023-10-02 00:43:05', NULL),
(79, 0, '7', 4, 'image/jpeg', 2165, 'customers/7.jpg', '[]', '2023-10-02 00:43:05', '2023-10-02 00:43:05', NULL),
(80, 0, '8', 4, 'image/jpeg', 2165, 'customers/8.jpg', '[]', '2023-10-02 00:43:05', '2023-10-02 00:43:05', NULL),
(81, 0, '1', 5, 'image/jpeg', 2147, 'flash-sales/1.jpg', '[]', '2023-10-02 00:43:06', '2023-10-02 00:43:06', NULL),
(82, 0, '2', 5, 'image/jpeg', 2147, 'flash-sales/2.jpg', '[]', '2023-10-02 00:43:07', '2023-10-02 00:43:07', NULL),
(83, 0, '1-1', 6, 'image/png', 2573, 'sliders/1-1.png', '[]', '2023-10-02 00:43:08', '2023-10-02 00:43:08', NULL),
(84, 0, '1-2', 6, 'image/png', 2719, 'sliders/1-2.png', '[]', '2023-10-02 00:43:09', '2023-10-02 00:43:09', NULL),
(85, 0, '1-3', 6, 'image/png', 2697, 'sliders/1-3.png', '[]', '2023-10-02 00:43:09', '2023-10-02 00:43:09', NULL),
(86, 0, '2-1', 6, 'image/png', 2573, 'sliders/2-1.png', '[]', '2023-10-02 00:43:09', '2023-10-02 00:43:09', NULL),
(87, 0, '2-2', 6, 'image/png', 2719, 'sliders/2-2.png', '[]', '2023-10-02 00:43:10', '2023-10-02 00:43:10', NULL),
(88, 0, '2-3', 6, 'image/png', 2697, 'sliders/2-3.png', '[]', '2023-10-02 00:43:10', '2023-10-02 00:43:10', NULL),
(89, 0, '3-1', 6, 'image/png', 3988, 'sliders/3-1.png', '[]', '2023-10-02 00:43:10', '2023-10-02 00:43:10', NULL),
(90, 0, '3-2', 6, 'image/png', 3988, 'sliders/3-2.png', '[]', '2023-10-02 00:43:10', '2023-10-02 00:43:10', NULL),
(91, 0, '4-1', 6, 'image/png', 3657, 'sliders/4-1.png', '[]', '2023-10-02 00:43:11', '2023-10-02 00:43:11', NULL),
(92, 0, '4-2', 6, 'image/png', 3657, 'sliders/4-2.png', '[]', '2023-10-02 00:43:11', '2023-10-02 00:43:11', NULL),
(93, 0, '4-3', 6, 'image/png', 2697, 'sliders/4-3.png', '[]', '2023-10-02 00:43:11', '2023-10-02 00:43:11', NULL),
(94, 0, '1', 7, 'image/jpeg', 2165, 'news/1.jpg', '[]', '2023-10-02 00:43:12', '2023-10-02 00:43:12', NULL),
(95, 0, '10', 7, 'image/jpeg', 2165, 'news/10.jpg', '[]', '2023-10-02 00:43:12', '2023-10-02 00:43:12', NULL),
(96, 0, '11', 7, 'image/jpeg', 2165, 'news/11.jpg', '[]', '2023-10-02 00:43:12', '2023-10-02 00:43:12', NULL),
(97, 0, '2', 7, 'image/jpeg', 2165, 'news/2.jpg', '[]', '2023-10-02 00:43:13', '2023-10-02 00:43:13', NULL),
(98, 0, '3', 7, 'image/jpeg', 2165, 'news/3.jpg', '[]', '2023-10-02 00:43:13', '2023-10-02 00:43:13', NULL),
(99, 0, '4', 7, 'image/jpeg', 2165, 'news/4.jpg', '[]', '2023-10-02 00:43:13', '2023-10-02 00:43:13', NULL),
(100, 0, '5', 7, 'image/jpeg', 2165, 'news/5.jpg', '[]', '2023-10-02 00:43:13', '2023-10-02 00:43:13', NULL),
(101, 0, '6', 7, 'image/jpeg', 2165, 'news/6.jpg', '[]', '2023-10-02 00:43:14', '2023-10-02 00:43:14', NULL),
(102, 0, '7', 7, 'image/jpeg', 2165, 'news/7.jpg', '[]', '2023-10-02 00:43:14', '2023-10-02 00:43:14', NULL),
(103, 0, '8', 7, 'image/jpeg', 2165, 'news/8.jpg', '[]', '2023-10-02 00:43:14', '2023-10-02 00:43:14', NULL),
(104, 0, '9', 7, 'image/jpeg', 2165, 'news/9.jpg', '[]', '2023-10-02 00:43:14', '2023-10-02 00:43:14', NULL),
(105, 0, '1', 8, 'image/png', 2054, 'promotion/1.png', '[]', '2023-10-02 00:43:15', '2023-10-02 00:43:15', NULL),
(106, 0, '2', 8, 'image/png', 2054, 'promotion/2.png', '[]', '2023-10-02 00:43:16', '2023-10-02 00:43:16', NULL),
(107, 0, '3', 8, 'image/png', 2054, 'promotion/3.png', '[]', '2023-10-02 00:43:16', '2023-10-02 00:43:16', NULL),
(108, 0, '4', 8, 'image/png', 1597, 'promotion/4.png', '[]', '2023-10-02 00:43:16', '2023-10-02 00:43:16', NULL),
(109, 0, '5', 8, 'image/png', 1569, 'promotion/5.png', '[]', '2023-10-02 00:43:16', '2023-10-02 00:43:16', NULL),
(110, 0, '6', 8, 'image/png', 3357, 'promotion/6.png', '[]', '2023-10-02 00:43:17', '2023-10-02 00:43:17', NULL),
(111, 0, 'favicon', 9, 'image/png', 2343, 'general/favicon.png', '[]', '2023-10-02 00:43:17', '2023-10-02 00:43:17', NULL),
(112, 0, 'icon-bag', 9, 'image/png', 15551, 'general/icon-bag.png', '[]', '2023-10-02 00:43:17', '2023-10-02 00:43:17', NULL),
(113, 0, 'icon-operator', 9, 'image/png', 23328, 'general/icon-operator.png', '[]', '2023-10-02 00:43:18', '2023-10-02 00:43:18', NULL),
(114, 0, 'icon-purchase', 9, 'image/png', 22947, 'general/icon-purchase.png', '[]', '2023-10-02 00:43:18', '2023-10-02 00:43:18', NULL),
(115, 0, 'icon-truck', 9, 'image/png', 17131, 'general/icon-truck.png', '[]', '2023-10-02 00:43:18', '2023-10-02 00:43:18', NULL),
(116, 0, 'logo-light', 9, 'image/png', 1938, 'general/logo-light.png', '[]', '2023-10-02 00:43:19', '2023-10-02 00:43:19', NULL),
(117, 0, 'logo', 9, 'image/png', 2494, 'general/logo.png', '[]', '2023-10-02 00:43:19', '2023-10-02 00:43:19', NULL),
(118, 0, 'open-graph-image', 9, 'image/png', 293189, 'general/open-graph-image.png', '[]', '2023-10-02 00:43:19', '2023-10-02 00:43:19', NULL),
(119, 0, 'payment-methods', 9, 'image/png', 268, 'general/payment-methods.png', '[]', '2023-10-02 00:43:19', '2023-10-02 00:43:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'brands', 'brands', 0, '2023-10-02 00:42:46', '2023-10-02 00:42:46', NULL),
(2, 0, 'product-categories', 'product-categories', 0, '2023-10-02 00:42:47', '2023-10-02 00:42:47', NULL),
(3, 0, 'products', 'products', 0, '2023-10-02 00:42:49', '2023-10-02 00:42:49', NULL),
(4, 0, 'customers', 'customers', 0, '2023-10-02 00:43:04', '2023-10-02 00:43:04', NULL),
(5, 0, 'flash-sales', 'flash-sales', 0, '2023-10-02 00:43:06', '2023-10-02 00:43:06', NULL),
(6, 0, 'sliders', 'sliders', 0, '2023-10-02 00:43:08', '2023-10-02 00:43:08', NULL),
(7, 0, 'news', 'news', 0, '2023-10-02 00:43:12', '2023-10-02 00:43:12', NULL),
(8, 0, 'promotion', 'promotion', 0, '2023-10-02 00:43:15', '2023-10-02 00:43:15', NULL),
(9, 0, 'general', 'general', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(2, 'Product categories', 'product-categories', 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(3, 'Information', 'information', 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(4, 'Menu chính', 'menu-chinh', 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(5, 'Product categories', 'danh-muc-san-pham', 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(6, 'Information', 'thong-tin', 'published', '2023-10-02 00:43:17', '2023-10-02 00:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(2, 4, 'main-menu', '2023-10-02 00:43:17', '2023-10-02 00:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 1, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(2, 1, 1, 1, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Home 1', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(3, 1, 1, 2, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Home 2', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(4, 1, 1, 3, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Home 3', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(5, 1, 1, 4, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Home 4', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(6, 1, 0, NULL, NULL, '/products', NULL, 0, 'Shop', NULL, '_self', 1, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(7, 1, 6, NULL, NULL, '/products', NULL, 0, 'Shop Grid - Full Width', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(8, 1, 6, NULL, NULL, '/products?layout=product-right-sidebar', NULL, 0, 'Shop Grid - Right Sidebar', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(9, 1, 6, NULL, NULL, '/products?layout=product-left-sidebar', NULL, 0, 'Shop Grid - Left Sidebar', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(10, 1, 6, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Products Of Category', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(11, 1, 0, NULL, NULL, '#', NULL, 0, 'Product', NULL, '_self', 1, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(12, 1, 11, NULL, NULL, '', NULL, 0, 'Product Right Sidebar', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(13, 1, 11, NULL, NULL, '', NULL, 0, 'Product Left Sidebar', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(14, 1, 11, NULL, NULL, '', NULL, 0, 'Product Full Width', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(15, 1, 0, 5, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Blog', NULL, '_self', 1, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(16, 1, 15, 5, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Blog Right Sidebar', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(17, 1, 15, 13, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Blog Left Sidebar', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(18, 1, 15, NULL, NULL, '', NULL, 0, 'Single Post Right Sidebar', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(19, 1, 15, NULL, NULL, '', NULL, 0, 'Single Post Left Sidebar', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(20, 1, 15, NULL, NULL, '', NULL, 0, 'Single Post Full Width', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(21, 1, 15, NULL, NULL, '', NULL, 0, 'Single Post with Product Listing', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(22, 1, 0, 6, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Contact', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(23, 2, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Men', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(24, 2, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Women', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(25, 2, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Accessories', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(26, 2, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Shoes', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(27, 2, 0, 5, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Denim', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(28, 2, 0, 6, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Dress', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(29, 3, 0, 6, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Contact Us', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(30, 3, 0, 8, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'About Us', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(31, 3, 0, 9, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(32, 3, 0, 10, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Returns & Exchanges', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(33, 3, 0, 11, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Shipping & Delivery', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(34, 3, 0, 12, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Privacy Policy', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(35, 4, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 1, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(36, 4, 35, 1, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Trang chủ 1', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(37, 4, 35, 2, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Trang chủ 2', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(38, 4, 35, 3, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Trang chủ 3', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(39, 4, 35, 4, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Trang chủ 4', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(40, 4, 0, NULL, NULL, '/products', NULL, 0, 'Bán hàng', NULL, '_self', 1, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(41, 4, 40, NULL, NULL, '/products', NULL, 0, 'Tất cả sản phẩm', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(42, 4, 40, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Danh mục sản phẩm', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(43, 4, 0, NULL, NULL, '#', NULL, 0, 'Sản phẩm', NULL, '_self', 1, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(44, 4, 43, NULL, NULL, '', NULL, 0, 'Sản phẩm Sidebar phải', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(45, 4, 43, NULL, NULL, '', NULL, 0, 'Sản phẩm Sidebar trái', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(46, 4, 43, NULL, NULL, '', NULL, 0, 'Sản phẩm full width', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(47, 4, 0, 5, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Tin tức', NULL, '_self', 1, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(48, 4, 47, 5, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Tin tức Sidebar phải', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(49, 4, 47, 13, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Tin tức Sidebar trái', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(50, 4, 47, NULL, NULL, '', NULL, 0, 'Bài viết Sidebar phải', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(51, 4, 47, NULL, NULL, '', NULL, 0, 'Bài viết Sidebar trái', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(52, 4, 47, NULL, NULL, '', NULL, 0, 'Bài viết Full Width', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(53, 4, 47, NULL, NULL, '', NULL, 0, 'Bài viết with kèm sản phẩm', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(54, 4, 0, 6, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Liên hệ', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(55, 5, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Dành cho nam', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(56, 5, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Dành cho nữ', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(57, 5, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Phụ kiện', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(58, 5, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Giày dép', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(59, 5, 0, 5, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Denim', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(60, 5, 0, 6, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Quần áo', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(61, 6, 0, 6, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Liên hệ', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(62, 6, 0, 8, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Về chúng tôi', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(63, 6, 0, 9, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Điều khoản & quy định', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(64, 6, 0, 10, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Chính sách đổi trả', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(65, 6, 0, 11, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Chính sách vận chuyển', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(66, 6, 0, 12, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Chính sách bảo mật', NULL, '_self', 0, '2023-10-02 00:43:17', '2023-10-02 00:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'icon', '[\"far fa-star\"]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(2, 'icon', '[\"wowy-font-cpu\"]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(3, 'icon', '[\"wowy-font-tshirt\"]', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(4, 'icon', '[\"wowy-font-desktop\"]', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(5, 'icon', '[\"wowy-font-home\"]', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(6, 'icon', '[\"wowy-font-dress\"]', 18, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(7, 'icon', '[\"wowy-font-diamond\"]', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(8, 'icon', '[\"far fa-microchip\"]', 20, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(9, 'icon', '[\"wowy-font-smartphone\"]', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(10, 'icon', '[\"wowy-font-teddy-bear\"]', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(11, 'icon', '[\"wowy-font-kite\"]', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(12, 'icon', '[\"far fa-book\"]', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(13, 'icon', '[\"far fa-car\"]', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(14, 'icon', '[\"wowy-font-home\"]', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(15, 'layout', '[\"product-right-sidebar\"]', 1, 'Botble\\Ecommerce\\Models\\Product', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(16, 'layout', '[\"product-left-sidebar\"]', 2, 'Botble\\Ecommerce\\Models\\Product', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(17, 'layout', '[\"product-full-width\"]', 3, 'Botble\\Ecommerce\\Models\\Product', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(18, 'subtitle', '[\"Limited quantities.\"]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-10-02 00:43:07', '2023-10-02 00:43:07'),
(19, 'image', '[\"flash-sales\\/1.jpg\"]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-10-02 00:43:07', '2023-10-02 00:43:07'),
(20, 'subtitle', '[\"Computers & Laptop\"]', 2, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-10-02 00:43:07', '2023-10-02 00:43:07'),
(21, 'image', '[\"flash-sales\\/2.jpg\"]', 2, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-10-02 00:43:07', '2023-10-02 00:43:07'),
(22, 'vi_subtitle', '[\"Gi\\u1edbi h\\u1ea1n s\\u1ed1 l\\u01b0\\u1ee3ng\"]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-10-02 00:43:07', '2023-10-02 00:43:07'),
(23, 'vi_subtitle', '[\"M\\u00e1y t\\u00ednh b\\u00e0n & Laptop\"]', 2, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-10-02 00:43:07', '2023-10-02 00:43:07'),
(24, 'button_text', '[\"Shop now\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(25, 'subtitle', '[\"Trade-In Offer\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(26, 'highlight_text', '[\"On All Products\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(27, 'button_text', '[\"Discover now\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(28, 'subtitle', '[\"Tech Promotions\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(29, 'highlight_text', '[\"Great Collection\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(30, 'button_text', '[\"Shop now\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(31, 'subtitle', '[\"Upcoming Offer\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(32, 'highlight_text', '[\"Manufacturer\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(33, 'simple_slider_style', '[\"style-2\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(34, 'button_text', '[\"Shop now\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(35, 'subtitle', '[\"Trade-In Offer\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(36, 'highlight_text', '[\"On All Products\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(37, 'button_text', '[\"Discover now\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(38, 'subtitle', '[\"Tech Promotions\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(39, 'highlight_text', '[\"Great Collection\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(40, 'button_text', '[\"Shop now\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(41, 'subtitle', '[\"Upcoming Offer\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(42, 'highlight_text', '[\"Manufacturer\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(43, 'simple_slider_style', '[\"style-3\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(44, 'button_text', '[\"Shop now\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(45, 'subtitle', '[\"Trade-In Offer\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(46, 'highlight_text', '[\"On All Products\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(47, 'button_text', '[\"Discover now\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(48, 'subtitle', '[\"Tech Promotions\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(49, 'highlight_text', '[\"Great Collection\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(50, 'simple_slider_style', '[\"style-4\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(51, 'button_text', '[\"Shop now\"]', 9, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(52, 'subtitle', '[\"Trade-In Offer\"]', 9, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(53, 'highlight_text', '[\"On All Products\"]', 9, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(54, 'button_text', '[\"Discover now\"]', 10, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(55, 'subtitle', '[\"Tech Promotions\"]', 10, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(56, 'highlight_text', '[\"Great Collection\"]', 10, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(57, 'button_text', '[\"Shop now\"]', 11, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(58, 'subtitle', '[\"Upcoming Offer\"]', 11, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(59, 'highlight_text', '[\"Manufacturer\"]', 11, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(60, 'button_text', '[\"Mua ngay\"]', 12, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(61, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i\"]', 12, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(62, 'highlight_text', '[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]', 12, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(63, 'button_text', '[\"Kh\\u00e1m ph\\u00e1 ngay\"]', 13, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(64, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]', 13, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(65, 'highlight_text', '[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]', 13, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(66, 'button_text', '[\"Mua ngay\"]', 14, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(67, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]', 14, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(68, 'highlight_text', '[\"Nh\\u00e0 cung c\\u1ea5p\"]', 14, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(69, 'simple_slider_style', '[\"style-2\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(70, 'button_text', '[\"Mua ngay\"]', 15, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(71, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i\"]', 15, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(72, 'highlight_text', '[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]', 15, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(73, 'button_text', '[\"Kh\\u00e1m ph\\u00e1 ngay\"]', 16, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(74, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]', 16, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(75, 'highlight_text', '[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]', 16, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(76, 'button_text', '[\"Mua ngay\"]', 17, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(77, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]', 17, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(78, 'highlight_text', '[\"Nh\\u00e0 cung c\\u1ea5p\"]', 17, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(79, 'simple_slider_style', '[\"style-3\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(80, 'button_text', '[\"Mua ngay\"]', 18, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(81, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i\"]', 18, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(82, 'highlight_text', '[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]', 18, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(83, 'button_text', '[\"Kh\\u00e1m ph\\u00e1 ngay\"]', 19, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(84, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]', 19, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(85, 'highlight_text', '[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]', 19, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(86, 'simple_slider_style', '[\"style-4\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(87, 'button_text', '[\"Mua ngay\"]', 20, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(88, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i\"]', 20, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(89, 'highlight_text', '[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]', 20, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(90, 'button_text', '[\"Kh\\u00e1m ph\\u00e1 ngay\"]', 21, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(91, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]', 21, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(92, 'highlight_text', '[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]', 21, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(93, 'button_text', '[\"Mua ngay\"]', 22, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(94, 'subtitle', '[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]', 22, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(95, 'highlight_text', '[\"Nh\\u00e0 cung c\\u1ea5p\"]', 22, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(96, 'layout', '[\"blog-right-sidebar\"]', 1, 'Botble\\Blog\\Models\\Post', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(97, 'layout', '[\"blog-left-sidebar\"]', 2, 'Botble\\Blog\\Models\\Post', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(98, 'layout', '[\"blog-full-width\"]', 3, 'Botble\\Blog\\Models\\Post', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(99, 'layout', '[\"blog-full-width\"]', 4, 'Botble\\Blog\\Models\\Post', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(100, 'layout', '[\"blog-right-sidebar\"]', 12, 'Botble\\Blog\\Models\\Post', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(101, 'layout', '[\"blog-left-sidebar\"]', 13, 'Botble\\Blog\\Models\\Post', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(102, 'layout', '[\"blog-full-width\"]', 14, 'Botble\\Blog\\Models\\Post', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(103, 'layout', '[\"blog-full-width\"]', 15, 'Botble\\Blog\\Models\\Post', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(104, 'header_style', '[\"header-style-2\"]', 2, 'Botble\\Page\\Models\\Page', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(105, 'expanding_product_categories_on_the_homepage', '[\"yes\"]', 2, 'Botble\\Page\\Models\\Page', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(106, 'header_style', '[\"header-style-3\"]', 3, 'Botble\\Page\\Models\\Page', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(107, 'header_style', '[\"header-style-4\"]', 4, 'Botble\\Page\\Models\\Page', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(108, 'header_style', '[\"header-style-2\"]', 15, 'Botble\\Page\\Models\\Page', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(109, 'expanding_product_categories_on_the_homepage', '[\"yes\"]', 15, 'Botble\\Page\\Models\\Page', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(110, 'header_style', '[\"header-style-3\"]', 16, 'Botble\\Page\\Models\\Page', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(111, 'header_style', '[\"header-style-4\"]', 17, 'Botble\\Page\\Models\\Page', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(112, 'button_text', '[\"Shop now\"]', 1, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(113, 'subtitle', '[\"Save 20% on\\niPhone 12\"]', 1, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(114, 'button_text', '[\"Shop now\"]', 2, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(115, 'subtitle', '[\"Great Camera\\nCollection\"]', 2, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(116, 'button_text', '[\"Shop now\"]', 3, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(117, 'subtitle', '[\"Shop Today\\u2019s\\nDeals & Offers\"]', 3, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(118, 'button_text', '[\"Shop now\"]', 4, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(119, 'subtitle', '[\"Save 17% on\\nAssus Laptop\"]', 4, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(120, 'button_text', '[\"Shop now\"]', 5, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(121, 'subtitle', '[\"Save 20% on\\niPhone 12\"]', 5, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(122, 'button_text', '[\"Learn more\"]', 6, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(123, 'subtitle', '[\"We\'re an Apple\\nAuthorised Service Provider\"]', 6, 'Botble\\Ads\\Models\\Ads', '2023-10-02 00:43:17', '2023-10-02 00:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_10_230148_create_acl_tables', 1),
(6, '2016_06_14_230857_create_menus_table', 1),
(7, '2016_06_28_221418_create_pages_table', 1),
(8, '2016_10_05_074239_create_setting_table', 1),
(9, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(10, '2016_12_16_084601_create_widgets_table', 1),
(11, '2017_05_09_070343_create_media_tables', 1),
(12, '2017_11_03_070450_create_slug_table', 1),
(13, '2019_01_05_053554_create_jobs_table', 1),
(14, '2019_05_03_000001_create_customer_columns', 1),
(15, '2019_05_03_000002_create_subscriptions_table', 1),
(16, '2019_05_03_000003_create_subscription_items_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2021_07_18_101839_fix_old_theme_options', 1),
(19, '2021_08_02_084121_fix_old_shortcode', 1),
(20, '2020_11_18_150916_ads_create_ads_table', 2),
(21, '2015_06_29_025744_create_audit_history', 3),
(22, '2015_06_18_033822_create_blog_table', 4),
(23, '2021_02_16_092633_remove_default_value_for_author_type', 4),
(24, '2016_06_17_091537_create_contacts_table', 5),
(25, '2020_03_05_041139_create_ecommerce_tables', 6),
(26, '2020_09_22_135635_update_taxes_table', 6),
(27, '2020_09_29_101006_add_views_into_ec_products_table', 6),
(28, '2020_10_01_152311_make_column_image_in_product_attributes_table_nullable', 6),
(29, '2020_10_06_073439_improve_ecommerce_database', 6),
(30, '2020_11_01_040415_update_table_ec_order_addresses', 6),
(31, '2020_11_04_091510_make_column_phone_in_order_addresses_nullable', 6),
(32, '2020_11_30_015801_update_table_ec_product_categories', 6),
(33, '2021_01_01_044147_ecommerce_create_flash_sale_table', 6),
(34, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 6),
(35, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 6),
(36, '2021_02_18_073505_update_table_ec_reviews', 6),
(37, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 6),
(38, '2021_03_10_025153_change_column_tax_amount', 6),
(39, '2021_03_20_033103_add_column_availability_to_table_ec_products', 6),
(40, '2021_04_28_074008_ecommerce_create_product_label_table', 6),
(41, '2021_05_31_173037_ecommerce_create_ec_products_translations', 6),
(42, '2021_06_28_153141_correct_slugs_data', 6),
(43, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 6),
(44, '2016_10_03_032336_create_languages_table', 7),
(45, '2017_10_24_154832_create_newsletter_table', 8),
(46, '2017_05_18_080441_create_payment_tables', 9),
(47, '2021_03_27_144913_add_customer_type_into_table_payments', 9),
(48, '2021_05_24_034720_make_column_currency_nullable', 9),
(49, '2021_08_09_161302_add_metadata_column_to_payments_table', 9),
(50, '2017_07_11_140018_create_simple_slider_table', 10),
(51, '2016_10_07_193005_create_translations_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[simple-slider key=\"home-slider-1\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(2, 'Homepage 2', '<div>[simple-slider key=\"home-slider-2\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(3, 'Homepage 3', '<div>[simple-slider key=\"home-slider-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\"][/simple-slider]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(4, 'Homepage 4', '<div>[simple-slider key=\"home-slider-4\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(5, 'Blog', '<p>---</p>', 1, NULL, 'blog-right-sidebar', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(6, 'Contact', '<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(7, 'About us', '<p>I got up and picking the daisies, when suddenly a footman in livery, with a melancholy way, being quite unable to move. She soon got it out loud. \'Thinking again?\' the Duchess said after a pause: \'the reason is, that I\'m doubtful about the whiting!\' \'Oh, as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course you don\'t!\' the Hatter said, tossing his head sadly. \'Do I look like it?\' he said. \'Fifteenth,\' said the Mock Turtle said: \'advance twice, set to work, and.</p><p>You gave us three or more; They all made of solid glass; there was not a regular rule: you invented it just missed her. Alice caught the flamingo and brought it back, the fight was over, and both footmen, Alice noticed, had powdered hair that WOULD always get into her eyes; and once again the tiny hands were clasped upon her knee, and looking anxiously about as curious as it went. So she set the little crocodile Improve his shining tail, And pour the waters of the house, and found in it about.</p><p>Alice, who was a little faster?\" said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen merely remarking as it went, as if a fish came to ME, and told me you had been to her, so she began nibbling at the stick, running a very good height indeed!\' said the Footman. \'That\'s the first figure,\' said the Gryphon. \'--you advance twice--\' \'Each with a smile. There was a little pattering of feet in the schoolroom, and though this was not a regular rule: you invented it just missed her.</p><p>First, she dreamed of little birds and beasts, as well to say \'Drink me,\' but the Mouse was swimming away from her as she left her, leaning her head to keep back the wandering hair that curled all over their shoulders, that all the rats and--oh dear!\' cried Alice (she was so long since she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the jelly-fish out of sight; and an Eaglet, and.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(8, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(9, 'Terms & Conditions', '<p>She waited for some way, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can say.\' This was not going to leave off this minute!\' She generally gave herself very good height indeed!\' said Alice, feeling very glad to find that she was nine feet high, and she drew herself up on to the dance. Will you, won\'t you, will you join the dance? Will you, won\'t you, will you, won\'t you join the dance?\"\' \'Thank you, it\'s a set of verses.\' \'Are they in the air: it puzzled her too.</p><p>For anything tougher than suet; Yet you finished the first position in dancing.\' Alice said; \'there\'s a large ring, with the strange creatures of her head struck against the ceiling, and had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it advisable--\"\' \'Found WHAT?\' said the King. On this the White Rabbit interrupted: \'UNimportant, your Majesty.</p><p>Mock Turtle. \'She can\'t explain it,\' said the Mouse, who was reading the list of the jurymen. \'It isn\'t a letter, after all: it\'s a very little! Besides, SHE\'S she, and I\'m sure I can\'t get out of his Normans--\" How are you getting on now, my dear?\' it continued, turning to Alice, that she was a good many voices all talking together: she made it out loud. \'Thinking again?\' the Duchess asked, with another dig of her hedgehog. The hedgehog was engaged in a low trembling voice, \'--and I hadn\'t.</p><p>Queen. \'Well, I should think!\' (Dinah was the first figure!\' said the Hatter. He came in with the name of nearly everything there. \'That\'s the judge,\' she said this she looked up and down looking for the White Rabbit hurried by--the frightened Mouse splashed his way through the little dears came jumping merrily along hand in hand, in couples: they were mine before. If I or she should push the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(10, 'Returns & Exchanges', '<p>There was a dispute going on between the executioner, the King, and the March Hare interrupted, yawning. \'I\'m getting tired of being all alone here!\' As she said to Alice, and she tried the roots of trees, and I\'ve tried to fancy to herself \'This is Bill,\' she gave one sharp kick, and waited to see if she were saying lessons, and began staring at the Hatter, and, just as well say,\' added the Gryphon, and the moon, and memory, and muchness--you know you say pig, or fig?\' said the Duchess: you\'d.</p><p>I\'m I, and--oh dear, how puzzling it all seemed quite natural to Alice again. \'No, I didn\'t,\' said Alice: \'I don\'t know what they\'re about!\' \'Read them,\' said the Cat; and this was her dream:-- First, she dreamed of little pebbles came rattling in at all?\' said the Hatter: \'I\'m on the floor: in another moment that it is!\' \'Why should it?\' muttered the Hatter. He came in with the Queen, \'and take this child away with me,\' thought Alice, \'it\'ll never do to hold it. As soon as she had got so much.</p><p>English!\' said the Duchess, \'chop off her unfortunate guests to execution--once more the shriek of the edge of the song. \'What trial is it?\' Alice panted as she went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she remembered having seen in her hands, and she looked up and rubbed its eyes: then it chuckled. \'What fun!\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you finished the first minute or two to think that will be the best.</p><p>There was a paper label, with the tea,\' the Hatter went on planning to herself how this same little sister of hers that you weren\'t to talk about trouble!\' said the Pigeon went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said one of the other paw, \'lives a Hatter: and in his confusion he bit a large pool all round her head. \'If I eat or drink under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(11, 'Shipping & Delivery', '<p>Hatter. \'Does YOUR watch tell you his history,\' As they walked off together. Alice laughed so much contradicted in her haste, she had never before seen a cat without a cat! It\'s the most curious thing I ever was at the picture.) \'Up, lazy thing!\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you finished the goose, with the end of the day; and this was the fan she was walking by the carrier,\' she thought; \'and how funny it\'ll seem to dry me at home! Why, I do.</p><p>As she said these words her foot slipped, and in his throat,\' said the Caterpillar. Alice said nothing; she had sat down again in a trembling voice, \'--and I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, as we were. My notion was that it was quite surprised to find that the way I want to stay in here any longer!\' She waited for a rabbit! I suppose it were nine o\'clock in the air: it puzzled her very much pleased at having found out that the pebbles were.</p><p>Let me see--how IS it to the shore, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! When I used to it in less than no time she\'d have everybody executed, all round. \'But she must have prizes.\' \'But who has won?\' This question the Dodo replied very gravely. \'What else have you executed on the breeze that followed them, the melancholy words:-- \'Soo--oop of the house, \"Let us both go to law: I will prosecute.</p><p>Alice. \'What sort of use in talking to herself, \'it would be very likely it can talk: at any rate: go and get ready for your walk!\" \"Coming in a very difficult question. However, at last turned sulky, and would only say, \'I am older than I am so VERY remarkable in that; nor did Alice think it was,\' said the Mouse, in a court of justice before, but she gained courage as she went on, very much of a muchness?\' \'Really, now you ask me,\' said Alice, always ready to make out that she knew that were.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(12, 'Privacy Policy', '<p>Will you, won\'t you, will you join the dance. Would not, could not, could not stand, and she tried hard to whistle to it; but she did not answer, so Alice went on muttering over the edge of the court, she said this, she noticed that they had settled down again very sadly and quietly, and looked anxiously round, to make the arches. The chief difficulty Alice found at first was moderate. But the insolence of his tail. \'As if I would talk on such a nice little dog near our house I should have.</p><p>I\'ll tell you my adventures--beginning from this side of the room. The cook threw a frying-pan after her as hard as he spoke. \'A cat may look at a reasonable pace,\' said the March Hare said to herself, \'whenever I eat or drink something or other; but the Dormouse turned out, and, by the hand, it hurried off, without waiting for turns, quarrelling all the jurymen on to her usual height. It was all finished, the Owl, as a lark, And will talk in contemptuous tones of her childhood: and how she.</p><p>So she began nibbling at the Queen, who was passing at the Mouse\'s tail; \'but why do you know why it\'s called a whiting?\' \'I never was so long that they had any dispute with the dream of Wonderland of long ago: and how she would keep, through all her fancy, that: he hasn\'t got no business there, at any rate,\' said Alice: \'three inches is such a capital one for catching mice you can\'t help that,\' said the March Hare, \'that \"I like what I say--that\'s the same thing as \"I eat what I could not.</p><p>Why, I do it again and again.\' \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet I don\'t know,\' he went on, spreading out the words: \'Where\'s the other ladder?--Why, I hadn\'t begun my tea--not above a week or so--and what with the Queen,\' and she sat on, with closed eyes, and half believed herself in the flurry of the birds and animals that had slipped in like herself. \'Would it be of very little way out of the Lobster Quadrille, that she was in.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(13, 'Blog Left Sidebar', '<p>[blog-posts paginate=\"12\"][/blog-posts]</p>', 1, NULL, 'blog-left-sidebar', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(14, 'Trang chủ', '<div>[simple-slider key=\"slider-trang-chu-1\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(15, 'Trang chủ 2', '<div>[simple-slider key=\"slider-trang-chu-2\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(16, 'Trang chủ 3', '<div>[simple-slider key=\"slider-trang-chu-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\"][/simple-slider]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(17, 'Trang chủ 4', '<div>[simple-slider key=\"slider-trang-chu-4\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"17\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(18, 'Tin tức', '<p>---</p>', 1, NULL, 'blog-right-sidebar', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(19, 'Liên hệ', '<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(20, 'Về chúng tôi', '<p>Gryphon: and it sat for a baby: altogether Alice did not like to go down the hall. After a while, finding that nothing more happened, she decided on going into the wood. \'If it had fallen into the garden door. Poor Alice! It was the first sentence in her lessons in here? Why, there\'s hardly room for YOU, and no more to be ashamed of yourself for asking such a very interesting dance to watch,\' said Alice, a little more conversation with her head!\' Those whom she sentenced were taken into.</p><p>Alice; \'living at the end.\' \'If you can\'t swim, can you?\' he added, turning to Alice severely. \'What are you getting on now, my dear?\' it continued, turning to Alice: he had come to an end! \'I wonder how many miles I\'ve fallen by this time?\' she said aloud. \'I shall sit here,\' he said, turning to the garden with one eye; \'I seem to put the hookah out of the thing Mock Turtle went on, yawning and rubbing its eyes, for it flashed across her mind that she still held the pieces of mushroom in her.</p><p>Alice started to her to begin.\' He looked at Alice, as she picked up a little quicker. \'What a number of bathing machines in the distance. \'And yet what a long hookah, and taking not the same, the next witness.\' And he got up in great fear lest she should meet the real Mary Ann, and be turned out of the other was sitting between them, fast asleep, and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice severely. \'What are they made of?\' Alice asked in a very.</p><p>Alice looked all round the refreshments!\' But there seemed to be no doubt that it felt quite unhappy at the March Hare,) \'--it was at in all directions, \'just like a sky-rocket!\' \'So you think you could see it quite plainly through the door, she walked up towards it rather timidly, as she could, for her to begin.\' For, you see, Miss, this here ought to eat or drink something or other; but the Rabbit began. Alice gave a look askance-- Said he thanked the whiting kindly, but he could think of.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(21, 'Chính sách cookie', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(22, 'Điều kiện và điều khoản', '<p>Mock Turtle interrupted, \'if you don\'t know where Dinn may be,\' said the Duchess: \'flamingoes and mustard both bite. And the executioner went off like an honest man.\' There was not going to do this, so that altogether, for the garden!\' and she jumped up on to himself in an undertone to the Queen, the royal children, and make out which were the two creatures got so much already, that it seemed quite natural); but when the Rabbit was no one listening, this time, as it didn\'t much matter which.</p><p>YOU are, first.\' \'Why?\' said the Duchess, \'as pigs have to turn into a tree. \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' She had quite forgotten the little crocodile Improve his shining tail, And pour the waters of the March Hare. Alice sighed wearily. \'I think you can find it.\' And she tried to look through into the garden, and marked, with one of the miserable Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a curious plan!\'.</p><p>Alice thought she might find another key on it, and burning with curiosity, she ran across the field after it, \'Mouse dear! Do come back again, and we put a white one in by mistake; and if I fell off the fire, stirring a large crowd collected round it: there were ten of them, with her head!\' the Queen was silent. The Dormouse shook itself, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on in a low voice, \'Why the fact is, you know. So you see, because some of.</p><p>Alice like the largest telescope that ever was! Good-bye, feet!\' (for when she went out, but it did not notice this last word with such a thing. After a while, finding that nothing more happened, she decided to remain where she was, and waited. When the Mouse was swimming away from her as she went nearer to watch them, and then nodded. \'It\'s no use in saying anything more till the Pigeon had finished. \'As if I chose,\' the Duchess said to herself, \'if one only knew the name again!\' \'I won\'t.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(23, 'Chính sách trả hàng', '<p>March Hare. \'Yes, please do!\' but the Gryphon as if she had made the whole party at once in the beautiful garden, among the party. Some of the jury wrote it down \'important,\' and some of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' \'I couldn\'t afford to learn it.\' said the King; \'and don\'t be particular--Here, Bill! catch hold of this pool? I am in the world! Oh, my dear Dinah! I wonder if I\'ve kept her waiting!\' Alice felt so desperate that she still held the.</p><p>I\'ve tried to curtsey as she could do, lying down with her head! Off--\' \'Nonsense!\' said Alice, a good character, But said I could not be denied, so she went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was just going to be, from one foot up the conversation dropped, and the Queen to play croquet with the Duchess, it had finished this short speech, they all moved off, and she ran off as hard as it was over at last: \'and I do it again and again.\' \'You are.</p><p>Alice. \'Come on, then,\' said the Mock Turtle. \'And how many hours a day is very confusing.\' \'It isn\'t,\' said the Gryphon: and Alice was more and more puzzled, but she had forgotten the Duchess sang the second verse of the well, and noticed that one of these cakes,\' she thought, \'till its ears have come, or at least one of the day; and this Alice thought over all she could do, lying down on the door and went back to my right size: the next witness!\' said the Caterpillar, just as well. The.</p><p>Dodo said, \'EVERYBODY has won, and all dripping wet, cross, and uncomfortable. The first thing she heard a little pattering of feet on the top of his teacup instead of onions.\' Seven flung down his face, as long as it turned round and swam slowly back again, and looking anxiously round to see you any more!\' And here poor Alice began to cry again, for really I\'m quite tired of being such a long silence after this, and after a few minutes, and began bowing to the three were all ornamented with.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(24, 'Chính sách vận chuyển', '<p>GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be getting home; the night-air doesn\'t suit my throat!\' and a large pool all round her, calling out in a very difficult question. However, at last it unfolded its arms, took the hookah into its eyes again, to see what the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting that she was ever to get her head on her spectacles, and began by producing from under his arm a great deal to come once a week: HE taught us.</p><p>And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the Gryphon. \'It all came different!\' Alice replied very politely, \'if I had not gone much farther before she had hurt the poor little thing grunted in reply (it had left off when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat went on, \'if you only kept on puzzling about it just grazed his nose, and broke off a.</p><p>First, because I\'m on the second thing is to France-- Then turn not pale, beloved snail, but come and join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, with oh, such long ringlets, and mine doesn\'t go in ringlets at all; however, she again heard a little shriek, and went on so long since she had gone through that day. \'That PROVES his guilt,\' said the Hatter. \'Stolen!\' the King exclaimed, turning to the fifth bend, I think?\' \'I had.</p><p>I will prosecute YOU.--Come, I\'ll take no denial; We must have been was not easy to know when the tide rises and sharks are around, His voice has a timid voice at her own mind (as well as pigs, and was in such a nice little dog near our house I should like to hear her try and say \"How doth the little--\"\' and she tried another question. \'What sort of a treacle-well--eh, stupid?\' \'But they were lying round the neck of the trees had a little shriek and a great thistle, to keep herself from being.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(25, 'Chính sách bảo mật', '<p>Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very humbly; \'I won\'t indeed!\' said Alice, (she had grown in the world am I? Ah, THAT\'S the great question certainly was, what? Alice looked at Alice, and her eyes anxiously fixed on it, (\'which certainly was not easy to take the hint; but the Rabbit coming to look for her, and said, \'So you did, old fellow!\' said the Mock Turtle had just begun to dream that she did not like to be executed for having cheated.</p><p>And then, turning to Alice: he had a pencil that squeaked. This of course, to begin at HIS time of life. The King\'s argument was, that anything that had a head unless there was the first to break the silence. \'What day of the Nile On every golden scale! \'How cheerfully he seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not particular as to go on with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\'.</p><p>Alice said nothing; she had gone through that day. \'A likely story indeed!\' said the Mouse. \'Of course,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Hatter; \'so I should be raving mad--at least not so mad as it is.\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice in a day is very confusing.\' \'It isn\'t,\' said the King; and as he spoke, \'we were trying--\' \'I see!\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'I must go by the whole party.</p><p>I can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Knave, \'I didn\'t mean it!\' pleaded poor Alice in a great deal to come upon them THIS size: why, I should like to be no sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, as she wandered about in a hurry that she was up to her that she ought not to lie down on one side, to look at them--\'I wish they\'d get the trial one way of expecting nothing but a pack of cards, after all. \"--SAID I.</p>', 1, NULL, 'default', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(26, 'Blog Sidebar Trái', '<p>[blog-posts paginate=\"12\"][/blog-posts]</p>', 1, NULL, 'blog-left-sidebar', 0, NULL, 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`, `metadata`) VALUES
(1, 'USD', 0, 'DWYIM6ARWN', 'cod', NULL, 1957.20, 1, 'pending', 'confirm', 5, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(2, 'USD', 0, 'E4G6WD2LBS', 'bank_transfer', NULL, 853.40, 2, 'pending', 'confirm', 8, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(3, 'USD', 0, 'B7GLCQ67PB', 'paypal', NULL, 647.70, 3, 'completed', 'confirm', 6, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(4, 'USD', 0, 'J9PDICFZLA', 'stripe', NULL, 785.20, 4, 'completed', 'confirm', 5, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(5, 'USD', 0, 'IL5DYJERTS', 'paypal', NULL, 228.60, 5, 'completed', 'confirm', 7, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(6, 'USD', 0, 'J3MFZTO538', 'cod', NULL, 1300.00, 6, 'pending', 'confirm', 4, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(7, 'USD', 0, '2AS8BVVLXF', 'bank_transfer', NULL, 1223.60, 7, 'pending', 'confirm', 2, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(8, 'USD', 0, 'Q6AQI9QL9M', 'razorpay', NULL, 1600.30, 8, 'completed', 'confirm', 9, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(9, 'USD', 0, 'CATDPNCGXS', 'bank_transfer', NULL, 390.40, 9, 'pending', 'confirm', 2, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(10, 'USD', 0, 'RJG9HOLKYA', 'sslcommerz', NULL, 493.20, 10, 'completed', 'confirm', 3, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(11, 'USD', 0, '7RIP9FOLRF', 'paystack', NULL, 258.50, 11, 'completed', 'confirm', 6, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(12, 'USD', 0, 'LFMAAC6JO6', 'sslcommerz', NULL, 889.50, 12, 'completed', 'confirm', 1, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(13, 'USD', 0, 'ETVMG1X8JX', 'stripe', NULL, 438.00, 13, 'completed', 'confirm', 6, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(14, 'USD', 0, 'E6GCZ0TJ6J', 'paypal', NULL, 946.30, 14, 'completed', 'confirm', 3, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(15, 'USD', 0, 'XMDMYP4RHD', 'stripe', NULL, 756.80, 15, 'completed', 'confirm', 3, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(16, 'USD', 0, 'HXFFS5804K', 'cod', NULL, 487.60, 16, 'pending', 'confirm', 9, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(17, 'USD', 0, 'KTRXJ74IUR', 'sslcommerz', NULL, 1600.30, 17, 'completed', 'confirm', 4, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(18, 'USD', 0, 'AF6EDIEZ7T', 'paystack', NULL, 980.30, 18, 'completed', 'confirm', 6, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(19, 'USD', 0, 'ZJELQPUYGI', 'cod', NULL, 977.30, 19, 'pending', 'confirm', 8, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(20, 'USD', 0, 'ZDSRGMMPYP', 'stripe', NULL, 1691.50, 20, 'completed', 'confirm', 3, NULL, NULL, '2023-10-02 00:43:08', '2023-10-02 00:43:08', 'Botble\\Ecommerce\\Models\\Customer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 2383, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(2, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 501, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(3, 'The Top 2020 Handbag Trends to Know', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 901, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1671, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(5, 'How to Care for Leather Bags', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 772, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 184, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(7, 'Essential Qualities of Highly Successful Music', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 891, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(8, '9 Things I Love About Shaving My Head', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 2254, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(9, 'Why Teamwork Really Makes The Dream Work', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 159, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(10, 'The World Caters to Average People', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.jpg', 2449, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(11, 'The litigants on the screen are not actors', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 2406, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(12, '4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 212, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(13, 'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 2122, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(14, 'Xu hướng túi xách hàng đầu năm 2020 cần biết', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 1788, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(15, 'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1253, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(16, 'Cách Chăm sóc Túi Da', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 585, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(17, 'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1506, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(18, 'Những phẩm chất cần thiết của âm nhạc thành công cao', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1378, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(19, '9 điều tôi thích khi cạo đầu', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 199, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(20, 'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 988, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(21, 'Thế giới phục vụ cho những người trung bình', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.jpg', 567, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(22, 'Các đương sự trên màn hình không phải là diễn viên', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1221, NULL, '2023-10-02 00:43:15', '2023-10-02 00:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 2, 2),
(4, 3, 2),
(5, 2, 3),
(6, 4, 3),
(7, 2, 4),
(8, 4, 4),
(9, 2, 5),
(10, 3, 5),
(11, 2, 6),
(12, 4, 6),
(13, 2, 7),
(14, 4, 7),
(15, 2, 8),
(16, 3, 8),
(17, 1, 9),
(18, 4, 9),
(19, 1, 10),
(20, 4, 10),
(21, 2, 11),
(22, 4, 11),
(23, 5, 12),
(24, 7, 12),
(25, 6, 13),
(26, 8, 13),
(27, 5, 14),
(28, 8, 14),
(29, 5, 15),
(30, 7, 15),
(31, 6, 16),
(32, 7, 16),
(33, 5, 17),
(34, 7, 17),
(35, 6, 18),
(36, 7, 18),
(37, 6, 19),
(38, 7, 19),
(39, 5, 20),
(40, 7, 20),
(41, 5, 21),
(42, 8, 21),
(43, 5, 22),
(44, 8, 22);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6),
(31, 1, 7),
(32, 2, 7),
(33, 3, 7),
(34, 4, 7),
(35, 5, 7),
(36, 1, 8),
(37, 2, 8),
(38, 3, 8),
(39, 4, 8),
(40, 5, 8),
(41, 1, 9),
(42, 2, 9),
(43, 3, 9),
(44, 4, 9),
(45, 5, 9),
(46, 1, 10),
(47, 2, 10),
(48, 3, 10),
(49, 4, 10),
(50, 5, 10),
(51, 1, 11),
(52, 2, 11),
(53, 3, 11),
(54, 4, 11),
(55, 5, 11),
(56, 6, 12),
(57, 7, 12),
(58, 8, 12),
(59, 9, 12),
(60, 10, 12),
(61, 6, 13),
(62, 7, 13),
(63, 8, 13),
(64, 9, 13),
(65, 10, 13),
(66, 6, 14),
(67, 7, 14),
(68, 8, 14),
(69, 9, 14),
(70, 10, 14),
(71, 6, 15),
(72, 7, 15),
(73, 8, 15),
(74, 9, 15),
(75, 10, 15),
(76, 6, 16),
(77, 7, 16),
(78, 8, 16),
(79, 9, 16),
(80, 10, 16),
(81, 6, 17),
(82, 7, 17),
(83, 8, 17),
(84, 9, 17),
(85, 10, 17),
(86, 6, 18),
(87, 7, 18),
(88, 8, 18),
(89, 9, 18),
(90, 10, 18),
(91, 6, 19),
(92, 7, 19),
(93, 8, 19),
(94, 9, 19),
(95, 10, 19),
(96, 6, 20),
(97, 7, 20),
(98, 8, 20),
(99, 9, 20),
(100, 10, 20),
(101, 6, 21),
(102, 7, 21),
(103, 8, 21),
(104, 9, 21),
(105, 10, 21),
(106, 6, 22),
(107, 7, 22),
(108, 8, 22),
(109, 9, 22),
(110, 10, 22);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"language-advanced\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\"]', NULL, NULL),
(4, 'language_hide_default', '1', NULL, NULL),
(5, 'language_switcher_display', 'dropdown', NULL, NULL),
(6, 'language_display', 'all', NULL, NULL),
(7, 'language_hide_languages', '[]', NULL, NULL),
(8, 'ecommerce_store_name', 'Wowy', NULL, NULL),
(9, 'ecommerce_store_phone', '18006268', NULL, NULL),
(10, 'ecommerce_store_address', 'North Link Building, 10 Admiralty Street', NULL, NULL),
(11, 'ecommerce_store_state', 'Singapore', NULL, NULL),
(12, 'ecommerce_store_city', 'Singapore', NULL, NULL),
(13, 'ecommerce_store_country', 'SG', NULL, NULL),
(14, 'media_random_hash', 'c44fad8b714d0e54f9c3430293939ce5', NULL, NULL),
(15, 'permalink-botble-blog-models-post', 'blog', NULL, NULL),
(16, 'permalink-botble-blog-models-category', 'blog', NULL, NULL),
(17, 'permalink-botble-blog-models-tag', 'tag', NULL, NULL),
(18, 'payment_cod_status', '1', NULL, NULL),
(19, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, NULL),
(20, 'payment_bank_transfer_status', '1', NULL, NULL),
(21, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 1990 404 19.', NULL, NULL),
(22, 'plugins_ecommerce_customer_new_order_status', '0', NULL, NULL),
(23, 'plugins_ecommerce_admin_new_order_status', '0', NULL, NULL),
(24, 'sale_popup_display_pages', '[\"public.index\"]', NULL, NULL),
(25, 'theme', 'wowy', NULL, NULL),
(26, 'admin_favicon', 'general/favicon.png', NULL, NULL),
(27, 'admin_logo', 'general/logo-light.png', NULL, NULL),
(28, 'theme-wowy-site_title', 'Wowy - Laravel Multipurpose eCommerce Script', NULL, NULL),
(29, 'theme-wowy-copyright', 'Copyright © 2021 Wowy all rights reserved. Powered by Botble.', NULL, NULL),
(30, 'theme-wowy-favicon', 'general/favicon.png', NULL, NULL),
(31, 'theme-wowy-logo', 'general/logo.png', NULL, NULL),
(32, 'theme-wowy-logo_light', 'general/logo-light.png', NULL, NULL),
(33, 'theme-wowy-seo_og_image', 'general/open-graph-image.png', NULL, NULL),
(34, 'theme-wowy-address', '562 Wellington Road, Street 32, San Francisco', NULL, NULL),
(35, 'theme-wowy-hotline', '1900 - 888', NULL, NULL),
(36, 'theme-wowy-phone', '+01 2222 365 /(+91) 01 2345 6789', NULL, NULL),
(37, 'theme-wowy-working_hours', '10:00 - 18:00, Mon - Sat', NULL, NULL),
(38, 'theme-wowy-homepage_id', '1', NULL, NULL),
(39, 'theme-wowy-blog_page_id', '5', NULL, NULL),
(40, 'theme-wowy-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(41, 'theme-wowy-cookie_consent_learn_more_url', 'http://wowy1.test/cookie-policy', NULL, NULL),
(42, 'theme-wowy-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(43, 'theme-wowy-payment_methods', 'general/payment-methods.png', NULL, NULL),
(44, 'theme-wowy-number_of_cross_sale_products_in_cart_page', '4', NULL, NULL),
(45, 'theme-wowy-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-color\",\"value\":\"#3b5999\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-color\",\"value\":\"#55ACF9\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-color\",\"value\":\"#E1306C\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"fab fa-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"},{\"key\":\"social-color\",\"value\":\"#007bb6\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"fab fa-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"},{\"key\":\"social-color\",\"value\":\"#cb2027\"}]]', NULL, NULL),
(46, 'theme-wowy-header_messages', '[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Supper Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]', NULL, NULL),
(47, 'theme-wowy-contact_info_boxes', '[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]', NULL, NULL),
(48, 'theme-wowy-vi-font_text', 'Roboto Condensed', NULL, NULL),
(49, 'theme-wowy-vi-copyright', 'Bản quyền © 2021 Wowy tất cả quyền đã được bảo hộ. Phát triển bởi Botble.', NULL, NULL),
(50, 'theme-wowy-vi-working_hours', '10:00 - 18:00, Thứ Hai - Thứ Bảy', NULL, NULL),
(51, 'theme-wowy-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(52, 'theme-wowy-vi-cookie_consent_learn_more_url', 'http://wowy1.test/cookie-policy', NULL, NULL),
(53, 'theme-wowy-vi-cookie_consent_learn_more_text', 'Chính sách cookie', NULL, NULL),
(54, 'theme-wowy-vi-homepage_id', '14', NULL, NULL),
(55, 'theme-wowy-vi-blog_page_id', '18', NULL, NULL),
(56, 'theme-wowy-vi-header_messages', '[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]', NULL, NULL),
(57, 'theme-wowy-vi-contact_info_boxes', '[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider 1', 'home-slider-1', NULL, 'published', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(2, 'Home slider 2', 'home-slider-2', NULL, 'published', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(3, 'Home slider 3', 'home-slider-3', NULL, 'published', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(4, 'Home slider 4', 'home-slider-4', NULL, 'published', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(5, 'Slider trang chủ 1', 'slider-trang-chu-1', NULL, 'published', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(6, 'Slider trang chủ 2', 'slider-trang-chu-2', NULL, 'published', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(7, 'Slider trang chủ 3', 'slider-trang-chu-3', NULL, 'published', '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(8, 'Slider trang chủ 4', 'slider-trang-chu-4', NULL, 'published', '2023-10-02 00:43:12', '2023-10-02 00:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint UNSIGNED NOT NULL,
  `simple_slider_id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Value Deals', 'sliders/1-1.png', '/products', 'Save more with coupons & up to 70% off', 1, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(2, 1, 'Tech Trending', 'sliders/1-2.png', '/products', 'Save more with coupons & up to 20% off', 2, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(3, 1, 'Big Deals From', 'sliders/1-3.png', '/products', 'Headphone, Gaming Laptop, PC and more...', 3, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(4, 2, 'Super Value Deals', 'sliders/2-1.png', '/products', 'Save more with coupons & up to 70% off', 1, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(5, 2, 'Tech Trending', 'sliders/2-2.png', '/products', 'Save more with coupons & up to 20% off', 2, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(6, 2, 'Big Deals From', 'sliders/2-3.png', '/products', 'Headphone, Gaming Laptop, PC and more...', 3, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(7, 3, 'Super Value Deals', 'sliders/3-1.png', '/products', 'Save more with coupons & up to 70% off', 1, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(8, 3, 'Tech Trending', 'sliders/3-2.png', '/products', 'Save more with coupons & up to 20% off', 2, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(9, 4, 'Super Value Deals', 'sliders/4-1.png', '/products', 'Save more with coupons & up to 70% off', 1, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(10, 4, 'Tech Trending', 'sliders/4-2.png', '/products', 'Save more with coupons & up to 20% off', 2, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(11, 4, 'Big Deals From', 'sliders/4-3.png', '/products', 'Headphone, Gaming Laptop, PC and more...', 3, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(12, 5, 'Giảm giá đặc biệt', 'sliders/1-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(13, 5, 'Công nghệ nổi bật', 'sliders/1-2.png', '/products', 'Tiết kiệm hơn với mã giảm giá 20%', 2, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(14, 5, 'Giảm giá lớn nhất từ', 'sliders/1-3.png', '/products', 'Tai nghe, Máy tính chơi game, PC và hơn nữa...', 3, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(15, 6, 'Giảm giá đặc biệt', 'sliders/2-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(16, 6, 'Công nghệ nổi bật', 'sliders/2-2.png', '/products', 'Tiết kiệm hơn với mã giảm giá 20%', 2, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(17, 6, 'Giảm giá lớn nhất từ', 'sliders/2-3.png', '/products', 'Tai nghe, Máy tính chơi game, PC và hơn nữa...', 3, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(18, 7, 'Giảm giá đặc biệt', 'sliders/3-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(19, 7, 'Công nghệ nổi bật', 'sliders/3-2.png', '/products', 'Tiết kiệm hơn với mã giảm giá 20%', 2, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(20, 8, 'Giảm giá đặc biệt', 'sliders/4-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(21, 8, 'Công nghệ nổi bật', 'sliders/4-2.png', '/products', 'Tiết kiệm hơn với mã giảm giá 20%', 2, '2023-10-02 00:43:12', '2023-10-02 00:43:12'),
(22, 8, 'Giảm giá lớn nhất từ', 'sliders/4-3.png', '/products', 'Tai nghe, Máy tính chơi game, PC và hơn nữa...', 3, '2023-10-02 00:43:12', '2023-10-02 00:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'perxsion', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(2, 'hiching', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(3, 'kepslo', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(4, 'groneba', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(5, 'babian', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(6, 'valorant', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(7, 'pure', 7, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-10-02 00:42:47', '2023-10-02 00:42:47'),
(8, 'hot-promotions', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(9, 'electronics', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(10, 'home-audio-theaters', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(11, 'tv-videos', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(12, 'camera-photos-videos', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(13, 'cellphones-accessories', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(14, 'headphones', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(15, 'videos-games', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(16, 'wireless-speakers', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(17, 'office-electronic', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(18, 'clothing', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(19, 'computers', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(20, 'computer-tablets', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(21, 'laptop', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(22, 'monitors', 15, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(23, 'computer-components', 16, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(24, 'home-kitchen', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(25, 'health-beauty', 18, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(26, 'jewelry-watch', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(27, 'technology-toys', 20, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(28, 'drive-storages', 21, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(29, 'gaming-laptop', 22, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(30, 'security-protection', 23, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(31, 'accessories', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(32, 'phones', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(33, 'babies-moms', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(34, 'sport-outdoor', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(35, 'books-office', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(36, 'cars-motorcycles', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(37, 'home-improvements', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(38, 'wallet', 1, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(39, 'bags', 2, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(40, 'shoes', 3, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(41, 'clothes', 4, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(42, 'hand-bag', 5, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2023-10-02 00:42:49', '2023-10-02 00:42:49'),
(43, 'smart-home-speaker', 1, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(44, 'headphone-ultra-bass', 2, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(45, 'boxed-bluetooth-headphone', 3, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(46, 'chikie-bluetooth-speaker', 4, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(47, 'camera-hikvision-hk-35vs8', 5, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(48, 'camera-samsung-ss-24', 6, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(49, 'leather-watch-band', 7, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(50, 'apple-iphone-13-plus', 8, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(51, 'macbook-pro-2015', 9, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(52, 'macbook-air-12-inch', 10, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(53, 'apple-watch-serial-7', 11, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:02', '2023-10-02 00:43:02'),
(54, 'macbook-pro-13-inch', 12, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(55, 'apple-keyboard', 13, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(56, 'macsafe-80w', 14, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(57, 'hand-playstation', 15, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(58, 'apple-airpods-serial-3', 16, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(59, 'cool-smart-watches', 17, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(60, 'black-smart-watches', 18, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(61, 'leather-watch-band-serial-3', 19, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(62, 'macbook-pro-2015-13-inch', 20, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(63, 'historic-alarm-clock', 21, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(64, 'black-glasses', 22, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(65, 'phillips-mouse', 23, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(66, 'gaming-keyboard', 24, 'Botble\\Ecommerce\\Models\\Product', 'products', '2023-10-02 00:43:03', '2023-10-02 00:43:03'),
(67, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'blog', '2023-10-02 00:43:14', '2023-10-02 00:43:15'),
(68, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'blog', '2023-10-02 00:43:14', '2023-10-02 00:43:15'),
(69, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'blog', '2023-10-02 00:43:14', '2023-10-02 00:43:15'),
(70, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'blog', '2023-10-02 00:43:14', '2023-10-02 00:43:15'),
(71, 'thuong-mai-dien-tu', 5, 'Botble\\Blog\\Models\\Category', 'blog', '2023-10-02 00:43:14', '2023-10-02 00:43:15'),
(72, 'fashion', 6, 'Botble\\Blog\\Models\\Category', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(73, 'electronic', 7, 'Botble\\Blog\\Models\\Category', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(74, 'thuong-mai', 8, 'Botble\\Blog\\Models\\Category', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(75, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(76, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(77, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(78, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(79, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(80, 'chung', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(81, 'thiet-ke', 7, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(82, 'thoi-trang', 8, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(83, 'thuong-hieu', 9, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(84, 'hien-dai', 10, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(85, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(86, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(87, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(88, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(89, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(90, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(91, 'essential-qualities-of-highly-successful-music', 7, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(92, '9-things-i-love-about-shaving-my-head', 8, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(93, 'why-teamwork-really-makes-the-dream-work', 9, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(94, 'the-world-caters-to-average-people', 10, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(95, 'the-litigants-on-the-screen-are-not-actors', 11, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(96, '4-loi-khuyen-cua-chuyen-gia-ve-cach-chon-vi-nam-phu-hop', 12, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(97, 'sexy-clutches-cach-mua-deo-tui-clutch-thiet-ke', 13, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(98, 'xu-huong-tui-xach-hang-dau-nam-2020-can-biet', 14, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(99, 'cach-phoi-mau-tui-xach-cua-ban-voi-trang-phuc', 15, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(100, 'cach-cham-soc-tui-da', 16, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(101, 'chung-toi-dang-nghien-ngam-10-xu-huong-tui-lon-nhat-cua-mua-he', 17, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(102, 'nhung-pham-chat-can-thiet-cua-am-nhac-thanh-cong-cao', 18, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(103, '9-dieu-toi-thich-khi-cao-dau', 19, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(104, 'tai-sao-lam-viec-theo-nhom-thuc-su-bien-giac-mo-thanh-cong', 20, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(105, 'the-gioi-phuc-vu-cho-nhung-nguoi-trung-binh', 21, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(106, 'cac-duong-su-tren-man-hinh-khong-phai-la-dien-vien', 22, 'Botble\\Blog\\Models\\Post', 'blog', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(107, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(108, 'homepage-2', 2, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(109, 'homepage-3', 3, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(110, 'homepage-4', 4, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(111, 'blog', 5, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(112, 'contact', 6, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(113, 'about-us', 7, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(114, 'cookie-policy', 8, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(115, 'terms-conditions', 9, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(116, 'returns-exchanges', 10, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(117, 'shipping-delivery', 11, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(118, 'privacy-policy', 12, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(119, 'blog-left-sidebar', 13, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(120, 'trang-chu', 14, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(121, 'trang-chu-2', 15, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(122, 'trang-chu-3', 16, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(123, 'trang-chu-4', 17, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(124, 'tin-tuc', 18, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(125, 'lien-he', 19, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(126, 've-chung-toi', 20, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(127, 'chinh-sach-cookie', 21, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(128, 'dieu-kien-va-dieu-khoan', 22, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(129, 'chinh-sach-tra-hang', 23, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(130, 'chinh-sach-van-chuyen', 24, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(131, 'chinh-sach-bao-mat', 25, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(132, 'blog-sidebar-trai', 26, 'Botble\\Page\\Models\\Page', '', '2023-10-02 00:43:15', '2023-10-02 00:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint UNSIGNED NOT NULL,
  `subscription_id` bigint UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(6, 'Chung', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(7, 'Thiết kế', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(8, 'Thời trang', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(9, 'Thương hiệu', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15'),
(10, 'Hiện đại', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-10-02 00:43:15', '2023-10-02 00:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$sjLKRDQvwSBPzWXMhmFNy.pC2AUeFHLlO4cyW4cj1E9X.cHVRiU5q', 'o6I969qyhkggmqZ7IEqMYoAJM6cekHaCXcddzbmqYgDmiAa0ZFKTywijrgNF', '2023-10-02 00:43:15', '2023-10-02 00:45:51', 'System', 'Admin', 'botble', NULL, 1, 1, NULL, '2023-10-02 00:45:51', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'SiteInfoWidget', 'footer_sidebar', 'wowy', 0, '{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(2, 'CustomMenuWidget', 'footer_sidebar', 'wowy', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(3, 'CustomMenuWidget', 'footer_sidebar', 'wowy', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(4, 'BlogSearchWidget', 'primary_sidebar', 'wowy', 0, '{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(5, 'BlogCategoriesWidget', 'primary_sidebar', 'wowy', 1, '{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(6, 'RecentPostsWidget', 'primary_sidebar', 'wowy', 2, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(7, 'TagsWidget', 'primary_sidebar', 'wowy', 4, '{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(8, 'ProductCategoriesWidget', 'product_sidebar', 'wowy', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(9, 'FeaturedProductsWidget', 'product_sidebar', 'wowy', 2, '{\"id\":\"FeaturedProductsWidget\",\"name\":\"Featured Products\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(10, 'FeaturedBrandsWidget', 'product_sidebar', 'wowy', 3, '{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Manufacturers\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(11, 'SiteInfoWidget', 'footer_sidebar', 'wowy-vi', 0, '{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(12, 'CustomMenuWidget', 'footer_sidebar', 'wowy-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(13, 'CustomMenuWidget', 'footer_sidebar', 'wowy-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(14, 'BlogSearchWidget', 'primary_sidebar', 'wowy-vi', 0, '{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(15, 'BlogCategoriesWidget', 'primary_sidebar', 'wowy-vi', 1, '{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(16, 'RecentPostsWidget', 'primary_sidebar', 'wowy-vi', 2, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(17, 'TagsWidget', 'primary_sidebar', 'wowy-vi', 4, '{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(18, 'ProductCategoriesWidget', 'product_sidebar', 'wowy-vi', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(19, 'FeaturedProductsWidget', 'product_sidebar', 'wowy-vi', 2, '{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17'),
(20, 'FeaturedBrandsWidget', 'product_sidebar', 'wowy-vi', 3, '{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}', '2023-10-02 00:43:17', '2023-10-02 00:43:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customers_email_unique` (`email`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
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
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
