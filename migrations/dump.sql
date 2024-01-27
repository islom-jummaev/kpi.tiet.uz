-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Мар 08 2022 г., 22:25
-- Версия сервера: 5.7.29-log-cll-lve
-- Версия PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tarbiyam_kpi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted','bitbucket_notification_received','github_notification_received') COLLATE utf8_unicode_ci NOT NULL,
  `log_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `log_type_title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_type_id` int(11) NOT NULL DEFAULT '0',
  `changes` mediumtext COLLATE utf8_unicode_ci,
  `log_for` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `log_for_id` int(11) NOT NULL DEFAULT '0',
  `log_for2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for_id2` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(1, '2022-02-14 19:13:02', 111, 'created', 'task', 'Testset', 43, NULL, 'project', 0, '', 0, 0),
(2, '2022-02-14 19:18:54', 111, 'created', 'task', 'Testsetsetest', 44, NULL, 'project', 0, '', 0, 0),
(3, '2022-02-14 19:24:03', 111, 'created', 'task', 'adsadsadasdasd', 45, NULL, 'project', 0, '', 0, 0),
(4, '2022-02-14 19:28:13', 111, 'created', 'task', 'ewrewrwerewr', 46, NULL, 'project', 0, '', 0, 0),
(5, '2022-02-17 10:32:27', 69, 'created', 'task', 'texnik topshiriqlar: 3-sinf  rus tili (rus)', 47, NULL, 'project', 0, '', 0, 0),
(6, '2022-02-17 10:34:16', 69, 'created', 'task', 'texnik topshiriqlar: 3-sinf  rus tili (rus)', 48, NULL, 'project', 0, '', 0, 0),
(7, '2022-02-17 11:55:19', 69, 'created', 'task', 'texnik topshiriqlar: 3-sinf  rus tili (rus)', 49, NULL, 'project', 0, '', 0, 0),
(8, '2022-02-21 06:39:58', 61, 'created', 'task', 'Тарихдан номоз бериш', 50, NULL, 'project', 0, '', 0, 0),
(9, '2022-02-24 13:56:34', 69, 'created', 'task', '3-sinf Texnik topshirig\'i', 51, NULL, 'project', 0, '', 0, 0),
(10, '2022-02-25 11:37:38', 61, 'created', 'task', 'Ingliz tili', 52, NULL, 'project', 0, '', 0, 0),
(11, '2022-02-26 10:59:55', 61, 'created', 'task', 'Darslik yaratish', 53, NULL, 'project', 0, '', 0, 0),
(12, '2022-02-26 11:01:12', 61, 'created', 'task', 'darslik', 54, NULL, 'project', 0, '', 0, 0),
(13, '2022-02-26 11:02:47', 61, 'created', 'task', 'ghghg', 55, NULL, 'project', 0, '', 0, 0),
(14, '2022-02-26 11:03:04', 61, 'created', 'task', 'ghghg', 56, NULL, 'project', 0, '', 0, 0),
(15, '2022-02-27 18:33:19', 111, 'created', 'task', 'Darslik', 57, NULL, 'project', 0, '', 0, 0),
(16, '2022-02-27 18:35:04', 111, 'created', 'task', 'darslik', 58, NULL, 'project', 0, '', 0, 0),
(17, '2022-02-28 02:55:08', 61, 'created', 'task', 'darslik', 59, NULL, 'project', 0, '', 0, 0),
(18, '2022-03-01 10:45:21', 69, 'created', 'task', 'Fluyid art montaji tugatish', 60, NULL, 'project', 0, '', 0, 0),
(19, '2022-03-01 10:48:34', 69, 'created', 'task', 'rus tili darsligi ', 61, NULL, 'project', 0, '', 0, 0),
(20, '2022-03-01 10:56:34', 69, 'created', 'task', '3-sinf texnik topshiriqlar ', 62, NULL, 'project', 0, '', 0, 0),
(21, '2022-03-01 11:15:37', 69, 'created', 'task', 'montaj', 63, NULL, 'project', 0, '', 0, 0),
(22, '2022-03-01 11:15:39', 69, 'created', 'task', 'montaj', 64, NULL, 'project', 0, '', 0, 0),
(23, '2022-03-03 04:13:42', 120, 'created', 'task', 'Чиқувчи хат', 65, NULL, 'project', 0, '', 0, 0),
(24, '2022-03-03 04:17:18', 120, 'created', 'task', 'Чиқувчи хат', 66, NULL, 'project', 0, '', 0, 0),
(25, '2022-03-03 04:23:48', 120, 'created', 'task', 'Имтихон материалини тайёрлаш', 67, NULL, 'project', 0, '', 0, 0),
(26, '2022-03-03 04:46:45', 120, 'created', 'task', 'Хат тайёрлаш', 68, NULL, 'project', 0, '', 0, 0),
(27, '2022-03-04 05:08:35', 120, 'created', 'task', 'Чиқувчи хат', 69, NULL, 'project', 0, '', 0, 0),
(28, '2022-03-04 05:14:45', 120, 'created', 'task', '11-12-синфлар учун Она тили фанидан имтихон билетлари ', 70, NULL, 'project', 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `description`, `start_date`, `end_date`, `created_by`, `share_with`, `created_at`, `files`, `read_by`, `deleted`) VALUES
(1, 'korea davlarib ialn uchrashuv', '', '2021-09-16', '2021-09-16', 1, 'all_members', '2021-09-16 05:07:50', 'a:0:{}', '0,12,1,5,62', 1),
(2, 'nurbek', '<p>a</p>', '2021-10-08', '2021-10-10', 1, 'all_members,all_clients', '2021-10-09 10:59:16', 'a:0:{}', '0,1,62', 1),
(3, 'Yangi yil', '<p>fgyyttrytytyty</p>', '2021-12-26', '2021-12-26', 1, 'all_members', '2021-12-20 08:42:37', 'a:1:{i:0;a:4:{s:9:\"file_name\";s:44:\"announcement_file61c041fdc80df-answer-2.docx\";s:9:\"file_size\";s:5:\"18559\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', '0,1,28,39', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `status` enum('incomplete','pending','approved','rejected','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incomplete',
  `user_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `checked_at` datetime DEFAULT NULL,
  `reject_reason` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `attendance`
--

INSERT INTO `attendance` (`id`, `status`, `user_id`, `in_time`, `out_time`, `checked_by`, `note`, `checked_at`, `reject_reason`, `deleted`) VALUES
(1, 'pending', 16, '2021-10-18 14:39:46', '2021-10-18 14:39:51', NULL, '', NULL, NULL, 0),
(2, 'pending', 1, '2021-10-19 04:31:07', '2021-12-12 08:40:53', NULL, '', NULL, NULL, 0),
(3, 'pending', 57, '2021-10-19 09:59:10', '2022-02-02 04:30:26', NULL, 'ждцЛАПХЗЛДЦУ', NULL, NULL, 0),
(4, 'pending', 83, '2021-10-19 10:36:10', '2021-10-19 10:36:19', NULL, '', NULL, NULL, 0),
(5, 'pending', 39, '2021-10-26 09:00:00', '2021-10-27 00:00:00', NULL, '', NULL, NULL, 0),
(6, 'pending', 62, '2021-11-17 14:18:29', '2021-12-04 10:40:32', NULL, 'Tugadi', NULL, NULL, 0),
(7, 'pending', 63, '2021-11-24 13:22:15', '2021-11-24 13:22:33', NULL, 'ish yakunlandi\r\n', NULL, NULL, 0),
(8, 'pending', 1, '2021-12-12 08:40:55', '2022-02-01 15:22:33', NULL, 'Men ishimni tugatdim', NULL, NULL, 0),
(9, 'pending', 63, '2021-12-15 12:40:41', '2021-12-15 12:40:45', NULL, 'eee', NULL, NULL, 0),
(10, 'incomplete', 25, '2021-12-16 09:01:30', NULL, NULL, NULL, NULL, NULL, 0),
(11, 'pending', 63, '2022-01-29 07:50:31', '2022-01-29 07:50:49', NULL, 'ish vaqti tugadi', NULL, NULL, 0),
(12, 'pending', 63, '2022-01-29 07:56:04', '2022-01-29 08:06:22', NULL, 'ish tugadi', NULL, NULL, 0),
(13, 'pending', 63, '2022-01-29 08:06:39', '2022-01-29 08:06:43', NULL, '1', NULL, NULL, 0),
(14, 'pending', 62, '2022-01-31 07:02:03', '2022-02-02 04:42:50', NULL, '', NULL, NULL, 0),
(15, 'pending', 63, '2022-01-31 12:07:47', '2022-01-31 12:07:59', NULL, '123', NULL, NULL, 0),
(16, 'pending', 63, '2022-01-31 12:08:05', '2022-02-01 05:28:37', NULL, '123', NULL, NULL, 0),
(17, 'pending', 63, '2022-02-01 05:30:49', '2022-02-01 05:30:54', NULL, '456', NULL, NULL, 0),
(18, 'pending', 105, '2022-02-01 09:23:28', '2022-02-09 10:38:27', NULL, 'lllll', NULL, NULL, 0),
(19, 'pending', 63, '2022-02-01 12:22:32', '2022-02-01 12:33:28', NULL, 'жюббб', NULL, NULL, 0),
(20, 'pending', 63, '2022-02-01 12:42:17', '2022-02-02 09:37:28', NULL, 'tugadi', NULL, NULL, 0),
(21, 'pending', 19, '2022-02-01 14:25:12', '2022-02-01 14:38:59', NULL, '01.02.2022 sanadagi ish faoliyati tugatildi.', NULL, NULL, 0),
(22, 'pending', 106, '2022-02-01 14:54:03', '2022-02-01 18:20:42', NULL, 'men ishdan chiqdim', NULL, NULL, 0),
(23, 'incomplete', 108, '2022-02-01 14:55:59', NULL, NULL, NULL, NULL, NULL, 0),
(24, 'pending', 65, '2022-02-01 15:06:43', '2022-02-02 04:09:14', NULL, '', NULL, NULL, 0),
(25, 'pending', 1, '2022-02-01 15:22:53', '2022-02-01 15:23:48', NULL, 'men yana bir bor tugatdim ishni xayr barchaga ', NULL, NULL, 0),
(26, 'pending', 37, '2022-02-02 03:31:08', '2022-02-03 03:36:14', NULL, '', NULL, NULL, 0),
(27, 'pending', 19, '2022-02-02 03:58:38', '2022-02-03 03:57:53', NULL, '', NULL, NULL, 0),
(28, 'pending', 65, '2022-02-02 04:09:17', '2022-02-02 15:45:50', NULL, 'Barcha hisobot bo‘lim boshlig‘iga topshirildi.', NULL, NULL, 0),
(29, 'pending', 60, '2022-02-02 04:12:57', '2022-02-03 05:16:06', NULL, '', NULL, NULL, 0),
(30, 'pending', 50, '2022-02-02 04:21:19', '2022-02-07 05:34:05', NULL, '', NULL, NULL, 0),
(31, 'pending', 57, '2022-02-02 04:30:34', '2022-02-07 03:54:37', NULL, '', NULL, NULL, 0),
(32, 'incomplete', 58, '2022-02-02 04:31:08', NULL, NULL, NULL, NULL, NULL, 0),
(33, 'incomplete', 14, '2022-02-02 04:37:04', NULL, NULL, NULL, NULL, NULL, 0),
(34, 'incomplete', 1, '2022-02-02 04:41:51', NULL, NULL, NULL, NULL, NULL, 0),
(35, 'pending', 62, '2022-02-02 04:42:56', '2022-02-08 11:09:30', NULL, '', NULL, NULL, 0),
(36, 'pending', 92, '2022-02-02 04:47:14', '2022-02-03 05:23:11', NULL, '', NULL, NULL, 0),
(37, 'pending', 54, '2022-02-02 06:29:05', '2022-02-03 04:38:19', NULL, '', NULL, NULL, 0),
(38, 'incomplete', 107, '2022-02-02 06:40:30', NULL, NULL, NULL, NULL, NULL, 0),
(39, 'pending', 61, '2022-02-02 07:38:42', '2022-02-03 04:20:33', NULL, 'иш вақти тугади\r\n', NULL, NULL, 0),
(40, 'pending', 21, '2022-02-02 08:20:13', '2022-02-24 04:57:08', NULL, '9:00', NULL, NULL, 0),
(41, 'pending', 106, '2022-02-02 09:12:33', '2022-02-02 18:32:16', NULL, 'Bugungi ishlar o\'z yakuniga yetdi', NULL, NULL, 0),
(42, 'incomplete', 40, '2022-02-02 13:44:22', NULL, NULL, NULL, NULL, NULL, 0),
(43, 'pending', 69, '2022-02-02 14:36:24', '2022-02-03 07:47:59', NULL, 'abetga\r\n', NULL, NULL, 0),
(44, 'incomplete', 113, '2022-02-02 15:30:23', NULL, NULL, NULL, NULL, NULL, 0),
(45, 'incomplete', 68, '2022-02-02 15:38:53', NULL, NULL, NULL, NULL, NULL, 0),
(46, 'pending', 37, '2022-02-03 03:36:17', '2022-02-07 04:22:12', NULL, '', NULL, NULL, 0),
(47, 'pending', 19, '2022-02-03 03:58:22', '2022-02-07 04:37:18', NULL, '', NULL, NULL, 0),
(48, 'pending', 65, '2022-02-03 04:00:13', '2022-02-10 04:04:29', NULL, '', NULL, NULL, 0),
(49, 'pending', 61, '2022-02-03 04:20:51', '2022-02-04 14:08:22', NULL, ' иш вақти тугади\r\n', NULL, NULL, 0),
(50, 'pending', 112, '2022-02-03 04:34:10', '2022-02-17 03:49:17', NULL, '', NULL, NULL, 0),
(51, 'pending', 114, '2022-02-03 04:40:09', '2022-02-04 11:58:17', NULL, 'Men ish faoliyatimni tugatdim', NULL, NULL, 0),
(52, 'incomplete', 111, '2022-02-03 04:56:49', NULL, NULL, NULL, NULL, NULL, 0),
(53, 'pending', 60, '2022-02-03 05:16:10', '2022-02-04 12:19:42', NULL, '', NULL, NULL, 0),
(54, 'pending', 92, '2022-02-03 05:23:14', '2022-02-05 06:57:15', NULL, '', NULL, NULL, 0),
(55, 'pending', 17, '2022-02-03 05:35:10', '2022-02-22 05:54:04', NULL, '', NULL, NULL, 0),
(56, 'incomplete', 48, '2022-02-03 05:58:38', NULL, NULL, NULL, NULL, NULL, 0),
(57, 'pending', 101, '2022-02-03 06:35:10', '2022-03-01 04:05:31', NULL, '9:00', NULL, NULL, 0),
(58, 'pending', 54, '2022-02-04 04:52:57', '2022-02-05 07:27:55', NULL, 'ish yakunlandi', NULL, NULL, 0),
(59, 'pending', 69, '2022-02-04 10:59:02', '2022-02-08 09:53:22', NULL, 'abet\r\n', NULL, NULL, 0),
(60, 'pending', 114, '2022-02-04 11:58:24', '2022-02-04 13:28:27', NULL, 'ish tugatish', NULL, NULL, 0),
(61, 'pending', 60, '2022-02-04 12:19:47', '2022-02-07 12:55:52', NULL, '', NULL, NULL, 0),
(62, 'pending', 109, '2022-02-04 12:28:51', '2022-02-28 11:40:28', NULL, '', NULL, NULL, 0),
(63, 'pending', 61, '2022-02-05 06:48:43', '2022-02-05 12:20:11', NULL, 'иш вакти тугади\r\n', NULL, NULL, 0),
(64, 'pending', 92, '2022-02-05 06:57:17', '2022-02-05 07:33:20', NULL, '', NULL, NULL, 0),
(65, 'pending', 54, '2022-02-05 07:27:58', '2022-02-07 04:48:56', NULL, '', NULL, NULL, 0),
(66, 'pending', 106, '2022-02-05 14:22:35', '2022-02-05 14:24:32', NULL, '', NULL, NULL, 0),
(67, 'pending', 106, '2022-02-06 08:50:31', '2022-02-06 10:36:36', NULL, 'Men bugun ya\'ni yakshanba kuni sihimni yakunladim lekin dasturga kunlik ishga biron narsa qo\'yay desam iloji boi\'lmadi menimcha servir ishlamayapti', NULL, NULL, 0),
(68, 'pending', 57, '2022-02-07 03:54:41', '2022-02-10 11:37:02', NULL, '', NULL, NULL, 0),
(69, 'pending', 61, '2022-02-07 04:21:42', '2022-02-07 14:24:53', NULL, 'иш вақтим тугади\r\n', NULL, NULL, 0),
(70, 'pending', 37, '2022-02-07 04:22:15', '2022-02-08 04:38:48', NULL, '', NULL, NULL, 0),
(71, 'pending', 92, '2022-02-07 04:24:10', '2022-02-07 13:12:33', NULL, '', NULL, NULL, 0),
(72, 'pending', 19, '2022-02-07 04:37:21', '2022-02-07 14:27:15', NULL, '', NULL, NULL, 0),
(73, 'pending', 50, '2022-02-07 05:34:08', '2022-02-09 04:32:38', NULL, '', NULL, NULL, 0),
(74, 'pending', 106, '2022-02-07 11:27:33', '2022-02-16 10:39:22', NULL, '', NULL, NULL, 0),
(75, 'pending', 60, '2022-02-07 12:55:57', '2022-02-08 04:03:55', NULL, '', NULL, NULL, 0),
(76, 'pending', 19, '2022-02-08 04:03:48', '2022-02-09 04:00:34', NULL, '', NULL, NULL, 0),
(77, 'pending', 60, '2022-02-08 04:03:57', '2022-02-08 12:42:08', NULL, '', NULL, NULL, 0),
(78, 'pending', 61, '2022-02-08 04:13:22', '2022-02-09 14:42:14', NULL, 'иш вақтим тугади\r\n', NULL, NULL, 0),
(79, 'pending', 37, '2022-02-08 04:38:51', '2022-02-14 05:18:34', NULL, '', NULL, NULL, 0),
(80, 'incomplete', 69, '2022-02-08 09:53:55', NULL, NULL, NULL, NULL, NULL, 0),
(81, 'pending', 62, '2022-02-08 11:09:32', '2022-02-16 16:33:44', NULL, '', NULL, NULL, 0),
(82, 'pending', 54, '2022-02-08 15:13:52', '2022-02-09 09:21:15', NULL, 'yakunlandi', NULL, NULL, 0),
(83, 'pending', 19, '2022-02-09 04:00:43', '2022-02-09 14:24:55', NULL, '', NULL, NULL, 0),
(84, 'pending', 114, '2022-02-09 04:10:13', '2022-02-09 14:26:35', NULL, 'ишдан  кетиш  вакти\r\n', NULL, NULL, 0),
(85, 'pending', 60, '2022-02-09 04:28:42', '2022-02-10 04:27:15', NULL, '', NULL, NULL, 0),
(86, 'pending', 50, '2022-02-09 04:32:42', '2022-02-10 04:26:23', NULL, '', NULL, NULL, 0),
(87, 'pending', 92, '2022-02-09 04:40:49', '2022-02-09 13:19:11', NULL, '', NULL, NULL, 0),
(88, 'pending', 54, '2022-02-09 09:21:20', '2022-02-11 07:16:39', NULL, '', NULL, NULL, 0),
(89, 'pending', 65, '2022-02-10 04:04:30', '2022-02-10 04:04:31', NULL, NULL, NULL, NULL, 0),
(90, 'pending', 65, '2022-02-10 04:04:35', '2022-02-21 16:58:43', NULL, '', NULL, NULL, 0),
(91, 'pending', 19, '2022-02-10 04:12:47', '2022-02-12 04:32:51', NULL, '', NULL, NULL, 0),
(92, 'pending', 92, '2022-02-10 04:25:49', '2022-02-11 13:06:29', NULL, '', NULL, NULL, 0),
(93, 'pending', 50, '2022-02-10 04:26:25', '2022-02-15 04:02:42', NULL, '', NULL, NULL, 0),
(94, 'pending', 60, '2022-02-10 04:27:17', '2022-02-14 05:16:32', NULL, '', NULL, NULL, 0),
(95, 'pending', 114, '2022-02-10 04:27:46', '2022-02-15 03:39:06', NULL, '', NULL, NULL, 0),
(96, 'incomplete', 105, '2022-02-10 05:42:29', NULL, NULL, NULL, NULL, NULL, 0),
(97, 'pending', 57, '2022-02-10 11:37:06', '2022-02-10 13:29:23', NULL, 'раҳбарга бажарилган иш юзасидан билдиришнома юборилди, ДТМда ўқитувчилар билан тест юзасидан прокуратура топшириғи бажарилди, эртага 09.30.да йиғилиш ва бажарилган ишлар ҳисоботи: ҳар бир фан бўйича, вазирлик Интеграция бўлими бошлиғи билан касб-ҳунарга йўналтириш масаласи муҳокама этилди, маълумот тақдим этилди, ВМнинг 972-сон қарори қайта ўрганилди, ', NULL, NULL, 0),
(98, 'pending', 61, '2022-02-10 14:10:18', '2022-02-10 14:10:25', NULL, 'тттт', NULL, NULL, 0),
(99, 'pending', 19, '2022-02-12 04:32:54', '2022-02-12 12:50:36', NULL, '', NULL, NULL, 0),
(100, 'pending', 92, '2022-02-14 05:16:22', '2022-02-16 13:36:05', NULL, '', NULL, NULL, 0),
(101, 'pending', 60, '2022-02-14 05:16:38', '2022-02-15 04:08:43', NULL, '', NULL, NULL, 0),
(102, 'pending', 37, '2022-02-14 05:18:36', '2022-02-17 05:23:29', NULL, '', NULL, NULL, 0),
(103, 'pending', 19, '2022-02-14 09:06:40', '2022-02-15 04:03:23', NULL, '', NULL, NULL, 0),
(104, 'pending', 115, '2022-02-14 14:22:43', '2022-02-17 06:11:02', NULL, '', NULL, NULL, 0),
(105, 'pending', 114, '2022-02-15 03:39:10', '2022-02-17 05:43:51', NULL, '', NULL, NULL, 0),
(106, 'pending', 50, '2022-02-15 04:02:48', '2022-02-15 15:28:38', NULL, '', NULL, NULL, 0),
(107, 'pending', 19, '2022-02-15 04:03:26', '2022-02-15 14:26:04', NULL, '', NULL, NULL, 0),
(108, 'pending', 60, '2022-02-15 04:08:46', '2022-02-15 13:09:25', NULL, '', NULL, NULL, 0),
(109, 'pending', 54, '2022-02-15 09:05:18', '2022-02-15 15:20:55', NULL, 'Uyga ketdim, ish tugadi\r\n', NULL, NULL, 0),
(110, 'pending', 60, '2022-02-16 03:43:10', '2022-02-17 03:34:41', NULL, '', NULL, NULL, 0),
(111, 'pending', 19, '2022-02-16 04:02:41', '2022-02-17 04:51:11', NULL, '', NULL, NULL, 0),
(112, 'pending', 50, '2022-02-16 04:12:13', '2022-02-16 04:12:18', NULL, '', NULL, NULL, 0),
(113, 'pending', 50, '2022-02-16 04:12:26', '2022-02-16 14:06:49', NULL, '', NULL, NULL, 0),
(114, 'pending', 61, '2022-02-16 05:52:21', '2022-02-17 17:08:28', NULL, 'иш ваытим тугади\r\n', NULL, NULL, 0),
(115, 'pending', 54, '2022-02-16 08:33:33', '2022-02-17 05:16:30', NULL, '', NULL, NULL, 0),
(116, 'pending', 38, '2022-02-16 13:39:49', '2022-02-17 13:59:08', NULL, '', NULL, NULL, 0),
(117, 'pending', 62, '2022-02-16 16:33:50', '2022-02-17 03:50:10', NULL, '', NULL, NULL, 0),
(118, 'pending', 60, '2022-02-17 03:34:44', '2022-02-21 04:32:45', NULL, '', NULL, NULL, 0),
(119, 'pending', 112, '2022-02-17 03:49:20', '2022-02-18 04:22:28', NULL, 'Ишни бошладим', NULL, NULL, 0),
(120, 'pending', 62, '2022-02-17 03:50:11', '2022-02-17 03:50:15', NULL, NULL, NULL, NULL, 0),
(121, 'pending', 62, '2022-02-17 03:50:18', '2022-02-18 05:14:23', NULL, '', NULL, NULL, 0),
(122, 'pending', 92, '2022-02-17 04:21:12', '2022-02-17 14:04:51', NULL, '', NULL, NULL, 0),
(123, 'pending', 19, '2022-02-17 04:51:16', '2022-02-17 15:20:53', NULL, '', NULL, NULL, 0),
(124, 'pending', 50, '2022-02-17 05:06:07', '2022-02-18 03:55:18', NULL, '', NULL, NULL, 0),
(125, 'pending', 37, '2022-02-17 05:23:32', '2022-02-21 05:30:37', NULL, '', NULL, NULL, 0),
(126, 'pending', 114, '2022-02-17 05:43:54', '2022-02-17 15:29:25', NULL, 'иш ', NULL, NULL, 0),
(127, 'pending', 115, '2022-02-17 06:11:03', '2022-02-17 06:11:07', NULL, NULL, NULL, NULL, 0),
(128, 'pending', 115, '2022-02-17 06:11:09', '2022-02-17 06:11:25', NULL, '', NULL, NULL, 0),
(129, 'pending', 115, '2022-02-17 06:11:31', '2022-02-17 06:11:40', NULL, '', NULL, NULL, 0),
(130, 'pending', 115, '2022-02-17 06:11:44', '2022-02-19 05:54:11', NULL, '', NULL, NULL, 0),
(131, 'pending', 106, '2022-02-17 08:34:07', '2022-02-18 10:47:51', NULL, '', NULL, NULL, 0),
(132, 'pending', 38, '2022-02-17 13:59:16', '2022-02-18 04:08:28', NULL, '', NULL, NULL, 0),
(133, 'pending', 50, '2022-02-18 03:55:23', '2022-02-18 13:08:44', NULL, '', NULL, NULL, 0),
(134, 'pending', 114, '2022-02-18 04:14:17', '2022-02-18 12:02:22', NULL, '', NULL, NULL, 0),
(135, 'pending', 112, '2022-02-18 04:22:34', '2022-02-21 04:52:38', NULL, 'ишдаман', NULL, NULL, 0),
(136, 'pending', 61, '2022-02-18 04:49:13', '2022-02-18 13:37:39', NULL, 'ииии', NULL, NULL, 0),
(137, 'pending', 92, '2022-02-18 05:12:22', '2022-02-18 13:02:24', NULL, '', NULL, NULL, 0),
(138, 'pending', 62, '2022-02-18 05:14:25', '2022-02-19 10:07:15', NULL, '', NULL, NULL, 0),
(139, 'pending', 54, '2022-02-18 05:43:15', '2022-02-22 09:19:30', NULL, '', NULL, NULL, 0),
(140, 'pending', 16, '2022-02-18 09:50:22', '2022-02-22 03:48:21', NULL, '', NULL, NULL, 0),
(141, 'pending', 106, '2022-02-18 10:47:52', '2022-02-18 10:47:54', NULL, NULL, NULL, NULL, 0),
(142, 'pending', 106, '2022-02-18 10:47:56', '2022-02-19 09:48:06', NULL, '', NULL, NULL, 0),
(143, 'pending', 38, '2022-02-18 14:18:49', '2022-02-18 14:19:00', NULL, '17.02.2022 y.\r\n3-sinf mashq daftari so’ngi betlari uchun matriallar muhokama qilindi.\r\nDie Deutschprofis A2.1 darslik lug’ati qisman tarjima qilindi.\r\nMO‘D ustida ishlandi. \r\n', NULL, NULL, 0),
(144, 'pending', 38, '2022-02-18 14:19:05', '2022-02-21 03:53:33', NULL, '', NULL, NULL, 0),
(145, 'pending', 19, '2022-02-18 14:42:14', '2022-02-18 14:43:35', NULL, '', NULL, NULL, 0),
(146, 'pending', 50, '2022-02-19 04:54:30', '2022-02-19 07:48:05', NULL, '', NULL, NULL, 0),
(147, 'pending', 19, '2022-02-19 04:59:01', '2022-02-21 04:04:50', NULL, '', NULL, NULL, 0),
(148, 'pending', 115, '2022-02-19 05:54:13', '2022-02-21 04:48:09', NULL, '', NULL, NULL, 0),
(149, 'pending', 61, '2022-02-19 07:18:45', '2022-02-21 04:51:54', NULL, 'АААА\r\n', NULL, NULL, 0),
(150, 'pending', 106, '2022-02-19 09:48:08', '2022-02-21 11:03:42', NULL, '', NULL, NULL, 0),
(151, 'pending', 62, '2022-02-19 10:07:16', '2022-02-19 10:07:18', NULL, NULL, NULL, NULL, 0),
(152, 'pending', 62, '2022-02-19 10:07:20', '2022-02-22 14:54:27', NULL, '', NULL, NULL, 0),
(153, 'incomplete', 116, '2022-02-19 10:50:41', NULL, NULL, NULL, NULL, NULL, 0),
(154, 'pending', 19, '2022-02-21 04:04:53', '2022-02-21 14:54:24', NULL, '', NULL, NULL, 0),
(155, 'pending', 92, '2022-02-21 04:04:53', '2022-02-21 13:07:09', NULL, '', NULL, NULL, 0),
(156, 'pending', 60, '2022-02-21 04:32:49', '2022-02-22 04:08:16', NULL, '', NULL, NULL, 0),
(157, 'incomplete', 103, '2022-02-21 04:38:12', NULL, NULL, NULL, NULL, NULL, 0),
(158, 'pending', 115, '2022-02-21 04:48:13', '2022-02-24 14:33:14', NULL, '', NULL, NULL, 0),
(159, 'pending', 61, '2022-02-21 04:51:58', '2022-02-21 17:07:39', NULL, ' тугатиш\r\n', NULL, NULL, 0),
(160, 'pending', 112, '2022-02-21 04:52:43', '2022-02-22 09:23:05', NULL, 'ишдаман', NULL, NULL, 0),
(161, 'pending', 37, '2022-02-21 05:30:39', '2022-03-01 04:07:01', NULL, '', NULL, NULL, 0),
(162, 'pending', 50, '2022-02-21 05:46:01', '2022-02-21 05:46:08', NULL, '', NULL, NULL, 0),
(163, 'pending', 50, '2022-02-21 05:46:53', '2022-02-22 03:48:40', NULL, '', NULL, NULL, 0),
(164, 'pending', 106, '2022-02-21 11:03:44', '2022-02-22 09:45:57', NULL, '', NULL, NULL, 0),
(165, 'pending', 114, '2022-02-21 13:05:57', '2022-02-22 03:38:39', NULL, '', NULL, NULL, 0),
(166, 'pending', 38, '2022-02-21 14:29:28', '2022-02-21 14:29:32', NULL, '', NULL, NULL, 0),
(167, 'pending', 38, '2022-02-21 14:29:35', '2022-02-22 04:07:09', NULL, '', NULL, NULL, 0),
(168, 'pending', 114, '2022-02-22 03:38:42', '2022-02-22 16:06:21', NULL, '', NULL, NULL, 0),
(169, 'pending', 50, '2022-02-22 03:48:45', '2022-02-23 13:15:39', NULL, '', NULL, NULL, 0),
(170, 'pending', 60, '2022-02-22 04:08:18', '2022-02-23 05:24:02', NULL, '', NULL, NULL, 0),
(171, 'pending', 19, '2022-02-22 04:08:49', '2022-02-22 14:47:13', NULL, '', NULL, NULL, 0),
(172, 'pending', 61, '2022-02-22 04:22:15', '2022-03-01 04:51:57', NULL, 'fgfgfgfg', NULL, NULL, 0),
(173, 'pending', 92, '2022-02-22 05:19:22', '2022-02-23 13:00:56', NULL, '', NULL, NULL, 0),
(174, 'pending', 65, '2022-02-22 06:27:31', '2022-02-23 04:25:27', NULL, '', NULL, NULL, 0),
(175, 'pending', 112, '2022-02-22 09:23:10', '2022-02-23 04:24:50', NULL, 'ишга келдим', NULL, NULL, 0),
(176, 'pending', 106, '2022-02-22 09:46:00', '2022-02-27 10:22:18', NULL, '', NULL, NULL, 0),
(177, 'pending', 17, '2022-02-22 12:47:04', '2022-02-22 12:47:10', NULL, '', NULL, NULL, 0),
(178, 'pending', 17, '2022-02-22 12:50:14', '2022-02-22 12:50:19', NULL, '', NULL, NULL, 0),
(179, 'pending', 17, '2022-02-22 13:07:37', '2022-02-22 13:07:45', NULL, '', NULL, NULL, 0),
(180, 'incomplete', 57, '2022-02-22 13:15:54', NULL, NULL, NULL, NULL, NULL, 0),
(181, 'pending', 38, '2022-02-22 14:04:24', '2022-02-23 04:11:45', NULL, '23.02.2022', NULL, NULL, 0),
(182, 'pending', 16, '2022-02-22 14:41:55', '2022-02-23 03:56:14', NULL, '', NULL, NULL, 0),
(183, 'pending', 114, '2022-02-23 03:56:50', '2022-02-23 14:25:44', NULL, '', NULL, NULL, 0),
(184, 'pending', 19, '2022-02-23 04:08:12', '2022-02-23 14:33:38', NULL, '', NULL, NULL, 0),
(185, 'pending', 112, '2022-02-23 04:25:00', '2022-02-24 04:33:25', NULL, 'ишдаман', NULL, NULL, 0),
(186, 'pending', 54, '2022-02-23 04:25:06', '2022-02-24 04:42:48', NULL, '', NULL, NULL, 0),
(187, 'pending', 65, '2022-02-23 04:25:30', '2022-02-24 04:05:46', NULL, '', NULL, NULL, 0),
(188, 'pending', 60, '2022-02-23 05:24:04', '2022-02-23 13:14:46', NULL, '', NULL, NULL, 0),
(189, 'pending', 62, '2022-02-23 07:56:29', '2022-02-25 05:09:39', NULL, '', NULL, NULL, 0),
(190, 'pending', 17, '2022-02-23 13:05:03', '2022-02-24 03:55:38', NULL, '', NULL, NULL, 0),
(191, 'pending', 38, '2022-02-23 14:17:33', '2022-02-24 03:49:08', NULL, '24.02.2022\r\n', NULL, NULL, 0),
(192, 'pending', 16, '2022-02-23 15:36:57', '2022-02-24 03:56:24', NULL, '', NULL, NULL, 0),
(193, 'pending', 19, '2022-02-24 04:02:59', '2022-02-24 14:55:06', NULL, '', NULL, NULL, 0),
(194, 'pending', 114, '2022-02-24 04:04:51', '2022-02-25 03:42:33', NULL, '', NULL, NULL, 0),
(195, 'pending', 65, '2022-02-24 04:05:47', '2022-02-24 04:05:52', NULL, NULL, NULL, NULL, 0),
(196, 'pending', 65, '2022-02-24 04:06:12', '2022-02-25 05:04:20', NULL, '', NULL, NULL, 0),
(197, 'pending', 92, '2022-02-24 04:25:04', '2022-02-24 13:00:41', NULL, '', NULL, NULL, 0),
(198, 'pending', 112, '2022-02-24 04:33:30', '2022-02-25 04:33:13', NULL, 'ишдаман', NULL, NULL, 0),
(199, 'incomplete', 52, '2022-02-24 04:50:13', NULL, NULL, NULL, NULL, NULL, 0),
(200, 'pending', 60, '2022-02-24 05:28:28', '2022-02-25 04:04:17', NULL, '', NULL, NULL, 0),
(201, 'pending', 98, '2022-02-24 08:06:37', '2022-02-24 08:06:58', NULL, '', NULL, NULL, 0),
(202, 'pending', 38, '2022-02-24 13:43:32', '2022-02-25 04:00:50', NULL, '25.02.2022\r\n', NULL, NULL, 0),
(203, 'pending', 114, '2022-02-25 03:42:37', '2022-02-25 13:01:00', NULL, '', NULL, NULL, 0),
(204, 'pending', 115, '2022-02-25 03:51:30', '2022-03-01 15:26:07', NULL, '', NULL, NULL, 0),
(205, 'pending', 16, '2022-02-25 03:52:15', '2022-02-25 03:52:19', NULL, '', NULL, NULL, 0),
(206, 'pending', 19, '2022-02-25 03:58:45', '2022-02-25 15:21:22', NULL, '', NULL, NULL, 0),
(207, 'pending', 50, '2022-02-25 04:02:21', '2022-02-25 15:00:20', NULL, '', NULL, NULL, 0),
(208, 'pending', 60, '2022-02-25 04:04:20', '2022-02-26 05:21:32', NULL, '', NULL, NULL, 0),
(209, 'pending', 92, '2022-02-25 04:18:39', '2022-02-25 13:10:22', NULL, '', NULL, NULL, 0),
(210, 'pending', 65, '2022-02-25 05:04:22', '2022-02-28 06:12:29', NULL, '', NULL, NULL, 0),
(211, 'pending', 21, '2022-02-25 05:05:21', '2022-02-28 09:43:51', NULL, '9:00', NULL, NULL, 0),
(212, 'pending', 54, '2022-02-25 05:09:15', '2022-02-28 06:03:18', NULL, '', NULL, NULL, 0),
(213, 'incomplete', 62, '2022-02-25 05:09:42', NULL, NULL, NULL, NULL, NULL, 0),
(214, 'incomplete', 63, '2022-02-25 13:35:42', NULL, NULL, NULL, NULL, NULL, 0),
(215, 'pending', 38, '2022-02-25 13:47:09', '2022-02-25 13:48:09', NULL, '', NULL, NULL, 0),
(216, 'pending', 38, '2022-02-25 13:48:12', '2022-02-28 04:24:46', NULL, 'bugun 28.02.2022.\r\n', NULL, NULL, 0),
(217, 'pending', 50, '2022-02-25 15:00:25', '2022-02-28 04:13:36', NULL, '', NULL, NULL, 0),
(218, 'pending', 19, '2022-02-26 04:00:27', '2022-02-26 11:23:02', NULL, '', NULL, NULL, 0),
(219, 'pending', 60, '2022-02-26 05:21:34', '2022-02-28 05:06:45', NULL, '', NULL, NULL, 0),
(220, 'pending', 92, '2022-02-26 05:26:02', '2022-02-26 08:00:32', NULL, '', NULL, NULL, 0),
(221, 'pending', 19, '2022-02-27 05:23:01', '2022-02-28 15:40:21', NULL, '', NULL, NULL, 0),
(222, 'pending', 114, '2022-02-27 05:37:18', '2022-02-27 14:56:44', NULL, '', NULL, NULL, 0),
(223, 'pending', 106, '2022-02-27 10:22:21', '2022-02-28 10:34:56', NULL, '', NULL, NULL, 0),
(224, 'pending', 92, '2022-02-28 03:53:36', '2022-03-01 04:28:18', NULL, '', NULL, NULL, 0),
(225, 'incomplete', 50, '2022-02-28 04:13:39', NULL, NULL, NULL, NULL, NULL, 0),
(226, 'pending', 114, '2022-02-28 04:15:12', '2022-03-01 04:54:21', NULL, '', NULL, NULL, 0),
(227, 'pending', 60, '2022-02-28 05:06:47', '2022-03-01 04:25:40', NULL, '', NULL, NULL, 0),
(228, 'incomplete', 65, '2022-02-28 06:12:32', NULL, NULL, NULL, NULL, NULL, 0),
(229, 'pending', 102, '2022-02-28 10:03:24', '2022-03-01 05:45:58', NULL, '', NULL, NULL, 0),
(230, 'pending', 112, '2022-02-28 10:33:09', '2022-03-01 03:16:45', NULL, 'ИШГА КЕЛДИМ', NULL, NULL, 0),
(231, 'incomplete', 106, '2022-02-28 10:34:58', NULL, NULL, NULL, NULL, NULL, 0),
(232, 'pending', 38, '2022-02-28 10:58:02', '2022-02-28 10:58:19', NULL, '', NULL, NULL, 0),
(233, 'pending', 38, '2022-02-28 10:58:31', '2022-02-28 10:58:53', NULL, '', NULL, NULL, 0),
(234, 'pending', 38, '2022-02-28 10:59:10', '2022-02-28 14:14:55', NULL, 'Bugun 25 minda ham qilingan ishni faylini jo\'natishni iloji bo\'lmadi. Shuning uchun Faqat matnli hisobot jo\'natildi. ', NULL, NULL, 0),
(235, 'incomplete', 121, '2022-02-28 11:28:06', NULL, NULL, NULL, NULL, NULL, 0),
(236, 'incomplete', 109, '2022-02-28 11:40:35', NULL, NULL, NULL, NULL, NULL, 0),
(237, 'pending', 112, '2022-03-01 03:16:52', '2022-03-02 04:32:49', NULL, 'ишдаман', NULL, NULL, 0),
(238, 'pending', 38, '2022-03-01 03:49:46', '2022-03-01 14:22:49', NULL, 'Bugun kunlik hisobotda har bir qilingan ish alohida saqlanishi kkligini bildim. Shu paytgacha faqat umumlashtirilgan hisobot jo\'natayotgan edim. ', NULL, NULL, 0),
(239, 'pending', 21, '2022-03-01 04:02:35', '2022-03-02 04:23:49', NULL, '', NULL, NULL, 0),
(240, 'pending', 37, '2022-03-01 04:07:03', '2022-03-04 13:00:03', NULL, '', NULL, NULL, 0),
(241, 'pending', 120, '2022-03-01 04:08:48', '2022-03-01 04:08:54', NULL, '', NULL, NULL, 0),
(242, 'pending', 120, '2022-03-01 04:08:57', '2022-03-02 09:25:18', NULL, '', NULL, NULL, 0),
(243, 'pending', 19, '2022-03-01 04:10:29', '2022-03-02 14:26:30', NULL, '', NULL, NULL, 0),
(244, 'pending', 60, '2022-03-01 04:25:42', '2022-03-01 13:03:26', NULL, '', NULL, NULL, 0),
(245, 'pending', 92, '2022-03-01 04:28:24', '2022-03-01 12:59:39', NULL, '', NULL, NULL, 0),
(246, 'pending', 54, '2022-03-01 04:39:58', '2022-03-02 04:21:08', NULL, '', NULL, NULL, 0),
(247, 'pending', 61, '2022-03-01 04:52:00', '2022-03-01 15:21:11', NULL, 'аааа', NULL, NULL, 0),
(248, 'pending', 114, '2022-03-01 04:54:23', '2022-03-01 15:24:55', NULL, '', NULL, NULL, 0),
(249, 'pending', 117, '2022-03-01 05:28:18', '2022-03-02 04:15:01', NULL, '', NULL, NULL, 0),
(250, 'pending', 102, '2022-03-01 05:46:02', '2022-03-01 14:02:53', NULL, 'Ish kuni tugashi', NULL, NULL, 0),
(251, 'pending', 98, '2022-03-01 10:49:23', '2022-03-01 11:04:02', NULL, '', NULL, NULL, 0),
(252, 'pending', 118, '2022-03-01 11:10:12', '2022-03-02 04:15:06', NULL, '', NULL, NULL, 0),
(253, 'pending', 98, '2022-03-01 11:33:06', '2022-03-02 05:38:10', NULL, '18 00', NULL, NULL, 0),
(254, 'incomplete', 59, '2022-03-01 12:27:08', NULL, NULL, NULL, NULL, NULL, 0),
(255, 'pending', 123, '2022-03-01 12:47:46', '2022-03-01 13:23:27', NULL, '', NULL, NULL, 0),
(256, 'pending', 123, '2022-03-01 13:27:24', '2022-03-02 04:09:15', NULL, '', NULL, NULL, 0),
(257, 'incomplete', 97, '2022-03-01 13:36:16', NULL, NULL, NULL, NULL, NULL, 0),
(258, 'pending', 60, '2022-03-02 03:42:23', '2022-03-03 03:49:36', NULL, '', NULL, NULL, 0),
(259, 'pending', 38, '2022-03-02 03:46:25', '2022-03-02 12:23:13', NULL, '', NULL, NULL, 0),
(260, 'pending', 123, '2022-03-02 04:09:20', '2022-03-02 04:09:28', NULL, '', NULL, NULL, 0),
(261, 'pending', 117, '2022-03-02 04:15:03', '2022-03-03 09:18:12', NULL, '', NULL, NULL, 0),
(262, 'pending', 118, '2022-03-02 04:15:11', '2022-03-03 12:47:02', NULL, '', NULL, NULL, 0),
(263, 'pending', 115, '2022-03-02 04:31:05', '2022-03-02 14:47:38', NULL, '', NULL, NULL, 0),
(264, 'pending', 112, '2022-03-02 04:32:53', '2022-03-03 03:40:34', NULL, 'ишга келдим', NULL, NULL, 0),
(265, 'pending', 102, '2022-03-02 05:30:16', '2022-03-03 15:17:35', NULL, 'Иш вақти тугади', NULL, NULL, 0),
(266, 'pending', 98, '2022-03-02 05:38:13', '2022-03-03 11:00:42', NULL, '', NULL, NULL, 0),
(267, 'pending', 114, '2022-03-02 05:47:37', '2022-03-02 14:43:27', NULL, '', NULL, NULL, 0),
(268, 'pending', 92, '2022-03-02 06:05:49', '2022-03-02 13:17:35', NULL, '', NULL, NULL, 0),
(269, 'incomplete', 7, '2022-03-02 09:03:38', NULL, NULL, NULL, NULL, NULL, 0),
(270, 'pending', 120, '2022-03-02 09:25:21', '2022-03-02 14:49:39', NULL, '', NULL, NULL, 0),
(271, 'incomplete', 96, '2022-03-02 12:35:05', NULL, NULL, NULL, NULL, NULL, 0),
(272, 'pending', 123, '2022-03-02 13:46:08', '2022-03-03 04:16:38', NULL, '', NULL, NULL, 0),
(273, 'incomplete', 104, '2022-03-02 14:54:20', NULL, NULL, NULL, NULL, NULL, 0),
(274, 'incomplete', 34, '2022-03-02 15:05:21', NULL, NULL, NULL, NULL, NULL, 0),
(275, 'pending', 112, '2022-03-03 03:40:37', '2022-03-04 03:21:17', NULL, 'ишга келдим', NULL, NULL, 0),
(276, 'pending', 60, '2022-03-03 03:49:38', '2022-03-03 13:00:05', NULL, '', NULL, NULL, 0),
(277, 'pending', 120, '2022-03-03 04:09:22', '2022-03-03 04:09:33', NULL, '', NULL, NULL, 0),
(278, 'pending', 120, '2022-03-03 04:09:37', '2022-03-03 12:57:57', NULL, '', NULL, NULL, 0),
(279, 'pending', 92, '2022-03-03 04:34:45', '2022-03-03 12:58:10', NULL, '', NULL, NULL, 0),
(280, 'pending', 61, '2022-03-03 04:51:29', '2022-03-03 17:18:28', NULL, 'аааааааааа', NULL, NULL, 0),
(281, 'pending', 115, '2022-03-03 04:57:32', '2022-03-03 15:46:02', NULL, '', NULL, NULL, 0),
(282, 'pending', 114, '2022-03-03 05:36:10', '2022-03-03 15:38:30', NULL, '', NULL, NULL, 0),
(283, 'pending', 21, '2022-03-03 05:41:35', '2022-03-04 05:00:53', NULL, '', NULL, NULL, 0),
(284, 'pending', 117, '2022-03-03 09:18:15', '2022-03-04 03:57:58', NULL, '', NULL, NULL, 0),
(285, 'pending', 54, '2022-03-03 09:32:11', '2022-03-04 09:33:40', NULL, '', NULL, NULL, 0),
(286, 'incomplete', 126, '2022-03-03 09:33:23', NULL, NULL, NULL, NULL, NULL, 0),
(287, 'incomplete', 128, '2022-03-03 09:49:15', NULL, NULL, NULL, NULL, NULL, 0),
(288, 'pending', 98, '2022-03-03 11:00:49', '2022-03-03 13:08:18', NULL, '18 08', NULL, NULL, 0),
(289, 'pending', 19, '2022-03-03 11:53:08', '2022-03-03 15:17:25', NULL, '', NULL, NULL, 0),
(290, 'pending', 123, '2022-03-03 15:04:23', '2022-03-04 05:02:36', NULL, '', NULL, NULL, 0),
(291, 'pending', 16, '2022-03-03 15:20:02', '2022-03-04 04:07:09', NULL, '', NULL, NULL, 0),
(292, 'pending', 112, '2022-03-04 03:21:20', '2022-03-07 06:28:54', NULL, 'ишдаман', NULL, NULL, 0),
(293, 'incomplete', 119, '2022-03-04 03:57:17', NULL, NULL, NULL, NULL, NULL, 0),
(294, 'incomplete', 117, '2022-03-04 03:58:02', NULL, NULL, NULL, NULL, NULL, 0),
(295, 'pending', 114, '2022-03-04 04:02:49', '2022-03-04 16:08:41', NULL, '', NULL, NULL, 0),
(296, 'pending', 118, '2022-03-04 04:04:06', '2022-03-04 13:28:29', NULL, '', NULL, NULL, 0),
(297, 'pending', 92, '2022-03-04 04:05:48', '2022-03-07 05:54:05', NULL, '', NULL, NULL, 0),
(298, 'pending', 38, '2022-03-04 04:07:58', '2022-03-04 14:25:25', NULL, '', NULL, NULL, 0),
(299, 'pending', 19, '2022-03-04 04:10:30', '2022-03-04 14:21:09', NULL, '', NULL, NULL, 0),
(300, 'incomplete', 115, '2022-03-04 04:11:39', NULL, NULL, NULL, NULL, NULL, 0),
(301, 'incomplete', 60, '2022-03-04 04:36:44', NULL, NULL, NULL, NULL, NULL, 0),
(302, 'pending', 61, '2022-03-04 04:44:52', '2022-03-04 16:27:55', NULL, 'кккккккккккк', NULL, NULL, 0),
(303, 'pending', 120, '2022-03-04 05:03:16', '2022-03-04 05:03:22', NULL, '', NULL, NULL, 0),
(304, 'pending', 120, '2022-03-04 05:03:25', '2022-03-05 06:20:43', NULL, '', NULL, NULL, 0),
(305, 'pending', 102, '2022-03-04 05:19:13', '2022-03-04 14:38:59', NULL, 'Иш куни тугади', NULL, NULL, 0),
(306, 'incomplete', 98, '2022-03-04 05:23:51', NULL, NULL, NULL, NULL, NULL, 0),
(307, 'pending', 17, '2022-03-04 07:51:49', '2022-03-04 07:51:54', NULL, '', NULL, NULL, 0),
(308, 'pending', 130, '2022-03-04 10:54:51', '2022-03-05 05:16:21', NULL, '', NULL, NULL, 0),
(309, 'incomplete', 37, '2022-03-04 13:00:06', NULL, NULL, NULL, NULL, NULL, 0),
(310, 'pending', 123, '2022-03-04 13:32:33', '2022-03-04 13:32:33', NULL, NULL, NULL, NULL, 0),
(311, 'pending', 123, '2022-03-04 13:32:35', '2022-03-07 04:37:56', NULL, '', NULL, NULL, 0),
(312, 'pending', 114, '2022-03-05 03:47:53', '2022-03-05 15:09:46', NULL, '', NULL, NULL, 0),
(313, 'pending', 19, '2022-03-05 04:38:34', '2022-03-07 13:11:32', NULL, '', NULL, NULL, 0),
(314, 'pending', 21, '2022-03-05 05:07:01', '2022-03-07 04:18:36', NULL, '', NULL, NULL, 0),
(315, 'pending', 130, '2022-03-05 05:16:23', '2022-03-07 04:31:59', NULL, '', NULL, NULL, 0),
(316, 'pending', 120, '2022-03-05 06:20:47', '2022-03-07 12:26:22', NULL, '', NULL, NULL, 0),
(317, 'pending', 38, '2022-03-07 03:40:15', '2022-03-07 13:13:55', NULL, '', NULL, NULL, 0),
(318, 'pending', 114, '2022-03-07 04:02:25', '2022-03-07 14:26:02', NULL, '', NULL, NULL, 0),
(319, 'incomplete', 101, '2022-03-07 04:18:38', NULL, NULL, NULL, NULL, NULL, 0),
(320, 'incomplete', 118, '2022-03-07 04:26:01', NULL, NULL, NULL, NULL, NULL, 0),
(321, 'pending', 130, '2022-03-07 04:32:01', '2022-03-07 14:26:16', NULL, '', NULL, NULL, 0),
(322, 'incomplete', 54, '2022-03-07 05:24:46', NULL, NULL, NULL, NULL, NULL, 0),
(323, 'pending', 92, '2022-03-07 05:54:09', '2022-03-07 12:23:34', NULL, '', NULL, NULL, 0),
(324, 'incomplete', 112, '2022-03-07 06:31:00', NULL, NULL, NULL, NULL, NULL, 0),
(325, 'pending', 17, '2022-03-07 07:29:49', '2022-03-07 07:29:53', NULL, '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `checklist_items`
--

CREATE TABLE `checklist_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `is_checked` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `checklist_items`
--

INSERT INTO `checklist_items` (`id`, `title`, `is_checked`, `task_id`, `sort`, `deleted`) VALUES
(1, 'asdasd', 0, 33, 0, 0),
(2, 'dasdasd', 0, 33, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('551e0d18a7237085ed525c050e89063f25026787', '89.249.60.34', 1646651454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635313435343b5f63695f70726576696f75735f75726c7c733a33323a22687474703a2f2f6b70692e746172626979616d2e757a2f64617368626f617264223b757365725f69647c733a323a223231223b),
('a37d0778a42d401cff006eec50c740bb6a8c4d28', '89.249.60.34', 1646662095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363634353836363b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f32223b757365725f69647c733a323a223635223b),
('2e7fe8fab4e653d4e54c4243fd7421fc319355cb', '89.249.60.34', 1646651586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635313538363b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a333a22313037223b),
('136708e999ce269121fec1aeed1abe09944caa27', '89.249.60.34', 1646656081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635363038313b5f63695f70726576696f75735f75726c7c733a33373a22687474703a2f2f6b70692e746172626979616d2e757a2f6d657373616765732f696e626f78223b757365725f69647c733a333a22313138223b),
('45ea901969f57bca1f59bc4f569cdbacc44e4f0d', '89.249.60.34', 1646651457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635313435373b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('1da765ac3712cb8cf69dcb0c504c1722438538ed', '89.249.60.34', 1646654936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635343933363b5f63695f70726576696f75735f75726c7c733a33303a22687474703a2f2f6b70692e746172626979616d2e757a2f7265706f727473223b757365725f69647c733a323a223231223b),
('8f96fc87acdad4d66cace251595a6efdc4e9af56', '89.249.60.34', 1646653011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635333031313b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('f79b61c79253e59b212283cd13ed6b80432b8119', '89.249.60.34', 1646651963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635313936333b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a333a22313037223b),
('86c8dcecdc0b7ccebb5d7fc05506cecb29e82463', '89.249.60.34', 1646652061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635323036313b5f63695f70726576696f75735f75726c7c733a33303a22687474703a2f2f6b70692e746172626979616d2e757a2f7265706f727473223b757365725f69647c733a323a223639223b),
('79f3627c25b7c55a7e3124d1940cba6d73e53ef9', '89.249.60.34', 1646651980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635313936333b5f63695f70726576696f75735f75726c7c733a33323a22687474703a2f2f6b70692e746172626979616d2e757a2f64617368626f617264223b757365725f69647c733a333a22313037223b),
('83080d932351269a4903f2ca9efb40b7bd472cea', '89.249.60.34', 1646656146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635323036313b5f63695f70726576696f75735f75726c7c733a33393a22687474703a2f2f6b70692e746172626979616d2e757a2f73657474696e67732f67656e6572616c223b757365725f69647c733a323a223639223b),
('d41b7d489f3316b10e4c413b8f22da8b9b7ec909', '54.189.172.217', 1646652271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635323237303b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('b72f30bd978701b6fc59b079771511514d481670', '89.249.60.34', 1646652737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635323534353b5f63695f70726576696f75735f75726c7c733a33313a22687474703a2f2f6b70692e746172626979616d2e757a2f74696d656c696e65223b757365725f69647c733a333a22313136223b),
('5e24c4aa7c07bb7162ad2fb296b942d3ebf64a9b', '87.250.224.73', 1646652662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635323636323b),
('268d27b5674e927831937488d882f8344d2c1a82', '188.130.162.10', 1646652716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635323731363b5f63695f70726576696f75735f75726c7c733a3331353a22687474703a2f2f6b70692e746172626979616d2e757a2f6e6f74696669636174696f6e5f70726f636573736f722f6372656174655f6e6f74696669636174696f6e3f6576656e743d3031333432623530306132336132616532643234633165306365393464376330393563326130656134326561646465353866386537653134653632343336316132633437346636386463333633616134336530623563656539393633613535376330383637383632383533356363343263636166653536656436326161326564323561383537663537666238323032303532666133373966343565313833383439373739343532313231633464373862623733633564306230373635396464666662396331376233316464643631303330303531373832333864323026757365725f69643d31313626706f73745f69643d3332223b),
('5edb7e34b5dc8cb082842f0ce514bac7a79601aa', '87.250.224.17', 1646652930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635323933303b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('6e2ad4a7cf73cc158d9b45134359aac8a042d30f', '89.249.60.34', 1646655718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635353731383b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('6df0bab349e5f978b3d6163d8fe4a24da614f794', '89.249.60.34', 1646653877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635333033383b5f63695f70726576696f75735f75726c7c733a33303a22687474703a2f2f6b70692e746172626979616d2e757a2f7265706f727473223b757365725f69647c733a323a223232223b),
('6e7666e136cc27af8ce51ded3070cc9b15c388df', '89.249.60.34', 1646654115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635343131353b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a333a22313039223b),
('2a42f1c98f399e9854b2fc38280defa576dabe8a', '89.249.60.34', 1646653113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635333131333b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('2ac07b0d4afa9de84b8138cbe0c31f36b97220f6', '89.249.60.34', 1646653436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635333433363b5f63695f70726576696f75735f75726c7c733a33303a22687474703a2f2f6b70692e746172626979616d2e757a2f7265706f727473223b757365725f69647c733a323a223532223b),
('3030b70d9292a603f997fd107a3e284f03f7e5d7', '213.180.203.98', 1646653239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635333233393b),
('a909bfc1061c6fe52d5cd5470628a58d4e2984d6', '89.249.60.34', 1646653740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635333734303b5f63695f70726576696f75735f75726c7c733a33303a22687474703a2f2f6b70692e746172626979616d2e757a2f7265706f727473223b757365725f69647c733a323a223532223b),
('2937cc2503c4016585261e84d3a6c2a5f6c50e47', '87.250.224.161', 1646653530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635333533303b5f63695f70726576696f75735f75726c7c733a39343a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e3f72656469726563743d687474702533412532462532466b70692e746172626979616d2e757a253246696e6465782e7068702532467465616d5f6d656d62657273223b),
('62b44a06fc6acf182ae27685ff46972883b14bfb', '89.249.60.34', 1646653966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635333936363b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f33223b757365725f69647c733a323a223534223b),
('8b790b818b846bffe02bf76dad2ec25b18196447', '89.249.60.34', 1646653838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635333630303b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a323a223538223b),
('28e2b78c5a0335b012c28c412643649546feee44', '89.249.60.34', 1646654096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635333734303b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a323a223532223b),
('c66714930f7fab192a95ea12896641b24a524ade', '89.249.60.34', 1646654782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635343738323b5f63695f70726576696f75735f75726c7c733a33383a2268747470733a2f2f6b70692e746172626979616d2e757a2f6d657373616765732f696e626f78223b757365725f69647c733a333a22313031223b),
('430de6e2e42a10d80aee2e077906f5d7f85bb20f', '89.249.60.34', 1646654528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635343532383b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a323a223534223b),
('b1d5111220de77bbab8e82ce5fefff95bde3b930', '89.249.60.34', 1646655531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635343131353b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a333a22313039223b),
('10f9f22dc4afd282aa196f4cdd855ca771dd1699', '89.249.60.34', 1646659606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635393630363b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a323a223137223b),
('015ca6ed8826d0693e1b17fc8c96c6d2429e7c25', '89.249.60.34', 1646655161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635343532383b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a323a223534223b),
('665dde14e35fe4f410f8cacac0dbae4004cae4ab', '89.249.60.34', 1646655256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635343738323b5f63695f70726576696f75735f75726c7c733a34333a2268747470733a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f32223b757365725f69647c733a333a22313031223b),
('78bf7f58395e5aa7ce6fb6bc65f92d43da7f237f', '89.249.60.34', 1646655693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635353639333b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a323a223231223b),
('d0a2810c69c918d680808f97e268a0ff1fe8cdb5', '89.249.60.34', 1646658294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635353639333b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a323a223231223b),
('bf5fe966493f0d4dfc35b605dbd7ecd0e997d69a', '89.249.60.34', 1646658611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635383631313b5f63695f70726576696f75735f75726c7c733a33323a22687474703a2f2f6b70692e746172626979616d2e757a2f64617368626f617264223b757365725f69647c733a323a223139223b),
('51884249914675b04fdc082600963c730bfbe322', '89.249.60.34', 1646655821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635353739333b5f63695f70726576696f75735f75726c7c733a33323a22687474703a2f2f6b70692e746172626979616d2e757a2f64617368626f617264223b757365725f69647c733a323a223932223b),
('0e561d3c9076e54b5eb2fbdf60674a16df9f592e', '89.249.60.34', 1646656006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635353937353b5f63695f70726576696f75735f75726c7c733a33323a22687474703a2f2f6b70692e746172626979616d2e757a2f64617368626f617264223b757365725f69647c733a333a22313230223b),
('7fb44c38afb67836a7332ad135ea5f043660b299', '89.249.60.34', 1646656147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635363038313b5f63695f70726576696f75735f75726c7c733a33323a22687474703a2f2f6b70692e746172626979616d2e757a2f64617368626f617264223b757365725f69647c733a333a22313138223b),
('1b454bc6a067edea79e881dad713c728deba5f81', '89.249.60.34', 1646656396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635363135333b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a333a22313236223b),
('5956d3547950cac356c415690e4146f441de56df', '89.249.60.34', 1646658694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635383631313b5f63695f70726576696f75735f75726c7c733a33323a22687474703a2f2f6b70692e746172626979616d2e757a2f64617368626f617264223b757365725f69647c733a323a223139223b),
('3313d0b9933fcd54ef40304caba6c4722957d013', '23.228.130.70', 1646658730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635383733303b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('106c38c324a3e8a9d7dce8e8f611d2c9cb103bb9', '89.249.60.34', 1646658839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635383833393b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('242faad2657608d825583dff06bba756a10cc546', '89.249.60.34', 1646659606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363635393630363b5f63695f70726576696f75735f75726c7c733a34323a22687474703a2f2f6b70692e746172626979616d2e757a2f696e64696361746f72732f706172656e742f36223b757365725f69647c733a323a223137223b),
('a18a28111a0764d9abf68d0a17f155d38a458479', '89.249.60.34', 1646661724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636313431383b5f63695f70726576696f75735f75726c7c733a33373a22687474703a2f2f6b70692e746172626979616d2e757a2f6d657373616765732f696e626f78223b757365725f69647c733a323a223136223b),
('fb5664d85e68d371dc12c93ce4aa089fe978c146', '89.249.60.34', 1646661774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636313737333b5f63695f70726576696f75735f75726c7c733a38393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e3f72656469726563743d687474702533412532462532466b70692e746172626979616d2e757a253246696e6465782e7068702532467265706f727473223b),
('b557124bd57b3036677ce83a3d5bf45315fbe079', '89.249.60.34', 1646663164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636313939303b5f63695f70726576696f75735f75726c7c733a32333a22687474703a2f2f6b70692e746172626979616d2e757a2f223b757365725f69647c733a333a22313134223b),
('d937b9b5e850d5c3c19653bf7f374d6c56cbf675', '89.249.60.34', 1646663208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363636333135363b5f63695f70726576696f75735f75726c7c733a33313a22687474703a2f2f6b70692e746172626979616d2e757a2f74696d656c696e65223b757365725f69647c733a333a22313330223b),
('8494f33bf8bd7975b262176002475a00a5b1240a', '84.54.76.181', 1646675410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363637353430393b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('6868ae268c41d95fed9ca63628e09e12af0be8e5', '162.243.4.24', 1646689811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363638393831313b),
('fe99dddcf051daf92e7f347c6a04978a469e4e36', '94.203.203.209', 1646689813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363638393831313b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('1f76d9cded24c9dee6fbe1236ef97cf6decbd516', '94.203.203.209', 1646689814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363638393831333b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('2ef2c218fc50db7d16e1b3666818efff65901124', '198.199.97.10', 1646689814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363638393831343b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('c0ccf0c5ce34b0d36244106b49d6f62d5cc4a1f0', '213.230.114.217', 1646709507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363730393530373b5f63695f70726576696f75735f75726c7c733a38393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e3f72656469726563743d687474702533412532462532466b70692e746172626979616d2e757a253246696e6465782e7068702532467265706f727473223b),
('2fe19f70000e3e32ed79fe9de0a2e57bada4ff15', '34.77.162.16', 1646716751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363731363735303b),
('004bda3f17170e0926016a61692518bb7f70f991', '84.54.78.188', 1646718198, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363731383139383b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('73b50277d2bd24b2adf8c539b5e8315f0705a506', '84.54.78.188', 1646718248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363731383234383b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('832a6f41b31a336a63c6e9e6a0536cc258f241d2', '213.230.114.217', 1646718673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363731383637333b5f63695f70726576696f75735f75726c7c733a38393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e3f72656469726563743d687474702533412532462532466b70692e746172626979616d2e757a253246696e6465782e7068702532467265706f727473223b),
('8b81f9f82d29bc97ba35aa0e5f0fe821652137df', '87.250.224.73', 1646729781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363732393738313b),
('0c7ab7c081ab4bc21e1c9817702ca2b4507423b8', '5.255.253.142', 1646730019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363733303031393b5f63695f70726576696f75735f75726c7c733a3130353a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e3f72656469726563743d687474702533412532462532466b70692e746172626979616d2e757a253246696e6465782e706870253246696e64696361746f7273253246706172656e7425324636223b),
('6ed5d8b394e71f6966d70ce9cad844d3b5860825', '87.250.224.17', 1646730535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363733303533353b5f63695f70726576696f75735f75726c7c733a32393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e223b),
('d223d98196d68f3b76742a02d4d0e74884a96bf9', '87.250.224.85', 1646731107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363733313130373b),
('ea8ce9d3c035817194d5719d6c255af36d665c29', '87.250.224.73', 1646731356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363733313335363b5f63695f70726576696f75735f75726c7c733a39313a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e3f72656469726563743d687474702533412532462532466b70692e746172626979616d2e757a253246696e6465782e70687025324664617368626f617264223b),
('a0ad731dea0cf34e9d37317d15550a12ef8f888b', '87.250.224.73', 1646731867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363733313836373b),
('6434584a321cec5463b41c2d014108ded7eebf87', '213.230.114.217', 1646732750, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363733323734393b5f63695f70726576696f75735f75726c7c733a38393a22687474703a2f2f6b70692e746172626979616d2e757a2f7369676e696e3f72656469726563743d687474702533412532462532466b70692e746172626979616d2e757a253246696e6465782e7068702532467265706f727473223b),
('38ba3391e45a129974f653bda3a8c38fe7f7e44a', '84.54.94.182', 1646757929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363735373839353b5f63695f70726576696f75735f75726c7c733a33323a22687474703a2f2f6b70692e746172626979616d2e757a2f64617368626f617264223b757365725f69647c733a333a22313131223b);

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `group_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_lead` tinyint(1) NOT NULL DEFAULT '0',
  `lead_status_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lead_source_id` int(11) NOT NULL,
  `last_lead_status` text COLLATE utf8_unicode_ci NOT NULL,
  `client_migration_date` date NOT NULL,
  `vat_number` text COLLATE utf8_unicode_ci,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `address`, `city`, `state`, `zip`, `country`, `created_date`, `website`, `phone`, `currency_symbol`, `starred_by`, `group_ids`, `deleted`, `is_lead`, `lead_status_id`, `owner_id`, `created_by`, `sort`, `lead_source_id`, `last_lead_status`, `client_migration_date`, `vat_number`, `currency`, `disable_online_payment`) VALUES
(1, 'Respublika ta\'lim markazi', 'test', 'ada', 'dada', 'dad', 'da', '2021-05-31', 'everbestlab.com', '8942345432', '', '', '', 0, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', 'UZS', 0),
(2, 'Urakoff_S_Company', 'sebzar', 'toshkent', 'Toshkent', '100000', 'Узбекистан', '2021-07-02', '', '', '', '', '', 1, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(3, 'Sherlock Consultung', 'Ipak\r\nYuli', 'Shahrisabz', 'Qashqadaryo', '181300', '', '2021-07-02', '', '+998992052115', '', '', '', 1, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0),
(4, 'Sherlock Consultung', 'Ipak\r\nYuli', 'Toshkent', 'Qashqadaryo', '181300', '', '2021-07-02', '', '+998992052115', '', '', '', 1, 0, 0, 0, 1, 0, 0, '', '0000-00-00', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `client_groups`
--

CREATE TABLE `client_groups` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8_unicode_ci NOT NULL,
  `example_variable_name` text COLLATE utf8_unicode_ci,
  `options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_estimate` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_order` tinyint(1) NOT NULL DEFAULT '0',
  `visible_to_admins_only` tinyint(1) NOT NULL DEFAULT '0',
  `hide_from_clients` tinyint(1) NOT NULL DEFAULT '0',
  `disable_editing_by_clients` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_kanban_card` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `related_to_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `custom_widgets`
--

CREATE TABLE `custom_widgets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `show_title` tinyint(1) NOT NULL DEFAULT '0',
  `show_border` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `custom_widgets`
--

INSERT INTO `custom_widgets` (`id`, `user_id`, `title`, `content`, `show_title`, `show_border`, `deleted`) VALUES
(1, 1, 'E\'lonlar', 'Muhim e\'lonlar', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dashboards`
--

CREATE TABLE `dashboards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `data` text COLLATE utf8_unicode_ci,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `dashboards`
--

INSERT INTO `dashboards` (`id`, `user_id`, `title`, `data`, `color`, `sort`, `deleted`) VALUES
(1, 5, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(2, 1, 'Mening vaqt jadvalim!', 'a:0:{}', '#29c2c2', 0, 1),
(3, 1, 'Davomat (Xodimlar ish soati)', 'a:0:{}', '#29c2c2', -99998, 1),
(4, 1, 'E\'lonlar!', 'a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"columns\";a:1:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:1:\"1\";s:5:\"title\";s:8:\"E\'lonlar\";}}}s:5:\"ratio\";s:2:\"12\";}}', '#f1c40f', 0, 0),
(5, 1, 'Mehnat ta\'til muddati', 'a:0:{}', '#83c340', 3, 0),
(6, 16, 'lavozimi', 'a:0:{}', '#83c340', 0, 0),
(7, 39, 'Lavozimi', 'a:0:{}', '#83c340', 513, 0),
(8, 39, 'Vazifani bajarish holati', 'a:0:{}', '#29c2c2', 263, 0),
(9, 39, 'Bo\'limi', 'a:0:{}', '#f1c40f', 138, 0),
(10, 39, 'Tadbirlar', 'a:0:{}', '#e74c3c', 76, 0),
(11, 39, 'E\'lonlar', 'a:0:{}', '#83c340', 44, 0),
(12, 39, 'Mehnat ta\'til muddati', 'a:0:{}', '#ad159e', 29, 0),
(13, 39, 'Muddati o\'tgan topshiriqlar', 'a:0:{}', '#34495e', 0, 0),
(14, 39, 'Vazifa bajarish holati: %', 'a:0:{}', '#dbadff', 21, 0),
(15, 39, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#e74c3c', -99987, 0),
(16, 39, 'Muhim eslatma', 'a:0:{}', '#e18a00', -49987, 0),
(17, 39, 'Yo\'riqnoma', 'a:0:{}', '#29c2c2', -199987, 0),
(18, 1, 'Lavozimi', 'a:0:{}', '#aab7b7', 519, 0),
(19, 1, 'Vazifa bajarish holati', 'a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"columns\";a:1:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:11:\"task_status\";s:5:\"title\";s:13:\"Vazifa holati\";}}}s:5:\"ratio\";s:2:\"12\";}}', '#f1c40f', 270, 0),
(20, 1, 'Bo\'limi', 'a:0:{}', '#e18a00', 0, 0),
(21, 1, 'Tadbirlar', 'a:0:{}', '#e74c3c', 12, 0),
(22, 1, 'Vazifa bajarish holati: %', 'a:0:{}', '#ad159e', -49998, 0),
(23, 1, 'Muddati o\'tgan topshiriqlar', 'a:0:{}', '#34495e', -149998, 0),
(24, 1, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#ad159e', -249998, 0),
(25, 1, 'Muhim eslatma', 'a:0:{}', '#37b4e1', -349998, 0),
(26, 1, 'Yo\'riqnoma', 'a:0:{}', '#ad159e', 0, 0),
(27, 66, 'Lavozimi', 'a:0:{}', '#83c340', 537, 0),
(28, 66, 'Vazifa bajarish holati', 'a:0:{}', '#29c2c2', 287, 0),
(29, 66, 'Bo\'limi', 'a:0:{}', '#2d9cdb', 162, 0),
(30, 66, 'Tadbirlar', 'a:0:{}', '#aab7b7', 100, 0),
(31, 66, 'E\'lonlar', 'a:0:{}', '#f1c40f', 68, 0),
(32, 66, 'Mehnat ta\'til muddati', 'a:0:{}', '#e18a00', 53, 0),
(33, 66, 'Vazifa bajarish holati: %', 'a:0:{}', '#e74c3c', 45, 0),
(34, 66, 'Muddati o\'tgan topshiriqlar', 'a:0:{}', '#d43480', 41, 0),
(35, 66, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#ad159e', 39, 0),
(36, 66, 'Muhim eslatma', 'a:0:{}', '#37b4e1', 38, 0),
(37, 66, 'Yo\'riqnoma', 'a:0:{}', '#dbadff', 0, 0),
(38, 52, 'Yo\'riqnoma', 'a:0:{}', '#83c340', 0, 0),
(39, 52, 'Muhim eslatma', 'a:0:{}', '#29c2c2', 0, 0),
(40, 52, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(41, 52, 'Muddati o\'tgan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(42, 52, 'Vazifani bajarish holati: %', 'a:0:{}', '#f1c40f', 0, 0),
(43, 52, 'Mehnat ta\'til muddati', 'a:0:{}', '#e18a00', 0, 0),
(44, 52, 'E\'lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(45, 52, 'Tadbirlar', 'a:0:{}', '#d43480', 0, 0),
(46, 52, 'Bo\'limi', 'a:0:{}', '#ad159e', 0, 0),
(47, 52, 'Vazifa bajarish holati', 'a:0:{}', '#34495e', 0, 0),
(48, 52, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(49, 81, 'Yo\'riqnoma', 'a:0:{}', '#83c340', 0, 0),
(50, 81, 'Muhim eslatma', 'a:0:{}', '#29c2c2', 0, 0),
(51, 81, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(52, 81, 'Muddati o\'tgan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(53, 81, 'Vazifani bajarish holati: %', 'a:0:{}', '#f1c40f', 0, 0),
(54, 81, 'Mehnat ta\'til muddati', 'a:0:{}', '#e18a00', 0, 0),
(55, 81, 'E\'lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(56, 81, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(57, 81, 'Bo\'limi', 'a:0:{}', '#37b4e1', 0, 0),
(58, 81, 'Vazifa bajarish holati', 'a:0:{}', '#34495e', 0, 0),
(59, 81, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(60, 44, 'Yo\'riqnoma', 'a:0:{}', '#83c340', 0, 0),
(61, 44, 'Muhim eslatma', 'a:0:{}', '#29c2c2', 0, 0),
(62, 44, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(63, 44, 'Muddati o\'tgan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(64, 44, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(65, 44, 'Mehnat ta\'til muddati', 'a:0:{}', '#e18a00', 0, 0),
(66, 44, 'E\'lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(67, 44, 'Tadbirlar', 'a:0:{}', '#83c340', 0, 0),
(68, 44, 'Bo\'limi', 'a:0:{}', '#ad159e', 0, 0),
(69, 44, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(70, 44, 'Lavozimi', 'a:0:{}', '#34495e', 0, 0),
(71, 53, 'Yo\'riqnoma', 'a:0:{}', '#83c340', 0, 0),
(72, 53, 'Muhim eslatma', 'a:0:{}', '#29c2c2', 0, 0),
(73, 53, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#29c2c2', 0, 0),
(74, 53, 'Muddati o\'tgan topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(75, 53, 'Vazifa bajarish holati:%', 'a:0:{}', '#e74c3c', 0, 0),
(76, 53, 'Mehnat ta\'til muddati', 'a:0:{}', '#d43480', 0, 0),
(77, 53, 'E\'lonlar', 'a:0:{}', '#34495e', 0, 0),
(78, 53, 'Tadbirlar', 'a:0:{}', '#dbadff', 0, 0),
(79, 53, 'Bo\'limi', 'a:0:{}', '#ad159e', 0, 0),
(80, 53, 'Vazifa bajarish  holati', 'a:0:{}', '#d43480', 0, 0),
(81, 6, 'Yo\'riqnoma', 'a:0:{}', '#83c340', 0, 0),
(82, 6, 'Muhim eslatma', 'a:0:{}', '#29c2c2', 0, 0),
(83, 6, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(84, 6, 'Muddati o\'tgan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(85, 6, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(86, 6, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(87, 6, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(88, 6, 'Tadbirlar', 'a:0:{}', '#34495e', 0, 0),
(89, 6, 'Bo’limi', 'a:0:{}', '#e18a00', 0, 0),
(90, 6, 'Vazifa bajarish holati', 'a:0:{}', '#83c340', 0, 0),
(91, 6, 'Lavozimi', 'a:0:{}', '#83c340', 0, 0),
(92, 48, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(93, 48, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(94, 48, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(95, 48, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(96, 48, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(97, 48, 'Mehnat  ta’tili muddati', 'a:0:{}', '#d43480', 0, 0),
(98, 48, 'E’lonlar', 'a:0:{}', '#d43480', 0, 0),
(99, 48, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(100, 48, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(101, 48, 'Vazifa bajarish holati', 'a:0:{}', '#34495e', 0, 0),
(102, 48, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(103, 29, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(104, 29, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(105, 29, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(106, 29, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(107, 29, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(108, 29, 'Mehnat  ta’tili muddati', 'a:0:{}', '#d43480', 0, 0),
(109, 29, 'E’lonlar', 'a:0:{}', '#37b4e1', 0, 0),
(110, 29, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(111, 29, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(112, 29, 'Vazifa bajarish holati', 'a:0:{}', '#dbadff', 0, 0),
(113, 29, 'Lavozimi', 'a:0:{}', '#34495e', 0, 0),
(114, 42, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(115, 42, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(116, 42, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(117, 42, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#ad159e', 0, 0),
(118, 42, 'Vazifa bajarish holati:%', 'a:0:{}', '#dbadff', 0, 0),
(119, 42, 'Mehnat  ta’tili muddati', 'a:0:{}', '#29c2c2', 0, 0),
(120, 42, 'E’lonlar', 'a:0:{}', '#e18a00', 0, 0),
(121, 42, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(122, 42, 'Bo’limi', 'a:0:{}', '#e74c3c', 0, 0),
(123, 42, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(124, 42, 'Lavozimi', 'a:0:{}', '#37b4e1', 0, 0),
(125, 27, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(126, 27, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(127, 27, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(128, 27, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(129, 27, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(130, 27, 'Mehnat  ta’tili muddati', 'a:0:{}', '#f1c40f', 0, 0),
(131, 27, 'E’lonlar', 'a:0:{}', '#e18a00', 0, 0),
(132, 27, 'Tadbirlar', 'a:0:{}', '#e74c3c', 0, 0),
(133, 27, 'Bo’limi', 'a:0:{}', '#ad159e', 0, 0),
(134, 27, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(135, 27, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(136, 72, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(137, 72, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(138, 72, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(139, 72, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#83c340', 0, 0),
(140, 72, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(141, 72, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(142, 72, 'E’lonlar', 'a:0:{}', '#d43480', 0, 0),
(143, 72, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(144, 72, 'Bo’limi', 'a:0:{}', '#ad159e', 0, 0),
(145, 72, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(146, 72, 'Lavozimi', 'a:0:{}', '#ad159e', 0, 0),
(147, 75, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(148, 75, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(149, 75, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(150, 75, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(151, 75, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(152, 75, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(153, 75, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(154, 75, 'E’lonlar', 'a:0:{}', '#37b4e1', 0, 0),
(155, 75, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(156, 75, 'Bo’limi', 'a:0:{}', '#e18a00', 0, 0),
(157, 75, 'Vazifa bajarish holati', 'a:0:{}', '#d43480', 0, 0),
(158, 75, 'Lavozimi', 'a:0:{}', '#29c2c2', 0, 0),
(159, 40, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(160, 40, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(161, 40, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(162, 40, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#e18a00', 0, 0),
(163, 40, 'Vazifa bajarish holati:%', 'a:0:{}', '#e74c3c', 0, 0),
(164, 40, 'Mehnat  ta’tili muddati', 'a:0:{}', '#ad159e', 0, 0),
(165, 40, 'E’lonlar', 'a:0:{}', '#dbadff', 0, 0),
(166, 40, 'Tadbirlar', 'a:0:{}', '#2d9cdb', 0, 0),
(167, 40, 'Bo’limi', 'a:0:{}', '#e74c3c', 0, 0),
(168, 40, 'Vazifa bajarish holati', 'a:0:{}', '#f1c40f', 0, 0),
(169, 40, 'Lavozimi', 'a:0:{}', '#ad159e', 0, 0),
(170, 41, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(171, 41, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(172, 41, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(173, 41, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(174, 41, 'Vazifa bajarish holati:%', 'a:0:{}', '#e74c3c', 0, 0),
(175, 41, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 0),
(176, 41, 'E’lonlar', 'a:0:{}', '#ad159e', 0, 0),
(177, 41, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(178, 41, 'Bo’limi', 'a:0:{}', '#e74c3c', 0, 0),
(179, 41, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(180, 41, 'Lavozimi', 'a:0:{}', '#ad159e', 0, 0),
(181, 12, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(182, 12, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(183, 12, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(184, 12, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(185, 12, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(186, 12, 'Mehnat  ta’tili muddati', 'a:0:{}', '#ad159e', 0, 0),
(187, 12, 'E’lonlar', 'a:0:{}', '#37b4e1', 0, 0),
(188, 12, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(189, 12, 'Bo’limi', 'a:0:{}', '#2d9cdb', 0, 0),
(190, 12, 'Vazifa bajarish holati', 'a:0:{}', '#34495e', 0, 0),
(191, 12, 'Lavozimi', 'a:0:{}', '#d43480', 0, 0),
(192, 4, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(193, 4, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(194, 4, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(195, 4, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(196, 4, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(197, 4, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(198, 4, 'E’lonlar', 'a:0:{}', '#37b4e1', 0, 0),
(199, 4, 'Tadbirlar', 'a:0:{}', '#e18a00', 0, 0),
(200, 4, 'Bo’limi', 'a:0:{}', '#e74c3c', 0, 0),
(201, 4, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(202, 4, 'Lavozimi', 'a:0:{}', '#34495e', 0, 0),
(203, 11, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(204, 11, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(205, 11, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(206, 11, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(207, 11, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(208, 11, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(209, 11, 'E’lonlar', 'a:0:{}', '#d43480', 0, 0),
(210, 11, 'Tadbirlar', 'a:0:{}', '#34495e', 0, 0),
(211, 11, 'Bo’limi', 'a:0:{}', '#e74c3c', 0, 0),
(212, 11, 'Vazifa bajarish holati', 'a:0:{}', '#e74c3c', 0, 0),
(213, 11, 'Lavozimi', 'a:0:{}', '#ad159e', 0, 0),
(214, 20, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(215, 20, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(216, 20, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(217, 20, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(218, 20, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(219, 20, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(220, 20, 'E’lonlar', 'a:0:{}', '#d43480', 0, 0),
(221, 20, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(222, 20, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(223, 20, 'Vazifa bajarish holati', 'a:0:{}', '#34495e', 0, 0),
(224, 20, 'Lavozimi', 'a:0:{}', '#ad159e', 0, 0),
(225, 45, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(226, 45, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(227, 45, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(228, 45, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(229, 45, 'Vazifa bajarish holati:%', 'a:0:{}', '#37b4e1', 0, 0),
(230, 45, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 0),
(231, 45, 'E’lonlar', 'a:0:{}', '#ad159e', 0, 0),
(232, 45, 'Tadbirlar', 'a:0:{}', '#e18a00', 0, 0),
(233, 45, 'Bo’limi', 'a:0:{}', '#e74c3c', 0, 0),
(234, 45, 'Vazifa bajarish holati', 'a:0:{}', '#e18a00', 0, 0),
(235, 45, 'Lavozimi', 'a:0:{}', '#d43480', 0, 0),
(236, 63, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 1),
(237, 63, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(238, 63, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(239, 63, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(240, 63, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(241, 63, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(242, 63, 'E’lonlar', 'a:0:{}', '#d43480', 0, 0),
(243, 63, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(244, 63, 'Bo’limi', 'a:0:{}', '#37b4e1', 0, 0),
(245, 63, 'Vazifa bajarish holati', 'a:0:{}', '#34495e', 0, 0),
(246, 63, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(247, 26, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(248, 26, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(249, 26, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(250, 26, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(251, 26, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(252, 26, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e18a00', 0, 0),
(253, 26, 'E’lonlar', 'a:0:{}', '#e18a00', 0, 0),
(254, 26, 'Tadbirlar', 'a:0:{}', '#d43480', 0, 0),
(255, 26, 'Bo’limi', 'a:0:{}', '#d43480', 0, 0),
(256, 26, 'Vazifa bajarish holati', 'a:0:{}', '#d43480', 0, 0),
(257, 26, 'Lavozimi', 'a:0:{}', '#83c340', 0, 0),
(258, 34, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(259, 34, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(260, 34, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#d43480', 0, 0),
(261, 34, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#e18a00', 0, 0),
(262, 34, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(263, 34, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(264, 34, 'E’lonlar', 'a:0:{}', '#2d9cdb', 0, 0),
(265, 34, 'Tadbirlar', 'a:0:{}', '#dbadff', 0, 0),
(266, 34, 'Bo’limi', 'a:0:{}', '#ad159e', 0, 0),
(267, 34, 'Vazifa bajarish holati', 'a:0:{}', '#f1c40f', 0, 0),
(268, 34, 'Lavozimi', 'a:0:{}', '#e18a00', 0, 0),
(269, 73, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(270, 73, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(271, 73, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(272, 73, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(273, 73, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(274, 73, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e18a00', 0, 0),
(275, 73, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(276, 73, 'Tadbirlar', 'a:0:{}', '#d43480', 0, 0),
(277, 73, 'Bo’limi', 'a:0:{}', '#ad159e', 0, 0),
(278, 73, 'Vazifa bajarish holati', 'a:0:{}', '#d43480', 0, 0),
(279, 73, 'Lavozimi', 'a:0:{}', '#f1c40f', 0, 0),
(280, 76, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(281, 76, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(282, 76, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(283, 76, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(284, 76, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(285, 76, 'Mehnat  ta’tili muddati', 'a:0:{}', '#f1c40f', 0, 0),
(286, 76, 'E’lonlar', 'a:0:{}', '#2d9cdb', 0, 0),
(287, 76, 'Tadbirlar', 'a:0:{}', '#d43480', 0, 0),
(288, 76, 'Bo’limi', 'a:0:{}', '#dbadff', 0, 0),
(289, 76, 'Vazifa bajarish holati', 'a:0:{}', '#ad159e', 0, 0),
(290, 76, 'Lavozimi', 'a:0:{}', '#d43480', 0, 0),
(291, 68, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(292, 68, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(293, 68, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(294, 68, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(295, 68, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(296, 68, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(297, 68, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(298, 68, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(299, 68, 'Bo’limi', 'a:0:{}', '#dbadff', 0, 0),
(300, 68, 'Vazifa bajarish holati', 'a:0:{}', '#d43480', 0, 0),
(301, 68, 'Lavozimi', 'a:0:{}', '#29c2c2', 0, 0),
(302, 25, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(303, 25, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(304, 25, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(305, 25, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(306, 25, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(307, 25, 'Mehnat  ta’tili muddati', 'a:0:{}', '#d43480', 0, 0),
(308, 25, 'E’lonlar', 'a:0:{}', '#e18a00', 0, 0),
(309, 25, 'Tadbirlar', 'a:0:{}', '#2d9cdb', 0, 0),
(310, 25, 'Bo’limi', 'a:0:{}', '#d43480', 0, 0),
(311, 25, 'Vazifa bajarish holati', 'a:0:{}', '#ad159e', 0, 0),
(312, 25, 'Lavozimi', 'a:0:{}', '#29c2c2', 0, 0),
(313, 82, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(314, 82, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(315, 82, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(316, 82, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(317, 82, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(318, 82, 'Mehnat  ta’tili muddati', 'a:0:{}', '#d43480', 0, 0),
(319, 82, 'E’lonlar', 'a:0:{}', '#f1c40f', 0, 0),
(320, 82, 'Tadbirlar', 'a:0:{}', '#e18a00', 0, 0),
(321, 82, 'Bo’limi', 'a:0:{}', '#f1c40f', 0, 0),
(322, 82, 'Vazifa bajarish holati', 'a:0:{}', '#d43480', 0, 0),
(323, 82, 'Lavozimi', 'a:0:{}', '#29c2c2', 0, 0),
(324, 9, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(325, 9, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(326, 9, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(327, 9, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(328, 9, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(329, 9, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e18a00', 0, 0),
(330, 9, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(331, 9, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(332, 9, 'Bo’limi', 'a:0:{}', '#ad159e', 0, 0),
(333, 9, 'Vazifa bajarish holati', 'a:0:{}', '#e18a00', 0, 0),
(334, 9, 'Lavozimi', 'a:0:{}', '#83c340', 0, 0),
(335, 10, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(336, 10, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(337, 10, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(338, 10, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(339, 10, 'Vazifa bajarish holati:%', 'a:0:{}', '#e74c3c', 0, 0),
(340, 10, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e18a00', 0, 0),
(341, 10, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(342, 10, 'Tadbirlar', 'a:0:{}', '#e74c3c', 0, 0),
(343, 10, 'Bo’limi', 'a:0:{}', '#e74c3c', 0, 0),
(344, 10, 'Vazifa bajarish holati', 'a:0:{}', '#e74c3c', 0, 0),
(345, 10, 'Lavozimi', 'a:0:{}', '#37b4e1', 0, 0),
(346, 77, 'Yo’riqnoma', 'a:0:{}', '#dbadff', 0, 0),
(347, 77, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(348, 77, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#83c340', 0, 0),
(349, 77, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(350, 77, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(351, 77, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(352, 77, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(353, 77, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(354, 77, 'Bo’limi', 'a:0:{}', '#ad159e', 0, 0),
(355, 77, 'Vazifa bajarish holati', 'a:0:{}', '#ad159e', 0, 0),
(356, 77, 'Lavozimi', 'a:0:{}', '#37b4e1', 0, 0),
(357, 74, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(358, 74, 'Muhim eslatma ', 'a:0:{}', '#2d9cdb', 0, 0),
(359, 74, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(360, 74, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(361, 74, 'Vazifa bajarish holati:%', 'a:0:{}', '#e74c3c', 0, 0),
(362, 74, 'Mehnat  ta’tili muddati', 'a:0:{}', '#d43480', 0, 0),
(363, 74, 'E’lonlar', 'a:0:{}', '#d43480', 0, 0),
(364, 74, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(365, 74, 'Bo’limi', 'a:0:{}', '#d43480', 0, 0),
(366, 74, 'Vazifa bajarish holati', 'a:0:{}', '#e18a00', 0, 0),
(367, 74, 'Lavozimi', 'a:0:{}', '#e74c3c', 0, 0),
(368, 69, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(369, 69, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(370, 69, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(371, 69, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(372, 69, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(373, 69, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e18a00', 0, 0),
(374, 69, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(375, 69, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(376, 69, 'Bo’limi', 'a:0:{}', '#83c340', 0, 0),
(377, 69, 'Vazifa bajarish holati', 'a:0:{}', '#d43480', 0, 0),
(378, 69, 'Lavozimi', 'a:0:{}', '#37b4e1', 0, 0),
(379, 46, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(380, 46, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(381, 46, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(382, 46, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#e18a00', 0, 0),
(383, 46, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(384, 46, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(385, 46, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(386, 46, 'Tadbirlar', 'a:0:{}', '#d43480', 0, 0),
(387, 46, 'Bo’limi', 'a:0:{}', '#37b4e1', 0, 0),
(388, 46, 'Vazifa bajarish holati', 'a:0:{}', '#d43480', 0, 0),
(389, 46, 'Lavozimi', 'a:0:{}', '#37b4e1', 0, 0),
(390, 22, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(391, 22, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(392, 22, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(393, 22, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(394, 22, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(395, 22, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e18a00', 0, 0),
(396, 22, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(397, 22, 'Tadbirlar', 'a:0:{}', '#e74c3c', 0, 0),
(398, 22, 'Bo’limi', 'a:0:{}', '#d43480', 0, 0),
(399, 22, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(400, 22, 'Lavozimi', 'a:0:{}', '#37b4e1', 0, 0),
(401, 61, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(402, 61, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(403, 61, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(404, 61, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#e18a00', 0, 0),
(405, 61, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(406, 61, 'Mehnat  ta’tili muddati', 'a:0:{}', '#d43480', 0, 0),
(407, 61, 'E’lonlar', 'a:0:{}', '#ad159e', 0, 0),
(408, 61, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(409, 61, 'Bo’limi', 'a:0:{}', '#37b4e1', 0, 0),
(410, 61, 'Vazifa bajarish holati', 'a:0:{}', '#34495e', 0, 0),
(411, 61, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(412, 47, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(413, 47, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(414, 47, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(415, 47, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(416, 47, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(417, 47, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e18a00', 0, 0),
(418, 47, 'E’lonlar', 'a:0:{}', '#ad159e', 0, 0),
(419, 47, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(420, 47, 'Bo’limi', 'a:0:{}', '#37b4e1', 0, 0),
(421, 47, 'Vazifa bajarish holati', 'a:0:{}', '#34495e', 0, 0),
(422, 47, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(423, 33, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(424, 33, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(425, 33, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(426, 33, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#e18a00', 0, 0),
(427, 33, 'Vazifa bajarish holati:%', 'a:0:{}', '#e74c3c', 0, 0),
(428, 33, 'Mehnat  ta’tili muddati', 'a:0:{}', '#d43480', 0, 0),
(429, 33, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(430, 33, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(431, 33, 'Bo’limi', 'a:0:{}', '#37b4e1', 0, 0),
(432, 33, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(433, 33, 'Lavozimi', 'a:0:{}', '#e18a00', 0, 0),
(434, 38, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(435, 38, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(436, 38, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(437, 38, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#e74c3c', 0, 0),
(438, 38, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(439, 38, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(440, 38, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(441, 38, 'Tadbirlar', 'a:0:{}', '#d43480', 0, 0),
(442, 38, 'Bo’limi', 'a:0:{}', '#83c340', 0, 0),
(443, 38, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(444, 38, 'Lavozimi', 'a:0:{}', '#34495e', 0, 0),
(445, 64, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(446, 64, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(447, 64, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(448, 64, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(449, 64, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(450, 64, 'Mehnat  ta’tili muddati', 'a:0:{}', '#f1c40f', 0, 0),
(451, 64, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(452, 64, 'Tadbirlar', 'a:0:{}', '#d43480', 0, 0),
(453, 64, 'Bo’limi', 'a:0:{}', '#ad159e', 0, 0),
(454, 64, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(455, 64, 'Lavozimi', 'a:0:{}', '#34495e', 0, 0),
(456, 15, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(457, 15, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(458, 15, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(459, 15, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(460, 15, 'Vazifa bajarish holati:%', 'a:0:{}', '#e74c3c', 0, 0),
(461, 15, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(462, 15, 'E’lonlar', 'a:0:{}', '#d43480', 0, 0),
(463, 15, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(464, 15, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(465, 15, 'Bo’limi', 'a:0:{}', '#37b4e1', 0, 0),
(466, 15, 'Vazifa bajarish holati', 'a:0:{}', '#34495e', 0, 0),
(467, 15, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(468, 28, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(469, 28, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(470, 28, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(471, 28, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(472, 28, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(473, 28, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(474, 28, 'E’lonlar', 'a:0:{}', '#d43480', 0, 0),
(475, 28, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(476, 28, 'Bo’limi', 'a:0:{}', '#ad159e', 0, 0),
(477, 28, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(478, 28, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(479, 30, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(480, 30, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(481, 30, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(482, 30, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(483, 30, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(484, 30, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(485, 30, 'E’lonlar', 'a:0:{}', '#d43480', 0, 0),
(486, 30, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(487, 30, 'Bo’limi', 'a:0:{}', '#37b4e1', 0, 0),
(488, 30, 'Vazifa bajarish holati', 'a:0:{}', '#34495e', 0, 0),
(489, 30, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(490, 36, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(491, 36, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(492, 36, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(493, 36, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#d43480', 0, 0),
(494, 36, 'Vazifa bajarish holati:%', 'a:0:{}', '#e74c3c', 0, 0),
(495, 36, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 0),
(496, 36, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 1),
(497, 36, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 1),
(498, 36, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 1),
(499, 36, 'E’lonlar', 'a:0:{}', '#34495e', 0, 0),
(500, 36, 'Tadbirlar', 'a:0:{}', '#34495e', 0, 0),
(501, 36, 'Bo’limi', 'a:0:{}', '#dbadff', 0, 0),
(502, 36, 'Vazifa bajarish holati', 'a:0:{}', '#83c340', 0, 0),
(503, 36, 'Lavozimi', 'a:0:{}', '#29c2c2', 0, 0),
(504, 8, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(505, 8, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(506, 8, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(507, 8, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(508, 8, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(509, 8, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(510, 8, 'E’lonlar', 'a:0:{}', '#d43480', 0, 0),
(511, 8, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(512, 8, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(513, 8, 'Vazifa bajarish holati', 'a:0:{}', '#dbadff', 0, 0),
(514, 8, 'Lavozimi', 'a:0:{}', '#83c340', 0, 0),
(515, 17, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(516, 17, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(517, 17, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(518, 17, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#d43480', 0, 0),
(519, 17, 'Vazifa bajarish holati:%', 'a:0:{}', '#d43480', 0, 0),
(520, 17, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 0),
(521, 17, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(522, 17, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(523, 17, 'Bo’limi', 'a:0:{}', '#83c340', 0, 0),
(524, 17, 'Vazifa bajarish holati', 'a:0:{}', '#dbadff', 0, 0),
(525, 17, 'Lavozimi', 'a:0:{}', '#34495e', 0, 0),
(526, 70, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(527, 70, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(528, 70, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(529, 70, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#e18a00', 0, 0),
(530, 70, 'Vazifa bajarish holati:%', 'a:0:{}', '#e74c3c', 0, 0),
(531, 70, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 0),
(532, 70, 'E’lonlar', 'a:0:{}', '#dbadff', 0, 0),
(533, 70, 'Tadbirlar', 'a:0:{}', '#34495e', 0, 0),
(534, 70, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(535, 70, 'Vazifa bajarish holati', 'a:0:{}', '#83c340', 0, 0),
(536, 70, 'Lavozimi', 'a:0:{}', '#37b4e1', 0, 0),
(537, 32, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(538, 32, 'Muhim eslatma ', 'a:0:{}', '#37b4e1', 0, 0),
(539, 32, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(540, 32, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#29c2c2', 0, 0),
(541, 32, 'Vazifa bajarish holati:%', 'a:0:{}', '#ad159e', 0, 0),
(542, 32, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(543, 32, 'E’lonlar', 'a:0:{}', '#e18a00', 0, 0),
(544, 32, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(545, 32, 'Bo’limi', 'a:0:{}', '#37b4e1', 0, 0),
(546, 32, 'Vazifa bajarish holati', 'a:0:{}', '#e74c3c', 0, 0),
(547, 32, 'Lavozimi', 'a:0:{}', '#29c2c2', 0, 0),
(548, 35, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(549, 35, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(550, 35, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(551, 35, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(552, 35, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(553, 35, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(554, 35, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e18a00', 0, 0),
(555, 35, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(556, 35, 'Tadbirlar', 'a:0:{}', '#d43480', 0, 0),
(557, 35, 'Bo’limi', 'a:0:{}', '#37b4e1', 0, 0),
(558, 35, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(559, 35, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(560, 65, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(561, 65, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(562, 65, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#83c340', 0, 0),
(563, 65, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#dbadff', 0, 0),
(564, 65, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(565, 65, 'Mehnat  ta’tili muddati', 'a:0:{}', '#2d9cdb', 0, 0),
(566, 65, 'E’lonlar', 'a:0:{}', '#37b4e1', 0, 0),
(567, 65, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(568, 65, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(569, 65, 'Vazifa bajarish holati', 'a:0:{}', '#dbadff', 0, 0),
(570, 65, 'Lavozimi', 'a:0:{}', '#e74c3c', 0, 0),
(571, 71, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(572, 71, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(573, 71, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(574, 71, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(575, 71, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(576, 71, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 0),
(577, 71, 'E’lonlar', 'a:0:{}', '#34495e', 0, 0),
(578, 71, 'Tadbirlar', 'a:0:{}', '#dbadff', 0, 0),
(579, 71, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(580, 71, 'Vazifa bajarish holati', 'a:0:{}', '#ad159e', 0, 0),
(581, 71, 'Lavozimi', 'a:0:{}', '#dbadff', 0, 0),
(582, 62, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(583, 62, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(584, 62, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#dbadff', 0, 0),
(585, 62, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#34495e', 0, 0),
(586, 62, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(587, 62, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 0),
(588, 62, 'E’lonlar', 'a:0:{}', '#e74c3c', 0, 0),
(589, 62, 'Tadbirlar', 'a:0:{}', '#f1c40f', 0, 0),
(590, 62, 'Bo’limi', 'a:0:{}', '#dbadff', 0, 0),
(591, 62, 'Vazifa bajarish holati', 'a:0:{}', '#e74c3c', 0, 0),
(592, 62, 'Lavozimi', 'a:0:{}', '#ad159e', 0, 0),
(593, 58, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(594, 58, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(595, 58, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(596, 58, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#83c340', 0, 0),
(597, 58, 'Vazifa bajarish holati:%', 'a:0:{}', '#e74c3c', 0, 0),
(598, 58, 'Mehnat  ta’tili muddati', 'a:0:{}', '#d43480', 0, 0),
(599, 58, 'E’lonlar', 'a:0:{}', '#dbadff', 0, 0),
(600, 58, 'Tadbirlar', 'a:0:{}', '#29c2c2', 0, 0),
(601, 58, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(602, 58, 'Vazifa bajarish holati', 'a:0:{}', '#e18a00', 0, 0),
(603, 58, 'Lavozimi', 'a:0:{}', '#37b4e1', 0, 0),
(604, 13, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(605, 13, 'Muhim eslatma ', 'a:0:{}', '#dbadff', 0, 0),
(606, 13, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(607, 13, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#ad159e', 0, 0),
(608, 13, 'Vazifa bajarish holati:%', 'a:0:{}', '#37b4e1', 0, 0),
(609, 13, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e18a00', 0, 0),
(610, 13, 'E’lonlar', 'a:0:{}', '#ad159e', 0, 0),
(611, 13, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(612, 13, 'Bo’limi', 'a:0:{}', '#e18a00', 0, 0),
(613, 13, 'Vazifa bajarish holati', 'a:0:{}', '#d43480', 0, 0),
(614, 13, 'Lavozimi', 'a:0:{}', '#e18a00', 0, 0),
(615, 31, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(616, 31, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(617, 31, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#e74c3c', 0, 0),
(618, 31, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#37b4e1', 0, 0),
(619, 31, 'Vazifa bajarish holati:%', 'a:0:{}', '#dbadff', 0, 0),
(620, 31, 'Mehnat  ta’tili muddati', 'a:0:{}', '#d43480', 0, 0),
(621, 31, 'E’lonlar', 'a:0:{}', '#37b4e1', 0, 0),
(622, 31, 'Tadbirlar', 'a:0:{}', '#34495e', 0, 0),
(623, 31, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(624, 31, 'Vazifa bajarish holati', 'a:0:{}', '#f1c40f', 0, 0),
(625, 31, 'Lavozimi', 'a:0:{}', '#83c340', 0, 0),
(626, 54, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(627, 54, 'Muhim eslatma ', 'a:0:{}', '#d43480', 0, 0),
(628, 54, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#2d9cdb', 0, 0),
(629, 54, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(630, 54, 'Vazifa bajarish holati:%', 'a:0:{}', '#83c340', 0, 0),
(631, 54, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 0),
(632, 54, 'E’lonlar', 'a:0:{}', '#f1c40f', 0, 0),
(633, 54, 'Tadbirlar', 'a:0:{}', '#d43480', 0, 0),
(634, 54, 'Bo’limi', 'a:0:{}', '#ad159e', 0, 0),
(635, 54, 'Vazifa bajarish holati', 'a:0:{}', '#e74c3c', 0, 0),
(636, 54, 'Lavozimi', 'a:0:{}', '#37b4e1', 0, 0),
(637, 14, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(638, 14, 'Muhim eslatma ', 'a:0:{}', '#2d9cdb', 0, 0),
(639, 14, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#e18a00', 0, 0),
(640, 14, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#ad159e', 0, 0),
(641, 14, 'Vazifa bajarish holati:%', 'a:0:{}', '#e74c3c', 0, 0),
(642, 14, 'Mehnat  ta’tili muddati', 'a:0:{}', '#aab7b7', 0, 0),
(643, 14, 'E’lonlar', 'a:0:{}', '#37b4e1', 0, 0),
(644, 14, 'Tadbirlar', 'a:0:{}', '#ad159e', 0, 0),
(645, 14, 'Bo’limi', 'a:0:{}', '#e18a00', 0, 0),
(646, 14, 'Vazifa bajarish holati', 'a:0:{}', '#83c340', 0, 0),
(647, 14, 'Lavozimi', 'a:0:{}', '#e74c3c', 0, 0),
(648, 5, 'Muhim eslatma ', 'a:0:{}', '#f1c40f', 0, 0),
(649, 5, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#e74c3c', 0, 0),
(650, 5, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#ad159e', 0, 0),
(651, 5, 'Vazifa bajarish holati:%', 'a:0:{}', '#37b4e1', 0, 0),
(652, 5, 'Mehnat  ta’tili muddati', 'a:0:{}', '#f1c40f', 0, 0),
(653, 5, 'E’lonlar', 'a:0:{}', '#ad159e', 0, 0),
(654, 5, 'Tadbirlar', 'a:0:{}', '#dbadff', 0, 0),
(655, 5, 'Bo’limi', 'a:0:{}', '#37b4e1', 0, 0),
(656, 5, 'Vazifa bajarish holati', 'a:0:{}', '#f1c40f', 0, 0),
(657, 5, 'Lavozimi', 'a:0:{}', '#83c340', 0, 0),
(658, 51, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(659, 51, 'Muhim eslatma ', 'a:0:{}', '#2d9cdb', 0, 0),
(660, 51, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#ad159e', 0, 0),
(661, 51, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#37b4e1', 0, 0),
(662, 51, 'Vazifa bajarish holati:%', 'a:0:{}', '#34495e', 0, 0),
(663, 51, 'Mehnat  ta’tili muddati', 'a:0:{}', '#37b4e1', 0, 0),
(664, 51, 'E’lonlar', 'a:0:{}', '#34495e', 0, 0),
(665, 51, 'Tadbirlar', 'a:0:{}', '#dbadff', 0, 0),
(666, 51, 'Bo’limi', 'a:0:{}', '#e74c3c', 0, 0),
(667, 51, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(668, 51, 'Lavozimi', 'a:0:{}', '#83c340', 0, 0),
(669, 60, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(670, 60, 'Muhim eslatma ', 'a:0:{}', '#d43480', 0, 0),
(671, 60, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#83c340', 0, 0),
(672, 60, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#e74c3c', 0, 0),
(673, 60, 'Vazifa bajarish holati:%', 'a:0:{}', '#34495e', 0, 0),
(674, 60, 'Mehnat  ta’tili muddati', 'a:0:{}', '#d43480', 0, 0),
(675, 60, 'E’lonlar', 'a:0:{}', '#ad159e', 0, 0),
(676, 60, 'Tadbirlar', 'a:0:{}', '#34495e', 0, 0),
(677, 60, 'Bo’limi', 'a:0:{}', '#d43480', 0, 0),
(678, 57, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(679, 57, 'Muhim eslatma ', 'a:0:{}', '#83c340', 0, 0),
(680, 57, 'Muhim eslatma ', 'a:0:{}', '#83c340', 0, 1),
(681, 57, 'Muhim eslatma ', 'a:0:{}', '#83c340', 0, 1),
(682, 57, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#83c340', 0, 0),
(683, 57, 'Muddati o’tgan topshiriqlar', 'a:0:{}', '#83c340', 0, 0),
(684, 57, 'Muddati o’tgan topshiriqlar', 'a:0:{}', '#83c340', 0, 1),
(685, 57, 'Vazifa bajarish holati:%', 'a:0:{}', '#83c340', 0, 0),
(686, 57, 'E’lonlar', 'a:0:{}', '#83c340', 0, 0),
(687, 57, 'Tadbirlar', 'a:0:{}', '#83c340', 0, 0),
(688, 57, 'Bo’limi', 'a:0:{}', '#83c340', 0, 0),
(689, 57, 'Vazifa bajarish holati', 'a:0:{}', '#83c340', 0, 0),
(690, 57, 'Lavozimi', 'a:0:{}', '#83c340', 0, 0),
(691, 83, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(692, 83, 'Muhim eslatma ', 'a:0:{}', '#83c340', 0, 0),
(693, 83, 'Muhim eslatma ', 'a:0:{}', '#83c340', 0, 1),
(694, 83, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#83c340', 0, 0),
(695, 83, 'Muddati o’tgan topshiriqlar', 'a:0:{}', '#83c340', 0, 0),
(696, 83, 'Vazifa bajarish holati:%', 'a:0:{}', '#83c340', 0, 0),
(697, 83, 'Mehnat  ta’tili muddati', 'a:0:{}', '#83c340', 0, 0),
(698, 83, 'E’lonlar', 'a:0:{}', '#83c340', 0, 0),
(699, 83, 'Tadbirlar', 'a:0:{}', '#83c340', 0, 0),
(700, 83, 'Bo’limi', 'a:0:{}', '#83c340', 0, 0),
(701, 83, 'Vazifa bajarish holati', 'a:0:{}', '#83c340', 0, 0),
(702, 83, 'Lavozimi', 'a:0:{}', '#83c340', 0, 0),
(703, 43, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(704, 43, 'Muhim eslatma ', 'a:0:{}', '#83c340', 0, 0),
(705, 43, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#83c340', 0, 0),
(706, 43, 'Muddati o’tgan topshiriqlar', 'a:0:{}', '#83c340', 0, 0),
(707, 43, 'Vazifa bajarish holati:%', 'a:0:{}', '#83c340', 0, 0),
(708, 55, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(709, 55, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(710, 55, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#aab7b7', 0, 0),
(711, 55, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(712, 55, 'Vazifa bajarish holati:%', 'a:0:{}', '#e18a00', 0, 0),
(713, 55, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e74c3c', 0, 0),
(714, 55, 'E’lonlar', 'a:0:{}', '#d43480', 0, 0),
(715, 55, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(716, 55, 'Bo’limi', 'a:0:{}', '#ad159e', 0, 0),
(717, 55, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(718, 55, 'Lavozimi', 'a:0:{}', '#34495e', 0, 0),
(719, 37, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(720, 37, 'Muhim eslatma ', 'a:0:{}', '#2d9cdb', 0, 0),
(721, 37, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(722, 37, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#e18a00', 0, 0),
(723, 37, 'Mehnat  ta’tili muddati', 'a:0:{}', '#ad159e', 0, 0),
(724, 37, 'Vazifa bajarish holati:%', 'a:0:{}', '#37b4e1', 0, 0),
(725, 37, 'E’lonlar', 'a:0:{}', '#34495e', 0, 0),
(726, 37, 'Tadbirlar', 'a:0:{}', '#34495e', 0, 0),
(727, 37, 'Bo’limi', 'a:0:{}', '#dbadff', 0, 0),
(728, 37, 'Vazifa bajarish holati', 'a:0:{}', '#e18a00', 0, 0),
(729, 37, 'Lavozimi', 'a:0:{}', '#37b4e1', 0, 0),
(730, 67, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(731, 67, 'Muhim eslatma ', 'a:0:{}', '#29c2c2', 0, 0),
(732, 67, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#e74c3c', 0, 0),
(733, 67, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#e74c3c', 0, 0),
(734, 67, 'Vazifa bajarish holati:%', 'a:0:{}', '#ad159e', 0, 0),
(735, 67, 'Mehnat  ta’tili muddati', 'a:0:{}', '#34495e', 0, 0),
(736, 67, 'E’lonlar', 'a:0:{}', '#34495e', 0, 0),
(737, 67, 'Tadbirlar', 'a:0:{}', '#e74c3c', 0, 0),
(738, 67, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(739, 67, 'Vazifa bajarish holati', 'a:0:{}', '#34495e', 0, 0),
(740, 67, 'Lavozimi', 'a:0:{}', '#34495e', 0, 0),
(741, 50, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(742, 50, 'Muhim eslatma ', 'a:0:{}', '#2d9cdb', 0, 0),
(743, 50, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#d43480', 0, 0),
(744, 50, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#d43480', 0, 0),
(745, 50, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#34495e', 0, 0),
(746, 50, 'Vazifa bajarish holati:%', 'a:0:{}', '#d43480', 0, 0),
(747, 50, 'Mehnat  ta’tili muddati', 'a:0:{}', '#34495e', 0, 0),
(748, 50, 'E’lonlar', 'a:0:{}', '#dbadff', 0, 0),
(749, 50, 'Tadbirlar', 'a:0:{}', '#e74c3c', 0, 0),
(750, 50, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(751, 50, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(752, 50, 'Vazifa bajarish holati', 'a:0:{}', '#37b4e1', 0, 0),
(753, 50, 'Lavozimi', 'a:0:{}', '#34495e', 0, 0),
(754, 59, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(755, 59, 'Muhim eslatma ', 'a:0:{}', '#37b4e1', 0, 0),
(756, 59, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#34495e', 0, 0),
(757, 59, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#dbadff', 0, 0),
(758, 59, 'Vazifa bajarish holati:%', 'a:0:{}', '#f1c40f', 0, 0),
(759, 59, 'Mehnat  ta’tili muddati', 'a:0:{}', '#2d9cdb', 0, 0),
(760, 59, 'E’lonlar', 'a:0:{}', '#37b4e1', 0, 0),
(761, 59, 'Tadbirlar', 'a:0:{}', '#34495e', 0, 0),
(762, 59, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(763, 59, 'Vazifa bajarish holati', 'a:0:{}', '#e74c3c', 0, 0),
(764, 59, 'Lavozimi', 'a:0:{}', '#d43480', 0, 0),
(765, 56, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(766, 56, 'Muhim eslatma ', 'a:0:{}', '#aab7b7', 0, 0),
(767, 56, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#d43480', 0, 0),
(768, 56, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#37b4e1', 0, 0),
(769, 56, 'Vazifa bajarish holati:%', 'a:0:{}', '#34495e', 0, 0),
(770, 56, 'Mehnat  ta’tili muddati', 'a:0:{}', '#e18a00', 0, 0),
(771, 56, 'E’lonlar', 'a:0:{}', '#34495e', 0, 0),
(772, 56, 'Tadbirlar', 'a:0:{}', '#37b4e1', 0, 0),
(773, 56, 'Bo’limi', 'a:0:{}', '#34495e', 0, 0),
(774, 56, 'Vazifa bajarish holati', 'a:0:{}', '#ad159e', 0, 0),
(775, 56, 'Lavozimi', 'a:0:{}', '#e18a00', 0, 0),
(776, 49, 'Yo’riqnoma', 'a:0:{}', '#83c340', 0, 0),
(777, 49, 'Muhim eslatma ', 'a:0:{}', '#2d9cdb', 0, 0),
(778, 49, 'Muddati yaqin topshiriqlar', 'a:0:{}', '#f1c40f', 0, 0),
(779, 49, 'Muddati o’tagan topshiriqlar', 'a:0:{}', '#37b4e1', 0, 0),
(780, 49, 'Vazifa bajarish holati:%', 'a:0:{}', '#34495e', 0, 0),
(781, 49, 'Mehnat  ta’tili muddati', 'a:0:{}', '#34495e', 0, 0),
(782, 49, 'E’lonlar', 'a:0:{}', '#e18a00', 0, 0),
(783, 49, 'Tadbirlar', 'a:0:{}', '#dbadff', 0, 0),
(784, 49, 'Bo’limi', 'a:0:{}', '#aab7b7', 0, 0),
(785, 49, 'Vazifa bajarish holati', 'a:0:{}', '#d43480', 0, 0),
(786, 49, 'Lavozimi', 'a:0:{}', '#ad159e', 0, 0),
(787, 63, 'eee', 'a:0:{}', '#37b4e1', 0, 0),
(788, 1, 'Mening qilgan ishlarim', 'a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"columns\";a:1:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:13:\"open_projects\";s:5:\"title\";s:15:\"Ochiq loyihalar\";}}}s:5:\"ratio\";s:3:\"6-6\";}}', '#83c340', 0, 0),
(789, 1, 'ILMIY YANGILIKLAR', 'a:0:{}', '#f1c40f', 0, 0),
(790, 63, 'Kunlik ishlarni kiritish', 'a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"columns\";a:3:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:29:\"latest_online_client_contacts\";s:5:\"title\";s:37:\"Mijozlarning so\'nggi onlayn aloqalari\";}}i:1;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:13:\"my_tasks_list\";s:5:\"title\";s:28:\"Mening vazifalarim ro\'yxati \";}}i:2;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:9:\"todo_list\";s:5:\"title\";s:17:\"Bajarish ro\'yxati\";}}}s:5:\"ratio\";s:5:\"3-6-3\";}}', '#83c340', 0, 1),
(791, 63, 'Kunlik vazifa kiritish', 'a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"columns\";a:3:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:13:\"open_projects\";s:5:\"title\";s:15:\"Ochiq loyihalar\";}}i:1;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:18:\"open_projects_list\";s:5:\"title\";s:27:\"Loyihalar ro\'yxatini oching\";}}i:2;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:13:\"my_open_tasks\";s:5:\"title\";s:24:\"Mening ochiq vazifalarim\";}}}s:5:\"ratio\";s:5:\"4-4-4\";}}', '#83c340', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `default_message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_message` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `email_templates`
--

INSERT INTO `email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `deleted`) VALUES
(1, 'login_info', 'Login details', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME}, &nbsp;{USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(2, 'reset_password', 'Reset password', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>', '', 0),
(3, 'team_member_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(4, 'send_invoice', 'New invoice', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 0),
(5, 'signature', 'Signature', 'Powered By: <a href=\"http://fairsketch.com/\" target=\"_blank\">fairsketch </a>', '', 0),
(6, 'client_contact_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(7, 'ticket_created', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>', '', 0),
(8, 'ticket_commented', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>', '', 0),
(9, 'ticket_closed', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>', '', 0),
(10, 'ticket_reopened', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>', '', 0),
(11, 'general_notification', '{EVENT_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>', '', 0),
(12, 'invoice_payment_confirmation', 'Payment received', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\">\r\n                                        <tbody><tr>\r\n                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Payment Confirmation</h2>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                        </tbody>\r\n                                                                    </table>\r\n                                                                </td>\r\n                                                            </tr>\r\n                                                        </tbody>\r\n                                                    </table>\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    Hello,<br>\r\n                                                                                    We have received your payment of {PAYMENT_AMOUNT} for {INVOICE_ID} <br>\r\n                                                                                    Thank you for your business cooperation.\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                        <tbody>\r\n                                                                                            <tr>\r\n                                                                                                <td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                        <tbody>\r\n                                                                                                            <tr>\r\n                                                                                                                <td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                                    <a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a>\r\n                                                                                                                </td>\r\n                                                                                                            </tr>\r\n                                                                                                        </tbody>\r\n                                                                                                    </table>\r\n                                                                                                </td>\r\n                                                                                            </tr>\r\n                                                                                        </tbody>\r\n                                                                                    </table>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n                                                                                    \r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n  {SIGNATURE}\r\n  </td>\r\n </tr>\r\n </tbody>\r\n  </table>\r\n  </td>\r\n  </tr>\r\n  </tbody>\r\n </table>\r\n  </td>\r\n </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n </tr>\r\n </tbody>\r\n </table>\r\n </td>\r\n </tr>\r\n </tbody>\r\n  </table>', NULL, 0),
(13, 'message_received', '{SUBJECT}', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"> <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\"> <style type=\"text/css\"> #message-container p {margin: 10px 0;} #message-container h1, #message-container h2, #message-container h3, #message-container h4, #message-container h5, #message-container h6 { padding:10px; margin:0; } #message-container table td {border-collapse: collapse;} #message-container table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; } #message-container a span{padding:10px 15px !important;} </style> <table id=\"message-container\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#eee; margin:0; padding:0; width:100% !important; line-height: 100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0; font-family:Helvetica,Arial,sans-serif; color: #555;\"> <tbody> <tr> <td valign=\"top\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"50\" width=\"600\">&nbsp;</td> </tr> <tr> <td style=\"background-color:#33333e; padding:25px 15px 30px 15px; font-weight:bold; \" width=\"600\"><h2 style=\"color:#fff; text-align:center;\">{USER_NAME} sent you a message</h2></td> </tr> <tr> <td bgcolor=\"whitesmoke\" style=\"background:#fff; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> <tr> <td width=\"560\"><p><span style=\"background-color: transparent;\">{MESSAGE_CONTENT}</span></p> <p style=\"display:inline-block; padding: 10px 15px; background-color: #00b393;\"><a href=\"{MESSAGE_URL}\" style=\"text-decoration: none; color:#fff;\" target=\"_blank\">Reply Message</a></p> </td> </tr> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> <tr> <td height=\"60\" width=\"600\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(14, 'invoice_due_reminder_before_due_date', 'Invoice due reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Due Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that invoice {INVOICE_ID} is due on {DUE_DATE}. Please pay the invoice within due date.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(15, 'invoice_overdue_reminder', 'Invoice overdue reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Overdue Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that you have an unpaid invoice {INVOICE_ID}. We kindly request you to pay the invoice as soon as possible.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(16, 'recurring_invoice_creation_reminder', 'Recurring invoice creation reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Cration Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that a recurring invoice will be created on {NEXT_RECURRING_DATE}.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">View Invoice</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(17, 'project_task_deadline_reminder', 'Project task deadline reminder', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">This is to remind you that there are some tasks which deadline is {DEADLINE}.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{TASKS_LIST}</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 0),
(18, 'estimate_sent', 'New estimate', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello {CONTACT_FIRST_NAME},<br></p><p>Here is the estimate. Please check the attachment.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0);
INSERT INTO `email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `deleted`) VALUES
(19, 'estimate_request_received', 'Estimate request received', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE REQUEST #{ESTIMATE_REQUEST_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"><span style=\"background-color: transparent;\">A new estimate request has been received from {CONTACT_FIRST_NAME}.</span><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_REQUEST_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate Request</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(20, 'estimate_rejected', 'Estimate rejected', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been rejected.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(21, 'estimate_accepted', 'Estimate accepted', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been accepted.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(22, 'new_client_greetings', 'Welcome!', '<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Welcome to {COMPANY_NAME}</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Thank you for creating your account. </span></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">We are happy to see you here.<br></span></p><hr><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {CONTACT_LOGIN_EMAIL}</span><br></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{CONTACT_LOGIN_PASSWORD}</span></p><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(23, 'verify_email', 'Please verify your email', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account verification</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\"><p style=\"font-size: 14px;\">To initiate the signup process, please click on the following link:<br></p><p style=\"font-size: 14px;\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{VERIFY_EMAIL_URL}\" target=\"_blank\">Verify Email</a></span></p>  <p style=\"font-size: 14px;\"><br></p><p style=\"\"><span style=\"font-size: 14px;\">If you did not initiate the request, you do not need to take any further action and can safely disregard this email.</span></p><p style=\"\"><span style=\"font-size: 14px;\"><br></span></p><p style=\"font-size: 14px;\">{SIGNATURE}</p></div></div></div>', '', 0),
(24, 'new_order_received', 'New order received', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>ORDER #{ORDER_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">A new order has been received from&nbsp;</span><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">{CONTACT_FIRST_NAME} and is attached here.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ORDER_URL}\" target=\"_blank\">Show Order</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 0),
(25, 'order_status_updated', 'Order status updated', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>ORDER #{ORDER_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your order&nbsp;</span><font color=\"#555555\"><span style=\"font-size: 14px;\">has been updated&nbsp;</span></font><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ORDER_URL}\" target=\"_blank\">Show Order</a></span></p><p style=\"\"><br></p>  </div> </div></div>', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `estimates`
--

CREATE TABLE `estimates` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL DEFAULT '0',
  `estimate_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `estimate_forms`
--

CREATE TABLE `estimate_forms` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `enable_attachment` tinyint(4) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `estimate_requests`
--

CREATE TABLE `estimate_requests` (
  `id` int(11) NOT NULL,
  `estimate_form_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` enum('new','processing','hold','canceled','estimated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext COLLATE utf8_unicode_ci,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `editable_google_event` tinyint(1) NOT NULL DEFAULT '0',
  `google_event_id` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `recurring` int(1) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `last_start_date` date DEFAULT NULL,
  `recurring_dates` longtext COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_by` text COLLATE utf8_unicode_ci NOT NULL,
  `rejected_by` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `created_by`, `location`, `client_id`, `labels`, `share_with`, `editable_google_event`, `google_event_id`, `deleted`, `color`, `recurring`, `repeat_every`, `repeat_type`, `no_of_cycles`, `last_start_date`, `recurring_dates`, `confirmed_by`, `rejected_by`) VALUES
(1, 'test', 'test', '2021-07-07', '2021-07-07', '01:00:00', '01:00:00', 1, '', 0, '', 'all', 0, '', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0,5', '0'),
(2, 'test event', 'test event', '2021-07-10', '2021-07-15', '01:00:00', '01:00:00', 1, 'Tashkent', 0, '', 'all', 0, '', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(3, 'Bugun ochilish', 'Bugun ochilish', '2021-07-10', '2021-07-15', '01:00:00', '00:00:00', 5, 'Toshkent', 0, '', 'all', 0, '', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(4, 'Uchrashuv', 'dasdasdad\r\n\r\n<a href=\"kpi.uz\">Zoom</a>', '2021-09-15', '2021-09-15', '13:00:00', '16:00:00', 1, '', 1, '', 'all', 0, '', 0, '#29c2c2', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(5, 'докторант', 'uujhkjk', '2021-09-16', '2021-09-16', '16:15:00', '01:00:00', 5, '', 0, '', 'member:9,member:7,member:12', 0, '', 0, '#34495e', 1, 1, 'days', 1, '2021-09-17', '2021-09-17,', '0,12', '0'),
(6, 'O\'qituvchilar kuniga atalgan kecha!', 'Hamma xodimlar bajarishi shart!', '2021-10-27', '2021-10-27', '14:00:00', '15:00:00', 1, '', 0, '', 'all', 0, '', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(7, 'O\'qituvchilar bayramiga atalgan kecha!', 'Hamma metodistlar qatnashishi shart!', '2021-10-29', '2021-10-30', '14:00:00', '16:00:00', 1, '', 1, '', 'all', 0, '', 0, '#f1c40f', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(8, 'Metodistlar seminari', 'Barcha hududlar zooom', '2021-11-25', '2021-11-25', '10:00:00', '14:00:00', 62, 'RTM', 0, '', '', 0, '', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(9, 'majlis', ' fgfgf', '2021-11-25', '2021-11-25', '23:00:00', '00:00:00', 63, '', 0, '', 'member:4,member:7', 0, '', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(10, 'Seminar', 'Ijtimoiy', '2021-12-09', '2021-12-09', '10:00:00', '12:00:00', 62, 'RTM', 0, '', 'all', 0, '', 0, '#29c2c2', 0, 1, 'months', 0, '0000-00-00', '', '0,63', '0'),
(11, 'fff', 'fff', '2021-12-16', '2021-12-16', '21:00:00', '23:00:00', 63, 'fff', 0, '', 'member:3,member:5', 0, '', 0, '#29c2c2', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(12, '1-Oktyabr', 'O\'qituvchilar kuni', '2021-09-30', '2021-09-30', '15:00:00', '16:00:00', 1, '', 1, '', 'all', 0, '', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0'),
(13, 'Yangi yil', 'Tadbir', '2021-12-28', '2021-12-28', '16:00:00', '17:00:00', 1, '', 1, '', 'all', 0, '', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `amount` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `recurring` tinyint(4) NOT NULL DEFAULT '0',
  `recurring_expense_id` tinyint(4) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `title`, `deleted`) VALUES
(1, 'Miscellaneous expense', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `general_files`
--

CREATE TABLE `general_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_id` text COLLATE utf8_unicode_ci,
  `service_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `general_files`
--

INSERT INTO `general_files` (`id`, `file_name`, `file_id`, `service_type`, `description`, `file_size`, `created_at`, `client_id`, `user_id`, `uploaded_by`, `deleted`) VALUES
(1, '_file61fb7b297a8db-Coursera-REG4WZYD9XEU2271944504.pdf', NULL, NULL, 'Coursera da bepul kurs o\'qib tugatildi. ', 302135, '2022-02-03 06:50:17', 0, 14, 14, 0),
(2, '_file61fb7b6dae5b7-Coursera-Y5LP5UPBB3QD2398200471.pdf', NULL, NULL, 'Coursera da 2 - epul onlayn kurs o\'qib tugatildi. ', 316916, '2022-02-03 06:51:25', 0, 14, 14, 0),
(3, '_file61fb7be674e45-123456.jpg', NULL, NULL, 'Ispring Akademiya tomonidan elektron kurslarni yaratishga yo\'natirilgan bepul onlayn kurs ', 32946, '2022-02-03 06:53:26', 0, 14, 14, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `help_articles`
--

CREATE TABLE `help_articles` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `total_views` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `help_categories`
--

CREATE TABLE `help_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('help','knowledge_base') COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `indicators`
--

CREATE TABLE `indicators` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` float NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `indicators`
--

INSERT INTO `indicators` (`id`, `parent`, `name`, `rating`, `user_id`, `created_at`, `updated_at`) VALUES
(24, 2, 'Fan boʻyicha oʻquv rejalarni, metodik tavsiyalarni ishlab chiqilish', 2, 63, '2021-11-17 11:18:38', NULL),
(25, 2, 'Fan boʻyicha tajriba-sinov maydonlari uchun materiallar tayyorlaydi', 2, 63, '2021-11-17 11:18:50', NULL),
(26, 2, 'Eksperimentator oʻqituvchilarga metodik yordam koʻrsatish (tajriba-sinov doirasida)', 2, 63, '2021-11-17 11:19:02', NULL),
(27, 2, 'Taqdim etilgan materiallar boʻyicha xulosa berish (Ma\'lumotnoma ilova qilinadi)', 2, 63, '2021-11-17 11:19:15', NULL),
(30, 2, 'Ilmiy-metodik kengash faoliyatini tashkil etish', 2, 63, '2021-11-17 11:19:55', NULL),
(32, 2, 'Milliy o\'quv dasturiga darslikni muvofiqlik darajasini o\'rganish bo\'yicha faoliyatni tashkil etish ', 2, 63, '2021-11-17 11:20:19', NULL),
(33, 2, 'Darslik yaratish bo\'yicha mualliflarni shakllantirish (malumot ilova qilinadi)', 2, 63, '2021-11-17 11:20:30', NULL),
(34, 2, 'Respublika miqyosida kelgan ommalshtirish ishlarini tashkil etish (Fan yoʻnalishlari boʻyicha )', 1, 63, '2021-11-17 11:20:42', NULL),
(35, 2, 'Ekspertiza xulosalari boʻyicha mualliflar bilan ishlash (Fan yo\'nalishlar bo\'yicha)', 2, 63, '2021-11-17 11:20:53', NULL),
(38, 2, 'Yaratilayotga o\'quv metodik vositalarga xulosa berishdagi ishtiroki (ma\'lumot asosida) ', 3, 63, '2021-11-17 11:21:27', NULL),
(39, 2, 'Maktablar o\'quv faoliyatini o\'rganish (fan doirasida) ', 3, 63, '2021-11-17 11:21:52', NULL),
(43, 2, 'Avgust kengashlariga material tayyorlash', 3, 1, '2021-11-17 11:22:42', NULL),
(45, 2, 'Yakuniy va bosqichli imtixonlarni oʻtkazish boʻyicha tavsiyalar va materiallar tayyorlash jarayonini tashkil etish', 2, 63, '2021-11-17 11:23:11', NULL),
(50, 3, 'Respublika konferensiyasi toʻplam maqolalari uchun vebinarlarda maʼruza bilan ishtirok etishi', 1, 63, '2021-11-17 11:25:36', NULL),
(51, 3, 'Xorijiy ilmiy jurnal maqolasi uchun', 3, 63, '2021-11-17 11:25:48', NULL),
(52, 3, 'OAK tasarrufidagi ilmiy jurnal maqolasi uchun', 3, 63, '2021-11-17 11:25:59', NULL),
(54, 3, 'Respublika yoki xalqaro ilmiy loyihadagi ishtiroki uchun (xalqaro ayirboshlash dasturlaridan tashqari)', 2, 63, '2021-11-17 11:26:28', NULL),
(56, 3, 'Dissertatsiya himoya qilganligi', 3, 63, '2021-11-17 11:27:14', NULL),
(57, 3, 'Dissertatsiya ishini himoya kengashiga qabul qilinganligi', 2, 63, '2021-11-17 11:27:27', NULL),
(58, 3, 'Ilmiy unvon olganligi uchun', 2, 63, '2021-11-17 11:27:38', NULL),
(59, 4, 'Jamoat ishlarida faolligi', 2, 63, '2021-11-17 11:30:33', NULL),
(60, 4, 'Madaniy tadbirlarda ishtiroki', 2, 63, '2021-11-17 11:30:53', NULL),
(61, 4, 'Bo\'limlar o\'rtasida do\'stona munosabat (yangi g\'oyalar va fikrlar almashinuvi)', 2, 63, '2021-11-17 11:31:06', NULL),
(62, 4, 'Ingliz tili (IELTS 7.5 band score, C1 daraja), Koreys tili (TOPIK 5 band score, B2 daraja) va Rus tilini biladi.)', 3, 19, '2021-11-17 11:31:18', NULL),
(64, 4, 'Markaz ichki tartib qoidalariga rioya etish (xodimlarga nisbatan beparvo bo\'lmaslik)', 2, 63, '2021-11-17 11:31:43', NULL),
(65, 5, 'Ta\'lim turlari doirasida hamkorlik ishlarini tashkil etish', 2, 63, '2021-11-17 11:39:41', NULL),
(67, 5, 'Fan doirasida kasbiy ko\'nikmalar yuzasidan tavsiyalar berish (o\'qituvchi-pedagoglar bilan hamkorlik) ', 3, 63, '2021-11-17 11:40:14', NULL),
(78, 6, 'Kunlik ishlar', 0.5, 63, '2022-01-16 05:10:33', NULL),
(81, 5, 'OAV dagi chiqishlari', 3, 63, '2022-01-31 12:53:55', NULL),
(82, 5, 'Yaratilgan oʻquv-metodik materiallarni samarali joriy etish yuzasidan targʻibot-tashviqot ishlari', 2, 63, '2022-01-31 13:42:38', NULL),
(83, 5, 'O\'quv faoliyatini takomillashtirishga oid ilmiy-metodik tavsiyalar tayyorlash (Ijtimoiy tarmoqlar faoliyati)', 2, 63, '2022-01-31 13:50:33', NULL),
(85, 3, 'Xammualliflikdagi darslik yoki o\'quv qo\'llanma ishlab chiqish (guvohnoma ilova qilinadi))', 2, 63, '2022-01-31 13:55:10', NULL),
(88, 2, 'Fan bo\'yicha o\'qitishning zamonaviy tajribalarini tahlil qilish (ma\'lumotlar asosida)', 2, 63, '2022-01-31 13:57:09', NULL),
(92, 2, 'Taqvim-reja asosida dars o\'tish uslubini ishlab chiqish (Mavzu doirasida)', 3, 63, '2022-01-31 13:58:33', NULL),
(93, 2, 'Respublika miqyosida taqdim etilgan dars ishlanmalarni tahlil qilish (ilmiy tadqiqot ishlari doirasida ) ', 3, 63, '2022-01-31 13:58:48', NULL),
(94, 2, 'Viloyat va tuman metodistlariga metodik xizmat ko\'rsatish (tahliliy ma\'lumotlar asosida)', 2, 63, '2022-01-31 13:59:08', NULL),
(95, 5, 'Ko\'rik-tanlov va ilmiy-amaliy tadbirlarga material tayyorlash', 2, 63, '2022-01-31 14:44:03', NULL),
(96, 3, 'Pedagogik faoliyat olib borish (dars o\'tish)', 2, 63, '2022-01-31 14:45:56', NULL),
(97, 4, 'Hamkorlik ishlarini tashkil qilish va ishtirok etish (tashkilotlar o\'rtasida)', 2, 63, '2022-01-31 15:13:05', NULL),
(98, 4, 'Maqsadga erishish uchun ishonchli harakat (fidoiylik, jasorat, liderlik)', 2, 63, '2022-01-31 15:20:15', NULL),
(99, 5, 'Model o\'qituvchilar asosida mobil guruhlar tashkil qilish', 2, 63, '2022-01-31 15:37:48', NULL),
(100, 5, '2022-2026 yillarga mo\'ljjalangan Taraqqiyot strategiyasi (Markaz faoliyati rivojlanishida ishtiroki) ', 2, 63, '2022-01-31 15:44:31', NULL),
(101, 5, 'Innovatsion yondashuv asosida seminar-trenninglar tashkil qilish', 2, 63, '2022-01-31 15:54:14', NULL),
(102, 5, 'Ijodiy yondashuv, ilm-fan va yaratuvchanlik faoliyati', 3, 63, '2022-01-31 16:00:16', NULL),
(103, 5, 'Markaz faoliyatini rivojlantirish doirasidagi foydali takliflar (layfxak)', 2, 63, '2022-01-31 16:06:58', NULL),
(104, 5, 'Markaz faoliyati haqida ommaviy axborot vositalarida yoritish', 3, 63, '2022-03-02 07:11:11', NULL),
(105, 5, 'Markaz imijini shakllantirish (jamotchilik fikrini o\'rganish)', 2, 63, '2022-03-02 07:13:58', NULL),
(106, 5, 'Ommaviy axborot vositalari bilan samarali hamkorlik qilish', 3, 63, '2022-03-02 07:14:21', NULL),
(107, 5, 'Markaz faoliyatini yorituvchi matnli, foto-, audio- va videomateriallar tayyorlash.', 3, 63, '2022-03-02 07:22:29', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `instructors`
--

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `instructors`
--

INSERT INTO `instructors` (`id`, `cat_id`, `name`, `file`, `created_at`) VALUES
(8, 24, 'Ko\'rsatkichlar bilan ishlash', 'files/instructors/c0afaa0e-5360-44b3-8be1-9c06f0a51d3d.pdf', '2021-12-10 15:53:08'),
(9, 26, 'RTM nizomi', 'files/instructors/8708af91-da6b-446b-a103-d3915e2e1135.docx', '2021-12-13 09:15:37'),
(12, 28, 'TADBIRLAR SAHIFASI', 'files/instructors/98eb1c7b-ce08-4ac0-8a99-8bf9a6d35d5a.mp4', '2021-12-20 09:15:36'),
(13, 28, 'XABARLAR SAHIFASI', 'files/instructors/02e13002-df61-40f0-85a1-26bb4abc7a3c.mp4', '2021-12-20 09:16:39'),
(14, 28, 'XODIM ISH FAOLIYATI INDIKATORLARI', 'files/instructors/9c9415c9-8b47-4319-9eed-29f1a43df219.mp4', '2021-12-20 09:17:51'),
(15, 28, 'JAMOA A\'ZOLARI', 'files/instructors/7c4b07e5-83ab-4304-8b43-0955a93bdb7c.mp4', '2021-12-20 09:29:16'),
(16, 28, 'TIZIMDAN FOYDALANISH YO\'RIQNOMASI', 'files/instructors/036ac324-4f4b-4861-ba8d-40ebb319d6bb.mp4', '2021-12-20 09:29:53'),
(17, 28, 'SOZLAMALAR', 'files/instructors/8e3b207c-fd0b-43d7-a3d9-4b20ca37b43f.mp4', '2021-12-20 09:30:23'),
(18, 28, 'HISOBOTLAR SAHIFASI', 'files/instructors/e67ed96a-4d9e-4e6c-91cb-20b45aab4d33.mp4', '2021-12-20 10:44:30'),
(19, 28, 'SAYT BILAN TANISHTIRUV', 'files/instructors/b79bf00d-d1c0-4cb7-838f-2e426a2c5e21.mp4', '2021-12-20 11:01:06');

-- --------------------------------------------------------

--
-- Структура таблицы `instruct_cats`
--

CREATE TABLE `instruct_cats` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `instruct_cats`
--

INSERT INTO `instruct_cats` (`id`, `name`, `created_at`) VALUES
(24, 'KPI INDIKATORLARI', '2021-12-10 12:46:57'),
(26, 'Respublika ta\'lim markazi nizomi', '2021-12-13 09:13:27'),
(28, 'Video qo\'llanma', '2021-12-20 09:11:46');

-- --------------------------------------------------------

--
-- Структура таблицы `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `labels` text COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','not_paid','cancelled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `tax_id3` int(11) NOT NULL DEFAULT '0',
  `recurring` tinyint(4) NOT NULL DEFAULT '0',
  `recurring_invoice_id` int(11) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT '0',
  `due_reminder_date` date DEFAULT NULL,
  `recurring_reminder_date` date DEFAULT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancelled_by` int(11) NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `show_in_client_portal` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `unit_type`, `rate`, `files`, `show_in_client_portal`, `category_id`, `sort`, `deleted`) VALUES
(1, 'test', 'test', '', 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:32:\"item_file6141869296280-40-Ф.PNG\";s:9:\"file_size\";s:6:\"161676\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `item_categories`
--

CREATE TABLE `item_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `item_categories`
--

INSERT INTO `item_categories` (`id`, `title`, `deleted`) VALUES
(1, 'General item', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `context` enum('event','invoice','note','project','task','ticket','to_do') COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `labels`
--

INSERT INTO `labels` (`id`, `title`, `color`, `context`, `user_id`, `deleted`) VALUES
(1, 'jhkjhkjjkj', '#83c340', 'event', 5, 0),
(2, 'jkjhkjkjk', '#e18a00', 'event', 5, 0),
(3, '3243424', '#e74c3c', 'to_do', 1, 0),
(4, 'Muhim', '#83c340', 'project', 0, 0),
(5, 'O\'rta muhim', '#83c340', 'project', 0, 0),
(6, 'O\'rta', '#83c340', 'project', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lead_source`
--

CREATE TABLE `lead_source` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `lead_source`
--

INSERT INTO `lead_source` (`id`, `title`, `sort`, `deleted`) VALUES
(1, 'Google', 1, 0),
(2, 'Facebook', 2, 0),
(3, 'Twitter', 3, 0),
(4, 'Youtube', 4, 0),
(5, 'Elsewhere', 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `lead_status`
--

CREATE TABLE `lead_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `lead_status`
--

INSERT INTO `lead_status` (`id`, `title`, `color`, `sort`, `deleted`) VALUES
(1, 'New', '#f1c40f', 0, 0),
(2, 'Qualified', '#2d9cdb', 1, 0),
(3, 'Discussion', '#29c2c2', 2, 0),
(4, 'Negotiation', '#2d9cdb', 3, 0),
(5, 'Won', '#83c340', 4, 0),
(6, 'Lost', '#e74c3c', 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_hours` decimal(7,2) NOT NULL,
  `total_days` decimal(5,2) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_at` datetime DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `leave_type_id`, `start_date`, `end_date`, `total_hours`, `total_days`, `applicant_id`, `reason`, `status`, `created_at`, `created_by`, `checked_at`, `checked_by`, `deleted`) VALUES
(1, 1, '2021-10-26', '2021-10-26', '6.00', '0.75', 1, 'llkjlkj', 'pending', '2021-10-26 11:26:34', 0, '0000-00-00 00:00:00', 0, 1),
(2, 1, '2021-10-27', '2021-10-27', '8.00', '1.00', 1, 'ljlkjlkj', 'pending', '2021-10-26 11:28:38', 0, '0000-00-00 00:00:00', 0, 1),
(3, 1, '2021-10-27', '2021-10-27', '8.00', '1.00', 1, 'sdfsfdsf', 'pending', '2021-10-26 11:38:27', 0, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `status`, `color`, `description`, `deleted`) VALUES
(1, 'Casual Leave', 'active', '#83c340', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `message_id` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_by_users` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `subject`, `message`, `created_at`, `from_user_id`, `to_user_id`, `status`, `message_id`, `deleted`, `files`, `deleted_by_users`) VALUES
(1, 'sdad', 'salom qalaysan', '2021-07-09 07:24:38', 5, 16, 'read', 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:49:\"message_file60e7f9b6a18e2-Untitled-design--3-.png\";s:9:\"file_size\";s:6:\"115156\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(2, 'dasd', 'asdasdasd', '2021-07-09 07:44:32', 5, 1, 'read', 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:95:\"message_file60e7fe607a792-Wasaf-Int-Solutions-92409702-2021.05.31-05.00---2021.07.01-04.59.xlsx\";s:9:\"file_size\";s:4:\"6330\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ',1'),
(3, 'sdadsad', 'salom opa menga shuni qarab bering', '2021-07-09 07:45:10', 5, 52, 'read', 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:95:\"message_file60e7fe8652702-Wasaf-Int-Solutions-92409702-2021.05.31-05.00---2021.07.01-04.59.xlsx\";s:9:\"file_size\";s:4:\"6330\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(4, '', 'savollar bering', '2021-07-09 07:45:29', 5, 1, 'read', 2, 0, 'a:0:{}', ',1'),
(5, '', 'hello how are you korib beramna', '2021-07-09 07:45:47', 1, 5, 'read', 2, 0, 'a:0:{}', ',1'),
(6, 'мфяшафдфк йфни', 'фывыфавава', '2021-09-16 04:50:58', 1, 12, 'read', 0, 0, 'a:0:{}', ''),
(7, 'xcvcxvxcv', 'cv  fsrt545', '2021-09-16 04:53:28', 5, 12, 'read', 0, 0, 'a:0:{}', ''),
(8, 'darslik', 'qandaysiz', '2021-10-22 10:45:54', 83, 6, 'read', 0, 0, 'a:0:{}', ''),
(9, '1233', 'salom', '2021-11-24 14:26:05', 63, 39, 'read', 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:54:\"message_file619e4b7dc1a9a--5422799521970237718_121.jpg\";s:9:\"file_size\";s:5:\"75487\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(10, 'ILMIY MAQOLA', 'Men sizga taqdim etgan maqolani ko\'rib chiqdingizmi', '2021-12-17 12:48:12', 1, 25, 'read', 0, 0, 'a:0:{}', ''),
(11, '', 'Ko\'rib chiqyapman', '2021-12-17 12:49:04', 25, 1, 'read', 10, 0, 'a:0:{}', ''),
(12, 'ILMIY MAQOLA', 'sdadsdsadsad', '2021-12-20 12:29:22', 1, 81, 'unread', 0, 0, 'a:0:{}', ''),
(13, 'salom', 'qayerdasiz', '2021-12-22 11:57:57', 13, 22, 'read', 0, 0, 'a:0:{}', ''),
(14, '', 'Salom', '2021-12-22 14:13:32', 22, 13, 'read', 13, 0, 'a:0:{}', ''),
(15, '', 'Honada', '2021-12-22 14:13:42', 22, 13, 'read', 13, 0, 'a:0:{}', ''),
(16, 'Salom, ', 'kpi ni har bir funksiyasini o\'rganib cvhiqib sizga sms yozib ko\'ri degan edim. Yana qachon o\'quvlarni tashkil etasiz kpi bo\'yicha, \r\n', '2022-01-17 07:30:35', 14, 63, 'read', 0, 0, 'a:0:{}', ''),
(17, 'Assalomu alaykum, ', 'KPI ni ming azob bo\'lsa ham joriy qilish kk. haftada 1 2 marta o\'quvlar qilinsa yetadi. ', '2022-01-17 07:44:49', 14, 5, 'unread', 0, 0, 'a:0:{}', ''),
(18, '', 'keldi \r\n', '2022-01-17 13:43:08', 63, 14, 'read', 16, 0, 'a:0:{}', ''),
(19, '', 'agar shu kpi ni tez tushirib olse, qog\'ozbozlikdan tez qutulardik. \r\n', '2022-01-18 09:46:58', 14, 63, 'read', 16, 0, 'a:0:{}', ''),
(20, '', 'knchi, sizga xabar jonatvotganimda \"Enter\" tugmasini bosib jonatadgan qilish kk. 2- imkoniyat bo\'ladi. \r\nhozirgi holatida faqat JAVOB TUGMASI BOSILVOTI xolos. \r\nklaviaturada ishlavotganida enter tez ishlaydi, xat xabarlarni jo\'natishga, Akmal. \r\n', '2022-01-18 09:48:45', 14, 63, 'read', 16, 0, 'a:0:{}', ''),
(21, 'Salom, ', '\"Boshqaruv paneli\" degan tugmani \"Bosh sahifa\" deb o\'zgartirish kk. Chunki xodim uymumiy ma\'lumotlarni ko\'radiku kpi tizimidagi. ', '2022-01-18 09:52:20', 14, 63, 'read', 0, 0, 'a:0:{}', ''),
(22, 'ILMIY MAQOLA', 'Nima gaplar', '2022-01-24 07:59:21', 1, 63, 'read', 0, 0, 'a:0:{}', ''),
(23, '', 'xabar keldi bu\r\n', '2022-01-24 08:58:53', 63, 1, 'read', 22, 0, 'a:0:{}', ''),
(24, 's', 'to\'g\'ri bo\'libdi\r\n', '2022-01-24 09:00:50', 63, 1, 'read', 0, 0, 'a:0:{}', ''),
(25, '', 'Salom \r\n', '2022-01-26 09:59:48', 14, 63, 'read', 16, 0, 'a:0:{}', ''),
(26, '', 'khkjhjkhkjhkj', '2022-01-26 14:07:54', 63, 14, 'read', 16, 0, 'a:0:{}', ''),
(27, '', 'aka bu borku', '2022-01-26 14:08:26', 63, 14, 'read', 16, 0, 'a:0:{}', ''),
(28, '', 'Sizga shunday yubordi enter bosib', '2022-01-26 14:08:39', 63, 14, 'read', 16, 0, 'a:0:{}', ''),
(29, 'ковид справкаси ', 'Сурайё яхшимисиз Акмал Сизга беришимни айтди', '2022-01-27 05:34:36', 58, 11, 'unread', 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:43:\"message_file61f22eecc676e-kovid-manfiy.docx\";s:9:\"file_size\";s:6:\"113309\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(30, 'kunlik ishlar hisobati', 'Aka menga biror bir kunlik ish qilib yubora olasizmi KPI ya\'ni bugun maqola yozdim degan mzmunda\r\n', '2022-01-27 10:36:31', 63, 14, 'read', 0, 0, 'a:0:{}', ''),
(31, '', 'Salom, hormeng \r\n\r\n', '2022-01-27 11:43:26', 14, 63, 'read', 16, 0, 'a:0:{}', ''),
(32, '', 'Enter bosganimda o\'zgarishsiz, menda \r\n', '2022-01-27 11:47:26', 14, 63, 'read', 16, 0, 'a:0:{}', ''),
(33, '', 'nimag\r\n\r\n\r\n', '2022-01-27 12:00:04', 63, 14, 'read', 16, 0, 'a:0:{}', ''),
(34, 'баҳ қўйилдими', '2 балл', '2022-01-27 12:29:47', 63, 14, 'read', 0, 0, 'a:0:{}', ''),
(35, 'fjfgv', 'vey', '2022-01-31 12:57:06', 37, 19, 'read', 0, 0, 'a:0:{}', ''),
(36, '', 'Vey\r\n', '2022-01-31 12:58:34', 19, 37, 'read', 35, 0, 'a:0:{}', ''),
(37, 'Xormang', 'Integratsiya 14:00 da ', '2022-02-02 04:45:12', 62, 65, 'read', 0, 0, 'a:0:{}', ''),
(38, '', 'alo', '2022-02-02 04:45:31', 65, 62, 'read', 37, 0, 'a:0:{}', ''),
(39, 'Integratsiya ', '14:00 ', '2022-02-02 04:45:36', 62, 54, 'read', 0, 0, 'a:0:{}', ''),
(40, 'Salom, ', 'Salom, Akmal, hormeng, misol \r\n1. bo\'lim xodimiga ish kelib tushdi, aynan metodistga, qabul qiluvchi bo\'lim boshlig\'i, lekin bo\'lim boshlig\'i otpuskada u holda nima qilamiz? \r\n\r\n2. BO\'lim xodimlari, yoki bo\'lim boshliqlari mehnat ta\'tilda bo\'lsa, ta\'tilga chiqqanligi haqidagi hujjat ijro yoki odel kadfr tomonidan bo\'lim boshliq sahifasidagi mehnat ta\'tili degan vkladkaga mehnat ta\'tilini buyrug\'ini qo\'yib qo\'yish kk. Va mehnat ta\'tili davri boshqa markaz xodimlariga ko\'rinib turish kk biron belgi yoki rang orqali. Mehnat ta\'tili muddati qachondan qachonganligini ham ko\'rinib turishi kk. rahbariyatga, va boshqa bo\'lim boshliq xodimlariga, Toki mehnat ta\'tilidagi markaz xodimini bezovta qilinmasligini inobatga olish maqsadida. ', '2022-02-02 04:52:44', 14, 63, 'read', 0, 0, 'a:0:{}', ''),
(41, 'salom', 'salom', '2022-02-02 04:56:29', 1, 65, 'read', 0, 0, 'a:0:{}', ''),
(42, '', '1', '2022-02-02 04:57:53', 65, 1, 'read', 41, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:55:\"message_file61fa0f51dfb96-photo_2021-09-29_16-47-46.jpg\";s:9:\"file_size\";s:5:\"49917\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(43, '', 'menda adminlik bor', '2022-02-02 04:58:21', 1, 63, 'read', 22, 0, 'a:0:{}', ''),
(44, 'Ўқув хоналарини жиҳозлаш бўйича меъёрий ҳужжатлар', '\r\nАссалому алайкум, ҳурматли ҳамкасбим, Сизга Халқ таълими вазирлигининг  2020 йил 30 июлдаги \"Умумий ўрта таълим муассасалари ҳудуди, фойеси ва бино йўлакларини безатишнинг намунавий талабларини тасдиқлаш тўғрисида\"ги 179-сон; 2020 йил 25 декабрдаги \"Халқ таълими тизимидаги умумий ўрта таълим муассасалари учун зарур бўладиган жиҳозлар ва техник воситалар меъёрларини тасдиқлаш тўғрисида\"ги 328-сон буйруқлари ва уларнинг иловалари юборилмоқда. РТМ раҳбариятининг 2022 йил 29 январда берган “Умамтаълим муассасалари ўқув хоналарини замон талаблари асосида жиҳозлаш бўйича таклифлар тайёрлаш” топшириғининг ижросини сифатли таъминлашда ушбу ҳужжатлар Сизга кўмак бўлади, деган умиддамиз.                                                                                                         \r\nҚўшимча равишда, Хорижий мамлакатлар мактаблари фан хоналари (мисоллар) фотосуратлари юборилмоқда. \r\nСаволларингиз ёки ёрдам керак бўлса, марҳамат, мурожаат қилишингиз мумкин. \r\n2019 ва 2020 йил ўқув хоналарини жиҳозлаш юзасидан РТМ томонидан вазирликка берилган таклифлар электрон (ворд) вариантлари сақланган, олишингиз мумкин.  Ҳурмат билан Тажимурад Турсунов, Стандарт ва баҳолаш бўлими методисти.\r\n\r\n', '2022-02-02 05:15:36', 57, 19, 'read', 0, 0, 'a:2:{i:0;a:4:{s:9:\"file_name\";s:76:\"message_file61fa1377f40ac-179-b-30-07-2020-фойе-безатилиши.PDF\";s:9:\"file_size\";s:7:\"5376489\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:79:\"message_file61fa13785e1a2-328-б-25-12-2020-жихозлаш-буйруғи.pdf\";s:9:\"file_size\";s:7:\"2350846\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(45, 'Ўқув хоналарини жиҳозлаш бўйича меъёрий ҳужжатлар', '\r\nАссалому алайкум, ҳурматли ҳамкасбим, Сизга Халқ таълими вазирлигининг  2020 йил 30 июлдаги \"Умумий ўрта таълим муассасалари ҳудуди, фойеси ва бино йўлакларини безатишнинг намунавий талабларини тасдиқлаш тўғрисида\"ги 179-сон; 2020 йил 25 декабрдаги \"Халқ таълими тизимидаги умумий ўрта таълим муассасалари учун зарур бўладиган жиҳозлар ва техник воситалар меъёрларини тасдиқлаш тўғрисида\"ги 328-сон буйруқлари ва уларнинг иловалари юборилмоқда. РТМ раҳбариятининг 2022 йил 29 январда берган “Умамтаълим муассасалари ўқув хоналарини замон талаблари асосида жиҳозлаш бўйича таклифлар тайёрлаш” топшириғининг ижросини сифатли таъминлашда ушбу ҳужжатлар Сизга кўмак бўлади, деган умиддамиз.                                                                                                         \r\nҚўшимча равишда, Хорижий мамлакатлар мактаблари фан хоналари (мисоллар) фотосуратлари юборилмоқда. \r\nСаволларингиз ёки ёрдам керак бўлса, марҳамат, мурожаат қилишингиз мумкин. \r\n2019 ва 2020 йил ўқув хоналарини жиҳозлаш юзасидан РТМ томонидан вазирликка берилган таклифлар электрон (ворд) вариантлари сақланган, олишингиз мумкин.  Ҳурмат билан Тажимурад Турсунов, Стандарт ва баҳолаш бўлими методисти.\r\n\r\n', '2022-02-02 05:18:17', 57, 52, 'read', 0, 0, 'a:2:{i:0;a:4:{s:9:\"file_name\";s:76:\"message_file61fa1418843ac-179-b-30-07-2020-фойе-безатилиши.PDF\";s:9:\"file_size\";s:7:\"5376489\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:79:\"message_file61fa1418be0cd-328-б-25-12-2020-жихозлаш-буйруғи.pdf\";s:9:\"file_size\";s:7:\"2350846\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(46, 'Ўқув хоналарини жиҳозлаш бўйича меъёрий ҳужжатлар', 'Замирахон опажон, Ходимларингизга ҳам беринг, умумий рўйхатга ташлаш командаси йўқ экан. ', '2022-02-02 05:21:58', 57, 52, 'read', 0, 0, 'a:0:{}', ''),
(47, 'Ўқув хоналарини жиҳозлаш бўйича меъёрий ҳужжатлар', 'Ассалому алайкум, ҳурматли Устоз, Сизга Халқ таълими вазирлигининг  2020 йил 30 июлдаги \"Умумий ўрта таълим муассасалари ҳудуди, фойеси ва бино йўлакларини безатишнинг намунавий талабларини тасдиқлаш тўғрисида\"ги 179-сон; 2020 йил 25 декабрдаги \"Халқ таълими тизимидаги умумий ўрта таълим муассасалари учун зарур бўладиган жиҳозлар ва техник воситалар меъёрларини тасдиқлаш тўғрисида\"ги 328-сон буйруқлари ва уларнинг иловалари юборилмоқда. РТМ раҳбариятининг 2022 йил 29 январда берган “Умамтаълим муассасалари ўқув хоналарини замон талаблари асосида жиҳозлаш бўйича таклифлар тайёрлаш” топшириғининг ижросини сифатли таъминлашда ушбу ҳужжатлар Сизга кўмак бўлади, деган умиддамиз.                                                                                                         \r\nҚўшимча равишда, Хорижий мамлакатлар мактаблари фан хоналари (мисоллар) фотосуратлари юборилмоқда. \r\nСаволларингиз ёки ёрдам керак бўлса, марҳамат, мурожаат қилишингиз мумкин. \r\n2019 ва 2020 йил ўқув хоналарини жиҳозлаш юзасидан РТМ томонидан вазирликка берилган таклифлар электрон (ворд) вариантлари сақланган, олишингиз мумкин.  Ҳурмат билан Тажимурад Турсунов, Стандарт ва баҳолаш бўлими методисти.\r\n\r\n', '2022-02-02 05:24:48', 57, 61, 'read', 0, 0, 'a:2:{i:0;a:4:{s:9:\"file_name\";s:76:\"message_file61fa15a0ab6e2-179-b-30-07-2020-фойе-безатилиши.PDF\";s:9:\"file_size\";s:7:\"5376489\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:79:\"message_file61fa15a0aeda8-328-б-25-12-2020-жихозлаш-буйруғи.pdf\";s:9:\"file_size\";s:7:\"2350846\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(48, 'Ўқув хоналарини жиҳозлаш бўйича меъёрий ҳужжатлар', 'Ассалому алайкум, ҳурматли ҳамкасбим, Сизга Халқ таълими вазирлигининг  2020 йил 30 июлдаги \"Умумий ўрта таълим муассасалари ҳудуди, фойеси ва бино йўлакларини безатишнинг намунавий талабларини тасдиқлаш тўғрисида\"ги 179-сон; 2020 йил 25 декабрдаги \"Халқ таълими тизимидаги умумий ўрта таълим муассасалари учун зарур бўладиган жиҳозлар ва техник воситалар меъёрларини тасдиқлаш тўғрисида\"ги 328-сон буйруқлари ва уларнинг иловалари юборилмоқда. РТМ раҳбариятининг 2022 йил 29 январда берган “Умамтаълим муассасалари ўқув хоналарини замон талаблари асосида жиҳозлаш бўйича таклифлар тайёрлаш” топшириғининг ижросини сифатли таъминлашда ушбу ҳужжатлар Сизга ва ходимларингизга кўмак бўлади, деган умиддамиз.                                                                                                         \r\nҚўшимча равишда, Хорижий мамлакатлар мактаблари фан хоналари (мисоллар) фотосуратлари юборилмоқда. \r\nСаволларингиз ёки ёрдам керак бўлса, марҳамат, мурожаат қилишингиз мумкин. \r\n2019 ва 2020 йил ўқув хоналарини жиҳозлаш юзасидан РТМ томонидан вазирликка берилган таклифлар электрон (ворд) вариантлари сақланган, олишингиз мумкин.  Ҳурмат билан Тажимурад Турсунов, Стандарт ва баҳолаш бўлими методисти. \r\nБарно Убайдуллаевна, в связи с тем, что в данной программе отсутствует (или я не смог найти) команда \"отправка для всех\", надеюсь, передадите материалы и методистам ввереннного Вам отдела. \r\n\r\n', '2022-02-02 05:30:33', 57, 25, 'read', 0, 0, 'a:2:{i:0;a:4:{s:9:\"file_name\";s:76:\"message_file61fa16f9a1032-179-b-30-07-2020-фойе-безатилиши.PDF\";s:9:\"file_size\";s:7:\"5376489\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:79:\"message_file61fa16f9a12cf-328-б-25-12-2020-жихозлаш-буйруғи.pdf\";s:9:\"file_size\";s:7:\"2350846\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(49, 'РТМ раҳбарияти топшириғи ижросини таъминлаш юзасидан ахборот', 'Ассалому алайкум, Ферузахон Каримовна, РТМ раҳбарияти томонидан 2022 йил 29 январда “Умамтаълим муассасалари ўқув хоналарини замон талаблари асосида жиҳозлаш бўйича таклифлар тайёрлаш” топшириғи берилди. \r\nБўлим бошлиқларига Халқ таълими вазирлигининг  2020 йил 30 июлдаги \"Умумий ўрта таълим муассасалари ҳудуди, фойеси ва бино йўлакларини безатишнинг намунавий талабларини тасдиқлаш тўғрисида\"ги 179-сон; 2020 йил 25 декабрдаги \"Халқ таълими тизимидаги умумий ўрта таълим муассасалари учун зарур бўладиган жиҳозлар ва техник воситалар меъёрларини тасдиқлаш тўғрисида\"ги 328-сон буйруқлари ва уларнинг иловалари ҳамда қўшимча равишда, Хорижий мамлакатлар мактаблари фан хоналари (мисоллар) фотосуратлари юборилди.  \r\nСаволлар ёки ёрдам керак бўлса, мурожаат этишлари, бундан ташқари, 2019 ва 2020 йил ўқув хоналарини жиҳозлаш юзасидан РТМ томонидан вазирликка берилган таклифлар электрон (ворд) вариантлари сақланганлиги ва уларни Стандарт ва баҳолаш бўлимидан олишлари мумкинлиги эслатилди.', '2022-02-02 05:58:03', 57, 22, 'read', 0, 0, 'a:2:{i:0;a:4:{s:9:\"file_name\";s:76:\"message_file61fa1d6b27a51-179-b-30-07-2020-фойе-безатилиши.PDF\";s:9:\"file_size\";s:7:\"5376489\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:79:\"message_file61fa1d6b27abb-328-б-25-12-2020-жихозлаш-буйруғи.pdf\";s:9:\"file_size\";s:7:\"2350846\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(50, '', 'BUGUN 14 DA OʻTKAZAYLIK HAMMA KELSIN\r\n', '2022-02-02 06:32:46', 54, 62, 'read', 39, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:42:\"message_file61fa258e5d9a4-KULOLCHILIK.docx\";s:9:\"file_size\";s:5:\"48888\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(51, '', 'Opa qachonga qoldirdik \r\n', '2022-02-02 14:14:34', 62, 54, 'read', 39, 0, 'a:0:{}', ''),
(52, '', 'Ассалому алайкум,устоз.Рахмат.', '2022-02-02 15:19:34', 61, 57, 'read', 47, 0, 'a:0:{}', ''),
(53, 'Salom', 'Xormang', '2022-02-02 15:23:05', 62, 19, 'read', 0, 0, 'a:0:{}', ''),
(54, '', 'Assalomu alaykum, salomat bo\'ling, aka.', '2022-02-03 03:58:49', 19, 62, 'read', 53, 0, 'a:0:{}', ''),
(55, '', 'Assalomu alaykum, Rahmat Tojimurod aka. ', '2022-02-03 03:59:15', 19, 57, 'read', 44, 0, 'a:0:{}', ''),
(56, 'ish reja uchun ', 'ish rejangizni shakillantirish uchun', '2022-02-03 05:22:04', 60, 92, 'read', 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:72:\"message_file61fb667c07a0e-2022-иш-режа-махсус-2.02.2022.docx\";s:9:\"file_size\";s:5:\"25725\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(57, '', 'Assalomu alaykum', '2022-02-03 05:22:53', 92, 60, 'read', 56, 0, 'a:0:{}', ''),
(58, '', 'raxmat', '2022-02-03 05:23:26', 60, 92, 'read', 56, 0, 'a:0:{}', ''),
(59, '', 'Salom, Akmal hormeng, ', '2022-02-03 06:53:54', 14, 63, 'read', 40, 0, 'a:0:{}', ''),
(60, '', 'Assalomu alaykum ko\'rdim\r\n', '2022-02-03 07:34:00', 63, 14, 'read', 40, 0, 'a:0:{}', ''),
(61, '', 'tizimni ruscha va inglizcha interfeysini qayta ko\'rish kk. bo\'lmasa, yagon tilda bo\'lgani ma\'qul Akmal. \r\nBugungi bn kechagi ishlarnbi jo\'natishga harakat qilaman. \r\n', '2022-02-04 11:20:04', 14, 63, 'read', 40, 0, 'a:0:{}', ''),
(62, '', 'qaleysiz Aka', '2022-02-04 11:31:51', 63, 14, 'read', 40, 0, 'a:0:{}', ''),
(63, 'Bizga topshiriqlar yuqmi', 'Assalomu alaykum ', '2022-02-04 12:21:36', 60, 16, 'read', 0, 0, 'a:0:{}', ''),
(64, '', 'ассалому алайкум хўп бўлади', '2022-02-04 12:49:28', 52, 57, 'read', 46, 0, 'a:0:{}', ''),
(65, '', 'Ассалому алайкум файлни очмади', '2022-02-04 12:55:09', 52, 5, 'unread', 3, 0, 'a:0:{}', ''),
(66, 'Salom', 'yaxshimisiz\r\n\r\n', '2022-02-04 13:55:59', 115, 68, 'unread', 0, 0, 'a:0:{}', ''),
(67, 'KPI га маълумотлар ёзилдими?', 'Ассалому алайкум, ҳорманг яхшимисиз? КРI га маълумотлар ташладингизми?', '2022-02-04 13:56:57', 68, 115, 'read', 0, 0, 'a:0:{}', ''),
(68, '', 'ha', '2022-02-04 13:57:38', 115, 68, 'unread', 67, 0, 'a:0:{}', ''),
(69, '', 'Akmal, hormeng, ', '2022-02-07 11:10:19', 14, 63, 'read', 40, 0, 'a:0:{}', ''),
(70, '', 'kpi ni 1 fevraldan ishga tushganmidi, ', '2022-02-07 11:10:44', 14, 63, 'read', 40, 0, 'a:0:{}', ''),
(71, '', '1 haftalik tahlillar nima deyapti, ', '2022-02-07 11:11:24', 14, 63, 'read', 40, 0, 'a:0:{}', ''),
(72, '', 'qaysi bo\'lim xodimi nechi ball olayotgani sizga statistika bb tushmoqda, shu narsa ham ko\'rinib turadimi?', '2022-02-07 11:17:02', 14, 63, 'read', 40, 0, 'a:0:{}', ''),
(73, '', 'sizga', '2022-02-07 11:17:04', 14, 63, 'read', 40, 0, 'a:0:{}', ''),
(74, '', 'bunaqa ketishga kpi bo\'yicha Shuxrat akani imzosi bn yana rtmni ichki buyrug\'i chiqadi ', '2022-02-07 11:23:46', 14, 63, 'read', 40, 0, 'a:0:{}', ''),
(75, '', 'kpiga hamma otsin ishlatsin degan mazmunda, ', '2022-02-07 11:24:06', 14, 63, 'read', 40, 0, 'a:0:{}', ''),
(76, '', 'ijtimoiy dagilar, harakat boshlanibdi, ', '2022-02-07 11:24:25', 14, 63, 'read', 40, 0, 'a:0:{}', ''),
(77, '', 'mani bo\'limimdan man, xalqarodan Javlonda ball borligini ko\'rdim, ', '2022-02-07 11:24:54', 14, 63, 'read', 40, 0, 'a:0:{}', ''),
(78, 'Hey you', 'Do something here also)', '2022-02-09 04:03:37', 19, 23, 'unread', 0, 0, 'a:0:{}', ''),
(79, 'Такдимот  Навоий', 'Мохира тақдимотни ҳам ташлаяпман Тест ҳақида нима дейишди. хабарини маълум қиларсиз', '2022-02-09 12:11:59', 58, 95, 'read', 0, 0, 'a:0:{}', ''),
(80, 'Такдимот  Навоий', 'Метод кунда ўқитувчиларга жорий этилди. Такдимотни ташлаяпман', '2022-02-09 12:14:12', 58, 22, 'read', 0, 0, 'a:0:{}', ''),
(81, 'Табрик', 'Ассалому алейкум Набира муборак бўлсин. Умри узун ризқи бутун бўлсин. Эл эъзозида юрсин илоҳим', '2022-02-09 12:16:14', 58, 52, 'unread', 0, 0, 'a:0:{}', ''),
(82, 'РТМ раҳбарияти топшириғи ижросини таъминлаш юзасидан билдирги', 'Ферузахон, 29 январь РТМ йиғилишида берилган топшириқ бажарилди, кейинги кўрсатмани кутамиз', '2022-02-10 12:23:39', 57, 22, 'read', 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:82:\"message_file620503cb23673-0-Билдиришнома-9-февраль-касб.doc\";s:9:\"file_size\";s:6:\"112128\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(83, 'KPI', 'Феруза Неъматхановна сизга маълумотлар жўнатяпман....', '2022-02-14 10:35:14', 68, 61, 'read', 0, 0, 'a:0:{}', ''),
(84, '', 'жўнатинг\r\n', '2022-02-16 05:49:43', 61, 68, 'unread', 83, 0, 'a:0:{}', ''),
(85, 'Salom', 'Salom', '2022-02-23 10:34:38', 115, 68, 'unread', 0, 0, 'a:0:{}', ''),
(86, 'Касб', 'Касб бўйича сўраган эдингиз', '2022-02-25 10:51:34', 58, 57, 'unread', 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:39:\"message_file6218b4b628ac4-КАСБ.docx\";s:9:\"file_size\";s:6:\"191736\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(87, 'salom', 'assalomu alaykum! Yaxshimisiz? Hormang\r\nOybek platforma ishlamayapdimi\r\n', '2022-02-25 15:19:21', 54, 62, 'unread', 0, 0, 'a:0:{}', ''),
(88, 'Саломлашиш', 'Раис бува қандайсиз\r\n', '2022-02-28 10:36:00', 102, 16, 'read', 0, 0, 'a:0:{}', ''),
(89, 'salom', 'salom ', '2022-02-28 10:50:47', 60, 11, 'unread', 0, 0, 'a:0:{}', ''),
(90, '', 'Ассалому алейкум ', '2022-02-28 10:58:55', 39, 63, 'read', 9, 0, 'a:0:{}', ''),
(91, '', 'javob ', '2022-02-28 16:38:08', 63, 39, 'read', 9, 0, 'a:0:{}', ''),
(92, 'maxsudsaypiyev', 'Salom', '2022-03-01 10:34:41', 117, 118, 'read', 0, 0, 'a:0:{}', ''),
(93, 'видео-съёмка', 'бугунги видео качон мотаж килиб булинади?\r\n', '2022-03-01 10:44:27', 107, 117, 'read', 0, 0, 'a:0:{}', ''),
(94, '', 'hello my friend\r\n', '2022-03-01 11:00:05', 118, 117, 'read', 92, 0, 'a:0:{}', ''),
(95, '', 'ok', '2022-03-01 11:23:18', 117, 107, 'read', 93, 0, 'a:0:{}', ''),
(96, '', 'hi', '2022-03-01 11:23:25', 117, 118, 'read', 92, 0, 'a:0:{}', ''),
(97, 'ILMIY MAQOLA', 'yozing', '2022-03-02 08:27:47', 61, 111, 'read', 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:51:\"message_file621f2a83edabb-Amazon-FBA--Nazirjon-.pdf\";s:9:\"file_size\";s:7:\"6736894\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(98, 'Soddalik', 'Jo\'ra qannaysan, sodda bo\'lib yuribsanmi. Ayt bitta xolodilnik qo\'shib berishsin manga.', '2022-03-02 18:07:34', 111, 62, 'unread', 0, 0, 'a:0:{}', ''),
(99, 'chiquvchi xat', 'nashriyotlarga xat va ilovalari ', '2022-03-03 07:37:00', 60, 120, 'read', 0, 0, 'a:8:{i:0;a:4:{s:9:\"file_name\";s:70:\"message_file6220701cacd67-Нашриётларга-хат-1.03.22.docx\";s:9:\"file_size\";s:5:\"13843\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:71:\"message_file6220701cacfee-Ilm_ziyo_нашр_режа_2022_2023_й_.xlsx\";s:9:\"file_size\";s:5:\"39703\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:2;a:4:{s:9:\"file_name\";s:89:\"message_file6220701cad0cc-Niso-_нашр_режа_2022_2023_й_Кўзи_оиэлар.xlsx\";s:9:\"file_size\";s:5:\"71169\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:3;a:4:{s:9:\"file_name\";s:113:\"message_file6220701cad1eb-o-qituvchi-нашр_режа_2022_2023_й_Кўзи_оиэлар-—-копия--2-.xlsx\";s:9:\"file_size\";s:5:\"38917\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:4;a:4:{s:9:\"file_name\";s:114:\"message_file6220701cced89-O-zbekiston-нашр_режа_2022_2023_й_Кўзи_оиэлар-—-копия--3-.xlsx\";s:9:\"file_size\";s:5:\"39431\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:5;a:4:{s:9:\"file_name\";s:123:\"message_file6220701ccedd5-zamin-нашр_режа_2022_2023_й_Кўзи_оиэлар-—-копия-—-копия--2-.xlsx\";s:9:\"file_size\";s:5:\"39293\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:6;a:4:{s:9:\"file_name\";s:70:\"message_file6220701cceed5-Нашриётларга-хат-1.03.22.docx\";s:9:\"file_size\";s:5:\"13843\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:7;a:4:{s:9:\"file_name\";s:113:\"message_file6220701cceef7-Янгийўл_нашр_режа_2022_2023_й_Кўзи_оиэлар-—-копия.xlsx\";s:9:\"file_size\";s:5:\"39625\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(100, 'semenar uchun ', 'Ko\'zi ojiz, aqli zaif va kar bolalar ta\'lim muassasa o\'qituvchilari uchun master klass jadvali', '2022-03-03 07:38:57', 60, 120, 'read', 0, 0, 'a:0:{}', ''),
(101, 'imk kun tartibi', '2022-yil 1-imk kun tartibi', '2022-03-03 07:41:41', 60, 120, 'read', 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:52:\"message_file622071355795d-1-IMK-kun-tartibi--2-.docx\";s:9:\"file_size\";s:5:\"17941\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', ''),
(102, '', 'yaxshi aka o\'ziz yaxshimisz', '2022-03-03 15:17:31', 16, 102, 'read', 88, 0, 'a:0:{}', ''),
(103, '', 'Va alaykum assalom', '2022-03-03 15:17:48', 16, 60, 'read', 63, 0, 'a:0:{}', ''),
(104, '', 'худога шукур яхши', '2022-03-03 15:17:54', 102, 16, 'read', 88, 0, 'a:0:{}', ''),
(105, '', 'charchamayabsizmi', '2022-03-03 15:18:26', 16, 102, 'read', 88, 0, 'a:0:{}', ''),
(106, '', 'чарчадим\r\n', '2022-03-04 05:19:05', 102, 16, 'read', 88, 0, 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Структура таблицы `milestones`
--

CREATE TABLE `milestones` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `milestones`
--

INSERT INTO `milestones` (`id`, `title`, `project_id`, `due_date`, `description`, `deleted`) VALUES
(1, 'Test', 10, '2021-10-29', 'Test', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_comment_id` int(11) NOT NULL,
  `project_file_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `activity_log_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `invoice_payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL,
  `actual_message_id` int(11) NOT NULL,
  `parent_message_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `lead_id`, `invoice_payment_id`, `invoice_id`, `estimate_id`, `order_id`, `estimate_request_id`, `actual_message_id`, `parent_message_id`, `event_id`, `announcement_id`, `deleted`) VALUES
(1, 1, '', '2021-09-15 05:21:43', '76', ',1,61,118,60', 'project_member_added', 5, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2, 1, '', '2021-09-15 05:21:43', '53,76', ',1,61,118,60', 'project_member_added', 5, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(3, 1, '', '2021-09-15 05:21:43', '22,53,76', ',1,61,118,60', 'project_member_added', 5, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(4, 1, '', '2021-09-15 05:22:48', '22,53,76', ',1,61,118,60', 'project_task_created', 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(5, 1, '', '2021-09-15 05:23:00', '53', ',1,61,118,60', 'project_task_updated', 5, 16, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(6, 1, '', '2021-09-15 05:23:10', '53', ',1,61,118,60', 'project_task_commented', 5, 16, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(7, 1, '', '2021-09-15 05:23:18', '53', ',1,61,118,60', 'project_task_commented', 5, 16, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(8, 1, '', '2021-09-15 05:23:28', '53', ',1,61,118,60', 'project_task_updated', 5, 16, 0, 0, 0, 0, 0, 0, 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(9, 1, '', '2021-09-15 05:26:38', '53', ',1,61,118,60', 'project_task_updated', 5, 16, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(10, 1, '', '2021-09-15 05:26:45', '22,53,76', ',1,61,118,60', 'project_task_created', 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(11, 1, '', '2021-09-15 05:27:41', '', ',1,61,118,60', 'project_task_updated', 5, 17, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(12, 1, '', '2021-09-15 05:27:55', '53', ',1,61,118,60', 'project_task_updated', 5, 16, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(13, 1, '', '2021-09-15 05:32:11', '22,53,76', ',1,61,118,60', 'project_task_created', 5, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(14, 1, '', '2021-09-15 05:33:29', '11', ',1,61,118,60', 'project_member_added', 6, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(15, 1, '', '2021-09-15 05:33:29', '11,60', ',1,61,118,60', 'project_member_added', 6, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(16, 1, '', '2021-09-15 05:33:58', '11,60', ',1,61,118,60', 'project_task_created', 6, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(17, 1, '', '2021-09-15 05:34:12', '11,60', ',1,61,118,60', 'project_task_created', 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(18, 1, '', '2021-09-15 05:34:20', '11,60', ',1,61,118,60', 'project_task_created', 6, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(19, 11, '', '2021-09-15 05:34:57', '', ',1,61,118,60', 'project_task_updated', 6, 19, 0, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(20, 1, '', '2021-09-15 05:47:11', '', ',1,61,118,60', 'project_task_created', 7, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(21, 1, '', '2021-09-16 10:20:04', '11', ',1,61,118,60', 'project_task_updated', 6, 21, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(22, 1, '', '2021-09-16 10:20:58', '', ',1,61,118,60', 'project_task_assigned', 6, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(23, 1, '', '2021-09-16 10:21:44', '', ',1,61,118,60', 'project_task_updated', 6, 21, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(24, 1, '', '2021-09-16 10:21:45', '11', ',1,61,118,60', 'project_task_updated', 6, 20, 0, 0, 0, 0, 0, 0, 0, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(25, 1, '', '2021-09-16 10:26:24', '12', ',12,1,61,118,60', 'project_member_added', 8, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 1, '', '2021-09-16 10:33:33', '12', ',12,1,61,118,60', 'project_task_created', 8, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 1, '', '2021-10-12 12:33:32', '12', ',1,61,118,60', 'project_task_updated', 8, 23, 0, 0, 0, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 1, '', '2021-10-12 12:33:32', '12', ',1,61,118,60', 'project_task_updated', 8, 23, 0, 0, 0, 0, 0, 0, 0, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 1, '', '2021-10-12 12:33:34', '12', ',1,61,118,60', 'project_task_updated', 8, 23, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 1, '', '2021-10-12 12:33:35', '12', ',1,61,118,60', 'project_task_updated', 8, 23, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 1, '', '2021-10-12 12:33:56', '12', ',1,61,118,60', 'project_task_created', 8, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 1, '', '2021-10-12 12:34:11', '12', ',1,61,118,60', 'project_task_created', 8, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 1, '', '2021-10-12 12:34:21', '', ',1,61,118,60', 'project_task_updated', 8, 24, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 1, '', '2021-10-12 12:34:22', '', ',1,61,118,60', 'project_task_updated', 8, 25, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 1, '', '2021-10-12 12:34:27', '', ',1,61,118,60', 'project_task_updated', 8, 24, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 1, '', '2021-10-12 12:34:54', '12', ',1,61,118,60', 'project_task_created', 8, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 1, '', '2021-10-12 12:35:13', '', ',1,61,118,60', 'project_task_updated', 8, 26, 0, 0, 0, 0, 0, 0, 0, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 1, '', '2021-10-12 12:35:14', '', ',1,61,118,60', 'project_task_updated', 8, 26, 0, 0, 0, 0, 0, 0, 0, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 1, '', '2021-10-12 12:35:18', '', ',1,61,118,60', 'project_task_updated', 8, 26, 0, 0, 0, 0, 0, 0, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 1, '', '2021-10-12 12:35:23', '', ',1,61,118,60', 'project_task_updated', 8, 26, 0, 0, 0, 0, 0, 0, 0, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 1, '', '2021-10-12 12:35:31', '', ',1,61,118,60', 'project_task_updated', 8, 24, 0, 0, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 1, '', '2021-10-12 12:35:47', '', ',1,61,118,60', 'project_task_updated', 8, 26, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 1, '', '2021-10-19 11:24:57', '12', ',61,1,118,60', 'project_task_created', 8, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 1, '', '2021-10-19 11:25:51', '', ',61,1,118,60', 'project_task_created', 9, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(45, 1, '', '2021-10-19 11:27:19', '', ',61,1,118,60', 'project_task_created', 9, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(46, 1, '', '2021-10-19 11:30:28', '16', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(47, 1, '', '2021-10-19 11:30:28', '16,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(48, 1, '', '2021-10-19 11:30:28', '16,39,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(49, 1, '', '2021-10-19 11:30:29', '16,39,44,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(50, 1, '', '2021-10-19 11:30:29', '16,39,44,53,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(51, 1, '', '2021-10-19 11:30:29', '6,16,39,44,53,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(52, 1, '', '2021-10-19 11:30:29', '6,16,39,44,48,53,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(53, 1, '', '2021-10-19 11:30:30', '6,16,29,39,44,48,53,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(54, 1, '', '2021-10-19 11:30:30', '6,16,29,39,42,44,48,53,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(55, 1, '', '2021-10-19 11:30:30', '6,16,19,29,39,42,44,48,53,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(56, 1, '', '2021-10-19 11:30:30', '6,16,19,27,29,39,42,44,48,53,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(57, 1, '', '2021-10-19 11:30:31', '6,16,19,27,29,39,42,44,48,53,72,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(58, 1, '', '2021-10-19 11:30:31', '6,16,19,27,29,39,42,44,48,53,72,75,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(59, 1, '', '2021-10-19 11:30:31', '6,16,19,27,29,39,40,42,44,48,53,72,75,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(60, 1, '', '2021-10-19 11:30:31', '6,16,19,27,29,39,40,42,44,48,53,72,75,80,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(61, 1, '', '2021-10-19 11:30:31', '6,16,19,27,29,39,40,42,44,48,53,72,75,79,80,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(62, 1, '', '2021-10-19 11:30:32', '6,16,19,27,29,39,40,42,44,48,53,72,75,78,79,80,81', ',61,1,118,60', 'project_member_added', 10, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(63, 1, '', '2021-10-19 11:32:30', '6,16,19,27,29,39,40,42,44,48,53,72,75,78,79,80,81', ',61,1,118,60', 'project_task_created', 10, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(64, 1, '', '2021-10-19 11:50:06', '', ',61,1,118,60', 'project_task_created', 9, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(65, 1, '', '2021-10-19 11:56:33', '', ',61,1,118,60', 'project_task_created', 9, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(66, 1, '', '2021-10-22 07:15:41', '16', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(67, 1, '', '2021-10-22 07:15:41', '16,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(68, 1, '', '2021-10-22 07:15:41', '16,39,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(69, 1, '', '2021-10-22 07:15:41', '16,39,44,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(70, 1, '', '2021-10-22 07:15:42', '16,39,44,53,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(71, 1, '', '2021-10-22 07:15:42', '6,16,39,44,53,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(72, 1, '', '2021-10-22 07:15:43', '6,16,39,44,48,53,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(73, 1, '', '2021-10-22 07:15:43', '6,16,29,39,44,48,53,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(74, 1, '', '2021-10-22 07:15:43', '6,16,29,39,42,44,48,53,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(75, 1, '', '2021-10-22 07:15:43', '6,16,19,29,39,42,44,48,53,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(76, 1, '', '2021-10-22 07:15:44', '6,16,19,27,29,39,42,44,48,53,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(77, 1, '', '2021-10-22 07:15:44', '6,16,19,27,29,39,42,44,48,53,72,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(78, 1, '', '2021-10-22 07:15:45', '6,16,19,27,29,39,42,44,48,53,72,75,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(79, 1, '', '2021-10-22 07:15:45', '6,16,19,27,29,39,40,42,44,48,53,72,75,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(80, 1, '', '2021-10-22 07:15:45', '6,16,19,27,29,39,40,42,44,48,53,72,75,78,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(81, 1, '', '2021-10-22 07:15:45', '6,16,19,27,29,39,40,42,44,48,53,72,75,78,80,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(82, 1, '', '2021-10-22 07:15:46', '6,16,19,27,29,39,40,42,44,48,53,72,75,78,79,80,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(83, 1, '', '2021-10-22 07:15:46', '6,16,19,27,29,39,40,41,42,44,48,53,72,75,78,79,80,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(84, 1, '', '2021-10-22 07:15:46', '6,12,16,19,27,29,39,40,41,42,44,48,53,72,75,78,79,80,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(85, 1, '', '2021-10-22 07:15:47', '4,6,12,16,19,27,29,39,40,41,42,44,48,53,72,75,78,79,80,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(86, 1, '', '2021-10-22 07:15:47', '4,6,11,12,16,19,27,29,39,40,41,42,44,48,53,72,75,78,79,80,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(87, 1, '', '2021-10-22 07:15:47', '4,6,11,12,16,19,20,27,29,39,40,41,42,44,48,53,72,75,78,79,80,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(88, 1, '', '2021-10-22 07:15:47', '4,6,11,12,16,19,20,27,29,39,40,41,42,44,48,52,53,72,75,78,79,80,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(89, 1, '', '2021-10-22 07:15:47', '4,6,11,12,16,19,20,27,29,39,40,41,42,44,45,48,52,53,72,75,78,79,80,81', ',61,1,118,60', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(90, 1, '', '2021-10-22 07:17:01', '4,6,11,12,16,19,20,27,29,39,40,41,42,44,45,48,52,53,72,75,78,79,80,81', ',61,1,118,60', 'project_task_created', 13, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(91, 1, '', '2021-10-22 07:17:14', '', ',61,1,118,60', 'project_task_commented', 13, 33, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(92, 1, '', '2021-10-22 07:18:04', '', ',61,1,118,60', 'project_task_updated', 13, 33, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(93, 1, '', '2021-10-22 07:30:25', '85', ',61,1,118,60', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(94, 1, '', '2021-10-22 07:30:25', '85,87', ',61,1,118,60', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(95, 1, '', '2021-10-22 07:30:26', '85,86,87', ',61,1,118,60', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(96, 1, '', '2021-10-22 07:30:33', '16,85,86,87', ',61,1,118,60', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(97, 1, '', '2021-10-22 07:30:33', '16,39,85,86,87', ',61,1,118,60', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(98, 1, '', '2021-10-22 07:30:34', '16,39,81,85,86,87', ',61,1,118,60', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(99, 1, '', '2021-10-22 07:30:34', '16,39,44,81,85,86,87', ',61,1,118,60', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(100, 1, '', '2021-10-22 07:30:34', '16,39,44,53,81,85,86,87', ',61,1,118,60', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(101, 1, '', '2021-10-22 07:30:35', '6,16,39,44,53,81,85,86,87', ',61,1,118,60', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(102, 1, '', '2021-10-22 07:31:15', '6,16,39,44,53,81,85,86,87', ',61,1,118,60', 'project_task_created', 14, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(103, 85, '', '2021-10-22 07:34:41', '1', ',61,1,118,60', 'project_task_created', 9, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(104, 85, '', '2021-10-22 07:35:14', '1,53', ',61,1,118,60', 'project_member_added', 9, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(105, 85, '', '2021-10-22 07:35:14', '1,16,53', ',61,1,118,60', 'project_member_added', 9, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(106, 85, '', '2021-10-22 07:35:15', '1,16,39,53', ',1,61,118,60', 'project_member_added', 9, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(107, 85, '', '2021-10-22 10:49:56', '1,16,39,53', ',61,1,118,60', 'project_task_created', 9, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(108, 85, '', '2021-10-22 10:53:58', '1', ',61,1,118,60', 'project_task_created', 11, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(109, 85, '', '2021-10-22 10:58:43', '1,16,39,53', ',1,61,118,60', 'project_task_created', 9, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(110, 1, '', '2021-10-22 11:09:49', '4,6,11,12,16,19,20,27,29,39,40,41,42,44,45,48,52,53,72,75,78,79,80,81', ',61,1,118,60', 'project_task_created', 13, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(111, 1, '', '2021-10-22 11:10:42', '4,6,11,12,16,19,20,27,29,39,40,41,42,44,45,48,52,53,72,75,78,79,80,81', ',27,11,61,1,118,60', 'project_task_created', 13, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(112, 1, '', '2021-10-26 13:51:05', '16,39,53', ',61,1,118,60', 'project_task_created', 9, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(113, 1, '', '2021-10-30 08:51:03', '80', ',61,1,118,60', 'project_task_updated', 10, 30, 0, 0, 0, 0, 0, 0, 0, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(114, 1, '', '2021-10-30 09:00:40', '27', ',61,1,118,60', 'project_task_updated', 13, 39, 0, 0, 0, 0, 0, 0, 0, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(115, 1, '', '2021-10-30 09:00:41', '27', ',61,1,118,60', 'project_task_updated', 13, 40, 0, 0, 0, 0, 0, 0, 0, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(116, 1, '', '2021-10-30 09:00:42', '27', ',61,1,118,60', 'project_task_updated', 13, 40, 0, 0, 0, 0, 0, 0, 0, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(117, 1, '', '2021-10-30 09:00:43', '27', ',61,1,118,60', 'project_task_updated', 13, 40, 0, 0, 0, 0, 0, 0, 0, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(118, 1, '', '2021-10-30 09:00:44', '', ',61,1,118,60', 'project_task_updated', 13, 33, 0, 0, 0, 0, 0, 0, 0, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(119, 1, '', '2021-10-30 09:00:45', '27', ',61,1,118,60', 'project_task_updated', 13, 40, 0, 0, 0, 0, 0, 0, 0, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(120, 1, '', '2021-10-30 09:00:46', '', ',61,1,118,60', 'project_task_updated', 13, 33, 0, 0, 0, 0, 0, 0, 0, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(121, 1, '', '2021-10-30 09:00:46', '27', ',61,1,118,60', 'project_task_updated', 13, 39, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(122, 1, '', '2021-11-01 16:51:38', '16,39,53', ',61,1,118,60', 'project_task_created', 9, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(123, 1, '', '2021-12-12 08:37:01', '', ',61,1,118,60', 'project_member_deleted', 8, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(124, 1, '', '2021-12-12 08:37:03', '', ',61,1,118,60', 'project_member_deleted', 8, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(125, 1, '', '2021-12-12 08:37:38', '', ',61,1,118,60', 'project_task_deleted', 8, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 1, '', '2021-12-12 08:37:39', '', ',61,1,118,60', 'project_task_deleted', 8, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 1, '', '2021-12-12 08:37:40', '12', ',61,1,118,60', 'project_task_deleted', 8, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 1, '', '2021-12-17 10:36:26', '', ',61,1,118,60', 'project_member_deleted', 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(129, 1, '', '2021-12-20 09:20:23', '', ',61,1,118,60', 'project_member_deleted', 16, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(130, 1, '', '2021-12-20 09:26:09', '21', ',61,1,118,60', 'project_member_added', 17, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(131, 1, '', '2021-12-20 09:26:10', '16,21', ',61,1,118,60', 'project_member_added', 17, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(132, 1, '', '2021-12-20 09:26:10', '6,16,21', ',61,1,118,60', 'project_member_added', 17, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(133, 1, '', '2021-12-20 10:42:25', '6', ',61,1,118,60', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(134, 1, '', '2021-12-20 10:42:25', '6,56', ',61,1,118,60', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(135, 1, '', '2021-12-20 10:42:25', '6,17,56', ',61,1,118,60', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(136, 1, '', '2021-12-20 10:42:25', '6,17,44,56', ',61,1,118,60', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(137, 111, '', '2022-02-14 19:13:02', '', ',118,60', 'project_task_created', 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(138, 111, '', '2022-02-14 19:18:54', '', ',118,60', 'project_task_created', 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(139, 111, '', '2022-02-14 19:24:03', '', ',118,60', 'project_task_created', 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 111, '', '2022-02-14 19:28:14', '', ',118,60', 'project_task_created', 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(141, 69, '', '2022-02-17 10:32:27', '75', ',118,60', 'project_task_created', 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 69, '', '2022-02-17 10:34:16', '75', ',118,60', 'project_task_created', 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 69, '', '2022-02-17 11:55:19', '75', ',118,60', 'project_task_created', 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(144, 61, '', '2022-02-21 06:39:59', '65', ',65,118,60', 'project_task_created', 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 69, '', '2022-02-24 13:56:34', '75', ',118,60', 'project_task_created', 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 61, '', '2022-02-25 11:37:38', '111', ',118,60', 'project_task_created', 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 61, '', '2022-02-26 10:59:56', '62', ',118,60', 'project_task_created', 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 61, '', '2022-02-26 11:01:13', '62', ',118,60', 'project_task_created', 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 61, '', '2022-02-26 11:02:47', '62', ',118,60', 'project_task_created', 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 61, '', '2022-02-26 11:03:04', '62', ',118,60', 'project_task_created', 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 111, '', '2022-02-27 18:33:19', '62', ',118,60', 'project_task_created', 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 111, '', '2022-02-27 18:35:05', '62', ',118,60', 'project_task_created', 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(153, 61, '', '2022-02-28 02:55:08', '62', ',118,60', 'project_task_created', 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(154, 69, '', '2022-03-01 10:45:21', '73', ',118,60', 'project_task_created', 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(155, 69, '', '2022-03-01 10:48:34', '72', ',118,60', 'project_task_created', 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(156, 69, '', '2022-03-01 10:56:35', '107', ',118,107,60', 'project_task_created', 0, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(157, 69, '', '2022-03-01 11:15:37', '118', ',118,60', 'project_task_created', 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(158, 69, '', '2022-03-01 11:15:39', '118', ',118,60', 'project_task_created', 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(159, 120, '', '2022-03-03 04:13:43', '60', ',60', 'project_task_created', 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(160, 120, '', '2022-03-03 04:17:19', '60', ',60', 'project_task_created', 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(161, 120, '', '2022-03-03 04:23:48', '92', ',60', 'project_task_created', 0, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 120, '', '2022-03-03 04:46:45', '', ',60', 'project_task_created', 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(163, 120, '', '2022-03-04 05:08:35', '60', '', 'project_task_created', 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(164, 120, '', '2022-03-04 05:14:45', '92', '', 'project_task_created', 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `event` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `enable_email` int(1) NOT NULL DEFAULT '0',
  `enable_web` int(1) NOT NULL DEFAULT '0',
  `enable_slack` int(1) NOT NULL DEFAULT '0',
  `notify_to_team` text NOT NULL,
  `notify_to_team_members` text NOT NULL,
  `notify_to_terms` text NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `event`, `category`, `enable_email`, `enable_web`, `enable_slack`, `notify_to_team`, `notify_to_team_members`, `notify_to_terms`, `sort`, `deleted`) VALUES
(1, 'project_created', 'project', 0, 0, 0, '', '', '', 1, 0),
(2, 'project_deleted', 'project', 0, 0, 0, '', '', '', 2, 0),
(3, 'project_task_created', 'project', 0, 1, 0, '', '', 'project_members,task_assignee', 3, 0),
(4, 'project_task_updated', 'project', 0, 1, 0, '', '', 'task_assignee', 4, 0),
(5, 'project_task_assigned', 'project', 0, 1, 0, '', '', 'task_assignee', 5, 0),
(7, 'project_task_started', 'project', 0, 0, 0, '', '', '', 7, 0),
(8, 'project_task_finished', 'project', 0, 0, 0, '', '', '', 8, 0),
(9, 'project_task_reopened', 'project', 0, 0, 0, '', '', '', 9, 0),
(10, 'project_task_deleted', 'project', 0, 1, 0, '', '', 'task_assignee', 10, 0),
(11, 'project_task_commented', 'project', 0, 1, 0, '', '', 'task_assignee', 11, 0),
(12, 'project_member_added', 'project', 0, 1, 0, '', '', 'project_members', 12, 0),
(13, 'project_member_deleted', 'project', 0, 1, 0, '', '', 'project_members', 13, 0),
(14, 'project_file_added', 'project', 0, 1, 0, '', '', 'project_members', 14, 0),
(15, 'project_file_deleted', 'project', 0, 1, 0, '', '', 'project_members', 15, 0),
(16, 'project_file_commented', 'project', 0, 1, 0, '', '', 'project_members', 16, 0),
(17, 'project_comment_added', 'project', 0, 1, 0, '', '', 'project_members', 17, 0),
(18, 'project_comment_replied', 'project', 0, 1, 0, '', '', 'project_members,comment_creator', 18, 0),
(19, 'project_customer_feedback_added', 'project', 0, 1, 0, '', '', 'project_members', 19, 0),
(20, 'project_customer_feedback_replied', 'project', 0, 1, 0, '', '', 'project_members,comment_creator', 20, 0),
(21, 'client_signup', 'client', 0, 0, 0, '', '', '', 21, 0),
(22, 'invoice_online_payment_received', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(23, 'leave_application_submitted', 'leave', 0, 0, 0, '', '', '', 23, 0),
(24, 'leave_approved', 'leave', 0, 1, 0, '', '', 'leave_applicant', 24, 0),
(25, 'leave_assigned', 'leave', 0, 1, 0, '', '', 'leave_applicant', 25, 0),
(26, 'leave_rejected', 'leave', 0, 1, 0, '', '', 'leave_applicant', 26, 0),
(27, 'leave_canceled', 'leave', 0, 0, 0, '', '', '', 27, 0),
(28, 'ticket_created', 'ticket', 0, 0, 0, '', '', '', 28, 0),
(29, 'ticket_commented', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator', 29, 0),
(30, 'ticket_closed', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator', 30, 0),
(31, 'ticket_reopened', 'ticket', 0, 1, 0, '', '', 'client_primary_contact,ticket_creator', 31, 0),
(32, 'estimate_request_received', 'estimate', 0, 0, 0, '', '', '', 32, 0),
(34, 'estimate_accepted', 'estimate', 0, 0, 0, '', '', '', 34, 0),
(35, 'estimate_rejected', 'estimate', 0, 0, 0, '', '', '', 35, 0),
(36, 'new_message_sent', 'message', 0, 0, 0, '', '', '', 36, 0),
(37, 'message_reply_sent', 'message', 0, 0, 0, '', '', '', 37, 0),
(38, 'invoice_payment_confirmation', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(39, 'new_event_added_in_calendar', 'event', 0, 0, 0, '', '', '', 39, 0),
(40, 'recurring_invoice_created_vai_cron_job', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(41, 'new_announcement_created', 'announcement', 0, 0, 0, '', '', 'recipient', 41, 0),
(42, 'invoice_due_reminder_before_due_date', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(43, 'invoice_overdue_reminder', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(44, 'recurring_invoice_creation_reminder', 'invoice', 0, 0, 0, '', '', '', 22, 0),
(45, 'project_completed', 'project', 0, 0, 0, '', '', '', 2, 0),
(46, 'lead_created', 'lead', 0, 0, 0, '', '', '', 21, 0),
(47, 'client_created_from_lead', 'lead', 0, 0, 0, '', '', '', 21, 0),
(48, 'project_task_deadline_pre_reminder', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(49, 'project_task_reminder_on_the_day_of_deadline', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(50, 'project_task_deadline_overdue_reminder', 'project', 0, 1, 0, '', '', 'task_assignee', 20, 0),
(51, 'recurring_task_created_via_cron_job', 'project', 0, 1, 0, '', '', 'project_members,task_assignee', 20, 0),
(52, 'calendar_event_modified', 'event', 0, 0, 0, '', '', '', 39, 0),
(53, 'client_contact_requested_account_removal', 'client', 0, 0, 0, '', '', '', 21, 0),
(54, 'bitbucket_push_received', 'project', 0, 1, 0, '', '', '', 45, 0),
(55, 'github_push_received', 'project', 0, 1, 0, '', '', '', 45, 0),
(56, 'invited_client_contact_signed_up', 'client', 0, 0, 0, '', '', '', 21, 0),
(57, 'created_a_new_post', 'timeline', 0, 0, 0, '', '', '', 52, 0),
(58, 'timeline_post_commented', 'timeline', 0, 0, 0, '', '', '', 52, 0),
(59, 'ticket_assigned', 'ticket', 0, 0, 0, '', '', 'ticket_assignee', 31, 0),
(60, 'new_order_received', 'order', 0, 0, 0, '', '', '', 1, 0),
(61, 'order_status_updated', 'order', 0, 0, 0, '', '', '', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `status_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `order_status`
--

INSERT INTO `order_status` (`id`, `title`, `color`, `sort`, `deleted`) VALUES
(1, 'New', '#f1c40f', 0, 0),
(2, 'Processing', '#29c2c2', 1, 0),
(3, 'Confirmed', '#83c340', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `slug` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `internal_use_only` tinyint(1) NOT NULL DEFAULT '0',
  `visible_to_team_members_only` tinyint(1) NOT NULL DEFAULT '0',
  `visible_to_clients_only` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `online_payable` tinyint(1) NOT NULL DEFAULT '0',
  `available_on_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_payment_amount` double NOT NULL DEFAULT '0',
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `type`, `description`, `online_payable`, `available_on_invoice`, `minimum_payment_amount`, `settings`, `deleted`) VALUES
(1, 'Cash', 'custom', 'Cash payments', 0, 0, 0, '', 0),
(2, 'Stripe', 'stripe', 'Stripe online payments', 1, 0, 0, 'a:3:{s:15:\"pay_button_text\";s:6:\"Stripe\";s:10:\"secret_key\";s:6:\"\";s:15:\"publishable_key\";s:6:\"\";}', 0),
(3, 'PayPal Payments Standard', 'paypal_payments_standard', 'PayPal Payments Standard Online Payments', 1, 0, 0, 'a:4:{s:15:\"pay_button_text\";s:6:\"PayPal\";s:5:\"email\";s:4:\"\";s:11:\"paypal_live\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";}', 0),
(4, 'Paytm', 'paytm', 'Paytm online payments', 1, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL,
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `ipn_hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ipn_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text COLLATE utf8_unicode_ci,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `created_by`, `created_at`, `description`, `post_id`, `share_with`, `files`, `deleted`) VALUES
(1, 5, '2021-09-17 06:43:48', 'ghjhkhkjhkjkjhkjk', 0, '', 'a:0:{}', 1),
(2, 5, '2021-09-17 06:49:35', 'rdfhfghgfjl\r\n', 0, '', 'a:0:{}', 1),
(3, 5, '2021-09-17 06:50:30', 'm,mn.m./m,.', 0, '', 'a:0:{}', 1),
(4, 63, '2021-11-18 15:10:16', 'salom', 0, '', 'a:0:{}', 1),
(5, 63, '2021-11-24 14:14:22', 'dfdf', 4, '', 'a:0:{}', 0),
(6, 1, '2021-12-20 12:51:50', 'MEN ISHGA KELDIM', 0, '', 'a:0:{}', 0),
(7, 14, '2022-01-17 07:35:34', 'KPI ni o\'rganish un 1 kun yetar ekan. ', 0, '', 'a:0:{}', 0),
(8, 63, '2022-01-24 07:13:26', 'shunday', 6, '', 'a:0:{}', 0),
(9, 62, '2022-02-02 04:43:44', 'Hammaga salom, hurmatli jamoa ! Boshlangan ish kuningiz barokatli bo\'lsin\r\n', 0, '', 'a:0:{}', 0),
(10, 14, '2022-02-02 04:54:42', ' Boshlangan ish kuningiz barokatli bo\'lsin', 0, '', 'a:0:{}', 0),
(11, 63, '2022-02-02 05:37:05', 'Assalomu alaykum', 9, '', 'a:0:{}', 0),
(12, 54, '2022-02-02 06:36:05', 'ASSALOMU ALAYKUM! BARCHAGA XAYRLI BOʻLSIN\r\n', 9, '', 'a:0:{}', 0),
(13, 54, '2022-02-02 06:36:40', 'SHUNDAY, JUDA BIR KUN HAM KETMAS EKAN', 7, '', 'a:0:{}', 0),
(14, 61, '2022-02-02 15:20:39', 'Иш кунимиз яхши ўтди деб ўйлайман.Хаммага рахмат.', 9, '', 'a:0:{}', 0),
(15, 68, '2022-02-02 15:32:55', 'Ассалому алайкум, раҳмат. Иш вақти ҳам якунланди, лекин бир қатор ишларим борлиги учун ҳозир ҳам ишдаман.', 10, '', 'a:0:{}', 0),
(16, 68, '2022-02-02 15:33:44', 'Ассалому алайкум барчага!\r\n', 9, '', 'a:0:{}', 0),
(17, 21, '2022-02-03 04:39:53', 'Assalomu alaykum hammaning ishiga baraka bersin.', 0, '', 'a:0:{}', 0),
(18, 61, '2022-02-03 04:45:03', 'Кунимиз хайрли бўлсин!', 17, '', 'a:0:{}', 0),
(19, 68, '2022-02-03 06:52:53', 'Ассалому алайкум, сизнинг ишингиз бароридан келсин!', 17, '', 'a:0:{}', 0),
(20, 62, '2022-02-17 03:51:29', 'Hammaga salom ! Hurmatli jamoa boshlangan kunimiz xayrli va barokatli bo\'lsin!', 0, '', 'a:0:{}', 0),
(21, 112, '2022-02-17 03:58:31', 'Ассалому алайкум хурматли жамоа ,барчангизга кунгил хотиржамлигини тилаган холда бугунги кунингиз мазмунли ўтишини яратгандан сўраб қоламан.', 0, '', 'a:0:{}', 0),
(22, 112, '2022-02-17 03:59:14', 'рахмат', 20, '', 'a:0:{}', 0),
(23, 62, '2022-02-17 04:22:12', '✔ Rahmat sizga ham ????', 21, '', 'a:0:{}', 0),
(24, 115, '2022-02-17 06:14:15', 'Rahmat✔\r\n', 20, '', 'a:0:{}', 0),
(25, 91, '2022-02-24 03:51:35', 'Ассалому алайкум! Барчангизга аъло кайфият ёр бўлсин. Бугунги ишингиз ҳар кунгидан баракали бўлсин.', 20, '', 'a:0:{}', 0),
(26, 21, '2022-02-25 05:06:40', 'Assalomu alaykum boshlangan kuningiz barokatli o\'tsin.\r\n', 0, '', 'a:0:{}', 0),
(27, 62, '2022-02-25 05:10:42', 'Assalomu alaykum, sizga ham xayrli kun', 26, '', 'a:0:{}', 0),
(28, 96, '2022-02-28 10:08:01', 'Assalomu alaykum', 0, '', 'a:0:{}', 0),
(29, 63, '2022-02-28 16:42:37', 'Assalomu alaykum\r\n', 28, '', 'a:0:{}', 0),
(30, 96, '2022-03-01 04:08:00', 'Assalomu alaykum. Xayrli kun hurmatli hamkasblar', 0, '', 'a:0:{}', 0),
(31, 96, '2022-03-01 04:09:42', 'Barchangizga bahorning ilk kuni muborak bo\'lsin. Alloh shu kunga yetkazganiga hamdlar bo\'lsin', 0, '', 'a:0:{}', 0),
(32, 116, '2022-03-07 11:31:55', 'Bayramingiz bilan aziz va mo\'tabar ayollar!!!', 0, '', 'a:1:{i:0;a:4:{s:9:\"file_name\";s:59:\"timeline_post_file6225ed2bed09a-Без-названия.jpg\";s:9:\"file_size\";s:5:\"10649\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `start_date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `status` enum('open','completed','hold','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `labels` text COLLATE utf8_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `start_date`, `deadline`, `client_id`, `created_date`, `created_by`, `status`, `labels`, `price`, `starred_by`, `estimate_id`, `deleted`) VALUES
(1, 'asas', 'asas', '2021-06-01', '2021-06-05', 1, '2021-05-31', 1, 'open', '', 0, '', 0, 1),
(2, 'Test loyiha', 'saas', '2021-05-31', '2021-07-10', 1, '2021-05-31', 1, 'open', '', 0, '', 0, 1),
(3, 'Bugungi loyiha', 'Bugungi loyihaBugungi loyihaBugungi loyiha', '2021-07-13', '2021-07-24', 1, '2021-07-09', 1, 'open', '', 0, '', 0, 1),
(4, 'Test bugun loyiha', 'Test bugun loyiha', '2021-07-09', '2021-07-16', 1, '2021-07-09', 1, 'open', '', 0, '', 0, 1),
(5, 'Test loyiha', 'sadasdasdasdas dasd asdasdasd', '2021-09-15', '2021-09-18', 1, '2021-09-15', 1, 'open', '', 0, '', 0, 1),
(6, 'Test', 'test', '2021-09-15', '2021-09-16', 1, '2021-09-15', 1, 'open', '', 0, '', 0, 1),
(7, 'Kundalik', 'kunalik ishlar', '2021-09-01', '2021-09-30', 1, '2021-09-15', 1, 'open', '', 0, '', 0, 1),
(8, 'Uchrashuv', 'sadsasdfdf', '2021-09-16', '2021-09-17', 1, '2021-09-16', 1, 'canceled', '', 0, '', 0, 0),
(9, 'darslik', 'darsliklar yaratish', '2021-10-21', '2021-10-31', 1, '2021-10-19', 1, 'open', '', 0, '', 0, 1),
(10, 'Nazirjon', 'Nazirjon', '2021-10-19', '2021-10-31', 1, '2021-10-19', 1, 'open', '5', 0, '', 0, 1),
(11, 'darslik', 'dsdsdsd', '2021-10-21', '2021-10-31', 1, '2021-10-19', 1, 'open', '5', 0, '', 0, 1),
(12, 'darslik', 'alksdjklsajflmsd;f', '2021-10-21', '2021-10-31', 1, '2021-10-19', 1, 'open', '5', 0, '', 0, 1),
(13, 'Test loyiha', 'test', '2021-10-22', '2021-10-23', 1, '2021-10-22', 1, 'open', '', 0, '', 0, 1),
(14, 'Test', 'test', '2021-10-29', '2021-10-30', 1, '2021-10-22', 1, 'open', '', 0, '', 0, 1),
(15, 'Darslik tayyorlash', 'Ingliz tili darsligini nashriyotga tayyorlash', '2021-12-14', '2021-12-25', 1, '2021-12-16', 1, 'open', '', 0, '', 0, 1),
(16, 'DARSLIK TAYYORLASH', 'WSDDFDSD', '2021-12-23', '2021-12-24', 1, '2021-12-20', 1, 'open', '', 0, '', 0, 1),
(17, 'Buyuk Britaniya ta\'lim markazi bilan videodarslik ishlab chiqish', 'sddsdsds', '2021-12-21', '2021-12-25', 1, '2021-12-20', 1, 'open', '', 0, '', 0, 1),
(18, 'CAMBRIDGE TASHKILOTI BILAN HAMKORLIKDA DARSLIK ISHLAB CHIQISH', 'SASSADSA', '2021-12-24', '2021-12-28', 1, '2021-12-20', 1, 'open', '', 0, '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `project_comments`
--

CREATE TABLE `project_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `customer_feedback_id` int(11) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `project_comments`
--

INSERT INTO `project_comments` (`id`, `created_by`, `created_at`, `description`, `project_id`, `comment_id`, `task_id`, `file_id`, `customer_feedback_id`, `files`, `deleted`) VALUES
(1, 1, '2021-07-08 08:15:09', 'xczxczxc', 1, 0, 7, 0, 0, 'a:0:{}', 1),
(2, 5, '2021-07-08 08:42:02', 'Rahmat men loyihani tugatdim', 2, 0, 0, 0, 0, 'a:0:{}', 1),
(3, 5, '2021-07-08 08:42:30', 'shu faylni korib bering', 2, 0, 0, 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:55:\"project_comment_file60e6ba7616826-Untitled-1-06--2-.png\";s:9:\"file_size\";s:6:\"346701\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1),
(4, 5, '2021-07-09 07:22:41', 'Salom men shuni qanaqa qilaman?', 2, 0, 0, 0, 0, 'a:0:{}', 1),
(5, 5, '2021-07-09 07:23:18', 'Shuni koring', 2, 4, 0, 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:57:\"project_comment_file60e7f966a7cd1-Untitled-design--1-.png\";s:9:\"file_size\";s:4:\"7335\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 1),
(6, 5, '2021-07-09 07:23:43', 'Tezroq qilib bering', 2, 0, 0, 0, 2, 'a:0:{}', 1),
(7, 5, '2021-07-09 07:43:55', 'hello hello', 4, 0, 0, 0, 0, 'a:0:{}', 1),
(8, 1, '2021-09-15 05:23:10', 'dasdasdas', 5, 0, 16, 0, 0, 'a:0:{}', 1),
(9, 1, '2021-09-15 05:23:18', 'mana tsuhunmadim\r\n', 5, 0, 16, 0, 0, 'a:0:{}', 1),
(10, 1, '2021-10-22 07:17:13', 'iltimos bajaringlar\r\n', 13, 0, 33, 0, 0, 'a:0:{}', 1),
(11, 61, '2022-02-26 11:03:04', '', 0, 0, 56, 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:47:\"project_comment_file621a08e880b7b-answer-2.docx\";s:9:\"file_size\";s:5:\"18559\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0),
(12, 111, '2022-02-27 18:33:19', '', 0, 0, 57, 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:100:\"project_comment_file621bc3efc4936-İstanbul-Kent-Üniversitesi-Acente-Sözleşmesi_TR-EN--1-.pdf\";s:9:\"file_size\";s:7:\"2167013\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0),
(13, 111, '2022-02-27 18:35:04', '', 0, 0, 58, 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:45:\"project_comment_file621bc4590dfc4-invoice.pdf\";s:9:\"file_size\";s:5:\"16934\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0),
(14, 61, '2022-02-28 02:55:08', '', 0, 0, 59, 0, 0, 'a:1:{i:0;a:4:{s:9:\"file_name\";s:47:\"project_comment_file621c398d00fcd-answer-2.docx\";s:9:\"file_size\";s:5:\"18559\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `project_files`
--

CREATE TABLE `project_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_id` text COLLATE utf8_unicode_ci,
  `service_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `project_files`
--

INSERT INTO `project_files` (`id`, `file_name`, `file_id`, `service_type`, `description`, `file_size`, `created_at`, `project_id`, `uploaded_by`, `deleted`) VALUES
(1, '_file60e7fb0ac82b3-Wasaf-Int-Solutions-92409702-2021.05.31-05.00---2021.07.01-04.59.xlsx', '', '', '', 6330, '2021-07-09 07:30:18', 3, 5, 1),
(2, '_file60e7fe2ef3113-Wasaf-Int-Solutions-92409702-2021.05.31-05.00---2021.07.01-04.59.xlsx', '', '', '', 6330, '2021-07-09 07:43:42', 4, 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `project_members`
--

CREATE TABLE `project_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_leader` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `project_members`
--

INSERT INTO `project_members` (`id`, `user_id`, `project_id`, `is_leader`, `deleted`) VALUES
(1, 1, 1, 1, 0),
(2, 1, 2, 1, 0),
(3, 39, 1, 0, 0),
(4, 16, 2, 0, 0),
(5, 5, 2, 0, 0),
(6, 1, 3, 1, 0),
(7, 5, 3, 0, 0),
(8, 1, 4, 1, 0),
(9, 5, 4, 0, 0),
(10, 1, 5, 1, 0),
(11, 76, 5, 0, 0),
(12, 53, 5, 0, 0),
(13, 22, 5, 0, 0),
(14, 1, 6, 1, 0),
(15, 11, 6, 0, 0),
(16, 60, 6, 0, 0),
(17, 1, 7, 1, 0),
(18, 1, 8, 1, 1),
(19, 12, 8, 0, 1),
(20, 1, 9, 1, 0),
(21, 1, 10, 1, 0),
(22, 16, 10, 0, 0),
(23, 81, 10, 0, 0),
(24, 39, 10, 0, 0),
(25, 44, 10, 0, 0),
(26, 53, 10, 0, 0),
(27, 6, 10, 0, 0),
(28, 48, 10, 0, 0),
(29, 29, 10, 0, 0),
(30, 42, 10, 0, 0),
(31, 19, 10, 0, 0),
(32, 27, 10, 0, 0),
(33, 72, 10, 0, 0),
(34, 75, 10, 0, 0),
(35, 40, 10, 0, 0),
(36, 80, 10, 0, 0),
(37, 79, 10, 0, 0),
(38, 78, 10, 0, 0),
(39, 1, 11, 1, 0),
(40, 1, 12, 1, 0),
(41, 1, 13, 1, 0),
(42, 16, 13, 0, 0),
(43, 81, 13, 0, 0),
(44, 39, 13, 0, 0),
(45, 44, 13, 0, 0),
(46, 53, 13, 0, 0),
(47, 6, 13, 0, 0),
(48, 48, 13, 0, 0),
(49, 29, 13, 0, 0),
(50, 42, 13, 0, 0),
(51, 19, 13, 0, 0),
(52, 27, 13, 0, 0),
(53, 72, 13, 0, 0),
(54, 75, 13, 0, 0),
(55, 40, 13, 0, 0),
(56, 78, 13, 0, 0),
(57, 80, 13, 0, 0),
(58, 79, 13, 0, 0),
(59, 41, 13, 0, 0),
(60, 12, 13, 0, 0),
(61, 4, 13, 0, 0),
(62, 11, 13, 0, 0),
(63, 20, 13, 0, 0),
(64, 52, 13, 0, 0),
(65, 45, 13, 0, 0),
(66, 1, 14, 1, 0),
(67, 85, 14, 0, 0),
(68, 87, 14, 0, 0),
(69, 86, 14, 0, 0),
(70, 16, 14, 0, 0),
(71, 39, 14, 0, 0),
(72, 81, 14, 0, 0),
(73, 44, 14, 0, 0),
(74, 53, 14, 0, 0),
(75, 6, 14, 0, 0),
(76, 53, 9, 0, 0),
(77, 16, 9, 0, 0),
(78, 39, 9, 0, 0),
(79, 1, 15, 1, 1),
(80, 1, 16, 1, 1),
(81, 1, 17, 1, 0),
(82, 21, 17, 0, 0),
(83, 16, 17, 0, 0),
(84, 6, 17, 0, 0),
(85, 1, 18, 1, 0),
(86, 6, 18, 0, 0),
(87, 56, 18, 0, 0),
(88, 17, 18, 0, 0),
(89, 44, 18, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `project_settings`
--

CREATE TABLE `project_settings` (
  `project_id` int(11) NOT NULL,
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `project_settings`
--

INSERT INTO `project_settings` (`project_id`, `setting_name`, `setting_value`, `deleted`) VALUES
(3, 'client_can_view_timesheet', '', 0),
(6, 'client_can_view_timesheet', '1', 0),
(6, 'project_enable_slack', '', 0),
(6, 'project_slack_webhook_url', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `project_time`
--

CREATE TABLE `project_time` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `hours` float NOT NULL,
  `status` enum('open','logged','approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logged',
  `note` text COLLATE utf8_unicode_ci,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `project_time`
--

INSERT INTO `project_time` (`id`, `project_id`, `user_id`, `start_time`, `end_time`, `hours`, `status`, `note`, `task_id`, `deleted`) VALUES
(1, 1, 1, '2021-07-06 15:33:26', '2021-09-16 10:00:24', 0, 'logged', '', 0, 0),
(2, 2, 5, '2021-07-08 08:41:08', '2021-07-13 04:38:00', 0, 'logged', '123', 10, 0),
(3, 4, 5, '2021-07-13 04:38:42', '2021-07-13 04:42:44', 0, 'logged', '', 14, 0),
(4, 6, 11, '2021-09-15 05:40:00', '2021-09-15 05:40:00', 0, 'logged', 'dadasdasdas', 20, 0),
(5, 6, 11, '2021-09-15 05:40:13', '2021-09-15 05:40:18', 0, 'logged', 'asdasdasdasdasdas', 20, 0),
(6, 6, 11, '2021-09-15 05:40:22', '2021-09-15 05:40:38', 0, 'logged', '1. bugni \r\n2. buni \r\n3buni\r\n', 20, 0),
(7, 6, 1, '2021-09-16 10:19:22', '2021-09-23 07:37:40', 0, 'logged', '', 0, 0),
(8, 8, 1, '2021-10-04 10:13:04', '2021-10-04 10:16:02', 0, 'logged', 'm', 23, 0),
(9, 8, 1, '2021-10-09 10:42:12', '2021-10-09 11:01:58', 0, 'logged', 'a', 23, 0),
(10, 8, 1, '2021-10-12 12:37:26', '2021-10-12 12:37:32', 0, 'logged', '', 23, 0),
(11, 10, 1, '2021-10-19 00:00:00', '2021-10-20 00:00:00', 0, 'logged', '', 0, 0),
(12, 10, 1, '2021-10-19 11:32:41', '2021-10-19 11:32:50', 0, 'logged', 'dfgfdhgfhh', 30, 0),
(13, 9, 1, '2021-10-19 11:50:13', '2021-10-19 11:52:15', 0, 'logged', '', 0, 0),
(14, 10, 1, '2021-10-19 12:10:30', '2021-10-19 12:10:42', 0, 'logged', '', 30, 0),
(15, 13, 1, '2021-10-22 07:17:28', '2021-10-22 11:11:32', 0, 'logged', '', 33, 0),
(16, 9, 85, '2021-10-22 07:35:23', NULL, 0, 'open', NULL, 0, 0),
(17, 9, 1, '2021-10-26 13:51:20', '2021-10-27 18:03:31', 0, 'logged', '', 41, 0),
(18, 9, 1, '2021-11-01 16:51:48', '2021-11-01 17:09:02', 0, 'logged', '', 42, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `appraiser` int(11) NOT NULL,
  `indicator_id` int(10) UNSIGNED NOT NULL,
  `rating` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `appraiser`, `indicator_id`, `rating`, `created_at`) VALUES
(34, 19, 63, 78, 1, '2022-02-02 07:00:12'),
(35, 14, 63, 78, 1, '2022-02-02 12:41:28'),
(36, 62, 61, 56, 3, '2022-02-02 15:06:07'),
(37, 62, 61, 99, 2, '2022-02-02 15:06:45'),
(38, 65, 61, 32, 2, '2022-02-02 15:07:09'),
(39, 65, 61, 99, 2, '2022-02-02 15:07:29'),
(40, 62, 61, 34, 1, '2022-02-02 15:08:13'),
(41, 65, 61, 56, 3, '2022-02-02 15:36:46'),
(42, 62, 61, 78, 1, '2022-02-02 15:37:04'),
(43, 106, 61, 78, 1, '2022-02-02 15:40:10'),
(44, 65, 61, 83, 2, '2022-02-02 15:44:30'),
(45, 68, 61, 78, 1, '2022-02-02 15:45:42'),
(46, 68, 61, 78, 1, '2022-02-02 15:53:16'),
(47, 113, 61, 99, 2, '2022-02-02 15:53:23'),
(48, 68, 61, 78, 1, '2022-02-03 04:18:55'),
(49, 106, 61, 78, 1, '2022-02-04 10:17:59'),
(50, 17, 63, 78, 1, '2022-02-04 11:05:42'),
(51, 14, 63, 61, 2, '2022-02-04 11:32:15'),
(52, 14, 63, 78, 1, '2022-02-04 13:07:54'),
(53, 16, 63, 78, 1, '2022-02-07 05:56:21'),
(54, 17, 63, 78, 1, '2022-02-07 05:56:26'),
(55, 17, 63, 78, 1, '2022-02-07 05:56:31'),
(56, 17, 63, 51, 3, '2022-02-07 05:56:40'),
(57, 17, 63, 78, 1, '2022-02-07 05:56:45'),
(58, 17, 63, 78, 1, '2022-02-07 05:56:49'),
(59, 17, 63, 78, 1, '2022-02-07 05:56:54'),
(60, 17, 63, 78, 1, '2022-02-07 05:56:58'),
(61, 106, 61, 78, 1, '2022-02-07 13:31:43'),
(62, 106, 61, 78, 1, '2022-02-07 13:31:51'),
(63, 106, 61, 78, 1, '2022-02-07 13:31:57'),
(64, 106, 61, 78, 1, '2022-02-07 13:32:02'),
(65, 106, 61, 78, 1, '2022-02-07 13:32:08'),
(66, 106, 61, 78, 1, '2022-02-07 13:32:16'),
(67, 68, 61, 78, 1, '2022-02-07 13:32:28'),
(68, 114, 61, 78, 1, '2022-02-07 13:32:36'),
(69, 65, 61, 95, 2, '2022-02-07 13:32:42'),
(70, 65, 61, 39, 3, '2022-02-07 13:32:47'),
(71, 65, 61, 61, 2, '2022-02-07 13:32:53'),
(72, 65, 61, 50, 1, '2022-02-07 13:32:59'),
(73, 106, 61, 78, 1, '2022-02-07 13:33:07'),
(74, 106, 61, 78, 1, '2022-02-07 13:33:39'),
(75, 106, 61, 78, 1, '2022-02-07 13:34:40'),
(76, 106, 61, 78, 1, '2022-02-08 13:09:11'),
(77, 65, 61, 85, 2, '2022-02-14 10:02:52'),
(78, 62, 61, 78, 1, '2022-02-14 10:04:04'),
(79, 68, 61, 33, 2, '2022-02-16 09:36:29'),
(80, 115, 61, 24, 2, '2022-02-16 09:36:36'),
(81, 115, 61, 67, 3, '2022-02-16 09:36:44'),
(82, 111, 61, 62, 3, '2022-02-16 09:36:53'),
(83, 68, 61, 78, 1, '2022-02-16 09:36:59'),
(84, 68, 61, 78, 1, '2022-02-16 09:37:04'),
(85, 115, 61, 78, 1, '2022-02-16 09:37:10'),
(86, 115, 61, 78, 1, '2022-02-16 09:37:16'),
(87, 68, 61, 78, 1, '2022-02-16 09:37:21'),
(88, 65, 61, 60, 2, '2022-02-16 09:37:26'),
(89, 65, 61, 39, 3, '2022-02-16 09:37:31'),
(90, 115, 61, 32, 2, '2022-02-16 09:37:36'),
(91, 111, 61, 52, 3, '2022-02-16 09:37:43'),
(92, 68, 61, 85, 2, '2022-02-16 09:37:49'),
(93, 68, 61, 85, 2, '2022-02-16 09:37:54'),
(94, 65, 61, 82, 2, '2022-02-16 09:37:59'),
(95, 16, 63, 78, 1, '2022-02-16 10:15:03'),
(96, 16, 63, 78, 1, '2022-02-16 10:15:42'),
(97, 19, 63, 78, 1, '2022-02-16 10:15:59'),
(98, 19, 63, 78, 1, '2022-02-16 10:16:29'),
(99, 16, 63, 78, 1, '2022-02-16 10:18:19'),
(100, 16, 63, 78, 1, '2022-02-16 10:18:40'),
(101, 62, 61, 100, 2, '2022-02-17 09:29:06'),
(102, 62, 61, 61, 2, '2022-02-17 09:34:56'),
(103, 62, 61, 33, 2, '2022-02-17 09:35:05'),
(104, 115, 61, 33, 2, '2022-02-17 09:35:16'),
(105, 62, 61, 57, 2, '2022-02-17 09:35:25'),
(106, 65, 61, 25, 2, '2022-02-17 09:35:36'),
(107, 112, 61, 67, 3, '2022-02-17 09:35:43'),
(108, 106, 61, 78, 0.5, '2022-02-17 09:35:50'),
(109, 68, 61, 78, 0.5, '2022-02-17 09:35:57'),
(110, 68, 61, 78, 0.5, '2022-02-17 09:36:02'),
(111, 68, 61, 78, 0.5, '2022-02-17 09:36:08'),
(112, 112, 61, 78, 0.5, '2022-02-17 09:36:19'),
(113, 112, 61, 78, 0.5, '2022-02-17 09:36:27'),
(114, 62, 61, 78, 0.5, '2022-02-17 09:36:44'),
(115, 62, 61, 78, 0.5, '2022-02-17 09:36:50'),
(116, 113, 61, 78, 0.5, '2022-02-17 09:36:56'),
(117, 113, 61, 78, 0.5, '2022-02-17 09:37:02'),
(118, 65, 61, 78, 0.5, '2022-02-17 09:37:11'),
(119, 65, 61, 78, 0.5, '2022-02-17 09:37:18'),
(120, 112, 61, 78, 0.5, '2022-02-17 09:37:27'),
(121, 106, 61, 78, 0.5, '2022-02-17 09:37:33'),
(122, 106, 61, 78, 0.5, '2022-02-17 09:37:41'),
(123, 106, 61, 78, 0.5, '2022-02-17 09:37:51'),
(124, 115, 61, 78, 0.5, '2022-02-17 09:38:06'),
(125, 115, 61, 78, 0.5, '2022-02-17 09:38:14'),
(126, 62, 61, 32, 2, '2022-02-17 09:38:21'),
(127, 115, 61, 32, 2, '2022-02-17 09:38:28'),
(128, 62, 61, 99, 2, '2022-02-17 09:38:37'),
(129, 115, 61, 83, 2, '2022-02-17 09:38:47'),
(130, 68, 61, 85, 2, '2022-02-17 09:38:55'),
(131, 19, 63, 78, 0.5, '2022-02-17 15:15:55'),
(132, 114, 61, 78, 0.5, '2022-02-17 15:20:51'),
(133, 68, 61, 78, 0.5, '2022-02-17 15:21:02'),
(134, 108, 61, 78, 0.5, '2022-02-17 15:21:12'),
(135, 108, 61, 78, 0.5, '2022-02-17 15:21:22'),
(136, 108, 61, 78, 0.5, '2022-02-17 15:21:31'),
(137, 115, 61, 78, 0.5, '2022-02-17 15:21:43'),
(138, 65, 61, 78, 0.5, '2022-02-17 15:21:53'),
(139, 65, 61, 78, 0.5, '2022-02-17 15:22:02'),
(140, 65, 61, 78, 0.5, '2022-02-17 15:22:10'),
(141, 115, 61, 78, 0.5, '2022-02-17 15:22:19'),
(142, 106, 61, 78, 0.5, '2022-02-17 15:22:26'),
(143, 112, 61, 99, 2, '2022-02-17 15:22:34'),
(144, 112, 61, 27, 2, '2022-02-17 15:22:47'),
(145, 65, 61, 38, 3, '2022-02-17 15:22:58'),
(146, 65, 61, 38, 3, '2022-02-17 15:23:12'),
(147, 114, 61, 78, 0.5, '2022-02-17 16:17:43'),
(148, 114, 61, 78, 0.5, '2022-02-17 16:17:49'),
(149, 114, 61, 78, 0.5, '2022-02-17 16:18:00'),
(150, 65, 61, 38, 3, '2022-02-18 13:17:23'),
(151, 112, 61, 78, 0.5, '2022-02-18 13:17:57'),
(152, 112, 61, 78, 0.5, '2022-02-18 13:18:11'),
(153, 106, 61, 78, 0.5, '2022-02-18 13:18:27'),
(154, 106, 61, 78, 0.5, '2022-02-18 13:20:01'),
(155, 106, 61, 78, 0.5, '2022-02-18 13:20:10'),
(156, 106, 61, 78, 0.5, '2022-02-18 13:20:19'),
(157, 115, 61, 85, 2, '2022-02-18 13:23:19'),
(158, 112, 61, 78, 0.5, '2022-02-18 13:23:32'),
(159, 115, 61, 78, 0.5, '2022-02-18 13:27:41'),
(160, 112, 61, 93, 3, '2022-02-18 13:36:55'),
(161, 115, 61, 30, 2, '2022-02-18 13:37:04'),
(162, 16, 63, 78, 0.5, '2022-02-18 16:26:50'),
(163, 115, 61, 78, 0.5, '2022-02-21 04:52:14'),
(164, 115, 61, 85, 2, '2022-02-21 04:52:22'),
(165, 58, 63, 65, 2, '2022-02-21 15:17:25'),
(166, 112, 61, 78, 0.5, '2022-02-21 17:06:46'),
(167, 112, 61, 78, 0.5, '2022-02-21 17:06:51'),
(168, 115, 61, 85, 2, '2022-02-21 17:06:56'),
(169, 65, 61, 85, 2, '2022-02-21 17:07:00'),
(170, 65, 61, 88, 2, '2022-02-21 17:07:05'),
(171, 108, 61, 78, 0.5, '2022-02-21 17:07:09'),
(172, 108, 61, 35, 2, '2022-02-21 17:07:17'),
(173, 115, 61, 39, 3, '2022-02-22 10:22:05'),
(174, 62, 61, 39, 3, '2022-02-22 10:23:04'),
(175, 116, 52, 38, 3, '2022-02-24 04:42:24'),
(176, 116, 52, 32, 2, '2022-02-24 04:42:44'),
(177, 116, 52, 39, 3, '2022-02-24 04:42:50'),
(178, 101, 52, 78, 0.5, '2022-02-24 04:43:07'),
(179, 101, 52, 78, 0.5, '2022-02-24 04:43:11'),
(180, 101, 52, 78, 0.5, '2022-02-24 04:43:16'),
(181, 101, 52, 78, 0.5, '2022-02-24 04:43:21'),
(182, 101, 52, 78, 0.5, '2022-02-24 04:43:26'),
(183, 21, 52, 61, 2, '2022-02-24 04:43:30'),
(184, 21, 52, 65, 2, '2022-02-24 04:43:34'),
(185, 21, 52, 88, 2, '2022-02-24 04:43:57'),
(186, 21, 52, 95, 2, '2022-02-24 04:44:01'),
(187, 21, 52, 100, 2, '2022-02-24 04:44:05'),
(188, 21, 52, 32, 2, '2022-02-24 04:44:10'),
(189, 21, 52, 32, 2, '2022-02-24 04:44:13'),
(190, 21, 52, 88, 2, '2022-02-24 04:44:17'),
(191, 21, 52, 100, 2, '2022-02-24 04:44:21'),
(192, 21, 52, 102, 3, '2022-02-24 04:44:25'),
(193, 21, 52, 88, 2, '2022-02-24 04:44:29'),
(194, 21, 52, 78, 0.5, '2022-02-24 04:44:33'),
(195, 21, 52, 30, 2, '2022-02-24 04:44:36'),
(196, 21, 52, 30, 2, '2022-02-24 04:44:42'),
(197, 21, 52, 78, 0.5, '2022-02-24 04:44:47'),
(198, 21, 52, 100, 2, '2022-02-24 04:44:56'),
(199, 21, 52, 100, 2, '2022-02-24 04:45:06'),
(200, 116, 52, 32, 2, '2022-02-24 04:45:14'),
(201, 116, 52, 32, 2, '2022-02-24 04:45:19'),
(202, 116, 52, 26, 2, '2022-02-24 04:45:25'),
(203, 116, 52, 94, 2, '2022-02-24 04:45:30'),
(204, 21, 52, 103, 2, '2022-02-24 04:45:36'),
(205, 21, 52, 95, 2, '2022-02-24 04:45:41'),
(206, 21, 52, 32, 2, '2022-02-24 04:45:46'),
(207, 21, 52, 33, 2, '2022-02-24 04:45:51'),
(208, 21, 52, 101, 2, '2022-02-24 04:45:55'),
(209, 21, 52, 88, 2, '2022-02-24 04:46:03'),
(210, 98, 52, 102, 3, '2022-02-24 04:46:11'),
(211, 98, 52, 102, 3, '2022-02-24 04:46:15'),
(212, 54, 52, 67, 3, '2022-02-24 04:46:23'),
(213, 54, 52, 67, 3, '2022-02-24 04:46:31'),
(214, 54, 52, 67, 3, '2022-02-24 04:46:35'),
(215, 54, 52, 67, 3, '2022-02-24 04:46:40'),
(216, 54, 52, 67, 3, '2022-02-24 04:46:44'),
(217, 54, 52, 102, 3, '2022-02-24 04:46:50'),
(218, 54, 52, 67, 3, '2022-02-24 04:46:54'),
(219, 54, 52, 24, 2, '2022-02-24 04:47:00'),
(220, 54, 52, 83, 2, '2022-02-24 04:47:05'),
(221, 54, 52, 83, 2, '2022-02-24 04:47:09'),
(222, 54, 52, 83, 2, '2022-02-24 04:47:13'),
(223, 54, 52, 39, 3, '2022-02-24 04:47:17'),
(224, 54, 52, 24, 2, '2022-02-24 04:47:22'),
(225, 54, 52, 83, 2, '2022-02-24 04:47:27'),
(226, 54, 52, 24, 2, '2022-02-24 04:47:32'),
(227, 54, 52, 39, 3, '2022-02-24 04:47:44'),
(228, 54, 52, 39, 3, '2022-02-24 04:47:49'),
(229, 54, 52, 67, 3, '2022-02-24 04:47:55'),
(230, 54, 52, 67, 3, '2022-02-24 04:47:59'),
(231, 54, 52, 67, 3, '2022-02-24 04:48:03'),
(232, 54, 52, 67, 3, '2022-02-24 04:48:07'),
(233, 54, 52, 83, 2, '2022-02-24 04:48:12'),
(234, 54, 52, 39, 3, '2022-02-24 04:48:17'),
(235, 54, 52, 39, 3, '2022-02-24 04:48:21'),
(236, 54, 52, 67, 3, '2022-02-24 04:48:26'),
(237, 54, 52, 67, 3, '2022-02-24 04:48:31'),
(238, 54, 52, 39, 3, '2022-02-24 04:48:36'),
(239, 102, 52, 95, 2, '2022-02-24 04:48:42'),
(240, 102, 52, 95, 2, '2022-02-24 04:48:46'),
(241, 102, 52, 95, 2, '2022-02-24 04:48:50'),
(242, 102, 52, 95, 2, '2022-02-24 04:48:56'),
(243, 102, 52, 95, 2, '2022-02-24 04:49:03'),
(244, 102, 52, 95, 2, '2022-02-24 04:49:07'),
(245, 54, 52, 67, 3, '2022-02-24 04:49:18'),
(246, 68, 61, 78, 0.5, '2022-02-24 12:43:15'),
(247, 112, 61, 78, 0.5, '2022-02-24 12:45:27'),
(248, 115, 61, 78, 0.5, '2022-02-24 12:45:59'),
(249, 115, 61, 78, 0.5, '2022-02-24 12:46:10'),
(250, 115, 61, 78, 0.5, '2022-02-24 12:46:18'),
(251, 115, 61, 78, 0.5, '2022-02-24 12:46:48'),
(252, 62, 61, 61, 2, '2022-02-24 12:47:51'),
(253, 62, 61, 61, 2, '2022-02-24 12:47:59'),
(254, 62, 61, 78, 0.5, '2022-02-24 12:48:06'),
(255, 62, 61, 65, 2, '2022-02-24 12:48:12'),
(256, 107, 69, 78, 0.5, '2022-02-24 13:58:02'),
(257, 103, 22, 78, 0.5, '2022-02-25 10:15:29'),
(258, 38, 22, 25, 2, '2022-02-25 10:16:57'),
(259, 14, 22, 94, 2, '2022-02-25 10:20:02'),
(260, 14, 22, 78, 0.5, '2022-02-25 10:22:07'),
(261, 14, 22, 78, 0.5, '2022-02-25 10:23:39'),
(262, 57, 22, 78, 0.5, '2022-02-25 10:24:07'),
(263, 17, 63, 78, 0.5, '2022-02-25 13:32:19'),
(264, 17, 63, 78, 0.5, '2022-02-25 13:33:54'),
(265, 19, 63, 78, 0.5, '2022-02-25 13:34:51'),
(266, 19, 63, 78, 0.5, '2022-02-25 13:34:57'),
(267, 19, 63, 78, 0.5, '2022-02-25 13:35:10'),
(268, 16, 63, 78, 0.5, '2022-02-25 13:35:15'),
(269, 16, 63, 78, 0.5, '2022-02-25 13:35:18'),
(270, 61, 61, 57, 2, '2022-02-28 02:56:50'),
(271, 61, 61, 57, 2, '2022-02-28 02:56:55'),
(272, 111, 61, 33, 2, '2022-02-28 10:28:12'),
(273, 111, 61, 26, 2, '2022-02-28 10:28:18'),
(274, 111, 61, 43, 3, '2022-02-28 10:28:24'),
(275, 111, 61, 43, 3, '2022-02-28 10:28:32'),
(276, 111, 61, 96, 2, '2022-02-28 10:28:41'),
(277, 38, 25, 81, 3, '2022-02-28 10:39:20'),
(278, 38, 25, 78, 0.5, '2022-02-28 10:43:17'),
(279, 38, 25, 78, 0.5, '2022-02-28 10:43:25'),
(280, 38, 25, 78, 0.5, '2022-02-28 10:43:49'),
(281, 38, 25, 78, 0.5, '2022-02-28 10:43:55'),
(282, 38, 25, 78, 0.5, '2022-02-28 10:44:02'),
(283, 38, 25, 78, 0.5, '2022-02-28 10:44:14'),
(284, 38, 25, 78, 0.5, '2022-02-28 10:44:19'),
(285, 38, 25, 26, 2, '2022-02-28 10:44:25'),
(286, 38, 25, 78, 0.5, '2022-02-28 10:44:34'),
(287, 38, 25, 78, 0.5, '2022-02-28 10:44:52'),
(288, 38, 25, 78, 0.5, '2022-02-28 10:45:02'),
(289, 38, 25, 26, 2, '2022-02-28 10:45:14'),
(290, 38, 25, 78, 0.5, '2022-02-28 10:45:19'),
(291, 38, 25, 78, 0.5, '2022-02-28 10:45:27'),
(292, 38, 25, 78, 0.5, '2022-02-28 10:45:39'),
(293, 38, 25, 78, 0.5, '2022-02-28 10:45:44'),
(294, 38, 25, 78, 0.5, '2022-02-28 10:45:53'),
(295, 48, 39, 78, 0.5, '2022-02-28 10:54:14'),
(296, 38, 25, 78, 0.5, '2022-02-28 13:58:35'),
(297, 38, 25, 78, 0.5, '2022-02-28 13:58:44'),
(298, 38, 25, 78, 0.5, '2022-02-28 13:58:59'),
(299, 105, 25, 78, 0.5, '2022-02-28 13:59:14'),
(300, 105, 25, 78, 0.5, '2022-02-28 13:59:21'),
(301, 105, 25, 78, 0.5, '2022-02-28 13:59:25'),
(302, 105, 25, 78, 0.5, '2022-02-28 13:59:33'),
(303, 105, 25, 61, 2, '2022-02-28 13:59:42'),
(304, 105, 25, 78, 0.5, '2022-02-28 14:00:02'),
(305, 105, 25, 78, 0.5, '2022-02-28 14:00:06'),
(306, 19, 63, 78, 0.5, '2022-02-28 16:41:08'),
(307, 17, 63, 78, 0.5, '2022-02-28 16:41:34'),
(308, 65, 61, 78, 0.5, '2022-03-01 04:52:26'),
(309, 65, 61, 78, 0.5, '2022-03-01 04:52:33'),
(310, 65, 61, 78, 0.5, '2022-03-01 04:52:41'),
(311, 65, 61, 35, 2, '2022-03-01 04:52:53'),
(312, 65, 61, 50, 1, '2022-03-01 04:53:01'),
(313, 65, 61, 26, 2, '2022-03-01 04:53:07'),
(314, 65, 61, 85, 2, '2022-03-01 04:53:12'),
(315, 65, 61, 85, 2, '2022-03-01 04:53:18'),
(316, 65, 61, 85, 2, '2022-03-01 04:53:37'),
(317, 65, 61, 83, 2, '2022-03-01 04:54:00'),
(318, 68, 61, 78, 0.5, '2022-03-01 04:55:39'),
(319, 111, 61, 57, 2, '2022-03-01 04:55:48'),
(320, 112, 61, 78, 0.5, '2022-03-01 04:56:01'),
(321, 112, 61, 24, 2, '2022-03-01 04:56:10'),
(322, 112, 61, 99, 2, '2022-03-01 04:56:19'),
(323, 112, 61, 30, 2, '2022-03-01 04:56:27'),
(324, 112, 61, 34, 1, '2022-03-01 04:56:37'),
(325, 112, 61, 78, 0.5, '2022-03-01 04:56:46'),
(326, 112, 61, 93, 3, '2022-03-01 04:56:55'),
(327, 112, 61, 78, 0.5, '2022-03-01 04:57:01'),
(328, 112, 61, 39, 3, '2022-03-01 04:57:07'),
(329, 112, 61, 78, 0.5, '2022-03-01 04:57:30'),
(330, 115, 61, 78, 0.5, '2022-03-01 04:57:49'),
(331, 115, 61, 78, 0.5, '2022-03-01 04:57:59'),
(332, 115, 61, 78, 0.5, '2022-03-01 04:58:06'),
(333, 115, 61, 78, 0.5, '2022-03-01 04:58:15'),
(334, 115, 61, 78, 0.5, '2022-03-01 04:58:26'),
(335, 101, 52, 78, 0.5, '2022-03-01 07:00:26'),
(336, 101, 52, 78, 0.5, '2022-03-01 07:00:31'),
(337, 21, 52, 24, 2, '2022-03-01 07:00:41'),
(338, 21, 52, 52, 3, '2022-03-01 07:00:54'),
(339, 21, 52, 39, 3, '2022-03-01 07:02:58'),
(340, 21, 52, 39, 3, '2022-03-01 07:03:03'),
(341, 21, 52, 39, 3, '2022-03-01 07:03:07'),
(342, 54, 52, 65, 2, '2022-03-01 07:52:11'),
(343, 107, 69, 78, 0.5, '2022-03-01 10:46:37'),
(344, 107, 69, 78, 0.5, '2022-03-01 11:04:41'),
(345, 107, 69, 78, 0.5, '2022-03-01 12:16:51'),
(346, 107, 69, 78, 0.5, '2022-03-01 12:16:55'),
(347, 111, 61, 58, 2, '2022-03-01 16:15:17'),
(348, 105, 25, 78, 0.5, '2022-03-02 04:35:42'),
(349, 105, 25, 78, 0.5, '2022-03-02 04:35:51'),
(350, 105, 25, 61, 2, '2022-03-02 04:35:58'),
(351, 105, 25, 78, 0.5, '2022-03-02 04:36:03'),
(352, 119, 25, 78, 0.5, '2022-03-02 04:36:09'),
(353, 38, 25, 78, 0.5, '2022-03-02 04:36:54'),
(354, 105, 25, 78, 0.5, '2022-03-02 04:37:25'),
(355, 105, 25, 78, 0.5, '2022-03-02 04:37:31'),
(356, 109, 22, 78, 0.5, '2022-03-02 16:00:20'),
(357, 109, 22, 33, 2, '2022-03-02 16:00:41'),
(358, 109, 22, 78, 0.5, '2022-03-02 16:00:50'),
(359, 103, 22, 25, 2, '2022-03-02 16:02:11'),
(360, 13, 22, 78, 0.5, '2022-03-02 16:03:37'),
(361, 13, 22, 78, 0.5, '2022-03-02 16:04:00'),
(362, 13, 22, 78, 0.5, '2022-03-02 16:04:24'),
(363, 13, 22, 26, 2, '2022-03-02 16:04:46'),
(364, 13, 22, 27, 2, '2022-03-02 16:05:19'),
(365, 13, 22, 78, 0.5, '2022-03-02 16:05:33'),
(366, 13, 22, 27, 2, '2022-03-02 16:05:40'),
(367, 13, 22, 78, 0.5, '2022-03-02 16:06:11'),
(368, 13, 22, 78, 0.5, '2022-03-02 16:06:20'),
(369, 14, 22, 78, 0.5, '2022-03-02 16:06:57'),
(370, 59, 22, 78, 0.5, '2022-03-02 16:07:52'),
(371, 119, 125, 78, 0.5, '2022-03-02 21:34:10'),
(372, 119, 125, 78, 0.5, '2022-03-02 21:35:05'),
(373, 116, 52, 81, 3, '2022-03-03 05:28:14'),
(374, 116, 52, 81, 3, '2022-03-03 05:28:26'),
(375, 116, 52, 101, 2, '2022-03-03 05:31:49'),
(376, 105, 25, 61, 2, '2022-03-03 09:47:10'),
(377, 105, 25, 78, 0.5, '2022-03-03 09:50:35'),
(378, 52, 63, 78, 0.5, '2022-03-03 09:53:23'),
(379, 52, 63, 78, 0.5, '2022-03-03 09:53:29'),
(380, 52, 63, 78, 0.5, '2022-03-03 09:53:46'),
(381, 17, 63, 78, 0.5, '2022-03-03 09:54:22'),
(382, 19, 63, 78, 0.5, '2022-03-03 09:54:30'),
(383, 17, 63, 78, 0.5, '2022-03-03 09:54:37'),
(384, 19, 63, 78, 0.5, '2022-03-03 09:54:43'),
(385, 19, 63, 78, 0.5, '2022-03-03 09:54:51'),
(386, 19, 63, 78, 0.5, '2022-03-03 09:54:55'),
(387, 17, 63, 78, 0.5, '2022-03-03 09:54:59'),
(388, 17, 63, 78, 0.5, '2022-03-03 09:55:02'),
(389, 52, 63, 78, 0.5, '2022-03-03 09:55:06'),
(390, 17, 63, 78, 0.5, '2022-03-03 09:55:10'),
(391, 48, 39, 78, 0.5, '2022-03-03 09:56:16'),
(392, 48, 39, 78, 0.5, '2022-03-03 09:56:46'),
(393, 48, 39, 78, 0.5, '2022-03-03 09:56:58'),
(394, 48, 39, 78, 0.5, '2022-03-03 09:57:14'),
(395, 7, 39, 78, 0.5, '2022-03-03 09:57:24'),
(396, 7, 39, 78, 0.5, '2022-03-03 09:57:32'),
(397, 48, 39, 78, 0.5, '2022-03-03 09:57:45'),
(398, 48, 39, 78, 0.5, '2022-03-03 09:58:02'),
(399, 48, 39, 78, 0.5, '2022-03-03 09:58:15'),
(400, 48, 39, 78, 0.5, '2022-03-03 09:58:22'),
(401, 48, 39, 78, 0.5, '2022-03-03 09:58:34'),
(402, 48, 39, 78, 0.5, '2022-03-03 09:58:39'),
(403, 48, 39, 78, 0.5, '2022-03-03 09:58:44'),
(404, 48, 39, 78, 0.5, '2022-03-03 09:58:49'),
(405, 48, 39, 78, 0.5, '2022-03-03 09:58:53'),
(406, 98, 52, 38, 3, '2022-03-04 05:10:36'),
(407, 98, 52, 39, 3, '2022-03-04 05:11:01'),
(408, 98, 52, 27, 2, '2022-03-04 05:16:33'),
(409, 54, 52, 24, 2, '2022-03-04 05:16:48'),
(410, 54, 52, 33, 2, '2022-03-04 05:16:59'),
(411, 102, 52, 78, 0.5, '2022-03-04 05:19:15'),
(412, 102, 52, 67, 3, '2022-03-04 05:19:39'),
(413, 97, 52, 81, 3, '2022-03-04 05:19:46'),
(414, 117, 125, 78, 0.5, '2022-03-04 05:35:40'),
(415, 119, 125, 78, 0.5, '2022-03-04 05:36:02'),
(416, 119, 125, 78, 0.5, '2022-03-04 05:36:44'),
(417, 118, 125, 78, 0.5, '2022-03-04 06:06:38'),
(418, 119, 125, 78, 0.5, '2022-03-04 06:06:48'),
(419, 117, 125, 78, 0.5, '2022-03-04 06:06:58'),
(420, 126, 125, 78, 0.5, '2022-03-04 06:07:03'),
(421, 119, 125, 78, 0.5, '2022-03-04 06:07:14'),
(422, 117, 125, 78, 0.5, '2022-03-04 06:07:21'),
(423, 114, 61, 32, 2, '2022-03-04 10:15:03'),
(424, 114, 61, 32, 2, '2022-03-04 10:15:08'),
(425, 114, 61, 32, 2, '2022-03-04 10:15:14'),
(426, 114, 61, 78, 0.5, '2022-03-04 10:15:20'),
(427, 113, 61, 78, 0.5, '2022-03-04 10:15:25'),
(428, 113, 61, 78, 0.5, '2022-03-04 10:15:30'),
(429, 112, 61, 78, 0.5, '2022-03-04 10:15:35'),
(430, 112, 61, 78, 0.5, '2022-03-04 10:15:43'),
(431, 112, 61, 78, 0.5, '2022-03-04 10:15:48'),
(432, 112, 61, 78, 0.5, '2022-03-04 10:15:53'),
(433, 115, 61, 78, 0.5, '2022-03-04 10:15:58'),
(434, 115, 61, 78, 0.5, '2022-03-04 10:16:04'),
(435, 115, 61, 78, 0.5, '2022-03-04 10:16:11'),
(436, 115, 61, 78, 0.5, '2022-03-04 10:16:17'),
(437, 115, 61, 78, 0.5, '2022-03-04 10:16:22'),
(438, 115, 61, 78, 0.5, '2022-03-04 10:16:27'),
(439, 65, 61, 33, 2, '2022-03-04 10:16:33'),
(440, 65, 61, 32, 2, '2022-03-04 10:16:39'),
(441, 65, 61, 33, 2, '2022-03-04 10:16:44'),
(442, 130, 61, 38, 3, '2022-03-04 11:31:55'),
(443, 130, 61, 24, 2, '2022-03-04 11:32:01'),
(444, 130, 61, 24, 2, '2022-03-04 11:32:08'),
(445, 130, 61, 24, 2, '2022-03-04 11:32:13'),
(446, 130, 61, 30, 2, '2022-03-04 11:32:20'),
(447, 130, 61, 99, 2, '2022-03-04 16:27:09'),
(448, 114, 61, 99, 2, '2022-03-04 16:27:17'),
(449, 114, 61, 99, 2, '2022-03-04 16:27:23'),
(450, 116, 19, 32, 2, '2022-03-05 09:06:32'),
(451, 19, 19, 78, 0.5, '2022-03-05 09:06:42'),
(452, 118, 125, 78, 0.5, '2022-03-07 05:28:08'),
(453, 119, 125, 78, 0.5, '2022-03-07 05:28:16'),
(454, 119, 125, 78, 0.5, '2022-03-07 05:28:30'),
(455, 117, 125, 78, 0.5, '2022-03-07 05:28:38'),
(456, 126, 125, 78, 0.5, '2022-03-07 05:28:44'),
(457, 130, 61, 78, 0.5, '2022-03-07 05:51:08'),
(458, 130, 61, 78, 0.5, '2022-03-07 05:51:13'),
(459, 130, 61, 78, 0.5, '2022-03-07 05:51:19'),
(460, 130, 61, 78, 0.5, '2022-03-07 05:51:40'),
(461, 114, 61, 99, 2, '2022-03-07 05:51:47'),
(462, 114, 61, 99, 2, '2022-03-07 05:51:52'),
(463, 37, 25, 78, 0.5, '2022-03-07 05:51:54'),
(464, 114, 61, 99, 2, '2022-03-07 05:51:57'),
(465, 68, 61, 24, 2, '2022-03-07 05:52:07'),
(466, 119, 25, 78, 0.5, '2022-03-07 05:52:07'),
(467, 68, 61, 33, 2, '2022-03-07 05:52:13'),
(468, 119, 25, 78, 0.5, '2022-03-07 05:52:14'),
(469, 68, 61, 33, 2, '2022-03-07 05:52:19'),
(470, 119, 25, 78, 0.5, '2022-03-07 05:52:19'),
(471, 119, 25, 78, 0.5, '2022-03-07 05:52:24'),
(472, 68, 61, 78, 0.5, '2022-03-07 05:52:25'),
(473, 119, 25, 78, 0.5, '2022-03-07 05:52:28'),
(474, 68, 61, 24, 2, '2022-03-07 05:52:31'),
(475, 119, 25, 78, 0.5, '2022-03-07 05:52:32'),
(476, 123, 25, 78, 0.5, '2022-03-07 05:52:38'),
(477, 123, 25, 78, 0.5, '2022-03-07 05:52:42'),
(478, 123, 25, 78, 0.5, '2022-03-07 05:52:46'),
(479, 38, 25, 78, 0.5, '2022-03-07 05:52:50'),
(480, 38, 25, 78, 0.5, '2022-03-07 05:52:53'),
(481, 38, 25, 78, 0.5, '2022-03-07 05:52:58'),
(482, 38, 25, 78, 0.5, '2022-03-07 05:53:03'),
(483, 38, 25, 78, 0.5, '2022-03-07 05:53:07'),
(484, 38, 25, 78, 0.5, '2022-03-07 05:53:11'),
(485, 38, 25, 78, 0.5, '2022-03-07 05:53:15'),
(486, 38, 25, 78, 0.5, '2022-03-07 05:53:19'),
(487, 38, 25, 78, 0.5, '2022-03-07 05:53:24'),
(488, 38, 25, 78, 0.5, '2022-03-07 05:53:27'),
(489, 38, 25, 78, 0.5, '2022-03-07 05:53:32'),
(490, 38, 25, 78, 0.5, '2022-03-07 05:53:36'),
(491, 38, 25, 78, 0.5, '2022-03-07 05:53:40'),
(492, 123, 69, 78, 0.5, '2022-03-07 11:17:31'),
(493, 107, 69, 78, 0.5, '2022-03-07 11:17:40'),
(494, 107, 69, 78, 0.5, '2022-03-07 11:17:45'),
(495, 107, 69, 78, 0.5, '2022-03-07 11:17:48'),
(496, 107, 69, 78, 0.5, '2022-03-07 11:17:52'),
(497, 107, 69, 78, 0.5, '2022-03-07 11:17:57'),
(498, 107, 69, 78, 0.5, '2022-03-07 11:18:00'),
(499, 107, 69, 78, 0.5, '2022-03-07 11:18:04'),
(500, 107, 69, 78, 0.5, '2022-03-07 11:18:11'),
(501, 107, 69, 78, 0.5, '2022-03-07 11:18:15'),
(502, 91, 22, 78, 0.5, '2022-03-07 11:39:39'),
(503, 52, 22, 78, 0.5, '2022-03-07 11:40:20'),
(504, 91, 22, 78, 0.5, '2022-03-07 11:40:28'),
(505, 103, 22, 78, 0.5, '2022-03-07 11:40:45'),
(506, 58, 22, 78, 0.5, '2022-03-07 11:40:57'),
(507, 58, 22, 78, 0.5, '2022-03-07 11:41:07'),
(508, 54, 52, 78, 0.5, '2022-03-07 11:41:49'),
(509, 54, 52, 78, 0.5, '2022-03-07 11:41:53'),
(510, 54, 52, 78, 0.5, '2022-03-07 11:42:01'),
(511, 54, 52, 78, 0.5, '2022-03-07 11:42:06'),
(512, 54, 52, 78, 0.5, '2022-03-07 11:42:10'),
(513, 54, 52, 78, 0.5, '2022-03-07 11:42:14'),
(514, 54, 52, 78, 0.5, '2022-03-07 11:42:20'),
(515, 54, 52, 78, 0.5, '2022-03-07 11:42:27'),
(516, 54, 52, 78, 0.5, '2022-03-07 11:42:31'),
(517, 54, 52, 78, 0.5, '2022-03-07 11:42:35'),
(518, 54, 52, 78, 0.5, '2022-03-07 11:42:38'),
(519, 54, 52, 78, 0.5, '2022-03-07 11:42:46'),
(520, 116, 52, 30, 2, '2022-03-07 11:50:19'),
(521, 116, 52, 26, 2, '2022-03-07 11:50:23'),
(522, 116, 52, 30, 2, '2022-03-07 11:50:28'),
(523, 116, 52, 26, 2, '2022-03-07 11:50:43'),
(524, 116, 52, 96, 2, '2022-03-07 11:50:47'),
(525, 116, 52, 65, 2, '2022-03-07 11:50:51'),
(526, 116, 52, 94, 2, '2022-03-07 11:50:56'),
(527, 116, 52, 26, 2, '2022-03-07 11:51:01'),
(528, 116, 52, 39, 3, '2022-03-07 11:51:06'),
(529, 54, 52, 65, 2, '2022-03-07 11:51:15'),
(530, 54, 52, 65, 2, '2022-03-07 11:51:19'),
(531, 54, 52, 96, 2, '2022-03-07 11:51:25'),
(532, 54, 52, 97, 2, '2022-03-07 11:51:29'),
(533, 54, 52, 97, 2, '2022-03-07 11:51:34'),
(534, 54, 52, 24, 2, '2022-03-07 11:51:40'),
(535, 54, 52, 96, 2, '2022-03-07 11:51:45'),
(536, 54, 52, 24, 2, '2022-03-07 11:51:49'),
(537, 54, 52, 24, 2, '2022-03-07 11:51:53'),
(538, 54, 52, 24, 2, '2022-03-07 11:52:12');

-- --------------------------------------------------------

--
-- Структура таблицы `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `indicator_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `reports`
--

INSERT INTO `reports` (`id`, `sender_id`, `receiver_id`, `description`, `status`, `created_at`, `indicator_id`) VALUES
(63, 14, 22, 'Respublika ta\'lim markazida ommalashtirish ishlari yuzasidan, amalga oshirilayotgan ishlar: \r\n\r\n1. Elektron platforma ni yakunlash, \r\n2. Test rejimda tahlil qilish; \r\n', 2, '2022-02-01 08:03:34', 78),
(64, 62, 61, 'Tavsiya', 3, '2022-02-01 10:01:11', 24),
(65, 63, 22, 'щзхщзщзщзхщ', 3, '2022-02-01 12:24:48', 43),
(66, 38, 25, 'Xorijiy tillarni o‘qitishda sifatni yahshilash uchun agentlik qo‘shidagi ishchi guruh a’zosi sifatida „O‘zbekiston Respublikasi xalq ta’limi tizimini 2030-yilgacha rivojlantirish konsepsiyasi“ loyihasi o‘rganib chiqilmoqda va loyiha matni uchun takliflar kiritildi. (Konsepsiyaning bir qismi ko\'rib chiqildi)\r\nO‘zbekiston nashriyoti bilan Klett darsliklarining texnik parameterlari bo‘yicha masofadan ishlandi. \r\nJuma kuni berilishi rejalashtirilgan maqola uchun material yig‘ildi.\r\n', 2, '2022-02-01 13:16:53', 78),
(67, 19, 63, '2022-yil 1-fevral kuni Respublika ta’lim markazida Fransiyaning O‘zbekistondagi  elchixonasining ta’lim bo‘yicha attashesi, janob Serj Bellini hamda “Hachette Education” nashriyotining tijoriy direktori, janob Robert Menand bilan uchrashuv o‘tkazildi. ', 2, '2022-02-01 14:27:41', 78),
(68, 19, 5, 'Xalq ta\'limi vazirligiga YUNESKO ishlari bo‘yicha O‘zbekiston Respublikasi Milliy Komissiyasining Qatnashuv dasturi tomonidan moliyalashtiriladigan loyihalari bo‘yicha Respublika ta’lim markazining o‘quv mashg‘ulotlar o‘tkazish yo‘nalishidagi taklifi taqdim etildi. Tabiiy fanlar bo\'yicha o\'qituvchilar uchun seminar-treninglar tashkillashtirish, o\'qituvchilarning akademik mustaqillik va standartlar asosida o\'qitish bo\'yicha malakasini oshirish bo\'yicha loyiha takliflari shakllantirib taqdim etildi. ', 1, '2022-02-01 14:38:20', 78),
(69, 58, 22, 'Navoiy tavalludi munosabatiga maqola', 3, '2022-02-02 04:36:28', 81),
(70, 103, 22, '\r\n  Geografiya fanini zamon talablari darajasida o`qitish, dars sifati va samaradorligini oshirish, o`quvchilarda qiziqish uyg`otish  har bir  o‘qituvchi oldida  turgan muhim vazifalardan sanaladi. Maktabda, sinfda o`quvchilarni ahil jamoaga jipslashtirish va iqtidorli o`quvchilarni aniqlash, o`quvchilarning talab va qiziqishlarini inobatga olib, erkin fikrlovchi o`quvchi shaxsini kamol toptirish maqsadida darsda  uchrashi  mumkin  bo‘lgan  muammoli  pedagogik vaziyatlar haqida va ularga misollar keltirilgan.\r\n', 3, '2022-02-02 05:31:07', 81),
(71, 103, 22, '\r\n3 –sinflar uchun Tabiy fanlar bo‘yicha diagnostik baholash daftari 1-Variant\r\n(3-chorak)\r\n\r\n', 3, '2022-02-02 06:58:25', 25),
(72, 103, 22, '\r\n3 –sinflar uchun Tabiy fanlar bo‘yicha diagnostik baholash daftari  2- variant\r\n(3-chorak)\r\n\r\n', 3, '2022-02-02 06:59:47', 25),
(73, 21, 52, 'Geografiya fani chet el davlatlarida o \'qitilishi yuzasidan o\'rganilgan ish', 2, '2022-02-02 08:25:28', 88),
(74, 107, 69, '3-sinf rus tili (milliy) dan texnik tafsilotlarni qabul qilib, tekshirib oldim', 2, '2022-02-02 12:13:17', 78),
(75, 14, 63, '1. Amerika Qo‘shma Shtatlarida faoliyat olib borayotgan “Ed Tech Initiatives” mutaxassislari tomonidan CICloud Initiatives o‘quv platformasidan foydalanish bo‘yicha o‘quv kurslar tashkil etilib, RTM metodistlari jalb qilindi. Va ishtirok etilmoqda. \r\n2. Ommalashtirish platformasini yaratish jarayonlarini tugatish maqsadida, Dasturchi mutaxassis bilan muhokama olib borildi. \r\n3. Umumta\'lim maktabi o\'qituvchilari uchun \"Ta\'limda Google imkoniyatlari\" nomli yo\'riqnoma qayta ko\'rilib, imloviy xatoliklar to\'g\'rlanmoqda. ', 2, '2022-02-02 12:36:58', 78),
(76, 65, 61, 'Hududlardagi ijtimoiy fan o‘qituvchilardan eng salohiyatlaridan saralab olish maqsadida, Navoiy, Xorazm hududlaridan o‘qituvchilar ro‘yxati shakllantirildi va telegram ijtimoiy tarmog‘ida guruh ochildi. Qolgan hududlar ro‘yxati ham shakllantirilmoqda.', 2, '2022-02-02 13:21:11', 99),
(77, 65, 61, 'Milliy o‘quv dasturi bo‘yicha 6-sinf Tarix darsligi mavzulari ko‘rib chiqildi. Mavzular kesimida 3-4-boblar bo‘yicha kerakli rasmlar ro‘yxati shakllantirildi. ', 2, '2022-02-02 13:29:08', 32),
(78, 38, 25, '02.02.2022 y. \r\nMO‘Dni nemis tiliga moslashtirish/ nemis tilidan MO‘Dni GER asosida qaytadan ko‘rib chiqish bo‘yicha amaliyotchi o‘qituvchilardan iborat ishchi guruh tashkil etish ustida ishlandi. (Guruhda12 kishi yig‘ildi) \r\nXorijiy tillarni o‘qitishni ommalashtirish agentligi vakili bilan „O‘zbekiston Respublikasi xalq ta’limi tizimini 2030-yilgacha rivojlantirish konsepsiyasi“sida nazarda tutilgan ishlar yuzasidan, chet tillari o‘quv dasturlari va MO‘D bo‘yicha muloqot qilindi.\r\nKlett darsliklari asosida tayanch o‘quv reja tuzish bo‘yicha qisman ishlandi. Tuzilgan tayanch o‘quv reja bo‘yicha hududlardan xulosa olish borasida amaliyotchilar bilan telefon orqali bog‘lanildi. \r\nMuallif bilan 3-sinf darsligi ustida ishlandi. Muharrir va germaniyalik nemis o‘qituvchi bergan tavsiyalar birma-bir tahlil qilindi va o‘rinli deb topilganlari ischi faylda o‘zgartirildi.\r\nVazirlik rahbariyati bilan yig‘ilishda ishtirok etildi.\r\n', 2, '2022-02-02 13:32:59', 78),
(79, 62, 61, 'Model o\'qituvchilar asosida Mobil guruhlar tashkil qilingi ijtimoiy fanlar bo\'yicha', 2, '2022-02-02 14:18:10', 99),
(80, 62, 61, 'https://t.me/rtmedu_news/2405   Buxorodan kelgan ishlar jamoatchilikka yetkazildi , plagiatni oldini olish ham maqsad', 2, '2022-02-02 14:20:01', 34),
(81, 62, 61, 'Magistrlik dissertotsiyasi', 2, '2022-02-02 14:31:14', 56),
(82, 62, 61, '10 -sinf Yangi avlod darslik qo\'lyozmasi 75% tayyor holda topshirildi ', 3, '2022-02-02 15:19:10', 78),
(83, 108, 61, 'Hududlar bo\'yicha  Tarix fanidan model o\'qituvchilar guruhi  shakllantirildi ', 3, '2022-02-02 15:19:58', 99),
(84, 65, 61, 'Magistr diplomi', 2, '2022-02-02 15:24:18', 56),
(85, 108, 61, 'Hududlar bo\'yicha  tarix fanidan mobil guruh tashkil qilindi  ', 3, '2022-02-02 15:28:29', 99),
(86, 62, 61, 'EKOLOGIYA VA TABIATNI ASRASH MAVZULARINI DARSLIK VA DASTURLARDA YORITILISHI ', 2, '2022-02-02 15:28:35', 78),
(87, 65, 61, 'Umumiy o’rta ta’lim maktablari o‘qituvchilari uchun Tarix fanidan 5-sinflar uchun Buxoro viloyati bilan hamkorlikda metodik qo’llanma ishlab chiqildi.', 3, '2022-02-02 15:30:47', 83),
(88, 113, 61, 'Jismoniy tarbiya fanidan Mobil guruhlar tashkil qilindi', 3, '2022-02-02 15:32:31', 99),
(89, 113, 61, 'Jismoniy mobil mguruh tashkil qilindi', 3, '2022-02-02 15:34:40', 99),
(90, 106, 61, 'Namangan viloyati kesimida model guruh tashkil etildi', 2, '2022-02-02 15:38:16', 78),
(91, 113, 61, 'Jismoniy tarbiya', 3, '2022-02-02 15:38:59', 99),
(92, 113, 61, 'Jismoniy tarbiyadan mobil guruh', 3, '2022-02-02 15:41:38', 99),
(93, 65, 61, 'Buxoro viloyati bilan hamkorlikda 5-sinf Tarixdan hikoyalar fanidan metodik tavsiya qo‘llanmasi ishlab chiqildi va bo‘lim kanaliga joylashtirildi. https://t.me/rtmedu_news/2405', 2, '2022-02-02 15:42:16', 83),
(94, 68, 61, 'Экология бўйича тавсиялар берилди.', 2, '2022-02-02 15:44:46', 78),
(95, 108, 61, 'Hududlarda  tarix fanidan mobil guruhlar tashkil etildi  ', 3, '2022-02-02 15:44:46', 99),
(96, 68, 61, 'Самарқанд вилояти бўйича \"Мобил гуруҳ\" учун рўйхат шаклланди', 2, '2022-02-02 15:47:24', 78),
(97, 68, 61, 'Тасвирий санъат 6 синф учун дарслик қўлёзмаси дарсликлар бўлимига топширилди.', 3, '2022-02-02 15:50:52', 78),
(98, 113, 61, 'OK', 2, '2022-02-02 15:52:46', 99),
(99, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 7-sinflar uchun nazorat ishi daftari joriy etildi va telegram tarmog\'iga joylandi', 2, '2022-02-02 18:10:20', 78),
(100, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 7-sinf jahon tarixidan metodik qo\'llanma joriy etilib rtmning ijtimoiy va amaliy fanlar rasmiy kanalida joylandi', 3, '2022-02-02 18:12:35', 78),
(101, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 7-sinflar uchun o\'quvchi ishi tayyorlanib Rtm nin g ijtimoiy va amaliy fanlar kanaliga joylandi', 3, '2022-02-02 18:14:10', 78),
(102, 106, 61, 'Markazning Ijtimoiy va amaliy fanlar rasmiy kanaliga \"Santexnika elementlarini ta’mirlash texnikasi hamda Sifon mavzusidagi tadqimot joylandi', 3, '2022-02-02 18:31:50', 78),
(103, 68, 61, 'Тасвирий санъат 6-синф дарслигининг қўлёзмаси дарсликлар бўлимига топширилди.', 3, '2022-02-03 04:15:14', 78),
(104, 68, 61, 'Тасвирий санъат 3 синф ўқитувчи учун методик қўлланма ва машқ дафтарларининг тузувчилари билан шартнома тузишга рухсат олиш учун билдирги.', 2, '2022-02-03 04:17:16', 78),
(105, 48, 39, 'Ta\'lim o\'zbek tilida olib boriladigan 6-sinflar Tasviriy san\'at darsligining qo\'lyozmasini sahifalash ishlarini boshlash uchun bildirishnoma qilindi', 2, '2022-02-03 06:08:00', 78),
(106, 17, 63, 'Соат 11.44 гача Методист М.Джамолинова томонидан амалга оширилган қуйидаги ишлар', 2, '2022-02-03 06:45:05', 78),
(107, 65, 61, 'Respublika seminarida qatnashish uchun Tarix fani Milliy o‘quv dasturi yuzasidan maqola tayyorlandi.', 2, '2022-02-04 09:48:30', 50),
(108, 65, 61, 'XXI asr zamonaviy kasblari bo‘yicha metodik qo‘llanma yaratsih yuzasidan bo‘limlar bilan hamkorlikda Rossiya Federatsiyasi kasblari tahlil qilindi.', 2, '2022-02-04 09:52:18', 61),
(109, 65, 61, 'Respublika maktablarida Texnologiya holatini o‘rganish yuzasida so‘rov xati tayyorlandi.', 2, '2022-02-04 09:54:39', 39),
(110, 65, 61, 'Respublika miqyosida Tarix fani to‘garak rahbarlari o‘rtasida o‘tkaziladigan tanlov uchun baholash mezoni ishlab chiqildi.', 2, '2022-02-04 09:56:51', 95),
(111, 38, 25, '03.02.2022 y. \r\nGirls’Day haqida maqola tayyorlandi.\r\nDeutschprofis A 1.2 kitobi asosida 5-sinflar uchun tayanch o‘quv reja tuzish ustida ishlandi.\r\nTo‘garaklar orasida tanlov o‘tkazish bo‘yicha vazirlik vakili ishtirokidagi yig‘ilishda ishtirok etildi. \r\n', 2, '2022-02-04 10:24:59', 78),
(112, 111, 61, 'chet elda o\'qish', 3, '2022-02-04 11:06:49', 35),
(113, 14, 63, 'Zamonaviy darslik va dizayn sho\'basi bilan hamkorlikda doim amaliy ishlar qilishga harakat bo\'ladi. \r\nBu kunga qadar, 2 ta metodik adabiyot dizayni ishlab chiqilgan. Aynan ikkinchi metodik adabiyoti qayta dizayn qilishi muhokama qilindi. \r\n\r\n2. Filologiya fanlari va chet tillarini rivojlantirish bo\'limi xodimlari bilan metodik adabiyotini tahrirlash muharrirlik ishlari olib borildi. \r\n3. Xalqaro aloqalar bo\'limi bilan hamkorlikda amaliy ishlar olib borishda Toshkentdagi xalqaro universitet filiallarining vebinar mashg\'ulotlarida ishtirok etish bo\'yicha muhokama olib borilib kelinadi.\r\n4. Raqamli ta\'lim resurslarini tatbiq etish bo\'limi bilan chet el loyihalarida qatnashish bo\'yicha bugungi kunga qadar Edtech loyihasida ishtirok etilib kelinmoqda. ', 2, '2022-02-04 11:30:38', 61),
(114, 114, 61, '2-sinf Musiqa darsligi uchun IAR ga midi fayllar programmistga jo‘natildi', 3, '2022-02-04 11:56:14', 78),
(115, 114, 61, 'Taklif', 3, '2022-02-04 12:03:58', 78),
(116, 114, 61, 'fanga oid takliflar', 3, '2022-02-04 12:07:44', 78),
(117, 114, 61, '2-sinf musiqa  darsligiga IAR uchun qardosh xalqlari fayllar to\'plab programmistga', 2, '2022-02-04 12:13:24', 78),
(118, 14, 63, '3.02.2022 yilgi hisobotlar: \r\n\r\n1. Ommalashtirish ta\'lim platformasini yaratish jarayonlari, saytga tegishli ma\'lumotlar bilan to\'ldirib borish yuzasidan Respublika ta\'lim markazi direktori, direktor o\'rinbosari I. Tillaboyev da dasturchi D. Boboqulov bilan birgalikda taqdimot ko\'rinishida muhokama jarayoni amalga oshirildi. \r\n\r\n2. Ta\'limda Google imkoniyatlar nomli yo\'riqnomani 45 betigacha qayta ko\'rilib imloviy xatolar tahlil qilindi. \r\n3. Edtech loyihasiga oid masalalar bilan Raqamli ta\'lim resurslarni joriy etish bo\'limi bilan hamkorlikda loyihada nazarda tutilgan va o\'rgatilayotgan ta\'lim platformasi xususiyatlari to\'g\'risida amaliy jarayonlari muhokama qilindi. \r\n4. RTM rahbariyatiga umumta\'lim maktablarning moddiy texnik bazasini takomillashtirish, va maktablarni qayta jihozlashga qaratilgan takliflar o\'rganilib direktor o\'rinbosariga taqdim qilindi. \r\n\r\n\r\n4- fevral. \r\n\r\n1. Ta\'limda Google imkoniyatlar nomli yo\'riqnoma tahlili yakunlanib, dizayn bo\'limiga yo\'riqnoma dizayni qayta ko\'rish, va sahifalashga topshirildi. \r\n2. Edtech loyihasining bugungi o\'quv seminarida ta\'lim platformada o\'quv kontentlarni yaratish jarayonlarini tahlil qilishga yo\'naltirilgan tushuntirish ishlari olib borildi.  ', 2, '2022-02-04 12:16:14', 78),
(119, 115, 61, 'Maktablarda haftalik o\'quv soatlari bo\'yicha texnologiya fanidan dars soatlari tahlil qilindi. Unda  ', 3, '2022-02-04 12:58:21', 78),
(120, 17, 63, 'Kunlik amalga oshirilgan ishlar', 2, '2022-02-04 13:24:04', 78),
(121, 17, 63, 'Kunlik monitoring-tahlil', 2, '2022-02-04 13:25:03', 78),
(122, 38, 25, '04.02.2022 y. \r\nDarsliklar yuzasidan darslik bo‘limida o‘tkazilgan yig‘ilishda qatnashildi. \r\nNemis tilidan to‘garaklar faoliyati bo‘yicha respublika nemis tili o‘qituvchilari bilan zoom uchrashuv o‘tkazildi.\r\nNemis tilidan to‘garaklar tanlovi baholash mezoni ustida ishlandi.\r\n', 2, '2022-02-04 13:26:52', 78),
(123, 58, 22, 'Ўқув режа ва ўқитувчиларни рағбатлантириш юзасидан билдирилган таклифлар', 3, '2022-02-04 13:35:21', 78),
(124, 115, 61, 'Darsliklarning tayyorlanish holati va muddati haqida yig\'ilishda ishtirok etildi.', 3, '2022-02-04 13:39:47', 78),
(125, 68, 61, 'Янг касблар ҳақида тақдимот билан танишиб чиқилди ва ҳар бир методист ўз фани доирасида барча янги касблар тўғрисида маълумот йиғиб бир тўплам ҳолатига келтиришлик айтиб ўтилди. Барча касблар ҳақида маълумотлар умумлаштирилиб методик қўлланма чиқариш керакли ҳақида келишиб олинди.', 3, '2022-02-04 13:43:34', 61),
(126, 16, 63, '2022-yil 4-fevralda qilingan ishlar hisoboti', 2, '2022-02-04 13:48:57', 78),
(127, 115, 61, 'Markaz metodistlari bilan birgalikda X. Tursunovning yang kasblar haqidagi taqdimoti bilan tanishib chiqildi. ', 3, '2022-02-04 13:52:09', 78),
(128, 68, 61, 'Республика \"Баркамол авлод\" болалар марказида \"Жаҳолатга қарши маърифат\" мавзусида ўтказилган республика босқичи ғолиблари ҳақида маълумот ва уларнинг ишлари олинди. Маълумот Республика амалий фанлар бошқарма методистларига жўнатилди.', 3, '2022-02-04 13:53:01', 78),
(129, 115, 61, 'Texnologiya 2-sinf o‘qituvchi kitobi (rus tili)ga \r\nxulosa berildi.\r\n\r\n', 3, '2022-02-04 13:53:41', 78),
(130, 68, 61, 'Қорақалпоғистон Республикаси Халк таълими вазирлиги ҳузуридаги Республика таълим маркази чизмачилик ва тасвирий санъат методисти Тажетова Дамехан Генжебаевна билан \"Мобил гуруҳлар\" борасида маълумотлар билан алмашиниш.', 3, '2022-02-04 14:14:58', 78),
(131, 115, 61, 'RTM ga Toshkent shahar Uchtepa tumani 283-maktabning oliy toifali texnologiya fani o‘qituvchisi Mahmatqulova Gavhar Meliboyevna keldi. O\'qituvchiga fanga oid tavsiyalar berildi\r\n ', 3, '2022-02-04 14:16:48', 67),
(132, 111, 61, 'chet el universiteti', 3, '2022-02-05 01:56:17', 56),
(133, 111, 111, 'make decision architecture', 3, '2022-02-05 02:47:51', 43),
(134, 68, 61, 'Amaliy fanlarni  boshlang\'ich sinflarda  o\'qitishda STEAM  mashg\'ulotlarini qo\'llash Самарқанд вилояти устозлари.', 2, '2022-02-05 05:42:39', 78),
(135, 68, 61, 'Amaliy fanlarni  boshlang\'ich sinflarda  o\'qitishda STEAM  mashg\'ulotlarini qo\'llash\r\nСамарқанд вилояти устозларининг чиқишлари.', 3, '2022-02-05 05:49:01', 78),
(136, 68, 61, 'Amaliy fanlarni  boshlang\'ich sinflarda  o\'qitishda STEAM  mashg\'ulotlarini qo\'llash\r\nСамарқанд вилояти устозларининг чиқишлари.', 3, '2022-02-05 05:50:13', 78),
(137, 17, 63, 'XTVga xat', 2, '2022-02-05 05:57:19', 78),
(138, 17, 63, 'XTVga xat', 2, '2022-02-05 05:57:40', 78),
(139, 17, 63, 'Maqola xorijiy ilmiy jurnalda chop etildi.', 2, '2022-02-05 06:04:35', 51),
(140, 21, 52, 'Geografiya fan xonasining jihozi bo\'yicha takliflar', 1, '2022-02-05 07:16:58', 78),
(141, 21, 52, 'Geografiya fan xonasining jihozi bo\'yicha takliflar', 1, '2022-02-05 07:17:10', 78),
(142, 54, 52, 'Ushbu asosiy fan manbasi bolalarga inson miyasi va uning qanday ishlashi haqida aqlga sig\'maydigan ba\'zi faktlarni o\'rganish imkoniyatini beradi. Sizning miyangiz qancha elektr energiyasi ishlab chiqaradi? Jismoniy mashqlar miyangizga qanday foyda keltiradi?  Usahbu savollarga javob berish imkonini yaratadi', 2, '2022-02-05 07:34:42', 78),
(143, 54, 52, 'Ushbu asosiy fan manbasi bolalarga inson miyasi va uning qanday ishlashi haqida aqlga sig\'maydigan ba\'zi faktlarni o\'rganish imkoniyatini beradi. Sizning miyangiz qancha elektr energiyasi ishlab chiqaradi? Jismoniy mashqlar miyangizga qanday foyda keltiradi?  Usahbu savollarga javob berish imkonini yaratadi', 2, '2022-02-05 07:35:01', 78),
(144, 54, 52, 'Ushbu asosiy fan manbasi bolalarga inson miyasi va uning qanday ishlashi haqida aqlga sig\'maydigan ba\'zi faktlarni o\'rganish imkoniyatini beradi. Sizning miyangiz qancha elektr energiyasi ishlab chiqaradi? Jismoniy mashqlar miyangizga qanday foyda keltiradi?  Usahbu savollarga javob berish imkonini yaratadi', 2, '2022-02-05 07:35:03', 78),
(145, 21, 52, 'Ilmiy-metodik kengashning 29.12.2021 yil hisoboti', 2, '2022-02-05 07:39:13', 30),
(146, 21, 52, 'Ilmiy-metodik kengashning 29.12.2021 yil hisoboti', 2, '2022-02-05 07:39:21', 30),
(147, 98, 52, 'бошлангич синф укитувчилари учун методик ёрдам', 2, '2022-02-05 07:59:19', 102),
(148, 98, 52, 'бошлангич синф укитувчилари учун методик ёрдам', 2, '2022-02-05 07:59:30', 102),
(149, 98, 52, 'Республика математика устозлари учун ўқув семинар', 1, '2022-02-05 08:01:04', 78),
(150, 113, 61, 'Vatan himoyachilar kuniga bag\'ishlangan videoroliklar kanalda yoritildi', 3, '2022-02-05 08:51:01', 78),
(151, 52, 5, 'Ассалому алайкум ихтисосолашган мактаблар бўйича таклиф тайёрладик. лекин бунга сешанба куни физиклар кенгаши билан гаплашиб тўлдириб берамиз', 1, '2022-02-05 09:49:46', 65),
(152, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 7-sinf O\'zbekiston tarixi fanidan Nazorat ishi daftari kanalda yoritildi', 3, '2022-02-05 14:23:59', 78),
(153, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 7-sinf O\'zbekiston tarixi fanidan Nazorat ishi daftari kanalda yoritildi', 2, '2022-02-05 14:24:04', 78),
(154, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 7-sinf O\'zbekiston tarixi fanidan Nazorat ishi daftari kanalda yoritildi', 3, '2022-02-05 14:24:06', 78),
(155, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 7-sinf O\'zbekiston tarixi fanidan Nazorat ishi daftari kanalda yoritildi', 2, '2022-02-05 14:25:00', 78),
(156, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 7-sinf O\'zbekiston tarixi fanidan Nazorat ishi daftari kanalda yoritildi', 3, '2022-02-05 14:25:03', 78),
(157, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 7-sinf O\'zbekiston tarixi fanidan Nazorat ishi daftari kanalda yoritildi', 2, '2022-02-05 14:25:04', 78),
(158, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 8-sinf jahon tarixi metodik qo\'llanma telegram rasmiy kanalimizda yoritildi', 2, '2022-02-06 10:33:28', 78),
(159, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 8-sinf uchun Nazorat daftari ishchi daftari va metodik qo\'llanmalar tayyorlanib rasmiy kanalimizda yoritildi', 2, '2022-02-06 10:34:59', 78),
(160, 106, 61, ' 8-sinf uchun Nazorat daftari ishchi daftari va metodik qo\'llanmalar tayyorlanib rasmiy kanalimizda yoritildi', 2, '2022-02-06 10:35:08', 78),
(161, 106, 61, ' 8-sinf uchun Nazorat daftari ishchi daftari va metodik qo\'llanmalar tayyorlanib rasmiy kanalimizda yoritildi', 2, '2022-02-06 10:35:09', 78),
(162, 106, 61, ' 8-sinf uchun Nazorat daftari ishchi daftari va metodik qo\'llanmalar tayyorlanib rasmiy kanalimizda yoritildi', 3, '2022-02-06 10:35:10', 78),
(163, 106, 61, ' 8-sinf uchun Nazorat daftari ishchi daftari va metodik qo\'llanmalar tayyorlanib rasmiy kanalimizda yoritildi', 3, '2022-02-06 10:35:11', 78),
(164, 21, 52, 'geografiya xonasi va jihozlari', 2, '2022-02-07 05:32:56', 78),
(165, 21, 52, 'geografiya xonasi va jihozlari', 2, '2022-02-07 05:33:06', 78),
(166, 54, 52, 'tabiiy fanlarni oʻqitish boʻyicha dastur', 2, '2022-02-07 05:35:45', 67),
(167, 54, 52, 'Tabiiy fanlarni oʻqitish boʻyicha dastur mavzulari', 2, '2022-02-07 05:37:19', 67),
(168, 54, 52, 'Tabiiy fanlarni oʻqitish boʻyicha dastur mavzulari', 2, '2022-02-07 05:37:26', 67),
(169, 54, 52, 'Tabiiy fanlarni oʻqitish boʻyicha dastur mavzulari', 2, '2022-02-07 05:37:47', 67),
(170, 54, 52, 'Tabiiy fanlarni oʻqitish boʻyicha dastur mavzulari', 2, '2022-02-07 05:38:56', 67),
(171, 21, 52, '11-sinf tadbirkorlik fanidan taqdimot', 1, '2022-02-07 05:40:13', 78),
(172, 54, 52, 'Tabiiy fanlarni oʻqitish boʻyicha dastur mavzulari', 2, '2022-02-07 05:42:30', 67),
(173, 21, 52, '11-sinf tadbirkorlik fani bo\'yicha taqdimot', 2, '2022-02-07 05:42:45', 88),
(174, 52, 5, 'Ассалому алайкум Табиий фанлар бўйича ҳар бир мавзунинг мазмунини ҳам очиш учун ишлаяпмиз', 1, '2022-02-07 05:46:15', 88),
(175, 52, 5, 'Ассалому алайкум Табиий фанлар бўйича ҳар бир мавзунинг мазмунини ҳам очиш учун ишлаяпмиз', 1, '2022-02-07 05:46:22', 88),
(176, 17, 63, 'Nazorat kartochkasi 7.02.2022\r\n', 2, '2022-02-07 05:47:36', 78),
(177, 17, 63, 'Nazorat kartochkasi 7.02.2022\r\n', 2, '2022-02-07 05:48:37', 78),
(178, 101, 52, 'Biologiya ', 2, '2022-02-07 05:50:53', 78),
(179, 101, 52, 'Biologiya ', 2, '2022-02-07 05:51:05', 78),
(180, 101, 52, 'Biologiya', 2, '2022-02-07 05:52:50', 78),
(181, 17, 63, 'Xorijiy jurnalda chop etilgan maqola', 3, '2022-02-07 07:06:02', 51),
(182, 17, 63, 'Xorijiy jurnalda chop etilgan maqola', 3, '2022-02-07 07:06:07', 51),
(183, 17, 63, 'xorijiy maqola\r\n', 3, '2022-02-07 07:06:51', 51),
(184, 54, 52, 'кимё ўқув хонасининг жиҳозланиши', 2, '2022-02-07 08:04:49', 39),
(185, 54, 52, 'кимё ўқув хонасининг жиҳозланиши', 2, '2022-02-07 08:04:55', 39),
(186, 54, 52, 'кимё ўқув хонасининг жиҳозланиши', 2, '2022-02-07 08:04:57', 39),
(187, 54, 52, 'кимё ўқув хонасининг жиҳозланиши', 2, '2022-02-07 08:05:09', 39),
(188, 54, 52, 'кимё ўқув хонасининг жиҳозланиши', 2, '2022-02-07 08:05:36', 39),
(189, 54, 52, 'кимё ўқув хонасининг жиҳозланиши', 2, '2022-02-07 08:05:41', 39),
(190, 21, 52, 'Geografiya fan xonasi bo\'yicha takliflar', 2, '2022-02-07 08:49:29', 102),
(191, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:04', 78),
(192, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 2, '2022-02-07 11:29:07', 78),
(193, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:08', 78),
(194, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:09', 78),
(195, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:09', 78),
(196, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:10', 78),
(197, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:11', 78),
(198, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:11', 78),
(199, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 2, '2022-02-07 11:29:12', 78),
(200, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:12', 78),
(201, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:13', 78),
(202, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:14', 78),
(203, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:14', 78),
(204, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:15', 78),
(205, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:16', 78),
(206, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:17', 78),
(207, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:18', 78),
(208, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:19', 78),
(209, 106, 61, '6-sinf darsliklari uchun qanaqa rasmlar keragligi bo‘yicha yakuniy xulosa tayyorlandi', 3, '2022-02-07 11:29:22', 78),
(210, 106, 61, '6-sinf Tarix darsligini yaratilishida boblar bo‘yicha kerak bo‘ladigan rasmlar ro‘yxati shakillantirildi', 3, '2022-02-07 11:30:25', 78),
(211, 106, 61, '6-sinf Tarix darsligini yaratilishida boblar bo‘yicha kerak bo‘ladigan rasmlar ro‘yxati tayyorlandi', 3, '2022-02-07 11:30:52', 78),
(212, 16, 63, '2022-yil 7-fevralda bajarilgan ishlar', 3, '2022-02-07 13:36:22', 78),
(213, 16, 63, '2022-yil 7-fevralda bajarilgan ishlar', 3, '2022-02-07 13:36:29', 78),
(214, 16, 63, 'kunlik hisobot', 3, '2022-02-07 13:38:08', 78),
(215, 16, 63, 'kunlik hisobot', 3, '2022-02-07 13:38:13', 78),
(216, 16, 63, 'kunlik hisobot', 3, '2022-02-07 13:38:17', 78),
(217, 16, 63, 'kunlik hisobot', 3, '2022-02-07 13:38:17', 78),
(218, 16, 63, 'kunlik hisobot', 3, '2022-02-07 13:38:19', 78),
(219, 16, 63, 'kunlik bajarilgan ishlar', 3, '2022-02-07 13:41:22', 78),
(220, 16, 63, 'kunlik bajarilgan ishlar', 3, '2022-02-07 13:41:25', 78),
(221, 16, 63, 'kunlik qilingan ishlar', 3, '2022-02-07 13:43:28', 78),
(222, 16, 63, 'kunlik qilingan ishlar', 3, '2022-02-07 13:43:31', 78),
(223, 38, 25, '“Yilning eng yaxshi chet tili to‘garak o‘qituvchisi” tanlovi uchun baholash mezomi tayyorlandi.\r\n3-sinf darslik mundarajasida xatolik topildi, ularni indizaynda tuzatildi va PDF-shaklda darslik bo‘limiga topshirildi.\r\nDarsliklar yuzasidan yig‘ilishda ishtirok etildi.\r\n3-sinf yangi darsligi asosida taqvim-mavzu reja tuzildi. \r\nChet tillaridan Milliy o‘quv dasturini  GER bo‘yicha nemis tiliga moslashtirish bo‘yicha ish tashkil qilindi. 14 o‘qituvchilardan iborat guruh shakllantirildi. \r\n', 2, '2022-02-07 13:47:40', 78),
(224, 38, 25, '“Yilning eng yaxshi chet tili to‘garak o‘qituvchisi” tanlovi uchun baholash mezomi tayyorlandi.\r\n3-sinf darslik mundarajasida xatolik topildi, ularni indizaynda tuzatildi va PDF-shaklda darslik bo‘limiga topshirildi.\r\nDarsliklar yuzasidan yig‘ilishda ishtirok etildi.\r\n3-sinf yangi darsligi asosida taqvim-mavzu reja tuzildi. \r\nChet tillaridan Milliy o‘quv dasturini  GER bo‘yicha nemis tiliga moslashtirish bo‘yicha ish tashkil qilindi. 14 o‘qituvchilardan iborat guruh shakllantirildi. \r\n', 2, '2022-02-07 13:47:59', 78),
(225, 38, 25, '“Yilning eng yaxshi chet tili to‘garak o‘qituvchisi” tanlovi uchun baholash mezomi tayyorlandi.\r\n3-sinf darslik mundarajasida xatolik topildi, ularni indizaynda tuzatildi va PDF-shaklda darslik bo‘limiga topshirildi.\r\nDarsliklar yuzasidan yig‘ilishda ishtirok etildi.\r\n3-sinf yangi darsligi asosida taqvim-mavzu reja tuzildi. \r\nChet tillaridan Milliy o‘quv dasturini  GER bo‘yicha nemis tiliga moslashtirish bo‘yicha ish tashkil qilindi. 14 o‘qituvchilardan iborat guruh shakllantirildi. \r\n', 2, '2022-02-07 13:48:05', 78),
(226, 38, 25, '“Yilning eng yaxshi chet tili to‘garak o‘qituvchisi” tanlovi uchun baholash mezomi tayyorlandi.\r\n3-sinf darslik mundarajasida xatolik topildi, ularni indizaynda tuzatildi va PDF-shaklda darslik bo‘limiga topshirildi.\r\nDarsliklar yuzasidan yig‘ilishda ishtirok etildi.\r\n3-sinf yangi darsligi asosida taqvim-mavzu reja tuzildi. \r\nChet tillaridan Milliy o‘quv dasturini  GER bo‘yicha nemis tiliga moslashtirish bo‘yicha ish tashkil qilindi. 14 o‘qituvchilardan iborat guruh shakllantirildi. \r\n', 2, '2022-02-07 13:48:23', 78),
(227, 38, 25, '“Yilning eng yaxshi chet tili to‘garak o‘qituvchisi” tanlovi uchun baholash mezomi tayyorlandi.\r\n3-sinf darslik mundarajasida xatolik topildi, ularni indizaynda tuzatildi va PDF-shaklda darslik bo‘limiga topshirildi.\r\nDarsliklar yuzasidan yig‘ilishda ishtirok etildi.\r\n3-sinf yangi darsligi asosida taqvim-mavzu reja tuzildi. \r\nChet tillaridan Milliy o‘quv dasturini  GER bo‘yicha nemis tiliga moslashtirish bo‘yicha ish tashkil qilindi. 14 o‘qituvchilardan iborat guruh shakllantirildi. \r\n', 2, '2022-02-07 13:48:31', 78),
(228, 16, 63, 'bajarilgan ishlar ', 3, '2022-02-07 14:04:07', 78),
(229, 19, 63, 'Fransuzlar bilan uchrashuv o‘tkazildi.\r\nShuningdek, \r\nBuyuk Britaniyaning Cardiff Metropolitan Universiteti vakillari bilan online uchrashuv o\'tkazildi. ', 3, '2022-02-07 14:26:23', 78),
(230, 19, 63, 'Fransuzlar bilan uchrashuv o‘tkazildi.\r\nShuningdek, \r\nBuyuk Britaniyaning Cardiff Metropolitan Universiteti vakillari bilan online uchrashuv o\'tkazildi. ', 2, '2022-02-07 14:26:52', 78),
(231, 19, 63, 'Haftalik ish reja va hisoboti ma\'lumot uchun yuborilmoqda', 3, '2022-02-08 07:17:51', 78),
(232, 19, 63, 'Haftalik ish reja va hisobot ma\'lumot uchun yuborilmoqda.', 3, '2022-02-08 07:19:28', 78),
(233, 19, 63, 'Haftalik ish reja va hisosboti ma\'lumot uchun yuborilmoqda.', 3, '2022-02-08 07:21:19', 78),
(234, 19, 63, 'Haftalik ish reja va hisosboti ma\'lumot uchun yuborilmoqda.', 3, '2022-02-08 07:21:22', 78),
(235, 19, 63, 'Haftalik ish reja va hisosboti ma\'lumot uchun yuborilmoqda.', 3, '2022-02-08 07:21:53', 78),
(236, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 09:58:18', 78),
(237, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:03:41', 78),
(238, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:03:52', 78),
(239, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:03:54', 78),
(240, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:03:55', 78),
(241, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:03:56', 78),
(242, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:04:03', 78),
(243, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:04:04', 78),
(244, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:04:05', 78),
(245, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:04:07', 78),
(246, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:04:08', 78),
(247, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:04:16', 78),
(248, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:04:17', 78),
(249, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:04:18', 78),
(250, 69, 76, 'RTM moddiy texnik bazasi uchun kerakli texnikalar ', 1, '2022-02-08 10:04:18', 78),
(251, 106, 61, 'Metodik qo’llanma umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida tayyorlandi', 2, '2022-02-08 11:11:10', 78),
(252, 14, 22, 'Koreyadagi Aju universitetining Toshkentdagi filiali o\'quv bo\'limi boshlig\'i D. Mamatov bilan hamkorlikda Mustaqil tadqiqotchilik faoliyatini yuritish uchun tahminiy PhD mavzusi shakllantirildi: \"Raqamli ta\'lim muhitida Yangi avlod darsliklarini yaratish texnologiyasini takomillashtirish texnologiyasi\" \r\nBu mavzu bugundan qayta ko\'rib chiqilib tahrirlanmoqda. ', 3, '2022-02-08 12:57:35', 57),
(253, 112, 61, 'Заковат', 3, '2022-02-08 13:15:04', 78),
(254, 65, 61, '7-sinf Jahon tarixi qo‘lyozmasining 3-bobi qo‘shimcha ma\'lumotlar asosida tayyorlandi', 3, '2022-02-08 13:49:43', 85),
(255, 65, 61, '7-sinf Jahon tarixi qo‘lyozmasining 3-bobi qo‘shimcha ma\'lumotlar asosida tayyorlandi', 3, '2022-02-08 13:49:51', 85),
(256, 65, 61, '7-sinf Jahon tarixi qo‘lyozmasining 3-bobi qo‘shimcha ma\'lumotlar asosida tayyorlandi', 3, '2022-02-08 13:49:56', 85),
(257, 65, 61, '7-sinf Jahon tarixi qo‘lyozmasining 3-bobi qo‘shimcha ma\'lumotlar asosida tayyorlandi', 3, '2022-02-08 13:50:00', 85),
(258, 65, 61, '7-sinf Jahon tarixi qo‘lyozmasining 3-bobi qo‘shimcha ma\'lumotlar asosida tayyorlandi', 3, '2022-02-08 13:50:10', 85),
(259, 65, 61, '7-sinf Jahon tarixi qo‘lyozmasining 3-bobi qo‘shimcha ma\'lumotlar asosida tayyorlandi', 3, '2022-02-08 13:50:12', 85),
(260, 65, 61, 'Болалар ва ёшлар учун оила,маданият ва тарбия масаларини ёритилиши юзасидан Тарих фанидан маълумот тайёрланди.', 3, '2022-02-08 13:58:25', 78),
(261, 38, 25, '08.02.2022 y. \r\n3-sinf mashq daftari qo‘lyozmasi rassom va sahifalovchiga topshirildi.\r\n“Yilning eng yaxshi chet tili to‘garak o‘qituvchisi” tanlovi uchun baholash mezoni tayyorlashda qardosh tillar va rus tili fan metodistlariga yordam berildi.\r\nOna tili metodisti bilan MO‘D va fan maqsadi, yangi darsliklarda topshiriq turlari bo‘yicha tajriba almashildi. \r\nXatirchi tumanidan to‘g‘ridan-to‘g‘ri jo‘natilgan o ‘qib tushunishga doir metodik ish ko‘rib chiqildi va muallifga ish yuzasidan xulosa berildi. \r\nNemis tilidan 3-sinf darsligini tajriba-sinov o‘quvlarini o‘tkazish tashkiliy masalalari hal qilindi.\r\n', 2, '2022-02-08 13:59:47', 78),
(262, 115, 61, 'Texnologiya fani va tasviriy san’at, chizmachilik fanlari xonalarining  jixozlanishi va texnologiya darslarini kuzatish maqsadida O‘zbekiston Respublikasi X.T.V. tasarrufidagi profilli mehnat ta’limiga ixtisoslashtirilgan davlat umumta’lim maktabiga RTM metodistlari tomonidan bir kunlik tashrif uyushtirildi. \r\n', 3, '2022-02-08 14:01:45', 39),
(263, 115, 61, 'Texnologiya fani va tasviriy san’at, chizmachilik fanlari xonalarining  jixozlanishi va texnologiya darslarini kuzatish maqsadida O‘zbekiston Respublikasi X.T.V. tasarrufidagi profilli mehnat ta’limiga ixtisoslashtirilgan davlat umumta’lim maktabiga RTM metodistlari tomonidan bir kunlik tashrif uyushtirildi. \r\n', 3, '2022-02-08 14:02:02', 39),
(264, 115, 61, 'Texnologiya fani va tasviriy san’at, chizmachilik fanlari xonalarining  jixozlanishi va texnologiya darslarini kuzatish maqsadida O‘zbekiston Respublikasi X.T.V. tasarrufidagi profilli mehnat ta’limiga ixtisoslashtirilgan davlat umumta’lim maktabiga RTM metodistlari tomonidan bir kunlik tashrif uyushtirildi. \r\n', 3, '2022-02-08 14:02:30', 39),
(265, 115, 61, 'Texnologiya fanidan (servis yo\'nalishi) 40 ta test tuzildi.\r\n', 3, '2022-02-08 14:04:51', 78),
(266, 65, 61, '5tttutututut', 3, '2022-02-08 14:13:14', 78),
(267, 54, 52, 'KIMYO FANIDAN OʻQUV ADABIYOTI', 2, '2022-02-08 15:17:42', 83),
(268, 54, 52, 'KIMYO FANIDAN OʻQUV ADABIYOTI', 2, '2022-02-08 15:17:57', 83),
(269, 54, 52, 'KIMYO FANIDAN OʻQUV ADABIYOTI', 2, '2022-02-08 15:23:15', 83),
(270, 54, 52, 'KIMYO FANI STANDARTI', 2, '2022-02-08 15:24:08', 83),
(271, 54, 52, 'KIMYO FANI STANDARTI', 2, '2022-02-08 15:24:11', 83),
(272, 21, 52, '1-son bayyonnoma monitoringi', 2, '2022-02-09 09:07:42', 100),
(273, 16, 63, 'kunlik hisobot', 3, '2022-02-09 09:18:06', 78),
(274, 16, 63, 'kunlik hisobot', 3, '2022-02-09 09:18:08', 78),
(275, 21, 52, '1-son bayyonnoma monitoringi', 2, '2022-02-09 09:22:58', 100),
(276, 21, 52, 'geografiya fanini mualliflar ro\'yxati shakllantirildi', 2, '2022-02-09 09:25:40', 33),
(277, 21, 52, 'Geografiya fani boshqa davlatlarda o\'qitilishi haqida', 2, '2022-02-09 09:27:20', 88),
(278, 21, 52, 'Zoom platformasi orqali dars o\'qitilishi uchun tayyorlangan taqdimot', 2, '2022-02-09 09:30:00', 101),
(279, 101, 52, 'Biologiya amaliyotchi o`qituvchilari', 2, '2022-02-09 09:47:17', 78),
(280, 101, 52, 'Biologiya amaliyotchi o`qituvchilari', 1, '2022-02-09 09:47:21', 78),
(281, 105, 25, 'Milliy o\'quv dasturi yuzasidan Navioiy viloyati pedagoglari uchun seminar (Zoom platformasida)', 2, '2022-02-09 10:27:25', 78),
(282, 105, 25, 'Ona tili va adabiyot fani to\'garak o\'qituvchilari uchun tanlovning baholash mezoni tayyorlandi.', 2, '2022-02-09 10:31:17', 78),
(283, 105, 25, 'Xorijiy tajribani o\'rganish uchun Generation Cahier (10-sinf), Generation Livre (10-sinf) darsliklari bilan tanishib chiqildi.', 2, '2022-02-09 10:33:50', 78),
(284, 105, 25, 'Nemis tili metodistlari bilan 10-sinf o\'quvchilari uchun darslik masalasida fikr almashildi (2 soat). Xorijiy tajribani o\'rganish uchun 10 ta darslik olindi. (Rasm ilova qilinmoqda)', 2, '2022-02-09 11:16:11', 61),
(285, 105, 25, 'Nemis tili metodistlari bilan 10-sinf o\'quvchilari uchun darslik masalasida fikr almashildi (2 soat). Xorijiy tajribani o\'rganish uchun 10 ta darslik olindi. (Rasm ilova qilinmoqda)', 2, '2022-02-09 11:16:20', 61),
(286, 105, 25, 'Nemis tili metodistlari bilan 10-sinf o\'quvchilari uchun darslik masalasida fikr almashildi (2 soat). Xorijiy tajribani o\'rganish uchun 10 ta darslik olindi. (Rasm ilova qilinmoqda)', 2, '2022-02-09 11:16:37', 61),
(287, 14, 22, 'CiCLOUD iNITIATIVES tashkiloti Respublika ta\'lim markazi bilan hamkorlikda \"EdTech\" loyihasi doirasi o\'quv seminarlarni tashkil etganini inobatga olgan holda Umumiy o\'rta ta\'lim maktab o\'quvchilar uchun masofaviy ta\'lim jarayonlarini tashkil etish yuzasidan takliflar ishlab chiqilib, hamkor tashkilotga takliflar elektron shaklda taqdim qilindi. ', 3, '2022-02-09 11:57:31', 65),
(288, 21, 52, '7-sinf dasturi', 2, '2022-02-09 12:07:53', 32),
(289, 21, 52, '10-sinf geografiya dasturi', 2, '2022-02-09 12:09:07', 32),
(290, 21, 52, '10-sinf geografiya dasturi', 2, '2022-02-09 12:09:10', 32),
(291, 91, 22, 'Ассалому алайкум Феруза опа сизга Табиий фанлар йўналиши бўйича \"Тест тузиш бўйича\" яратилган қўлланмани юбордим.', 3, '2022-02-09 13:20:48', 67),
(292, 91, 22, 'Ассалому алайкум Феруза опа йиллик иш режамни юбордим', 3, '2022-02-09 13:30:15', 103),
(293, 65, 61, 'Milliy o‘quv dasturi bo‘yicha Tarix fanidan 5-6-7-10-sinf  o‘quv dasturlari ishlab chiqildi va metodika bo‘limiga topshirildi. ', 3, '2022-02-09 13:41:18', 24),
(294, 65, 61, 'Milliy o‘quv dasturi bo‘yicha Tarix fanidan 5-6-7-10-sinf  o‘quv dasturlari ishlab chiqildi va metodika bo‘limiga topshirildi. ', 3, '2022-02-09 13:41:20', 24),
(295, 38, 25, '08.02.2022 y. \r\nMart oyida o‘tkazilishi rejalashtirilgan chet tillaridan 6, 7, 10-sinflar uchun o‘quvlari tashkil etish yoki etmaslik masalasi aniqlashtirildi. (A.Ortiqov va F.Olimova bilan) \r\nZfA dasturi o‘rganib chiqildi va ayrim qismlari tarjima qilindi. \r\nRespublika miqiyosida keyingi o\'quv yili bo‘yicha sinflar kesimida nemis va fransuz tillari o‘rganadigan o‘quvchilar sonini aniqlash bo‘yicha jadval tayyorlandi va viloyat metodistlariga telegram orqali murojaat jo‘natildi.   \r\nNemis tili darsliklari yetishmovchiligi bo‘yicha Qoraqolpog‘iston respublikasi metodisti va vazirlik xodimi bilan bog‘lanildi.\r\n', 2, '2022-02-09 13:54:20', 78),
(296, 68, 61, 'Еасвирий санъат фани бўйича ўқитувчилар учун методик қўлланма 1 синф', 3, '2022-02-09 14:04:14', 85),
(297, 68, 61, 'Тасвирий санъат фани бўйича ўқитувчилар учун методик қўлланма 1 синф', 3, '2022-02-09 14:04:40', 85),
(298, 68, 61, 'Самарқанд вилояти семинари', 3, '2022-02-09 14:05:51', 85),
(299, 68, 61, 'Самарқанд вилояти семинари', 3, '2022-02-09 14:05:59', 85),
(300, 68, 61, 'Методика 1 синф', 3, '2022-02-09 14:07:50', 85),
(301, 19, 63, 'Haftalik ish reja va hisoboti ma\'lumot uchun yuborilmoqda', 3, '2022-02-09 14:23:39', 78),
(302, 19, 63, 'Haftalik ish reja va hisoboti ma\'lumot uchun yuborilmoqda', 3, '2022-02-09 14:23:47', 78),
(303, 103, 22, '                            Хорижда география таълими\r\nГеография  фанини  ривожланган, ривожланаётган давлатлар  ва Фин мамлакатларида  ўқитилиши  юзасидан ҳамда  таълимида эпг кўп қўлланиладиган усуллар  ҳақида маълумот.\r\n         Ҳозирги кунда география таълими жаҳоннинг кўпчилик мамлакатларида 3 та йўналишда олиб борилмоқда. \r\n', 3, '2022-02-10 04:51:56', 103),
(304, 103, 22, '                            Хорижда география таълими\r\nГеография  фанини  ривожланган, ривожланаётган давлатлар  ва Фин мамлакатларида  ўқитилиши  юзасидан ҳамда  таълимида эпг кўп қўлланиладиган усуллар  ҳақида маълумот.\r\n         Ҳозирги кунда география таълими жаҳоннинг кўпчилик мамлакатларида 3 та йўналишда олиб борилмоқда. \r\n', 3, '2022-02-10 04:52:02', 103),
(305, 62, 61, 'ok', 3, '2022-02-10 05:53:26', 78),
(306, 21, 52, '1-sonli bayonnoma ma\'lumoti', 2, '2022-02-10 09:28:49', 100),
(307, 21, 52, '4-sonli bayonnomasi ma\'lumoti', 2, '2022-02-10 09:31:47', 100),
(308, 115, 61, 'Texnologiya fanidan \"Mobil guruh\" ustozlari guruhi shakllantirildi. ', 3, '2022-02-10 11:11:09', 99),
(309, 115, 61, 'Texnologiya fanidan \"Mobil guruh\" ustozlari guruhi shakllantirildi. ', 3, '2022-02-10 11:11:12', 99),
(310, 21, 52, 'STEM tahlili \"Tabiiy fanlar\" darsligi bo\'yicha', 1, '2022-02-10 12:20:12', 78),
(311, 68, 61, 'Самарқанд вилояти устозлари', 3, '2022-02-10 12:53:32', 78),
(312, 38, 25, '10.02.2022 y. \r\nVazirlik fondidan fidoyi o‘qituvchilarga ustama berish bo‘yicha takliflar yozildi.\r\n11.02 da rejalashtirilgan o‘quvlar uchun tayyorgalik ishlari amalga oshirildi. \r\nKlett darsliklari lug‘at qismi tarjima uchun tayyorlandi.  \r\n', 2, '2022-02-10 13:42:13', 78),
(313, 105, 25, 'Xat 15671-s-22 darsliklar va yangi imlo masalasidagi murojaat xati yopildi', 2, '2022-02-10 17:37:13', 78),
(314, 105, 5, 'Prezident ta\'lim muassasalari agentligida Prezident maktablari va ijod maktablari uchun tayyorlangan MO\'D bilan tanishildi, fikr almashildi.', 1, '2022-02-10 17:42:06', 78),
(315, 105, 5, 'Prezident ta\'lim muassasalari agentligida Prezident maktablari va ijod maktablari uchun tayyorlangan MO\'D bilan tanishildi, fikr almashildi.', 1, '2022-02-10 17:42:19', 78),
(316, 105, 5, 'Prezident ta\'lim muassasalari agentligida Prezident va ijod maktablari  uchun tayyorlangan MO\'D bilan tanishildi, fikr almashildi. XTV tasarrufidagi maktablar uchun tayyorlangan MO\'D bilan qiyoslandi.', 1, '2022-02-10 17:43:30', 78),
(317, 111, 61, 'Germaniya', 3, '2022-02-11 07:18:54', 33),
(318, 111, 61, 'Germaniya', 3, '2022-02-11 07:19:09', 33),
(319, 111, 61, 'Germaniya', 3, '2022-02-11 07:19:25', 33),
(320, 101, 52, 'Taklif', 2, '2022-02-11 07:58:46', 78),
(321, 101, 52, 'Taklif', 2, '2022-02-11 07:58:49', 78),
(322, 101, 52, 'Taklif', 2, '2022-02-11 07:58:50', 78),
(323, 54, 52, 'Kimyo fanidan toʻgarak tanlovi rejalarini berish ', 2, '2022-02-11 08:00:09', 24),
(324, 54, 52, 'Kimyo fanidan toʻgarak tanlovi rejalarini berish ', 2, '2022-02-11 08:00:16', 24),
(325, 54, 52, 'Kimyo fanidan toʻgarak tanlovi rejalarini berish ', 2, '2022-02-11 08:00:48', 24),
(326, 102, 52, 'To\'garak rahbarlari faoliyati samaradorligini aniqlash uchun o\'tkaziladigan ko\'rik tanlov mezonlari va baholash ', 2, '2022-02-11 08:45:19', 95),
(327, 102, 52, 'To\'garak rahbarlari faoliyati samaradorligini aniqlash uchun o\'tkaziladigan ko\'rik tanlov mezonlari va baholash ', 2, '2022-02-11 08:45:24', 95),
(328, 102, 52, 'To\'garak rahbarlari faoliyati samaradorligini aniqlash uchun o\'tkaziladigan ko\'rik tanlov mezonlari va baholash ', 2, '2022-02-11 08:45:26', 95),
(329, 102, 52, 'To\'garak rahbarlari faoliyati samaradorligini aniqlash uchun o\'tkaziladigan ko\'rik tanlov mezonlari va baholash ', 2, '2022-02-11 08:45:30', 95),
(330, 21, 52, 'Geografiya fan to\'garagi', 2, '2022-02-11 09:42:55', 95),
(331, 21, 52, 'Geografiya fan to\'garagi', 2, '2022-02-11 09:42:58', 95),
(332, 105, 25, 'Xorijiy tajribani o\'rganish maqsadida Fransiyaning \"L\'atelier: methode de Francais\" (B2 daraja) bilan tanishildi. Test strukturasi va topshiriqlarda ranglardan foydalanish o\'zlashtirildi.', 2, '2022-02-11 11:55:59', 78),
(333, 13, 22, 'Milliy o‘quv dasturini va o‘quv metodik majmualarni amaliyotga joriy etish bo‘yicha umumiy o‘rta ta’lim maktablarning 6-,7-,10-sinflarida dars o‘tadigan trener o‘qituvchilar рўйхатини шакиллантириш  uchun Худудларга жадвали хат лойиҳаси қилнди. Навоий вилоятига оммалаштириш бўйича жавоб хат лойиҳаси қилинди.Умумий ўрта таълим мактабларда “Энг яхши метод бирлашма” кўрик-\r\nтанловни ўтказиш тартиби тўғрисида Низом лойиҳаси ишланмоқда\r\n\r\n', 3, '2022-02-11 12:37:23', 78),
(334, 38, 25, '11.02.2022 y.\r\nToshkent shahridagi 112-IDUMda nemis va fransuz tillari boʻyicha oʻquv-seminar tashkil etildi.\r\nSeminar haqida ma’lumot tayyorlandi va matbuot bo‘limiga berildi.\r\nGeografiya metodisti bilan Germaniya geografiya darsliklarida topshiriqlar berish bo‘yicha tajriba almashildi. \r\n', 2, '2022-02-11 12:50:15', 78),
(335, 38, 25, 'Toshkent shahridagi 112-IDUMda nemis va fransuz tillari boʻyicha oʻquv-seminar tashkil etildi. Tadbirda Markaz fan metodistlari, darslik mualliflari va Milliy o‘quv dasturi asosida yaratilgan 3-sinf nemis va fransuz tillari darsliklarining tajriba-sinov o‘qituvchilari ishtirok etishdi. Hozirda 3-sinf nemis va fransuz tillari darsliklari Toshkent shahri va viloyati maktablarida tajriba-sinovdan o‘tkazilmoqda.  ', 2, '2022-02-11 12:56:33', 26),
(336, 38, 25, 'Toshkent shahridagi 112-IDUMda nemis va fransuz tillari boʻyicha oʻquv-seminar tashkil etildi. Tadbirda Markaz fan metodistlari, darslik mualliflari va Milliy o‘quv dasturi asosida yaratilgan 3-sinf nemis va fransuz tillari darsliklarining tajriba-sinov o‘qituvchilari ishtirok etishdi. Hozirda 3-sinf nemis va fransuz tillari darsliklari Toshkent shahri va viloyati maktablarida tajriba-sinovdan o‘tkazilmoqda.  ', 2, '2022-02-11 12:56:49', 26),
(337, 19, 63, 'Haftalik ish reja va hisoboti ma\'lumot uchun yuborilmoqda.', 2, '2022-02-11 13:39:51', 78),
(338, 62, 61, 'ok', 3, '2022-02-12 10:42:24', 78),
(339, 111, 10, 'germaniya', 1, '2022-02-12 10:43:17', 43),
(340, 111, 61, 'shopify', 3, '2022-02-13 06:59:18', 43),
(341, 105, 25, 'Qoraqalpog\'iston Respublikasi Xalq talimi vaziriga xat\r\nM. Tulashevani RTMga kelib ishlashiga yordam berishlari so\'ralgan.', 2, '2022-02-14 04:48:33', 78),
(342, 105, 25, 'Nukus davlat pedagogika instituti rektoriga xat\r\nN. Allamberganovaga RTMga kelib ishlashiga yordam berishlari so\'ralgan.', 2, '2022-02-14 04:50:04', 78),
(343, 105, 25, 'Buxoro viloyati XTB boshlig\'iga xat\r\n\r\nO. Beganchovaning RTMga kelib ishlashiga yordam berishlari so\'ralgan.', 2, '2022-02-14 04:51:28', 78),
(344, 111, 61, 'SODDA', 3, '2022-02-14 07:50:38', 33),
(345, 111, 61, 'AMAZON', 3, '2022-02-14 07:55:45', 97),
(346, 61, 5, 'AMAZON', 1, '2022-02-14 08:10:36', 58),
(347, 111, 111, 'Testsetsetsetettse', 3, '2022-02-14 08:35:29', 56),
(348, 62, 61, 'https://t.me/+BNXbwbufwA1kNjYy', 2, '2022-02-14 09:57:08', 78),
(349, 65, 61, '7-sinf Jahon tarixi darsligining 3-bobi qo‘lyozmasi takomillashtirildi', 2, '2022-02-14 09:58:05', 85),
(350, 65, 61, 'Samarqand viloyati Xalq ta\'limi boshqarmasi Ijtimoiy fanlar bo‘limi tomonidan 14-fevral Zahiriddin Muhammad Boburning tavallud kuniga bag`ishlab o`tkazilgan madaniy tadbirda zoom orqali ishtirok etildi. ', 2, '2022-02-14 10:06:41', 60),
(351, 68, 61, 'муаллифлар рўйхати шакллантирилган', 2, '2022-02-14 10:11:10', 33),
(352, 68, 61, '3-синф дарслигида ҳаммуаллиф сифатида 1-4 чораклар учун мавзулар кесимида матнлар яратилди.', 2, '2022-02-14 10:20:48', 85),
(353, 68, 61, '2-синф машқ дафтарининг муаллифи', 2, '2022-02-14 10:27:55', 85);
INSERT INTO `reports` (`id`, `sender_id`, `receiver_id`, `description`, `status`, `created_at`, `indicator_id`) VALUES
(354, 68, 61, 'Тасвирий санъат 6-синф дарслигига ишланган сурат ва ҳайкалтарошлик ишларининг босқичлари муаллиф Н.Бердиевдан қабул қилинди.', 2, '2022-02-14 10:32:35', 78),
(355, 111, 61, 'hjhjhjh', 2, '2022-02-14 10:53:26', 52),
(356, 111, 61, 'yaxshimsiz opa', 2, '2022-02-14 10:58:07', 62),
(357, 38, 25, '14.02.2022 y.\r\n3-sinf tajriba-sinov uchun kirish testlari tayyorlandi va Baholash va standartlashtirish bo‘limiga topshirildi. \r\nKlett darsliklari bo‘yicha o‘quv reja ustida ishlandi. Taqvim-mavzu reja tuzildi. (4-sinf)\r\nDarsliklar bo‘yicha yig‘ilishda ishtirok etildi. \r\n', 2, '2022-02-14 13:04:06', 78),
(358, 115, 61, 'Amaliy fanlar bo\'yicha \"Mobil guruh\" tashkil qilindi.', 2, '2022-02-14 14:24:31', 78),
(359, 16, 63, 'kunlik ishlar', 2, '2022-02-14 15:03:35', 78),
(360, 16, 63, 'kunlik ishlar', 2, '2022-02-14 15:04:51', 78),
(361, 16, 63, 'kunlik ishlar', 2, '2022-02-14 15:05:22', 78),
(362, 16, 63, 'kunlik ishlar', 3, '2022-02-14 15:05:44', 78),
(363, 115, 61, '5-9-sinf Texnologiya darsliklariga “Elektrotexnika sohasiga kadrlar yetkazib berishning yangicha tizimini yo‘lga qo‘yish respublikaning umumta’lim maktablarining yuqori sinf o‘quvchilari uchun mehnat darslariga mo‘ljallangan soatlarni elektrotexnika sohasiga yo‘naltirish; elektrotexnika sohasidagi korxonalarga ekskursiyalar tashkil etish” masalalari kiritilgan mavzular \r\n', 2, '2022-02-14 16:11:27', 78),
(364, 21, 52, 'Xorijiy davlatlar tajribasi o\'rganilmoqda', 2, '2022-02-15 04:57:04', 88),
(365, 38, 22, '3-sinf tajriba-sinov uchun kirish testlari tayyorlandi. ', 2, '2022-02-15 06:24:13', 25),
(366, 65, 61, 'Hududlardagi Texnologiya fanini o‘qitish va fan jihozlari yuzasidan jadval tayyorlandi va hududlar metodik markazlariga yetkazildi.', 2, '2022-02-15 06:44:29', 39),
(367, 65, 61, '7-sinf Jahon tarixi fani darsligiga QR-kod joylashtirish maqsadida fanga doir Ilk universitetlarning paydo bo‘lishi mavzusida bo‘limnin rasmiy kanali orqali materiallar berildi.', 2, '2022-02-15 09:40:12', 82),
(368, 54, 52, 'darslikning 13-mavzusi yakuniy holati', 2, '2022-02-15 13:42:45', 78),
(369, 54, 52, 'Kimyo fanidan test tuzish bo\'yicha o\'qituvchilar uchun taqdimot', 2, '2022-02-15 13:47:49', 67),
(370, 54, 52, 'Kimyo fanidan qiziqarli tajribalar', 2, '2022-02-15 13:55:33', 102),
(371, 25, 111, 'fdfdff', 3, '2022-02-15 14:13:06', 101),
(372, 16, 63, 'kunlik qilingan ishlar', 2, '2022-02-15 14:54:52', 78),
(373, 105, 25, 'Xorazm viloyati ona tili metodisti Barno Po\'latovna bilan yangi topshiriqlar va ommalashtirish materiallari xususida gaplashildi', 2, '2022-02-15 16:02:35', 78),
(374, 105, 25, 'Ona tili va adabiyot to\'gaagi o\'qituvchilari tanlovining baholash mezoni ishlab chiqildi va topshirildi.', 2, '2022-02-15 16:05:39', 78),
(375, 68, 61, '3-Б6-синф дарслик муаллифлари билан дарслик устида ишланди.', 2, '2022-02-16 09:03:59', 78),
(376, 68, 61, 'Ф.Олимованинг бўлимига Тошкент шаҳар тахриба-синов мактабининг устози ҳақида маълумот қайта жадвалга солиб берилди.', 2, '2022-02-16 09:08:18', 78),
(377, 115, 61, 'Texnologiya fani amaldagi darsliklardan test tayyorlandi.', 2, '2022-02-16 09:09:31', 67),
(378, 115, 61, 'texnologiya fani 3-sinf yangi darsligi yuzasidan taqvim reja tayyorlandi. ', 2, '2022-02-16 09:19:21', 24),
(379, 115, 61, 'Texnologiya fani 3-sinf mashq daftarining qo\'lyozmasi bildirgi bilan \"Darsliklarni yaratish texnologiyalarini rivojlantirish bo\'limiga topshirildi.', 2, '2022-02-16 09:23:14', 32),
(380, 115, 61, 'Texnologiya 3-sinf mashq daftarini tayyor bo\'lgan qo\'lyozmasi ko\'rib chiqildi.', 2, '2022-02-16 09:50:23', 32),
(381, 115, 61, '12-fevral kuni RTM bilan hamkorlikda Qashqadaryo viloyati XTB bilan \"Bugungi kunda amaliy fanlarni o\'qitishda innovatsion yondashuv\" mavzusida onlayn o\'quv seminarida taqdim etilgan taqdimot ko\'rib chiqildi va https://t.me/rtmedu_news telegram kanaliga joylandi.', 2, '2022-02-16 10:36:06', 78),
(382, 115, 61, '1-2-3-6-7-sinflar uchun Texnologiya darsligini yozish jarayoniga jalb qilingan o‘qituvchilar ro‘yxati shakllantirildi', 2, '2022-02-16 10:48:20', 33),
(383, 115, 61, '“Ona tili va oʻqish savodxonligi”ni baholashda nima oʻzgaradi? Ovozli chat orqali savollaringizga javob oling! Deb nomlangan ovozli chatda ishtirok etildi.', 2, '2022-02-16 11:43:43', 78),
(384, 106, 61, 'Qashqadaryo viloyati Chiroqchi tumani 106-maktabning texnologiya fani o\'qituvchisi Bakiyeva Nodira Uzakova tomonidan tayyorlangan taqdimot Respublika rasmiy kanalida yoritildi.', 2, '2022-02-16 12:14:39', 78),
(385, 106, 61, 'Kimyoviy tolali gazlamalar. Kimyoviy tolali gazlamalardan \"Kuzgi gullar\" kompozitsiyasini tayyorlash mavzusidagi taqdimot https://t.me/rtmedu_news kanalida yoritildi', 2, '2022-02-16 12:16:05', 78),
(386, 106, 61, 'ZAHRIDDIN MUHAMMAD BOBUR HAQIDA 10 TA HAQIQAT RTMning rasmiy youtube kanaliga joylandi. https://www.youtube.com/watch?v=6Jwqevhb_KI', 2, '2022-02-16 12:34:34', 78),
(387, 112, 61, 'Fuqaro Kalonxonov Q. murojaati yuzasidan javob xati tayyorlandi', 2, '2022-02-16 12:41:59', 78),
(388, 112, 61, 'Tarbiya faniga oid o`qituvchilar bilan hamkorlikda bo`lim kanaliga taqdimot joylashtirildi', 2, '2022-02-16 12:46:00', 67),
(389, 65, 61, 'Respublika bo‘yicha tarix va huquq fanlari o‘qituvchilarini mart oyida bo‘ladigan fanlarning tajriba-sinov uchun ro‘yxati shakllantirildi.', 2, '2022-02-16 12:53:06', 25),
(390, 65, 61, '7-sinf Jahon tarixi fani darsligi qo‘lyozmasi mualliflar bilan qayta ishlandi', 2, '2022-02-16 12:57:39', 78),
(391, 65, 61, 'Darsliklarning qo‘lyozmasi holati bo‘yicha hisobot tayyorlandi.', 2, '2022-02-16 13:02:58', 78),
(392, 113, 61, 'Sergeli tumanida Respublika ta‘lim markazi jismoniy tarbiya metodesti va jismoniy tarbiya fani o\'qituvchilari o‘rtasida uchrashuv', 2, '2022-02-16 13:09:27', 78),
(393, 113, 61, 'Toshkent shahri Sergeli tumanida Umid nihollari sport tadbirlarida ishtirok etildi', 2, '2022-02-16 13:18:51', 78),
(394, 54, 52, 'YUNUSOBOD TUMANI 302-SONLI MAKTABDA  1-2-SINF DARSLIKLARI BO\'YICHA O\'RGANISH ISHLARI OLIB BORILDI\r\n', 2, '2022-02-16 13:29:41', 78),
(395, 54, 52, 'MINBAR KO\'RSATUVIDA QATNASHDIK', 2, '2022-02-16 13:32:19', 78),
(396, 54, 52, '6-SINF DARSLIGI UCHUN 2-BOB 1-MAVZUSI TAYYORLANDI', 2, '2022-02-16 13:33:58', 78),
(397, 38, 25, '16.02.2022 y.\r\nMaqola ustida ishlandi.\r\n60-maktab binosi ochilishida ishtirok etildi.\r\nMahalla studiyasi “Minbar” dasturida ishtirok etildi. \r\n', 2, '2022-02-16 13:53:35', 78),
(398, 19, 63, 'Kunlik bajarilgan ishlar ma\'lumot sifatida yuborilmoqda. ', 2, '2022-02-16 15:24:25', 78),
(399, 115, 61, 'Texnologiya fani to‘garak mashg‘uloti rahbarlari (o‘qituvchi va o‘quvchilar) uchun tanlov baholash mezonlari tayyorlandi\r\n', 2, '2022-02-16 17:13:20', 83),
(400, 62, 61, 'Dessertatsiya ishi himoasi mavzusi olgan bali ilovada berilgan', 2, '2022-02-17 03:55:49', 57),
(401, 62, 61, 'https://t.me/rtmedu_news/2474     Filologiya, Standart va baholash bo\'limi bilan hamkorlikda', 2, '2022-02-17 03:58:11', 61),
(402, 62, 61, 'Barcha 14 ta hudud ustozlari ma\'lumotlari olindi va guruh shakllantirildi', 2, '2022-02-17 04:13:59', 99),
(403, 62, 61, 'To\'garak rahbarlari baholash mezonlari ishlab chiqildi', 2, '2022-02-17 04:17:52', 78),
(404, 62, 61, '06-3 XDFU xat 2 band ijrosi bo\'yicha material tayyorlandi ', 2, '2022-02-17 04:20:55', 78),
(405, 112, 61, 'Ж,Эшмурадовни \"Тарбия\"фанидан ўқитувчилар учун методик қўлланмасини кўриб тавсиялар бердим.', 2, '2022-02-17 04:39:42', 78),
(406, 112, 61, 'Обиддин Махмудов билан \"Тарбия\" фанини антологиясини яратиш борасида сухбатлашдик .', 2, '2022-02-17 04:49:32', 78),
(407, 68, 61, 'мажлис', 2, '2022-02-17 05:58:49', 78),
(408, 68, 61, '6синф дарслиги', 2, '2022-02-17 05:59:33', 78),
(409, 68, 61, 'макет тайёр ва таржимага топширилди', 2, '2022-02-17 06:02:14', 85),
(410, 68, 61, 'муаллифлар билан иш жараёни', 2, '2022-02-17 06:07:48', 78),
(411, 62, 61, 'O\'qituvchilar uchun - ma\'naviyat soatlarida o\'tish uchun tavsiya', 2, '2022-02-17 06:29:49', 100),
(412, 62, 61, 'Mualliflar jamoasi shakllantirildi va ma\'lumotlari olindi', 2, '2022-02-17 06:35:22', 33),
(413, 62, 61, 'Dastur Konspesiyasi, kompitensiyalari takomillashtirilmoqda', 2, '2022-02-17 07:13:21', 32),
(414, 106, 61, '5 sinf darsligi 3 bobi bo\'yicha yangi ma\'lumotlar to\'plandi', 2, '2022-02-17 09:28:18', 78),
(415, 106, 61, 'Qarshi davlat universitetining mustaqil tadqiqotchisi Yarmanova Yulduz Buriyevnaning “Jamoaviy munosabatlar asosida o‘quvchilarning ijtimoiy-madaniy adaptatsiyasini shakllantirish metodikasini takomillashtirish (boshlang‘ich sinf o‘quvchilari misolida)” mavzusidagi pedagogika fanlari bo‘yicha falsafa doktori (PhD) ilmiy darajasini olish uchun tayyorlagan dissertatsiya ishi ilmiy natijalarining amaliyotga joriy etilganligi to\'g\'risida ma\'lumot tayyorlandi\r\n', 2, '2022-02-17 10:16:18', 78),
(416, 115, 61, 'Texnologiya fani 3-sinf yangi darsligining 3 ta bobidan testlar tayyorlandi. ', 2, '2022-02-17 11:00:10', 78),
(417, 112, 61, 'Xulosa berildi', 2, '2022-02-17 12:34:37', 27),
(418, 112, 61, 'Mobil guruh ro\'yxat qilindi', 2, '2022-02-17 12:36:30', 99),
(419, 65, 61, 'RTM direktorining 5-sonli yig‘ilishida belgilangan vazifalar yuzasidan bo`lim hisobot tayyorlandi.', 2, '2022-02-17 12:40:39', 78),
(420, 65, 61, 'RTM direktorining 4-sonli yig‘ilishida belgilangan vazifalar yuzasidan bo`lim hisobot tayyorlandi.', 2, '2022-02-17 12:41:08', 78),
(421, 65, 61, 'Tayanch o‘quv reja bo‘yicha maktablarda Tarix fanini o`qitilishi yuzasidan o`quv soatlariga takliflar berildi.', 2, '2022-02-17 12:44:47', 78),
(422, 65, 61, 'Yangi ishlab chiqilayotgan 7-sinf jahon tarixi darsligidagi rasmlar bo`yicha dizayner bilan yangi rasmlar qidirilib, mavzularga mos tanlandi.', 2, '2022-02-17 12:48:51', 38),
(423, 65, 61, '7-sinf Jahon tarixi qo`lyozmasiga xaritalar joylashtirish uchun xaritalar takomillashtirildi.', 2, '2022-02-17 12:51:16', 38),
(424, 115, 61, 'Texnologiya fani o‘qituvchilariga metodik yordam berish maqsadida https://t.me/ RTM_texnotajriba telegram guruhiga amaldagi darsliklardagi mavzularga oid ma’lumotlar, videoroliklar, tashlab borildi. O‘qituvchilar bilan hamkorlik qilindi.', 2, '2022-02-17 13:52:20', 78),
(425, 38, 25, '17.02.2022 y.\r\n\r\nDie Deutschprofis A1.1 darslik lug’ati tarjima qilindi.\r\nDie Deutschprofis A2.1 darslik lug’ati qisman tarjima qilindi.\r\nGermaniya elchixonasi tomonidan tashkil etilgan “Studienkolleg”ga bag’ishlangan zoomda ishtirok etildi. \r\nIMKga yangi nomzodlarni taklif etish ustida ishlandi. \r\nTajriba-sinov o‘tkazayotgan o‘qituvchilar bilan jarayon haqida fikr almashildi.  \r\n', 2, '2022-02-17 13:58:54', 78),
(426, 108, 61, 'Viloyatlarda Mobil guruhlar tashkil etildi ', 2, '2022-02-17 14:49:38', 78),
(427, 108, 61, '“Yangi O‘zbekiston taraqqiyot strategiyasi” kitobining mazmun-mohiyatini keng targ‘ib qilish bo‘yicha ishchi guruhiga nomzod berildi ', 2, '2022-02-17 14:50:46', 78),
(428, 108, 61, '“Yosh o‘qituvchilar assotsiatsiyasi” jamoat birlashmasi  haqida malumot berildi ', 2, '2022-02-17 14:51:35', 78),
(429, 68, 61, 'Графикачи рассом Патхилла Хаитов билан суҳбат ва 3 синф дарслигига қўйилган асарларининг оригиналлар ишларини кўздан кечириш жараёнлари. ', 2, '2022-02-17 14:54:08', 78),
(430, 114, 61, 'ИАР дастурига  хулоса  берилди', 2, '2022-02-17 15:20:17', 78),
(431, 114, 61, '14-бандга  мувофиқ', 2, '2022-02-17 15:24:40', 78),
(432, 114, 61, '9-бандга', 2, '2022-02-17 15:25:44', 78),
(433, 114, 61, 'Тўгаракка  таклиф', 2, '2022-02-17 15:26:30', 78),
(434, 52, 63, 'Aniq va tabiiy fanlar zakovatga takliflar', 3, '2022-02-18 05:49:42', 24),
(435, 106, 61, '212-sonli ma\'lumotnoma bajarildi', 2, '2022-02-18 12:14:45', 78),
(436, 106, 61, 'Umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining innovatsion pedagogik texnologiyalar va interfaol usullarda dars o’tishi, pedagogik mahoratni oshirish, axborot texnologiyalarini amaliyotga joriy etishda o’qituvchilarning kasbiy mahoratini oshirishga yordam ko’rsatish maqsadida 9-sinf O\'zbekiston tarixidan nazorat ishi Respublika ta\'lim markazi kanaliga qo\'yildi', 2, '2022-02-18 12:19:39', 78),
(437, 106, 61, 'Umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining mahoratini oshirishga yordam ko’rsatish maqsadida 9-sinf O\'zbekiston tarixidan mashq daftari Respublika ta\'lim markazi kanaliga qo\'yildi', 2, '2022-02-18 12:20:54', 78),
(438, 106, 61, 'Umumiy o’rta ta’lim maktablarida faoliyat ko’rsatayotgan tarix fani o’qituvchilarining mahoratini oshirishga yordam ko’rsatish maqsadida 9-sinf O\'zbekiston tarixidan Metodik qo\'llanma Respublika ta\'lim markazi kanaliga qo\'yildi', 2, '2022-02-18 12:21:33', 78),
(439, 65, 61, '7-sinf jahon darsligiga kerakli rasmlar saralandi va dizaynerga yuborildi', 2, '2022-02-18 12:22:23', 38),
(440, 112, 61, 'Она табиатни асрашни синфлар кесимида ёритиб бериш,Экологияга оид масалалар тарбия, ҳуқуқ,тасвирий санъат дарсликларига сингдирилган', 2, '2022-02-18 13:11:31', 78),
(441, 112, 61, 'Ўқувчи ёшларга оила ,маданият ва тарбия масалаларини синфлар хамда фанлар кесимида кўрсатиб бериш.Жамиятда оиланинг ўрни ҳақида тушунчалар бериш.', 2, '2022-02-18 13:17:52', 78),
(442, 115, 61, 'Nasrullayeva Fatima Azatovna\r\n Alovddinova Nilufar Mansurovna\r\nSanakulov Xamrakul Rizakulovich\r\n(mualliflar)\r\n3-sinf Texnologiya fani Metodik qo\'llanmasining qo\'lyozmasi o\'z muddatida topshirildi.\r\n', 2, '2022-02-18 13:21:38', 85),
(443, 112, 61, 'Тарбия  фанида ўқувчиларнинг ҳуқуқий саводхонлигини ошириш юзасидан синфлар кесимида тушунчалар берилган ', 2, '2022-02-18 13:22:43', 78),
(444, 115, 61, '3-sinf Texnologiya fani Metodika qo\'lyozmasi o\'z muddatida tayyorlandi va bildirgi asosida darslik bo\'limiga topshirildi. \r\n', 2, '2022-02-18 13:25:13', 78),
(445, 112, 61, 'Қашкадарё вилояти ўқитувчиси Ж. Эшмуродовнинг Тарбия дарсларида янги педагогик технологияларидан фойдаланишга оид методик тавсиясига хулоса берилди', 2, '2022-02-18 13:29:12', 93),
(446, 115, 61, '3-sinf  Texnologiya  mashq daftari hamda o\'quv metodik qo\'llanmasining qo\'lyozmasi tayyor bo\'lganligi va mana shu qo\'lyozmalarni ko\'rib chiqib xulosa tayyorlash maqsadida 19.02.2022 kuni navbatdan tashqari IMK o\'tkazilishi rejalashtirildi. Mana shu munosabat bilan IMK kun tartibi ishlab chiqildi va ilmiy metodik a\'zolari ogohlantirildi. ', 2, '2022-02-18 13:33:19', 30),
(447, 16, 63, 'KUNLIK QILINGAN ISHLAR', 2, '2022-02-18 13:40:29', 78),
(448, 38, 25, '17.02.2022 y.\r\n3-sinf mashq daftari so’ngi betlari uchun materiallar muhokama qilindi.\r\nDie Deutschprofis A2.1 darslik lug’ati qisman tarjima qilindi.\r\nMO‘D ustida ishlandi (Tinglab tushusnish qismi)\r\n', 2, '2022-02-18 14:18:20', 78),
(449, 19, 63, 'Uchrashuv bo\'yicha ma\'lumot qoldirilyapti.', 3, '2022-02-18 14:43:21', 78),
(450, 21, 52, 'Mobil guruhlar tashkil qilish bo\'yicha takliflar', 2, '2022-02-18 16:22:08', 103),
(451, 21, 52, 'Kartografiya davlat  ilmiy-ishlab chiqarish korxonasiga atlaslarni qayta nashrga chiqarish bo\'yicha', 2, '2022-02-18 16:29:28', 65),
(452, 21, 52, 'Andijon viloyati o\'qituvchisini darslik yaratishda amaliy yordam so\'rashi haqida', 1, '2022-02-18 16:32:00', 78),
(453, 21, 52, 'fransiya davlatining o\'qituvchi kitobi bilan tanishib chiqildi.', 2, '2022-02-18 16:39:28', 61),
(454, 19, 63, '2022-yil 31-yanvardan 19-fevralgacha haftalik ish rejalari va hisobotlari ma\'lumot uchun yuborilmoqda.', 2, '2022-02-19 06:55:21', 78),
(455, 14, 22, '7 fevralda amalga oshirilgan ishlar yuzasidan kunlik hisobot ', 2, '2022-02-19 07:35:16', 78),
(456, 116, 52, 'Toshkent viloyati Oqqo\'rg\'on tumani 31 maktab o\'qituvchilari uchun', 2, '2022-02-19 10:53:27', 26),
(457, 116, 52, 'O\'quvchilar bilan ishlash tizimi \"Axborot tushunchasi, Sun\'iy intellekt tushunchalar\" haqida suhbarlar va ochiq darslar tashkil etildi', 2, '2022-02-19 10:56:56', 39),
(458, 116, 52, 'Cambridge darsligi 5-sinf o‘rganilmoqda', 2, '2022-02-19 11:01:58', 32),
(459, 116, 52, 'Cambridge darsligi 5-sinf o‘rganilmoqda', 2, '2022-02-19 11:02:13', 32),
(460, 116, 19, 'Cambridge darsligining 5-sinfini ko\'rish', 2, '2022-02-19 11:05:35', 32),
(461, 116, 52, 'O‘zbekiston Respublikasi Xalq ta’limi vazirining 2021-yil 10-noyabrdagi “Informatika va axborot texnologiyalari fani o‘qituvchilarini dasturlash tillari bo‘yicha malaka ko‘nikmalarini shakllantirishni samarali tashkil etish to‘g‘risida”gi 367-sonli buyrug‘i ijrosini ta’minlash qolaversa attestatsiya jarayonlariga tayyorgarlik ko‘rish maqsadida joriy yilning 18-fevral kuni Respublika ta’lim markazi informatika va axborot texnologiyalari fani metodisti, Navoiy viloyati va Toshkent viloyati aniq fanlar metodistlari hamkorlikda Toshkent viloyati informatika va axborot texnologiyalari fani o‘qituvchilari o‘rtasida Python va C++ dasturlash tillari bo‘yicha onlayn olimpiada o‘tkazmoqda. \r\nOlimpiada jarayonlarini \r\nhttp://meet.google.com/knk-drrq-tms ushbu link orqali kuzatishingiz mumkin.', 2, '2022-02-19 11:07:43', 94),
(462, 116, 52, '#Fan_oyligi\r\nO\'qituvchilar o\'rtasida dasturlash bo\'yicha onlayn-olimpiada o\'tkazildi\r\n\r\n????Fevral “Aniq fanlar (matematika va informatika va AT) fan oyligi” doirasida Navoiy viloyati o‘qituvchilar o\'rtasida  dasturlash (Python  va C++) tillari bo‘yicha onlayn tartibda viloyat fan olimpiadasi tashkil etildi.\r\n\r\n????Navoiy viloyat xalq ta’limi boshqarmasi bilan hamkorlikda  o\'tkazilgan  mazkur olimpiadada   400 nafarga yaqin informatika va AT fani o‘qituvchilari ishtirok etdi.\r\n\r\n????O\'qituvchilarda zamonaviy dasturlash tillari bo‘yicha  ko‘nikmalarini rivojlantirishga qaratilgan olimpiada shartiga ko‘ra, 10 ta amaliy masalaga 240 minut vaqt ajratildi. Yakunda 50 nafarga yaqin pedagoglar 10 ta masalani ishlab 100 balni qo‘lga kiritishdi. ', 2, '2022-02-19 11:11:52', 32),
(463, 116, 52, 'Media ta\'lim togarak mashg\'ulotlari o‘quv dasturi', 2, '2022-02-19 11:37:47', 38),
(464, 115, 61, '7-sinf Texnologiya darsligiNI dizayn bo\'limining qo\'yozmasi ko\'rib chiqildi xulosa qilindi', 2, '2022-02-19 13:17:06', 85),
(465, 115, 61, 'Texnologiya darsliklarining tayyorlanish holati, jarayonlari haqida hisobot berildi. ', 2, '2022-02-21 04:50:15', 78),
(466, 103, 63, 'Стандарт ва баҳолаш бўлими методисти \r\nЭ.Назаралиеванинг  2021 йил 4-чи чорак (15- декабрдан) иш режаси бўйича  бажарилган ишлар мониторинги\r\n', 3, '2022-02-21 06:51:17', 32),
(467, 103, 63, 'Стандарт ва баҳолаш бўлими методисти \r\nЭ.Назаралиеванинг  2021 йил 4-чи чорак (декабрь ойи) иш режаси бўйича қилинган ишлар мониторинги\r\n', 3, '2022-02-21 06:59:08', 32),
(468, 58, 63, '2021 йилнинг  4 чорак  давомида бажарилган ишлар ҳисоботи', 2, '2022-02-21 07:09:38', 65),
(469, 112, 61, 'Ўқувчиларга бу тақдимот орқали дўстлик,меҳр-мурувват ғояларини тарғиб қилиш сингдирилади', 2, '2022-02-21 11:08:25', 78),
(470, 14, 22, 'Murojaatchi, Qashqadaryo viloyati Chiroqchi tumani 17-sonli umumta’lim maktabi o‘qituvchisi B.Rustamovning 16.02.2022 yilidagi kelib tushgan\r\n05-05/3-173 - sonli xatiga javob xati bo\'lim boshlig\'i Feruza Olimovaga taqdim qilindi. Qayta tahrirlanib javob xati qayta ko\'rildi. \r\n', 3, '2022-02-21 11:12:51', 78),
(471, 14, 22, 'MASOFAVIY TA’LIM JARAYONLARIDA VEBINAR MASHG‘ULOTLARNI TASHKILLASHTIRISH METODOLOGIYASI nomli metodik qo\'llanmani yozish davom ettirilib, ww.ru platformasi imkoniyatlari haqida yozish ishlari boshlandi. Bunda albatta platformaning Webinar \r\n\r\nhttps://webinar.ru/products/westudy/, \r\nhttps://webinar.ru/products/webinar/\r\nhttps://webinar.ru/products/meetings/\r\nhttps://webinar.ru/products/comdi/ \r\n\r\nxususiyatlari o\'rganildi. ', 2, '2022-02-21 11:18:20', 94),
(472, 14, 22, 'Bilimland.uz elektron platformaning O\'quv dasturlariga mos yoki mos emaligini inobatga olib Xulosa berish maqsadida www.bilimland.uz kompaniyasini vakilasi Abslyamova G. M dan kelib tushgan xat ijrosi ta\'minlanmoqda ', 3, '2022-02-21 11:23:01', 38),
(473, 21, 52, '3-sinf dasturida o\'zgarishlar kiritildi', 1, '2022-02-21 12:41:01', 78),
(474, 112, 61, 'Яккасарой тумани 100-умумтаълим мактабида Ўқитувчилар ўртасида заковат интелтуал ўйини  ўтказилди', 2, '2022-02-21 12:53:43', 78),
(475, 38, 25, '18.02.2022 y.\r\n3-sinf mashq daftari so’ngi betlari uchun matriallar muhokama qilindi.\r\nDie Deutschprofis A2.1 darslik lug’ati qisman tarjima qilindi.\r\nMO‘D ustida ishlandi (Tinglab tushunish qismi).\r\n\r\n21.02.2022 y.\r\nMO‘D ustida ishlandi (Bog‘liqli nutq, yozish qismi).\r\n3-sinf mashq daftarida muharrir va musahhihdan keyingi o‘zgartirishlar kiritildi. \r\n\r\n', 2, '2022-02-21 14:02:22', 78),
(476, 19, 63, 'Haftalik ish reja', 2, '2022-02-21 14:44:20', 78),
(477, 16, 63, 'kunlik ishlar', 2, '2022-02-21 14:49:04', 78),
(478, 115, 61, '7-sinf Texnologiya fani darsligi mualliflari bilan darslik yuzasidan tayyorlangan mavzular qo‘lyozmasini birma-bir katta ekranda ko’rib tahlil qilindi. Kamchiliklar, yetishmagan ma’lumotlar belgilab olindi va ayrim mavzularni qayta ishlashga kelishib olindi. Darslikni sahifalashga berishdan oldin barcha mualliflar kelib yana bir bor barcha mavzularni tahlil qilishga kelishildi. Qo‘lyozma tahlili juda mazmunli, samarali bo’lib o‘tdi. ', 2, '2022-02-21 15:40:18', 85),
(479, 108, 61, '7-sinf mualliflari bilan ish jarayoni ', 2, '2022-02-21 16:11:49', 35),
(480, 108, 61, '7-sinf jahon  mualliflari bilan ishlash jarayoni ', 2, '2022-02-21 16:16:41', 78),
(481, 65, 61, 'Янгидан яратилаётган Тарих дарсликлари учун халқаро таълим тажрибасини ўрганган ҳолда АР бўйича талаблар ишлаб чиқилди.', 2, '2022-02-21 16:25:34', 88),
(482, 65, 61, '7-sinf Jahon tarixi darsligi mualliflari bilan mavzular yuzasidan mobil ilovani yaratish yuzasidan videochatda muhokama o‘tkazildi.', 2, '2022-02-21 16:27:43', 85),
(483, 115, 61, 'Yakkasaroy tumani 100-maktabiga ochiq eshiklar kuniga borildi. Maktabda \r\n5g-sinfda TEXNOLOGIYA darsiga kirildi. Dars mavzusi \"Chok turlaridan namunalar tikish\" bo\'yicha  amaliy mashg\'ulot  tashkil qilindi. Dars ko\'rgazmali tashkil qilingan bo\'lib o\'quvchilar maxsus kiyimda va  hammasida kashta tikish uchun ish qurollari mavjud. Darsning tashkil qilinishi DTS talablariga mos keladi. ', 2, '2022-02-22 09:27:56', 39),
(484, 62, 61, 'Metodik tavsiyalar berildi rasmlar ilova qilindi\r\n', 2, '2022-02-22 10:15:17', 39),
(485, 62, 61, 'Umumiy o\'rta ta\'lim bilan metodik hamkorlik\r\n', 2, '2022-02-22 10:23:10', 65),
(486, 112, 61, 'Якка сарой тумани  100-умумтаълим мактабида методик ёрдам кўрсатилди', 2, '2022-02-22 10:34:17', 78),
(487, 112, 61, 'Туйғулар хилма-хиллиги мавзусида ўқитувчиларга методик ёрдам борасида мақдимот таёрланди', 3, '2022-02-22 10:40:04', 78),
(488, 112, 61, 'Туйғулар хилма-хиллиги мавзусида ўқитувчиларга методик ёрдам борасида мақдимот таёрланди', 3, '2022-02-22 10:40:12', 78),
(489, 112, 61, 'Туйғулар хилма-хиллиги мавзусида ўқитувчиларга методик ёрдам борасида мақдимот таёрланди', 3, '2022-02-22 10:42:05', 78),
(490, 112, 61, 'Tarbiya fanidsan o‘quvchilarda mehr oqibat do\'stlik kabi tushunchalarni bu mavzuda yotildi', 3, '2022-02-22 10:43:39', 78),
(491, 112, 61, 'Ўқувчиларга мехр-оқибат,дўстлик,саховат тушунчаларни тушунтириш', 3, '2022-02-22 10:54:01', 78),
(492, 58, 22, 'Биринчи масалани ўтказилган шаклида ёздим', 3, '2022-02-22 12:08:37', 78),
(493, 103, 22, 'Umumta\'lim maktablari uchun 2022-2023 o\'quv yiliga chop etilishi rejalashtirilgan 10-sinf Geografiya (Jahon mamlakatlariniing iqtisodiy va ijtimoiy geografiyasi) darsligining birinchi varianti ko\'rib chiqilmoqda.\r\n', 2, '2022-02-22 12:38:50', 78),
(494, 17, 63, 'Kunlik bajarilgan ishlar', 3, '2022-02-22 12:48:15', 78),
(495, 17, 63, 'Kunlik nazorat kartochkasi', 3, '2022-02-22 12:49:13', 78),
(496, 38, 25, '22.02.2022 y.\r\n3-sinf mashq daftari metodist tekshiruvidan o‘tdi, topilgan xatoliklar tuzatildi va taqrizga jo‘natish uchun darslik bo\'limiga topshirildi. \r\nMO‘D ustida ishlandi (Til vositasi qismi).\r\nMualliflar taqdim etgan metodika bo‘yicha qo‘lyozmalar mavzular kesimida tekshirildi, kamchiliklar mualifflarga yetkazildi, metodika konsepsiyasida bir xillik masalasida muhoka o‘tkazildi. \r\n', 2, '2022-02-22 13:10:30', 78),
(497, 57, 22, 'мақола Учитель Узбекистана газетасининг 18 февраль сонида чоп этилган ', 2, '2022-02-22 13:19:46', 78),
(498, 38, 25, '22.02.2022 y.\r\n3-sinf mashq daftari metodist tekshiruvidan o‘tdi, topilgan xatoliklar tuzatildi va taqrizga jo‘natish uchun darslik bo‘limiga topshirildi. \r\nMO‘D ustida ishlandi (Til vositasi qismi).\r\nMualliflar taqdim etgan metodika bo‘yicha qo‘lyozmalar mavzular kesimida tekshirildi, kamchiliklar mualifflarga yetkazildi, metodika konsepsiyasida bir xillik masalasida muhoka o‘tkazildi. \r\n', 2, '2022-02-22 13:41:07', 78),
(499, 16, 63, 'kunlik ishlar', 2, '2022-02-22 14:41:14', 78),
(500, 115, 61, 'Texnologiya fani tajribali o\'qituvchilari bilan hamkorlikda ish olib borilmoqda. Darslik mavzulari yuzasidan taqdimotlar tayyorlanib https://t.me/rtmedu_news telegram rasmiy kanaliga joylab borilmoqda.', 3, '2022-02-22 14:41:38', 78),
(501, 115, 61, 'Texnologiya fani tajribali o\'qituvchilari bilan hamkorlikda ish olib borilmoqda. Darslik mavzulari yuzasidan taqdimotlar tayyorlanib https://t.me/rtmedu_news telegram rasmiy kanaliga joylab borilmoqda.', 3, '2022-02-22 14:41:49', 78),
(502, 115, 61, 'Texnologiya fani tajribali o\'qituvchilari bilan hamkorlikda ish olib borilmoqda. Darslik mavzulari yuzasidan taqdimotlar tayyorlanib https://t.me/rtmedu_news telegram rasmiy kanaliga joylab borilmoqda.', 3, '2022-02-22 14:42:36', 78),
(503, 115, 61, 'Texnologiya fani tajribali o\'qituvchilari bilan hamkorlikda ish olib borilmoqda. Darslik mavzulari yuzasidan taqdimotlar tayyorlanib https://t.me/rtmedu_news telegram rasmiy kanaliga joylab borilmoqda.', 3, '2022-02-22 14:43:24', 78),
(504, 115, 61, 'Texnologiya fani tajribali o\'qituvchilari bilan hamkorlikda ish olib borilmoqda. Darslik mavzulari yuzasidan taqdimotlar tayyorlanib https://t.me/rtmedu_news telegram rasmiy kanaliga joylab borilmoqda.', 3, '2022-02-22 14:43:29', 78),
(505, 19, 63, 'Kunlik ma\'lumot yuborilmoqda', 2, '2022-02-22 14:46:57', 78),
(506, 62, 61, 'Darslik masalasida XTV ma\'sullari bilan uchrashuvda ishtirok etildi', 2, '2022-02-22 14:49:35', 78),
(507, 62, 61, 'Kasbga yo\'naltirish bo\'yicha metodik ishlar amalga oshirildi', 2, '2022-02-22 14:52:16', 61),
(508, 62, 61, 'Baholash va standartlash bo\'limi , Filologiya bo\'limi bilan \"Yangi fikr\" tanlovi ', 2, '2022-02-22 14:53:56', 61),
(509, 68, 61, 'Тасвирий санъат 7 синф муаллифлари ва дизайн бўлими мутахассислари билан дарслик устида қизғин мунозара.', 3, '2022-02-22 16:25:59', 78),
(510, 68, 61, 'Тасвирий санъат 7 синф муаллифлари ва дизайн бўлими мутахассислари билан дарслик устида қизғин мунозара.', 2, '2022-02-22 16:26:11', 78),
(511, 65, 61, 'Ilmiy tadqiqotlar sammitida maqola bilan ishtirok etildi.', 3, '2022-02-23 04:24:51', 50),
(512, 65, 61, 'Ilmiy tadqiqotlar sammitida maqola bilan ishtirok etildi.', 3, '2022-02-23 04:25:00', 50),
(513, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-23 04:26:32', 50),
(514, 112, 61, 'Ўқувчиларгда мехр-мухаббат,саховат,дустлик каби тушунчаларни шакллантириш', 3, '2022-02-23 04:28:16', 78),
(515, 112, 61, 'Ўқувчиларгда мехр-мухаббат,саховат,дустлик каби тушунчаларни шакллантириш', 3, '2022-02-23 04:28:36', 78),
(516, 111, 61, 'sasas', 3, '2022-02-23 10:28:17', 102),
(517, 65, 61, 'Umumta\'lim fanlarini o‘qitish yuzasidan bo`limning rasmiy kanalida metodik tavsiya berildi. https://t.me/rtmedu_news/2520', 3, '2022-02-23 11:04:32', 83),
(518, 115, 61, 'Transformers Education o‘quv markazida Robototexnika va Mexatronika bo‘yicha o‘qituvchi tayyorlash bazaviy kursini muvoffaqiyatli tamomlagan o‘qituvchilarni munosib taqdirlash uchun amaliyotchi-o‘qituvchilarga sertifikat berish, ularni rag\'batlantirish maqsadida bildirgi tayyorlandi.', 2, '2022-02-23 12:55:05', 78),
(519, 17, 63, 'Kunlik bajarilgan ish', 2, '2022-02-23 13:03:30', 78),
(520, 17, 63, 'Monitoring tahlil - nazorat kartochkasi', 3, '2022-02-23 13:04:50', 78),
(521, 115, 61, '3-sinf Texnologiya fani darsligi qardosh tillar tarjimonlari bilan ishlandi. Tarjimon darslik matnlarida tushunmagan jumlalarni Qoraqalpoq tiliga tarjima qilishda amaliy yordam berildi. Boshqotirmalar javoblari yozib berildi. Tarjima qilinganda ma’nosi o‘zgaruvchi so‘zlarni to‘g‘ri, aniq o‘qituvchi va o‘quvchi tushunadigan tarzda tarjima qilishga harakat qilindi. Tarjima ishlarini bajarish jarayonida darslik muallifi bilan ham bog’lanib fikr almashildi', 3, '2022-02-23 13:08:19', 78),
(522, 115, 61, '3-sinf Texnologiya fani darsligi qardosh tillar tarjimonlari bilan ishlandi. Tarjimon darslik matnlarida tushunmagan jumlalarni Qoraqalpoq tiliga tarjima qilishda amaliy yordam berildi. Boshqotirmalar javoblari yozib berildi. Tarjima qilinganda ma’nosi o‘zgaruvchi so‘zlarni to‘g‘ri, aniq o‘qituvchi va o‘quvchi tushunadigan tarzda tarjima qilishga harakat qilindi. Tarjima ishlarini bajarish jarayonida darslik muallifi bilan ham bog’lanib fikr almashildi', 3, '2022-02-23 13:08:29', 78),
(523, 115, 61, ' Texnologiya fanidan servis yo\'nalishi bo\'yicha 40 ta test tayyorlandi.', 2, '2022-02-23 13:16:05', 78),
(524, 115, 61, 'Texnologiya fani darsliklaridan DIZAYN yo\'nalishi bo\'yicha 40 ta test tayyorlandi', 2, '2022-02-23 13:19:34', 78),
(525, 115, 61, '3-sinf Texnologiya fani darsligi, mashq daftari, o\'quv metodik qo\'llanma mualliflari bilan o\'z\'aro kelishilgan holda DALOLATNOMA tayyorlandi.  ', 2, '2022-02-23 13:26:29', 78),
(526, 38, 25, '23.02.2022 y.\r\nMO‘D ustida ishlandi. \r\nO‘qituvchilarning o‘quvchilarga nisbatan qo‘llashi mumkin bo‘lgan choralari mavzusida Xalq ta’limi vazirligining navbatdagi matbuot anjumani onlayt kuzatildi. \r\nNemis tili xalqaro olimpiadasi haqida maqola tayyorlandi. \r\n', 2, '2022-02-23 14:17:24', 78),
(527, 114, 61, '3-  синф мусиқа  маданияти  фанига  оригинал варианти машқ  дафтари  қўлёзмаси  устида  ишланди', 3, '2022-02-23 14:24:08', 85),
(528, 114, 61, '3-  синф мусиқа  маданияти  фанига  оригинал варианти машқ  дафтари  қўлёзмаси  устида  ишланди', 3, '2022-02-23 14:24:28', 85),
(529, 114, 61, '3-  синф мусиқа  маданияти  фанига  оригинал варианти машқ  дафтари  қўлёзмаси  устида  ишланди', 3, '2022-02-23 14:24:37', 85),
(530, 54, 52, 'Kimyo fani boʻyicha oʻqituvchilar metodik faoliyatini takomillashtirish va tavsiya yaratish boʻyicha, Jizzax vilovati Sh.Rashidov tumanida tashkil etilgan Respublika seminarida ishtirok etildi\r\n', 2, '2022-02-23 16:10:15', 67),
(531, 54, 52, 'Jizzax viloyatida tashkil etilgan seminar', 2, '2022-02-23 16:12:54', 67),
(532, 54, 52, 'Jizzax viloyatida tashkil etilgan seminar', 2, '2022-02-23 16:13:06', 67),
(533, 54, 52, 'Surxondaryo viloyatida tashkil etilgan oʻquv-amaliy seminarda onlayn ishtirok etildi va tavsiyalar berildi', 2, '2022-02-23 16:21:26', 67),
(534, 54, 52, 'Surxondaryo viloyatida tashkil etilgan oʻquv-amaliy seminarda onlayn ishtirok etildi va tavsiyalar berildi', 2, '2022-02-23 16:21:29', 67),
(535, 54, 52, 'Surxondaryo viloyatida tashkil etilgan oʻquv-amaliy seminarda onlayn ishtirok etildi va tavsiyalar berildi', 2, '2022-02-23 16:21:31', 67),
(536, 54, 52, 'Surxondaryo viloyatida tashkil etilgan oʻquv-amaliy seminarda onlayn ishtirok etildi va tavsiyalar berildi', 2, '2022-02-23 16:22:02', 78),
(537, 54, 52, 'Surxondaryo viloyatida tashkil etilgan oʻquv-amaliy seminarda onlayn ishtirok etildi va tavsiyalar berildi', 2, '2022-02-23 16:22:34', 78),
(538, 54, 52, 'Surxondaryo viloyatida tashkil etilgan oʻquv-amaliy seminarda onlayn ishtirok etildi va tavsiyalar berildi', 2, '2022-02-23 16:22:35', 78),
(539, 54, 52, 'Surxondaryo viloyatida tashkil etilgan oʻquv-amaliy seminarda onlayn ishtirok etildi va tavsiyalar berildi', 2, '2022-02-23 16:22:36', 78),
(540, 54, 52, 'Surxondaryo viloyati XTB tomonidan tashkil etilgan seminarda ZOOM orqali qatnashildi', 2, '2022-02-23 16:26:06', 78),
(541, 54, 52, 'Surxondaryo viloyati XTB tomonidan tashkil etilgan seminarda ZOOM orqali qatnashildi', 1, '2022-02-23 16:26:08', 78),
(542, 54, 52, 'Surxondaryo viloyati XTB tomonidan tashkil etilgan seminarda ZOOM orqali qatnashildi', 1, '2022-02-23 16:26:09', 78),
(543, 54, 52, 'Surxondaryo viloyati XTB tomonidan tashkil etilgan seminarda ZOOM orqali qatnashildi', 1, '2022-02-23 16:26:10', 78),
(544, 54, 52, 'Surxondaryo viloyati XTB tomonidan tashkil etilgan seminarda ZOOM orqali qatnashildi', 1, '2022-02-23 16:26:11', 78),
(545, 102, 52, 'Миллий физика танловини ўтказиш Низоми', 2, '2022-02-24 04:46:56', 95),
(546, 102, 52, 'Миллий физика танловини ўтказиш Низоми', 2, '2022-02-24 04:47:01', 95),
(547, 21, 52, '23-fevral 2022-yilda Yunusobod tumani 273-maktabda seminar-trening bo\'lib o\'tdi', 2, '2022-02-24 04:54:29', 39),
(548, 21, 52, 'Yunusobod tumani 273-maktabda seminar-trening bo\'lib o\'tdi', 2, '2022-02-24 04:55:57', 39),
(549, 21, 52, 'Yunusobod tumani 273-maktabda seminar-trening bo\'lib o\'tdi', 2, '2022-02-24 04:56:14', 39),
(550, 54, 52, 'kimyo fanidan toʻgarak tanlovini oʻtkazish', 2, '2022-02-24 04:58:02', 24),
(551, 54, 52, 'kimyo fanidan toʻgarak tanlovini oʻtkazish', 2, '2022-02-24 04:58:06', 24),
(552, 54, 52, 'kimyo fanidan toʻgarak tanlovini oʻtkazish', 2, '2022-02-24 04:58:07', 24),
(553, 54, 52, 'kimyo fanidan toʻgarak tanlovini oʻtkazish', 2, '2022-02-24 04:58:08', 24),
(554, 54, 52, 'Motevatsiya boʻyicha maʻruza matni', 2, '2022-02-24 05:11:19', 97),
(555, 54, 52, 'Motevatsiya boʻyicha maʻruza matni', 2, '2022-02-24 05:11:29', 97),
(556, 108, 61, '7-sinf jahon tarixi mualliflari bilan ishlash jarayoni ', 3, '2022-02-24 09:37:42', 78),
(557, 108, 61, '7-sinf jahon tarixi mualliflari bilan ishlash jarayoni ', 3, '2022-02-24 09:38:02', 78),
(558, 108, 61, 'Qaraqalpog\'iston R  tumanlarida Mobil huruhlar tashkil etildi ', 3, '2022-02-24 09:50:16', 99),
(559, 108, 61, 'Qaraqalpog\'iston R  tumanlarida Mobil guruhlar tashkil etildi ', 3, '2022-02-24 09:50:41', 99),
(560, 108, 61, 'Qaraqalpog\'iston Respublikasi   tumanlarida joylashgan maktaklarda  Mobil guruhlar tashkil etildi ', 3, '2022-02-24 09:51:31', 99),
(561, 65, 61, 'Ilmiy tadqiqotlar sammitida qatnashildi', 3, '2022-02-24 12:52:46', 50),
(562, 65, 61, 'Ilmiy tadqiqotlar sammitida qatnashildi', 3, '2022-02-24 12:52:55', 50),
(563, 65, 61, 'Ilmiy tadqiqotlar sammitida qatnashildi', 3, '2022-02-24 12:52:59', 50),
(564, 17, 63, 'Kunlik bajarilgan ishlar', 2, '2022-02-24 12:53:02', 78),
(565, 17, 63, 'Kunlik monitoring - Nazorat kartochkasi', 3, '2022-02-24 12:54:03', 78),
(566, 17, 63, 'Kunlik monitoring - Nazorat kartochkasi', 3, '2022-02-24 12:54:16', 78),
(567, 17, 63, 'Kunlik monitoring', 3, '2022-02-24 12:54:26', 78),
(568, 17, 63, 'Nazorat kartochkasi-monitoring', 3, '2022-02-24 12:55:11', 78),
(569, 115, 61, '3-sinf Texnologiya fani darsligi qardosh tillar tarjimasi bo\'yicha Qoraqalpoq tili tarjimoni bilan ishlandi. Tarjima qilinganganda ma\'nosi o\'zgaradigan matnlar, kasb nomlari haqida gaplashildi. Tarjimon tushunmagan so\'zlarni tarjima qilishda amaliy yordam berildi ', 3, '2022-02-24 13:07:07', 78),
(570, 115, 61, '3-sinf Texnologiya fani darsligi qardosh tillar tarjimasi bo\'yicha Qoraqalpoq tili tarjimoni bilan ishlandi. Tarjima qilinganganda ma\'nosi o\'zgaradigan matnlar, kasb nomlari haqida gaplashildi. Tarjimon tushunmagan so\'zlarni tarjima qilishda amaliy yordam berildi ', 2, '2022-02-24 13:07:12', 78),
(571, 115, 61, '3-sinf Texnologiya fani darsligi qardosh tillar tarjimasi bo\'yicha Qoraqalpoq tili tarjimoni bilan ishlandi. Tarjima qilinganganda ma\'nosi o\'zgaradigan matnlar, kasb nomlari haqida gaplashildi. Tarjimon tushunmagan so\'zlarni tarjima qilishda amaliy yordam berildi ', 2, '2022-02-24 13:07:38', 78),
(572, 112, 61, 'Ўқувчиларга туйғулар хилма хиллигини хаётий куникмалар билан тушунтириш', 3, '2022-02-24 13:11:50', 78),
(573, 38, 25, '24.02.2022 y.\r\nMO‘D ustida ishlandi. (talaffus va intonatsiya qismi)\r\n8-sonli ishlab chiqarish yig‘ilishida ishtirok etildi.\r\nDie Deutschprofis A2.1 darslik lug‘ati rus tiliga qisman tarjima qilindi. (A-B-C-D)\r\nMashq daftarlarini taqrizga berish bo‘yicha xat tayyorlandi. \r\n', 2, '2022-02-24 13:12:20', 78),
(574, 38, 25, '24.02.2022 y.\r\nMO‘D ustida ishlandi. (talaffus va intonatsiya qismi)\r\n8-sonli ishlab chiqarish yig‘ilishida ishtirok etildi.\r\nDie Deutschprofis A2.1 darslik lug‘ati rus tiliga qisman tarjima qilindi. (A-B-C-D)\r\nMashq daftarlarini taqrizga berish bo‘yicha xat tayyorlandi. \r\n3-sinf Nemis tili darsligi tajriba-sinov o‘qituvchilari bilan bog‘lanildi va vaziat haqida ma’lumot olindi. \r\n', 2, '2022-02-24 13:15:49', 78),
(575, 54, 52, 'Magestrlik ishi himoyasi', 2, '2022-02-24 15:35:53', 96),
(576, 54, 52, 'Magestrlik ishi himoyasi', 2, '2022-02-24 15:35:56', 96),
(577, 111, 61, 'sass', 3, '2022-02-25 04:37:47', 33),
(578, 112, 61, 'Тошкент шахри мактабларини тарбия фани ўқитувчилари билан ўқитувчиларга методик ёрдам бериш мухокаси килинди', 2, '2022-02-25 04:38:26', 78),
(579, 111, 61, 'sasaas', 3, '2022-02-25 04:39:22', 26),
(580, 111, 61, 'sasaas', 3, '2022-02-25 04:40:27', 26),
(581, 111, 61, 'asasas', 3, '2022-02-25 04:40:50', 26),
(582, 111, 61, 'asasasasasa', 3, '2022-02-25 04:41:04', 26),
(583, 111, 61, 'asasasasasasasas', 3, '2022-02-25 04:41:07', 26),
(584, 62, 61, 'Xulosa berildi', 3, '2022-02-25 04:41:23', 34),
(585, 111, 61, 'asas', 3, '2022-02-25 04:41:40', 26),
(586, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-25 04:44:55', 50),
(587, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-25 04:44:58', 50),
(588, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-25 04:44:59', 50),
(589, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-25 04:45:00', 50),
(590, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-25 04:45:03', 50),
(591, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-25 04:45:05', 50),
(592, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-25 04:45:06', 50),
(593, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-25 04:45:07', 50),
(594, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-25 04:45:09', 50),
(595, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-25 04:45:10', 50),
(596, 65, 61, 'Ilmiy tadqiqotlar sammitida ishtirok etildi.', 3, '2022-02-25 04:45:51', 50),
(597, 65, 61, 'Ijtimoiy tarmoqlar orqali o`qituvchilar uchun metodik tavsiyalar berildi. https://t.me/rtmedu_news/2520', 2, '2022-02-25 04:50:41', 83),
(598, 65, 61, 'Mart o‘quvi uchun tajriba maktablari bilan birgalikda zoomda yig`ilishda ishtirok etildi va ijtimoiy fanlar doirasida savollarga javob berildi.', 3, '2022-02-25 05:00:18', 25),
(599, 112, 61, '100-maktabda Tarbiya fanini o\'qitish yuzasidan O\'qituvch va o\'quvchilar bilan amaliy suxbat ', 3, '2022-02-25 05:07:45', 39),
(600, 17, 63, 'Кунлик назорат карточкаси. Ҳужжатлар мониторинги', 3, '2022-02-25 06:36:09', 78),
(601, 17, 63, 'Кунлик назорат карточкаси. Ҳужжатлар мониторинги', 3, '2022-02-25 06:36:18', 78),
(602, 21, 52, 'Geografiya jamiyati jurnalida (OAK) ilmiy maqola chop etilganligi', 2, '2022-02-25 07:11:15', 52),
(603, 65, 61, '7-sinf Jahon tarixi fani yuzasidan mualliflar bilan darslikka kiritiladigan o‘zgarishlar yuzasidan onlayn muhokama qilindi.', 2, '2022-02-25 08:43:46', 85),
(604, 52, 63, 'Assalomu alaykum Akmal xatni ko\'ring ', 3, '2022-02-25 10:09:57', 78),
(605, 52, 63, 'Assalomu alaykum Akmal xatni ko\'ring ', 3, '2022-02-25 10:10:05', 78),
(606, 58, 22, 'Маълумот кўрилди', 3, '2022-02-25 10:45:12', 78),
(607, 58, 22, 'Маълумот кўрилди', 3, '2022-02-25 10:45:17', 78),
(608, 58, 22, 'Маълумот кўрилди. ', 3, '2022-02-25 10:45:33', 78),
(609, 52, 63, 'xatni ko\'ring', 3, '2022-02-25 10:51:50', 78),
(610, 52, 63, 'xatni ko\'ring', 3, '2022-02-25 10:51:55', 78),
(611, 65, 61, '7-sinf Jahon tarixi fani yuzasidan mualliflar bilan darslikka kiritiladigan o‘zgarishlar yuzasidan onlayn muhokama qilindi.', 2, '2022-02-25 12:32:56', 85),
(612, 17, 63, 'Кунлик амалга оширилган ишлар кўлами', 3, '2022-02-25 13:02:30', 78),
(613, 38, 25, '25.02.2022 y.\r\n3-sinf metodika qo‘lyozmasi mavzular bo‘yicha tekshirildi va bildirgi bilan sahifalash jarayoniga topshirildi. \r\nA. Avloniy nomidagi xalq ta’limi muammolarini o‘rganish va istiqbollarini belgilash ilmiy-tadqiqot instituti tomonidan tashkil etiladigan “Nemis tili fanini o‘qitishda zamonaviy ta’lim texnologiyalari” malaka oshirish kursini tashkil etish bo‘yicha mutaxassis saralash jarayonida ishtirok etildi.\r\nIshchi guruh uchun berilgan texnik jihozlarini qayta ro‘yxatdan o‘tkazish masalasiga oydinlik kiritildi. \r\n', 2, '2022-02-25 13:31:06', 78),
(614, 38, 25, 'https://telegra.ph/Germaniyada-bolib-otadigan-Xalqaro-olimpiadada-qatnashishni-xohlaysizmi-02-25', 2, '2022-02-25 13:42:32', 81),
(615, 38, 25, 'https://telegra.ph/Germaniya-oquvchilarni-kasbga-yonaltirish-uchun-nimalar-qiladi-Girls%CA%BCDay-und-Boys%CA%BCDay-haqida-eshitganmisiz-02-11', 3, '2022-02-25 13:44:10', 81),
(616, 16, 63, 'Kunlik ishlar', 3, '2022-02-25 14:45:27', 78),
(617, 16, 63, 'Kunlik ishlar', 3, '2022-02-25 14:45:32', 78),
(618, 16, 63, 'Kunlik ishlar', 3, '2022-02-25 14:45:33', 78),
(619, 16, 63, 'Kunlik ishlar', 3, '2022-02-25 14:45:34', 78),
(620, 16, 63, 'Kunlik ishlar', 3, '2022-02-25 14:45:38', 78),
(621, 16, 63, 'Kunlik bajarilgan ishlar', 3, '2022-02-25 14:46:09', 78),
(622, 54, 52, 'STEM taʻlimi boʻyicha olib borilgan ishlar hisoboti', 2, '2022-02-25 15:14:32', 65),
(623, 54, 52, 'STEM taʻlimi boʻyicha olib borilgan ishlar hisoboti', 2, '2022-02-25 15:14:34', 65),
(624, 54, 52, 'fuqoro murojaati boʻyicha javob xati yozildi', 1, '2022-02-25 15:15:29', 78),
(625, 54, 52, 'fuqoro murojaati boʻyicha javob xati yozildi', 1, '2022-02-25 15:15:31', 78),
(626, 111, 61, 'darslik yaratish', 2, '2022-02-25 16:05:55', 43),
(627, 111, 61, 'darslik yaratish', 2, '2022-02-25 16:06:23', 43),
(628, 111, 61, 'darslik yaratish', 2, '2022-02-25 16:06:48', 26),
(629, 19, 63, 'Haftalik ish reja va hisoboti ma\'lumot uchun yuborilmoqda.', 3, '2022-02-26 08:07:42', 78),
(630, 19, 63, 'Haftalik ish reja va hisoboti yuborilmoqda.', 3, '2022-02-26 08:08:20', 78),
(631, 65, 61, '7-sinf Jahon tarixi fani yuzasidan mualliflar bilan darslikka kiritiladigan o‘zgarishlar yuzasidan onlayn muhokama qilindi.', 2, '2022-02-26 08:17:21', 85),
(632, 111, 61, 'asasasa', 2, '2022-02-26 09:05:22', 96),
(633, 68, 61, 'Тражимон билан иш олиб борилди.', 2, '2022-02-26 09:37:36', 78),
(634, 19, 63, 'Ma\'lumot yuborilmoqda', 3, '2022-02-26 11:22:47', 78),
(635, 111, 61, 'darslik', 2, '2022-02-27 18:34:14', 33),
(636, 61, 61, 'darslik', 2, '2022-02-28 02:54:12', 57),
(637, 61, 61, 'darslik', 2, '2022-02-28 02:56:36', 57),
(638, 115, 61, 'Texnologiya fani darsliklarining tayyorlanish holati haqida ma\'lumot berildi.', 2, '2022-02-28 03:56:23', 78),
(639, 115, 61, 'Sahifalash ishlari yakunlangan 3-sinf Texnologiya o\'quv metodik qo\'llanma ko\'rib chiqilda va xulosa tayyorlandi. Darslik bo\'limiga taqdim etildi. ', 2, '2022-02-28 06:33:46', 78),
(640, 115, 61, 'Umumiy o‘rta ta’lim muassasalarining ta’lim o‘zbek tilida olib boriladigan\r\n 3-sinf Texnologiya fani darsligi bo‘yicha o‘quv-metodik qo‘llanmaning sahifalash ishlari yakunlanib qayta ko‘rib chiqildi. Ko‘rib chiqish natijasida bir qator kamchiliklar aniqlandi. Ushbu kamchiliklar ko\'rsatilgan XULOSAni taqdim etish uchun BILDIRGI tayyorlandi va darslik bo\'limiga berildi.  ', 2, '2022-02-28 07:38:32', 78),
(641, 65, 61, 'Mart o‘quvi uchun tajriba maktablari bilan birgalikda zoomda yig`ilishda ishtirok etildi va ijtimoiy fanlar doirasida savollarga javob berildi.', 2, '2022-02-28 07:54:50', 26),
(642, 65, 61, 'Respublika miqyosida o`tkazilgan tadqiqotlar sammitida maqola bilan ishtirok etildi.', 2, '2022-02-28 07:58:38', 50),
(643, 65, 61, '7-sinf Jahon tarixi fani yuzasidan mualliflar bilan darslikka kiritiladigan o‘zgarishlar yuzasidan onlayn muhokama qilindi. OTM lardan olingan taqrizlar bo‘yicha darslik ko‘rib chiqildi.', 2, '2022-02-28 08:01:07', 35),
(644, 65, 61, 'Tarix fanini 2030-yilgacha rivojlantirish konsepsiyasi yuzasidan takliflar ishlab chiqildi.', 2, '2022-02-28 08:16:59', 78),
(645, 65, 61, 'O‘zR FA tomonidan taqdim etilgan xatga javob xati yuborildi.', 2, '2022-02-28 08:19:05', 78),
(646, 65, 61, '7-sinf Jahon tarixi darsligi qo‘lyozmasiga OTM dan taqrizlar olindi.', 2, '2022-02-28 08:22:17', 78),
(647, 54, 52, 'Fuqoro murojaati', 1, '2022-02-28 09:40:53', 78),
(648, 54, 52, 'darslik mualliflarini jalb etish', 2, '2022-02-28 09:45:03', 65),
(649, 96, 52, 'Sinab ko\'ryapman', 1, '2022-02-28 10:11:43', 78),
(650, 111, 61, 'KPI', 2, '2022-02-28 10:23:54', 57),
(651, 112, 61, 'Yakkasaroy tumani 100-maktabda barcha fanlar doirasida OCHIQ ESHIKLAR kuni bo\'lib otdi. Unda darslardan tashqari tadbir va o\'quvchilar o\'rtasida  zakovat o\'yinlari ham bo\'lib o\'tdi. Tahlil qilingan darslarda o\'qituvchi erishgan yutuqlar va yo\' qoygan kamchiliklari yuzasidan suhbatlar ham bo\'lib o\'tdi. ', 2, '2022-02-28 10:47:10', 39),
(652, 112, 61, ' Тарбия фанини ўқитилиши юзасидан таклифлар тайёрланди', 2, '2022-02-28 10:49:00', 78),
(653, 112, 61, '2022-yil 22-fevral kuni Alisher Navoiy nomidagi Toshkent davlat o\'zbek tili va adabiyoti universiteti O\'zbek filologiyasi fakulteti  3-kurs talabalari tyutori Xaytboyev Boburjon tomonidan 2-TTJ Ma\'naviyat va ma‘rifat xonasida yotoqxonada turuvchi talabalar uchun Xalq ta\'lim vazirligi Respublika ta\'lim markazi Ijtimoiy fanlar va ijodiy ko\'nikmalarni rivojlantirish bo\'limi ilmiy xodimlari hamda metodist va bo\'lim boshliqlari  taklif etildi. Tashrif davomida, Shernayov Oybek, Tarbiya fani metodisti Usarova Nigora, Jahon tarixi fani metodisti, Omonov Abror, Jismoniy tarbiya metodisti Toshev Ilyos universitet  Ma\'naviyat bo\'limi rahbari Ikromov Akmal boshchiligida kutib olindi. Mehmonlar fanlar yuzasidan ilmiy trening tashkil qilishdi va talabalarning savollariga  javob berishdi.', 2, '2022-02-28 10:51:24', 93),
(654, 112, 61, 'Ўқитувчиларга методик ёрдам кўрсатиш мақсадида  Тарбия фани 11-синф \"Туйғулар хилма-хиллиги\" мавзусида тақдимот тайёрланди ва https://t.me/rtmedu_news расмий каналга жойланди', 2, '2022-02-28 10:55:28', 78),
(655, 112, 61, 'Навоий  вилояти  Учқудуқ тумани Халқ таълими бўлимига қарашли\r\n2-умумий ўрта таълим мактабининг тарбия  фани ўқитувчиси\r\nҚосимов Сарвар Анваржон ўғлининг\r\n“Заковат интерактив ўйин”\r\n(тарбия фани ўқитувчилари учун методик қўлланма)сига тақриз таёрланди.\r\n', 2, '2022-02-28 10:59:02', 34),
(656, 112, 61, 'Тарбия фани йўналиши бўйича илмий методик кенгаш аъзолари таркиби тузилди ва йиғилиш ташкил қилинди. Йиғилишда келгусидаги қилинадиган ишлар ҳақида фикр алмашилди.', 2, '2022-02-28 11:02:38', 30),
(657, 112, 61, 'Тошкент шаҳар мактаблариТарбия фани ўқитувчилардан  мобил гуруҳи ташкил этилди ҳамда қилинадиган ишлар режаси тузилди.Кординатор ва моденатор тайинланди.', 2, '2022-02-28 11:14:00', 99),
(658, 112, 61, 'Тарбия фани антологиясини яратиш  бўйича режа тузилди , режадаги мавзуларга оид кўпгина адабиётлар ,тарбиявий манбалар тўпланди ва ўрганилмоқда.', 2, '2022-02-28 11:21:43', 24),
(659, 112, 61, '26.02.2022 kuni  Hilton mehmonxonasida xotin-qizlar uchun “Yangicha fikrlash, yangicha dunyoqarash, yangicha tarbiya” mavzusida o‘quv seninarida ishtirok etildi', 2, '2022-02-28 11:32:06', 78),
(660, 17, 63, 'Кунлик ҳисобот', 2, '2022-02-28 13:08:57', 78),
(661, 38, 25, '28.02.2022 y.\r\nDie Deutschprofis A2.1 darslik lug‘ati rus tiliga tarjima qilib tugatildi. (J-Z)\r\nYangi ingliz metodisti Markaz ish faoliyati va xizmat vazifalar bilan tanishtirildi. \r\nZfA rahbari bilan mart oyida hamkorlikda seminar tashkil etish masalasida telefon orqali suhbatlashildi.  \r\n', 2, '2022-02-28 14:12:12', 78),
(662, 19, 63, '21.02.-26.02.2022 haftalik ish reja va hisoboti ma\'lumot uchun yuborilmoqda.', 2, '2022-02-28 15:32:59', 78),
(663, 21, 52, 'Geografiya fan oyligining ochilishi bo\'yicha tavsiya', 2, '2022-03-01 04:03:38', 24),
(664, 115, 61, 'Umumiy o‘rta ta’lim muassasalarining ta’lim o‘zbek tilida olib boriladigan\r\n 7-sinf uchun Texnologiya fani darsligi qo‘lyozmasi tegishli ishchi guruh tomonidan to‘liq yakunlanib taqdim etildi.\r\n', 2, '2022-03-01 06:35:39', 78),
(665, 52, 63, 'Fuqaro murojatiga javob xati yuborildi', 2, '2022-03-01 07:53:36', 78),
(666, 52, 63, 'XTV ga chora tadbirning 6 bandi bo \'yicha ma\'lumotnoma yuborildi ', 2, '2022-03-01 07:55:18', 78),
(667, 52, 63, 'Fuqaro murojatiga javob xati tayyorlandi', 2, '2022-03-01 07:56:07', 78),
(668, 17, 63, 'Назорат карточкаси мониторинги\r\n', 2, '2022-03-01 08:42:33', 78),
(669, 107, 69, '2-синф Математика фани дарслиги учун KHAN Academy линкларини 18 та QR-кодлари тайорланиб, фан методисти, Холмирза Алишеровичга, топширилди.', 2, '2022-03-01 10:00:55', 78),
(670, 98, 52, 'С. Бурхоновга жавоб хати', 1, '2022-03-01 10:58:20', 78),
(671, 107, 69, 'Билдирги асосида Ижтимоий фанлар булими Жисмоний тарбия фани учун 16 та qr-кодлик сертификатлар тайорланиб берилди.', 2, '2022-03-01 11:03:42', 78),
(672, 13, 22, 'Термиз давлат университетига хат ва маълумотнома тайёрланиб борилди.', 3, '2022-03-01 11:04:45', 78),
(673, 116, 52, 'Navoiy qorako\'l maktabi internati o\'quvchilari bilan ochiq suhbat tashkil etildi. Mavzu yuzasidan savol va javoblar, fikr almashishlar kuzatildi. ', 2, '2022-03-01 11:05:36', 39),
(674, 116, 52, 'Navoiy viloyatidagi 10 ta tuman shahar maktablari o\'qituvchilari metodistlar ishtirokida seminar trening bo\'lib o\'tdi. Seminarda \"Cambridge\" darsliklari mazmun mohiyati haqida suhbat tarzda ochiq dars tashkil etildi.', 2, '2022-03-01 11:08:36', 26),
(675, 98, 52, ' 3- синф машқ дафтарини тўғирланган вариантини мусаҳҳиҳ томонидан қайта кўриб чиқиши бўйича', 1, '2022-03-01 11:09:20', 78),
(676, 116, 52, 'Navoiy viloyatidagi 10 ta tuman shahar metodistlari ishtirokida muammoli vaziyatlarni hal qilish, loyiha ishlarini tashkil etish ularning yechimlari haqida taqdimot shaklida ma\'zuqa qilindi. dars so\'ngida savol javoblar berishdi ', 2, '2022-03-01 11:11:29', 94),
(677, 116, 52, 'Navoiy qo\'rako\'l maktabi 9 sinf o\'quvchilar o\'rtasida Suniy intelektr va uning o\'rni mavzusida ochiq dars tashkil etildi.', 2, '2022-03-01 11:13:48', 96),
(678, 98, 52, 'С.Бурхонов томонидан тақдим этилган мурожаат буйича берилган хулоса', 2, '2022-03-01 11:16:45', 27),
(679, 116, 52, 'Navoiy viloyatida Respublika seminari tashkil etildi', 3, '2022-03-01 11:18:44', 101),
(680, 116, 52, 'Toshkent viloyati Oqqo\'rg\'on tumanida seminar trening tashkil etildi.\r\n', 2, '2022-03-01 11:21:18', 101);
INSERT INTO `reports` (`id`, `sender_id`, `receiver_id`, `description`, `status`, `created_at`, `indicator_id`) VALUES
(681, 13, 22, 'Термиз давлат унверситетига маълумот ва хат тайёрланиб муаллифга юборилди', 2, '2022-03-01 11:21:23', 78),
(682, 98, 52, '195 мактабда ўқув семенар ташкил этилди', 2, '2022-03-01 11:21:25', 39),
(683, 116, 52, 'Qizil maktabga kiritilgan 31-maktabdagi seminardagi intervyu', 3, '2022-03-01 11:22:14', 81),
(684, 13, 22, 'А.Авлонийга Миллий ўқув дастурни бўйича олиб борилаётган ишлар ҳақида маълумот юборилди', 2, '2022-03-01 11:22:54', 78),
(685, 98, 52, 'М. Баракаев томонидан тақдим этилган дарслик учун амалиётчи ўқитувчилар билан биргаликда хулоса тайёрланди', 2, '2022-03-01 11:23:11', 38),
(686, 107, 69, '3-синф тасвирий санъат фани дарслиги ва мультимедия иловаси учун видео съёмка булиб утди. Жаъми 2 та видео 4 соат давомида суратга олинди', 2, '2022-03-01 11:23:35', 78),
(687, 116, 52, 'Seminar trening doirasida Toshkent viloyati Nurafshon telekanalidagi', 2, '2022-03-01 11:23:44', 81),
(688, 107, 69, '3-синф Немис тили фанидан Техник топшириклар йозилиб, рахбариятдан тасдикланиб, мультимедия ишлаб чикилмокда.\r\n', 2, '2022-03-01 11:28:01', 78),
(689, 116, 52, 'Toshkent viloyati 12 ta tumanida har bir tumandan 15 tadan o\'qituvchilaridan iborat jami 300 dan ortiq ustozlar ishtirokida attestatsiyaga tayyorgarlik doirasida test topshiriqlari ishlashdi va o\'zlarini bilimlarini mustahkamlashdi', 2, '2022-03-01 11:31:09', 65),
(690, 116, 52, 'Navoiy viloyati boshqarmasi telegram kanallarida o\'tkazilgan seminar trening keng yoritildi', 2, '2022-03-01 11:32:32', 81),
(691, 52, 63, 'маълумотнома тайёрланди', 2, '2022-03-01 12:11:50', 78),
(692, 58, 22, 'Бугун РТМнинг ишлаб чиқариш йиғилишининг 7- баёни ижроси юзасидан Адабиёт фанидан Баёнлар тўплами учун материаллар жамланди. 5-синф учун 2 вариантда 4 та жавоблининг бирини танлашга йўналтирилган амалдаги дарслик асосида 20 та тест тайёрланди. Мураккаблик даражаси ўрта ва  кўп қисми юқори даражад   ', 3, '2022-03-01 12:16:50', 78),
(693, 13, 22, '2022-2023-ўқув йилнинг Ихтисослаштирилган давлат умумтаълим мактабларга она тили ва адабиёт, рус тили, чет тили, тарих фанлардан намунавий ўқув режалари ишланди', 2, '2022-03-01 12:20:45', 78),
(694, 119, 25, '\"Endi fanlarni o\'ynab o\'rganamiz! Yangi darsliklar uchun multimedia ilovalari tayyor bo\'ldi\" mavzusida multimedia ilovalari haqida post tayyorlandi. Postda Multimedia ilovalaridan foydalanishning afzalliklari haqida ma\'lumotlar va yangi darsliklar uchun yaratilgan multimedia ilovalarining QR kodlari va play markatdagi linklari jamlab joylashtirildi. \r\n', 2, '2022-03-01 12:22:56', 78),
(695, 119, 25, 'Respublika ta\'lim markazining Metodik xizmat telegram kanaliga 2021-2022-o\'quv yili uchun yaratilgan 1-2-sinf darsliklarining multimedia ilovalari uchun link joylashtirildi. \r\nOna tili va o\'qish savodxonligi darsligi uchun yaratilgan multimedia ilovasi\r\nhttps://t.me/rtm_metodik_xizmat/1389\r\n\r\nMatematika darsligi uchun taʼlimiy oʻyinlardan iborat ilova\r\nhttps://t.me/rtm_metodik_xizmat/1390\r\n\r\nMusiqa, tasviriy san\'at, tabiiy fan, O\'zbek tili darsliklari uchun AR ilovalari \r\nhttps://t.me/rtm_metodik_xizmat/1391\r\n\r\n1-2-sinf Xorijiy til darsliklari uchun maxsus sayt:\r\nhttps://t.me/rtm_metodik_xizmat/1392', 2, '2022-03-01 12:26:33', 78),
(696, 14, 22, 'PhD ishim : Uumumiy o‘rta ta’limi pedagog xodimlarining raqamli ko‘nikmalarini rivojlantirish texnologiyalari\" deb nomlandi. Hozirgi kunda bu mavzuni tasdiqlanilishi kutilmoqda. \r\n\r\nShuningdek, bu mavzuga oid ilmiy adabiyotlar, konferensiyalar tahlil qilinib, o\'rganilmoqda. ', 3, '2022-03-01 12:27:39', 78),
(697, 119, 25, 'Metodik xizmat kanaliga \"Geografiya \"fan oyligi\" boshlandi\" sarlavhali post joylashtirildi\r\nhttps://t.me/rtm_metodik_xizmat/1393\r\n', 2, '2022-03-01 12:28:22', 78),
(698, 119, 25, 'Respublika ta\'lim markazining telegramdagi kanaliga \"Geografiya va Iqtisodiy bilim asoslari fanlaridan “Fan oyligi”ni oʻtkazish boʻyicha tavsiya\" joylashtirildi\r\nhttps://t.me/edurtm_uz/8952\r\n\r\n', 2, '2022-03-01 12:29:28', 78),
(699, 59, 22, '1-sinf Tarbiya fani bo‘yicha baholash loyiha ', 2, '2022-03-01 12:30:19', 78),
(700, 119, 25, '\"Tarix fanlari endi qanday o\'qitiladi?\" mavzusidagi videolavha tizeri Respublika ta\'lim markazining telegram kanaliga joylashtirildi\r\nhttps://t.me/edurtm_uz/8953', 2, '2022-03-01 12:30:26', 78),
(701, 91, 22, 'Ассалому алайкум Феруза опа яхшимисиз. Бугун 7-синфлар учун 2 вариантда 20 т адан 40 та тест туздим. Тест саволларимда намунавий PISA топширқлари ҳам киритилди.', 3, '2022-03-01 12:32:44', 78),
(702, 14, 22, 'www.ommalashtirish elektron platformasining holati haqida so\'z yuritilganda, Jizzax sharidagi umumta\'lim maktabi o\'qituvchilarida sinovdan o\'tkazish maqsadida tajribalar qilinib, saytni holati tekshirilmoqda va saytda kuzatilgan xato kamchiliklar dasturchilarga yetkazilib, texnik muammolar hal qilinmoqda. ', 2, '2022-03-01 12:33:05', 78),
(703, 119, 25, 'Axborot xizmati faoliyati bilan bog\'liq hisobotga fevral oyida qilingan ishlar kiritildi', 2, '2022-03-01 12:37:19', 78),
(704, 101, 52, 'O`quv kursi rejasi', 1, '2022-03-01 12:44:27', 78),
(705, 119, 25, 'Ona tili va o\'qish savodxonligi darsligi uchun tayyorlangan audiomatnlarning wav versiyasi mp3 variantiga almashtirildi. \r\nhttps://t.me/rtm_metodik_xizmat/1107\r\nhttps://t.me/rtm_metodik_xizmat/1106\r\nhttps://t.me/rtm_metodik_xizmat/1097\r\nhttps://t.me/rtm_metodik_xizmat/1069\r\nhttps://t.me/rtm_metodik_xizmat/1068', 2, '2022-03-01 12:45:19', 78),
(706, 54, 52, 'Kimyo fani mualliflarini jalb etish', 2, '2022-03-01 12:53:37', 33),
(707, 54, 52, 'Fuqoro murojaati', 1, '2022-03-01 12:55:01', 78),
(708, 102, 52, 'Халқ таълими тизимида фаолият олиб бораётган методистлар малакасини ошириш учун қисқа муддатли дастур ', 2, '2022-03-01 12:55:40', 78),
(709, 54, 52, 'Kimyo fanidan metodistlar faoliyatini shakllanntiruvchi o\'quv reja', 2, '2022-03-01 12:56:09', 24),
(710, 113, 61, 'Farg‘ona viloyati. Tuman va shahar jismoniy tarbiya fani o‘qituvchilari ro‘yxati va soni shakllantirildi', 2, '2022-03-01 12:57:53', 78),
(711, 17, 63, 'Кунлик амалга оширилган ишлар ҳисоботи', 2, '2022-03-01 13:02:31', 78),
(712, 17, 63, 'Кунлик мониторинг-тахлил жадвали', 2, '2022-03-01 13:03:02', 78),
(713, 21, 52, 'Geografiya fanidan metodistlarga dars o\'tish bo\'yicha mavzu-rejalari tayyorlandi.', 1, '2022-03-01 13:12:41', 78),
(714, 102, 52, 'Тошкент шаҳар халқ таълими бош бошқармаси томонидан пойтахтимизнинг Чилонзор туманидаги 164-сонли умумтаълим мактабида ёш ўқитувчилари учун “Сифатли таълим – келажак пойдевори” мавзусида семинар тренинг ', 2, '2022-03-01 13:14:53', 67),
(715, 109, 22, 'Darslarni videoga olish uchun o`qituvchilar ro`yxatini shakillantirish', 2, '2022-03-01 13:15:23', 33),
(716, 123, 25, '1/03/2022\r\n1) 3-sinf Tasviriy san\'at (tarjima) darsligini orginal maketga solishtirib, hulosa bilan qaytarildi.\r\n2) Matematika darsligining TZ o\'zbek tilidan qirg\'iz tiliga tarjima qilinib topshirildi.\r\n3) 3-sinf Ona tili va o\'qish savodxonligi darsligining Mashq daftari saxifalovchisi bilan hamkorlikda ishlanmoqda. \r\n', 2, '2022-03-01 13:22:46', 78),
(717, 115, 61, '3-sinf Texnologiya fani mashq daftari bo‘yicha muharrir ko‘rsatmasiga   \r\nXULOSA tayyorlandi.\r\n\r\n', 2, '2022-03-01 13:22:47', 78),
(718, 97, 52, 'Oʻzbekiston 24 telekanaling \"Taraqqiyot formulasi\" koʻrsatuvi', 2, '2022-03-01 13:41:03', 81),
(719, 19, 63, 'Fransiya darsliklari bo\'yicha XTVga taqdim etilgan hisobot ', 2, '2022-03-01 13:44:34', 78),
(720, 19, 63, 'Ingliz tili darsliklarini Livanda chop etish bo\'yicha rahbar topshirig\'i ijrosi', 2, '2022-03-01 13:45:38', 78),
(721, 38, 25, '01.03.2022 y.\r\nHududiy metodistlarga metodik yordam berish bo‘yicha seminarlar jadvali shakllantirildi.\r\nMuallif bilan 3-sinf metodika qo‘lyozmasi ustida ishlandi.\r\nYangi ingliz metodistiga MO‘D va bo‘limning boshqa ish vazifalari bilan tanishtirildi. \r\nKlett darsliklarini moslashtirish bo‘yicha ishchi guruh rahbariga qilingan ishlar teshirib, tahrirlash uchun yetkazildi.\r\nMO‘D ustida ishlandi. (Til vositalarining mavjudligi qismi tugatildi.)\r\n', 2, '2022-03-01 13:50:20', 78),
(722, 105, 25, 'Ona tili metodik yordam jadvali tuzib berildi (aprel-may uchun)', 2, '2022-03-01 13:58:48', 78),
(723, 105, 25, 'Muallif bilan ishladim . Toshkent shahar o\'zbek tili va adabiyot universiteti binosida ', 2, '2022-03-01 14:01:04', 78),
(724, 38, 25, 'MO‘D ustida ishlandi. (Til vositalarining mavjudligi qismi tugatildi.)', 2, '2022-03-01 14:08:15', 78),
(725, 38, 25, 'Yangi ingliz metodistiga MO‘D va bo‘limning boshqa ish vazifalari bilan tanishtirildi. \r\nKlett darsliklarini moslashtirish bo‘yicha ishchi guruh rahbariga qilingan ishlar teshirib, tahrirlash uchun yetkazildi.\r\n', 2, '2022-03-01 14:08:53', 78),
(726, 48, 39, 'Umumta\'lim maktablarining 3-sinf uchun chop etilishi rejalashtirilgan darsliklaring holati bo\'yicha mas\'ul fan metodistlaridan olingan kunlik hisoboti ', 2, '2022-03-01 15:26:17', 78),
(727, 48, 39, 'Umumta\'lim maktablarining 6-7-10-sinflari uchun chop etilishi rejalashtirilgan darsliklarning holati bo\'yicha mas\'ul fan metodistlari tomonidan olingan kunlik hisoboti ', 2, '2022-03-01 15:29:29', 78),
(728, 48, 39, 'Umumta\'lim maktablarining 3-sinflari uchun Tasviriy san\'at darsligining ta\'lim qoraqalpoq tiligi qilingan tarjimasi texnik muxarrir tomondan ko\'rib chiqilib, original maketni chop etishga tayyor ekanligi to\'g\'risida bildirgi ', 2, '2022-03-01 15:36:54', 78),
(729, 48, 39, 'Umumta\'lim maktablarining 3-sinflari uchun Tasviriy san\'at darsligining ta\'lim rus tiligi qilingan tarjimasi texnik muxarrir tomondan ko\'rib chiqilib, original maketni chop etishga tayyor ekanligi to\'g\'risida bildirgi', 2, '2022-03-01 15:37:31', 78),
(730, 111, 61, 'darslik', 2, '2022-03-01 16:14:57', 58),
(731, 95, 5, 'Tarix fani mualliflari bilan fan darsliklaridagi yangi yondashuvlar xususida intervyu tashkil etildi. \r\n\r\n\r\nKontent -rejaga muvofiq kunlik ishlar taqsimoti amalga oshirildi va yakuniy materiallar tahrirlandi. Natijada Tarix fani mualliflari bilan intervyu tahrir qilindi. Anonsi tahrirlandi va kanalda eʼlon berilishi tashkillashtirildi.\r\n\r\nBoʻlimlar bilan hamkorlikda ishlab maʼlumot olindi. Natijada Respublika taʼlim markazining telegramdagi rasmiy sahifasiga Geografiya va Iqtisodiy bilim asoslari fanlaridan “Fan oyligi”ni oʻtkazish boʻyicha tavsiya hamda Metodik xizmat kanaliga 110-maktabda Geografiya va iqtisodiy bilim asoslari fan oyligining ochilish marosimi oʻtkazilgani haqidagi maʼlumot berilishi taʼminlandi.\r\n\r\nDarsliklar yuzasidan ota-onalar oʻqituvchilar fikrini oʻrganishga qaratilgan 20 ta savoldan iborat Soʻrovnoma va uni oʻtkazish tartibi ishlab chiqildi. \r\n', 1, '2022-03-02 04:45:13', 78),
(732, 112, 61, 'Ўқуввчиларга 9-синф дарслигидаги \"Фрилансерлик тушунчасини\" ёритиб бериш масаласи кўрсатилган', 2, '2022-03-02 04:47:41', 78),
(733, 13, 22, 'Илмий тадиқоқтчиларга маълумотнома тайёрланди', 2, '2022-03-02 04:48:51', 27),
(734, 13, 22, 'Мустақил тадиқочига маълумотнома ва хат тайёрланди', 2, '2022-03-02 04:50:45', 27),
(735, 103, 22, 'Табиий  фанлардан (Science) ўқув дастурини тажриба-синовдан ўтказишда  3-синф учун баҳолаш инструментлари лойиҳалари ишлаб чиқилди.  ', 3, '2022-03-02 04:56:05', 25),
(736, 13, 22, 'Тошкент ш.Тошекент вилоят 14 та тажриба-синов мактабларнинг 3-синф фанлардан тавқим режалари юборилди', 2, '2022-03-02 04:59:07', 26),
(737, 103, 22, 'Табиий  фанлардан Science ўқув дастурини тажриба-синовдан ўтказишда 3-синф учун  баҳолаш инструментлари (2-вариант)  тайёрланди ', 2, '2022-03-02 05:01:28', 25),
(738, 19, 63, 'Matematika fani metodisti X. Yusupovga algebra va geometriya 7-sinf standartlari ingliz tiliga tarjima qilib berildi.', 2, '2022-03-02 06:40:52', 78),
(739, 112, 61, '21-аср замонавий касблар ҳақида  ўқувчиларга тушунчалар бериш ва касб танлашга кўмаклашиш', 2, '2022-03-02 06:51:22', 78),
(740, 113, 61, 'Toshkent viloyati jismoniy tarbiya fani o‘qituvchilari ro‘yxati shakllantirildi', 2, '2022-03-02 08:54:35', 78),
(741, 7, 39, 'Муддат 05.03.2022', 2, '2022-03-02 08:59:51', 78),
(742, 7, 39, '5555', 2, '2022-03-02 09:01:26', 78),
(743, 109, 22, 'Tajriba-sinov maqsadida Toshkent viloyati Toshkent tumani 15-maktab va Toshkent shaxar Yunusobot tumani 274-maktabga bordim', 2, '2022-03-02 09:53:18', 78),
(744, 109, 22, 'Fuqaro xatiga javob', 2, '2022-03-02 09:58:16', 78),
(745, 115, 61, '3-sinf Texnologiya fani darsligi muallifi Dilfuza Abdiyeva bilan suhbat tashkil qilindi. Unda amaldagi darsliklar mavzulari ko‘rib chiqildi. Yangi avlod darsliklariga qanday mavzular kiritilishi kerakligi haqida fikr almashildi. Yangi tayyorlanadigan Texnologiya darsliklariga kerakli xomashyosi qimmat bo‘lmagan, yangicha, sodda, oson va qiziqarli amaliy mashg‘ulot turlarini kiritish kerakligi muallif tomonidan aytib o‘tildi', 2, '2022-03-02 10:08:28', 78),
(746, 13, 22, 'Respublika Ta’lim markazining 2022-yili 24-fevralida bo‘lib o‘tgan umumiy ishlab-chiqarish yig‘ilishining\r\n8-sonli bayonnomasida berilgan topshiriqlar ijrosi\r\nMONITORINGI\r\n', 2, '2022-03-02 10:15:51', 78),
(747, 119, 125, 'Yakkasaroy tumanidagi 144-maktabga Tabiiy fanlar va Matematika darsliklarini amaliyotga joriy etish uchun o\'tkazilayotgan tajriba-sinov jarayonlarini yoritish uchun syomkaga borildi. ', 2, '2022-03-02 10:49:08', 78),
(748, 48, 39, 'Umumta\'lim maktabalrinig 3-sinflari uchun Ona tili va o\'qish savodxonligi mashq daftari texnik muxarrir tomonidan ko\'rib chiqilib, aniqlangan kamchiliklarni tuzatish uchun sahifalovchiga qaytarildi', 2, '2022-03-02 11:06:40', 78),
(749, 48, 39, 'Umumta\'lim makatablarining 3-sinflari uchun Matematika mashq daftari texnik muxarrir tomonidan texnik talablarga mosligi ko\'rib chiqildi va original maket chop etishga tayyor ekanligi ma\'lum qilindi', 2, '2022-03-02 11:12:18', 78),
(750, 115, 61, 'Amaliy fan (tasviriy san’at, texnologiya, musiqa madaniyati, jismoniy tarbiya) metodistlari uchun metod kunlarida o‘tiladigan o‘quv seminar dasturi tayyorlandi.\r\n', 2, '2022-03-02 11:39:28', 78),
(751, 114, 61, 'AMALIY FAN,  MUSIQA MADANIYATI  METODISTLARI UCHUN METOD KUNLARIDA O‘TILADIGAN O‘QUV SEMINAR DASTURI', 2, '2022-03-02 11:43:50', 78),
(752, 17, 63, 'Кунлик бажарилган ишлар маълумоти', 2, '2022-03-02 11:46:01', 78),
(753, 38, 25, 'MO‘D ustida ishlandi.(O‘qib tushunish va so‘z boyligi qismlari)', 2, '2022-03-02 12:22:52', 78),
(754, 38, 25, 'Yangi ingliz metodistiga MO‘D va bo‘limning boshqa ish vazifalari bilan tanishtirildi. \r\nKlett darsliklarini moslashtirish bo‘yicha ishchi guruh a’zolaridan ish jarayoni holati haqida hisobot olindi.\r\n', 2, '2022-03-02 12:23:06', 78),
(755, 13, 22, 'Ихтисослаштирилган давлат умумтаълим мактабларга Давлат ҳуқуқ асослари ва математика фанларни ўқув режалари тайёрланди', 2, '2022-03-02 12:39:16', 78),
(756, 13, 22, 'Хоразм вилоятга 100% ли устама олиш бўйича хат лойихаси тайёрланди', 2, '2022-03-02 12:40:14', 78),
(757, 58, 22, 'Бугун 2 март куни Она тили ва ўқиш саводхонлиги фанидан 2 синфлар учун \r\nхалқаро талабларга мослаштирилган намунавий тест  2 вариантда тайёрланди\r\n', 3, '2022-03-02 12:57:59', 78),
(758, 103, 22, 'Tabiiy fanlar (Science) ooquv dasturi asosida 2022-2023 o\'quv yili uchun yangi nashrga tayyorlangan 6 -sinf  Tabiiy fanlar  darsligiga  xulosa tayyorlanmoqda', 3, '2022-03-02 12:59:21', 78),
(759, 48, 39, 'Umumta\'lim maktablarining ta\'lim tojik va turkman tilida olib boriladigan 3-sinflari uchun  Tasviriy san\'at, ta\'lim o\'zbek tilida olib boriladigan 3-sinflari uchun Matematika mashq daftari, Russkiy yazik darsliklariga mas\'ul fan bo\'lim boshliqlari ham mas\'ul metodistlar tomonidan ko\'rib chiqilib, imzolandi va nashrning keyingi bosqichiga tasdiqlatish uchun XTVga taqdim etildi', 2, '2022-03-02 13:22:45', 78),
(760, 119, 125, '1. Darsliklar mualliflarini rag\'batlantirish maqsadida o\'tkazish rejalashtirilgan so\'rovnomaning birinchi qismi tayyorlandi.\r\n2. 144-maktabdagi tajriba-sinov jarayonlari yoritilgan video tahrirlanmoqda. \r\n', 2, '2022-03-02 13:24:26', 78),
(761, 123, 25, '2.02.2022\r\n1) 3-sinf Tasviriy san\'at darsligini xato kamchiliklari to\'g\'irlandi va maketga topshirildi.\r\n2) 3-Sinf Mashq daftari sahifalash jarayoni tugatildi va oqish uchun muharirga topshirildi.\r\n3) 3-sinf mashq daftari rassom bilan hamkorlikda rasmlari ishlanmoqda.\r\n4) 3-sinf Tabiiy fan tarjimasi tugatildi va saxifalashga topshirildi.\r\n5) 3-sinf Matematika darsligini tarjimon bilan hamkorlikda ishlanmoqda.', 2, '2022-03-02 13:45:30', 78),
(762, 19, 63, 'RTI International va Florida davlat universiteti mutaxassislari hamda Ingliz tilidan Taqriz guruhi a’zolari bilan Ingliz tili fani bo‘yicha ta’lim standartlari ishlab chiqish bo’yicha online uchrashuvda qatnashildi. \r\nUchrashuv davomida Ingliz tili fani bo‘yicha sinflar kesimida o‘quv standartlari va standartlar ishlab chiqish bo‘yicha muhokama qilindi. \r\nOnline uchrashuv soat 17:00 dan 19:00 gacha davom etdi.\r\nUchrashuvlar 16-martga qadar davom etadi.\r\n', 2, '2022-03-02 14:22:25', 78),
(763, 114, 61, '3-синф мусиқа  фани  учун  машқ  дафтари  ўзбек  тилида яратилди', 2, '2022-03-02 14:27:17', 32),
(764, 114, 61, '3-синф мусиқа  фани дарслиги  учун машқ  дафтари  рус  тилида  яратилди\r\n', 2, '2022-03-02 14:28:36', 32),
(765, 114, 61, '3-синф  мусиқа  фани дарслиги   учун машқ  дафтари  қорақалпоқ  тилида яратилди.', 2, '2022-03-02 14:33:29', 32),
(766, 48, 39, 'Umumta\'lim maktablarining ta\'lim o\'zbek tilida olib boriladigan 3-sinflari uchun Musiqa darslida texnik muxarrir tomonidan kamchiliklar aniqlandi. Shu musobat bilan darslikda aniqlanga kamchiliklarni tuzatish maqsadida sahifalovchiga qaytarildi.', 2, '2022-03-02 16:43:07', 78),
(767, 48, 39, 'Umumta\'lim maktablarining ta\'lim rus tilida olib boriladigan 3-sinflari uchun Musiqa darslida texnik muxarrir tomonidan kamchiliklar aniqlandi. Shu musobat bilan darslikda aniqlanga kamchiliklarni tuzatish maqsadida sahifalovchiga qaytarildi', 2, '2022-03-02 16:43:41', 78),
(768, 48, 39, 'Umumta\'lim maktablarining ta\'lim qirg\'iz tilida olib boriladigan 3-sinflari uchun Musiqa darslida texnik muxarrir tomonidan kamchiliklar aniqlandi. Shu musobat bilan darslikda aniqlanga kamchiliklarni tuzatish maqsadida sahifalovchiga qaytarildi', 2, '2022-03-02 16:44:13', 78),
(769, 48, 39, 'Umumta\'lim maktablarining ta\'lim qozoq tilida olib boriladigan 3-sinflari uchun Ona tili va o\'qish savodxonligi daftari texnik muxarrir tomonidan ko\'rib chiqilib, chop etishga tayyor ekanligi ma\'lum qilindi', 2, '2022-03-02 16:48:02', 78),
(770, 48, 39, 'Umumta\'lim maktablarining ta\'lim rus tilida olib boriladigan 3-sinflari uchun Ona tili va o\'qish savodxonligi daftari texnik muxarrir tomonidan ko\'rib chiqilib, chop etishga tayyor ekanligi ma\'lum qilindi', 2, '2022-03-02 16:48:56', 78),
(771, 48, 39, 'Umumta\'lim maktablarining ta\'lim o\'zbek, qoraqalpoq va qardosh tillarida olib boriladigan 3-sinflari uchun Russkiy yazik daftari texnik muxarrir tomonidan ko\'rib chiqilib, chop etishga tayyor ekanligi ma\'lum qilindi', 2, '2022-03-02 16:51:08', 78),
(772, 125, 5, 'Hududiy metodbirlashma rahbarlari bilan “Zamonamiz qahramoni” loyihasi uchun oʻqituvchilar roʻyxatini shakllantirish yuzasidan uchrashuv tashkil etildi. Zoom yigʻilishda loyiha talablari yuzasidan tayyorlangan taqdimot namoyish etildi. Hududlarga Feruza Olimova tomonidan roʻyxatni shakllantirish boʻyicha topshiriq yuklatiladi.\r\n\r\nTajriba-sinov jarayonlarini yoritish yuzasidan tashkiliy jarayonlar muvofiqlashtirildi. Natijada boʻlim xodimlari tomonidan 144- maktabda Tabiiy fanlar va Matematika boʻyicha amalga oshirilayotgan tajriba-sinov jarayoni tasvirga olindi.\r\n\r\n“Oʻzbekiston24” kanali bosh muxbiri Ulugʻbek Rahmonqulov bilan Koreya taʼlim markazning 30 yilligi munosabati bilan intervyu tashkil etish rejalashtirildi.\r\nKhiso sayti bilan 4-kunlik onlayn olimpiadalar marofonini tashkil etish yuzasidan hamkorlikdagi ishlar amalga oshirildi. Natijada kanalga bitta umumiy eʼlon va bitta ertangi kunni posti eʼlon qilindi.\r\n\r\nRespublika taʼlim markazining Youtube platformasidagi obunachilari soni 10 mingga yetdi. Obunachilarni koʻpaytirishda tashkillashtirilgan yirik intervyularning tizer reklamasi telegram kanaliga berilib premyerasi Youtubega uzatish tajribasi oʻz samarasini bermoqda.\r\n', 1, '2022-03-02 17:30:53', 78),
(773, 13, 22, 'Хоразми вилоятга 100% устама бўйича хат жавоби юборилди', 1, '2022-03-03 05:10:43', 78),
(774, 13, 22, 'Ихтисосолаштиртилган давлат умумтаълим мактабларни Информатика фани ўқув режаси қилинди.', 1, '2022-03-03 05:15:01', 78),
(775, 65, 61, '6-sinf Qadimgi dunyo tarixi fani darsligi yuzasidan mualliflar guruhi qayta shakllantirildi.', 2, '2022-03-03 07:07:21', 33),
(776, 65, 61, '6-sinf Qadimgi dunyo darsligi Milliy o‘quv dasturi asosida mualliflar bilan takomillashtirildi.', 2, '2022-03-03 07:08:35', 32),
(777, 65, 61, '7-sinf Jahon tarixi o‘qituvchi kitobi bo‘yicha mualliflar guruhi shakllantirildi va zoom orqali mavzular taqsimoti mualliflarga berildi.', 2, '2022-03-03 07:12:04', 33),
(778, 115, 61, '03.03.2022 kuni 3-sinf Texnologiya fanidan o‘quv metodik qo‘llanmasining sahifalanish holati ko\'rib chiqildi. Aniqlangan kamchilik va xatoliklar yuzasidan  XULOSA qilib berildi. (Sahifalovchiga)\r\n', 2, '2022-03-03 08:55:34', 78),
(779, 59, 63, 'phd', 3, '2022-03-03 09:47:41', 57),
(780, 59, 63, 'phd', 3, '2022-03-03 09:49:36', 58),
(781, 17, 63, 'Назорат карточкаси 3.03.2022 ҳужжатлар мониторинги', 2, '2022-03-03 09:52:38', 78),
(782, 60, 120, 'nashriyotlarga xat tayyorlandi ilovasi bilan', 1, '2022-03-03 10:03:45', 78),
(783, 60, 120, 'ilm-ziyoga', 1, '2022-03-03 10:04:34', 78),
(784, 60, 120, 'Niso nashriyotiga', 1, '2022-03-03 10:05:04', 78),
(785, 117, 125, '1.03.2022\r\n\r\n- Tarix fani metodist va o‘qituvchilardan olingan intervyu uchun tizer video tayyorlandi.\r\n- O\'zbek tili fani bo\'yicha ovozlar tahrirlandi (audio montaj)\r\n- Firuz Allayev | NIma uchun kitob o\'qish muhim?  (youtubega joylandi)\r\n\r\n2.03.2022\r\n\r\n- Rus tili fani bo\'yicha ovoz tahrirlandi (audio montaj) qilindi.\r\n- Maxsus ta\'lim bo\'limi uchun video montaj qilindi.\r\n- Tarix fani metodistlari va o\'qituvchilaridan olingan intervyu video montaji yakunlandi.', 2, '2022-03-03 11:50:20', 78),
(786, 117, 125, '3.03.2022\r\n\r\n- Rus tili fani bo\'yicha ovoz yozildi va bir qismi tahrirlandi (audio montaj)\r\n- 144-maktabda olingan dars jarayoni videosi montaj ishi boshlandi\r\n-Tarix fani bo\'yicha metodist va o\'qituvchilardan olingan intervyu video qayta tahrir qilindi.\r\n- Tarix fani bo\'yicha metodist va o\'qituvchilardan olingan intervyu video RTM youtube kanaliga joylandi.', 2, '2022-03-03 11:56:37', 78),
(787, 117, 125, '3.03.2022\r\n\r\n- Rus tili fani bo\'yicha ovoz yozildi va bir qismi tahrirlandi (audio montaj)\r\n- 144-maktabda olingan dars jarayoni videosi montaj ishi boshlandi\r\n-Tarix fani bo\'yicha metodist va o\'qituvchilardan olingan intervyu video qayta tahrir qilindi.\r\n- Tarix fani bo\'yicha metodist va o\'qituvchilardan olingan intervyu video RTM youtube kanaliga joylandi.', 2, '2022-03-03 11:57:56', 78),
(788, 118, 125, '1.03.2022\r\n- Mobil ilovalar uchun animatsion promo rolik\r\n- Tasviriy san\'at uchun video syomka \r\n- Tasviriy san\'at 6-sinf uchun Fluyid janrida video rolik montaji\r\n\r\n2,03,2022\r\n- Darsning 3 daqiqasi loyihasi uchun matematika fani bo\'yicha vertolyot masalasi animatsion video roligi tayyorlanish jarayonida\r\n\r\n3.03.2022\r\n- Tasviriy san\'at uchun video syomka qilindi\r\n\r\n- Darsning 3 daqiqasi loyihasi uchun matematika fani bo\'yicha vertolyot masalasi animatsion video roligi tayyorlanish jarayonida', 2, '2022-03-03 12:06:08', 78),
(789, 126, 125, '\"Qulaylik zonasi\", \"Loyihaga asoslangan ta`lim\" mavzularidagi infografikalar uchun  matn tarjima qilindi', 2, '2022-03-03 12:21:23', 78),
(790, 119, 125, '1. Toʻraqoʻrgʻon tuman 37-maktabning oliy toifali boshlangʻich sinf oʻqituvchisi Manzura Karimovaning Ona tili va o\'qish savodxonligi, Matematika, tabiiy fanlar darsligi haqidagi fikrlari eski darsliklar bilan qiyosiy-tahliliy ko\'rinishida tayyorlandi. \r\n\r\nO\'qituvchi bilan gaplashib, dars jarayoni yoritilgan foto va videolarni kanalda yoritishga kelishib olindi.\r\n\r\n1. Ona tili va o\'qish savodxonligi \r\nhttps://telegra.ph/Eski-va-yangi-darsliklarning-qiyosiy-tahlili-03-03\r\n\r\n2. Matematika\r\nhttps://telegra.ph/Eski-va-yangi-Matematika-darsliklarining-qiyosiy-tahlili-03-03\r\n\r\n3. Tabiiy fanlar\r\nhttps://telegra.ph/Yangi-Tabiiy-fan-darsligi-tahlili-03-03', 2, '2022-03-03 12:43:38', 78),
(791, 119, 125, '\"Tarix fanlari endi qanday o\'qitiladi?\" mavzusidagi videorolikning You tubedagi linki RTMning telegram kanalida e\'lon qilindi. \r\n\r\nhttps://t.me/edurtm_uz/8960', 2, '2022-03-03 12:45:17', 78),
(792, 119, 125, 'Zamonamiz qahramoni rukni uchun 25-sonli imkoniyati cheklangan bolalar maktabining texnologiya fani o\'qituvchisi haqidagi maqolaning qoralama nusxasi tayyorlandi. ', 2, '2022-03-03 12:48:06', 78),
(793, 92, 120, '9-sinf 1-variant', 1, '2022-03-03 12:53:46', 78),
(794, 92, 120, '9-sinf 2-variant', 1, '2022-03-03 12:54:26', 78),
(795, 92, 120, '9-sinf 3-variant', 1, '2022-03-03 12:54:55', 78),
(796, 119, 125, 'Darsliklar yuzasidan 3 ta so\'rovna noma kanalda e\'lon qilinadigan shaklda tayyorlandi', 2, '2022-03-03 13:09:01', 78),
(797, 112, 61, 'Тарбия фанини ўқитишга иноватцион ёндошув ўқув семинари ўтказилди', 2, '2022-03-03 13:10:59', 78),
(798, 112, 61, 'Республика бўйича тарбия фанидан  мобил гурухи шакллантирилди', 2, '2022-03-03 13:13:07', 78),
(799, 14, 22, 'Xalq ta’limi metodistlari uchun metodik xizmat ko‘rsatish faoliyatini joriy etish yuzasidan maqsadli o‘quv-seminarlar ro‘yxati shakllantirildi. ', 1, '2022-03-03 13:14:06', 78),
(800, 14, 22, 'Moodle elektron axborot ta’lim platformasini o‘rganish maqsadida www.moodle.academy platformasida mavjud “Set up your Moodle Development Environment kursni o‘qib o‘rganish boshlandi. ', 1, '2022-03-03 13:14:57', 78),
(801, 103, 22, '6 sinf Tabiiy fanlar darsligiga Xulosa', 2, '2022-03-03 13:19:28', 78),
(802, 19, 63, 'Ingliz tili standartlari bo\'yicha', 1, '2022-03-03 13:28:02', 78),
(803, 19, 63, 'American Council vakillari bilan uchrashuv o\'tkazildi', 1, '2022-03-03 13:30:40', 78),
(804, 91, 22, 'Ассалому алайкум Феруза опа бугун 9-синфлар учун тест топшириғи ва 7-синфлар учун амалдаги А, В, С, Д тестларидан 10 та туздим. ', 2, '2022-03-03 13:34:38', 78),
(805, 91, 22, 'Бугунги туган тестларим', 2, '2022-03-03 13:36:44', 78),
(806, 111, 61, 'https://www.youtube.com/watch?v=PJBHX0Lzaco', 3, '2022-03-03 14:01:15', 101),
(807, 58, 22, 'Бугун 3 синф учун тест топшириғи 2 вариантда тайёрланди. Тест тавсиянинг Усти дизайни расмлари танланди Икки вариант ҳам бир матнда бўлиб топшириқлари ҳар хил ишлаб чиқилди. 7 тадан 14 та топшириқ ишланди', 2, '2022-03-03 14:13:13', 78),
(808, 123, 39, '1) 6-sinf Adabiyot darsligini qo\'lyozmasini topshirildi.\r\n2) 3-sinf Ona tili va o\'qish savodhonligi darsligining 2-qismi qo\'lyozmasi topshirildi.\r\n3) 3-sinf Matematika darsligining tarjimasi topshirildi.', 1, '2022-03-03 14:55:44', 78),
(809, 123, 25, '1) 6-sinf rus tili darsligining lug\'ati tarjima qilib topshirildi.\r\n2) 6-sinf rus tili darsligining metodikasi lugati tarjima qilinib topshirildi.', 2, '2022-03-03 14:59:56', 78),
(810, 123, 69, '1)Matematika darsligining TZ qirg\'iz tiliga tarjima qilib topshirildi. ', 2, '2022-03-03 15:02:02', 78),
(811, 16, 63, 'kunlik ishlar', 1, '2022-03-03 15:12:32', 78),
(812, 16, 63, 'monitoring', 1, '2022-03-03 15:13:01', 78),
(813, 13, 22, 'Жиззах вилоятга 100 фоизлик устама бўйича хат лойихаси тайёрланди\r\n', 1, '2022-03-04 07:12:50', 78),
(814, 13, 22, 'Тажриба-синов мактаблари учун ташкил этиладиган ўқув семинарга ижтимой бўлимларда рўйхатлар олиниб умумлаштирлмоқда\r\n', 1, '2022-03-04 07:14:45', 78),
(815, 17, 63, 'Назорат карточкаси, ҳужжатлар мониторинги', 1, '2022-03-04 07:50:36', 78),
(816, 115, 61, '04.03.2022 kuni 3-sinf Texnologiya fani o\'quv metodik qo\'llanmasini kamchiliklar bo\'yicha qayta sahifalanish sifati ko\'rib chiqilib hamda xulosa berildi. ', 2, '2022-03-04 08:16:51', 78),
(817, 17, 63, 'Кунлик амалга оширилган ишлар ҳисоботи', 1, '2022-03-04 09:42:36', 78),
(818, 129, 22, 'ustama xati', 1, '2022-03-04 10:03:59', 88),
(819, 116, 52, 'Ro\'yxat shakllantirish', 2, '2022-03-04 10:19:28', 30),
(820, 130, 61, 'xat', 2, '2022-03-04 10:22:23', 30),
(821, 129, 22, 'Tarbiya fani dasturida mediasavodxonlikka oid mavzularning o‘qitilishi', 1, '2022-03-04 10:26:58', 78),
(822, 130, 61, 'Metodik tavsiyalar', 2, '2022-03-04 10:30:12', 24),
(823, 130, 61, 'xat', 2, '2022-03-04 10:36:19', 24),
(824, 130, 61, 'Metodik xulosa tayyorlandi.', 2, '2022-03-04 10:56:02', 24),
(825, 130, 61, 'Avtoreferatga ma\'lumotnoma tayyorlandi.', 2, '2022-03-04 11:03:42', 38),
(826, 14, 22, '1. www.edusmart.uz elektron ta’lim platformasining texnik vazifasi yozilishi jarayoni RTM ning Raqamli ta’lim resurslarini tatbiq etish bo‘limi metodisti N. Mo‘minova bilan birgalikda tugatilib, Respublika ta’lim markazi rahbariga taqdim qilindi. ', 1, '2022-03-04 11:57:10', 78),
(827, 14, 22, 'www.edusmart.uz elektron platformasining chizmasini tayyorlash bo‘yicha rahbariyat tomonidan Raqamli ta’lim resurslarini tatbiq etish bo‘limi metodisti N. Mo‘minova bilan hamkorlikda sayt planshetini birinchi bosqichlaridan kurs kategoriyalari chizmasini ishlab chiqish vazifasi yuklatildi. ', 1, '2022-03-04 11:57:38', 78),
(828, 13, 22, 'Ихтисослаштирлган мактаблар учун физика ва астраномия, кимё фанларидан намунли ўқув режалари қилинди', 1, '2022-03-04 12:39:46', 78),
(829, 13, 22, 'март ойида бўлиб ўтадиган республика семинарга наманган вилоятдан тренер ўқитувчилар рўйхати шакиллантирилди', 1, '2022-03-04 12:41:05', 78),
(830, 123, 11, 'Xalq ta\'lim vazirligi reklamasi tarjima qilib berildi.', 1, '2022-03-04 12:44:40', 78),
(831, 123, 39, '3-sinf Ona tili va oqish savodxonligi darsligining mashq daftari maketga topshirildi', 1, '2022-03-04 12:47:05', 78),
(832, 130, 61, ' Xorazm viloyat Texnologiya fani \"Mobil guruh\" o\'qituvchilari guruhi tuzildi.', 2, '2022-03-04 12:55:47', 99),
(833, 114, 61, 'Андижон  мобил  гурух  рўйхати', 2, '2022-03-04 12:58:22', 99),
(834, 114, 61, 'Бухоро  вилояти  мобил  гурух  рўйхати', 2, '2022-03-04 12:59:09', 99),
(835, 37, 25, '04.03.2022 da fransuz tili mfani metodisit Y. Saidov tomonidan bajarilgan ishlar', 2, '2022-03-04 13:21:13', 78),
(836, 118, 125, '4.03.2022\r\n\r\n- Darsning 3 daqiqasi loyihasi uchun matematika fani bo\'yicha vertolyot masalasi animatsion video roligi montaj jarayoni tugadi\r\n- Qulaylik zonasi posteri tayyorlandi', 2, '2022-03-04 13:28:16', 78),
(837, 126, 125, 'Infografik materillar matni ustida ishlandi.', 2, '2022-03-04 13:29:24', 78),
(838, 117, 125, '3.03.2022\r\n\r\n- Rus tili fani bo\'yicha ovoz yozildi va bir qismi tahrirlandi (audio montaj)\r\n- 144-maktabda olingan dars jarayoni videosi montaj ishi boshlandi\r\n-Tarix fani bo\'yicha metodist va o\'qituvchilardan olingan intervyu video qayta tahrir qilindi.\r\n- Tarix fani bo\'yicha metodist va o\'qituvchilardan olingan intervyu video RTM youtube kanaliga joylandi.\r\n\r\n4.03.2022\r\n- Rus tili fani bo\'yicha ovoz tahrirlandi (audio montaj)', 2, '2022-03-04 13:29:53', 78),
(839, 52, 39, 'Bildirishnoma yozildi', 1, '2022-03-04 13:30:27', 78),
(840, 119, 125, 'Ustoz fikri rukni ostida 144-maktab o\'qituvchisining darslik haqida fikrlari aks etgan video joylashtirildi.\r\nhttps://t.me/edurtm_uz/8982', 2, '2022-03-04 13:32:32', 78),
(841, 119, 125, 'Nashrga tayyorlanayotgan 3-sinf Matematika, Tabiiy fanlar, O\'zbek tili darsliklarining mualliflaridan intervyu olindi', 2, '2022-03-04 13:33:42', 78),
(842, 19, 63, 'UNESCO bilan hamkorlikda amalga oshirilgan \"Farg\'ona vodiysi yoshlarining ijtimoiy uyg‘unligi\" loyihasi doirasida tayyorlangan 4000 dona metodik qo\'llanmalar Baqtriya nashriyotidan qabul qilib olindi. ', 1, '2022-03-04 14:20:45', 78),
(843, 38, 25, 'MO\'D ning Grammatika qismi tarjima va tahrir qilindi.', 2, '2022-03-04 14:22:36', 78),
(844, 38, 25, '04.03.2022 y.\r\n\r\nIMKning yangi tarkibini shakllantirish bo’yicha mutaxassislar bilan bog’lanildi.\r\nKlett darsliklarini moslashtirish bo‘yicha ishchi guruh rahbariga qilingan ishlar teshirib, tahrirlash uchun yetkazildi.\r\n', 2, '2022-03-04 14:25:07', 78),
(845, 114, 61, 'Жиззах  вилоят мобил-гурух  рўйхати\r\n', 2, '2022-03-05 03:49:42', 99),
(846, 114, 61, 'Қашқадарё  вилояти  мобил-гурух  рўйхати', 2, '2022-03-05 03:50:30', 99),
(847, 19, 63, 'G\'afur G\'ulomning \"Mening o\'g\'rigina bolam\" hikoyasi ingliz tiliga tarjima qilindi. RTM kanalida berish uchun Axborot xizmatiga berildi.', 1, '2022-03-05 07:14:27', 78),
(848, 19, 63, 'Haftalik ish reja va hisoboti yuborilmoqda', 1, '2022-03-05 07:34:56', 78),
(849, 130, 61, '3-sinf Texnologiya fani darsligi muallifi Dilfuza Abdiyeva bilan suhbat tashkil qilindi. Unda amaldagi darsliklar mavzulari ko‘rib chiqildi. Yangi avlod darsliklariga qanday mavzular kiritilishi kerakligi haqida fikr almashildi', 2, '2022-03-05 07:42:38', 78),
(850, 19, 19, 'RTI Internationalga ona tili va o‘qish savodxonligi hamda matematika darsliklarining texnik parametrlari bo\'yicha xat chiqarildi', 2, '2022-03-05 07:45:43', 78),
(851, 130, 61, '', 2, '2022-03-05 07:53:19', 78),
(852, 68, 61, '3 синф Тасвирий санъат дарслигига видероликлар тайёрланмоқда\r\n', 2, '2022-03-05 08:01:27', 24),
(853, 68, 61, 'Тарбия фани бўйича семинарда қатнашдим.', 2, '2022-03-05 08:15:13', 78),
(854, 68, 61, '3синф методикасига муаллиф ва 6синф дарслигига муаллифлар таркибини шакллантирилди.', 2, '2022-03-05 08:22:28', 33),
(855, 68, 61, '7синф муаллифлари рўйхати', 2, '2022-03-05 09:24:08', 33),
(856, 68, 61, 'Тақвим-ўқув режа 6-синф учун 2022-2023 ўқув йили учун', 2, '2022-03-05 10:03:02', 24),
(857, 130, 61, '3-sinf Texnologiya fani mashq daftari bo‘yicha muharrir ko‘rsatmasiga   \r\nXULOSA\r\n\r\n\r\n', 2, '2022-03-05 10:07:10', 78),
(858, 130, 61, 'Amaliy fan (tasviriy san’at, texnologiya, musiqa madaniyati, jismoniy tarbiya) metodistlari uchun metod kunlarida o‘tiladigan o‘quv seminar dasturi tayyorlandi.', 2, '2022-03-05 11:03:04', 78),
(859, 58, 22, 'Она тили ва ўқиш саводхонлигидан 2-4 гача  халқаро тестларга мослаштирилган тест ишлаб чиқилди. 2 вариантда бу ҳисобот 4 март учун.\r\nБугун 5 март куни она тили ва адабиёт фанидан 5 ва 6-синфлар учун 2 вариантда тест тайёрланди', 2, '2022-03-05 14:16:26', 78),
(860, 114, 61, 'Тошкент   шахар мобил  гурух  рўйхати\r\n', 2, '2022-03-07 04:11:12', 99),
(861, 19, 63, 'RTI Internationalga Matematika va Ona tili va o\'qish savodxonligi fanlaridan o\'quv-metodik qo\'llanmalarning texnik parametrlari o\'rganilib, yuborildi. Kembrij darsliklari kabi muammolarni oldini olish uchun. ', 1, '2022-03-07 04:20:35', 78),
(862, 19, 63, 'Yodju instituti bilan hamkorlik o\'rnatish to\'g\'risaida xat yuborildi va institutning mas\'uli bilan memorandum tuzish va imzolash bo\'yicha kelishib olindi. ', 1, '2022-03-07 04:57:21', 78),
(863, 19, 63, 'Kembrij Universitetining Ingliz tili darsliklarini Brayl alifbosida tayyorlash bo\'yicha RTI Internationaldan Kembrij ruxsatini olish bo\'yicha muhokama qilindi. ', 1, '2022-03-07 04:58:22', 78),
(864, 107, 69, 'Respublika Ta’lim markazining 2022-yili 24-fevralida bo‘lib o‘tgan umumiy ishlab-chiqarish yig‘ilishining 8-sonli bayonnomasida berilgan topshiriqlar ijrosi yuzasidan hisobot', 2, '2022-03-07 06:03:03', 78),
(865, 107, 69, 'Подготовка к учениям началась 10 декабря, а первое ознакомительное зум-совещание состоялось 20 декабря в 19:00. 5, 6, 7 января 30 учителей по предмету информационные технологии прошли обучение, организованное Республиканским центром образования, у тьюторов платформы ED TECH INITIATIVES, среди них было отобрано пятеро. Обучение для отобранных учителей началось 19 января, а зум-курсы проводятся по сей день по 2-3 часа три дня в неделю. В данный момент учителя обучают своих учеников работать на этой платформе, готовя их ко дню презентации. Презентация проекта запланирована на 5 апреля в школе №110.\r\n\r\nВладельцы данной платформы просят оказать содействие в проведении показательных мероприятий и организации обучения преподавателей и учеников на основе их образовательной платформы ED TECH Initiatives. Они планируют посетить Узбекистан с 21 марта по 7 апреля 2022 года. Показательный (открытый) урок просят провести 4-5 апреля. Просят сообщить дату, время и место в ближайшее время, чтобы они смогли пригласить на проведение данного мероприятия представителей американского посольства  и Агентства США по международному развитию (USAID).', 2, '2022-03-07 06:05:29', 78),
(866, 116, 52, 'Viloyatdagi o\'qituvchilar uchun Sun\'iy intellekt mavzusi doirasi mavzularning matn ko\'rinishi yaratilishi', 2, '2022-03-07 07:26:20', 26),
(867, 116, 52, 'Sun\'iy intellekt bo\'yicha Mavzu taqdimoti yaratildi', 2, '2022-03-07 07:28:21', 26),
(868, 116, 52, 'IMK a\'zoligiga mualliflarni shakllantirish bo\'yicha xalqaro tashkilotga xat yuborildi', 2, '2022-03-07 07:29:58', 30),
(869, 116, 19, 'Xalqaro Cambridge darsliklarini 6-sinf pechat variantini ko\'rib chiqish ', 1, '2022-03-07 07:44:31', 25),
(870, 107, 69, 'https://cloudinitiatives-my.sharepoint.com/:v:/p/damir/EQQtgH8T7IhKrA75YTM3WlkBOUU2GNDPOcRvcfEGLhPPCA?e=7OPrrR\r\n\r\n04.03.2022 куни бўлиб ўтган дарсдан хавола', 2, '2022-03-07 08:02:47', 78),
(871, 107, 69, '2-sinf musiqa madaniyati, ona  tili  va  o‘qish savodxonligi,  tasviriy  san’at,  matematika, tabiiy fanlar multimediya ilovasidagi o‘yinlarning matnini filologiya va chet tillarini o‘qitish bo‘limi qardosh tillar metodistlari (tojik, qozoq, turkman, qirg‘iz, qoraqalpoq va rus tillari) tomonidan tarjimasini tayyorlab berish uchun bo\'limimiz tomonidan Bildirishnoma tayyorlandi.', 2, '2022-03-07 08:05:19', 78),
(872, 107, 69, 'Ракамли дарсликларга 1, 2 -синфлар барча иловалари юкланиб, кулфлари очиб куйилди. Ундан ташкари 3-синф иловалари учун хам жой тайорланиб, кулфлари куйилди', 2, '2022-03-07 08:10:28', 78),
(873, 107, 69, 'www.edusmart.uz web sahifaning texnik imkoniyatlari ishlab chiqildi', 2, '2022-03-07 08:11:35', 78),
(874, 107, 69, 'www.edusmart.uz web sahifaning dizayni ishlab chiqilmoqda', 2, '2022-03-07 08:12:40', 78),
(875, 13, 22, 'Жиззах вилоятга 100 фойизлик устамга жавоб хати лойихаси тайёрланди\r\n', 1, '2022-03-07 08:31:54', 78),
(876, 13, 22, 'ИДУМ ларга Биология, география фанларидан намунавий ўқув режалар қилинди', 1, '2022-03-07 09:26:11', 78),
(877, 65, 61, 'Barcha fanlardan o‘qituvchilar uchun kundalik.com platformasini yaratish uchun zoom platformasidagi yig‘ilishda qatnashildi.', 1, '2022-03-07 09:39:23', 24),
(878, 107, 69, 'https://cloudinitiatives-my.sharepoint.com/:v:/p/damir/ET3JxCrBU85JnWr2_PizGKQBDCXVlmHGmsf1toX4kCcyXw?e=edwnVR\r\n\r\n28-февраль 2022-йил бўлиб ўтган ED TECH ўқўв платформаси зум-дарсидан лавха', 2, '2022-03-07 09:57:36', 78),
(879, 107, 69, '7-sinf Rus tili (milliylarda) uchun audiolar qo\'shildi, ularga qr-kodlar tayyorlandi', 2, '2022-03-07 11:14:30', 78),
(880, 109, 22, 'tajriba sinov maqsadida 112-sonli maktabga borildi', 1, '2022-03-07 11:39:30', 78),
(881, 52, 22, 'IMK qarori tayyorlandi', 2, '2022-03-07 11:39:54', 78),
(882, 109, 22, 'Tajriba sinov maqsadida 51-sonli maktabga borildi', 1, '2022-03-07 11:40:08', 78),
(883, 109, 22, 'Tajriba sinov maqsadida 97-sonli maktabga borildi', 1, '2022-03-07 11:40:30', 78),
(884, 109, 22, 'Tajriba sinov maqsadida 274-sonli maktabga borildi', 1, '2022-03-07 11:40:45', 78),
(885, 58, 22, 'Умумий ўрта таълим мактаблари  учун яратилган платформага киритилган тест материаллари ўрганилди. Она тили ва адабиёт бўйича умумий хулоса тайёрланди', 1, '2022-03-07 11:50:35', 78),
(886, 101, 52, 'Kun tartibi', 1, '2022-03-07 11:51:38', 78),
(887, 54, 52, '3-sinf Tabiiy fanlar darsligining tarjima varianti tarjimon va muharrir bilan ishlandi', 1, '2022-03-07 11:52:34', 85),
(888, 109, 22, 'Fizika fanidan pisa topshiriqlari tayyorlandi', 1, '2022-03-07 11:55:15', 78),
(889, 17, 63, 'Назорат карточкаси кунлик ҳужжатлар мониторинги', 1, '2022-03-07 11:58:11', 78),
(890, 54, 52, 'Kundalik com platformasi yuzasidan yigʻilish tashkil etildi', 1, '2022-03-07 12:02:08', 78),
(891, 21, 52, '7-mart kundalik.com bo\'yicha', 1, '2022-03-07 12:21:33', 78),
(892, 118, 125, '7.03.2022\r\n\r\n-Loyihaga asoslangan ta’lim infografika tayyorlandi\r\n-O’zbek tili fani muallifidan intervyu montaji\r\n', 1, '2022-03-07 12:28:58', 78),
(893, 126, 125, 'Darslik mualliflari tomonidan berilgan intervyular tahriri ustida ishlandi.', 1, '2022-03-07 12:32:49', 78),
(894, 38, 25, '07.03.2022 y.\r\nDie Deutschprofis A2.1 darslik lug‘ati rus tiliga tarjimalari tahrirdan keyingi tuzatishlar kiritildi.\r\nKasaba uyushmasi tomonidan tashkil etilgan bayram tadbirida ishtirok etildi. \r\n3-sinf metodikaning sahifalovchisi bilan ishlandi.\r\n', 1, '2022-03-07 13:13:45', 78),
(895, 17, 63, 'Амалга оширилган ишлар кўлами кунлик ҳисоботи', 1, '2022-03-07 13:26:46', 78),
(896, 16, 63, 'kunlik ishlar', 1, '2022-03-07 14:00:47', 78),
(897, 16, 63, 'hisobot', 1, '2022-03-07 14:01:14', 78);

-- --------------------------------------------------------

--
-- Структура таблицы `reports_files`
--

CREATE TABLE `reports_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `report_id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `reports_files`
--

INSERT INTO `reports_files` (`id`, `report_id`, `file`, `created_at`) VALUES
(45, 64, 'files/reports_files/3c60b2fc-5071-4f9c-98b9-9cd44d73a99b.doc', '2022-02-01 10:01:11'),
(46, 67, 'files/reports_files/001821fb-8608-48f8-a9e0-96981770bc35.docx', '2022-02-01 14:27:42'),
(47, 68, 'files/reports_files/56b021dd-6b32-47ab-b280-26cbf705d044.pdf', '2022-02-01 14:38:20'),
(48, 69, 'files/reports_files/e25b75c2-456c-4a1f-9318-98820445d212.docx', '2022-02-02 04:36:28'),
(49, 70, 'files/reports_files/69e26709-a57c-4cd4-ac00-fee3b900bc54.docx', '2022-02-02 05:31:07'),
(50, 76, 'files/reports_files/65edcdee-a450-4452-8626-5efbd39aadce.xls', '2022-02-02 13:21:11'),
(51, 77, 'files/reports_files/4abd3a17-2bef-40dd-8a4f-855cac7255fb.docx', '2022-02-02 13:29:08'),
(52, 79, 'files/reports_files/9d9de24d-a1cb-4773-8419-550bbf56d600.xls', '2022-02-02 14:18:10'),
(53, 81, 'files/reports_files/a4df3603-50bf-49b9-8b9c-01094732fefd.jpg', '2022-02-02 14:31:14'),
(54, 84, 'files/reports_files/7760164a-2454-4a78-ab9a-b4844c22cfd7.pdf', '2022-02-02 15:24:18'),
(55, 86, 'files/reports_files/c008495c-b0e8-4a4a-9a50-906574c5089f.doc', '2022-02-02 15:28:35'),
(56, 90, 'files/reports_files/965caab0-3c94-46f0-995e-f45d9968c3e1.xlsx', '2022-02-02 15:38:16'),
(57, 94, 'files/reports_files/86639b3d-9532-4f1e-b9b6-34bd31afb59b.doc', '2022-02-02 15:44:46'),
(58, 96, 'files/reports_files/ec874731-aaa9-407a-88d9-ab41fc1e16b3.xlsx', '2022-02-02 15:47:24'),
(59, 98, 'files/reports_files/aa594f26-404c-4f78-b39f-aed7f83b1e92.xlsx', '2022-02-02 15:52:46'),
(60, 104, 'files/reports_files/7e60bc71-aba9-46a0-8d4e-1efc97054db1.docx', '2022-02-03 04:17:16'),
(61, 344, 'files/reports_files/7c9ac4eb-4b67-4d80-8999-5c758354cd50.pdf', '2022-02-14 07:50:38'),
(62, 345, 'files/reports_files/6c8b1592-3fb5-4b8d-a8ad-cb12fff900c1.png', '2022-02-14 07:55:45'),
(63, 346, 'files/reports_files/82fbed69-4ea0-4edb-90b3-f259e9440142.png', '2022-02-14 08:10:36'),
(64, 347, 'files/reports_files/c5efaa34-44e2-4201-abd4-9abc92f727d0.xls', '2022-02-14 08:35:29'),
(65, 348, 'files/reports_files/922f9139-cc5a-4655-9e51-21b1ff104b24.xls', '2022-02-14 09:57:08'),
(66, 349, 'files/reports_files/ffe98787-6a80-4f09-875d-2088d1d0eff8.docx', '2022-02-14 09:58:05'),
(67, 350, 'files/reports_files/f4b03ccf-5403-4d6f-98de-9db6e9f8f939.jpg', '2022-02-14 10:06:41'),
(68, 351, 'files/reports_files/7b6689d1-9015-42cc-ba01-5974b490b9aa.docx', '2022-02-14 10:11:10'),
(69, 352, 'files/reports_files/4b2d0c22-91dc-4222-8710-4f36770e5dac.docx', '2022-02-14 10:20:48'),
(70, 353, 'files/reports_files/b0c8aac3-59e7-4fe6-bb97-8a5a8d73e191.docx', '2022-02-14 10:27:56'),
(71, 354, 'files/reports_files/bbd486d1-bb10-4e15-bba4-8fea8e761f78.docx', '2022-02-14 10:32:36'),
(72, 355, 'files/reports_files/bd2537a8-e705-455a-b3f9-c30ac73528fc.docx', '2022-02-14 10:53:26'),
(73, 356, 'files/reports_files/c9bfb19e-f759-485b-8061-0fc44a683141.docx', '2022-02-14 10:58:07'),
(74, 358, 'files/reports_files/24c58b47-69b7-4eda-b732-d50644ecdab9.docx', '2022-02-14 14:24:31'),
(75, 359, 'files/reports_files/213cdcd6-8902-48f6-b5c0-dbf123d56c7e.docx', '2022-02-14 15:03:35'),
(76, 360, 'files/reports_files/faa68e31-ca71-4595-9a87-63e8d69cf581.docx', '2022-02-14 15:04:51'),
(77, 361, 'files/reports_files/a7786259-e39e-43d0-b288-0a8c8c6c494e.docx', '2022-02-14 15:05:22'),
(78, 362, 'files/reports_files/1eb74ff7-dfcd-4d5f-8d6a-daf45aa1b0cd.docx', '2022-02-14 15:05:44'),
(79, 363, 'files/reports_files/5a3594c9-811f-4118-ac3d-e6ed458b88df.doc', '2022-02-14 16:11:27'),
(80, 364, 'files/reports_files/28fe49ed-b8a1-4f7e-b9c0-61ae9e79db2a.pdf', '2022-02-15 04:57:04'),
(81, 365, 'files/reports_files/740ab123-74fb-4d10-832d-cd99d1eb29e5.rtf', '2022-02-15 06:24:13'),
(82, 366, 'files/reports_files/4214bba7-0b39-47ec-80cb-42722c357699.xlsx', '2022-02-15 06:44:29'),
(83, 367, 'files/reports_files/fb850b4d-7619-45b8-b52d-5c77ba0712a3.docx', '2022-02-15 09:40:13'),
(84, 368, 'files/reports_files/b65a2571-cdf8-40ec-ad38-58a4fb5bad1c.doc', '2022-02-15 13:42:45'),
(85, 369, 'files/reports_files/8da2bedd-47a4-4a56-bfba-85586ebcc9d7.ppt', '2022-02-15 13:47:50'),
(86, 370, 'files/reports_files/3b6750a3-98b4-4ccb-ab06-44dc9da2223f.docx', '2022-02-15 13:55:33'),
(87, 371, 'files/reports_files/86418122-71b8-424f-8450-59debf709609.docx', '2022-02-15 14:13:06'),
(88, 372, 'files/reports_files/e098d534-2a43-47ae-9747-f5c3b44f7567.docx', '2022-02-15 14:54:52'),
(89, 375, 'files/reports_files/277430c4-748a-4414-9475-78507d263083.docx', '2022-02-16 09:03:59'),
(90, 376, 'files/reports_files/66f0eab8-619e-42a0-89e8-9100d81f743b.xlsx', '2022-02-16 09:08:18'),
(91, 377, 'files/reports_files/6c1e0b05-e49e-42b3-92d4-ddc674bdb675.docx', '2022-02-16 09:09:31'),
(92, 378, 'files/reports_files/6d386ed2-91f0-4a41-9cb7-8af5121d196a.xlsx', '2022-02-16 09:19:21'),
(93, 379, 'files/reports_files/5a2a3404-bbef-48ee-892f-33a92fceace5.docx', '2022-02-16 09:23:14'),
(94, 380, 'files/reports_files/5fa16215-a512-488f-a945-0c8ddb19c865.docx', '2022-02-16 09:50:25'),
(95, 381, 'files/reports_files/0d3424c1-be31-4a39-bf6f-edd21ba56c2c.pptx', '2022-02-16 10:36:08'),
(96, 382, 'files/reports_files/70f57a10-a0e7-4fc5-b025-9fad7199cba2.docx', '2022-02-16 10:48:20'),
(97, 383, 'files/reports_files/55b30c4b-7b52-4734-921c-51fd3fb0380c.docx', '2022-02-16 11:43:43'),
(98, 384, 'files/reports_files/21cf32e8-7c73-443a-9147-8573ce47e3d9.pdf', '2022-02-16 12:14:39'),
(99, 385, 'files/reports_files/9a42fc9c-3171-41e6-b49b-9f45978d5373.pdf', '2022-02-16 12:16:05'),
(100, 386, 'files/reports_files/e461f2f5-bbbb-4b8a-9d17-dd6c23c16746.mp4', '2022-02-16 12:34:36'),
(101, 387, 'files/reports_files/38e822e7-bcb7-48b4-8d7b-b5b19435e3cb.pdf', '2022-02-16 12:41:59'),
(102, 388, 'files/reports_files/6a085821-96bf-4100-9f35-a120f3581715.pps', '2022-02-16 12:46:00'),
(103, 389, 'files/reports_files/0efeb58c-2f2d-4a3c-9fd7-965fa7735419.xlsx', '2022-02-16 12:53:06'),
(104, 390, 'files/reports_files/17566f69-5b17-4fd6-a5cd-3f91790d1e09.jpg', '2022-02-16 12:57:39'),
(105, 391, 'files/reports_files/98ab5eee-9f79-438d-b0ef-909fa40093c9.docx', '2022-02-16 13:02:58'),
(106, 392, 'files/reports_files/206378cf-0e17-48be-ada0-e9ff3884e51f.docx', '2022-02-16 13:09:27'),
(107, 393, 'files/reports_files/33aa1e39-5240-4960-aa82-1a94a45fbb7e.docx', '2022-02-16 13:18:51'),
(108, 394, 'files/reports_files/f8989132-239a-4f8e-9fcf-9a7d20c9dfda.jpg', '2022-02-16 13:29:41'),
(109, 395, 'files/reports_files/e8d231be-69b3-4cc1-bfcb-8b9cb39a785e.jpg', '2022-02-16 13:32:19'),
(110, 396, 'files/reports_files/7a3b60e6-7565-4e83-918b-3a57120d392c.docx', '2022-02-16 13:33:58'),
(111, 398, 'files/reports_files/493a39aa-2c0c-4719-be5b-70ed11488650.docx', '2022-02-16 15:24:25'),
(112, 399, 'files/reports_files/f42ce53a-b592-435b-bbb5-7178435a47ab.docx', '2022-02-16 17:13:20'),
(113, 400, 'files/reports_files/b98f64dd-2f95-46fb-bdd1-774c15df2d71.PDF', '2022-02-17 03:55:49'),
(114, 401, 'files/reports_files/3f1682e4-dcaf-4ba4-9290-1083bb161777.pdf', '2022-02-17 03:58:11'),
(115, 402, 'files/reports_files/70c6b020-3f11-4d39-8150-68e42f56b07e.rar', '2022-02-17 04:13:59'),
(116, 403, 'files/reports_files/b53535a7-4332-4862-b4b1-0ccd1a189ab5.doc', '2022-02-17 04:17:52'),
(117, 404, 'files/reports_files/8b31b373-284e-4d35-820d-9e5002067083.ppt', '2022-02-17 04:20:55'),
(118, 405, 'files/reports_files/6ac49ae8-edfa-4b87-8bc5-9ef0f0d7a54c.docx', '2022-02-17 04:39:42'),
(119, 406, 'files/reports_files/dbc7b94a-8adb-4e32-9530-e6fc8e99f45c.jpg', '2022-02-17 04:49:32'),
(120, 407, 'files/reports_files/e008eb60-85d0-49d1-8d8e-f42d7c353671.docx', '2022-02-17 05:58:49'),
(121, 408, 'files/reports_files/5f856df1-1a94-4796-9a27-65d07c3a8423.docx', '2022-02-17 05:59:36'),
(122, 409, 'files/reports_files/58bb8a3e-14ff-43da-9dab-251f697e0614.pdf', '2022-02-17 06:02:22'),
(123, 410, 'files/reports_files/007ee98c-7424-44d0-83dd-08f13d01ae2c.docx', '2022-02-17 06:07:48'),
(124, 411, 'files/reports_files/b21b54da-cc1e-49d6-b52e-a8f5c58ecb4a.ppt', '2022-02-17 06:29:49'),
(125, 412, 'files/reports_files/1fa1dd89-59b7-46a9-9700-bf708c5eef8c.xls', '2022-02-17 06:35:22'),
(126, 413, 'files/reports_files/df94a76c-e1c5-4d5a-8c56-10e92983711a.doc', '2022-02-17 07:13:21'),
(127, 414, 'files/reports_files/00e897f6-9e20-4d06-a971-9e179f427495.docx', '2022-02-17 09:28:19'),
(128, 415, 'files/reports_files/c3842311-52ba-467e-a437-3f7daf6ec661.docx', '2022-02-17 10:16:18'),
(129, 416, 'files/reports_files/f61eb51e-56a6-419a-8317-d3ecc0d3fe29.docx', '2022-02-17 11:00:10'),
(130, 417, 'files/reports_files/e4de8467-ba16-43c9-b230-0411b1f532f2.doc', '2022-02-17 12:34:37'),
(131, 418, 'files/reports_files/0fd4e8af-b6a8-4968-8294-974479916598.xlsx', '2022-02-17 12:36:30'),
(132, 419, 'files/reports_files/1fe04d0d-ca58-436f-bf0c-fe41e814592e.docx', '2022-02-17 12:40:39'),
(133, 420, 'files/reports_files/cee72c68-475b-4a27-8728-92d044fbfbda.docx', '2022-02-17 12:41:08'),
(134, 421, 'files/reports_files/907dfb00-1da1-415a-a910-cf71a404e1fd.docx', '2022-02-17 12:44:47'),
(135, 422, 'files/reports_files/62f4d879-ef6b-4e72-a33c-9cf77e67d9f2.jpg', '2022-02-17 12:48:51'),
(136, 423, 'files/reports_files/8b51b966-001a-4d75-987d-d9470d992a37.png', '2022-02-17 12:51:16'),
(137, 424, 'files/reports_files/7ae452f4-5006-49fa-af8c-561794287fcb.docx', '2022-02-17 13:52:20'),
(138, 426, 'files/reports_files/cfaf7df1-5213-41fb-8791-f90629159554.xls', '2022-02-17 14:49:38'),
(139, 427, 'files/reports_files/968715fa-6bd1-41dc-8edc-2e9213244324.pdf', '2022-02-17 14:50:46'),
(140, 428, 'files/reports_files/a06767b4-0575-461f-93f6-8ee61103f76e.pdf', '2022-02-17 14:51:35'),
(141, 429, 'files/reports_files/f46836fb-dfd3-4cc5-8bcd-bdde5d504604.docx', '2022-02-17 14:54:08'),
(142, 430, 'files/reports_files/26d3bc76-5816-440e-87e6-37e275f5ab3e.docx', '2022-02-17 15:20:17'),
(143, 431, 'files/reports_files/952dc0e5-aa9c-4c19-b2b5-8cb16f465a94.docx', '2022-02-17 15:24:40'),
(144, 432, 'files/reports_files/b7326e2e-8f19-4212-8fc5-b9c22de00244.docx', '2022-02-17 15:25:44'),
(145, 433, 'files/reports_files/1cffc3cd-ea2b-40b1-9fb7-7d3fe7e10f48.docx', '2022-02-17 15:26:30'),
(146, 434, 'files/reports_files/b4a43438-22ab-4c38-aa3a-b5d30e26e7dc.docx', '2022-02-18 05:49:42'),
(147, 435, 'files/reports_files/8b5beb81-57bb-4bbf-ad1b-15d782f8b8e9.pdf', '2022-02-18 12:14:45'),
(148, 436, 'files/reports_files/e52abbfb-fcfc-4051-98c3-8110c087c772.pdf', '2022-02-18 12:19:39'),
(149, 437, 'files/reports_files/fa36f295-8009-4eab-b283-80b1f5ad2f44.pdf', '2022-02-18 12:20:54'),
(150, 438, 'files/reports_files/87c4bbb1-53c0-4599-bf5a-3d242715619a.pdf', '2022-02-18 12:21:34'),
(151, 439, 'files/reports_files/45ffb6fc-4159-4101-b790-940d3d0a6499.jpg', '2022-02-18 12:22:23'),
(152, 440, 'files/reports_files/20573f5d-67b4-4123-9b3d-738bc929ccae.doc', '2022-02-18 13:11:31'),
(153, 441, 'files/reports_files/c31982b5-92e7-42c5-8840-4ddf3c022d8f.doc', '2022-02-18 13:17:52'),
(154, 442, 'files/reports_files/071e00d4-251f-4f4c-a063-079d4777dd64.docx', '2022-02-18 13:21:41'),
(155, 443, 'files/reports_files/e2ba1931-9d8d-4471-9f46-6ada5a7b5d18.docx', '2022-02-18 13:22:43'),
(156, 444, 'files/reports_files/3c39f188-9d99-4154-b12c-3bdb90aba6f3.docx', '2022-02-18 13:25:13'),
(157, 445, 'files/reports_files/a26b2896-6be0-4f46-9c49-359746383419.docx', '2022-02-18 13:29:12'),
(158, 446, 'files/reports_files/1bc51d8e-d074-461f-8641-f622241527c7.docx', '2022-02-18 13:33:19'),
(159, 447, 'files/reports_files/ad33e59f-2f24-436b-844b-fcd4be7a8cf6.docx', '2022-02-18 13:40:29'),
(160, 449, 'files/reports_files/5048814d-f6eb-45e8-b3a4-971969a61108.docx', '2022-02-18 14:43:21'),
(161, 450, 'files/reports_files/6ef9ed00-806e-41f5-a988-2749450e6633.docx', '2022-02-18 16:22:08'),
(162, 451, 'files/reports_files/bf95a9a9-9267-40e8-adb2-0b95401e3eb8.pdf', '2022-02-18 16:29:28'),
(163, 452, 'files/reports_files/db3595c4-1077-4c2e-8ace-8b89dce36b2c.pdf', '2022-02-18 16:32:00'),
(164, 453, 'files/reports_files/efd57d8a-d396-481c-967c-82b4e5b27404.docx', '2022-02-18 16:39:28'),
(165, 454, 'files/reports_files/ba6d36ad-ed8b-48e2-bc57-fbf58842cc2e.docx', '2022-02-19 06:55:21'),
(166, 455, 'files/reports_files/451472a5-3b29-4343-8400-f272dfe5cb11.docx', '2022-02-19 07:35:16'),
(167, 456, 'files/reports_files/7d0b93f1-0f19-469d-ba70-0dd9e7f3771b.pptx', '2022-02-19 10:53:27'),
(168, 457, 'files/reports_files/2e6b6b7f-fe22-4d86-9050-ecd715eceb53.jpg', '2022-02-19 10:56:56'),
(169, 460, 'files/reports_files/0b7bb007-992e-47dd-9171-ee7878864392.jpg', '2022-02-19 11:05:35'),
(170, 461, 'files/reports_files/b5d0fe60-d75f-418e-ac28-a8aca0359fb4.jpg', '2022-02-19 11:07:43'),
(171, 462, 'files/reports_files/15a4b9eb-7bf6-4544-9b05-7649136574b0.jpg', '2022-02-19 11:11:52'),
(172, 463, 'files/reports_files/6d87825c-684c-4b4d-99c7-e6a0ecd338a9.docx', '2022-02-19 11:37:47'),
(173, 464, 'files/reports_files/944fd172-e526-47c5-9614-2d0a78e180a5.docx', '2022-02-19 13:17:06'),
(174, 465, 'files/reports_files/4e498627-9d24-402c-a559-b4546942ad88.docx', '2022-02-21 04:50:15'),
(175, 466, 'files/reports_files/e85b0487-1ef3-4f96-94b7-5566743d1a10.docx', '2022-02-21 06:51:17'),
(176, 467, 'files/reports_files/9374ed56-5b75-4869-b612-0f28b75315fe.docx', '2022-02-21 06:59:08'),
(177, 468, 'files/reports_files/1c578557-45ba-466e-b1d2-c7ab00832543.docx', '2022-02-21 07:09:38'),
(178, 469, 'files/reports_files/a0d003d0-a234-41dc-853f-d35f0141f2d2.pps', '2022-02-21 11:08:25'),
(179, 470, 'files/reports_files/df268ec1-478f-4206-b343-64f87f6e6f3f.docx', '2022-02-21 11:12:51'),
(180, 471, 'files/reports_files/973ca133-7aea-4ef4-954c-0d8a676eaf10.docx', '2022-02-21 11:18:20'),
(181, 472, 'files/reports_files/668df0fd-c286-4605-9d51-2de998bf0e24.pdf', '2022-02-21 11:23:01'),
(182, 473, 'files/reports_files/3771f182-cb55-4b83-aab6-915b4dd69d09.doc', '2022-02-21 12:41:01'),
(183, 474, 'files/reports_files/86579e3a-a7de-440a-ba18-2629cc07979d.docx', '2022-02-21 12:53:43'),
(184, 476, 'files/reports_files/f0d66469-f4a1-4e67-ac1b-a08b3b19c6e9.docx', '2022-02-21 14:44:20'),
(185, 477, 'files/reports_files/9c75b2ed-00d7-4d80-9e04-8ee7a87dc7da.docx', '2022-02-21 14:49:04'),
(186, 478, 'files/reports_files/e6041fe8-465f-418a-ba0e-012293468255.docx', '2022-02-21 15:40:18'),
(187, 479, 'files/reports_files/6d500ddf-b5ab-42cf-b715-48198c3dc69d.docx', '2022-02-21 16:11:49'),
(188, 480, 'files/reports_files/efd0ff70-7d28-447e-ab82-662eb10ac399.jpg', '2022-02-21 16:16:41'),
(189, 481, 'files/reports_files/d612b0cd-5993-42b9-a5df-85eb9cc7f147.docx', '2022-02-21 16:25:34'),
(190, 482, 'files/reports_files/0456f445-9663-4cc1-ae43-2bba4b347571.jpg', '2022-02-21 16:27:43'),
(191, 483, 'files/reports_files/56f9d168-c8a0-478f-92fb-260df33d7825.pdf', '2022-02-22 09:27:56'),
(192, 484, 'files/reports_files/9393b44d-24f1-4f74-ae9f-742961929d96.rar', '2022-02-22 10:15:17'),
(193, 485, 'files/reports_files/2d04edc3-448c-48ac-9e6f-c696c20e2e5b.rar', '2022-02-22 10:23:10'),
(194, 486, 'files/reports_files/d4c376ff-596f-4104-a63e-6e7a5d9e1536.jpg', '2022-02-22 10:34:17'),
(195, 492, 'files/reports_files/4b70b084-fba6-4d97-83ad-4d523ed6229b.docx', '2022-02-22 12:08:37'),
(196, 493, 'files/reports_files/129f51be-8c67-40c1-a01b-ef4a3419e62c.docx', '2022-02-22 12:38:50'),
(197, 494, 'files/reports_files/8cea43c2-1abe-4101-9319-6b38a5af7464.docx', '2022-02-22 12:48:15'),
(198, 495, 'files/reports_files/eeecfbca-7e0b-4804-84ee-a957cdce8523.docx', '2022-02-22 12:49:13'),
(199, 497, 'files/reports_files/b82f7ee8-5b50-4eb1-88ed-17dbe3c3adfa.pdf', '2022-02-22 13:19:46'),
(200, 498, 'files/reports_files/3aebcfa2-05e6-4eff-8980-e081d80b1e64.docx', '2022-02-22 13:41:07'),
(201, 499, 'files/reports_files/1eac0bce-f33d-4908-b179-1f2121c1ecfe.docx', '2022-02-22 14:41:14'),
(202, 505, 'files/reports_files/26e04c64-ff6a-4cda-a4f5-e44d9e4123d1.docx', '2022-02-22 14:46:57'),
(203, 506, 'files/reports_files/eb49e9b7-b555-44ea-8374-01667205f5f2.jpg', '2022-02-22 14:49:35'),
(204, 507, 'files/reports_files/2077d221-10ec-4752-8a05-82776c27e3b2.jpg', '2022-02-22 14:52:16'),
(205, 508, 'files/reports_files/8fd6eaad-f9ca-482c-b030-8e1c8900e6f4.jpg', '2022-02-22 14:53:56'),
(206, 516, 'files/reports_files/f40c3073-850a-4e0d-8b95-670307d579d3.docx', '2022-02-23 10:28:17'),
(207, 518, 'files/reports_files/84d92c51-08ab-4588-a417-f09e38853b39.docx', '2022-02-23 12:55:05'),
(208, 519, 'files/reports_files/42c1929a-f23f-440b-9a91-e504dce8842a.docx', '2022-02-23 13:03:30'),
(209, 520, 'files/reports_files/79beec49-5400-4e3c-8c37-300bfe6a4756.docx', '2022-02-23 13:04:50'),
(210, 523, 'files/reports_files/2a35ae22-d8ef-4b3e-adf1-49b9bc85980a.docx', '2022-02-23 13:16:05'),
(211, 524, 'files/reports_files/e6f641bf-c580-446a-aa0e-6efdbe47a12b.docx', '2022-02-23 13:19:34'),
(212, 525, 'files/reports_files/6e31ad3a-f935-42d5-a7a3-cabdd8483657.docx', '2022-02-23 13:26:29'),
(213, 530, 'files/reports_files/ee1ec757-7af3-4945-b667-595905c2ca11.jpg', '2022-02-23 16:10:15'),
(214, 564, 'files/reports_files/8d885714-9d97-4d75-881f-ac76ef4167bd.docx', '2022-02-24 12:53:02'),
(215, 577, 'files/reports_files/c58cd819-b81c-4aa9-8ada-af15f83a90e8.docx', '2022-02-25 04:37:47'),
(216, 636, 'files/reports_files/67a9ecff-414f-4461-8037-ac834c041edd.pdf', '2022-02-28 02:54:18'),
(217, 637, 'files/reports_files/d0623f8e-3897-4e6b-b838-d3319c525504.docx', '2022-02-28 02:56:36'),
(218, 638, 'files/reports_files/7d5a29ec-a30e-4a84-960c-f8d3923673ca.docx', '2022-02-28 03:56:23'),
(219, 639, 'files/reports_files/18fc8de7-251e-4362-816f-c758b5416ee7.docx', '2022-02-28 06:33:47'),
(220, 640, 'files/reports_files/64105935-a1e9-43d0-b6fc-4b14b24cbab0.docx', '2022-02-28 07:38:32'),
(221, 641, 'files/reports_files/2df95707-54e2-465e-8029-bab96ce7b765.jpg', '2022-02-28 07:54:50'),
(222, 642, 'files/reports_files/0afbdb77-9b34-428f-8849-5e7e81d4b93f.jpg', '2022-02-28 07:58:38'),
(223, 643, 'files/reports_files/6efbff39-ca3b-47b2-9286-e15c0533fdce.jpg', '2022-02-28 08:01:07'),
(224, 644, 'files/reports_files/37296838-0b08-4b58-895e-d7d5c8d50714.docx', '2022-02-28 08:16:59'),
(225, 645, 'files/reports_files/43107e02-6861-410d-8714-6c1f845afc35.pdf', '2022-02-28 08:19:05'),
(226, 646, 'files/reports_files/0ee2333f-7ee2-4fcb-a8f4-9dfce5334551.jpg', '2022-02-28 08:22:17'),
(227, 647, 'files/reports_files/e7c4a4de-bdf0-4616-a761-c5b2f3ad98f5.docx', '2022-02-28 09:40:53'),
(228, 648, 'files/reports_files/5a5df184-08df-479c-b27a-9e7d910d5c28.docx', '2022-02-28 09:45:03'),
(229, 649, 'files/reports_files/34f6d5f8-166c-4cf8-a59b-a7b11b0eec20.jpg', '2022-02-28 10:11:43'),
(230, 650, 'files/reports_files/3c918033-6700-4cda-9083-0fa52c820a2c.docx', '2022-02-28 10:23:54'),
(231, 651, 'files/reports_files/0c6cac19-6599-4de8-b055-c4a6d7b6728c.docx', '2022-02-28 10:47:14'),
(232, 652, 'files/reports_files/3e9d4adb-8eeb-4290-8556-1bd3a9abe893.docx', '2022-02-28 10:49:00'),
(233, 653, 'files/reports_files/f0430df8-1833-4caf-a58b-278d4980e3af.jpg', '2022-02-28 10:51:24'),
(234, 654, 'files/reports_files/2a9274ba-ebf3-4207-8192-bf8be6c7ef57.pptx', '2022-02-28 10:55:37'),
(235, 655, 'files/reports_files/42950e6c-d696-4663-a6a4-b1e89e7b001d.docx', '2022-02-28 10:59:02'),
(236, 656, 'files/reports_files/aa9d5999-4581-4e03-ba9c-93d747162832.docx', '2022-02-28 11:02:38'),
(237, 657, 'files/reports_files/b510a6a5-5e27-4c83-bcfe-2099263ea322.jpg', '2022-02-28 11:14:00'),
(238, 658, 'files/reports_files/9135dd2d-546d-4219-b53e-4c63f1e9392f.docx', '2022-02-28 11:21:43'),
(239, 659, 'files/reports_files/6147c98b-abdb-4dbf-8e6c-9b59ce7fccb4.docx', '2022-02-28 11:32:06'),
(240, 660, 'files/reports_files/63db3d57-0473-495a-9090-76e78b64b687.docx', '2022-02-28 13:08:57'),
(241, 662, 'files/reports_files/6726b5bc-e490-46f9-834a-1873752480b2.docx', '2022-02-28 15:32:59'),
(242, 663, 'files/reports_files/50839318-0b2b-420c-8887-5dcdd67c7e3c.docx', '2022-03-01 04:03:38'),
(243, 664, 'files/reports_files/aff961c7-5a0c-4f0d-837b-473c9a6242cf.docx', '2022-03-01 06:35:39'),
(244, 665, 'files/reports_files/8e16ade6-5337-438d-987b-21d3969cfc0c.pdf', '2022-03-01 07:53:36'),
(245, 666, 'files/reports_files/1e643afc-210e-4933-97b8-0f3c1436a00a.pdf', '2022-03-01 07:55:18'),
(246, 667, 'files/reports_files/d87c2bd4-3a81-439b-b2ca-fa92523f8b4b.pdf', '2022-03-01 07:56:07'),
(247, 668, 'files/reports_files/872998ea-212e-41ef-b94a-757de24d61b6.docx', '2022-03-01 08:42:33'),
(248, 669, 'files/reports_files/c70b7285-74d5-4d71-94b0-1fc3834328a5.rar', '2022-03-01 10:00:55'),
(249, 670, 'files/reports_files/cad3b86b-7e14-4138-9487-e8c1f1a41be8.pdf', '2022-03-01 10:58:22'),
(250, 671, 'files/reports_files/a8a16f60-04c4-4453-9a69-c7d03f318e5c.rar', '2022-03-01 11:03:46'),
(251, 672, 'files/reports_files/b2e09919-523b-417e-b916-a4f8e8c4b6f7.pdf', '2022-03-01 11:04:45'),
(252, 673, 'files/reports_files/fa31a7dd-6feb-43b6-8d50-71a906b2c80f.jpg', '2022-03-01 11:05:36'),
(253, 674, 'files/reports_files/5f7c2544-928f-4d01-adc0-ffe1fce6f4af.jpg', '2022-03-01 11:08:36'),
(254, 675, 'files/reports_files/e2fbc2c3-8b85-4f47-9e85-0e576cbe3c8c.docx', '2022-03-01 11:09:20'),
(255, 676, 'files/reports_files/22f4f738-94aa-453e-b627-af28044dbc69.jpg', '2022-03-01 11:11:29'),
(256, 677, 'files/reports_files/0e92e341-0684-4c96-9a3f-323f13af4434.jpg', '2022-03-01 11:13:48'),
(257, 678, 'files/reports_files/88f75879-2393-4146-a57d-221f0421bbd8.pdf', '2022-03-01 11:16:45'),
(258, 679, 'files/reports_files/d04d42d3-8608-47d3-acca-a12f4fe2d078.pdf', '2022-03-01 11:18:44'),
(259, 680, 'files/reports_files/1a4e5817-ac22-4b7e-8f5f-5aae1245dc82.jpg', '2022-03-01 11:21:18'),
(260, 681, 'files/reports_files/3a59b2cd-7895-4de0-97ea-e4d2673cb750.pdf', '2022-03-01 11:21:23'),
(261, 682, 'files/reports_files/d2b9aa40-4dbe-4d8e-8d1d-a83b02bc503b.jpg', '2022-03-01 11:21:25'),
(262, 683, 'files/reports_files/e5a2a9c7-3a78-4831-83a7-878efa838253.jpg', '2022-03-01 11:22:14'),
(263, 684, 'files/reports_files/07aae3f6-3745-47f2-b8df-d2a2c9a411f4.pdf', '2022-03-01 11:22:54'),
(264, 685, 'files/reports_files/bc5a25c4-1486-4ce9-8a1a-07de80eed9d0.pdf', '2022-03-01 11:23:11'),
(265, 686, 'files/reports_files/c7597005-b64c-4959-ab58-0e74beec6da3.jpg', '2022-03-01 11:23:35'),
(266, 687, 'files/reports_files/753884d5-dfaa-40c7-918c-7567075ad29f.jpg', '2022-03-01 11:23:44'),
(267, 688, 'files/reports_files/8098d2b3-590b-4323-910b-a0c976b37ca5.docx', '2022-03-01 11:28:05'),
(268, 690, 'files/reports_files/21afccc1-94b0-4152-9a43-36bccd6d6eed.jpg', '2022-03-01 11:32:32'),
(269, 693, 'files/reports_files/ed0698d7-e03e-4c61-b5bb-022a14e8d3be.doc', '2022-03-01 12:20:45'),
(270, 694, 'files/reports_files/692bd049-02d6-4b23-b8c5-0e857c794a30.docx', '2022-03-01 12:22:56'),
(271, 696, 'files/reports_files/9cb96629-7e1c-4ac9-b016-de0076eda73e.pdf', '2022-03-01 12:27:39'),
(272, 699, 'files/reports_files/99028c08-5d4d-49a1-a6a5-ab976100c114.doc', '2022-03-01 12:30:19'),
(273, 702, 'files/reports_files/ac879375-b878-4d6b-90ad-8495e2b92f4f.jpg', '2022-03-01 12:33:05'),
(274, 703, 'files/reports_files/4e04d519-9651-4d78-b360-41f077b5cf00.docx', '2022-03-01 12:37:19'),
(275, 704, 'files/reports_files/7126b98d-eea5-4e30-b436-0be5c35da806.docx', '2022-03-01 12:44:27'),
(276, 706, 'files/reports_files/62cf8520-48ca-40fc-b794-64b536bf7f92.pdf', '2022-03-01 12:53:37'),
(277, 707, 'files/reports_files/d85979e3-2309-43c7-84c4-98e1cd59ee06.pdf', '2022-03-01 12:55:01'),
(278, 708, 'files/reports_files/9ebdb082-5d23-4aa2-bdff-8ceff378c1fc.doc', '2022-03-01 12:55:40'),
(279, 709, 'files/reports_files/79c3f258-0538-4cd9-812c-b330a2b47aeb.docx', '2022-03-01 12:56:09'),
(280, 710, 'files/reports_files/d09efaf8-4280-41ff-8235-ec3282b938bb.docx', '2022-03-01 12:57:53'),
(281, 711, 'files/reports_files/61c4dfae-be97-48fb-9672-2d916d5570b7.docx', '2022-03-01 13:02:31'),
(282, 712, 'files/reports_files/82875866-2e08-4404-ae8c-da830af5fe34.docx', '2022-03-01 13:03:02'),
(283, 713, 'files/reports_files/f2192fcd-6723-46fe-8888-68595a2b8cd8.docx', '2022-03-01 13:12:41'),
(284, 714, 'files/reports_files/56381609-0cf6-4ae3-8792-f6d12f22add5.jpg', '2022-03-01 13:14:53'),
(285, 715, 'files/reports_files/dd4a7246-54e5-4d58-a991-fa35091f4f8b.xlsx', '2022-03-01 13:15:23'),
(286, 716, 'files/reports_files/5591d750-b926-4245-9b4a-4fdc10d7f15c.docx', '2022-03-01 13:22:46'),
(287, 717, 'files/reports_files/8877e66e-bb33-408d-bba8-72759cb1b428.pdf', '2022-03-01 13:22:47'),
(288, 718, 'files/reports_files/9cb9171a-8fcb-4cff-b16a-11ae9ecda5e2.png', '2022-03-01 13:41:03'),
(289, 719, 'files/reports_files/f0fa31f7-ad99-4788-9745-8718087b45c9.pdf', '2022-03-01 13:44:34'),
(290, 720, 'files/reports_files/834954e1-c25c-4dbe-bbc4-f794bdd67be5.docx', '2022-03-01 13:45:38'),
(291, 721, 'files/reports_files/5af93fd2-83ad-4df8-885a-496bdb651efb.docx', '2022-03-01 13:50:20'),
(292, 722, 'files/reports_files/9859bc7c-451f-4d10-83ca-48ddd7d11108.docx', '2022-03-01 13:58:48'),
(293, 724, 'files/reports_files/d2548ecd-49c6-405a-9e23-0fee3b706437.docx', '2022-03-01 14:08:15'),
(294, 726, 'files/reports_files/533c9458-d22c-4baf-8fec-bdc9ff9226cd.png', '2022-03-01 15:26:17'),
(295, 727, 'files/reports_files/5f4694c5-9653-4b44-9fa0-e237e676108e.png', '2022-03-01 15:29:29'),
(296, 728, 'files/reports_files/b7f0cfd1-8032-4fc0-8786-30138f87ea34.docx', '2022-03-01 15:36:54'),
(297, 729, 'files/reports_files/820fcf37-abf9-440d-95a5-7b77da134855.docx', '2022-03-01 15:37:31'),
(298, 730, 'files/reports_files/900a7ff8-9a09-410d-baee-4751652a6a1a.pdf', '2022-03-01 16:14:57'),
(299, 732, 'files/reports_files/7d4599a5-64b7-41dd-ae49-eebd95a57584.ppt', '2022-03-02 04:47:47'),
(300, 733, 'files/reports_files/1fd153ea-c5c0-41d5-9abf-230e02843587.pdf', '2022-03-02 04:48:51'),
(301, 734, 'files/reports_files/4d554a22-89c1-45dc-80c9-2a2a1f08a12f.pdf', '2022-03-02 04:50:45'),
(302, 735, 'files/reports_files/9b811ab4-e344-40c8-b13a-208db6d7342a.docx', '2022-03-02 04:56:05'),
(303, 736, 'files/reports_files/9b68d427-27ce-40c5-bca0-9b47537b332c.rar', '2022-03-02 04:59:07'),
(304, 737, 'files/reports_files/2a841016-f723-4365-979a-5c11212c2816.docx', '2022-03-02 05:01:31'),
(305, 738, 'files/reports_files/a672c502-5336-4c23-837b-db5ae109cddf.docx', '2022-03-02 06:40:52'),
(306, 739, 'files/reports_files/33bd80bb-4141-449f-8afc-39d87e1c2b78.jpg', '2022-03-02 06:51:22'),
(307, 740, 'files/reports_files/6770647d-4680-4fde-91f6-31a7494d78f8.docx', '2022-03-02 08:54:35'),
(308, 741, 'files/reports_files/7471afcd-f486-423a-a263-b91362a294e1.xlsx', '2022-03-02 08:59:51'),
(309, 742, 'files/reports_files/4fdc77f4-2a7f-40fd-8573-783b8d759d59.xlsx', '2022-03-02 09:01:26'),
(310, 744, 'files/reports_files/9f71d12f-42e2-45ef-9d8d-49484d9b2eab.pdf', '2022-03-02 09:58:16'),
(311, 745, 'files/reports_files/c2d8938c-c426-446a-aadd-cb89c67fb1e1.docx', '2022-03-02 10:08:28'),
(312, 746, 'files/reports_files/17a1cfb8-6ee1-4537-ad51-ff70c141b494.doc', '2022-03-02 10:15:51'),
(313, 747, 'files/reports_files/a31670ca-849c-489d-98a1-ef60dd593be1.docx', '2022-03-02 10:49:09'),
(314, 748, 'files/reports_files/e7db7fa9-a228-4f10-acb1-9f4581036fd7.docx', '2022-03-02 11:06:40'),
(315, 749, 'files/reports_files/f950ab0c-8a33-4d1d-849f-f6c1fd974d87.docx', '2022-03-02 11:12:18'),
(316, 750, 'files/reports_files/b328baaa-8318-4f90-bc36-55bf96d96ecc.docx', '2022-03-02 11:39:28'),
(317, 751, 'files/reports_files/4e034dd0-4ffb-4413-b8cf-6f2f760814ed.docx', '2022-03-02 11:43:50'),
(318, 752, 'files/reports_files/191783ce-314c-4c42-a87d-8e8a875a3191.docx', '2022-03-02 11:46:01'),
(319, 753, 'files/reports_files/fe055633-f729-4c9c-8f5c-3e77361ed106.docx', '2022-03-02 12:22:52'),
(320, 755, 'files/reports_files/344e4dc5-4e28-4320-91be-ca78f8bc5740.doc', '2022-03-02 12:39:16'),
(321, 756, 'files/reports_files/7a8b50bf-0107-4b18-a066-08c561039101.docx', '2022-03-02 12:40:14'),
(322, 759, 'files/reports_files/ca26cce1-c9ad-444b-886e-2352f27d745c.jpg', '2022-03-02 13:22:45'),
(323, 763, 'files/reports_files/1bf300b1-2a86-40be-83da-50f7862178f7.docx', '2022-03-02 14:27:19'),
(324, 764, 'files/reports_files/c43b4586-28ad-4926-81a7-dbda1016923d.docx', '2022-03-02 14:28:40'),
(325, 765, 'files/reports_files/dc88c5f3-3fbd-4ae8-86aa-2654ea5b5a2b.docx', '2022-03-02 14:33:29'),
(326, 766, 'files/reports_files/9d37290c-8d07-48cd-bdbe-77b96ff04f7c.docx', '2022-03-02 16:43:07'),
(327, 767, 'files/reports_files/35e89b64-01f8-478e-b4fe-016dcaa118a4.docx', '2022-03-02 16:43:41'),
(328, 768, 'files/reports_files/262f119a-249e-4f39-a47e-8243735f990c.docx', '2022-03-02 16:44:13'),
(329, 769, 'files/reports_files/58fd3e21-e9f4-4125-92c2-7868fd7b1759.docx', '2022-03-02 16:48:02'),
(330, 770, 'files/reports_files/eb42a739-b980-4724-bc80-f6d11fb3e38d.docx', '2022-03-02 16:48:56'),
(331, 771, 'files/reports_files/e4570257-d2fe-4ab6-9f80-f87e8bf8c997.docx', '2022-03-02 16:51:08'),
(332, 772, 'files/reports_files/49cc794c-9a33-46b6-be69-8ce0fe194e34.pdf', '2022-03-02 17:30:58'),
(333, 773, 'files/reports_files/f3f0818c-6a68-4fb2-a7cf-6d4dd8057088.pdf', '2022-03-03 05:10:43'),
(334, 774, 'files/reports_files/cf7d14e6-2e1f-4cef-abb5-d871ea1fc063.doc', '2022-03-03 05:15:01'),
(335, 775, 'files/reports_files/c5731e50-8d31-4145-adf2-ad3c195abb18.docx', '2022-03-03 07:07:21'),
(336, 776, 'files/reports_files/9baf6815-e28c-4d3f-9546-7267e03d504c.doc', '2022-03-03 07:08:35'),
(337, 777, 'files/reports_files/461ce4c1-7a59-45ec-af35-f39852fb9b20.jpg', '2022-03-03 07:12:04'),
(338, 778, 'files/reports_files/a662766e-b894-46e3-baaf-3faf0e0a9ffb.docx', '2022-03-03 08:55:37'),
(339, 779, 'files/reports_files/5de0532c-2efa-4a8d-92df-4c6b406bff28.pdf', '2022-03-03 09:47:41'),
(340, 780, 'files/reports_files/c59cf434-7937-4a0c-b501-2fc6758e413d.pdf', '2022-03-03 09:49:51'),
(341, 781, 'files/reports_files/2ecfa98c-aae0-419d-a49e-9ed5d029e749.docx', '2022-03-03 09:52:38'),
(342, 782, 'files/reports_files/caae1209-67e5-4ca2-a761-89a870692635.docx', '2022-03-03 10:03:45'),
(343, 783, 'files/reports_files/505cfdf2-1851-4d02-aca5-38125c804b53.xlsx', '2022-03-03 10:04:34'),
(344, 784, 'files/reports_files/8206103f-1a5e-40d3-8d78-2cc3668bb64e.xlsx', '2022-03-03 10:05:04'),
(345, 788, 'files/reports_files/90c3be18-7635-4535-af82-8c3857000a6f.docx', '2022-03-03 12:06:08'),
(346, 789, 'files/reports_files/a0f6f472-2975-458d-b73a-2628c633e613.docx', '2022-03-03 12:21:23'),
(347, 792, 'files/reports_files/54a1e09b-53e0-4421-85a3-fa59e5b9a86f.docx', '2022-03-03 12:48:06'),
(348, 793, 'files/reports_files/9e2c6886-f9d7-402b-9285-26c181b971bc.docx', '2022-03-03 12:53:46'),
(349, 794, 'files/reports_files/bb090094-3a31-44df-b10d-d3ba62996678.docx', '2022-03-03 12:54:26'),
(350, 795, 'files/reports_files/05ca845c-d67e-4c79-834d-454b2def8ff5.docx', '2022-03-03 12:54:55'),
(351, 797, 'files/reports_files/d75bda51-8585-494f-b412-0e1696fe081c.jpg', '2022-03-03 13:10:59'),
(352, 798, 'files/reports_files/7ac9dc75-c98d-4dbc-b138-f46135c63785.rar', '2022-03-03 13:13:07'),
(353, 799, 'files/reports_files/59ab964f-c685-4a71-bd8d-79ce9d4b2ff5.jpg', '2022-03-03 13:14:06'),
(354, 800, 'files/reports_files/3c6e6220-cc51-41db-9207-7afa4f6cac7e.jpg', '2022-03-03 13:14:57'),
(355, 801, 'files/reports_files/2e8a4d98-2860-4ac7-9a37-5decaaaafbc6.docx', '2022-03-03 13:19:28'),
(356, 802, 'files/reports_files/b71f3291-33dc-462c-be04-bbf4ba27dac5.docx', '2022-03-03 13:28:06'),
(357, 803, 'files/reports_files/5d5702c6-4407-44ee-a661-67956174e0eb.docx', '2022-03-03 13:30:40'),
(358, 804, 'files/reports_files/860f5b3a-a511-436a-8228-594ebac89fe3.jpg', '2022-03-03 13:34:38'),
(359, 805, 'files/reports_files/5cbbb231-f8e0-40d0-a3b5-28f999a9aedf.jpg', '2022-03-03 13:36:44'),
(360, 808, 'files/reports_files/2e621a0f-1eb7-4e21-be77-a1eb4e609b0e.doc', '2022-03-03 14:55:48'),
(361, 809, 'files/reports_files/c5383388-aa27-48ad-8762-a6bc5ecfbca0.docx', '2022-03-03 14:59:56'),
(362, 810, 'files/reports_files/026aed9b-639c-4466-9cb1-81b8889aa6ef.docx', '2022-03-03 15:02:02'),
(363, 811, 'files/reports_files/f6e49c91-25e9-40fd-9015-048cab2846ff.docx', '2022-03-03 15:12:32'),
(364, 812, 'files/reports_files/51221d17-f6c0-4789-8513-b9a0d8a282b3.docx', '2022-03-03 15:13:01'),
(365, 813, 'files/reports_files/6f3c7e56-f3f7-48de-9853-10e99204bec5.docx', '2022-03-04 07:12:51'),
(366, 814, 'files/reports_files/010526eb-deea-446f-92e4-19c72dc140b2.xlsx', '2022-03-04 07:14:45'),
(367, 815, 'files/reports_files/39707dcf-d90f-4636-845b-8ca56da50424.docx', '2022-03-04 07:50:36'),
(368, 816, 'files/reports_files/a727f4e6-5f9b-46f4-9e16-19f4a92c23d1.docx', '2022-03-04 08:16:54'),
(369, 817, 'files/reports_files/e51693dd-ecc2-4db6-84ca-ee8891bd88fe.docx', '2022-03-04 09:42:36'),
(370, 818, 'files/reports_files/2796cd91-238a-44dd-a8aa-19bea9178479.docx', '2022-03-04 10:03:59'),
(371, 819, 'files/reports_files/f438c268-9fe0-4f87-a733-fd8a40dd3362.docx', '2022-03-04 10:19:28'),
(372, 820, 'files/reports_files/c2a534ce-360a-46ff-9af2-7570c69a931f.pdf', '2022-03-04 10:22:28'),
(373, 821, 'files/reports_files/ec0f9fe3-a68b-4391-87fd-3b8756d02246.doc', '2022-03-04 10:26:58'),
(374, 822, 'files/reports_files/9b883846-58d2-4793-9fec-efaa8d7fbae9.docx', '2022-03-04 10:30:12'),
(375, 823, 'files/reports_files/441ee0bf-c614-413d-99ea-2de8b13740f7.docx', '2022-03-04 10:36:19'),
(376, 824, 'files/reports_files/b36ceaa2-8602-4abb-be01-168649caac0f.docx', '2022-03-04 10:56:02'),
(377, 825, 'files/reports_files/28c8edf5-d217-45d2-b4be-930168287b19.pdf', '2022-03-04 11:03:42'),
(378, 826, 'files/reports_files/b67774ae-2ab1-431d-81f4-792f6512af0c.jpg', '2022-03-04 11:57:10'),
(379, 827, 'files/reports_files/6f2e6fc1-1d8e-4e6a-b1a4-69aacbb04526.jpg', '2022-03-04 11:57:38'),
(380, 828, 'files/reports_files/17893fd4-270a-4fb8-b5c4-39cb9dc50fa8.doc', '2022-03-04 12:39:46'),
(381, 829, 'files/reports_files/2785c93a-c789-40b7-aecd-b9931286ab1c.xlsx', '2022-03-04 12:41:05'),
(382, 830, 'files/reports_files/5f4cd7cc-adcc-4eeb-a7ba-e98ddd79bf21.pptx', '2022-03-04 12:44:40'),
(383, 831, 'files/reports_files/d2cd7008-0ed8-43a7-8320-304c1e377953.pdf', '2022-03-04 12:47:08'),
(384, 832, 'files/reports_files/0cc162fc-4e3e-467c-8d21-aa3fa5b6dee4.xlsx', '2022-03-04 12:55:47'),
(385, 833, 'files/reports_files/927acbcf-d3c8-4b5a-8752-eaaa4d32d574.xlsx', '2022-03-04 12:58:22'),
(386, 834, 'files/reports_files/d194c133-aae0-45da-96e0-403cd04ba817.xls', '2022-03-04 12:59:09'),
(387, 835, 'files/reports_files/cf91742d-9bad-446b-8d5d-8da984337096.docx', '2022-03-04 13:21:13'),
(388, 836, 'files/reports_files/f1aac2eb-d2b5-4fdb-afcb-95da4e86f593.docx', '2022-03-04 13:28:16'),
(389, 839, 'files/reports_files/3c560a35-95d8-47de-b6af-8c8f25ddd0fd.doc', '2022-03-04 13:30:27'),
(390, 841, 'files/reports_files/4d500908-3224-4379-bb9b-f9438fbb41b5.jpg', '2022-03-04 13:33:42'),
(391, 843, 'files/reports_files/5510b046-d465-4219-aba0-bdd979e692f1.docx', '2022-03-04 14:22:36'),
(392, 845, 'files/reports_files/bbdda359-fc0d-4f69-a692-25daacf004c0.xlsx', '2022-03-05 03:49:42'),
(393, 846, 'files/reports_files/20c2aadd-3d93-48fe-941e-00ee9dbc275e.xlsx', '2022-03-05 03:50:30'),
(394, 847, 'files/reports_files/b627b238-db38-443d-9116-8f468f850c50.docx', '2022-03-05 07:14:28'),
(395, 848, 'files/reports_files/28f79d60-6730-4961-aa8c-b86450423823.docx', '2022-03-05 07:34:56'),
(396, 849, 'files/reports_files/9c27ce3c-b469-46eb-a484-b09855f00bc2.docx', '2022-03-05 07:42:38'),
(397, 851, 'files/reports_files/d6d9bda5-07e4-490c-a914-d67be56804bb.rtf', '2022-03-05 07:53:26'),
(398, 852, 'files/reports_files/54bf769e-bf02-4c09-a865-a8ae40809742.docx', '2022-03-05 08:01:27'),
(399, 853, 'files/reports_files/10fcf1de-211d-4cfd-841a-83ad0b0bed78.rtf', '2022-03-05 08:15:26'),
(400, 854, 'files/reports_files/cbf887f1-cf7f-49d1-ade7-7a46901ca8f1.docx', '2022-03-05 08:22:28'),
(401, 855, 'files/reports_files/14c07562-0671-4ab2-9bd0-908811910745.docx', '2022-03-05 09:24:08'),
(402, 856, 'files/reports_files/edee8321-4834-4983-b5f5-c56ad79263b2.doc', '2022-03-05 10:03:02'),
(403, 857, 'files/reports_files/8e3e87e1-7cfb-4414-8262-a9ec82900970.docx', '2022-03-05 10:07:12'),
(404, 858, 'files/reports_files/e9935f71-98f7-40ac-9da6-1dfd8cc0ecfa.docx', '2022-03-05 11:03:04'),
(405, 860, 'files/reports_files/c4679706-25ba-4f2f-9b1e-4d9ac16fae6e.docx', '2022-03-07 04:11:12'),
(406, 861, 'files/reports_files/6154232c-098f-44bc-bc81-be1013381f80.pdf', '2022-03-07 04:20:35'),
(407, 862, 'files/reports_files/650b9f0c-92e6-4a5a-adf7-85fcdb8cf678.pdf', '2022-03-07 04:57:21'),
(408, 863, 'files/reports_files/9526136a-07ac-4313-9415-d39e40b4504d.pdf', '2022-03-07 04:58:22'),
(409, 864, 'files/reports_files/4dbf2b9f-4de0-49d8-bb89-a2e01815e30f.docx', '2022-03-07 06:03:03'),
(410, 865, 'files/reports_files/214e7287-0e88-47f5-bdd5-85a453b29f66.docx', '2022-03-07 06:05:33'),
(411, 866, 'files/reports_files/caaac557-ed42-4274-b7ae-b3e4ac8d7038.png', '2022-03-07 07:26:20'),
(412, 867, 'files/reports_files/e3b3be2c-ebdb-4fd3-b267-f2890fff3ebd.png', '2022-03-07 07:28:21'),
(413, 868, 'files/reports_files/36b17b8e-e61f-414c-a9cf-1c370e2c7720.pdf', '2022-03-07 07:29:58'),
(414, 869, 'files/reports_files/2b2b1b5b-8560-4a9f-b3e9-ae8da2af6cc5.jpg', '2022-03-07 07:44:31'),
(415, 870, 'files/reports_files/45f62fee-c41a-4b22-ad8e-819ca44cac49.pdf', '2022-03-07 08:02:47'),
(416, 871, 'files/reports_files/75aa3416-d0c4-4a46-9734-cee18bc85aa9.docx', '2022-03-07 08:05:19'),
(417, 872, 'files/reports_files/86a88944-d305-4d0c-b4ea-226ebcd4dd81.docx', '2022-03-07 08:10:28'),
(418, 873, 'files/reports_files/1bb151f4-fd8c-4173-9d6a-84bb1f56bebf.docx', '2022-03-07 08:11:35'),
(419, 874, 'files/reports_files/3f608014-16d8-4a3a-99a1-26fb1a2b261b.xlsx', '2022-03-07 08:12:40'),
(420, 875, 'files/reports_files/85f542ad-3edc-4ab3-93ad-ccd14fd494f3.docx', '2022-03-07 08:31:54'),
(421, 876, 'files/reports_files/758efeb5-aef0-4b2b-9b21-ee8d8f54009f.doc', '2022-03-07 09:26:11'),
(422, 877, 'files/reports_files/a38087be-928f-4bcb-a02d-fa479ce5dac5.jpg', '2022-03-07 09:39:23'),
(423, 878, 'files/reports_files/5f656be3-3e05-4a25-8d62-b60b96d26348.docx', '2022-03-07 09:57:36'),
(424, 879, 'files/reports_files/79e52526-5c6a-4fa7-93dc-88d1986ccf2e.rar', '2022-03-07 11:14:30'),
(425, 885, 'files/reports_files/7be1ed3c-e1b7-463f-92a5-ac81dce19235.docx', '2022-03-07 11:50:37'),
(426, 886, 'files/reports_files/f340b9fe-208d-4cba-8a40-abd8989b91e4.docx', '2022-03-07 11:51:38'),
(427, 887, 'files/reports_files/24a260e3-29bd-479e-bbc7-ad60c807dcfd.pdf', '2022-03-07 11:52:45'),
(428, 888, 'files/reports_files/adf1152c-0815-40f0-812f-26d6d9332239.docx', '2022-03-07 11:55:15'),
(429, 889, 'files/reports_files/e4abc182-5c3f-4394-93e9-08820d00c6e0.docx', '2022-03-07 11:58:11'),
(430, 890, 'files/reports_files/9118ec6c-4686-477e-9a8c-8b61623ae9dc.jpg', '2022-03-07 12:02:08'),
(431, 891, 'files/reports_files/9854f5d3-9fef-48c3-b4cf-1ee1f14b53a2.docx', '2022-03-07 12:21:33'),
(432, 892, 'files/reports_files/1dd26e38-6545-4bfb-a98c-f8ad0af0dadb.docx', '2022-03-07 12:28:58'),
(433, 895, 'files/reports_files/eb04a35b-d6ec-4947-87b0-15283d7cbc8c.docx', '2022-03-07 13:26:46'),
(434, 896, 'files/reports_files/8e255306-b37b-46af-97a8-7e8dc8329c07.docx', '2022-03-07 14:00:47'),
(435, 897, 'files/reports_files/ecc2ab6c-bf6d-49e9-8a64-7350c2503522.pdf', '2022-03-07 14:01:14');

-- --------------------------------------------------------

--
-- Структура таблицы `report_notifications`
--

CREATE TABLE `report_notifications` (
  `id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `report_status` int(11) NOT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `report_notifications`
--

INSERT INTO `report_notifications` (`id`, `report_id`, `sender_id`, `receiver_id`, `report_status`, `status`, `created_at`) VALUES
(17, 63, 14, 22, 1, 2, '2022-02-01 08:03:34'),
(18, 64, 62, 61, 1, 2, '2022-02-01 10:01:11'),
(19, 65, 63, 22, 1, 2, '2022-02-01 12:24:48'),
(20, 66, 38, 25, 1, 2, '2022-02-01 13:16:53'),
(21, 67, 19, 63, 1, 2, '2022-02-01 14:27:42'),
(22, 68, 19, 5, 1, 1, '2022-02-01 14:38:20'),
(23, 69, 58, 22, 1, 2, '2022-02-02 04:36:28'),
(24, 70, 103, 22, 1, 2, '2022-02-02 05:31:07'),
(25, 72, 103, 22, 1, 2, '2022-02-02 06:59:47'),
(26, 67, 63, 19, 2, 2, '2022-02-02 07:00:12'),
(27, 64, 61, 62, 3, 2, '2022-02-02 07:38:29'),
(28, 73, 21, 52, 1, 2, '2022-02-02 08:25:28'),
(29, 74, 107, 69, 1, 2, '2022-02-02 12:13:17'),
(30, 75, 14, 63, 1, 2, '2022-02-02 12:36:58'),
(31, 75, 63, 14, 2, 2, '2022-02-02 12:41:28'),
(32, 76, 65, 61, 1, 2, '2022-02-02 13:21:11'),
(33, 77, 65, 61, 1, 2, '2022-02-02 13:29:08'),
(34, 78, 38, 25, 1, 2, '2022-02-02 13:32:59'),
(35, 79, 62, 61, 1, 2, '2022-02-02 14:18:10'),
(36, 80, 62, 61, 1, 2, '2022-02-02 14:20:01'),
(37, 81, 62, 61, 1, 2, '2022-02-02 14:31:14'),
(38, 81, 61, 62, 2, 2, '2022-02-02 15:06:07'),
(39, 79, 61, 62, 2, 2, '2022-02-02 15:06:45'),
(40, 77, 61, 65, 2, 2, '2022-02-02 15:07:09'),
(41, 76, 61, 65, 2, 2, '2022-02-02 15:07:29'),
(42, 80, 61, 62, 2, 2, '2022-02-02 15:08:13'),
(43, 82, 62, 61, 1, 2, '2022-02-02 15:19:10'),
(44, 84, 65, 61, 1, 2, '2022-02-02 15:24:18'),
(45, 85, 108, 61, 1, 2, '2022-02-02 15:28:29'),
(46, 86, 62, 61, 1, 2, '2022-02-02 15:28:35'),
(47, 87, 65, 61, 1, 2, '2022-02-02 15:30:47'),
(48, 82, 61, 62, 3, 2, '2022-02-02 15:36:27'),
(49, 84, 61, 65, 2, 2, '2022-02-02 15:36:46'),
(50, 86, 61, 62, 2, 2, '2022-02-02 15:37:04'),
(51, 89, 61, 113, 3, 2, '2022-02-02 15:37:16'),
(52, 88, 61, 113, 3, 2, '2022-02-02 15:37:27'),
(53, 87, 61, 65, 3, 2, '2022-02-02 15:37:47'),
(54, 85, 61, 108, 3, 2, '2022-02-02 15:37:56'),
(55, 83, 61, 108, 3, 2, '2022-02-02 15:38:05'),
(56, 90, 106, 61, 1, 2, '2022-02-02 15:38:16'),
(57, 91, 113, 61, 1, 2, '2022-02-02 15:38:59'),
(58, 90, 61, 106, 2, 1, '2022-02-02 15:40:10'),
(59, 91, 61, 113, 3, 2, '2022-02-02 15:40:23'),
(60, 92, 113, 61, 1, 2, '2022-02-02 15:41:38'),
(61, 93, 65, 61, 1, 2, '2022-02-02 15:42:16'),
(62, 93, 61, 65, 2, 2, '2022-02-02 15:44:30'),
(63, 94, 68, 61, 1, 2, '2022-02-02 15:44:46'),
(64, 95, 108, 61, 1, 2, '2022-02-02 15:44:46'),
(65, 94, 61, 68, 2, 2, '2022-02-02 15:45:42'),
(66, 96, 68, 61, 1, 2, '2022-02-02 15:47:24'),
(67, 97, 68, 61, 1, 2, '2022-02-02 15:50:52'),
(68, 98, 113, 61, 1, 2, '2022-02-02 15:52:46'),
(69, 97, 61, 68, 3, 2, '2022-02-02 15:53:07'),
(70, 96, 61, 68, 2, 2, '2022-02-02 15:53:16'),
(71, 98, 61, 113, 2, 2, '2022-02-02 15:53:23'),
(72, 92, 61, 113, 3, 2, '2022-02-02 15:53:30'),
(73, 95, 61, 108, 3, 2, '2022-02-02 15:53:36'),
(74, 99, 106, 61, 1, 2, '2022-02-02 18:10:20'),
(75, 100, 106, 61, 1, 2, '2022-02-02 18:12:35'),
(76, 101, 106, 61, 1, 2, '2022-02-02 18:14:10'),
(77, 102, 106, 61, 1, 2, '2022-02-02 18:31:50'),
(78, 103, 68, 61, 1, 2, '2022-02-03 04:15:14'),
(79, 104, 68, 61, 1, 2, '2022-02-03 04:17:16'),
(80, 104, 61, 68, 2, 2, '2022-02-03 04:18:55'),
(81, 105, 48, 39, 1, 2, '2022-02-03 06:08:00'),
(82, 106, 17, 63, 1, 2, '2022-02-03 06:45:05'),
(83, 107, 65, 61, 1, 2, '2022-02-04 09:48:30'),
(84, 108, 65, 61, 1, 2, '2022-02-04 09:52:18'),
(85, 109, 65, 61, 1, 2, '2022-02-04 09:54:39'),
(86, 110, 65, 61, 1, 2, '2022-02-04 09:56:51'),
(87, 102, 61, 106, 3, 1, '2022-02-04 10:17:20'),
(88, 101, 61, 106, 3, 1, '2022-02-04 10:17:33'),
(89, 100, 61, 106, 3, 1, '2022-02-04 10:17:43'),
(90, 99, 61, 106, 2, 1, '2022-02-04 10:17:59'),
(91, 103, 61, 68, 3, 2, '2022-02-04 10:18:16'),
(92, 111, 38, 25, 1, 2, '2022-02-04 10:24:59'),
(93, 106, 63, 17, 2, 2, '2022-02-04 11:05:42'),
(94, 112, 111, 61, 1, 2, '2022-02-04 11:06:49'),
(95, 112, 61, 111, 3, 2, '2022-02-04 11:07:36'),
(96, 113, 14, 63, 1, 2, '2022-02-04 11:30:38'),
(97, 113, 63, 14, 2, 2, '2022-02-04 11:32:15'),
(98, 114, 114, 61, 1, 2, '2022-02-04 11:56:14'),
(99, 117, 114, 61, 1, 2, '2022-02-04 12:13:24'),
(100, 118, 14, 63, 1, 2, '2022-02-04 12:16:14'),
(101, 119, 115, 61, 1, 2, '2022-02-04 12:58:21'),
(102, 118, 63, 14, 2, 2, '2022-02-04 13:07:54'),
(103, 120, 17, 63, 1, 2, '2022-02-04 13:24:04'),
(104, 121, 17, 63, 1, 2, '2022-02-04 13:25:03'),
(105, 122, 38, 25, 1, 2, '2022-02-04 13:26:52'),
(106, 123, 58, 22, 1, 2, '2022-02-04 13:35:21'),
(107, 124, 115, 61, 1, 2, '2022-02-04 13:39:47'),
(108, 125, 68, 61, 1, 2, '2022-02-04 13:43:34'),
(109, 126, 16, 63, 1, 2, '2022-02-04 13:48:57'),
(110, 127, 115, 61, 1, 2, '2022-02-04 13:52:09'),
(111, 128, 68, 61, 1, 2, '2022-02-04 13:53:01'),
(112, 129, 115, 61, 1, 2, '2022-02-04 13:53:41'),
(113, 130, 68, 61, 1, 2, '2022-02-04 14:14:58'),
(114, 131, 115, 61, 1, 2, '2022-02-04 14:16:48'),
(115, 132, 111, 61, 1, 2, '2022-02-05 01:56:17'),
(116, 132, 61, 111, 3, 2, '2022-02-05 01:57:18'),
(117, 133, 111, 111, 1, 2, '2022-02-05 02:47:51'),
(118, 126, 63, 16, 2, 2, '2022-02-07 05:56:21'),
(119, 177, 63, 17, 2, 1, '2022-02-07 05:56:26'),
(120, 176, 63, 17, 2, 1, '2022-02-07 05:56:31'),
(121, 139, 63, 17, 2, 1, '2022-02-07 05:56:40'),
(122, 138, 63, 17, 2, 1, '2022-02-07 05:56:45'),
(123, 137, 63, 17, 2, 1, '2022-02-07 05:56:49'),
(124, 121, 63, 17, 2, 1, '2022-02-07 05:56:54'),
(125, 120, 63, 17, 2, 1, '2022-02-07 05:56:58'),
(126, 211, 61, 106, 3, 1, '2022-02-07 13:28:09'),
(127, 210, 61, 106, 3, 1, '2022-02-07 13:28:15'),
(128, 209, 61, 106, 3, 1, '2022-02-07 13:28:21'),
(129, 208, 61, 106, 3, 1, '2022-02-07 13:28:26'),
(130, 207, 61, 106, 3, 1, '2022-02-07 13:28:33'),
(131, 206, 61, 106, 3, 1, '2022-02-07 13:28:39'),
(132, 205, 61, 106, 3, 1, '2022-02-07 13:28:51'),
(133, 204, 61, 106, 3, 1, '2022-02-07 13:28:59'),
(134, 202, 61, 106, 3, 1, '2022-02-07 13:29:05'),
(135, 203, 61, 106, 3, 1, '2022-02-07 13:29:12'),
(136, 201, 61, 106, 3, 1, '2022-02-07 13:29:22'),
(137, 191, 61, 106, 3, 1, '2022-02-07 13:29:36'),
(138, 183, 63, 17, 3, 1, '2022-02-07 13:29:40'),
(139, 182, 63, 17, 3, 1, '2022-02-07 13:29:44'),
(140, 163, 61, 106, 3, 1, '2022-02-07 13:29:45'),
(141, 181, 63, 17, 3, 1, '2022-02-07 13:29:48'),
(142, 162, 61, 106, 3, 1, '2022-02-07 13:29:51'),
(143, 136, 61, 68, 3, 2, '2022-02-07 13:30:05'),
(144, 135, 61, 68, 3, 2, '2022-02-07 13:30:11'),
(145, 156, 61, 106, 3, 1, '2022-02-07 13:30:18'),
(146, 154, 61, 106, 3, 1, '2022-02-07 13:30:24'),
(147, 128, 61, 68, 3, 2, '2022-02-07 13:30:31'),
(148, 125, 61, 68, 3, 2, '2022-02-07 13:30:38'),
(149, 130, 61, 68, 3, 2, '2022-02-07 13:30:43'),
(150, 116, 61, 114, 3, 2, '2022-02-07 13:30:49'),
(151, 115, 61, 114, 3, 2, '2022-02-07 13:30:55'),
(152, 114, 61, 114, 3, 2, '2022-02-07 13:31:01'),
(153, 150, 61, 113, 3, 2, '2022-02-07 13:31:07'),
(154, 131, 61, 115, 3, 2, '2022-02-07 13:31:12'),
(155, 129, 61, 115, 3, 2, '2022-02-07 13:31:20'),
(156, 127, 61, 115, 3, 2, '2022-02-07 13:31:26'),
(157, 124, 61, 115, 3, 2, '2022-02-07 13:31:31'),
(158, 119, 61, 115, 3, 2, '2022-02-07 13:31:37'),
(159, 160, 61, 106, 2, 1, '2022-02-07 13:31:43'),
(160, 159, 61, 106, 2, 1, '2022-02-07 13:31:51'),
(161, 158, 61, 106, 2, 1, '2022-02-07 13:31:57'),
(162, 157, 61, 106, 2, 1, '2022-02-07 13:32:02'),
(163, 155, 61, 106, 2, 1, '2022-02-07 13:32:08'),
(164, 153, 61, 106, 2, 1, '2022-02-07 13:32:16'),
(165, 152, 61, 106, 3, 1, '2022-02-07 13:32:22'),
(166, 134, 61, 68, 2, 2, '2022-02-07 13:32:28'),
(167, 117, 61, 114, 2, 2, '2022-02-07 13:32:36'),
(168, 110, 61, 65, 2, 2, '2022-02-07 13:32:42'),
(169, 109, 61, 65, 2, 2, '2022-02-07 13:32:47'),
(170, 108, 61, 65, 2, 2, '2022-02-07 13:32:53'),
(171, 107, 61, 65, 2, 2, '2022-02-07 13:32:59'),
(172, 161, 61, 106, 2, 1, '2022-02-07 13:33:07'),
(173, 199, 61, 106, 2, 1, '2022-02-07 13:33:39'),
(174, 200, 61, 106, 3, 1, '2022-02-07 13:33:45'),
(175, 197, 61, 106, 3, 1, '2022-02-07 13:33:52'),
(176, 198, 61, 106, 3, 1, '2022-02-07 13:33:57'),
(177, 196, 61, 106, 3, 1, '2022-02-07 13:34:03'),
(178, 194, 61, 106, 3, 1, '2022-02-07 13:34:08'),
(179, 195, 61, 106, 3, 1, '2022-02-07 13:34:13'),
(180, 193, 61, 106, 3, 1, '2022-02-07 13:34:20'),
(181, 192, 61, 106, 2, 1, '2022-02-07 13:34:40'),
(182, 227, 38, 25, 1, 2, '2022-02-07 13:48:31'),
(183, 252, 14, 22, 1, 2, '2022-02-08 12:57:35'),
(184, 251, 61, 106, 2, 1, '2022-02-08 13:09:11'),
(185, 261, 38, 25, 1, 2, '2022-02-08 13:59:47'),
(186, 281, 105, 25, 1, 2, '2022-02-09 10:27:25'),
(187, 282, 105, 25, 1, 2, '2022-02-09 10:31:17'),
(188, 283, 105, 25, 1, 2, '2022-02-09 10:33:50'),
(189, 286, 105, 25, 1, 2, '2022-02-09 11:16:37'),
(190, 287, 14, 22, 1, 2, '2022-02-09 11:57:31'),
(191, 295, 38, 25, 1, 2, '2022-02-09 13:54:20'),
(192, 312, 38, 25, 1, 2, '2022-02-10 13:42:13'),
(193, 313, 105, 25, 1, 2, '2022-02-10 17:37:13'),
(194, 316, 105, 5, 1, 1, '2022-02-10 17:43:30'),
(195, 332, 105, 25, 1, 2, '2022-02-11 11:55:59'),
(196, 333, 13, 22, 1, 2, '2022-02-11 12:37:23'),
(197, 334, 38, 25, 1, 2, '2022-02-11 12:50:15'),
(198, 341, 105, 25, 1, 2, '2022-02-14 04:48:33'),
(199, 342, 105, 25, 1, 2, '2022-02-14 04:50:04'),
(200, 343, 105, 25, 1, 2, '2022-02-14 04:51:28'),
(201, 344, 111, 61, 1, 2, '2022-02-14 07:50:38'),
(202, 345, 111, 61, 1, 2, '2022-02-14 07:55:45'),
(203, 346, 61, 5, 1, 1, '2022-02-14 08:10:36'),
(204, 347, 111, 111, 1, 2, '2022-02-14 08:35:29'),
(205, 347, 111, 111, 3, 2, '2022-02-14 08:36:12'),
(206, 348, 62, 61, 1, 2, '2022-02-14 09:57:08'),
(207, 349, 65, 61, 1, 2, '2022-02-14 09:58:05'),
(208, 311, 61, 68, 3, 2, '2022-02-14 10:00:10'),
(209, 300, 61, 68, 3, 2, '2022-02-14 10:00:19'),
(210, 299, 61, 68, 3, 2, '2022-02-14 10:00:26'),
(211, 298, 61, 68, 3, 2, '2022-02-14 10:00:32'),
(212, 297, 61, 68, 3, 2, '2022-02-14 10:00:37'),
(213, 296, 61, 68, 3, 2, '2022-02-14 10:00:44'),
(214, 345, 61, 111, 3, 2, '2022-02-14 10:01:11'),
(215, 344, 61, 111, 3, 2, '2022-02-14 10:01:32'),
(216, 340, 61, 111, 3, 2, '2022-02-14 10:01:37'),
(217, 319, 61, 111, 3, 2, '2022-02-14 10:01:42'),
(218, 318, 61, 111, 3, 2, '2022-02-14 10:01:47'),
(219, 317, 61, 111, 3, 2, '2022-02-14 10:01:52'),
(220, 253, 61, 112, 3, 2, '2022-02-14 10:01:57'),
(221, 309, 61, 115, 3, 2, '2022-02-14 10:02:01'),
(222, 308, 61, 115, 3, 2, '2022-02-14 10:02:08'),
(223, 265, 61, 115, 3, 2, '2022-02-14 10:02:13'),
(224, 264, 61, 115, 3, 2, '2022-02-14 10:02:21'),
(225, 263, 61, 115, 3, 2, '2022-02-14 10:02:26'),
(226, 262, 61, 115, 3, 2, '2022-02-14 10:02:30'),
(227, 349, 61, 65, 2, 2, '2022-02-14 10:02:52'),
(228, 294, 61, 65, 3, 2, '2022-02-14 10:03:01'),
(229, 293, 61, 65, 3, 2, '2022-02-14 10:03:06'),
(230, 266, 61, 65, 3, 2, '2022-02-14 10:03:11'),
(231, 260, 61, 65, 3, 2, '2022-02-14 10:03:16'),
(232, 259, 61, 65, 3, 2, '2022-02-14 10:03:21'),
(233, 258, 61, 65, 3, 2, '2022-02-14 10:03:26'),
(234, 257, 61, 65, 3, 2, '2022-02-14 10:03:33'),
(235, 256, 61, 65, 3, 2, '2022-02-14 10:03:38'),
(236, 255, 61, 65, 3, 2, '2022-02-14 10:03:42'),
(237, 254, 61, 65, 3, 2, '2022-02-14 10:03:46'),
(238, 348, 61, 62, 2, 2, '2022-02-14 10:04:04'),
(239, 338, 61, 62, 3, 2, '2022-02-14 10:04:12'),
(240, 305, 61, 62, 3, 2, '2022-02-14 10:04:17'),
(241, 350, 65, 61, 1, 2, '2022-02-14 10:06:41'),
(242, 351, 68, 61, 1, 2, '2022-02-14 10:11:10'),
(243, 352, 68, 61, 1, 2, '2022-02-14 10:20:48'),
(244, 353, 68, 61, 1, 2, '2022-02-14 10:27:56'),
(245, 354, 68, 61, 1, 2, '2022-02-14 10:32:36'),
(246, 355, 111, 61, 1, 2, '2022-02-14 10:53:26'),
(247, 356, 111, 61, 1, 2, '2022-02-14 10:58:07'),
(248, 357, 38, 25, 1, 2, '2022-02-14 13:04:06'),
(249, 358, 115, 61, 1, 2, '2022-02-14 14:24:31'),
(250, 359, 16, 63, 1, 2, '2022-02-14 15:03:35'),
(251, 360, 16, 63, 1, 2, '2022-02-14 15:04:51'),
(252, 361, 16, 63, 1, 2, '2022-02-14 15:05:22'),
(253, 362, 16, 63, 1, 2, '2022-02-14 15:05:44'),
(254, 363, 115, 61, 1, 2, '2022-02-14 16:11:27'),
(255, 364, 21, 52, 1, 2, '2022-02-15 04:57:04'),
(256, 365, 38, 22, 1, 2, '2022-02-15 06:24:13'),
(257, 366, 65, 61, 1, 2, '2022-02-15 06:44:29'),
(258, 367, 65, 61, 1, 2, '2022-02-15 09:40:13'),
(259, 368, 54, 52, 1, 2, '2022-02-15 13:42:45'),
(260, 369, 54, 52, 1, 2, '2022-02-15 13:47:50'),
(261, 370, 54, 52, 1, 2, '2022-02-15 13:55:33'),
(262, 371, 25, 111, 1, 2, '2022-02-15 14:13:06'),
(263, 372, 16, 63, 1, 2, '2022-02-15 14:54:52'),
(264, 373, 105, 25, 1, 2, '2022-02-15 16:02:35'),
(265, 374, 105, 25, 1, 2, '2022-02-15 16:05:39'),
(266, 375, 68, 61, 1, 2, '2022-02-16 09:03:59'),
(267, 376, 68, 61, 1, 2, '2022-02-16 09:08:18'),
(268, 377, 115, 61, 1, 2, '2022-02-16 09:09:31'),
(269, 378, 115, 61, 1, 2, '2022-02-16 09:19:21'),
(270, 379, 115, 61, 1, 2, '2022-02-16 09:23:14'),
(271, 351, 61, 68, 2, 2, '2022-02-16 09:36:29'),
(272, 378, 61, 115, 2, 2, '2022-02-16 09:36:36'),
(273, 377, 61, 115, 2, 2, '2022-02-16 09:36:44'),
(274, 356, 61, 111, 2, 2, '2022-02-16 09:36:53'),
(275, 376, 61, 68, 2, 2, '2022-02-16 09:36:59'),
(276, 375, 61, 68, 2, 2, '2022-02-16 09:37:04'),
(277, 363, 61, 115, 2, 2, '2022-02-16 09:37:10'),
(278, 358, 61, 115, 2, 2, '2022-02-16 09:37:16'),
(279, 354, 61, 68, 2, 2, '2022-02-16 09:37:21'),
(280, 350, 61, 65, 2, 2, '2022-02-16 09:37:26'),
(281, 366, 61, 65, 2, 2, '2022-02-16 09:37:31'),
(282, 379, 61, 115, 2, 2, '2022-02-16 09:37:36'),
(283, 355, 61, 111, 2, 2, '2022-02-16 09:37:43'),
(284, 353, 61, 68, 2, 2, '2022-02-16 09:37:49'),
(285, 352, 61, 68, 2, 2, '2022-02-16 09:37:54'),
(286, 367, 61, 65, 2, 2, '2022-02-16 09:37:59'),
(287, 380, 115, 61, 1, 2, '2022-02-16 09:50:25'),
(288, 372, 63, 16, 2, 2, '2022-02-16 10:15:03'),
(289, 362, 63, 16, 3, 2, '2022-02-16 10:15:22'),
(290, 361, 63, 16, 2, 2, '2022-02-16 10:15:42'),
(291, 337, 63, 19, 2, 2, '2022-02-16 10:15:59'),
(292, 302, 63, 19, 3, 2, '2022-02-16 10:16:07'),
(293, 301, 63, 19, 3, 2, '2022-02-16 10:16:11'),
(294, 232, 63, 19, 3, 2, '2022-02-16 10:16:18'),
(295, 231, 63, 19, 3, 2, '2022-02-16 10:16:22'),
(296, 230, 63, 19, 2, 2, '2022-02-16 10:16:29'),
(297, 229, 63, 19, 3, 2, '2022-02-16 10:16:35'),
(298, 233, 63, 19, 3, 2, '2022-02-16 10:16:41'),
(299, 234, 63, 19, 3, 2, '2022-02-16 10:16:45'),
(300, 235, 63, 19, 3, 2, '2022-02-16 10:16:50'),
(301, 212, 63, 16, 3, 2, '2022-02-16 10:16:57'),
(302, 213, 63, 16, 3, 2, '2022-02-16 10:17:01'),
(303, 214, 63, 16, 3, 2, '2022-02-16 10:17:08'),
(304, 215, 63, 16, 3, 2, '2022-02-16 10:17:12'),
(305, 217, 63, 16, 3, 2, '2022-02-16 10:17:16'),
(306, 216, 63, 16, 3, 2, '2022-02-16 10:17:19'),
(307, 218, 63, 16, 3, 2, '2022-02-16 10:17:24'),
(308, 219, 63, 16, 3, 2, '2022-02-16 10:17:28'),
(309, 220, 63, 16, 3, 2, '2022-02-16 10:17:31'),
(310, 221, 63, 16, 3, 2, '2022-02-16 10:17:34'),
(311, 222, 63, 16, 3, 2, '2022-02-16 10:17:38'),
(312, 228, 63, 16, 3, 2, '2022-02-16 10:17:42'),
(313, 273, 63, 16, 3, 2, '2022-02-16 10:17:45'),
(314, 274, 63, 16, 3, 2, '2022-02-16 10:17:48'),
(315, 359, 63, 16, 2, 2, '2022-02-16 10:18:19'),
(316, 360, 63, 16, 2, 2, '2022-02-16 10:18:40'),
(317, 381, 115, 61, 1, 2, '2022-02-16 10:36:08'),
(318, 382, 115, 61, 1, 2, '2022-02-16 10:48:20'),
(319, 383, 115, 61, 1, 2, '2022-02-16 11:43:43'),
(320, 384, 106, 61, 1, 2, '2022-02-16 12:14:39'),
(321, 385, 106, 61, 1, 2, '2022-02-16 12:16:05'),
(322, 386, 106, 61, 1, 2, '2022-02-16 12:34:36'),
(323, 387, 112, 61, 1, 2, '2022-02-16 12:41:59'),
(324, 388, 112, 61, 1, 2, '2022-02-16 12:46:00'),
(325, 389, 65, 61, 1, 2, '2022-02-16 12:53:06'),
(326, 390, 65, 61, 1, 2, '2022-02-16 12:57:39'),
(327, 391, 65, 61, 1, 2, '2022-02-16 13:02:58'),
(328, 392, 113, 61, 1, 2, '2022-02-16 13:09:27'),
(329, 393, 113, 61, 1, 2, '2022-02-16 13:18:51'),
(330, 394, 54, 52, 1, 2, '2022-02-16 13:29:41'),
(331, 395, 54, 52, 1, 2, '2022-02-16 13:32:19'),
(332, 396, 54, 52, 1, 2, '2022-02-16 13:33:58'),
(333, 397, 38, 25, 1, 2, '2022-02-16 13:53:35'),
(334, 398, 19, 63, 1, 2, '2022-02-16 15:24:25'),
(335, 399, 115, 61, 1, 2, '2022-02-16 17:13:20'),
(336, 400, 62, 61, 1, 2, '2022-02-17 03:55:49'),
(337, 401, 62, 61, 1, 2, '2022-02-17 03:58:11'),
(338, 402, 62, 61, 1, 2, '2022-02-17 04:13:59'),
(339, 403, 62, 61, 1, 2, '2022-02-17 04:17:52'),
(340, 404, 62, 61, 1, 2, '2022-02-17 04:20:55'),
(341, 405, 112, 61, 1, 2, '2022-02-17 04:39:42'),
(342, 406, 112, 61, 1, 2, '2022-02-17 04:49:32'),
(343, 407, 68, 61, 1, 2, '2022-02-17 05:58:49'),
(344, 408, 68, 61, 1, 2, '2022-02-17 05:59:36'),
(345, 409, 68, 61, 1, 2, '2022-02-17 06:02:22'),
(346, 410, 68, 61, 1, 2, '2022-02-17 06:07:48'),
(347, 411, 62, 61, 1, 2, '2022-02-17 06:29:49'),
(348, 412, 62, 61, 1, 2, '2022-02-17 06:35:22'),
(349, 413, 62, 61, 1, 2, '2022-02-17 07:13:21'),
(350, 414, 106, 61, 1, 2, '2022-02-17 09:28:19'),
(351, 411, 61, 62, 2, 2, '2022-02-17 09:29:06'),
(352, 401, 61, 62, 2, 2, '2022-02-17 09:34:56'),
(353, 412, 61, 62, 2, 2, '2022-02-17 09:35:05'),
(354, 382, 61, 115, 2, 2, '2022-02-17 09:35:16'),
(355, 400, 61, 62, 2, 2, '2022-02-17 09:35:25'),
(356, 389, 61, 65, 2, 2, '2022-02-17 09:35:36'),
(357, 388, 61, 112, 2, 2, '2022-02-17 09:35:43'),
(358, 414, 61, 106, 2, 1, '2022-02-17 09:35:50'),
(359, 410, 61, 68, 2, 2, '2022-02-17 09:35:57'),
(360, 408, 61, 68, 2, 2, '2022-02-17 09:36:02'),
(361, 407, 61, 68, 2, 2, '2022-02-17 09:36:08'),
(362, 406, 61, 112, 2, 2, '2022-02-17 09:36:19'),
(363, 405, 61, 112, 2, 2, '2022-02-17 09:36:27'),
(364, 404, 61, 62, 2, 2, '2022-02-17 09:36:44'),
(365, 403, 61, 62, 2, 2, '2022-02-17 09:36:50'),
(366, 393, 61, 113, 2, 2, '2022-02-17 09:36:56'),
(367, 392, 61, 113, 2, 2, '2022-02-17 09:37:02'),
(368, 391, 61, 65, 2, 2, '2022-02-17 09:37:11'),
(369, 390, 61, 65, 2, 2, '2022-02-17 09:37:18'),
(370, 387, 61, 112, 2, 2, '2022-02-17 09:37:27'),
(371, 386, 61, 106, 2, 1, '2022-02-17 09:37:33'),
(372, 385, 61, 106, 2, 1, '2022-02-17 09:37:41'),
(373, 384, 61, 106, 2, 1, '2022-02-17 09:37:51'),
(374, 383, 61, 115, 2, 2, '2022-02-17 09:38:06'),
(375, 381, 61, 115, 2, 2, '2022-02-17 09:38:14'),
(376, 413, 61, 62, 2, 2, '2022-02-17 09:38:21'),
(377, 380, 61, 115, 2, 2, '2022-02-17 09:38:28'),
(378, 402, 61, 62, 2, 2, '2022-02-17 09:38:37'),
(379, 399, 61, 115, 2, 2, '2022-02-17 09:38:47'),
(380, 409, 61, 68, 2, 2, '2022-02-17 09:38:55'),
(381, 415, 106, 61, 1, 2, '2022-02-17 10:16:18'),
(382, 416, 115, 61, 1, 2, '2022-02-17 11:00:10'),
(383, 417, 112, 61, 1, 2, '2022-02-17 12:34:37'),
(384, 418, 112, 61, 1, 2, '2022-02-17 12:36:30'),
(385, 419, 65, 61, 1, 2, '2022-02-17 12:40:39'),
(386, 420, 65, 61, 1, 2, '2022-02-17 12:41:08'),
(387, 421, 65, 61, 1, 2, '2022-02-17 12:44:47'),
(388, 422, 65, 61, 1, 2, '2022-02-17 12:48:51'),
(389, 423, 65, 61, 1, 2, '2022-02-17 12:51:16'),
(390, 424, 115, 61, 1, 2, '2022-02-17 13:52:20'),
(391, 425, 38, 25, 1, 2, '2022-02-17 13:58:54'),
(392, 426, 108, 61, 1, 2, '2022-02-17 14:49:38'),
(393, 427, 108, 61, 1, 2, '2022-02-17 14:50:46'),
(394, 428, 108, 61, 1, 2, '2022-02-17 14:51:35'),
(395, 429, 68, 61, 1, 2, '2022-02-17 14:54:08'),
(396, 398, 63, 19, 2, 2, '2022-02-17 15:15:55'),
(397, 430, 114, 61, 1, 2, '2022-02-17 15:20:17'),
(398, 430, 61, 114, 2, 2, '2022-02-17 15:20:51'),
(399, 429, 61, 68, 2, 2, '2022-02-17 15:21:02'),
(400, 428, 61, 108, 2, 2, '2022-02-17 15:21:12'),
(401, 427, 61, 108, 2, 2, '2022-02-17 15:21:22'),
(402, 426, 61, 108, 2, 2, '2022-02-17 15:21:31'),
(403, 424, 61, 115, 2, 2, '2022-02-17 15:21:43'),
(404, 421, 61, 65, 2, 2, '2022-02-17 15:21:53'),
(405, 420, 61, 65, 2, 2, '2022-02-17 15:22:02'),
(406, 419, 61, 65, 2, 2, '2022-02-17 15:22:10'),
(407, 416, 61, 115, 2, 2, '2022-02-17 15:22:19'),
(408, 415, 61, 106, 2, 1, '2022-02-17 15:22:26'),
(409, 418, 61, 112, 2, 2, '2022-02-17 15:22:34'),
(410, 417, 61, 112, 2, 2, '2022-02-17 15:22:47'),
(411, 423, 61, 65, 2, 2, '2022-02-17 15:22:58'),
(412, 422, 61, 65, 2, 2, '2022-02-17 15:23:12'),
(413, 431, 114, 61, 1, 2, '2022-02-17 15:24:40'),
(414, 432, 114, 61, 1, 2, '2022-02-17 15:25:44'),
(415, 433, 114, 61, 1, 2, '2022-02-17 15:26:30'),
(416, 433, 61, 114, 2, 2, '2022-02-17 16:17:43'),
(417, 432, 61, 114, 2, 2, '2022-02-17 16:17:49'),
(418, 431, 61, 114, 2, 2, '2022-02-17 16:18:00'),
(419, 434, 52, 63, 1, 2, '2022-02-18 05:49:42'),
(420, 434, 63, 52, 3, 2, '2022-02-18 08:20:47'),
(421, 435, 106, 61, 1, 2, '2022-02-18 12:14:45'),
(422, 436, 106, 61, 1, 2, '2022-02-18 12:19:39'),
(423, 437, 106, 61, 1, 2, '2022-02-18 12:20:54'),
(424, 438, 106, 61, 1, 2, '2022-02-18 12:21:34'),
(425, 439, 65, 61, 1, 2, '2022-02-18 12:22:23'),
(426, 440, 112, 61, 1, 2, '2022-02-18 13:11:31'),
(427, 439, 61, 65, 2, 2, '2022-02-18 13:17:23'),
(428, 441, 112, 61, 1, 2, '2022-02-18 13:17:52'),
(429, 440, 61, 112, 2, 2, '2022-02-18 13:17:57'),
(430, 441, 61, 112, 2, 2, '2022-02-18 13:18:11'),
(431, 438, 61, 106, 2, 1, '2022-02-18 13:18:27'),
(432, 437, 61, 106, 2, 1, '2022-02-18 13:20:01'),
(433, 436, 61, 106, 2, 1, '2022-02-18 13:20:10'),
(434, 435, 61, 106, 2, 1, '2022-02-18 13:20:19'),
(435, 442, 115, 61, 1, 2, '2022-02-18 13:21:41'),
(436, 443, 112, 61, 1, 2, '2022-02-18 13:22:43'),
(437, 442, 61, 115, 2, 2, '2022-02-18 13:23:19'),
(438, 443, 61, 112, 2, 2, '2022-02-18 13:23:32'),
(439, 444, 115, 61, 1, 2, '2022-02-18 13:25:13'),
(440, 444, 61, 115, 2, 2, '2022-02-18 13:27:41'),
(441, 445, 112, 61, 1, 2, '2022-02-18 13:29:12'),
(442, 446, 115, 61, 1, 2, '2022-02-18 13:33:19'),
(443, 445, 61, 112, 2, 2, '2022-02-18 13:36:55'),
(444, 446, 61, 115, 2, 2, '2022-02-18 13:37:04'),
(445, 447, 16, 63, 1, 2, '2022-02-18 13:40:29'),
(446, 448, 38, 25, 1, 2, '2022-02-18 14:18:20'),
(447, 449, 19, 63, 1, 2, '2022-02-18 14:43:21'),
(448, 450, 21, 52, 1, 2, '2022-02-18 16:22:08'),
(449, 447, 63, 16, 2, 2, '2022-02-18 16:26:50'),
(450, 449, 63, 19, 3, 2, '2022-02-18 16:27:09'),
(451, 451, 21, 52, 1, 2, '2022-02-18 16:29:28'),
(452, 452, 21, 52, 1, 2, '2022-02-18 16:32:00'),
(453, 453, 21, 52, 1, 2, '2022-02-18 16:39:28'),
(454, 454, 19, 63, 1, 2, '2022-02-19 06:55:21'),
(455, 455, 14, 22, 1, 2, '2022-02-19 07:35:16'),
(456, 456, 116, 52, 1, 2, '2022-02-19 10:53:27'),
(457, 457, 116, 52, 1, 2, '2022-02-19 10:56:56'),
(458, 460, 116, 19, 1, 2, '2022-02-19 11:05:35'),
(459, 461, 116, 52, 1, 2, '2022-02-19 11:07:43'),
(460, 462, 116, 52, 1, 2, '2022-02-19 11:11:52'),
(461, 463, 116, 52, 1, 2, '2022-02-19 11:37:47'),
(462, 464, 115, 61, 1, 2, '2022-02-19 13:17:06'),
(463, 465, 115, 61, 1, 2, '2022-02-21 04:50:15'),
(464, 465, 61, 115, 2, 2, '2022-02-21 04:52:14'),
(465, 464, 61, 115, 2, 2, '2022-02-21 04:52:22'),
(466, 466, 103, 63, 1, 2, '2022-02-21 06:51:17'),
(467, 467, 103, 63, 1, 2, '2022-02-21 06:59:08'),
(468, 468, 58, 63, 1, 2, '2022-02-21 07:09:38'),
(469, 469, 112, 61, 1, 2, '2022-02-21 11:08:25'),
(470, 470, 14, 22, 1, 2, '2022-02-21 11:12:51'),
(471, 471, 14, 22, 1, 2, '2022-02-21 11:18:20'),
(472, 472, 14, 22, 1, 2, '2022-02-21 11:23:01'),
(473, 473, 21, 52, 1, 2, '2022-02-21 12:41:01'),
(474, 474, 112, 61, 1, 2, '2022-02-21 12:53:43'),
(475, 475, 38, 25, 1, 2, '2022-02-21 14:02:22'),
(476, 476, 19, 63, 1, 2, '2022-02-21 14:44:20'),
(477, 477, 16, 63, 1, 2, '2022-02-21 14:49:04'),
(478, 468, 63, 58, 2, 2, '2022-02-21 15:17:25'),
(479, 478, 115, 61, 1, 2, '2022-02-21 15:40:18'),
(480, 479, 108, 61, 1, 2, '2022-02-21 16:11:49'),
(481, 480, 108, 61, 1, 2, '2022-02-21 16:16:41'),
(482, 481, 65, 61, 1, 2, '2022-02-21 16:25:34'),
(483, 482, 65, 61, 1, 2, '2022-02-21 16:27:43'),
(484, 474, 61, 112, 2, 2, '2022-02-21 17:06:46'),
(485, 469, 61, 112, 2, 2, '2022-02-21 17:06:51'),
(486, 478, 61, 115, 2, 2, '2022-02-21 17:06:56'),
(487, 482, 61, 65, 2, 2, '2022-02-21 17:07:00'),
(488, 481, 61, 65, 2, 2, '2022-02-21 17:07:05'),
(489, 480, 61, 108, 2, 2, '2022-02-21 17:07:09'),
(490, 479, 61, 108, 2, 2, '2022-02-21 17:07:17'),
(491, 483, 115, 61, 1, 2, '2022-02-22 09:27:56'),
(492, 484, 62, 61, 1, 2, '2022-02-22 10:15:17'),
(493, 483, 61, 115, 2, 2, '2022-02-22 10:22:05'),
(494, 484, 61, 62, 2, 2, '2022-02-22 10:23:04'),
(495, 485, 62, 61, 1, 2, '2022-02-22 10:23:10'),
(496, 486, 112, 61, 1, 2, '2022-02-22 10:34:17'),
(497, 492, 58, 22, 1, 2, '2022-02-22 12:08:37'),
(498, 493, 103, 22, 1, 2, '2022-02-22 12:38:50'),
(499, 494, 17, 63, 1, 2, '2022-02-22 12:48:15'),
(500, 495, 17, 63, 1, 2, '2022-02-22 12:49:13'),
(501, 496, 38, 25, 1, 2, '2022-02-22 13:10:30'),
(502, 497, 57, 22, 1, 2, '2022-02-22 13:19:46'),
(503, 498, 38, 25, 1, 2, '2022-02-22 13:41:07'),
(504, 499, 16, 63, 1, 2, '2022-02-22 14:41:14'),
(505, 505, 19, 63, 1, 2, '2022-02-22 14:46:57'),
(506, 506, 62, 61, 1, 2, '2022-02-22 14:49:35'),
(507, 507, 62, 61, 1, 2, '2022-02-22 14:52:16'),
(508, 508, 62, 61, 1, 2, '2022-02-22 14:53:56'),
(509, 516, 111, 61, 1, 2, '2022-02-23 10:28:17'),
(510, 517, 65, 61, 1, 2, '2022-02-23 11:04:32'),
(511, 518, 115, 61, 1, 2, '2022-02-23 12:55:05'),
(512, 519, 17, 63, 1, 2, '2022-02-23 13:03:30'),
(513, 520, 17, 63, 1, 2, '2022-02-23 13:04:50'),
(514, 523, 115, 61, 1, 2, '2022-02-23 13:16:05'),
(515, 524, 115, 61, 1, 2, '2022-02-23 13:19:34'),
(516, 525, 115, 61, 1, 2, '2022-02-23 13:26:29'),
(517, 526, 38, 25, 1, 2, '2022-02-23 14:17:25'),
(518, 530, 54, 52, 1, 2, '2022-02-23 16:10:15'),
(519, 463, 52, 116, 2, 2, '2022-02-24 04:42:24'),
(520, 459, 52, 116, 2, 2, '2022-02-24 04:42:44'),
(521, 457, 52, 116, 2, 2, '2022-02-24 04:42:50'),
(522, 322, 52, 101, 2, 2, '2022-02-24 04:43:07'),
(523, 320, 52, 101, 2, 2, '2022-02-24 04:43:11'),
(524, 180, 52, 101, 2, 2, '2022-02-24 04:43:16'),
(525, 179, 52, 101, 2, 2, '2022-02-24 04:43:21'),
(526, 178, 52, 101, 2, 2, '2022-02-24 04:43:26'),
(527, 453, 52, 21, 2, 2, '2022-02-24 04:43:30'),
(528, 451, 52, 21, 2, 2, '2022-02-24 04:43:34'),
(529, 364, 52, 21, 2, 2, '2022-02-24 04:43:57'),
(530, 330, 52, 21, 2, 2, '2022-02-24 04:44:01'),
(531, 307, 52, 21, 2, 2, '2022-02-24 04:44:05'),
(532, 290, 52, 21, 2, 2, '2022-02-24 04:44:10'),
(533, 288, 52, 21, 2, 2, '2022-02-24 04:44:13'),
(534, 277, 52, 21, 2, 2, '2022-02-24 04:44:17'),
(535, 275, 52, 21, 2, 2, '2022-02-24 04:44:21'),
(536, 190, 52, 21, 2, 2, '2022-02-24 04:44:25'),
(537, 173, 52, 21, 2, 2, '2022-02-24 04:44:29'),
(538, 165, 52, 21, 2, 2, '2022-02-24 04:44:33'),
(539, 146, 52, 21, 2, 2, '2022-02-24 04:44:36'),
(540, 145, 52, 21, 2, 2, '2022-02-24 04:44:42'),
(541, 164, 52, 21, 2, 2, '2022-02-24 04:44:47'),
(542, 272, 52, 21, 2, 2, '2022-02-24 04:44:56'),
(543, 306, 52, 21, 2, 2, '2022-02-24 04:45:06'),
(544, 462, 52, 116, 2, 2, '2022-02-24 04:45:14'),
(545, 458, 52, 116, 2, 2, '2022-02-24 04:45:19'),
(546, 456, 52, 116, 2, 2, '2022-02-24 04:45:25'),
(547, 461, 52, 116, 2, 2, '2022-02-24 04:45:30'),
(548, 450, 52, 21, 2, 2, '2022-02-24 04:45:36'),
(549, 331, 52, 21, 2, 2, '2022-02-24 04:45:41'),
(550, 289, 52, 21, 2, 2, '2022-02-24 04:45:46'),
(551, 276, 52, 21, 2, 2, '2022-02-24 04:45:51'),
(552, 278, 52, 21, 2, 2, '2022-02-24 04:45:55'),
(553, 73, 52, 21, 2, 2, '2022-02-24 04:46:03'),
(554, 147, 52, 98, 2, 2, '2022-02-24 04:46:11'),
(555, 148, 52, 98, 2, 2, '2022-02-24 04:46:15'),
(556, 535, 52, 54, 2, 2, '2022-02-24 04:46:23'),
(557, 533, 52, 54, 2, 2, '2022-02-24 04:46:31'),
(558, 531, 52, 54, 2, 2, '2022-02-24 04:46:35'),
(559, 530, 52, 54, 2, 2, '2022-02-24 04:46:40'),
(560, 532, 52, 54, 2, 2, '2022-02-24 04:46:44'),
(561, 370, 52, 54, 2, 2, '2022-02-24 04:46:50'),
(562, 369, 52, 54, 2, 2, '2022-02-24 04:46:54'),
(563, 325, 52, 54, 2, 2, '2022-02-24 04:47:00'),
(564, 270, 52, 54, 2, 2, '2022-02-24 04:47:05'),
(565, 268, 52, 54, 2, 2, '2022-02-24 04:47:09'),
(566, 267, 52, 54, 2, 2, '2022-02-24 04:47:13'),
(567, 188, 52, 54, 2, 2, '2022-02-24 04:47:17'),
(568, 324, 52, 54, 2, 2, '2022-02-24 04:47:22'),
(569, 271, 52, 54, 2, 2, '2022-02-24 04:47:27'),
(570, 323, 52, 54, 2, 2, '2022-02-24 04:47:32'),
(571, 189, 52, 54, 2, 2, '2022-02-24 04:47:44'),
(572, 184, 52, 54, 2, 2, '2022-02-24 04:47:49'),
(573, 172, 52, 54, 2, 2, '2022-02-24 04:47:55'),
(574, 169, 52, 54, 2, 2, '2022-02-24 04:47:59'),
(575, 170, 52, 54, 2, 2, '2022-02-24 04:48:03'),
(576, 167, 52, 54, 2, 2, '2022-02-24 04:48:07'),
(577, 269, 52, 54, 2, 2, '2022-02-24 04:48:12'),
(578, 187, 52, 54, 2, 2, '2022-02-24 04:48:17'),
(579, 186, 52, 54, 2, 2, '2022-02-24 04:48:21'),
(580, 166, 52, 54, 2, 2, '2022-02-24 04:48:26'),
(581, 168, 52, 54, 2, 2, '2022-02-24 04:48:31'),
(582, 185, 52, 54, 2, 2, '2022-02-24 04:48:36'),
(583, 546, 52, 102, 2, 2, '2022-02-24 04:48:42'),
(584, 329, 52, 102, 2, 2, '2022-02-24 04:48:46'),
(585, 328, 52, 102, 2, 2, '2022-02-24 04:48:50'),
(586, 545, 52, 102, 2, 2, '2022-02-24 04:48:56'),
(587, 327, 52, 102, 2, 2, '2022-02-24 04:49:03'),
(588, 326, 52, 102, 2, 2, '2022-02-24 04:49:07'),
(589, 534, 52, 54, 2, 2, '2022-02-24 04:49:18'),
(590, 557, 108, 61, 1, 2, '2022-02-24 09:38:02'),
(591, 510, 61, 68, 2, 2, '2022-02-24 12:43:15'),
(592, 509, 61, 68, 3, 2, '2022-02-24 12:43:24'),
(593, 529, 61, 114, 3, 2, '2022-02-24 12:43:42'),
(594, 528, 61, 114, 3, 2, '2022-02-24 12:43:54'),
(595, 527, 61, 114, 3, 2, '2022-02-24 12:44:07'),
(596, 516, 61, 111, 3, 2, '2022-02-24 12:44:19'),
(597, 515, 61, 112, 3, 2, '2022-02-24 12:44:30'),
(598, 514, 61, 112, 3, 2, '2022-02-24 12:44:37'),
(599, 491, 61, 112, 3, 2, '2022-02-24 12:44:43'),
(600, 490, 61, 112, 3, 2, '2022-02-24 12:44:48'),
(601, 489, 61, 112, 3, 2, '2022-02-24 12:44:54'),
(602, 488, 61, 112, 3, 2, '2022-02-24 12:44:59'),
(603, 487, 61, 112, 3, 2, '2022-02-24 12:45:07'),
(604, 486, 61, 112, 2, 2, '2022-02-24 12:45:27'),
(605, 525, 61, 115, 2, 2, '2022-02-24 12:45:59'),
(606, 524, 61, 115, 2, 2, '2022-02-24 12:46:10'),
(607, 523, 61, 115, 2, 2, '2022-02-24 12:46:18'),
(608, 522, 61, 115, 3, 2, '2022-02-24 12:46:34'),
(609, 521, 61, 115, 3, 2, '2022-02-24 12:46:40'),
(610, 518, 61, 115, 2, 2, '2022-02-24 12:46:48'),
(611, 504, 61, 115, 3, 2, '2022-02-24 12:46:53'),
(612, 503, 61, 115, 3, 2, '2022-02-24 12:46:58'),
(613, 502, 61, 115, 3, 2, '2022-02-24 12:47:06'),
(614, 501, 61, 115, 3, 2, '2022-02-24 12:47:11'),
(615, 500, 61, 115, 3, 2, '2022-02-24 12:47:17'),
(616, 517, 61, 65, 3, 2, '2022-02-24 12:47:22'),
(617, 513, 61, 65, 3, 2, '2022-02-24 12:47:27'),
(618, 512, 61, 65, 3, 2, '2022-02-24 12:47:35'),
(619, 511, 61, 65, 3, 2, '2022-02-24 12:47:42'),
(620, 508, 61, 62, 2, 2, '2022-02-24 12:47:51'),
(621, 507, 61, 62, 2, 2, '2022-02-24 12:47:59'),
(622, 506, 61, 62, 2, 2, '2022-02-24 12:48:06'),
(623, 485, 61, 62, 2, 2, '2022-02-24 12:48:12'),
(624, 560, 61, 108, 3, 2, '2022-02-24 12:48:22'),
(625, 559, 61, 108, 3, 2, '2022-02-24 12:48:30'),
(626, 558, 61, 108, 3, 2, '2022-02-24 12:48:35'),
(627, 557, 61, 108, 3, 2, '2022-02-24 12:48:45'),
(628, 556, 61, 108, 3, 2, '2022-02-24 12:48:50'),
(629, 564, 17, 63, 1, 2, '2022-02-24 12:53:02'),
(630, 74, 69, 107, 2, 2, '2022-02-24 13:58:02'),
(631, 577, 111, 61, 1, 2, '2022-02-25 04:37:47'),
(632, 596, 65, 61, 1, 2, '2022-02-25 04:45:51'),
(633, 597, 65, 61, 1, 2, '2022-02-25 04:50:41'),
(634, 65, 22, 63, 3, 2, '2022-02-25 10:14:35'),
(635, 291, 22, 91, 3, 1, '2022-02-25 10:14:50'),
(636, 493, 22, 103, 2, 2, '2022-02-25 10:15:29'),
(637, 303, 22, 103, 3, 2, '2022-02-25 10:15:48'),
(638, 71, 22, 103, 3, 2, '2022-02-25 10:16:01'),
(639, 70, 22, 103, 3, 2, '2022-02-25 10:16:37'),
(640, 365, 22, 38, 2, 2, '2022-02-25 10:16:57'),
(641, 492, 22, 58, 3, 2, '2022-02-25 10:17:23'),
(642, 69, 22, 58, 3, 2, '2022-02-25 10:17:45'),
(643, 123, 22, 58, 3, 2, '2022-02-25 10:18:01'),
(644, 333, 22, 13, 3, 2, '2022-02-25 10:18:21'),
(645, 472, 22, 14, 3, 2, '2022-02-25 10:19:17'),
(646, 471, 22, 14, 2, 2, '2022-02-25 10:20:02'),
(647, 470, 22, 14, 3, 2, '2022-02-25 10:20:33'),
(648, 455, 22, 14, 2, 2, '2022-02-25 10:22:07'),
(649, 287, 22, 14, 3, 2, '2022-02-25 10:22:39'),
(650, 252, 22, 14, 3, 2, '2022-02-25 10:23:21'),
(651, 63, 22, 14, 2, 2, '2022-02-25 10:23:39'),
(652, 497, 22, 57, 2, 1, '2022-02-25 10:24:07'),
(653, 292, 22, 91, 3, 1, '2022-02-25 10:25:07'),
(654, 304, 22, 103, 3, 2, '2022-02-25 10:25:51'),
(655, 72, 22, 103, 3, 2, '2022-02-25 10:26:10'),
(656, 608, 22, 58, 3, 2, '2022-02-25 10:58:30'),
(657, 607, 22, 58, 3, 2, '2022-02-25 10:58:35'),
(658, 606, 22, 58, 3, 2, '2022-02-25 10:58:41'),
(659, 585, 61, 111, 3, 2, '2022-02-25 11:35:37'),
(660, 583, 61, 111, 3, 2, '2022-02-25 11:35:43'),
(661, 582, 61, 111, 3, 2, '2022-02-25 11:35:48'),
(662, 581, 61, 111, 3, 2, '2022-02-25 11:35:55'),
(663, 580, 61, 111, 3, 2, '2022-02-25 11:35:59'),
(664, 579, 61, 111, 3, 2, '2022-02-25 11:36:03'),
(665, 577, 61, 111, 3, 2, '2022-02-25 11:36:07'),
(666, 613, 38, 25, 1, 2, '2022-02-25 13:31:06'),
(667, 494, 63, 17, 3, 1, '2022-02-25 13:31:29'),
(668, 495, 63, 17, 3, 1, '2022-02-25 13:31:52'),
(669, 519, 63, 17, 2, 1, '2022-02-25 13:32:19'),
(670, 467, 63, 103, 3, 2, '2022-02-25 13:32:33'),
(671, 466, 63, 103, 3, 2, '2022-02-25 13:32:38'),
(672, 612, 63, 17, 3, 1, '2022-02-25 13:32:53'),
(673, 601, 63, 17, 3, 1, '2022-02-25 13:33:03'),
(674, 600, 63, 17, 3, 1, '2022-02-25 13:33:08'),
(675, 568, 63, 17, 3, 1, '2022-02-25 13:33:12'),
(676, 567, 63, 17, 3, 1, '2022-02-25 13:33:15'),
(677, 566, 63, 17, 3, 1, '2022-02-25 13:33:20'),
(678, 565, 63, 17, 3, 1, '2022-02-25 13:33:23'),
(679, 564, 63, 17, 2, 1, '2022-02-25 13:33:54'),
(680, 520, 63, 17, 3, 1, '2022-02-25 13:34:06'),
(681, 604, 63, 52, 3, 2, '2022-02-25 13:34:17'),
(682, 605, 63, 52, 3, 2, '2022-02-25 13:34:21'),
(683, 609, 63, 52, 3, 2, '2022-02-25 13:34:24'),
(684, 610, 63, 52, 3, 2, '2022-02-25 13:34:29'),
(685, 454, 63, 19, 2, 2, '2022-02-25 13:34:51'),
(686, 476, 63, 19, 2, 2, '2022-02-25 13:34:57'),
(687, 505, 63, 19, 2, 2, '2022-02-25 13:35:10'),
(688, 477, 63, 16, 2, 2, '2022-02-25 13:35:15'),
(689, 499, 63, 16, 2, 2, '2022-02-25 13:35:18'),
(690, 614, 38, 25, 1, 2, '2022-02-25 13:42:32'),
(691, 615, 38, 25, 1, 2, '2022-02-25 13:44:10'),
(692, 636, 61, 61, 1, 2, '2022-02-28 02:54:18'),
(693, 637, 61, 61, 1, 2, '2022-02-28 02:56:36'),
(694, 637, 61, 61, 2, 2, '2022-02-28 02:56:50'),
(695, 636, 61, 61, 2, 2, '2022-02-28 02:56:55'),
(696, 638, 115, 61, 1, 2, '2022-02-28 03:56:23'),
(697, 639, 115, 61, 1, 2, '2022-02-28 06:33:47'),
(698, 640, 115, 61, 1, 2, '2022-02-28 07:38:32'),
(699, 641, 65, 61, 1, 2, '2022-02-28 07:54:50'),
(700, 642, 65, 61, 1, 2, '2022-02-28 07:58:38'),
(701, 643, 65, 61, 1, 2, '2022-02-28 08:01:07'),
(702, 644, 65, 61, 1, 2, '2022-02-28 08:16:59'),
(703, 645, 65, 61, 1, 2, '2022-02-28 08:19:05'),
(704, 646, 65, 61, 1, 2, '2022-02-28 08:22:17'),
(705, 647, 54, 52, 1, 2, '2022-02-28 09:40:53'),
(706, 648, 54, 52, 1, 2, '2022-02-28 09:45:03'),
(707, 649, 96, 52, 1, 2, '2022-02-28 10:11:43'),
(708, 650, 111, 61, 1, 2, '2022-02-28 10:23:54'),
(709, 635, 61, 111, 2, 2, '2022-02-28 10:28:12'),
(710, 628, 61, 111, 2, 2, '2022-02-28 10:28:18'),
(711, 626, 61, 111, 2, 2, '2022-02-28 10:28:24'),
(712, 627, 61, 111, 2, 2, '2022-02-28 10:28:32'),
(713, 632, 61, 111, 2, 2, '2022-02-28 10:28:41'),
(714, 615, 25, 38, 3, 2, '2022-02-28 10:37:57'),
(715, 614, 25, 38, 2, 2, '2022-02-28 10:39:20'),
(716, 613, 25, 38, 2, 2, '2022-02-28 10:43:17'),
(717, 574, 25, 38, 2, 2, '2022-02-28 10:43:25'),
(718, 526, 25, 38, 2, 2, '2022-02-28 10:43:49'),
(719, 475, 25, 38, 2, 2, '2022-02-28 10:43:55'),
(720, 448, 25, 38, 2, 2, '2022-02-28 10:44:02'),
(721, 397, 25, 38, 2, 2, '2022-02-28 10:44:14'),
(722, 357, 25, 38, 2, 2, '2022-02-28 10:44:19'),
(723, 335, 25, 38, 2, 2, '2022-02-28 10:44:25'),
(724, 334, 25, 38, 2, 2, '2022-02-28 10:44:34'),
(725, 312, 25, 38, 2, 2, '2022-02-28 10:44:52'),
(726, 261, 25, 38, 2, 2, '2022-02-28 10:45:02'),
(727, 336, 25, 38, 2, 2, '2022-02-28 10:45:14'),
(728, 226, 25, 38, 2, 2, '2022-02-28 10:45:19'),
(729, 224, 25, 38, 2, 2, '2022-02-28 10:45:27'),
(730, 122, 25, 38, 2, 2, '2022-02-28 10:45:39'),
(731, 111, 25, 38, 2, 2, '2022-02-28 10:45:44'),
(732, 66, 25, 38, 2, 2, '2022-02-28 10:45:53'),
(733, 651, 112, 61, 1, 2, '2022-02-28 10:47:14'),
(734, 652, 112, 61, 1, 2, '2022-02-28 10:49:00'),
(735, 653, 112, 61, 1, 2, '2022-02-28 10:51:24'),
(736, 105, 39, 48, 2, 2, '2022-02-28 10:54:14'),
(737, 654, 112, 61, 1, 2, '2022-02-28 10:55:37'),
(738, 655, 112, 61, 1, 2, '2022-02-28 10:59:02'),
(739, 656, 112, 61, 1, 2, '2022-02-28 11:02:38'),
(740, 657, 112, 61, 1, 2, '2022-02-28 11:14:00'),
(741, 658, 112, 61, 1, 2, '2022-02-28 11:21:43'),
(742, 659, 112, 61, 1, 2, '2022-02-28 11:32:06'),
(743, 660, 17, 63, 1, 2, '2022-02-28 13:08:57'),
(744, 573, 25, 38, 2, 2, '2022-02-28 13:58:35'),
(745, 496, 25, 38, 2, 2, '2022-02-28 13:58:44'),
(746, 227, 25, 38, 2, 2, '2022-02-28 13:58:59'),
(747, 374, 25, 105, 2, 1, '2022-02-28 13:59:13'),
(748, 343, 25, 105, 2, 1, '2022-02-28 13:59:21'),
(749, 341, 25, 105, 2, 1, '2022-02-28 13:59:25'),
(750, 313, 25, 105, 2, 1, '2022-02-28 13:59:33'),
(751, 286, 25, 105, 2, 1, '2022-02-28 13:59:42'),
(752, 373, 25, 105, 2, 1, '2022-02-28 14:00:02'),
(753, 332, 25, 105, 2, 1, '2022-02-28 14:00:06'),
(754, 661, 38, 25, 1, 2, '2022-02-28 14:12:12'),
(755, 662, 19, 63, 1, 2, '2022-02-28 15:32:59'),
(756, 621, 63, 16, 3, 2, '2022-02-28 16:40:27'),
(757, 620, 63, 16, 3, 2, '2022-02-28 16:40:32'),
(758, 619, 63, 16, 3, 2, '2022-02-28 16:40:36'),
(759, 618, 63, 16, 3, 2, '2022-02-28 16:40:40'),
(760, 617, 63, 16, 3, 2, '2022-02-28 16:40:43'),
(761, 616, 63, 16, 3, 2, '2022-02-28 16:40:47'),
(762, 662, 63, 19, 2, 2, '2022-02-28 16:41:08'),
(763, 634, 63, 19, 3, 2, '2022-02-28 16:41:14'),
(764, 630, 63, 19, 3, 2, '2022-02-28 16:41:18'),
(765, 629, 63, 19, 3, 2, '2022-02-28 16:41:22'),
(766, 660, 63, 17, 2, 1, '2022-02-28 16:41:34'),
(767, 663, 21, 52, 1, 2, '2022-03-01 04:03:38'),
(768, 646, 61, 65, 2, 1, '2022-03-01 04:52:26'),
(769, 645, 61, 65, 2, 1, '2022-03-01 04:52:33'),
(770, 644, 61, 65, 2, 1, '2022-03-01 04:52:41'),
(771, 643, 61, 65, 2, 1, '2022-03-01 04:52:53'),
(772, 642, 61, 65, 2, 1, '2022-03-01 04:53:01'),
(773, 641, 61, 65, 2, 1, '2022-03-01 04:53:07'),
(774, 631, 61, 65, 2, 1, '2022-03-01 04:53:12'),
(775, 611, 61, 65, 2, 1, '2022-03-01 04:53:18'),
(776, 603, 61, 65, 2, 1, '2022-03-01 04:53:37'),
(777, 598, 61, 65, 3, 1, '2022-03-01 04:53:50'),
(778, 597, 61, 65, 2, 1, '2022-03-01 04:54:00'),
(779, 596, 61, 65, 3, 1, '2022-03-01 04:54:09'),
(780, 595, 61, 65, 3, 1, '2022-03-01 04:54:15'),
(781, 594, 61, 65, 3, 1, '2022-03-01 04:54:22'),
(782, 593, 61, 65, 3, 1, '2022-03-01 04:54:27'),
(783, 592, 61, 65, 3, 1, '2022-03-01 04:54:32'),
(784, 591, 61, 65, 3, 1, '2022-03-01 04:54:39'),
(785, 590, 61, 65, 3, 1, '2022-03-01 04:54:46'),
(786, 589, 61, 65, 3, 1, '2022-03-01 04:54:53'),
(787, 588, 61, 65, 3, 1, '2022-03-01 04:54:58'),
(788, 587, 61, 65, 3, 1, '2022-03-01 04:55:04'),
(789, 586, 61, 65, 3, 1, '2022-03-01 04:55:09'),
(790, 563, 61, 65, 3, 1, '2022-03-01 04:55:13'),
(791, 562, 61, 65, 3, 1, '2022-03-01 04:55:19'),
(792, 561, 61, 65, 3, 1, '2022-03-01 04:55:23'),
(793, 584, 61, 62, 3, 2, '2022-03-01 04:55:29'),
(794, 633, 61, 68, 2, 1, '2022-03-01 04:55:39'),
(795, 650, 61, 111, 2, 2, '2022-03-01 04:55:48'),
(796, 659, 61, 112, 2, 2, '2022-03-01 04:56:01'),
(797, 658, 61, 112, 2, 2, '2022-03-01 04:56:10'),
(798, 657, 61, 112, 2, 2, '2022-03-01 04:56:19'),
(799, 656, 61, 112, 2, 2, '2022-03-01 04:56:27'),
(800, 655, 61, 112, 2, 2, '2022-03-01 04:56:37'),
(801, 654, 61, 112, 2, 2, '2022-03-01 04:56:46'),
(802, 653, 61, 112, 2, 2, '2022-03-01 04:56:55'),
(803, 652, 61, 112, 2, 2, '2022-03-01 04:57:01'),
(804, 651, 61, 112, 2, 2, '2022-03-01 04:57:07'),
(805, 599, 61, 112, 3, 2, '2022-03-01 04:57:20'),
(806, 578, 61, 112, 2, 2, '2022-03-01 04:57:30'),
(807, 572, 61, 112, 3, 2, '2022-03-01 04:57:37'),
(808, 640, 61, 115, 2, 2, '2022-03-01 04:57:49'),
(809, 639, 61, 115, 2, 2, '2022-03-01 04:57:59'),
(810, 638, 61, 115, 2, 2, '2022-03-01 04:58:06'),
(811, 571, 61, 115, 2, 2, '2022-03-01 04:58:15'),
(812, 570, 61, 115, 2, 2, '2022-03-01 04:58:26'),
(813, 569, 61, 115, 3, 2, '2022-03-01 04:58:35'),
(814, 664, 115, 61, 1, 2, '2022-03-01 06:35:39'),
(815, 321, 52, 101, 2, 2, '2022-03-01 07:00:26'),
(816, 279, 52, 101, 2, 2, '2022-03-01 07:00:31'),
(817, 663, 52, 21, 2, 2, '2022-03-01 07:00:41'),
(818, 602, 52, 21, 2, 2, '2022-03-01 07:00:54'),
(819, 549, 52, 21, 2, 2, '2022-03-01 07:02:58'),
(820, 548, 52, 21, 2, 2, '2022-03-01 07:03:03'),
(821, 547, 52, 21, 2, 2, '2022-03-01 07:03:07'),
(822, 648, 52, 54, 2, 1, '2022-03-01 07:52:11'),
(823, 665, 52, 63, 1, 2, '2022-03-01 07:53:36'),
(824, 666, 52, 63, 1, 2, '2022-03-01 07:55:18'),
(825, 667, 52, 63, 1, 2, '2022-03-01 07:56:07'),
(826, 668, 17, 63, 1, 2, '2022-03-01 08:42:33'),
(827, 669, 107, 69, 1, 2, '2022-03-01 10:00:55'),
(828, 669, 69, 107, 2, 2, '2022-03-01 10:46:37'),
(829, 670, 98, 52, 1, 2, '2022-03-01 10:58:22'),
(830, 671, 107, 69, 1, 2, '2022-03-01 11:03:46'),
(831, 671, 69, 107, 2, 2, '2022-03-01 11:04:41'),
(832, 672, 13, 22, 1, 2, '2022-03-01 11:04:45'),
(833, 673, 116, 52, 1, 2, '2022-03-01 11:05:36'),
(834, 674, 116, 52, 1, 2, '2022-03-01 11:08:36'),
(835, 675, 98, 52, 1, 2, '2022-03-01 11:09:20'),
(836, 676, 116, 52, 1, 2, '2022-03-01 11:11:29'),
(837, 677, 116, 52, 1, 2, '2022-03-01 11:13:48'),
(838, 678, 98, 52, 1, 2, '2022-03-01 11:16:45'),
(839, 679, 116, 52, 1, 2, '2022-03-01 11:18:44'),
(840, 680, 116, 52, 1, 2, '2022-03-01 11:21:18'),
(841, 681, 13, 22, 1, 2, '2022-03-01 11:21:23'),
(842, 682, 98, 52, 1, 2, '2022-03-01 11:21:25'),
(843, 683, 116, 52, 1, 2, '2022-03-01 11:22:14'),
(844, 684, 13, 22, 1, 2, '2022-03-01 11:22:54'),
(845, 685, 98, 52, 1, 2, '2022-03-01 11:23:11'),
(846, 686, 107, 69, 1, 2, '2022-03-01 11:23:35'),
(847, 687, 116, 52, 1, 2, '2022-03-01 11:23:44'),
(848, 688, 107, 69, 1, 2, '2022-03-01 11:28:05'),
(849, 689, 116, 52, 1, 2, '2022-03-01 11:31:09'),
(850, 690, 116, 52, 1, 2, '2022-03-01 11:32:32'),
(851, 691, 52, 63, 1, 2, '2022-03-01 12:11:50'),
(852, 692, 58, 22, 1, 2, '2022-03-01 12:16:50'),
(853, 688, 69, 107, 2, 2, '2022-03-01 12:16:51'),
(854, 686, 69, 107, 2, 2, '2022-03-01 12:16:55'),
(855, 693, 13, 22, 1, 2, '2022-03-01 12:20:45'),
(856, 694, 119, 25, 1, 2, '2022-03-01 12:22:56'),
(857, 695, 119, 25, 1, 2, '2022-03-01 12:26:33'),
(858, 696, 14, 22, 1, 2, '2022-03-01 12:27:39'),
(859, 697, 119, 25, 1, 2, '2022-03-01 12:28:22'),
(860, 698, 119, 25, 1, 2, '2022-03-01 12:29:28'),
(861, 699, 59, 22, 1, 2, '2022-03-01 12:30:19'),
(862, 700, 119, 25, 1, 2, '2022-03-01 12:30:26'),
(863, 701, 91, 22, 1, 2, '2022-03-01 12:32:44'),
(864, 702, 14, 22, 1, 2, '2022-03-01 12:33:05'),
(865, 703, 119, 25, 1, 2, '2022-03-01 12:37:19'),
(866, 704, 101, 52, 1, 2, '2022-03-01 12:44:27'),
(867, 705, 119, 25, 1, 2, '2022-03-01 12:45:19'),
(868, 706, 54, 52, 1, 2, '2022-03-01 12:53:37'),
(869, 707, 54, 52, 1, 2, '2022-03-01 12:55:01'),
(870, 708, 102, 52, 1, 2, '2022-03-01 12:55:40'),
(871, 709, 54, 52, 1, 2, '2022-03-01 12:56:09'),
(872, 710, 113, 61, 1, 2, '2022-03-01 12:57:53'),
(873, 711, 17, 63, 1, 2, '2022-03-01 13:02:31'),
(874, 712, 17, 63, 1, 2, '2022-03-01 13:03:02'),
(875, 713, 21, 52, 1, 2, '2022-03-01 13:12:41'),
(876, 714, 102, 52, 1, 2, '2022-03-01 13:14:53'),
(877, 715, 109, 22, 1, 2, '2022-03-01 13:15:23'),
(878, 716, 123, 25, 1, 2, '2022-03-01 13:22:46'),
(879, 717, 115, 61, 1, 2, '2022-03-01 13:22:47'),
(880, 718, 97, 52, 1, 2, '2022-03-01 13:41:03'),
(881, 719, 19, 63, 1, 2, '2022-03-01 13:44:34'),
(882, 720, 19, 63, 1, 2, '2022-03-01 13:45:38'),
(883, 721, 38, 25, 1, 2, '2022-03-01 13:50:20'),
(884, 722, 105, 25, 1, 2, '2022-03-01 13:58:48'),
(885, 723, 105, 25, 1, 2, '2022-03-01 14:01:04'),
(886, 724, 38, 25, 1, 2, '2022-03-01 14:08:15'),
(887, 725, 38, 25, 1, 2, '2022-03-01 14:08:53'),
(888, 726, 48, 39, 1, 2, '2022-03-01 15:26:17'),
(889, 727, 48, 39, 1, 2, '2022-03-01 15:29:29'),
(890, 728, 48, 39, 1, 2, '2022-03-01 15:36:54'),
(891, 729, 48, 39, 1, 2, '2022-03-01 15:37:31'),
(892, 730, 111, 61, 1, 2, '2022-03-01 16:14:57'),
(893, 730, 61, 111, 2, 2, '2022-03-01 16:15:17'),
(894, 723, 25, 105, 2, 1, '2022-03-02 04:35:42'),
(895, 342, 25, 105, 2, 1, '2022-03-02 04:35:51'),
(896, 284, 25, 105, 2, 1, '2022-03-02 04:35:58'),
(897, 282, 25, 105, 2, 1, '2022-03-02 04:36:03'),
(898, 705, 25, 119, 2, 2, '2022-03-02 04:36:09'),
(899, 78, 25, 38, 2, 2, '2022-03-02 04:36:54'),
(900, 722, 25, 105, 2, 1, '2022-03-02 04:37:25'),
(901, 283, 25, 105, 2, 1, '2022-03-02 04:37:31'),
(902, 731, 95, 5, 1, 1, '2022-03-02 04:45:13'),
(903, 732, 112, 61, 1, 2, '2022-03-02 04:47:47'),
(904, 733, 13, 22, 1, 2, '2022-03-02 04:48:51'),
(905, 734, 13, 22, 1, 2, '2022-03-02 04:50:45'),
(906, 735, 103, 22, 1, 2, '2022-03-02 04:56:05'),
(907, 736, 13, 22, 1, 2, '2022-03-02 04:59:07'),
(908, 737, 103, 22, 1, 2, '2022-03-02 05:01:31'),
(909, 738, 19, 63, 1, 2, '2022-03-02 06:40:52'),
(910, 739, 112, 61, 1, 2, '2022-03-02 06:51:22'),
(911, 133, 111, 111, 3, 2, '2022-03-02 08:09:55'),
(912, 371, 111, 25, 3, 2, '2022-03-02 08:10:07'),
(913, 740, 113, 61, 1, 2, '2022-03-02 08:54:35'),
(914, 741, 7, 39, 1, 2, '2022-03-02 08:59:51'),
(915, 742, 7, 39, 1, 2, '2022-03-02 09:01:26'),
(916, 743, 109, 22, 1, 2, '2022-03-02 09:53:18'),
(917, 744, 109, 22, 1, 2, '2022-03-02 09:58:16'),
(918, 745, 115, 61, 1, 2, '2022-03-02 10:08:28'),
(919, 746, 13, 22, 1, 2, '2022-03-02 10:15:51'),
(920, 747, 119, 125, 1, 2, '2022-03-02 10:49:09'),
(921, 748, 48, 39, 1, 2, '2022-03-02 11:06:40'),
(922, 749, 48, 39, 1, 2, '2022-03-02 11:12:18'),
(923, 750, 115, 61, 1, 2, '2022-03-02 11:39:28'),
(924, 751, 114, 61, 1, 2, '2022-03-02 11:43:50'),
(925, 752, 17, 63, 1, 2, '2022-03-02 11:46:01'),
(926, 753, 38, 25, 1, 2, '2022-03-02 12:22:52'),
(927, 754, 38, 25, 1, 2, '2022-03-02 12:23:06'),
(928, 755, 13, 22, 1, 2, '2022-03-02 12:39:16'),
(929, 756, 13, 22, 1, 2, '2022-03-02 12:40:14'),
(930, 757, 58, 22, 1, 2, '2022-03-02 12:57:59'),
(931, 758, 103, 22, 1, 2, '2022-03-02 12:59:21'),
(932, 759, 48, 39, 1, 2, '2022-03-02 13:22:45'),
(933, 760, 119, 125, 1, 2, '2022-03-02 13:24:26'),
(934, 761, 123, 25, 1, 2, '2022-03-02 13:45:30'),
(935, 762, 19, 63, 1, 2, '2022-03-02 14:22:25'),
(936, 763, 114, 61, 1, 2, '2022-03-02 14:27:19'),
(937, 764, 114, 61, 1, 2, '2022-03-02 14:28:40'),
(938, 765, 114, 61, 1, 2, '2022-03-02 14:33:29'),
(939, 744, 22, 109, 2, 2, '2022-03-02 16:00:20'),
(940, 715, 22, 109, 2, 2, '2022-03-02 16:00:41'),
(941, 743, 22, 109, 2, 2, '2022-03-02 16:00:50'),
(942, 701, 22, 91, 3, 1, '2022-03-02 16:01:23'),
(943, 758, 22, 103, 3, 2, '2022-03-02 16:01:50'),
(944, 737, 22, 103, 2, 2, '2022-03-02 16:02:11'),
(945, 757, 22, 58, 3, 2, '2022-03-02 16:02:41'),
(946, 692, 22, 58, 3, 2, '2022-03-02 16:02:55'),
(947, 756, 22, 13, 2, 2, '2022-03-02 16:03:37'),
(948, 755, 22, 13, 2, 2, '2022-03-02 16:04:00'),
(949, 746, 22, 13, 2, 2, '2022-03-02 16:04:24'),
(950, 736, 22, 13, 2, 2, '2022-03-02 16:04:46'),
(951, 734, 22, 13, 2, 2, '2022-03-02 16:05:19'),
(952, 693, 22, 13, 2, 2, '2022-03-02 16:05:33'),
(953, 733, 22, 13, 2, 2, '2022-03-02 16:05:40'),
(954, 684, 22, 13, 2, 2, '2022-03-02 16:06:11'),
(955, 681, 22, 13, 2, 2, '2022-03-02 16:06:20'),
(956, 672, 22, 13, 3, 2, '2022-03-02 16:06:30'),
(957, 735, 22, 103, 3, 2, '2022-03-02 16:06:36'),
(958, 702, 22, 14, 2, 2, '2022-03-02 16:06:57'),
(959, 696, 22, 14, 3, 2, '2022-03-02 16:07:32'),
(960, 699, 22, 59, 2, 2, '2022-03-02 16:07:52'),
(961, 766, 48, 39, 1, 2, '2022-03-02 16:43:07'),
(962, 767, 48, 39, 1, 2, '2022-03-02 16:43:41'),
(963, 768, 48, 39, 1, 2, '2022-03-02 16:44:13'),
(964, 769, 48, 39, 1, 2, '2022-03-02 16:48:02'),
(965, 770, 48, 39, 1, 2, '2022-03-02 16:48:56'),
(966, 771, 48, 39, 1, 2, '2022-03-02 16:51:08'),
(967, 772, 125, 5, 1, 1, '2022-03-02 17:30:58'),
(968, 760, 125, 119, 2, 2, '2022-03-02 21:34:10'),
(969, 747, 125, 119, 2, 2, '2022-03-02 21:35:05'),
(970, 773, 13, 22, 1, 2, '2022-03-03 05:10:43'),
(971, 774, 13, 22, 1, 2, '2022-03-03 05:15:01'),
(972, 690, 52, 116, 2, 2, '2022-03-03 05:28:14'),
(973, 687, 52, 116, 2, 2, '2022-03-03 05:28:26'),
(974, 679, 52, 116, 3, 2, '2022-03-03 05:31:10'),
(975, 683, 52, 116, 3, 2, '2022-03-03 05:31:19'),
(976, 680, 52, 116, 2, 2, '2022-03-03 05:31:49'),
(977, 775, 65, 61, 1, 2, '2022-03-03 07:07:21'),
(978, 776, 65, 61, 1, 2, '2022-03-03 07:08:35'),
(979, 777, 65, 61, 1, 2, '2022-03-03 07:12:04'),
(980, 778, 115, 61, 1, 2, '2022-03-03 08:55:37'),
(981, 285, 25, 105, 2, 1, '2022-03-03 09:47:10'),
(982, 779, 59, 63, 1, 2, '2022-03-03 09:47:41'),
(983, 780, 59, 63, 1, 2, '2022-03-03 09:49:51'),
(984, 281, 25, 105, 2, 1, '2022-03-03 09:50:35'),
(985, 781, 17, 63, 1, 2, '2022-03-03 09:52:38'),
(986, 667, 63, 52, 2, 2, '2022-03-03 09:53:23'),
(987, 666, 63, 52, 2, 2, '2022-03-03 09:53:29'),
(988, 665, 63, 52, 2, 2, '2022-03-03 09:53:46'),
(989, 779, 63, 59, 3, 1, '2022-03-03 09:53:57'),
(990, 780, 63, 59, 3, 1, '2022-03-03 09:54:02'),
(991, 781, 63, 17, 2, 1, '2022-03-03 09:54:22'),
(992, 762, 63, 19, 2, 2, '2022-03-03 09:54:30'),
(993, 752, 63, 17, 2, 1, '2022-03-03 09:54:37'),
(994, 738, 63, 19, 2, 2, '2022-03-03 09:54:43'),
(995, 720, 63, 19, 2, 2, '2022-03-03 09:54:51'),
(996, 719, 63, 19, 2, 2, '2022-03-03 09:54:55'),
(997, 712, 63, 17, 2, 1, '2022-03-03 09:54:59'),
(998, 711, 63, 17, 2, 1, '2022-03-03 09:55:02'),
(999, 691, 63, 52, 2, 2, '2022-03-03 09:55:06'),
(1000, 668, 63, 17, 2, 1, '2022-03-03 09:55:10'),
(1001, 729, 39, 48, 2, 2, '2022-03-03 09:56:16'),
(1002, 728, 39, 48, 2, 2, '2022-03-03 09:56:46'),
(1003, 727, 39, 48, 2, 2, '2022-03-03 09:56:58'),
(1004, 726, 39, 48, 2, 2, '2022-03-03 09:57:14'),
(1005, 742, 39, 7, 2, 1, '2022-03-03 09:57:24'),
(1006, 741, 39, 7, 2, 1, '2022-03-03 09:57:32'),
(1007, 748, 39, 48, 2, 2, '2022-03-03 09:57:45'),
(1008, 749, 39, 48, 2, 2, '2022-03-03 09:58:02'),
(1009, 759, 39, 48, 2, 2, '2022-03-03 09:58:15'),
(1010, 766, 39, 48, 2, 2, '2022-03-03 09:58:22'),
(1011, 767, 39, 48, 2, 2, '2022-03-03 09:58:34'),
(1012, 768, 39, 48, 2, 2, '2022-03-03 09:58:39'),
(1013, 769, 39, 48, 2, 2, '2022-03-03 09:58:44'),
(1014, 770, 39, 48, 2, 2, '2022-03-03 09:58:49'),
(1015, 771, 39, 48, 2, 2, '2022-03-03 09:58:53'),
(1016, 782, 60, 120, 1, 2, '2022-03-03 10:03:45'),
(1017, 783, 60, 120, 1, 2, '2022-03-03 10:04:34'),
(1018, 784, 60, 120, 1, 2, '2022-03-03 10:05:04'),
(1019, 785, 117, 125, 1, 2, '2022-03-03 11:50:20'),
(1020, 786, 117, 125, 1, 2, '2022-03-03 11:56:37'),
(1021, 787, 117, 125, 1, 2, '2022-03-03 11:57:56'),
(1022, 788, 118, 125, 1, 2, '2022-03-03 12:06:08'),
(1023, 789, 126, 125, 1, 2, '2022-03-03 12:21:23'),
(1024, 790, 119, 125, 1, 2, '2022-03-03 12:43:38'),
(1025, 791, 119, 125, 1, 2, '2022-03-03 12:45:17'),
(1026, 792, 119, 125, 1, 2, '2022-03-03 12:48:06'),
(1027, 793, 92, 120, 1, 2, '2022-03-03 12:53:46'),
(1028, 794, 92, 120, 1, 2, '2022-03-03 12:54:26'),
(1029, 795, 92, 120, 1, 2, '2022-03-03 12:54:55'),
(1030, 796, 119, 125, 1, 2, '2022-03-03 13:09:01'),
(1031, 797, 112, 61, 1, 2, '2022-03-03 13:10:59'),
(1032, 798, 112, 61, 1, 2, '2022-03-03 13:13:07'),
(1033, 799, 14, 22, 1, 2, '2022-03-03 13:14:06'),
(1034, 800, 14, 22, 1, 2, '2022-03-03 13:14:57'),
(1035, 801, 103, 22, 1, 2, '2022-03-03 13:19:28'),
(1036, 802, 19, 63, 1, 1, '2022-03-03 13:28:06'),
(1037, 803, 19, 63, 1, 1, '2022-03-03 13:30:40'),
(1038, 804, 91, 22, 1, 2, '2022-03-03 13:34:38'),
(1039, 805, 91, 22, 1, 2, '2022-03-03 13:36:44'),
(1040, 806, 111, 61, 1, 2, '2022-03-03 14:01:15'),
(1041, 806, 61, 111, 3, 2, '2022-03-03 14:01:51'),
(1042, 807, 58, 22, 1, 2, '2022-03-03 14:13:13'),
(1043, 808, 123, 39, 1, 1, '2022-03-03 14:55:48'),
(1044, 809, 123, 25, 1, 2, '2022-03-03 14:59:56'),
(1045, 810, 123, 69, 1, 2, '2022-03-03 15:02:02'),
(1046, 811, 16, 63, 1, 1, '2022-03-03 15:12:32'),
(1047, 812, 16, 63, 1, 1, '2022-03-03 15:13:01'),
(1048, 685, 52, 98, 2, 1, '2022-03-04 05:10:36'),
(1049, 682, 52, 98, 2, 1, '2022-03-04 05:11:01'),
(1050, 678, 52, 98, 2, 1, '2022-03-04 05:16:33'),
(1051, 709, 52, 54, 2, 1, '2022-03-04 05:16:48'),
(1052, 706, 52, 54, 2, 1, '2022-03-04 05:16:59'),
(1053, 708, 52, 102, 2, 2, '2022-03-04 05:19:15'),
(1054, 714, 52, 102, 2, 2, '2022-03-04 05:19:39'),
(1055, 718, 52, 97, 2, 1, '2022-03-04 05:19:46'),
(1056, 785, 125, 117, 2, 1, '2022-03-04 05:35:40'),
(1057, 796, 125, 119, 2, 1, '2022-03-04 05:36:02'),
(1058, 792, 125, 119, 2, 1, '2022-03-04 05:36:44'),
(1059, 788, 125, 118, 2, 1, '2022-03-04 06:06:38'),
(1060, 791, 125, 119, 2, 1, '2022-03-04 06:06:48'),
(1061, 787, 125, 117, 2, 1, '2022-03-04 06:06:58'),
(1062, 789, 125, 126, 2, 1, '2022-03-04 06:07:03'),
(1063, 790, 125, 119, 2, 1, '2022-03-04 06:07:14'),
(1064, 786, 125, 117, 2, 1, '2022-03-04 06:07:21'),
(1065, 813, 13, 22, 1, 2, '2022-03-04 07:12:51'),
(1066, 814, 13, 22, 1, 2, '2022-03-04 07:14:45'),
(1067, 815, 17, 63, 1, 1, '2022-03-04 07:50:36'),
(1068, 816, 115, 61, 1, 2, '2022-03-04 08:16:54');
INSERT INTO `report_notifications` (`id`, `report_id`, `sender_id`, `receiver_id`, `report_status`, `status`, `created_at`) VALUES
(1069, 817, 17, 63, 1, 1, '2022-03-04 09:42:36'),
(1070, 818, 129, 22, 1, 2, '2022-03-04 10:03:59'),
(1071, 765, 61, 114, 2, 2, '2022-03-04 10:15:03'),
(1072, 764, 61, 114, 2, 2, '2022-03-04 10:15:08'),
(1073, 763, 61, 114, 2, 2, '2022-03-04 10:15:14'),
(1074, 751, 61, 114, 2, 2, '2022-03-04 10:15:20'),
(1075, 740, 61, 113, 2, 1, '2022-03-04 10:15:25'),
(1076, 710, 61, 113, 2, 1, '2022-03-04 10:15:30'),
(1077, 798, 61, 112, 2, 2, '2022-03-04 10:15:35'),
(1078, 797, 61, 112, 2, 2, '2022-03-04 10:15:43'),
(1079, 739, 61, 112, 2, 2, '2022-03-04 10:15:48'),
(1080, 732, 61, 112, 2, 2, '2022-03-04 10:15:53'),
(1081, 816, 61, 115, 2, 1, '2022-03-04 10:15:58'),
(1082, 778, 61, 115, 2, 1, '2022-03-04 10:16:04'),
(1083, 750, 61, 115, 2, 1, '2022-03-04 10:16:11'),
(1084, 745, 61, 115, 2, 1, '2022-03-04 10:16:17'),
(1085, 717, 61, 115, 2, 1, '2022-03-04 10:16:22'),
(1086, 664, 61, 115, 2, 1, '2022-03-04 10:16:27'),
(1087, 777, 61, 65, 2, 1, '2022-03-04 10:16:33'),
(1088, 776, 61, 65, 2, 1, '2022-03-04 10:16:39'),
(1089, 775, 61, 65, 2, 1, '2022-03-04 10:16:44'),
(1090, 819, 116, 52, 1, 2, '2022-03-04 10:19:28'),
(1091, 820, 130, 61, 1, 2, '2022-03-04 10:22:28'),
(1092, 821, 129, 22, 1, 2, '2022-03-04 10:26:58'),
(1093, 822, 130, 61, 1, 2, '2022-03-04 10:30:12'),
(1094, 823, 130, 61, 1, 2, '2022-03-04 10:36:19'),
(1095, 824, 130, 61, 1, 2, '2022-03-04 10:56:02'),
(1096, 825, 130, 61, 1, 2, '2022-03-04 11:03:42'),
(1097, 825, 61, 130, 2, 2, '2022-03-04 11:31:55'),
(1098, 824, 61, 130, 2, 2, '2022-03-04 11:32:01'),
(1099, 823, 61, 130, 2, 2, '2022-03-04 11:32:08'),
(1100, 822, 61, 130, 2, 2, '2022-03-04 11:32:13'),
(1101, 820, 61, 130, 2, 2, '2022-03-04 11:32:20'),
(1102, 826, 14, 22, 1, 2, '2022-03-04 11:57:10'),
(1103, 827, 14, 22, 1, 2, '2022-03-04 11:57:38'),
(1104, 828, 13, 22, 1, 2, '2022-03-04 12:39:46'),
(1105, 829, 13, 22, 1, 2, '2022-03-04 12:41:05'),
(1106, 830, 123, 11, 1, 1, '2022-03-04 12:44:40'),
(1107, 831, 123, 39, 1, 1, '2022-03-04 12:47:08'),
(1108, 832, 130, 61, 1, 2, '2022-03-04 12:55:47'),
(1109, 833, 114, 61, 1, 2, '2022-03-04 12:58:22'),
(1110, 834, 114, 61, 1, 2, '2022-03-04 12:59:09'),
(1111, 835, 37, 25, 1, 2, '2022-03-04 13:21:13'),
(1112, 836, 118, 125, 1, 2, '2022-03-04 13:28:16'),
(1113, 837, 126, 125, 1, 2, '2022-03-04 13:29:24'),
(1114, 838, 117, 125, 1, 2, '2022-03-04 13:29:53'),
(1115, 839, 52, 39, 1, 1, '2022-03-04 13:30:27'),
(1116, 840, 119, 125, 1, 2, '2022-03-04 13:32:32'),
(1117, 841, 119, 125, 1, 2, '2022-03-04 13:33:42'),
(1118, 842, 19, 63, 1, 1, '2022-03-04 14:20:45'),
(1119, 843, 38, 25, 1, 2, '2022-03-04 14:22:36'),
(1120, 844, 38, 25, 1, 2, '2022-03-04 14:25:07'),
(1121, 832, 61, 130, 2, 2, '2022-03-04 16:27:09'),
(1122, 834, 61, 114, 2, 2, '2022-03-04 16:27:17'),
(1123, 833, 61, 114, 2, 2, '2022-03-04 16:27:23'),
(1124, 845, 114, 61, 1, 2, '2022-03-05 03:49:42'),
(1125, 846, 114, 61, 1, 2, '2022-03-05 03:50:30'),
(1126, 847, 19, 63, 1, 1, '2022-03-05 07:14:28'),
(1127, 848, 19, 63, 1, 1, '2022-03-05 07:34:56'),
(1128, 849, 130, 61, 1, 2, '2022-03-05 07:42:38'),
(1129, 850, 19, 19, 1, 2, '2022-03-05 07:45:43'),
(1130, 851, 130, 61, 1, 2, '2022-03-05 07:53:26'),
(1131, 852, 68, 61, 1, 2, '2022-03-05 08:01:27'),
(1132, 853, 68, 61, 1, 2, '2022-03-05 08:15:26'),
(1133, 854, 68, 61, 1, 2, '2022-03-05 08:22:28'),
(1134, 460, 19, 116, 2, 2, '2022-03-05 09:06:32'),
(1135, 850, 19, 19, 2, 2, '2022-03-05 09:06:42'),
(1136, 855, 68, 61, 1, 2, '2022-03-05 09:24:08'),
(1137, 856, 68, 61, 1, 2, '2022-03-05 10:03:02'),
(1138, 857, 130, 61, 1, 2, '2022-03-05 10:07:12'),
(1139, 858, 130, 61, 1, 2, '2022-03-05 11:03:04'),
(1140, 859, 58, 22, 1, 2, '2022-03-05 14:16:26'),
(1141, 860, 114, 61, 1, 2, '2022-03-07 04:11:12'),
(1142, 861, 19, 63, 1, 1, '2022-03-07 04:20:35'),
(1143, 862, 19, 63, 1, 1, '2022-03-07 04:57:21'),
(1144, 863, 19, 63, 1, 1, '2022-03-07 04:58:22'),
(1145, 836, 125, 118, 2, 1, '2022-03-07 05:28:08'),
(1146, 841, 125, 119, 2, 1, '2022-03-07 05:28:16'),
(1147, 840, 125, 119, 2, 1, '2022-03-07 05:28:30'),
(1148, 838, 125, 117, 2, 1, '2022-03-07 05:28:38'),
(1149, 837, 125, 126, 2, 1, '2022-03-07 05:28:44'),
(1150, 858, 61, 130, 2, 1, '2022-03-07 05:51:08'),
(1151, 857, 61, 130, 2, 1, '2022-03-07 05:51:13'),
(1152, 851, 61, 130, 2, 1, '2022-03-07 05:51:19'),
(1153, 849, 61, 130, 2, 1, '2022-03-07 05:51:40'),
(1154, 860, 61, 114, 2, 1, '2022-03-07 05:51:47'),
(1155, 846, 61, 114, 2, 1, '2022-03-07 05:51:52'),
(1156, 835, 25, 37, 2, 1, '2022-03-07 05:51:54'),
(1157, 845, 61, 114, 2, 1, '2022-03-07 05:51:57'),
(1158, 856, 61, 68, 2, 1, '2022-03-07 05:52:07'),
(1159, 703, 25, 119, 2, 1, '2022-03-07 05:52:07'),
(1160, 855, 61, 68, 2, 1, '2022-03-07 05:52:13'),
(1161, 700, 25, 119, 2, 1, '2022-03-07 05:52:14'),
(1162, 854, 61, 68, 2, 1, '2022-03-07 05:52:19'),
(1163, 698, 25, 119, 2, 1, '2022-03-07 05:52:19'),
(1164, 697, 25, 119, 2, 1, '2022-03-07 05:52:24'),
(1165, 853, 61, 68, 2, 1, '2022-03-07 05:52:25'),
(1166, 695, 25, 119, 2, 1, '2022-03-07 05:52:28'),
(1167, 852, 61, 68, 2, 1, '2022-03-07 05:52:31'),
(1168, 694, 25, 119, 2, 1, '2022-03-07 05:52:32'),
(1169, 809, 25, 123, 2, 1, '2022-03-07 05:52:38'),
(1170, 761, 25, 123, 2, 1, '2022-03-07 05:52:42'),
(1171, 716, 25, 123, 2, 1, '2022-03-07 05:52:46'),
(1172, 844, 25, 38, 2, 1, '2022-03-07 05:52:50'),
(1173, 843, 25, 38, 2, 1, '2022-03-07 05:52:53'),
(1174, 754, 25, 38, 2, 1, '2022-03-07 05:52:58'),
(1175, 753, 25, 38, 2, 1, '2022-03-07 05:53:03'),
(1176, 725, 25, 38, 2, 1, '2022-03-07 05:53:07'),
(1177, 724, 25, 38, 2, 1, '2022-03-07 05:53:11'),
(1178, 721, 25, 38, 2, 1, '2022-03-07 05:53:15'),
(1179, 661, 25, 38, 2, 1, '2022-03-07 05:53:19'),
(1180, 498, 25, 38, 2, 1, '2022-03-07 05:53:24'),
(1181, 425, 25, 38, 2, 1, '2022-03-07 05:53:27'),
(1182, 295, 25, 38, 2, 1, '2022-03-07 05:53:32'),
(1183, 225, 25, 38, 2, 1, '2022-03-07 05:53:36'),
(1184, 223, 25, 38, 2, 1, '2022-03-07 05:53:40'),
(1185, 864, 107, 69, 1, 2, '2022-03-07 06:03:03'),
(1186, 865, 107, 69, 1, 2, '2022-03-07 06:05:33'),
(1187, 866, 116, 52, 1, 2, '2022-03-07 07:26:20'),
(1188, 867, 116, 52, 1, 2, '2022-03-07 07:28:21'),
(1189, 868, 116, 52, 1, 2, '2022-03-07 07:29:58'),
(1190, 869, 116, 19, 1, 2, '2022-03-07 07:44:31'),
(1191, 870, 107, 69, 1, 2, '2022-03-07 08:02:47'),
(1192, 871, 107, 69, 1, 2, '2022-03-07 08:05:19'),
(1193, 872, 107, 69, 1, 2, '2022-03-07 08:10:28'),
(1194, 873, 107, 69, 1, 2, '2022-03-07 08:11:35'),
(1195, 874, 107, 69, 1, 2, '2022-03-07 08:12:40'),
(1196, 875, 13, 22, 1, 2, '2022-03-07 08:31:54'),
(1197, 876, 13, 22, 1, 2, '2022-03-07 09:26:11'),
(1198, 877, 65, 61, 1, 2, '2022-03-07 09:39:23'),
(1199, 878, 107, 69, 1, 2, '2022-03-07 09:57:36'),
(1200, 879, 107, 69, 1, 2, '2022-03-07 11:14:30'),
(1201, 810, 69, 123, 2, 1, '2022-03-07 11:17:31'),
(1202, 879, 69, 107, 2, 1, '2022-03-07 11:17:40'),
(1203, 878, 69, 107, 2, 1, '2022-03-07 11:17:45'),
(1204, 874, 69, 107, 2, 1, '2022-03-07 11:17:48'),
(1205, 873, 69, 107, 2, 1, '2022-03-07 11:17:52'),
(1206, 872, 69, 107, 2, 1, '2022-03-07 11:17:57'),
(1207, 871, 69, 107, 2, 1, '2022-03-07 11:18:00'),
(1208, 870, 69, 107, 2, 1, '2022-03-07 11:18:04'),
(1209, 865, 69, 107, 2, 1, '2022-03-07 11:18:11'),
(1210, 864, 69, 107, 2, 1, '2022-03-07 11:18:15'),
(1211, 880, 109, 22, 1, 2, '2022-03-07 11:39:30'),
(1212, 805, 22, 91, 2, 1, '2022-03-07 11:39:39'),
(1213, 881, 52, 22, 1, 2, '2022-03-07 11:39:54'),
(1214, 882, 109, 22, 1, 2, '2022-03-07 11:40:08'),
(1215, 881, 22, 52, 2, 2, '2022-03-07 11:40:20'),
(1216, 804, 22, 91, 2, 1, '2022-03-07 11:40:28'),
(1217, 883, 109, 22, 1, 2, '2022-03-07 11:40:30'),
(1218, 884, 109, 22, 1, 2, '2022-03-07 11:40:45'),
(1219, 801, 22, 103, 2, 1, '2022-03-07 11:40:45'),
(1220, 859, 22, 58, 2, 1, '2022-03-07 11:40:57'),
(1221, 807, 22, 58, 2, 1, '2022-03-07 11:41:07'),
(1222, 540, 52, 54, 2, 1, '2022-03-07 11:41:49'),
(1223, 538, 52, 54, 2, 1, '2022-03-07 11:41:53'),
(1224, 536, 52, 54, 2, 1, '2022-03-07 11:42:01'),
(1225, 394, 52, 54, 2, 1, '2022-03-07 11:42:06'),
(1226, 368, 52, 54, 2, 1, '2022-03-07 11:42:10'),
(1227, 143, 52, 54, 2, 1, '2022-03-07 11:42:14'),
(1228, 142, 52, 54, 2, 1, '2022-03-07 11:42:20'),
(1229, 144, 52, 54, 2, 1, '2022-03-07 11:42:27'),
(1230, 395, 52, 54, 2, 1, '2022-03-07 11:42:31'),
(1231, 396, 52, 54, 2, 1, '2022-03-07 11:42:35'),
(1232, 537, 52, 54, 2, 1, '2022-03-07 11:42:38'),
(1233, 539, 52, 54, 2, 1, '2022-03-07 11:42:46'),
(1234, 868, 52, 116, 2, 1, '2022-03-07 11:50:19'),
(1235, 866, 52, 116, 2, 1, '2022-03-07 11:50:23'),
(1236, 819, 52, 116, 2, 1, '2022-03-07 11:50:28'),
(1237, 885, 58, 22, 1, 1, '2022-03-07 11:50:37'),
(1238, 867, 52, 116, 2, 1, '2022-03-07 11:50:43'),
(1239, 677, 52, 116, 2, 1, '2022-03-07 11:50:47'),
(1240, 689, 52, 116, 2, 1, '2022-03-07 11:50:51'),
(1241, 676, 52, 116, 2, 1, '2022-03-07 11:50:56'),
(1242, 674, 52, 116, 2, 1, '2022-03-07 11:51:01'),
(1243, 673, 52, 116, 2, 1, '2022-03-07 11:51:06'),
(1244, 623, 52, 54, 2, 1, '2022-03-07 11:51:15'),
(1245, 622, 52, 54, 2, 1, '2022-03-07 11:51:19'),
(1246, 575, 52, 54, 2, 1, '2022-03-07 11:51:25'),
(1247, 555, 52, 54, 2, 1, '2022-03-07 11:51:29'),
(1248, 554, 52, 54, 2, 1, '2022-03-07 11:51:34'),
(1249, 886, 101, 52, 1, 2, '2022-03-07 11:51:38'),
(1250, 553, 52, 54, 2, 1, '2022-03-07 11:51:40'),
(1251, 576, 52, 54, 2, 1, '2022-03-07 11:51:45'),
(1252, 552, 52, 54, 2, 1, '2022-03-07 11:51:49'),
(1253, 550, 52, 54, 2, 1, '2022-03-07 11:51:53'),
(1254, 551, 52, 54, 2, 1, '2022-03-07 11:52:12'),
(1255, 887, 54, 52, 1, 2, '2022-03-07 11:52:45'),
(1256, 888, 109, 22, 1, 1, '2022-03-07 11:55:15'),
(1257, 889, 17, 63, 1, 1, '2022-03-07 11:58:11'),
(1258, 890, 54, 52, 1, 1, '2022-03-07 12:02:08'),
(1259, 891, 21, 52, 1, 1, '2022-03-07 12:21:33'),
(1260, 892, 118, 125, 1, 1, '2022-03-07 12:28:58'),
(1261, 893, 126, 125, 1, 1, '2022-03-07 12:32:49'),
(1262, 894, 38, 25, 1, 1, '2022-03-07 13:13:45'),
(1263, 895, 17, 63, 1, 1, '2022-03-07 13:26:46'),
(1264, 896, 16, 63, 1, 1, '2022-03-07 14:00:47'),
(1265, 897, 16, 63, 1, 1, '2022-03-07 14:01:14');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `title`, `permissions`, `deleted`) VALUES
(1, 'Manager', 'a:40:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:5:\"order\";s:0:\"\";s:6:\"client\";s:0:\"\";s:4:\"lead\";s:0:\"\";s:6:\"ticket\";s:0:\"\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:0:\"\";s:23:\"help_and_knowledge_base\";s:0:\"\";s:23:\"can_manage_all_projects\";s:1:\"1\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:24:\"show_assigned_tasks_only\";N;s:37:\"can_update_only_assigned_tasks_status\";N;s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";s:0:\"\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:0:\"\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";N;s:18:\"message_permission\";s:0:\"\";s:27:\"message_permission_specific\";s:0:\"\";}', 0),
(2, 'Metodist', NULL, 1),
(3, 'Bo\'lim boshlig\'i', 'a:44:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:5:\"order\";s:0:\"\";s:6:\"client\";s:0:\"\";s:4:\"lead\";s:0:\"\";s:6:\"ticket\";s:0:\"\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:0:\"\";s:23:\"help_and_knowledge_base\";s:0:\"\";s:23:\"can_manage_all_projects\";s:1:\"1\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:24:\"show_assigned_tasks_only\";N;s:37:\"can_update_only_assigned_tasks_status\";N;s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";s:0:\"\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:0:\"\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";N;s:18:\"message_permission\";s:0:\"\";s:27:\"message_permission_specific\";s:0:\"\";s:18:\"can_indicator_list\";N;s:29:\"can_indicator_add_edit_delete\";N;s:21:\"can_send_reports_view\";N;s:25:\"can_send_reports_approved\";N;}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('accepted_file_formats', 'jpg,jpeg,png,doc,xlsx,txt', 'app', 0),
('allowed_ip_addresses', '', 'app', 0),
('app_title', 'RTM - KPI ', 'app', 0),
('client_can_access_store', '', 'app', 0),
('client_can_add_files', '', 'app', 0),
('client_can_add_project_files', '', 'app', 0),
('client_can_comment_on_files', '', 'app', 0),
('client_can_comment_on_tasks', '', 'app', 0),
('client_can_create_projects', '', 'app', 0),
('client_can_create_tasks', '', 'app', 0),
('client_can_delete_own_files_in_project', '', 'app', 0),
('client_can_edit_projects', '', 'app', 0),
('client_can_edit_tasks', '', 'app', 0),
('client_can_view_activity', '', 'app', 0),
('client_can_view_files', '', 'app', 0),
('client_can_view_gantt', '', 'app', 0),
('client_can_view_milestones', '', 'app', 0),
('client_can_view_overview', '', 'app', 0),
('client_can_view_project_files', '', 'app', 0),
('client_can_view_tasks', '', 'app', 0),
('client_message_own_contacts', '', 'app', 0),
('client_message_users', '', 'app', 0),
('company_address', 'Toshkent', 'app', 0),
('company_email', 'shkhaliloff@gmail.com', 'app', 0),
('company_name', 'RTM', 'app', 0),
('company_phone', '', 'app', 0),
('company_vat_number', '', 'app', 0),
('company_website', '', 'app', 0),
('currency_position', 'left', 'app', 0),
('currency_symbol', 'So\'m', 'app', 0),
('date_format', 'd/m/Y', 'app', 0),
('decimal_separator', '.', 'app', 0),
('default_client_left_menu', '', 'app', 0),
('default_currency', 'UZS', 'app', 0),
('default_left_menu', 'a:15:{i:0;a:1:{s:4:\"name\";s:9:\"dashboard\";}i:1;a:1:{s:4:\"name\";s:8:\"messages\";}i:2;a:4:{s:4:\"name\";s:33:\"Xodim ish faoliyati indikatorlari\";s:3:\"url\";s:1:\"#\";s:4:\"icon\";s:4:\"book\";s:15:\"open_in_new_tab\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:14:\"Metodik ishlar\";s:11:\"is_sub_menu\";s:1:\"1\";s:3:\"url\";s:30:\"/index.php/indicators/parent/2\";s:4:\"icon\";s:4:\"user\";s:15:\"open_in_new_tab\";s:0:\"\";}i:4;a:5:{s:4:\"name\";s:15:\"Ilmiy faoliyati\";s:11:\"is_sub_menu\";s:1:\"1\";s:3:\"url\";s:30:\"/index.php/indicators/parent/3\";s:4:\"icon\";s:8:\"bookmark\";s:15:\"open_in_new_tab\";s:0:\"\";}i:5;a:5:{s:4:\"name\";s:19:\"Shaxsiy fazilatlari\";s:11:\"is_sub_menu\";s:1:\"1\";s:3:\"url\";s:30:\"/index.php/indicators/parent/4\";s:4:\"icon\";s:8:\"bookmark\";s:15:\"open_in_new_tab\";s:0:\"\";}i:6;a:5:{s:4:\"name\";s:48:\"Respublika ta`lim markazi faoliyatiga oid taklif\";s:11:\"is_sub_menu\";s:1:\"1\";s:3:\"url\";s:30:\"/index.php/indicators/parent/5\";s:4:\"icon\";s:8:\"bookmark\";s:15:\"open_in_new_tab\";s:0:\"\";}i:7;a:5:{s:4:\"name\";s:13:\"Kunlik ishlar\";s:11:\"is_sub_menu\";s:1:\"1\";s:3:\"url\";s:30:\"/index.php/indicators/parent/6\";s:4:\"icon\";s:8:\"bookmark\";s:15:\"open_in_new_tab\";s:0:\"\";}i:8;a:4:{s:4:\"name\";s:10:\"Hisobotlar\";s:3:\"url\";s:18:\"/index.php/reports\";s:4:\"icon\";s:9:\"file-text\";s:15:\"open_in_new_tab\";s:0:\"\";}i:9;a:5:{s:4:\"name\";s:9:\"Vazifalar\";s:11:\"is_sub_menu\";s:1:\"1\";s:3:\"url\";s:32:\"/index.php/projects/all_projects\";s:4:\"icon\";s:8:\"bookmark\";s:15:\"open_in_new_tab\";s:0:\"\";}i:10;a:1:{s:4:\"name\";s:8:\"timeline\";}i:11;a:2:{s:4:\"name\";s:10:\"timesheets\";s:11:\"is_sub_menu\";s:1:\"1\";}i:12;a:1:{s:4:\"name\";s:12:\"team_members\";}i:13;a:4:{s:4:\"name\";s:34:\"Tizimdan foydalanish yoʻriqnomasi\";s:3:\"url\";s:22:\"/index.php/instructors\";s:4:\"icon\";s:8:\"bookmark\";s:15:\"open_in_new_tab\";s:0:\"\";}i:14;a:1:{s:4:\"name\";s:8:\"settings\";}}', 'app', 0),
('default_theme_color', '2e4053', 'app', 0),
('disable_access_favorite_project_option_for_clients', '', 'app', 0),
('disable_client_login', '', 'app', 0),
('disable_client_signup', '1', 'app', 0),
('disable_dashboard_customization_by_clients', '', 'app', 0),
('disable_editing_left_menu_by_clients', '', 'app', 0),
('disable_topbar_menu_customization', '', 'app', 0),
('disable_user_invitation_option_by_clients', '', 'app', 0),
('email_sent_from_address', 'shkhaliloff@gmail.com', 'app', 0),
('email_sent_from_name', 'Muhammad', 'app', 0),
('enable_footer', '', 'app', 0),
('enable_google_calendar_api', '', 'app', 0),
('enable_rich_text_editor', '0', 'app', 0),
('favicon', 'a:1:{s:9:\"file_name\";s:30:\"_file6077e8460e4c4-favicon.png\";}', 'app', 0),
('first_day_of_week', '1', 'app', 0),
('footer_copyright_text', '', 'app', 0),
('footer_menus', 'a:0:{}', 'app', 0),
('hidden_client_menus', '', 'app', 0),
('invoice_logo', 'default-invoice-logo.png', 'app', 0),
('item_purchase_code', 'bf176905-3b93-46eb-88fd-449db0b8ac46', 'app', 0),
('language', 'uzbek', 'app', 0),
('module_announcement', '1', 'app', 0),
('module_attendance', '1', 'app', 0),
('module_chat', '1', 'app', 0),
('module_estimate', '', 'app', 0),
('module_estimate_request', '', 'app', 0),
('module_event', '', 'app', 0),
('module_expense', '', 'app', 0),
('module_gantt', '', 'app', 0),
('module_help', '1', 'app', 0),
('module_invoice', '', 'app', 0),
('module_knowledge_base', '1', 'app', 0),
('module_lead', '', 'app', 0),
('module_leave', '', 'app', 0),
('module_message', '1', 'app', 0),
('module_note', '', 'app', 0),
('module_order', '', 'app', 0),
('module_project_timesheet', '', 'app', 0),
('module_ticket', '', 'app', 0),
('module_timeline', '1', 'app', 0),
('module_todo', '', 'app', 0),
('no_of_decimals', '2', 'app', 0),
('project_tab_order_of_clients', 'overview', 'app', 0),
('rows_per_page', '10', 'app', 0),
('rtl', '0', 'app', 0),
('scrollbar', 'jquery', 'app', 0),
('show_background_image_in_signin_page', 'no', 'app', 0),
('show_logo_in_signin_page', 'yes', 'app', 0),
('show_theme_color_changer', 'yes', 'app', 0),
('signin_page_background', 'sigin-background-image.jpg', 'app', 0),
('site_logo', 'a:1:{s:9:\"file_name\";s:32:\"_file6077e81327f53-site-logo.png\";}', 'app', 0),
('task_point_range', '5', 'app', 0),
('time_format', '24_hours', 'app', 0),
('timezone', 'Asia/Tashkent', 'app', 0),
('user__dashboard', '', 'user', 0),
('user_1_dashboard', '', 'user', 0),
('user_1_disable_keyboard_shortcuts', '0', 'user', 0),
('user_1_disable_push_notification', '0', 'user', 0),
('user_1_hidden_topbar_menus', '', 'user', 0),
('user_1_notification_sound_volume', '0', 'user', 0),
('user_1_personal_language', 'uzbek', 'user', 0),
('user_1_recently_meaning', '1_days', 'user', 0),
('user_10_dashboard', '', 'user', 0),
('user_101_dashboard', '', 'user', 0),
('user_101_personal_language', 'uzbek', 'user', 0),
('user_102_dashboard', '', 'user', 0),
('user_103_dashboard', '', 'user', 0),
('user_104_dashboard', '', 'user', 0),
('user_104_personal_language', 'russian', 'user', 0),
('user_105_dashboard', '', 'user', 0),
('user_106_dashboard', '', 'user', 0),
('user_107_dashboard', '', 'user', 0),
('user_107_personal_language', 'uzbek', 'user', 0),
('user_108_dashboard', '', 'user', 0),
('user_109_dashboard', '', 'user', 0),
('user_11_dashboard', '', 'user', 0),
('user_11_personal_language', 'uzbek', 'user', 0),
('user_111_dashboard', '', 'user', 0),
('user_112_dashboard', '', 'user', 0),
('user_112_disable_keyboard_shortcuts', '1', 'user', 0),
('user_112_disable_push_notification', '0', 'user', 0),
('user_112_hidden_topbar_menus', '', 'user', 0),
('user_112_left_menu', '', 'app', 0),
('user_112_notification_sound_volume', '0', 'user', 0),
('user_112_personal_language', 'uzbek', 'user', 0),
('user_112_recently_meaning', '1_days', 'user', 0),
('user_113_dashboard', '', 'user', 0),
('user_114_dashboard', '', 'user', 0),
('user_115_dashboard', '', 'user', 0),
('user_116_dashboard', '', 'user', 0),
('user_117_dashboard', '', 'user', 0),
('user_118_dashboard', '', 'user', 0),
('user_118_personal_language', 'uzbek', 'user', 0),
('user_119_dashboard', '', 'user', 0),
('user_12_dashboard', '', 'user', 0),
('user_12_personal_language', 'uzbek', 'user', 0),
('user_120_dashboard', '', 'user', 0),
('user_121_dashboard', '', 'user', 0),
('user_122_dashboard', '', 'user', 0),
('user_123_dashboard', '', 'user', 0),
('user_125_dashboard', '', 'user', 0),
('user_126_dashboard', '', 'user', 0),
('user_127_dashboard', '', 'user', 0),
('user_127_disable_keyboard_shortcuts', '0', 'user', 0),
('user_127_disable_push_notification', '0', 'user', 0),
('user_127_hidden_topbar_menus', '', 'user', 0),
('user_127_notification_sound_volume', '0', 'user', 0),
('user_127_personal_language', 'uzbek', 'user', 0),
('user_127_recently_meaning', '1_days', 'user', 0),
('user_128_dashboard', '', 'user', 0),
('user_129_dashboard', '', 'user', 0),
('user_13_dashboard', '613', 'user', 0),
('user_13_personal_language', 'uzbek', 'user', 0),
('user_130_dashboard', '', 'user', 0),
('user_14_dashboard', '', 'user', 0),
('user_14_personal_language', 'russian', 'user', 0),
('user_15_dashboard', '456', 'user', 0),
('user_16_dashboard', '', 'user', 0),
('user_16_personal_language', 'uzbek', 'user', 0),
('user_17_dashboard', '', 'user', 0),
('user_17_personal_language', 'uzbek', 'user', 0),
('user_19_dashboard', '', 'user', 0),
('user_19_personal_language', 'uzbek', 'user', 0),
('user_20_dashboard', '', 'user', 0),
('user_21_dashboard', '', 'user', 0),
('user_22_dashboard', '', 'user', 0),
('user_22_personal_language', 'uzbek', 'user', 0),
('user_23_dashboard', '', 'user', 0),
('user_23_personal_language', 'uzbek', 'user', 0),
('user_24_dashboard', '', 'user', 0),
('user_25_dashboard', '', 'user', 0),
('user_25_personal_language', 'uzbek', 'user', 0),
('user_26_dashboard', '256', 'user', 0),
('user_27_dashboard', '', 'user', 0),
('user_27_personal_language', 'uzbek', 'user', 0),
('user_28_dashboard', '476', 'user', 0),
('user_28_personal_language', 'uzbek', 'user', 0),
('user_29_dashboard', '', 'user', 0),
('user_29_personal_language', 'uzbek', 'user', 0),
('user_30_dashboard', '', 'user', 0),
('user_31_dashboard', '', 'user', 0),
('user_31_personal_language', 'uzbek', 'user', 0),
('user_32_dashboard', '', 'user', 0),
('user_33_dashboard', '', 'user', 0),
('user_34_dashboard', '', 'user', 0),
('user_34_personal_language', 'uzbek', 'user', 0),
('user_35_dashboard', '', 'user', 0),
('user_35_personal_language', 'uzbek', 'user', 0),
('user_36_dashboard', '', 'user', 0),
('user_37_dashboard', '', 'user', 0),
('user_38_dashboard', '', 'user', 0),
('user_39_dashboard', '', 'user', 0),
('user_39_personal_language', 'uzbek', 'user', 0),
('user_4_dashboard', '201', 'user', 0),
('user_4_personal_language', 'uzbek', 'user', 0),
('user_40_dashboard', '', 'user', 0),
('user_40_personal_language', 'uzbek', 'user', 0),
('user_41_dashboard', '', 'user', 0),
('user_42_dashboard', '', 'user', 0),
('user_43_dashboard', '', 'user', 0),
('user_43_personal_language', 'uzbek', 'user', 0),
('user_44_dashboard', '', 'user', 0),
('user_45_dashboard', '', 'user', 0),
('user_46_dashboard', '', 'user', 0),
('user_47_dashboard', '', 'user', 0),
('user_48_dashboard', '', 'user', 0),
('user_49_dashboard', '', 'user', 0),
('user_5_dashboard', '', 'user', 0),
('user_5_personal_language', 'uzbek', 'user', 0),
('user_50_dashboard', '', 'user', 0),
('user_50_personal_language', 'uzbek', 'user', 0),
('user_51_dashboard', '658', 'user', 0),
('user_52_dashboard', '', 'user', 0),
('user_52_personal_language', 'uzbek', 'user', 0),
('user_53_dashboard', '71', 'user', 0),
('user_53_personal_language', 'uzbek', 'user', 0),
('user_54_dashboard', '', 'user', 0),
('user_55_dashboard', '', 'user', 0),
('user_55_personal_language', 'uzbek', 'user', 0),
('user_56_dashboard', '', 'user', 0),
('user_57_dashboard', '', 'user', 0),
('user_57_personal_language', 'russian', 'user', 0),
('user_58_dashboard', '', 'user', 0),
('user_58_personal_language', 'uzbek', 'user', 0),
('user_59_dashboard', '', 'user', 0),
('user_6_dashboard', '89', 'user', 0),
('user_6_personal_language', 'uzbek', 'user', 0),
('user_60_dashboard', '', 'user', 0),
('user_60_personal_language', 'uzbek', 'user', 0),
('user_61_dashboard', '', 'user', 0),
('user_61_personal_language', 'uzbek', 'user', 0),
('user_62_dashboard', '', 'user', 0),
('user_62_personal_language', 'uzbek', 'user', 0),
('user_63_dashboard', '', 'user', 0),
('user_63_left_menu', '', 'app', 0),
('user_63_personal_language', 'uzbek', 'user', 0),
('user_64_dashboard', '445', 'user', 0),
('user_65_dashboard', '', 'user', 0),
('user_65_personal_language', 'uzbek', 'user', 0),
('user_66_dashboard', '', 'user', 0),
('user_67_dashboard', '', 'user', 0),
('user_68_dashboard', '', 'user', 0),
('user_68_personal_language', 'uzbek', 'user', 0),
('user_69_dashboard', '', 'user', 0),
('user_7_dashboard', '', 'user', 0),
('user_70_dashboard', '', 'user', 0),
('user_71_dashboard', '', 'user', 0),
('user_72_dashboard', '', 'user', 0),
('user_73_dashboard', '', 'user', 0),
('user_74_dashboard', '', 'user', 0),
('user_75_dashboard', '', 'user', 0),
('user_76_dashboard', '', 'user', 0),
('user_77_dashboard', '', 'user', 0),
('user_8_dashboard', '', 'user', 0),
('user_8_personal_language', 'uzbek', 'user', 0),
('user_81_dashboard', '', 'user', 0),
('user_82_dashboard', '313', 'user', 0),
('user_83_dashboard', '697', 'user', 0),
('user_83_personal_language', 'uzbek', 'user', 0),
('user_84_dashboard', '', 'user', 0),
('user_84_personal_language', 'uzbek', 'user', 0),
('user_85_dashboard', '', 'user', 0),
('user_85_personal_language', 'uzbek', 'user', 0),
('user_88_dashboard', '', 'user', 0),
('user_88_personal_language', 'uzbek', 'user', 0),
('user_9_dashboard', '324', 'user', 0),
('user_90_dashboard', '', 'user', 0),
('user_90_personal_language', 'uzbek', 'user', 0),
('user_91_dashboard', '', 'user', 0),
('user_92_dashboard', '', 'user', 0),
('user_95_dashboard', '', 'user', 0),
('user_96_dashboard', '', 'user', 0),
('user_96_personal_language', 'uzbek', 'user', 0),
('user_97_dashboard', '', 'user', 0),
('user_98_dashboard', '', 'user', 0),
('users_can_input_only_total_hours_instead_of_period', '', 'app', 0),
('users_can_start_multiple_timers_at_a_time', '', 'app', 0),
('verify_email_before_client_signup', '', 'app', 0),
('weekends', '6,0', 'app', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `linkedin` text COLLATE utf8_unicode_ci,
  `googleplus` text COLLATE utf8_unicode_ci,
  `digg` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `pinterest` text COLLATE utf8_unicode_ci,
  `instagram` text COLLATE utf8_unicode_ci,
  `github` text COLLATE utf8_unicode_ci,
  `tumblr` text COLLATE utf8_unicode_ci,
  `vine` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `social_links`
--

INSERT INTO `social_links` (`id`, `user_id`, `facebook`, `twitter`, `linkedin`, `googleplus`, `digg`, `youtube`, `pinterest`, `instagram`, `github`, `tumblr`, `vine`, `deleted`) VALUES
(105, 105, '', '', 'https://www.linkedin.com/in/mansur-siddiqov-74193a21', '', '', '', '', '', '', '', '', 0),
(116, 116, 'https://www.facebook.com/profile.php?id=100013200696151', '', '', '', '', '', '', '', '', '', '', 0),
(118, 118, 'Azizbek Ismailov', '', '', '', '', '', '', '@azizbek_ismailoff', '', '', '', 0),
(127, 127, '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `stripe_ipn`
--

CREATE TABLE `stripe_ipn` (
  `id` int(11) NOT NULL,
  `payment_intent` text COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` text COLLATE utf8_unicode_ci NOT NULL,
  `payment_verification_code` text COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `contact_user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL,
  `milestone_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to` int(11) NOT NULL,
  `deadline` date DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci,
  `points` tinyint(4) NOT NULL DEFAULT '1',
  `status` enum('to_do','in_progress','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `status_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `collaborators` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `recurring_task_id` int(11) NOT NULL DEFAULT '0',
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT '0',
  `created_date` date NOT NULL,
  `blocking` text COLLATE utf8_unicode_ci NOT NULL,
  `blocked_by` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_task_id` int(11) NOT NULL,
  `next_recurring_date` date DEFAULT NULL,
  `reminder_date` date NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `status_changed_at` datetime DEFAULT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `project_id`, `milestone_id`, `assigned_to`, `deadline`, `labels`, `points`, `status`, `status_id`, `start_date`, `collaborators`, `sort`, `recurring`, `repeat_every`, `repeat_type`, `no_of_cycles`, `recurring_task_id`, `no_of_cycles_completed`, `created_date`, `blocking`, `blocked_by`, `parent_task_id`, `next_recurring_date`, `reminder_date`, `ticket_id`, `status_changed_at`, `deleted`) VALUES
(1, 'So\'m', 'gf', 1, 0, 1, '2021-07-13', '', 1, 'to_do', 2, '2021-07-13', '39', 10000000, 0, 0, '', 0, 0, 0, '2021-07-06', '', '', 0, NULL, '0000-00-00', 0, '2021-07-06 15:34:23', 1),
(2, 'So\'m', 'gf', 1, 0, 1, '2021-07-13', '', 1, 'to_do', 3, '2021-07-13', '39', 10000000, 0, 0, '', 0, 0, 0, '2021-07-06', '', '', 0, NULL, '0000-00-00', 0, '2021-07-06 15:34:24', 1),
(3, 'So\'m', 'gf', 1, 0, 1, '2021-07-13', '', 1, 'to_do', 1, '2021-07-13', '39', 0, 0, 0, '', 0, 0, 0, '2021-07-06', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(4, 'Test vazifa', 'Test vazifaTest vazifaTest vazifaTest vazifaTest vazifa', 1, 0, 39, '2021-07-11', '', 5, 'to_do', 1, '2021-07-08', '39,1', 0, 0, 0, '', 0, 0, 0, '2021-07-08', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(5, 'Test vazifa', 'Test vazifaTest vazifaTest vazifaTest vazifaTest vazifa', 1, 0, 39, '2021-07-11', '', 5, 'to_do', 1, '2021-07-08', '39,1', 0, 0, 0, '', 0, 0, 0, '2021-07-08', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(6, 'Test vazifa', 'Test vazifaTest vazifaTest vazifaTest vazifaTest vazifa', 1, 0, 39, '2021-07-11', '', 5, 'to_do', 1, '2021-07-08', '39,1', 0, 0, 0, '', 0, 0, 0, '2021-07-08', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(7, 'Test vazifa', 'Test vazifaTest vazifaTest vazifaTest vazifaTest vazifa', 1, 0, 39, '2021-07-11', '', 5, 'to_do', 1, '2021-07-08', '39,1', 0, 0, 0, '', 0, 0, 0, '2021-07-08', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(8, 'test task', '', 2, 0, 5, '2021-07-21', '', 1, 'to_do', 2, '2021-07-08', '1,5,16', 10100000, 0, 0, '', 0, 0, 0, '2021-07-08', '', '', 0, NULL, '0000-00-00', 0, '2021-07-09 07:22:09', 1),
(9, 'test task', '', 2, 0, 5, '2021-07-21', '', 1, 'to_do', 3, '2021-07-08', '1,5,16', 10300000, 0, 0, '', 0, 0, 0, '2021-07-08', '', '', 0, NULL, '0000-00-00', 0, '2021-07-08 08:45:18', 1),
(10, 'test task', '', 2, 0, 5, '2021-07-21', '', 1, 'to_do', 3, '2021-07-08', '1,5,16', 10400000, 0, 0, '', 0, 0, 0, '2021-07-08', '', '', 0, NULL, '0000-00-00', 0, '2021-07-09 07:22:16', 1),
(11, 'Fayllarni to\'glrang', 'asdasd', 3, 0, 5, '2021-07-13', '', 5, 'to_do', 3, '2021-07-11', '', 10000000, 0, 0, '', 0, 0, 0, '2021-07-09', '', '', 0, NULL, '0000-00-00', 0, '2021-07-09 07:29:43', 1),
(12, 'Test task', 'Test task', 3, 0, 5, '2021-08-04', '', 4, 'to_do', 2, '2021-07-27', '', 10000000, 0, 0, '', 0, 0, 0, '2021-07-09', '', '', 0, NULL, '0000-00-00', 0, '2021-07-09 07:29:31', 1),
(13, 'Test bugun', 'Test bugun', 4, 0, 1, '2021-07-14', '', 1, 'to_do', 3, '2021-07-09', '5', 10000000, 0, 0, '', 0, 0, 0, '2021-07-09', '', '', 0, NULL, '0000-00-00', 0, '2021-07-09 07:43:03', 1),
(14, 'Test bugun 2', 'Test bugun', 4, 0, 5, '2021-07-29', '', 1, 'to_do', 2, '2021-07-15', '5', 10100000, 0, 0, '', 0, 0, 0, '2021-07-09', '', '', 0, NULL, '0000-00-00', 0, '2021-07-09 07:43:00', 1),
(15, 'Test bugun 3', 'Test bugun', 4, 0, 1, '2021-07-29', '', 1, 'to_do', 3, '2021-07-19', '5', 10000000, 0, 0, '', 0, 0, 0, '2021-07-09', '', '', 0, NULL, '0000-00-00', 0, '2021-07-13 04:35:31', 1),
(16, 'Test', 'asdasdasd', 5, 0, 53, '2021-09-17', '', 5, 'to_do', 3, '2021-09-15', '22,76', 10000000, 0, 0, '', 0, 0, 0, '2021-09-15', '', '', 0, NULL, '0000-00-00', 0, '2021-09-15 05:27:54', 1),
(17, 'dasdasd', 'asdasdasdas', 5, 0, 1, '2021-09-17', '', 1, 'to_do', 2, '2021-09-15', '', 10100000, 0, 0, '', 0, 0, 0, '2021-09-15', '', '', 0, NULL, '0000-00-00', 0, '2021-09-15 05:27:41', 1),
(18, 'dasdsa', 'dasdasdas', 5, 0, 0, '2021-09-16', '', 3, 'to_do', 1, '2021-09-15', '', 0, 0, 0, '', 0, 0, 0, '2021-09-15', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(19, 'test 1', 'testy', 6, 0, 11, '2021-09-16', '', 1, 'to_do', 3, '2021-09-15', '60', 10000000, 0, 0, '', 0, 0, 0, '2021-09-15', '', '', 0, NULL, '0000-00-00', 0, '2021-09-15 05:34:57', 1),
(20, 'test 2', 'test', 6, 0, 11, '2021-09-16', '', 3, 'to_do', 3, '2021-09-15', '60', 0, 0, 0, '', 0, 0, 0, '2021-09-15', '', '', 0, NULL, '0000-00-00', 0, '2021-09-16 10:21:45', 1),
(21, 'test', 'test ', 6, 0, 1, '2021-09-16', '', 3, 'to_do', 3, '2021-09-15', '', 0, 0, 0, '', 0, 0, 0, '2021-09-15', '', '', 0, NULL, '0000-00-00', 0, '2021-09-16 10:21:44', 1),
(22, 'best', 'tsadas', 7, 0, 1, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 0, '', 0, 0, 0, '2021-09-15', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(23, 'военный патриотизм', 'k1\r\n\r\n1\r\n1\r\n1', 8, 0, 12, '2021-09-26', '', 1, 'to_do', 1, '2021-09-16', '12', 10000000, 0, 0, '', 0, 0, 0, '2021-09-16', '', '', 0, NULL, '0000-00-00', 0, '2021-10-12 12:33:35', 1),
(24, 'hello', 'hello', 8, 0, 1, NULL, '', 4, 'to_do', 3, NULL, '', 10000000, 0, 0, '', 0, 0, 0, '2021-10-12', '', '', 0, NULL, '0000-00-00', 0, '2021-10-12 12:34:27', 0),
(25, 'hello', 'hello', 8, 0, 1, NULL, '', 1, 'to_do', 2, NULL, '', 10100000, 0, 0, '', 0, 0, 0, '2021-10-12', '', '', 0, NULL, '0000-00-00', 0, '2021-10-12 12:34:22', 1),
(26, 'nazirjon', '', 8, 0, 1, NULL, '', 3, 'to_do', 3, NULL, '', 9999500, 0, 0, '', 0, 0, 0, '2021-10-12', '', '', 0, NULL, '0000-00-00', 0, '2021-10-12 12:35:14', 0),
(27, 'asd', 'dasd', 8, 0, 1, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0, 0, '', 0, 0, 0, '2021-10-19', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(28, 'Darslik', 'darsliklar yaratish', 9, 0, 0, '2021-10-31', '', 5, 'to_do', 1, '2021-10-21', '', 0, 0, 0, '', 0, 0, 0, '2021-10-19', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(29, 'Darslik', 'darsliklar yaratish', 9, 0, 1, '2021-10-31', '', 5, 'to_do', 1, '2021-10-21', '', 0, 0, 0, '', 0, 0, 0, '2021-10-19', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(30, 'Darslik', 'darslik yaratish', 10, 1, 80, '2021-10-31', '', 5, 'to_do', 2, '2021-10-21', '39', 10000000, 0, 0, '', 0, 0, 0, '2021-10-19', '', '', 0, NULL, '0000-00-00', 0, '2021-10-30 08:51:02', 1),
(31, 'qweqweqw', 'qwewqewqe', 9, 0, 1, '2021-10-31', '', 5, 'to_do', 1, '2021-10-21', '', 0, 0, 0, '', 0, 0, 0, '2021-10-19', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(32, 'jhghjghjg', 'hyiouiopupo', 9, 0, 1, '2021-10-31', '', 5, 'to_do', 1, '2021-10-21', '1', 0, 0, 0, '', 0, 0, 0, '2021-10-19', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(33, 'Test loyiha nazri aka qilsin', 'test', 13, 0, 1, NULL, '', 1, 'to_do', 2, NULL, '48,53,6,42,27,19,81,16,44,29,72,75,40,79,78,41,20,45,12,52,4,39,80,11', 10100000, 0, 0, '', 0, 0, 0, '2021-10-22', '', '', 0, NULL, '0000-00-00', 0, '2021-10-30 09:00:46', 1),
(34, 'hey nazir', 'hey nazir', 14, 0, 85, NULL, '', 1, 'to_do', 1, NULL, '86,87,85', 0, 0, 0, '', 0, 0, 0, '2021-10-22', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(35, 'darslik', 'darslik', 9, 0, 0, '2021-10-30', '', 5, 'to_do', 1, '2021-10-23', '', 0, 0, 0, '', 0, 0, 0, '2021-10-22', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(36, 'darslik', 'darslik yaratish', 9, 0, 39, '2021-10-31', '', 5, 'to_do', 1, '2021-10-23', '53', 0, 0, 0, '', 0, 0, 0, '2021-10-22', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(37, 'Ingliz tili darsliklarini yaratish', 'darslik', 11, 0, 1, '2021-10-31', '', 5, 'to_do', 1, '2021-10-24', '1', 0, 0, 0, '', 0, 0, 0, '2021-10-22', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(38, 'ingliz tili darsligini yaratish', 'darslik', 9, 0, 39, '2021-10-31', '', 1, 'to_do', 1, '2021-10-23', '53', 0, 0, 0, '', 0, 0, 0, '2021-10-22', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(39, 'ingliz tili darsligini yaratish', 'darslik', 13, 0, 27, '2021-10-30', '', 5, 'to_do', 1, '2021-10-23', '52,53,48', 10000000, 0, 0, '', 0, 0, 0, '2021-10-22', '', '', 0, NULL, '0000-00-00', 0, '2021-10-30 09:00:46', 1),
(40, 'ingliz tili darsligini yaratish', 'darslik', 13, 0, 27, '2021-10-30', '', 5, 'to_do', 2, '2021-10-23', '52,53,48', 10000000, 0, 0, '', 0, 0, 0, '2021-10-22', '', '', 0, NULL, '0000-00-00', 0, '2021-10-30 09:00:45', 1),
(41, 'darsliki yaratish', '8-sinf tarix 5-paragri', 9, 0, 39, '2021-10-28', '', 5, 'to_do', 1, '2021-10-27', '53,16', 0, 0, 0, '', 0, 0, 0, '2021-10-26', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(42, 'darslik yaratish', '8-sinf ingliz tili darsligi', 9, 0, 39, '2021-11-26', '', 1, 'to_do', 1, '2021-11-02', '53', 0, 0, 0, '', 0, 0, 0, '2021-11-01', '', '', 0, NULL, '0000-00-00', 0, NULL, 1),
(43, 'Testset', 'setsetset', 0, 0, 111, '2022-02-18', '', 1, 'to_do', 0, '2022-02-15', '', 0, 0, 0, '', 0, 0, 0, '2022-02-14', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(44, 'Testsetsetest', 'setsetestestestset', 0, 0, 111, '2022-02-17', '', 1, 'to_do', 0, '2022-02-15', '', 0, 0, 0, '', 0, 0, 0, '2022-02-14', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(45, 'adsadsadasdasd', 'adasdasdsadasd', 0, 0, 111, '2022-02-17', '', 1, 'to_do', 0, '2022-02-15', '', 0, 0, 0, '', 0, 0, 0, '2022-02-14', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(46, 'ewrewrwerewr', 'werwerwerewrwerew', 0, 0, 111, '2022-02-17', '', 1, 'to_do', 0, '2022-02-15', '', 0, 0, 0, '', 0, 0, 0, '2022-02-14', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(47, 'texnik topshiriqlar: 3-sinf  rus tili (rus)', 'texnik topshiriqni metodist mualliflar bilan birga ishlab chiqish, va dasturchilar bilan multimedia yaratish jarayonini nazoratga olish!', 0, 0, 75, '2022-02-18', '', 5, 'to_do', 0, '2022-02-17', '', 0, 0, 0, '', 0, 0, 0, '2022-02-17', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(48, 'texnik topshiriqlar: 3-sinf  rus tili (rus)', 'texnik topshiriqni metodist mualliflar bilan birga ishlab chiqish, va dasturchilar bilan multimedia yaratish jarayonini nazoratga olish!', 0, 0, 75, '2022-02-18', '', 5, 'to_do', 0, '2022-02-17', '', 0, 0, 0, '', 0, 0, 0, '2022-02-17', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(49, 'texnik topshiriqlar: 3-sinf  rus tili (rus)', 'texnik topshiriqni metodist mualliflar bilan birga ishlab chiqish, va dasturchilar bilan multimedia yaratish jarayonini nazoratga olish!', 0, 0, 75, '2022-02-18', '', 5, 'to_do', 0, '2022-02-17', '', 0, 0, 0, '', 0, 0, 0, '2022-02-17', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(50, 'Тарихдан номоз бериш', ' мАЛАКАЛИ МУТАХАССИСЛАРНИ БЕРИШ', 0, 0, 65, '2022-02-25', '', 2, 'to_do', 0, NULL, '', 0, 0, 0, '', 0, 0, 0, '2022-02-21', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(51, '3-sinf Texnik topshirig\'i', 'Rus tili 3-sinf texnik topshirig\'ini tayyorlash', 0, 0, 75, '2022-02-28', '', 5, 'to_do', 0, '2022-02-25', '', 0, 0, 0, '', 0, 0, 0, '2022-02-24', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(52, 'Ingliz tili', 'darslik', 0, 0, 111, '2022-02-28', '', 1, 'to_do', 0, '2022-02-26', '', 0, 0, 0, '', 0, 0, 0, '2022-02-25', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(53, 'Darslik yaratish', '10-11 sinh huquq darsligi', 0, 0, 62, '2022-03-06', '', 3, 'to_do', 0, '2022-02-28', '', 0, 0, 0, '', 0, 0, 0, '2022-02-26', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(54, 'darslik', 'darslik yaratish', 0, 0, 62, '2022-03-06', '', 3, 'to_do', 0, '2022-02-28', '', 0, 0, 0, '', 0, 0, 0, '2022-02-26', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(55, 'ghghg', 'uyuyuy', 0, 0, 62, '2022-03-06', '', 3, 'to_do', 0, '2022-02-28', '', 0, 0, 0, '', 0, 0, 0, '2022-02-26', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(56, 'ghghg', 'uyuyuy', 0, 0, 62, '2022-03-06', '', 3, 'to_do', 0, '2022-02-28', '', 0, 0, 0, '', 0, 0, 0, '2022-02-26', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(57, 'Darslik', 'darslik', 0, 0, 62, '2022-03-07', '', 1, 'to_do', 0, '2022-02-28', '', 0, 0, 0, '', 0, 0, 0, '2022-02-27', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(58, 'darslik', 'darslik', 0, 0, 62, '2022-03-07', '', 1, 'to_do', 0, '2022-02-28', '', 0, 0, 0, '', 0, 0, 0, '2022-02-27', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(59, 'darslik', 'darslik', 0, 0, 62, '2022-03-07', '', 3, 'to_do', 0, '2022-02-28', '', 0, 0, 0, '', 0, 0, 0, '2022-02-28', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(60, 'Fluyid art montaji tugatish', 'darslik uchun master klass', 0, 0, 73, '2022-03-02', '', 5, 'to_do', 0, '2022-03-01', '', 0, 0, 0, '', 0, 0, 0, '2022-03-01', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(61, 'rus tili darsligi ', 'Media mashsulotlar uchun audiolarni yozish va montaji', 0, 0, 72, '2022-03-03', '', 5, 'to_do', 0, '2022-03-01', '', 0, 0, 0, '', 0, 0, 0, '2022-03-01', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(62, '3-sinf texnik topshiriqlar ', 'topshiriqlqrni tekshirib bugalteriyaga yuborish', 0, 0, 107, '2022-03-04', '', 5, 'to_do', 0, '2022-03-01', '', 0, 0, 0, '', 0, 0, 0, '2022-03-01', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(63, 'montaj', 'tasviriiy sanat darsligi uchun video', 0, 0, 118, '2022-03-03', '', 5, 'to_do', 0, '2022-03-01', '', 0, 0, 0, '', 0, 0, 0, '2022-03-01', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(64, 'montaj', 'tasviriiy sanat darsligi uchun video', 0, 0, 118, '2022-03-03', '', 5, 'to_do', 0, '2022-03-01', '', 0, 0, 0, '', 0, 0, 0, '2022-03-01', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(65, 'Чиқувчи хат', 'Нашриётларга (6 та)   дарсликлар рўйҳати ва асосномалар учун хат тайёрлаш', 0, 0, 60, '2022-03-03', '', 5, 'to_do', 0, '2022-03-03', '', 0, 0, 0, '', 0, 0, 0, '2022-03-03', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(66, 'Чиқувчи хат', 'Нашриётларга (6 та)   дарсликлар рўйҳати ва асосномалар учун хат тайёрлаш', 0, 0, 60, '2022-03-03', '', 5, 'to_do', 0, '2022-03-03', '', 0, 0, 0, '', 0, 0, 0, '2022-03-03', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(67, 'Имтихон материалини тайёрлаш', 'Кар ва заиф эшитувчи болалар таълим муасасаларининг 9-синфи учун 3 та вариантда баёнлар тўпламини тайёрлаш', 0, 0, 92, '2022-03-04', '', 5, 'to_do', 0, '2022-03-03', '', 0, 0, 0, '', 0, 0, 0, '2022-03-03', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(68, 'Хат тайёрлаш', '6та масъул нашириётларга хат тайёрлаш, бунда уларга дарсликлар рўёҳати нашриётлар кесимида ва асосномаларни тақдим этиш', 0, 0, 0, '2022-03-03', '', 5, 'to_do', 0, '2022-03-03', '', 0, 0, 0, '', 0, 0, 0, '2022-03-03', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(69, 'Чиқувчи хат', 'ХТВнинг 2022-йил 26-февралдаги   06-06/2-651-сонли хатига жавоб хатини тайёрлаш', 0, 0, 60, NULL, '', 5, 'to_do', 0, NULL, '', 0, 0, 0, '', 0, 0, 0, '2022-03-04', '', '', 0, NULL, '0000-00-00', 0, NULL, 0),
(70, '11-12-синфлар учун Она тили фанидан имтихон билетлари ', 'кар ва заиф эшитувчи болалар таълим муассасаларининг 11-12-синфлари  учун Она тила фанидан имтихон билетларини тайёрлаш', 0, 0, 92, '2022-03-05', '', 1, 'to_do', 0, '2022-03-04', '', 0, 0, 0, '', 0, 0, 0, '2022-03-04', '', '', 0, NULL, '0000-00-00', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `task_status`
--

CREATE TABLE `task_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `task_status`
--

INSERT INTO `task_status` (`id`, `title`, `key_name`, `color`, `sort`, `deleted`) VALUES
(1, 'To Do', 'to_do', '#F9A52D', 0, 0),
(2, 'In progress', 'in_progress', '#1672B9', 1, 0),
(3, 'Done', 'done', '#00B393', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percentage` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `deleted`) VALUES
(1, 'Tax (10%)', 10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `members` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`id`, `title`, `members`, `deleted`) VALUES
(1, 'technology', '3', 1),
(2, 'Mamuriyat', '4,3', 1),
(3, 'Mamuriyat', '5,6,8,9,11,10', 0),
(4, ' Ijro intizomi, jismoniy va yuridik shaxslarning murojaatlari bilan ishlash bo‘limi', '16,17,63', 0),
(5, 'Matbuot xizmati', '18', 0),
(6, ' Xalqaro aloqalar bo‘limi', '19,23,24', 0),
(7, 'Filologiya va chet tillarni o‘qitishni rivojlantirish bo‘limi', '25,26,27,28,29,30,31,32,33,34,35,36,37,38', 0),
(8, 'Darslikni yaratish texnologiyalarini rivojlantirish bo‘limi', '39,40,41,42,43,44,45,46,47,48,49,81,82,83', 0),
(9, 'Maxsus pedagogika bo‘limi', '50,51', 0),
(10, 'Aniq va tabiiy fanlar bo‘limi', '52,53,54,55,20,21', 0),
(11, 'Standart va baholash bo‘limi', '22,13,14,15,4,56,57,58,59,60', 0),
(12, 'Shaxsni tarbiyalash va ijodiy ko‘nikmalarni rivojlantirish bo‘limi', '61,62,63,64,65,66,67,68', 0),
(13, 'Ta\'limda raqamli resurslarni joriy etish bo‘limi', '69,70,71,72,73,74,75', 0),
(14, ' Moliya va buxgalteriya bo‘limi', '76,77,78', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `team_member_job_info`
--

CREATE TABLE `team_member_job_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_hire` date DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `salary` double NOT NULL DEFAULT '0',
  `salary_term` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `team_member_job_info`
--

INSERT INTO `team_member_job_info` (`id`, `user_id`, `date_of_hire`, `deleted`, `salary`, `salary_term`) VALUES
(1, 2, '2021-04-22', 0, 100, '1000'),
(2, 3, '2021-04-26', 0, 0, 'Marketing'),
(3, 4, '2021-07-02', 0, 1000, ''),
(4, 5, '0000-00-00', 0, 0, ''),
(5, 6, '0000-00-00', 0, 0, ''),
(6, 7, '0000-00-00', 0, 0, ''),
(7, 8, '0000-00-00', 0, 0, ''),
(8, 9, '0000-00-00', 0, 0, ''),
(9, 10, '0000-00-00', 0, 0, ''),
(10, 11, '0000-00-00', 0, 0, ''),
(11, 12, '0000-00-00', 0, 0, ''),
(12, 13, '0000-00-00', 0, 0, ''),
(13, 14, '0000-00-00', 0, 0, ''),
(14, 15, '0000-00-00', 0, 0, ''),
(15, 16, '0000-00-00', 0, 0, ''),
(16, 17, '0000-00-00', 0, 0, ''),
(17, 18, '0000-00-00', 0, 0, ''),
(18, 19, '0000-00-00', 0, 0, ''),
(19, 20, '0000-00-00', 0, 0, ''),
(20, 21, '0000-00-00', 0, 0, ''),
(21, 22, '0000-00-00', 0, 0, ''),
(22, 23, '0000-00-00', 0, 0, ''),
(23, 24, '0000-00-00', 0, 0, ''),
(24, 25, '0000-00-00', 0, 0, ''),
(25, 26, '0000-00-00', 0, 0, ''),
(26, 27, '0000-00-00', 0, 0, ''),
(27, 28, '0000-00-00', 0, 0, ''),
(28, 29, '0000-00-00', 0, 0, ''),
(29, 30, '0000-00-00', 0, 0, ''),
(30, 31, '0000-00-00', 0, 0, ''),
(31, 32, '0000-00-00', 0, 0, ''),
(32, 33, '0000-00-00', 0, 0, ''),
(33, 34, '0000-00-00', 0, 0, ''),
(34, 35, '0000-00-00', 0, 0, ''),
(35, 36, '0000-00-00', 0, 0, ''),
(36, 37, '0000-00-00', 0, 0, ''),
(37, 38, '0000-00-00', 0, 0, ''),
(38, 39, '0000-00-00', 0, 0, ''),
(39, 40, '0000-00-00', 0, 0, ''),
(40, 41, '0000-00-00', 0, 0, ''),
(41, 42, '0000-00-00', 0, 0, ''),
(42, 43, '0000-00-00', 0, 0, ''),
(43, 44, '0000-00-00', 0, 0, ''),
(44, 45, '0000-00-00', 0, 0, ''),
(45, 46, '0000-00-00', 0, 0, ''),
(46, 47, '0000-00-00', 0, 0, ''),
(47, 48, '0000-00-00', 0, 0, ''),
(48, 49, '0000-00-00', 0, 0, ''),
(49, 50, '0000-00-00', 0, 0, ''),
(50, 51, '0000-00-00', 0, 0, ''),
(51, 52, '0000-00-00', 0, 0, ''),
(52, 53, '0000-00-00', 0, 0, ''),
(53, 54, '0000-00-00', 0, 0, ''),
(54, 55, '0000-00-00', 0, 0, ''),
(55, 56, '0000-00-00', 0, 0, ''),
(56, 57, '0000-00-00', 0, 0, ''),
(57, 58, '0000-00-00', 0, 0, ''),
(58, 59, '0000-00-00', 0, 0, ''),
(59, 60, '0000-00-00', 0, 0, ''),
(60, 61, '0000-00-00', 0, 0, ''),
(61, 62, '0000-00-00', 0, 0, ''),
(62, 63, '0000-00-00', 0, 0, ''),
(63, 64, '0000-00-00', 0, 0, ''),
(64, 65, '0000-00-00', 0, 0, ''),
(65, 66, '0000-00-00', 0, 0, ''),
(66, 67, '0000-00-00', 0, 0, ''),
(67, 68, '0000-00-00', 0, 0, ''),
(68, 69, '0000-00-00', 0, 0, ''),
(69, 70, '0000-00-00', 0, 0, ''),
(70, 71, '0000-00-00', 0, 0, ''),
(71, 72, '0000-00-00', 0, 0, ''),
(72, 73, '0000-00-00', 0, 0, ''),
(73, 74, '0000-00-00', 0, 0, ''),
(74, 75, '0000-00-00', 0, 0, ''),
(75, 76, '0000-00-00', 0, 0, ''),
(76, 77, '0000-00-00', 0, 0, ''),
(77, 78, '0000-00-00', 0, 0, ''),
(78, 79, '0000-00-00', 0, 0, ''),
(79, 80, '0000-00-00', 0, 0, ''),
(80, 81, '0000-00-00', 0, 0, ''),
(81, 82, '0000-00-00', 0, 0, ''),
(82, 83, '0000-00-00', 0, 0, ''),
(83, 84, '0000-00-00', 0, 0, ''),
(84, 85, '2021-10-21', 0, 10, '24 oy'),
(85, 86, '2021-10-21', 0, 10, '24 oy'),
(86, 87, '2021-10-21', 0, 10, '24 oy'),
(87, 88, '2021-12-25', 0, 0, ''),
(88, 89, '2021-12-21', 0, 0, ''),
(89, 90, '2021-12-23', 0, 0, ''),
(90, 91, '2021-12-23', 0, 0, ''),
(91, 92, '2021-12-23', 0, 0, ''),
(92, 93, '2021-12-23', 0, 0, ''),
(93, 94, '2021-12-27', 0, 0, ''),
(94, 95, '2021-12-23', 0, 0, ''),
(95, 96, '2021-12-27', 0, 0, ''),
(96, 97, '2021-12-28', 0, 0, ''),
(97, 98, '2021-12-28', 0, 0, ''),
(98, 99, '2021-12-15', 0, 0, ''),
(99, 100, '2021-12-28', 0, 0, ''),
(100, 101, '0000-00-00', 0, 0, ''),
(101, 102, '0000-00-00', 0, 0, ''),
(102, 103, '0000-00-00', 0, 0, ''),
(103, 104, '2021-12-23', 0, 0, ''),
(104, 105, '2021-12-21', 0, 310000, ''),
(105, 106, '0000-00-00', 0, 310000, ''),
(106, 107, '0000-00-00', 0, 310000, ''),
(107, 108, '0000-00-00', 0, 310000, ''),
(108, 109, '0000-00-00', 0, 310000, ''),
(109, 110, '0000-00-00', 0, 0, ''),
(110, 111, '0000-00-00', 0, 0, ''),
(111, 112, '0000-00-00', 0, 310000, ''),
(112, 113, '0000-00-00', 0, 310000, ''),
(113, 114, '0000-00-00', 0, 310000, ''),
(114, 115, '0000-00-00', 0, 310000, ''),
(115, 116, '0000-00-00', 0, 310000, ''),
(116, 117, '0000-00-00', 0, 310000, ''),
(117, 118, '0000-00-00', 0, 310000, ''),
(118, 119, '0000-00-00', 0, 310000, ''),
(119, 120, '0000-00-00', 0, 0, ''),
(120, 121, '0000-00-00', 0, 0, ''),
(121, 122, '0000-00-00', 0, 310000, ''),
(122, 123, '0000-00-00', 0, 310000, ''),
(123, 124, '0000-00-00', 0, 0, ''),
(124, 125, '0000-00-00', 0, 0, ''),
(125, 126, '0000-00-00', 0, 310000, ''),
(126, 127, '0000-00-00', 0, 310000, ''),
(127, 128, '0000-00-00', 0, 0, ''),
(128, 129, '0000-00-00', 0, 0, ''),
(129, 130, '0000-00-00', 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `ticket_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `requested_by` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `status` enum('new','client_replied','open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `last_activity_at` datetime DEFAULT NULL,
  `assigned_to` int(11) NOT NULL DEFAULT '0',
  `creator_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creator_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `labels` text COLLATE utf8_unicode_ci,
  `task_id` int(11) NOT NULL,
  `closed_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`id`, `client_id`, `project_id`, `ticket_type_id`, `title`, `created_by`, `requested_by`, `created_at`, `status`, `last_activity_at`, `assigned_to`, `creator_name`, `creator_email`, `labels`, `task_id`, `closed_at`, `deleted`) VALUES
(1, 1, 0, 1, 'a', 1, 0, '2021-10-09 10:34:36', 'new', '2021-10-09 10:34:36', 46, '', '', '', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_comments`
--

CREATE TABLE `ticket_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ticket_comments`
--

INSERT INTO `ticket_comments` (`id`, `created_by`, `created_at`, `description`, `ticket_id`, `files`, `deleted`) VALUES
(1, 1, '2021-10-09 10:34:36', 'a', 1, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_templates`
--

CREATE TABLE `ticket_templates` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_type_id` int(11) NOT NULL,
  `private` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_types`
--

CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ticket_types`
--

INSERT INTO `ticket_types` (`id`, `title`, `deleted`) VALUES
(1, 'General Support', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `to_do`
--

CREATE TABLE `to_do` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `labels` text COLLATE utf8_unicode_ci,
  `status` enum('to_do','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `start_date` date DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `to_do`
--

INSERT INTO `to_do` (`id`, `created_by`, `created_at`, `title`, `description`, `labels`, `status`, `start_date`, `deleted`) VALUES
(1, 5, '2021-09-16 04:55:46', 'докторант', '12345', '', 'to_do', '2021-09-17', 0),
(2, 5, '2021-09-16 05:04:00', 'fgjfjb', 'b nm123', '', 'to_do', '2021-09-17', 0),
(3, 1, '2021-09-16 10:01:12', 'asdsdsdlaoyih ishlang', 'ssdffdfdf', '', 'done', '2021-09-17', 1),
(4, 1, '2021-10-17 12:02:10', 'Akmal ga vazifa: Barcha darsliklarni monitoringa tayyorlash!', '', '', 'done', '2021-10-29', 0),
(5, 1, '2021-11-01 18:15:34', 'Test', '', '', 'done', NULL, 1),
(6, 63, '2021-11-24 14:14:14', 'dfdfdf', 'dfdfdfdf', '', 'done', NULL, 1),
(7, 63, '2021-12-15 12:31:36', 'Test', 'test', '', 'done', '2021-12-16', 1),
(8, 53, '2022-01-10 03:58:13', 'Matematika metodisti', 'Aka qandaysiz ishlayapsizmi?\r\n', '', 'to_do', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('staff','client','lead') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `message_checked_at` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `notification_checked_at` datetime DEFAULT NULL,
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT '0',
  `job_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `disable_login` tinyint(1) NOT NULL DEFAULT '0',
  `note` mediumtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `alternative_address` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ssn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci DEFAULT NULL,
  `sticky_note` mediumtext COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `enable_web_notification` tinyint(1) NOT NULL DEFAULT '1',
  `enable_email_notification` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `last_online` datetime DEFAULT NULL,
  `requested_account_removal` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_type`, `is_admin`, `role_id`, `email`, `password`, `image`, `status`, `message_checked_at`, `client_id`, `notification_checked_at`, `is_primary_contact`, `job_title`, `disable_login`, `note`, `address`, `alternative_address`, `phone`, `alternative_phone`, `dob`, `ssn`, `gender`, `sticky_note`, `skype`, `enable_web_notification`, `enable_email_notification`, `created_at`, `last_online`, `requested_account_removal`, `deleted`) VALUES
(1, 'Nigora ', 'Usarova', 'staff', 1, 0, 'shkhaliloff@gmail.com', '$2y$10$FjydPwhSjxRyZAbUvVGjBeoG0ml2OFIl76qBj6Fm5dFjoz.c6IYYS', 'a:1:{s:9:\"file_name\";s:29:\"_file61d67306949ba-avatar.png\";}', 'active', '2022-02-02 04:58:49', 0, '2022-02-02 04:48:29', 0, 'Admin', 0, NULL, '', '', '', '', '0000-00-00', '', 'female', 'кУЛОЛЧИЛИК МАВЗУЛАРИ БОР СИНФЛАРНИ ТОПИШ', '', 1, 1, '2021-04-15 11:58:17', '2022-02-02 07:31:42', 0, 1),
(2, 'Islom', 'Kuchkarov', 'staff', 0, 0, 'shokha@gmail.com', '$2y$10$0Gtb0NlgzJER7ugHTkxTCO/o4R2yK4g4pV3IHLv6m6FCd7I93YBWa', NULL, 'active', NULL, 0, NULL, 0, 'IT', 0, NULL, 'Toshkent', NULL, '+998999890902', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-04-15 07:23:57', NULL, 0, 1),
(3, 'Muhammad', 'Xalil', 'staff', 0, 0, 'shohruhxalil@gmail.com', '$2y$10$u.gsprUDym5Xjnannbkga.6zbia9u3h4I6d27JV3W75WYCCWxIvkC', NULL, 'inactive', NULL, 0, NULL, 0, 'Marketing', 1, NULL, 'Olmazor street, 72A', NULL, '+998999890902', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-04-26 10:18:40', NULL, 0, 0),
(4, ' Shovxiddin ', 'Ishmurodov', 'staff', 0, 0, 'Shovxiddin@gmail.com', '$2y$10$LBTaoUwS.mXk8eIC9WFSFeflx/IFPFvAISP.ai69MRDRwmDsprftW', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2021-07-02 14:37:05', '2021-10-19 07:03:44', 0, 0),
(5, 'Shuxrat', 'Sattorov', 'staff', 1, 0, 'Shuhrat@gmail.com', '$2y$10$npzryPn1vYF1TdnIz39LoO0L7/cx.0U6kRdR4b4wEsr6teZZllNLC', NULL, 'active', '2021-09-17 06:49:53', 0, '2021-09-17 06:41:29', 0, 'Direktor', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', 'Bugun soat 17da uchrashuv\neslatma bugun uchun sdasdjas;d\nqaleysiz \n\n', '', 1, 1, '2021-07-02 17:02:25', '2021-10-19 09:22:02', 0, 0),
(6, ' Azizbek ', 'Ortiqov ', 'staff', 1, 0, 'Azizbek@gmail.com', '$2y$10$k8HrR2TSMvxwmd2Wh0FDXeL01PKno2ov.o5ulT/aOy8/N8ZGNwlAK', NULL, 'inactive', '2021-10-22 10:46:03', 0, '2021-10-22 10:45:29', 0, 'Direktorning birinchi o‘rinbosari', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-02 17:09:30', '2021-10-22 11:17:46', 0, 1),
(7, 'Azizbek', 'Ortiqov', 'staff', 1, 0, 'azizbek85004@gmail.com', '$2y$10$Vdtb.vLKDDIuWPa2rs/qFOlt5VDv3rTXGwNM2afRfAr8nvm6FHsHy', NULL, 'active', NULL, 0, NULL, 0, 'Direktorning birinchi o‘rinbosari', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-02 17:12:32', '2022-03-02 09:32:32', 0, 0),
(8, 'Mehriniso', 'Pardayeva ', 'staff', 1, 0, 'Mexriniso@gmail.com', '$2y$10$bDHfjp/luLWzbXwIpbwCU.PzBW1n2a6LNNI8kEDpRPjVmHBfwHw2K', NULL, 'inactive', NULL, 0, NULL, 0, 'Direktor o‘rinbosari', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-02 17:15:04', '2021-12-24 14:25:48', 0, 1),
(9, 'Dilshod', 'Muxitdinov ', 'staff', 1, 0, 'Dilshod@gmail.com', '$2y$10$Oc/mySiHjQBKFG43aVncLewoq6YUMz6YF1Ss7WRKeDRJ86uEnHGMy', NULL, 'active', NULL, 0, NULL, 0, 'Moliya masalalari bo‘yicha direktor o‘rinbosari', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-02 17:16:50', '2021-10-19 07:50:03', 0, 0),
(10, 'Dilshodbek', 'Toshpo‘latov ', 'staff', 1, 0, 'Dilshod1@gmail.com', '$2y$10$OxH3sWmv0xNavTmOaSJu3.nChPPeyHaweMqlx6YrvXUQVVPW2sYQS', NULL, 'active', NULL, 0, NULL, 0, 'Yuristkonsult', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-02 17:17:48', '2021-10-19 07:53:39', 0, 0),
(11, ' Surayyo ', 'Xushboqova', 'staff', 1, 0, 'Surayyo@gmail.com', '$2y$10$TLpvvYAUc7qsi6i3z5U2XelalZA7tAW1vjsfSkj22X9uyjmRLpagm', NULL, 'active', '2021-10-18 14:13:40', 0, '2021-11-24 14:47:44', 0, 'Kadrlar bo‘yicha bosh mutaxassis', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-02 17:19:34', '2021-11-24 14:58:50', 0, 0),
(12, ' Shaxnoza ', 'Raxmatullayeva', 'staff', 1, 0, 'Shaxnoza@gmail.com', '$2y$10$G698GHHMhhkMd/h4AHy0FuNeYZzou//EBHKS1oCnpqSHim7BDtrsO', NULL, 'inactive', '2021-09-16 04:59:19', 0, '2021-09-17 06:11:47', 0, 'Bo‘lim boshlig‘i', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-02 17:23:47', '2021-10-19 07:00:56', 0, 0),
(13, 'Sanobar', ' Xoshimova ', 'staff', 0, 0, 's.xoshimova1872@mail.ru', '$2y$10$SBMfjYsxpwavbcmz6mv9fuJNW7sYNmvDL8g8jItHwazHL7lAn0aKO', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2bf8c8ad54-avatar.png\";}', 'active', '2022-01-08 05:17:05', 0, NULL, 0, 'Metodist', 0, NULL, '', '', '', '', '0000-00-00', '', 'female', NULL, '', 1, 1, '2021-07-02 17:25:20', '2022-03-07 09:26:12', 0, 0),
(14, 'Sherzod ', 'Karimov ', 'staff', 0, 0, 'karimovsh1988@gmail.com', '$2y$10$A5PLDk0sNU99GaQqL4Gvg.067OH0lVdiwOjOSXHU8CsIomg36p2Va', 'a:1:{s:9:\"file_name\";s:29:\"_file61fa1230efbae-avatar.png\";}', 'active', '2022-02-25 11:25:03', 0, '2022-02-25 11:24:31', 0, 'Metodist', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2021-07-02 17:26:10', '2022-03-04 11:57:38', 0, 0),
(15, 'Gulnoz ', 'Xodjayeva ', 'staff', 0, 0, 'xojayevagulnoz02@gmail.com', '$2y$10$HnezgzvsF97WNMOzZNCraOPaU/uTj9WtW.14SEI/AzwmI7H/.qwV6', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', '', '', '', '0000-00-00', '', 'female', NULL, '', 1, 1, '2021-07-02 17:26:32', '2021-10-19 08:23:48', 0, 1),
(16, ' Abduraxim', 'Nomozov', 'staff', 0, 0, 'Abduraxim@gmail.com', '$2y$10$74KB7WRno7nPufbX8sgJ5u.OcPA2eqd17/3Pb8fPZ5osIfwWtLMVW', NULL, 'active', '2022-03-07 13:58:02', 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-02 17:27:54', '2022-03-07 14:01:48', 0, 0),
(17, 'Muyassar ', 'Djamoldinova ', 'staff', 0, 0, 'Muyassar@gmail.com', '$2y$10$s6ol1GVKo3kq7nJMZ7ilFejD/ymYWmfSFrjRmKS6qQps/5detxeom', 'a:1:{s:9:\"file_name\";s:29:\"_file62147deea3dd6-avatar.png\";}', 'active', '2022-02-03 06:45:47', 0, '2022-02-03 06:45:51', 0, 'Metodist', 0, NULL, 'muyassarjamol@mail.ru', '', '+998908082726', '+998946652779', '0000-00-00', '', 'female', NULL, '', 1, 1, '2021-07-02 17:28:38', '2022-03-07 13:26:46', 0, 0),
(18, 'Moxira', 'Nurullayeva ', 'staff', 1, 0, 'mohiranurullayeva2@gmail.com', '$2y$10$gwekljUgJKCUCXko5iAJneYqOpZvzUTiqQpJUG0mTD.DDshX4fqlG', NULL, 'inactive', NULL, 0, NULL, 0, 'Bo‘lim boshlig‘i', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-03 06:04:57', NULL, 0, 1),
(19, ' Javlonbek', 'Meliboyev', 'staff', 1, 0, 'javlonbek@gmail.com', '$2y$10$ZGcv/QIxAEhmqJgSmd8gbeVXbYXeQdgUYDXtPeocQZ5FhEFB.qsee', 'a:1:{s:9:\"file_name\";s:29:\"_file61f7d2a38fcbf-avatar.png\";}', 'active', '2022-03-05 09:04:30', 0, '2022-03-05 09:04:28', 0, 'Bo‘lim boshlig‘i', 0, NULL, 'javlonbekmeliboyev@gmail.com', '', '+998932500193', '', '1993-01-01', '', 'male', NULL, '', 1, 1, '2021-07-03 06:06:45', '2022-03-07 13:11:29', 0, 0),
(20, ' Yo‘ldoshali ', 'Ravshanov', 'staff', 1, 0, 'rur19900522@gmail.com', '$2y$10$8t5Z3qsyWP.sCHn46hZlfe3CtwXKndWY8dLDpldHwN0eXuotDn5yu', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2bcda2cd03-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'Xalqaro aloqalar bo‘limi', 0, NULL, '', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2021-07-03 06:07:02', '2021-10-19 07:15:25', 0, 1),
(21, 'Mayram', 'Xojiyeva ', 'staff', 0, 0, 'hojiyevamayram@gmail.com', '$2y$10$zrSnCg8V46eElUIYX65wbu.CRkBoRxaJrY1sd4nt0382TZca2MnEy', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2bd9e45bbc-avatar.png\";}', 'active', '2022-03-05 05:15:24', 0, '2022-02-25 05:09:38', 0, 'Xalqaro aloqalar bo‘limi', 0, NULL, '', '', '', '', '0000-00-00', '', 'female', NULL, '', 1, 1, '2021-07-03 06:07:15', '2022-03-07 13:04:15', 0, 0),
(22, 'Feruza', 'Olimova ', 'staff', 1, 0, 'olimova-1971@mail.ru', '$2y$10$5/0YJ93By2h6fCuVhcSOVu56mjdmGfQulyf8HNcq/7FIgxxra5RZm', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2bed5a77e0-avatar.png\";}', 'active', '2022-02-15 13:56:55', 0, NULL, 0, 'Bo‘lim boshlig‘i', 0, NULL, '', '', '', '', '0000-00-00', '', 'female', NULL, '', 1, 1, '2021-07-03 06:07:45', '2022-03-07 11:51:17', 0, 0),
(23, 'Sabrina', 'Baxtiyorova ', 'staff', 0, 0, 'sabrinabakhtiyorova@gmail.com', '$2y$10$LrdL6T1oyoTIcihB808tgezQMhGoLO6OiF8vaReiIdds3buoVmjyK', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-03 06:09:42', '2022-03-02 05:16:17', 0, 0),
(24, 'Shahboz', 'Jo‘rayev ', 'staff', 0, 0, 'shakhbozjuraev17@gmail.com', '$2y$10$qrSkblUQnoUTDZ4BeRgbIul0RJa9XrcOMggixFqxgD9kvqmfCopWq', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 06:12:00', '2022-01-03 07:16:42', 0, 0),
(25, 'Barnoxon ', 'Tursunaliyeva ', 'staff', 1, 0, 'barnotursunaliyeva77@gmail.com', '$2y$10$TDwOAKiH6Ia39F1oLWBlx.WvWlWKVn4K.S2PvVEfPv7TxuJx14smK', 'a:1:{s:9:\"file_name\";s:29:\"_file60e004e1c8313-avatar.png\";}', 'active', '2022-02-02 11:45:07', 0, '2021-12-17 13:19:39', 0, 'Bo‘lim boshlig‘i', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', '', NULL, 1, 1, '2021-07-03 06:32:33', '2022-03-07 05:54:55', 0, 0),
(26, 'Aydin ', 'Tadjibayeva ', 'staff', 0, 0, 'Tadjibayevaaydin94@gmail.com', '$2y$10$T1SuDeG71auvjfn5r7Oxr.h/Eha56Ccu4RtILQjUbtAIV7eVMETX.', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', '', '', '', '0000-00-00', '', 'female', NULL, '', 1, 1, '2021-07-03 07:05:31', '2021-10-19 07:26:06', 0, 0),
(27, ' Jumanazar ', 'Eshonqulov', 'staff', 0, 0, 'Jumanazar1@gmail.com', '$2y$10$7kU4a/Kng1EIezyRcY3v6OqGQgpFOEZ60lcypTLBzHCd0kD.7IM7i', 'a:1:{s:9:\"file_name\";s:29:\"_file60e00d0cbac36-avatar.png\";}', 'active', '2021-10-22 11:11:15', 0, '2021-10-22 11:11:17', 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 07:07:18', '2021-10-22 13:19:07', 0, 0),
(28, 'Gulzoda ', 'Shermatova ', 'staff', 0, 0, 'shermatovagulzoda87@gmail.com', '$2y$10$46eXgEJX4d0FT.12hnK5auNlcG8iC3sNQztzhIhHF7wsyZUg3tfzO', 'a:1:{s:9:\"file_name\";s:29:\"_file60e00d8cc6e9a-avatar.png\";}', 'active', '2021-12-26 05:51:50', 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-03 07:10:23', '2022-02-14 08:34:05', 0, 0),
(29, ' Gulnoza', 'Xolmuratova', 'staff', 0, 0, 'holmuratovagulnoza@gmail.com', '$2y$10$gthmSHWAjpJ5mOuWO8WvTueKur8myjQVNznvZLhDlqgESL7FWIEdW', 'a:1:{s:9:\"file_name\";s:29:\"_file60e00e1e8065c-avatar.png\";}', 'inactive', '2021-11-19 05:03:50', 0, '2021-11-19 05:03:49', 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-03 07:12:37', '2021-12-20 09:54:06', 0, 0),
(30, 'Kamola ', 'Egamberdiyeva ', 'staff', 0, 0, 'kamolaegamberdiyeva3110@gmail.com', '$2y$10$VUV0WvENb5GFm2Gb2QIAFeoodd.arez4HEsdCO9KxY2qTGXwAnEJq', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-03 07:14:27', '2021-10-19 08:28:48', 0, 0),
(31, 'Saydullo', 'Kuranov ', 'staff', 0, 0, 'quronov@gmail.com', '$2y$10$bCe7GOcAt6qBnZPjC6rJr.J8ACTnsmXf2dwxAgK4vKK9OniE4kq26', 'a:1:{s:9:\"file_name\";s:29:\"_file61dd581b74db2-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'Metodist 0.5', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 07:16:02', '2022-02-02 15:04:33', 0, 0),
(32, 'Nomoz ', 'Rasulov ', 'staff', 0, 0, 'Nomoz@gmail.com123rtm456', '$2y$10$a8OOC8TwlDzcCbiTbTpA0eFWXp58vWXm21D.nROZqmDLDuA//kZ2e', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist 0.5', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:26:45', '2021-10-19 08:47:55', 0, 0),
(33, 'Gulchiroy', 'Ostonova ', 'staff', 0, 0, 'gulciroy96@mail.com', '$2y$10$XORwMcWbhHOY7QX0qRbVNe6qP.By1IBsp3DxQ4QPNfKT2cLNCUJla', 'a:1:{s:9:\"file_name\";s:29:\"_file60e02038aacff-avatar.png\";}', 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-03 08:28:02', '2021-10-19 08:14:18', 0, 0),
(34, 'Aynura ', 'Almjanova ', 'staff', 0, 0, 'Aynura@gmail.com', '$2y$10$N9KEDtj7AGvQO1fmNuxOX.lokkHY.oJu8GYu2/MnFl5g/HTcqnclq', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-03 08:29:19', '2022-03-02 15:08:49', 0, 0),
(35, 'Nurafshon', 'Oripova ', 'staff', 0, 0, 'Nurafjon@gmail.com', '$2y$10$j7BlYer.vEgZHjU8aQCn.e1NtAvBvhDZG7ziW1vI3hfOeAv4yrsp6', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist 0.5', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-03 08:31:58', '2021-12-22 11:06:39', 0, 0),
(36, 'Maftuna', 'Aliyeva ', 'staff', 0, 0, 'Maftuna@gmail.com', '$2y$10$/N9dClnrSZ0saVbalty1PeK.NYHASeN8N9GQMNoEk4AGDekFBCL/2', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-03 08:33:42', '2021-10-19 08:31:43', 0, 1),
(37, 'Yo‘ldoshbek', 'Saidov ', 'staff', 0, 0, 'saidov.yu98@gmail.ru', '$2y$10$uCDa5.cm9lSEvRXzNb6V2erNkibz1S55OVMBE1rWo5NYJvXnj6sGy', 'a:1:{s:9:\"file_name\";s:29:\"_file60e02189e0450-avatar.png\";}', 'active', '2022-03-01 13:03:24', 0, NULL, 0, 'Metodist', 0, NULL, 'saidov.yu98@gmail.com', '', '', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2021-07-03 08:34:46', '2022-03-04 13:59:23', 0, 0),
(38, 'Guliston ', 'Jo‘rayeva ', 'staff', 0, 0, 'gulistonuz4@gmail.com', '$2y$10$RS8GXuD1UD/RvK5MxrVpvurOEMbw//QVdpRbyDYBomAM6nzxIPjmO', 'a:1:{s:9:\"file_name\";s:29:\"_file61f90ce00caa8-avatar.png\";}', 'active', '2022-03-04 04:08:30', 0, '2022-03-01 12:42:34', 0, 'Metodist', 0, NULL, '', '', '97 4036121', '', '1977-04-15', '', 'female', NULL, '', 1, 1, '2021-07-03 08:37:47', '2022-03-07 13:13:51', 0, 0),
(39, ' Akmal', 'Tashkentov', 'staff', 1, 0, 'Akmalmamirovich@gmail.com', '$2y$10$n7jbiuqNjqqZSRNDtzfhVu3EdpcxLjEAINlyokAnyL5wcJMFhHu/O', NULL, 'active', '2022-03-03 09:55:49', 0, '2021-11-16 18:14:02', 0, 'Bo‘lim boshlig‘i', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:46:39', '2022-03-03 10:49:14', 0, 0),
(40, ' Orifjon ', 'Madvaliyev', 'staff', 0, 0, 'oriftolib@gmail.com', '$2y$10$uB7N7oMVfVB7N0wjLfYjTOdUKf0TEYBvS9R2fS26jyf1vt3mOKHiW', 'a:1:{s:9:\"file_name\";s:29:\"_file60e0248b15717-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:48:30', '2022-02-02 13:46:19', 0, 0),
(41, ' Sarvar', 'Farmonov', 'staff', 0, 0, 'Sarvar@gmail.com', '$2y$10$brXUAz/voSxecjl5201/x.OXVGm0HuidpLwGG3MZvMZ21u2R0CPvq', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:51:00', '2021-10-19 06:55:32', 0, 0),
(42, ' Ixvoldin', 'Saloxitdinov ', 'staff', 0, 0, 'Ixvoliddin@gmail.com', '$2y$10$nu7dxAu9Ju8NFqrHTXxlpe1EE2HlRN9iIKoGhA407/CFb7WucGX0G', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:54:19', '2021-10-19 06:17:55', 0, 0),
(43, 'Umid', 'Sulaymonov ', 'staff', 0, 0, 'SulaymonovUmid@gmail.com', '$2y$10$aZGDJgshKeI5IPsprhHF/uuyrprI51c5HVnMh0JMobH2KbMAd7w9q', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:55:20', '2021-10-22 07:16:24', 0, 0),
(44, ' Alimardon', 'Aqilov', 'staff', 0, 0, 'alimardon@gmail.com', '$2y$10$8VlgXvujztFyvHL3acIWeuCOg1GnjxvigiLnj4rD9aeYW5akcxHo6', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, 'SulaymonovUmid@gmail', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:56:09', '2021-10-19 05:51:08', 0, 0),
(45, 'Akbar', 'Qosimov ', 'staff', 0, 0, 'QosimovAkbar@gmail.com', '$2y$10$T1VyFVOS8PxlrLHNdaaJdOjOOaddxVQDlwDvAv0/o8rmMs7dEX18O', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, 'alimardon@gmail.com', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:57:13', '2021-10-19 07:20:13', 0, 0),
(46, 'Farxod', 'Yusupov ', 'staff', 0, 0, 'FarxodYusupov@gmail.com', '$2y$10$F7JvwGWtPr8x1K0UM4brweyRQUy6LEBs2gOn1aOQCJnEJzbIn0c0u', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, 'QosimovAkabr@gmail.c', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:57:58', '2021-10-19 08:04:31', 0, 0),
(47, 'Foziljon ', 'Qudratillayev ', 'staff', 0, 0, 'Foziljon1212@gmail.com', '$2y$10$1ecuDe7MurN.qaNxwk4IiO82ggs8vt6T7I4U832MLbeW3rX3QUGW2', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, 'FarxodYusupov@gmail.', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:58:31', '2021-10-19 08:11:40', 0, 0),
(48, ' Azizbek', 'Xusanov', 'staff', 0, 0, 'AzizbekXasanov@gmail.com', '$2y$10$uX3vvPtjQtwxlB4Ah25.jOEtTav/lKIKWgXgV5UKW7O5eG1PUUnSq', NULL, 'active', '2022-02-07 12:48:57', 0, '2022-02-07 05:02:42', 0, 'Metodist', 0, NULL, '', NULL, 'Foziljon1212@gmail.c', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:59:10', '2022-03-03 17:30:22', 0, 0),
(49, 'Zohirjon', 'Zarifullayev ', 'staff', 0, 0, 'Zohirjon@gmail.com', '$2y$10$iRd.Jlt2AUH8eywHnv5itesdMINuNJoyc83hVB7eaS2xThFbMAzEq', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, 'Foziljon1212@gmail.c', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 08:59:42', '2021-10-20 05:04:45', 0, 0),
(50, 'Zamira', 'Djurayeva ', 'staff', 0, 1, 'zamira.djurayeva67@gmail.com', '$2y$10$I5t8xqQs8KuplhglULnAc.lsxyWakEk6tXHhMKy8lziieqGwuqOZ2', NULL, 'active', '2022-02-02 09:40:12', 0, '2022-02-02 10:51:22', 0, 'Bo‘lim boshlig‘i', 0, NULL, '', NULL, 'Zohirjon@gmail.com', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 09:10:47', '2022-02-28 10:22:40', 0, 1),
(51, 'Sunatilla', 'Dangalov ', 'staff', 0, 0, 'sunnatilladangalov@gmail.com', '$2y$10$PiIdWrDLamNo62OqA5oErOuvoX3mVGRfG8zi8ZgaU5qD7hj.ffKtm', NULL, 'active', NULL, 0, NULL, 0, 'Metodist 0.5', 0, NULL, '', NULL, 'zamira.djurayeva67@g', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-03 09:12:09', '2021-10-19 09:24:21', 0, 1),
(52, ' Zamira', 'Sangirova', 'staff', 1, 0, 'sangirovazamira.rtm@gmail.com', '$2y$10$HYr.dG9Ee60aXtfdbcwMl.S3UDwnmG1qYcYaOKZvwZYg3S1sdc7Za', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2ba4bd90a8-avatar.png\";}', 'active', '2022-03-07 11:47:34', 0, '2021-07-13 04:33:35', 0, 'Bo‘lim boshlig‘i', 0, NULL, '', NULL, 'sunnatilladangalov@g', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-03 13:20:59', '2022-03-07 11:54:44', 0, 0),
(53, ' Arabboy', 'Abdullajonov', 'staff', 0, 0, 'arabic9077@gmail.com', '$2y$10$tls2u1471PYad2M/uc4VeOJKWh2pA5vCnrAvwDvhfVGl2YfjkeE7K', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2bac9990c3-avatar.png\";}', 'active', '2022-02-01 13:54:13', 0, NULL, 0, 'Metodist', 0, NULL, 'arabic9077@gmail.com', 'arabboy4899@gmail.com', '998936314899', '', '1993-05-30', '', 'male', NULL, '', 1, 1, '2021-07-03 13:21:58', '2022-02-01 14:25:57', 0, 1),
(54, 'Sevara ', 'Xasanova ', 'staff', 0, 0, 'sevarax83@gmail.com', '$2y$10$XGe4AkIZxJHMb2LBNgRC6.p8eSRgUYphUjnM3l2ZS9PZwvBVAA34.', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2bb6142422-avatar.png\";}', 'active', '2022-02-05 07:28:07', 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, 'zamira.djurayeva67@g', NULL, NULL, NULL, 'female', '1. 26.02.2022 da darslikni shablonga solish \n2. 6-sinf darsligini mavzularini yozish', NULL, 1, 1, '2021-07-05 07:56:20', '2022-03-07 12:12:16', 0, 0),
(55, 'Xolmirza ', 'Yusupov ', 'staff', 0, 0, 'Xolmirza1231@gmail.com', '$2y$10$wsYte.oYKggChtINmpbQyujk/ttciavWLIXQUQyo6IWaYw4/WQhLO', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2bc3c8ac11-avatar.png\";}', 'inactive', '2021-10-20 13:08:37', 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 07:59:06', '2021-10-20 13:19:37', 0, 0),
(56, 'Zohid', 'Narziyev ', 'staff', 0, 0, 'zoxid_narziyev@mail.ru', '$2y$10$CDeaA/Hyf3C0q5UGbu7ZqulLmr2ZrA3fqU./D1R/iOhjoGkJzyxR2', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2c1a01999c-avatar.png\";}', 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 08:22:28', '2021-10-20 05:02:19', 0, 0),
(57, 'Tajimurod', 'Tursunov ', 'staff', 0, 0, 'tazimuradt@gmail.com', '$2y$10$yVI42tXPhSjjqTHg5U5h7uOdU9tn5KUDwZOHIEsZfcLAQLMJC9CES', NULL, 'active', '2022-02-10 12:25:07', 0, '2022-02-10 12:08:04', 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 08:24:48', '2022-02-22 13:27:54', 0, 0),
(58, 'Oysuluv', 'Musurmonqulova ', 'staff', 0, 0, 'oysuluv.musurmonqulova@gmail.com', '$2y$10$yIuhKLQiEezVcOsQTGrwT.Wr/JhIomrBd9W3Wh.3S0kImpoAcE7z6', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2c24fe8e39-avatar.png\";}', 'active', '2022-02-21 07:04:22', 0, NULL, 0, 'Metodist', 0, NULL, 'oysuluvmusurmonqulova@gmail.com', 'Yangi hayot tumani Yangi umid mahallasi 84/30', '99 840 74 25', '99-914 10 74', '1974-01-25', '', 'female', 'Диктантлар тўплами баёнлар тўплами бошланғич учун  кўлланмалар тайёрлаш\n', '', 1, 1, '2021-07-05 08:25:54', '2022-03-07 11:50:38', 0, 0),
(59, 'Zebo', 'Jabborova ', 'staff', 0, 0, 'jabborova.zebo@mail.ru', '$2y$10$fWGBlHb0SbDjnjK7FvVqTO6pu1bGcqOBRyzNFBuTLSKeU1Y.iz90i', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-05 08:28:13', '2022-03-04 04:38:24', 0, 1),
(60, 'Surayyo ', 'Niyazova ', 'staff', 0, 0, 'Surayyo1234@gmail.com', '$2y$10$xy6fUhPEZ6hvVqavD6JgBOqeLT7uhJzVfMTz0Jjf16zDRcxPftN4.', 'a:1:{s:9:\"file_name\";s:29:\"_file61c45e7aba150-avatar.png\";}', 'active', '2022-03-04 04:36:48', 0, '2022-03-04 04:38:41', 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-05 08:29:11', '2022-03-04 07:47:14', 0, 0),
(61, 'Feruza', 'Maxmudova ', 'staff', 1, 0, 'feruzamaxmudova2667@gmail.com', '$2y$10$Y8pWc6SFZmULDrlIaX7UXOiU/9WizGxrbne8x4QrDT.RF.scItvsq', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2c446083e0-avatar.png\";}', 'active', '2022-03-03 16:10:11', 0, '2022-02-18 13:22:21', 0, 'Bo‘lim boshlig‘i', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-05 08:34:26', '2022-03-08 05:43:52', 0, 0),
(62, 'Oybek', 'Shernayev ', 'staff', 0, 0, 'oybekshernayev@gmail.com', '$2y$10$MNkHlm013Xl1g2H2anq4PuoA19/P5ODA0AwiKsb15f98afjQgp7X.', 'a:1:{s:9:\"file_name\";s:29:\"_file620dce4b5c9d6-avatar.png\";}', 'active', '2022-03-01 12:59:12', 0, '2022-02-16 16:32:30', 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', 'Dasturni Adliyada xulosani olish\nDarslik dizayni \nMobil guruh\nTanlov hisobati \n', NULL, 1, 1, '2021-07-05 08:36:49', '2022-03-07 07:30:55', 0, 0),
(63, 'Akmal ', 'Yoqubov ', 'staff', 1, 0, 'akmalakbarov89@gmail.com', '$2y$10$/neiN0k3OE2zRDMvJrk4nuC7B5EcBb9yhW6CUz3f4HIXJKI85SCRy', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2c573a04b4-avatar.png\";}', 'active', '2022-02-28 16:38:12', 0, '2021-12-15 12:48:45', 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', 'KPI bo\'yicha bo\'lim vazifalaridan kelib chiqqan holda takliflar kutib qolamiz.', NULL, 1, 1, '2021-07-05 08:38:22', '2022-03-03 18:04:28', 0, 0),
(64, 'Gulnora', 'Ganiyeva ', 'staff', 0, 0, 'gulnora1971@inbox.uz', '$2y$10$Mnyb0R2PlqOisLqjLF2KK.25bvHw7vvxFFS6BsSKwUXMFaUfiF1gu', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-05 08:41:06', '2021-10-19 08:20:42', 0, 1),
(65, 'Nurhayot', 'Hakimov ', 'staff', 0, 0, 'Nurxayot@gmail.com', '$2y$10$Ais5VG7l9U.2lH5/MqaXaenZYepGrcJq9B10NJgdkVHIP.i8vbncC', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2c628ab43b-avatar.png\";}', 'active', '2022-02-02 04:56:40', 0, '2022-02-21 14:48:03', 0, 'Metodist', 0, NULL, '', '', '+998 (94) 685-86-96', '', '2010-12-11', '', 'male', '1. Mart o‘quvi uchun tajriba maktablari bilan birgalikda zoomda yig`ilishda ishtirok etildi va ijtimoiy fanlar doirasida savollarga javob berildi.\n2. Respublika miqyosida o`tkazilgan tadqiqotlar sammitida maqola bilan ishtirok etildi.\n3. Ijtimoiy tarmoqlar orqali fan doirasida o‘qituvchilarga metodik tavsiyalar berildi.\n4. 7-sinf Jahon tarixi fani yuzasidan mualliflar bilan darslikka kiritiladigan o‘zgarishlar yuzasidan onlayn muhokama qilindi.\n5. Tarix fanini 2030-yilgacha rivojlantirish konsepsiyasi yuzasidan takliflar ishlab chiqildi.\n6. O‘zR FA tomonidan xatga javob berildi.', '', 1, 1, '2021-07-05 08:42:13', '2022-03-07 14:08:01', 0, 0),
(66, 'Zulfizar', 'Shamsiyeva ', 'staff', 0, 0, 'zulfizarxon2022@gmail.com', '$2y$10$T5h4IkaiqCpZaF3csCmbw.zUabhgT820fkpgDWrRvWtGzlxOeMMw.', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-05 08:44:39', '2021-10-20 05:05:13', 0, 0),
(67, 'Yulduz ', 'Ro‘ziyeva ', 'staff', 0, 0, 'zvezdarashidovna675@gmail.com', '$2y$10$LU8c3GQFiFsI.dnlmjLwU.BkDa5SnAjh/von09/HlMgTWXMKxNEKK', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-05 08:45:41', '2021-10-20 04:53:19', 0, 0),
(68, 'Barno', 'Yunusova ', 'staff', 0, 0, 'barno.design@mail.ru', '$2y$10$RxZgoYeADYCcc.gKakXpsOyOwQCc7GnJ008Ra7lfDk2rQTS.U4f1G', 'a:1:{s:9:\"file_name\";s:29:\"_file60e2c7a0a9b66-avatar.png\";}', 'active', '2022-02-25 04:54:49', 0, '2022-01-05 10:39:32', 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-05 08:48:37', '2022-03-05 13:26:11', 0, 0),
(69, 'Farrux', 'Boltayev ', 'staff', 1, 0, 'bipoyon@gmail.com', '$2y$10$wqRxw5CY1wLRfVPeSMIuWePUHCxmZXM25y0LDbsuRfdZnSSK9zNy6', 'a:1:{s:9:\"file_name\";s:29:\"_file621dfb1215d4a-avatar.png\";}', 'active', NULL, 0, '2022-03-01 10:56:55', 0, 'Bo‘lim boshlig‘i', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 08:54:23', '2022-03-07 12:28:10', 0, 0),
(70, 'Nilufar ', 'Umarova ', 'staff', 0, 0, 'Nilufar123@gmail.com', '$2y$10$BbtmGs6UdU0PyNHtUNP6Zuj9J6TvujIORSKZ7WMmK0GaAoS1kb5bS', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-05 08:55:42', '2021-10-19 08:45:38', 0, 0),
(71, 'Oxunjon', 'Ibrohimov ', 'staff', 0, 0, 'Oxunjon@gmail.com', '$2y$10$OVoThNmwX1nsDXlOr3Ap4OXihFvbLv6HeUa9jy4RluJ23QWs.y9I6', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 08:56:17', '2021-10-19 08:55:29', 0, 0),
(72, ' Maqsud', 'Saypiyev', 'staff', 0, 0, 'Maqsud@gmail.com', '$2y$10$5/XLls9VKjooA2ymxtPmd.1bOyVO9tQSjWz1tOAvC3AZNXTl4NggC', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 08:56:59', '2021-10-19 06:26:13', 0, 0),
(73, 'Azizbek', 'Ismailov ', 'staff', 0, 0, 'azizbek123542@gmail.com', '$2y$10$vMrTMdPAgBzkE.ZilQlPe.bG0McDw7RnRFeFeJTwDhAymr8M59KZK', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 08:57:35', '2021-10-19 07:35:36', 0, 0),
(74, 'Elyorjon ', 'Maxmudov ', 'staff', 0, 0, 'Elyorjon12@gmail.com', '$2y$10$xFePL896LhqXRgGKRUv4/uI/WmobyZ0R21/bKz0GcUonHB.RVDUiO', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 08:58:13', '2021-10-19 07:58:55', 0, 0),
(75, ' Nodirabonu', 'Muminova', 'staff', 0, 0, 'Nodirabonu@gmail.com', '$2y$10$BoAzVDgr5HBFjQkbM.BhbeCzuVmyHj6MxceX5/O5tPtk.ggMGkFku', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-07-05 08:59:03', '2021-10-19 06:31:58', 0, 0),
(76, 'Azizbek', 'Raximjonov ', 'staff', 1, 0, 'Azizbek3451@gmail.com', '$2y$10$macTt2QV2abZXj4bIGLtWuuUgnVUsvfi.tZUzw7bHfiX9rK712VGS', NULL, 'active', NULL, 0, NULL, 0, 'Bosh hisobchi', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 09:02:57', '2021-10-19 07:38:19', 0, 0),
(77, 'Dilshodxon', 'Soliyeva ', 'staff', 0, 0, 'Dilshodaxon@gmail.com', '$2y$10$Pq/DdhlOcD0yQnLeYIfyk./PuSUvIKe07UOjl9goDKnFpxxn3Eyj6', NULL, 'active', NULL, 0, NULL, 0, 'Bosh mutaxassis', 0, NULL, '', '', '', '', '0000-00-00', '', 'female', NULL, '', 1, 1, '2021-07-05 09:03:59', '2021-10-19 07:55:59', 0, 0),
(78, ' San\'atbek ', 'Babajanov', 'staff', 1, 0, 'San\'atbek@gmail.com', '$2y$10$bMn/lZkdBS6X1gBlACI.auMVsbhJCssxtrwqS8KuGlJatQ5U7PnPe', NULL, 'inactive', NULL, 0, NULL, 0, 'Bosh mutaxassis', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 09:04:47', NULL, 0, 0),
(79, ' San\'atbek ', 'Babajanov', 'staff', 0, 0, 'San\'atbek@gmail.com', '$2y$10$J2VSwn4XWEyeSTGDI9tGru2wiXb/NOk7TqjJrAuBh0n6hYoJZ52zO', NULL, 'inactive', NULL, 0, NULL, 0, 'Bosh mutaxassis', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 09:04:49', NULL, 0, 0),
(80, ' San\'atbek ', 'Babajanov', 'staff', 0, 0, 'San\'atbek@gmail.com', '$2y$10$Q3T4mprI0Y3CESc2va8oDOBybqIYh7RD2jvYpno8GHVT8I2GEbmr2', NULL, 'active', NULL, 0, NULL, 0, 'Bosh mutaxassis', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 09:04:55', NULL, 0, 0),
(81, ' Akmal ', 'Sulaymonov ', 'staff', 0, 0, 'Akmal2323@gmail.com', '$2y$10$R1Slx8Nbf3cdw88xCGD.UO35cu6yg8fL1hGwy.dQKiXd2afiE5bIy', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 13:43:42', '2021-10-19 05:40:40', 0, 0),
(82, 'Dilmurod ', 'Mulla-Axunov ', 'staff', 0, 0, 'Dilmurod4397@gmail.com', '$2y$10$zmIeXcttq3v5TsOW4WnX2uiE4/fQARC0LlwIyFIgvXPwCDxwxc9P2', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 13:51:09', '2021-10-19 07:47:14', 0, 0),
(83, 'Ulug‘bek ', 'Qarorov ', 'staff', 0, 0, 'Qarorov222@gmail.com', '$2y$10$mCCrVydzHJ/RCJV/5hDDZ.uTWLw2RJJg3ulkSnQrwr2NhiDdUfzfm', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-07-05 13:54:21', '2021-10-22 10:47:45', 0, 0),
(84, 'Nurbek', 'Po\'latov', 'staff', 1, 0, 'polatovnurbek622@gmail.com', '$2y$10$4jTtpp3fWZTSspLMX011QeEOntjUkT/gXSMLXVX1VvZoqZrHO3P.2', NULL, 'inactive', NULL, 0, '2021-10-19 11:11:25', 0, 'admin', 1, NULL, 'nurbekpolatov622@gmail.com', NULL, '+998900707485', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-10-19 10:57:16', '2021-10-19 11:17:32', 0, 0),
(85, 'Nazirjon', 'Jo\'rayev', 'staff', 0, 1, 'nazirjon.jurayev@gmail.com', '$2y$10$C6FI5S/ButJS7FeZ7RlN5OVCKky26F8lzSG/xp3gidWvkQMB89v0K', NULL, 'inactive', NULL, 0, '2021-10-22 07:31:25', 0, 'Advisor', 1, NULL, 'nazirjon.jurayev@gmail.com', NULL, 'nazirjon.jurayev@gma', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-10-22 07:25:27', '2021-10-22 11:05:00', 0, 0),
(86, 'Nazirjon', 'Jo\'rayev', 'staff', 0, 1, 'nazirjon.sherlock@gmail.com', '$2y$10$Dun1TtEx1XLca8EgqNq5kOYZa04kn.VP3a5XSrqPONmIuJVLDY/zu', NULL, 'inactive', NULL, 0, NULL, 0, 'Advisor', 1, NULL, 'nazirjon.jurayev@gmail.com', NULL, 'nazirjon.jurayev@gma', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-10-22 07:26:38', NULL, 0, 0),
(87, 'Nazirjon', 'Jo\'rayev', 'staff', 0, 1, 'turaevsherzamin@gmail.com', '$2y$10$Qi0IpRNJPEQRNbkzfOcpVe39FZzBGEmE7wDmCHRz./M0/CVn5wa12', NULL, 'inactive', NULL, 0, NULL, 0, 'Advisor', 1, NULL, 'nazirjon.jurayev@gmail.com', NULL, 'nazirjon.jurayev@gma', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-10-22 07:27:11', NULL, 0, 0),
(88, 'Murodjon', 'Hamrayev', 'staff', 1, 0, 'murodjon.hamrayec@gmail.com', '$2y$10$Z9KJXV0oftg5nBsa2GZd9eiGUuARw4l0jbZ7PznH/YHo7aMYQv4SK', NULL, 'inactive', NULL, 0, NULL, 0, 'Maslatchi', 1, NULL, 'murodjon.hamrayev@gamil.com', NULL, '+998992052115', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-12-20 08:51:55', '2021-12-20 08:54:45', 0, 0),
(89, 'murod', 'hamrayev', 'staff', 0, 0, 'murod.hamroyev@gmail.com', '$2y$10$2dMwxG3WH5ecOlQ/jk/4duu1Yp7Lr6fiq7QDo9TYhRAUthZDDmzvG', NULL, 'inactive', NULL, 0, NULL, 0, 'Maslatchi', 1, NULL, 'murod.hamrayev@gmail.com', NULL, '998992052115', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-12-20 12:31:27', NULL, 0, 0),
(90, 'Sherlock', 'Holmes', 'staff', 0, 0, 'sherlock.holmes@gmail.com', '$2y$10$evuougD./on88Q57ZOBQueJJSdMfW80bcBSlaktsjRwiKwBHf1rQW', NULL, 'inactive', NULL, 0, NULL, 0, 'Maslatchi', 1, NULL, 'sherlock.holmes@gmail.com', NULL, '998993333333', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-12-23 05:35:23', '2021-12-23 05:36:28', 0, 0),
(91, 'Barno ', 'Abduvohitova', 'staff', 0, 0, 'barnoabduvoxitova@gmail.com', '$2y$10$CAzrfM.abjUChgX8dgkLVOMHbgww9XdOlTaCCC55GC9Kw9Adaz78K', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, 'barnoabduvoxitova@gmail.com', NULL, '+998971065999', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-12-25 07:47:51', '2022-03-03 13:38:45', 0, 0),
(92, 'Muyassarxon', 'Karabayeva', 'staff', 0, 0, 'ymuyassarxon@gmail.com', '$2y$10$/ZZozrBV/Njyq8raQqswbehQr0vgyC6Cv/fMO61VaWNSA.ejeSdLG', NULL, 'active', '2022-02-03 05:23:40', 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-12-25 07:51:36', '2022-03-07 12:23:31', 0, 0),
(93, 'Muyassarxon', 'Karabayeva', 'staff', 0, 0, 'kmuyassarxon@gmail.com', '$2y$10$95DBptPtkHrHskKnWweLROmeLayyfWMxbTenWZFVfBDM3y36OSarK', NULL, 'inactive', NULL, 0, NULL, 0, 'Metodist', 1, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-12-25 08:16:40', NULL, 0, 0),
(94, 'Baxrom', 'Karshiyev Qayumovich', 'staff', 0, 0, 'baxromkarshiyev@gmail.com', '$2y$10$e3iGx27wbalTgLpFKHGa4OLbEBHAYffghAk.2oV/H19p9yoMX5Ewy', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '77777777777777', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2021-12-28 10:54:25', NULL, 0, 0),
(95, 'Mohira ', 'Nurullayeva Dilshod qizi', 'staff', 0, 0, 'mohiranurullayeva@gmail.com', '$2y$10$Jkf2cKQTNIwhy5Pv5KQKNeQvC5zpMkafL7EzHT0WwDwFwDR7hwPOG', NULL, 'active', NULL, 0, NULL, 0, 'Bo\'lim boshlig\'i', 0, NULL, '', NULL, '99 970 80 60', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2021-12-28 11:08:00', '2022-03-02 05:09:39', 0, 1),
(96, 'Jamshid', 'Raxmatov', 'staff', 0, 0, 'j.raxmatov86@gmail.com', '$2y$10$uDw0EwljwI1Qg8lElOJx9OQAJci0MuCWe.2Z4iFY0BaT/R.34ynka', 'a:1:{s:9:\"file_name\";s:29:\"_file61d6ddfc44a01-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '7788899', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-01-03 07:24:34', '2022-03-04 12:41:43', 0, 0),
(97, 'Xolmirza', 'Yusupov', 'staff', 0, 0, 'yusupov14071984@gmail.com', '$2y$10$ruepoPIw3mt.wusy2WASNunBNZv4dK6P49R.Bq3qo5A0tKKbIUrkG', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '778889999', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-01-03 07:29:46', '2022-03-01 13:43:12', 0, 0),
(98, 'Qo\'ysintosh', 'Abdiyeva', 'staff', 0, 0, 'abdiyeva1984@gmail.com', '$2y$10$NBTDyxXEmJ/A.vV4qeHLYevK7nwaysBe0k1KQ2hcWYNcFjF3H9bNu', NULL, 'active', '2022-02-24 08:06:03', 0, '2022-02-24 08:06:06', 0, 'Metodist', 0, NULL, '', NULL, '778899897987', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-01-03 07:31:37', '2022-03-04 07:05:59', 0, 0),
(99, 'Nigora', 'Usarova Berdiyarovna', 'staff', 0, 0, 'nazirjon.jo\'rayev@gmail.com', '$2y$10$paZ.Ga/tTYdSvaGbmyOhyO7zzPlvesE9P6wdA1fZzi3P4GnbrYbNi', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '4564654654645', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-01-03 07:47:32', NULL, 0, 1),
(100, 'Baxtixon', 'Ruziyeva', 'staff', 0, 0, 'baxtixonruziyeva30@gmail.com', '$2y$10$lHZo75QSOi50xS.6xQ6NOuTqctoPotSaO1.GuSIKQaUFqaqoqmCjK', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '1213123424324', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-01-03 07:50:00', NULL, 0, 0),
(101, 'Eldor', 'Ochilov', 'staff', 0, 0, 'eldorochilov1993@gmail.com', '$2y$10$lJFbJb0Vw45ccahRKg/7.eYKC3Pk4lRxCOPJLrMJ8CqXp4lb.YHQC', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, 'eldorochilov1993@gmail.com', '', '+998337879229', '+998995259492', '1993-07-12', '', 'male', NULL, '', 1, 1, '2022-01-06 15:13:55', '2022-03-07 12:13:48', 0, 0),
(102, 'Yo\'ldoshali', 'Ravshanov', 'staff', 0, 0, 'ryr19900522@gmail.com', '$2y$10$X8OoCsmzNIGj/5Muh..ASOsgdBkOb9M3fG1AgN5acKSqpjL1htBSW', 'a:1:{s:9:\"file_name\";s:29:\"_file621ca1981fde0-avatar.png\";}', 'active', '2022-03-04 05:18:45', 0, NULL, 0, 'Metodist', 0, NULL, '', '', '+998903929977', '', '1990-05-22', '', 'male', NULL, '', 1, 1, '2022-01-06 16:03:44', '2022-03-04 14:38:49', 0, 0),
(103, 'Esongul', 'Nazaraliyeva', 'staff', 0, 0, 'esongulnazaraliyeva@gmail.com', '$2y$10$Coa9HAD3TuLNnqDlTaAchu0LikzDqc937hbP5yGDI/m/Aaf7X858K', NULL, 'active', '2022-02-02 06:22:43', 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '45454656545', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-01-08 04:33:53', '2022-03-03 13:19:28', 0, 0),
(104, 'Zara', 'Sardaryan', 'staff', 0, 0, 'zsardar@mail.ru', '$2y$10$HmzbG5jYwzIMuvN2fXaYKOxL.1YorL9M2YzrKTnzgVTNo.3/a/2ze', NULL, 'active', '2022-03-02 14:58:55', 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, 'gfgfgfdgfdgfg', NULL, NULL, NULL, 'female', '', NULL, 1, 1, '2022-01-11 11:17:09', '2022-03-02 15:07:07', 0, 0),
(105, 'Mansur', 'Siddiqov', 'staff', 0, 0, 'hopaza2@gmail.com', '$2y$10$u2AeEFGakYrz8yuZ.itw.OrCIEOKza5A9kxbyLgcRf36l5MssX2km', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, 'hopaza2@gmail.com', 'hopaza@mail.ru', '935353444', '', '1985-12-28', '', 'male', NULL, '', 1, 1, '2022-01-27 11:23:32', '2022-03-01 14:02:19', 0, 0),
(106, 'Abror', 'Omonov', 'staff', 0, 0, 'omonovabror765@gmail.com', '$2y$10$SfJ4hU6AVu2c9rNpIe9icO3HSep0J1FVHaqX5QmGd.HbYoaupdu9O', 'a:1:{s:9:\"file_name\";s:29:\"_file61f94bdcc9b6a-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '12132323', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-02-01 13:13:50', '2022-02-28 18:24:42', 0, 0),
(107, 'Nodira', 'Muminova', 'staff', 0, 0, 'nadiramuminova95@gmail.com', '$2y$10$opKEuhJXSUx55cyQIuD.suA/cL6N8r8N2StgREPHEt6TTfUDuFQJq', 'a:1:{s:9:\"file_name\";s:29:\"_file61fa2a03d307a-avatar.png\";}', 'active', '2022-03-07 08:13:36', 0, '2022-03-07 08:13:38', 0, 'Metodist', 0, NULL, 'nadiramuminova95@gmail.com', 'http://t.me/nadira_ravshanbekovna', '+998950022055', '+998909077304', '1995-12-02', '', 'female', NULL, '', 1, 1, '2022-02-01 13:15:11', '2022-03-07 11:19:29', 0, 0),
(108, 'Sanjar', 'Kushbekov', 'staff', 0, 0, 'sanjarkushbekov8807@gmail.com', '$2y$10$5IUOkN5XBAlPMeQcDGP5nuJmVP3UI1ymFaJljb7jo8bihdNZwDdNO', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '12234345', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-02-01 13:19:21', '2022-02-28 18:28:17', 0, 0),
(109, 'Aziz', 'Xudayberdiyev', 'staff', 0, 0, 'Aziz199408@gamail.com', '$2y$10$bvFGPNHT8De7cdsWaeNwde0D38VbutQP78dL7bQbnjVlgOJ0BB2Xi', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '1234567', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-02-02 06:49:45', '2022-03-07 12:18:38', 0, 0),
(110, 'Nazirjon', 'Jo\'rayev', 'staff', 1, 0, 'nazirjon.jo\'rayev@gmail.com', '$2y$10$gytKwDHcfeynRgYp2RSNouilz3LOR3tHQp9EgjmvR3fSTCxO4hqz6', NULL, 'active', NULL, 0, NULL, 0, 'Adviser', 0, NULL, 'nazirjon.jo\'rayev@gmail.com', '', '+998(97)384-21-21', '', '0000-00-00', '', 'male', NULL, '', 1, 1, '2022-02-02 08:18:41', NULL, 0, 1),
(111, 'Nazirjon', 'Jo\'rayev', 'staff', 1, 0, 'sherlockconsulting21@gmail.com', '$2y$10$7p2oLWYf0esrrGgLQOhp.OfXbV6N2qMyiCTdbuhOw8SdvQT0U3ku2', NULL, 'active', '2022-03-02 08:28:02', 0, '2022-02-25 16:33:18', 0, 'Adviser', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-02-02 08:24:47', '2022-03-08 16:45:08', 0, 0),
(112, 'Nigora', 'O\'sarova', 'staff', 0, 0, 'nigoraberdiyarovna71@gmail.com', '$2y$10$ZeIGiPOs8/DRx8uq8eMGZ.OnKKGgXMUX90a1AqEEEkmu/Iq.4e6xS', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '1233463', NULL, NULL, NULL, 'female', 'Мобил гурухини ташкил этиш.', NULL, 1, 1, '2022-02-02 14:40:53', '2022-03-07 07:31:18', 0, 0),
(113, 'Ilyos', 'Toshev', 'staff', 0, 0, 'ilyostoshev512@gmail.com', '$2y$10$DB4J181Cyo.2fAFTpiFTX.TjzVG1Ci5B2h/uwbB1VAkl7yv6CoPIq', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '5246544654', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-02-02 15:15:12', '2022-03-04 12:25:27', 0, 0),
(114, 'Gulsora', 'Xidoyatullayeva', 'staff', 0, 0, 'gulsorahidoyatullayeva@gmail.com', '$2y$10$9./k01fcbi1IT8.wJZSmPuC19qYi4lUYMOk6lvKdeaCbx.rBumg2m', 'a:1:{s:9:\"file_name\";s:29:\"_file61fb5fe8c2dc8-avatar.png\";}', 'active', '2022-02-18 04:15:26', 0, '2022-02-03 05:01:05', 0, 'Metodist', 0, NULL, '', '', '+998919448882', '', '0000-00-00', '', 'female', '\n', '', 1, 1, '2022-02-03 04:35:14', '2022-03-07 14:25:35', 0, 0),
(115, 'Nilufar', 'Alovuddinova', 'staff', 0, 0, 'nilufaralovddionova@gmail.com', '$2y$10$8.Yy7YznrV.Z/sb5CY84tu3D1scZN9U7vlQPwhf72hy32iFTKk20O', 'a:1:{s:9:\"file_name\";s:29:\"_file6214c1f7b442d-avatar.png\";}', 'active', '2022-03-01 14:30:32', 0, '2022-02-23 10:35:22', 0, 'Metodist', 0, NULL, '', NULL, '23243434', NULL, NULL, NULL, 'female', '22.02\n100-maktab\n\n23.02.2022\nQ.Qalpoq tarjimon bilan ishlash\n24.02\nnukus\nyig\'ilish STEM\n25,02,2022\nXorazm mobil guruh\n\n28.02\n7-sinf bildirgi --\nmualliflar bilan ishlaganimiz+\nIMK a\'zolari-\nmetodika xulosa -\n\n\n', NULL, 1, 1, '2022-02-04 11:07:20', '2022-03-04 10:19:14', 0, 1),
(116, 'Arabboy', 'Abdullajanov', 'staff', 0, 0, 'arabic9077@gmail.com', '$2y$10$SyZv7TA4OuzxNQaJpZTXoueYj.YzsiLOqkogiUA/NCTT24akC2zaq', 'a:1:{s:9:\"file_name\";s:29:\"_file62136135073e4-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, 'arabic9077@gmail.com', 'Toshkent shahar Chilonzor tumani Choponota ko\'cha 6/35 uy', '998936314899', '', '1993-05-30', '', 'male', NULL, '', 1, 1, '2022-02-18 16:25:41', '2022-03-07 11:32:07', 0, 0),
(117, 'Maxsud', 'Saypiyev', 'staff', 0, 0, 'saypiyevmaxsud@gmail.com', '$2y$10$TYr8HDXDQIrH/Lnyxh0tNOnMjiI0d7PBkIL312GP8NE7WzfPVRhoC', 'a:1:{s:9:\"file_name\";s:29:\"_file621df7415ab83-avatar.png\";}', 'active', '2022-03-01 11:22:59', 0, '2022-03-01 11:24:09', 0, 'Metodist', 0, NULL, '', NULL, '44535', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-02-25 12:44:42', '2022-03-04 13:29:53', 0, 0),
(118, 'Azizbek', 'Ismailov', 'staff', 0, 0, 'azizbek0479@gmail.com', '$2y$10$tx9btHoBZZVB7lfT6h8Hqe1c6.z8FRA4xamAfYq5eZPvTP1Wz2ppO', 'a:1:{s:9:\"file_name\";s:29:\"_file621df64427018-avatar.png\";}', 'active', '2022-03-01 12:11:27', 0, '2022-03-02 05:54:16', 0, 'Metodist', 0, NULL, '', '', '+998999673748', '', '1996-03-12', '', 'male', NULL, '', 1, 1, '2022-02-25 12:45:57', '2022-03-07 12:29:02', 0, 0),
(119, 'Maftuna', 'Aliyeva', 'staff', 0, 0, 'maftunaaliyeva076@gmail.com', '$2y$10$wbFysu9DEMdUTKNEwaDfHOp4WIe2sZd.Cf7T4tkHg7R73x/joEm6C', 'a:1:{s:9:\"file_name\";s:29:\"_file621e032d27882-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '45454545454545', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-02-25 12:46:38', '2022-03-07 06:00:18', 0, 0),
(120, 'Zamira', 'Djurayeva', 'staff', 1, 0, 'zamira.djurayeva67@gmail.com', '$2y$10$pPyypJ3EGkAEp/y9Qq5Tlu6ytWJMArJcU5w.D81gOpGNNz1C3JE0C', NULL, 'active', '2022-03-03 04:43:28', 0, NULL, 0, 'Bo\'lim boshlig\'i', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-02-28 10:25:32', '2022-03-07 12:26:20', 0, 0),
(121, 'Isroil', 'Tillaboyev', 'staff', 0, 1, 'itillaboyev@gmail.com', '$2y$10$mtYNAaCISt22WXyvH6zjhOAvVquHHaM5EVwGiPvO.rg/52gPubp3m', NULL, 'active', '2022-02-28 11:28:40', 0, NULL, 0, 'Direktor o\'rinbosari', 0, NULL, 'itillaboyev@gmail.com', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-02-28 11:26:52', '2022-03-07 07:01:39', 0, 0),
(122, 'Farxod', 'Yusupov', 'staff', 0, 0, 'usupovfarhod501@gmail.com', '$2y$10$sJ4rXdjJadHyscgvflEpIOfMSriXlksnifiC0du.WxfDelI8zN./a', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-02-28 16:39:36', '2022-03-02 16:57:22', 0, 0),
(123, 'Gulzoda', 'Shermatova', 'staff', 0, 0, 'shermatova.gulzoda@mail.ru', '$2y$10$kTRLZlGY8cQFPmwUeuRqLeeblwiAfStgBcXQx6./vO4BxwkkTjVNW', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-03-01 12:25:19', '2022-03-07 06:37:47', 0, 0),
(124, 'Mohira ', 'Nurullayeva Dilshod qizi', 'staff', 0, 1, 'mohiranurullayeva2@gmail.com', '$2y$10$h7rB5IkDn32VQzEFwR1/T.cGMF3SXFbarwSavOO9HhxLajW8dZRP.', NULL, 'active', NULL, 0, NULL, 0, 'Bo\'lim boshlig\'i', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-03-02 05:15:34', NULL, 0, 1),
(125, 'Mohira', 'Nurullayeva', 'staff', 1, 0, 'mohiranurullayeva2@gmail.com', '$2y$10$7oBRt7Co.psNwGkC5akz6uJmRuT6p1MCDrPLjcnuNA9vL2dl8JjFe', NULL, 'active', NULL, 0, NULL, 0, 'Bo\'lim boshlig\'i', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-03-02 08:13:00', '2022-03-07 07:50:11', 0, 0),
(126, 'Sitora', 'Mamarasulova', 'staff', 0, 0, 'sitoramamarasulova3@gmail.com', '$2y$10$zILMkmsACCcizFM87e8gXOmrbALKlkxkPMqbc8dsYRSr7NYGehlL6', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-03-02 13:21:46', '2022-03-07 12:32:49', 0, 0),
(127, 'Gulmira', 'Khayrullayeva', 'staff', 0, 0, 'gulmira.khayrullaeva@gmail.com', '$2y$10$K0ckZd3RkeXo2f01DdFR/uePzXIyzyebkalD2M.TupxGGjqDuc2N6', NULL, 'active', NULL, 0, NULL, 0, 'Metodist', 0, NULL, '', '', '+998998177169', '', '0000-00-00', '', 'female', NULL, '', 1, 1, '2022-03-02 16:27:31', '2022-03-03 10:09:51', 0, 0),
(128, 'Oloviddin', 'Sobir o\'g\'li ', 'staff', 0, 0, 'neurointeractivemodel@gmail.com', '$2y$10$ncci0a.Bojfgn2fLXKgYRO.UBS9s9jNb7FR/Zjq3V9zusypoarih.', NULL, 'active', NULL, 0, NULL, 0, 'metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2022-03-03 09:34:32', '2022-03-06 05:50:09', 0, 0),
(129, 'Zebo', 'Jabborova', 'staff', 0, 0, 'jabborova.zebo@mail.ru', '$2y$10$w7doGzwziSPiL.1.x.Iie.3fi8mAQjRHpwSj/lw6MKQqtfXZol0OG', NULL, 'active', NULL, 0, NULL, 0, 'metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-03-04 10:02:36', '2022-03-05 14:38:15', 0, 0),
(130, 'Nilufar ', 'Alovuddinova', 'staff', 0, 0, 'nilufaralovddionova@gmail.com', '$2y$10$bZKhZyP5dZoyhm3s9ahiROelcqQtP5zPNiXpwzwNFE9J6l6afGcdO', 'a:1:{s:9:\"file_name\";s:29:\"_file622213a74ad0e-avatar.png\";}', 'active', NULL, 0, NULL, 0, 'metodist', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2022-03-04 10:20:50', '2022-03-07 14:26:27', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `verification`
--

CREATE TABLE `verification` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` enum('invoice_payment','reset_password','verify_email','invitation') COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `verification`
--

INSERT INTO `verification` (`id`, `created_at`, `type`, `code`, `params`, `deleted`) VALUES
(1, '2021-10-03 05:19:08', 'reset_password', 'tZelMOWzQa', 'a:2:{s:5:\"email\";s:21:\"shkhaliloff@gmail.com\";s:11:\"expire_time\";i:1633324748;}', 0),
(2, '2021-12-20 08:39:06', 'invitation', 'wkyIJHxYrG', 'a:3:{s:5:\"email\";s:26:\"nazirjon.jurayev@gmail.com\";s:4:\"type\";s:5:\"staff\";s:11:\"expire_time\";i:1640075946;}', 0),
(3, '2021-12-27 04:38:03', 'reset_password', 'mfZsLSVoxR', 'a:2:{s:5:\"email\";s:20:\"tazimuradt@gmail.com\";s:11:\"expire_time\";i:1640666283;}', 0),
(4, '2021-12-27 04:38:10', 'reset_password', 'xyEWxBMqsJ', 'a:2:{s:5:\"email\";s:20:\"tazimuradt@gmail.com\";s:11:\"expire_time\";i:1640666290;}', 0),
(5, '2022-01-26 07:37:08', 'reset_password', 'YjjhPofKRa', 'a:2:{s:5:\"email\";s:28:\"mohiranurullayeva2@gmail.com\";s:11:\"expire_time\";i:1643269028;}', 0),
(6, '2022-01-26 07:37:13', 'reset_password', 'xMNODYTKPi', 'a:2:{s:5:\"email\";s:28:\"mohiranurullayeva2@gmail.com\";s:11:\"expire_time\";i:1643269033;}', 0),
(7, '2022-01-26 07:37:37', 'reset_password', 'GrvdiYxPtM', 'a:2:{s:5:\"email\";s:28:\"mohiranurullayeva2@gmail.com\";s:11:\"expire_time\";i:1643269057;}', 0),
(8, '2022-01-26 07:37:40', 'reset_password', 'FYvTDleCuT', 'a:2:{s:5:\"email\";s:28:\"mohiranurullayeva2@gmail.com\";s:11:\"expire_time\";i:1643269060;}', 0),
(9, '2022-01-26 10:29:23', 'reset_password', 'jDdcUdzoGI', 'a:2:{s:5:\"email\";s:29:\"esongulnazaraliyeva@gmail.com\";s:11:\"expire_time\";i:1643279363;}', 0),
(10, '2022-01-26 10:29:33', 'reset_password', 'BvEaGOFSaS', 'a:2:{s:5:\"email\";s:29:\"esongulnazaraliyeva@gmail.com\";s:11:\"expire_time\";i:1643279373;}', 0),
(11, '2022-01-26 10:29:34', 'reset_password', 'SMqykLFWVx', 'a:2:{s:5:\"email\";s:29:\"esongulnazaraliyeva@gmail.com\";s:11:\"expire_time\";i:1643279374;}', 0),
(12, '2022-02-01 14:54:09', 'reset_password', 'tZUbWstGBg', 'a:2:{s:5:\"email\";s:18:\"Nurxayot@gmail.com\";s:11:\"expire_time\";i:1643813649;}', 0),
(13, '2022-02-01 14:54:15', 'reset_password', 'FhzDluWBcx', 'a:2:{s:5:\"email\";s:18:\"Nurxayot@gmail.com\";s:11:\"expire_time\";i:1643813655;}', 0),
(14, '2022-02-02 04:11:57', 'reset_password', 'yReeYqbhoR', 'a:2:{s:5:\"email\";s:21:\"Surayyo1234@gmail.com\";s:11:\"expire_time\";i:1643861517;}', 0),
(15, '2022-02-02 04:12:10', 'reset_password', 'CEZKlApoCL', 'a:2:{s:5:\"email\";s:21:\"Surayyo1234@gmail.com\";s:11:\"expire_time\";i:1643861530;}', 0),
(16, '2022-02-02 04:36:50', 'reset_password', 'yeJabTppoy', 'a:2:{s:5:\"email\";s:22:\"ymuyassarxon@gmail.com\";s:11:\"expire_time\";i:1643863010;}', 0),
(17, '2022-02-02 04:37:02', 'reset_password', 'HoVvAfFWDp', 'a:2:{s:5:\"email\";s:22:\"ymuyassarxon@gmail.com\";s:11:\"expire_time\";i:1643863022;}', 0),
(18, '2022-02-02 09:11:46', 'reset_password', 'LvVeXwvblk', 'a:2:{s:5:\"email\";s:24:\"omonovabror765@gmail.com\";s:11:\"expire_time\";i:1643879506;}', 0),
(19, '2022-02-02 09:11:54', 'reset_password', 'iXbfjuloMc', 'a:2:{s:5:\"email\";s:24:\"omonovabror765@gmail.com\";s:11:\"expire_time\";i:1643879514;}', 0),
(20, '2022-02-02 15:29:45', 'reset_password', 'UGVVfhUyhU', 'a:2:{s:5:\"email\";s:20:\"barno.design@mail.ru\";s:11:\"expire_time\";i:1643902185;}', 0),
(21, '2022-02-02 15:40:28', 'reset_password', 'rmultFEwkE', 'a:2:{s:5:\"email\";s:20:\"barno.design@mail.ru\";s:11:\"expire_time\";i:1643902828;}', 0),
(22, '2022-02-04 09:02:42', 'reset_password', 'TtEpkatdnu', 'a:2:{s:5:\"email\";s:20:\"barno.design@mail.ru\";s:11:\"expire_time\";i:1644051762;}', 0),
(23, '2022-02-04 09:54:33', 'reset_password', 'raiUQPdLVh', 'a:2:{s:5:\"email\";s:32:\"gulsorahidoyatullayeva@gmail.com\";s:11:\"expire_time\";i:1644054873;}', 0),
(24, '2022-02-04 09:54:43', 'reset_password', 'ryEUazjJXT', 'a:2:{s:5:\"email\";s:32:\"gulsorahidoyatullayeva@gmail.com\";s:11:\"expire_time\";i:1644054883;}', 0),
(25, '2022-02-04 09:56:22', 'reset_password', 'YVyitetFjz', 'a:2:{s:5:\"email\";s:32:\"gulsorahidoyatullayeva@gmail.com\";s:11:\"expire_time\";i:1644054982;}', 0),
(26, '2022-02-04 10:59:02', 'reset_password', 'exabGYQgSx', 'a:2:{s:5:\"email\";s:32:\"gulsorahidoyatullayeva@gmail.com\";s:11:\"expire_time\";i:1644058742;}', 0),
(27, '2022-02-04 11:29:01', 'reset_password', 'GHGSEadrtq', 'a:2:{s:5:\"email\";s:32:\"gulsorahidoyatullayeva@gmail.com\";s:11:\"expire_time\";i:1644060541;}', 0),
(28, '2022-02-04 11:32:01', 'reset_password', 'jYNLPodPoQ', 'a:2:{s:5:\"email\";s:32:\"gulsorahidoyatullayeva@gmail.com\";s:11:\"expire_time\";i:1644060721;}', 0),
(29, '2022-02-04 11:34:09', 'reset_password', 'OiMwJvRrWW', 'a:2:{s:5:\"email\";s:32:\"gulsorahidoyatullayeva@gmail.com\";s:11:\"expire_time\";i:1644060849;}', 0),
(30, '2022-02-04 11:34:45', 'reset_password', 'AUullxHODQ', 'a:2:{s:5:\"email\";s:32:\"gulsorahidoyatullayeva@gmail.com\";s:11:\"expire_time\";i:1644060885;}', 0),
(31, '2022-02-04 11:34:50', 'reset_password', 'GGzyubeTaB', 'a:2:{s:5:\"email\";s:32:\"gulsorahidoyatullayeva@gmail.com\";s:11:\"expire_time\";i:1644060890;}', 0),
(32, '2022-02-04 11:46:49', 'reset_password', 'AuTTeoORVb', 'a:2:{s:5:\"email\";s:32:\"gulsorahidoyatullayeva@gmail.com\";s:11:\"expire_time\";i:1644061609;}', 0),
(33, '2022-02-05 07:31:01', 'reset_password', 'lYIxQaLDUu', 'a:2:{s:5:\"email\";s:21:\"ryr19900522@gmail.com\";s:11:\"expire_time\";i:1644132661;}', 0),
(34, '2022-02-05 07:31:04', 'reset_password', 'cAYqeMNEaD', 'a:2:{s:5:\"email\";s:21:\"ryr19900522@gmail.com\";s:11:\"expire_time\";i:1644132664;}', 0),
(35, '2022-02-05 07:31:08', 'reset_password', 'andBkeHXDK', 'a:2:{s:5:\"email\";s:21:\"ryr19900522@gmail.com\";s:11:\"expire_time\";i:1644132668;}', 0),
(36, '2022-02-05 09:56:29', 'reset_password', 'NGmrxEhQdI', 'a:2:{s:5:\"email\";s:21:\"ryr19900522@gmail.com\";s:11:\"expire_time\";i:1644141389;}', 0),
(37, '2022-02-07 05:37:01', 'reset_password', 'UPuFpKLTEI', 'a:2:{s:5:\"email\";s:26:\"eldorochilov1993@gmail.com\";s:11:\"expire_time\";i:1644298621;}', 0),
(38, '2022-02-07 05:37:06', 'reset_password', 'eAJZTmdcsn', 'a:2:{s:5:\"email\";s:26:\"eldorochilov1993@gmail.com\";s:11:\"expire_time\";i:1644298626;}', 0),
(39, '2022-02-07 05:37:08', 'reset_password', 'xgEGzNMjJW', 'a:2:{s:5:\"email\";s:26:\"eldorochilov1993@gmail.com\";s:11:\"expire_time\";i:1644298628;}', 0),
(40, '2022-02-07 05:37:09', 'reset_password', 'tABwrAcQPH', 'a:2:{s:5:\"email\";s:26:\"eldorochilov1993@gmail.com\";s:11:\"expire_time\";i:1644298629;}', 0),
(41, '2022-02-07 05:37:14', 'reset_password', 'UaqZyvqRAE', 'a:2:{s:5:\"email\";s:26:\"eldorochilov1993@gmail.com\";s:11:\"expire_time\";i:1644298634;}', 0),
(42, '2022-02-07 05:45:17', 'reset_password', 'NiICZTBzVU', 'a:2:{s:5:\"email\";s:26:\"eldorochilov1993@gmail.com\";s:11:\"expire_time\";i:1644299117;}', 0),
(43, '2022-02-09 04:28:43', 'reset_password', 'cInDFyHYlb', 'a:2:{s:5:\"email\";s:30:\"nigoraberdiyarovna71@gmail.com\";s:11:\"expire_time\";i:1644467323;}', 0),
(44, '2022-02-09 04:28:58', 'reset_password', 'roclJZtPyV', 'a:2:{s:5:\"email\";s:30:\"nigoraberdiyarovna71@gmail.com\";s:11:\"expire_time\";i:1644467338;}', 0),
(45, '2022-02-09 04:28:59', 'reset_password', 'HqTndwEgaG', 'a:2:{s:5:\"email\";s:30:\"nigoraberdiyarovna71@gmail.com\";s:11:\"expire_time\";i:1644467339;}', 0),
(46, '2022-02-09 04:29:03', 'reset_password', 'rgKTupSLxh', 'a:2:{s:5:\"email\";s:30:\"nigoraberdiyarovna71@gmail.com\";s:11:\"expire_time\";i:1644467343;}', 0),
(47, '2022-02-15 06:41:46', 'reset_password', 'ozJMrtBuDu', 'a:2:{s:5:\"email\";s:30:\"nigoraberdiyarovna71@gmail.com\";s:11:\"expire_time\";i:1644993706;}', 0),
(48, '2022-02-15 06:41:57', 'reset_password', 'ItPjAXuahG', 'a:2:{s:5:\"email\";s:30:\"nigoraberdiyarovna71@gmail.com\";s:11:\"expire_time\";i:1644993717;}', 0),
(49, '2022-02-16 13:10:12', 'reset_password', 'xlfynJGRGh', 'a:2:{s:5:\"email\";s:25:\"baxromkarshiyev@gmail.com\";s:11:\"expire_time\";i:1645103412;}', 0),
(50, '2022-02-21 06:40:10', 'reset_password', 'qKTitBDQMy', 'a:2:{s:5:\"email\";s:29:\"esongulnazaraliyeva@gmail.com\";s:11:\"expire_time\";i:1645512010;}', 0),
(51, '2022-02-21 06:40:15', 'reset_password', 'tVDVnqPSrD', 'a:2:{s:5:\"email\";s:29:\"esongulnazaraliyeva@gmail.com\";s:11:\"expire_time\";i:1645512015;}', 0),
(52, '2022-02-26 11:03:20', 'reset_password', 'jrzouMiXgT', 'a:2:{s:5:\"email\";s:26:\"polatovnurbek622@gmail.com\";s:11:\"expire_time\";i:1645959800;}', 0),
(53, '2022-02-28 04:52:36', 'reset_password', 'dIpljZLLdY', 'a:2:{s:5:\"email\";s:19:\"Abduraxim@gmail.com\";s:11:\"expire_time\";i:1646110356;}', 0),
(54, '2022-02-28 05:46:06', 'reset_password', 'asDHpCjHEN', 'a:2:{s:5:\"email\";s:24:\"hojiyevamayram@gmail.com\";s:11:\"expire_time\";i:1646113566;}', 0),
(55, '2022-02-28 05:46:11', 'reset_password', 'ioBdgEIWId', 'a:2:{s:5:\"email\";s:24:\"hojiyevamayram@gmail.com\";s:11:\"expire_time\";i:1646113571;}', 0),
(56, '2022-02-28 05:46:55', 'reset_password', 'kBlRecQfRz', 'a:2:{s:5:\"email\";s:24:\"hojiyevamayram@gmail.com\";s:11:\"expire_time\";i:1646113615;}', 0),
(57, '2022-02-28 05:54:53', 'reset_password', 'FcVPXcWjwg', 'a:2:{s:5:\"email\";s:21:\"ryr19900522@gmail.com\";s:11:\"expire_time\";i:1646114093;}', 0),
(58, '2022-02-28 05:54:56', 'reset_password', 'ufvgyabxqj', 'a:2:{s:5:\"email\";s:21:\"ryr19900522@gmail.com\";s:11:\"expire_time\";i:1646114096;}', 0),
(59, '2022-03-01 08:09:01', 'reset_password', 'SFxzCqKUxz', 'a:2:{s:5:\"email\";s:22:\"abdiyeva1984@gmail.com\";s:11:\"expire_time\";i:1646208541;}', 0),
(60, '2022-03-01 08:09:09', 'reset_password', 'rcsrAWvXHn', 'a:2:{s:5:\"email\";s:22:\"abdiyeva1984@gmail.com\";s:11:\"expire_time\";i:1646208549;}', 0),
(61, '2022-03-01 10:44:43', 'reset_password', 'ThWlAjLTwl', 'a:2:{s:5:\"email\";s:22:\"abdiyeva1984@gmail.com\";s:11:\"expire_time\";i:1646217883;}', 0),
(62, '2022-03-01 10:44:48', 'reset_password', 'NzCbVcLzoo', 'a:2:{s:5:\"email\";s:22:\"abdiyeva1984@gmail.com\";s:11:\"expire_time\";i:1646217888;}', 0),
(63, '2022-03-01 10:44:50', 'reset_password', 'tLtlEBRKXL', 'a:2:{s:5:\"email\";s:22:\"abdiyeva1984@gmail.com\";s:11:\"expire_time\";i:1646217890;}', 0),
(64, '2022-03-01 10:44:50', 'reset_password', 'YDiDyWlXsu', 'a:2:{s:5:\"email\";s:22:\"abdiyeva1984@gmail.com\";s:11:\"expire_time\";i:1646217890;}', 0),
(65, '2022-03-01 10:45:41', 'reset_password', 'hNAxuhOtHh', 'a:2:{s:5:\"email\";s:22:\"abdiyeva1984@gmail.com\";s:11:\"expire_time\";i:1646217941;}', 0),
(66, '2022-03-01 10:45:42', 'reset_password', 'etKWlLIthO', 'a:2:{s:5:\"email\";s:22:\"abdiyeva1984@gmail.com\";s:11:\"expire_time\";i:1646217942;}', 0),
(67, '2022-03-01 10:45:44', 'reset_password', 'JhszlSVLIw', 'a:2:{s:5:\"email\";s:22:\"abdiyeva1984@gmail.com\";s:11:\"expire_time\";i:1646217944;}', 0),
(68, '2022-03-01 11:32:55', 'reset_password', 'zkoTQxYgCL', 'a:2:{s:5:\"email\";s:22:\"abdiyeva1984@gmail.com\";s:11:\"expire_time\";i:1646220775;}', 0),
(69, '2022-03-01 11:32:57', 'reset_password', 'BkYkvXnyMm', 'a:2:{s:5:\"email\";s:22:\"abdiyeva1984@gmail.com\";s:11:\"expire_time\";i:1646220777;}', 0),
(70, '2022-03-01 12:44:33', 'reset_password', 'cohazijOCs', 'a:2:{s:5:\"email\";s:24:\"oybekshernayev@gmail.com\";s:11:\"expire_time\";i:1646225073;}', 0),
(71, '2022-03-01 12:44:37', 'reset_password', 'AEaDYnPGyv', 'a:2:{s:5:\"email\";s:24:\"oybekshernayev@gmail.com\";s:11:\"expire_time\";i:1646225077;}', 0),
(72, '2022-03-02 04:39:14', 'reset_password', 'pPdhxXLAsc', 'a:2:{s:5:\"email\";s:29:\"esongulnazaraliyeva@gmail.com\";s:11:\"expire_time\";i:1646282354;}', 0),
(73, '2022-03-02 04:39:25', 'reset_password', 'WlkZRoDQiZ', 'a:2:{s:5:\"email\";s:29:\"esongulnazaraliyeva@gmail.com\";s:11:\"expire_time\";i:1646282365;}', 0),
(74, '2022-03-02 04:39:29', 'reset_password', 'pYNytqHNio', 'a:2:{s:5:\"email\";s:29:\"esongulnazaraliyeva@gmail.com\";s:11:\"expire_time\";i:1646282369;}', 0),
(75, '2022-03-02 04:39:30', 'reset_password', 'rshcUdupqG', 'a:2:{s:5:\"email\";s:29:\"esongulnazaraliyeva@gmail.com\";s:11:\"expire_time\";i:1646282370;}', 0),
(76, '2022-03-03 04:00:40', 'reset_password', 'BwQKUYxSwV', 'a:2:{s:5:\"email\";s:19:\"Abduraxim@gmail.com\";s:11:\"expire_time\";i:1646366440;}', 0),
(77, '2022-03-03 04:00:48', 'reset_password', 'PUvbgsbgIc', 'a:2:{s:5:\"email\";s:19:\"Abduraxim@gmail.com\";s:11:\"expire_time\";i:1646366448;}', 0),
(78, '2022-03-03 04:00:49', 'reset_password', 'agTTAXuuUh', 'a:2:{s:5:\"email\";s:19:\"Abduraxim@gmail.com\";s:11:\"expire_time\";i:1646366449;}', 0),
(79, '2022-03-03 04:00:50', 'reset_password', 'EtbAgfPSmS', 'a:2:{s:5:\"email\";s:19:\"Abduraxim@gmail.com\";s:11:\"expire_time\";i:1646366450;}', 0),
(80, '2022-03-03 04:00:53', 'reset_password', 'pMktzpjgfx', 'a:2:{s:5:\"email\";s:19:\"Abduraxim@gmail.com\";s:11:\"expire_time\";i:1646366453;}', 0),
(81, '2022-03-03 04:00:56', 'reset_password', 'fkEuoYzBnm', 'a:2:{s:5:\"email\";s:19:\"Abduraxim@gmail.com\";s:11:\"expire_time\";i:1646366456;}', 0),
(82, '2022-03-03 04:00:57', 'reset_password', 'ZBPuTLUfRq', 'a:2:{s:5:\"email\";s:19:\"Abduraxim@gmail.com\";s:11:\"expire_time\";i:1646366457;}', 0),
(83, '2022-03-04 13:16:21', 'reset_password', 'melKryBIfT', 'a:2:{s:5:\"email\";s:30:\"sherlockconsulting21@gmail.com\";s:11:\"expire_time\";i:1646486181;}', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Индексы таблицы `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Индексы таблицы `checklist_items`
--
ALTER TABLE `checklist_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `client_groups`
--
ALTER TABLE `client_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `custom_widgets`
--
ALTER TABLE `custom_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dashboards`
--
ALTER TABLE `dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `estimate_forms`
--
ALTER TABLE `estimate_forms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `estimate_requests`
--
ALTER TABLE `estimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Индексы таблицы `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `general_files`
--
ALTER TABLE `general_files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `help_articles`
--
ALTER TABLE `help_articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `help_categories`
--
ALTER TABLE `help_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Индексы таблицы `instruct_cats`
--
ALTER TABLE `instruct_cats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lead_source`
--
ALTER TABLE `lead_source`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lead_status`
--
ALTER TABLE `lead_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `user_id` (`applicant_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Индексы таблицы `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_from` (`from_user_id`),
  ADD KEY `message_to` (`to_user_id`);

--
-- Индексы таблицы `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event` (`event`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project_comments`
--
ALTER TABLE `project_comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project_members`
--
ALTER TABLE `project_members`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project_settings`
--
ALTER TABLE `project_settings`
  ADD UNIQUE KEY `unique_index` (`project_id`,`setting_name`);

--
-- Индексы таблицы `project_time`
--
ALTER TABLE `project_time`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `appraiser` (`appraiser`),
  ADD KEY `indicator_id` (`indicator_id`);

--
-- Индексы таблицы `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `indicator_id` (`indicator_id`);

--
-- Индексы таблицы `reports_files`
--
ALTER TABLE `reports_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Индексы таблицы `report_notifications`
--
ALTER TABLE `report_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Индексы таблицы `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stripe_ipn`
--
ALTER TABLE `stripe_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `task_status`
--
ALTER TABLE `task_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ticket_templates`
--
ALTER TABLE `ticket_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `to_do`
--
ALTER TABLE `to_do`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `email` (`email`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `deleted` (`deleted`);

--
-- Индексы таблицы `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT для таблицы `checklist_items`
--
ALTER TABLE `checklist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `client_groups`
--
ALTER TABLE `client_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `custom_widgets`
--
ALTER TABLE `custom_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dashboards`
--
ALTER TABLE `dashboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=792;

--
-- AUTO_INCREMENT для таблицы `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `estimate_forms`
--
ALTER TABLE `estimate_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `estimate_requests`
--
ALTER TABLE `estimate_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `general_files`
--
ALTER TABLE `general_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `help_articles`
--
ALTER TABLE `help_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `help_categories`
--
ALTER TABLE `help_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT для таблицы `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `instruct_cats`
--
ALTER TABLE `instruct_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lead_source`
--
ALTER TABLE `lead_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `lead_status`
--
ALTER TABLE `lead_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT для таблицы `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT для таблицы `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `project_comments`
--
ALTER TABLE `project_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `project_members`
--
ALTER TABLE `project_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT для таблицы `project_time`
--
ALTER TABLE `project_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;

--
-- AUTO_INCREMENT для таблицы `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=898;

--
-- AUTO_INCREMENT для таблицы `reports_files`
--
ALTER TABLE `reports_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT для таблицы `report_notifications`
--
ALTER TABLE `report_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1266;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `stripe_ipn`
--
ALTER TABLE `stripe_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `task_status`
--
ALTER TABLE `task_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `ticket_comments`
--
ALTER TABLE `ticket_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `ticket_templates`
--
ALTER TABLE `ticket_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ticket_types`
--
ALTER TABLE `ticket_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `to_do`
--
ALTER TABLE `to_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT для таблицы `verification`
--
ALTER TABLE `verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `indicators`
--
ALTER TABLE `indicators`
  ADD CONSTRAINT `indicators_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `instructors_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `instruct_cats` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`appraiser`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`indicator_id`) REFERENCES `indicators` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_ibfk_3` FOREIGN KEY (`indicator_id`) REFERENCES `indicators` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reports_files`
--
ALTER TABLE `reports_files`
  ADD CONSTRAINT `reports_files_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
