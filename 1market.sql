-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2017 at 08:16 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `market`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutsetting`
--

CREATE TABLE `aboutsetting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ar_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aboutsetting`
--

INSERT INTO `aboutsetting` (`id`, `name`, `ar_text`, `en_text`, `file`, `created_at`, `updated_at`) VALUES
(1, 'معلومات عنا', 'معلومات عنا نص ', 'About us text', 'uploads/aboutsettings/150193725685487.jpg', '2017-08-05 10:47:36', '2017-08-05 10:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '123456', '2017-07-25 09:42:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `text`, `color`, `file`, `created_at`, `updated_at`) VALUES
(5, 'سيارات', 'نص توضيحي لقسم السيارات من الادمن بانل', 'inner b1', 'uploads/categories/150261914111886.png', '2017-08-13 08:12:21', '2017-08-13 09:26:27'),
(6, 'كاميرات تصوير ', 'نص توضيحي لقسم كاميرات التصوير من الادمن بانل', 'inner b2', 'uploads/categories/150262337594338.png', '2017-08-13 09:22:55', '2017-08-13 09:26:18'),
(7, 'موبايلات', 'نص توضيحي لقسم الموبايلات من الادمن بانل', 'inner b4', 'uploads/categories/150262356987098.png', '2017-08-13 09:25:13', '2017-08-13 09:26:09'),
(8, 'أجهزة كمبيوتر', 'نص توضيحي لقسم أجهزة الكمبيوتر من الادمن بانل', 'inner b3', 'uploads/categories/150262388149910.png', '2017-08-13 09:31:21', '2017-08-13 09:31:21'),
(9, 'مجوهرات و هدايا', 'نص توضيحي لقسم المجوهرات و الهدايا من الادمن بانل', 'inner b6', 'uploads/categories/150262395253778.png', '2017-08-13 09:32:32', '2017-08-13 09:32:32'),
(10, 'عقارات', 'نص توضيحي لقسم العقارات من الادمن بانل', 'inner b5', 'uploads/categories/150262399760034.png', '2017-08-13 09:33:17', '2017-08-13 09:38:47'),
(11, 'نظارات', 'نص توضيحي لقسم النظارات من الادمن بانل', 'inner b2', 'uploads/categories/150262403156339.png', '2017-08-13 09:33:51', '2017-08-13 09:33:51'),
(12, 'أحذية رياضية', 'نص توضيحي لقسم الأحذية الرياضية من الادمن بانل', 'inner b7', 'uploads/categories/150262436978955.png', '2017-08-13 09:39:29', '2017-08-13 09:39:29'),
(13, 'ميك آب و مستحضرات تجميل', 'وصف ميكب و مستحضرات تجميل', 'inner b5', 'uploads/categories/150288875718041.jpg', '2017-08-16 11:05:57', '2017-08-16 11:05:57'),
(14, 'المرضي النفسيين', 'وصف قسم المرضي النفسيين', 'inner b3', 'uploads/categories/150288896878830.jpg', '2017-08-16 11:09:28', '2017-08-16 11:09:28'),
(15, 'العلوقية', 'العلوقية مسئولية', 'inner b7', 'uploads/categories/150288905323838.jpg', '2017-08-16 11:10:53', '2017-08-16 11:10:53'),
(16, 'لن تكتمل', 'و لم يكن يدري أن فرحته لن تكتمل', 'inner b2', 'uploads/categories/150288909531578.jpg', '2017-08-16 11:11:35', '2017-08-16 11:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `adress`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'أحمد', 'ahmedwagih@ieasoft.net', 'شارع الملاميطي', '0987654321', 'رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة رسالة ', '2017-08-05 11:46:22', '2017-08-05 11:46:22'),
(2, 'محمود', 'ma7moud@ma7moud.gmail', 'محمود شارع محمود', '0123155352', 'رسالات كتير كتير رسالات كتير كتيررسالات كتير كتيررسالات كتير كتيررسالات كتير كتيررسالات كتير كتير', '2017-08-05 12:00:36', '2017-08-05 12:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `contactsetting`
--

CREATE TABLE `contactsetting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ar_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contactsetting`
--

INSERT INTO `contactsetting` (`id`, `name`, `ar_text`, `en_text`, `file`, `created_at`, `updated_at`) VALUES
(1, 'إعداد جديد', 'علاء مرسي', 'Alaa Morsey', 'uploads/contactsettings/150210638328303.jpg', '2017-08-07 09:46:23', '2017-08-07 09:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `footersetting`
--

CREATE TABLE `footersetting` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ar_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `footersetting`
--

INSERT INTO `footersetting` (`id`, `ar_name`, `en_name`, `ar_text`, `en_text`, `file`, `created_at`, `updated_at`) VALUES
(1, 'الصفقة الرابحة اون لاين', 'The Winning Deal Online', 'أحدي مشاريع شركه Eurosoq لحلول التجاره والتجاره الالكترونيه بين أوروبا والشرق الأوسط نحن نؤمن لك عمليه التسوق والشراء من الانترنت بكل سهوله وأمان', 'One of Eurosoc\'s business solutions for e-commerce and commerce between Europe and the Middle East We believe in the process of shopping and buying from the Internet easily and safely', '', '2017-08-13 09:43:03', '2017-08-13 09:43:03'),
(2, 'خريطة الموقع', '', 'خريطة الموقع', 'Site Map', '', '2017-08-13 09:43:51', '2017-08-13 09:43:51'),
(3, 'تواصل معنا', '', 'تواصل معنا ', 'Contact with us', '', '2017-08-13 09:44:13', '2017-08-13 09:44:13'),
(4, 'العنوان', 'Address', '7 شارع محمد محمد', '7 Mohamed Mohamed St. ', '', '2017-08-13 09:45:10', '2017-08-13 09:45:10'),
(5, '0123456789', '0123456789', 'الموبايل', 'Mobile', '', '2017-08-13 09:45:57', '2017-08-13 09:45:57'),
(6, 'Company @company.org', 'Company @company.org', 'البريد الإلكتروني', 'Email', '', '2017-08-13 09:46:27', '2017-08-13 09:46:27'),
(7, 'الحقوق', '', 'جميع الحقوق محفوظة لموقع الصفقة الرابحة اون لاين © 2016', 'All rights reserved for The Winning Deal Online © 2016', '', '2017-08-13 10:01:31', '2017-08-13 10:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `homesetting`
--

CREATE TABLE `homesetting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ar_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `homesetting`
--

