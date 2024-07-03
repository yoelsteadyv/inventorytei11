-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 03 Jul 2024 pada 09.37
-- Versi server: 8.0.36-0ubuntu0.22.04.1
-- Versi PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tei`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint UNSIGNED NOT NULL,
  `kd_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_id` bigint UNSIGNED NOT NULL,
  `satuan_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id`, `kd_barang`, `nama_brg`, `jenis_id`, `satuan_id`, `created_at`, `updated_at`) VALUES
(6, 'BRG-1440104377', 'RM 12 J T N 180K OHM', 3, 4, '2024-07-02 22:59:34', '2024-07-02 22:59:34'),
(7, 'BRG-6563878449', 'RM 04 D T N 100 K OHM', 3, 4, '2024-07-02 22:59:49', '2024-07-02 22:59:49'),
(8, 'BRG-3015864831', 'RM 04 D T N 2 K OHM', 3, 4, '2024-07-02 23:00:04', '2024-07-02 23:00:04'),
(9, 'BRG-9681181166', 'RM 04 D T N 150 K OHM', 3, 4, '2024-07-02 23:00:19', '2024-07-02 23:00:19'),
(10, 'BRG-3971744577', 'RM 04 D T N 1.3 K OHM', 3, 4, '2024-07-02 23:00:52', '2024-07-02 23:00:52'),
(11, 'BRG-9287483237', 'CN 24 J T N 5.6 K OHM', 8, 4, '2024-07-02 23:01:15', '2024-07-02 23:01:15'),
(12, 'BRG-3254601532', 'CN 24 J T N 100 OHM', 8, 4, '2024-07-02 23:01:29', '2024-07-02 23:01:29'),
(13, 'BRG-6697677711', 'RD 1/2W 5(%) T-52 150 OHM', 4, 4, '2024-07-02 23:01:51', '2024-07-02 23:01:51'),
(14, 'BRG-1151437561', 'MO 1WS 5(%) T-52 68 OHM', 5, 4, '2024-07-02 23:02:12', '2024-07-02 23:02:12'),
(15, 'BRG-8360174161', 'RDF 1/4W 5(%) RADIAL 390 OHM', 7, 4, '2024-07-02 23:02:40', '2024-07-02 23:02:40'),
(16, 'BRG-5487851629', 'RM 04 D T N 27 OHM', 3, 4, '2024-07-02 23:04:56', '2024-07-02 23:04:56'),
(17, 'BRG-6826409989', 'RM 04 D T N 680 K OHM', 3, 4, '2024-07-02 23:05:12', '2024-07-02 23:05:12'),
(18, 'BRG-8636352924', 'RM 04 J T N 47 OHM', 3, 4, '2024-07-02 23:05:31', '2024-07-02 23:05:31'),
(19, 'BRG-5243345529', 'RM 04 D T N 18 OHM', 3, 4, '2024-07-02 23:05:50', '2024-07-02 23:05:50'),
(20, 'BRG-2216747344', 'RM 04 D T N 15 OHM', 3, 4, '2024-07-02 23:06:27', '2024-07-02 23:06:27'),
(21, 'BRG-8931768236', 'RM 04 D T N 130 OHM', 3, 4, '2024-07-02 23:10:17', '2024-07-02 23:10:17'),
(22, 'BRG-2052085228', 'RM 04 D T N 1.3 K OHM', 3, 4, '2024-07-02 23:10:34', '2024-07-02 23:10:34'),
(24, 'BRG-3038655742', 'RM 04 D T N 5.9 K OHM', 3, 4, '2024-07-02 23:11:51', '2024-07-02 23:11:51'),
(25, 'BRG-1571649919', 'RM 12 J T N 20K OHM', 3, 4, '2024-07-02 23:12:13', '2024-07-02 23:12:13'),
(26, 'BRG-5432248984', 'RM 12 J T N 910 OHM', 3, 4, '2024-07-02 23:12:34', '2024-07-02 23:12:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluars`
--

