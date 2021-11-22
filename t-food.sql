-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2021 lúc 10:44 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `t-food`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_category`
--

CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate_images` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_category`
--

INSERT INTO `tb_category` (`id`, `cate_name`, `cate_images`) VALUES
(1, 'Đồ Ăn Nhanh', 'banhmi.png'),
(2, 'Cơm', 'deleciousrice.jpg'),
(4, 'Đồ Uống', 'douong.png'),
(5, 'Đồ Ăn Vặt', 'doanvat2.png'),
(7, 'Đồ Chay', 'chay.jpg'),
(23, 'Lẩu', 'fanta.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_comment`
--

CREATE TABLE `tb_comment` (
  `id` int(11) NOT NULL,
  `id_food` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `score` tinyint(4) NOT NULL,
  `content` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_comment`
--

INSERT INTO `tb_comment` (`id`, `id_food`, `id_user`, `score`, `content`, `created_at`) VALUES
(18, 1, 17, 5, 'Ngon', '2021-11-22 15:23:18'),
(19, 1, 17, 5, 'Giá rẻ', '2021-11-22 15:23:23'),
(20, 2, 17, 5, 'Ngon', '2021-11-22 15:23:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_foodlist`
--

CREATE TABLE `tb_foodlist` (
  `id` int(11) NOT NULL,
  `food_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `food_images` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `food_cate_id` int(11) DEFAULT NULL,
  `food_price` int(11) DEFAULT NULL,
  `food_discount` int(11) NOT NULL,
  `food_new_price` int(11) NOT NULL DEFAULT 0,
  `food_status` bit(1) DEFAULT NULL,
  `food_sold` int(11) DEFAULT NULL,
  `food_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_foodlist`
--

INSERT INTO `tb_foodlist` (`id`, `food_name`, `food_images`, `food_cate_id`, `food_price`, `food_discount`, `food_new_price`, `food_status`, `food_sold`, `food_description`) VALUES
(1, 'Bánh Mì Hà Nội', 'banhmihanoi.jpg', 1, 30000, 5000, 25000, b'1', 30, 'Bánh mì nướng có kẹp một hay vài lát patê kèm theo các loại rau như rau mùi, dưa chuột, củ cải, cà rốt, xúc xích, bơ, ruốc, những người ăn được cay thường cho thêm ớt'),
(2, 'Bánh', 'bamisot-banhmiden.jpg', 1, 50000, 25000, 25000, b'1', 35, 'Mô tả...'),
(3, 'Hamburger', 'hamburger.png', 1, 30000, 0, 30000, b'1', 15, 'Mô tả...'),
(4, 'Bami Sot- Bánh Mì Đen', 'bamisot-banhmiden.jpg', 1, 20000, 0, 20000, b'1', 1, 'Mô tả...'),
(9, 'Chimico - Cơm Trộn ', 'chimico.jpg', 2, 125000, 25000, 100000, b'1', 10, 'Cơm trộn Hàn Quốc'),
(10, 'Cơm Thố ', 'comtho.jpeg', 2, 40000, 5000, 35000, b'1', 15, 'Cơm Thố Phố Cổ, cơm văn phòng, cơm gia đình,...'),
(11, 'Cơm Sườn - Cơm Văn Phòng', 'comsuong-comvanphong.jpg', 2, 45000, 5000, 40000, b'1', 20, 'Cơm văn phòng'),
(12, 'Cơm Gà Xối Mắm', 'comgaxoimam.jpg', 2, 40000, 0, 0, b'0', 25, 'Cơm trưa, cơm văn phòng, cơm gia đình,...'),
(17, ' Cơm Chay Văn Phòng', 'comchayvanphong.jpg', 7, 35000, 5000, 30000, b'1', NULL, 'Cơm chay'),
(18, 'Coca Cola', 'coca.jpg', 4, 25000, 5000, 20000, b'1', NULL, 'Nước ngọt có gas'),
(19, 'Fanta', 'fanta.jpg', 4, 24000, 5000, 19000, b'1', NULL, 'Nước ngọt có gas vị cam'),
(20, 'Mountain dew', 'moutaindew.png', 4, 30000, 5000, 25000, b'1', NULL, 'Nước ngọt'),
(21, 'Chè Thốt Nốt Dừa Dầm', 'chethotnot.jpg', 5, 50000, 0, 0, b'1', NULL, 'Chè '),
(22, 'Chè Bưởi', 'chebuoi.jpeg', 5, 45000, 0, 0, b'1', NULL, 'Chè '),
(23, 'Chè Dừa Thái Lan', 'cheduathailan.jpg', 5, 20000, 0, 0, b'1', NULL, 'Chè Thái'),
(24, 'Chè Xoan', 'chexoan.jpg', 5, 35000, 0, 0, b'1', NULL, 'Chè'),
(25, 'Bánh Mì HN', 'bamisot-banhmiden.jpg', 1, 15000, 0, 15000, b'0', 0, 'Gồm..'),
(27, 'Chè', 'cheduathailan.jpg', 5, 30000, 0, 30000, b'0', NULL, 'Chè Dừa Thái Lan'),
(33, 'Cơm Thố 2', 'comtho2.jpg', 2, 50000, 10000, 40000, b'1', NULL, 'Cơm thố ngon'),
(34, 'Pepsi', 'pepsi.jpg', 4, 25000, 0, 25000, b'0', NULL, 'Nước ngọt có gas'),
(35, '7up - Seven Up', '7up.jpg', 4, 25000, 0, 25000, b'0', NULL, 'Nước ngọt có gas'),
(36, 'Number one', 'number1.jpg', 4, 20000, 0, 20000, b'0', NULL, 'Nước ngọt, nước tăng lực'),
(37, 'Lẩu ếch', 'lauech.jpg', 23, 180000, 10000, 170000, b'1', NULL, 'Gồm ếch, rau và một số đồ ăn nhanh,...'),
(38, 'Lẩu Thái', 'lauthai.jpg', 23, 320000, 20000, 300000, b'1', NULL, 'Hương vị lẩu thái gồm nhiều món kèm theo'),
(39, 'Lẩu Tokbokki', 'lautokbokki.jpeg', 23, 50000, 0, 50000, b'0', NULL, 'Lẩu Hàn Quốc'),
(40, 'Lẩu ếch Lâm Đồng', 'lauech.jpg', 23, 190000, 10000, 180000, b'1', NULL, 'Đặc sản Lâm Đồng'),
(41, 'Sprite', 'sprite.jpg', 4, 20000, 0, 20000, b'0', NULL, 'Nước ngọt, nước giải khát'),
(42, 'Nước ngọt Welch\'s', 'welch.jpg', 4, 40000, 0, 40000, b'0', NULL, 'Nước ngọt Mỹ nhập khẩu, vị nho'),
(43, 'Bánh Mì Kẹp Thịt', 'banhmikepthit.png', 1, 35000, 5000, 30000, b'1', NULL, 'Bánh mì, bánh mì phố, bánh mì kẹp thịt'),
(44, 'Bánh Mì Đen', 'banhmiden.jpg', 1, 33000, 5000, 28000, b'1', NULL, 'Bánh mì đất mỏ'),
(45, 'Bánh Mì Không Nhân', 'banhmikhongnhan.jpg', 1, 15000, 0, 15000, b'0', NULL, 'Không chiên qua dầu, an toàn, bảo vệ sức khỏe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_level`
--

CREATE TABLE `tb_level` (
  `id` int(11) NOT NULL,
  `level_description` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_level`
--

INSERT INTO `tb_level` (`id`, `level_description`, `created_at`, `updated_at`) VALUES
(0, 'customer', '2021-11-10 09:52:38', '2021-11-10 09:52:38'),
(1, 'shipper', '2021-11-10 09:52:38', '2021-11-10 09:52:38'),
(2, 'staff', '2021-11-10 00:00:00', '2021-11-10 00:00:00'),
(3, 'admin', '2021-11-10 00:00:00', '2021-11-10 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_orders`
--

CREATE TABLE `tb_orders` (
  `id` int(11) NOT NULL,
  `orders_user_id` int(11) DEFAULT NULL,
  `orders_food_id` int(11) DEFAULT NULL,
  `orders_total_quantity` int(11) DEFAULT NULL,
  `orders_total_price` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_orders`
--

INSERT INTO `tb_orders` (`id`, `orders_user_id`, `orders_food_id`, `orders_total_quantity`, `orders_total_price`, `created_at`, `updated_at`) VALUES
(32, 8, 4, 5, 100000, '2021-11-21 15:06:46', '2021-11-21 15:06:46'),
(33, 8, 1, 5, 425000, '2021-11-21 15:06:49', '2021-11-21 15:06:49'),
(62, 15, 1, 1, 85000, '2021-11-21 22:34:51', '2021-11-21 22:34:51'),
(63, 15, 2, 1, 25000, '2021-11-21 22:41:07', '2021-11-21 22:41:07'),
(64, 16, 1, 5, 425000, '2021-11-22 00:11:12', '2021-11-22 00:11:12'),
(65, 10, 1, 1, 85000, '2021-11-22 08:06:33', '2021-11-22 08:06:33'),
(66, 10, 25, 6, 90000, '2021-11-22 08:45:56', '2021-11-22 08:45:56'),
(68, 17, 1, 4, 340000, '2021-11-22 14:47:57', '2021-11-22 14:47:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_orders_detail`
--

CREATE TABLE `tb_orders_detail` (
  `id` int(11) NOT NULL,
  `tod_user_id` int(11) NOT NULL,
  `tod_orders_id` int(11) NOT NULL,
  `tod_user_name` varchar(60) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `tod_phone_number` varchar(11) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `tod_user_email` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `tod_address` varchar(120) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `tod_quantity` int(11) NOT NULL,
  `tod_price` int(11) NOT NULL,
  `tod_payment` int(11) NOT NULL DEFAULT 3,
  `tod_status` tinyint(4) DEFAULT 1,
  `tod_shipper` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_orders_detail`
--

INSERT INTO `tb_orders_detail` (`id`, `tod_user_id`, `tod_orders_id`, `tod_user_name`, `tod_phone_number`, `tod_user_email`, `tod_address`, `tod_quantity`, `tod_price`, `tod_payment`, `tod_status`, `tod_shipper`, `created_at`, `updated_at`) VALUES
(76, 17, 62, 'Đăng Ký', '03245678912', '', 'số 1 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội', 1, 85000, 1, 4, 0, '2021-11-21 22:41:09', '2021-11-21 22:41:09'),
(77, 15, 63, 'Đăng Ký', '03245678912', '', 'số 1 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội', 1, 25000, 1, 4, 0, '2021-11-21 22:41:11', '2021-11-21 22:41:11'),
(78, 15, 63, 'Đăng Ký', '03245678912', '', 'số 1 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội', 1, 25000, 1, 5, 0, '2021-11-21 22:41:11', '2021-11-21 22:41:11'),
(79, 16, 64, 'Anh Tuấn', '03256897411', 'e12321@e', 'số 1 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội', 1, 85000, 1, 4, 0, '2021-11-22 00:11:18', '2021-11-22 00:11:18'),
(80, 16, 64, 'Anh Tuấn', '03256897411', 'e12321@e', 'số 1 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội', 5, 425000, 1, 2, 0, '2021-11-22 00:11:40', '2021-11-22 00:11:40'),
(81, 16, 64, 'Anh Tuấn', '03256897411', 'e12321@e', 'số 1 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội', 5, 425000, 1, 2, 0, '2021-11-22 00:11:40', '2021-11-22 00:11:40'),
(82, 10, 66, 'Anh Tuấn', '0985236547', '', '', 6, 90000, 1, 2, 0, '2021-11-22 08:46:00', '2021-11-22 08:46:00'),
(83, 10, 66, 'Anh Tuấn', '0985236547', '', '', 6, 90000, 3, 1, 0, '2021-11-22 08:46:42', '2021-11-22 08:46:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_payment`
--

CREATE TABLE `tb_payment` (
  `id` int(11) NOT NULL,
  `content` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_payment`
--

INSERT INTO `tb_payment` (`id`, `content`, `images`) VALUES
(1, 'Thanh toán khi nhận hàng', 'https://laz-img-cdn.alicdn.com/tfs/TB1ZP8kM1T2gK0jSZFvXXXnFXXa-96-96.png'),
(2, 'Ví Zalo pay', 'https://img.alicdn.com/tfs/TB17BAYE7L0gK0jSZFAXXcA9pXa-80-80.png'),
(3, 'Chưa chọn', 'null');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_revenue`
--

CREATE TABLE `tb_revenue` (
  `id` int(11) NOT NULL,
  `id_orders_detail` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_revenue`
--

INSERT INTO `tb_revenue` (`id`, `id_orders_detail`, `price`) VALUES
(1, 76, 85000),
(2, 77, 25000),
(3, 79, 85000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_status`
--

CREATE TABLE `tb_status` (
  `id` int(11) NOT NULL,
  `description` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_status`
--

INSERT INTO `tb_status` (`id`, `description`) VALUES
(1, 'Đã đặt hàng'),
(2, 'Đã xác nhận đơn hàng'),
(3, 'Đang giao hàng'),
(4, 'Giao hàng thành công'),
(5, 'Đơn hàng đã bị hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(60) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `user_username` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `user_passwords` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  `user_images` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `user_email` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `user_address` varchar(120) COLLATE utf8_vietnamese_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_users`
--

INSERT INTO `tb_users` (`id`, `user_name`, `user_username`, `user_passwords`, `user_level`, `user_images`, `user_email`, `user_address`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(7, 'Anh Tuấn', '0369258147', 'admin123', 3, 'userlogo.png', '', '', '2021-11-10 11:11:36', '2021-11-10 11:11:36', 0, 0),
(8, 'Anh Tuấn', '0254136982', 'staff123', 2, 'userlogo.png', 'email@vn', 'Giao Tac, Lien Ha, Dong Anh, Ha Noi', '2021-11-10 11:11:36', '2021-11-10 11:11:36', 0, 0),
(10, 'Anh Tuấn', '0985236547', 'shipper123', 1, 'userlogo.png', '', '', '2021-11-10 11:11:36', '2021-11-10 11:11:36', 0, 0),
(11, 'Anh Tuấn', '0214626287', 'customer123', 0, 'userlogo.png', '', '', '2021-11-10 11:11:36', '2021-11-10 11:11:36', 0, 0),
(15, 'Đăng Ký', '03245678912', 'abc123', 0, 'userlogo.png', '', 'số 1 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội', '2021-11-11 14:09:19', '2021-11-11 14:09:19', NULL, NULL),
(16, 'Anh Tuấn', '03256897411', 'at123', 0, 'userlogo.png', 'e12321@e', 'số 1 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội', '2021-11-11 16:17:30', '2021-11-11 16:17:30', NULL, NULL),
(17, 'Anh Tuấn', '0222222222', '123123', 0, 'userlogo.png', '123A@gmail.com', 'Thôn Giao Tác', '2021-11-22 09:43:45', '2021-11-22 09:43:45', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_food` (`id_food`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `tb_foodlist`
--
ALTER TABLE `tb_foodlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_foodlist_ibfk_1` (`food_cate_id`);

--
-- Chỉ mục cho bảng `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orders_ibfk_1` (`orders_food_id`);

--
-- Chỉ mục cho bảng `tb_orders_detail`
--
ALTER TABLE `tb_orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orders_detail_ibfk_1` (`tod_orders_id`),
  ADD KEY `tb_orders_detail_ibfk_2` (`tod_payment`);

--
-- Chỉ mục cho bảng `tb_payment`
--
ALTER TABLE `tb_payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_revenue`
--
ALTER TABLE `tb_revenue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_orders_detail` (`id_orders_detail`);

--
-- Chỉ mục cho bảng `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tb_comment`
--
ALTER TABLE `tb_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tb_foodlist`
--
ALTER TABLE `tb_foodlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `tb_orders_detail`
--
ALTER TABLE `tb_orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `tb_payment`
--
ALTER TABLE `tb_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_revenue`
--
ALTER TABLE `tb_revenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD CONSTRAINT `tb_comment_ibfk_1` FOREIGN KEY (`id_food`) REFERENCES `tb_foodlist` (`id`),
  ADD CONSTRAINT `tb_comment_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_users` (`id`);

--
-- Các ràng buộc cho bảng `tb_foodlist`
--
ALTER TABLE `tb_foodlist`
  ADD CONSTRAINT `tb_foodlist_ibfk_1` FOREIGN KEY (`food_cate_id`) REFERENCES `tb_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD CONSTRAINT `tb_orders_ibfk_1` FOREIGN KEY (`orders_food_id`) REFERENCES `tb_foodlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tb_orders_detail`
--
ALTER TABLE `tb_orders_detail`
  ADD CONSTRAINT `tb_orders_detail_ibfk_1` FOREIGN KEY (`tod_orders_id`) REFERENCES `tb_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_orders_detail_ibfk_2` FOREIGN KEY (`tod_payment`) REFERENCES `tb_payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tb_revenue`
--
ALTER TABLE `tb_revenue`
  ADD CONSTRAINT `tb_revenue_ibfk_1` FOREIGN KEY (`id_orders_detail`) REFERENCES `tb_orders_detail` (`id`);

--
-- Các ràng buộc cho bảng `tb_users`
--
ALTER TABLE `tb_users`
  ADD CONSTRAINT `tb_users_ibfk_1` FOREIGN KEY (`user_level`) REFERENCES `tb_level` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
