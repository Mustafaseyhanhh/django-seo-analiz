-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2020 at 02:12 PM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seo_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_serp_keyword`
--

CREATE TABLE `app_serp_keyword` (
  `id` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `site_id` int(11) NOT NULL,
  `language` varchar(100) NOT NULL,
  `location_name` varchar(200) NOT NULL,
  `location_x` double NOT NULL,
  `location_y` double NOT NULL,
  `platform_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_serp_keyword`
--

INSERT INTO `app_serp_keyword` (`id`, `keyword`, `add_date`, `site_id`, `language`, `location_name`, `location_x`, `location_y`, `platform_id`) VALUES
(5, 'asd', '2020-07-12 11:09:01.565292', 5, 'asd', 'asd', 123.555, 123.555, 2),
(6, 'asd', '2020-07-12 11:11:28.447175', 5, 'asd', 'asd', 123.555, 123.555, 1),
(7, 'asd', '2020-07-12 11:11:30.361596', 5, 'asd', 'asd', 123.555, 123.555, 1),
(8, 'asd', '2020-07-12 11:11:31.141527', 5, 'asd', 'asd', 123.555, 123.555, 1),
(9, 'asd', '2020-07-12 11:11:31.713451', 5, 'asd', 'asd', 123.555, 123.555, 1),
(10, 'asd', '2020-07-12 11:11:32.253427', 5, 'asd', 'asd', 123.555, 123.555, 1),
(11, 'asd', '2020-07-12 11:11:32.740842', 5, 'asd', 'asd', 123.555, 123.555, 1),
(12, 'asd', '2020-07-12 11:11:33.192831', 5, 'asd', 'asd', 123.555, 123.555, 1),
(13, 'asd', '2020-07-12 11:11:33.668489', 5, 'asd', 'asd', 123.555, 123.555, 1),
(14, 'asd', '2020-07-12 11:11:34.166016', 5, 'asd', 'asd', 123.555, 123.555, 1),
(15, 'asd', '2020-07-12 11:11:34.376136', 5, 'asd', 'asd', 123.555, 123.555, 1),
(16, 'asd', '2020-07-12 11:11:34.581134', 5, 'asd', 'asd', 123.555, 123.555, 1),
(17, 'asd', '2020-07-12 11:11:34.726198', 5, 'asd', 'asd', 123.555, 123.555, 1),
(18, 'asd', '2020-07-12 11:11:34.916461', 5, 'asd', 'asd', 123.555, 123.555, 1),
(19, 'asd', '2020-07-12 11:11:35.110699', 5, 'asd', 'asd', 123.555, 123.555, 1),
(20, 'asd', '2020-07-12 11:11:35.295990', 5, 'asd', 'asd', 123.555, 123.555, 1),
(21, 'asd', '2020-07-12 11:18:45.957818', 5, 'asd', 'asd', 123.555, 123.555, 1),
(22, 'asds', '2020-07-12 11:24:33.669917', 5, 'asd', 'asd', 123.555, 123.555, 1),
(23, 'asdsa', '2020-07-12 11:24:43.415523', 5, 'asd', 'asd', 123.555, 123.555, 1),
(24, 'asdsacc', '2020-07-12 11:29:46.648402', 5, 'asd', 'asd', 123.555, 123.555, 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_serp_language`
--

CREATE TABLE `app_serp_language` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `tag` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_serp_language`
--

INSERT INTO `app_serp_language` (`id`, `name`, `tag`) VALUES
(1, 'Espanol', 'es'),
(2, 'İngilizce', 'en-au'),
(3, 'France', 'fr'),
(4, 'Almanca', 'de');

-- --------------------------------------------------------

--
-- Table structure for table `app_serp_locationcity`
--

CREATE TABLE `app_serp_locationcity` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_serp_locationcity`
--

INSERT INTO `app_serp_locationcity` (`id`, `name`, `x`, `y`) VALUES
(1, 'asdasd', 6.555, 5.5555);

-- --------------------------------------------------------

--
-- Table structure for table `app_serp_locationcountry`
--