CREATE TABLE `barang_keluars` (
  `id` bigint UNSIGNED NOT NULL,
  `kd_brg_keluar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_keluar` date NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `brg_keluar` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang_keluars`
--

INSERT INTO `barang_keluars` (`id`, `kd_brg_keluar`, `tgl_keluar`, `barang_id`, `customer_id`, `brg_keluar`, `created_at`, `updated_at`) VALUES
(8, 'KBK-5499690013', '2024-06-01', 6, 3, 9000, '2024-07-02 23:27:15', '2024-07-02 23:27:15'),
(9, 'KBK-7866743416', '2024-06-04', 7, 4, 3000, '2024-07-02 23:27:32', '2024-07-02 23:27:32'),
(10, 'KBK-6477147784', '2024-06-05', 8, 5, 5500, '2024-07-02 23:27:50', '2024-07-02 23:27:50'),
(11, 'KBK-8167086971', '2024-06-08', 9, 6, 6000, '2024-07-02 23:28:08', '2024-07-02 23:28:08'),
(12, 'KBK-9923849348', '2024-06-13', 10, 7, 10000, '2024-07-02 23:28:31', '2024-07-02 23:28:31'),
(13, 'KBK-6238418051', '2024-06-17', 10, 7, 13000, '2024-07-02 23:28:49', '2024-07-02 23:28:49'),
(14, 'KBK-5645713257', '2024-06-20', 11, 10, 15000, '2024-07-02 23:29:47', '2024-07-02 23:29:47'),
(15, 'KBK-8839968146', '2024-06-24', 12, 13, 7000, '2024-07-02 23:30:52', '2024-07-02 23:30:52'),
(16, 'KBK-2368454622', '2024-06-28', 19, 16, 4500, '2024-07-02 23:31:58', '2024-07-02 23:31:58'),
(17, 'KBK-3616179848', '2024-06-21', 19, 16, 7000, '2024-07-02 23:32:26', '2024-07-02 23:32:26'),
(18, 'KBK-9554971840', '2024-06-15', 17, 9, 7500, '2024-07-02 23:32:58', '2024-07-02 23:32:58'),
(19, 'KBK-2762153178', '2024-07-01', 22, 17, 5500, '2024-07-02 23:33:26', '2024-07-02 23:33:26'),
(20, 'KBK-3296296640', '2024-06-30', 20, 8, 300, '2024-07-02 23:33:53', '2024-07-02 23:33:53'),
(21, 'KBK-5624589878', '2024-06-21', 19, 12, 4500, '2024-07-02 23:34:31', '2024-07-02 23:34:31'),
(22, 'KBK-8017609912', '2024-06-24', 16, 12, 6500, '2024-07-02 23:35:20', '2024-07-02 23:35:20'),
(23, 'KBK-9569372714', '2024-07-02', 21, 5, 10000, '2024-07-02 23:35:54', '2024-07-02 23:35:54'),
(24, 'KBK-6734687344', '2024-07-03', 14, 14, 1100, '2024-07-02 23:36:36', '2024-07-02 23:36:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuks`
--

CREATE TABLE `barang_masuks` (
  `id` bigint UNSIGNED NOT NULL,
  `kd_brg_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_masuk` date NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `brg_masuk` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang_masuks`
--

INSERT INTO `barang_masuks` (`id`, `kd_brg_masuk`, `tgl_masuk`, `barang_id`, `supplier_id`, `brg_masuk`, `created_at`, `updated_at`) VALUES
(6, 'KBM-5575424572', '2024-06-01', 6, 18, 20000, '2024-07-02 23:13:38', '2024-07-02 23:13:38'),
(7, 'KBM-4117578198', '2024-06-03', 6, 17, 10000, '2024-07-02 23:13:59', '2024-07-02 23:13:59'),
(8, 'KBM-3253334066', '2024-06-05', 7, 17, 30000, '2024-07-02 23:14:22', '2024-07-02 23:14:22'),
(9, 'KBM-5619869462', '2024-06-07', 8, 16, 15000, '2024-07-02 23:14:40', '2024-07-02 23:14:40'),
(10, 'KBM-9937943216', '2024-06-13', 9, 15, 5000, '2024-07-02 23:14:58', '2024-07-02 23:14:58'),
(11, 'KBM-8618916114', '2024-06-20', 11, 13, 12000, '2024-07-02 23:15:16', '2024-07-02 23:15:16'),
(12, 'KBM-6613831372', '2024-05-08', 12, 12, 13000, '2024-07-02 23:15:33', '2024-07-02 23:15:33'),
(13, 'KBM-4012523225', '2024-06-20', 10, 11, 30000, '2024-07-02 23:15:54', '2024-07-02 23:15:54'),
(14, 'KBM-3952825964', '2024-06-26', 19, 8, 40000, '2024-07-02 23:16:09', '2024-07-02 23:16:09'),
(15, 'KBM-8377232669', '2024-06-20', 19, 9, 10000, '2024-07-02 23:16:54', '2024-07-02 23:16:54'),
(16, 'KBM-9057984953', '2024-06-20', 17, 7, 24500, '2024-07-02 23:18:26', '2024-07-02 23:18:26'),
(17, 'KBM-2910870366', '2024-06-28', 17, 6, 15000, '2024-07-02 23:18:47', '2024-07-02 23:18:47'),
(18, 'KBM-2223581086', '2024-06-30', 22, 4, 12000, '2024-07-02 23:19:18', '2024-07-02 23:19:18'),
(19, 'KBM-2469975581', '2024-06-22', 20, 13, 40000, '2024-07-02 23:19:36', '2024-07-02 23:19:36'),
(20, 'KBM-9226462624', '2024-06-08', 9, 11, 13000, '2024-07-02 23:20:05', '2024-07-02 23:20:05'),
(21, 'KBM-3448024380', '2024-07-25', 16, 14, 7000, '2024-07-02 23:20:22', '2024-07-02 23:20:22'),
(22, 'KBM-6744136719', '2024-06-24', 21, 10, 25000, '2024-07-02 23:20:39', '2024-07-02 23:20:48'),
(23, 'KBM-2970488039', '2024-07-01', 14, 9, 15000, '2024-07-02 23:22:21', '2024-07-02 23:22:21'),
(24, 'KBM-3908304387', '2024-06-30', 12, 6, 13000, '2024-07-02 23:22:45', '2024-07-02 23:22:45'),
(25, 'KBM-9214457651', '2024-06-17', 9, 14, 12000, '2024-07-02 23:23:11', '2024-07-02 23:23:11'),
(26, 'KBM-4471920177', '2024-06-28', 11, 15, 20000, '2024-07-02 23:30:13', '2024-07-02 23:30:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id` bigint UNSIGNED NOT NULL,
  `jenis_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id`, `jenis_brg`, `keterangan`, `created_at`, `updated_at`) VALUES
(3, 'RM', NULL, '2024-07-02 22:47:03', '2024-07-02 22:47:03'),
(4, 'RD', NULL, '2024-07-02 22:47:08', '2024-07-02 22:47:08'),
(5, 'RS', NULL, '2024-07-02 22:47:13', '2024-07-02 22:47:13'),
(6, 'RN', NULL, '2024-07-02 22:47:35', '2024-07-02 22:47:35'),
(7, 'RDF', NULL, '2024-07-02 22:47:47', '2024-07-02 22:47:47'),
(8, 'CN', NULL, '2024-07-02 22:48:38', '2024-07-02 22:48:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_customers`
--

CREATE TABLE `main_customers` (
  `id` bigint UNSIGNED NOT NULL,
  `kd_customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pt_customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `main_customers`
--

INSERT INTO `main_customers` (`id`, `kd_customer`, `pt_customer`, `alamat`, `telp`, `email`, `person`, `created_at`, `updated_at`) VALUES
(3, 'KC-4679004116', 'YAMAHA MUSIC MANUFACTURING ASIA.PT', 'MM21000 INDUSTRIAL, CIBITUNG', '6229357293', 'ymhmusicmanufacture@gmail.com', 'Bp Yahdi', '2024-07-02 22:08:50', '2024-07-02 22:08:50'),
(4, 'KC-7066180426', 'YAMAHA ELECTRONIC MANUFAC INDONESIA.PT', 'KAWASAN INDUSTRI PIER JL.REMBANG INDUSTRI II', '62346245546', 'ymhelecmanufacindo@gmail.com', 'Bp Kamal', '2024-07-02 22:10:59', '2024-07-02 22:10:59'),
(5, 'KC-9326592436', 'PT. WOO IN', 'KAWASAN INDUSTRI MM2100', '6239486524', 'wooin@gmail.com', 'Bp. Andry', '2024-07-02 22:12:10', '2024-07-02 22:12:10'),
(6, 'KC-3388377436', 'WESTERN ELECTRINIKA. PT', 'MODERN INDUSTRI III NO.22 KWSN INDUSTRI MODERN', '6223948527', 'westernelectronika@gmail.com', 'Bp. Yamin', '2024-07-02 22:14:44', '2024-07-02 22:14:44'),
(7, 'KC-7711383394', 'VS TECHNOLOGY INDONESIA. PT', 'JL.CENDANA RAYA BLOK F10-6B, DELTA SILICON 3, LIPP', '6223523467', 'vstechno@gmail.com', 'Ms. Sara', '2024-07-02 22:16:56', '2024-07-02 22:16:56'),
(8, 'KC-9781450240', 'TEXMACO MICRO INDO UTAMA. PT', 'KAWASAN INDUSTRI CITARUM DS. KIARA PAYUNG KLARI', '02673444412', 'texmacomicroindo@gmail.com', 'Ms. Siti', '2024-07-02 22:22:40', '2024-07-02 22:22:40'),
(9, 'KC-4370980000', 'TAE BONG INDONESIA. PT', 'CIKARANG', '6243342234', 'taebong@gmail.com', 'Ms. Santi', '2024-07-02 22:23:45', '2024-07-02 22:23:45'),
(10, 'KC-1866439734', 'TOSHIBA CONSUMER PRODUCTS INDONESIA', 'EJIP PLOT 8G, LEMAHABANG', '0219243875', 'toshibconsumer@gmail.com', 'Ms. Laura', '2024-07-02 22:28:01', '2024-07-02 22:28:01'),
(11, 'KC-6309399230', 'SAMSUNG ELECTRONIC INDONESIA . PT (VCR)', 'JL. JABABEKA RAYA BLOK F29-33', '0218934005', 'samsungelecindo@gmail.com', 'IBU RATNA', '2024-07-02 22:36:11', '2024-07-02 22:38:45'),
(12, 'KC-6484489245', 'TUNAS SEJAHTERA OTOINSERT. PT', 'JL. RAYA SERANG KM 13.8 KOMP INDUSTRI TRISTATE', '0213948574', 'tunassejahtera@gmail.com', 'Bp. Jojo', '2024-07-02 22:36:37', '2024-07-02 22:36:37'),
(13, 'KC-6083192710', 'SHARP ELECTRONIC INDONESIA . PT', 'JL. SWADAYA IV, RAWATERATAI, CAKUNG', '0214603925', 'sharpelecindo@gmail.com', 'IBU TUTI', '2024-07-02 22:38:29', '2024-07-02 22:38:29'),
(14, 'KC-3922488028', 'TRIDARMA KENCANA. PT', 'JL.SERANG KM.12 NO.66 DESA CISAIT', '021837541', 'tridharma@gmail.com', 'Bp. Yudo', '2024-07-02 22:38:47', '2024-07-02 22:38:47'),
(15, 'KC-6669834714', 'TAEHANG ELECTRONIC(M) SBN.BHD', 'JL.INTIRAYA BLOC C1 NO.9-11 BII ESTATE', '02194738454', 'taehang@gmail.com', 'IBU ENUNG', '2024-07-02 22:40:29', '2024-07-02 22:40:29'),
(16, 'KC-6393402386', 'PT. SMART METER INDONESIA', 'JL. KARET UTARA II NO.7 ZONA INDUSTRI MEKARJAYA', '082159373286', 'smartmeterindo@gmail.com', 'IBU YUCI', '2024-07-02 22:41:12', '2024-07-02 22:41:12'),
(17, 'KC-4535103506', 'SAMCON. PT', 'JL.RAYA SUBANG CIKUMAY PURWAKARTA 41181', '0823413555', 'samcon@gmail.com', 'Bp. Rudy', '2024-07-02 22:42:04', '2024-07-02 22:42:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_suppliers`
--

CREATE TABLE `main_suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `kd_supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pt_supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `main_suppliers`
--

INSERT INTO `main_suppliers` (`id`, `kd_supplier`, `pt_supplier`, `alamat`, `telp`, `email`, `person`, `created_at`, `updated_at`) VALUES
(4, 'KP-1777585367', 'WEN CHEN', 'TAIWAN', '(886)1237 3423', 'wenchenco@gmail.com', 'Mr Nicole', '2024-07-01 09:01:46', '2024-07-01 09:01:46'),
(5, 'KP-8045902334', 'TA-I OHM', 'Malaysia', '60 748 901 142', 'Teiohm@gmail.com', 'Ms Lee', '2024-07-01 09:03:38', '2024-07-01 09:03:38'),
(6, 'KP-2412416622', 'LELON', 'TAIWAN', '(886) 9283 7234', 'lelonco@gmail.com', 'Ms chen', '2024-07-01 09:04:43', '2024-07-01 09:04:43'),
(7, 'KP-9990916921', 'Capatronics Malaysia SDN.BHD', 'K.L.INDUSTRIAL PARK', '603-77832146', 'capatronics@gmail.com', 'N.K LAU', '2024-07-01 09:06:35', '2024-07-01 09:06:35'),
(8, 'KP-2292441626', 'TA-I TECHNOLOGY', 'TAIWAN', '(886) 3242 7853', 'taitech@gmail.com', 'Ms Judi', '2024-07-01 09:08:18', '2024-07-01 09:08:18'),
(9, 'KP-3394489316', 'SOON SOON CO.', 'TAIWAN', '0941744988', 'soonco@gmail.com', 'Mr. Zhang', '2024-07-02 21:45:30', '2024-07-02 21:47:01'),
(10, 'KP-2285149344', 'NEWCROWM', 'TAIWAN', '0946940070', 'newcrown@gmail.com', 'Mr. Huang', '2024-07-02 21:46:46', '2024-07-02 21:46:46'),
(11, 'KP-9064051511', 'KANDING ELECTRONIC', 'TAIWAN', '0998380841', 'kandingelectro@gmail.com', 'Chao Donghai', '2024-07-02 21:47:57', '2024-07-02 21:47:57'),
(12, 'KP-7170678244', 'FUTABA', 'TAIWAN', '0907816335', 'futaba@gmail.com', 'Mr. Bai Xongki', '2024-07-02 21:48:30', '2024-07-02 21:48:30'),
(13, 'KP-3193339179', 'G-CHEN', 'TAIWAN', '0994705583', 'chenlong12@gmail.com', 'Bai Bo Chen', '2024-07-02 21:49:21', '2024-07-02 21:49:21'),
(14, 'KP-6925180874', 'WINNING PERFECT,LTD', 'HONGKONG', '0902945684', 'winningperfect11@gmail.com', 'Feng Guotin', '2024-07-02 21:50:50', '2024-07-02 21:50:50'),
(15, 'KP-1204767814', 'MACHRONE CORPOORATION.LTD', 'SINGAPORE', '+65-855-560-89', 'machroneco@gmail.com', 'Mr, Lam Kai Ming', '2024-07-02 21:51:51', '2024-07-02 21:51:51'),
(16, 'KP-6812211876', 'DENSHI MARKETING', 'SINGAPORE', '+65-955-530-20', 'denshimarket@gmail.com', 'Bryan Caleb', '2024-07-02 21:54:34', '2024-07-02 21:54:34'),
(17, 'KP-8496918498', 'J.K MULTILAYER TECNOLOGY.CO.LTD', 'TAIWAN', '0950630038', 'multilayertechno@gmail.com', 'Mr. Lahu Ali', '2024-07-02 21:55:29', '2024-07-02 21:55:29'),
(18, 'KP-3346942393', 'PU TIAN CIPTA ELECTRONIC', 'CHINA', '+8616733312370', 'putianwei@gmail.com', 'Pu Tian Wei', '2024-07-02 21:56:41', '2024-07-02 21:56:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_12_005726_create_jenis_table', 1),
(5, '2024_06_12_013411_create_satuans_table', 1),
(6, '2024_06_12_015456_create_barangs_table', 1),
(7, '2024_06_15_024619_create_stoks_table', 1),
(8, '2024_06_15_024721_create_main_suppliers_table', 1),
(9, '2024_06_15_024753_create_barang_masuks_table', 1),
(10, '2024_06_15_024833_create_main_customers_table', 1),
(11, '2024_06_15_024904_create_barang_keluars_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuans`
--

CREATE TABLE `satuans` (
  `id` bigint UNSIGNED NOT NULL,
  `satuan_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `satuans`
--

INSERT INTO `satuans` (`id`, `satuan_brg`, `keterangan`, `created_at`, `updated_at`) VALUES
(4, 'PCS', '1', '2024-07-02 22:57:33', '2024-07-02 22:57:33'),
(5, 'KG', NULL, '2024-07-02 22:57:43', '2024-07-02 22:57:43'),
(6, 'PACK', '100', '2024-07-02 22:57:55', '2024-07-02 22:57:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2WRLrs5SggSv6TxYoAaVZWTL0pAKv6oW69jNXEHY', NULL, '202.43.172.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkl6eGxiMUprcnBTYmJlM0FDV1poTTM5VXpxSTJVWDdubGxJQmlocSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vdGVpLmRpYm8ubXkuaWQvc2F0dWFuYmFyYW5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1719988960),
('DLZVMbLeKtuCxKaiVsRNGkPGcab9fWCge3NFrxKh', NULL, '103.189.123.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmRIWDJ5c1I4SWMxSTRMOUtIMnJYcXdFTXdWNHlQV1puRTUyUm1idCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vdGVpLmRpYm8ubXkuaWQvYmFyYW5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1719988961),
('lQICtrXvgA64bdTdV0dxtPzvbH66WIYH4LYVGe1s', 1, '103.78.115.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieFNGWG83R3Y2ZFFOaGRNQkRZWHkyNGF3R3ZsdFhJMVRhQU1Xek52ZSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMjoiaHR0cHM6Ly90ZWkuZGliby5teS5pZC9kYXNoYm9hcmQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNDoiaHR0cHM6Ly90ZWkuZGliby5teS5pZC9iYXJhbmdtYXN1ayI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1719992224),
('NOktB7hzPictk6b7MABQw5sHxgxSy109Z6kXRCqC', 2, '103.78.115.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNXRBSnR4NzRBd2lETEJHVVlRa3RtQ3JEVVl6T1BqTzh5SXhtTmxtUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vdGVpLmRpYm8ubXkuaWQvbWFpbmN1c3RvbWVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1719986326),
('O97CIAYgPCMTOC8CSBOc6PNk5EnQPEawujmWRMDT', NULL, '103.220.22.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHl1elc5bmFSaUVGcmpxUXZidWNSc0NrbWhXWDlveW5DM3NUczdIMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vdGVpLmRpYm8ubXkuaWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1719985310),
('RmNQvYsthL3vJgcMQe1tpyYRZzVxHIcAQDKz7BOi', NULL, '103.26.211.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU1UMXBtUzhEcWhBeXZuU21wV0xndjQ4akNRZTIzVXNhV3ZlU0FrdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vdGVpLmRpYm8ubXkuaWQvbWFpbmN1c3RvbWVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1719986328),
('UNfoFcVEgHwzpeKznHSegJcBu3gEet0JcLdatCL8', NULL, '110.50.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzF2VFoxQ0R5VmNtNmRQQTZYaU1pMXN4Rmg1cjFHWWxNWUtlZVNNViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vdGVpLmRpYm8ubXkuaWQvbWFpbnN1cHBsaWVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1719985364),
('YOey2J8Cgj8c97BuXaAuSijTqTgC7pHmNF7NwYrK', NULL, '110.50.81.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXFPaGhrS2tpWTlYdFFoOEM1eXFjblIyNG5jZnVwc1hsS0VUb1c3UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vdGVpLmRpYm8ubXkuaWQvamVuaXNiYXJhbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1719988138),
('Yu97RsWVOPZ0XLsZJ0f3D3MHUHNBccCMVyi5ShIM', 1, '103.78.115.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRm1HRXJvTjloVXE0NmJFN3hVUGdvTGxHZVZEakVlRVBYQzNwWkR5SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vdGVpLmRpYm8ubXkuaWQvYmFyYW5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1719990052);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stoks`
--

CREATE TABLE `stoks` (
  `id` bigint UNSIGNED NOT NULL,
  `stok` int NOT NULL DEFAULT '0',
  `barang_id` bigint UNSIGNED NOT NULL,
  `brg_masuk` int NOT NULL DEFAULT '0',
  `brg_keluar` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stoks`
--

INSERT INTO `stoks` (`id`, `stok`, `barang_id`, `brg_masuk`, `brg_keluar`, `created_at`, `updated_at`) VALUES
(5, 21000, 6, 30000, 9000, '2024-07-02 23:13:38', '2024-07-02 23:27:15'),
(6, 27000, 7, 30000, 3000, '2024-07-02 23:14:22', '2024-07-02 23:27:32'),
(7, 9500, 8, 15000, 5500, '2024-07-02 23:14:40', '2024-07-02 23:27:50'),
(8, 24000, 9, 30000, 6000, '2024-07-02 23:14:58', '2024-07-02 23:28:08'),
(9, 17000, 11, 32000, 15000, '2024-07-02 23:15:16', '2024-07-02 23:30:13'),
(10, 19000, 12, 26000, 7000, '2024-07-02 23:15:33', '2024-07-02 23:30:52'),
(11, 7000, 10, 30000, 23000, '2024-07-02 23:15:54', '2024-07-02 23:28:49'),
(12, 34000, 19, 50000, 16000, '2024-07-02 23:16:09', '2024-07-02 23:34:31'),
(13, 32000, 17, 39500, 7500, '2024-07-02 23:18:26', '2024-07-02 23:32:58'),
(14, 6500, 22, 12000, 5500, '2024-07-02 23:19:18', '2024-07-02 23:33:26'),
(15, 39700, 20, 40000, 300, '2024-07-02 23:19:36', '2024-07-02 23:33:53'),
(16, 500, 16, 7000, 6500, '2024-07-02 23:20:22', '2024-07-02 23:35:20'),
(17, 15000, 21, 25000, 10000, '2024-07-02 23:20:39', '2024-07-02 23:35:54'),
(18, 13900, 14, 15000, 1100, '2024-07-02 23:22:21', '2024-07-02 23:36:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','manager','material','marketing') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yoel Steady Valentino', 'yoelsteadyv@gmail.com', '2024-06-16 07:42:31', '$2y$12$qFJg.DunFIgtaosNO3w1Lu1qMdgsmMDgK0bPBvkHfCKhXEAwadn6m', 'admin', '5ohmvfQ0LvPjAqLulyQWls2HAa0ARljfHZNJByNFBbDKHUyaNIXa3wbhXj1Z', '2024-06-16 07:42:31', '2024-06-16 07:42:31'),
(2, 'Diana', 'diana@gmail.com', '2024-06-16 07:42:32', '$2y$12$izkJT3JyEG1EGh.Og084ruwlQOWFW9cw1GqjU75JSo25QQHzkJzOe', 'manager', 'SEkLxBbkuk6ymvXeGtn9tKZEYn2cFscTwIomEVvoVZA5PEyCdideKHTAqivp', '2024-06-16 07:42:32', '2024-07-02 21:36:55'),
(3, 'Endang', 'endang@gmail.com', '2024-06-16 07:42:32', '$2y$12$QnHk9LfKmJjR/Ont8coZ4.mqjlC2l8ll5iVa6beGZXYbRGWOQb7xy', 'marketing', 'b6T0YDQG987wLVPqYXOoX2qN77KKi50nzmWS6WzcFpf3Zxf9KTyGOmGz93XW', '2024-06-16 07:42:32', '2024-06-16 07:42:32'),
(4, 'Yulius Granada', 'yuliusgranada@gmail.com', '2024-06-16 07:42:32', '$2y$12$paVTGPj.znVMezLOBDYzgudz.XzMjRAgz1b.EtJrjICqO5uBuu/CC', 'material', 'rz56nkTYYcuBVxQnLTglnIRq5q5TpFPLTnhSAdjlo3Cu8pTtjPgBaGFfjjdF', '2024-06-16 07:42:32', '2024-06-16 07:42:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barangs_kd_barang_unique` (`kd_barang`),
  ADD KEY `barangs_jenis_id_foreign` (`jenis_id`),
  ADD KEY `barangs_satuan_id_foreign` (`satuan_id`);

--
-- Indeks untuk tabel `barang_keluars`
--
ALTER TABLE `barang_keluars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barang_keluars_kd_brg_keluar_unique` (`kd_brg_keluar`),
  ADD KEY `barang_keluars_barang_id_foreign` (`barang_id`),
  ADD KEY `barang_keluars_customer_id_foreign` (`customer_id`);

--
-- Indeks untuk tabel `barang_masuks`
--
ALTER TABLE `barang_masuks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barang_masuks_kd_brg_masuk_unique` (`kd_brg_masuk`),
  ADD KEY `barang_masuks_barang_id_foreign` (`barang_id`),
  ADD KEY `barang_masuks_supplier_id_foreign` (`supplier_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `main_customers`
--
ALTER TABLE `main_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_customers_kd_customer_unique` (`kd_customer`);

--
-- Indeks untuk tabel `main_suppliers`
--
ALTER TABLE `main_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_suppliers_kd_supplier_unique` (`kd_supplier`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `satuans`
--
ALTER TABLE `satuans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `stoks`
--
ALTER TABLE `stoks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stoks_barang_id_foreign` (`barang_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `barang_keluars`
--
ALTER TABLE `barang_keluars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `barang_masuks`
--
ALTER TABLE `barang_masuks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `main_customers`
--
ALTER TABLE `main_customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `main_suppliers`
--
ALTER TABLE `main_suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `satuans`
--
ALTER TABLE `satuans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `stoks`
--
ALTER TABLE `stoks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_jenis_id_foreign` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `barangs_satuan_id_foreign` FOREIGN KEY (`satuan_id`) REFERENCES `satuans` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_keluars`
--
ALTER TABLE `barang_keluars`
  ADD CONSTRAINT `barang_keluars_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `barang_keluars_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `main_customers` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_masuks`
--
ALTER TABLE `barang_masuks`
  ADD CONSTRAINT `barang_masuks_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `barang_masuks_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `main_suppliers` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stoks`
--
ALTER TABLE `stoks`
  ADD CONSTRAINT `stoks_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
