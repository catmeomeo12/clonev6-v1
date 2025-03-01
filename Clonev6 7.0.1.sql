-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 29, 2024 lúc 04:51 AM
-- Phiên bản máy phục vụ: 10.3.39-MariaDB-cll-lve
-- Phiên bản PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hshopnabathsite_test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(255) DEFAULT NULL,
  `api_trans_id` varchar(255) DEFAULT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `buyer` varchar(255) DEFAULT NULL,
  `account` text DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) DEFAULT 'LIVE',
  `time_live` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `purchase_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `addons`
--

INSERT INTO `addons` (`id`, `name`, `description`, `image`, `createdate`, `price`, `purchase_key`) VALUES
(2, 'T?o giao d?ch ?o', 'T? ??ng t?o giao d?ch n?p ti?n, mua s?n ph?m ?o ?? t?ng uy tín cho shop', 'https://i.imgur.com/6kNRjfN.png', '2022-04-07 20:52:41', 500000, '80d0ad9234568dd81d10637e937066cd'),
(4, 'B?ng X?p H?ng N?p Ti?n', 'B?ng x?p hàng n?p ti?n cho thành viên', 'https://i.imgur.com/ZRIRAaB.png', '2022-04-12 02:42:41', 200000, 'f82b436c75e5c123ea52cb94264b184f'),
(24, 'N?p Ti?n Server 2', 'N?p ti?n b?ng n?i dung + id', 'https://i.imgur.com/CydpsWl.png', '2022-04-19 01:40:11', 500000, 'd9946de8cfcc4b27bdf7bb86f3aa06fa'),
(211, 'S? L??ng ?ã Bán ?o', '?i?u ch?nh s? l??ng ?ã bán ?o (s? l??ng ?o + s? l??ng th?t)', 'https://i.imgur.com/3tOOFDC.png', '2022-04-26 01:40:11', 50000, 'cfed8d97323f1f8fc0206f06ec891524'),
(11412, 'API 1', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, ''),
(11413, 'API 4', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, ''),
(11422, 'API 5', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-09-14 00:00:00', 1000000, ''),
(11427, 'API 6', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, ''),
(11469, 'Email Campaigns', 'G?i Email ??n toàn b? khách hàng c?a b?n', 'https://i.imgur.com/iQWAKTY.jpg', '2022-11-02 00:00:00', 300000, ''),
(11487, 'API 7', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-03 00:00:00', 1000000, ''),
(11521, 'Bán Like, Follow MXH', 'Tích h?p bán like, follow m?ng xã h?i vào mã ngu?n SHOPCLONE6', 'https://i.imgur.com/gS5RRnm.png', '2022-11-11 00:00:00', 1000000, ''),
(11522, 'Bán xu TDS - TTC', 'Ch?c n?ng bán xu TDS và TTC t? ??ng', 'https://i.imgur.com/1RHdBdT.png', '2023-09-09 00:00:00', 3000000, ''),
(11535, 'API 8', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-11 00:00:00', 1000000, ''),
(11542, 'API 9', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-23 00:00:00', 1000000, ''),
(11621, 'Tích h?p thuê OTP qua API 1', 'Ch?c n?ng thuê SIM tích h?p qua API 1', 'https://i.imgur.com/wQlNAcH.png', '2022-12-13 00:00:00', 1000000, ''),
(11634, 'Tích h?p thuê OTP qua API 2', 'Ch?c n?ng thuê SIM tích h?p qua API 2', 'https://i.imgur.com/wQlNAcH.png', '2022-12-28 00:00:00', 2000000, ''),
(11635, 'API 10', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-12-19 00:00:00', 1000000, ''),
(11645, 'API 11', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-01-02 00:00:00', 1000000, ''),
(11656, 'Tích h?p thuê OTP qua API 3', 'Ch?c n?ng thuê SIM tích h?p qua API 3', 'https://i.imgur.com/wQlNAcH.png', '2023-01-10 00:00:00', 1000000, ''),
(11657, 'API 12', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-02-06 00:00:00', 1000000, ''),
(11678, 'Tích h?p thuê OTP qua API 4', 'Ch?c n?ng thuê SIM tích h?p qua API 4', 'https://i.imgur.com/wQlNAcH.png', '2023-02-06 00:00:00', 1000000, ''),
(11698, 'Tích h?p thuê OTP qua API 5', 'Ch?c n?ng thuê SIM tích h?p qua API 5', 'https://i.imgur.com/wQlNAcH.png', '2023-05-09 00:00:00', 1000000, ''),
(11724, 'API 13', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-02-08 00:00:00', 1000000, ''),
(11735, 'API 14', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-05-10 00:00:00', 1000000, ''),
(11872, 'API 15', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-06-28 00:00:00', 1000000, ''),
(11898, 'API 16', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-10-01 00:00:00', 1000000, ''),
(11901, 'API 17', 'K?t n?i API s?n ph?m website không dùng API c?a CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-12-29 00:00:00', 1000000, ''),
(14232, 'Bán Fanpage/Group', 'Addon bán Fanpage/Group th? công', 'https://i.imgur.com/jmIjBfI.png', '2022-05-07 01:59:00', 1000000, '2c9cd5a649a325a13abc8aba5ca6b78a'),
(112246, 'BOT Telegram', 'Addon thông báo v? Telegram', 'https://i.imgur.com/9Ci2geb.png', '2022-06-26 16:00:00', 300000, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `accountName` text DEFAULT NULL,
  `accountNumber` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banned_ips`
--

