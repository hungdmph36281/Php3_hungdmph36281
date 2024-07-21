-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 21, 2024 lúc 05:52 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ass1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Áo nam', '2024-07-21 02:54:10', '2024-07-21 03:30:51'),
(5, 'Áo nữ', '2024-07-21 03:31:39', '2024-07-21 03:31:39'),
(6, 'Quần nam', '2024-07-21 03:35:22', '2024-07-21 03:35:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_21_093451_create_categories_table', 1),
(6, '2024_07_21_093526_create_products_table', 1),
(7, '2024_07_21_144850_add_role_to_users_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Áo Thun Họa Tiết Catus Long Tee Old Sailor - ATDE88593 - Big Size upto 5XL', 'Áo thun nam, áo thun nam Old Sailor, áo thun nam the big size, áo thun cổ tròn, áo thun cá tính, áo thun năng động, áo thun thiết kế phù hợp xu hướng hiện nay, Áo thun nam the Big size,  áo thun nam Old Sailor- the Big size.', 315000.00, 'images/hRbqEsOvoWloowoM1doKdMuNALua8WUCvNrwvN0X.jpg', 1, '2024-07-21 03:04:49', '2024-07-21 07:05:21'),
(2, 'Áo Sơ Mi Kẻ Sọc Vải Sợi Tre Old Sailor - SMXD88598 - Big Size Upto 5XL', 'Áo sơ mi nam, áo sơ mi Old Sailor, áo sơ mi the Big size, áo sơ mi phù hợp phong cách, áo sơ mi họa tiết, áo sơ mi đơn giản, áo sơ mi tinh tế, áo sơ mi dành cho đàn ông, áo sơ mi dành cho đi làm, áo sơ mi dành cho đi chơi, Áo sơ mi nam the Big size, áo sơ mi Old Sailor the Big size, áo sơ mi the Big size, áo sơ mi phù hợp phong cách the Big size, áo sơ mi họa tiết the Big size,  áo sơ mi đơn giản the Big size, áo sơ mi tinh tế the Big size, áo sơ mi dành cho đàn ông the Big size, áo sơ mi dành cho đi làm the Big size, áo sơ mi dành cho đi chơi the Big size.', 355000.00, 'images/utBmPMI84u5Wr1TJq2QQHZD9coYwTXagQc4hbSau.jpg', 1, '2024-07-21 03:32:48', '2024-07-21 03:32:48'),
(3, 'Áo Thun Họa Tiết Catus Long Tee Old Sailor - ATGA88593 - Big Size upto 5XL', 'Áo thun nam, áo thun nam Old Sailor, áo thun nam the big size, áo thun cổ tròn, áo thun cá tính, áo thun năng động, áo thun thiết kế phù hợp xu hướng hiện nay, Áo thun nam the Big size,  áo thun nam Old Sailor- the Big size , áo thun nam the big size, áo thun cổ tròn the Big size, áo thun cá tính the Big size, áo thun năng động the Big size, áo thun thiết kế phù hợp xu', 315000.00, 'images/tEwZv4YUXhDjQ7ClL44cbEkViG8QB878onO2l6bF.jpg', 1, '2024-07-21 03:33:46', '2024-07-21 03:33:46'),
(4, 'Quần Jeans Form Skinny 95cm Old Sailor - 6986 - Big size upto 44', 'Quần jeans, quần jeans nam, quần jeans kiểu cách, quần jeans đi tiệc, quần jeans đi làm, quần jeans đi chơi, quần jeans giá rẻ, quần jeans rách gối, quần jeans the big size, quần jeans nam the big size, quần jeans kiểu cách the big size, quần jeans đi tiệc the big size, quần jeans đi làm the big size, quần jeans đi bơi the big size, quần jeans giá rẻ the big size, quần jeans', 215000.00, 'images/F4XY27OwtJHNhvbaYMMAqSlv2vuUv1pl2DfEaqFC.jpg', 6, '2024-07-21 03:35:05', '2024-07-21 03:35:32'),
(5, 'Quần Jeans Deep Black Form Carrot 95cm Old Sailor - 6968 - Big size upto 44', 'Trải qua quá trình nghiên cứu với nhiều lần thử nghiệm, sử dụng công nghệ nhuộm MỚI NHẤT giúp BỀN MÀU theo thời gian \r\nDù đã qua nhiều lần giặt màu đen sâu của sản phẩm vẫn giữ được sắc nét và không phai nhòa', 115000.00, 'images/I8Sq3cuFT8Eq9mIfpQd0dOvs6kiuoFGpLcJ0lb5u.jpg', 6, '2024-07-21 03:36:18', '2024-07-21 03:36:18'),
(6, 'Áo sơ mi mango Old Sailor - Grey - SMXA88582 - xám - Big Size Upto 5XL', 'Được làm từ chất liệu vải Cotton tạo cảm giác dễ chịu và thoáng mát cho tất cả mọi người, từ công sở cho tới đi chơi hay chỉ đơn giản là mặc tại nhà, Áo sơ mi của chúng tôi cực kì dễ phối đồ bởi thiết kế đơn giản và tinh gọn.\r\n\r\nÁo sơ mi luôn luôn dẫn dắt mọi xu hướng và không bao giờ lỗi thời\r\n\r\nChất liệu áo sơ mi: Cotton\r\n\r\nKiểu form: Fitted\r\n\r\nSize M - 5XL.\r\n\r\nMàu: Xám', 315000.00, 'images/p4mvgMcRDjN51DHy3dYoaBiX7Gi1rYgkjvRYZHFy.jpg', 5, '2024-07-21 03:38:02', '2024-07-21 03:38:02'),
(7, 'Áo sơ mi samray Old Sailor - Black - SMDE88571 - đen - Big Size Upto 5XL', 'Được làm từ chất liệu vải Cotton tạo cảm giác dễ chịu và thoáng mát cho tất cả mọi người, từ công sở cho tới đi chơi hay chỉ đơn giản là mặc tại nhà, Áo sơ mi của chúng tôi cực kì dễ phối đồ bởi thiết kế đơn giản và tinh gọn.', 515000.00, 'images/rw8AJRSClETGPwAd0M5davL2afwWdtZEDmlhxD9m.jpg', 1, '2024-07-21 03:38:58', '2024-07-21 03:39:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'hungg', 'duonghungd4111@gmail.com', NULL, '$2y$12$.h01E6vgEYd5h5XhVimpreHwvO.xRrTlksjFfvpLJwof/HAslSHJG', NULL, '2024-07-21 07:07:55', '2024-07-21 07:07:55', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