INSERT INTO `homesetting` (`id`, `name`, `ar_text`, `en_text`, `file`, `created_at`, `updated_at`) VALUES
(1, 'الصفقة الرابحة أونلاين', 'نص من إعدادات لوحة التحكم لإعدادات الصفحة الرئيسية نص من إعدادات لوحة التحكم لإعدادات الصفحة الرئيسية نص من إعدادات لوحة التحكم لإعدادات الصفحة الرئيسية نص من إعدادات لوحة التحكم لإعدادات الصفحة الرئيسية نص من إعدادات لوحة التحكم لإعدادات الصفحة الرئيسية ', 'English text from admin panel for home page settings ', '', '2017-08-09 06:25:50', '2017-08-09 06:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `file`, `product_id`, `created_at`, `updated_at`) VALUES
(16, 'إعلان', 'uploads/products/album150273131541058.jpg', 32, '2017-08-14 15:21:55', '2017-08-14 15:21:55'),
(18, 'إعلان', 'uploads/products/album150273131564477.jpg', 32, '2017-08-14 15:21:55', '2017-08-14 15:21:55'),
(19, 'إعلان', 'uploads/products/album150273131515706.jpg', 32, '2017-08-14 15:21:55', '2017-08-14 15:21:55'),
(26, 'إعلان لانج', 'uploads/products/album150278582040486.jpg', 35, '2017-08-15 06:30:20', '2017-08-15 06:30:20'),
(27, 'إعلان لانج', 'uploads/products/album150278582039588.jpg', 35, '2017-08-15 06:30:20', '2017-08-15 06:30:20'),
(28, 'إعلان لانج', 'uploads/products/album150278582056995.png', 35, '2017-08-15 06:30:20', '2017-08-15 06:30:20'),
(29, 'إعلان قشطة', 'uploads/products/album150278616937209.jpg', 36, '2017-08-15 06:36:09', '2017-08-15 06:36:09'),
(31, 'دكر بط للبيع', 'uploads/products/album150279033022257.jpg', 38, '2017-08-15 07:45:30', '2017-08-15 07:45:30'),
(32, 'دكر بط للبيع', 'uploads/products/album150279033097054.jpg', 38, '2017-08-15 07:45:30', '2017-08-15 07:45:30'),
(33, 'دكر بط للبيع', 'uploads/products/album150279033098489.jpg', 38, '2017-08-15 07:45:30', '2017-08-15 07:45:30'),
(34, 'جلاكتيكوس', 'uploads/products/album/150279062492428.jpg', 39, '2017-08-15 07:50:24', '2017-08-15 07:50:24'),
(39, 'صور مناظر طبيعية', 'uploads/products/album/150279073113886.jpg', 40, '2017-08-15 07:52:11', '2017-08-15 07:52:11'),
(40, 'صور مناظر طبيعية', 'uploads/products/album/150279073126247.jpg', 40, '2017-08-15 07:52:11', '2017-08-15 07:52:11'),
(41, 'صور مناظر طبيعية', 'uploads/products/album/150279073133390.jpeg', 40, '2017-08-15 07:52:11', '2017-08-15 07:52:11'),
(42, 'صور مناظر طبيعية', 'uploads/products/album/150279073154974.jpg', 40, '2017-08-15 07:52:11', '2017-08-15 07:52:11'),
(43, 'صور مناظر طبيعية', 'uploads/products/album/150279073178545.jpg', 40, '2017-08-15 07:52:11', '2017-08-15 07:52:11'),
(44, 'صور مناظر طبيعية', 'uploads/products/album/150279073157443.jpg', 40, '2017-08-15 07:52:11', '2017-08-15 07:52:11'),
(46, 'صور مناظر طبيعية', 'uploads/products/album/150279073136083.jpg', 40, '2017-08-15 07:52:11', '2017-08-15 07:52:11'),
(48, 'دوري للبيع', 'uploads/products/album/150280964563617.jpg', 41, '2017-08-15 13:07:25', '2017-08-15 13:07:25'),
(53, 'إمبرأة للبيع', 'uploads/products/album/150288230813088.jpg', 43, '2017-08-16 09:18:28', '2017-08-16 09:18:28'),
(54, 'إمبرأة للبيع', 'uploads/products/album/150288230814317.jpg', 43, '2017-08-16 09:18:28', '2017-08-16 09:18:28'),
(59, 'صور مناظر طبيعية', 'uploads/products/album/150315655329530.png', 40, '2017-08-19 13:29:13', '2017-08-19 13:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `email`, `name`, `address`, `phone`, `message`, `sender_id`, `target_id`, `created_at`, `updated_at`) VALUES
(1, '7o7o@yahoo.com', '  إبراهيم حوحو', 'شلرع حوحو', '4325253254', 'asdasdad', 0, 0, '2017-08-19 14:46:02', '2017-08-19 14:46:02'),
(2, '7o7o@yahoo.com', '  إبراهيم حوحو', 'شلرع حوحو', '4325253254', 'qqqqqqqqqq', 42, 0, '2017-08-19 14:49:17', '2017-08-19 14:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2017_07_25_091911_create_admin_table', 1),
('2017_07_25_113653_create_user_table', 2),
('2017_07_25_124455_create_category_table', 3),
('2017_08_05_093207_create_setting_table', 4),
('2017_08_05_123153_create_aboutsetting_table', 5),
('2017_08_05_125121_create_contact_table', 6),
('2017_08_07_112952_create_contactsetting_table', 7),
('2017_08_07_115457_create_termssetting_table', 8),
('2017_08_07_122805_create_footersetting_table', 9),
('2017_08_07_124358_create_socialsetting_table', 10),
('2017_08_13_123641_create_products_table', 11),
('2017_08_14_141047_create_images_table', 12),
('2017_08_19_154650_create_messages_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `cat_id`, `text`, `price`, `user`, `user_id`, `email`, `phone`, `file`, `country`, `city`, `created_at`, `updated_at`) VALUES
(32, 'إعلان', 'معروض', 6, 'sdsfsfs', '0', '  إبراهيم حوحو', 42, '7o7o@yahoo.com', '4325253254', 'uploads/products/150273131537149.jpg', '', '', '2017-08-14 15:21:55', '2017-08-14 15:21:55'),
(35, 'إعلان لانج', 'معروض', 12, 'وصف', '1', '  إبراهيم حوحو', 42, '7o7o@yahoo.com', '4325253254', 'uploads/products/150278582030772.jpg', '', '', '2017-08-15 06:30:20', '2017-08-15 06:30:20'),
(36, 'إعلان قشطة', 'معروض', 12, 'وصف1', '1', '  إبراهيم حوحو', 42, '7o7o@yahoo.com', '4325253254', 'uploads/products/150278616926849.jpg', '', '', '2017-08-15 06:36:09', '2017-08-15 06:36:09'),
(38, 'دكر بط للبيع', 'معروض', 9, 'دكر بط وزن 9 كيلو للبيع', '1', '  إبراهيم حوحو', 42, '7o7o@yahoo.com', '4325253254', 'uploads/products/150279033020182.jpg', '', '', '2017-08-15 07:45:30', '2017-08-15 07:45:30'),
(39, 'جلاكتيكوس sdfsdfsfs', 'مطلوب', 16, 'أساطير ريال مدريد ليسوا للبيع zzzz', '0', '  إبراهيم حوحو', 42, '7o7o@yahoo.com', '4325253254', 'uploads/products/150315639138484.png', '', '', '2017-08-15 07:50:24', '2017-08-19 13:26:31'),
(40, 'صور مناظر طبيعية', 'معروض', 16, 'صور طبيعية عالية الجودة', '1', '  إبراهيم حوحو', 42, '7o7o@yahoo.com', '4325253254', 'uploads/products/150279073268326.jpg', '', '', '2017-08-15 07:52:11', '2017-08-19 12:08:01'),
(41, 'دوري للبيع', 'معروض', 9, 'دوري أسباني 2016/2017', '1', '  إبراهيم حوحو', 42, '7o7o@yahoo.com', '4325253254', 'uploads/products/150280964584475.png', '', '', '2017-08-15 13:07:25', '2017-08-15 13:07:25'),
(43, 'إمبرأة للبيع', 'معروض', 9, 'جارية للبيع', '1', ' خلف الدهشوري خلف وائل', 66, '5alaf@5alaf.com', '012343456345', 'uploads/products/150288230863538.jpg', '', '', '2017-08-16 09:18:28', '2017-08-16 09:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `socialsetting`
--

CREATE TABLE `socialsetting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ar_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `socialsetting`
--

INSERT INTO `socialsetting` (`id`, `name`, `ar_text`, `en_text`, `file`, `created_at`, `updated_at`) VALUES
(4, 'Twitter', 'https://www.twitter.com/thewinningdeal', 'https://www.twitter.com/thewinningdeal', '', '2017-08-13 10:03:35', '2017-08-13 10:05:22'),
(3, 'facebook', 'https://www.facebook.com/thewinningdeal', 'https://www.facebook.com/thewinningdeal', '', '2017-08-13 10:03:14', '2017-08-13 10:05:38'),
(5, 'Instagram', 'https://www.instagram.com/thewinningdeal', 'https://www.instagram.com/thewinningdeal', '', '2017-08-13 10:03:57', '2017-08-13 10:05:45'),
(6, 'Google+', 'https://www.googleplus.com/thewinningdeal', 'https://www.googleplus.com/thewinningdeal', '', '2017-08-13 10:04:19', '2017-08-13 10:05:57'),
(7, 'Youtube', 'https://www.youtube.com/thewinningdeal', 'https://www.youtube.com/thewinningdeal', '', '2017-08-13 10:04:36', '2017-08-13 10:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `termssetting`
--

CREATE TABLE `termssetting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ar_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `termssetting`
--

INSERT INTO `termssetting` (`id`, `name`, `ar_text`, `en_text`, `file`, `created_at`, `updated_at`) VALUES
(1, 'إعداد جديد نوفي نوفي', 'نص بالعربية', 'English Text', '', '2017-08-07 10:09:33', '2017-08-07 10:09:33'),
(3, 'إعداد جديد خالص', 'جديد جداً', 'Very new', 'uploads/termssettings/150210782721440.jpg', '2017-08-07 10:10:27', '2017-08-07 10:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8 NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `file`, `remember_token`, `created_at`, `updated_at`) VALUES
(42, '  إبراهيم حوحو', '7o7o@yahoo.com', '$2y$10$fgzAoLD3lrwqz6VKM6Sxte..3JVEYhAM1sDavQ3klvNixe6gNC69C', '4325253254', 'شلرع حوحو', 'uploads/users/150272231889271.jpg', '2oQRJi6LRNkl5DS7ifja4X8gxjhTR5eAk6BxigQSfflVgHh6xhxk5NUqF0u3', '2017-08-01 10:51:47', '2017-08-15 14:38:31'),
(66, ' خلف الدهشوري خلف وائل', '5alaf@5alaf.com', '$2y$10$32hSFoU.TfLVI6kZAsWllu9qqmMPQdy9/cLjUxXjYsp4JLqtC0aA6', '012343456345', 'الصعيد الجواني - جرجا - جرجا البلد', 'uploads/users/150279750329540.jpg', 'kWhbVpMHehb9AsaM6CQVQNAt3pi0lncGFCR7FQB4l6fv3QEcXRtlAAtYmzce', '2017-08-15 09:24:05', '2017-08-19 08:10:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutsetting`
--
ALTER TABLE `aboutsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_name_unique` (`name`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactsetting`
--
ALTER TABLE `contactsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footersetting`
--
ALTER TABLE `footersetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homesetting`
--
ALTER TABLE `homesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `socialsetting`
--
ALTER TABLE `socialsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termssetting`
--
ALTER TABLE `termssetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutsetting`
--
ALTER TABLE `aboutsetting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contactsetting`
--
ALTER TABLE `contactsetting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `footersetting`
--
ALTER TABLE `footersetting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `homesetting`
--
ALTER TABLE `homesetting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `socialsetting`
--
ALTER TABLE `socialsetting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `termssetting`
--
ALTER TABLE `termssetting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
