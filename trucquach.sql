-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 07:35 AM
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
-- Database: `trucquach`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, NULL, 1, 'đầm nữ', 'đầm nữ', '2020-10-27 05:33:04', '2020-10-27 05:33:56'),
(4, NULL, 2, 'sét đồ nữ', 'sét đồ nữ', '2020-10-27 05:33:37', '2020-10-27 05:33:37'),
(5, NULL, 3, 'áo nữ', 'áo nữ', '2020-10-27 05:34:14', '2020-10-27 05:34:14'),
(6, NULL, 4, 'quần nữ', 'quần nữ', '2020-10-27 05:34:54', '2020-10-27 05:34:54'),
(7, NULL, 5, 'áo khoác nữ', 'áo khoác nữ', '2020-10-27 05:36:49', '2020-10-27 05:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'màu trắng', 'còn', '2020-10-27 05:15:06', '2020-10-27 05:15:06'),
(2, 'màu đen', 'còn', '2020-10-27 05:15:36', '2020-10-27 05:15:36'),
(3, 'màu nude', 'còn', '2020-10-27 05:15:55', '2020-10-27 05:15:55'),
(4, 'màu trắng', 'còn', '2020-10-27 05:18:39', '2020-10-27 05:18:39'),
(5, 'màu trắng', 'còn', '2020-10-27 05:18:58', '2020-10-27 05:18:58'),
(6, 'màu trắng', 'còn', '2020-10-27 05:19:58', '2020-10-27 05:19:58'),
(7, 'màu hồng và trắng', 'còn', '2020-10-27 05:21:11', '2020-10-27 05:21:11'),
(8, 'màu trắng và hồng loang', 'còn', '2020-10-27 05:22:01', '2020-10-27 05:22:01'),
(9, 'màu trắng', 'còn', '2020-10-27 05:22:18', '2020-10-27 05:22:18'),
(10, 'màu trắng', 'còn', '2020-10-27 05:22:42', '2020-10-27 05:22:42'),
(11, 'màu xanh loang', 'còn', '2020-10-27 05:24:47', '2020-10-27 05:24:47'),
(12, 'màu hồng', 'còn', '2020-10-27 05:25:05', '2020-10-27 05:25:05'),
(13, 'màu trắng', 'còn', '2020-10-27 05:25:27', '2020-10-27 05:25:27'),
(14, 'màu trắng', 'còn', '2020-10-27 05:25:38', '2020-10-27 05:25:38'),
(15, 'màu trắng', 'còn', '2020-10-27 05:26:01', '2020-10-27 05:26:01'),
(16, 'màu xanh nhạt', 'còn', '2020-10-27 05:27:12', '2020-10-27 05:27:12'),
(17, 'màu xanh đậm', 'còn', '2020-10-27 05:27:31', '2020-10-27 05:27:31'),
(18, 'màu đen', 'còn', '2020-10-27 05:28:15', '2020-10-27 05:28:15'),
(19, 'màu xanh nhạt', 'còn', '2020-10-27 05:28:32', '2020-10-27 05:28:32'),
(20, 'màu xanh nhạt', 'còn', '2020-10-27 05:28:53', '2020-10-27 05:28:53'),
(21, 'màu tím', 'còn', '2020-10-27 05:29:29', '2020-10-27 05:29:29'),
(22, 'màu nâu', 'còn', '2020-10-27 05:29:45', '2020-10-27 05:29:45'),
(23, 'màu đỏ đô', 'còn', '2020-10-27 05:30:00', '2020-10-27 05:30:00'),
(24, 'màu trắng hồng', 'còn', '2020-10-27 05:30:27', '2020-10-27 05:30:27'),
(25, 'màu vàng', 'còn', '2020-10-27 05:31:01', '2020-10-27 05:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `color_products`
--

CREATE TABLE `color_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `produtcts_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 10, 4, 'Sản phẩm rất tốt', '2021-04-06 08:15:03', '2021-04-06 08:15:03'),
(2, 11, 3, 'Áo đẹp như chủ shop chẳn hạn', '2021-04-07 09:40:11', '2021-04-07 09:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Van An', 'an@gmail.com', '0947900146', 'Ca Mau', '2020-11-18 06:49:36', '2020-11-18 06:49:36'),
(3, 'Nguyen Van An', 'an@gmail.com', '0947900146', 'Ca Mau', '2020-11-18 06:51:33', '2020-11-18 06:51:33'),
(4, 'Nguyen Van An', 'an@gmail.com', '0947900146', 'Ca Mau', '2020-11-18 06:53:15', '2020-11-18 06:53:15'),
(5, 'Nguyen Van An', 'an@gmail.com', '0859134529', 'Ninh Kiều Cần Thơ', '2021-05-07 08:42:30', '2021-05-07 08:42:30'),
(6, NULL, NULL, NULL, NULL, '2021-11-20 04:38:33', '2021-11-20 04:38:33'),
(7, NULL, NULL, NULL, NULL, '2021-11-20 04:47:07', '2021-11-20 04:47:07'),
(8, NULL, NULL, NULL, NULL, '2021-11-20 08:40:13', '2021-11-20 08:40:13'),
(9, NULL, NULL, NULL, NULL, '2021-11-20 08:43:19', '2021-11-20 08:43:19'),
(10, NULL, NULL, NULL, NULL, '2021-11-20 08:44:33', '2021-11-20 08:44:33'),
(11, NULL, NULL, NULL, NULL, '2021-11-20 08:44:49', '2021-11-20 08:44:49'),
(12, NULL, NULL, NULL, NULL, '2021-11-20 08:46:39', '2021-11-20 08:46:39'),
(13, NULL, NULL, NULL, NULL, '2021-11-20 08:47:00', '2021-11-20 08:47:00'),
(14, NULL, NULL, NULL, NULL, '2021-11-20 09:10:01', '2021-11-20 09:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'hidden', 'ID', 1, 1, 1, 1, 1, 1, '{}', 1),
(2, 1, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 0, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(57, 7, 'color', 'text', 'Color', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 8, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(62, 8, 'color_id', 'text', 'Color Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(63, 8, 'produtcts_id', 'text', 'Produtcts Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(64, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(65, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(66, 9, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(67, 9, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(68, 9, 'name_product', 'text', 'Name Product', 0, 1, 1, 1, 1, 1, '{}', 3),
(69, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(70, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(71, 10, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(72, 10, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(73, 10, 'size', 'text', 'Size', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 10, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(75, 10, 'describe', 'text', 'Describe', 0, 1, 1, 1, 1, 1, '{}', 5),
(76, 10, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(77, 10, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 7),
(78, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(79, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(80, 11, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 0),
(81, 11, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(82, 11, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(83, 11, 'quantity', 'text', 'Quantity', 0, 1, 1, 1, 1, 1, '{}', 4),
(84, 11, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 5),
(85, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(86, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(87, 12, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 0),
(88, 12, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(89, 12, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(90, 12, 'require_date', 'text', 'Require Date', 0, 1, 1, 1, 1, 1, '{}', 4),
(91, 12, 'total_money', 'text', 'Total Money', 0, 1, 1, 1, 1, 1, '{}', 5),
(92, 12, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 6),
(93, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(94, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(95, 8, 'color_product_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"produtcts_id\",\"key\":\"id\",\"label\":\"name_product\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 6),
(96, 8, 'color_product_belongsto_color_relationship', 'relationship', 'colors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Color\",\"table\":\"colors\",\"type\":\"belongsTo\",\"column\":\"color_id\",\"key\":\"id\",\"label\":\"color\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 7),
(98, 10, 'detail_product_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 10),
(99, 11, 'order_detail_belongsto_order_relationship', 'relationship', 'orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 8),
(100, 11, 'order_detail_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 9),
(101, 12, 'order_belongsto_order_relationship', 'relationship', 'orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 9),
(102, 12, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 10),
(103, 9, 'product_belongsto_category_relationship_1', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(104, 9, 'size', 'text', 'Size', 0, 1, 1, 1, 1, 1, '{}', 6),
(105, 9, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 7),
(106, 9, 'unit_price', 'text', 'Unit Price', 0, 1, 1, 1, 1, 1, '{}', 8),
(111, 9, 'image', 'multiple_images', 'Image', 0, 1, 1, 1, 1, 1, '{}', 13),
(112, 9, 'status', 'number', 'Status', 0, 1, 1, 1, 1, 1, '{}', 14),
(113, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 7),
(114, 1, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 12),
(115, 1, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 13),
(116, 13, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(117, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(118, 13, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(119, 13, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(120, 13, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(121, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(122, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-26 05:59:41', '2020-11-05 06:00:05'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(7, 'colors', 'colors', 'Color', 'Colors', NULL, 'App\\Color', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-26 07:13:25', '2020-10-26 07:13:25'),
(8, 'color_products', 'color-products', 'Color Product', 'Color Products', NULL, 'App\\ColorProduct', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-26 07:16:49', '2020-10-26 07:16:49'),
(9, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-26 07:23:53', '2021-11-20 06:23:09'),
(10, 'detail_products', 'detail-products', 'Detail Product', 'Detail Products', NULL, 'App\\DetailProduct', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-26 07:57:30', '2020-10-26 07:57:30'),
(11, 'order_details', 'order-details', 'Order Detail', 'Order Details', NULL, 'App\\OrderDetail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-26 08:02:07', '2020-10-26 08:02:07'),
(12, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-26 17:54:20', '2020-10-26 17:54:20'),
(13, 'customers', 'customers', 'Customer', 'Customers', NULL, 'App\\Customer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-18 06:13:30', '2020-11-18 06:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `detail_products`
--

CREATE TABLE `detail_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-10-26 05:59:41', '2020-10-26 05:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Trang chủ', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2020-10-26 05:59:41', '2021-03-21 08:10:54', 'voyager.dashboard', 'null'),
(3, 1, 'Thành viên', '', '_self', 'voyager-person', '#000000', 22, 2, '2020-10-26 05:59:41', '2021-03-21 08:17:57', 'voyager.users.index', 'null'),
(4, 1, 'Quyền', '', '_self', 'voyager-lock', '#000000', 22, 1, '2020-10-26 05:59:41', '2021-03-21 08:17:56', 'voyager.roles.index', 'null'),
(5, 1, 'Công cụ', '', '_self', 'voyager-tools', '#000000', NULL, 6, '2020-10-26 05:59:41', '2021-05-07 08:45:41', NULL, ''),
(6, 1, 'Thanh menu', '', '_self', 'voyager-list', '#000000', 5, 1, '2020-10-26 05:59:41', '2021-03-21 08:18:45', 'voyager.menus.index', 'null'),
(7, 1, 'Bảng dữ liệu', '', '_self', 'voyager-data', '#000000', 5, 2, '2020-10-26 05:59:41', '2021-03-21 08:18:45', 'voyager.database.index', 'null'),
(8, 1, 'Icon', '', '_self', 'voyager-compass', '#000000', 5, 3, '2020-10-26 05:59:41', '2021-03-21 08:18:45', 'voyager.compass.index', 'null'),
(11, 1, 'Loại sản phẩm', '', '_self', 'voyager-categories', '#000000', 23, 1, '2020-10-26 05:59:42', '2021-03-21 08:18:45', 'voyager.categories.index', 'null'),
(15, 1, 'Màu sắc', '', '_self', 'voyager-brush', '#000000', 23, 2, '2020-10-26 07:13:25', '2021-03-21 08:18:52', 'voyager.colors.index', 'null'),
(17, 1, 'Sản phẩm', '', '_self', 'voyager-archive', '#000000', 23, 3, '2020-10-26 07:23:53', '2021-03-21 08:18:57', 'voyager.products.index', 'null'),
(18, 1, 'Chi tiết sản phẩm', '', '_self', 'voyager-list', '#000000', 23, 4, '2020-10-26 07:57:30', '2021-03-21 08:19:00', 'voyager.detail-products.index', 'null'),
(20, 1, 'Quản lý đơn hàng', '', '_self', 'voyager-basket', '#000000', NULL, 3, '2020-10-26 17:54:20', '2021-05-07 08:45:41', 'voyager.orders.index', 'null'),
(21, 1, 'Khách hàng', '', '_self', 'voyager-person', '#000000', 22, 3, '2020-11-18 06:13:31', '2021-03-21 08:19:26', 'voyager.customers.index', 'null'),
(22, 1, 'Quản Lý Tài Khoản', '', '_self', 'voyager-group', '#000000', NULL, 2, '2021-03-21 08:17:46', '2021-03-21 08:17:55', NULL, ''),
(23, 1, 'Quản lý sản phẩm', '', '_self', 'voyager-data', '#000000', NULL, 5, '2021-03-21 08:18:18', '2021-05-07 08:45:41', NULL, ''),
(24, 1, 'Doanh thu', '/admin/revenue', '_self', 'voyager-dollar', '#000000', NULL, 4, '2021-04-26 09:17:33', '2021-05-07 08:45:41', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `require_date` date DEFAULT NULL,
  `total_money` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `require_date`, `total_money`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '2020-11-18', '660000', 1, '2020-11-18 06:51:33', '2020-11-18 06:51:33'),
(2, 4, '2020-11-18', '660000', 1, '2020-11-18 06:53:15', '2020-11-18 06:53:15'),
(3, 7, '2020-11-18', '215000', 1, '2020-11-18 06:54:25', '2020-11-18 06:54:25'),
(4, 3, '2021-01-09', '210000', 1, '2021-01-09 06:25:44', '2021-01-09 06:25:44'),
(5, 3, '2021-01-09', '185000', 1, '2021-01-09 06:28:30', '2021-01-09 06:28:30'),
(6, 3, '2021-01-09', '185000', 1, '2021-01-09 06:33:46', '2021-01-09 06:33:46'),
(7, 3, '2021-01-09', '210000', 1, '2021-01-09 07:57:02', '2021-01-09 07:57:02'),
(8, 3, '2021-01-09', '230000', 1, '2021-01-09 07:57:25', '2021-01-09 07:57:25'),
(9, 3, '2021-01-09', '220000', 1, '2021-01-09 07:58:08', '2021-01-09 07:58:08'),
(10, 3, '2021-01-09', '420000', 1, '2021-01-09 08:29:39', '2021-01-09 08:29:39'),
(11, 3, '2021-01-09', '420000', 1, '2021-01-09 08:29:39', '2021-01-09 08:29:39'),
(12, 3, '2021-01-09', '230000', 1, '2021-01-09 08:31:53', '2021-01-09 08:31:53'),
(13, 3, '2021-01-10', '210000', 1, '2021-01-09 19:54:36', '2021-01-09 19:54:36'),
(14, 3, '2021-01-10', '840000', 1, '2021-01-09 19:56:23', '2021-01-09 19:56:23'),
(15, 3, '2021-01-10', '185000', 1, '2021-01-09 19:57:52', '2021-01-09 19:57:52'),
(16, 5, '2021-05-07', '400000', 0, '2021-05-07 08:42:30', '2021-05-07 08:42:30'),
(17, 7, '2021-11-20', '185000', 1, '2021-11-20 04:47:07', '2021-11-20 04:47:07'),
(18, 8, '2021-11-20', '800000', 0, '2021-11-20 08:40:13', '2021-11-20 08:40:13'),
(19, 9, '2021-11-20', '800000', 0, '2021-11-20 08:43:19', '2021-11-20 08:43:19'),
(20, 10, '2021-11-20', '800000', 0, '2021-11-20 08:44:33', '2021-11-20 08:44:33'),
(21, 11, '2021-11-20', '800000', 0, '2021-11-20 08:44:49', '2021-11-20 08:44:49'),
(22, 12, '2021-11-20', '800000', 0, '2021-11-20 08:46:39', '2021-11-20 08:46:39'),
(23, 13, '2021-11-20', '800000', 0, '2021-11-20 08:47:00', '2021-11-20 08:47:00'),
(24, 14, '2021-11-20', '725000', 2, '2021-11-20 09:10:01', '2021-11-20 09:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 3, 220000, '2020-11-18 06:53:15', '2020-11-18 06:53:15'),
(2, 3, 3, 1, 215000, '2020-11-18 06:54:25', '2020-11-18 06:54:25'),
(3, 4, 24, 1, 210000, '2021-01-09 06:25:44', '2021-01-09 06:25:44'),
(4, 5, 23, 1, 185000, '2021-01-09 06:28:30', '2021-01-09 06:28:30'),
(5, 6, 23, 1, 185000, '2021-01-09 06:33:46', '2021-01-09 06:33:46'),
(6, 7, 24, 1, 210000, '2021-01-09 07:57:02', '2021-01-09 07:57:02'),
(7, 8, 25, 1, 230000, '2021-01-09 07:57:25', '2021-01-09 07:57:25'),
(8, 9, 1, 1, 220000, '2021-01-09 07:58:08', '2021-01-09 07:58:08'),
(9, 10, 24, 2, 210000, '2021-01-09 08:29:39', '2021-01-09 08:29:39'),
(10, 12, 25, 1, 230000, '2021-01-09 08:31:53', '2021-01-09 08:31:53'),
(11, 13, 24, 1, 210000, '2021-01-09 19:54:36', '2021-01-09 19:54:36'),
(12, 14, 24, 4, 210000, '2021-01-09 19:56:23', '2021-01-09 19:56:23'),
(13, 15, 4, 1, 185000, '2021-01-09 19:57:52', '2021-01-09 19:57:52'),
(14, 16, 4, 1, 185000, '2021-05-07 08:42:30', '2021-05-07 08:42:30'),
(15, 16, 3, 1, 215000, '2021-05-07 08:42:30', '2021-05-07 08:42:30'),
(16, 17, 23, 1, 185000, '2021-11-20 04:47:07', '2021-11-20 04:47:07'),
(17, 18, 23, 2, 277500, '2021-11-20 08:40:13', '2021-11-20 08:40:13'),
(18, 19, 23, 2, 277500, '2021-11-20 08:43:19', '2021-11-20 08:43:19'),
(19, 20, 23, 2, 277500, '2021-11-20 08:44:33', '2021-11-20 08:44:33'),
(20, 21, 23, 2, 277500, '2021-11-20 08:44:49', '2021-11-20 08:44:49'),
(21, 22, 23, 2, 277500, '2021-11-20 08:46:39', '2021-11-20 08:46:39'),
(22, 23, 23, 2, 277500, '2021-11-20 08:47:00', '2021-11-20 08:47:00'),
(23, 23, 3, 2, 322500, '2021-11-20 08:47:00', '2021-11-20 08:47:00'),
(24, 24, 5, 4, 287500, '2021-11-20 09:10:01', '2021-11-20 09:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-10-26 05:59:42', '2020-10-26 05:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(2, 'browse_bread', NULL, '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(3, 'browse_database', NULL, '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(4, 'browse_media', NULL, '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(5, 'browse_compass', NULL, '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(6, 'browse_menus', 'menus', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(7, 'read_menus', 'menus', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(8, 'edit_menus', 'menus', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(9, 'add_menus', 'menus', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(10, 'delete_menus', 'menus', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(11, 'browse_roles', 'roles', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(12, 'read_roles', 'roles', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(13, 'edit_roles', 'roles', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(14, 'add_roles', 'roles', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(15, 'delete_roles', 'roles', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(16, 'browse_users', 'users', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(17, 'read_users', 'users', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(18, 'edit_users', 'users', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(19, 'add_users', 'users', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(20, 'delete_users', 'users', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(21, 'browse_settings', 'settings', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(22, 'read_settings', 'settings', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(23, 'edit_settings', 'settings', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(24, 'add_settings', 'settings', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(25, 'delete_settings', 'settings', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(26, 'browse_categories', 'categories', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(27, 'read_categories', 'categories', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(28, 'edit_categories', 'categories', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(29, 'add_categories', 'categories', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(30, 'delete_categories', 'categories', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(31, 'browse_posts', 'posts', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(32, 'read_posts', 'posts', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(33, 'edit_posts', 'posts', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(34, 'add_posts', 'posts', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(35, 'delete_posts', 'posts', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(36, 'browse_pages', 'pages', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(37, 'read_pages', 'pages', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(38, 'edit_pages', 'pages', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(39, 'add_pages', 'pages', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(40, 'delete_pages', 'pages', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(41, 'browse_hooks', NULL, '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(42, 'browse_colors', 'colors', '2020-10-26 07:13:25', '2020-10-26 07:13:25'),
(43, 'read_colors', 'colors', '2020-10-26 07:13:25', '2020-10-26 07:13:25'),
(44, 'edit_colors', 'colors', '2020-10-26 07:13:25', '2020-10-26 07:13:25'),
(45, 'add_colors', 'colors', '2020-10-26 07:13:25', '2020-10-26 07:13:25'),
(46, 'delete_colors', 'colors', '2020-10-26 07:13:25', '2020-10-26 07:13:25'),
(47, 'browse_color_products', 'color_products', '2020-10-26 07:16:49', '2020-10-26 07:16:49'),
(48, 'read_color_products', 'color_products', '2020-10-26 07:16:49', '2020-10-26 07:16:49'),
(49, 'edit_color_products', 'color_products', '2020-10-26 07:16:49', '2020-10-26 07:16:49'),
(50, 'add_color_products', 'color_products', '2020-10-26 07:16:49', '2020-10-26 07:16:49'),
(51, 'delete_color_products', 'color_products', '2020-10-26 07:16:49', '2020-10-26 07:16:49'),
(52, 'browse_products', 'products', '2020-10-26 07:23:53', '2020-10-26 07:23:53'),
(53, 'read_products', 'products', '2020-10-26 07:23:53', '2020-10-26 07:23:53'),
(54, 'edit_products', 'products', '2020-10-26 07:23:53', '2020-10-26 07:23:53'),
(55, 'add_products', 'products', '2020-10-26 07:23:53', '2020-10-26 07:23:53'),
(56, 'delete_products', 'products', '2020-10-26 07:23:53', '2020-10-26 07:23:53'),
(57, 'browse_detail_products', 'detail_products', '2020-10-26 07:57:30', '2020-10-26 07:57:30'),
(58, 'read_detail_products', 'detail_products', '2020-10-26 07:57:30', '2020-10-26 07:57:30'),
(59, 'edit_detail_products', 'detail_products', '2020-10-26 07:57:30', '2020-10-26 07:57:30'),
(60, 'add_detail_products', 'detail_products', '2020-10-26 07:57:30', '2020-10-26 07:57:30'),
(61, 'delete_detail_products', 'detail_products', '2020-10-26 07:57:30', '2020-10-26 07:57:30'),
(62, 'browse_order_details', 'order_details', '2020-10-26 08:02:07', '2020-10-26 08:02:07'),
(63, 'read_order_details', 'order_details', '2020-10-26 08:02:07', '2020-10-26 08:02:07'),
(64, 'edit_order_details', 'order_details', '2020-10-26 08:02:07', '2020-10-26 08:02:07'),
(65, 'add_order_details', 'order_details', '2020-10-26 08:02:07', '2020-10-26 08:02:07'),
(66, 'delete_order_details', 'order_details', '2020-10-26 08:02:07', '2020-10-26 08:02:07'),
(67, 'browse_orders', 'orders', '2020-10-26 17:54:20', '2020-10-26 17:54:20'),
(68, 'read_orders', 'orders', '2020-10-26 17:54:20', '2020-10-26 17:54:20'),
(69, 'edit_orders', 'orders', '2020-10-26 17:54:20', '2020-10-26 17:54:20'),
(70, 'add_orders', 'orders', '2020-10-26 17:54:20', '2020-10-26 17:54:20'),
(71, 'delete_orders', 'orders', '2020-10-26 17:54:20', '2020-10-26 17:54:20'),
(72, 'browse_customers', 'customers', '2020-11-18 06:13:30', '2020-11-18 06:13:30'),
(73, 'read_customers', 'customers', '2020-11-18 06:13:30', '2020-11-18 06:13:30'),
(74, 'edit_customers', 'customers', '2020-11-18 06:13:30', '2020-11-18 06:13:30'),
(75, 'add_customers', 'customers', '2020-11-18 06:13:31', '2020-11-18 06:13:31'),
(76, 'delete_customers', 'customers', '2020-11-18 06:13:31', '2020-11-18 06:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-26 05:59:42', '2020-10-26 05:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name_product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name_product`, `created_at`, `updated_at`, `size`, `description`, `unit_price`, `image`, `status`) VALUES
(1, 3, 'Đầm phối nơ cổ tay tơ', '2020-10-29 05:05:58', '2020-10-29 05:05:58', 'freeszie', 'Đầm phối nơ cổ tay tơ siêu xinhhh về hàng . Em này diện lên trông tiểu thư yêu lắm lắm ấy ạ ,gam trắng thanh lịch nàng nào diện củng yêu', 220000, '[\"products\\\\October2020\\\\IEUioFfxJrf2cqT3zZMW.jpg\",\"products\\\\October2020\\\\KzChyNFm3PHeEgZCL49k.jpg\",\"products\\\\October2020\\\\kZ2YTUdKuzhEBy6KTjVI.jpg\"]', 0),
(2, 3, 'Đầm đen phối tay trắng', '2020-10-29 05:12:00', '2020-10-29 05:12:25', 'freeszie', 'Đầm đen phối tay trắng phồng rút dây hông ,form body sang chảnh lại còn màu Đen quyền lực thì dù đi dạo hay ăn tiệc vẫn xinhh và lộng lẫy nhé các nàng . Cách điệu tay trắng phồng làm điểm nhấn cực xinh ạ', 195000, '[\"products\\\\October2020\\\\EwcwuqwHe6jvvLOnQBN4.jpg\",\"products\\\\October2020\\\\DrLeEcg0B1GlPbHUU0YO.jpg\",\"products\\\\October2020\\\\l8MAdPeJBsnK1qHIlyCJ.jpg\"]', 15),
(3, 3, 'Đầm tiểu thơ nude', '2020-10-29 05:14:00', '2020-10-29 05:15:19', 'freeszie', 'chắc hẳn chị em nào cũng cần có 1 em váy như thế này trong tủ đồ ,không quá chói chang, nhưng vẫn cực sang chảnh, tôn lên mọi nét yêu kiều dịu dàng nữ tính .', 215000, '[\"products\\\\October2020\\\\uDE58uVL13jVUd47H4Zx.jpg\",\"products\\\\October2020\\\\FQ7XiSCLlSpdaO5PaxlD.jpg\",\"products\\\\October2020\\\\r7lzrMTceIz7RSNIpT3z.jpg\"]', 8),
(4, 3, 'Đầm body đan dây', '2020-10-29 05:17:18', '2020-10-29 05:17:18', 'freeszie', 'Body đan dây lưng cực sexy lun nè ,chất thun dẻo dày mịn mát co dãn tôn dáng ạ. Sẵn cup ngực nên các ty cứ tự tin diện lun ạ.', 185000, '[\"products\\\\October2020\\\\h9QJ9Vs081TpDGVpIwxP.jpg\",\"products\\\\October2020\\\\hyn5m0ef2xaocOmgCyqR.jpg\",\"products\\\\October2020\\\\TuqWekwwWzgZJcWKvfgM.jpg\"]', 10),
(5, 3, 'Đầm maxi tầng', '2020-10-29 05:19:05', '2020-10-29 05:19:05', 'freeszie', 'Lên sóng em váy phù hợp cả lên rừng lẫn xuống biển ,Váy maxi trắng tầng Em váy cổ V viền bèo - nút bọc - tay bồng - váy dài thướt thaaa. Tone trắng dễ mặc lắm luôn ạ, lên ảnh cũng okela lắm nhaaa.', 230000, '[\"products\\\\October2020\\\\iajfPz3uZ65u7prfk7s3.jpg\",\"products\\\\October2020\\\\tY9UP6EcrdnjsHNgFcgo.jpg\",\"products\\\\October2020\\\\gW7JzFrMBDLrymNGIGCm.jpg\"]', 6),
(6, 4, 'Sét áo cổ bèo', '2020-10-29 05:21:52', '2020-10-29 05:21:52', 'freeszie', 'Set áo cổ bèo trắng siêu sang cập bến nhe .Chất dày mịn , phía sau có thun', 190000, '[\"products\\\\October2020\\\\kMBaRHOCY5REwmTa4m4z.jpg\",\"products\\\\October2020\\\\oSNGvnYeuHe7QefDHY4V.jpg\",\"products\\\\October2020\\\\0WqtmYkrHM887OQfpdJQ.jpg\"]', 10),
(7, 4, 'Sét áo bèo tay phồng mix chân váy xẻ viền', '2020-10-29 05:24:00', '2020-10-29 05:26:06', 'freeszie', 'Set đồ 2 trong 1 chắc chắn sẽ được các chị em ưu ái đây rồi ,lâu lâu cần thay đổi qua style bánh bèo một chút thì nghĩ ngay đến nhà mình nha , toàn những tone màu basic dễ mặc và tách set cực dễ ạ', 230000, '[\"products\\\\October2020\\\\SOtOLMppvRaMjapszFBb.jpg\",\"products\\\\October2020\\\\C1ux7vcZoxai43K9Q4zA.jpg\",\"products\\\\October2020\\\\kdy0nPdSyZbcWuTd2Dw9.jpg\"]', 10),
(8, 4, 'Sét áo trắng quần loang hồng', '2020-10-29 05:28:23', '2020-10-29 05:28:23', 'freeszie', 'Một set siu kulll siu iu như thế này mà diện thu đông thì đẹp sao chịu nổi ,màu loang hồng ngọt xỉu nhaz. Chất thun mịn đẹp ạ.', 250000, '[\"products\\\\October2020\\\\4F2m4JJhPsthfeI7dMTs.jpg\",\"products\\\\October2020\\\\lzIcl52KnglsgeYGs5K1.jpg\",\"products\\\\October2020\\\\vtRegoFtGCJS2F4J65Tm.jpg\"]', 10),
(9, NULL, 'Sét áo thun + quần kaki trắng', '2020-10-29 05:30:30', '2020-10-29 05:30:30', 'freeszie', 'Siêu phẩm về lại ko thể bỏ qua nha cả nhà ,sét kaki trắng + pull giầu quần, chất thì bao đẹp khỏi chê. Full sét lên hình sang chảnh cực kỳ.', 235000, '[\"products\\\\October2020\\\\mSFQ7RD5Dm1cdpwOYust.jpg\",\"products\\\\October2020\\\\FcfXB9sJbNIID69Qb9rC.jpg\",\"products\\\\October2020\\\\jhFvR7EpmZ9IiFGe0Trx.jpg\"]', 10),
(10, 4, 'Sét áo pelum cổ bẻ thắt eo + chân váy dập ly', '2020-10-29 05:43:50', '2020-10-29 05:43:50', 'freeszie', 'Áo trắng tim yêu kiều mix cùng chân váy dập ly tone tắng tinh sang sang, nhẹ nhàng khách iuu có muốn sỡ hữu sét hot hit này để tạo nên ,1 styte chất như nước cất không nè ,bé này thì đi làm, đi học, đi chơi đều được luôn nhé', 250000, '[\"products\\\\October2020\\\\CshDc3GKRxjdmcOWdSlY.jpg\",\"products\\\\October2020\\\\EI0eCEmX6ixd6pTx2xdM.jpg\",\"products\\\\October2020\\\\bPaKvW8FjC482Y8ELuq3.jpg\"]', 10),
(11, 5, 'Áo loang màu xanh tay dài', '2020-10-29 05:45:27', '2020-10-29 05:45:27', 'freeszie', 'Màu xanh mây quá là xinh luôn nè cả nhà ơi .Diện lên là so fresh luôn nha . Chất thun mềm rũ, mịn mát chi nàng thoải diện hè mà ko sợ đổ mồ hôi lun ạ . Freesize - chất rũ , co giãn bất chấp số ký ạ', 130000, '[\"products\\\\October2020\\\\6AnNU8Fv7SBH5jiH9PMB.jpg\",\"products\\\\October2020\\\\Wf8NYCAVjXq24ppq7Wqz.jpg\",\"products\\\\October2020\\\\Vy8MjKWXZ0cIAjPWrwy3.jpg\"]', 10),
(12, NULL, 'Áo mickey hồng', '2020-10-29 05:48:02', '2020-10-29 05:48:02', 'freeszie', 'Freesize- form rộng thoải mái , mặc siêu dễ thương un ,chất thun mát rượi , màu hồng siêu cưng un ạ', 165000, '[\"products\\\\October2020\\\\CG9mAEnUzAQ4VEDRx9Os.jpg\",\"products\\\\October2020\\\\hurR2qCzCmEzoMUWeMDE.jpg\",\"products\\\\October2020\\\\jiMI182cIq0KjsYGDIPE.jpg\"]', 10),
(13, 5, 'Áo trắng rớt vai tay bo', '2020-10-29 05:49:34', '2020-10-29 05:49:34', NULL, 'Best-seller của những ngày qua - chiếc áo rớt vai xinh xắn giúp bạn trở nên vô cùng nữ tính, lại còn là cứu cánh cho những cô bạn có bắp tay hơi tròn .Chất kate mềm', 170000, '[\"products\\\\October2020\\\\YyzR7pzL3SMUlMs3teID.jpg\",\"products\\\\October2020\\\\igWK5yPyNatWArX7FMxq.jpg\",\"products\\\\October2020\\\\BgRelR3k9BPdMoof81O4.jpg\"]', 10),
(14, 5, 'Áo Croptop cổ V viền rennnn', '2020-10-29 05:51:37', '2020-10-29 05:51:37', 'freeszie', 'Cưng gì đâu á mọi người ơi , vải co giãn siêu đẹp ,dáng tay dài viền ren ôm body xinh xĩu', 180000, '[\"products\\\\October2020\\\\UwsKJ1rAQHXN6SoT7xWY.jpg\",\"products\\\\October2020\\\\dtSyw7ZcRz2dhMky8qVa.jpg\",\"products\\\\October2020\\\\lhAJQ68OtdlOYFDtp8yx.jpg\"]', 10),
(15, 5, 'Áo sơ mi trắng tay rút', '2020-10-29 05:53:10', '2020-10-29 05:53:10', 'freeszie', 'Vẫn là em sơ mi trắng, nhưng lần này nhà em về mã sơ mi cách điệu đây cả nhà ơii , áo sơ mi cực lạ mắt & ẻm còn cân mọi dáng người cân mọi hoàn cảnh luôn á .Áo dáng rộng oversize, tay bồng, chất kate mềm luôn nhé', 185000, '[\"products\\\\October2020\\\\W8DLgCnBPKUax7jXXb3P.jpg\",\"products\\\\October2020\\\\VNJV9VzoVdSf9NJ2RQoK.jpg\",\"products\\\\October2020\\\\UZJTeLui8rbZprE5V10d.jpg\"]', 10),
(16, 6, 'Quần Baggy rách miếng to', '2020-10-29 05:54:58', '2020-10-29 05:54:58', 'S M L', 'Chiếc quần diện là ưng cái bụng ngay nha khách ơiiiii ,màu jean siêu đẹp ạ', 270000, '[\"products\\\\October2020\\\\Ks2ParkNbkxrktjLOk8w.jpg\",\"products\\\\October2020\\\\johpr2Bv5IaZq91Egvy7.jpg\",\"products\\\\October2020\\\\aeMgKtYfa0nbmMn0coVk.jpg\"]', 10),
(17, 6, 'Quần jean rách lỗ màu đậm', '2020-10-29 05:56:48', '2020-10-29 05:56:48', 'S M L', 'Skinny rách lỗ , chất co giãn mạnh , mặc tôn dáng', 280000, '[\"products\\\\October2020\\\\lFmw17Now4TrdQEK7vOd.jpg\",\"products\\\\October2020\\\\48EhJQHYqAtjwcWrnJPD.jpg\",\"products\\\\October2020\\\\Xt6suKiTFDDUDhnEQZVg.jpg\"]', 10),
(18, 6, 'Quần baggy tây đen', '2020-10-29 05:58:50', '2020-10-29 05:58:50', 'S M L', 'Baggy tây 4 nút , chất kaki gân mềm rũ nhẹ', 175000, '[\"products\\\\October2020\\\\ZV1UxhTBdDOQjrk9I2pn.jpg\",\"products\\\\October2020\\\\AE5FwUc37cB6GFn3gGh9.jpg\",\"products\\\\October2020\\\\z4YtCg1YVZKMUSuSOlx5.jpg\"]', 10),
(19, 6, 'Quần baggy jean nhạt', '2020-10-29 06:00:41', '2020-10-29 06:00:41', 'S M L', 'Về mẫu baggy tâm đắc ghê luônnnn ,chất jean ko co giãn đứng form , che khuyết điểm cực tốt luôn', 190000, '[\"products\\\\October2020\\\\pfbkIM7TKaoiQcdtgCdg.jpg\",\"products\\\\October2020\\\\jsQge0wliQQDNJnISRrk.jpg\",\"products\\\\October2020\\\\ICZX5OJcxDFtqwAklLnO.jpg\"]', 10),
(20, 6, 'Quần baggy rách 2 đường', '2020-10-29 06:01:55', '2020-10-29 06:01:55', 'S M L', 'Mẫu baggy rách 2 đường ngay gối ,Chất siêu đẹp , form chuẩn ạ', 180000, '[\"products\\\\October2020\\\\bWGgOwG3uUhZlU4EWOf9.jpg\",\"products\\\\October2020\\\\3gEVD7Gx8Rfw0X3vbew2.jpg\",\"products\\\\October2020\\\\0QW1087RNYYdAxYgguwv.jpg\"]', 10),
(21, 7, 'Áo khoác màu tím Bassic', '2020-10-29 06:03:50', '2020-10-29 06:03:50', 'freeszie', 'Khoác nỉ form oversize ko thê bỏ qua nhen mnggggg ,Freesize - bất chấp số ký luôn ạ', 155000, '[\"products\\\\October2020\\\\BpnSP6aQjgt4E0hVP6eb.jpg\",\"products\\\\October2020\\\\QPP4q5GHPZLoY54LozYh.jpg\",\"products\\\\October2020\\\\uL7gDBKHCipayV8GaD3T.jpg\"]', 10),
(22, NULL, 'Áo khoác len sọc', '2020-10-29 06:05:11', '2020-10-29 06:05:11', 'freeszie', 'Áo khoác len sọc bbry xinh chưa nè cả nhà ơi . Hình chụp trải lun nhé. Mùa này mặc ẻm thì bao xịn ,len QC loại 1 mềm mịn nha mnggg', 190000, '[\"products\\\\October2020\\\\GHE6kJriEvSkdw5YkQ4N.jpg\",\"products\\\\October2020\\\\h8p6xqXrHiLc1DGL7btx.jpg\",\"products\\\\October2020\\\\Psta0uR76Z6MsKK6FsMV.jpg\"]', 10),
(23, 7, 'Áo khoác len nhung', '2020-10-29 06:07:02', '2020-10-29 06:07:02', 'freeszie', 'Về siêu phẩm khoác len nhung đây mngggg ,màu đỏ siêu dễ thương ,Chất co giãn thích lắm ạ ,Freesize  - giãn theo dáng nên ko giới hạn số ký nha', 185000, '[\"products\\\\October2020\\\\jFsTl5KYxFhNnAPwUHsV.jpg\",\"products\\\\October2020\\\\4zU5f8RvK6dsoOUfiknY.jpg\",\"products\\\\October2020\\\\v9keKRM40wvkqg8mX4zl.jpg\"]', 8),
(24, 7, 'Áo khoác cadigan hình trái đào', '2020-10-29 06:08:47', '2020-10-29 06:08:47', 'freeszie', 'Mẫu cadigan nhẹ hay khoác len mỏng đều đã được e cập nhật. Hứa hẹn sẽ khiến cho các cô nàng \"yêu ngay từ ánh nhìn đầu tiên” ,chất len co giãn theo dáng', 210000, '[\"products\\\\October2020\\\\bGDvKnwyViau8JbjfGy3.jpg\",\"products\\\\October2020\\\\d3JtjJ7QzqqPe0NwWLWe.jpg\",\"products\\\\October2020\\\\UtBJ7xukW0pYBV6HVFX6.jpg\"]', 10),
(25, 7, 'Áo khoác dù hoa cúc', '2020-10-29 06:10:00', '2021-11-20 06:23:38', 'freeszie', 'Mưa bão này áo khoác lên ngôi nha chị em ,Khoác dù cúc đây mọi người ơiiii ,dáng rộng rộng mặc cưng lắm , tone vàng siêu dễ thương', 230000, '[\"products\\\\October2020\\\\aEP9T2SgN5TukmBt04zb.jpg\",\"products\\\\October2020\\\\4oUxk3EDyMY21qHyPe2U.jpg\",\"products\\\\October2020\\\\u313u2f970Ddf4YpeMPC.jpg\"]', 10);

-- --------------------------------------------------------

--
-- Table structure for table `rating_stars`
--

CREATE TABLE `rating_stars` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating_star` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating_stars`
--

INSERT INTO `rating_stars` (`id`, `user_id`, `product_id`, `rating_star`, `created_at`, `updated_at`) VALUES
(1, 10, 4, 4, '2021-04-06 07:45:52', '2021-04-06 07:45:52'),
(2, 11, 3, 5, '2021-04-07 09:39:36', '2021-04-07 09:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-10-26 05:59:41', '2020-10-26 05:59:41'),
(2, 'user', 'Normal User', '2020-10-26 05:59:41', '2020-10-26 05:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-10-26 05:59:42', '2020-10-26 05:59:42'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-10-26 05:59:42', '2020-10-26 05:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `email_verified_at`, `remember_token`, `settings`, `created_at`, `updated_at`, `phone`, `address`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$7qodDnaq5aqc0yH9FcrHu.wQESC19PMhZEYHidbPwhKVcPxjXz9r2', NULL, 'vneFGGLx7HTY9pAFr0UQLDd6Pib0uNMNTkXzB0UaiN2vD2crbLVItydsz4fU', NULL, '2020-10-26 05:59:42', '2020-10-26 05:59:42', NULL, NULL),
(2, 1, 'TrucQuach', 'admin@gmail.com', 'users/default.png', '$2y$10$NXL//JoY5MF0rNaCWg8LKOqWSlI.6eKkBWeCM5a1wyGA2XMv5sH4.', NULL, NULL, NULL, '2020-10-26 06:00:22', '2020-10-26 06:00:22', NULL, NULL),
(7, 2, 'huynhnet', 'net@gmail.com', 'users/default.png', '$2y$10$Ti0CTru9XEhrcRFCHD.YOO9ZmQWK7ORDREWwVPuA6hRJn6HJB/ft.', NULL, NULL, NULL, '2020-11-05 06:07:26', '2020-11-05 06:07:26', '0944674397', 'Ca Mau'),
(8, 2, 'trucxinh', 'quachhoangthanhtruc123@gmail.com', 'users/default.png', '$2y$10$EEIsrvOS/qKUxm1LGkbuPOxC/u5SMskgEPQeUUVVlLSKKtzHhnAsK', NULL, NULL, NULL, '2020-12-15 01:51:49', '2020-12-15 01:51:49', '0822600465', 'soc trang'),
(9, 2, 'trucvinh', 'truc123@gmail.com', 'users/default.png', '$2y$10$FHojR9vfQ./0zXK9Z9Gn9.fRCKdjXS1.sz3WRIsmfWJdtio7CntH6', NULL, NULL, NULL, '2020-12-23 06:51:05', '2020-12-23 06:51:05', '0822600465', 'soc trang'),
(10, 1, 'TrucQuach', 'truc@gmail.com', 'users/default.png', '$2y$10$FOfGFMoc/fWWVnmu.RpFiOYbyOOzjPlvUsakbM7fkOqMZDPpVcOFW', NULL, NULL, NULL, '2021-03-21 08:04:08', '2021-03-21 08:04:09', NULL, NULL),
(11, 2, 'HuynhNet', 'huynhnet271@gmail.com', 'xem-anh-trai-han-quoc-dep-de-thuong.jpg', '$2y$10$FRedqmYeV/AnJZsKudT8Fu8gu4Xwbp1uFZinhA2g.r7surVo6ncBi', NULL, NULL, NULL, '2021-04-07 09:39:03', '2021-04-13 08:56:51', '0859134539', 'Ninh Kiều Cần Thơ');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_products`
--
ALTER TABLE `color_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `detail_products`
--
ALTER TABLE `detail_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_stars`
--
ALTER TABLE `rating_stars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `color_products`
--
ALTER TABLE `color_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `detail_products`
--
ALTER TABLE `detail_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rating_stars`
--
ALTER TABLE `rating_stars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
