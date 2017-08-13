-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2017 at 03:30 PM
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
(12, 'أحذية رياضية', 'نص توضيحي لقسم الأحذية الرياضية من الادمن بانل', 'inner b7', 'uploads/categories/150262436978955.png', '2017-08-13 09:39:29', '2017-08-13 09:39:29');

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
('2017_08_13_123641_create_products_table', 11);

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
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(4, 'Twitter', 'www.twitter.com/thewinningdeal', 'www.twitter.com/thewinningdeal', '', '2017-08-13 10:03:35', '2017-08-13 10:05:22'),
(3, 'facebook', 'www.facebook.com/thewinningdeal', 'www.facebook.com/thewinningdeal', '', '2017-08-13 10:03:14', '2017-08-13 10:05:38'),
(5, 'Instagram', 'www.instagram.com/thewinningdeal', 'www.instagram.com/thewinningdeal', '', '2017-08-13 10:03:57', '2017-08-13 10:05:45'),
(6, 'Google+', 'www.googleplus.com/thewinningdeal', 'www.googleplus.com/thewinningdeal', '', '2017-08-13 10:04:19', '2017-08-13 10:05:57'),
(7, 'Youtube', 'www.youtube.com/thewinningdeal', 'www.youtube.com/thewinningdeal', '', '2017-08-13 10:04:36', '2017-08-13 10:06:06');

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
(1, 'Matilde Ledner ma7amad', 'wisoky.johanna@example.net', '$2y$10$EuZdUe5Fzyd2aYGDybomIesmwvehyGsLtJFCo0XJuwH4Vudatacea', '781.409.2728 x726', '1087 Reichert Knoll Suite 001Pollyfort, AR 44411-2731', '', NULL, '2017-07-25 10:15:42', '2017-07-25 11:52:39'),
(39, '', 'hehe@hehe.com', '123123', '', '', '', NULL, '2017-08-01 10:28:02', '2017-08-01 10:28:02'),
(38, '', 'ar@ar.com', '123123', '', '', '', NULL, '2017-08-01 10:26:53', '2017-08-01 10:26:53'),
(3, 'Minnie Toy', 'fadel.esperanza@example.org', '$2y$10$F5cNLLSVwCFhq7k.TTpfiu9.h/z7AaFRy1uu4X36s2/V2jSHKUK5q', '1-798-888-4736', '2625 Karelle Inlet\nGaylordfurt, CO 83259-4226', '', NULL, '2017-07-25 10:15:42', '2017-07-25 10:15:42'),
(4, 'Eliza Rempel', 'lklein@example.org', '$2y$10$ZUdJGIx4tBU/2C/6kfYrle1iBuPBJQtxJugmt67L8vMHP8MCmf5/K', '+1-823-285-5909', '86417 Delaney Dam\nSouth Athenaville, TN 05831', '', NULL, '2017-07-25 10:15:42', '2017-07-25 10:15:42'),
(5, 'Ms. Piper Romaguera', 'louvenia.marks@example.com', '$2y$10$5g7OjKyqQD/lq2m4xbR2YeZ6HrfFLNu/R/tCR58vqeyCfkfk3u4La', '907-695-1995', '995 Gusikowski Flats Suite 411\nSouth Medaberg, VA 92747', '', NULL, '2017-07-25 10:15:42', '2017-07-25 10:15:42'),
(6, 'Buford Fisher', 'nels71@example.org', '$2y$10$zR9ch6hQPiQmJlYpoHWPcOffubKgc5JqUYipyK3KfHvUeILnc/f0W', '1-657-798-6343 x751', '32054 Rau Cliffs Suite 244\nLake Okeyfurt, IA 16492', '', NULL, '2017-07-25 10:15:42', '2017-07-25 10:15:42'),
(7, 'Bettye Pacocha', 'hheaney@example.com', '$2y$10$FAFuCBdX65P4z/eIPBv6TOT1uDV3fblSPjwzKBP9L6ZiZB7rXUIvG', '1-546-896-3539 x47659', '4276 Heidenreich Loop\nKarelleberg, AZ 19794-8395', '', NULL, '2017-07-25 10:15:42', '2017-07-25 10:15:42'),
(8, 'Hoyt Eichmann', 'huel.catalina@example.org', '$2y$10$8tVd.bf/yyHmvDIcIYBCrOjqRe324zstk.2GdVxD0odnSQvXRHPem', '+1-989-310-5460', '8463 Calista Village Apt. 033\nEast Rod, TX 69255', '', NULL, '2017-07-25 10:15:42', '2017-07-25 10:15:42'),
(9, 'Dr. Payton Prohaska', 'irodriguez@example.net', '$2y$10$S3hzSpBlRyTNXAPC36zNZ.RRL4szQ3ea.Hbe7FXXqep6WSoIHJY..', '+15192966934', '67131 Kautzer Street\nPhilipberg, MO 17612-4261', '', NULL, '2017-07-25 10:15:42', '2017-07-25 10:15:42'),
(10, 'Icie Kohler', 'ana.wunsch@example.com', '$2y$10$ckUBkyJv0FlvqoDh7SHKK.CpF5Wyxqchp6KnjUtF40HPz8Yv2/N8C', '406.523.7186', '92412 Sammy Circles\nEast Patrick, NE 50090-0005', '', NULL, '2017-07-25 10:15:42', '2017-07-25 10:15:42'),
(37, '', 'memo@mem.com', '123123', '', '', '', NULL, '2017-08-01 10:25:41', '2017-08-01 10:25:41'),
(14, '', 'ahmed@yahoo.com', '123123', '', '', '', NULL, '2017-08-01 09:53:33', '2017-08-01 09:53:33'),
(46, 'heha2', 'heha@gmail.com', '$2y$10$dPsu3hp8psdbQOnfCrVjeeWKPga9aOF.1Jbk4l6Ki1V/nG3wqlRfy', '', '', '', NULL, '2017-08-08 08:34:52', '2017-08-08 08:34:52'),
(45, '', 'test@email.com', '$2y$10$tpt9o/j76TXRzX3.5jn0A.tC6BHYZJZhGHm911uaaBUva.pDLls8q', '', '', '', NULL, '2017-08-08 07:35:38', '2017-08-08 07:35:38'),
(44, '', 'test@email.com', '$2y$10$fUQ2w3L12T/FVS/pomhkj.Ow9GKx.EnqZdgE004JjNQGh8u7e7kjq', '', '', '', NULL, '2017-08-08 07:35:13', '2017-08-08 07:35:13'),
(41, '', 'harley@yahoo.com', '$2y$10$Whfun/FoV0VVoc4YW4MrX.0Dv24o5ZjExSWsv3KImaiLLWR2GllMC', '', '', '', NULL, '2017-08-01 10:31:34', '2017-08-01 10:31:34'),
(43, '', 'email@email.com', '$2y$10$ojNmt1SqWqCGcu5Tr68S9OetKB586AYyyg9F0xGwwNeJPU68HQkGa', '', '', '', NULL, '2017-08-07 22:39:10', '2017-08-07 22:39:10'),
(42, '', '7o7o@yahoo.com', '$2y$10$fgzAoLD3lrwqz6VKM6Sxte..3JVEYhAM1sDavQ3klvNixe6gNC69C', '', '', '', 'WHOjOJvzta0o4EUHfM3zioN4W4uu0RQDIMT6KfQeEUA5CiK3MaJLG06etsKd', '2017-08-01 10:51:47', '2017-08-09 11:30:22'),
(47, '    إبراهيم محمود سلطان', 'dodo3@email.com', '', '0123456789', '7 شارع الشهيد ميكي ماوس', 'uploads/users/150261602684122.jpg', 'fxbFZVBI2r9nXEeir5Edw2ePVausUc5lSJcko8d7w567UI7d3HBZqQgSFfgX', '2017-08-08 08:35:40', '2017-08-13 07:20:26'),
(56, '', 'deda@goo.com', '$2y$10$bOiToHZwQmO6fiB3Gd1isOqlRV.xh3AgikIQMMy8kCAkke3dnBEo2', '', '', '', NULL, '2017-08-08 11:43:37', '2017-08-08 11:43:37'),
(57, '', 'dido@gmail.com', '$2y$10$ACqOyrk3xsMeb2BYPFIm5.D4/A2XJL603A5PK3S7eZOCsusjkW7Hq', '', '', '', NULL, '2017-08-08 11:45:47', '2017-08-08 11:45:47'),
(58, '', 'qwer@gmail.com', '$2y$10$d4CgI.zQuKALT1V.875yEukPGAHwEVF5CLo9r/rqRDAzOj0wl7Jby', '', '', '', NULL, '2017-08-08 11:50:10', '2017-08-08 11:50:10'),
(55, '', 'dddddddddddd@asdasd.com', '$2y$10$1k0NZrggPKgNzGX0I6egrOrKO7yrsMEui8IRQiCtUNtS6EkjTvx/y', '', '', '', NULL, '2017-08-08 11:38:09', '2017-08-08 11:38:09'),
(59, 'محووووود', '', '', '', '', '', '0dNecwxp7PZ3SbeKNrcI2QeTpzI5lBXYhSLjdNr0NeBRL99Pp26tu2rX6BDR', '2017-08-09 11:36:49', '2017-08-12 23:23:14'),
(60, ' خلف الدهشور خلف وائل', '5alaf@5alaf.com', '', '0123234234234', 'التجمع الخامس - شارع التسعين', 'uploads/users/150261842717342.jpg', '9Ax7sbTPcagkc7qLp67SbjNqcLumPZqu0jXwat82wYjo6c8kB3bGUuQCJsWw', '2017-08-13 07:46:09', '2017-08-13 13:28:42'),
(61, 'أشرف', 'ashraf@ashraf.com', '$2y$10$8g85ZrY0APxY0NoWNHGD5.BkMGB.YKyFkTMM88bpuitXxBq8s2Mn6', '', '', '', 'j0g64Z1EOA9Z4YRSdqNd2O1W6x1jyMpB1Gw8AiqtAIwD3cqcOSayHMp5o1Wt', '2017-08-13 07:47:58', '2017-08-13 07:59:37');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