CREATE TABLE `banned_ips` (
  `id` int(11) NOT NULL,
  `ip` varchar(55) DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `banned` int(11) NOT NULL DEFAULT 0,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(255) DEFAULT NULL,
  `telco` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `serial` text DEFAULT NULL,
  `pin` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `stt` int(1) NOT NULL DEFAULT 0,
  `id_api` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_connect_api` int(11) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `stt`, `id_api`, `id_connect_api`, `name`, `image`, `status`) VALUES
(7, 0, '0', 0, 'Via Tích Xanh Facebook', 'assets/storage/images/categoryYBT.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_service`
--

CREATE TABLE `category_service` (
  `id` int(11) NOT NULL,
  `name` blob DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `connect_api`
--

CREATE TABLE `connect_api` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT 'CMSNT',
  `domain` varchar(255) DEFAULT NULL,
  `username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` text DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `auto_rename_api` int(11) NOT NULL DEFAULT 0,
  `ck_connect_api` float NOT NULL DEFAULT 0,
  `status_update_ck` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `used` int(11) NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `min` int(11) NOT NULL DEFAULT 1000,
  `max` int(11) NOT NULL DEFAULT 10000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon_used`
--

CREATE TABLE `coupon_used` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(255) DEFAULT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `crypto_invoice`
--

CREATE TABLE `crypto_invoice` (
  `id` int(11) NOT NULL,
  `trans_id` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `request_id` text DEFAULT NULL,
  `amount` decimal(18,6) NOT NULL DEFAULT 0.000000,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` varchar(55) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `url_payment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `symbol_left` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `seperator` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `default_currency` int(11) NOT NULL DEFAULT 0,
  `decimal_currency` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `rate`, `symbol_left`, `symbol_right`, `seperator`, `display`, `default_currency`, `decimal_currency`) VALUES
(1, 'Đồng', 'VND', 1, '', 'đ', 'dot', 1, 1, 0),
(2, 'Dollar', 'USD', 23558, '$', '', 'comma', 1, 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document_categories`
--

CREATE TABLE `document_categories` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `domain` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `admin_note` text DEFAULT NULL,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `domains`
--

INSERT INTO `domains` (`id`, `user_id`, `domain`, `status`, `admin_note`, `create_gettime`, `update_gettime`) VALUES
(1, 3, 'sub1dl.xyz', 1, '', '2024-05-28 21:37:06', '2024-05-28 21:37:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `sotientruoc` int(11) NOT NULL DEFAULT 0,
  `sotienthaydoi` int(11) NOT NULL DEFAULT 0,
  `sotiensau` int(11) NOT NULL DEFAULT 0,
  `thoigian` datetime NOT NULL,
  `noidung` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_campaigns`
--

CREATE TABLE `email_campaigns` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `cc` text DEFAULT NULL,
  `bcc` text DEFAULT NULL,
  `content` longblob DEFAULT NULL,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_sending`
--

CREATE TABLE `email_sending` (
  `id` int(11) NOT NULL,
  `camp_id` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `response` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giftbox`
--

CREATE TABLE `giftbox` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `pay` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tid` varchar(255) DEFAULT NULL,
  `fake` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ip_white`
--

CREATE TABLE `ip_white` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `lang_default` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `lang`, `icon`, `lang_default`, `status`) VALUES
(8, 'Vietnamese', 'assets/storage/flags/flag_Vietnamese.png', 1, 1),
(16, 'English', 'assets/storage/flags/flag_English.png', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_tds_ttc`
--

CREATE TABLE `list_tds_ttc` (
  `id` int(11) NOT NULL,
  `server` varchar(55) DEFAULT NULL COMMENT 'TTC or TDS',
  `username` text DEFAULT NULL COMMENT 'Username nếu có',
  `password` text DEFAULT NULL COMMENT 'Password nếu có',
  `token` text DEFAULT NULL COMMENT 'Token nếu có',
  `cookie` text DEFAULT NULL COMMENT 'Cookie nếu có',
  `coin` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `day_limit` int(11) NOT NULL DEFAULT 0,
  `proxy_host` text DEFAULT NULL,
  `proxy_user` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `action` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `ip`, `device`, `createdate`, `action`) VALUES
(1, 1, '20.112.20.116', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 20:43:53', 'Thực hiện tạo tài khoản'),
(2, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 20:51:08', 'Đăng nhập thành công vào hệ thống'),
(3, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:17:05', 'Thêm chuyên mục (Xu TDS 1m) vào hệ thống.'),
(4, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:18:51', 'Thêm sản phẩm (Xu TDS 1m) vào hệ thống.'),
(5, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:19:24', 'Xoá ngân hàng (ID 2)'),
(6, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:19:26', 'Xoá ngân hàng (ID 3)'),
(7, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:19:28', 'Xoá ngân hàng (ID 4)'),
(8, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:19:29', 'Xoá ngân hàng (ID 5)'),
(9, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:19:31', 'Xoá ngân hàng (ID 6)'),
(10, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:19:32', 'Xoá ngân hàng (ID 7)'),
(11, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:19:34', 'Xoá ngân hàng (ID 8)'),
(12, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:19:35', 'Xoá ngân hàng (ID 10)'),
(13, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:22:05', 'Thêm ngân hàng (Techcombank - ) vào hệ thống.'),
(14, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:22:45', 'Thêm ngân hàng (MOMO - ) vào hệ thống.'),
(15, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:22:57', 'Tạo hoá đơn nạp tiền #MCED8JS'),
(16, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:23:43', 'Xoá hoá đơn transid (MCED8JS)'),
(17, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:35:18', 'Đăng nhập thành công vào hệ thống'),
(18, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:40:48', 'Đăng nhập thành công vào hệ thống'),
(19, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 21:41:08', 'Tạo hoá đơn nạp tiền #IHMWOET'),
(20, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '2022-01-25 22:14:45', 'Đăng nhập thành công vào hệ thống'),
(21, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 22:49:55', 'Đăng nhập thành công vào hệ thống'),
(22, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 22:55:03', 'Xoá chuyên mục (Xu TDS 1m ID 1)'),
(23, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 22:56:03', 'Thêm chuyên mục (XU TDS) vào hệ thống.'),
(24, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 22:56:27', 'Xoá sản phẩm (Xu TDS 1m ID 1)'),
(25, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 22:58:49', 'Thêm sản phẩm (Xu TDS 100 - 200k) vào hệ thống.'),
(26, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 22:59:44', 'Thêm sản phẩm (Xu TDS 200 - 300k) vào hệ thống.'),
(27, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:00:24', 'Thêm sản phẩm (Xu TDS 300 - 400k) vào hệ thống.'),
(28, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:01:05', 'Thêm sản phẩm (Xu TDS 400 - 500k) vào hệ thống.'),
(29, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:01:32', 'Thêm sản phẩm (Xu TDS 500 - 600k) vào hệ thống.'),
(30, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:01:44', 'Chỉnh sửa sản phẩm (Xu TDS 200 - 300k ID 3).'),
(31, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:01:56', 'Chỉnh sửa sản phẩm (Xu TDS 300 - 400k ID 4).'),
(32, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:02:06', 'Chỉnh sửa sản phẩm (Xu TDS 400 - 500k ID 5).'),
(33, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:02:18', 'Chỉnh sửa sản phẩm (Xu TDS 500 - 600k ID 6).'),
(34, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:04:43', 'Thêm sản phẩm (Xu TDS 600 - 700k) vào hệ thống.'),
(35, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:05:37', 'Thêm sản phẩm (Xu TDS 700 - 800k) vào hệ thống.'),
(36, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:06:08', 'Thêm sản phẩm (Xu TDS 800 - 900k) vào hệ thống.'),
(37, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:06:46', 'Thêm sản phẩm (Xu TDS 900 - 1TR) vào hệ thống.'),
(38, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:07:49', 'Thêm sản phẩm (Xu TDS 1TR (Không cấu hình)) vào hệ thống.'),
(39, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:32:18', 'Thêm chuyên mục (Clone Việt - Spam - Seeding) vào hệ thống.'),
(40, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:33:16', 'Chỉnh sửa chuyên mục (XU TDS ID 2).'),
(41, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:37:40', 'Thêm sản phẩm (Clone Việt 2FA, AVT Trên 30 Ngày , 100-200 Bạn bè, Very MailSever, Full gợi ý kết bạn) vào hệ thống.'),
(42, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-25 23:39:59', 'Đăng nhập thành công vào hệ thống'),
(43, 1, '117.5.156.207', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-01-26 00:09:11', 'Đăng nhập thành công vào hệ thống'),
(44, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:08:36', 'Đăng nhập thành công vào hệ thống'),
(45, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:16:36', 'Thực hiện nạp thẻ Serial: 23453234567564 - Pin: 32345675632344'),
(46, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:18:39', 'Chỉnh sửa sản phẩm (Xu TDS 100 - 200k ID 2).'),
(47, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:18:50', 'Chỉnh sửa sản phẩm (Xu TDS 200 - 300k ID 3).'),
(48, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:18:59', 'Chỉnh sửa sản phẩm (Xu TDS 300 - 400k ID 4).'),
(49, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:19:17', 'Chỉnh sửa sản phẩm (Xu TDS 400 - 500k ID 5).'),
(50, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:19:48', 'Chỉnh sửa chuyên mục (Clone Việt - Spam - Seeding ID 3).'),
(51, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:23:50', 'Thêm chuyên mục (PHẦN MỀM FAKE IP) vào hệ thống.'),
(52, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:25:32', 'Thêm sản phẩm (HMA PRO VPN - 01 Tháng) vào hệ thống.'),
(53, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:26:50', 'Chỉnh sửa sản phẩm (HMA PRO VPN - 01 Tháng Window ID 13).'),
(54, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:28:39', 'Thêm sản phẩm (Fake IP 911 Proxy Gói 150 IP) vào hệ thống.'),
(55, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:29:59', 'Thêm chuyên mục (VIA) vào hệ thống.'),
(56, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 05:41:03', 'Đăng nhập thành công vào hệ thống'),
(57, 1, NULL, NULL, '2022-01-26 06:56:58', 'Admin cập nhật thông tin'),
(58, 2, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 06:57:27', 'Thực hiện tạo tài khoản'),
(59, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 06:58:14', 'Đăng nhập thành công vào hệ thống'),
(60, 3, '123.25.48.42', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-01-26 12:54:31', 'Thực hiện tạo tài khoản'),
(61, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 16:43:34', 'Cập nhật thông tin ngân hàng (TPBank - ) vào hệ thống.'),
(62, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 16:46:29', 'Chỉnh sửa sản phẩm (Xu TDS 500 - 600k ID 6).'),
(63, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 16:46:40', 'Chỉnh sửa sản phẩm (Xu TDS 600 - 700k ID 7).'),
(64, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 16:46:49', 'Chỉnh sửa sản phẩm (Xu TDS 700 - 800k ID 8).'),
(65, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 16:46:59', 'Chỉnh sửa sản phẩm (Xu TDS 800 - 900k ID 9).'),
(66, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 16:48:01', 'Chỉnh sửa sản phẩm (HMA PRO VPN - 01 Tháng Window ID 13).'),
(67, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 16:48:12', 'Chỉnh sửa sản phẩm (Fake IP 911 Proxy Gói 150 IP ID 14).'),
(68, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 17:00:46', 'Thêm sản phẩm (CLONE VIỆT IP VIỆT REG ANDROID VERY PHONE 2FA AVT (Reg new 24h - 90% gợi ý)) vào hệ thống.'),
(69, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 17:11:40', 'Xoá tài khoản (100077278310833|aUXBPwbQBs26|AVCXWP35R52P35DQEUYXIUGGEHMD7X4D|c_user=100077278310833; xs=48:wyUj_yLsEXDrzA:2:1642843363:-1:-1; fr=0BdCSoUlENDnxkUNl.AWU4pHZYzz7t4zPb18CdYevuu7I.Bh68zi.DD.AAA.0.0.Bh68zi.AWVnfl3octY; datr=2czrYTSR3hOMuKhvYTORXLoU; oo=|EAAAAUaZA8jlABAPiusoEgalQpXN3vUz7QZBglzpCX42uua6FF5gZCmZCe9zFagdebufDACZBFIWumBUi9Fkb7CIqReJb96JUst8Rq7DNdd2hAZBgsCZAVwJTMX1H8p9NkmO6q9P7HTqEj38zSaCCL6gepXobAblzVf275wacBTWaSYBMRKPCxQp6gbdan7okDkZD|+17472600074\r)'),
(70, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 17:14:16', 'Xoá tài khoản (100077568186102|sUaTEFQBYp67|TOALIUP2EN6FFF7JEP2KJGQJVBISPPUA|c_user=100077568186102; xs=6:PVwbIs6zSo56ZA:2:1642843660:-1:-1; fr=0wya8h2nIC6zAB9s5.AWWTl1y1KZvt5a0mUfPtFEoGznw.Bh684M.XM.AAA.0.0.Bh684M.AWUXtUl1bXU; datr=As7rYfdnGicir9q23QsiIypO; oo=|EAAAAUaZA8jlABACc5IDLz3uPlLs4RcCfYZC9CT7uSaMaz518A4MujY70Oo3sUSFBNjuqOBsQ0mQTFcRRf4GejG7kZBQ4igWW90tXlCZCjeEtyCHg5WWunHPaACzwxk9QQ5wrlj1ZCOUKEQMUwtEB0FZCbImjiRaBD0dcFyR0F472ugp6MDxwjM0yTkhe1hyLgZD|+13392171246\r)'),
(71, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 18:33:02', 'Chỉnh sửa sản phẩm (Xu TDS 1TR (Không cấu hình) ID 11).'),
(72, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 18:33:25', 'Chỉnh sửa sản phẩm (Clone Việt 2FA, AVT Trên 30 Ngày , 100-200 Bạn bè, Very MailSever, Full gợi ý kết bạn ID 12).'),
(73, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 19:17:36', 'Xoá hoá đơn transid (IHMWOET)'),
(74, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 19:18:48', 'Thêm chuyên mục (TOOL) vào hệ thống.'),
(75, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 19:19:13', 'Chỉnh sửa chuyên mục (TOOL ID 6).'),
(76, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 19:20:33', 'Thêm sản phẩm (Tool Maxcare crack 4.8.3) vào hệ thống.'),
(77, 1, '117.5.156.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-26 19:40:47', 'Đăng nhập thành công vào hệ thống'),
(78, 4, '171.245.7.72', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-01-26 20:19:54', 'Thực hiện tạo tài khoản'),
(79, 5, '1.52.124.91', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Zalo iOS / 430', '2022-01-26 20:49:42', 'Thực hiện tạo tài khoản'),
(80, 5, '1.52.124.91', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Zalo iOS / 430', '2022-01-26 20:54:19', 'Tạo hoá đơn nạp tiền #J42CGH9'),
(81, 1, '117.5.156.207', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-01-26 20:57:54', 'Chỉnh sửa hoá đơn (#J42CGH9).'),
(82, 6, '117.6.169.107', 'Mozilla/5.0 (Linux; Android 8.0.0; RNE-L22) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-01-26 22:59:37', 'Thực hiện tạo tài khoản'),
(83, 7, '14.185.118.242', 'Mozilla/5.0 (Linux; Android 10; HMA-AL00 Build/HUAWEIHMA-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.93 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/347.0.0.28.237;]', '2022-01-27 11:23:09', 'Thực hiện tạo tài khoản'),
(84, 7, '14.185.118.242', 'Mozilla/5.0 (Linux; Android 10; HMA-AL00 Build/HUAWEIHMA-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.93 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/347.0.0.28.237;]', '2022-01-27 11:23:40', 'Tạo hoá đơn nạp tiền #WSFJRYV'),
(85, 7, '14.185.118.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-27 11:24:43', 'Đăng nhập thành công vào hệ thống'),
(86, 1, '117.5.156.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-27 11:29:21', 'Chỉnh sửa hoá đơn (#WSFJRYV).'),
(87, 1, '117.5.156.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-27 11:38:04', 'Cập nhật thông tin ngân hàng (Techcombank - ) vào hệ thống.'),
(88, 1, '117.5.156.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-27 11:39:13', 'Cập nhật thông tin ngân hàng (MOMO - ) vào hệ thống.'),
(89, 1, '117.5.156.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-27 11:39:46', 'Đăng nhập thành công vào hệ thống'),
(90, 1, '117.5.156.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-27 11:40:35', 'Chỉnh sửa sản phẩm (Xu TDS 1TR (Không cấu hình) ID 11).'),
(91, 8, '117.2.49.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-27 13:26:40', 'Thực hiện tạo tài khoản'),
(92, 8, '117.2.49.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-27 13:26:51', 'Tạo hoá đơn nạp tiền #F2I53AU'),
(93, 1, '117.5.156.117', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-01-27 13:35:34', 'Chỉnh sửa hoá đơn (#F2I53AU).'),
(94, 9, '59.153.243.130', 'Mozilla/5.0 (Linux; Android 10; Joy 3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.104 Mobile Safari/537.36', '2022-01-27 14:10:17', 'Thực hiện tạo tài khoản'),
(95, 9, '59.153.243.130', 'Mozilla/5.0 (Linux; Android 10; Joy 3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.104 Mobile Safari/537.36', '2022-01-27 14:23:42', 'Tạo hoá đơn nạp tiền #4J5YSW9'),
(96, 1, '117.5.156.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-27 14:33:03', 'Chỉnh sửa hoá đơn (#4J5YSW9).'),
(97, 10, '171.234.13.3', 'Mozilla/5.0 (Linux; Android 11; M2101K9AG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-01-27 14:50:44', 'Thực hiện tạo tài khoản'),
(98, 11, '113.176.189.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-27 20:59:31', 'Thực hiện tạo tài khoản'),
(99, 12, '171.252.155.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-28 10:22:47', 'Thực hiện tạo tài khoản'),
(100, 13, '116.97.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-28 10:35:59', 'Thực hiện tạo tài khoản'),
(101, 13, '116.97.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-28 10:40:58', 'Tạo hoá đơn nạp tiền #RCKSLBN'),
(102, 1, '117.5.156.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-28 12:56:15', 'Đăng nhập thành công vào hệ thống'),
(103, 14, '116.96.2.172', 'Mozilla/5.0 (Linux; Android 6.0.1; CPH1701) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-01-28 12:57:06', 'Thực hiện tạo tài khoản'),
(104, 1, '117.5.156.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-28 13:25:07', 'Đăng nhập thành công vào hệ thống'),
(105, 1, '117.5.156.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-28 14:18:30', 'Đăng nhập thành công vào hệ thống Admin.'),
(106, 1, '117.5.156.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-28 14:19:25', 'Chỉnh sửa hoá đơn (#RCKSLBN).'),
(107, 15, '113.22.175.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-28 15:21:44', 'Thực hiện tạo tài khoản'),
(108, 15, '113.22.175.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-28 15:23:05', 'Tạo hoá đơn nạp tiền #G86P4TC'),
(109, 1, '117.5.156.117', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-01-28 15:23:43', 'Đăng nhập thành công vào hệ thống'),
(110, 1, '117.5.156.117', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-01-28 15:24:12', 'Chỉnh sửa sản phẩm (Xu TDS 1TR (Không cấu hình) ID 11).'),
(111, 1, '117.5.156.117', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-01-28 15:24:31', 'Chỉnh sửa hoá đơn (#G86P4TC).'),
(112, 15, '113.22.175.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-28 15:25:26', 'Tải về đơn hàng (#UKBJ1643358314)'),
(113, 16, '171.247.76.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-28 19:43:45', 'Thực hiện tạo tài khoản'),
(114, 17, '113.177.198.27', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-01-28 21:58:48', 'Thực hiện tạo tài khoản'),
(115, 17, '113.177.198.27', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-01-28 21:59:10', 'Tạo hoá đơn nạp tiền #P16YJ7Q'),
(116, 1, '27.68.87.123', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-01-28 22:01:01', 'Chỉnh sửa hoá đơn (#P16YJ7Q).'),
(117, 17, '113.177.198.27', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-01-28 22:02:03', 'Tải về đơn hàng (#QNYH1643382107)'),
(118, 18, '171.233.200.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-29 06:46:14', 'Thực hiện tạo tài khoản'),
(119, 18, '171.233.200.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-29 07:05:11', 'Tạo hoá đơn nạp tiền #W2UZDNA'),
(120, 1, '117.5.156.117', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-01-29 07:14:42', 'Chỉnh sửa hoá đơn (#W2UZDNA).'),
(121, 18, '171.233.200.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-29 07:15:11', 'Tải về đơn hàng (#NLVI1643415301)'),
(122, 19, '27.71.122.211', 'Mozilla/5.0 (Linux; Android 9; CPH1923) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-01-29 10:17:40', 'Thực hiện tạo tài khoản'),
(123, 19, '27.71.122.211', 'Mozilla/5.0 (Linux; Android 9; CPH1923) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-01-29 10:18:02', 'Tạo hoá đơn nạp tiền #ITM5LK6'),
(124, 20, '116.96.77.90', 'Mozilla/5.0 (Linux; Android 10; SM-A307GN) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-01-29 11:55:05', 'Thực hiện tạo tài khoản'),
(125, 1, '117.5.156.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-29 12:04:00', 'Chỉnh sửa hoá đơn (#ITM5LK6).'),
(126, 21, '113.185.43.157', 'Mozilla/5.0 (Linux; Android 11; M2101K7BG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-01-29 18:12:24', 'Thực hiện tạo tài khoản'),
(127, 22, '171.225.184.206', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Mobile/15E148 Safari/604.1', '2022-01-29 19:26:24', 'Thực hiện tạo tài khoản'),
(128, 22, '171.225.184.206', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Mobile/15E148 Safari/604.1', '2022-01-29 19:26:41', 'Tạo hoá đơn nạp tiền #43OCVSM'),
(129, 23, '1.53.3.175', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-A600G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', '2022-01-29 19:49:38', 'Thực hiện tạo tài khoản'),
(130, 1, '117.5.156.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-29 20:06:44', 'Chỉnh sửa hoá đơn (#43OCVSM).'),
(131, 24, '113.180.21.30', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/56.3.162 Chrome/50.3.2661.162 Safari/537.36', '2022-01-30 11:06:46', 'Thực hiện tạo tài khoản'),
(132, 25, '103.19.99.0', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-01-30 16:27:42', 'Thực hiện tạo tài khoản'),
(133, 26, '113.165.67.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-30 20:10:01', 'Thực hiện tạo tài khoản'),
(134, 1, '117.5.156.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-31 08:26:30', 'Xoá tài khoản (100076710533962|fghvxnlzbbrhndp|Q26AM5YOWYAL3O5VYQ7TBRVYE57D22KY|bmpildlml078057@frederictonlawyer.com|TiPe#83117|30/03/1988\r)'),
(135, 27, '171.229.239.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', '2022-01-31 10:23:52', 'Thực hiện tạo tài khoản'),
(136, 28, '117.5.3.131', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-01-31 10:28:56', 'Thực hiện tạo tài khoản'),
(137, 28, '117.5.3.131', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-01-31 10:29:37', 'Tạo hoá đơn nạp tiền #DI05JHM'),
(138, 3, '14.189.154.65', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-01-31 14:33:51', 'Tạo hoá đơn nạp tiền #PMSX9OG'),
(139, 3, '14.189.154.65', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-01-31 14:34:16', 'Tạo hoá đơn nạp tiền #XR1KD8F'),
(140, 29, '113.185.41.48', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1805) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-02-01 07:22:50', 'Thực hiện tạo tài khoản'),
(141, 29, '113.185.41.48', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1805) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-02-01 07:24:08', 'Tạo hoá đơn nạp tiền #O13KCTP'),
(142, 1, '117.5.156.158', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-01 07:26:34', 'Chỉnh sửa hoá đơn (#O13KCTP).'),
(143, 1, '117.5.156.158', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-01 07:26:56', 'Chỉnh sửa hoá đơn (#XR1KD8F).'),
(144, 1, '117.5.156.158', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-01 07:27:14', 'Chỉnh sửa hoá đơn (#PMSX9OG).'),
(145, 1, '117.5.156.158', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-01 07:27:57', 'Chỉnh sửa hoá đơn (#DI05JHM).'),
(146, 30, '1.53.114.222', 'Mozilla/5.0 (Linux; Android 10; CPH1931) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-02-01 13:01:00', 'Thực hiện tạo tài khoản'),
(147, 30, '1.53.114.222', 'Mozilla/5.0 (Linux; Android 10; CPH1931) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-02-01 13:01:35', 'Thay đổi trạng thái Google 2FA'),
(148, 30, '1.53.114.222', 'Mozilla/5.0 (Linux; Android 10; CPH1931) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-02-01 13:02:39', 'Tạo hoá đơn nạp tiền #Y2EP1UD'),
(149, 31, '125.235.239.24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-02-01 19:52:35', 'Thực hiện tạo tài khoản'),
(150, 1, '117.5.156.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-02-03 10:11:44', 'Chỉnh sửa sản phẩm (Clone Việt 2FA, AVT Trên 30 Ngày , 100-200 Bạn bè, Very MailSever, Full gợi ý kết bạn ID 12).'),
(151, 1, '117.5.156.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-02-03 10:11:49', 'Chỉnh sửa sản phẩm (Clone Việt 2FA, AVT Trên 30 Ngày , 100-200 Bạn bè, Very MailSever, Full gợi ý kết bạn ID 12).'),
(152, 32, '103.7.38.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-02-05 13:07:25', 'Thực hiện tạo tài khoản'),
(153, 33, '14.232.68.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-02-05 14:24:56', 'Thực hiện tạo tài khoản'),
(154, 33, '14.232.68.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-02-05 14:27:49', 'Thực hiện nạp thẻ Serial: 20000174732389 - Pin: 924046700195786'),
(155, 33, '14.232.68.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-02-05 14:35:53', 'Thay đổi thông tin hồ sơ'),
(156, 33, '14.232.68.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-02-05 14:46:07', 'Tải về đơn hàng (#WEDH1644047155)'),
(157, 29, '113.185.44.78', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1805) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-02-05 17:55:58', 'Tải về đơn hàng (#CFOK1644058530)'),
(158, 34, '42.112.176.148', 'Mozilla/5.0 (Linux; Android 10; SM-J610F Build/QP1A.190711.020;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-05 19:23:56', 'Thực hiện tạo tài khoản'),
(159, 35, '14.189.149.239', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '2022-02-06 17:35:17', 'Thực hiện tạo tài khoản'),
(160, 36, '171.236.69.71', 'Mozilla/5.0 (Linux; Android 11; V2058) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-06 21:43:10', 'Thực hiện tạo tài khoản'),
(161, 37, '118.68.36.110', 'Mozilla/5.0 (Linux; Android 9; SM-J730G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-07 17:57:22', 'Thực hiện tạo tài khoản'),
(162, 38, '14.240.254.183', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-02-09 15:50:00', 'Thực hiện tạo tài khoản'),
(163, 39, '171.236.56.164', 'Mozilla/5.0 (Linux; Android 9; SM-J415F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-02-10 09:06:40', 'Thực hiện tạo tài khoản'),
(164, 40, '116.98.2.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-02-11 10:36:13', 'Thực hiện tạo tài khoản'),
(165, 41, '14.169.195.23', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '2022-02-11 11:31:56', 'Thực hiện tạo tài khoản'),
(166, 41, '14.169.195.23', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '2022-02-11 11:33:25', 'Thực hiện nạp thẻ Serial: 10007499513131 - Pin: 114895785967948'),
(167, 42, '1.52.202.65', 'Mozilla/5.0 (Linux; Android 11; Joy 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-12 21:31:26', 'Thực hiện tạo tài khoản'),
(168, 43, '171.236.57.152', 'Mozilla/5.0 (Linux; Android 11; Joy 4 Build/RKQ1.201105.002;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-13 17:51:29', 'Thực hiện tạo tài khoản'),
(169, 43, '171.236.57.152', 'Mozilla/5.0 (Linux; Android 11; Joy 4 Build/RKQ1.201105.002;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-13 17:51:51', 'Tạo hoá đơn nạp tiền #5MZYRK1'),
(170, 43, '171.236.57.152', 'Mozilla/5.0 (Linux; Android 11; Joy 4 Build/RKQ1.201105.002;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-13 17:52:59', 'Tạo hoá đơn nạp tiền #2UEKQT8'),
(171, 43, '171.236.57.152', 'Mozilla/5.0 (Linux; Android 11; Joy 4 Build/RKQ1.201105.002;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-13 17:54:06', 'Tạo hoá đơn nạp tiền #QHJAUG7'),
(172, 43, '171.236.57.152', 'Mozilla/5.0 (Linux; Android 11; Joy 4 Build/RKQ1.201105.002;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-13 17:59:33', 'Tạo hoá đơn nạp tiền #3F06DTQ'),
(173, 1, '113.23.51.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '2022-02-13 18:12:19', 'Chỉnh sửa hoá đơn (#3F06DTQ).'),
(174, 1, '113.23.51.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '2022-02-13 18:12:55', 'Chỉnh sửa hoá đơn (#QHJAUG7).'),
(175, 1, '113.23.51.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '2022-02-13 18:13:04', 'Chỉnh sửa hoá đơn (#2UEKQT8).'),
(176, 1, '113.23.51.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '2022-02-13 18:13:11', 'Chỉnh sửa hoá đơn (#5MZYRK1).'),
(177, 44, '14.165.108.115', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Mobile/15E148 Safari/604.1', '2022-02-13 22:18:27', 'Thực hiện tạo tài khoản'),
(178, 44, '14.165.108.115', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Mobile/15E148 Safari/604.1', '2022-02-13 22:20:53', 'Thực hiện nạp thẻ Serial: 10008490838507 - Pin: 418065816257536'),
(179, 44, '14.165.108.115', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/189.0.413529291 Mobile/15E148 Safari/604.1', '2022-02-14 01:05:34', 'Đăng nhập thành công vào hệ thống'),
(180, 45, '113.174.14.179', 'Mozilla/5.0 (Linux; Android 11; SM-A105G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.104 Mobile Safari/537.36', '2022-02-14 11:48:56', 'Thực hiện tạo tài khoản'),
(181, 46, '27.71.122.85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', '2022-02-14 15:43:46', 'Thực hiện tạo tài khoản'),
(182, 47, '116.97.105.36', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-02-15 17:48:45', 'Thực hiện tạo tài khoản'),
(183, 48, '171.253.143.247', 'Mozilla/5.0 (Linux; Android 11; SM-M515F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.94 Mobile Safari/537.36', '2022-02-16 02:00:26', 'Thực hiện tạo tài khoản'),
(184, 49, '58.186.113.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2022-02-16 13:24:40', 'Thực hiện tạo tài khoản'),
(185, 3, '14.249.29.228', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-02-16 15:29:41', 'Thực hiện nạp thẻ Serial: 10008091930442 - Pin: 839283213424563'),
(186, 3, '14.249.29.228', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-02-16 15:30:39', 'Đăng nhập thành công vào hệ thống'),
(187, 3, '14.249.29.228', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-02-17 09:54:25', 'Đăng nhập thành công vào hệ thống'),
(188, 3, '14.249.29.228', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-02-17 10:24:33', 'Đăng nhập thành công vào hệ thống'),
(189, 50, '116.96.46.236', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-02-17 13:49:08', 'Thực hiện tạo tài khoản'),
(190, 51, '171.234.13.219', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/199.0.427504638 Mobile/15E148 Safari/604.1', '2022-02-17 15:47:11', 'Thực hiện tạo tài khoản'),
(191, 26, '14.245.187.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '2022-02-17 21:11:46', 'Tạo hoá đơn nạp tiền #4JPEYCD'),
(192, 52, '14.170.111.7', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.124 Safari/537.36', '2022-02-18 03:26:13', 'Thực hiện tạo tài khoản'),
(193, 53, '2402:800:63ae:eeba:54b3:ee13:7c0a:bcdb, 162.158.178.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-11 01:34:15', 'Thực hiện tạo tài khoản'),
(194, 53, '2402:800:b582:1b9e:9f1e:9fef:b9cc:81a3, 172.68.253.41', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-11 01:54:26', 'Đăng nhập thành công vào hệ thống'),
(195, 53, '171.252.17.107, 172.70.92.205', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-11 03:16:55', 'Thêm mã giảm giá (NE7WUPK2) vào hệ thống.'),
(196, 53, NULL, NULL, '2022-03-11 03:22:35', 'Admin cập nhật thông tin'),
(197, 53, '171.252.17.107, 172.70.92.205', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-11 03:30:54', 'Tạo hộp quà trị giá 100.000đ số lượng 30.'),
(198, 53, '171.252.17.107, 172.70.92.205', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-11 03:32:35', 'Xoá hộp quà ID (10)'),
(199, 53, '171.252.17.107, 172.70.92.205', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-11 03:32:39', 'Xoá hộp quà ID (11)'),
(200, 53, '171.252.17.107, 172.70.92.205', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-11 03:32:42', 'Xoá hộp quà ID (12)'),
(201, 53, '171.252.17.107, 172.70.92.205', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-11 03:32:46', 'Xoá hộp quà ID (13)'),
(202, 53, '171.252.17.107, 172.70.92.205', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-11 03:32:49', 'Xoá hộp quà ID (14)'),
(203, 53, '171.252.17.107, 172.70.92.205', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-11 03:32:55', 'Xoá hộp quà ID (15)'),
(204, 53, '171.252.17.107, 172.70.147.63', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-11 03:42:01', 'Tạo hoá đơn nạp tiền #RC523EP'),
(205, 53, '171.252.17.107, 172.70.147.63', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-11 03:43:24', 'Gửi thông báo đến thành viên.'),
(206, 53, '2402:800:63ae:eeba:5008:6870:5660:9a6b, 162.158.179.252', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-11 11:02:35', 'Tạo hoá đơn nạp tiền #875EG1Z'),
(207, 54, '116.110.40.94, 172.70.147.169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 LightSpeed [FBAN/MessengerLiteForiOS;FBAV/351.0.0.14.109;FBBV/354741859;FBDV/iPhone9,3;FBMD/iPhone;FBSN/iOS;FBSV/13.3;FBSS/2;FBCR/;FBID/phone;FBL', '2022-03-11 11:08:24', 'Thực hiện tạo tài khoản'),
(208, 55, '2405:4800:75c4:597b:910f:3f3b:d01c:dc7a, 172.70.92.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.36', '2022-03-11 11:17:17', 'Thực hiện tạo tài khoản'),
(209, 55, '2405:4800:75c4:597b:910f:3f3b:d01c:dc7a, 172.70.188.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.36', '2022-03-11 11:25:30', 'Tải về đơn hàng (#WYQV1646972283)'),
(210, 55, '2405:4800:75c4:597b:910f:3f3b:d01c:dc7a, 172.68.254.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.36', '2022-03-11 11:27:09', 'Nhập 1 SPIN từ đơn hàng #MXES1646972829'),
(211, 54, '116.110.40.94, 172.68.254.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-12 07:45:39', 'Đăng nhập thành công vào hệ thống'),
(212, 54, '116.110.40.94, 172.68.254.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-12 07:49:11', 'Tải về đơn hàng (#DUSI1646971746)'),
(213, 56, '2402:800:62cd:d2df:cddf:bb7d:f3d7:7390, 162.158.179.117', 'Mozilla/5.0 (Linux; Android 10; Active 3 Build/QP1A.190711.020;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.58 Mobile Safari/537.36 Zalo android/12100609 ZaloTheme/light ZaloLanguage/vi', '2022-03-12 15:18:05', 'Thực hiện tạo tài khoản'),
(214, 57, '2001:ee0:52fa:7d40:b011:1acc:70a9:9e5c, 162.158.178.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '2022-03-12 15:24:00', 'Thực hiện tạo tài khoản'),
(215, 57, '2001:ee0:52fa:7d40:b011:1acc:70a9:9e5c, 162.158.178.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36 Edg/99.0.1150.39', '2022-03-12 15:24:49', 'Tạo hoá đơn nạp tiền #85QE6TD'),
(216, 58, '2402:800:63bd:9cf5:581f:f357:39ac:b2b7, 162.158.179.252', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_8_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Zalo iOS/438 ZaloTheme/light ZaloLanguage/vn', '2022-03-12 16:47:59', 'Thực hiện tạo tài khoản'),
(217, 59, '2001:ee0:4e0d:180:4857:ba3e:aede:1a7a, 162.158.179.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.104 Safari/537.36', '2022-03-13 00:29:49', 'Thực hiện tạo tài khoản'),
(218, 60, '27.76.129.105, 162.158.178.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-14 15:49:47', 'Thực hiện tạo tài khoản'),
(219, 53, NULL, NULL, '2022-03-14 15:50:23', 'Admin cập nhật thông tin'),
(220, 60, '27.76.129.105, 162.158.178.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-14 15:51:23', 'Đăng nhập thành công vào hệ thống Admin.'),
(221, 60, '27.76.129.105, 162.158.178.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-14 15:55:32', 'Chỉnh sửa sản phẩm (Xu TDS 100 - 200k ID 2).'),
(222, 53, '2402:800:b403:2dc1:1d4c:6432:579c:8b99, 172.68.254.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-14 22:07:24', 'Đăng nhập thành công vào hệ thống'),
(223, 53, '2402:800:b403:2dc1:1d4c:6432:579c:8b99, 172.68.254.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-14 22:08:09', 'Tạo hoá đơn nạp tiền #PGFV86U'),
(224, 53, '116.106.160.23, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-15 02:55:27', 'Đăng nhập thành công vào hệ thống'),
(225, 53, '116.106.160.23, 162.158.178.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-15 03:05:39', 'Đăng nhập thành công vào hệ thống Admin.'),
(226, 60, '27.76.129.105, 162.158.179.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-15 08:14:20', 'Đăng nhập thành công vào hệ thống'),
(227, 60, '27.76.129.105, 162.158.179.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-15 08:14:36', 'Đăng nhập thành công vào hệ thống Admin.'),
(228, 53, '171.240.210.226, 162.158.178.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-15 17:04:20', 'Đăng nhập thành công vào hệ thống'),
(229, 53, '171.240.210.226, 162.158.178.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-15 17:24:52', 'Tạo hoá đơn nạp tiền #1MVARTQ'),
(230, 53, '171.240.210.226, 172.68.254.107', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-16 18:36:59', 'Đăng nhập thành công vào hệ thống');
INSERT INTO `logs` (`id`, `user_id`, `ip`, `device`, `createdate`, `action`) VALUES
(231, 53, '171.240.210.226, 172.68.254.107', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-16 18:37:36', 'Đăng nhập thành công vào hệ thống Admin.'),
(232, 53, '171.240.210.226, 162.158.178.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 01:59:14', 'Tạo hoá đơn nạp tiền #MZ7YP8C'),
(233, 53, '171.240.210.226, 162.158.179.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:04:48', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(234, 53, '171.240.210.226, 172.68.253.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:07:29', 'Xoá người dùng (haimobile ID 60)'),
(235, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:35', 'Xoá người dùng (gagaga ID 58)'),
(236, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:35', 'Xoá người dùng (longls025 ID 55)'),
(237, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:35', 'Xoá người dùng (sssssssssss ID 59)'),
(238, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:35', 'Xoá người dùng (nguyenhoadong07 ID 52)'),
(239, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:35', 'Xoá người dùng (Test5 ID 56)'),
(240, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:35', 'Xoá người dùng (nguyenducphat ID 50)'),
(241, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:35', 'Xoá người dùng (Thien ID 51)'),
(242, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:35', 'Xoá người dùng (svdaaeavsd ID 57)'),
(243, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:36', 'Xoá người dùng (Ducvumanh251 ID 54)'),
(244, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:47', 'Xoá người dùng (boyhdtk1@gmail.com ID 47)'),
(245, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:47', 'Xoá người dùng (duchai10 ID 46)'),
(246, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:47', 'Xoá người dùng (hoducsu08 ID 49)'),
(247, 53, '171.240.210.226, 172.68.253.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 02:08:48', 'Xoá người dùng (Quoccuongvl1998 ID 48)'),
(248, 53, '171.240.210.226, 162.158.178.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 21:34:16', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(249, 53, '171.240.210.226, 172.68.254.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '2022-03-17 22:43:00', 'Gửi thông báo đến thành viên.'),
(250, 53, '27.71.108.126, 162.158.178.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', '2022-03-19 12:36:47', 'Đăng nhập thành công vào hệ thống'),
(251, 53, '27.71.108.126, 162.158.178.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', '2022-03-19 12:38:52', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(252, 53, '2402:800:639e:915a:41a3:c2e0:77b3:9cd2, 162.158.178.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', '2022-03-20 13:02:47', 'Đăng nhập thành công vào hệ thống'),
(253, 53, '2402:800:639e:915a:41a3:c2e0:77b3:9cd2, 162.158.178.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', '2022-03-20 13:03:01', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(254, 53, '171.240.210.226, 162.158.179.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', '2022-03-20 21:32:57', 'Đăng nhập thành công vào hệ thống'),
(255, 53, '171.240.210.226, 172.68.253.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', '2022-03-20 21:36:29', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(256, 53, '171.240.210.226, 162.158.179.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', '2022-03-24 18:26:17', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(257, 53, '171.240.210.226, 162.158.179.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', '2022-03-24 23:52:10', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(258, 53, '2402:800:bda6:243e:fd7d:e1b7:8ac2:4a0e, 162.158.179.46', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-03-25 00:08:08', 'Đăng nhập thành công vào hệ thống'),
(259, 53, '171.240.210.226, 162.158.178.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', '2022-03-25 07:58:54', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(260, 53, '171.240.210.226, 162.158.178.174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', '2022-03-25 09:17:26', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(261, 53, '2402:800:63ae:958d:4577:7a04:f16d:b60, 162.158.179.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', '2022-03-26 00:37:03', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(262, 53, '2402:800:63ae:958d:d5c6:3eb6:a416:60f3, 162.158.178.174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', '2022-03-27 00:08:01', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(263, 53, '2401:d800:d9ec:4c8a:a582:7222:9183:3bd8, 162.158.178.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', '2022-03-27 12:56:54', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(264, 53, '2401:d800:d9ec:4c8a:a582:7222:9183:3bd8, 162.158.179.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', '2022-03-27 13:01:19', 'Thêm chuyên mục tài liệu (bảng đánh giá bộ phận IT) vào hệ thống.'),
(265, 53, '2401:d800:d9ec:4c8a:a582:7222:9183:3bd8, 162.158.179.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', '2022-03-27 13:02:13', 'Thêm tài liệu vào hệ thống.'),
(266, 53, '171.240.210.226, 162.158.178.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', '2022-03-28 00:50:00', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(267, 53, '171.240.210.226, 162.158.178.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', '2022-03-29 02:34:18', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(268, 53, '171.240.210.226, 162.158.178.174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', '2022-03-30 01:46:39', 'Đăng nhập thành công vào hệ thống'),
(269, 53, '2402:800:63ae:f999:840e:6900:660f:8115, 162.158.178.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-01 00:12:10', 'Tạo hoá đơn nạp tiền #M5V76JX'),
(270, 53, '2402:800:63ae:de56:e557:9ec1:fff0:b705, 162.158.178.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-01 22:34:24', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(271, 53, '171.240.209.44, 162.158.179.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-02 20:18:00', 'Thay đổi thông tin hồ sơ'),
(272, 53, '171.240.209.44, 162.158.179.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-02 20:19:08', 'Thay đổi thông tin hồ sơ'),
(273, 53, '116.102.247.213, 162.158.178.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-03 13:01:34', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(274, 53, '116.102.247.213, 162.158.179.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-03 13:21:31', 'Thêm bài viết (4356ytgfesdad) vào hệ thống.'),
(275, 53, '116.102.247.213, 162.158.179.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-03 13:22:16', 'Thêm bài viết (3423432) vào hệ thống.'),
(276, 53, '171.252.21.90, 172.68.254.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 00:07:24', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(277, 53, '171.252.21.90, 172.68.254.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 00:13:33', 'Xoá hoá đơn transid (M5V76JX)'),
(278, 53, '171.252.21.90, 172.68.254.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 00:13:43', 'Xoá hoá đơn transid (MZ7YP8C)'),
(279, 53, '171.252.21.90, 172.68.254.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 00:13:43', 'Xoá hoá đơn transid (1MVARTQ)'),
(280, 53, '171.252.21.90, 162.158.178.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 00:55:34', 'Xoá hoá đơn transid (PGFV86U)'),
(281, 53, '171.252.21.90, 162.158.179.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 01:10:16', 'Xoá tài khoản (wwwwwwwwwwwwwwwwwwwwwwwww\r)'),
(282, 53, '171.252.21.90, 162.158.179.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 01:10:16', 'Xoá tài khoản (wwwwwwwwwwwwwwwwwwwwwwwww)'),
(283, 53, '171.252.21.90, 162.158.179.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 01:11:16', 'Gửi thông báo đến thành viên.'),
(284, 53, '171.252.21.90, 162.158.179.252', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 01:23:34', 'Gửi thông báo đến thành viên.'),
(285, 53, '115.78.162.241, 162.158.179.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 08:27:01', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(286, 53, '2402:800:63ae:889f:8117:2704:5fb6:dd38, 162.158.178.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 16:52:17', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(287, 53, '2402:800:63ae:889f:8117:2704:5fb6:dd38, 162.158.179.252', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', '2022-04-04 18:12:11', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(288, 53, '171.252.21.90, 172.70.92.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2022-04-06 01:05:00', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(289, 53, '171.252.21.90, 172.70.147.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2022-04-06 01:07:46', 'Xoá đơn hàng (#JW1648360978)'),
(290, 53, '113.161.163.97, 162.158.163.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2022-04-06 09:04:31', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(291, 53, '171.252.21.90, 172.70.147.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2022-04-06 21:23:38', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(292, 53, '171.252.21.90, 172.70.92.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2022-04-06 22:45:11', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(293, 53, '2402:800:63ae:889f:79fa:b434:d68a:857, 162.158.179.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2022-04-07 17:14:30', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(294, 53, '2402:800:63ae:889f:79fa:b434:d68a:857, 162.158.179.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2022-04-07 17:31:05', 'Kích hoạt thành công Addon (Template 3)'),
(295, 53, '2402:800:63ae:889f:79fa:b434:d68a:857, 162.158.178.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2022-04-07 18:06:05', 'Thêm sản phẩm (bảng đánh giá bộ phận IT) vào hệ thống.'),
(296, 53, '2402:800:63ae:889f:79fa:b434:d68a:857, 162.158.179.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2022-04-07 21:22:15', 'Đăng nhập thành công vào hệ thống'),
(297, 53, '116.106.165.144, 172.70.142.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-13 16:29:47', 'Đăng nhập thành công vào hệ thống'),
(298, 53, '116.106.165.144, 172.70.142.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-13 16:30:07', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(299, 53, '116.106.165.144, 172.70.142.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-13 16:32:07', 'Kích hoạt thành công Addon (Template 4)'),
(300, 53, '116.106.165.144, 172.70.142.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-13 16:32:43', 'Kích hoạt thành công Addon (T?o giao d?ch ?o)'),
(301, 53, '116.106.165.144, 172.70.142.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-13 16:33:16', 'Kích hoạt thành công Addon (B?ng X?p H?ng N?p Ti?n)'),
(302, 54, '2405:4802:154:13f0:a471:d853:af54:ad17, 162.158.162.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2022-04-13 17:41:04', 'Thực hiện tạo tài khoản'),
(303, 54, '2405:4802:154:13f0:a471:d853:af54:ad17, 162.158.162.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2022-04-13 17:41:19', 'Tạo hoá đơn nạp tiền #5R1X4'),
(304, 53, '116.106.165.144, 172.70.92.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-14 15:33:59', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(305, 53, '116.106.165.144, 172.70.188.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-14 16:01:30', 'Tải về dữ liệu ProductOrders.csv'),
(306, 53, '116.106.165.144, 172.70.92.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', '2022-04-15 01:36:21', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(307, 53, '27.71.109.130, 172.70.93.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-19 17:36:17', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(308, 53, '27.71.109.130, 172.70.93.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-19 17:38:25', 'Kích hoạt thành công Addon (N?p Ti?n Server 2)'),
(309, 55, '2405:4802:271:b630:47f:a5ab:75b7:38f9, 162.158.179.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-22 15:21:33', 'Thực hiện tạo tài khoản'),
(310, 55, '2405:4802:271:b630:47f:a5ab:75b7:38f9, 162.158.179.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-22 15:21:53', 'Tạo hoá đơn nạp tiền #UKY2M'),
(311, 55, '2405:4802:271:b630:47f:a5ab:75b7:38f9, 162.158.179.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-22 15:22:53', 'Tạo hoá đơn nạp tiền #ZAMWQ'),
(312, 55, '2405:4802:271:b630:47f:a5ab:75b7:38f9, 172.70.93.53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-22 20:59:09', 'Đăng nhập thành công vào hệ thống'),
(313, 53, '27.71.109.163, 162.158.162.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-22 23:55:48', 'Đăng nhập thành công vào hệ thống'),
(314, 53, '27.71.109.163, 162.158.162.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-22 23:56:07', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(315, 53, '27.65.235.151, 172.70.143.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-07 02:04:16', 'Đăng nhập thành công vào hệ thống'),
(316, 53, '27.65.235.151, 172.70.143.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-07 02:04:33', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(317, 53, '27.65.235.151, 172.70.92.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-07 02:42:47', 'Thêm Fanpage/Group (dsadsa) vào hệ thống.'),
(318, 53, '27.65.235.151, 172.70.147.85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-07 11:43:34', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(319, 53, '27.71.108.77, 172.70.142.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-08 09:41:16', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(320, 53, '113.161.163.97, 172.70.142.85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-09 12:56:57', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(321, 53, '113.161.163.97, 172.70.142.85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-09 15:56:47', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(322, 53, '27.65.235.191, 162.158.170.95', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 03:18:40', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(323, 53, '27.65.235.191, 162.158.170.95', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 03:19:35', 'Thêm IP (27.65.235.191, 162.158.170.95) vào danh sách cho phép truy cập.'),
(324, 56, '27.65.235.191, 162.158.170.95', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 03:21:44', 'Thực hiện tạo tài khoản'),
(325, 53, '27.65.235.191, 162.158.170.95', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 03:22:05', 'Đăng nhập thành công vào hệ thống'),
(326, 53, '27.65.235.191, 162.158.170.95', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 03:22:11', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(327, 53, '27.65.235.191, 162.158.163.166', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-05-10 10:55:30', 'Đăng nhập thành công vào hệ thống'),
(328, 53, '27.65.235.191, 162.158.163.166', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-05-10 10:55:39', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(329, 53, '2401:d800:a7f:6321:e4d0:d9ec:4966:9f9d, 162.158.179.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 17:48:31', 'Đăng nhập thành công vào hệ thống'),
(330, 53, '2401:d800:a7f:6321:e4d0:d9ec:4966:9f9d, 162.158.179.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 17:48:38', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(331, 53, '27.65.235.191, 172.70.147.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 17:49:20', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(332, 53, '2401:d800:a7f:6321:6518:90ec:421a:90ac, 162.158.179.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 17:51:12', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(333, 53, '2401:d800:a7f:6321:6518:90ec:421a:90ac, 162.158.179.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 17:51:31', 'Xoá IP Sạch khỏi hệ thống (27.65.235.191, 162.158.170.95 ID 1)'),
(334, 53, '2401:d800:a7f:6321:6518:90ec:421a:90ac, 162.158.179.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 17:51:41', 'Thêm IP (2401:d800:a7f:6321:6518:90ec:421a:90ac, 162.158.179.148) vào danh sách cho phép truy cập.'),
(335, 53, '2401:d800:a7f:6321:6518:90ec:421a:90ac, 162.158.179.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-10 17:51:45', 'Xoá IP Sạch khỏi hệ thống (2401:d800:a7f:6321:6518:90ec:421a:90ac, 162.158.179.148 ID 2)'),
(336, 53, '27.65.235.191, 172.70.147.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-12 15:07:01', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(337, 53, '27.65.235.191, 172.70.147.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-12 15:11:17', 'Cập nhật thông tin thành viên locchicken197@gmail.com[53].'),
(338, 53, NULL, NULL, '2022-05-12 15:11:17', 'Bạn được Admin thay đổi thông tin.'),
(339, 53, '27.65.235.191, 172.70.147.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-12 15:11:25', 'Đăng nhập thành công vào hệ thống CTV.'),
(340, 53, '27.65.235.191, 172.70.147.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-12 15:37:30', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(341, 53, '27.65.235.191, 172.70.92.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', '2022-05-12 18:10:20', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(342, 53, '2402:800:63ae:9817:495f:e53d:9765:c1b4, 162.158.179.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '2022-05-13 13:38:59', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(343, 53, '2402:800:639e:f2e9:80e6:b3dc:273d:521f, 162.158.179.60', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '2022-05-14 09:16:10', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(344, 53, '2402:800:639e:f2e9:3d06:9787:d887:d0f4, 162.158.178.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-15 21:01:19', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(345, 53, '2402:800:63ae:9817:90f4:d791:5704:80f8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-17 01:00:03', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(346, 53, '27.65.235.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-17 01:53:18', 'Thêm mã giảm giá (K8HXPQ99) vào hệ thống.'),
(347, 53, '27.65.235.191, 162.158.162.85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-19 00:26:19', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(348, 53, '27.65.235.191, 172.70.143.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-19 15:48:08', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(349, 53, '27.71.109.185, 172.70.147.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-20 19:06:13', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(350, 53, '27.71.109.185, 162.158.170.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-20 23:58:25', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(351, 53, '27.71.109.185, 162.158.170.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-21 11:50:42', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(352, 53, '27.71.109.185, 172.70.147.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-22 21:22:07', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(353, 53, '27.65.235.191, 162.158.162.121', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-05-24 18:42:58', 'Đăng nhập thành công vào hệ thống'),
(354, 53, '27.65.235.191, 162.158.162.121', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-05-24 18:43:10', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(355, 53, '171.227.77.233, 172.70.142.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-25 22:24:02', 'Đăng nhập thành công vào hệ thống'),
(356, 53, '171.227.77.233, 172.70.142.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2022-05-25 22:24:09', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(357, 53, '171.227.77.233, 162.158.170.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-27 19:27:26', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(358, 53, '171.227.77.233, 162.158.170.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-27 21:04:14', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(359, 53, '2402:800:639e:dd75:6502:2442:e917:339c, 162.158.178.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-29 15:13:46', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(360, 53, '2402:800:781d:2895:4584:4d7c:4232:bd71, 162.158.179.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-30 14:48:55', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(361, 53, '171.227.77.233, 172.70.147.85', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-05-30 18:28:03', 'Đăng nhập thành công vào hệ thống'),
(362, 53, '171.227.77.233, 172.70.147.85', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-05-30 18:28:12', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(363, 53, '171.227.77.233, 172.70.147.85', 'Mozilla/5.0 (Linux; Android 11; Live 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36', '2022-05-30 18:28:26', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(364, 53, '171.227.77.233, 172.70.147.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-30 18:34:59', 'Đăng nhập thành công vào hệ thống'),
(365, 53, '171.227.77.233, 172.70.147.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-30 18:35:06', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(366, 53, '2401:d800:a7a:efae:5004:e6a5:d222:bd5, 162.158.179.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', '2022-06-01 19:03:05', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(367, 53, '2401:d800:28b8:ca7f:f17e:3d85:bbbf:d75c, 172.68.253.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-03 16:26:15', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(368, 53, '2402:800:639e:dd75:ccc5:1548:e146:e2bc, 162.158.178.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-04 18:55:03', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(369, 53, '2402:800:639e:dd75:b17c:d745:ec2d:e51b, 162.158.179.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-05 11:14:47', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(370, 53, '2001:ee0:51f2:6a00:4829:fafb:7c9f:be4, 162.158.179.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-07 17:59:31', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(371, 53, '27.71.109.115, 162.158.162.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-10 23:58:05', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(372, 53, '27.71.109.115, 162.158.170.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-12 21:24:58', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(373, 53, '115.78.162.241, 162.158.162.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-16 14:13:58', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(374, 53, '27.71.109.115, 172.70.147.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-18 12:19:26', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(375, 53, '27.71.109.115, 172.70.147.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-18 12:22:00', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(376, 53, '27.71.109.115, 162.158.163.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-19 14:04:37', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(377, 53, '2001:ee0:51e5:b360:1d7b:6b3e:6c45:e526, 162.158.179.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-23 18:44:27', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(378, 53, '2001:ee0:51e5:b360:ac80:b3f2:9dbc:6e8e, 162.158.178.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-23 22:04:26', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(379, 53, '2402:800:639e:eba8:f4a0:516:94a0:fefd, 162.158.179.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-25 18:34:17', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(380, 53, '2402:800:639e:eba8:f4a0:516:94a0:fefd, 172.68.253.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-25 18:40:17', 'Đăng nhập thành công vào hệ thống CTV.'),
(381, 53, '2401:d800:8c6:55fa:2d89:5d0f:855:7e1c, 162.158.179.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-01 19:50:44', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(382, 53, '2401:d800:9944:5aeb:3ce5:1366:1bf4:9e39, 162.158.178.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-03 19:04:59', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(383, 53, '222.255.66.167, 172.70.188.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-03 19:20:01', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(384, 53, '113.161.166.155, 162.158.179.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-05 14:31:54', 'Đăng nhập thành công vào hệ thống'),
(385, 53, '113.161.166.155, 162.158.179.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-05 14:32:02', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(386, 53, '2402:800:3954:9e1c:3c0f:7bc8:904e:76bf, 162.158.179.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-05 18:08:09', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(387, 53, '2402:800:f68d:edca:9e3:7985:3d30:f761, 162.158.179.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-08 02:00:07', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(388, 53, '2401:d800:590d:7f9:4caa:b23e:1514:1f25, 162.158.178.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-14 19:26:14', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(389, 53, '2402:800:639e:ee4f:e03f:6ea6:2e1a:85e1, 162.158.179.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-15 22:35:59', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(390, 53, '2402:800:639e:ee4f:5077:9b3b:a35c:a03c, 162.158.179.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-16 20:34:13', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(391, 53, '2402:800:7bad:6720:510c:61c8:2e22:7a1d, 162.158.179.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-18 00:39:46', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(392, 53, '2402:800:b40e:5a5:3ce5:ee06:1e25:3f, 162.158.179.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 01:15:09', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(393, 53, '2402:800:b40e:5a5:d12a:596b:c865:c5a0, 162.158.179.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 17:10:18', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(394, 53, '2402:800:f449:db58:d57e:9ca0:3b6f:40b7, 162.158.178.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 22:07:56', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(395, 53, '2401:d800:2886:6c6d:a1f6:e688:a4da:cdd4, 162.158.178.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 22:21:11', 'Đăng nhập thành công vào hệ thống'),
(396, 53, '2401:d800:2886:6c6d:a1f6:e688:a4da:cdd4, 162.158.178.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 22:21:25', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(397, 53, '2401:d800:2886:6c6d:a1f6:e688:a4da:cdd4, 162.158.178.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 22:21:41', 'Set mặc định ngôn ngữ (English ID 16)'),
(398, 53, '2401:d800:2886:6c6d:a1f6:e688:a4da:cdd4, 162.158.178.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 22:21:44', 'Set mặc định ngôn ngữ (Vietnamese ID 8)'),
(399, 53, '2401:d800:2886:6c6d:a1f6:e688:a4da:cdd4, 162.158.178.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 22:21:48', 'Set mặc định ngôn ngữ (English ID 16)'),
(400, 53, '2401:d800:2886:6c6d:a1f6:e688:a4da:cdd4, 162.158.178.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 22:21:50', 'Set mặc định ngôn ngữ (Vietnamese ID 8)'),
(401, 53, '2401:d800:2886:6c6d:a1f6:e688:a4da:cdd4, 162.158.178.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 22:21:51', 'Set mặc định ngôn ngữ (English ID 16)'),
(402, 53, '2401:d800:2886:6c6d:a1f6:e688:a4da:cdd4, 162.158.178.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 22:21:52', 'Set mặc định ngôn ngữ (Vietnamese ID 8)'),
(403, 53, '2401:d800:2886:6c6d:a1f6:e688:a4da:cdd4, 162.158.178.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 22:21:54', 'Set mặc định ngôn ngữ (English ID 16)'),
(404, 53, '2401:d800:2886:6c6d:a1f6:e688:a4da:cdd4, 162.158.178.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 22:21:57', 'Set mặc định ngôn ngữ (Vietnamese ID 8)'),
(405, 53, '2401:d800:2886:6c6d:a1f6:e688:a4da:cdd4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-22 02:21:26', 'Thay đổi nội dung ngôn ngữ.'),
(406, 53, '2401:d800:fbb9:a666:a56f:a069:562f:6d17, 172.68.253.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-24 03:07:31', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(407, 53, '2402:800:b7f0:9642:25e9:7725:4551:eac, 162.158.179.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-24 14:22:04', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(408, 53, '2402:800:b7f0:9642:2449:9b64:8386:a111, 172.68.253.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-25 02:23:56', 'Tạo hoá đơn nạp tiền #ABCKG'),
(409, 53, '2402:800:fe4f:e2a4:99b:93b4:2eba:7fb7, 172.68.253.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-25 20:59:50', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(410, 53, '2401:d800:2aff:2880:1d71:dea6:8212:d8d, 172.68.254.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-27 01:17:57', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(411, 53, '2402:800:7ca4:6a91:8465:3474:a4e1:241b, 162.158.179.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-28 18:16:14', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(412, 53, '2402:800:639e:9971:5424:a34a:9023:8b9e, 172.68.254.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-31 11:01:07', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(413, 53, '2402:800:639e:9971:bcc1:30c6:9898:524f, 162.158.178.238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-31 19:27:00', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(414, 53, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-08-04 21:18:27', 'Đăng nhập thành công vào hệ thống'),
(415, 53, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-08-04 21:19:01', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(416, 53, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-10 22:21:05', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(417, 53, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-10 22:23:35', 'Đăng nhập thành công vào hệ thống CTV.'),
(418, 53, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-15 00:59:52', 'Đăng nhập thành công vào hệ thống CTV.'),
(419, 53, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-20 20:40:01', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(420, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-26 01:34:12', 'Đăng nhập thành công vào hệ thống'),
(421, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-26 01:34:18', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(422, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-26 01:36:14', 'Đăng nhập thành công vào hệ thống CTV.'),
(423, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-26 01:36:49', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(424, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-26 02:03:24', 'Thay đổi mật khẩu'),
(425, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-26 02:04:07', 'Đăng nhập thành công vào hệ thống'),
(426, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-26 02:05:07', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(427, 53, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-26 21:06:45', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(428, 53, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-26 21:45:35', 'Login user nhatloc200@gmail.com'),
(429, 56, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-27 11:25:34', 'Thay đổi thông tin hồ sơ'),
(430, 56, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-27 11:26:17', 'Thay đổi mật khẩu'),
(431, 53, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-27 11:26:27', 'Đăng nhập thành công vào hệ thống'),
(432, 53, '27.71.109.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-27 11:26:33', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(433, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-30 20:55:25', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(434, 53, '2402:800:639e:db93:19f0:f41c:a18f:b302', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-02 01:02:37', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(435, 53, '2402:800:639e:f701:39c1:7bc7:fcab:fd5e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-02 20:35:49', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(436, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-05 19:56:33', 'Đăng nhập thành công vào hệ thống'),
(437, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-05 19:56:40', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(438, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-07 03:48:07', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(439, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-07 13:56:20', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(440, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-07 20:46:34', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(441, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-07 20:46:42', '[Warning] Đăng nhập thành công vào hệ thống Admin');
INSERT INTO `logs` (`id`, `user_id`, `ip`, `device`, `createdate`, `action`) VALUES
(442, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-07 20:46:51', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(443, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-07 20:47:10', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(444, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-07 20:47:24', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(445, 53, '27.71.108.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-09-07 20:55:52', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(446, 53, '27.71.108.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2022-09-13 17:36:54', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(447, 53, '27.71.108.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2022-09-13 21:07:02', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(448, 53, '27.71.108.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2022-09-14 00:26:52', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(449, 53, '27.71.108.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2022-09-14 01:59:53', 'Đăng nhập thành công vào hệ thống'),
(450, 53, '27.71.108.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2022-09-15 12:26:03', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(451, 53, '2402:800:639e:f063:24ef:62b8:a0bb:8e15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2022-09-17 13:52:09', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(452, 53, '2402:800:6310:8baa:315e:d38f:51dd:40f5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '2022-10-02 11:20:06', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(453, 53, '27.71.108.237', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '2022-10-20 18:38:32', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(454, 53, '125.235.233.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-13 13:09:25', 'Đăng nhập thành công vào hệ thống'),
(455, 53, '125.235.233.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-13 13:09:31', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(456, 53, '125.235.233.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-13 18:45:30', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(457, 53, '125.235.233.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-14 02:47:24', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(458, 53, '125.235.233.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-14 13:28:05', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(459, 53, '125.235.233.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-14 19:52:07', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(460, 53, '125.235.233.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-16 13:18:04', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(461, 53, '125.235.233.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-16 13:20:08', 'Set mặc định ngôn ngữ (English ID 16)'),
(462, 53, '125.235.233.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-16 13:20:11', 'Set mặc định ngôn ngữ (Vietnamese ID 8)'),
(463, 53, '2402:800:6310:e55f:1c32:1c3d:2c48:cbdf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-22 18:03:30', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(464, 53, '2402:800:6310:e55f:1c32:1c3d:2c48:cbdf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-22 18:34:39', 'Đăng nhập thành công vào hệ thống'),
(465, 53, '2402:800:6310:e55f:1c32:1c3d:2c48:cbdf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-22 18:36:53', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(466, 53, '2402:800:613b:ef8c:dd06:ada0:80ed:b3b9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Zalo iOS/494 ZaloTheme/light ZaloLanguage/vn', '2022-12-22 18:45:44', 'Đăng nhập thành công vào hệ thống'),
(467, 53, '5.62.61.215', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '2022-12-22 18:47:41', 'Đăng nhập thành công vào hệ thống'),
(468, 53, '5.62.61.215', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '2022-12-22 18:48:03', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(469, 53, '2402:800:613b:ef8c:dd06:ada0:80ed:b3b9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Mobile/15E148 Safari/604.1', '2022-12-22 18:48:07', 'Đăng nhập thành công vào hệ thống'),
(470, 53, '5.62.61.215', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '2022-12-22 18:48:26', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(471, 53, '2405:4802:6355:de0:d8a6:37a2:b1b5:c486', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-22 18:49:23', 'Đăng nhập thành công vào hệ thống'),
(472, 53, '2402:800:6310:e55f:1c32:1c3d:2c48:cbdf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-22 18:50:07', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(473, 53, '2402:800:613b:ef8c:dd06:ada0:80ed:b3b9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Mobile/15E148 Safari/604.1', '2022-12-22 18:50:25', 'Đăng nhập thành công vào hệ thống'),
(474, 53, '2405:4802:6355:de0:d8a6:37a2:b1b5:c486', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-22 18:50:36', 'Đăng nhập thành công vào hệ thống'),
(475, 53, '2402:800:613b:ef8c:dd06:ada0:80ed:b3b9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Mobile/15E148 Safari/604.1', '2022-12-22 18:51:31', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(476, 53, '27.2.113.29', 'Mozilla/5.0 (Linux; Android 11; CPH1937 Build/RKQ1.200903.002;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/108.0.5359.128 Mobile Safari/537.36 Zalo android/12100672 ZaloTheme/light ZaloLanguage/vi', '2022-12-22 18:54:18', 'Đăng nhập thành công vào hệ thống'),
(477, 53, '2402:800:6310:e55f:1c32:1c3d:2c48:cbdf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-22 19:54:03', 'Đăng nhập thành công vào hệ thống'),
(478, 53, '2402:800:6310:e55f:1c32:1c3d:2c48:cbdf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-22 19:54:19', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(479, 53, '2402:800:6310:e55f:b41e:bce:8995:127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-23 20:09:42', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(480, 53, '2402:800:6310:e55f:b41e:bce:8995:127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-23 20:12:30', 'Thay đổi mật khẩu'),
(481, 53, '2402:800:6310:e55f:b49d:ac32:8ed9:70c7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-25 10:56:25', 'Đăng nhập thành công vào hệ thống'),
(482, 53, '2402:800:6310:e55f:b49d:ac32:8ed9:70c7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-25 10:56:38', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(483, 53, '2402:800:6310:e55f:b49d:ac32:8ed9:70c7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-25 14:13:04', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(484, 53, '125.235.232.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-26 19:01:01', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(485, 53, '2402:800:6310:e55f:116:a3a8:4f0c:5fda', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-28 11:24:14', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(486, 53, '2402:800:6310:e55f:f8e1:8cb4:bd59:e654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-29 11:32:55', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(487, 57, '2402:800:6311:5d34:b84c:9067:7d1e:c353', 'Mozilla/5.0 (Linux; Android 11; CPH1937) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '2023-01-02 10:53:35', 'Thực hiện tạo tài khoản'),
(488, 57, '2402:800:6311:5d34:b84c:9067:7d1e:c353', 'Mozilla/5.0 (Linux; Android 11; CPH1937) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '2023-01-02 10:55:26', 'Tạo hoá đơn nạp tiền #9W4SU'),
(489, 53, '125.235.232.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2023-01-02 14:37:22', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(490, 53, '2402:800:6310:e55f:106c:ac11:3199:345a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2023-01-03 03:11:23', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(491, 53, '2402:800:6310:e55f:106c:ac11:3199:345a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2023-01-03 03:13:25', 'Tạo hoá đơn nạp tiền #7TJRZ'),
(492, 53, '2402:800:6310:e55f:1c22:8543:179a:c0b1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2023-01-03 19:55:49', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(493, 53, '2402:800:6310:e55f:8c0c:ec79:8142:a993', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2023-01-04 12:16:26', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(494, 53, '2402:800:6310:ce19:1869:d0cc:fb25:83e5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2023-01-06 20:40:13', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(495, 53, '2402:800:6310:e1ac:6118:c14b:2f5d:ceee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2023-01-12 18:50:21', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(496, 53, '2402:800:6310:e1ac:b59e:7b0e:8166:21d3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-01-16 17:49:44', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(497, 53, '2402:800:6310:e1ac:4d81:6ba4:1788:a12e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-01-18 09:41:26', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(498, 53, '2402:800:6310:e1ac:3414:211e:c759:9cd8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-01-18 19:27:21', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(499, 53, '2402:800:6310:e1ac:4c9c:4c66:2d05:e899', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-01-19 23:58:15', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(500, 53, '2402:800:6310:c2ca:f4f8:bbda:290d:57c0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-01-25 12:40:10', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(501, 53, '2402:800:6310:c2ca:d5f8:1d8:341f:3c78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-01-26 02:48:12', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(502, 53, '2402:800:6310:ba76:2cda:97ab:558b:8310', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-03 12:05:48', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(503, 53, '2402:800:6310:ba76:fc1d:86ce:9367:6bed', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-04 20:25:39', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(504, 53, '2402:800:6310:ba76:c966:b62f:46e3:d9e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-05 21:44:35', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(505, 53, '2402:800:6310:ba76:292e:b7b8:961a:88c9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-08 02:56:51', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(506, 58, '2405:4802:1dd:a8c0:8037:2337:8576:51fe', 'Mozilla/5.0 (Linux; Android 12; Nokia 2.4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Mobile Safari/537.36', '2023-02-09 12:53:11', 'Thực hiện tạo tài khoản'),
(507, 53, '2402:800:6310:ba76:4428:7667:83d7:d998', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-09 13:35:58', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(508, 53, '2402:800:6310:ba76:68:7e59:4334:6ae0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-15 19:27:23', 'Tạo hoá đơn nạp tiền #4KYVF'),
(509, 53, '2402:800:6310:9845:20b6:fad3:335d:52e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-09 13:18:18', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(510, 53, '125.235.233.127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-21 13:31:57', 'Đăng nhập thành công vào hệ thống'),
(511, 53, '125.235.233.127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-21 13:32:16', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(512, 59, '115.72.73.247', 'Mozilla/5.0 (Linux; Android 12; SM-G991U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', '2023-03-22 14:10:24', 'Thực hiện tạo tài khoản'),
(513, 53, '27.66.20.162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '2023-04-05 17:16:05', 'Đăng nhập thành công vào hệ thống'),
(514, 53, '125.235.233.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-04-05 19:21:32', 'Đăng nhập thành công vào hệ thống'),
(515, 53, '125.235.233.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-04-05 19:28:43', 'Đăng nhập thành công vào hệ thống'),
(516, 53, '125.235.233.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-04-05 19:32:15', 'Đăng nhập thành công vào hệ thống'),
(517, 53, '125.235.233.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-04-11 13:30:08', 'Thêm câu hỏi FAQ vào hệ thống.'),
(518, 60, '115.72.193.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '2023-04-22 11:11:48', 'Thực hiện tạo tài khoản'),
(519, 61, '1.52.236.154', 'Mozilla/5.0 (Linux; Android 12; V2134) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', '2023-04-22 14:11:19', 'Thực hiện tạo tài khoản'),
(520, 62, '14.191.9.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '2023-05-09 20:57:34', 'Thực hiện tạo tài khoản'),
(521, 53, '125.235.233.53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-11 21:04:01', 'Đăng nhập thành công vào hệ thống'),
(522, 53, '125.235.233.53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-11 21:04:18', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(523, 53, '125.235.232.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-14 20:36:04', 'Thay đổi trạng thái Google 2FA'),
(524, 53, '125.235.232.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-14 20:42:06', 'Đăng nhập thành công vào hệ thống'),
(525, 53, '125.235.232.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-16 19:59:45', 'Đăng nhập thành công vào hệ thống'),
(526, 53, '125.235.232.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-21 11:24:30', 'Đăng nhập thành công vào hệ thống'),
(527, 53, '125.235.233.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-11 00:33:58', 'Đăng nhập thành công vào hệ thống'),
(528, 53, '2402:800:6310:a584:d4ef:8ebc:7547:2d6e', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Mobile/15E148 Safari/604.1', '2023-06-14 18:28:03', 'Đăng nhập thành công vào hệ thống'),
(529, 53, '2402:800:6310:a584:f8a0:3062:ecf3:dde6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-17 09:59:15', 'Đăng nhập thành công vào hệ thống'),
(530, 53, '125.235.233.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-17 11:16:15', 'Đăng nhập thành công vào hệ thống'),
(531, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-23 21:19:04', 'Tạo hoá đơn nạp tiền #KQ1297'),
(532, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:58:58', 'Xoá người dùng (sieunonggoihuhu1 ID 60)'),
(533, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:58:58', 'Xoá người dùng (Hihsj ID 59)'),
(534, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:58:58', 'Xoá người dùng (meogogo3 ID 54)'),
(535, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:58:58', 'Xoá người dùng (hello ID 55)'),
(536, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:21', 'Xoá người dùng (ianhvps ID 58)'),
(537, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:21', 'Xoá người dùng (nhatloc@gmail.com ID 56)'),
(538, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:21', 'Xoá người dùng (Maianhtuan2k5 ID 57)'),
(539, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:21', 'Xoá người dùng (dangkhoa3624 ID 42)'),
(540, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:41', 'Xoá người dùng (imhungg ID 61)'),
(541, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:41', 'Xoá người dùng (nhannxu225 ID 41)'),
(542, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:41', 'Xoá người dùng (huytin ID 38)'),
(543, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:41', 'Xoá người dùng (lecongvinh ID 39)'),
(544, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:42', 'Xoá người dùng (khoaprono1 ID 40)'),
(545, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:42', 'Xoá người dùng (ngmquan1308 ID 43)'),
(546, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:55', 'Xoá người dùng (boladuykhanh111 ID 62)'),
(547, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:55', 'Xoá người dùng (binkutelanhat ID 44)'),
(548, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:55', 'Xoá người dùng (Ghuy11 ID 45)'),
(549, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:55', 'Xoá người dùng (binhvui06 ID 34)'),
(550, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:55', 'Xoá người dùng (hoangthetai123 ID 35)'),
(551, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:55', 'Xoá người dùng (Datvac111 ID 33)'),
(552, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:55', 'Xoá người dùng (zoohuy ID 37)'),
(553, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:55', 'Xoá người dùng (buianhthai ID 36)'),
(554, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 13:59:55', 'Xoá người dùng (trinhthu789 ID 32)'),
(555, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 14:00:39', 'Xoá người dùng (phucnguyen200467 ID 27)'),
(556, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 14:00:39', 'Xoá người dùng (Haobe ID 29)'),
(557, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 14:00:39', 'Xoá người dùng (Tommy ID 30)'),
(558, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 14:00:39', 'Xoá người dùng (BaoKTM ID 31)'),
(559, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 14:00:39', 'Xoá người dùng (Phongdz10 ID 26)'),
(560, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 14:00:39', 'Xoá người dùng (LamBanQuyen ID 28)'),
(561, 63, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 14:01:12', 'Thực hiện tạo tài khoản'),
(562, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 14:02:04', 'Create Email Marketing Campaign (TOOL LÀM NHIỆM VỤ TỰ ĐỘNG)'),
(563, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 14:05:46', 'Create Email Marketing Campaign (TOOL LÀM NHIỆM VỤ TỰ ĐỘNG)'),
(564, 53, '2402:800:6310:9f6e:98a8:4027:b23:7f9c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-24 14:08:27', 'Create Email Marketing Campaign (TOOL LÀM NHIỆM VỤ TỰ ĐỘNG)'),
(565, 53, '2402:800:f44d:b563:65e6:4007:1172:5e26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-07-27 10:54:02', 'Thêm menu (dsadsa) vào hệ thống.'),
(566, 53, '2401:d800:db95:a693:996b:870:43d2:aab4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-09 23:36:14', 'Xoá file backup (hiepsic1.zip)'),
(567, 53, '27.71.109.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-18 13:04:38', 'Đăng nhập thành công vào hệ thống'),
(568, 53, '27.71.109.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2023-09-08 18:39:34', 'Xoá ngân hàng (ID 12)'),
(569, 53, '27.71.109.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2023-09-08 18:39:37', 'Xoá ngân hàng (ID 11)'),
(570, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:29:50', 'Thực hiện tạo tài khoản'),
(571, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:30:43', 'Xoá chuyên mục (XU TDS ID 2)'),
(572, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:30:45', 'Xoá chuyên mục (CLONE ID 3)'),
(573, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:30:47', 'Xoá chuyên mục (PHẦN MỀM FAKE IP ID 4)'),
(574, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:30:49', 'Xoá chuyên mục (VIA ID 5)'),
(575, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:30:51', 'Xoá chuyên mục (TOOL ID 6)'),
(576, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:30:57', 'Xoá sản phẩm (Xu TDS 100 - 200k ID 2)'),
(577, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:31:00', 'Xoá sản phẩm (Xu TDS 200 - 300k ID 3)'),
(578, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:31:04', 'Xoá sản phẩm (Xu TDS 300 - 400k ID 4)'),
(579, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:31:14', 'Xoá sản phẩm (Xu TDS 400 - 500k ID 5)'),
(580, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:31:16', 'Xoá sản phẩm (Xu TDS 500 - 600k ID 6)'),
(581, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:31:18', 'Xoá sản phẩm (Xu TDS 600 - 700k ID 7)'),
(582, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:31:20', 'Xoá sản phẩm (Xu TDS 700 - 800k ID 8)'),
(583, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:31:26', 'Xoá sản phẩm (CLONE VIỆT IP VIỆT REG ANDROID VERY PHONE 2FA AVT (Reg new 24h - 90% gợi ý) ID 15)'),
(584, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:31:51', 'Xoá sản phẩm (Fake IP 911 Proxy Gói 150 IP ID 14)'),
(585, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:31:54', 'Xoá sản phẩm (HMA PRO VPN - 01 Tháng Window ID 13)'),
(586, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:31:59', 'Xoá sản phẩm (Clone Việt 2FA, AVT Trên 30 Ngày , 100-200 Bạn bè, Very MailSever, Full gợi ý kết bạn ID 12)'),
(587, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:32:04', 'Xoá sản phẩm (Xu TDS 1TR (Không cấu hình) ID 11)'),
(588, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:32:07', 'Xoá sản phẩm (Tool Maxcare crack 4.8.3 ID 16)'),
(589, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:32:09', 'Xoá sản phẩm (bảng đánh giá bộ phận IT ID 17)'),
(590, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:32:11', 'Xoá sản phẩm (Xu TDS 900 - 1TR ID 10)'),
(591, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:32:14', 'Xoá sản phẩm (Xu TDS 800 - 900k ID 9)'),
(592, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:34:26', 'Xoá chuyên mục tài liệu (b?ng ?ánh giá b? ph?n IT ID 1)'),
(593, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:34:38', 'Xoá tài liệu (Tool Ks Super ID 1)'),
(594, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:35:47', 'Xoá sản phẩm (dsadsa ID 1)'),
(595, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:36:55', 'Xoá chiến dịch email khỏi hệ thống (TOOL LÀM NHI?M V? T? ??NG)'),
(596, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:00', 'Xoá chiến dịch email khỏi hệ thống (TOOL LÀM NHI?M V? T? ??NG)'),
(597, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:03', 'Xoá chiến dịch email khỏi hệ thống (TOOL LÀM NHI?M V? T? ??NG)'),
(598, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:27', 'Xoá bài viết (4356ytgfesdad ID 1)'),
(599, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:29', 'Xoá bài viết (3423432 ID 2)'),
(600, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:39', 'Xoá hoá đơn transid (KQ1297)'),
(601, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:43', 'Xoá hoá đơn transid (4KYVF)'),
(602, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:45', 'Xoá hoá đơn transid (7TJRZ)'),
(603, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:53', 'Xoá hoá đơn transid (9W4SU)'),
(604, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:53', 'Xoá hoá đơn transid (ZAMWQ)'),
(605, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:54', 'Xoá hoá đơn transid (5R1X4)'),
(606, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:54', 'Xoá hoá đơn transid (875EG1Z)'),
(607, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:55', 'Xoá hoá đơn transid (85QE6TD)'),
(608, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:55', 'Xoá hoá đơn transid (3F06DTQ)'),
(609, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:55', 'Xoá hoá đơn transid (4JPEYCD)'),
(610, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:56', 'Xoá hoá đơn transid (RC523EP)'),
(611, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:56', 'Xoá hoá đơn transid (UKY2M)'),
(612, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:37:58', 'Xoá hoá đơn transid (ABCKG)'),
(613, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:00', 'Xoá hoá đơn transid (2UEKQT8)'),
(614, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:01', 'Xoá hoá đơn transid (O13KCTP)'),
(615, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:01', 'Xoá hoá đơn transid (XR1KD8F)'),
(616, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:02', 'Xoá hoá đơn transid (Y2EP1UD)'),
(617, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:02', 'Xoá hoá đơn transid (PMSX9OG)'),
(618, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:03', 'Xoá hoá đơn transid (QHJAUG7)'),
(619, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:04', 'Xoá hoá đơn transid (5MZYRK1)'),
(620, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:07', 'Xoá hoá đơn transid (DI05JHM)'),
(621, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:08', 'Xoá hoá đơn transid (G86P4TC)'),
(622, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:09', 'Xoá hoá đơn transid (43OCVSM)'),
(623, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:10', 'Xoá hoá đơn transid (P16YJ7Q)'),
(624, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:10', 'Xoá hoá đơn transid (W2UZDNA)'),
(625, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:11', 'Xoá hoá đơn transid (4J5YSW9)'),
(626, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:12', 'Xoá hoá đơn transid (RCKSLBN)'),
(627, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:12', 'Xoá hoá đơn transid (ITM5LK6)'),
(628, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:14', 'Xoá hoá đơn transid (F2I53AU)'),
(629, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:15', 'Xoá hoá đơn transid (WSFJRYV)'),
(630, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:20', 'Xoá hoá đơn transid (J42CGH9)'),
(631, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:28', 'Xoá mã giảm giá (K8HXPQ99)'),
(632, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:30', 'Xoá mã giảm giá (NE7WUPK2)'),
(633, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:50', 'Xoá phần thưởng spin (+ 11.111? ID 10)'),
(634, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:52', 'Xoá phần thưởng spin (+ 1.000.000? ID 11)'),
(635, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:54', 'Xoá phần thưởng spin (+ 22.000 ID 12)'),
(636, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:56', 'Xoá phần thưởng spin (+ 222.222 ID 13)'),
(637, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:38:58', 'Xoá phần thưởng spin (+ 6.666? ID 14)'),
(638, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:00', 'Xoá phần thưởng spin (+ 77.777? ID 15)'),
(639, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:03', 'Xoá phần thưởng spin (+ 99.999? ID 9)'),
(640, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:05', 'Xoá phần thưởng spin (+ 30.000? ID 8)'),
(641, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:08', 'Xoá phần thưởng spin (+ 500.000? ID 7)'),
(642, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:12', 'Xoá phần thưởng spin (+ 20.000? ID 1)'),
(643, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:14', 'Xoá phần thưởng spin (+ 10.000? ID 2)'),
(644, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:16', 'Xoá phần thưởng spin (+ 50.000? ID 3)'),
(645, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:18', 'Xoá phần thưởng spin (+ 2.000? ID 4)'),
(646, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:19', 'Xoá phần thưởng spin (+ 100? ID 5)'),
(647, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:22', 'Xoá phần thưởng spin (+ 100.000? ID 6)'),
(648, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:28', 'Xoá câu hỏi (dsadsa ID 1)'),
(649, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:50', 'Xoá review (fds ID 2)'),
(650, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:39:54', 'Xoá review (dsadsa ID 1)'),
(651, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 04:40:01', 'Xoá menu (ID 1)'),
(652, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (SMART-TV; Linux; Smart TV) AppleWebKit/537.36 (KHTML, like Gecko) Thano/3.0 Chrome/123.0.6312.40 Safari/537.36', '2024-04-04 04:58:43', 'Đăng nhập thành công vào hệ thống'),
(653, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 05:05:16', 'Đăng nhập thành công vào hệ thống'),
(654, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 05:10:37', '[Admin] Thay đổi quyền CTV cho thành viên khang1btre[64] từ 0 -> 1.'),
(655, 64, NULL, NULL, '2024-04-04 05:10:37', 'Bạn được Admin thay đổi quyền CTV.'),
(656, 64, '2402:800:6349:8e06:8ca1:6822:a82f:eb9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-04 05:10:37', '[Admin] Cập nhật thông tin thành viên khang1btre[64].'),
(657, 64, NULL, NULL, '2024-04-04 05:10:37', 'Bạn được Admin thay đổi thông tin.'),
(658, 64, '2402:800:6349:8e06:d971:7de8:b31a:feca', 'Mozilla/5.0 (Linux; Android 11; RMX2103 Build/RKQ1.201217.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/123.0.6312.40 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/452.0.0.42.109;]', '2024-04-04 10:09:42', 'Đăng nhập thành công vào hệ thống'),
(659, 64, '2402:800:6349:8e06:658a:6fe9:8566:721e', 'Mozilla/5.0 (SMART-TV; Linux; Smart TV) AppleWebKit/537.36 (KHTML, like Gecko) Thano/3.0 Chrome/123.0.6312.40 Safari/537.36', '2024-04-05 16:10:32', 'Đăng nhập thành công vào hệ thống'),
(660, 64, '2402:800:6349:8e06:658a:6fe9:8566:721e', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '2024-04-05 16:50:14', 'Đăng nhập thành công vào hệ thống'),
(661, 1, '171.243.254.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-08 12:35:13', 'Thực hiện tạo tài khoản'),
(662, 1, '171.243.254.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-08 18:12:13', 'Thực hiện nạp thẻ Serial: 20000161233925 - Pin: 525890353134234');
INSERT INTO `logs` (`id`, `user_id`, `ip`, `device`, `createdate`, `action`) VALUES
(663, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 11:24:28', 'Thực hiện tạo tài khoản'),
(664, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 15:26:25', 'Thêm chuyên mục (Via Tích Xanh Facebook) vào hệ thống.'),
(665, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 15:28:51', 'Thêm sản phẩm (Via Tích Xanh Facebook) vào hệ thống.'),
(666, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 15:30:21', 'Thêm menu (Subgiamem.net) vào hệ thống.'),
(667, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 15:31:04', 'Thêm menu (Dichvuprize.com) vào hệ thống.'),
(668, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 15:31:24', 'Chỉnh sửa menu (Dichvuprize.com ID 3) vào hệ thống.'),
(669, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 15:38:47', 'Chỉnh sửa chuyên mục (Via Tích Xanh Facebook ID 7).'),
(670, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 15:45:47', 'Đăng nhập thành công vào hệ thống'),
(671, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 15:54:29', '[Admin] Thay đổi quyền CTV cho thành viên Nhphuc76234[2] từ 0 -> 1.'),
(672, 2, NULL, NULL, '2024-05-28 15:54:29', 'Bạn được Admin thay đổi quyền CTV.'),
(673, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 15:54:29', '[Admin] Cập nhật thông tin thành viên Nhphuc76234[2].'),
(674, 2, NULL, NULL, '2024-05-28 15:54:29', 'Bạn được Admin thay đổi thông tin.'),
(675, 3, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 21:36:57', 'Thực hiện tạo tài khoản'),
(676, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 21:44:18', 'Đăng nhập thành công vào hệ thống'),
(677, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 22:05:34', 'Đăng nhập thành công vào hệ thống'),
(678, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-28 22:05:57', 'Đăng nhập thành công vào hệ thống'),
(679, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-29 11:08:06', 'Chỉnh sửa chuyên mục (Via Tích Xanh Facebook ID 7).'),
(680, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-29 11:08:30', 'Chỉnh sửa sản phẩm (Via Tích Xanh Facebook ID 18).'),
(681, 2, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-29 11:08:48', 'Chỉnh sửa chuyên mục (Via Tích Xanh Facebook ID 7).'),
(682, 3, '27.74.238.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-29 11:25:45', 'Đăng nhập thành công vào hệ thống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_ref`
--

CREATE TABLE `log_ref` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `reason` text DEFAULT NULL,
  `sotientruoc` float NOT NULL DEFAULT 0,
  `sotienthaydoi` float NOT NULL DEFAULT 0,
  `sotienhientai` float NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_tds_ttc`
--

CREATE TABLE `log_tds_ttc` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `action` text DEFAULT NULL,
  `create_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `href` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `target` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 3,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `slug`, `icon`, `href`, `status`, `target`, `position`, `content`) VALUES
(2, 'Subgiamem.net', 'subgiamem-net', '<i class=\"fas fa-user-circle\"></i>', 'https://subgiamem.net', 1, '_blank', 3, ''),
(3, 'Dichvuprize.com', 'dichvuprize-com', '<i class=\"fas fa-shopping-cart\"></i>', 'https://dichvuprize.com', 1, '_blank', 3, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `timeago` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `sender`, `user_id`, `title`, `content`, `createdate`, `timeago`, `status`) VALUES
(205, 'Staff', 2, 'dfsdsf', '<p>dsadsa</p>\r\n', '2022-03-17 22:43:00', '1647531780', 1),
(206, 'Staff', 4, 'dfsdsf', '<p>dsadsa</p>\r\n', '2022-03-17 22:43:00', '1647531780', 0),
(207, 'Staff', 1, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(208, 'Staff', 2, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 1),
(209, 'Staff', 3, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(210, 'Staff', 4, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(211, 'Staff', 5, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(212, 'Staff', 6, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(213, 'Staff', 7, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(214, 'Staff', 8, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(215, 'Staff', 9, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(216, 'Staff', 10, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(217, 'Staff', 11, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(218, 'Staff', 12, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(219, 'Staff', 13, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(220, 'Staff', 14, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(221, 'Staff', 15, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(222, 'Staff', 16, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(223, 'Staff', 17, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(224, 'Staff', 18, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(225, 'Staff', 19, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(226, 'Staff', 20, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(227, 'Staff', 21, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(228, 'Staff', 22, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(229, 'Staff', 23, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(230, 'Staff', 24, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(231, 'Staff', 25, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(232, 'Staff', 26, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(233, 'Staff', 27, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(234, 'Staff', 28, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(235, 'Staff', 29, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(236, 'Staff', 30, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(237, 'Staff', 31, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(238, 'Staff', 32, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(239, 'Staff', 33, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(240, 'Staff', 34, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(241, 'Staff', 35, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(242, 'Staff', 36, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(243, 'Staff', 37, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(244, 'Staff', 38, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(245, 'Staff', 39, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(246, 'Staff', 40, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(247, 'Staff', 41, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(248, 'Staff', 42, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(249, 'Staff', 43, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(250, 'Staff', 44, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(251, 'Staff', 45, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 0),
(252, 'Staff', 53, 'sdsadsa', '<p>đasa</p>\r\n', '2022-04-04 01:11:16', '1649009476', 1),
(253, 'Staff', 1, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(254, 'Staff', 2, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 1),
(255, 'Staff', 3, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(256, 'Staff', 4, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(257, 'Staff', 5, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(258, 'Staff', 6, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(259, 'Staff', 7, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(260, 'Staff', 8, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(261, 'Staff', 9, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(262, 'Staff', 10, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(263, 'Staff', 11, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(264, 'Staff', 12, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(265, 'Staff', 13, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(266, 'Staff', 14, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(267, 'Staff', 15, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(268, 'Staff', 16, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(269, 'Staff', 17, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(270, 'Staff', 18, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(271, 'Staff', 19, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(272, 'Staff', 20, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(273, 'Staff', 21, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(274, 'Staff', 22, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(275, 'Staff', 23, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(276, 'Staff', 24, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(277, 'Staff', 25, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(278, 'Staff', 26, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(279, 'Staff', 27, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(280, 'Staff', 28, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(281, 'Staff', 29, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(282, 'Staff', 30, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(283, 'Staff', 31, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(284, 'Staff', 32, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(285, 'Staff', 33, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(286, 'Staff', 34, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(287, 'Staff', 35, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(288, 'Staff', 36, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(289, 'Staff', 37, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(290, 'Staff', 38, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(291, 'Staff', 39, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(292, 'Staff', 40, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(293, 'Staff', 41, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(294, 'Staff', 42, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(295, 'Staff', 43, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(296, 'Staff', 44, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(297, 'Staff', 45, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 0),
(298, 'Staff', 53, 'dsad', '<p>dsa</p>\r\n', '2022-04-04 01:23:34', '1649010214', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nowpayments`
--

CREATE TABLE `nowpayments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `payment_id` varchar(50) DEFAULT NULL,
  `invoice_id` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `pay_address` varchar(255) DEFAULT NULL,
  `price_amount` float NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `price_currency` varchar(255) DEFAULT NULL,
  `pay_amount` float NOT NULL DEFAULT 0,
  `actually_paid` float NOT NULL DEFAULT 0,
  `pay_currency` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `order_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `outcome_amount` float NOT NULL DEFAULT 0,
  `outcome_currency` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(255) DEFAULT NULL,
  `name` blob DEFAULT NULL,
  `api_trans_id` varchar(255) DEFAULT NULL,
  `id_connect_api` int(11) NOT NULL DEFAULT 0,
  `seller` int(11) NOT NULL DEFAULT 0,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `document_id` int(11) NOT NULL DEFAULT 0,
  `store_fanpage_id` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `pay` int(11) NOT NULL DEFAULT 0,
  `cost` float NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `display` int(11) NOT NULL DEFAULT 1,
  `fake` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_autofb`
--

CREATE TABLE `order_autofb` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(255) DEFAULT NULL,
  `id_rate_autofb` int(11) NOT NULL DEFAULT 0,
  `insertId` int(11) DEFAULT 0,
  `payment` int(11) NOT NULL DEFAULT 0,
  `payment_api` int(11) NOT NULL DEFAULT 0,
  `uid` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `subscribers` int(11) NOT NULL DEFAULT 0,
  `count_success` int(11) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_service`
--

CREATE TABLE `order_service` (
  `id` int(11) NOT NULL,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `id_api` varchar(50) DEFAULT NULL,
  `server` text DEFAULT NULL,
  `service_id` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `remains` int(11) NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `url` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `trans_id` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `task_note` text DEFAULT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `update_gettime` datetime NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `refund` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `order_service`
--

INSERT INTO `order_service` (`id`, `buyer`, `id_api`, `server`, `service_id`, `amount`, `remains`, `price`, `url`, `note`, `trans_id`, `comment`, `task_note`, `create_time`, `create_gettime`, `update_time`, `update_gettime`, `status`, `refund`) VALUES
(1, 53, '715288', '5gsmm.com', 51, 10, 10, 19.4559, 'https://vt.tiktok.com/ZSLqk1UmE/', '', '71BHE8', '', NULL, 1691957694, '2023-08-14 03:14:54', 1691957694, '2023-08-14 03:14:54', 'Pending', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_tds_ttc`
--

CREATE TABLE `order_tds_ttc` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(55) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `server` text DEFAULT NULL,
  `user_nhan` text DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `remaining` int(11) NOT NULL DEFAULT 0,
  `money` float NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 Đang chạy - 1 Hoàn tất - 2 Hủy',
  `note` text DEFAULT NULL COMMENT 'Ghi chú từ Admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `otp_history`
--

CREATE TABLE `otp_history` (
  `id` int(11) NOT NULL,
  `transid` text DEFAULT NULL,
  `id_service_otp` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `number` text DEFAULT NULL,
  `id_order_api` text DEFAULT NULL,
  `app` text DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `cost` float NOT NULL DEFAULT 0,
  `code` text DEFAULT NULL,
  `sms` text DEFAULT NULL,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_flutterwave`
--

CREATE TABLE `payment_flutterwave` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `tx_ref` varchar(55) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `currency` text DEFAULT NULL,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_paypal`
--

CREATE TABLE `payment_paypal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trans_id` varchar(255) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_pm`
--

CREATE TABLE `payment_pm` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `payment_id` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_date` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `payment_pm`
--

INSERT INTO `payment_pm` (`id`, `user_id`, `payment_id`, `amount`, `price`, `create_date`, `create_time`, `update_date`, `update_time`, `status`) VALUES
(1, 1, 'IXEU_1643121858', 0, 0, '2022-01-25 21:44:18', 1643121858, '2022-01-25 21:44:18', 1643121858, 0),
(2, 53, 'VUKA_1646945746', 0, 0, '2022-03-11 03:55:46', 1646945746, '2022-03-11 03:55:46', 1646945746, 0),
(3, 57, 'VJYO_1647073517', 0, 0, '2022-03-12 15:25:17', 1647073517, '2022-03-12 15:25:17', 1647073517, 0),
(4, 58, 'ZVAE_1647078523', 0, 0, '2022-03-12 16:48:43', 1647078523, '2022-03-12 16:48:43', 1647078523, 0),
(5, 54, 'IBUY_1650637502', 0, 0, '2022-04-22 21:25:02', 1650637502, '2022-04-22 21:25:02', 1650637502, 0),
(6, 60, 'AWSF_1682136759', 0, 0, '2023-04-22 11:12:39', 1682136759, '2023-04-22 11:12:39', 1682136759, 0),
(7, 61, 'XIWP_1682147587', 0, 0, '2023-04-22 14:13:07', 1682147587, '2023-04-22 14:13:07', 1682147587, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_squadco`
--

CREATE TABLE `payment_squadco` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `transaction_ref` varchar(55) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `paypal`
--

CREATE TABLE `paypal` (
  `id` int(11) NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `txn_id` varchar(50) NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `flag` text DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `cost` float NOT NULL DEFAULT 0,
  `checklive` int(11) NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `preview` text DEFAULT NULL,
  `time_delete_account` int(11) NOT NULL DEFAULT 0,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `maximum` int(11) NOT NULL DEFAULT 10000,
  `id_api` varchar(50) NOT NULL DEFAULT '0',
  `id_connect_api` int(11) NOT NULL DEFAULT 0,
  `api_stock` float NOT NULL DEFAULT 0,
  `name_api` blob DEFAULT NULL,
  `update_api` int(11) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0,
  `filter_time_checklive` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `stt`, `user_id`, `category_id`, `name`, `flag`, `price`, `cost`, `checklive`, `content`, `status`, `preview`, `time_delete_account`, `minimum`, `maximum`, `id_api`, `id_connect_api`, `api_stock`, `name_api`, `update_api`, `sold`, `filter_time_checklive`) VALUES
(18, 0, '2', 7, 'Via Tích Xanh Facebook', 'vn', 100000, 0, 0, 'ID|PASS|MAIL|PASSMAIL', 0, 'assets/storage/images/previewPAVJ.png', 0, 1, 100, '0', 0, 0, NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` longtext DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rate_autofb`
--

CREATE TABLE `rate_autofb` (
  `id` int(11) NOT NULL,
  `type_api` varchar(255) DEFAULT NULL,
  `name_api` varchar(255) DEFAULT NULL,
  `loaiseeding` varchar(255) DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `name_loaiseeding` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rate_autofb`
--

INSERT INTO `rate_autofb` (`id`, `type_api`, `name_api`, `loaiseeding`, `price`, `name_loaiseeding`, `note`) VALUES
(1, 'buffsub_sale', 'Facebook buff sub sale (sv1)', '1', 20, 'Tăng Sub sale - SV1 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(2, 'buffsub_sale', 'Facebook buff sub sale (sv2)', '2', 30, 'Tăng Sub sale - SV2 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(3, 'buffsub_sale', 'Facebook buff sub sale (sv3)', '3', 10, 'Tăng Sub sale - SV3 (done trong ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(4, 'buffsub_sale', 'Facebook buff sub sale (sv4)', '4', 35, 'Tăng Sub sale - SV4 (tốc độ nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(7, 'buffsub_speed', 'Facebook buff sub speed (sv1)', '1', 50, 'Tăng Sub - SV1 (MAX 50K, bấm tay)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(8, 'buffsub_speed', 'Facebook buff sub speed (sv2)', '2', 50, 'Tăng Sub - SV2 (Lên khá nhanh, Max 1000k, Bảo hành 1 tháng) tốt nhất nên dùng', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(9, 'buffsub_speed', 'Facebook buff sub speed (sv3)', '3', 30, 'Tăng Sub - SV3 (Chạy được cho page pro5, 1k sub / ngày, max 250k sub clone, Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(10, 'buffsub_speed', 'Facebook buff sub speed (sv4)', '4', 30, 'Tăng Sub - SV4 (Lên ổn định, Max 80k, Bảo hành 1 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(11, 'buffsub_speed', 'Facebook buff sub speed (sv5)', '5', 40, 'Tăng Sub - SV5 (Lên nhanh, Max 50k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(12, 'buffsub_speed', 'Facebook buff sub speed (sv6)', '6', 30, 'Tăng Sub - SV6 (Max 15k Hoàn thành trong 1-24H)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(13, 'buffsub_speed', 'Facebook buff sub speed (sv7)', '7', 30, 'Tăng Sub - SV7 (Max 20k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(14, 'buffsub_speed', 'Facebook buff sub speed (sv8)', '8', 60, 'Tăng Sub - SV8 (Lên rất nhanh, Max 600k, Bảo hành 6 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(15, 'buffsub_speed', 'Facebook buff sub speed (sv9)', '9', 20, 'Tăng Sub - SV9 (Max 1000k , bảo hành 15 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(16, 'buffsub_slow', 'Facebook buff sub chậm (basic)', '1', 40, 'Tăng Sub đề xuất - Basic (BH 3 tháng, max 400k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(17, 'buffsub_slow', 'Facebook buff sub chậm (v1)', '3', 30, 'Tăng Sub đề xuất - V1 (BH 1 tháng, max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(18, 'buffsub_slow', 'Facebook buff sub v2 (sv2)', '2', 60, 'Tăng Sub đề xuất - V3 (xịn nhất, nick đang hoạt động 96,69%, max 60k) (sub kết bạn, ẩn kết bạn hoặc qua thẳng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(19, 'buffsub_slow', 'Facebook buff sub chậm (v2)', '4', 30, 'Tăng Sub đề xuất - V2 (Chất lượng cao, ổn định, nên dùng max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(20, 'bufflikefanpagesale', '', '1', 20, 'Tăng Like Fanpage - SV1 (Lên chậm khoảng 1-2k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(21, 'bufflikefanpagesale', NULL, '2', 28, 'Tăng Like Fanpage - SV2 (Lên ổn định khoảng 5-10k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(22, 'bufflikefanpagesale', NULL, '3', 31, 'Tăng Like Fanpage - SV3 (tốc độ rất nhanh (1 ngày mua max 20k, chạy done mai mua tiếp)) (BH 7 ngày )', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(23, 'bufflikefanpage', NULL, '1', 57, 'Tăng Like Fanpage - BASIC (like bấm tay, ít tụt, có 1 vài page ko thể tăng like) (Nên dùng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(24, 'bufflikefanpage', NULL, '2', 28, 'Tăng Like Fanpage - PRO (Like Via, max 200k tốc độ chậm Không bảo hành', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(25, 'bufflikefanpage', NULL, '3', 47, 'Tăng Like Fanpage - SV3 (MAX 40k BH 3 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(26, 'bufflikefanpage', NULL, '4', 46, 'Tăng Like Fanpage - SV4 (MAX 20k BH 1 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(27, 'bufflikefanpage', NULL, '5', 60, 'Tăng Like Fanpage - SV5 (MAX 50K BH 1 tháng) (Like chất lượng tốt) (Like lên nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(28, 'bufflikefanpage', NULL, '6', 67, 'Tăng Like Fanpage - SV6 (Like page Global (Like Tây Lên Nhanh ít tụt, nên sử dụng Bảo hành 45 ngày))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(29, 'bufflikefanpage', NULL, '7', 25, 'Tăng Like Fanpage - SV7 (Like Việt Lên nhanh (max 100k))(BH 60 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(30, 'bufflikefanpage', NULL, '8', 22, 'Tăng Like Fanpage - SV8 (Like việt, rẻ, nhanh (max 100k)) (BH 30 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(32, 'buffsubfanpage', NULL, '2', 42, 'Tăng Sub Fanpage - SV2 (page pro5 chạy sau 12-24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(33, 'buffsubfanpage', NULL, '1', 27, 'Tăng Sub Fanpage - SV1 (page thường, hoàn thành các đơn < 30k trong 24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(34, 'bufflikecommentsharelike', NULL, 'like', 58, 'Tăng Like Bài Viết (Like người việt thật) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(35, 'bufflikecommentsharelike', NULL, 'like_v2', 10, 'Tăng Like Bài Viết V2 (Like việt clone, tốc độ chậm, có tụt like) (max 250k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(36, 'bufflikecommentsharelike', NULL, 'like_v3', 20, 'Tăng Like Bài Viết V3 (Like việt, rẻ, nhanh !) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(37, 'bufflikecommentsharelike', NULL, 'like_v4', 24, 'Tăng Like Bài Viết V4 (Like Việt Lên nhanh (max 80k) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(38, 'bufflikecommentsharelike', NULL, 'like_v5', 27, 'Tăng Like Bài Viết V5 (Like Việt Lên nhanh(1 ngày chạy 15-25k like) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(39, 'bufflikecommentsharelike', NULL, 'like_v6', 16, 'Tăng Like Bài Viết V6 (Like clone nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(40, 'bufflikecommentsharelike', NULL, 'like_v7', 30, 'Tăng Like Bài Viết V7 (Like Việt Lên Max Nhanh,luôn oder được)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(41, 'bufflikecommentshareshare', NULL, 'share', 1000, 'Tăng Share Bài Viết SV1 (share người thật,share việt)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(42, 'bufflikecommentshareshare', NULL, 'share_sv2', 250, 'Tăng Share Bài Viết SV2 (share giá rẻ (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(43, 'bufflikecommentshareshare', NULL, 'share_sv3', 30, 'Tăng Share Bài Viết SV3 (share ảo (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(44, 'bufflikecommentshareshare', NULL, 'share_sv4', 400, 'Tăng Share Bài Viết SV4', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(45, 'bufflikecommentshareshare', NULL, 'share_sv5', 24, 'Tăng Share Bài Viết SV5 (share ảo rẻ)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(46, 'buffviewstory', NULL, '1', 18, 'Tăng View Story SV1', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `rating` int(1) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `send_email`
--

CREATE TABLE `send_email` (
  `id` int(11) NOT NULL,
  `template` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `bcc` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `response` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `server2_autobank`
--

CREATE TABLE `server2_autobank` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `tid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `received` float NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `name` blob DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `cost` float NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `id_api` varchar(50) DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `min` int(11) NOT NULL DEFAULT 0,
  `max` int(11) NOT NULL DEFAULT 0,
  `dripfeed` varchar(50) DEFAULT NULL,
  `refill` varchar(50) DEFAULT NULL,
  `cancel` varchar(50) DEFAULT NULL,
  `note` blob DEFAULT NULL,
  `source_api` varchar(255) DEFAULT '5gsmm.com',
  `update_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `user_id`, `category_id`, `name`, `price`, `cost`, `content`, `status`, `id_api`, `type`, `min`, `max`, `dripfeed`, `refill`, `cancel`, `note`, `source_api`, `update_time`) VALUES
(1, 0, 1, 0x54687265616473207c20466f6c6c6f77657273207c205468726561647320466f6c6c6f77657273207c204d617820314b, 35.0296, 35.0296, '', 1, '1149', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(2, 0, 2, 0x53686f706565207c20466f6c6c6f77657273207c20466f6c6c6f77205669e1bb8774, 61.1728, 61.1728, '', 1, '781', 'Default', 100, 5000, '', '', '', NULL, '5gsmm.com', 1691913899),
(3, 0, 3, 0x54687265616473207c204c696b6573207c2054687265616473204c696b6573207c204d617820314b, 58.3827, 58.3827, '', 1, '1152', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(4, 0, 4, 0x53686f706565207c204c6f7665207c204c6f7665205669e1bb8774, 37.3005, 37.3005, '', 1, '780', 'Default', 100, 5000, '', '', '', NULL, '5gsmm.com', 1691913899),
(5, 0, 5, 0x46616365626f6f6b207c204c696b6520506f7374207c204c696b6520506f73742046616365626f6f6b207c204d6178203130304b207c20436c6f6e65207c205375706572204368656170, 5.06093, 5.06093, '', 1, '1164', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(6, 0, 6, 0x496e7374616772616d207c2056696577207c20496e7374616772616d205669657773207c205245454c53207c20537065656420314d2f446179, 1.02949, 1.02949, '', 1, '782', 'Default', 100, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(7, 0, 5, 0x46616365626f6f6b207c204c696b6520506f7374207c204c696b6520506f73742046616365626f6f6b207c204d6178203130304b207c20436c6f6e65207c204368656170, 7.78536, 7.78536, '', 1, '1165', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(8, 0, 7, 0x476f6f676c65207c20476f6f676c65204d6170207c2044e1bb8b63682056e1bba52054e1baa16f20476f6f676c65204d617020282054e1baa16f20c490e1bb8b61204368e1bb89205472c3aa6e20476f6f676c65204d61702029, 1730.74, 1730.74, '', 1, '501', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(9, 0, 8, 0x53706f74696679207c204672656520506c617973207c2053706f74696679204672656520506c617973207c2053706565642031304b2f446179, 38.0913, 38.0913, '', 1, '462', 'Default', 1000, 100000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(10, 0, 6, 0x496e7374616772616d207c2056696577207c20496e7374616772616d205669657720416c6c204c696e6b207c20566964656f2b205265656c202b2049475456, 0.895212, 0.895212, '', 1, '1075', 'Default', 100, 300000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(11, 0, 1, 0x54687265616473207c20466f6c6c6f77657273207c205468726561647320466f6c6c6f77657273207c204d61782033304b, 80.4408, 80.4408, '', 1, '1150', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(12, 0, 3, 0x54687265616473207c204c696b6573207c2054687265616473204c696b6573207c204d61782033304b, 71.3573, 71.3573, '', 1, '1153', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(13, 0, 1, 0x54687265616473207c20466f6c6c6f77657273207c205468726561647320466f6c6c6f77657273207c204d61782035304b, 101.198, 101.198, '', 1, '1151', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(14, 0, 6, 0x496e7374616772616d207c2056696577207c20496e7374616772616d20566964656f20566965777320416c6c204c696e6b207c204d617820314d207c20566964656f202b205265656c202b2049475456, 0.644553, 0.644553, '', 1, '1193', 'Default', 100, 2147483647, '', '', '', NULL, '5gsmm.com', 1691913899),
(15, 0, 3, 0x54687265616473207c204c696b6573207c2054687265616473204c696b6573207c204d61782035304b, 97.3066, 97.3066, '', 1, '1154', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(16, 0, 9, 0x54696b746f6b207c20466f6c6c6f77207c2054696b546f6b20466f6c6c6f77657273207c204d61782035304b207c20537065656420314b2d354b2f446179207c205669e1bb8774204e616d207c20535631, 91.0132, 91.0132, '', 1, '852', 'Default', 500, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(17, 0, 5, 0x46616365626f6f6b207c204c696b6520506f7374207c204c696b6520506f73742046616365626f6f6b207c204d6178203130304b207c20456d6f74696f6ef09f918d, 15.8154, 15.8154, '', 1, '976', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(18, 0, 1, 0x54687265616473207c20466f6c6c6f77657273207c205468726561647320466f6c6c6f77657273207c2053706565642035304b2f446179, 67.678, 67.678, '', 1, '1148', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(19, 0, 6, 0x496e7374616772616d207c2056696577207c20496e7374616772616d2053746f7279205669657773207c20416c6c2053746f7279207c204d6178203130304b, 3.04372, 3.04372, '', 1, '1064', 'Default', 100, 50000, '', '', '', NULL, '5gsmm.com', 1691913899),
(20, 0, 9, 0x54696b746f6b207c20466f6c6c6f77207c2054696b546f6b20466f6c6c6f77657273207c204d6178203630304b207c20537065656420354b2d32304b2f446179207c20476c6f62616c207c20535632, 85.6419, 85.6419, '', 1, '853', 'Default', 100, 600000, '', '', '', NULL, '5gsmm.com', 1691913899),
(21, 0, 5, 0x46616365626f6f6b207c204c696b6520506f7374207c204c696b6520506f73742046616365626f6f6b207c204d6178203130304b207c20456d6f74696f6ee29da4efb88f, 15.8154, 15.8154, '', 1, '977', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(22, 0, 5, 0x46616365626f6f6b207c204c696b6520506f7374207c204c696b6520506f73742046616365626f6f6b207c204d6178203130304b207c20456d6f74696f6ef09fa5b0, 15.8154, 15.8154, '', 1, '978', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(23, 0, 10, 0x54656c656772616d207c2054656c656772616d207c2054656c656772616d20506f7374205669657773207c204c617374203120506f7374207c204d61782031304d, 0.0071617, 0.0071617, '', 1, '504', 'Default', 10, 100000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(24, 0, 6, 0x496e7374616772616d207c2056696577207c20496e7374616772616d205265616368202b20496d7072657373696f6e, 1.71582, 1.71582, '', 1, '783', 'Default', 10, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(25, 0, 9, 0x54696b746f6b207c20466f6c6c6f77207c2054696b546f6b20466f6c6c6f77657273207c204d41582031304b207c20537065656420314b2d354b2f446179207c20476c6f62616c207c20535633, 41.7766, 41.7766, '', 1, '1187', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(26, 0, 5, 0x46616365626f6f6b207c204c696b6520506f7374207c204c696b6520506f73742046616365626f6f6b207c204d6178203130304b207c20456d6f74696f6ef09f9880, 15.8154, 15.8154, '', 1, '979', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(27, 0, 10, 0x54656c656772616d207c2054656c656772616d207c2054656c656772616d20506f7374205669657773207c204c617374203520506f7374207c204d61782031304d, 0.322276, 0.322276, '', 1, '505', 'Default', 10, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(28, 0, 9, 0x54696b746f6b207c20466f6c6c6f77207c2054696b546f6b20466f6c6c6f77657273207c20436c6f6e65207c20476c6f62616c207c204d61782031304b207c2053706565642031304b2d33304b2f446179207c20535639, 44.1638, 44.1638, '', 1, '1104', 'Default', 100, 200000, '', '', '', NULL, '5gsmm.com', 1691913899),
(29, 0, 5, 0x46616365626f6f6b207c204c696b6520506f7374207c204c696b6520506f73742046616365626f6f6b207c204d6178203130304b207c20456d6f74696f6ef09f98b2, 15.8154, 15.8154, '', 1, '980', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(30, 0, 10, 0x54656c656772616d207c2054656c656772616d207c2054656c656772616d20506f7374205669657773207c204c61737420313020506f7374207c204d61782031304d, 0.787787, 0.787787, '', 1, '506', 'Default', 10, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(31, 0, 5, 0x46616365626f6f6b207c204c696b6520506f7374207c204c696b6520506f73742046616365626f6f6b207c204d6178203130304b207c20456d6f74696f6ef09f98a2, 15.8154, 15.8154, '', 1, '981', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(32, 0, 10, 0x54656c656772616d207c2054656c656772616d207c2054656c656772616d20506f7374205669657773207c204c6173742031303020506f7374207c204d61782031304d, 6.44553, 6.44553, '', 1, '507', 'Default', 10, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(33, 0, 5, 0x46616365626f6f6b207c204c696b6520506f7374207c204c696b6520506f73742046616365626f6f6b207c204d6178203130304b207c20456d6f74696f6ef09f98a1, 15.8154, 15.8154, '', 1, '982', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(34, 0, 10, 0x54656c656772616d207c2054656c656772616d207c2054656c656772616d20506f7374205669657773207c204c6173742035303020506f7374207c204d61782031304d, 25.0659, 25.0659, '', 1, '1096', 'Default', 10, 100000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(35, 0, 9, 0x54696b746f6b207c20466f6c6c6f77207c2054696b746f6b20466f6c6c6f77657273207c204d61782034304b207c20537065656420314b2f486f7572207c205265616c, 107.067, 107.067, '', 1, '1097', 'Default', 10, 30000, '', '', '', NULL, '5gsmm.com', 1691913899),
(36, 0, 9, 0x54696b746f6b207c20466f6c6c6f77207c2054696b546f6b20466f6c6c6f77657273207c20537065656420314b2d334b2f446179207c20436c6f6e65207c20476c6f62616c, 32.3271, 32.3271, '', 1, '1051', 'Default', 10, 20001, '', '', '', NULL, '5gsmm.com', 1691913899),
(37, 0, 11, 0x496e7374616772616d207c20436f6d6d656e74207c20496e7374616772616d204d697820506f73697469766520456d6f6a6920436f6d6d656e7473202d20f09f9898f09f929ef09f9290f09f8fb5efb88ff09f988df09fa4a9f09fa5b0f09f9898f09f989af09fa4afe29da4efb88ff09fa48ef09f929cf09f9299f09f9293f09f928bf09fab82, 13.6072, 13.6072, '', 1, '1195', 'Default', 10, 200000, '', '', '', NULL, '5gsmm.com', 1691913899),
(38, 0, 12, 0x53706f74696679207c205072656d69756d20506c617973207c2053706f74696679205072656d69756d20506c617973207c205370656564203530302d314b2f446179, 10.9813, 10.9813, '', 1, '756', 'Default', 1000, 100000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(39, 0, 13, 0x54776974746572207c204c696b65207c2054776974746572204c696b6573207c204d61782035304b207c20537570657220496e7374616e74207c204461696c792053706565642034306b, 44.7606, 44.7606, '', 1, '522', 'Default', 20, 50000, '', '', '', NULL, '5gsmm.com', 1691913899),
(40, 0, 13, 0x54776974746572207c204c696b65207c2054776974746572204c696b6573207c204d61782031304b207c2053706565642031304b2f446179, 51.9223, 51.9223, '', 1, '525', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(41, 0, 14, 0x46616365626f6f6b207c204c696b6520436f6d6d656e74207c204c696b6520436f6d6d656e74207c204d6178203130304b207c20456d6f74696f6ef09f918d, 79.3755, 79.3755, '', 1, '969', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(42, 0, 15, 0x476f6f676c65207c20417070207c2044e1bb8b63682056e1bba52054c4836e67204cc6b0e1bba3742054e1baa36920e1bba86e672044e1bba56e672043686f204170702028205669e1bb8774204e616d2029, 10742.5, 10742.5, '', 1, '502', 'Default', 10000000, 2147483647, '', '', '', NULL, '5gsmm.com', 1691913899),
(43, 0, 16, 0x54696b746f6b207c2056696577207c2054696b746f6b205669657773207c20566965772053616c65207c205370656564203130304d2f446179, 0.0895212, 0.0895212, '', 1, '1159', 'Default', 10000, 1000000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(44, 0, 14, 0x46616365626f6f6b207c204c696b6520436f6d6d656e74207c204c696b6520436f6d6d656e74207c204d6178203130304b207c20456d6f74696f6ee29da4efb88f, 79.3755, 79.3755, '', 1, '970', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(45, 0, 15, 0x476f6f676c65207c20417070207c2054c4836e67204cc6b0e1bba3742054e1baa36920417070204ec6b0e1bb9b63204e676fc3a069202d20496e6372656173652041707020446f776e6c6f61647320466f7220466f726569676e20417070, 11637.8, 11637.8, '', 1, '503', 'Default', 10000000, 1000000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(46, 0, 11, 0x496e7374616772616d207c20436f6d6d656e74207c20496e7374616772616d204e6567617469766520456d6f6a6920436f6d6d656e7473202d20f09fa4acf09f98a1f09f98a0f09f98a4f09f98aee2808df09f92a8f09f9984f09f9892f09f92a9f09f91bff09f9888f09fa4a1f09f9695, 13.6072, 13.6072, '', 1, '1196', 'Default', 10, 200000, '', '', '', NULL, '5gsmm.com', 1691913899),
(47, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e7320506f736974697665205bf09f918de29da4efb88ff09f918ff09f94a5f09fa5b0f09fa4a9f09f8e89f09f9881205d, 0.286468, 0.286468, '', 1, '1114', 'Default', 50, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(48, 0, 11, 0x496e7374616772616d207c20436f6d6d656e74207c20496e7374616772616d20437573746f6d20436f6d6d656e7473207c2053706565642031304b2f446179, 13.6072, 13.6072, '', 1, '1194', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(49, 0, 14, 0x46616365626f6f6b207c204c696b6520436f6d6d656e74207c204c696b6520436f6d6d656e74207c204d6178203130304b207c20456d6f74696f6ef09fa5b0, 79.3755, 79.3755, '', 1, '971', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(50, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e73204e65676174697665205bf09f918ef09f98a2f09fa4aff09f98b1f09fa4acf09fa4aef09f92a9f09fa494205d, 0.286468, 0.286468, '', 1, '1115', 'Default', 50, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(51, 0, 16, 0x54696b746f6b207c2056696577207c2054696b746f6b205669657773207c205265616c2056696577207c205472656e64696e67207c20537065656420314d2f446179, 1.94559, 1.94559, '', 1, '1157', 'Default', 5, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(52, 0, 14, 0x46616365626f6f6b207c204c696b6520436f6d6d656e74207c204c696b6520436f6d6d656e74207c204d6178203130304b207c20456d6f74696f6ef09f9880, 79.3755, 79.3755, '', 1, '972', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(53, 0, 11, 0x496e7374616772616d207c20436f6d6d656e74207c2054c4836e672042c3ac6e68204c75e1baad6e20496e7374616772616d205669e1bb8774204e616d207c2054e1bb916320c490e1bb9920354b2f446179, 155.695, 155.695, '', 1, '784', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(54, 0, 16, 0x54696b746f6b207c2056696577207c2054696b746f6b205669657773207c2053706565642031304d2f446179, 0.647537, 0.647537, '', 1, '1158', 'Default', 1000, 1000000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(55, 0, 14, 0x46616365626f6f6b207c204c696b6520436f6d6d656e74207c204c696b6520436f6d6d656e74207c204d6178203130304b207c20456d6f74696f6ef09f98b2, 79.3755, 79.3755, '', 1, '973', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(56, 0, 14, 0x46616365626f6f6b207c204c696b6520436f6d6d656e74207c204c696b6520436f6d6d656e74207c204d6178203130304b207c20456d6f74696f6ef09f98a2, 79.3755, 79.3755, '', 1, '974', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(57, 0, 14, 0x46616365626f6f6b207c204c696b6520436f6d6d656e74207c204c696b6520436f6d6d656e74207c204d6178203130304b207c20456d6f74696f6ef09f98a1, 79.3755, 79.3755, '', 1, '975', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(58, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d20506f736974697665205265616374696f6e207c20f09f918d20e29da4efb88f20f09f94a520f09f8e89f09fa4a920f09f9881202b205669657773207c204d6178203530304b207c204461792035304b, 0.686329, 0.686329, '', 1, '508', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(59, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d204e65676174697665205265616374696f6e207c20f09f918ef09f92a920f09fa4aef09f98a220f09f98b1202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '509', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(60, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d20506f736974697665205265616374696f6e207c20f09f918d20e29da4efb88f20f09f94a520f09f8e89f09fa4a920f09f9881202b2046726565205669657773207c204d617820314d207c2035302046757475726520506f7374, 107.425, 107.425, '', 1, '521', 'Default', 20, 2000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(61, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e207c20f09f918d202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '510', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(62, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e207c20f09f918e202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '511', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(63, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e207c20e29da4efb88f202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '512', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(64, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e207c20f09f92a9202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '513', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(65, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e207c20f09f94a5202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '514', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(66, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e207c20f09fa4ae202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '515', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(67, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e207c2020f09f8e89202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '516', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(68, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e207c2020f09f98a2202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '517', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(69, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e207c20f09fa4a9202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '518', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(70, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e207c20f09f98b1202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '519', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(71, 0, 17, 0x54656c656772616d207c205265616374696f6e73207c2054656c656772616d205265616374696f6e207c20f09f9881202b205669657773207c204d6178203530304b207c204461792035304b, 0.71617, 0.71617, '', 1, '520', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(72, 0, 18, 0x53706f74696679207c205061636b61676573207c2053706f746966792053746172746572205061636b616765, 118.392, 118.392, '', 1, '463', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(73, 0, 19, 0x54656c656772616d207c204d656d6265722047726f7570207c204d656d6265722047726f757020476c6f62616c207c2052756e7320466f7220426f7468204368616e656c20416e642047726f7570207c204d61782032304b, 22.5593, 22.5593, '', 1, '1125', 'Default', 500, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(74, 0, 20, 0x496e7374616772616d207c204c696b6573207c20496e7374616772616d204c696b6573207c205370656564203130304b2f446179, 1.02054, 1.02054, '', 1, '1121', 'Default', 50, 300000, '', '', '', NULL, '5gsmm.com', 1691913899),
(75, 0, 21, 0x46616365626f6f6b207c20436f6d6d656e74207c20436f6d6d656e742046616365626f6f6b205669e1bb8774204e616d207c2054e1bb916320c490e1bb99203530302d313030302f446179, 83.5531, 83.5531, '', 1, '1109', 'Custom Comments', 20, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(76, 0, 22, 0x596f7574756265207c2056696577732053657665722031207c20596f7574756265205669657773207c20536f7572636520536f6369616c207c2053706565642033304b2d35304b2f446179, 46.551, 46.551, '', 1, '1147', 'Default', 3000, 700000, '', '', '', NULL, '5gsmm.com', 1691913899),
(77, 0, 23, 0x54776974746572207c2052657765657473207c2054776974746572205265747765657473207c204d617820354b207c2053706565643a20354b2f446179, 82.3595, 82.3595, '', 1, '492', 'Default', 10, 5000, '', '', '', NULL, '5gsmm.com', 1691913899),
(78, 0, 20, 0x496e7374616772616d207c204c696b6573207c20496e7374616772616d204c696b65205669e1bb8774204e616d207c2054e1bb916320c490e1bb992031304b2f446179, 14.9277, 14.9277, '', 1, '787', 'Default', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(79, 0, 23, 0x54776974746572207c2052657765657473207c2054776974746572205265747765657473207c204d61782035304b207c2053706565643a2035304b2f446179, 14.4129, 14.4129, '', 1, '493', 'Default', 10, 50000, '', '', '', NULL, '5gsmm.com', 1691913899),
(80, 0, 18, 0x53706f74696679207c205061636b61676573207c2053706f74696679205374616e64617264205061636b616765, 355.175, 355.175, '', 1, '464', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(81, 0, 19, 0x54656c656772616d207c204d656d6265722047726f7570207c204d656d6265722047726f757020476c6f62616c207c2052756e7320466f7220426f7468204368616e656c20416e642047726f7570207c204d61782035304b, 39.0909, 39.0909, '', 1, '1003', 'Default', 1000, 50000, '', '', '', NULL, '5gsmm.com', 1691913899),
(82, 0, 21, 0x46616365626f6f6b207c20436f6d6d656e74207c20436f6d6d656e742046616365626f6f6b2054c3ad63682058616e68207c204d6178203230207c204e6f20526566696c6c, 5838.57, 5838.57, '', 1, '1009', 'Custom Comments', 5, 20, '', '', '', NULL, '5gsmm.com', 1691913899),
(83, 0, 21, 0x46616365626f6f6b207c20436f6d6d656e74207c20436f6d6d656e742046616365626f6f6b205669e1bb8774204e616d207c2054e1bb916320c490e1bb992035304b2f446179, 119.362, 119.362, '', 1, '900', 'Custom Comments', 10, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(84, 0, 24, 0x54696b746f6b207c204c696b65207c2054696b546f6b204c696b6573207c204d6178203530304b207c20416c7761797320576f726b73207c205370656564203130304b2f446179, 5.76158, 5.76158, '', 1, '1190', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(85, 0, 18, 0x53706f74696679207c205061636b61676573207c2053706f7469667920416476616e636564205061636b616765, 552.495, 552.495, '', 1, '465', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(86, 0, 19, 0x54656c656772616d207c204d656d6265722047726f7570207c204d656d6265722047726f7570207c20476c6f62616c207c2052756e7320466f7220426f7468204368616e656c20416e642047726f7570207c204d6178203530304b, 65.0521, 65.0521, '', 1, '1123', 'Default', 100, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(87, 0, 20, 0x496e7374616772616d207c204c696b6573207c20496e7374616772616d204c696b6573207c205370656564203330304b2f446179, 1.02949, 1.02949, '', 1, '788', 'Default', 10, 300000, '', '', '', NULL, '5gsmm.com', 1691913899),
(88, 0, 19, 0x54656c656772616d207c204d656d6265722047726f7570207c204d656d6265722047726f757020476c6f62616c207c2052756e7320466f7220426f7468204368616e656c20416e642047726f7570207c204d61782037304b, 129.806, 129.806, '', 1, '1002', 'Default', 1000, 70000, '', '', '', NULL, '5gsmm.com', 1691913899),
(89, 0, 24, 0x54696b746f6b207c204c696b65207c2054696b546f6b204c696b6573207c204d6178203130304b207c205375706572496e7374616e7420207c2053706565642035304b2f446179, 2.14851, 2.14851, '', 1, '1191', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(90, 0, 18, 0x53706f74696679207c205061636b61676573207c2053706f746966792050726f205061636b616765, 1933.73, 1933.73, '', 1, '466', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(91, 0, 20, 0x496e7374616772616d207c204c696b6573207c20496e7374616772616d204c696b657320207c2053706565642031304b2f486f7572, 1.28911, 1.28911, '', 1, '789', 'Default', 10, 300000, '', '', '', NULL, '5gsmm.com', 1691913899),
(92, 0, 21, 0x46616365626f6f6b207c20436f6d6d656e74207c20436f6d6d656e742046616365626f6f6b205669e1bb8774204e616d207c2054e1bb916320c490e1bb992031304b2f446179, 155.695, 155.695, '', 1, '901', 'Custom Comments', 10, 50000, '', '', '', NULL, '5gsmm.com', 1691913899),
(93, 0, 24, 0x54696b746f6b207c204c696b65207c2054696b546f6b204c696b6573207c204d61782031304b207c205375706572496e7374616e74207c2053706565642031304b2f446179, 1.79042, 1.79042, '', 1, '1192', 'Default', 50, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(94, 0, 18, 0x53706f74696679207c205061636b61676573207c2053706f746966792046616d6f7573205061636b616765, 3906.93, 3906.93, '', 1, '467', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(95, 0, 24, 0x54696b746f6b207c204c696b65207c2054696b546f6b204c696b6573207c205669e1bb8774204e616d207c204d61782035304b207c20537065656420354b2d31304b2f446179, 14.9202, 14.9202, '', 1, '1160', 'Default', 100, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(96, 0, 18, 0x53706f74696679207c205061636b61676573207c2053706f7469667920526f636b73746172205061636b616765, 5880.13, 5880.13, '', 1, '468', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(97, 0, 24, 0x54696b746f6b207c204c696b65207c2054696b546f6b204c696b6573207c20476c6f62616c207c204d6178203130304b207c2053706565642032304b2d35304b2f446179, 11.029, 11.029, '', 1, '1161', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(98, 0, 22, 0x596f7574756265207c2056696577732053657665722031207c20596f7554756265205669657773205669e1bb8774204e616d207c20526574656e74696f6e20322d35204d696e75746573207c20537065656420354b2d31304b2f446179, 41.1798, 41.1798, '', 1, '650', 'Default', 1000, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(99, 0, 22, 0x596f7574756265207c2056696577732053657665722031207c20596f7554756265205669657773207c2053706565642035304b2d3130304b2f446179, 37.5989, 37.5989, '', 1, '651', 'Default', 100, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(100, 0, 22, 0x596f7574756265207c2056696577732053657665722031207c20596f7554756265205669657773207c20537065656420314b2d324b2f446179, 32.2276, 32.2276, '', 1, '652', 'Default', 100, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(101, 0, 22, 0x596f7574756265207c2056696577732053657665722031207c20596f7574756265205669657773207c20526574656e74696f6e20312d3230204d696e75746573207c205370656564203530302d314b2f446179, 43.9251, 43.9251, '', 1, '653', 'Default', 100, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(102, 0, 22, 0x596f7574756265207c2056696577732053657665722031207c20596f7574756265205669657773207c20536f7572636520536f6369616c207c205370656564203135304b2d3230304b2f446179, 34.3165, 34.3165, '', 1, '654', 'Default', 20000, 3000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(103, 0, 22, 0x596f7574756265207c2056696577732053657665722031207c20596f7574756265205669657773207c20537065656420314d2d324d2f446179, 37.7481, 37.7481, '', 1, '655', 'Default', 20000, 20000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(104, 0, 22, 0x596f7574756265207c2056696577732053657665722031207c205061636b6167652031304b2d3130304b20566965777320466f722032302d333020566964656f204f6620546865204368616e6e656c207c20426f6e7573204c696b65732c2053756273, 34.3165, 34.3165, '', 1, '656', 'Default', 10000, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(105, 0, 22, 0x596f7574756265207c2056696577732053657665722031207c20596f757475626520566965777320416e642053686f7274205669657773207c2056696577732046726f6d20446576696365204d6f62696c65207c20322d38204d696e7574657320576174636874696d65, 41.1798, 41.1798, '', 1, '657', 'Default', 800, 40000, '', '', '', NULL, '5gsmm.com', 1691913899),
(106, 0, 22, 0x596f7574756265207c2056696577732053657665722031207c20596f7574756265205669657773207c205370656564203530304b2b2f446179207c2044726f702038302d31303025204166746572203120446179, 17.1582, 17.1582, '', 1, '658', 'Default', 1000, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(107, 0, 25, 0x53706f74696679207c20466f6c6c6f77657273207c2053706f7469667920466f6c6c6f77657273207c204d617820314d207c20205370656564203130304b2f446179, 16.9523, 16.9523, '', 1, '469', 'Default', 100, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(108, 0, 26, 0x596f7574756265207c2056696577732053657665722032207c205669657720596f7554756265204769c3a12052e1babb2c2055792054c3ad6e2032303233207c2054e1bb916320c491e1bb99204368e1baad6d205472c3aa6e20354b2b2f4e67c3a079207c2042e1baa36f2048c3a06e68, 32.2276, 32.2276, '', 1, '836', 'Default', 1000000, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(109, 0, 27, 0x54776974746572207c20466f6c6c6f77657273207c205477697474657220466f6c6c6f77657273207c205477697474657220454e2f5553205265616c20466f6c6c6f77657273207c204d61782035304b, 30.4372, 30.4372, '', 1, '1124', 'Default', 100, 50000, '', '', '', NULL, '5gsmm.com', 1691913899),
(110, 0, 28, 0x46616365626f6f6b207c20466f6c6c6f77657273207c20466f6c6c6f7765727320566970207c2053757065722046617374207c20556e6c696d69746564207c20314d2d324d2f446179207c204d6f6e6f706f6c79207c20535631, 32.526, 32.526, '', 1, '876', 'Default', 1000, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(111, 0, 29, 0x496e7374616772616d207c20466f6c6c6f77657273207c20496e7374616772616d20466f6c6c6f77657273207c205265616c204163636f756e7473207c2053706565642033304b2f446179, 13.2491, 13.2491, '', 1, '1126', 'Default', 10, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(112, 0, 30, 0x54696b746f6b207c205368617265207c2054696b546f6b20536861726573207c204d6178203130304b207c2031304b2f446179, 4.47606, 4.47606, '', 1, '833', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(113, 0, 29, 0x496e7374616772616d207c20466f6c6c6f77657273207c20496e7374616772616d205265616c20466f6c6c6f77657273207c2053706565642032304b2f446179, 12.533, 12.533, '', 1, '1122', 'Default', 20, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(114, 0, 29, 0x496e7374616772616d207c20466f6c6c6f77657273207c20496e7374616772616d20466f6c6c6f77207c20566965746e616d, 46.6943, 46.6943, '', 1, '967', 'Default', 50, 30000, '', '', '', NULL, '5gsmm.com', 1691913899),
(115, 0, 30, 0x54696b746f6b207c205368617265207c2054696b546f6b20536861726573207c204d6178203130304b207c20535631, 25.9611, 25.9611, '', 1, '855', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(116, 0, 26, 0x596f7574756265207c2056696577732053657665722032207c205669657720596f7554756265205669e1bb8774204e616d2c20c6af61205468c3ad6368207c205468e1bb9d69204769616e2058656d20322d35207068c3ba74207c2042e1baa36f2048c3a06e68, 47.1478, 47.1478, '', 1, '839', 'Default', 1000, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(117, 0, 28, 0x46616365626f6f6b207c20466f6c6c6f77657273207c20466f6c6c6f7765727320566970207c2053757065722046617374207c2046616365626f6f6b2050726f204d6f6465207c204d61782031304d207c204d6f6e6f706f6c79207c20535632, 22.0819, 22.0819, '', 1, '983', 'Default', 1000, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(118, 0, 25, 0x53706f74696679207c20466f6c6c6f77657273207c2053706f7469667920466f6c6c6f77657273207c204d6178203130304b207c20537065656420314b2d354b2f446179, 41.5229, 41.5229, '', 1, '471', 'Default', 20, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(119, 0, 26, 0x596f7574756265207c2056696577732053657665722032207c20596f75547562652056696577205468c3ba6320c490e1baa9792c204368e1baa574204cc6b0e1bba36e67207c2054e1bb916320c491e1bb99205472c3aa6e2031354b2f4e67c3a079207c2042e1baa36f2048c3a06e68, 34.9133, 34.9133, '', 1, '837', 'Default', 1000000, 200000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(120, 0, 29, 0x496e7374616772616d207c20466f6c6c6f77657273207c20496e7374616772616d20466f6c6c6f77207c20564965746e616d, 23.3471, 23.3471, '', 1, '968', 'Default', 50, 30000, '', '', '', NULL, '5gsmm.com', 1691913899),
(121, 0, 27, 0x54776974746572207c20466f6c6c6f77657273207c205477697474657220466f6c6c6f77657273207c20537065656420314b2d324b2f446179207c204d61782031354b207c205669e1bb8774204e616d, 77.8834, 77.8834, '', 1, '887', 'Default', 100, 15000, '', '', '', NULL, '5gsmm.com', 1691913899),
(122, 0, 28, 0x46616365626f6f6b207c20466f6c6c6f77657273207c20466f6c6c6f7765727320566970207c2053757065722046617374207c204f6e6c792052756e2046616e70616765207c204d61782031304d207c204d6f6e6f706f6c79207c20535633, 13.1298, 13.1298, '', 1, '989', 'Default', 1000, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(123, 0, 29, 0x496e7374616772616d207c20466f6c6c6f77657273207c20496e7374616772616d20466f6c6c6f77207c204d617820324d207c205370656564203230304b2f446179, 14.4129, 14.4129, '', 1, '790', 'Default', 50, 5000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(124, 0, 26, 0x596f7574756265207c2056696577732053657665722032207c205669657720596f7554756265204e68616e68204bc3a86d204c696b65207c2054e1bb916320c491e1bb99203130304b2f446179207c2042e1baa36f2048c3a06e68, 47.1478, 47.1478, '', 1, '838', 'Default', 1000000, 2000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(125, 0, 28, 0x46616365626f6f6b207c20466f6c6c6f77657273207c20466f6c6c6f7765727320566970207c2053757065722046617374207c204f6e6c792052756e2046616e706167652050726f66696c65207c204d6178203130304b207c204d6f6e6f706f6c79207c20535634, 13.1298, 13.1298, '', 1, '1053', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(126, 0, 29, 0x496e7374616772616d207c20466f6c6c6f77657273207c20496e7374616772616d20466f6c6c6f77207c20494e4449414e20f09f87aef09f87b3207c20526566696c6c2039302044617973207c204d6178203430304b, 15.0396, 15.0396, '', 1, '791', 'Default', 50, 400000, '', '', '', NULL, '5gsmm.com', 1691913899),
(127, 0, 26, 0x596f7574756265207c2056696577732053657665722032207c205669657720596f757475626520c490e1bb81205875e1baa574207c20426f6e7573204c696b65207c2042e1baa36f2048c3a06e68203630204e67c3a079, 29.8404, 29.8404, '', 1, '1028', 'Default', 1000000, 2000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(128, 0, 26, 0x596f7574756265207c2056696577732053657665722032207c205669657720596f7574756265204e68616e68207c204ec3aa6e204368e1bb8d6e207c2042e1baa36f2048c3a06e682056c4a96e68205669e1bb856e207c2031303025205265616c207c20537065656420314d2b2f446179207c204e6f6e2044726f70, 55.2047, 55.2047, '', 1, '841', 'Default', 20000, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(129, 0, 26, 0x596f7574756265207c2056696577732053657665722032207c205669657720596f7574756265205669e1bb8774204e616d20c490e1bb81207875e1baa574207c2058656d20332d35204d696e75746573207c2054e1bb916320c491e1bb9920352d31304b2f446179207c204b68c3b46e672042e1baa36f2048c3a06e68, 20.8883, 20.8883, '', 1, '690', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(130, 0, 26, 0x596f7574756265207c2056696577732053657665722032207c20596f75747562652056696577204e68616e68204e6577207c205370656564203130304b2b2f446179207c20466173742056696577204e6577207c203330204461797320526566696c6c, 38.7925, 38.7925, '', 1, '840', 'Default', 20000, 5000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(131, 0, 26, 0x596f7574756265207c2056696577732053657665722032207c205669657720596f7574756265207c204e6775e1bb936e20436869612053e1babb204d5848207c2054e1bb916320c490e1bb99203135304b2b2f4e67c3a079207c2046617374204e6577, 38.4941, 38.4941, '', 1, '842', 'Default', 20000, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(132, 0, 26, 0x596f7574756265207c2056696577732053657665722032207c205669657720596f75747562652054e1bb916320c490e1bb992048c6a16e2031304b2f446179207c20566965772043c3b3204bc3a86d204c696b65207c2042e1baa36f2048c3a06e68, 52.8175, 52.8175, '', 1, '843', 'Default', 20000, 100000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(133, 0, 31, 0x496e7374616772616d207c204c69766553747265616d207c20496e7374616772616d204c697665205669657773202b204c696b65207c204d617820354b207c203135204d696e75746573, 36.1594, 36.1594, '', 1, '1067', 'Default', 100, 5000, '', '', '', NULL, '5gsmm.com', 1691913899),
(134, 0, 32, 0x54696b746f6b207c20436f6d6d656e74207c20436f6d6d656e742054696b546f6b205669e1bb8774204e616d207c20e1bb946e20c490e1bb8b6e68, 123.253, 123.253, '', 1, '834', 'Custom Comments', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(135, 0, 33, 0x46616365626f6f6b207c204c696b652f466f6c6c6f772046616e70616765207c204c696b65202b20466f6c6c6f77732046616e70616765207c204e6577207c2053757065722046617374207c20556e6c696d69746564207c203530304b2f446179207c204d6f6e6f706f6c79207c2053563130, 39.0909, 39.0909, '', 1, '1011', 'Default', 100, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(136, 0, 34, 0x54776974746572207c2056696577207c205477697474657220566964656f205669657773202b20496d7072657373696f6e, 0.274532, 0.274532, '', 1, '523', 'Default', 10, 2147483647, '', '', '', NULL, '5gsmm.com', 1691913899),
(137, 0, 33, 0x46616365626f6f6b207c204c696b652f466f6c6c6f772046616e70616765207c204c696b65202b20466f6c6c6f77732046616e70616765207c20436c6f6e65207c20537065656420354b2f446179207c204d617820334d204c696b65207c20535635, 45.6558, 45.6558, '', 1, '878', 'Default', 100, 3000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(138, 0, 31, 0x496e7374616772616d207c204c69766553747265616d207c20496e7374616772616d204c697665205669657773202b204c696b65207c204d61782031304b207c203330204d696e75746573, 72.3188, 72.3188, '', 1, '1068', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(139, 0, 32, 0x54696b746f6b207c20436f6d6d656e74207c20436f6d6d656e742054696b546f6b205669e1bb8774204e616d207c20e1bb946e20c490e1bb8b6e68204e68616e68, 246.509, 246.509, '', 1, '1155', 'Custom Comments', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(140, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205553207c20526574656e74696f6e20352d3130206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f7572636520596f75747562652052616e646f6d2028537567676573742f5365617263682f42726f77736520466561747572657329, 26.8564, 26.8564, '', 1, '1100', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(141, 0, 31, 0x496e7374616772616d207c204c69766553747265616d207c20496e7374616772616d204c697665205669657773202b204c696b65207c204d61782031304b207c203630204d696e75746573, 144.638, 144.638, '', 1, '1069', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(142, 0, 33, 0x46616365626f6f6b207c204c696b652f466f6c6c6f772046616e70616765207c20466f6c6c6f77732046616e7061676520566970207c2053757065722046617374207c204d61782031304d207c204d6f6e6f706f6c79207c20535633, 13.1298, 13.1298, '', 1, '1065', 'Default', 1000, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(143, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205553207c20526574656e74696f6e2031352d3230206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f7572636520596f75747562652052616e646f6d2028537567676573742f5365617263682f42726f77736520466561747572657329, 35.8085, 35.8085, '', 1, '1101', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(144, 0, 34, 0x54776974746572207c2056696577207c205477697474657220566964656f205669657773207c203130306b2d3230306b2f686f7572, 0.686329, 0.686329, '', 1, '524', 'Default', 10, 2147483647, '', '', '', NULL, '5gsmm.com', 1691913899),
(145, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f757475626520566965777320564e207c20526574656e74696f6e20352d3130206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f7572636520596f75747562652052616e646f6d2028537567676573742f5365617263682f42726f77736520466561747572657329, 26.8564, 26.8564, '', 1, '1102', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(146, 0, 31, 0x496e7374616772616d207c204c69766553747265616d207c20496e7374616772616d204c697665205669657773202b204c696b65207c204d61782031304b207c203930204d696e75746573, 216.956, 216.956, '', 1, '1070', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(147, 0, 33, 0x46616365626f6f6b207c204c696b652f466f6c6c6f772046616e70616765207c20466f6c6c6f77732046616e706167652050726f66696c6520566970207c2053757065722046617374207c204d6178203130304b207c204d6f6e6f706f6c79207c20535634, 13.1298, 13.1298, '', 1, '1066', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(148, 0, 31, 0x496e7374616772616d207c204c69766553747265616d207c20496e7374616772616d204c697665205669657773202b204c696b65207c204d61782031304b207c20313230204d696e75746573, 289.275, 289.275, '', 1, '1071', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(149, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20566965777320564e207c20526574656e74696f6e2031352d3230206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f7572636520596f75747562652052616e646f6d2028537567676573742f5365617263682f42726f77736520466561747572657329204279204b6579776f726473, 35.8085, 35.8085, '', 1, '1103', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(150, 0, 31, 0x496e7374616772616d207c204c69766553747265616d207c20496e7374616772616d204c697665205669657773202b204c696b65207c204d61782031304b207c20313830204d696e75746573, 433.913, 433.913, '', 1, '1072', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(151, 0, 31, 0x496e7374616772616d207c204c69766553747265616d207c20496e7374616772616d204c697665205669657773202b204c696b65207c204d61782031304b207c20323430204d696e75746573, 578.55, 578.55, '', 1, '1116', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(152, 0, 31, 0x496e7374616772616d207c204c69766553747265616d207c20496e7374616772616d204c697665205669657773202b204c696b65207c204d61782031304b207c20333630204d696e75746573, 867.826, 867.826, '', 1, '1117', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(153, 0, 31, 0x496e7374616772616d207c204c69766553747265616d207c20496e7374616772616d204c697665205669657773202b204c696b65207c204d61782031304b207c20373230204d696e75746573, 1928.5, 1928.5, '', 1, '1118', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(154, 0, 31, 0x496e7374616772616d207c204c69766553747265616d207c20496e7374616772616d204c697665205669657773202b204c696b65207c204d61782031304b207c20323420686f757273, 2410.63, 2410.63, '', 1, '1119', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(155, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205553207c20526574656e74696f6e20332d35206d696e75746573207c2020537065656420352d31306b2f64617973207c20536f7572636520596f7574756265205365617263682f42726f777365204665617475726573, 10.7425, 10.7425, '', 1, '847', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(156, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205553207c20526574656e74696f6e20332d35206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f7572636520596f75747562652053756767657374285472656e64696e672f52616e646f6d29, 14.3234, 14.3234, '', 1, '848', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(157, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205553207c20526574656e74696f6e20332d35206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f7572636520596f757475626520536561726368204279204b6579776f726473, 17.9042, 17.9042, '', 1, '1006', 'Special', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(158, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205553207c20526574656e74696f6e20332d35206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f7572636520596f75747562652052616e646f6d2028537567676573742f5365617263682f42726f77736520466561747572657329204279204b6579776f726473, 17.9042, 17.9042, '', 1, '849', 'Special', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(159, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205553207c20526574656e74696f6e20352d3130206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f7572636520596f75747562652052616e646f6d2028537567676573742f5365617263682f42726f77736520466561747572657329204279204b6579776f726473, 25.7373, 25.7373, '', 1, '850', 'Special', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(160, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205553207c20526574656e74696f6e2031352d3230206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f7572636520596f75747562652052616e646f6d2028537567676573742f5365617263682f42726f77736520466561747572657329204279204b6579776f726473, 35.8085, 35.8085, '', 1, '851', 'Special', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(161, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205669e1bb8774204e616d207c20526574656e74696f6e20332d35206d696e75746573207c2020537065656420352d31306b2f64617973207c20536f7572636520536561726368202b2042726f777365204665617475726573, 10.7425, 10.7425, '', 1, '637', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(162, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205669e1bb8774204e616d207c20526574656e74696f6e20332d35206d696e75746573207c2020537065656420352d31306b2f64617973207c20536f757263652053756767657374285472656e64696e672f52616e646f6d29, 14.3234, 14.3234, '', 1, '638', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(163, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205669e1bb8774204e616d207c20526574656e74696f6e20332d35206d696e75746573207c2020537065656420352d31306b2f64617973207c20536f7572636520596f75747562652053656172636820204279204b6579776f726473, 17.9042, 17.9042, '', 1, '1007', 'Special', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(164, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205669e1bb8774204e616d207c20526574656e74696f6e20332d35206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f757263652052616e646f6d2028537567676573742f5365617263682f42726f77736520466561747572657329204279204b6579776f726473, 17.9042, 17.9042, '', 1, '639', 'Special', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(165, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205669e1bb8774204e616d207c20526574656e74696f6e20352d3130206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f757263652052616e646f6d2028537567676573742f5365617263682f42726f77736520466561747572657329204279204b6579776f726473, 26.8564, 26.8564, '', 1, '640', 'Special', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(166, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205669e1bb8774204e616d207c20526574656e74696f6e2031352d3230206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f757263652052616e646f6d2028537567676573742f5365617263682f42726f77736520466561747572657329204279204b6579776f726473, 35.8085, 35.8085, '', 1, '641', 'Special', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(167, 0, 35, 0x596f7574756265207c2056696577732042657461202d204265737420466f722053656f207c20596f7574756265205669657773205669e1bb8774204e616d207c20526574656e74696f6e2031352d323020206d696e75746573207c2020537065656420352d31306b2f6461797320207c20536f7572636520596f75747562652053756767657374285472656e64696e672f52616e646f6d29, 34.3165, 34.3165, '', 1, '642', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(168, 0, 36, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722031207c2046616365626f6f6b204c69766553747265616d205669657773207c204d61782032304b207c20537461792054696d65203135204d696e75746573, 15.7557, 15.7557, '', 1, '1142', 'Default', 10, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(169, 0, 36, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722031207c2046616365626f6f6b204c6976652053747265616d5669657773207c204d61782032304b207c20537461792054696d65203330204d696e75746573, 31.5115, 31.5115, '', 1, '1143', 'Default', 10, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(170, 0, 36, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722031207c2046616365626f6f6b204c6976652053747265616d5669657773207c204d61782032304b207c20537461792054696d65203630204d696e75746573, 63.0229, 63.0229, '', 1, '1144', 'Default', 10, 21000, '', '', '', NULL, '5gsmm.com', 1691913899),
(171, 0, 36, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722031207c2046616365626f6f6b204c6976652053747265616d5669657773207c204d61782032304b207c20537461792054696d65203930204d696e75746573, 94.5344, 94.5344, '', 1, '1145', 'Default', 10, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(172, 0, 36, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722031207c2046616365626f6f6b204c6976652053747265616d5669657773207c204d61782032304b207c20537461792054696d6520313230204d696e75746573, 126.046, 126.046, '', 1, '1146', 'Default', 10, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(173, 0, 37, 0x54696b746f6b207c204c69766553747265616d2056696577657273207c2054696b546f6b204c69766553747265616d2056696577657273207c203135204d696e75746573, 104.441, 104.441, '', 1, '857', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(174, 0, 37, 0x54696b746f6b207c204c69766553747265616d2056696577657273207c2054696b546f6b204c69766553747265616d2056696577657273207c203330204d696e75746573, 187.995, 187.995, '', 1, '858', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(175, 0, 37, 0x54696b746f6b207c204c69766553747265616d2056696577657273207c2054696b546f6b204c69766553747265616d2056696577657273207c203630204d696e75746573, 358.085, 358.085, '', 1, '859', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(176, 0, 37, 0x54696b746f6b207c204c69766553747265616d2056696577657273207c2054696b546f6b204c69766553747265616d2056696577657273207c203930204d696e75746573, 387.925, 387.925, '', 1, '1073', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(177, 0, 37, 0x54696b746f6b207c204c69766553747265616d2056696577657273207c2054696b546f6b204c69766553747265616d2056696577657273207c20313230204d696e75746573, 647.537, 647.537, '', 1, '860', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(178, 0, 37, 0x54696b746f6b207c204c69766553747265616d2056696577657273207c2054696b546f6b204c69766553747265616d2056696577657273207c20313830204d696e75746573, 868.356, 868.356, '', 1, '861', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(179, 0, 37, 0x54696b746f6b207c204c69766553747265616d2056696577657273207c2054696b546f6b204c69766553747265616d205669657773207c204b68c3b46e67204769e1bb9b692048e1baa16e205468e1bb9d69204769616e, 2.98404, 2.98404, '', 1, '862', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899);
INSERT INTO `services` (`id`, `user_id`, `category_id`, `name`, `price`, `cost`, `content`, `status`, `id_api`, `type`, `min`, `max`, `dripfeed`, `refill`, `cancel`, `note`, `source_api`, `update_time`) VALUES
(180, 0, 38, 0x596f7574756265207c20566965777320416473207c20596f7574756265205669657720416473207c204e6775e1bb936e205175e1baa36e672043c3a16f207c2053706565642035304b2d3130304b2f446179207c2042e1baa36f2048c3a06e6820333020446179, 47.7446, 47.7446, '', 1, '676', 'Default', 20000, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(181, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d203520566964656f2f446179207c203720446179, 545.184, 545.184, '', 1, '909', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(182, 0, 40, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722032207c2046616365626f6f6b204c69766553747265616d2056696577657273207c203330204d696e75746573207c20566970, 58.3827, 58.3827, '', 1, '1056', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(183, 0, 40, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722032207c2046616365626f6f6b204c69766553747265616d2056696577657273207c203630204d696e75746573207c20566970, 116.765, 116.765, '', 1, '1057', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(184, 0, 38, 0x596f7574756265207c20566965777320416473207c20596f7574756265205669657720416473207c20566970207c20566964656f2044c6b0e1bb9b692035204d696e75746573207c2042e1baa36f2048c3a06e682056c4a96e68205669e1bb856e, 65.6489, 65.6489, '', 1, '677', 'Default', 20000, 1000000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(185, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d203520566964656f2f446179207c20313520446179, 1167.95, 1167.95, '', 1, '910', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(186, 0, 40, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722032207c2046616365626f6f6b204c69766553747265616d2056696577657273207c203930204d696e75746573207c20566970, 175.151, 175.151, '', 1, '1058', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(187, 0, 38, 0x596f7574756265207c20566965777320416473207c20596f7574756265205669657720416473207c20416473205175e1baa36e672043c3a16f20476f6f676c6520c49061205175e1bb916320476961, 86.5372, 86.5372, '', 1, '678', 'Default', 30000, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(188, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d203520566964656f2f446179207c20333020446179, 2335.61, 2335.61, '', 1, '911', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(189, 0, 38, 0x596f7574756265207c20566965777320416473207c20596f7574756265205669657720416473207c205669e1bb8774204e616d207c20566964656f20342d35204d696e75746573207c2042e1baa36f2048c3a06e682056c4a96e68205669e1bb856e, 86.5372, 86.5372, '', 1, '679', 'Default', 30000, 100000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(190, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d203520566964656f2f446179207c20363020446179, 4670.92, 4670.92, '', 1, '912', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(191, 0, 40, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722032207c2046616365626f6f6b204c69766553747265616d2056696577657273207c20313230204d696e75746573207c20566970, 233.534, 233.534, '', 1, '1059', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(192, 0, 38, 0x596f7574756265207c20566965777320416473207c20596f7574756265205669657720416473207c205175e1baa36e672043c3a16f20416473207c20566964656f2044c6b0e1bb9b692036204d696e75746573, 77.585, 77.585, '', 1, '680', 'Default', 50000, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(193, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d203520566964656f2f446179207c20393020446179, 7006.23, 7006.23, '', 1, '913', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(194, 0, 40, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722032207c2046616365626f6f6b204c69766553747265616d2056696577657273207c203330204d696e75746573, 35.0296, 35.0296, '', 1, '1060', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(195, 0, 40, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722032207c2046616365626f6f6b204c69766553747265616d2056696577657273207c203630204d696e75746573, 70.0593, 70.0593, '', 1, '1061', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(196, 0, 38, 0x596f7574756265207c20566965777320416473207c20596f7574756265205669657720416473207c205175e1baa36e672043c3a16f2041647320596f75747562652044e1baa16e67204368c3a86e204e67616e6720566964656f, 149.202, 149.202, '', 1, '681', 'Default', 5000, 1000000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(197, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d203720566964656f2f446179207c203720446179, 763.019, 763.019, '', 1, '914', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(198, 0, 38, 0x596f7574756265207c20566965777320416473207c20596f7574756265205669657720416473207c205669e1bb8774204e616d207c204e6f2044726f70207c2042e1baa36f2048c3a06e682056c4a96e68205669e1bb856e, 298.404, 298.404, '', 1, '682', 'Default', 5000, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(199, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d203720566964656f2f446179207c20313520446179, 1634.96, 1634.96, '', 1, '915', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(200, 0, 40, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722032207c2046616365626f6f6b204c69766553747265616d2056696577657273207c203930204d696e75746573, 105.089, 105.089, '', 1, '1062', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(201, 0, 38, 0x596f7574756265207c20566965777320416473207c20596f7574756265205669657720416473207c205175e1baa36e672043c3a16f2052616e646f6d207c204be1bbb920546875e1baad74204b65792043616f207c204e6f2044726f70, 298.404, 298.404, '', 1, '683', 'Default', 5000, 1000000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(202, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d203720566964656f2f446179207c20333020446179, 3269.61, 3269.61, '', 1, '916', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(203, 0, 40, 0x46616365626f6f6b207c204c69766553747265616d20566965776572732053657665722032207c2046616365626f6f6b204c69766553747265616d2056696577657273207c20313230204d696e75746573, 140.122, 140.122, '', 1, '1063', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(204, 0, 38, 0x596f7574756265207c20566965777320416473207c20596f7574756265205669657720416473207c205175e1baa36e672043c3a16f2052616e646f6d207c205370656564203230304b2d3530304b2f446179207c203130303025205265616c, 35.8085, 35.8085, '', 1, '684', 'Default', 1000, 50000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(205, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d203720566964656f2f446179207c20363020446179, 6539.23, 6539.23, '', 1, '917', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(206, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d203720566964656f2f446179207c20393020446179, 9808.54, 9808.54, '', 1, '918', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(207, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d20313020566964656f2f446179207c203720446179, 1090.07, 1090.07, '', 1, '919', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(208, 0, 38, 0x596f7574756265207c20566965777320416473207c20596f7574756265205669657720416473207c204e6775e1bb936e2058656d205175e1baa36e672043c3a16f205472616e6720596f7574756265207c20566964656f2044c6b0e1bb9b692035205068c3ba74, 89.5212, 89.5212, '', 1, '686', 'Default', 20000, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(209, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d20313020566964656f2f446179207c20313520446179, 2335.61, 2335.61, '', 1, '920', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(210, 0, 38, 0x596f7574756265207c20566965777320416473207c20596f7574756265205669657720416473207c204e6775e1bb936e2058656d205175e1baa36e672043c3a16f205472616e6720596f7574756265207c20c490e1bb81205875e1baa5742031303025207c204b68c3b46e672048e1baa16e204368e1babf20c490e1bb992044c3a06920566964656f, 298.404, 298.404, '', 1, '754', 'Default', 10000, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(211, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d20313020566964656f2f446179207c20363020446179, 9341.54, 9341.54, '', 1, '922', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(212, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d20313020566964656f2f446179207c20333020446179, 4670.92, 4670.92, '', 1, '921', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(213, 0, 39, 0x54696b746f6b207c20566970204c6f7665207c20566970204c6f7665202d20313020566964656f2f446179207c20393020446179, 14012.2, 14012.2, '', 1, '923', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(214, 0, 41, 0x596f7574756265207c205669657773204d6f6e6574697a61626c65202d20526576656e7565207c20596f7574756265204d6f6e6574697a6174696f6e205669657773207c2052504d20302e31202d20312e3524207c2053706565642033304b2d35304b2f446179207c204265737420466f722053656f, 23.3471, 23.3471, '', 1, '1156', 'Default', 1000, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(215, 0, 42, 0x46616365626f6f6b207c205669657720566964656f207c2046616365626f6f6b20566965777320466f72205265656c2f566964656f207c20537065656420324b2d354b2f446179, 4.47606, 4.47606, '', 1, '1050', 'Default', 500, 100000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(216, 0, 43, 0x54696b746f6b207c20566970204c69766553747265616d207c20566970204c69766553747265616d207c203135204d696e75746573, 232.755, 232.755, '', 1, '1166', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(217, 0, 42, 0x46616365626f6f6b207c205669657720566964656f207c2046616365626f6f6b20566964656f205669657773207c205370656564203130306b2f446179, 22.2013, 22.2013, '', 1, '882', 'Default', 500, 5000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(218, 0, 43, 0x54696b746f6b207c20566970204c69766553747265616d207c20566970204c69766553747265616d207c203330204d696e75746573, 459.542, 459.542, '', 1, '1167', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(219, 0, 42, 0x46616365626f6f6b207c205669657720566964656f207c2046616365626f6f6b20566964656f205669657773202b205265656c73205669657773207c2053706565642035304b2f446179, 68.6329, 68.6329, '', 1, '883', 'Default', 500, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(220, 0, 43, 0x54696b746f6b207c20566970204c69766553747265616d207c20566970204c69766553747265616d207c203630204d696e75746573, 725.122, 725.122, '', 1, '1168', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(221, 0, 43, 0x54696b746f6b207c20566970204c69766553747265616d207c20566970204c69766553747265616d207c203930204d696e75746573, 934.005, 934.005, '', 1, '1169', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(222, 0, 41, 0x596f7574756265207c205669657773204d6f6e6574697a61626c65202d20526576656e7565207c20596f7574756265205669657773207c20526576656e7565207c2054c3ad6e68204ec4836e6720447579e1bb8774207c20c490e1bb81205875e1baa574207c20e1baa46e2054c6b0e1bba36e67207c2052504d20302c382d312c322024, 59.6808, 59.6808, '', 1, '688', 'Default', 1000, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(223, 0, 43, 0x54696b746f6b207c20566970204c69766553747265616d207c20566970204c69766553747265616d207c20313230204d696e75746573, 1127.97, 1127.97, '', 1, '1170', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(224, 0, 43, 0x54696b746f6b207c20566970204c69766553747265616d207c20566970204c69766553747265616d207c203320486f757273, 1557.67, 1557.67, '', 1, '1171', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(225, 0, 41, 0x596f7574756265207c205669657773204d6f6e6574697a61626c65202d20526576656e7565207c20596f75747562652056696577207c2054c3ac6d204b69e1babf6d205475e1bbb3204368e1bb896e68202b204869e1bb836e205468e1bb8b207c20446f616e6820546875207c2054e1bb916320c490e1bb9920354b2d32304b2f446179, 59.6808, 59.6808, '', 1, '733', 'Default', 1000, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(226, 0, 43, 0x54696b746f6b207c20566970204c69766553747265616d207c20566970204c69766553747265616d207c203420486f757273, 1945.59, 1945.59, '', 1, '1172', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(227, 0, 43, 0x54696b746f6b207c20566970204c69766553747265616d207c20566970204c69766553747265616d207c203620486f757273, 2724.43, 2724.43, '', 1, '1173', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(228, 0, 43, 0x54696b746f6b207c20566970204c69766553747265616d207c20566970204c69766553747265616d207c20323420486f757273, 4801.32, 4801.32, '', 1, '1174', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(229, 0, 44, 0x54696b746f6b207c2054696b546f6b2053686f70202d204d75612048c3a06e67207c2054696b546f6b2053686f70207c203130204cc6b0e1bba3742042c3a16e2053e1baa36e205068e1baa96d, 64.87, 64.87, '', 1, '1175', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(230, 0, 45, 0x46616365626f6f6b207c20566965772053746f7279207c20566965772053746f7279207c204d617820354b, 6.4873, 6.4873, '', 1, '875', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(231, 0, 44, 0x54696b746f6b207c2054696b546f6b2053686f70202d204d75612048c3a06e67207c2054696b546f6b2053686f70207c203330204cc6b0e1bba3742042c3a16e2053e1baa36e205068e1baa96d, 71.3573, 71.3573, '', 1, '1176', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(232, 0, 44, 0x54696b746f6b207c2054696b546f6b2053686f70202d204d75612048c3a06e67207c2054696b546f6b2053686f70207c203530204cc6b0e1bba3742042c3a16e2053e1baa36e205068e1baa96d, 84.332, 84.332, '', 1, '1177', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(233, 0, 44, 0x54696b746f6b207c2054696b546f6b2053686f70202d204d75612048c3a06e67207c2054696b546f6b2053686f70207c20313030204cc6b0e1bba3742042c3a16e2053e1baa36e205068e1baa96d, 142.715, 142.715, '', 1, '1178', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(234, 0, 44, 0x54696b746f6b207c2054696b546f6b2053686f70202d204d75612048c3a06e67207c2054696b546f6b2053686f70207c20333030204cc6b0e1bba3742042c3a16e2053e1baa36e205068e1baa96d, 531.938, 531.938, '', 1, '1179', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(235, 0, 46, 0x46616365626f6f6b207c20536861726573207c2046616365626f6f6b20536861726520e1baa26f207c204d696e2035304b207c204d617820314d, 0.647537, 0.647537, '', 1, '1129', 'Default', 50000, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(236, 0, 47, 0x596f7574756265207c20596f75747562652053686f727473207c20596f75747562652053686f7274205669657773207c20537065656420356b2f646179207c20426f6e7573204c696b6573, 35.8085, 35.8085, '', 1, '1025', 'Default', 100, 10000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(237, 0, 48, 0x54696b746f6b207c2054696b546f6b2053686f70202d204869e1bb836e205468e1bb8b204d75612048c3a06e67207c2054696b546f6b2053686f70207c203130204cc6b0e1bba37420c490616e67204d75612053e1baa36e205068e1baa96d, 19.4619, 19.4619, '', 1, '1180', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(238, 0, 47, 0x596f7574756265207c20596f75747562652053686f727473207c20596f75747562652053686f7274204c696b6573207c205370656564203130306b2f646179, 21.0554, 21.0554, '', 1, '1026', 'Default', 10, 50000, '', '', '', NULL, '5gsmm.com', 1691913899),
(239, 0, 46, 0x46616365626f6f6b207c20536861726573207c2046616365626f6f6b205368617265207c2050726f66696c65, 88.2231, 88.2231, '', 1, '902', 'Default', 10, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(240, 0, 48, 0x54696b746f6b207c2054696b546f6b2053686f70202d204869e1bb836e205468e1bb8b204d75612048c3a06e67207c2054696b546f6b2053686f70207c203230204cc6b0e1bba37420c490616e67204d75612053e1baa36e205068e1baa96d, 25.9492, 25.9492, '', 1, '1181', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(241, 0, 46, 0x46616365626f6f6b207c20536861726573207c2046616365626f6f6b20536861726520566961207c204d617820314b, 64.87, 64.87, '', 1, '903', 'Default', 5, 500, '', '', '', NULL, '5gsmm.com', 1691913899),
(242, 0, 48, 0x54696b746f6b207c2054696b546f6b2053686f70202d204869e1bb836e205468e1bb8b204d75612048c3a06e67207c2054696b546f6b2053686f70207c203530204cc6b0e1bba37420c490616e67204d75612053e1baa36e205068e1baa96d, 45.4081, 45.4081, '', 1, '1182', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(243, 0, 46, 0x46616365626f6f6b207c20536861726573207c2046616365626f6f6b205368617265205265616c207c204d6178203130304b, 129.74, 129.74, '', 1, '905', 'Default', 5, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(244, 0, 48, 0x54696b746f6b207c2054696b546f6b2053686f70202d204869e1bb836e205468e1bb8b204d75612048c3a06e67207c2054696b546f6b2053686f70207c203730204cc6b0e1bba37420c490616e67204d75612053e1baa36e205068e1baa96d, 58.3827, 58.3827, '', 1, '1183', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(245, 0, 48, 0x54696b746f6b207c2054696b546f6b2053686f70202d204869e1bb836e205468e1bb8b204d75612048c3a06e67207c2054696b546f6b2053686f70207c20313030204cc6b0e1bba37420c490616e67204d75612053e1baa36e205068e1baa96d, 84.332, 84.332, '', 1, '1184', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(246, 0, 48, 0x54696b746f6b207c2054696b546f6b2053686f70202d204869e1bb836e205468e1bb8b204d75612048c3a06e67207c2054696b546f6b2053686f70207c20323030204cc6b0e1bba37420c490616e67204d75612053e1baa36e205068e1baa96d, 136.227, 136.227, '', 1, '1185', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(247, 0, 48, 0x54696b746f6b207c2054696b546f6b2053686f70202d204869e1bb836e205468e1bb8b204d75612048c3a06e67207c2054696b546f6b2053686f70207c20333030204cc6b0e1bba37420c490616e67204d75612053e1baa36e205068e1baa96d, 207.585, 207.585, '', 1, '1186', 'Package', 1, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(248, 0, 46, 0x46616365626f6f6b207c20536861726573207c2046616365626f6f6b20536861726520566964656f204c6976652053747265616d20496e2047726f7570207c2054e1bb916320c490e1bb992031304b2f446179, 152.186, 152.186, '', 1, '906', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(249, 0, 46, 0x46616365626f6f6b207c20536861726573207c2046616365626f6f6b205368617265207c205669e1bb8774204e616d, 155.695, 155.695, '', 1, '907', 'Default', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913899),
(250, 0, 46, 0x46616365626f6f6b207c20536861726573207c2046616365626f6f6b205265616c205368617265205669e1bb8774204e616d207c20537065656420e2808be2808b3130202d2032306b2053686172652f44617973, 537.127, 537.127, '', 1, '908', 'Default', 30, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(251, 0, 49, 0x46616365626f6f6b207c2047726f7570204d656d626572207c204d656d62657220436c6f6e65207c204d617820334d207c2031304b2f446179207c20535631, 11.9362, 11.9362, '', 1, '928', 'Default', 1000, 3000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(252, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f7574756265205265616c205375627363726962657273205669e1bb8774204e616d207c204d6178203130304b207c20537065656420354b2f446179, 286.468, 286.468, '', 1, '1189', 'Default', 100, 50000, '', '', '', NULL, '5gsmm.com', 1691913899),
(253, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c20537065656420354b2d384b2f446179, 132.348, 132.348, '', 1, '1074', 'Default', 300, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(254, 0, 49, 0x46616365626f6f6b207c2047726f7570204d656d626572207c204d656d62657220436c6f6e65207c204d617820334d207c2032304b2f446179207c20535632, 20.8883, 20.8883, '', 1, '929', 'Default', 1000, 3000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(255, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c205370656564203230302d3530302f446179, 93.1021, 93.1021, '', 1, '1001', 'Default', 100, 60000, '', '', '', NULL, '5gsmm.com', 1691913899),
(256, 0, 49, 0x46616365626f6f6b207c2047726f7570204d656d626572207c204d656d62657220436c6f6e65207c204d617820334d207c2033304b2f446179207c20535633, 32.526, 32.526, '', 1, '930', 'Default', 1000, 3000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(257, 0, 49, 0x46616365626f6f6b207c2047726f7570204d656d626572207c204d656d62657220566961207c204d6178203130304b207c2031304b2d35304b2f446179207c20535634, 15.8154, 15.8154, '', 1, '931', 'Default', 1000, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(258, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c20537065656420314b2d334b2f446179, 100.622, 100.622, '', 1, '1027', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(259, 0, 49, 0x46616365626f6f6b207c2047726f7570204d656d626572207c204d656d62657220566965746e616d65736520436c6f6e652c2048617320417661746172207c204d61782035304b207c2031304b2d35304b2f446179207c20535635, 15.8154, 15.8154, '', 1, '932', 'Default', 1000, 50000, '', '', '', NULL, '5gsmm.com', 1691913899),
(260, 0, 49, 0x46616365626f6f6b207c2047726f7570204d656d626572207c204d656d6265722046616e70616765207c204d617820314d207c2031304b2d35304b2f446179207c20535638, 9.25052, 9.25052, '', 1, '933', 'Default', 1000, 1000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(261, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c205370656564203530302d324b2f446179, 111.722, 111.722, '', 1, '528', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(262, 0, 49, 0x46616365626f6f6b207c2047726f7570204d656d626572207c204d656d62657220566961205669702c2048617320417661746172207c204d696e2035304b207c204d617820334d207c2031304b2d35304b2f446179, 13.1298, 13.1298, '', 1, '934', 'Default', 50000, 3000000, '', '', '', NULL, '5gsmm.com', 1691913899),
(263, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c205265616c2053756273637269626573207c20426f6e7573205669657773207c204d617820354d207c20537065656420354b2f446179, 205.899, 205.899, '', 1, '526', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(264, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c205370656564203530302d324b2f446179207c204d6178203132304b, 111.722, 111.722, '', 1, '529', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(265, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c20537065656420354b2d31304b2f446179207c204d617820324d207c205265616c2055736572, 343.165, 343.165, '', 1, '530', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(266, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c204d6178203230304b207c20537065656420354b2d31304b2f446179, 212.762, 212.762, '', 1, '531', 'Default', 400, 268999, '', '', '', NULL, '5gsmm.com', 1691913899),
(267, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c205370656564203330302d3530302f446179, 137.266, 137.266, '', 1, '532', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(268, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c204d61782032304b207c205370656564203330302d3530302f446179, 223.057, 223.057, '', 1, '533', 'Default', 50, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(269, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c203430302d3830302f446179207c205375622050686f6e65207c205669e1bb8774204e616d207c204d6178203235304b, 480.43, 480.43, '', 1, '534', 'Default', 500, 186868, '', '', '', NULL, '5gsmm.com', 1691913899),
(270, 0, 50, 0x596f7574756265207c205375627363726962657273207c20596f75747562652053756273637269626573207c20537065656420314b2d354b2f44617920207c204d6178203530304b207c2020426f6e7573205669657773, 641.569, 641.569, '', 1, '535', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(271, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d203520506f73742f446179207c203720446179, 136.371, 136.371, '', 1, '777', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(272, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d203520506f73742f446179207c20313520446179, 292.138, 292.138, '', 1, '778', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(273, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d203520506f73742f446179207c20333020446179, 583.977, 583.977, '', 1, '779', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(274, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d203520506f73742f446179207c20363020446179, 1167.95, 1167.95, '', 1, '863', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(275, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d203520506f73742f446179207c20393020446179, 1751.63, 1751.63, '', 1, '864', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(276, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d203720506f73742f446179207c203720446179, 190.979, 190.979, '', 1, '865', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(277, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d203720506f73742f446179207c20313520446179, 408.813, 408.813, '', 1, '866', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(278, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d203720506f73742f446179207c20333020446179, 817.627, 817.627, '', 1, '867', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(279, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d203720506f73742f446179207c20363020446179, 1634.96, 1634.96, '', 1, '868', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(280, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d203720506f73742f446179207c20393020446179, 2452.28, 2452.28, '', 1, '869', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(281, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d20313020506f73742f446179207c203720446179, 272.741, 272.741, '', 1, '870', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(282, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d20313020506f73742f446179207c20313520446179, 583.977, 583.977, '', 1, '871', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(283, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d20313020506f73742f446179207c20333020446179, 1167.95, 1167.95, '', 1, '872', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(284, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d20313020506f73742f446179207c20363020446179, 2335.61, 2335.61, '', 1, '873', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(285, 0, 51, 0x46616365626f6f6b207c20566970204c696b65207c20566970204c696b6573202d20313020506f73742f446179207c20393020446179, 3503.26, 3503.26, '', 1, '874', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(286, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c203720446179207cf09f918d2be29da4efb88f, 181.728, 181.728, '', 1, '942', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(287, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20313520446179207cf09f918d2be29da4efb88f, 389.417, 389.417, '', 1, '943', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(288, 0, 53, 0x596f7574756265207c204c696b6573202d204469736c696b6573207c20596f7574756265204c696b6573207c2033304b2d35304b2f446179, 21.4851, 21.4851, '', 1, '589', 'Default', 10, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(289, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20333020446179207cf09f918d2be29da4efb88f, 778.536, 778.536, '', 1, '944', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(290, 0, 53, 0x596f7574756265207c204c696b6573202d204469736c696b6573207c20596f7574756265204c696b6573207c205370656564203130304b2f446179207c204d6178203130304b, 29.8404, 29.8404, '', 1, '590', 'Default', 20, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(291, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20363020446179207cf09f918d2be29da4efb88f, 1557.07, 1557.07, '', 1, '945', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(292, 0, 53, 0x596f7574756265207c204c696b6573202d204469736c696b6573207c20596f7554756265204c696b6573207c205370656564203530304b2f446179, 35.8085, 35.8085, '', 1, '587', 'Default', 50, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(293, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20393020446179207cf09f918d2be29da4efb88f, 2335.61, 2335.61, '', 1, '946', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(294, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c203720446179207cf09f918d2be29da4efb88f2bf09fa5b0, 181.728, 181.728, '', 1, '947', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(295, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20313520446179207cf09f918d2be29da4efb88f2bf09fa5b0, 389.417, 389.417, '', 1, '948', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(296, 0, 53, 0x596f7574756265207c204c696b6573202d204469736c696b6573207c20596f7554756265204c696b6573207c205370656564203530304b2b2f446179, 28.6468, 28.6468, '', 1, '591', 'Default', 20, 500000, '', '', '', NULL, '5gsmm.com', 1691913899),
(297, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20333020446179207cf09f918d2be29da4efb88f2bf09fa5b0, 778.536, 778.536, '', 1, '949', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(298, 0, 53, 0x596f7574756265207c204c696b6573202d204469736c696b6573207c20596f7554756265205265616c20436f6d6d656e7473204c696b6573207c205370656564203130304b2b2f446179, 25.0659, 25.0659, '', 1, '593', 'Default', 100, 100000, '', '', '', NULL, '5gsmm.com', 1691913899),
(299, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20363020446179207cf09f918d2be29da4efb88f2bf09fa5b0, 1557.07, 1557.07, '', 1, '950', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(300, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20393020446179207cf09f918d2be29da4efb88f2bf09fa5b0, 2335.61, 2335.61, '', 1, '951', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(301, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c203720446179207cf09f918d2be29da4efb88f2bf09fa5b02bf09f9880, 181.728, 181.728, '', 1, '952', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(302, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20313520446179207cf09f918d2be29da4efb88f2bf09fa5b02bf09f9880, 389.417, 389.417, '', 1, '953', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(303, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20333020446179207cf09f918d2be29da4efb88f2bf09fa5b02bf09f9880, 778.536, 778.536, '', 1, '954', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(304, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20363020446179207cf09f918d2be29da4efb88f2bf09fa5b02bf09f9880, 1557.07, 1557.07, '', 1, '955', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(305, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20393020446179207cf09f918d2be29da4efb88f2bf09fa5b02bf09f9880, 2335.61, 2335.61, '', 1, '956', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(306, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c203720446179207cf09f918d2be29da4efb88f2bf09fa5b02bf09f98802bf09f98b2, 181.728, 181.728, '', 1, '957', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(307, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20313520446179207cf09f918d2be29da4efb88f2bf09fa5b02bf09f98802bf09f98b2, 389.417, 389.417, '', 1, '958', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(308, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20333020446179207cf09f918d2be29da4efb88f2bf09fa5b02bf09f98802bf09f98b2, 778.536, 778.536, '', 1, '959', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(309, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20363020446179207cf09f918d2be29da4efb88f2bf09fa5b02bf09f98802bf09f98b2, 1557.07, 1557.07, '', 1, '960', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(310, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20393020446179207cf09f918d2be29da4efb88f2bf09fa5b02bf09f98802bf09f98b2, 2335.61, 2335.61, '', 1, '961', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(311, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c203720446179207cf09f98a22bf09f98a1, 181.728, 181.728, '', 1, '962', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(312, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20313520446179207cf09f98a22bf09f98a1, 389.417, 389.417, '', 1, '963', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(313, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20333020446179207cf09f98a22bf09f98a1, 778.536, 778.536, '', 1, '964', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(314, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20363020446179207cf09f98a22bf09f98a1, 1557.07, 1557.07, '', 1, '965', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(315, 0, 52, 0x46616365626f6f6b207c20566970204c696b65202d20456d6f74696f6e204f7074696f6e73207c20566970204c696b6573202d20456d6f74696f6e204f7074696f6e73202d203520506f73742f446179207c20393020446179207cf09f98a22bf09f98a1, 2335.61, 2335.61, '', 1, '966', 'Default', 50, 2000, '', '', '', NULL, '5gsmm.com', 1691913899),
(316, 0, 54, 0x46616365626f6f6b207c20506172746e6572204d6f6e6574697a6174696f6e205061636b616765207c2046616365626f6f6b2036304b204d696e757465207c204d6f6e6574697a6174696f6e207c20436f6d706c6574652054696d6520343820486f757273207c20566964656f204c656e67746820526571756972656d656e7420313230204d696e75746573, 71.617, 71.617, '', 1, '1110', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(317, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87bbf09f87b320564945544e414d20f09f87bbf09f87b3207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '594', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(318, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87baf09f87b82055534120f09f87baf09f87b8207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '595', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(319, 0, 54, 0x46616365626f6f6b207c20506172746e6572204d6f6e6574697a6174696f6e205061636b616765207c2046616365626f6f6b203630304b204d696e757465207c204d6f6e6574697a6174696f6e207c20436f6d706c6574652054696d6520343820486f757273207c20566964656f204c656e67746820526571756972656d656e7420313230204d696e75746573, 358.085, 358.085, '', 1, '1111', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(320, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87aef09f87b320494e44494120f09f87aef09f87b3207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '596', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(321, 0, 54, 0x46616365626f6f6b207c20506172746e6572204d6f6e6574697a6174696f6e205061636b616765207c2046616365626f6f6b2036304b204d696e757465207c204d6f6e6574697a6174696f6e207c20436f6d706c6574652054696d6520343820486f757273207c20566964656f204c656e67746820526571756972656d656e7420313830204d696e75746573, 50.1319, 50.1319, '', 1, '1112', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(322, 0, 54, 0x46616365626f6f6b207c20506172746e6572204d6f6e6574697a6174696f6e205061636b616765207c2046616365626f6f6b203630304b204d696e757465207c204d6f6e6574697a6174696f6e207c20436f6d706c6574652054696d6520343820486f757273207c20566964656f204c656e67746820526571756972656d656e7420313830204d696e75746573, 232.755, 232.755, '', 1, '1113', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(323, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87acf09f87a720554b20f09f87acf09f87a7207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '597', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(324, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87a6f09f87ba204155535452414c494120f09f87a6f09f87ba207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '598', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(325, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87a8f09f87a62043414e41444120f09f87a8f09f87a6207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '599', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(326, 0, 54, 0x46616365626f6f6b207c20506172746e6572204d6f6e6574697a6174696f6e205061636b616765207c2046616365626f6f6b203630304b204d696e75746573207c204d6f6e6574697a6174696f6e207c20436f6d706c6574652054696d653a20313220486f757273207c20566964656f204c656e67746820526571756972656d656e7420313230204d696e75746573207c20535631, 214.254, 214.254, '', 1, '924', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(327, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87a7f09f87b7204252415a494c20f09f87a7f09f87b7207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '600', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(328, 0, 54, 0x46616365626f6f6b207c20506172746e6572204d6f6e6574697a6174696f6e205061636b616765207c2046616365626f6f6b2036304b204d696e75746573207c204d6f6e6574697a6174696f6e207c20436f6d706c6574652054696d653a20313220486f757273207c20566964656f204c656e67746820526571756972656d656e7420313230204d696e75746573207c20535632, 103.845, 103.845, '', 1, '925', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(329, 0, 54, 0x46616365626f6f6b207c20506172746e6572204d6f6e6574697a6174696f6e205061636b616765207c2046616365626f6f6b203130304b2056696577205265656c20506c6179207c204d6f6e6574697a6174696f6e207c20436f6d706c6574652054696d65203132202d20323420486f757273207c20535633, 318.099, 318.099, '', 1, '926', 'Package', 1, 1, '', '', '', NULL, '5gsmm.com', 1691913899),
(330, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87aaf09f87ac20454759505420f09f87aaf09f87ac207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '601', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(331, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87a7f09f87aa2042454c4749554d20f09f87a7f09f87aa207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '602', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(332, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87abf09f87b7204652414e434520f09f87abf09f87b7207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '603', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(333, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87a9f09f87aa204745524d414e5920f09f87a9f09f87aa207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '604', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(334, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b2f09f87a6204d4f524f43434f20f09f87b2f09f87a6207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '605', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(335, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87aef09f87b9204954414c5920f09f87aef09f87b9207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '606', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(336, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b3f09f87b1204e45544845524c414e445320f09f87b3f09f87b1207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '607', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(337, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b5f09f87b920504f52545547414c20f09f87b5f09f87b9207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '608', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(338, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b7f09f87ba2052555353494120f09f87b7f09f87ba207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '609', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913899),
(339, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b8f09f87a62053415544492041524142494120f09f87b8f09f87a6207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '610', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(340, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87aff09f87b5204a4150414e20f09f87aff09f87b5207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '611', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(341, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b9f09f87b7205455524b455920f09f87b9f09f87b7207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '612', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(342, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87baf09f87a620554b5241494e4520f09f87baf09f87a6207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '613', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(343, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b9f09f87bc2054414957414e20f09f87b9f09f87bc207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '614', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(344, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b0f09f87b720534f555448204b4f52454120f09f87b0f09f87b7207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '615', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(345, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87aaf09f87b820535041494e20f09f87aaf09f87b8207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '616', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(346, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b8f09f87aa2053574544454e20f09f87b8f09f87aa207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '617', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(347, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b5f09f87b120504f4c414e4420f09f87b5f09f87b1207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '618', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(348, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b2f09f87bd204d455849434f20f09f87b2f09f87bd207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '619', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(349, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87acf09f87b72047524545434520f09f87acf09f87b7207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '620', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(350, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87a8f09f87bf20435a4543482052455055424c494320f09f87a8f09f87bf207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '621', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(351, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87bff09f87a620534f5554482041465249434120f09f87bff09f87a6207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '622', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(352, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87a6f09f87b120414c42414e494120f09f87a6f09f87b1207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '623', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900);
INSERT INTO `services` (`id`, `user_id`, `category_id`, `name`, `price`, `cost`, `content`, `status`, `id_api`, `type`, `min`, `max`, `dripfeed`, `refill`, `cancel`, `note`, `source_api`, `update_time`) VALUES
(353, 0, 55, 0x596f7574756265207c204c696b6573202d20436f756e747279205461726765746564207c20f09d9098f09d90a8f09d90aef09d9093f09d90aef09d909bf09d909e202d205265616c204c696b6573207c20f09f87b2f09f87be204d414c415953494120f09f87b2f09f87be207c2053706565642035304b2f44, 30.8848, 30.8848, '', 1, '624', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(354, 0, 56, 0x596f7574756265207c20436f6d6d656e7473207c20596f757475626520437573746f6d20436f6d6d656e74207c204163636f756e74205669e1bb8774204e616d207c2053706565642031304b2f446179207c204d6178203530304b, 322.276, 322.276, '', 1, '775', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(355, 0, 56, 0x596f7574756265207c20436f6d6d656e7473207c20596f757475626520437573746f6d20436f6d6d656e74207c2054c3a069204b686fe1baa36e205669e1bb8774204e616d2043c3b320417661746172207c20537065656420314b2f446179207c204d61782031304b, 393.893, 393.893, '', 1, '1127', 'Custom Comments', 5, 1000, '', '', '', NULL, '5gsmm.com', 1691913900),
(356, 0, 56, 0x596f7574756265207c20436f6d6d656e7473207c20596f757475626520437573746f6d20436f6d6d656e74207c204163636f756e74205553207c2053706565642031304b2f446179207c204d6178203530304b, 322.276, 322.276, '', 1, '776', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(357, 0, 56, 0x596f7574756265207c20436f6d6d656e7473207c20596f757475626520437573746f6d20436f6d6d656e74207c205669e1bb8774204e616d207c20537065656420314b2f446179207c204d61782031304b, 778.476, 778.476, '', 1, '625', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(358, 0, 56, 0x596f7574756265207c20436f6d6d656e7473207c20437573746f6d20436f6d6d656e74205669e1bb8774204e616d207c20564950207c205370656564203530302d313030302f446179, 1074.25, 1074.25, '', 1, '626', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(359, 0, 56, 0x596f7574756265207c20436f6d6d656e7473207c20596f7554756265205265616c20436f6d6d656e7473205265706c7920436f6d6d656e7473207c2053706565642031304b2b2f446179, 120.108, 120.108, '', 1, '627', 'Custom Comments', 5, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(360, 0, 56, 0x596f7574756265207c20436f6d6d656e7473207c20596f7554756265205265616c20436f6d6d656e7473207c20537065656420354b2b2f446179, 111.528, 111.528, '', 1, '628', 'Custom Comments', 5, 5000, '', '', '', NULL, '5gsmm.com', 1691913900),
(361, 0, 56, 0x596f7574756265207c20436f6d6d656e7473207c20596f757475626520437573746f6d20436f6d6d656e7473207c2033304b2f446179207c204d6178203130304b, 50.1319, 50.1319, '', 1, '630', 'Custom Comments', 10, 100000, '', '', '', NULL, '5gsmm.com', 1691913900),
(362, 0, 57, 0x596f7574756265207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20537065656420312d352063686174732f6d696e75746573, 358.085, 358.085, '', 1, '1031', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(363, 0, 57, 0x596f7574756265207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20537065656420352d31302063686174732f6d696e75746573, 358.085, 358.085, '', 1, '1032', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(364, 0, 57, 0x596f7574756265207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c2053706565642031302d32302063686174732f6d696e75746573, 358.085, 358.085, '', 1, '1033', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(365, 0, 57, 0x596f7574756265207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c2053706565642032302d33302063686174732f6d696e75746573, 358.085, 358.085, '', 1, '1034', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(366, 0, 57, 0x596f7574756265207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c2053706565642033302d34302063686174732f6d696e75746573, 358.085, 358.085, '', 1, '1035', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(367, 0, 57, 0x596f7574756265207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205553207c20537065656420312d352063686174732f6d696e75746573, 358.085, 358.085, '', 1, '1036', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(368, 0, 57, 0x596f7574756265207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205553207c20537065656420352d31302063686174732f6d696e75746573, 358.085, 358.085, '', 1, '1037', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(369, 0, 57, 0x596f7574756265207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205553207c2053706565642031302d32302063686174732f6d696e75746573, 358.085, 358.085, '', 1, '1038', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(370, 0, 57, 0x596f7574756265207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205553207c2053706565642032302d33302063686174732f6d696e75746573, 358.085, 358.085, '', 1, '1039', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(371, 0, 57, 0x596f7574756265207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205669e1bb8774204e616d207c20596f757475626520437573746f6d2043686174204c6976652053747265616d205553207c2053706565642033302d34302063686174732f6d696e75746573, 358.085, 358.085, '', 1, '1040', 'Custom Comments', 10, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(372, 0, 58, 0x596f7574756265207c204c69766553747265616d205072652d5072656d69657265207c20596f7574756265204c6976652053747265616d205669657773207c20313030202d20333030205669657765727320496e20323468, 75.4962, 75.4962, '', 1, '659', 'Default', 1000, 5000, '', '', '', NULL, '5gsmm.com', 1691913900),
(373, 0, 59, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722031207c20596f7554756265204c6976652053747265616d207c203330204d696e75746573204c69766520434f4e43555252454e54, 137.266, 137.266, '', 1, '757', 'Default', 100, 40000, '', '', '', NULL, '5gsmm.com', 1691913900),
(374, 0, 59, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722031207c20596f7554756265204c6976652053747265616d207c203630204d696e75746573204c69766520434f4e43555252454e54, 274.532, 274.532, '', 1, '758', 'Default', 100, 40000, '', '', '', NULL, '5gsmm.com', 1691913900),
(375, 0, 59, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722031207c20596f7554756265204c6976652053747265616d207c203930204d696e75746573204c69766520434f4e43555252454e54, 411.798, 411.798, '', 1, '759', 'Default', 100, 40000, '', '', '', NULL, '5gsmm.com', 1691913900),
(376, 0, 59, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722031207c20596f7554756265204c6976652053747265616d207c20313230204d696e75746573204c69766520434f4e43555252454e54, 549.063, 549.063, '', 1, '760', 'Default', 100, 40000, '', '', '', NULL, '5gsmm.com', 1691913900),
(377, 0, 59, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722031207c20596f7554756265204c6976652053747265616d207c20313530204d696e75746573204c69766520434f4e43555252454e54, 686.329, 686.329, '', 1, '761', 'Default', 100, 40000, '', '', '', NULL, '5gsmm.com', 1691913900),
(378, 0, 59, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722031207c20596f7554756265204c6976652053747265616d207c203320686f7572204c69766520434f4e43555252454e54, 823.595, 823.595, '', 1, '762', 'Default', 100, 40000, '', '', '', NULL, '5gsmm.com', 1691913900),
(379, 0, 59, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722031207c20596f7554756265204c6976652053747265616d207c203620686f7572204c69766520434f4e43555252454e54, 1647.19, 1647.19, '', 1, '763', 'Default', 100, 40000, '', '', '', NULL, '5gsmm.com', 1691913900),
(380, 0, 59, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722031207c20596f7554756265204c6976652053747265616d207c20313220686f7572204c69766520434f4e43555252454e54, 3294.38, 3294.38, '', 1, '764', 'Default', 100, 40000, '', '', '', NULL, '5gsmm.com', 1691913900),
(381, 0, 59, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722031207c20596f7554756265204c6976652053747265616d207c20323420686f7572204c69766520434f4e43555252454e54, 5147.47, 5147.47, '', 1, '765', 'Default', 100, 40000, '', '', '', NULL, '5gsmm.com', 1691913900),
(382, 0, 60, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722032207c20596f7554756265204c6976652053747265616d205669657773207c203330204d696e75746573204c69766520434f4e43555252454e54, 119.833, 119.833, '', 1, '766', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(383, 0, 60, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722032207c20596f7554756265204c6976652053747265616d205669657773207c203630204d696e75746573204c69766520434f4e43555252454e54, 239.666, 239.666, '', 1, '767', 'Default', 100, 50000, '', '', '', NULL, '5gsmm.com', 1691913900),
(384, 0, 60, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722032207c20596f7554756265204c6976652053747265616d205669657773207c203930204d696e75746573204c69766520434f4e43555252454e54, 362.828, 362.828, '', 1, '768', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(385, 0, 60, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722032207c20596f7554756265204c6976652053747265616d205669657773207c203220486f757273204c69766520434f4e43555252454e54, 482.661, 482.661, '', 1, '769', 'Default', 100, 50000, '', '', '', NULL, '5gsmm.com', 1691913900),
(386, 0, 60, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722032207c20596f7554756265204c6976652053747265616d205669657773207c20322e3520486f757273204c69766520434f4e43555252454e54, 602.494, 602.494, '', 1, '770', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(387, 0, 60, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722032207c20596f7554756265204c6976652053747265616d205669657773207c203320486f757273204c69766520434f4e43555252454e54, 715.67, 715.67, '', 1, '771', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(388, 0, 60, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722032207c20596f7554756265204c6976652053747265616d205669657773207c203620486f757273204c69766520434f4e43555252454e54, 1331.48, 1331.48, '', 1, '772', 'Default', 100, 50000, '', '', '', NULL, '5gsmm.com', 1691913900),
(389, 0, 60, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722032207c20596f7554756265204c6976652053747265616d205669657773207c20313220486f757273204c69766520434f4e43555252454e54, 5825.22, 5825.22, '', 1, '773', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(390, 0, 60, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722032207c20596f7554756265204c6976652053747265616d205669657773207c20323420486f757273204c69766520434f4e43555252454e54, 11983.3, 11983.3, '', 1, '774', 'Default', 100, 10000, '', '', '', NULL, '5gsmm.com', 1691913900),
(391, 0, 61, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722033207c20596f7554756265204c6976652053747265616d205b203330204d696e75746573204c69766520434f4e43555252454e54205d, 154.424, 154.424, '', 1, '662', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(392, 0, 61, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722033207c20596f7554756265204c6976652053747265616d205b203630204d696e75746573204c69766520434f4e43555252454e54205d, 274.532, 274.532, '', 1, '663', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(393, 0, 61, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722033207c20596f7554756265204c6976652053747265616d205b203930204d696e75746573204c69766520434f4e43555252454e54205d, 411.798, 411.798, '', 1, '664', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(394, 0, 61, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722033207c20596f7554756265204c6976652053747265616d205b20313230204d696e75746573204c69766520434f4e43555252454e54205d, 549.063, 549.063, '', 1, '665', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(395, 0, 61, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722033207c20596f7554756265204c6976652053747265616d205b20313830204d696e75746573204c69766520434f4e43555252454e54205d, 823.595, 823.595, '', 1, '666', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(396, 0, 61, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722033207c20596f7554756265204c6976652053747265616d205b20323430204d696e75746573204c69766520434f4e43555252454e54205d, 1331.48, 1331.48, '', 1, '667', 'Default', 100, 50000, '', '', '', NULL, '5gsmm.com', 1691913900),
(397, 0, 61, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722033207c20596f7554756265204c6976652053747265616d205b203620486f757273204c69766520434f4e43555252454e54205d, 1029.49, 1029.49, '', 1, '668', 'Default', 100, 50000, '', '', '', NULL, '5gsmm.com', 1691913900),
(398, 0, 61, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722033207c20596f7554756265204c6976652053747265616d205b20313220486f757273204c69766520434f4e43555252454e54205d, 2058.99, 2058.99, '', 1, '669', 'Default', 100, 50000, '', '', '', NULL, '5gsmm.com', 1691913900),
(399, 0, 61, 0x596f7574756265207c204c69766553747265616d20566965776572732053657665722033207c20596f7554756265204c6976652053747265616d205b20323420486f757273204c69766520434f4e43555252454e54205d, 4117.98, 4117.98, '', 1, '670', 'Default', 100, 20000, '', '', '', NULL, '5gsmm.com', 1691913900),
(400, 0, 62, 0x596f7574756265207c204c69766553747265616d2056696577657273205365766572203420282053757065722043686561702029207c20596f7554756265204c69766553747265616d207c2048696768205175616c697479207c203135204d696e75746573204c69766520436f6e63757272656e74207c205375706572204368656170, 14.2876, 14.2876, '', 1, '1084', 'Default', 100, 3000, '', '', '', NULL, '5gsmm.com', 1691913900),
(401, 0, 62, 0x596f7574756265207c204c69766553747265616d2056696577657273205365766572203420282053757065722043686561702029207c20596f7554756265204c69766553747265616d207c2048696768205175616c697479207c203330204d696e75746573204c69766520436f6e63757272656e74207c205375706572204368656170, 28.5752, 28.5752, '', 1, '1085', 'Default', 100, 3000, '', '', '', NULL, '5gsmm.com', 1691913900),
(402, 0, 62, 0x596f7574756265207c204c69766553747265616d2056696577657273205365766572203420282053757065722043686561702029207c20596f7554756265204c69766553747265616d207c2048696768205175616c697479207c203630204d696e75746573204c69766520436f6e63757272656e74207c205375706572204368656170, 57.1503, 57.1503, '', 1, '1086', 'Default', 100, 3000, '', '', '', NULL, '5gsmm.com', 1691913900),
(403, 0, 62, 0x596f7574756265207c204c69766553747265616d2056696577657273205365766572203420282053757065722043686561702029207c20596f7554756265204c69766553747265616d207c2048696768205175616c697479207c203930204d696e75746573204c69766520436f6e63757272656e74207c205375706572204368656170, 85.7255, 85.7255, '', 1, '1087', 'Default', 100, 3000, '', '', '', NULL, '5gsmm.com', 1691913900),
(404, 0, 62, 0x596f7574756265207c204c69766553747265616d2056696577657273205365766572203420282053757065722043686561702029207c20596f7554756265204c69766553747265616d207c2048696768205175616c697479207c20313230204d696e75746573204c69766520436f6e63757272656e74207c205375706572204368656170, 114.301, 114.301, '', 1, '1088', 'Default', 100, 3000, '', '', '', NULL, '5gsmm.com', 1691913900),
(405, 0, 62, 0x596f7574756265207c204c69766553747265616d2056696577657273205365766572203420282053757065722043686561702029207c20596f7554756265204c69766553747265616d207c2048696768205175616c697479207c20313530204d696e75746573204c69766520436f6e63757272656e74207c205375706572204368656170, 142.876, 142.876, '', 1, '1089', 'Default', 100, 3000, '', '', '', NULL, '5gsmm.com', 1691913900),
(406, 0, 62, 0x596f7574756265207c204c69766553747265616d2056696577657273205365766572203420282053757065722043686561702029207c20596f7554756265204c69766553747265616d207c2048696768205175616c697479207c20313830204d696e75746573204c69766520436f6e63757272656e74207c205375706572204368656170, 171.451, 171.451, '', 1, '1090', 'Default', 100, 3000, '', '', '', NULL, '5gsmm.com', 1691913900),
(407, 0, 62, 0x596f7574756265207c204c69766553747265616d2056696577657273205365766572203420282053757065722043686561702029207c20596f7554756265204c69766553747265616d207c2048696768205175616c697479207c20333630204d696e75746573204c69766520436f6e63757272656e74207c205375706572204368656170, 342.902, 342.902, '', 1, '1091', 'Default', 100, 3000, '', '', '', NULL, '5gsmm.com', 1691913900),
(408, 0, 62, 0x596f7574756265207c204c69766553747265616d2056696577657273205365766572203420282053757065722043686561702029207c20596f7554756265204c69766553747265616d207c2048696768205175616c697479207c20313220486f757273204c69766520436f6e63757272656e74207c205375706572204368656170, 685.804, 685.804, '', 1, '1092', 'Default', 100, 3000, '', '', '', NULL, '5gsmm.com', 1691913900),
(409, 0, 62, 0x596f7574756265207c204c69766553747265616d2056696577657273205365766572203420282053757065722043686561702029207c20596f7554756265204c69766553747265616d207c2048696768205175616c697479207c20323420486f757273204c69766520436f6e63757272656e74207c205375706572204368656170, 1371.61, 1371.61, '', 1, '1093', 'Default', 100, 3000, '', '', '', NULL, '5gsmm.com', 1691913900);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_order`
--

CREATE TABLE `service_order` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(255) DEFAULT NULL,
  `seller` int(11) NOT NULL DEFAULT 0,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `service_id` int(11) NOT NULL DEFAULT 0,
  `url` text DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `pay` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 xử lý, 1 hoàn tất, 2 huỷ',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_otp`
--

CREATE TABLE `service_otp` (
  `id` int(11) NOT NULL,
  `server` text DEFAULT NULL,
  `id_api` text DEFAULT NULL,
  `name_api` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `price_api` float NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `update_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'logo', 'assets/img/cmsnt_light.png'),
(2, 'title', ''),
(3, 'thongbao', '<p>Nguyễn Ho&agrave;ng Ph&uacute;c</p>\r\n'),
(4, 'logo_light', 'assets/storage/images/logo_light_T7Q.png'),
(5, 'logo_dark', 'assets/storage/images/logo_dark_VUE.png'),
(6, 'image', 'assets/storage/images/image_8B2.png'),
(7, 'favicon', 'assets/storage/images/favicon_U47.png'),
(8, 'description', ''),
(9, 'keywords', ''),
(10, 'author', ''),
(11, 'status', '1'),
(12, 'status_bank', '1'),
(13, 'type_bank', 'TPBank'),
(14, 'stk_bank', ''),
(15, 'name_bank', 'NGUYEN TAN THANH'),
(16, 'mk_bank', ''),
(17, 'status_momo', '1'),
(18, 'token_momo', ''),
(19, 'sdt_momo', ''),
(20, 'name_momo', ''),
(21, 'timeUpdate', ''),
(27, 'token_bank', ''),
(28, 'javascript', ''),
(31, 'email_smtp', ''),
(32, 'pass_email_smtp', ''),
(34, 'bg_login', 'assets/storage/images/bg_loginSNL.png'),
(35, 'bg_register', 'assets/storage/images/bg_register27E.png'),
(36, 'time_cron_24h', '0'),
(37, 'status_demo', '0'),
(39, 'license_key', 'gjgh'),
(40, 'email', ''),
(41, 'hotline', ''),
(42, 'qr_momo', 'https://i.imgur.com/87faUQw.jpg'),
(43, 'recharge_notice', '<p>Nguyễn Ho&agrave;ng Ph&uacute;c</p>\r\n'),
(44, 'contact_page', '<p>Nguyễn Ho&agrave;ng Ph&uacute;c</p>\r\n'),
(45, 'gif_loading', 'assets/storage/images/gif_loadingZXN.png'),
(46, 'check_time_cron', '1683036594'),
(47, 'check_time_cron_bank', '1681014122'),
(48, 'min_rating', '1000'),
(49, 'orders_notice', '<p>Nguyễn Ho&agrave;ng Ph&uacute;c</p>\r\n'),
(50, 'type_showProduct', '2'),
(51, 'clientId_paypal', ''),
(52, 'status_paypal', '0'),
(53, 'status_thesieure', '1'),
(54, 'token_thesieure', ''),
(55, 'check_time_cron_thesieure', '1680700533'),
(56, 'api_napthe', 'TwqumFzvylHICpPkVotjNExSaiQORAhZBLYbDXdfGcgMsJUKnerW'),
(57, 'status_napthe', '1'),
(58, 'notice_napthe', ''),
(59, 'ck_napthe', '28'),
(60, 'chinh_sach_bao_mat', '<p>Nguyễn Ho&agrave;ng Ph&uacute;c</p>\r\n'),
(61, 'dieu_khoan_su_dung', '<p>Nguyễn Ho&agrave;ng Ph&uacute;c</p>\r\n'),
(62, 'status_update', '1'),
(63, 'status_captcha', '0'),
(64, 'session_login', '1592000'),
(65, 'gif_giftbox', 'assets/storage/images/gif_giftboxWUL.png'),
(66, 'display_sold', '1'),
(67, 'status_zalopay', '1'),
(68, 'token_zalopay', ''),
(69, 'check_time_cron_zalopay', '1680700533'),
(70, 'type_password', 'md5'),
(71, 'theme_color', '#12214E'),
(72, 'min_recharge', ''),
(73, 'time_check_live', ''),
(74, 'currency', 'VND'),
(75, 'usd_rate', '23000'),
(76, 'clientSecret_paypal', ''),
(77, 'rate_paypal', '23000'),
(78, 'paypal_notice', '<p>Thay đổi ghi ch&uacute; nạp thẻ&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp paypal</strong></p>'),
(79, 'gif_loader', 'assets/storage/images/gif_loaderB46.png'),
(80, 'invoice_expiration', ''),
(81, 'mouse_click_effect', '0'),
(82, 'notice_spin', '<p>Nguyễn Ho&agrave;ng Ph&uacute;c</p>\r\n'),
(83, 'status_spin', '0'),
(84, 'condition_spin', ''),
(85, 'status_perfectmoney', '0'),
(86, 'perfectmoney_notice', '<p>Thay đổi ghi ch&uacute; nạp perfect money <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp perfect money</strong></p>\r\n'),
(87, 'PAYEE_ACCOUNT_PM', ''),
(88, 'PAYMENT_UNITS_PM', 'USD'),
(89, 'perfectmoney_pass_pm', ''),
(90, 'rate_pm', '23000'),
(91, 'status_crypto', '0'),
(92, 'notice_crypto', ''),
(93, 'status_giao_dich_gan_day', '1'),
(94, 'check_time_cron_card', '0'),
(95, 'check_time_cron_checklivefb', '1649075526'),
(96, 'partner_id_card', ''),
(97, 'partner_key_card', ''),
(98, 'javascript_header', ''),
(99, 'sign_view_product', '0'),
(100, 'display_box_shop', '1'),
(101, 'type_notice_order', 'Email'),
(102, 'font_family', 'font-family: \'Roboto\', sans-serif;'),
(103, 'time_delete_orders', '60'),
(104, 'check_time_cron_cron', '1715167087'),
(105, 'display_show_product', '1'),
(106, 'display_rating', '1'),
(107, 'stt_giaodichao', '1'),
(108, 'theme_color2', '#013B7B'),
(109, 'stt_topnap', '0'),
(110, 'sv1_autobank', '1'),
(111, 'sv2_autobank', '1'),
(112, 'prefix_autobank', ''),
(113, 'status_buff_like_sub', '0'),
(114, 'token_autofb', ''),
(115, 'virtual_sold_quantity', '10'),
(116, 'domain_autofb', 'https://cmslike.com/'),
(117, 'status_store_fanpage', '0'),
(118, 'notice_store_fanpage', ''),
(119, 'status_security', '0'),
(120, 'status_active_member', '0'),
(121, 'type_notification', 'off'),
(122, 'token_telegram', ''),
(123, 'chat_id_telegram', ''),
(124, 'buy_notification', ''),
(125, 'naptien_notification', ''),
(126, 'register_notification', ''),
(127, 'max_time_buy', '1'),
(128, 'time_delete_clone_die', '0'),
(129, 'check_time_cron1', '1683036603'),
(130, 'bg_card', 'resources/images/bg-buy.png'),
(131, 'display_blog', '1'),
(132, 'display_question', '1'),
(133, 'display_contact', '0'),
(134, 'display_api', '0'),
(135, 'display_tool', '0'),
(136, 'status_connect_api', '1'),
(137, 'check_time_cron2', '0'),
(138, 'ck_connect_api', '10'),
(139, 'status_ref', '1'),
(140, 'ck_ref', '5'),
(141, 'notice_ref', '<p>Nguyễn Ho&agrave;ng Ph&uacute;c</p>\r\n'),
(142, 'listbank_ref', 'mbbank\r\nmomo\r\ntpank'),
(143, 'minrut_ref', '100000'),
(144, 'display_preview', '1'),
(145, 'display_country', '1'),
(146, 'apikey_nowpayments', ''),
(147, 'status_nowpayments', '0'),
(148, 'status_is_change_password', '0'),
(149, 'auto_rename_api', '0'),
(150, 'ipn_nowpayments', ''),
(151, 'min_crypto', '10'),
(152, 'rate_crypto', '23000'),
(153, 'check_time_cron_crypto', '0'),
(154, 'check_time_cron3', '1680700533'),
(155, 'menu_title', ''),
(156, 'default_api_product_status', '1'),
(157, 'min_gd_ao', '1'),
(158, 'max_gd_ao', '30'),
(159, 'speed_buy_gd_ao', '10'),
(160, 'amount_nap_ao', '10000\r\n20000\r\n40000\r\n50000\r\n60000\r\n70000\r\n100000\r\n200000\r\n300000\r\n500000\r\n400000\r\n40000\r\n15000\r\n25000\r\n35000\r\n45000\r\n55000\r\n65000\r\n45000\r\n1000000\r\n1500000\r\n2000000'),
(161, 'speed_nap_gd_ao', '10'),
(162, 'position_gd_gan_day', '2'),
(163, 'is_account_buy_fake', '0'),
(164, 'hide_product_empty', '0'),
(165, 'email_nowpayments', ''),
(166, 'password_nowpayments', ''),
(167, 'check_time_cron4', '0'),
(168, 'home_page', 'home'),
(169, 'notice_popup', '<p>Nguyễn Ho&agrave;ng Ph&uacute;c</p>\r\n'),
(170, 'check_time_cron_dongvanfb', '0'),
(171, 'timezone', 'Asia/Ho_Chi_Minh'),
(172, 'status_addfun_seller', '1'),
(173, 'status_store_document', '1'),
(174, 'noti_import_telegram', ''),
(175, 'group_id_import_telegram', ''),
(176, 'max_register_ip', '5'),
(177, 'check_time_cron6', '0'),
(178, 'pin_cron', ''),
(179, 'status_toyyibpay', '0'),
(180, 'notice_toyyibpay', ''),
(181, 'userSecretKey_toyyibpay', ''),
(182, 'min_toyyibpay', '1'),
(183, 'categoryCode_toyyibpay', ''),
(184, 'check_time_cron_toyyibpay', '0'),
(185, 'rate_toyyibpay', '5258'),
(186, 'billChargeToCustomer', ''),
(187, 'check_time_cron_sending_email', '1690182515'),
(188, 'check_time_cron7', '0'),
(189, 'host_smtp', 'smtp.gmail.com'),
(190, 'encryption_smtp', 'tls'),
(191, 'port_smtp', '587'),
(192, 'token_5gsmm', '3ea42acf191ab0d2ba07dacc1f67146c'),
(193, 'ck_rate_service', '0'),
(194, 'status_updatec_rate_service', '0'),
(195, 'rate_vnd_5gsmm', '24867'),
(196, 'check_time_cron_UpdateRate5gsmm', '1691913897'),
(197, 'check_time_cron_UpdateHistory5gsmm', '0'),
(198, 'check_time_cron8', '0'),
(199, 'taohoadonnaptien_notification', ''),
(200, 'copyright_footer', 'Powered By <a target=\"_blank\" href=\"https://dichvulight.vn\">dichvulight.vn</a>'),
(201, 'check_time_cron9', '0'),
(202, 'status_api_buyproduct', '1'),
(203, 'marquee_notication_shopacc', ''),
(204, 'status_thuesim', '0'),
(205, 'server_thuesim', 'API_1'),
(206, 'token_thuesim', 'ko'),
(207, 'ck_rate_thuesim', '0'),
(208, 'check_time_cron_service_otp_cron', '0'),
(209, 'notice_thuesim', ''),
(210, 'check_time_cron_service_otp_history', '1672203955'),
(211, 'check_time_cron10', '0'),
(212, 'text_create_website', '<ul>\r\n    <li>Bước 1: Nhập tên miền muốn đăng ký đại lý và nhấn Thêm Ngay.</li>\r\n    <li>Bước 2: Trỏ NameServer (NS) tên miền về <b\r\n            style=\"color: red;\">gina.ns.cloudflare.com</b> và <b\r\n            style=\"color: red;\">hak.ns.cloudflare.com</b>.</li>\r\n    <li>Bước 3: Chờ đợi QTV setup website (thanh trạng thái thay đổi thành <b\r\n            style=\"color: green;\">Hoạt Động</b>).</li>\r\n    <li>Bước 4: Truy cập Website bạn vừa tạo và nhập thông tin token và đăng ký\r\n        1 tài khoản quản trị của\r\n        bạn (tài khoản đầu tiên sẽ là tài khoản admin, lưu ý không để lộ tên\r\n        miền ra khi chưa setup xong website).</li>\r\n</ul>\r\n<i>Liên hệ Zalo 0947838128 để được hỗ trợ.</i>'),
(213, 'status_create_website', '1'),
(214, 'stt_create_website', '1'),
(215, 'create_website_notification', ''),
(216, 'domain_thuesim', 'fgh'),
(217, 'title_thuesim', 'Dịch vụ Thuê OTP, Thuê SIM tự động uy tín'),
(218, 'description_thuesim', 'Dịch vụ Thuê OTP, Thuê SIM tự động uy tín'),
(219, 'keyword_thuesim', 'thue sim, thue otp, thue sms'),
(220, 'check_time_cron11', '0'),
(221, 'check_time_cron12', '0'),
(222, 'crypto_address', ''),
(223, 'crypto_token', ''),
(224, 'crypto_min', '10'),
(225, 'crypto_max', '1000000'),
(226, 'check_time_cron13', '0'),
(227, 'flutterwave_api_key', ''),
(228, 'flutterwave_api_secret', ''),
(229, 'prefix_invoice', 'NT'),
(230, 'logo_login', 'assets/storage/images/logo_light_NKS.png'),
(231, 'domain_smmpanel', 'https://alosmm.com/'),
(232, 'show_category', 'head'),
(233, 'flutterwave_status', '0'),
(234, 'flutterwave_publicKey', ''),
(235, 'flutterwave_secretKey', ''),
(236, 'flutterwave_rate', '24000'),
(237, 'flutterwave_notice', ''),
(238, 'reCAPTCHA_status', '0'),
(239, 'reCAPTCHA_secret_key', ''),
(240, 'reCAPTCHA_site_key', ''),
(241, 'check_time_cron14', '0'),
(242, 'html_top_product', ''),
(243, 'html_banned', '<p>Vui lòng liên hệ Admin để được hỗ trợ chi tiết</p>'),
(244, 'html_block_ip', '<p>Vui lòng liên hệ Admin để được hỗ trợ chi tiết</p>'),
(245, 'squadco_status', '0'),
(246, 'squadco_Secret_Key', ''),
(247, 'squadco_Public_Key', ''),
(248, 'squadco_rate', '51'),
(249, 'squadco_currency_code', 'NGN'),
(250, 'squadco_notice', ''),
(251, 'check_time_cron15', '0'),
(252, 'buy_fanpage_notification', ''),
(253, 'is_update_phone', '0'),
(254, 'status_ban_xu_ttc', '0'),
(255, 'status_ban_xu_tds', '0'),
(256, 'min_ban_xu_ttc', '1000000'),
(257, 'max_ban_xu_ttc', '100000000'),
(258, 'rate_ban_xu_ttc', '15'),
(259, 'notice_ban_xu_ttc', ''),
(260, 'min_ban_xu_tds', '1000000'),
(261, 'max_ban_xu_tds', '100000000'),
(262, 'rate_ban_xu_tds', '15'),
(263, 'notice_ban_xu_tds', ''),
(264, 'check_time_cron_mua_xu_cron', '0'),
(265, 'check_time_cron_mua_xu_ttc', '0'),
(266, 'check_time_cron_mua_xu_tds', '0'),
(267, 'check_time_cron_mua_xu_cron_24h', '0'),
(268, 'check_time_cron_mua_xu_cron1', '0'),
(269, 'check_time_cron16', '0'),
(270, 'status_otp_login_admin', '0'),
(271, 'check_time_cron17', '0'),
(272, 'check_time_shopclone7', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `spin_history`
--

CREATE TABLE `spin_history` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `spin_history`
--

INSERT INTO `spin_history` (`id`, `trans_id`, `user_id`, `name`, `create_date`, `create_time`) VALUES
(1, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 2.000?)', '2022-03-11 03:22:55', 1646943775),
(2, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 22.000)', '2022-03-11 03:23:26', 1646943806),
(3, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 30.000?)', '2022-03-11 03:23:38', 1646943818),
(4, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 100?)', '2022-03-11 03:23:58', 1646943838),
(5, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 100?)', '2022-03-11 06:45:52', 1646955952),
(6, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 100?)', '2022-03-11 11:12:10', 1646971930),
(7, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 11.111?)', '2022-03-11 11:13:14', 1646971994),
(8, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 30.000?)', '2022-03-11 11:13:26', 1646972006),
(9, NULL, 55, 'Chúc mừng bạn đã quay được phần thường (+ 6.666?)', '2022-03-12 08:02:05', 1647046925),
(10, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 100?)', '2022-03-12 18:47:21', 1647085641),
(11, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 22.000)', '2022-03-20 21:35:13', 1647786913),
(12, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 30.000?)', '2022-03-21 12:19:28', 1647839968),
(13, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 30.000?)', '2022-03-21 12:19:39', 1647839979),
(14, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 99.999?)', '2022-03-25 00:08:29', 1648141709),
(15, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 6.666?)', '2022-03-25 00:08:40', 1648141720),
(16, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 2.000?)', '2022-03-27 14:53:19', 1648367599),
(17, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 10.000?)', '2022-04-01 22:33:57', 1648827237),
(18, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 30.000?)', '2022-04-04 16:50:48', 1649065848),
(19, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 50.000?)', '2022-04-04 16:51:47', 1649065907),
(20, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 77.777?)', '2022-04-04 16:51:56', 1649065916),
(21, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 22.000)', '2022-04-07 06:47:59', 1649288879),
(22, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 100?)', '2022-04-15 22:21:52', 1650036112),
(23, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 20.000?)', '2022-05-07 02:08:26', 1651864106),
(24, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 30.000?)', '2022-05-07 02:08:34', 1651864114),
(25, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 30.000?)', '2022-05-12 15:38:19', 1652344699),
(26, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 100?)', '2022-06-13 09:42:05', 1655088125),
(27, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 22.000)', '2022-06-14 01:04:58', 1655143498),
(28, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 6.666?)', '2022-06-19 14:04:53', 1655622293),
(29, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 100?)', '2022-06-19 14:05:01', 1655622301),
(30, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 2.000?)', '2022-06-19 14:05:19', 1655622319),
(31, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 100?)', '2022-08-10 22:22:14', 1660144934),
(32, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 100?)', '2022-12-22 18:55:30', 1671710130),
(33, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 6.666?)', '2023-03-21 13:34:26', 1679380466),
(34, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 100?)', '2023-03-21 13:34:38', 1679380478),
(35, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 22.000)', '2023-06-11 00:36:04', 1686418564),
(36, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 10.000?)', '2023-06-19 20:38:28', 1687181908),
(37, NULL, 53, 'Chúc mừng bạn đã quay được phần thường (+ 77.777?)', '2023-06-19 20:38:53', 1687181933);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `spin_option`
--

CREATE TABLE `spin_option` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `display` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_fanpage`
--

CREATE TABLE `store_fanpage` (
  `id` int(11) NOT NULL,
  `seller` int(11) NOT NULL DEFAULT 0,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `new_name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `sl_like` int(11) NOT NULL DEFAULT 0,
  `nam_tao_fanpage` varchar(255) DEFAULT NULL,
  `fb_admin` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `toyyibpay_transactions`
--

CREATE TABLE `toyyibpay_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(50) DEFAULT NULL,
  `billName` text DEFAULT NULL,
  `amount` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `BillCode` varchar(50) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translate`
--

CREATE TABLE `translate` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `name` longtext DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translate`
--

INSERT INTO `translate` (`id`, `lang_id`, `name`, `value`) VALUES
(20, 8, 'Đăng Nhập', 'Đăng Nhập'),
(24, 8, 'Đăng Ký', 'Đăng Ký'),
(28, 8, 'Tên đăng nhập', 'Tên đăng nhập'),
(32, 8, 'Mật khẩu', 'Mật khẩu'),
(39, 8, 'Vui lòng nhập mật khẩu', 'Vui lòng nhập mật khẩu'),
(43, 8, 'Bạn không có tài khoản?', 'Bạn không có tài khoản?'),
(47, 8, 'Đăng ký', 'Đăng ký'),
(51, 8, 'Quên mật khẩu', 'Quên mật khẩu'),
(55, 8, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Đăng nhập vào tài khoản của bạn để tiếp tục'),
(59, 8, 'Đăng Nhập', 'Đăng Nhập'),
(63, 8, 'hoặc', 'hoặc'),
(67, 8, 'Đăng Nhập', 'Đăng Nhập'),
(71, 8, 'Đang xử lý...', 'Đang xử lý...'),
(75, 8, 'Đăng Ký', 'Đăng Ký'),
(79, 8, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(83, 8, 'Địa chỉ Email', 'Địa chỉ Email'),
(87, 8, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(91, 8, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(95, 8, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(99, 8, 'Thông tin đăng nhập không chính xác', 'Thông tin đăng nhập không chính xác'),
(104, 8, 'Username không được để trống', 'Username không được để trống'),
(108, 8, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(112, 8, 'Hệ thống đang bảo trì', 'Hệ thống đang bảo trì'),
(116, 8, 'Tài khoản của bạn đã bị khoá truy cập', 'Tài khoản của bạn đã bị khoá truy cập'),
(120, 8, 'Đăng nhập thành công vào hệ thống', 'Đăng nhập thành công vào hệ thống'),
(124, 8, 'Đăng nhập thành công', 'Đăng nhập thành công'),
(128, 8, 'Email không được để trống', 'Email không được để trống'),
(132, 8, 'Nhập lại mật khẩu không đúng', 'Nhập lại mật khẩu không đúng'),
(136, 8, 'Định dạng Email không đúng', 'Định dạng Email không đúng'),
(140, 8, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Tên đăng nhập đã tồn tại trong hệ thống'),
(144, 8, 'Địa chỉ email đã tồn tại trong hệ thống', 'Địa chỉ email đã tồn tại trong hệ thống'),
(148, 8, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép'),
(152, 8, 'Đăng ký thành công', 'Đăng ký thành công'),
(156, 8, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Tạo tài khoản thất bại, vui lòng thử lại'),
(160, 8, 'Thực hiện tạo tài khoản', 'Thực hiện tạo tài khoản'),
(452, 8, 'Trang cá nhân', 'Trang cá nhân'),
(453, 8, 'Thay đổi mật khẩu', 'Thay đổi mật khẩu'),
(454, 8, 'Đăng xuất', 'Đăng xuất'),
(455, 8, 'Trang quản trị', 'Trang quản trị'),
(456, 8, 'Bảo mật', 'Bảo mật'),
(457, 8, 'Cộng tác viên', 'Cộng tác viên'),
(499, 8, 'Bảng Điều Khiển', 'Bảng Điều Khiển'),
(501, 8, 'Nạp Tiền', 'Nạp Tiền'),
(505, 8, 'Ngân Hàng', 'Ngân Hàng'),
(507, 8, 'Ví Điện Tử', 'Ví Điện Tử'),
(509, 8, 'Cửa Hàng', 'Cửa Hàng'),
(511, 8, 'Lịch Sử Mua Hàng', 'Lịch Sử Mua Hàng'),
(513, 8, 'Liên Hệ', 'Liên Hệ'),
(515, 8, 'Thông tin liên hệ', 'Thông tin liên hệ'),
(517, 8, 'Mã giao dịch', 'Mã giao dịch'),
(519, 8, 'Sản phẩm', 'Sản phẩm'),
(521, 8, 'Số lượng', 'Số lượng'),
(523, 8, 'Thanh toán', 'Thanh toán'),
(525, 8, 'Thời gian', 'Thời gian'),
(527, 8, 'Thao tác', 'Thao tác'),
(529, 8, 'Xem Thêm', 'Xem Thêm'),
(531, 8, 'Thông Tin Cá Nhân', 'Thông Tin Cá Nhân'),
(533, 8, 'Họ và Tên', 'Họ và Tên'),
(535, 8, 'Nhập họ và tên', 'Nhập họ và tên'),
(537, 8, 'Số điện thoại', 'Số điện thoại'),
(539, 8, 'Nhập số điện thoại', 'Nhập số điện thoại'),
(541, 8, 'Nhập địa chỉ Email', 'Nhập địa chỉ Email'),
(543, 8, 'Thời gian đăng ký', 'Thời gian đăng ký'),
(545, 8, 'Đăng nhập gần đây', 'Đăng nhập gần đây'),
(547, 8, 'Huỷ', 'Huỷ'),
(549, 8, 'Lưu Thay Đổi', 'Lưu Thay Đổi'),
(551, 8, 'Tổng Tiền Nạp', 'Tổng Tiền Nạp'),
(553, 8, 'Tổng Tiền Sử Dụng', 'Tổng Tiền Sử Dụng'),
(555, 8, 'Số Dư Hiện Tại', 'Số Dư Hiện Tại'),
(557, 8, 'Số Dư Sử Dụng', 'Số Dư Sử Dụng'),
(559, 8, 'Vui lòng đăng nhập', 'Vui lòng đăng nhập'),
(561, 8, 'Vui lòng nhập địa chỉ Email', 'Vui lòng nhập địa chỉ Email'),
(563, 8, 'Định dạng Email không hợp lệ', 'Định dạng Email không hợp lệ'),
(565, 8, 'Thay đổi thông tin hồ sơ', 'Thay đổi thông tin hồ sơ'),
(567, 8, 'Lưu thành công', 'Lưu thành công'),
(569, 8, 'Lưu thất bại', 'Lưu thất bại'),
(571, 8, 'Vui lòng nhập mật khẩu hiện tại', 'Vui lòng nhập mật khẩu hiện tại'),
(573, 8, 'Vui lòng nhập mật khẩu mới', 'Vui lòng nhập mật khẩu mới'),
(575, 8, 'Mật khẩu hiện tại không chính xác', 'Mật khẩu hiện tại không chính xác'),
(577, 8, 'Đổi mật khẩu thành công', 'Đổi mật khẩu thành công'),
(579, 8, 'Đổi mật khẩu thất bại', 'Đổi mật khẩu thất bại'),
(581, 8, 'Đóng', 'Đóng'),
(583, 8, 'Mật khẩu hiện tại', 'Mật khẩu hiện tại'),
(585, 8, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới'),
(587, 8, 'Mật khẩu mới', 'Mật khẩu mới'),
(589, 8, 'Vui lòng nhập lại mật khẩu mới', 'Vui lòng nhập lại mật khẩu mới'),
(591, 8, 'Nhật ký hoạt động', 'Nhật ký hoạt động'),
(593, 8, 'Biến động số dư', 'Biến động số dư'),
(595, 8, 'Hành động', 'Hành động'),
(597, 8, 'Địa chỉ IP', 'Địa chỉ IP'),
(599, 8, 'Thiết bị', 'Thiết bị'),
(601, 8, 'Số tiền trước', 'Số tiền trước'),
(603, 8, 'Số tiền thay đổi', 'Số tiền thay đổi'),
(605, 8, 'Số tiền hiện tại', 'Số tiền hiện tại'),
(607, 8, 'Nội dung', 'Nội dung'),
(609, 8, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán'),
(611, 8, 'Nhập số tiền cần nạp', 'Nhập số tiền cần nạp'),
(613, 8, 'Tạo hoá đơn', 'Tạo hoá đơn'),
(615, 8, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Nhập số tiền bạn cần nạp vào hệ thống'),
(617, 8, 'Hoá Đơn', 'Hoá Đơn'),
(619, 8, 'Trạng thái', 'Trạng thái'),
(621, 8, 'Phương thức thanh toán', 'Phương thức thanh toán'),
(623, 8, 'Huỷ bỏ', 'Huỷ bỏ'),
(625, 8, 'Đang chờ thanh toán', 'Đang chờ thanh toán'),
(627, 8, 'Đã thanh toán', 'Đã thanh toán'),
(629, 8, 'Vui lòng chọn phương thức thanh toán', 'Vui lòng chọn phương thức thanh toán'),
(631, 8, 'Vui lòng nhập số tiền cần nạp', 'Vui lòng nhập số tiền cần nạp'),
(633, 8, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Phương thức thanh toán không tồn tại trong hệ thống'),
(635, 8, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'Bạn đang thao tác quá nhanh, vui lòng chờ'),
(637, 8, 'Số tiền nạp tối thiểu là', 'Số tiền nạp tối thiểu là'),
(639, 8, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày'),
(641, 8, 'Tạo hoá đơn nạp tiền', 'Tạo hoá đơn nạp tiền'),
(643, 8, 'Tạo hoá đơn thành công', 'Tạo hoá đơn thành công'),
(645, 8, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Tạo hoá đơn thất bại, vui lòng thử lại'),
(647, 8, 'Chi tiết hoá đơn', 'Chi tiết hoá đơn'),
(649, 8, 'Tải Về', 'Tải Về'),
(651, 8, 'Xoá', 'Xoá'),
(653, 8, 'Xác nhận xoá đơn hàng', 'Xác nhận xoá đơn hàng'),
(655, 8, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Bạn có chắc chắn muốn xóa đơn hàng này không ?'),
(657, 8, 'Đồng Ý', 'Đồng Ý'),
(659, 8, 'Đơn hàng không tồn tại trong hệ thống', 'Đơn hàng không tồn tại trong hệ thống'),
(661, 8, 'Xóa đơn hàng thành công', 'Xóa đơn hàng thành công'),
(663, 8, 'Dữ liệu không hợp lệ', 'Dữ liệu không hợp lệ'),
(665, 8, 'Xoá đơn hàng', 'Xoá đơn hàng'),
(667, 8, 'Xóa sản phẩm thất bại', 'Xóa sản phẩm thất bại'),
(669, 8, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng'),
(671, 8, 'Sao Chép', 'Sao Chép'),
(673, 8, 'Quay Lại', 'Quay Lại'),
(675, 8, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm'),
(677, 8, 'Đánh giá ngay', 'Đánh giá ngay'),
(679, 8, 'Bạn có thể đánh giá đơn hàng này', 'Bạn có thể đánh giá đơn hàng này'),
(681, 8, 'Đơn hàng lớn hơn', 'Đơn hàng lớn hơn'),
(683, 8, 'mới có thể đánh giá', 'mới có thể đánh giá'),
(685, 8, 'Gửi Đánh Giá', 'Gửi Đánh Giá'),
(687, 8, 'Xác Nhận', 'Xác Nhận'),
(689, 8, 'Nhập nội dung cần đánh giá', 'Nhập nội dung cần đánh giá'),
(691, 8, 'Vui lòng nhập review', 'Vui lòng nhập review'),
(693, 8, 'Đã sao chép vào bộ nhớ tạm', 'Đã sao chép vào bộ nhớ tạm'),
(695, 8, 'Bạn đã đánh giá đơn hàng này rồi', 'Bạn đã đánh giá đơn hàng này rồi'),
(697, 8, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'Bạn không đủ điều kiện đánh giá đơn hàng này'),
(699, 8, 'Gửi đánh giá thành công', 'Gửi đánh giá thành công'),
(701, 8, 'Gửi đánh giá thất bại', 'Gửi đánh giá thất bại'),
(703, 8, 'Sản phẩm mới', 'Sản phẩm mới'),
(705, 8, 'Nạp tiền qua PayPal', 'Nạp tiền qua PayPal'),
(707, 8, 'Nhập số tiền cần nạp định dạng VNĐ', 'Nhập số tiền cần nạp định dạng VNĐ'),
(709, 8, 'Nhập số tiền cần nạp bằng USD', 'Nhập số tiền cần nạp bằng USD'),
(711, 8, 'Tạo hoá đơn nạp tiền qua PayPal', 'Tạo hoá đơn nạp tiền qua PayPal'),
(713, 8, 'Số tiền cần nạp', 'Số tiền cần nạp'),
(715, 8, 'Giá', 'Giá'),
(717, 8, 'MUA NGAY', 'MUA NGAY'),
(719, 8, 'Đã bán', 'Đã bán'),
(721, 8, 'Sản phẩm không tồn tại', 'Sản phẩm không tồn tại'),
(723, 8, 'Quốc gia', 'Quốc gia'),
(725, 8, 'Clone MOMO + Live Ads', 'Clone MOMO + Live Ads'),
(727, 8, 'Tất Cả Sản Phẩm', 'Tất Cả Sản Phẩm'),
(729, 8, 'Tên sản phẩm', 'Tên sản phẩm'),
(731, 8, 'Hiện có', 'Hiện có'),
(733, 8, 'Thanh toán đơn hàng', 'Thanh toán đơn hàng'),
(735, 8, 'Nhập số lượng cần mua', 'Nhập số lượng cần mua'),
(737, 8, 'Tổng tiền cần thanh toán', 'Tổng tiền cần thanh toán'),
(739, 8, 'Bạn có mã giảm giá?', 'Bạn có mã giảm giá?'),
(741, 8, 'Nhập mã giảm giá của bạn', 'Nhập mã giảm giá của bạn'),
(743, 8, 'Nhập mã giảm giá', 'Nhập mã giảm giá'),
(746, 8, 'Huỷ mã giảm giá', 'Huỷ mã giảm giá'),
(748, 8, 'Số lượng cần mua', 'Số lượng cần mua'),
(750, 8, 'Mã giảm giá', 'Mã giảm giá'),
(752, 8, 'Đánh giá', 'Đánh giá'),
(754, 8, 'Tải Về File Backup VIA', 'Tải Về File Backup VIA'),
(756, 8, 'Nhập UID VIA cần tải về file backup', 'Nhập UID VIA cần tải về file backup'),
(758, 8, 'Vui lòng nhập UID cần tải', 'Vui lòng nhập UID cần tải'),
(760, 8, 'FAQ', 'FAQ'),
(762, 8, 'Xác nhận tải về đơn hàng', 'Xác nhận tải về đơn hàng'),
(764, 8, 'Bạn có chắc chắn muốn tải về hàng này không', 'Bạn có chắc chắn muốn tải về hàng này không'),
(766, 8, 'Tải về đơn hàng', 'Tải về đơn hàng'),
(768, 8, 'Tải về đơn hàng thành công', 'Tải về đơn hàng thành công'),
(770, 8, 'Tải về đơn hàng thất bại', 'Tải về đơn hàng thất bại'),
(772, 8, 'Tài Liệu API', 'Tài Liệu API'),
(774, 8, 'Số Dư', 'Số Dư'),
(776, 8, 'Sản phẩm không tồn tại trong hệ thống', 'Sản phẩm không tồn tại trong hệ thống'),
(778, 8, 'Vui lòng nhập số lượng cần mua', 'Vui lòng nhập số lượng cần mua'),
(780, 8, 'Số lượng trong hệ thống không đủ', 'Số lượng trong hệ thống không đủ'),
(782, 8, 'Số dư không đủ, vui lòng nạp thêm', 'Số dư không đủ, vui lòng nạp thêm'),
(784, 8, 'Bạn đã bị khoá tài khoản vì gian lận', 'Bạn đã bị khoá tài khoản vì gian lận'),
(786, 8, 'Thanh toán đơn hàng thành công', 'Thanh toán đơn hàng thành công'),
(788, 8, 'Không thể thanh toán, vui lòng thử lại', 'Không thể thanh toán, vui lòng thử lại'),
(790, 8, 'Đang tải xuống đơn hàng...', 'Đang tải xuống đơn hàng...'),
(792, 8, 'Xóa sản phẩm thành công', 'Xóa sản phẩm thành công'),
(794, 8, 'Tài khoản', 'Tài khoản'),
(796, 8, 'Tài khoản:', 'Tài khoản:'),
(798, 8, 'Số lượng mua:', 'Số lượng mua:'),
(800, 8, 'Thông báo', 'Thông báo'),
(802, 8, 'Chi tiết thông báo', 'Chi tiết thông báo'),
(804, 8, 'Nạp Thẻ', 'Nạp Thẻ'),
(806, 8, 'Lưu Ý', 'Lưu Ý'),
(808, 8, 'Lý do', 'Lý do'),
(810, 8, 'Thực nhận', 'Thực nhận'),
(812, 8, 'Nhà mạng', 'Nhà mạng'),
(1011, 8, 'Chính sách bảo mật', 'Chính sách bảo mật'),
(1013, 8, 'Điều khoản sử dụng', 'Điều khoản sử dụng'),
(1015, 8, 'Captcha không chính xác', 'Captcha không chính xác'),
(1017, 8, 'Nhập nội dung bên trái', 'Nhập nội dung bên trái'),
(1019, 8, 'Vui lòng nhập mã captcha để xác minh', 'Vui lòng nhập mã captcha để xác minh'),
(1021, 8, 'Bật/Tắt Google 2FA', 'Bật/Tắt Google 2FA'),
(1023, 8, 'Bật', 'Bật'),
(1025, 8, 'Tắt', 'Tắt'),
(1027, 8, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này'),
(1029, 8, 'Vui lòng chọn trạng thái 2FA', 'Vui lòng chọn trạng thái 2FA'),
(1031, 8, 'Nhập mã xác minh để lưu thay đổi', 'Nhập mã xác minh để lưu thay đổi'),
(1033, 8, 'Mã Xác Minh', 'Mã Xác Minh'),
(1035, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator'),
(1037, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;'),
(1040, 8, 'Xác thực hai yếu tố', 'Xác thực hai yếu tố'),
(1042, 8, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1044, 8, 'Vui lòng nhập mã xác minh 2FA', 'Vui lòng nhập mã xác minh 2FA'),
(1046, 8, 'Mã xác minh không chính xác', 'Mã xác minh không chính xác'),
(1048, 8, 'Xác minh 2FA', 'Xác minh 2FA'),
(1050, 8, 'Xác minh Google Authenticator', 'Xác minh Google Authenticator'),
(1052, 8, 'Xác Minh OTP', 'Xác Minh OTP'),
(1054, 8, 'Nhập mã xác minh', 'Nhập mã xác minh'),
(1056, 8, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập'),
(1058, 8, 'Vui lòng nhập mã xác minh', 'Vui lòng nhập mã xác minh'),
(1060, 8, 'Đang bật bảo mật', 'Đang bật bảo mật'),
(1062, 8, 'Đang tắt bảo mật', 'Đang tắt bảo mật'),
(1064, 8, 'Số sao đánh giá không hợp lệ', 'Số sao đánh giá không hợp lệ'),
(1066, 8, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.'),
(1068, 8, 'Số tiền thực nhận', 'Số tiền thực nhận'),
(1070, 8, 'Bảo Mật Tài Khoản', 'Bảo Mật Tài Khoản'),
(1072, 8, 'Thông tin tài nguyên', 'Thông tin tài nguyên'),
(1074, 8, 'Mở hộp quà', 'Mở hộp quà'),
(1076, 8, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau'),
(1078, 8, 'Nhận Quà Thất Bại', 'Nhận Quà Thất Bại'),
(1080, 8, 'Bạn đã mở hộp quà này rồi', 'Bạn đã mở hộp quà này rồi'),
(1084, 8, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Chúc mừng bạn đã nhận được hộp quà trị giá'),
(1086, 8, 'Quay về Trang Chủ', 'Quay về Trang Chủ'),
(1089, 8, 'Nhận Quà Thành Công', 'Nhận Quà Thành Công'),
(1091, 16, 'Đăng Nhập', 'Đăng Nhập'),
(1092, 16, 'Đăng Ký', 'Đăng Ký'),
(1093, 16, 'Tên đăng nhập', 'Tên đăng nhập'),
(1094, 16, 'Mật khẩu', 'Mật khẩu'),
(1095, 16, 'Vui lòng nhập mật khẩu', 'Vui lòng nhập mật khẩu'),
(1096, 16, 'Bạn không có tài khoản?', 'Bạn không có tài khoản?'),
(1097, 16, 'Đăng ký', 'Đăng ký'),
(1098, 16, 'Quên mật khẩu', 'Quên mật khẩu'),
(1099, 16, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Đăng nhập vào tài khoản của bạn để tiếp tục'),
(1100, 16, 'Đăng Nhập', 'Đăng Nhập'),
(1101, 16, 'hoặc', 'hoặc'),
(1102, 16, 'Đăng Nhập', 'Đăng Nhập'),
(1103, 16, 'Đang xử lý...', 'Đang xử lý...'),
(1104, 16, 'Đăng Ký', 'Đăng Ký'),
(1105, 16, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(1106, 16, 'Địa chỉ Email', 'Địa chỉ Email'),
(1107, 16, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(1108, 16, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(1109, 16, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(1110, 16, 'Thông tin đăng nhập không chính xác', 'Thông tin đăng nhập không chính xác'),
(1111, 16, 'Username không được để trống', 'Username không được để trống'),
(1112, 16, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(1113, 16, 'Hệ thống đang bảo trì', 'Hệ thống đang bảo trì'),
(1114, 16, 'Tài khoản của bạn đã bị khoá truy cập', 'Tài khoản của bạn đã bị khoá truy cập'),
(1115, 16, 'Đăng nhập thành công vào hệ thống', 'Đăng nhập thành công vào hệ thống'),
(1116, 16, 'Đăng nhập thành công', 'Đăng nhập thành công'),
(1117, 16, 'Email không được để trống', 'Email không được để trống'),
(1118, 16, 'Nhập lại mật khẩu không đúng', 'Nhập lại mật khẩu không đúng'),
(1119, 16, 'Định dạng Email không đúng', 'Định dạng Email không đúng'),
(1120, 16, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Tên đăng nhập đã tồn tại trong hệ thống'),
(1121, 16, 'Địa chỉ email đã tồn tại trong hệ thống', 'Địa chỉ email đã tồn tại trong hệ thống'),
(1122, 16, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép'),
(1123, 16, 'Đăng ký thành công', 'Đăng ký thành công'),
(1124, 16, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Tạo tài khoản thất bại, vui lòng thử lại'),
(1125, 16, 'Thực hiện tạo tài khoản', 'Thực hiện tạo tài khoản'),
(1126, 16, 'Trang cá nhân', 'Trang cá nhân'),
(1127, 16, 'Thay đổi mật khẩu', 'Thay đổi mật khẩu'),
(1128, 16, 'Đăng xuất', 'Đăng xuất'),
(1129, 16, 'Trang quản trị', 'Trang quản trị'),
(1130, 16, 'Bảo mật', 'Bảo mật'),
(1131, 16, 'Cộng tác viên', 'Cộng tác viên'),
(1132, 16, 'Bảng Điều Khiển', 'Bảng Điều Khiển'),
(1133, 16, 'Nạp Tiền', 'Nạp Tiền'),
(1134, 16, 'Ngân Hàng', 'Ngân Hàng'),
(1135, 16, 'Ví Điện Tử', 'Ví Điện Tử'),
(1136, 16, 'Cửa Hàng', 'Cửa Hàng'),
(1137, 16, 'Lịch Sử Mua Hàng', 'Lịch Sử Mua Hàng'),
(1138, 16, 'Liên Hệ', 'Liên Hệ'),
(1139, 16, 'Thông tin liên hệ', 'Thông tin liên hệ'),
(1140, 16, 'Mã giao dịch', 'Mã giao dịch'),
(1141, 16, 'Sản phẩm', 'Sản phẩm'),
(1142, 16, 'Số lượng', 'Số lượng'),
(1143, 16, 'Thanh toán', 'Thanh toán'),
(1144, 16, 'Thời gian', 'Thời gian'),
(1145, 16, 'Thao tác', 'Thao tác'),
(1146, 16, 'Xem Thêm', 'Xem Thêm'),
(1147, 16, 'Thông Tin Cá Nhân', 'Thông Tin Cá Nhân'),
(1148, 16, 'Họ và Tên', 'Họ và Tên'),
(1149, 16, 'Nhập họ và tên', 'Nhập họ và tên'),
(1150, 16, 'Số điện thoại', 'Số điện thoại'),
(1151, 16, 'Nhập số điện thoại', 'Nhập số điện thoại'),
(1152, 16, 'Nhập địa chỉ Email', 'Nhập địa chỉ Email'),
(1153, 16, 'Thời gian đăng ký', 'Thời gian đăng ký'),
(1154, 16, 'Đăng nhập gần đây', 'Đăng nhập gần đây'),
(1155, 16, 'Huỷ', 'Huỷ'),
(1156, 16, 'Lưu Thay Đổi', 'Lưu Thay Đổi'),
(1157, 16, 'Tổng Tiền Nạp', 'Tổng Tiền Nạp'),
(1158, 16, 'Tổng Tiền Sử Dụng', 'Tổng Tiền Sử Dụng'),
(1159, 16, 'Số Dư Hiện Tại', 'Số Dư Hiện Tại'),
(1160, 16, 'Số Dư Sử Dụng', 'Số Dư Sử Dụng'),
(1161, 16, 'Vui lòng đăng nhập', 'Vui lòng đăng nhập'),
(1162, 16, 'Vui lòng nhập địa chỉ Email', 'Vui lòng nhập địa chỉ Email'),
(1163, 16, 'Định dạng Email không hợp lệ', 'Định dạng Email không hợp lệ'),
(1164, 16, 'Thay đổi thông tin hồ sơ', 'Thay đổi thông tin hồ sơ'),
(1165, 16, 'Lưu thành công', 'Lưu thành công'),
(1166, 16, 'Lưu thất bại', 'Lưu thất bại'),
(1167, 16, 'Vui lòng nhập mật khẩu hiện tại', 'Vui lòng nhập mật khẩu hiện tại'),
(1168, 16, 'Vui lòng nhập mật khẩu mới', 'Vui lòng nhập mật khẩu mới'),
(1169, 16, 'Mật khẩu hiện tại không chính xác', 'Mật khẩu hiện tại không chính xác'),
(1170, 16, 'Đổi mật khẩu thành công', 'Đổi mật khẩu thành công'),
(1171, 16, 'Đổi mật khẩu thất bại', 'Đổi mật khẩu thất bại'),
(1172, 16, 'Đóng', 'Đóng'),
(1173, 16, 'Mật khẩu hiện tại', 'Mật khẩu hiện tại'),
(1174, 16, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới'),
(1175, 16, 'Mật khẩu mới', 'Mật khẩu mới'),
(1176, 16, 'Vui lòng nhập lại mật khẩu mới', 'Vui lòng nhập lại mật khẩu mới'),
(1177, 16, 'Nhật ký hoạt động', 'Nhật ký hoạt động'),
(1178, 16, 'Biến động số dư', 'Biến động số dư'),
(1179, 16, 'Hành động', 'Hành động'),
(1180, 16, 'Địa chỉ IP', 'Địa chỉ IP'),
(1181, 16, 'Thiết bị', 'Thiết bị'),
(1182, 16, 'Số tiền trước', 'Số tiền trước'),
(1183, 16, 'Số tiền thay đổi', 'Số tiền thay đổi'),
(1184, 16, 'Số tiền hiện tại', 'Số tiền hiện tại'),
(1185, 16, 'Nội dung', 'Nội dung'),
(1186, 16, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán'),
(1187, 16, 'Nhập số tiền cần nạp', 'Nhập số tiền cần nạp'),
(1188, 16, 'Tạo hoá đơn', 'Tạo hoá đơn'),
(1189, 16, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Nhập số tiền bạn cần nạp vào hệ thống'),
(1190, 16, 'Hoá Đơn', 'Hoá Đơn'),
(1191, 16, 'Trạng thái', 'Trạng thái'),
(1192, 16, 'Phương thức thanh toán', 'Phương thức thanh toán'),
(1193, 16, 'Huỷ bỏ', 'Huỷ bỏ'),
(1194, 16, 'Đang chờ thanh toán', 'Đang chờ thanh toán'),
(1195, 16, 'Đã thanh toán', 'Đã thanh toán'),
(1196, 16, 'Vui lòng chọn phương thức thanh toán', 'Vui lòng chọn phương thức thanh toán'),
(1197, 16, 'Vui lòng nhập số tiền cần nạp', 'Vui lòng nhập số tiền cần nạp'),
(1198, 16, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Phương thức thanh toán không tồn tại trong hệ thống'),
(1199, 16, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'Bạn đang thao tác quá nhanh, vui lòng chờ'),
(1200, 16, 'Số tiền nạp tối thiểu là', 'Số tiền nạp tối thiểu là'),
(1201, 16, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày'),
(1202, 16, 'Tạo hoá đơn nạp tiền', 'Tạo hoá đơn nạp tiền'),
(1203, 16, 'Tạo hoá đơn thành công', 'Tạo hoá đơn thành công'),
(1204, 16, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Tạo hoá đơn thất bại, vui lòng thử lại'),
(1205, 16, 'Chi tiết hoá đơn', 'Chi tiết hoá đơn'),
(1206, 16, 'Tải Về', 'Tải Về'),
(1207, 16, 'Xoá', 'Xoá'),
(1208, 16, 'Xác nhận xoá đơn hàng', 'Xác nhận xoá đơn hàng'),
(1209, 16, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Bạn có chắc chắn muốn xóa đơn hàng này không ?'),
(1210, 16, 'Đồng Ý', 'Đồng Ý'),
(1211, 16, 'Đơn hàng không tồn tại trong hệ thống', 'Đơn hàng không tồn tại trong hệ thống'),
(1212, 16, 'Xóa đơn hàng thành công', 'Xóa đơn hàng thành công'),
(1213, 16, 'Dữ liệu không hợp lệ', 'Dữ liệu không hợp lệ'),
(1214, 16, 'Xoá đơn hàng', 'Xoá đơn hàng'),
(1215, 16, 'Xóa sản phẩm thất bại', 'Xóa sản phẩm thất bại'),
(1216, 16, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng'),
(1217, 16, 'Sao Chép', 'Sao Chép'),
(1218, 16, 'Quay Lại', 'Quay Lại'),
(1219, 16, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm'),
(1220, 16, 'Đánh giá ngay', 'Đánh giá ngay'),
(1221, 16, 'Bạn có thể đánh giá đơn hàng này', 'Bạn có thể đánh giá đơn hàng này'),
(1222, 16, 'Đơn hàng lớn hơn', 'Đơn hàng lớn hơn'),
(1223, 16, 'mới có thể đánh giá', 'mới có thể đánh giá'),
(1224, 16, 'Gửi Đánh Giá', 'Gửi Đánh Giá'),
(1225, 16, 'Xác Nhận', 'Xác Nhận'),
(1226, 16, 'Nhập nội dung cần đánh giá', 'Nhập nội dung cần đánh giá'),
(1227, 16, 'Vui lòng nhập review', 'Vui lòng nhập review'),
(1228, 16, 'Đã sao chép vào bộ nhớ tạm', 'Đã sao chép vào bộ nhớ tạm'),
(1229, 16, 'Bạn đã đánh giá đơn hàng này rồi', 'Bạn đã đánh giá đơn hàng này rồi'),
(1230, 16, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'Bạn không đủ điều kiện đánh giá đơn hàng này'),
(1231, 16, 'Gửi đánh giá thành công', 'Gửi đánh giá thành công'),
(1232, 16, 'Gửi đánh giá thất bại', 'Gửi đánh giá thất bại'),
(1233, 16, 'Sản phẩm mới', 'Sản phẩm mới'),
(1234, 16, 'Nạp tiền qua PayPal', 'Nạp tiền qua PayPal'),
(1235, 16, 'Nhập số tiền cần nạp định dạng VNĐ', 'Nhập số tiền cần nạp định dạng VNĐ'),
(1236, 16, 'Nhập số tiền cần nạp bằng USD', 'Nhập số tiền cần nạp bằng USD'),
(1237, 16, 'Tạo hoá đơn nạp tiền qua PayPal', 'Tạo hoá đơn nạp tiền qua PayPal'),
(1238, 16, 'Số tiền cần nạp', 'Số tiền cần nạp'),
(1239, 16, 'Giá', 'Giá'),
(1240, 16, 'MUA NGAY', 'MUA NGAY'),
(1241, 16, 'Đã bán', 'Đã bán'),
(1242, 16, 'Sản phẩm không tồn tại', 'Sản phẩm không tồn tại'),
(1243, 16, 'Quốc gia', 'Quốc gia'),
(1244, 16, 'Clone MOMO + Live Ads', 'Clone MOMO + Live Ads'),
(1245, 16, 'Tất Cả Sản Phẩm', 'Tất Cả Sản Phẩm'),
(1246, 16, 'Tên sản phẩm', 'Tên sản phẩm'),
(1247, 16, 'Hiện có', 'Hiện có'),
(1248, 16, 'Thanh toán đơn hàng', 'Thanh toán đơn hàng'),
(1249, 16, 'Nhập số lượng cần mua', 'Nhập số lượng cần mua'),
(1250, 16, 'Tổng tiền cần thanh toán', 'Tổng tiền cần thanh toán'),
(1251, 16, 'Bạn có mã giảm giá?', 'Bạn có mã giảm giá?'),
(1252, 16, 'Nhập mã giảm giá của bạn', 'Nhập mã giảm giá của bạn'),
(1253, 16, 'Nhập mã giảm giá', 'Nhập mã giảm giá'),
(1254, 16, 'Huỷ mã giảm giá', 'Huỷ mã giảm giá'),
(1255, 16, 'Số lượng cần mua', 'Số lượng cần mua'),
(1256, 16, 'Mã giảm giá', 'Mã giảm giá'),
(1257, 16, 'Đánh giá', 'Đánh giá'),
(1258, 16, 'Tải Về File Backup VIA', 'Tải Về File Backup VIA'),
(1259, 16, 'Nhập UID VIA cần tải về file backup', 'Nhập UID VIA cần tải về file backup'),
(1260, 16, 'Vui lòng nhập UID cần tải', 'Vui lòng nhập UID cần tải'),
(1261, 16, 'FAQ', 'FAQ'),
(1262, 16, 'Xác nhận tải về đơn hàng', 'Xác nhận tải về đơn hàng'),
(1263, 16, 'Bạn có chắc chắn muốn tải về hàng này không', 'Bạn có chắc chắn muốn tải về hàng này không'),
(1264, 16, 'Tải về đơn hàng', 'Tải về đơn hàng'),
(1265, 16, 'Tải về đơn hàng thành công', 'Tải về đơn hàng thành công'),
(1266, 16, 'Tải về đơn hàng thất bại', 'Tải về đơn hàng thất bại'),
(1267, 16, 'Tài Liệu API', 'Tài Liệu API'),
(1268, 16, 'Số Dư', 'Số Dư'),
(1269, 16, 'Sản phẩm không tồn tại trong hệ thống', 'Sản phẩm không tồn tại trong hệ thống'),
(1270, 16, 'Vui lòng nhập số lượng cần mua', 'Vui lòng nhập số lượng cần mua'),
(1271, 16, 'Số lượng trong hệ thống không đủ', 'Số lượng trong hệ thống không đủ'),
(1272, 16, 'Số dư không đủ, vui lòng nạp thêm', 'Số dư không đủ, vui lòng nạp thêm'),
(1273, 16, 'Bạn đã bị khoá tài khoản vì gian lận', 'Bạn đã bị khoá tài khoản vì gian lận'),
(1274, 16, 'Thanh toán đơn hàng thành công', 'Thanh toán đơn hàng thành công'),
(1275, 16, 'Không thể thanh toán, vui lòng thử lại', 'Không thể thanh toán, vui lòng thử lại'),
(1276, 16, 'Đang tải xuống đơn hàng...', 'Đang tải xuống đơn hàng...'),
(1277, 16, 'Xóa sản phẩm thành công', 'Xóa sản phẩm thành công'),
(1278, 16, 'Tài khoản', 'Tài khoản'),
(1279, 16, 'Tài khoản:', 'Tài khoản:'),
(1280, 16, 'Số lượng mua:', 'Số lượng mua:'),
(1281, 16, 'Thông báo', 'Thông báo'),
(1282, 16, 'Chi tiết thông báo', 'Chi tiết thông báo'),
(1283, 16, 'Nạp Thẻ', 'Nạp Thẻ'),
(1284, 16, 'Lưu Ý', 'Lưu Ý'),
(1285, 16, 'Lý do', 'Lý do'),
(1286, 16, 'Thực nhận', 'Thực nhận'),
(1287, 16, 'Nhà mạng', 'Nhà mạng'),
(1288, 16, 'Chính sách bảo mật', 'Chính sách bảo mật'),
(1289, 16, 'Điều khoản sử dụng', 'Điều khoản sử dụng'),
(1290, 16, 'Captcha không chính xác', 'Captcha không chính xác'),
(1291, 16, 'Nhập nội dung bên trái', 'Nhập nội dung bên trái'),
(1292, 16, 'Vui lòng nhập mã captcha để xác minh', 'Vui lòng nhập mã captcha để xác minh'),
(1293, 16, 'Bật/Tắt Google 2FA', 'Bật/Tắt Google 2FA'),
(1294, 16, 'Bật', 'Bật'),
(1295, 16, 'Tắt', 'Tắt'),
(1296, 16, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này'),
(1297, 16, 'Vui lòng chọn trạng thái 2FA', 'Vui lòng chọn trạng thái 2FA'),
(1298, 16, 'Nhập mã xác minh để lưu thay đổi', 'Nhập mã xác minh để lưu thay đổi'),
(1299, 16, 'Mã Xác Minh', 'Mã Xác Minh'),
(1300, 16, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator'),
(1301, 16, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;'),
(1302, 16, 'Xác thực hai yếu tố', 'Xác thực hai yếu tố'),
(1303, 16, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1304, 16, 'Vui lòng nhập mã xác minh 2FA', 'Vui lòng nhập mã xác minh 2FA'),
(1305, 16, 'Mã xác minh không chính xác', 'Mã xác minh không chính xác'),
(1306, 16, 'Xác minh 2FA', 'Xác minh 2FA'),
(1307, 16, 'Xác minh Google Authenticator', 'Xác minh Google Authenticator'),
(1308, 16, 'Xác Minh OTP', 'Xác Minh OTP'),
(1309, 16, 'Nhập mã xác minh', 'Nhập mã xác minh'),
(1310, 16, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập'),
(1311, 16, 'Vui lòng nhập mã xác minh', 'Vui lòng nhập mã xác minh'),
(1312, 16, 'Đang bật bảo mật', 'Đang bật bảo mật'),
(1313, 16, 'Đang tắt bảo mật', 'Đang tắt bảo mật'),
(1314, 16, 'Số sao đánh giá không hợp lệ', 'Số sao đánh giá không hợp lệ'),
(1315, 16, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.'),
(1316, 16, 'Số tiền thực nhận', 'Số tiền thực nhận'),
(1317, 16, 'Bảo Mật Tài Khoản', 'Bảo Mật Tài Khoản'),
(1318, 16, 'Thông tin tài nguyên', 'Thông tin tài nguyên'),
(1319, 16, 'Mở hộp quà', 'Mở hộp quà'),
(1320, 16, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau'),
(1321, 16, 'Nhận Quà Thất Bại', 'Nhận Quà Thất Bại'),
(1322, 16, 'Bạn đã mở hộp quà này rồi', 'Bạn đã mở hộp quà này rồi'),
(1323, 16, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Chúc mừng bạn đã nhận được hộp quà trị giá'),
(1324, 16, 'Quay về Trang Chủ', 'Quay về Trang Chủ'),
(1325, 16, 'Nhận Quà Thành Công', 'Nhận Quà Thành Công');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `ctv` int(11) NOT NULL DEFAULT 0,
  `banned` int(11) NOT NULL DEFAULT 0,
  `login_attempts` int(11) NOT NULL DEFAULT 0,
  `otp` varchar(55) DEFAULT NULL,
  `otp_limit` int(11) NOT NULL DEFAULT 0,
  `otp_token` text DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `time_session` int(11) DEFAULT 0,
  `time_request` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `money` float NOT NULL DEFAULT 0,
  `total_money` float NOT NULL DEFAULT 0,
  `rankings` int(11) NOT NULL DEFAULT 0,
  `icon_ranking` text DEFAULT NULL,
  `gender` varchar(255) NOT NULL DEFAULT 'Male',
  `device` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `status_2fa` int(11) NOT NULL DEFAULT 0,
  `SecretKey_2fa` varchar(255) DEFAULT NULL,
  `token_2fa` text DEFAULT NULL,
  `limit_2fa` int(11) NOT NULL DEFAULT 0,
  `chietkhau` float NOT NULL DEFAULT 0,
  `spin` int(11) NOT NULL DEFAULT 0,
  `ref_id` int(11) NOT NULL DEFAULT 0,
  `ref_click` int(11) NOT NULL DEFAULT 0,
  `ref_money` float NOT NULL DEFAULT 0,
  `ref_total_money` float NOT NULL DEFAULT 0,
  `ref_amount` float NOT NULL DEFAULT 0,
  `ref_ck` float NOT NULL DEFAULT 0,
  `change_password` int(11) NOT NULL DEFAULT 0,
  `token_forgot_password` varchar(255) DEFAULT NULL,
  `time_forgot_password` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `admin`, `ctv`, `banned`, `login_attempts`, `otp`, `otp_limit`, `otp_token`, `active`, `create_date`, `update_date`, `time_session`, `time_request`, `ip`, `token`, `money`, `total_money`, `rankings`, `icon_ranking`, `gender`, `device`, `avatar`, `status_2fa`, `SecretKey_2fa`, `token_2fa`, `limit_2fa`, `chietkhau`, `spin`, `ref_id`, `ref_click`, `ref_money`, `ref_total_money`, `ref_amount`, `ref_ck`, `change_password`, `token_forgot_password`, `time_forgot_password`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', NULL, NULL, 1, 0, 0, 0, NULL, 0, NULL, 0, '2024-05-08 12:35:13', '2024-05-08 18:15:23', 1715167189, 1715166733, '171.243.254.169', '721aaf9659b0d0d619544cd53157e43f', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', NULL, 0, 'LNY6V6USVAFPYMLA', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(2, 'Nhphuc76234', '2f74a673c38a00c0a08d9fe07192aa31', 'nguyenphucdeptrai0681@gmail.com', NULL, '', 1, 1, 0, 0, NULL, 0, NULL, 0, '2024-05-28 11:24:28', '2024-05-29 11:47:34', 1716958055, 1716908757, '27.74.238.178', 'b85d06439d64a52d7541e803ed183bf5', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, 0, 'WIPK2R3IE46NZTR6', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(3, 'Admin76234', '3eac6c4f4e229b20c461096fc3dd017a', 'nughyweghjsfu@gg.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-05-28 21:36:57', '2024-05-29 11:25:45', 1716956745, 1716956745, '27.74.238.178', 'bb58957d433e2ff281632525d4866694', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', NULL, 0, 'AXAG5XV4DLR6VH6G', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `withdraw_ref`
--

CREATE TABLE `withdraw_ref` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `bank` varchar(255) DEFAULT NULL,
  `stk` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banned_ips`
--
ALTER TABLE `banned_ips`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_service`
--
ALTER TABLE `category_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `connect_api`
--
ALTER TABLE `connect_api`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Chỉ mục cho bảng `coupon_used`
--
ALTER TABLE `coupon_used`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `crypto_invoice`
--
ALTER TABLE `crypto_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `document_categories`
--
ALTER TABLE `document_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`);

--
-- Chỉ mục cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `email_campaigns`
--
ALTER TABLE `email_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `email_sending`
--
ALTER TABLE `email_sending`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giftbox`
--
ALTER TABLE `giftbox`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Chỉ mục cho bảng `ip_white`
--
ALTER TABLE `ip_white`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_tds_ttc`
--
ALTER TABLE `list_tds_ttc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `log_ref`
--
ALTER TABLE `log_ref`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `log_tds_ttc`
--
ALTER TABLE `log_tds_ttc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nowpayments`
--
ALTER TABLE `nowpayments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Chỉ mục cho bảng `order_autofb`
--
ALTER TABLE `order_autofb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_service`
--
ALTER TABLE `order_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_tds_ttc`
--
ALTER TABLE `order_tds_ttc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `otp_history`
--
ALTER TABLE `otp_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_flutterwave`
--
ALTER TABLE `payment_flutterwave`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_paypal`
--
ALTER TABLE `payment_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_pm`
--
ALTER TABLE `payment_pm`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_squadco`
--
ALTER TABLE `payment_squadco`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `paypal`
--
ALTER TABLE `paypal`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rate_autofb`
--
ALTER TABLE `rate_autofb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `send_email`
--
ALTER TABLE `send_email`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `server2_autobank`
--
ALTER TABLE `server2_autobank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_order`
--
ALTER TABLE `service_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Chỉ mục cho bảng `service_otp`
--
ALTER TABLE `service_otp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `spin_history`
--
ALTER TABLE `spin_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `spin_option`
--
ALTER TABLE `spin_option`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `store_fanpage`
--
ALTER TABLE `store_fanpage`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `toyyibpay_transactions`
--
ALTER TABLE `toyyibpay_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`),
  ADD UNIQUE KEY `BillCode` (`BillCode`);

--
-- Chỉ mục cho bảng `translate`
--
ALTER TABLE `translate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `withdraw_ref`
--
ALTER TABLE `withdraw_ref`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT cho bảng `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112247;

--
-- AUTO_INCREMENT cho bảng `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `banned_ips`
--
ALTER TABLE `banned_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `category_service`
--
ALTER TABLE `category_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `connect_api`
--
ALTER TABLE `connect_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `coupon_used`
--
ALTER TABLE `coupon_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `crypto_invoice`
--
ALTER TABLE `crypto_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `document_categories`
--
ALTER TABLE `document_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `email_campaigns`
--
ALTER TABLE `email_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `email_sending`
--
ALTER TABLE `email_sending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `giftbox`
--
ALTER TABLE `giftbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT cho bảng `ip_white`
--
ALTER TABLE `ip_white`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `list_tds_ttc`
--
ALTER TABLE `list_tds_ttc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=683;

--
-- AUTO_INCREMENT cho bảng `log_ref`
--
ALTER TABLE `log_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `log_tds_ttc`
--
ALTER TABLE `log_tds_ttc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT cho bảng `nowpayments`
--
ALTER TABLE `nowpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT cho bảng `order_autofb`
--
ALTER TABLE `order_autofb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_service`
--
ALTER TABLE `order_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `order_tds_ttc`
--
ALTER TABLE `order_tds_ttc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `otp_history`
--
ALTER TABLE `otp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment_flutterwave`
--
ALTER TABLE `payment_flutterwave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment_paypal`
--
ALTER TABLE `payment_paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment_pm`
--
ALTER TABLE `payment_pm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `payment_squadco`
--
ALTER TABLE `payment_squadco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `paypal`
--
ALTER TABLE `paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `rate_autofb`
--
ALTER TABLE `rate_autofb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `send_email`
--
ALTER TABLE `send_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `server2_autobank`
--
ALTER TABLE `server2_autobank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

--
-- AUTO_INCREMENT cho bảng `service_order`
--
ALTER TABLE `service_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service_otp`
--
ALTER TABLE `service_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT cho bảng `spin_history`
--
ALTER TABLE `spin_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `spin_option`
--
ALTER TABLE `spin_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `store_fanpage`
--
ALTER TABLE `store_fanpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `toyyibpay_transactions`
--
ALTER TABLE `toyyibpay_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `translate`
--
ALTER TABLE `translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1326;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `withdraw_ref`
--
ALTER TABLE `withdraw_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