CREATE TABLE `app_serp_locationcountry` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_serp_locationcountry`
--

INSERT INTO `app_serp_locationcountry` (`id`, `name`, `x`, `y`) VALUES
(1, 'Global', 37.090244, 95.712891),
(2, 'Türkiye', 38.7391493, 26.1572996);

-- --------------------------------------------------------

--
-- Table structure for table `app_serp_locationprivate`
--

CREATE TABLE `app_serp_locationprivate` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_serp_locationprivate`
--

INSERT INTO `app_serp_locationprivate` (`id`, `name`, `x`, `y`) VALUES
(1, 'özel konum', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `app_serp_platform`
--

CREATE TABLE `app_serp_platform` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_serp_platform`
--

INSERT INTO `app_serp_platform` (`id`, `name`) VALUES
(1, 'Mobile / Android'),
(2, 'Mobile / Ios'),
(3, 'Tablet / Android'),
(4, 'Tablet / Ios'),
(5, 'Desktop');

-- --------------------------------------------------------

--
-- Table structure for table `app_serp_rank`
--

CREATE TABLE `app_serp_rank` (
  `id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app_serp_searchengine`
--

CREATE TABLE `app_serp_searchengine` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_serp_searchengine`
--

INSERT INTO `app_serp_searchengine` (`id`, `name`) VALUES
(1, 'GOOGLE'),
(2, 'YANDEX');

-- --------------------------------------------------------

--
-- Table structure for table `app_serp_site`
--

CREATE TABLE `app_serp_site` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `rank_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_serp_site`
--

INSERT INTO `app_serp_site` (`id`, `uid`, `site_url`, `add_date`, `rank_time`) VALUES
(1, 2, 'dogadijital.com', '2020-06-29 15:10:32.982418', 10),
(2, 2, 'bcajans.com', '2020-06-29 15:11:04.526079', 10),
(3, 2, 'zajans.com', '2020-06-29 15:11:45.835106', 10),
(4, 2, 'fikrifabrik.com', '2020-06-29 15:12:03.166427', 10),
(5, 2, 'google.com', '2020-07-03 08:36:00.727788', 5),
(6, 2, 'yandex.com', '2020-07-07 11:49:44.638988', 3),
(7, 3, 'google.com', '2020-07-07 15:30:22.371440', 3),
(9, 3, 'ilandesk.com', '2020-07-07 15:35:34.927864', 3),
(10, 1, 'ilandesk.com', '2020-07-11 10:31:04.036065', 3),
(11, 1, 'ticaretforum.com', '2020-07-11 11:26:03.975034', 3);

-- --------------------------------------------------------

--
-- Table structure for table `app_serp_useragent`
--

CREATE TABLE `app_serp_useragent` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(500) NOT NULL,
  `platform_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add sites', 7, 'add_sites'),
(26, 'Can change sites', 7, 'change_sites'),
(27, 'Can delete sites', 7, 'delete_sites'),
(28, 'Can view sites', 7, 'view_sites'),
(29, 'Can add keywords', 8, 'add_keywords'),
(30, 'Can change keywords', 8, 'change_keywords'),
(31, 'Can delete keywords', 8, 'delete_keywords'),
(32, 'Can view keywords', 8, 'view_keywords'),
(33, 'Can add siralama', 9, 'add_siralama'),
(34, 'Can change siralama', 9, 'change_siralama'),
(35, 'Can delete siralama', 9, 'delete_siralama'),
(36, 'Can view siralama', 9, 'view_siralama'),
(37, 'Can add location', 10, 'add_location'),
(38, 'Can change location', 10, 'change_location'),
(39, 'Can delete location', 10, 'delete_location'),
(40, 'Can view location', 10, 'view_location'),
(41, 'Can add rank', 9, 'add_rank'),
(42, 'Can change rank', 9, 'change_rank'),
(43, 'Can delete rank', 9, 'delete_rank'),
(44, 'Can view rank', 9, 'view_rank'),
(45, 'Can add search language', 11, 'add_searchlanguage'),
(46, 'Can change search language', 11, 'change_searchlanguage'),
(47, 'Can delete search language', 11, 'delete_searchlanguage'),
(48, 'Can view search language', 11, 'view_searchlanguage'),
(49, 'Can add search location city', 12, 'add_searchlocationcity'),
(50, 'Can change search location city', 12, 'change_searchlocationcity'),
(51, 'Can delete search location city', 12, 'delete_searchlocationcity'),
(52, 'Can view search location city', 12, 'view_searchlocationcity'),
(53, 'Can add search location cauntry', 10, 'add_searchlocationcauntry'),
(54, 'Can change search location cauntry', 10, 'change_searchlocationcauntry'),
(55, 'Can delete search location cauntry', 10, 'delete_searchlocationcauntry'),
(56, 'Can view search location cauntry', 10, 'view_searchlocationcauntry'),
(57, 'Can add search rank', 9, 'add_searchrank'),
(58, 'Can change search rank', 9, 'change_searchrank'),
(59, 'Can delete search rank', 9, 'delete_searchrank'),
(60, 'Can view search rank', 9, 'view_searchrank'),
(61, 'Can add search language', 13, 'add_searchlanguage'),
(62, 'Can change search language', 13, 'change_searchlanguage'),
(63, 'Can delete search language', 13, 'delete_searchlanguage'),
(64, 'Can view search language', 13, 'view_searchlanguage'),
(65, 'Can add search location cauntry', 14, 'add_searchlocationcauntry'),
(66, 'Can change search location cauntry', 14, 'change_searchlocationcauntry'),
(67, 'Can delete search location cauntry', 14, 'delete_searchlocationcauntry'),
(68, 'Can view search location cauntry', 14, 'view_searchlocationcauntry'),
(69, 'Can add search location city', 15, 'add_searchlocationcity'),
(70, 'Can change search location city', 15, 'change_searchlocationcity'),
(71, 'Can delete search location city', 15, 'delete_searchlocationcity'),
(72, 'Can view search location city', 15, 'view_searchlocationcity'),
(73, 'Can add search rank', 16, 'add_searchrank'),
(74, 'Can change search rank', 16, 'change_searchrank'),
(75, 'Can delete search rank', 16, 'delete_searchrank'),
(76, 'Can view search rank', 16, 'view_searchrank'),
(77, 'Can add sites', 17, 'add_sites'),
(78, 'Can change sites', 17, 'change_sites'),
(79, 'Can delete sites', 17, 'delete_sites'),
(80, 'Can view sites', 17, 'view_sites'),
(81, 'Can add keywords', 18, 'add_keywords'),
(82, 'Can change keywords', 18, 'change_keywords'),
(83, 'Can delete keywords', 18, 'delete_keywords'),
(84, 'Can view keywords', 18, 'view_keywords'),
(85, 'Can add keyword', 18, 'add_keyword'),
(86, 'Can change keyword', 18, 'change_keyword'),
(87, 'Can delete keyword', 18, 'delete_keyword'),
(88, 'Can view keyword', 18, 'view_keyword'),
(89, 'Can add language', 13, 'add_language'),
(90, 'Can change language', 13, 'change_language'),
(91, 'Can delete language', 13, 'delete_language'),
(92, 'Can view language', 13, 'view_language'),
(93, 'Can add location city', 15, 'add_locationcity'),
(94, 'Can change location city', 15, 'change_locationcity'),
(95, 'Can delete location city', 15, 'delete_locationcity'),
(96, 'Can view location city', 15, 'view_locationcity'),
(97, 'Can add location country', 14, 'add_locationcountry'),
(98, 'Can change location country', 14, 'change_locationcountry'),
(99, 'Can delete location country', 14, 'delete_locationcountry'),
(100, 'Can view location country', 14, 'view_locationcountry'),
(101, 'Can add rank', 16, 'add_rank'),
(102, 'Can change rank', 16, 'change_rank'),
(103, 'Can delete rank', 16, 'delete_rank'),
(104, 'Can view rank', 16, 'view_rank'),
(105, 'Can add site', 17, 'add_site'),
(106, 'Can change site', 17, 'change_site'),
(107, 'Can delete site', 17, 'delete_site'),
(108, 'Can view site', 17, 'view_site'),
(109, 'Can add private location', 19, 'add_privatelocation'),
(110, 'Can change private location', 19, 'change_privatelocation'),
(111, 'Can delete private location', 19, 'delete_privatelocation'),
(112, 'Can view private location', 19, 'view_privatelocation'),
(113, 'Can add location private', 19, 'add_locationprivate'),
(114, 'Can change location private', 19, 'change_locationprivate'),
(115, 'Can delete location private', 19, 'delete_locationprivate'),
(116, 'Can view location private', 19, 'view_locationprivate'),
(117, 'Can add user agent', 20, 'add_useragent'),
(118, 'Can change user agent', 20, 'change_useragent'),
(119, 'Can delete user agent', 20, 'delete_useragent'),
(120, 'Can view user agent', 20, 'view_useragent'),
(121, 'Can add platform', 21, 'add_platform'),
(122, 'Can change platform', 21, 'change_platform'),
(123, 'Can delete platform', 21, 'delete_platform'),
(124, 'Can view platform', 21, 'view_platform'),
(125, 'Can add search engine', 22, 'add_searchengine'),
(126, 'Can change search engine', 22, 'change_searchengine'),
(127, 'Can delete search engine', 22, 'delete_searchengine'),
(128, 'Can view search engine', 22, 'view_searchengine');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$6981Cb8vK802$WHV3r/KOaoY/hJuaiurZKcQvcyA99m3eesLKGtP8sdM=', '2020-07-11 14:02:02.470969', 1, 'admin', '', '', '', 1, 1, '2020-06-20 20:03:21.143147');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-06-20 20:11:51.794818', '3', 'deneme1', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-06-29 08:47:44.822635', '2', 'Test 1', 1, '[{\"added\": {}}]', 10, 1),
(3, '2020-06-29 08:48:02.010256', '2', 'Test 1', 2, '[{\"changed\": {\"fields\": [\"Locale Y\"]}}]', 10, 1),
(4, '2020-06-29 08:48:23.140568', '3', 'Test 2', 1, '[{\"added\": {}}]', 10, 1),
(5, '2020-06-29 08:48:46.809497', '4', 'Test 3', 1, '[{\"added\": {}}]', 10, 1),
(6, '2020-06-29 15:10:32.983436', '1', 'dogadijital.com', 1, '[{\"added\": {}}]', 17, 1),
(7, '2020-06-29 15:11:04.527315', '2', 'bcajans.com', 1, '[{\"added\": {}}]', 17, 1),
(8, '2020-06-29 15:11:45.836057', '3', 'zajans.com', 1, '[{\"added\": {}}]', 17, 1),
(9, '2020-06-29 15:12:03.167313', '4', 'fikrifabrik.com', 1, '[{\"added\": {}}]', 17, 1),
(10, '2020-06-29 15:36:17.862570', '1', 'Espanol', 1, '[{\"added\": {}}]', 13, 1),
(11, '2020-06-29 15:36:28.515748', '2', 'İngilizce', 1, '[{\"added\": {}}]', 13, 1),
(12, '2020-06-29 15:36:45.127951', '3', 'France', 1, '[{\"added\": {}}]', 13, 1),
(13, '2020-06-29 15:36:51.324062', '4', 'Almanca', 1, '[{\"added\": {}}]', 13, 1),
(14, '2020-06-29 15:41:00.018876', '1', 'Global', 1, '[{\"added\": {}}]', 14, 1),
(15, '2020-06-29 15:41:44.136654', '2', 'Türkiye', 1, '[{\"added\": {}}]', 14, 1),
(16, '2020-07-11 14:11:50.747962', '1', 'asdasd', 1, '[{\"added\": {}}]', 15, 1),
(17, '2020-07-11 14:11:58.918664', '1', 'asdasd', 2, '[]', 15, 1),
(18, '2020-07-11 14:12:06.627564', '1', 'asdasd', 2, '[]', 15, 1),
(19, '2020-07-11 15:24:36.702220', '4', 'google.com', 3, '', 18, 1),
(20, '2020-07-11 15:24:36.703852', '3', 'google.com', 3, '', 18, 1),
(21, '2020-07-11 15:24:36.704935', '2', 'google.com', 3, '', 18, 1),
(22, '2020-07-11 15:24:36.705918', '1', 'google.com', 3, '', 18, 1),
(23, '2020-07-11 15:41:40.837712', '1', 'google', 1, '[{\"added\": {}}]', 22, 1),
(24, '2020-07-11 15:41:47.074186', '2', 'yandex', 1, '[{\"added\": {}}]', 22, 1),
(25, '2020-07-11 15:42:02.107773', '2', 'YANDEX', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 22, 1),
(26, '2020-07-11 15:42:06.374084', '1', 'GOOGLE', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 22, 1),
(27, '2020-07-11 15:42:36.330527', '1', 'özel konum', 1, '[{\"added\": {}}]', 19, 1),
(28, '2020-07-11 15:42:51.015794', '1', 'Mobile / Android', 1, '[{\"added\": {}}]', 21, 1),
(29, '2020-07-11 15:43:00.794076', '2', 'Mobile / Ios', 1, '[{\"added\": {}}]', 21, 1),
(30, '2020-07-11 15:43:10.031568', '3', 'Tablet / Android', 1, '[{\"added\": {}}]', 21, 1),
(31, '2020-07-11 15:43:17.633366', '4', 'Tablet / Ios', 1, '[{\"added\": {}}]', 21, 1),
(32, '2020-07-11 15:43:29.756502', '5', 'Desktop', 1, '[{\"added\": {}}]', 21, 1),
(33, '2020-07-11 15:44:07.526919', '16', 'aaa.com', 3, '', 17, 1),
(34, '2020-07-11 15:44:07.529256', '14', 'creaturco.com', 3, '', 17, 1),
(35, '2020-07-11 15:44:07.530901', '8', 'gooogle.com', 3, '', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'app', 'keywords'),
(11, 'app', 'searchlanguage'),
(10, 'app', 'searchlocationcauntry'),
(12, 'app', 'searchlocationcity'),
(9, 'app', 'searchrank'),
(7, 'app', 'sites'),
(18, 'app_serp', 'keyword'),
(13, 'app_serp', 'language'),
(15, 'app_serp', 'locationcity'),
(14, 'app_serp', 'locationcountry'),
(19, 'app_serp', 'locationprivate'),
(21, 'app_serp', 'platform'),
(16, 'app_serp', 'rank'),
(22, 'app_serp', 'searchengine'),
(17, 'app_serp', 'site'),
(20, 'app_serp', 'useragent'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-20 08:39:50.445329'),
(2, 'auth', '0001_initial', '2020-06-20 08:39:50.491192'),
(3, 'admin', '0001_initial', '2020-06-20 08:39:50.561553'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-20 08:39:50.583125'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-20 08:39:50.593933'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-06-20 08:39:50.625173'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-06-20 08:39:50.634115'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-06-20 08:39:50.648849'),
(9, 'auth', '0004_alter_user_username_opts', '2020-06-20 08:39:50.660155'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-06-20 08:39:50.675227'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-06-20 08:39:50.676775'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-20 08:39:50.689394'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-06-20 08:39:50.704375'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-20 08:39:50.717904'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-06-20 08:39:50.731374'),
(16, 'auth', '0011_update_proxy_permissions', '2020-06-20 08:39:50.743019'),
(17, 'sessions', '0001_initial', '2020-06-20 08:39:50.749459'),
(18, 'app', '0001_initial', '2020-06-20 19:43:40.427550'),
(19, 'app', '0002_auto_20200621_2014', '2020-06-21 17:14:46.190727'),
(20, 'app', '0003_sites_rank_time', '2020-06-29 06:58:58.354591'),
(21, 'app', '0004_auto_20200629_1128', '2020-06-29 08:28:14.928487'),
(22, 'app', '0005_rank_location', '2020-06-29 08:45:48.888878'),
(23, 'app', '0006_auto_20200629_1500', '2020-06-29 12:00:22.338047'),
(24, 'app', '0007_auto_20200629_1736', '2020-06-29 14:36:55.592810'),
(25, 'app_serp', '0001_initial', '2020-06-29 14:36:55.646814'),
(26, 'app_serp', '0002_auto_20200629_1800', '2020-06-29 15:00:06.987833'),
(27, 'app_serp', '0003_auto_20200711_1659', '2020-07-11 13:59:13.097519'),
(28, 'app_serp', '0004_auto_20200711_1736', '2020-07-11 14:36:39.545383'),
(29, 'app_serp', '0005_auto_20200711_1823', '2020-07-11 15:26:41.671224'),
(30, 'app_serp', '0006_searchengine', '2020-07-11 15:33:15.267954');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('kvxw0wx4q6o3q1opeowomftbej1lxnit', 'YjExMDdhZWI4MjhmNWM3ODYzODNlYzJmMTYwMzdjMzViM2QzOWM0Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODM3Yzc2YTgzNDc0ODhkMDUzODZlNGNlOGVhYjZjMjRjNzVhMDAyIn0=', '2020-07-04 20:03:38.018558'),
('lfj3izqf3hepywlpthadppte5r0vk6w7', 'MTlmMDA2YzRlN2RlMWVmOTEwZjIwZTFhM2U4Njg3MGRjYWYwZGE3OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNTVjOTMwY2ZhMmUwZmRkYjgzMDk0OTExZDYxYzZmMDc5NjRjYjNkIn0=', '2020-07-25 14:02:02.473711');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_serp_keyword`
--
ALTER TABLE `app_serp_keyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_serp_keyword_site_id_de37c4b4_fk_app_serp_site_id` (`site_id`),
  ADD KEY `app_serp_keyword_platform_id_65366fea_fk_app_serp_platform_id` (`platform_id`);

--
-- Indexes for table `app_serp_language`
--
ALTER TABLE `app_serp_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_serp_locationcity`
--
ALTER TABLE `app_serp_locationcity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_serp_locationcountry`
--
ALTER TABLE `app_serp_locationcountry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_serp_locationprivate`
--
ALTER TABLE `app_serp_locationprivate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_serp_platform`
--
ALTER TABLE `app_serp_platform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_serp_rank`
--
ALTER TABLE `app_serp_rank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_serp_searchrank_keyword_id_96d1b434_fk_app_serp_keyword_id` (`keyword_id`),
  ADD KEY `app_serp_searchrank_location_id_61ffa46b_fk_app_serp_` (`location_id`),
  ADD KEY `app_serp_rank_site_id_985d5a8e_fk_app_serp_site_id` (`site_id`);

--
-- Indexes for table `app_serp_searchengine`
--
ALTER TABLE `app_serp_searchengine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_serp_site`
--
ALTER TABLE `app_serp_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_serp_useragent`
--
ALTER TABLE `app_serp_useragent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_serp_useragent_platform_id_fb637e64_fk_app_serp_platform_id` (`platform_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_serp_keyword`
--
ALTER TABLE `app_serp_keyword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `app_serp_language`
--
ALTER TABLE `app_serp_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_serp_locationcity`
--
ALTER TABLE `app_serp_locationcity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_serp_locationcountry`
--
ALTER TABLE `app_serp_locationcountry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_serp_locationprivate`
--
ALTER TABLE `app_serp_locationprivate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_serp_platform`
--
ALTER TABLE `app_serp_platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app_serp_rank`
--
ALTER TABLE `app_serp_rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_serp_searchengine`
--
ALTER TABLE `app_serp_searchengine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_serp_site`
--
ALTER TABLE `app_serp_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app_serp_useragent`
--
ALTER TABLE `app_serp_useragent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_serp_keyword`
--
ALTER TABLE `app_serp_keyword`
  ADD CONSTRAINT `app_serp_keyword_platform_id_65366fea_fk_app_serp_platform_id` FOREIGN KEY (`platform_id`) REFERENCES `app_serp_platform` (`id`),
  ADD CONSTRAINT `app_serp_keyword_site_id_de37c4b4_fk_app_serp_site_id` FOREIGN KEY (`site_id`) REFERENCES `app_serp_site` (`id`);

--
-- Constraints for table `app_serp_rank`
--
ALTER TABLE `app_serp_rank`
  ADD CONSTRAINT `app_serp_rank_site_id_985d5a8e_fk_app_serp_site_id` FOREIGN KEY (`site_id`) REFERENCES `app_serp_site` (`id`),
  ADD CONSTRAINT `app_serp_searchrank_keyword_id_96d1b434_fk_app_serp_keyword_id` FOREIGN KEY (`keyword_id`) REFERENCES `app_serp_keyword` (`id`),
  ADD CONSTRAINT `app_serp_searchrank_location_id_61ffa46b_fk_app_serp_` FOREIGN KEY (`location_id`) REFERENCES `app_serp_locationcity` (`id`);

--
-- Constraints for table `app_serp_useragent`
--
ALTER TABLE `app_serp_useragent`
  ADD CONSTRAINT `app_serp_useragent_platform_id_fb637e64_fk_app_serp_platform_id` FOREIGN KEY (`platform_id`) REFERENCES `app_serp_platform` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
