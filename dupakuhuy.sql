-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2019 pada 01.13
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dupakuhuy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `responses` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci,
  `email_attachments` text COLLATE utf8_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-10-13 19:09:05', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(521, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logs/action-selected', 'Delete data 520,219,218,217,216,215,214,213,212,211,210,209,208,207,206 at Log User Access', '', 1, '2019-10-27 15:09:21', NULL),
(522, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/statistic_builder/edit-save/1', 'Update data Laporan at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>laporan</td><td></td></tr></tbody></table>', 1, '2019-10-27 15:21:34', NULL),
(523, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'codingbangets@gmail.com login with IP Address ::1', '', 2, '2019-10-28 09:19:11', NULL),
(524, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'codingbangets@gmail.com logout', '', 2, '2019-10-28 09:21:34', NULL),
(525, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-28 09:21:41', NULL),
(526, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-10-28 09:25:43', NULL),
(527, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'codingbangets@gmail.com login with IP Address ::1', '', 2, '2019-10-28 09:25:50', NULL),
(528, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'codingbangets@gmail.com logout', '', 2, '2019-10-28 09:59:28', NULL),
(529, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-28 09:59:34', NULL),
(530, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data Pengembangan Profesi at Menu Management', '', 1, '2019-10-28 10:01:36', NULL),
(531, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data Karya Tulis Bidang TI at Menu Management', '', 1, '2019-10-28 10:02:52', NULL),
(532, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/85', 'Update data Pengembangan Profesi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-10-28 10:08:05', NULL),
(533, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/86', 'Update data Karya Tulis Bidang TI at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Module</td></tr><tr><td>path</td><td>#</td><td>usulan_karyatulis_bidang_ti</td></tr><tr><td>parent_id</td><td>85</td><td></td></tr></tbody></table>', 1, '2019-10-28 10:08:28', NULL),
(534, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/87', 'Update data Penerjemah Buku at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>85</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-10-28 10:16:03', NULL),
(535, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data Petunjuk Teknis at Menu Management', '', 1, '2019-10-28 10:20:48', NULL),
(536, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/88', 'Update data Petunjuk Teknis at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-28 10:21:01', NULL),
(537, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data Pendukung Kegiatan Pranata at Menu Management', '', 1, '2019-10-28 10:32:05', NULL),
(538, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/89', 'Update data Pendukung Kegiatan Pranata at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>85</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-10-28 10:32:31', NULL),
(539, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data Implementasi Sistem Informasi at Menu Management', '', 1, '2019-10-28 11:13:14', NULL),
(540, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/90', 'Update data Implementasi Sistem Informasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-28 11:39:21', NULL),
(541, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data Implementasi Jaringan at Menu Management', '', 1, '2019-10-28 11:48:58', NULL),
(542, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data Implementasi Database at Menu Management', '', 1, '2019-10-28 11:49:24', NULL),
(543, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data Sistem Informasi Program Paket at Menu Management', '', 1, '2019-10-28 11:50:13', NULL),
(544, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/92', 'Update data Implementasi Database at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>90</td><td></td></tr></tbody></table>', 1, '2019-10-28 11:50:33', NULL),
(545, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/91', 'Update data Implementasi Jaringan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>90</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-10-28 11:50:43', NULL),
(546, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/93', 'Update data Sistem Informasi Program Paket at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>90</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-10-28 11:50:56', NULL),
(547, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-10-28 14:05:04', NULL),
(548, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'codingbangets@gmail.com login with IP Address ::1', '', 2, '2019-10-28 14:05:11', NULL),
(549, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/usulan_karyatulis_bidang_ti/add-save', 'Add New Data Aldianur at Karya Tulis', '', 2, '2019-10-28 14:20:08', NULL),
(550, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'codingbangets@gmail.com logout', '', 2, '2019-10-28 14:20:26', NULL),
(551, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-28 14:20:36', NULL),
(552, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-10-28 14:22:34', NULL),
(553, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'codingbangets@gmail.com login with IP Address ::1', '', 2, '2019-10-28 14:22:40', NULL),
(554, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'codingbangets@gmail.com logout', '', 2, '2019-10-28 14:37:39', NULL),
(555, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'codingbangets@gmail.com login with IP Address ::1', '', 2, '2019-10-28 14:40:22', NULL),
(556, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'codingbangets@gmail.com logout', '', 2, '2019-10-28 14:56:05', NULL),
(557, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-28 14:56:10', NULL),
(558, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-10-28 14:57:42', NULL),
(559, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'm.azhar.ma100@gmail.com login with IP Address ::1', '', 3, '2019-10-28 14:57:50', NULL),
(560, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'm.azhar.ma100@gmail.com logout', '', 3, '2019-10-28 15:05:27', NULL),
(561, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'm.azhar.ma100@gmail.com login with IP Address ::1', '', 3, '2019-10-28 15:05:30', NULL),
(562, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'm.azhar.ma100@gmail.com logout', '', 3, '2019-10-28 15:05:45', NULL),
(563, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-28 15:05:52', NULL),
(564, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/usulan_program_dasar/add-save', 'Add New Data Admin at Pemrogaman Dasar', '', 1, '2019-10-28 15:14:20', NULL),
(565, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'codingbangets@gmail.com login with IP Address ::1', '', 2, '2019-10-29 08:58:34', NULL),
(566, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/usulan_program_menengah/add-save', 'Add New Data Muhammad Azhar at Program Menengah', '', 2, '2019-10-29 08:59:50', NULL),
(567, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'codingbangets@gmail.com logout', '', 2, '2019-10-29 09:00:22', NULL),
(568, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'm.azhar.ma100@gmail.com login with IP Address ::1', '', 3, '2019-10-29 09:00:34', NULL),
(569, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'm.azhar.ma100@gmail.com logout', '', 3, '2019-10-29 09:14:52', NULL),
(570, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-29 09:14:59', NULL),
(571, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-10-29 09:16:38', NULL),
(572, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'codingbangets@gmail.com login with IP Address ::1', '', 2, '2019-10-29 09:16:45', NULL),
(573, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'codingbangets@gmail.com logout', '', 2, '2019-10-29 09:20:50', NULL),
(574, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-29 09:22:27', NULL),
(575, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-10-29 09:35:10', NULL),
(576, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'codingbangets@gmail.com login with IP Address ::1', '', 2, '2019-10-29 09:35:15', NULL),
(577, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'codingbangets@gmail.com logout', '', 2, '2019-10-29 09:36:09', NULL),
(578, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-29 09:36:14', NULL),
(579, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-30 09:02:12', NULL),
(580, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/22', 'Delete data Data Hasil Penilaian at Menu Management', '', 1, '2019-10-30 09:03:44', NULL),
(581, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/72', 'Delete data Data Operasi Komputer at Menu Management', '', 1, '2019-10-30 09:04:44', NULL),
(582, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/73', 'Delete data Data Perekaman Data at Menu Management', '', 1, '2019-10-30 09:04:56', NULL),
(583, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/15', 'Delete data Semua Data Yang Di Usulkan at Menu Management', '', 1, '2019-10-30 09:05:09', NULL),
(584, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/1', 'Update data Tambah Pegawai at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-10-30 09:17:03', NULL),
(585, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/23', 'Delete data Data Jabatan at Module Generator', '', 1, '2019-10-30 09:17:36', NULL),
(586, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/25', 'Delete data Data Pegawai at Module Generator', '', 1, '2019-10-30 09:17:47', NULL),
(587, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/12', 'Delete data Pegawai at Module Generator', '', 1, '2019-10-30 09:18:02', NULL),
(588, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/58', 'Delete data Tambah Pegawai at Module Generator', '', 1, '2019-10-30 09:20:13', NULL),
(589, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data Tambah Pegawai at Menu Management', '', 1, '2019-10-30 09:29:30', NULL),
(590, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/94', 'Update data Tambah Pegawai at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-30 09:29:41', NULL),
(591, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/tb_pegawai59/add-save', 'Add New Data Muhammad at Pegawai', '', 1, '2019-10-30 09:32:03', NULL),
(592, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/8', 'Update data Penilaian Usulan Kegiatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Controller & Method</td></tr><tr><td>path</td><td>AdminTbNilaiControllerGetIndex</td><td>AdminTbSertifikasiControllerGetIndex;AdminTbDiklatControllerGetIndex</td></tr><tr><td>parent_id</td><td>11</td><td></td></tr></tbody></table>', 1, '2019-10-30 10:39:44', NULL),
(593, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/8', 'Update data Penilaian Usulan Kegiatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Controller & Method</td><td>Route</td></tr><tr><td>path</td><td>AdminTbSertifikasiControllerGetIndex;AdminTbDiklatControllerGetIndex</td><td>AdminTbSertifikasiControllerGetIndex,AdminTbDiklatControllerGetIndex</td></tr><tr><td>parent_id</td><td>11</td><td></td></tr></tbody></table>', 1, '2019-10-30 10:40:22', NULL),
(594, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/8', 'Update data Penilaian Usulan Kegiatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminTbSertifikasiControllerGetIndex,AdminTbDiklatControllerGetIndex</td><td>tb_nilai</td></tr><tr><td>parent_id</td><td>11</td><td></td></tr></tbody></table>', 1, '2019-10-30 10:41:28', NULL),
(595, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/42', 'Delete data Pemasangan Dan Pemeliharaan at Menu Management', '', 1, '2019-10-30 10:53:59', NULL),
(596, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/13', 'Delete data Pengoperasian Komputer at Menu Management', '', 1, '2019-10-30 10:54:11', NULL),
(597, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/34', 'Delete data Perekaman Data at Menu Management', '', 1, '2019-10-30 10:54:18', NULL),
(598, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data UNSUR UTAMA at Menu Management', '', 1, '2019-10-30 10:55:23', NULL),
(599, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/86', 'Delete data Karya Tulis Bidang TI at Menu Management', '', 1, '2019-10-30 10:56:02', NULL),
(600, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/64', 'Delete data Penilaian Unsur Pendidikan at Menu Management', '', 1, '2019-10-30 10:56:17', NULL),
(601, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/59', 'Delete data Penilaiaan Implementasi TI at Menu Management', '', 1, '2019-10-30 10:56:26', NULL),
(602, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/55', 'Delete data Penilaian Operasi TI at Menu Management', '', 1, '2019-10-30 10:56:37', NULL),
(603, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/47', 'Update data Implementasi Teknologi Informasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Implementasi TI</td><td>Implementasi Teknologi Informasi</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-10-30 10:58:05', NULL),
(604, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/46', 'Delete data Pemrograman Dasar at Menu Management', '', 1, '2019-10-30 10:58:12', NULL),
(605, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/48', 'Delete data Pemrograman Menengah at Menu Management', '', 1, '2019-10-30 10:58:20', NULL),
(606, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/49', 'Delete data Program Lanjutan at Menu Management', '', 1, '2019-10-30 10:58:29', NULL),
(607, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/50', 'Delete data Penerapan Sistem Operasi at Menu Management', '', 1, '2019-10-30 10:58:38', NULL),
(608, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/87', 'Delete data Penerjemah Buku at Menu Management', '', 1, '2019-10-30 10:59:14', NULL),
(609, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/88', 'Delete data Petunjuk Teknis at Menu Management', '', 1, '2019-10-30 10:59:23', NULL),
(610, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/89', 'Delete data Pendukung Kegiatan Pranata at Menu Management', '', 1, '2019-10-30 10:59:34', NULL),
(611, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/25', 'Delete data Usulan Pendidikan Sekolah at Menu Management', '', 1, '2019-10-30 10:59:55', NULL),
(612, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/28', 'Delete data Usulan Sertifikasi Profesi at Menu Management', '', 1, '2019-10-30 11:00:02', NULL),
(613, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/delete/27', 'Delete data Usulan Pelatihan Diklat at Menu Management', '', 1, '2019-10-30 11:00:10', NULL),
(614, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/24', 'Update data Pendidikan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Unsur Pendidikan</td><td>Pendidikan</td></tr><tr><td>parent_id</td><td>95</td><td></td></tr></tbody></table>', 1, '2019-10-30 11:00:28', NULL),
(615, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data PENUNJANG at Menu Management', '', 1, '2019-10-30 11:02:02', NULL),
(616, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/95', 'Update data UNSUR UTAMA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-10-30 11:02:23', NULL),
(617, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/96', 'Update data PENUNJANG at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-10-30 11:02:36', NULL),
(618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/add-save', 'Add New Data Penunjang Tugas Prakom at Menu Management', '', 1, '2019-10-30 11:03:23', NULL),
(619, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/97', 'Update data Penunjang Tugas Prakom at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-30 11:03:39', NULL),
(620, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/43', 'Delete data Nilai Operasi Komputer at Module Generator', '', 1, '2019-10-30 11:39:17', NULL),
(621, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/26', 'Delete data Data Penilaian at Module Generator', '', 1, '2019-10-30 11:39:25', NULL),
(622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/24', 'Delete data Data Usulan at Module Generator', '', 1, '2019-10-30 11:39:32', NULL),
(623, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/39', 'Delete data Nilai Diklat at Module Generator', '', 1, '2019-10-30 11:39:44', NULL),
(624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/45', 'Delete data Nilai Pemasangan Pemeliharaan at Module Generator', '', 1, '2019-10-30 11:40:01', NULL),
(625, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/48', 'Delete data Nilai Program Dasar at Module Generator', '', 1, '2019-10-30 11:40:10', NULL),
(626, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/42', 'Delete data Nilai Sekolah at Module Generator', '', 1, '2019-10-30 11:40:19', NULL),
(627, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/47', 'Delete data Nilai Penerapan SO at Module Generator', '', 1, '2019-10-30 11:40:28', NULL),
(628, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/50', 'Delete data Nilai Program Menengah at Module Generator', '', 1, '2019-10-30 11:40:44', NULL),
(629, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/49', 'Delete data Nilai Program Lanjutan at Module Generator', '', 1, '2019-10-30 11:40:51', NULL),
(630, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/44', 'Delete data Nilai Perkaman Data at Module Generator', '', 1, '2019-10-30 11:40:58', NULL),
(631, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/40', 'Delete data Nilai Sertifikasi at Module Generator', '', 1, '2019-10-30 11:41:06', NULL),
(632, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/34', 'Delete data Pemasangan Dan Pemeliharaan Sistem Komputer at Module Generator', '', 1, '2019-10-30 11:41:16', NULL),
(633, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/33', 'Delete data Perekaman Data at Module Generator', '', 1, '2019-10-30 11:41:24', NULL),
(634, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/54', 'Delete data Pendukung Kegiatan at Module Generator', '', 1, '2019-10-30 11:41:33', NULL),
(635, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/37', 'Delete data Program Lanjutan at Module Generator', '', 1, '2019-10-30 11:41:45', NULL),
(636, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/31', 'Delete data Penggandaan Data at Module Generator', '', 1, '2019-10-30 11:41:55', NULL),
(637, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/module_generator/delete/36', 'Delete data Program Menengah at Module Generator', '', 1, '2019-10-30 11:42:13', NULL),
(638, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/47', 'Update data Implementasi Teknologi Informasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Module</td></tr><tr><td>path</td><td>#</td><td>usulan_impelementasi_ti</td></tr><tr><td>parent_id</td><td>95</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-10-30 11:47:02', NULL),
(639, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-10-30 11:47:16', NULL),
(640, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'codingbangets@gmail.com login with IP Address ::1', '', 2, '2019-10-30 11:47:23', NULL),
(641, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/usulan_impelementasi_ti', 'Try view the data :name at Implementasi Teknologi Informasi', '', 2, '2019-10-30 11:47:30', NULL),
(642, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'codingbangets@gmail.com logout', '', 2, '2019-10-30 11:47:38', NULL),
(643, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-30 11:47:47', NULL),
(644, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-10-30 11:48:32', NULL),
(645, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'codingbangets@gmail.com login with IP Address ::1', '', 2, '2019-10-30 11:48:37', NULL),
(646, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'codingbangets@gmail.com logout', '', 2, '2019-10-30 11:49:08', NULL),
(647, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-30 11:49:14', NULL),
(648, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/95', 'Update data UNSUR UTAMA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-10-30 11:49:57', NULL),
(649, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/90', 'Update data Implementasi Sistem Informasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-10-30 11:52:46', NULL),
(650, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/96', 'Update data PENUNJANG at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-10-30 11:53:58', NULL),
(651, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/menu_management/edit-save/97', 'Update data Penunjang Tugas Prakom at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>96</td><td></td></tr></tbody></table>', 1, '2019-10-30 11:54:14', NULL),
(652, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-30 14:23:04', NULL),
(653, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-30 14:59:33', NULL),
(654, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-30 14:59:35', NULL),
(655, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-10-30 15:00:57', NULL),
(656, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-30 15:01:01', NULL),
(657, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-10-30 15:03:07', NULL),
(658, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-30 15:03:34', NULL),
(659, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuhuy/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-30 15:10:53', NULL),
(660, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost/dupakuh/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-10-30 15:17:38', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(8, 'Penilaian Usulan Kegiatan', 'Module', 'tb_nilai', 'normal', 'fa fa-calculator', 11, 1, 0, 1, 1, '2019-10-13 23:23:18', '2019-10-30 10:41:27'),
(11, 'Tim Penilai', 'URL', '#', 'normal', 'fa fa-user-secret', 0, 1, 0, 1, 6, '2019-10-14 00:28:28', '2019-10-16 09:37:19'),
(24, 'Pendidikan', 'URL', '#', 'normal', 'fa fa-graduation-cap', 95, 1, 0, 1, 1, '2019-10-20 14:36:09', '2019-10-30 11:00:28'),
(47, 'Implementasi Teknologi Informasi', 'Module', 'usulan_impelementasi_ti', 'normal', 'fa fa-codiepie', 95, 1, 0, 1, 3, '2019-10-23 10:17:33', '2019-10-30 11:47:01'),
(51, 'Operasi Teknologi Informasi ', 'URL', '#', 'normal', 'fa fa-database', 95, 1, 0, 1, 2, '2019-10-23 12:02:29', '2019-10-23 12:02:42'),
(52, 'Pendidikan', 'Route', 'AdminTbPendidikan17ControllerGetIndex', 'normal', 'fa fa-university', 54, 1, 0, 1, 1, '2019-10-23 13:51:30', '2019-10-23 13:51:45'),
(53, 'Jabatan', 'Route', 'AdminTbJabatanControllerGetIndex', 'normal', 'fa fa-xing', 54, 1, 0, 1, 2, '2019-10-23 13:56:04', '2019-10-23 13:56:45'),
(54, 'Admin Area', 'URL', '#', 'normal', 'fa fa-user', 0, 1, 0, 1, 5, '2019-10-23 13:58:05', '2019-10-23 13:58:23'),
(85, 'Pengembangan Profesi', 'URL', '#', 'normal', 'fa fa-spinner', 95, 1, 0, 1, 4, '2019-10-28 10:01:36', '2019-10-28 10:08:05'),
(90, 'Implementasi Sistem Informasi', 'URL', '#', 'normal', 'fa fa-desktop', 0, 1, 0, 1, 4, '2019-10-28 11:13:14', '2019-10-30 11:52:46'),
(91, 'Implementasi Jaringan', 'Module', 'usulan_implementasi_jaringan', 'normal', 'fa fa-signal', 90, 1, 0, 1, 2, '2019-10-28 11:48:58', '2019-10-28 11:50:43'),
(92, 'Implementasi Database', 'Module', 'usulan_implementasi_databas', 'normal', 'fa fa-database', 90, 1, 0, 1, 1, '2019-10-28 11:49:23', '2019-10-28 11:50:33'),
(93, 'Sistem Informasi Program Paket', 'Module', 'usulan_si_program_paket', 'normal', 'fa fa-file-excel-o', 90, 1, 0, 1, 3, '2019-10-28 11:50:13', '2019-10-28 11:50:55'),
(94, 'Tambah Pegawai', 'Module', 'tb_pegawai59', 'normal', 'fa fa-user', 0, 1, 0, 1, 3, '2019-10-30 09:29:29', '2019-10-30 09:29:41'),
(95, 'UNSUR UTAMA', 'URL', '#', 'normal', 'fa fa-trophy', 0, 1, 0, 1, 1, '2019-10-30 10:55:22', '2019-10-30 11:49:57'),
(96, 'PENUNJANG', 'URL', '#', 'normal', 'fa fa-github-alt', 0, 1, 0, 1, 2, '2019-10-30 11:02:02', '2019-10-30 11:53:58'),
(97, 'Penunjang Tugas Prakom', 'URL', '#', 'normal', 'fa fa-desktop', 96, 1, 0, 1, 1, '2019-10-30 11:03:23', '2019-10-30 11:54:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(2, 2, 1),
(3, 3, 1),
(7, 6, 1),
(16, 9, 1),
(17, 10, 1),
(44, 11, 1),
(45, 11, 3),
(59, 7, 1),
(60, 7, 2),
(61, 7, 3),
(62, 5, 1),
(63, 5, 2),
(76, 16, 1),
(77, 16, 2),
(78, 16, 3),
(82, 19, 1),
(83, 19, 2),
(84, 19, 3),
(85, 18, 1),
(86, 18, 2),
(87, 18, 3),
(93, 20, 1),
(94, 20, 2),
(97, 21, 1),
(98, 21, 2),
(126, 26, 1),
(161, 17, 1),
(162, 17, 3),
(175, 25, 1),
(176, 25, 2),
(177, 28, 1),
(178, 28, 2),
(179, 27, 1),
(180, 27, 2),
(190, 15, 1),
(191, 15, 3),
(194, 29, 1),
(195, 29, 3),
(196, 30, 1),
(197, 30, 3),
(198, 14, 1),
(200, 23, 1),
(201, 23, 2),
(217, 33, 1),
(218, 33, 2),
(219, 12, 1),
(220, 12, 2),
(221, 32, 1),
(222, 32, 2),
(229, 35, 1),
(230, 35, 2),
(233, 36, 1),
(234, 36, 2),
(241, 38, 1),
(242, 38, 2),
(245, 39, 1),
(246, 39, 2),
(247, 37, 1),
(248, 37, 2),
(251, 40, 1),
(252, 40, 2),
(257, 41, 1),
(258, 41, 2),
(266, 43, 1),
(267, 43, 2),
(270, 44, 1),
(271, 44, 2),
(274, 45, 1),
(275, 45, 2),
(278, 46, 1),
(279, 46, 2),
(290, 48, 1),
(291, 48, 2),
(293, 49, 1),
(294, 49, 2),
(300, 51, 1),
(301, 51, 2),
(306, 42, 1),
(307, 42, 2),
(308, 34, 1),
(309, 34, 2),
(312, 13, 1),
(313, 13, 2),
(316, 52, 1),
(320, 53, 1),
(323, 54, 1),
(326, 31, 1),
(327, 31, 3),
(348, 59, 1),
(349, 59, 3),
(372, 64, 1),
(373, 64, 3),
(384, 56, 1),
(385, 56, 3),
(388, 65, 1),
(389, 65, 3),
(390, 66, 1),
(391, 66, 3),
(392, 67, 1),
(393, 67, 3),
(394, 57, 1),
(395, 57, 3),
(396, 58, 1),
(397, 58, 3),
(398, 60, 1),
(399, 60, 3),
(400, 61, 1),
(401, 61, 3),
(402, 62, 1),
(403, 62, 3),
(406, 50, 1),
(407, 50, 2),
(408, 63, 1),
(409, 63, 3),
(418, 68, 1),
(419, 68, 3),
(420, 69, 1),
(421, 69, 3),
(422, 70, 1),
(423, 70, 3),
(424, 71, 1),
(425, 71, 3),
(432, 72, 1),
(433, 72, 3),
(434, 73, 1),
(435, 73, 3),
(436, 74, 1),
(437, 74, 3),
(438, 22, 1),
(439, 22, 2),
(448, 75, 1),
(449, 75, 2),
(450, 76, 1),
(451, 76, 2),
(452, 77, 1),
(453, 77, 2),
(454, 78, 1),
(455, 78, 2),
(456, 55, 1),
(457, 55, 3),
(470, 79, 1),
(471, 79, 2),
(472, 80, 1),
(473, 80, 2),
(474, 81, 1),
(475, 81, 2),
(476, 82, 1),
(477, 82, 2),
(478, 83, 1),
(479, 83, 2),
(480, 84, 1),
(481, 84, 2),
(486, 85, 1),
(487, 85, 2),
(488, 86, 1),
(489, 86, 2),
(491, 87, 1),
(492, 87, 2),
(495, 88, 1),
(496, 88, 2),
(499, 89, 1),
(500, 89, 2),
(511, 92, 1),
(512, 92, 2),
(513, 91, 1),
(514, 91, 2),
(515, 93, 1),
(516, 93, 2),
(517, 1, 1),
(520, 94, 1),
(525, 8, 1),
(526, 8, 3),
(531, 24, 1),
(532, 24, 2),
(537, NULL, 1),
(538, NULL, 3),
(540, 47, 1),
(541, 47, 2),
(542, 95, 1),
(543, 95, 2),
(544, 90, 1),
(545, 90, 2),
(546, 96, 1),
(547, 96, 2),
(548, 97, 1),
(549, 97, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-10-13 19:09:04', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-10-13 19:09:04', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-10-13 19:09:04', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-10-13 19:09:04', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-10-13 19:09:04', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-10-13 19:09:04', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-10-13 19:09:04', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-10-13 19:09:04', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-10-13 19:09:04', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-10-13 19:09:04', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-10-13 19:09:04', NULL, NULL),
(12, 'Pegawai', 'fa fa-percent', 'pegawai', 'tb_pegawai', 'AdminTbPegawaiController', 0, 0, '2019-10-13 22:10:40', NULL, '2019-10-30 09:18:02'),
(13, 'Pendidikan', 'fa fa-certificate', 'tb_pendidikan', 'tb_pendidikan', 'AdminTbPendidikanController', 0, 0, '2019-10-13 22:20:17', NULL, '2019-10-13 22:21:44'),
(14, 'Pendidikan', 'fa fa-university', 'tb_pendidikan14', 'tb_pendidikan', 'AdminTbPendidikan14Controller', 0, 0, '2019-10-13 22:22:35', NULL, '2019-10-13 22:36:15'),
(15, 'Jabatan', 'fa fa-level-up', 'jabatan', 'tb_jabatan', 'AdminTbJabatanController', 0, 0, '2019-10-13 22:34:14', NULL, NULL),
(16, 'Pendidikan', 'fa fa-university', 'tb_pendidikan16', 'tb_pendidikan', 'AdminTbPendidikan16Controller', 0, 0, '2019-10-13 22:35:22', NULL, '2019-10-13 22:36:27'),
(17, 'Pendidikan', 'fa fa-university', 'pendidikan', 'tb_pendidikan', 'AdminTbPendidikan17Controller', 0, 0, '2019-10-13 22:39:55', NULL, NULL),
(18, 'Penilaian', 'fa fa-envelope-o', 'nilai', 'tb_nilai', 'AdminTbNilaiController', 0, 0, '2019-10-13 23:23:18', NULL, NULL),
(19, 'Laporan', 'fa fa-print', 'tb_laporan', 'tb_laporan', 'AdminTbLaporanController', 0, 0, '2019-10-14 00:10:01', NULL, '2019-10-14 00:22:34'),
(20, 'Laporan', 'fa fa-print', 'tb_laporan01', 'tb_laporan', 'AdminTbLaporan20Controller', 0, 0, '2019-10-14 00:24:46', NULL, '2019-10-14 01:04:51'),
(21, 'Tambah Pegawai', 'fa fa-plus-circle', 'tb_pegawai21', 'tb_pegawai', 'AdminTbPegawai21Controller', 0, 0, '2019-10-14 00:28:27', NULL, '2019-10-15 14:27:16'),
(22, 'Kirim Usulan', 'fa fa-send', 'laporan', 'tb_laporan', 'AdminTbLaporan22Controller', 0, 0, '2019-10-14 01:05:40', NULL, NULL),
(23, 'Data Jabatan', 'fa fa-info', 'tb_jabatan', 'tb_jabatan', 'AdminTbJabatan1Controller', 0, 0, '2019-10-16 10:11:48', NULL, '2019-10-30 09:17:36'),
(24, 'Data Usulan', 'fa fa-info', 'tb_laporan24', 'tb_laporan', 'AdminTbLaporan24Controller', 0, 0, '2019-10-16 10:13:07', NULL, '2019-10-30 11:39:32'),
(25, 'Data Pegawai', 'fa fa-bold', 'tb_pegawai', 'tb_pegawai', 'AdminTbPegawai1Controller', 0, 0, '2019-10-16 10:14:44', NULL, '2019-10-30 09:17:47'),
(26, 'Data Penilaian', 'fa fa-book', 'tb_nilai', 'tb_nilai', 'AdminTbNilai1Controller', 0, 0, '2019-10-16 10:16:13', NULL, '2019-10-30 11:39:25'),
(27, 'Hasil', 'fa fa-info', 'tb_nilai27', 'tb_nilai', 'AdminTbNilai27Controller', 0, 0, '2019-10-20 14:21:00', NULL, '2019-10-22 10:32:22'),
(28, 'Pendidikan Sekolah', 'fa fa-envelope-o', 'tb_sekolah', 'tb_sekolah', 'AdminTbSekolahController', 0, 0, '2019-10-20 15:04:50', NULL, NULL),
(29, 'Pelatihan Diklat', 'fa fa-glass', 'tb_diklat', 'tb_diklat', 'AdminTbDiklatController', 0, 0, '2019-10-20 15:09:58', NULL, NULL),
(30, 'Sertifikasi Profesi', 'fa fa-glass', 'tb_setifikasi', 'tb_setifikasi', 'AdminTbSetifikasiController', 0, 0, '2019-10-20 15:16:52', NULL, NULL),
(31, 'Penggandaan Data', 'fa fa-glass', 'lap_penggandaan_data', 'lap_penggandaan_data', 'AdminLapPenggandaanDataController', 0, 0, '2019-10-22 10:08:31', NULL, '2019-10-30 11:41:55'),
(32, 'Usulan Pengoperasian  Komputer', 'fa fa-laptop', 'usulan_pengoperasi_komputer39', 'usulan_pengoperasi_komputer', 'AdminUsulanPengoperasiKomputerController', 0, 0, '2019-10-22 11:35:00', NULL, NULL),
(33, 'Perekaman Data', 'fa fa-send-o', 'usulan_perekaman_data39', 'usulan_perekaman_data', 'AdminUsulanPerekamanDataController', 0, 0, '2019-10-22 11:51:57', NULL, '2019-10-30 11:41:24'),
(34, 'Pemasangan Dan Pemeliharaan Sistem Komputer', 'fa fa-send-o', 'usulan_pemasangan_pemeliharaan', 'usulan_pemasangan_pemeliharaan', 'AdminUsulanPemasanganPemeliharaanController', 0, 0, '2019-10-22 13:34:17', NULL, '2019-10-30 11:41:16'),
(35, 'Pemrogaman Dasar', 'fa fa-laptop', 'usulan_program_dasar', 'usulan_program_dasar', 'AdminUsulanProgramDasarController', 0, 0, '2019-10-22 14:55:49', NULL, NULL),
(36, 'Program Menengah', 'fa fa-send-o', 'usulan_program_menengah', 'usulan_program_menengah', 'AdminUsulanProgramMenengahController', 0, 0, '2019-10-23 10:42:32', NULL, '2019-10-30 11:42:13'),
(37, 'Program Lanjutan', 'fa fa-send-o', 'usulan_program_lanjutan', 'usulan_program_lanjutan', 'AdminUsulanProgramLanjutanController', 0, 0, '2019-10-23 11:27:55', NULL, '2019-10-30 11:41:45'),
(38, 'Penerapan Sistem Operasi', 'fa fa-send-o', 'usulan_penerapan_sistem_operasi', 'usulan_penerapan_sistem_operasi', 'AdminUsulanPenerapanSistemOperasiController', 0, 0, '2019-10-23 11:50:02', NULL, NULL),
(39, 'Nilai Diklat', 'fa fa-calculator', 'nilai_diklat', 'nilai_diklat', 'AdminNilaiDiklatController', 0, 0, '2019-10-27 09:56:37', NULL, '2019-10-30 11:39:44'),
(40, 'Nilai Sertifikasi', 'fa fa-calculator', 'nilai_sertifikasi', 'nilai_sertifikasi', 'AdminNilaiSertifikasiController', 0, 0, '2019-10-27 09:58:57', NULL, '2019-10-30 11:41:06'),
(41, 'Nilai Sekolah', 'fa fa-calculator', 'nilai_sekolah', 'nilai_sekolah', 'AdminTbSekolah41Controller', 0, 0, '2019-10-27 10:00:43', NULL, '2019-10-27 10:14:29'),
(42, 'Nilai Sekolah', 'fa fa-calculator', 'nilai_sekolah42', 'nilai_sekolah', 'AdminNilaiSekolah42Controller', 0, 0, '2019-10-27 10:02:51', NULL, '2019-10-30 11:40:19'),
(43, 'Nilai Operasi Komputer', 'fa fa-calculator', 'nilai_operasi_komputer', 'nilai_operasi_komputer', 'AdminNilaiOperasiKomputerController', 0, 0, '2019-10-27 10:05:29', NULL, '2019-10-30 11:39:17'),
(44, 'Nilai Perkaman Data', 'fa fa-calculator', 'nilai_perekaman_data', 'nilai_perekaman_data', 'AdminNilaiPerekamanDataController', 0, 0, '2019-10-27 10:09:17', NULL, '2019-10-30 11:40:58'),
(45, 'Nilai Pemasangan Pemeliharaan', 'fa fa-calculator', 'nilai_pemasangan_pemeliharaan', 'nilai_pemasangan_pemeliharaan', 'AdminNilaiPemasanganPemeliharaanController', 0, 0, '2019-10-27 10:11:16', NULL, '2019-10-30 11:40:01'),
(46, 'Penilaian Sekolah', 'fa fa-calculator', 'nilai_sekolah46', 'nilai_sekolah', 'AdminNilaiSekolah46Controller', 0, 0, '2019-10-27 10:17:53', NULL, NULL),
(47, 'Nilai Penerapan SO', 'fa fa-calculator', 'nilai_penerapan_s_o', 'nilai_penerapan_s_o', 'AdminNilaiPenerapanSOController', 0, 0, '2019-10-27 10:31:00', NULL, '2019-10-30 11:40:28'),
(48, 'Nilai Program Dasar', 'fa fa-calculator', 'nilai_program_dasar', 'nilai_program_dasar', 'AdminNilaiProgramDasarController', 0, 0, '2019-10-27 10:33:27', NULL, '2019-10-30 11:40:10'),
(49, 'Nilai Program Lanjutan', 'fa fa-calculator', 'nilai_program_lanjutan', 'nilai_program_lanjutan', 'AdminNilaiProgramLanjutanController', 0, 0, '2019-10-27 10:35:36', NULL, '2019-10-30 11:40:51'),
(50, 'Nilai Program Menengah', 'fa fa-calculator', 'nilai_program_menengah', 'nilai_program_menengah', 'AdminNilaiProgramMenengahController', 0, 0, '2019-10-27 10:41:24', NULL, '2019-10-30 11:40:44'),
(51, 'Karya Tulis', 'fa fa-newspaper-o', 'usulan_karyatulis_bidang_ti', 'usulan_karyatulis_bidang_ti', 'AdminUsulanKaryatulisBidangTiController', 0, 0, '2019-10-28 10:03:34', NULL, NULL),
(52, 'Penerjemah Buku', 'fa fa-book', 'usulan_penerjemah_buku_ti', 'usulan_penerjemah_buku_ti', 'AdminUsulanPenerjemahBukuTiController', 0, 0, '2019-10-28 10:10:43', NULL, NULL),
(53, 'Petunjuk Teknis', 'fa fa-pencil', 'usulan_penyusun_petunjuk_teknis_ti', 'usulan_penyusun_petunjuk_teknis_ti', 'AdminUsulanPenyusunPetunjukTeknisTiController', 0, 0, '2019-10-28 10:19:22', NULL, NULL),
(54, 'Pendukung Kegiatan', 'fa fa-code-fork', 'usulan_pendukung_kegiatan', 'usulan_pendukung_kegiatan', 'AdminUsulanPendukungKegiatanController', 0, 0, '2019-10-28 10:29:33', NULL, '2019-10-30 11:41:33'),
(55, 'Implementasi Database', 'fa fa-database', 'usulan_implementasi_databas', 'usulan_implementasi_databas', 'AdminUsulanImplementasiDatabasController', 0, 0, '2019-10-28 11:39:57', NULL, NULL),
(56, 'Implementasi Jaringan', 'fa fa-signal', 'usulan_implementasi_jaringan', 'usulan_implementasi_jaringan', 'AdminUsulanImplementasiJaringanController', 0, 0, '2019-10-28 11:41:59', NULL, NULL),
(57, 'Sistem Informasi Program Paket', 'fa fa-file-excel-o', 'usulan_si_program_paket', 'usulan_si_program_paket', 'AdminUsulanSiProgramPaketController', 0, 0, '2019-10-28 11:45:44', NULL, NULL),
(58, 'Tambah Pegawai', 'fa fa-user', 'tb_pegawai58', 'tb_pegawai', 'AdminTbPegawai58Controller', 0, 0, '2019-10-30 09:18:55', NULL, '2019-10-30 09:20:13'),
(59, 'Pegawai', 'fa fa-user', 'tb_pegawai59', 'tb_pegawai', 'AdminTbPegawai59Controller', 0, 0, '2019-10-30 09:22:39', NULL, NULL),
(60, 'Implementasi Teknologi Informasi', 'fa fa-desktop', 'usulan_impelementasi_ti', 'usulan_impelementasi_ti', 'AdminUsulanImpelementasiTiController', 0, 0, '2019-10-30 11:43:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 'skin-blue', '2019-10-13 19:09:04', NULL),
(2, 'Pengirim', 0, 'skin-blue', NULL, NULL),
(3, 'Penilai', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(245, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(246, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(247, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(248, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(249, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(250, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(251, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(252, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(253, 1, 1, 1, 1, 1, 1, 34, NULL, NULL),
(254, 1, 1, 1, 1, 1, 1, 35, NULL, NULL),
(255, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(256, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(257, 1, 1, 1, 1, 1, 1, 38, NULL, NULL),
(258, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(259, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(260, 1, 1, 1, 1, 1, 1, 33, NULL, NULL),
(261, 1, 1, 1, 1, 1, 1, 37, NULL, NULL),
(262, 1, 1, 1, 1, 1, 1, 36, NULL, NULL),
(263, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(264, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(265, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(279, 1, 1, 1, 1, 1, 1, 39, NULL, NULL),
(280, 1, 1, 1, 1, 1, 1, 40, NULL, NULL),
(281, 1, 1, 1, 1, 1, 1, 41, NULL, NULL),
(282, 1, 1, 1, 1, 1, 1, 42, NULL, NULL),
(283, 1, 1, 1, 1, 1, 1, 43, NULL, NULL),
(284, 1, 1, 1, 1, 1, 1, 44, NULL, NULL),
(285, 1, 1, 1, 1, 1, 1, 45, NULL, NULL),
(286, 1, 1, 1, 1, 1, 1, 46, NULL, NULL),
(287, 1, 1, 1, 1, 1, 1, 47, NULL, NULL),
(288, 1, 1, 1, 1, 1, 1, 48, NULL, NULL),
(289, 1, 1, 1, 1, 1, 1, 49, NULL, NULL),
(290, 1, 1, 1, 1, 1, 1, 50, NULL, NULL),
(353, 1, 1, 1, 1, 1, 1, 51, NULL, NULL),
(354, 1, 1, 1, 1, 1, 1, 52, NULL, NULL),
(355, 1, 1, 1, 1, 1, 1, 53, NULL, NULL),
(356, 1, 1, 1, 1, 1, 1, 54, NULL, NULL),
(427, 1, 1, 1, 1, 1, 1, 55, NULL, NULL),
(428, 1, 1, 1, 1, 1, 1, 56, NULL, NULL),
(429, 1, 1, 1, 1, 1, 1, 57, NULL, NULL),
(468, 1, 0, 1, 0, 0, 3, 23, NULL, NULL),
(469, 1, 0, 1, 0, 0, 3, 25, NULL, NULL),
(470, 1, 0, 1, 0, 0, 3, 26, NULL, NULL),
(471, 1, 0, 1, 0, 0, 3, 24, NULL, NULL),
(472, 1, 0, 1, 0, 0, 3, 55, NULL, NULL),
(473, 1, 0, 1, 0, 0, 3, 56, NULL, NULL),
(474, 1, 0, 1, 0, 0, 3, 15, NULL, NULL),
(475, 1, 0, 1, 0, 0, 3, 51, NULL, NULL),
(476, 1, 0, 1, 0, 0, 3, 22, NULL, NULL),
(477, 1, 1, 1, 1, 1, 3, 39, NULL, NULL),
(478, 1, 1, 1, 1, 1, 3, 43, NULL, NULL),
(479, 1, 1, 1, 1, 1, 3, 45, NULL, NULL),
(480, 1, 1, 1, 1, 1, 3, 47, NULL, NULL),
(481, 1, 1, 1, 1, 1, 3, 44, NULL, NULL),
(482, 1, 1, 1, 1, 1, 3, 48, NULL, NULL),
(483, 1, 1, 1, 1, 1, 3, 49, NULL, NULL),
(484, 1, 1, 1, 1, 1, 3, 50, NULL, NULL),
(485, 1, 1, 1, 1, 1, 3, 42, NULL, NULL),
(486, 1, 1, 1, 1, 1, 3, 40, NULL, NULL),
(487, 1, 0, 1, 0, 0, 3, 12, NULL, NULL),
(488, 1, 0, 1, 0, 0, 3, 29, NULL, NULL),
(489, 1, 0, 1, 0, 0, 3, 34, NULL, NULL),
(490, 1, 0, 1, 0, 0, 3, 35, NULL, NULL),
(491, 1, 0, 1, 0, 0, 3, 17, NULL, NULL),
(492, 1, 0, 1, 0, 0, 3, 28, NULL, NULL),
(493, 1, 0, 1, 0, 0, 3, 54, NULL, NULL),
(494, 1, 0, 1, 0, 0, 3, 38, NULL, NULL),
(495, 1, 0, 1, 0, 0, 3, 52, NULL, NULL),
(496, 1, 0, 1, 0, 0, 3, 31, NULL, NULL),
(497, 1, 1, 1, 1, 1, 3, 18, NULL, NULL),
(498, 1, 1, 1, 1, 1, 3, 46, NULL, NULL),
(499, 1, 0, 1, 0, 0, 3, 33, NULL, NULL),
(500, 1, 0, 1, 0, 0, 3, 53, NULL, NULL),
(501, 1, 0, 1, 0, 0, 3, 37, NULL, NULL),
(502, 1, 0, 1, 0, 0, 3, 36, NULL, NULL),
(503, 1, 0, 1, 0, 0, 3, 30, NULL, NULL),
(504, 1, 0, 1, 0, 0, 3, 57, NULL, NULL),
(505, 1, 0, 1, 0, 0, 3, 32, NULL, NULL),
(506, 1, 1, 1, 1, 1, 1, 58, NULL, NULL),
(507, 1, 1, 1, 1, 1, 1, 59, NULL, NULL),
(508, 1, 1, 1, 1, 1, 1, 60, NULL, NULL),
(509, 1, 1, 1, 0, 0, 2, 55, NULL, NULL),
(510, 1, 1, 1, 0, 0, 2, 56, NULL, NULL),
(511, 1, 1, 1, 1, 0, 2, 60, NULL, NULL),
(512, 1, 0, 1, 0, 0, 2, 15, NULL, NULL),
(513, 1, 1, 1, 0, 0, 2, 51, NULL, NULL),
(514, 1, 1, 1, 0, 0, 2, 22, NULL, NULL),
(515, 1, 1, 1, 0, 0, 2, 29, NULL, NULL),
(516, 1, 1, 1, 0, 0, 2, 35, NULL, NULL),
(517, 1, 0, 1, 0, 0, 2, 17, NULL, NULL),
(518, 1, 1, 1, 0, 0, 2, 28, NULL, NULL),
(519, 1, 1, 1, 0, 0, 2, 38, NULL, NULL),
(520, 1, 1, 1, 0, 0, 2, 52, NULL, NULL),
(521, 1, 1, 1, 0, 0, 2, 18, NULL, NULL),
(522, 1, 0, 1, 0, 0, 2, 46, NULL, NULL),
(523, 1, 1, 1, 0, 0, 2, 53, NULL, NULL),
(524, 1, 1, 1, 0, 0, 2, 30, NULL, NULL),
(525, 1, 1, 1, 0, 0, 2, 57, NULL, NULL),
(526, 1, 1, 1, 0, 0, 2, 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', '', 'text', NULL, 'Input hexacode', '2019-10-13 19:09:04', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', '', 'text', NULL, 'Input hexacode', '2019-10-13 19:09:04', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2019-10/40268bbeee660edfe0fc47b93bf1f1fc.jpg', 'upload_image', NULL, NULL, '2019-10-13 19:09:04', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'codingbangets@gmail.com', 'text', NULL, NULL, '2019-10-13 19:09:04', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-10-13 19:09:04', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2019-10-13 19:09:04', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-10-13 19:09:04', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2019-10-13 19:09:04', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2019-10-13 19:09:04', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'E-Dupak Diskominfo Kota Banjarbaru', 'text', NULL, NULL, '2019-10-13 19:09:04', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-10-13 19:09:04', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2019-10/97c77bb66ce7c6b5f335a7fecbcbebb4.jpg', 'upload_image', NULL, NULL, '2019-10-13 19:09:04', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2019-10/c27d412f3e8af865f6af92d6f44513ae.png', 'upload_image', NULL, NULL, '2019-10-13 19:09:04', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-10-13 19:09:04', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2019-10-13 19:09:04', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2019-10-13 19:09:04', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laporan', 'laporan', '2019-10-14 14:41:01', '2019-10-27 15:21:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Admin', 'uploads/1/2019-10/logo.png', 'admin@crudbooster.com', '$2y$10$PHk6mba4qmhObQNBg7w6teSq4k1dVOqcpkRKgVnOQySl4Ia6SwgXG', 1, '2019-10-13 19:09:04', '2019-10-13 22:31:34', 'Active'),
(2, 'Muhammad Azhar', 'uploads/1/2019-10/edupak_logo.jpg', 'codingbangets@gmail.com', '$2y$10$R9llogjnxhtaPrt.k3vK/.aEzZGWG2WMrgX.A7fnDW5XgypAbesyG', 2, '2019-10-13 23:13:27', NULL, NULL),
(3, 'Za ha r', 'uploads/1/2019-10/poster_arrow.jpg', 'm.azhar.ma100@gmail.com', '$2y$10$BcqsuXwBiQYg2EGAzo/Vh.AF4pWY4/1pGlW98JwOS6L57bd0ZWq.K', 3, '2019-10-16 09:35:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `implementasi_database`
--

CREATE TABLE `implementasi_database` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `implementasi_database`
--

INSERT INTO `implementasi_database` (`id`, `nama_kegiatan`) VALUES
(1, 'Mengimplementasi Rancangan Database '),
(2, 'Mengatur  Alokasi  Area  Database  Dalam  Media Komputer '),
(3, 'Membuat Otorisasi Akses Kepada Pemakai '),
(4, 'Memantau dan Mengevaluasi Penggunaan Database '),
(5, 'Melaksanakan Duplikasi Database '),
(6, 'Melaksanakan Perpindahan dari Perangkat Lunak Database yang Lama ke yang Baru '),
(7, 'Melakukan Pencarian Kembali Database ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `implementasi_jaringann`
--

CREATE TABLE `implementasi_jaringann` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `implementasi_jaringann`
--

INSERT INTO `implementasi_jaringann` (`id`, `nama_kegiatan`) VALUES
(1, 'Menerapkan Rancangan Konfigurasi Sistem Jaringan Komputer '),
(2, 'Membuat Sistem Pengamanan Sistem Jaringan Komputer '),
(3, 'Membuat Sistem Prosedur Pemanfaatan Sistem Jaringan Komputer '),
(4, 'Melakukan Uji Coba Sistem Operasi Sistem Jaringan Komputer '),
(5, 'Melakukan Monitoring Akses '),
(6, 'Melakukan Perbaikan Kerusakan Sistem Jaringan Komputer '),
(7, 'Melakukan Sistem Pencarian Kembali Sistem Jaringan Komputer '),
(8, 'Membuat Laporan Kejanggalan (Anomali) Sistem Jaringan Komputer '),
(9, 'Membuat Dokumentasi Penggunaan Sistem Jaringan Komputer ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karya_tulis_bidang_ti`
--

CREATE TABLE `karya_tulis_bidang_ti` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karya_tulis_bidang_ti`
--

INSERT INTO `karya_tulis_bidang_ti` (`id`, `nama_kegiatan`) VALUES
(1, 'Membuat karya tulis / karya ilmiah hasil penelitian, pengkajian, survei dan atau evaluasi di bidang  teknologi informasi yang dipublikasikan '),
(2, 'Membuat karya tulis / karya ilmiah hasil penelitian, pengkajian, survei dan atau evaluasi di bidang teknologi informasi yang tidak dipublikasikan  '),
(3, 'Membuat karya tulis / karya ilmiah berupa tinjauan atau ulasan ilmiah hasil gagasan sendiri di bidang teknologi informasi yang dipublikasikan '),
(4, 'Karya tulis / karya ilmiah berupa tinjauan atau ulasan ilmiah hasil gagasan sendiri di bidang teknologi informasi yang tidak dipublikasikan '),
(5, 'Membuat karya tulis / karya ilmiah populer di bidang teknologi informasi yang disebarluaskan melalui media massa a. Dimuat dalam media masa '),
(6, 'Membuat karya tulis / karya ilmiah berupa tinjauan atau ulasan ilmiah hasil gagasan sendiri di bidang teknologi informasi yang disampaikan dalam pertemuan ilmiah ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_implementasi_ti`
--

CREATE TABLE `nama_implementasi_ti` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nama_implementasi_ti`
--

INSERT INTO `nama_implementasi_ti` (`id`, `nama_kegiatan`) VALUES
(1, 'Pemprograman Dasar'),
(2, 'Pemprograman Menengah'),
(3, 'Pemprograman Lanjutan'),
(4, 'Penerapan Sistem Operasi Komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_operasi_ti`
--

CREATE TABLE `nama_operasi_ti` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nama_operasi_ti`
--

INSERT INTO `nama_operasi_ti` (`id`, `nama_kegiatan`) VALUES
(1, 'Pengoperasian Komputer'),
(2, 'Perekaman Data'),
(3, 'Pemasangan Dan Pemeliharaan Sistem Komputer Dan Sistem Jaringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_pengembangan_profesi`
--

CREATE TABLE `nama_pengembangan_profesi` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nama_pengembangan_profesi`
--

INSERT INTO `nama_pengembangan_profesi` (`id`, `nama_kegiatan`) VALUES
(1, 'Melaksanakan Kegiatan Karya Tulis/Karya Ilmiah dalam Bidang TI'),
(2, 'Menyusun Petunjuk Teknis Pelaksaan Pengelolaan Kegiatan'),
(3, 'Menerjemahkan/Menyadur Buku dan Bahan-Bahan Lain Dalam Bidang TI'),
(4, 'Melalukan Studi Banding di Bidang TI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendukung_kegiatan_pranata_komputer`
--

CREATE TABLE `pendukung_kegiatan_pranata_komputer` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendukung_kegiatan_pranata_komputer`
--

INSERT INTO `pendukung_kegiatan_pranata_komputer` (`id`, `nama_kegiatan`) VALUES
(1, 'Pengajar / Pelatih di Bidang Teknologi Informasi pada unit-unit Organisasi Pemerintah '),
(2, 'Peran Serta Dalam Seminar / Lokakarya / Konferensi '),
(3, 'Keanggotaan Dalam Tim Penilai Angka Kredit Jabatan Fungsional Pranata Komputer '),
(4, 'Keanggotaan Dalam Organisasi Profesi '),
(5, 'Perolehan Piagam Kehormatan '),
(6, 'Perolehan Gelar Kesarjanaan Lainnya ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerapan_sistem_operasi`
--

CREATE TABLE `penerapan_sistem_operasi` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penerapan_sistem_operasi`
--

INSERT INTO `penerapan_sistem_operasi` (`id`, `nama_kegiatan`) VALUES
(2, 'Membuat Rencana Rinci Pemeliharaan Komputer dan Peralatannya '),
(4, 'Melakukan Instalasi dan atau Meningkatkan (Up Grade) Sistem Operasi Komputer / Perangkat Lunak / Sistem Jaringan Komputer  '),
(5, 'Membuat Sistem Prosedur Operasi Komputer '),
(6, 'Melakukan Uji Coba Sistem Operasi Komputer '),
(7, 'Melakukan Deteksi dan atau Memperbaiki Kerusakan Sistem Operasi Komputer '),
(8, 'Melakukan 	Perbaikan 	terhadap 	Gangguan 	Sistem 	Operasi Komputer '),
(9, 'Membuat Dokumentasi Pengelolaan Komputer  ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerjemah_buku_bidang_ti`
--

CREATE TABLE `penerjemah_buku_bidang_ti` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penerjemah_buku_bidang_ti`
--

INSERT INTO `penerjemah_buku_bidang_ti` (`id`, `nama_kegiatan`) VALUES
(1, 'Menerjemahkan / menyadur di bidang teknologi informasi yang dipublikasikan '),
(2, 'Menerjemahkan / menyadur di bidang teknologi informasi yang tidak dipublikasikan '),
(3, 'Membuat abstrak tulisan ilmiah yang dimuat dalam majalah ilmiah ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengoperasian_komputer`
--

CREATE TABLE `pengoperasian_komputer` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengoperasian_komputer`
--

INSERT INTO `pengoperasian_komputer` (`id`, `nama_kegiatan`) VALUES
(1, 'Melakukan Penggandaan Data dan atau Program'),
(2, 'Membuat Laporan Operasi Komputer '),
(3, 'Membuat Dokumentasi File Yang Tersimpan Dalam Media Komputer ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sistem_implementasi_si_pp`
--

CREATE TABLE `sistem_implementasi_si_pp` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sistem_implementasi_si_pp`
--

INSERT INTO `sistem_implementasi_si_pp` (`id`, `nama_kegiatan`) VALUES
(1, 'Menelaah Spesifikasi Teknis Komponen Sistem Komputer '),
(2, 'Mengatur Alokasi Area Dalam Media Komputer '),
(3, 'Melakukan Instalasi dan atau Meningkatkan (Up Grade) Sistem \r\nKomputer \r\n'),
(4, 'Membuat Program Paket '),
(5, 'Melakukan Uji Coba Sistem Komputer '),
(6, 'Melakukan Uji Coba Program Paket '),
(7, 'Melakukan  Deteksi  dan atau Memperbaiki Kerusakan Sistem Komputer dan atau  Program Paket '),
(8, 'Membuat Petunjuk Operasional Sistem Komputer '),
(9, 'Membuat dokumentasi program paket ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_diklat`
--

CREATE TABLE `tb_diklat` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `durasi` text NOT NULL,
  `file_` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id` int(11) NOT NULL,
  `jenis_jabatan` varchar(50) NOT NULL,
  `tingkat_jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id`, `jenis_jabatan`, `tingkat_jabatan`) VALUES
(1, 'TI', 'Programer Junior');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_laporan`
--

CREATE TABLE `tb_laporan` (
  `id` int(11) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `jenis_kegiatan` varchar(50) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `keterangan` text NOT NULL,
  `upload_file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_laporan`
--

INSERT INTO `tb_laporan` (`id`, `nama_pegawai`, `jenis_kegiatan`, `tgl_kirim`, `keterangan`, `upload_file`) VALUES
(4, 'Muhammad Azhar', 'Membuat Aplikasi', '2019-10-15', 'Membuat Aplikasi Penilaian bulanan pegawai', 'uploads/2/2019-10/2_oa_form_komitmen_partisipasi_program_bantuan_pemerintah_oa_dts_2019.pdf'),
(5, 'Zahar', 'Database', '2019-10-30', 'a. Merancang Database\r\nb. Mengkoneksikan\r\nc. Menjalankan', 'uploads/1/2019-10/sertifikat_kelulusan_belajar_membuat_aplikasi_android_untuk_pemula.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_laporan` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `nilai_kredit` varchar(20) NOT NULL,
  `nilai_bobot` varchar(8) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmpat_lahir` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `pendidikan` varchar(200) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `tmt_pangkat` varchar(100) NOT NULL,
  `tmt_jabatan` varchar(100) NOT NULL,
  `jenjang_prakom` varchar(200) NOT NULL,
  `unit_kerja` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id`, `nip`, `nama`, `tgl_lahir`, `tmpat_lahir`, `jenis_kelamin`, `jabatan`, `pendidikan`, `pangkat`, `tmt_pangkat`, `tmt_jabatan`, `jenjang_prakom`, `unit_kerja`, `foto`) VALUES
(4, '19973737', 'Muhammad', '1998-08-25', 'Batulicin', 'Laki-laki', '1', '2', 'Lurah', '2019-10-15', '2019-10-14', 'Ahli', 'Kelurahan', 'uploads/1/2019-10/bagro.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pendidikan`
--

CREATE TABLE `tb_pendidikan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_pendidikan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pendidikan`
--

INSERT INTO `tb_pendidikan` (`id`, `nama`, `jenis_pendidikan`) VALUES
(1, 'IPS', 'SMA'),
(2, 'IPA', 'SMA/MA'),
(3, 'Jaringan', 'SMK'),
(4, 'FTI', 'S1 Teknik Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sekolah`
--

CREATE TABLE `tb_sekolah` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `bidang` varchar(50) NOT NULL,
  `file_` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_setifikasi`
--

CREATE TABLE `tb_setifikasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `skala` varchar(50) NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_impelementasi_ti`
--

CREATE TABLE `usulan_impelementasi_ti` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(50) NOT NULL,
  `jabatan_prakom` varchar(100) NOT NULL,
  `katagori` varchar(200) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL,
  `keterangan_kegiatan` text NOT NULL,
  `angka_kredit` varchar(20) NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_implementasi_databas`
--

CREATE TABLE `usulan_implementasi_databas` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(50) NOT NULL,
  `tgl_usul` date NOT NULL,
  `katagori` varchar(200) NOT NULL,
  `jenis_kegiatan` varchar(200) NOT NULL,
  `ket` text NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_implementasi_jaringan`
--

CREATE TABLE `usulan_implementasi_jaringan` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(200) NOT NULL,
  `tgl_usul` date NOT NULL,
  `katagori` varchar(200) NOT NULL,
  `jenis_kegiatan` varchar(200) NOT NULL,
  `ket` text NOT NULL,
  `angka_kredit` varchar(20) NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_karyatulis_bidang_ti`
--

CREATE TABLE `usulan_karyatulis_bidang_ti` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(50) NOT NULL,
  `tgl_usul` date NOT NULL,
  `jenis` varchar(200) NOT NULL,
  `bentuk` varchar(100) NOT NULL,
  `ket` text NOT NULL,
  `file` varchar(200) NOT NULL,
  `angka_kredit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_operasi_ti`
--

CREATE TABLE `usulan_operasi_ti` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(50) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `katagori` varchar(200) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL,
  `keterangan_kegiatan` text NOT NULL,
  `angka_kredit` varchar(20) NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_pendukung_kegiatan`
--

CREATE TABLE `usulan_pendukung_kegiatan` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(50) NOT NULL,
  `tgl_usul` date NOT NULL,
  `katagori` varchar(200) NOT NULL,
  `jenis_kegiatan` varchar(200) NOT NULL,
  `ket` text NOT NULL,
  `file` varchar(200) NOT NULL,
  `angka_kredit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_penerapan_sistem_operasi`
--

CREATE TABLE `usulan_penerapan_sistem_operasi` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(50) NOT NULL,
  `tgl_usul` date NOT NULL,
  `katagori` varchar(200) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL,
  `ket` text NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `usulan_penerapan_sistem_operasi`
--

INSERT INTO `usulan_penerapan_sistem_operasi` (`id`, `nama_pengusul`, `tgl_usul`, `katagori`, `nama_kegiatan`, `ket`, `file`) VALUES
(1, 'Muhammad Azhar', '2019-10-07', '4', 'blalala', 'bayayayaya', 'uploads/1/2019-10/laporan_pelaksanaan_praktek_kerja_lapangan.docx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_penerjemah_buku_ti`
--

CREATE TABLE `usulan_penerjemah_buku_ti` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(50) NOT NULL,
  `tgl_usul` date NOT NULL,
  `katagori` varchar(200) NOT NULL,
  `bentuk` varchar(200) NOT NULL,
  `ket` text NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_pengembangan_profesi`
--

CREATE TABLE `usulan_pengembangan_profesi` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(50) NOT NULL,
  `jabatan_prakom` varchar(100) NOT NULL,
  `katagori` varchar(200) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL,
  `keterangan_kegiatan` text NOT NULL,
  `angka_kredit` varchar(20) NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_penyusun_petunjuk_teknis_ti`
--

CREATE TABLE `usulan_penyusun_petunjuk_teknis_ti` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(50) NOT NULL,
  `tgl_usul` date NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL,
  `ket` text NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_si_program_paket`
--

CREATE TABLE `usulan_si_program_paket` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(50) NOT NULL,
  `tgl_usul` date NOT NULL,
  `katagori` varchar(200) NOT NULL,
  `jenis_kegiatan` varchar(200) NOT NULL,
  `ket` text NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan_unsur_pendidikan`
--

CREATE TABLE `usulan_unsur_pendidikan` (
  `id` int(11) NOT NULL,
  `nama_pengusul` varchar(200) NOT NULL,
  `jenis_pendidikan` varchar(100) NOT NULL,
  `lamanya` varchar(200) NOT NULL,
  `angka_kredit` varchar(20) NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `implementasi_database`
--
ALTER TABLE `implementasi_database`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `implementasi_jaringann`
--
ALTER TABLE `implementasi_jaringann`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karya_tulis_bidang_ti`
--
ALTER TABLE `karya_tulis_bidang_ti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nama_implementasi_ti`
--
ALTER TABLE `nama_implementasi_ti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nama_operasi_ti`
--
ALTER TABLE `nama_operasi_ti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nama_pengembangan_profesi`
--
ALTER TABLE `nama_pengembangan_profesi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendukung_kegiatan_pranata_komputer`
--
ALTER TABLE `pendukung_kegiatan_pranata_komputer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penerapan_sistem_operasi`
--
ALTER TABLE `penerapan_sistem_operasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penerjemah_buku_bidang_ti`
--
ALTER TABLE `penerjemah_buku_bidang_ti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengoperasian_komputer`
--
ALTER TABLE `pengoperasian_komputer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sistem_implementasi_si_pp`
--
ALTER TABLE `sistem_implementasi_si_pp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_diklat`
--
ALTER TABLE `tb_diklat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_laporan`
--
ALTER TABLE `tb_laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pendidikan`
--
ALTER TABLE `tb_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_setifikasi`
--
ALTER TABLE `tb_setifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_impelementasi_ti`
--
ALTER TABLE `usulan_impelementasi_ti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_implementasi_databas`
--
ALTER TABLE `usulan_implementasi_databas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_implementasi_jaringan`
--
ALTER TABLE `usulan_implementasi_jaringan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_karyatulis_bidang_ti`
--
ALTER TABLE `usulan_karyatulis_bidang_ti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_operasi_ti`
--
ALTER TABLE `usulan_operasi_ti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_pendukung_kegiatan`
--
ALTER TABLE `usulan_pendukung_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_penerapan_sistem_operasi`
--
ALTER TABLE `usulan_penerapan_sistem_operasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_penerjemah_buku_ti`
--
ALTER TABLE `usulan_penerjemah_buku_ti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_pengembangan_profesi`
--
ALTER TABLE `usulan_pengembangan_profesi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_penyusun_petunjuk_teknis_ti`
--
ALTER TABLE `usulan_penyusun_petunjuk_teknis_ti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_si_program_paket`
--
ALTER TABLE `usulan_si_program_paket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usulan_unsur_pendidikan`
--
ALTER TABLE `usulan_unsur_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=661;

--
-- AUTO_INCREMENT untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=527;

--
-- AUTO_INCREMENT untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `implementasi_database`
--
ALTER TABLE `implementasi_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `implementasi_jaringann`
--
ALTER TABLE `implementasi_jaringann`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `karya_tulis_bidang_ti`
--
ALTER TABLE `karya_tulis_bidang_ti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `nama_implementasi_ti`
--
ALTER TABLE `nama_implementasi_ti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `nama_operasi_ti`
--
ALTER TABLE `nama_operasi_ti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `nama_pengembangan_profesi`
--
ALTER TABLE `nama_pengembangan_profesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pendukung_kegiatan_pranata_komputer`
--
ALTER TABLE `pendukung_kegiatan_pranata_komputer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `penerapan_sistem_operasi`
--
ALTER TABLE `penerapan_sistem_operasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penerjemah_buku_bidang_ti`
--
ALTER TABLE `penerjemah_buku_bidang_ti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengoperasian_komputer`
--
ALTER TABLE `pengoperasian_komputer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sistem_implementasi_si_pp`
--
ALTER TABLE `sistem_implementasi_si_pp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_diklat`
--
ALTER TABLE `tb_diklat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_laporan`
--
ALTER TABLE `tb_laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_pendidikan`
--
ALTER TABLE `tb_pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_setifikasi`
--
ALTER TABLE `tb_setifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_impelementasi_ti`
--
ALTER TABLE `usulan_impelementasi_ti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_implementasi_databas`
--
ALTER TABLE `usulan_implementasi_databas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_implementasi_jaringan`
--
ALTER TABLE `usulan_implementasi_jaringan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_karyatulis_bidang_ti`
--
ALTER TABLE `usulan_karyatulis_bidang_ti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_operasi_ti`
--
ALTER TABLE `usulan_operasi_ti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_pendukung_kegiatan`
--
ALTER TABLE `usulan_pendukung_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_penerapan_sistem_operasi`
--
ALTER TABLE `usulan_penerapan_sistem_operasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `usulan_penerjemah_buku_ti`
--
ALTER TABLE `usulan_penerjemah_buku_ti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_pengembangan_profesi`
--
ALTER TABLE `usulan_pengembangan_profesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_penyusun_petunjuk_teknis_ti`
--
ALTER TABLE `usulan_penyusun_petunjuk_teknis_ti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_si_program_paket`
--
ALTER TABLE `usulan_si_program_paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `usulan_unsur_pendidikan`
--
ALTER TABLE `usulan_unsur_pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
