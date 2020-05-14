-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 13, 2020 lúc 10:45 PM
-- Phiên bản máy phục vụ: 5.5.63-MariaDB
-- Phiên bản PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoangsa_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '', '', '', 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '01669', 'tuan@gmail.com', 'test', 1, 2),
(4, NULL, NULL, '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, NULL),
(5, 'cms', 'cms', '$2y$10$FtjsErf.CxMYTl3zt3xOpuvWvPOAHfdCxo/9apf.tw8Aky/udFN6i', '135778', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(45, NULL, 'mkrnfu62crnut73tj9ip88k4c0', 4560000, NULL, '0000-00-00', NULL, NULL, 'hang', 'ngockhanh260614@gmail.com', '0973378669', 'Thanh Xuân, Thanh Xuân', 'đơn hàng hằng pt'),
(46, NULL, 'q6hilk5otma71lnmfk4jfe3bo0', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', 'test'),
(47, NULL, '8rg8qp2tib6bhq40siemsl0au1', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(48, NULL, 'p29v6fieekj8qc6r9iei8rkr84', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(49, NULL, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(50, NULL, 'skgfhmeppmr97bion8qlhv2f24', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(51, NULL, '14sbco3nbkh6tss6mibu4c63i2', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(52, NULL, 'rdk00s074i1i4seat51nh109d6', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(53, NULL, 'ibcpu4cam64hh6jvvlqde89v90', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(54, NULL, 'r2hcu630iilbqufhd80udq4eh0', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(55, NULL, 'krsem1sgk8k9smbs1uinikks42', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(56, NULL, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(57, NULL, 'q4asrlk395bqes71q3m1dj7a53', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(58, NULL, 'mfuj32kovfsj87sum11433so15', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(59, NULL, 'o82tantv1gh498mq2giekk0mj1', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(60, NULL, 'vv3bvs960u0efu33mksbikfr02', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(61, NULL, '77v49he85i8nuuet5p2vt9g7r0', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(62, NULL, 'qs835th55ruep5q2f34fdimdg6', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(63, NULL, '0v3amtlih28cip0bskvi8tr2t7', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(64, NULL, 's34tnbg59l4psbpbc2jg4ru734', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(65, NULL, 'jna4k52dg50ce0e2euknmpsc53', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(66, NULL, '1mrapf9122qb0n9gd32j94l6f5', 6000, NULL, '0000-00-00', NULL, NULL, 'adf', 'viethung@gmail.com', '01672523165', 'ha nội', 'ghi chú aaa'),
(67, NULL, 'sl6a5d5957d6n37tptrtp29mt4', 2000, NULL, '0000-00-00', NULL, NULL, 'bczcv', 'viethung@gmail.com', 'aasdfas', 'asfas', 'fdasdfasdf'),
(68, NULL, 'ape83laqntnptihbcmk5g0li26', 6000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '29-3'),
(69, NULL, 'lc7opealpf3l1a0m2utp3nr4g7', 2937600, NULL, '0000-00-00', NULL, NULL, 'adsfasdf', 'viethung@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'fasdfasdf'),
(70, NULL, '5h573qfbbcbulqljthad7scpd3', 935300, NULL, '0000-00-00', NULL, NULL, 'foreverlvoe', 'viethung95cute@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'ádfasdf'),
(71, NULL, '904nrn3lmfkbev7956opp4sbt5', 500400, NULL, '0000-00-00', NULL, NULL, '', '', '', '', ''),
(72, NULL, 'h2tteteqcbai73din008s3fbf1', 236700, NULL, '0000-00-00', NULL, NULL, 'Việt', 'viethung95cute@gmail.com', '1672523165', '', 'adasdsdas'),
(73, NULL, '9a4ohferctq5glunhc0up38tn3', 179100, NULL, '0000-00-00', NULL, NULL, 'Việt', 'viethung95cute@gmail.com', '1672523165', '', 'adasdasdasd'),
(74, NULL, 'm77jhdf6kjq5n4t560luv05fu3', 0, NULL, '0000-00-00', NULL, NULL, 'ấdas', 'admin@gmail.com', '4909488', 'ấdsdas', 'ádasdas');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(30, 28, 'mkrnfu62crnut73tj9ip88k4c0', 760000, 4, 3040000, NULL, 0, 0, '', '', 45),
(31, 34, 'mkrnfu62crnut73tj9ip88k4c0', 760000, 2, 1520000, NULL, 0, 0, '', '', 45),
(32, 28, 'q6hilk5otma71lnmfk4jfe3bo0', 760000, 1, 760000, NULL, 0, 0, '', '', 46),
(33, 29, '8rg8qp2tib6bhq40siemsl0au1', 760000, 1, 760000, NULL, 0, 0, '', '', 47),
(34, 27, 'p29v6fieekj8qc6r9iei8rkr84', 760000, 1, 760000, NULL, 0, 0, '', '', 48),
(35, 28, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, 1, 760000, NULL, 0, 0, '', '', 49),
(36, 30, 'skgfhmeppmr97bion8qlhv2f24', 7600000, 1, 7600000, NULL, 0, 0, '', '', 50),
(37, 31, '14sbco3nbkh6tss6mibu4c63i2', 760000, 1, 760000, NULL, 0, 0, '', '', 51),
(38, 32, 'rdk00s074i1i4seat51nh109d6', 7600000, 1, 7600000, NULL, 0, 0, '', '', 52),
(39, 33, 'ibcpu4cam64hh6jvvlqde89v90', 760000, 1, 760000, NULL, 0, 0, '', '', 53),
(40, 35, 'r2hcu630iilbqufhd80udq4eh0', 760000, 1, 760000, NULL, 0, 0, '', '', 54),
(41, 36, 'krsem1sgk8k9smbs1uinikks42', 7600000, 1, 7600000, NULL, 0, 0, '', '', 55),
(42, 37, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, 1, 135000, NULL, 0, 0, '', '', 56),
(43, 37, 'q4asrlk395bqes71q3m1dj7a53', 135000, 1, 135000, NULL, 0, 0, '', '', 57),
(44, 27, 'mfuj32kovfsj87sum11433so15', 760000, 1, 760000, NULL, 0, 0, '', '', 58),
(45, 28, 'o82tantv1gh498mq2giekk0mj1', 760000, 1, 760000, NULL, 0, 0, '', '', 59),
(46, 29, 'vv3bvs960u0efu33mksbikfr02', 760000, 1, 760000, NULL, 0, 0, '', '', 60),
(47, 30, '77v49he85i8nuuet5p2vt9g7r0', 7600000, 1, 7600000, NULL, 0, 0, '', '', 61),
(48, 35, 'qs835th55ruep5q2f34fdimdg6', 760000, 1, 760000, NULL, 0, 0, '', '', 62),
(49, 36, '0v3amtlih28cip0bskvi8tr2t7', 7600000, 1, 7600000, NULL, 0, 0, '', '', 63),
(50, 37, 's34tnbg59l4psbpbc2jg4ru734', 135000, 1, 135000, NULL, 0, 0, '', '', 64),
(51, 27, 'jna4k52dg50ce0e2euknmpsc53', 760000, 1, 760000, NULL, 0, 0, '', '', 65),
(52, 27, '1mrapf9122qb0n9gd32j94l6f5', 2000, 3, 6000, NULL, 0, 0, '', '', 66),
(53, 27, 'sl6a5d5957d6n37tptrtp29mt4', 2000, 1, 2000, NULL, 0, 0, '', '', 67),
(54, 28, 'ape83laqntnptihbcmk5g0li26', 2000, 3, 6000, NULL, 0, 0, '', '', 68),
(55, 27, 'lc7opealpf3l1a0m2utp3nr4g7', 125100, 4, 500400, NULL, 0, 0, '', '', 69),
(56, 29, 'lc7opealpf3l1a0m2utp3nr4g7', 999000, 2, 1998000, NULL, 0, 0, '', '', 69),
(57, 38, 'lc7opealpf3l1a0m2utp3nr4g7', 219600, 2, 439200, NULL, 0, 0, '', '', 69),
(58, 35, '5h573qfbbcbulqljthad7scpd3', 199000, 2, 398000, NULL, 0, 0, '', '', 70),
(59, 36, '5h573qfbbcbulqljthad7scpd3', 179100, 1, 179100, NULL, 0, 0, '', '', 70),
(60, 37, '5h573qfbbcbulqljthad7scpd3', 179100, 2, 358200, NULL, 0, 0, '', '', 70),
(61, 27, '904nrn3lmfkbev7956opp4sbt5', 125100, 4, 500400, NULL, 0, 0, '', '', 71),
(62, 33, 'h2tteteqcbai73din008s3fbf1', 236700, 1, 236700, NULL, 0, 0, '', '', 72),
(63, 37, '9a4ohferctq5glunhc0up38tn3', 179100, 1, 179100, NULL, 0, 0, '', '', 73),
(64, 48, 'm77jhdf6kjq5n4t560luv05fu3', 0, 3, 0, NULL, 0, 0, '', '', 74);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cho_dem`
--

CREATE TABLE `cho_dem` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cho_dem`
--

INSERT INTO `cho_dem` (`id`, `name`, `image`) VALUES
(1, 'GIAN HÀNG LƯU NIỆM', 'chodem1.jpg'),
(2, 'GIAN HÀNG LƯU NIỆM      ', 'chodem2.jpg'),
(3, 'GIAN HÀNG LƯU NIỆM', 'chodem3.jpg'),
(4, 'GIAN HÀNG LƯU NIỆM', 'chodem4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `slideshow_home`, `banner1`, `banner2`) VALUES
(1, 'HOÀNG SA – AMC Co..Ltd', '', 'Giúp cho bữa ăn của người tiêu dùng có thêm nhiều lựa chọn phong phú hơn, tiện lợi hơn mà vẫn đảm bảo về chất lượng, an toàn vệ sinh thực phẩm.', 'HOÀNG SA – AMC Co..Ltd', 'logo-ptd.png', '', '', 'Nâng cao chất lượng và khẩu vị cho người tiêu dùng Việt, qua đó thể hiện được sự đa dạng trong nét văn hóa ẩm thực người Việt. “Ngon – sạch – Nhanh - chất lượng” là tiêu chí mà chúng tôi hướng đến để phục vụ quý vị một cảm giác tinh tế nhất trong bữa ăn thường ngày.', 'Số 2 Cao Văn Bé, Vĩnh Phước, TP.Nha Trang, Khánh', 'sale.hoangsa@gmail.com', '0972739193', '64 Trần Phú, Lộc Thọ, Thành phố Nha Trang, Khánh Hòa.', '', '', '66 Trần Phú, Lộc Thọ, TP.Nha Trang, Khánh Hòa', '22 Tô Hiến Thành, Tân Lập, Thành phố Nha Trang', '', '', 'https://www.facebook.com/hoangsanhatrang.vn', '', '', '<iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m', '', 'logo-ptd.png', '[\"{\\\"image\\\":\\\"vinxanh2.jpg\\\"}\",\"{\\\"image\\\":\\\"banner1.jpg\\\"}\"]', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `edit_state`) VALUES
(1, 1, 'vn', 'HOÀNG SA – AMC Co..Ltd', '', 'Giúp cho bữa ăn của người tiêu dùng có thêm nhiều lựa chọn phong phú hơn, tiện lợi hơn mà vẫn đảm bảo về chất lượng, an toàn vệ sinh thực phẩm.', 'HOÀNG SA – AMC Co..Ltd', '', '', 'Nâng cao chất lượng và khẩu vị cho người tiêu dùng Việt, qua đó thể hiện được sự đa dạng trong nét văn hóa ẩm thực người Việt. “Ngon – sạch – Nhanh - chất lượng” là tiêu chí mà chúng tôi hướng đến để phục vụ quý vị một cảm giác tinh tế nhất trong bữa ăn thường ngày.', 'Số 2 Cao Văn Bé, Vĩnh Phước, TP.Nha Trang, Khánh', 'sale.hoangsa@gmail.com', '0972739193', '64 Trần Phú, Lộc Thọ, Thành phố Nha Trang, Khánh Hòa.', '', '', '66 Trần Phú, Lộc Thọ, TP.Nha Trang, Khánh Hòa', '22 Tô Hiến Thành, Tân Lập, Thành phố Nha Trang', '', '', 'https://www.facebook.com/hoangsanhatrang.vn', '', '', '<p><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSGFub2ksIEhvw6BuIEtp4bq_bSwgSGFub2k!5e0!3m2!1sen!2s!4v1513235284242\" style=\"border:0\" width=\"600\"></iframe></p>\r\n', '', '', 1),
(2, 1, 'en', '', '', '', '', '', '', '', 'V-ONION Organic for your family', 'banhang@rio.net.vn', '+84 971 765 775', 'Số 12 ngõ 5, Tân Mỹ, P.Mỹ Đình 1, Q.Nam Từ Liêm, Hà Nội', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `he_thong`
--

CREATE TABLE `he_thong` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `he_thong`
--

INSERT INTO `he_thong` (`id`, `name`, `image`) VALUES
(1, 'VIEW', 'cafe1.jpg'),
(2, 'VIEW', 'cafe2.jpg'),
(3, 'VIEW', 'cafe3.jpg'),
(4, 'VIEW', 'cafe4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text CHARACTER SET utf8,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `chondichvu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`, `chondichvu`) VALUES
(18, 'Nguyễn Việt Hưng', 'viethung95cute@gmail.com', '', '', 'sdfgsdfg', '2018-05-02 12:01:44', NULL),
(19, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'Tesst  Liên hệ lần 1 ^_^ -_- :D :v :))', '2018-05-07 02:40:46', NULL),
(20, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', '', 'hà nội', '2019-10-05 10:14:48', 'Chọn dịch vụ muốn liên hệ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `map`
--

CREATE TABLE `map` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `map`
--

INSERT INTO `map` (`id`, `name`, `content`) VALUES
(1, 'NHÀ HÀNG HOÀNG SA', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3898.6313229997854!2d109.197459314013!3d12.27320993313966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317067f21d55960f%3A0x8ca6ecb5492f30e6!2zMiBDYW8gVsSDbiBCw6ksIFbEqW5oIFBoxrDhu5tjLCBUaMOgbmggcGjhu5EgTmhhIFRyYW5nLCBLaMOhbmggSMOyYSA2NTAwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1569051342273!5m2!1svi!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(2, 'Hải sản Vịnh Xanh', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3899.191216193104!2d109.19503031401256!3d12.23532853391758!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3170677ad48dbe63%3A0x5a53c8db74931d0a!2zNjYgVHLhuqduIFBow7osIEzhu5ljIFRo4buNLCBUaMOgbmggcGjhu5EgTmhhIFRyYW5nLCBLaMOhbmggSMOyYSA2NTAwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1569051258660!5m2!1svi!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(3, 'Chợ đêm Hoàng Sa', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3899.18614538926!2d109.19459471401254!3d12.235672133910503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3170677b2bf6cac9%3A0x6264136d33ee74a6!2zNjQgVHLhuqduIFBow7osIEzhu5ljIFRo4buNLCBUaMOgbmggcGjhu5EgTmhhIFRyYW5nLCBLaMOhbmggSMOyYSA2NTAwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1569051383748!5m2!1svi!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(4, 'Hệ thống cafe CCCP', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3899.1219660595975!2d109.18996741401263!3d12.24002013382136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3170677c3c1c7313%3A0xec8bbcdb61fbb458!2zMjIgVMO0IEhp4bq_biBUaMOgbmgsIFTDom4gTOG6rXAsIFRow6BuaCBwaOG7kSBOaGEgVHJhbmcsIEtow6FuaCBIw7JhIDY1MDAwMCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1569051420001!5m2!1svi!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(194, 'Dịch vụ', 2, 8, '#dichvuhoangsa', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(205, 'Về chúng tôi', 1, 8, '#gioithieuhoangsa', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(207, 'Khuyến mại', 3, 8, '#khuyenmaihoangsa', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(223, 'Cẩm nang', 6, 8, '#tintuchoangsa', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(224, 'Bản đồ', 9, 8, '#bandohoangsaea', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(226, 'Thư viện', 5, 8, '#videohoangsa', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(227, 'Liên hệ', 10, 8, '#lienhehoangsa', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(228, 'Thực đơn', 4, 8, '#thucdonhoangsa', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(365, 'vn', 'Dịch vụ', 1, '#dichvuhoangsa', 194),
(366, 'en', 'Product', 1, '', 194),
(387, 'vn', 'Về chúng tôi', 1, '#gioithieuhoangsa', 205),
(388, 'en', 'Introduce', 1, '', 205),
(391, 'vn', 'Khuyến mại', 1, '#khuyenmaihoangsa', 207),
(392, 'en', 'News', 1, '', 207),
(423, 'vn', 'Cẩm nang', 0, '#tintuchoangsa', 223),
(424, 'en', 'Tin tức', 0, '', 223),
(425, 'vn', 'Bản đồ', 0, '#bandohoangsaea', 224),
(426, 'en', 'Bản đồ', 0, '', 224),
(429, 'vn', 'Thư viện', 0, '#videohoangsa', 226),
(430, 'en', 'Vi', 0, '', 226),
(431, 'vn', 'Liên hệ', 0, '#lienhehoangsa', 227),
(432, 'en', 'Liên hệ', 0, '', 227),
(433, 'vn', 'Thực đơn', 0, '#thucdonhoangsa', 228),
(434, 'en', 'Thực đơn', 0, '#thucdonhoangsa', 228);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `newstag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newstag_arr`) VALUES
(69, 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 6', 'Đối với những bạn có nhu cầu và hoài bão mong muốn kinh doanh, hay làm một cái gì đó của riêng mình thì việc tìm kiếm những thương hiệu đã được gây dựng và dựa vào đó để phát triển cũng như có được định hướng kinh doanh cho riêng mình thì đây là một điều vô cùng tuyệt vời. Và nếu bạn đang ấp ủ một kế hoạch kinh doanh cho riêng mình thì đừng bỏ qua quy trình nhượng quyền bánh mì que Dala Bread.\r\n', '<p dir=\"ltr\" style=\"text-align:justify\"><em><strong>Đối với những bạn c&oacute; nhu cầu v&agrave; ho&agrave;i b&atilde;o mong muốn kinh doanh, hay l&agrave;m một c&aacute;i g&igrave; đ&oacute; của ri&ecirc;ng m&igrave;nh th&igrave; việc t&igrave;m kiếm những thương hiệu đ&atilde; được g&acirc;y dựng v&agrave; dựa v&agrave;o đ&oacute; để ph&aacute;t triển cũng như c&oacute; được định hướng kinh doanh cho ri&ecirc;ng m&igrave;nh th&igrave; đ&acirc;y l&agrave; một điều v&ocirc; c&ugrave;ng tuyệt vời. V&agrave; nếu bạn đang ấp ủ một kế hoạch kinh doanh cho ri&ecirc;ng m&igrave;nh th&igrave; đừng bỏ qua quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread.</strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bởi v&igrave;, thương hiệu Dala Bread sở hữu một <strong>quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread </strong>được x&acirc;y dựng cụ thể, chi tiết, r&otilde; r&agrave;ng gi&uacute;p bạn c&oacute; được sự cộng t&aacute;c v&agrave; ph&aacute;t triển thuận lợi, an to&agrave;n v&agrave; rất đảm bảo. Đ&acirc;y quả nhi&ecirc;n l&agrave; một lựa chọn cực ổn với những bạn y&ecirc;u th&iacute;ch việc kinh doanh tự do, v&agrave; những ấp ủ của bạn sẽ được gi&uacute;p sức bởi sự chuy&ecirc;n nghiệp của Dala Bread c&ugrave;ng với thương hiệu đ&atilde; được g&acirc;y dựng v&agrave; tạo dựng uy t&iacute;n tr&ecirc;n thị trường.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"quy trình nhượng quyền bánh mì que Dala Bread\" height=\"342\" src=\"/image/images/quy-trinh-nhuong-quyen-banh-mi-que-dalat-bread%20(1).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>B&aacute;nh m&igrave; thương hiệu Dala Bread</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Kinh doanh b&aacute;nh m&igrave; que c&oacute; đem lại lợi nhuận?</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; c&acirc;u hỏi m&agrave; chắc chắn bất cứ ai cũng sẽ hỏi v&agrave; thắc mắc, bởi việc đứng ra tự kinh doanh bất kỳ một sản phẩm hay mặt h&agrave;ng n&agrave;o đ&oacute; th&igrave; lợi nhuận lu&ocirc;n l&agrave; mục ti&ecirc;u v&agrave; mối quan t&acirc;m h&agrave;ng đầu. V&agrave; với <strong>quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread </strong>th&igrave; điều n&agrave;y sẽ l&agrave; một trong những bước gi&uacute;p bạn sẽ y&ecirc;n t&acirc;m hơn về sản phẩm m&igrave;nh sẽ lựa chọn để kinh doanh như b&aacute;nh m&igrave; que.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ch&iacute;nh v&igrave; thế, điều m&agrave; Dala Bread lu&ocirc;n cảm thấy tự h&agrave;o l&agrave; tạo ra được một cộng đồng c&oacute; chung ch&iacute; hướng kinh doanh nhưng vẫn được thực hiện v&agrave; quản l&yacute; một c&aacute;ch chuy&ecirc;n nghiệp với hệ thống quy tr&igrave;nh được quy định v&agrave; c&ocirc;ng khai r&otilde; r&agrave;ng để cho bất cứ một chi nh&aacute;nh, hoặc một đơn vị đơn lẻ n&agrave;o c&oacute; nhu cầu thực hiện tự kinh doanh.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"quy trình nhượng quyền bánh mì que Dala Bread\" height=\"392\" src=\"/image/images/quy-trinh-nhuong-quyen-banh-mi-que-dalat-bread%20(3).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Chiếc b&aacute;nh m&igrave; tiện lợi lu&ocirc;n đem đến cảm gi&aacute;c ngon miệng</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>H&atilde;y c&ugrave;ng t&igrave;m hiểu quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread để hiểu hơn về c&aacute;ch thức v&agrave; c&aacute;c bước thực hiện</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bạn c&oacute; thể rất bất ngờ khi cộng t&aacute;c với Dala Bread cần thực hiện một quy tr&igrave;nh nhượng quyền. Nhưng đ&acirc;y l&agrave; một bước v&ocirc; c&ugrave;ng quan trọng gi&uacute;p bảo vệ ch&iacute;nh quyền lợi của bạn, cũng như l&agrave; một bước tiếp cận gi&uacute;p bạn đ&aacute;nh gi&aacute; v&agrave; nhận định ch&iacute;nh x&aacute;c hơn với lựa chọn của m&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"quy trình nhượng quyền bánh mì que Dala Bread\" height=\"500\" src=\"/image/images/quy-trinh-nhuong-quyen-banh-mi-que-dalat-bread%20(2).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave;</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread bao gồm c&aacute;c bước sau:</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 1: T&igrave;m hiểu th&ocirc;ng tin về Dala Bread cũng như sản phẩm của ch&uacute;ng t&ocirc;i</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; điều ti&ecirc;n quyết m&agrave; bạn cần l&agrave;m khi lựa chọn kinh doanh bất kỳ một mặt h&agrave;ng n&agrave;o, để t&igrave;m hiểu th&ocirc;ng tin chi tiết v&agrave; cụ thể bạn h&atilde;y truy cập v&agrave;o website:<strong> <a href=\"http://mofoods.vn/\">http://mofoods.vn/</a>.</strong> Đ&acirc;y cũng l&agrave; c&aacute;ch m&agrave; ch&uacute;ng t&ocirc;i khẳng định uy t&iacute;n của m&igrave;nh đối với bạn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 2: Tư vấn chi tiết</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Việc tư vấn chi tiết n&agrave;y được thể hiện th&ocirc;ng qua việc mời bạn đến ch&iacute;nh văn ph&ograve;ng của ch&uacute;ng t&ocirc;i theo địa chỉ: Văn ph&ograve;ng 50 Đường số 7, phường Phước B&igrave;nh, quận 9 hoặc li&ecirc;n hệ Hotline : 0819 468 789 &ndash; 0819 968 768. Đ&acirc;y cũng l&agrave; c&aacute;ch để bạn x&aacute;c nhận về m&ocirc; h&igrave;nh l&agrave;m việc cũng như kinh doanh của ch&uacute;ng t&ocirc;i c&oacute; ph&ugrave; hợp với mục ti&ecirc;u của bạn đang hướng tới kh&ocirc;ng.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 3: K&yacute; hợp đồng ghi nhớ</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Sở dĩ bản hợp đồng n&agrave;y c&oacute; t&ecirc;n như vậy l&agrave; bởi v&igrave;, th&ocirc;ng tin thuộc bản hợp đồng m&ocirc; tả những r&agrave;ng buộc, y&ecirc;u cầu sau qu&aacute; tr&igrave;nh thảo luận với nhau. V&agrave; trong đ&oacute; cũng ghi ch&uacute; r&otilde; r&agrave;ng những phần đ&atilde; l&agrave;m, đang l&agrave; dở, v&agrave; chưa l&agrave;m...</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 4: T&igrave;m địa điểm kinh doanh</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; bước v&ocirc; c&ugrave;ng quan trọng, bởi đ&acirc;y ch&iacute;nh l&agrave; bước để bạn t&igrave;m kiếm được địa b&agrave;n kinh doanh thuận lợi v&agrave; bắt đầu c&ocirc;ng việc một c&aacute;ch thuận lợi.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đối với bước n&agrave;y, c&ocirc;ng ty c&oacute; quyền đồng &yacute; hoặc từ chối địa b&agrave;n m&agrave; bạn t&igrave;m kiếm dựa theo c&aacute;c ti&ecirc;u ch&iacute;: Khoảng c&aacute;ch với c&ocirc;ng ty, mật độ d&acirc;n cư, người đi đường... Đ&acirc;y ho&agrave;n to&agrave;n l&agrave; r&agrave;ng buộc ban đầu gi&uacute;p l&agrave;m r&otilde; v&agrave; c&oacute; sự thống nhất để c&oacute; được kết quả kinh doanh v&agrave; hợp t&aacute;c hiệu quả.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 5: Đ&agrave;o tạo, hướng dẫn</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Để đến được bước n&agrave;y, tức l&agrave; bạn đ&atilde; ch&iacute;nh thức k&yacute; hợp đồng với Dala Bread cũng như thanh to&aacute;n chi ph&iacute; hợp đồng. V&agrave; bạn sẽ được đ&agrave;o tạo, hội nhập cũng như học c&aacute;ch l&agrave;m b&aacute;nh m&igrave;, vận h&agrave;nh, v&agrave; c&ocirc;ng t&aacute;c quản l&yacute; như: Quản l&yacute; nguồn h&agrave;ng, quản l&yacute; nh&acirc;n vi&ecirc;n,...</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 6: Set up v&agrave; chuyển giao</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Việc setup sẽ được thực hiện một c&aacute;ch nhanh ch&oacute;ng khi đ&atilde; x&aacute;c nhận b&agrave;n giao v&agrave; địa điểm, xe b&aacute;nh m&igrave; cũng như c&aacute;c c&ocirc;ng cụ v&agrave; nguy&ecirc;n vật liệu sẽ được cung cấp đầy đủ đến bạn để đảm bảo bạn c&oacute; thể bắt đầu c&ocirc;ng việc kinh doanh một c&aacute;ch tốt nhất.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 7: Khai trương điểm b&aacute;n</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; giai đoạn m&agrave; c&ocirc;ng ty sẽ hỗ trợ bạn việc quảng b&aacute; thương hiệu, cũng như c&oacute; những hoạt động quảng c&aacute;o để thu h&uacute;t kh&aacute;ch h&agrave;ng gi&uacute;p bạn</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 8: Nghiệm thu</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ho&agrave;n tất mọi thủ tục v&agrave; bắt đầu kinh doanh thực thụ với cơ ngơi của bạn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">C&oacute; thể thấy rằng quy tr&igrave;nh để bắt đầu một c&ocirc;ng việc kinh doanh đ&atilde; được ch&uacute;ng t&ocirc;i sắp sẵn, bạn chỉ cần t&igrave;m hiểu, trao đổi, l&agrave;m r&otilde;...V&agrave; khi cảm thấy ph&ugrave; hợp bạn c&oacute; thể bắt đầu bất cứ l&uacute;c n&agrave;o c&ugrave;ng với sự đồng h&agrave;nh của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Để hiểu một c&aacute;ch chi tiết v&agrave; cụ thể hơn về <strong>quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread</strong>, bạn c&oacute; thể truy cập website:<strong> <a href=\"http://mofoods.vn\">http://mofoods.vn</a>,</strong> nếu c&oacute; bất kỳ th&ocirc;ng tin n&agrave;o cần giải đ&aacute;p h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i để c&ugrave;ng mở ra một cơ hội đối với bạn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Xem th&ecirc;m: <a href=\"http://mofoods.vn/chuong-trinh-hoc-tieng-anh-cung-banh-mi-que-da-lat-hap-dan-nhat\"><strong>Chương tr&igrave;nh học ti&eacute;ng anh c&ugrave;ng B&aacute;nh m&igrave; que Đ&agrave; Lạt hấp dẫn nhất</strong></a></p>\r\n', 'thuc-don-4-n.jpg', 0, 2, '', '2019-01-14 10:01:40', '2019-10-05 16:10:25', 1, '', '', '', '', '', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 6', 'Nếu bạn đang ấp ủ một kế hoạch kinh doanh cho riêng mình thì đừng bỏ qua quy trình nhượng quyền bánh mì que Dala Bread.\r\n', 'tin-tuc-chuoi-nha-hang-hoang-sa-6', 'quy trình nhượng quyền bánh mì que Dala Bread', 1, ''),
(70, 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 5', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !\r\n\r\nMang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa 700 pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp vào bậc nhất của thành phố.', '<p><em><strong>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</strong></em></p>\r\n\r\n<p><em><strong>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n', 'thuc-don-3-n.jpg', 0, 2, '', '2019-01-14 10:01:15', '2019-10-05 16:10:17', 1, '', '', '', '', '', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 5', 'tại sao nên kinh doanh bánh mì que nhượng quyền thương hiệu Đà Lạt?  Cùng chúng tôi tìm câu trả lời cho chính bạn nhé\r\n', 'tin-tuc-chuoi-nha-hang-hoang-sa-5', 'những lý do nên kinh doanh bánh mì que nhượng quyền ', 1, ''),
(71, 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 4', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !\r\n\r\nMang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa 700 pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp vào bậc nhất của thành phố.', '<p>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</p>\r\n\r\n<p>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n', 'thuc-don-7-n.jpg', 0, 2, '', '2019-01-14 11:01:00', '2019-10-05 16:10:10', 1, '', '', '', '', '', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 4', 'Kinh doanh bánh mì que nhượng quyền được rất nhiều các tiểu thương quan tâm. ', 'tin-tuc-chuoi-nha-hang-hoang-sa-4', 'Kinh doanh bánh mì que nhượng quyền', 1, ''),
(72, 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 3', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !\r\n\r\nMang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa 700 pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp vào bậc nhất của thành phố.', '<p><em><strong>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</strong></em></p>\r\n\r\n<p><em><strong>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</strong></em></p>\r\n', 'thuc-don-6-n.jpg', 0, 2, '', '2019-01-14 11:01:11', '2019-10-05 16:10:03', 1, '', '', '', '', '', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 3', 'Bánh mỳ que được xem là một món ăn đặc sắc và nổi tiếng trong nền văn hóa ẩm thực Việt Nam. Bạn có biết  bánh mỳ que ở đâu ngon. hãy cùng chúng tôi tìm hiểu', 'tin-tuc-chuoi-nha-hang-hoang-sa-3', 'bánh mỳ que ở đâu ngon', 1, ''),
(73, 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 2', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !\r\n\r\nMang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa 700 pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp vào bậc nhất của thành phố.', '<p><em><strong>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</strong></em></p>\r\n\r\n<p><em><strong>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</strong></em></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '10460317_624346931001788_986873438527726986_n.jpg', 0, 2, '', '2019-01-14 11:01:38', '2019-10-05 15:10:55', 1, '', '', '', '', '', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 2', 'Bánh mì que Dala Bread hương vị độc đáo, đa dạng, mang lại nhiều cảm giác tuyệt vời cho những thực khách với tình yêu bánh mì mãnh liệt. Thật sự ngon, bổ, rẻ.\r\n', 'tin-tuc-chuoi-nha-hang-hoang-sa-2', 'Bánh mì que Dala Bread', 1, ''),
(74, 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 1', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !\r\n\r\nMang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa 700 pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp vào bậc nhất của thành phố.', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><u><span style=\"font-size:12.0pt\"><span style=\"color:red\">Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</span></span></u></em></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><u><span style=\"font-size:12.0pt\"><span style=\"color:red\">Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</span></span></u></em></span></span></p>\r\n', '170-hai-san-3.jpg', 0, 2, '', '2019-01-22 14:01:28', '2019-10-05 15:10:46', 1, '', '', '', '', '', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 1', '', 'tin-tuc-chuoi-nha-hang-hoang-sa-1', '', 1, ''),
(75, 'Bài viết khuyễn mãi 1', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý  khách !\r\n                                    Mang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa\r\n                                    700pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp\r\n                                    vào bậc nhất của thành phố..', '<p>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</p>\r\n\r\n<p>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</p>\r\n', '170-hai-san-3.jpg', 0, 1, '', '2019-10-05 10:10:35', '2019-10-05 10:10:27', 1, '', '', '', '', '', 'Bài viết khuyễn mãi 1', '', 'bai-viet-khuyen-mai-1', '', 1, ''),
(76, 'Bài viết khuyễn mãi 2', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý  khách !\r\n                                    Mang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa\r\n                                    700pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp\r\n                                    vào bậc nhất của thành phố..', '<p>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</p>\r\n\r\n<p>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</p>\r\n', 've-ct-2.jpg', 0, 1, '', '2019-10-05 10:10:00', '2019-10-05 10:10:19', 1, '', '', '', '', '', 'Bài viết khuyễn mãi 2', '', 'bai-viet-khuyen-mai-2', '', 1, ''),
(77, 'Bài viết khuyễn mãi 3', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý  khách !\r\n                                    Mang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa\r\n                                    700pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp\r\n                                    vào bậc nhất của thành phố..', '<p>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</p>\r\n\r\n<p>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</p>\r\n', 've-ct-4.jpg', 0, 1, '', '2019-10-05 10:10:21', '2019-10-05 10:10:11', 1, '', '', '', '', '', 'Bài viết khuyễn mãi 3', '', 'bai-viet-khuyen-mai-3', '', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(1, 'Tin khuyến mãi', '', '', 0, 0, '2019-10-05 09:10:46', NULL, 1, '', '', '', '', '', '', 'Tin khuyến mãi', '', 'tin-khuyen-mai', '', 1),
(2, 'Cẩm nang', '', '', 0, 0, '2019-10-05 15:10:31', NULL, 1, '', '', '', '', '', '', 'Cẩm nang', '', 'cam-nang', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(1, 1, 'vn', 'Tin khuyến mãi', '', '', '', '', '', '', '', 0, 'tin-khuyen-mai', '', 'Tin khuyến mãi', ''),
(2, 1, 'en', 'english version Tin khuyến mãi', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-khuyen-mai', '', 'Tin khuyến mãi', ''),
(3, 2, 'vn', 'Cẩm nang', '', '', '', '', '', '', '', 0, 'cam-nang', '', 'Cẩm nang', ''),
(4, 2, 'en', 'english version Cẩm nang', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cam-nang', '', 'Cẩm nang', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag`
--

CREATE TABLE `newstag` (
  `newstag_id` int(11) NOT NULL,
  `newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sort_order` int(11) NOT NULL,
  `newstag_created_date` datetime NOT NULL,
  `newstag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `newstag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag`
--

INSERT INTO `newstag` (`newstag_id`, `newstag_name`, `newstag_des`, `newstag_content`, `newstag_sort_order`, `newstag_created_date`, `newstag_update_date`, `state`, `newstag_img`, `newstag_sub_info1`, `newstag_sub_info2`, `newstag_sub_info3`, `newstag_sub_info4`, `newstag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(2, 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'sách hot', 'chuyên sách', 'sach-hot', 'sach', 1),
(3, 'Vở đẹp', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'Vở đẹp', '', 'vo-dep', '', 1),
(4, 'Butb', '<p>bb</p>\r\n', '', 0, '2017-12-13 11:12:54', '2017-12-13 11:12:11', 1, '', '', '', '', '', '', 'Butb', 'bb', 'butb', 'bb', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag_languages`
--

CREATE TABLE `newstag_languages` (
  `id` int(11) NOT NULL,
  `newstag_id` int(11) NOT NULL,
  `languages_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_content` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lang_newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info5` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag_languages`
--

INSERT INTO `newstag_languages` (`id`, `newstag_id`, `languages_code`, `lang_newstag_name`, `lang_newstag_des`, `lang_newstag_content`, `lang_newstag_sub_info1`, `lang_newstag_sub_info2`, `lang_newstag_sub_info3`, `lang_newstag_sub_info4`, `lang_newstag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(3, 2, 'vn', 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach-hot', 'sach', 'sách hot', 'chuyên sách'),
(4, 2, 'en', 'sách en', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach', 'sach', 'sách', 'chuyên sách'),
(5, 3, 'vn', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(6, 3, 'en', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(7, 4, 'vn', 'But', '<p>but</p>\r\n', '', '', '', '', '', '', 1, 'butb', 'bb', 'Butb', 'bb'),
(8, 4, 'en', 'pen', '<p>pen</p>\r\n', '', '', '', '', '', '', 1, 'but', 'b', 'But', 'b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(137, 69, 'vn', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 6', 'Đối với những bạn có nhu cầu và hoài bão mong muốn kinh doanh, hay làm một cái gì đó của riêng mình thì việc tìm kiếm những thương hiệu đã được gây dựng và dựa vào đó để phát triển cũng như có được định hướng kinh doanh cho riêng mình thì đây là một điều vô cùng tuyệt vời. Và nếu bạn đang ấp ủ một kế hoạch kinh doanh cho riêng mình thì đừng bỏ qua quy trình nhượng quyền bánh mì que Dala Bread.\r\n', '<p dir=\"ltr\" style=\"text-align:justify\"><em><strong>Đối với những bạn c&oacute; nhu cầu v&agrave; ho&agrave;i b&atilde;o mong muốn kinh doanh, hay l&agrave;m một c&aacute;i g&igrave; đ&oacute; của ri&ecirc;ng m&igrave;nh th&igrave; việc t&igrave;m kiếm những thương hiệu đ&atilde; được g&acirc;y dựng v&agrave; dựa v&agrave;o đ&oacute; để ph&aacute;t triển cũng như c&oacute; được định hướng kinh doanh cho ri&ecirc;ng m&igrave;nh th&igrave; đ&acirc;y l&agrave; một điều v&ocirc; c&ugrave;ng tuyệt vời. V&agrave; nếu bạn đang ấp ủ một kế hoạch kinh doanh cho ri&ecirc;ng m&igrave;nh th&igrave; đừng bỏ qua quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread.</strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bởi v&igrave;, thương hiệu Dala Bread sở hữu một <strong>quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread </strong>được x&acirc;y dựng cụ thể, chi tiết, r&otilde; r&agrave;ng gi&uacute;p bạn c&oacute; được sự cộng t&aacute;c v&agrave; ph&aacute;t triển thuận lợi, an to&agrave;n v&agrave; rất đảm bảo. Đ&acirc;y quả nhi&ecirc;n l&agrave; một lựa chọn cực ổn với những bạn y&ecirc;u th&iacute;ch việc kinh doanh tự do, v&agrave; những ấp ủ của bạn sẽ được gi&uacute;p sức bởi sự chuy&ecirc;n nghiệp của Dala Bread c&ugrave;ng với thương hiệu đ&atilde; được g&acirc;y dựng v&agrave; tạo dựng uy t&iacute;n tr&ecirc;n thị trường.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"quy trình nhượng quyền bánh mì que Dala Bread\" height=\"342\" src=\"/image/images/quy-trinh-nhuong-quyen-banh-mi-que-dalat-bread%20(1).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>B&aacute;nh m&igrave; thương hiệu Dala Bread</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Kinh doanh b&aacute;nh m&igrave; que c&oacute; đem lại lợi nhuận?</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; c&acirc;u hỏi m&agrave; chắc chắn bất cứ ai cũng sẽ hỏi v&agrave; thắc mắc, bởi việc đứng ra tự kinh doanh bất kỳ một sản phẩm hay mặt h&agrave;ng n&agrave;o đ&oacute; th&igrave; lợi nhuận lu&ocirc;n l&agrave; mục ti&ecirc;u v&agrave; mối quan t&acirc;m h&agrave;ng đầu. V&agrave; với <strong>quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread </strong>th&igrave; điều n&agrave;y sẽ l&agrave; một trong những bước gi&uacute;p bạn sẽ y&ecirc;n t&acirc;m hơn về sản phẩm m&igrave;nh sẽ lựa chọn để kinh doanh như b&aacute;nh m&igrave; que.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ch&iacute;nh v&igrave; thế, điều m&agrave; Dala Bread lu&ocirc;n cảm thấy tự h&agrave;o l&agrave; tạo ra được một cộng đồng c&oacute; chung ch&iacute; hướng kinh doanh nhưng vẫn được thực hiện v&agrave; quản l&yacute; một c&aacute;ch chuy&ecirc;n nghiệp với hệ thống quy tr&igrave;nh được quy định v&agrave; c&ocirc;ng khai r&otilde; r&agrave;ng để cho bất cứ một chi nh&aacute;nh, hoặc một đơn vị đơn lẻ n&agrave;o c&oacute; nhu cầu thực hiện tự kinh doanh.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"quy trình nhượng quyền bánh mì que Dala Bread\" height=\"392\" src=\"/image/images/quy-trinh-nhuong-quyen-banh-mi-que-dalat-bread%20(3).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Chiếc b&aacute;nh m&igrave; tiện lợi lu&ocirc;n đem đến cảm gi&aacute;c ngon miệng</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>H&atilde;y c&ugrave;ng t&igrave;m hiểu quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread để hiểu hơn về c&aacute;ch thức v&agrave; c&aacute;c bước thực hiện</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bạn c&oacute; thể rất bất ngờ khi cộng t&aacute;c với Dala Bread cần thực hiện một quy tr&igrave;nh nhượng quyền. Nhưng đ&acirc;y l&agrave; một bước v&ocirc; c&ugrave;ng quan trọng gi&uacute;p bảo vệ ch&iacute;nh quyền lợi của bạn, cũng như l&agrave; một bước tiếp cận gi&uacute;p bạn đ&aacute;nh gi&aacute; v&agrave; nhận định ch&iacute;nh x&aacute;c hơn với lựa chọn của m&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"quy trình nhượng quyền bánh mì que Dala Bread\" height=\"500\" src=\"/image/images/quy-trinh-nhuong-quyen-banh-mi-que-dalat-bread%20(2).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave;</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread bao gồm c&aacute;c bước sau:</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 1: T&igrave;m hiểu th&ocirc;ng tin về Dala Bread cũng như sản phẩm của ch&uacute;ng t&ocirc;i</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; điều ti&ecirc;n quyết m&agrave; bạn cần l&agrave;m khi lựa chọn kinh doanh bất kỳ một mặt h&agrave;ng n&agrave;o, để t&igrave;m hiểu th&ocirc;ng tin chi tiết v&agrave; cụ thể bạn h&atilde;y truy cập v&agrave;o website:<strong> <a href=\"http://mofoods.vn/\">http://mofoods.vn/</a>.</strong> Đ&acirc;y cũng l&agrave; c&aacute;ch m&agrave; ch&uacute;ng t&ocirc;i khẳng định uy t&iacute;n của m&igrave;nh đối với bạn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 2: Tư vấn chi tiết</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Việc tư vấn chi tiết n&agrave;y được thể hiện th&ocirc;ng qua việc mời bạn đến ch&iacute;nh văn ph&ograve;ng của ch&uacute;ng t&ocirc;i theo địa chỉ: Văn ph&ograve;ng 50 Đường số 7, phường Phước B&igrave;nh, quận 9 hoặc li&ecirc;n hệ Hotline : 0819 468 789 &ndash; 0819 968 768. Đ&acirc;y cũng l&agrave; c&aacute;ch để bạn x&aacute;c nhận về m&ocirc; h&igrave;nh l&agrave;m việc cũng như kinh doanh của ch&uacute;ng t&ocirc;i c&oacute; ph&ugrave; hợp với mục ti&ecirc;u của bạn đang hướng tới kh&ocirc;ng.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 3: K&yacute; hợp đồng ghi nhớ</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Sở dĩ bản hợp đồng n&agrave;y c&oacute; t&ecirc;n như vậy l&agrave; bởi v&igrave;, th&ocirc;ng tin thuộc bản hợp đồng m&ocirc; tả những r&agrave;ng buộc, y&ecirc;u cầu sau qu&aacute; tr&igrave;nh thảo luận với nhau. V&agrave; trong đ&oacute; cũng ghi ch&uacute; r&otilde; r&agrave;ng những phần đ&atilde; l&agrave;m, đang l&agrave; dở, v&agrave; chưa l&agrave;m...</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 4: T&igrave;m địa điểm kinh doanh</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; bước v&ocirc; c&ugrave;ng quan trọng, bởi đ&acirc;y ch&iacute;nh l&agrave; bước để bạn t&igrave;m kiếm được địa b&agrave;n kinh doanh thuận lợi v&agrave; bắt đầu c&ocirc;ng việc một c&aacute;ch thuận lợi.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đối với bước n&agrave;y, c&ocirc;ng ty c&oacute; quyền đồng &yacute; hoặc từ chối địa b&agrave;n m&agrave; bạn t&igrave;m kiếm dựa theo c&aacute;c ti&ecirc;u ch&iacute;: Khoảng c&aacute;ch với c&ocirc;ng ty, mật độ d&acirc;n cư, người đi đường... Đ&acirc;y ho&agrave;n to&agrave;n l&agrave; r&agrave;ng buộc ban đầu gi&uacute;p l&agrave;m r&otilde; v&agrave; c&oacute; sự thống nhất để c&oacute; được kết quả kinh doanh v&agrave; hợp t&aacute;c hiệu quả.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 5: Đ&agrave;o tạo, hướng dẫn</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Để đến được bước n&agrave;y, tức l&agrave; bạn đ&atilde; ch&iacute;nh thức k&yacute; hợp đồng với Dala Bread cũng như thanh to&aacute;n chi ph&iacute; hợp đồng. V&agrave; bạn sẽ được đ&agrave;o tạo, hội nhập cũng như học c&aacute;ch l&agrave;m b&aacute;nh m&igrave;, vận h&agrave;nh, v&agrave; c&ocirc;ng t&aacute;c quản l&yacute; như: Quản l&yacute; nguồn h&agrave;ng, quản l&yacute; nh&acirc;n vi&ecirc;n,...</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 6: Set up v&agrave; chuyển giao</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Việc setup sẽ được thực hiện một c&aacute;ch nhanh ch&oacute;ng khi đ&atilde; x&aacute;c nhận b&agrave;n giao v&agrave; địa điểm, xe b&aacute;nh m&igrave; cũng như c&aacute;c c&ocirc;ng cụ v&agrave; nguy&ecirc;n vật liệu sẽ được cung cấp đầy đủ đến bạn để đảm bảo bạn c&oacute; thể bắt đầu c&ocirc;ng việc kinh doanh một c&aacute;ch tốt nhất.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 7: Khai trương điểm b&aacute;n</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; giai đoạn m&agrave; c&ocirc;ng ty sẽ hỗ trợ bạn việc quảng b&aacute; thương hiệu, cũng như c&oacute; những hoạt động quảng c&aacute;o để thu h&uacute;t kh&aacute;ch h&agrave;ng gi&uacute;p bạn</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 8: Nghiệm thu</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ho&agrave;n tất mọi thủ tục v&agrave; bắt đầu kinh doanh thực thụ với cơ ngơi của bạn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">C&oacute; thể thấy rằng quy tr&igrave;nh để bắt đầu một c&ocirc;ng việc kinh doanh đ&atilde; được ch&uacute;ng t&ocirc;i sắp sẵn, bạn chỉ cần t&igrave;m hiểu, trao đổi, l&agrave;m r&otilde;...V&agrave; khi cảm thấy ph&ugrave; hợp bạn c&oacute; thể bắt đầu bất cứ l&uacute;c n&agrave;o c&ugrave;ng với sự đồng h&agrave;nh của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Để hiểu một c&aacute;ch chi tiết v&agrave; cụ thể hơn về <strong>quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread</strong>, bạn c&oacute; thể truy cập website:<strong> <a href=\"http://mofoods.vn\">http://mofoods.vn</a>,</strong> nếu c&oacute; bất kỳ th&ocirc;ng tin n&agrave;o cần giải đ&aacute;p h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i để c&ugrave;ng mở ra một cơ hội đối với bạn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Xem th&ecirc;m: <a href=\"http://mofoods.vn/chuong-trinh-hoc-tieng-anh-cung-banh-mi-que-da-lat-hap-dan-nhat\"><strong>Chương tr&igrave;nh học ti&eacute;ng anh c&ugrave;ng B&aacute;nh m&igrave; que Đ&agrave; Lạt hấp dẫn nhất</strong></a></p>\r\n', '', '', '', '', '', 0, 'tin-tuc-chuoi-nha-hang-hoang-sa-6', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 6', 'Nếu bạn đang ấp ủ một kế hoạch kinh doanh cho riêng mình thì đừng bỏ qua quy trình nhượng quyền bánh mì que Dala Bread.\r\n', 'quy trình nhượng quyền bánh mì que Dala Bread'),
(138, 69, 'en', 'english version BẠN ĐÃ BIẾT ĐẾN QUY TRÌNH NHƯỢNG QUYỀN BÁNH MÌ QUE DALAT BREAD ĐỂ BẮT ĐẦU KẾ HOẠCH KINH DOANH CHO RIÊNG MÌNH', 'english version Đối với những bạn có nhu cầu và hoài bão mong muốn kinh doanh, hay làm một cái gì đó của riêng mình thì việc tìm kiếm những thương hiệu đã được gây dựng và dựa vào đó để phát triển cũng như có được định hướng kinh doanh cho riêng mình thì đây là một điều vô cùng tuyệt vời. Và nếu bạn đang ấp ủ một kế hoạch kinh doanh cho riêng mình thì đừng bỏ qua quy trình nhượng quyền bánh mì que Dala Bread.\r\n', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><em><strong>Đối với những bạn c&oacute; nhu cầu v&agrave; ho&agrave;i b&atilde;o mong muốn kinh doanh, hay l&agrave;m một c&aacute;i g&igrave; đ&oacute; của ri&ecirc;ng m&igrave;nh th&igrave; việc t&igrave;m kiếm những thương hiệu đ&atilde; được g&acirc;y dựng v&agrave; dựa v&agrave;o đ&oacute; để ph&aacute;t triển cũng như c&oacute; được định hướng kinh doanh cho ri&ecirc;ng m&igrave;nh th&igrave; đ&acirc;y l&agrave; một điều v&ocirc; c&ugrave;ng tuyệt vời. V&agrave; nếu bạn đang ấp ủ một kế hoạch kinh doanh cho ri&ecirc;ng m&igrave;nh th&igrave; đừng bỏ qua quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread.</strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bởi v&igrave;, thương hiệu Dala Bread sở hữu một <strong>quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread </strong>được x&acirc;y dựng cụ thể, chi tiết, r&otilde; r&agrave;ng gi&uacute;p bạn c&oacute; được sự cộng t&aacute;c v&agrave; ph&aacute;t triển thuận lợi, an to&agrave;n v&agrave; rất đảm bảo. Đ&acirc;y quả nhi&ecirc;n l&agrave; một lựa chọn cực ổn với những bạn y&ecirc;u th&iacute;ch việc kinh doanh tự do, v&agrave; những ấp ủ của bạn sẽ được gi&uacute;p sức bởi sự chuy&ecirc;n nghiệp của Dala Bread c&ugrave;ng với thương hiệu đ&atilde; được g&acirc;y dựng v&agrave; tạo dựng uy t&iacute;n tr&ecirc;n thị trường.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"quy trình nhượng quyền bánh mì que Dala Bread\" height=\"342\" src=\"/image/images/quy-trinh-nhuong-quyen-banh-mi-que-dalat-bread%20(1).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>B&aacute;nh m&igrave; thương hiệu Dala Bread</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Kinh doanh b&aacute;nh m&igrave; que c&oacute; đem lại lợi nhuận?</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; c&acirc;u hỏi m&agrave; chắc chắn bất cứ ai cũng sẽ hỏi v&agrave; thắc mắc, bởi việc đứng ra tự kinh doanh bất kỳ một sản phẩm hay mặt h&agrave;ng n&agrave;o đ&oacute; th&igrave; lợi nhuận lu&ocirc;n l&agrave; mục ti&ecirc;u v&agrave; mối quan t&acirc;m h&agrave;ng đầu. V&agrave; với <strong>quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread </strong>th&igrave; điều n&agrave;y sẽ l&agrave; một trong những bước gi&uacute;p bạn sẽ y&ecirc;n t&acirc;m hơn về sản phẩm m&igrave;nh sẽ lựa chọn để kinh doanh như b&aacute;nh m&igrave; que.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ch&iacute;nh v&igrave; thế, điều m&agrave; Dala Bread lu&ocirc;n cảm thấy tự h&agrave;o l&agrave; tạo ra được một cộng đồng c&oacute; chung ch&iacute; hướng kinh doanh nhưng vẫn được thực hiện v&agrave; quản l&yacute; một c&aacute;ch chuy&ecirc;n nghiệp với hệ thống quy tr&igrave;nh được quy định v&agrave; c&ocirc;ng khai r&otilde; r&agrave;ng để cho bất cứ một chi nh&aacute;nh, hoặc một đơn vị đơn lẻ n&agrave;o c&oacute; nhu cầu thực hiện tự kinh doanh.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"quy trình nhượng quyền bánh mì que Dala Bread\" height=\"392\" src=\"/image/images/quy-trinh-nhuong-quyen-banh-mi-que-dalat-bread%20(3).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Chiếc b&aacute;nh m&igrave; tiện lợi lu&ocirc;n đem đến cảm gi&aacute;c ngon miệng</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>H&atilde;y c&ugrave;ng t&igrave;m hiểu quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread để hiểu hơn về c&aacute;ch thức v&agrave; c&aacute;c bước thực hiện</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bạn c&oacute; thể rất bất ngờ khi cộng t&aacute;c với Dala Bread cần thực hiện một quy tr&igrave;nh nhượng quyền. Nhưng đ&acirc;y l&agrave; một bước v&ocirc; c&ugrave;ng quan trọng gi&uacute;p bảo vệ ch&iacute;nh quyền lợi của bạn, cũng như l&agrave; một bước tiếp cận gi&uacute;p bạn đ&aacute;nh gi&aacute; v&agrave; nhận định ch&iacute;nh x&aacute;c hơn với lựa chọn của m&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"quy trình nhượng quyền bánh mì que Dala Bread\" height=\"500\" src=\"/image/images/quy-trinh-nhuong-quyen-banh-mi-que-dalat-bread%20(2).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave;</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread bao gồm c&aacute;c bước sau:</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 1: T&igrave;m hiểu th&ocirc;ng tin về Dala Bread cũng như sản phẩm của ch&uacute;ng t&ocirc;i</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; điều ti&ecirc;n quyết m&agrave; bạn cần l&agrave;m khi lựa chọn kinh doanh bất kỳ một mặt h&agrave;ng n&agrave;o, để t&igrave;m hiểu th&ocirc;ng tin chi tiết v&agrave; cụ thể bạn h&atilde;y truy cập v&agrave;o website:<strong> <a href=\"http://mofoods.vn/\">http://mofoods.vn/</a>.</strong> Đ&acirc;y cũng l&agrave; c&aacute;ch m&agrave; ch&uacute;ng t&ocirc;i khẳng định uy t&iacute;n của m&igrave;nh đối với bạn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 2: Tư vấn chi tiết</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Việc tư vấn chi tiết n&agrave;y được thể hiện th&ocirc;ng qua việc mời bạn đến ch&iacute;nh văn ph&ograve;ng của ch&uacute;ng t&ocirc;i theo địa chỉ: Văn ph&ograve;ng 50 Đường số 7, phường Phước B&igrave;nh, quận 9 hoặc li&ecirc;n hệ Hotline : 0819 468 789 &ndash; 0819 968 768. Đ&acirc;y cũng l&agrave; c&aacute;ch để bạn x&aacute;c nhận về m&ocirc; h&igrave;nh l&agrave;m việc cũng như kinh doanh của ch&uacute;ng t&ocirc;i c&oacute; ph&ugrave; hợp với mục ti&ecirc;u của bạn đang hướng tới kh&ocirc;ng.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 3: K&yacute; hợp đồng ghi nhớ</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Sở dĩ bản hợp đồng n&agrave;y c&oacute; t&ecirc;n như vậy l&agrave; bởi v&igrave;, th&ocirc;ng tin thuộc bản hợp đồng m&ocirc; tả những r&agrave;ng buộc, y&ecirc;u cầu sau qu&aacute; tr&igrave;nh thảo luận với nhau. V&agrave; trong đ&oacute; cũng ghi ch&uacute; r&otilde; r&agrave;ng những phần đ&atilde; l&agrave;m, đang l&agrave; dở, v&agrave; chưa l&agrave;m...</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 4: T&igrave;m địa điểm kinh doanh</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; bước v&ocirc; c&ugrave;ng quan trọng, bởi đ&acirc;y ch&iacute;nh l&agrave; bước để bạn t&igrave;m kiếm được địa b&agrave;n kinh doanh thuận lợi v&agrave; bắt đầu c&ocirc;ng việc một c&aacute;ch thuận lợi.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đối với bước n&agrave;y, c&ocirc;ng ty c&oacute; quyền đồng &yacute; hoặc từ chối địa b&agrave;n m&agrave; bạn t&igrave;m kiếm dựa theo c&aacute;c ti&ecirc;u ch&iacute;: Khoảng c&aacute;ch với c&ocirc;ng ty, mật độ d&acirc;n cư, người đi đường... Đ&acirc;y ho&agrave;n to&agrave;n l&agrave; r&agrave;ng buộc ban đầu gi&uacute;p l&agrave;m r&otilde; v&agrave; c&oacute; sự thống nhất để c&oacute; được kết quả kinh doanh v&agrave; hợp t&aacute;c hiệu quả.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 5: Đ&agrave;o tạo, hướng dẫn</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Để đến được bước n&agrave;y, tức l&agrave; bạn đ&atilde; ch&iacute;nh thức k&yacute; hợp đồng với Dala Bread cũng như thanh to&aacute;n chi ph&iacute; hợp đồng. V&agrave; bạn sẽ được đ&agrave;o tạo, hội nhập cũng như học c&aacute;ch l&agrave;m b&aacute;nh m&igrave;, vận h&agrave;nh, v&agrave; c&ocirc;ng t&aacute;c quản l&yacute; như: Quản l&yacute; nguồn h&agrave;ng, quản l&yacute; nh&acirc;n vi&ecirc;n,...</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 6: Set up v&agrave; chuyển giao</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Việc setup sẽ được thực hiện một c&aacute;ch nhanh ch&oacute;ng khi đ&atilde; x&aacute;c nhận b&agrave;n giao v&agrave; địa điểm, xe b&aacute;nh m&igrave; cũng như c&aacute;c c&ocirc;ng cụ v&agrave; nguy&ecirc;n vật liệu sẽ được cung cấp đầy đủ đến bạn để đảm bảo bạn c&oacute; thể bắt đầu c&ocirc;ng việc kinh doanh một c&aacute;ch tốt nhất.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 7: Khai trương điểm b&aacute;n</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đ&acirc;y l&agrave; giai đoạn m&agrave; c&ocirc;ng ty sẽ hỗ trợ bạn việc quảng b&aacute; thương hiệu, cũng như c&oacute; những hoạt động quảng c&aacute;o để thu h&uacute;t kh&aacute;ch h&agrave;ng gi&uacute;p bạn</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bước 8: Nghiệm thu</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ho&agrave;n tất mọi thủ tục v&agrave; bắt đầu kinh doanh thực thụ với cơ ngơi của bạn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">C&oacute; thể thấy rằng quy tr&igrave;nh để bắt đầu một c&ocirc;ng việc kinh doanh đ&atilde; được ch&uacute;ng t&ocirc;i sắp sẵn, bạn chỉ cần t&igrave;m hiểu, trao đổi, l&agrave;m r&otilde;...V&agrave; khi cảm thấy ph&ugrave; hợp bạn c&oacute; thể bắt đầu bất cứ l&uacute;c n&agrave;o c&ugrave;ng với sự đồng h&agrave;nh của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Để hiểu một c&aacute;ch chi tiết v&agrave; cụ thể hơn về <strong>quy tr&igrave;nh nhượng quyền b&aacute;nh m&igrave; que Dala Bread</strong>, bạn c&oacute; thể truy cập website:<strong> <a href=\"http://mofoods.vn\">http://mofoods.vn</a>,</strong> nếu c&oacute; bất kỳ th&ocirc;ng tin n&agrave;o cần giải đ&aacute;p h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i để c&ugrave;ng mở ra một cơ hội đối với bạn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Xem th&ecirc;m: <a href=\"http://mofoods.vn/chuong-trinh-hoc-tieng-anh-cung-banh-mi-que-da-lat-hap-dan-nhat\"><strong>Chương tr&igrave;nh học ti&eacute;ng anh c&ugrave;ng B&aacute;nh m&igrave; que Đ&agrave; Lạt hấp dẫn nhất</strong></a></p>\r\n', '', '', '', '', '', 0, 'en-ban-da-biet-den-quy-trinh-nhuong-quyen-banh-mi-que-dalat-bread-de-bat-dau-ke-hoach-kinh-doanh-cho-rieng-minh', 'BẠN ĐÃ BIẾT ĐẾN QUY TRÌNH NHƯỢNG QUYỀN BÁNH MÌ QUE DALAT BREAD ĐỂ BẮT ĐẦU KẾ HOẠCH KINH DOANH CHO RIÊNG MÌNH', 'Nếu bạn đang ấp ủ một kế hoạch kinh doanh cho riêng mình thì đừng bỏ qua quy trình nhượng quyền bánh mì que Dala Bread.\r\n', 'quy trình nhượng quyền bánh mì que Dala Bread'),
(139, 70, 'vn', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 5', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !\r\n\r\nMang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa 700 pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp vào bậc nhất của thành phố.', '<p><em><strong>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</strong></em></p>\r\n\r\n<p><em><strong>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n', '', '', '', '', '', 0, 'tin-tuc-chuoi-nha-hang-hoang-sa-5', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 5', 'tại sao nên kinh doanh bánh mì que nhượng quyền thương hiệu Đà Lạt?  Cùng chúng tôi tìm câu trả lời cho chính bạn nhé\r\n', 'những lý do nên kinh doanh bánh mì que nhượng quyền '),
(140, 70, 'en', 'english version Những lý do nên kinh doanh bánh mì que nhượng quyền thương hiệu Đà Lạt', 'english version Bạn đang tìm một hướng kinh doanh mới? Bạn đang muốn có thêm thu nhập?… Hãy cùng tìm hiểu những lý do nên kinh doanh bánh mì que nhượng quyền thương hiệu Đà Lạt và tìm câu trả lời cho chính bạn.\r\n', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><em><strong>Bạn đang t&igrave;m một hướng kinh doanh mới? Bạn đang muốn c&oacute; th&ecirc;m thu nhập?&hellip; H&atilde;y c&ugrave;ng t&igrave;m hiểu những l&yacute; do n&ecirc;n kinh doanh b&aacute;nh m&igrave; que nhượng quyền thương hiệu Đ&agrave; Lạt v&agrave; t&igrave;m c&acirc;u trả lời cho ch&iacute;nh bạn.</strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Chất lượng v&agrave; gi&aacute; trị của thương hiệu B&aacute;nh m&igrave; que Đ&agrave; Lạt sẽ l&agrave; động lực lớn cho c&aacute;c dự định của bạn</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"những lý do nên kinh doanh bánh mì que nhượng quyền \" height=\"900\" src=\"/image/images/nhung-ly-do-nen-kinh-doanh-banh-mi-que-nhuong-quyen-thuong%20(1).jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Bạn đang t&igrave;m cho m&igrave;nh một hướng kinh doanh kh&aacute;c biệt cho bản th&acirc;n? Bạn cần t&igrave;m một c&ocirc;ng việc tự chủ được về thời gian v&agrave; cuộc sống của bản th&acirc;n? Bạn th&iacute;ch ẩm thực v&agrave; muốn t&igrave;m một c&ocirc;ng việc c&oacute; li&ecirc;n quan đến ẩm thực&hellip; c&ograve;n nhiều v&agrave; nhiều những l&yacute; do, những c&acirc;u hỏi sẽ được giải quyết qua việc t&igrave;m hiểu<strong> những l&yacute; do n&ecirc;n kinh doanh b&aacute;nh m&igrave; que nhượng quyền</strong> thương hiệu Đ&agrave; Lạt v&agrave; hơn hết, bạn muốn nguồn thu nhập đến từ việc kinh doanh n&agrave;y sẽ đủ ổn định để l&agrave;m động lực cho c&aacute;c c&ocirc;ng việc, dự định tiếp theo của m&igrave;nh trong hiện tại v&agrave; tương lai.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Bạn đ&atilde; biết về h&igrave;nh thức kinh doanh b&aacute;nh m&igrave; que nhượng quyền thương hiệu Đ&agrave; Lạt chưa?</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"những lý do nên kinh doanh bánh mì que nhượng quyền \" height=\"409\" src=\"/image/images/nhung-ly-do-nen-kinh-doanh-banh-mi-que-nhuong-quyen-thuong%20(2).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>T&iacute;ch lũy vốn từ kinh doanh nhượng quyền B&aacute;nh m&igrave; que Đ&agrave; Lạt rất nhanh ch&oacute;ng</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Thương hiệu B&aacute;nh m&igrave; que Đ&agrave; Lạt l&agrave; một trong c&aacute;c nh&atilde;n hiệu b&aacute;nh m&igrave; đang rất nổi tiếng tr&ecirc;n khắp cả nước bởi chất lượng v&agrave; những gi&aacute; trị m&agrave; sản phẩm n&agrave;y mang lại. Với mong muốn đem lại th&ecirc;m nhiều những bữa ăn ngon cho người d&acirc;n Việt Nam đồng thời quảng b&aacute; thương hiệu Việt Nam đến cho bạn b&egrave; v&agrave; du kh&aacute;ch quốc tế, B&aacute;nh m&igrave; que Đ&agrave; Lạt sẽ nh&acirc;n rộng h&igrave;nh thức kinh doanh nhượng quyền, từ đ&oacute; c&aacute;c đối t&aacute;c nhận nhượng quyền của thương hiệu được ph&eacute;p tự m&igrave;nh thực hiện việc b&aacute;n sản phẩm thuộc danh mục h&agrave;ng h&oacute;a m&agrave; B&aacute;nh m&igrave; que Đ&agrave; Lạt cung cấp dựa tr&ecirc;n những điều kiện được đề thống nhất từ trước v&agrave; b&ecirc;n đối t&aacute;c sẽ thanh to&aacute;n một khoản ph&iacute; tương ứng cho nh&atilde;n hiệu B&aacute;nh m&igrave; que Đ&agrave; Lạt. Điều kiện để bạn trở th&agrave;nh đối t&aacute;c của thương hiệu l&agrave;:</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">- Vốn khởi điểm tr&ecirc;n 06 triệu đồng.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">- C&oacute; khả năng sở hữu mặt bằng kinh doanh tại c&aacute;c nơi tập trung đ&ocirc;ng người như trường học, khu d&acirc;n cư&hellip;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Vậy theo bạn, những l&yacute; do n&ecirc;n kinh doanh b&aacute;nh m&igrave; que nhượng quyền thương hiệu Đ&agrave; Lạt l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">- Bạn sẽ c&oacute; một hướng kinh doanh ổn định: Đến với h&igrave;nh thức kinh doanh nhượng quyền b&aacute;nh m&igrave; que Đ&agrave; Lạt, với thương hiệu v&agrave; chất lượng sản phẩm được khẳng định từ trước đ&oacute; đối với người ti&ecirc;u d&ugrave;ng tr&ecirc;n cả nước, bạn chỉ cần ki&ecirc;n tr&igrave; l&agrave;m việc th&ecirc;m một kế hoạch tốt th&igrave; nguồn thu nhập từ việc kinh doanh của bạn sẽ ổn định v&agrave; ph&aacute;t triển một c&aacute;ch khả quan, gi&uacute;p bạn giải quyết ph&iacute; sinh hoạt, t&iacute;ch lũy vốn cho việc ph&aacute;t triển kinh doanh v&agrave; c&aacute;c dự định kh&aacute;c của bạn. Đ&acirc;y l&agrave; một trong những yếu tố h&agrave;ng đầu trong <strong>những l&yacute; do n&ecirc;n kinh doanh b&aacute;nh m&igrave; que nhượng quyền</strong> thương hiệu Đ&agrave; Lạt m&agrave; bạn n&ecirc;n c&acirc;n nhắc.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"những lý do nên kinh doanh bánh mì que nhượng quyền \" height=\"389\" src=\"/image/images/nhung-ly-do-nen-kinh-doanh-banh-mi-que-nhuong-quyen-thuong%20(3).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>H&atilde;y đến với th&agrave;nh c&ocirc;ng của bạn c&ugrave;ng thương hiệu B&aacute;nh m&igrave; que Đ&agrave; Lạt</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">- Bạn sẽ c&oacute; nhiều sự hỗ trợ, quyền lợi từ thương hiệu: Trở th&agrave;nh đối t&aacute;c thương hiệu b&aacute;nh m&igrave; que Đ&agrave; Lạt, ch&uacute;ng t&ocirc;i c&oacute; thể gi&uacute;p bạn với những thỏa thuận ph&ugrave; hợp v&agrave; c&oacute; lợi nhất cho bạn để bạn c&oacute; thể y&ecirc;n t&acirc;m l&agrave;m điều bạn muốn kể cả khi bạn c&oacute; giới hạn về vốn hay mặt bằng kinh doanh. B&ecirc;n cạnh đ&oacute;, ch&uacute;ng t&ocirc;i c&ograve;n c&oacute; c&aacute;c hoạt động li&ecirc;n kết gi&uacute;p mở rộng việc kinh doanh của bạn như kinh doanh th&ecirc;m c&aacute;c hoạt động kh&aacute;c như c&agrave; ph&ecirc; take away, ăn vặt&hellip; Bạn kh&ocirc;ng hề c&ocirc; đơn tr&ecirc;n con đường th&agrave;nh c&ocirc;ng v&igrave; c&oacute; ch&uacute;ng t&ocirc;i b&ecirc;n cạnh bạn, một trong những yếu tố kh&ocirc;ng thể bỏ qua trong<strong> những l&yacute; do n&ecirc;n kinh doanh b&aacute;nh m&igrave; que nhượng quyền </strong>thương hiệu Đ&agrave; Lạt.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">- Bạn sẽ c&oacute; cơ hội t&iacute;ch lũy được kinh nghiệm v&agrave; vốn cho c&aacute;c dự định trong tương lai: Bạn ấp ủ rất nhiều c&aacute;c dự định nhưng điều kiện về vốn, kinh nghiệm&hellip; hiện tại kh&ocirc;ng cho ph&eacute;p bạn thực hiện điều đ&oacute;. Đừng băn khoăn m&agrave; h&atilde;y chọn ngay h&igrave;nh thức kinh doanh nhượng quyền thương hiệu B&aacute;nh m&igrave; que Đ&agrave; Lạt, nơi bạn sẽ l&agrave; &ocirc;ng chủ, nh&acirc;n vi&ecirc;n phục vụ, nh&acirc;n vi&ecirc;n tiếp thị&hellip; hay bất cứ vai tr&ograve; n&agrave;o m&agrave; bạn muốn, gi&uacute;p bạn tiếp thu được kinh nghiệm từ nhiều kh&iacute;a cạnh. B&ecirc;n cạnh đ&oacute;, từ việc kinh doanh mang t&iacute;nh ổn định cao n&agrave;y th&igrave; bạn sẽ kh&ocirc;ng mất qu&aacute; nhiều thời gian để t&iacute;ch lũy nguồn vốn m&agrave; m&igrave;nh muốn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">- Tự chủ thời gian biểu của bạn th&acirc;n: Ho&agrave;n cảnh gia đ&igrave;nh, cuộc sống của bạn đ&ograve;i hỏi bạn c&oacute; một thời gian biểu kh&ocirc;ng ổn định, đừng lo, việc kinh doanh b&aacute;nh m&igrave; que nhượng quyền c&ugrave;ng ch&uacute;ng t&ocirc;i sẽ giải ph&oacute;ng bạn khỏi những &ldquo;khung giờ chết&rdquo; m&agrave; c&aacute;c c&ocirc;ng việc kh&aacute;c y&ecirc;u cầu, gi&uacute;p bạn c&oacute; nhiều thời gian hơn cho bản th&acirc;n v&agrave; những người xung quanh m&agrave; vẫn đem lại nguồn thu nhập ổn định cho bản th&acirc;n m&igrave;nh. Đ&acirc;y l&agrave; một c&acirc;u trả lời cho rất nhiều vấn đề từ cuộc sống m&agrave; hầu hết c&aacute;c bạn đang cần khi t&igrave;m hiểu <strong>những l&yacute; do n&ecirc;n kinh doanh b&aacute;nh m&igrave; que nhượng quyền</strong> thương hiệu Đ&agrave; Lạt.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Nếu những th&ocirc;ng tin tr&ecirc;n đ&atilde; gi&uacute;p bạn t&igrave;m hiểu v&agrave; c&oacute; định hướng phần n&agrave;o, bạn cảm thấy ch&uacute;ng hữu &iacute;ch nhưng bạn vẫn cần th&ecirc;m c&aacute;c th&ocirc;ng tin v&agrave; hướng dẫn, h&atilde;y truy cập ngay <strong><a href=\"http://mofoods.vn\">http://mofoods.vn</a></strong> để t&igrave;m ra c&acirc;u trả lời của ch&iacute;nh bản th&acirc;n bạn. Hi vọng khi t&igrave;m hiểu xong <strong>những l&yacute; do n&ecirc;n kinh doanh b&aacute;nh m&igrave; que nhượng quyền</strong> thương hiệu Đ&agrave; Lạt v&agrave; c&aacute;c th&ocirc;ng tin kh&aacute;c, th&agrave;nh c&ocirc;ng sẽ đến với bạn.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Xem th&ecirc;m: <a href=\"http://mofoods.vn/ban-da-biet-den-quy-trinh-nhuong-quyen-banh-mi-que-dalat-bread-de-bat-dau-ke-hoach-kinh-doanh-cho-rieng-minh\"><strong>Bạn đ&atilde; biết đến quy tr&igrave;nh nhượng quy&egrave;n b&aacute;nh m&igrave; que Dalat Bread để bắt đầu kếhoachj kinh doanh cho ri&ecirc;ng m&igrave;nh</strong></a></p>\r\n', '', '', '', '', '', 0, 'en-nhung-ly-do-nen-kinh-doanh-banh-mi-que-nhuong-quyen-thuong-hieu-da-lat', 'Những lý do nên kinh doanh bánh mì que nhượng quyền thương hiệu Đà Lạt', 'tại sao nên kinh doanh bánh mì que nhượng quyền thương hiệu Đà Lạt?  Cùng chúng tôi tìm câu trả lời cho chính bạn nhé\r\n', 'những lý do nên kinh doanh bánh mì que nhượng quyền '),
(141, 71, 'vn', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 4', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !\r\n\r\nMang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa 700 pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp vào bậc nhất của thành phố.', '<p>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</p>\r\n\r\n<p>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n', '', '', '', '', '', 0, 'tin-tuc-chuoi-nha-hang-hoang-sa-4', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 4', 'Kinh doanh bánh mì que nhượng quyền được rất nhiều các tiểu thương quan tâm. ', 'Kinh doanh bánh mì que nhượng quyền'),
(142, 71, 'en', 'english version Kinh doanh bánh mì que nhượng quyền', 'english version Kinh doanh bánh mì que nhượng quyền - hình thức đầu tư khá mới mẻ, vô cùng hấp dẫn, không chỉ cho cá nhân mà phù hợp  cho một nhóm bạn muốn thử sức kinh doanh\r\n', 'english version <p dir=\"ltr\">Kinh doanh b&aacute;nh m&igrave; que nhượng quyền - h&igrave;nh thức đầu tư kh&aacute; mới mẻ, v&ocirc; c&ugrave;ng hấp dẫn, kh&ocirc;ng chỉ cho c&aacute; nh&acirc;n m&agrave; ph&ugrave; hợp &nbsp;cho một nh&oacute;m bạn muốn thử sức kinh doanh</p>\r\n\r\n<p dir=\"ltr\"><strong>Kinh doanh b&aacute;nh m&igrave; que nhượng quyền</strong> được rất nhiều c&aacute;c tiểu thương quan t&acirc;m. Ph&ugrave; hợp đối với những bạn sinh vi&ecirc;n muốn kiếm th&ecirc;m thu nhập đối, với những b&agrave; nội trợ đang c&oacute; nhiều thời gian mong muốn c&oacute; một c&ocirc;ng việc nhưng vẫn d&agrave;nh nhiều thời gian cho gia đ&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\">Tất cả đều mong muốn một mức lợi nhuận hấp dẫn, lấy c&ocirc;ng l&agrave;m lời v&agrave; được sự bảo hộ thương hiệu, hướng dẫn kinh doanh từ nh&agrave; cung cấp c&oacute; uy t&iacute;n. <strong>Kinh doanh b&aacute;nh m&igrave; que nhượng quyền </strong>phải đảm bảo c&aacute;c yếu tố về độ an to&agrave;n vệ sinh thực phẩm, sự thơm ngon bổ dưỡng v&agrave; quan trọng ấy l&agrave; uy t&iacute;n của nh&agrave; cung cấp nguy&ecirc;n liệu. Tất cả c&aacute;c điều đ&oacute; đều c&oacute; ở <strong><a href=\"http://mofoods.vn/\">mofoods.vn</a></strong></p>\r\n\r\n<h2 dir=\"ltr\"><strong>Li&ecirc;n hệ đ&uacute;ng nh&agrave; cung cấp tạo n&ecirc;n th&agrave;nh c&ocirc;ng cho kinh doanh b&aacute;nh m&igrave; que nhượng quyền</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"Kinh doanh bánh mì que nhượng quyền\" height=\"342\" src=\"/image/images/kinh-doanh-banh-mi-que-nhuong-quyen%20(1).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Li&ecirc;n hệ đ&uacute;ng nh&agrave; cung cấp tạo n&ecirc;n th&agrave;nh c&ocirc;ng cho</em></p>\r\n\r\n<p dir=\"ltr\">Khi bạn li&ecirc;n hệ với ch&uacute;ng t&ocirc;i, bạn sẽ được t&igrave;m hiểu về c&aacute;c th&ocirc;ng tin của ng&agrave;nh kinh doanh b&aacute;nh m&igrave; que, c&ocirc;ng thức th&agrave;nh c&ocirc;ng của ch&uacute;ng t&ocirc;i v&agrave; về những việc phải l&agrave;m trong tương lai. Khi hợp t&aacute;c với ch&uacute;ng t&ocirc;i c&aacute;c bạn sẽ được tư vấn chi tiết, cụ thể về định hướng kinh doanh. Ch&uacute;ng t&ocirc;i sẽ cố gắng ph&acirc;n t&iacute;ch, đ&aacute;nh gi&aacute; v&agrave; tư vấn cho c&aacute;c bạn về vị tr&iacute;, địa điểm kinh doanh.</p>\r\n\r\n<p dir=\"ltr\">Thường th&igrave; để bắt đầu kinh doanh bạn đ&atilde; biết được chắc chắn m&igrave;nh muốn kinh doanh b&aacute;nh m&igrave; que ở đ&acirc;u rồi, tuy nhi&ecirc;n việc lựa chọn địa điểm kinh doanh phải ph&ugrave; hợp với c&aacute;c ti&ecirc;u ch&iacute; về khoảng c&aacute;ch giữa c&aacute;c tiệm kinh doanh b&aacute;nh m&igrave; que nhượng quyền Đ&agrave; Lạt, về mật độ d&acirc;n cư, về người đi đường v&agrave; yếu tố kh&aacute;c m&agrave; bạn c&oacute; thể chưa ph&acirc;n t&iacute;ch hết.</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;ng t&ocirc;i l&agrave; chuy&ecirc;n gia với nhiều kinh nghiệm sẽ tận t&igrave;nh tư vấn v&agrave; gi&uacute;p cho c&ocirc;ng việc kinh doanh của bạn ph&aacute;t triển. Ngo&agrave;i ra ch&uacute;ng t&ocirc;i c&ograve;n tổ chức c&aacute;c buổi đ&agrave;o tạo, hướng dẫn, gi&uacute;p c&aacute;c bạn c&oacute; thể tạo ra ri&ecirc;ng cho m&igrave;nh một quy tr&igrave;nh b&aacute;n h&agrave;ng chuy&ecirc;n nghiệp hiệu quả v&agrave; l&agrave;m thế n&agrave;o để tiết kiệm được chi ph&iacute; cũng như quản l&yacute; hiệu quả quy tr&igrave;nh kinh doanh, quản l&yacute; nh&acirc;n vi&ecirc;n, quản l&yacute; nguồn h&agrave;ng.</p>\r\n\r\n<p dir=\"ltr\">Sau khi được b&agrave;n giao tất cả c&aacute;c c&ocirc;ng cụ, xe b&aacute;nh m&igrave;, thiết bị để kinh doanh, nguy&ecirc;n vật liệu, thực phẩm, ch&uacute;ng t&ocirc;i sẽ hỗ trợ khai trương điểm b&aacute;n h&agrave;ng nhằm tạo một điểm nhấn gi&uacute;p bạn khởi đầu c&ocirc;ng cuộc kinh doanh th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<h2 dir=\"ltr\"><strong>V&igrave; sao bạn n&ecirc;n kinh doanh b&aacute;nh m&igrave; que nhượng quyền Đ&agrave; Lạt</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"Kinh doanh bánh mì que nhượng quyền\" height=\"342\" src=\"/image/images/kinh-doanh-banh-mi-que-nhuong-quyen%20(2).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>V&igrave; sao bạn n&ecirc;n kinh doanh b&aacute;nh m&igrave; que nhượng quyền Đ&agrave; Lạt</em></p>\r\n\r\n<p dir=\"ltr\">B&aacute;nh m&igrave; que đ&uacute;ng l&agrave; thức ăn ngon bổ rẻ đối với đại đa số người y&ecirc;u ẩm thực. Kh&ocirc;ng chỉ v&igrave; hương vị thơm ngon của n&oacute; m&agrave; m&agrave; sản phẩm n&agrave;y đ&atilde; gắn v&agrave;o truyền thống ẩm thực của người d&acirc;n Việt Nam. Lớp nh&acirc;n pate b&eacute;o ngậy, sốt trứng g&agrave; tươi, những nguy&ecirc;n liệu thịt x&ocirc;ng kh&oacute;i, giăm b&ocirc;ng x&ocirc;ng kh&oacute;i, x&uacute;c x&iacute;ch, nem nướng, rau ng&ograve; đồ chua, nước tương...</p>\r\n\r\n<p dir=\"ltr\">Tất cả được g&oacute;i gọn v&agrave;o trong một chiếc b&aacute;nh m&igrave; que hảo hạng. Nhu cầu của thị trường kinh doanh b&aacute;nh m&igrave; que nhượng quyền v&ocirc; c&ugrave;ng lớn bền vững v&agrave; ng&agrave;y c&agrave;ng ph&aacute;t triển. Chỉ cần bạn đảm bảo c&aacute;c yếu tố về an to&agrave;n thực phẩm, hương vị thơm ngon v&agrave; độ gi&ograve;n tan của từng chiếc b&aacute;nh m&igrave; que cung cấp đến tận tay kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p dir=\"ltr\">Kinh doanh b&aacute;nh m&igrave; que nhượng quyền bạn chỉ cần bỏ ra một lượng vốn chưa tới chục triệu đồng, rất &iacute;t cho một việc kinh doanh mang lại lợi nhuận đến thực hiện chục triệu mỗi th&aacute;ng. Cơ hội thu hồi vốn l&agrave; chắc chắn nếu bạn c&oacute; duy&ecirc;n với ng&agrave;nh việc kinh doanh n&agrave;y, c&oacute; đạo đức kinh doanh, tận t&igrave;nh phục vụ kh&aacute;ch h&agrave;ng v&agrave; t&aacute;c phong chuy&ecirc;n nghiệp th&igrave; bạn ho&agrave;n to&agrave;n c&oacute; thể ho&agrave;n vốn trong th&aacute;ng đầu ti&ecirc;n. V&agrave; mức lợi nhuận của c&aacute;c th&aacute;ng tiếp theo sẽ tăng trưởng 2 con số.</p>\r\n\r\n<p dir=\"ltr\">N&oacute;i đến kinh doanh b&aacute;nh m&igrave; que nhượng quyền th&igrave; việc tồn kho l&agrave; rất &iacute;t. Tất cả c&aacute;c nguy&ecirc;n liệu thực phẩm đều rất dễ bảo quản. V&agrave; bạn c&oacute; thể rất nhanh ch&oacute;ng sử dụng m&agrave; kh&ocirc;ng tồn kho bất cứ nguy&ecirc;n liệu g&igrave; qu&aacute; l&acirc;u. Kinh doanh b&aacute;nh m&igrave; que nhượng quyền cũng kh&ocirc;ng cần diện t&iacute;ch phải qu&aacute; lớn, chỉ cần những địa điểm kinh doanh l&yacute; tưởng, với nhiều người đi lại, tập trung nhiều d&acirc;n cư th&igrave; nhu cầu ăn b&aacute;nh m&igrave; que l&agrave; rất lớn.</p>\r\n\r\n<p dir=\"ltr\">V&agrave; bạn c&oacute; thể kết hợp th&ecirc;m với nhiều m&oacute;n ăn s&aacute;ng, ăn chiều, ăn vặt kh&aacute;c hoặc c&oacute; thức uống k&egrave;m theo nhằm gia tăng gi&aacute; trị cho kh&aacute;ch h&agrave;ng, cũng như mở rộng m&ocirc; h&igrave;nh kinh doanh của m&igrave;nh l&ecirc;n một tầm cao mới. Tất cả đều mong muốn một mức thu nhập vượt trội th&igrave; việc khởi đầu kinh doanh b&aacute;nh m&igrave; que nhượng quyền l&agrave; điều cần thiết nhất.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"Kinh doanh bánh mì que nhượng quyền\" height=\"400\" src=\"/image/images/kinh-doanh-banh-mi-que-nhuong-quyen%20(3).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Khởi đầu kinh doanh b&aacute;nh m&igrave; que nhượng quyền l&agrave; điều cần thiết nhất</em></p>\r\n\r\n<p dir=\"ltr\">Để bắt đầu một c&ocirc;ng việc kinh doanh g&igrave; bạn cũng cần phải c&oacute; m&ocirc; h&igrave;nh để bắt chước, học tập v&agrave; đổi mới nhằm tạo ra c&aacute;c gi&aacute; trị mới, tạo ra c&aacute;c điểm mạnh, c&aacute;c lợi thế cạnh tranh ri&ecirc;ng cho m&igrave;nh. Bạn cần một người đi trước hướng dẫn những bước đầu ti&ecirc;n.</p>\r\n\r\n<p dir=\"ltr\">Khi li&ecirc;n hệ với ch&uacute;ng t&ocirc;i, ch&uacute;ng t&ocirc;i sẽ l&agrave; người người cung cấp cho bạn to&agrave;n bộ c&ocirc;ng cụ, thiết bị kinh doanh với m&igrave;nh, qua hỗ trợ đ&agrave;o tạo c&aacute;c nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng, c&aacute;c quy tr&igrave;nh quản l&yacute; b&aacute;n h&agrave;ng, bảo quản thực phẩm v&agrave; ch&uacute;ng t&ocirc;i sẽ hỗ trợ c&aacute;c chương tr&igrave;nh quảng c&aacute;o, quảng b&aacute; sản phẩm địa điểm b&aacute;n h&agrave;ng. Bạn cũng như hỗ trợ c&aacute;c chương tr&igrave;nh khuyến m&atilde;i cho đại l&yacute;. Tất cả đều tập trung gi&uacute;p bạn n&acirc;ng cao chất lượng sản phẩm, n&acirc;ng cao được doanh thu.</p>\r\n\r\n<p dir=\"ltr\">H&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i tại trang web <strong><a href=\"http://mofoods.vn/\">mofoods.vn</a></strong> để c&oacute; thể nhận được những tư vấn miễn ph&iacute; v&agrave; c&oacute; thể lựa chọn kinh doanh b&aacute;nh m&igrave; que nhượng quyền vốn &iacute;t, lời nhiều, rủi ro thấp nhưng v&ocirc; c&ugrave;ng hấp dẫn cho m&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\">Xem th&ecirc;m:<a href=\"http://mofoods.vn/nhung-ly-do-nen-kinh-doanh-banh-mi-que-nhuong-quyen-thuong-hieu-da-lat\"><strong> Những l&yacute; do n&ecirc;n kinh doanh b&aacute;nh m&igrave; que nhượng quyền thương hiệu Đ&agrave; Lạt</strong></a></p>\r\n', '', '', '', '', '', 0, 'en-kinh-doanh-banh-mi-que-nhuong-quyen', 'Kinh doanh bánh mì que nhượng quyền', 'Kinh doanh bánh mì que nhượng quyền được rất nhiều các tiểu thương quan tâm. ', 'Kinh doanh bánh mì que nhượng quyền'),
(143, 72, 'vn', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 3', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !\r\n\r\nMang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa 700 pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp vào bậc nhất của thành phố.', '<p><em><strong>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</strong></em></p>\r\n\r\n<p><em><strong>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</strong></em></p>\r\n', '', '', '', '', '', 0, 'tin-tuc-chuoi-nha-hang-hoang-sa-3', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 3', 'Bánh mỳ que được xem là một món ăn đặc sắc và nổi tiếng trong nền văn hóa ẩm thực Việt Nam. Bạn có biết  bánh mỳ que ở đâu ngon. hãy cùng chúng tôi tìm hiểu', 'bánh mỳ que ở đâu ngon');
INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(144, 72, 'en', 'english version Bánh mỳ que ở đâu ngon trứ danh?', 'english version Bánh mỳ que được xem là một món ăn đặc sắc và nổi tiếng trong nền văn hóa ẩm thực Việt Nam. Sự đa dạng về mùi vị, phong phú về thương hiệu và vùng miền khiến nhiều người không thể có một câu trả lời chính xác rằng bánh mỳ que ở đâu ngon.\r\n', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><em><strong>B&aacute;nh mỳ que được xem l&agrave; một m&oacute;n ăn đặc sắc v&agrave; nổi tiếng trong nền văn h&oacute;a ẩm thực Việt Nam. Sự đa dạng về m&ugrave;i vị, phong ph&uacute; về thương hiệu v&agrave; v&ugrave;ng miền khiến nhiều người kh&ocirc;ng thể c&oacute; một c&acirc;u trả lời ch&iacute;nh x&aacute;c rằng b&aacute;nh mỳ que ở đ&acirc;u ngon.</strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều thương hiệu b&aacute;nh mỳ que với m&ugrave;i vị ri&ecirc;ng biệt, thơm ngon nức tiếng, trong đ&oacute; c&oacute; thương hiệu b&aacute;nh mỳ que Dala (hay b&aacute;nh mỳ que Đ&agrave; Lạt). Với m&oacute;n b&aacute;nh mỳ que Dala trứ danh được sản xuất tại xứ sở mộng mơ n&agrave;y bạn ho&agrave;n to&agrave;n c&oacute; thể mạnh dạn trả lời c&acirc;u hỏi &ldquo;<strong>b&aacute;nh mỳ que ở đ&acirc;u ngon</strong>&rdquo; giữa rất nhiều thương hiệu nổi tiếng.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>B&aacute;nh mỳ que DaLa trứ danh đặc sắc ra sao?</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><strong><img alt=\" bánh mỳ que ở đâu ngon\" height=\"342\" src=\"/image/images/banh-my-que-o-dau-ngon%20(1).jpg\" width=\"600\" /></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Kh&ocirc;ng chỉ được mệnh danh l&agrave; Th&agrave;nh phố ng&agrave;n hoa của Việt Nam, Đ&agrave; Lạt c&ograve;n nổi tiếng với những đặc sản trong văn h&oacute;a ẩm thực Việt như mứt, rượu vang. Trong đ&oacute; c&oacute; b&aacute;nh mỳ que Đ&agrave; Lạt trứ danh v&agrave;ng ươm, gi&ograve;n rụm, thơm ngon trứ danh.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">B&aacute;nh c&oacute; xuất xứ từ Ph&aacute;p, được l&agrave;m từ l&uacute;a mỳ v&agrave; c&aacute;c loại ngũ cốc mang nhiều nguồn dinh dưỡng thiết yếu cho bữa ăn nhẹ của người Việt Nam.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">B&aacute;nh mỳ que Đ&agrave; Lạt tiếp nối những tinh t&uacute;y từ c&aacute;ch thức chế biến như vị gi&ograve;n ngon của vỏ b&aacute;nh, mềm mịn thơm phức của ruột k&egrave;m vị b&eacute;o của pate, thịt, pha ch&uacute;t vị cay của ớt, vị thơm của rau. Tất cả h&ograve;a quyện v&agrave;o nhau tạo n&ecirc;n m&ugrave;i vị thơm ngon đặc trưng kh&oacute; cưỡng của b&aacute;nh mỳ que Dala.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Những hương vị tuyệt hảo của b&aacute;nh mỳ Đ&agrave; Lạt</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\" bánh mỳ que ở đâu ngon\" height=\"251\" src=\"/image/images/banh-my-que-o-dau-ngon%20(1).png\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><strong>b&aacute;nh mỳ que ở đ&acirc;u ngon</strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Dala Bread kh&ocirc;ng chỉ nổi tiếng bởi chất lượng số 1 về nguy&ecirc;n liệu như &nbsp;rau, thịt tươi sạch, an to&agrave;n m&agrave; c&ograve;n &ldquo;g&acirc;y m&ecirc;&rdquo; thực kh&aacute;c bởi sự đa dạng về c&aacute;c loại nh&acirc;n, tạo n&ecirc;n những hương vị tuyệt hảo v&agrave; đ&aacute;p ứng đủ 3 ti&ecirc;u ch&iacute;: ngon &ndash; bổ - rẻ.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">B&aacute;nh mỳ Đ&agrave; Lạt c&oacute; cả vị truyền thống với nh&acirc;n thập cẩm, x&uacute;c x&iacute;ch, ch&agrave; b&ocirc;ng&hellip;.đến c&aacute;c hương vị thơm ngon kh&oacute; cưỡng kh&aacute;c như: nh&acirc;n thịt x&ocirc;ng kh&oacute;i, giăm b&ocirc;ng x&ocirc;ng kh&oacute;i, nh&acirc;n nem nướng.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Nh&acirc;n Dala thịt x&ocirc;ng kh&oacute;i gồm: Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + Nem nướng</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Nh&acirc;n Dala nem nướng gồm: Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + Nem nướng.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Nh&acirc;n Dala giăm b&ocirc;ng x&ocirc;ng kh&oacute;i gồm: Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + giăm b&ocirc;ng x&ocirc;ng kh&oacute;i.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Dala x&uacute;c x&iacute;ch gồm: Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + giăm b&ocirc;ng x&ocirc;ng kh&oacute;i</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Dala truyền thống gồm: Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Chất lượng số 1 về nguy&ecirc;n liệu của Dala Bread </strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">To&agrave;n bộ nguy&ecirc;n liệu sử dụng cho b&aacute;nh mỳ Đ&agrave; Lạt đều được kiểm định an to&agrave;n vệ sinh thực phẩm về chất lượng với quy tr&igrave;nh sản xuất kh&eacute;p k&iacute;n cho bữa ăn của bạn đầy hương vị tươi mới, kh&oacute; cưỡng.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">C&aacute;c nguy&ecirc;n liệu như Pate, ch&agrave; b&ocirc;ng, sốt trứng g&agrave; tươi, nước tương, nem nướng, jam b&ocirc;ng x&ocirc;ng kh&oacute;i&hellip;.l&agrave; sản phẩm của C&ocirc;ng ty TNHH sản xuất thực phẩm v&agrave; thương mại T&acirc;n Vĩnh Ph&aacute;t.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">X&uacute;c x&iacute;ch l&agrave; sản phẩm của C&ocirc;ng ty Cổ phần Chăn nu&ocirc;i C.P Việt Nam (CPV) với m&ocirc; h&igrave;nh chăn nu&ocirc;i 3F &nbsp;đảm bảo chất lượng số 1.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Thịt x&ocirc;ng kh&oacute;i l&agrave; sản phẩm của C&ocirc;ng ty TNHH San Miguel Pure Foods (VN) thuộc Tập đo&agrave;n San Miguel Pure Foods của Philippines.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>N&ecirc;n mua b&aacute;nh mỳ que ở đ&acirc;u ngon?</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><strong><img alt=\" bánh mỳ que ở đâu ngon\" height=\"342\" src=\"/image/images/banh-my-que-o-dau-ngon%20(2).jpg\" width=\"600\" /></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Nếu du kh&aacute;ch ở bất kỳ đ&acirc;u đến v&agrave; hỏi <strong>&ldquo;b&aacute;nh mỳ que ở đ&acirc;u ngon&rdquo;</strong>? Vậy bạn h&atilde;y cứ mạnh dạn trả lời đ&oacute; ch&iacute;nh l&agrave; b&aacute;nh mỳ que Dala.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Dala Bread thuộc c&ocirc;ng ty TNHH MoFoods Việt Nam<strong> </strong><a href=\"http://mofoods.vn/\"><strong>http://mofoods.vn</strong>/</a> với sứ mệnh thi&ecirc;ng li&ecirc;ng l&agrave; đưa nền văn h&oacute;a ẩm thực Việt Nam, trong đ&oacute; c&oacute; sản phẩm b&aacute;nh mỳ que Dala l&ecirc;n tầm cao mới, xứng tầm quốc tế. Đồng thời mang lại những &ldquo;bữa ăn sạch, tinh tế&rdquo; cho người Việt.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Thương hiệu b&aacute;nh mỳ que Dala l&agrave; một trong những sản phẩm b&aacute;nh mỳ que h&agrave;ng đầu Việt Nam với gi&aacute; trị cốt l&otilde;i l&agrave; đảm bảo về chất lượng, an to&agrave;n vệ sinh thực phẩm, nhiều hương vị tuyệt hảo, gi&aacute; cả lại hợp l&yacute; v&agrave; mang lại lợi nhuận cao khi kinh doanh.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Đồng thời, với th&ocirc;ng điệp &ldquo;Kh&aacute;ch h&agrave;ng l&agrave; người th&acirc;n, tận t&acirc;m tr&ecirc;n từng c&ocirc;ng đoạn&rdquo;, b&aacute;nh mỳ que DaLa kh&ocirc;ng chỉ l&agrave; niềm tự h&agrave;o về văn h&oacute;a ẩm thực đặc sắc của Việt Nam, m&agrave; c&ograve;n l&agrave; m&oacute;n ăn dinh dưỡng hấp dẫn của người Việt mỗi ng&agrave;y.</p>\r\n\r\n<p dir=\"ltr\"><strong>B&aacute;nh mỳ que ở đ&acirc;u ngon </strong>trứ danh.... đ&oacute; l&agrave; m&oacute;n b&aacute;nh mỳ que Dala tại xứ sở hoa Đ&agrave; Lạt thơ mộng.</p>\r\n\r\n<p dir=\"ltr\">Xem th&ecirc;m: <a href=\"http://mofoods.vn/kinh-doanh-banh-mi-que-nhuong-quyen\"><strong>Kinh doanh b&aacute;nh m&igrave; que nhượng quyền</strong></a></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-banh-my-que-o-dau-ngon-tru-danh', 'Bánh mỳ que ở đâu ngon trứ danh?', 'Bánh mỳ que được xem là một món ăn đặc sắc và nổi tiếng trong nền văn hóa ẩm thực Việt Nam. Bạn có biết  bánh mỳ que ở đâu ngon. hãy cùng chúng tôi tìm hiểu', 'bánh mỳ que ở đâu ngon'),
(145, 73, 'vn', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 2', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !\r\n\r\nMang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa 700 pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp vào bậc nhất của thành phố.', '<p><em><strong>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</strong></em></p>\r\n\r\n<p><em><strong>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</strong></em></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '', '', '', '', '', 0, 'tin-tuc-chuoi-nha-hang-hoang-sa-2', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 2', 'Bánh mì que Dala Bread hương vị độc đáo, đa dạng, mang lại nhiều cảm giác tuyệt vời cho những thực khách với tình yêu bánh mì mãnh liệt. Thật sự ngon, bổ, rẻ.\r\n', 'Bánh mì que Dala Bread'),
(146, 73, 'en', 'english version Bánh mì que Dala Bread - hương vị thơm ngon, đậm vị', 'english version Bánh mì que Dala Bread với hương vị độc đáo, đa dạng, mang lại nhiều cảm giác tuyệt vời cho những thực khách với tình yêu bánh mì mãnh liệt. Thật sự ngon, bổ, rẻ', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><em><strong>B&aacute;nh m&igrave; que Dala Bread với hương vị độc đ&aacute;o, đa dạng, mang lại nhiều cảm gi&aacute;c tuyệt vời cho những thực kh&aacute;ch với t&igrave;nh y&ecirc;u b&aacute;nh m&igrave; m&atilde;nh liệt. Thật sự ngon, bổ, rẻ.</strong></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong>B&aacute;nh m&igrave; que Dala Bread</strong> kh&ocirc;ng c&ograve;n xa lạ với đại đa số người d&acirc;n Việt Nam mọi nẻo đường. Ở bất cứ nơi đ&acirc;u, trong bất cứ khung giờ n&agrave;o bạn cũng c&oacute; thể dễ d&agrave;ng t&igrave;m thấy ở nhiều con hẻm, đường lớn, c&aacute;c khu chợ, những nơi đ&ocirc;ng d&acirc;n cư. Đ&acirc;y l&agrave; một m&oacute;n ăn v&ocirc; c&ugrave;ng phổ biến với hương vị độc đ&aacute;o. V&agrave; đặc biệt l&agrave; rất rẻ, rất hợp với gi&aacute; trị của từng bữa ăn của người Việt Nam.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Chất lượng của b&aacute;nh m&igrave; que Dala Bread đến từ nguy&ecirc;n liệu</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"Bánh mì que Dala Bread\" height=\"450\" src=\"/image/images/banh-mi-que-dala-bread%20(2).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Chất lượng của<strong> b&aacute;nh m&igrave; que Dala Bread </strong>đến từ nguy&ecirc;n liệu</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Chất lượng của<strong> b&aacute;nh m&igrave; que Dala Bread </strong>đ&atilde; được kiểm chứng qua thời gian cung cấp sản phẩm. Đ&atilde; được rất nhiều kh&aacute;ch h&agrave;ng y&ecirc;u mến, tin tưởng. Hiện tại hệ thống ph&acirc;n phối đ&atilde; phủ rộng khắp v&agrave; ng&agrave;y c&agrave;ng ph&aacute;t triển mạnh c&oacute; thể cung ứng th&ecirc;m cho kh&aacute;ch h&agrave;ng những sản phẩm b&aacute;nh mỳ que chất lượng tốt, nhất hương vị tươi ngon nhất.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ch&uacute;ng t&ocirc;i sẵn s&agrave;ng l&agrave;m việc với những đối t&aacute;c cung cấp những thực phẩm chất lượng tốt nhất, mặc d&ugrave; gi&aacute; th&agrave;nh sẽ ảnh hưởng đến chi ph&iacute; b&aacute;n h&agrave;ng. Tuy nhi&ecirc;n ch&uacute;ng t&ocirc;i vẫn đang cố gắng v&agrave; sẽ cố gắng nhiều hơn nữa để hạ gi&aacute; th&agrave;nh của sản phẩm, đảm bảo l&agrave;m sao <strong>b&aacute;nh m&igrave; que Dala Bread </strong>được tất cả c&aacute;c kh&aacute;ch h&agrave;ng lựa chọn. h&uacute;ng t&ocirc;i đặc biệt l&agrave;m việc với nhiều nh&agrave; cung cấp tốt. Với c&aacute;c nguy&ecirc;n liệu chủ đạo như pate, ch&agrave; b&ocirc;ng, sốt trứng g&agrave; tươi, nước tương, nem nướng, giăm b&ocirc;ng x&ocirc;ng kh&oacute;i l&agrave; những thực phẩm chất lượng từ c&ocirc;ng ty T&acirc;n Vĩnh ph&aacute;t. X&uacute;c X&iacute;ch c&ocirc;ng ty cổ phần chăn nu&ocirc;i CP Việt Nam. Thịt x&ocirc;ng kh&oacute;i của San Miguel Pure Foods, một c&ocirc;ng ty nổi tiếng của Philippines.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ch&uacute;ng t&ocirc;i cam kết với kh&aacute;ch h&agrave;ng tất cả c&aacute;c nguy&ecirc;n liệu của ch&uacute;ng t&ocirc;i đều c&oacute; chứng nhận xuất xứ r&otilde; r&agrave;ng, được ph&acirc;n phối v&agrave; sản xuất bởi c&aacute;c c&ocirc;ng ty hoạt động thực phẩm. V&igrave; thế khi lựa chọn b&aacute;nh m&igrave; que, c&aacute;c bạn đang lựa chọn một thực phẩm rất tốt cho sức khỏe, tươi ngon để mang lại những cảm gi&aacute;c tốt nhất, cảm nhận nhiều hương vị ngon nhất.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Gi&aacute; rẻ của b&aacute;nh m&igrave; que Dala Bread đến từ triết l&yacute; kinh doanh</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><img alt=\"Bánh mì que Dala Bread\" height=\"800\" src=\"/image/images/banh-mi-que-dala-bread%20(1).jpg\" width=\"600\" /></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Gi&aacute; rẻ của <strong>b&aacute;nh m&igrave; que Dala Bread</strong> đến từ triết l&yacute; kinh doanh</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong>B&aacute;nh m&igrave; que Dala Bread</strong> của ch&uacute;ng t&ocirc;i kh&ocirc;ng những đ&atilde; chạm được v&agrave;o sự đam m&ecirc; chiếc b&aacute;nh m&igrave; truyền thống của c&aacute;c bạn trẻ, m&agrave; c&ograve;n tiếp cận được với v&ocirc; số c&aacute;c kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất. Gi&aacute; của những chiếc b&aacute;nh m&igrave; que của ch&uacute;ng t&ocirc;i chỉ khoảng 15.000 đồng.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Một con số đ&aacute;ng kinh ngạc, với những nguy&ecirc;n liệu ngon nhất, tốt nhất được đặt ở trong chiếc b&aacute;nh m&igrave; n&oacute;ng gi&ograve;n, thơm phức. Với triết l&yacute; kinh doanh l&agrave; ngon-bổ-rẻ, ch&uacute;ng t&ocirc;i kh&ocirc;ng ngừng cố gắng mang đến ng&agrave;y c&agrave;ng nhiều hương vị cho kh&aacute;ch h&agrave;ng, với gi&aacute; th&agrave;nh kh&ocirc;ng đổi.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ch&uacute;ng t&ocirc;i đang nỗ lực từng ng&agrave;y mang đến một m&oacute;n ngon của người Việt kh&ocirc;ng chỉ phục vụ cho ri&ecirc;ng người d&acirc;n Việt Nam m&agrave; c&ograve;n phổ biến cho những du kh&aacute;ch khi đến tham quan tại đất nước m&igrave;nh. Ch&uacute;ng t&ocirc;i tập trung tối thiểu h&oacute;a chi ph&iacute; v&agrave; tối ưu h&oacute;a qu&aacute; tr&igrave;nh cung ứng nhằm cắt giảm chi ph&iacute; đến mức thấp nhất để lại gi&aacute; th&agrave;nh tốt nhất cho mỗi ổ<strong> b&aacute;nh m&igrave; que Dala Bread</strong> cung cấp ra thị trường.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Hương vị của b&aacute;nh m&igrave; que Dala Bread đa dạng l&agrave;m nức l&ograve;ng thực kh&aacute;ch</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" src=\"https://i.imgur.com/qEo8MOY.jpg\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Hương vị của<strong> b&aacute;nh m&igrave; que Dala Bread</strong> đa dạng l&agrave;m nức l&ograve;ng thực kh&aacute;ch</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Hiện tại b&aacute;nh m&igrave; quan của ch&uacute;ng t&ocirc;i cung cấp với 5 loại hương vị kh&aacute;c nhau. C&aacute;c bạn c&oacute; thể th&ecirc;m bớt nếu kh&ocirc;ng th&iacute;ch bất cứ th&agrave;nh phần n&agrave;o b&ecirc;n trong. Tuy nhi&ecirc;n tất cả c&aacute;c kh&aacute;ch h&agrave;ng khi đến với ch&uacute;ng t&ocirc;i đều với một c&acirc;u n&oacute;i: &ldquo;cho một <strong>b&aacute;nh m&igrave; que Dala Bread</strong> đầy đủ&rdquo;. Bởi sự t&iacute;ch hợp những nguy&ecirc;n liệu được ch&uacute;ng t&ocirc;i nghi&ecirc;n cứu kỹ, mang lại một hương vị kh&ocirc;ng thể n&agrave;o lẫn với những m&oacute;n b&aacute;nh m&igrave; kh&aacute;c được. Đ&oacute; l&agrave; một hương vị rất ri&ecirc;ng biệt thơm ngon, tươi ngon của rau m&ugrave;i, của ớt chưng Đ&agrave; Lạt. Hiện tại ch&uacute;ng t&ocirc;i cung cấp những hương vị Dala truyền thống, Dala x&uacute;c x&iacute;ch, Dala giăm b&ocirc;ng x&ocirc;ng kh&oacute;i, Dala nem nướng v&agrave; Dala thịt x&ocirc;ng kh&oacute;i rất dễ ăn v&agrave; ngon tuyệt vời m&agrave; chỉ với 15.000 đồng. Kết hợp với sốt trứng g&agrave; tươi, rau ng&ograve; đồ chua, nước tương, ớt chưng Đ&agrave; Lạt. Tất cả đều chế biến rất nhanh ch&oacute;ng chỉ cần một ph&uacute;t, bạn sẽ c&oacute; một <strong>b&aacute;nh m&igrave; que Dala Bread</strong> mới, ngon v&agrave; bổ dưỡng cho sức khoẻ.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">H&atilde;y tham khảo trang web của ch&uacute;ng t&ocirc;i tại <strong><a href=\"http://mofoods.vn/\">mofoods.vn</a> </strong>để c&oacute; thể biết được những địa chỉ gần nhất m&agrave; bạn c&oacute; thể đến mua <strong>b&aacute;nh m&igrave; que Dala Bread</strong>. Ngo&agrave;i ra ch&uacute;ng t&ocirc;i c&ograve;n nhượng quyền b&aacute;nh m&igrave; Dala Bread với những đối t&aacute;c thiện ch&iacute;. Ch&uacute;ng t&ocirc;i sẽ tận t&igrave;nh tư vấn v&agrave; cung cấp tất cả c&aacute;c thiết bị, c&ocirc;ng cụ sản xuất kinh doanh một c&aacute;ch nhanh ch&oacute;ng để bạn c&oacute; thể mang đến những sản phẩm tốt nhất cho kh&aacute;ch h&agrave;ng của m&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ch&uacute;ng t&ocirc;i cam kết những sản phẩm<strong> b&aacute;nh m&igrave; que Dala Bread </strong>sẽ c&oacute; gi&aacute; tốt nhất đến tay của kh&aacute;ch h&agrave;ng, chỉ 15000 đồng nhưng mang lại nguồn lợi nhuận đều đặn, lớn hơn nhiều những c&ocirc;ng việc kinh doanh nhỏ lẻ kh&aacute;c.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Xem th&ecirc;m: <a href=\"http://mofoods.vn/banh-my-que-o-dau-ngon-tru-danh\"><strong>B&aacute;nh m&igrave; que ở đ&acirc;u ngon trư danh</strong></a></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-banh-mi-que-dala-bread-huong-vi-thom-ngon-dam-vi', 'Bánh mì que Dala Bread - hương vị thơm ngon, đậm vị', 'Bánh mì que Dala Bread hương vị độc đáo, đa dạng, mang lại nhiều cảm giác tuyệt vời cho những thực khách với tình yêu bánh mì mãnh liệt. Thật sự ngon, bổ, rẻ.\r\n', 'Bánh mì que Dala Bread'),
(147, 74, 'vn', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 1', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !\r\n\r\nMang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa 700 pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp vào bậc nhất của thành phố.', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><u><span style=\"font-size:12.0pt\"><span style=\"color:red\">Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</span></span></u></em></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><u><span style=\"font-size:12.0pt\"><span style=\"color:red\">Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</span></span></u></em></span></span></p>\r\n', '', '', '', '', '', 0, 'tin-tuc-chuoi-nha-hang-hoang-sa-1', 'TIN TỨC CHUỖI NHÀ HÀNG HOÀNG SA 1', '', ''),
(148, 74, 'en', 'english version THƯ CHÚC TẾT VÀ THÔNG BÁO LỊCH NGHỈ TẾT KỶ HỢI NĂM 2019', 'english version Quý đại lý và khách hàng thân mến, bước sang năm mới 2019, Công ty TNHH M&O Foods Việt Nam kích chúc quý đại lý,khách hàng và gia đình : ', 'english version <p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><u><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><span style=\"color:red\">CH&Uacute;C&nbsp; NĂM MỚI B&Igrave;NH AN &ndash; CẢ NH&Agrave; ĐỀU SUNG T&Uacute;C</span></span></span></u></em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Ban l&atilde;nh đạo c&ugrave;ng to&agrave;n thể c&ocirc;ng ty TNHH M&amp;O FOODS VIỆT NAM &ndash; THƯƠNG HIỆU B&Aacute;NH M&Igrave; QUE Đ&Agrave; LẠT xin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; đại l&yacute;, kh&aacute;ch h&agrave;ng v&agrave; gia đ&igrave;nh đ&atilde; t&iacute;n nhiệm, quan t&acirc;m v&agrave; ủng hộ sản phẩm của c&ocirc;ng ty ch&uacute;ng t&ocirc;i trong suốt thời gian qua. Sự ủng hộ v&agrave; t&iacute;n nhiệm của qu&yacute; kh&aacute;ch ch&iacute;nh l&agrave; th&agrave;nh c&ocirc;ng lớn nhất của c&ocirc;ng ty ch&uacute;ng t&ocirc;i trong năm vừa qua.Để đ&aacute;p lại tấm ch&acirc;n t&igrave;nh n&agrave;y, Ch&uacute;ng t&ocirc;i với phương ch&acirc;m &ldquo; <em><u>Kh&aacute;ch h&agrave;ng l&agrave; người th&acirc;n, tận t&acirc;m tr&ecirc;n từng c&ocirc;ng đoạn </u>&ldquo; </em>n&ecirc;n hiểu rằng cần phải đổi mới v&agrave; n&acirc;ng cao chất lượng dịch vụ hơn nữa để mang lại cho qu&yacute; kh&aacute;ch h&agrave;ng sự h&agrave;i l&ograve;ng v&agrave; niềm tin cao nhất.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Để thuận lợi cho việc kinh doanh của qu&yacute; đại l&yacute; phục vụ kh&aacute;ch h&agrave;ng xuy&ecirc;n suốt trong dịp nghỉ tết được hiệu quả, ch&uacute;ng t&ocirc;i k&iacute;nh gửi đến qu&yacute; kh&aacute;ch h&agrave;ng &ldquo; TH&Ocirc;NG B&Aacute;O LỊCH NGHỈ TẾT KỶ HỢI NĂM 2019 &ldquo; như sau :</span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">C&ocirc;ng ty nghỉ tết bắt đầu : S&aacute;ng ng&agrave;y 26/01/2019 dương lịch (tức ng&agrave;y 21/12/2018 &acirc;m lịch ) đến hết ng&agrave;y 10/02/2019 ( Tức ng&agrave;y 06/01/2019 &acirc;m lịch).</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">C&ocirc;ng ty bắt đầu l&agrave;m việc lại : S&aacute;ng ng&agrave;y 11/02/2019 ( Tức ng&agrave;y 07/01/2019 &acirc;m lịch).</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Một lần nữa, C&ocirc;ng ty TNHH M&amp;O FOODS VIỆT NAM xin được gửi đến qu&yacute; đại l&yacute;, kh&aacute;ch h&agrave;ng những lời ch&uacute;c mừng năm mới tốt đẹp nhất.Ch&uacute;c qu&yacute; đại l&yacute;, kh&aacute;ch h&agrave;ng v&agrave; gia đ&igrave;nh đ&oacute;n năm mới 2019 tr&agrave;n ngập niềm vui v&agrave; hạnh ph&uacute;c.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Tr&acirc;n trọng k&iacute;nh b&aacute;o!</span></span></em></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Gi&aacute;m Đốc</span></span></em></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp; ĐỖ TH&Agrave;NH T&Agrave;I</span></span></em></strong></span></span></p>\r\n', '', '', '', '', '', 0, 'en-thu-chuc-tet-va-thong-bao-lich-nghi-tet-ky-hoi-nam-2019', 'THƯ CHÚC TẾT VÀ THÔNG BÁO LỊCH NGHỈ TẾT KỶ HỢI NĂM 2019', '', ''),
(149, 75, 'vn', 'Bài viết khuyễn mãi 1', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý  khách !\r\n                                    Mang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa\r\n                                    700pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp\r\n                                    vào bậc nhất của thành phố..', '<p>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</p>\r\n\r\n<p>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</p>\r\n', '', '', '', '', '', 0, 'bai-viet-khuyen-mai-1', 'Bài viết khuyễn mãi 1', '', ''),
(150, 75, 'en', 'english version Bài viết khuyễn mãi 1', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bai-viet-khuyen-mai-1', 'Bài viết khuyễn mãi 1', '', ''),
(151, 76, 'vn', 'Bài viết khuyễn mãi 2', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý  khách !\r\n                                    Mang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa\r\n                                    700pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp\r\n                                    vào bậc nhất của thành phố..', '<p>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</p>\r\n\r\n<p>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</p>\r\n', '', '', '', '', '', 0, 'bai-viet-khuyen-mai-2', 'Bài viết khuyễn mãi 2', '', ''),
(152, 76, 'en', 'english version Bài viết khuyễn mãi 2', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bai-viet-khuyen-mai-2', 'Bài viết khuyễn mãi 2', '', ''),
(153, 77, 'vn', 'Bài viết khuyễn mãi 3', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý  khách !\r\n                                    Mang Phong cách hiện đại và sang trọng , khuôn viên nhà hàng Hoàng Sa với sức chứa\r\n                                    700pax tọa lạc 52 Trần Phú ngay trung tâm thành phố biển Nha Trang - một vị trí đẹp\r\n                                    vào bậc nhất của thành phố..', '<p>Hệ Thống Nh&agrave; h&agrave;ng Ho&agrave;ng Sa trực thuộc C&ocirc;ng Ty TNHH &Aacute;nh Minh Ch&acirc;u NT . K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch !</p>\r\n\r\n<p>Mang Phong c&aacute;ch hiện đại v&agrave; sang trọng , khu&ocirc;n vi&ecirc;n nh&agrave; h&agrave;ng Ho&agrave;ng Sa với sức chứa 700 pax tọa lạc 52 Trần Ph&uacute; ngay trung t&acirc;m th&agrave;nh phố biển Nha Trang - một vị tr&iacute; đẹp v&agrave;o bậc nhất của th&agrave;nh phố.</p>\r\n', '', '', '', '', '', 0, 'bai-viet-khuyen-mai-3', 'Bài viết khuyễn mãi 3', '', ''),
(154, 77, 'en', 'english version Bài viết khuyễn mãi 3', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bai-viet-khuyen-mai-3', 'Bài viết khuyễn mãi 3', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'Về chúng tôi', '<p><strong>HOÀNG SA – AMC Co..Ltd</strong><br>\r\n                        <i class=\"fa fa-check-circle\"></i> Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu.<br>\r\n                        <i class=\"fa fa-check-circle\"></i> Mang phong cách hiện đại và sang trọng, tọa lạc tại 52 Trần Phú ngay trung tâm thành phố biển Nha Trang .\r\n                    </p>\r\n\r\n                    <p><strong>Nhà hàng chuyên phục vụ khách đoàn, lẻ</strong><br>\r\n                        <i class=\"fa fa-check-circle\"></i> Nhà Hàng chuyên phục vụ cơm đoàn theo yêu cầu của quý khách.<br>\r\n                        <i class=\"fa fa-check-circle\"></i> Chuyên tổ chức các chương trình như gala, hội thảo, tiệc cưới với chi phí hợp lý nhất!<br>\r\n                    </p>\r\n\r\n                    <p><strong>Chuyên phục vụ các món ăn chuyên về hải sản</strong><br>\r\n                        <i class=\"fa fa-check-circle\"></i> Nguyên liệu tươi sống, chủng loại đa dạng.<br>\r\n                        <i class=\"fa fa-check-circle\"></i> Đồ uống đa dạng từ rượu các loại , nước ngọt các loại cho đến cafe...\r\n                    </p>', '<p><span style=\"font-size:14px\">C&ocirc;ng ty TNHH M&amp;O Foods Việt Nam được th&agrave;nh lập ng&agrave;y 15 th&aacute;ng 10 năm 2018. Hệ thống M&amp;O Foods Việt Nam đang tiến h&agrave;nh hoạt động tr&ecirc;n c&aacute;c lĩnh vực thực phẩm với hy vọng mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm ẩm thực an to&agrave;n, chất lượng h&agrave;ng đầu Việt Nam.</span></p>\r\n\r\n<h2><span style=\"font-size:20px\"><strong>&nbsp;Sứ mệnh cao cả</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Với ch&uacute;ng t&ocirc;i, sứ mệnh thi&ecirc;ng li&ecirc;ng của m&igrave;nh l&agrave; đưa nền văn h&oacute;a ẩm thực Việt Nam l&ecirc;n một tầm cao mới.Văn h&oacute;a ẩm thực l&agrave; n&eacute;t văn h&oacute;a tự nhi&ecirc;n h&igrave;nh th&agrave;nh trong cuộc sống.Nhất l&agrave; đối với người Việt Nam, ẩm thực kh&ocirc;ng chỉ l&agrave; n&eacute;t văn h&oacute;a về vật chất m&agrave; c&ograve;n l&agrave; văn h&oacute;a về tinh thần. Qua ẩm thực người ta c&oacute; thể hiểu được n&eacute;t văn h&oacute;a thể hiện phẩm gi&aacute; con người, tr&igrave;nh độ văn h&oacute;a của d&acirc;n tộc với những đạo l&yacute; , ph&eacute;p tắc, phong tục trong c&aacute;ch ăn uống&hellip; M&amp;O Foods Việt Nam mong muốn n&acirc;ng cao chất lượng v&agrave; khẩu vị cho người ti&ecirc;u d&ugrave;ng Việt, qua đ&oacute; thể hiện được sự đa dạng trong n&eacute;t văn h&oacute;a ẩm thực người Việt. &ldquo;Ngon &ndash; sạch &ndash; Nhanh - chất lượng&rdquo; l&agrave; ti&ecirc;u ch&iacute; m&agrave; ch&uacute;ng t&ocirc;i hướng đến để phục vụ qu&yacute; vị một cảm gi&aacute;c tinh tế nhất trong bữa ăn thường ng&agrave;y.</span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><img alt=\"\" height=\"400\" src=\"/image/images/image3(1).jpg\" width=\"600\" /></p>\r\n\r\n<h2><span style=\"font-size:20px\"><strong>Triết l&yacute; kinh doanh :</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Th&ocirc;ng điệp của ch&uacute;ng t&ocirc;i: &ldquo; Kh&aacute;ch h&agrave;ng l&agrave; người th&acirc;n, tận t&acirc;m tr&ecirc;n từng c&ocirc;ng đoạn.&rdquo; Đ&acirc;y l&agrave; động lực để c&ocirc;ng ty phục vụ kh&aacute;ch h&agrave;ng tốt nhất, l&agrave; kim chỉ nam để mang đến cho thực kh&aacute;ch một trải nghiệm tinh tế nhất.</span></p>\r\n\r\n<h2><span style=\"font-size:20px\"><strong>Gi&aacute; trị cốt l&otilde;i :</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Chất lượng sản phẩm l&agrave; yếu tố then chốt tạo n&ecirc;n vị thế cạnh tranh của c&ocirc;ng ty. Khi chất lượng bảo đảm, sản phẩm được ti&ecirc;u thụ nhiều hơn, tạo điều kiện cho c&ocirc;ng ty chiếm lĩnh thị trường, tăng doanh thu v&agrave; lợi nhuận.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&ldquo;Chất lượng sản phẩm : Gi&aacute; trị cốt l&otilde;i để tồn tại &ldquo;. Đ&oacute; ch&iacute;nh l&agrave; bệ ph&oacute;ng cho nhiều sản phẩm Ngon &ndash; sạch &ndash; Nhanh - chất lượng m&agrave; hệ thống M&amp;O Foods Việt Nam sắp ra mắt phục vụ người ti&ecirc;u d&ugrave;ng VIỆT NAM.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Một trong những sản phẩm tạo n&ecirc;n gi&aacute; trị thương hiệu l&agrave; Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt.</span></p>\r\n\r\n<h2><span style=\"font-size:20px\"><strong>Sản phẩm ch&iacute;nh của Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">B&aacute;nh M&igrave; Que Đ&agrave; Lạt với d&ograve;ng b&aacute;nh m&igrave; ch&iacute;nh l&agrave; Dala Bread sử dụng nguồn nguy&ecirc;n liệu đảm bảo chất lượng an to&agrave;n vệ sinh thực phẩm với quy tr&igrave;nh sản xuất kh&eacute;p k&iacute;n từ nguồn nguy&ecirc;n liệu đầu v&agrave;o đến khi th&agrave;nh phẩm, c&ugrave;ng hương vị thơm ngon mềm mại kh&ocirc;ng cưỡng lại được l&agrave; một bữa ăn kh&ocirc;ng thể thiếu mang lại hương vị tươi mới cho vị gi&aacute;c của bạn.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"\" height=\"401\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image004.jpg\" width=\"601\" /><img alt=\"\" height=\"400\" src=\"/image/images/image3.jpg\" width=\"600\" /></span></p>\r\n\r\n<h2 style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">H&igrave;nh thức kinh doanh</span> của Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt</span></strong></span></h2>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,sans-serif\"><span style=\"background-color:white\"><span style=\"color:black\">Với nhu cầu tiện &iacute;ch hiện nay, việc phục vụ những bữa ăn nhanh gọn v&agrave; tiện lợi được kh&aacute; nhiều người ưa chuộng. Hơn nữa, với sự th&acirc;n thuộc cũng như l&agrave; mặt h&agrave;ng gần gũi với mọi lứa tuổi từ học sinh, sinh vi&ecirc;n hay tới người đi l&agrave;m&hellip; đều biết tới b&aacute;nh m&igrave;. Th&ecirc;m v&agrave;o đ&oacute;, chất lượng v&agrave; hương vị cũng l&agrave; yếu tố quyết định cảm thực của kh&aacute;ch h&agrave;ng. Chắc chắn với thương hiệu vốn c&oacute; truyền thống cộng th&ecirc;m vị ngon của b&aacute;nh mỳ, độ tươi của c&aacute;c nguy&ecirc;n liệu đi k&egrave;m của ch&uacute;ng t&ocirc;i, việc kinh doanh theo phương thức nhượng quyền thương hiệu b&aacute;nh mỳ Dala Bread ho&agrave;n to&agrave;n dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng thu lại lợi nhuận cao.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Ch&iacute;nh v&igrave; vậy, ch&uacute;ng t&ocirc;i sử dụng phương thức kinh doanh <span style=\"background-color:white\">nhượng quyền thương hiệu </span></span><span style=\"background-color:white\">Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt</span><span style=\"color:black\">, c&ugrave;ng với việc hợp t&aacute;c với c&aacute;c đại l&yacute; v&agrave; vốn cần bỏ ra kh&ocirc;ng nhiều m&agrave; l&agrave; sản phẩm c&oacute; chiến lược thị trường ti&ecirc;u thụ tốt. C&aacute;ch chế biến đơn giản m&agrave; bất cứ ai cũng c&oacute; thể l&agrave;m được. Hơn nữa, với m&ocirc; h&igrave;nh kinh doanh n&agrave;y bạn ho&agrave;n to&agrave;n dễ d&agrave;ng t&igrave;m kiếm mặt bằng, kh&ocirc;ng lo lắng như những chi ph&iacute; như mặt tiền qu&aacute; lớn, người coi xe cho kh&aacute;ch, bảo vệ&hellip;kh&ocirc;ng những thế c&ograve;n c&oacute; thời gian kinh doanh linh động.</span></span></span></p>\r\n\r\n<h2 style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Đối t&aacute;c &ndash; kh&aacute;ch h&agrave;ng</span> của Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt</span></strong></span></h2>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,sans-serif\">Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt<span style=\"color:black\">đ&atilde; th&agrave;nh c&ocirc;ng với m&ocirc; h&igrave;nh hợp t&aacute;c kinh doanh tại khu vực th&agrave;nh phố Hồ Ch&iacute; Minh, ở c&aacute;c địa điểm trực thuộc quận 9, Quận B&igrave;nh T&acirc;n, Quận Thủ Đức, Quận G&ograve; Vấp&hellip;V&agrave; một số khu vực tỉnh th&agrave;nh l&acirc;n cận như Phan Thiết, L&acirc;m Đồng&hellip;.. </span>Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt <span style=\"color:black\">mong muốn mang đến cho bạn sự lựa chọn kinh doanh an to&agrave;n, linh hoạt trong đầu tư, ph&ugrave; hợp với nguồn vốn của kh&aacute;ch h&agrave;ng v&agrave; đặc biệt l&agrave; c&oacute; ch&iacute;nh s&aacute;ch hỗ trợ cho kh&aacute;ch h&agrave;ng một c&aacute;ch to&agrave;n diện.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,sans-serif\">Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt <span style=\"color:black\">đảm bảo chất lượng vệ sinh an to&agrave;n thực phẩm v&agrave; c&oacute; giấy chứng nhận nguồn gốc sản phẩm từ đầu đến cuối quy tr&igrave;nh được d&aacute;n trực tiếp tr&ecirc;n tất cả c&aacute;c kiot m&agrave; gi&aacute; cả lại cực kỳ hợp l&yacute;.</span><img alt=\"\" height=\"375\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image006.jpg\" width=\"601\" /></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><img alt=\"\" height=\"400\" src=\"/image/images/image2.jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,sans-serif\">Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt <span style=\"color:black\">sẽ l&agrave; lựa chọn h&igrave;nh thức kinh doanh tốt nhất cho bạn. B&ecirc;n cạnh đ&oacute;, ch&uacute;ng t&ocirc;i sẽ phản hồi th&ocirc;ng tin cho qu&yacute; kh&aacute;ch chậm nhất trong v&ograve;ng 24h. Qu&yacute; kh&aacute;ch n&ecirc;n sử dụng email để tiện cho việc trao đổi được r&otilde; r&agrave;ng, chi tiết hơn.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\">&nbsp;</p>\r\n', 'pa5.jpg', '2017-05-11 16:05:22', '2019-10-05 09:10:26', 1, '', '', '', '', '', '', 'Giới thiệu', '', 've-chung-toi', 1),
(36, 'Nhà hàng Hoàng Sa', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !', '<p><strong>HNP - Thủ đ&ocirc; H&agrave; Nội nước Cộng h&ograve;a X&atilde; hội Chủ nghĩa Việt Nam, l&agrave; trung t&acirc;m đầu n&atilde;o về ch&iacute;nh trị, văn ho&aacute; v&agrave; khoa học kĩ thuật, đồng thời l&agrave; trung t&acirc;m lớn về giao dịch kinh tế v&agrave; quốc tế của cả nước. Trải qua 1.000 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, kể từ khi vua L&yacute; Th&aacute;i Tổ chọn khu đất Đại La b&ecirc;n cửa s&ocirc;ng T&ocirc; Lịch l&agrave;m nơi định đ&ocirc; cho mu&ocirc;n đời. H&agrave; Nội đ&atilde; chứng kiến sự thăng trầm của hầu hết c&aacute;c triều đại phong kiến Việt Nam từ L&yacute;- Trần - L&ecirc; - Mạc - Nguyễn&hellip; kinh th&agrave;nh Thăng Long l&agrave; nơi bu&ocirc;n b&aacute;n, trung t&acirc;m văn h&oacute;a, gi&aacute;o dục của cả miền Bắc.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Tượng đ&agrave;i L&yacute; Th&aacute;i Tổ tại hồ Ho&agrave;n Kiếm, H&agrave; Nội</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VỊ TR&Iacute; ĐỊA L&Iacute;</strong></p>\r\n\r\n<p><strong>Tọa độ địa l&iacute;:</strong>&nbsp;H&agrave; Nội hiện nay c&oacute; vị tr&iacute; từ 20&deg;53&#39; đến 21&deg;23&#39; vĩ độ Bắc v&agrave; 105&deg;44&#39; đến 106&deg;02&#39; kinh độ Đ&ocirc;ng, tiếp gi&aacute;p với c&aacute;c tỉnh Th&aacute;i Nguy&ecirc;n - Vĩnh Ph&uacute;c ở ph&iacute;a Bắc; H&agrave; Nam - H&ograve;a B&igrave;nh ở ph&iacute;a Nam; Bắc Giang- Bắc Ninh- Hưng Y&ecirc;n ở ph&iacute;a Đ&ocirc;ng v&agrave; H&ograve;a B&igrave;nh- Ph&uacute; Thọ ở ph&iacute;a T&acirc;y.</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;<br />\r\n<em>Bản đồ địa giới H&agrave;nh ch&iacute;nh H&agrave; Nội</em><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Diện t&iacute;ch tự nhi&ecirc;n:</strong></p>\r\n\r\n<p>Thực hiện kết luận Hội nghị Trung ương 6 (kh&oacute;a X) v&agrave; Nghị quyết của Quốc hội kh&oacute;a XII, kỳ họp thứ 3, số 15/2008/NQ-QH12, ng&agrave;y 29 th&aacute;ng 05 năm 2008 v&agrave; Nghị quyết n&agrave;y c&oacute; hiệu lực thi h&agrave;nh từ ng&agrave;y 01 th&aacute;ng 8 năm 2008, to&agrave;n bộ hệ thống ch&iacute;nh trị của th&agrave;nh phố H&agrave; Nội sau hợp nhất, mở rộng địa giới h&agrave;nh ch&iacute;nh Thủ đ&ocirc;&nbsp; bao gồm: Th&agrave;nh phố H&agrave; Nội, tỉnh H&agrave; T&acirc;y, huyện M&ecirc; Linh - tỉnh Vĩnh Ph&uacute;c v&agrave; bốn x&atilde; thuộc huyện Lương Sơn - tỉnh H&ograve;a B&igrave;nh. Thủ đ&ocirc; H&agrave; Nội sau khi được mở rộng c&oacute; diện t&iacute;ch tự nhi&ecirc;n 334.470,02 ha, lớn gấp hơn 3 lần trước đ&acirc;y v&agrave; đứng v&agrave;o tốp 17 Thủ đ&ocirc; tr&ecirc;n thế giới c&oacute; diện t&iacute;ch rộng nhất; d&acirc;n số tăng hơn gấp rưỡi, hơn 6,2 triệu người, hiện nay l&agrave; hơn 7 triệu người; gồm 30 đơn vị h&agrave;nh ch&iacute;nh cấp quận, huyện, thị x&atilde;, 577 x&atilde;, phường, thị trấn.</p>\r\n\r\n<p>H&agrave; Nội hiện nay vừa c&oacute; n&uacute;i, c&oacute; đồi v&agrave; địa h&igrave;nh thấp dần từ Bắc xuống Nam, từ T&acirc;y sang Đ&ocirc;ng, trong đ&oacute; đồng bằng chiếm tới &frac34; diện t&iacute;ch tự nhi&ecirc;n của th&agrave;nh phố. Độ cao trung b&igrave;nh của H&agrave; Nội từ 5 đến 20 m&eacute;t so với mặt nước biển, c&aacute;c đồi n&uacute;i cao đều tập trung ở ph&iacute;a Bắc v&agrave; T&acirc;y. C&aacute;c đỉnh cao nhất l&agrave; Ba V&igrave; 1.281 m&eacute;t; Gia D&ecirc; 707 m&eacute;t; Ch&acirc;n Chim 462 m&eacute;t; Thanh Lanh 427 m&eacute;t v&agrave; Thi&ecirc;n Tr&ugrave; 378 m&eacute;t&hellip;Khu vực nội đ&ocirc; c&oacute; một số g&ograve; đồi thấp, như g&ograve; Đống Đa, n&uacute;i N&ugrave;ng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; Diện t&iacute;ch đất ph&acirc;n bổ sử dụng (332889,0 ha)</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất n&ocirc;ng, l&acirc;m nghiệp, thủy sản&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 188601,1 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất phi n&ocirc;ng nghiệp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; 134947,4 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất chưa sử dụng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 9340,5 ha&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n<em>(Theo&ldquo;Ni&ecirc;n gi&aacute;m thống k&ecirc; H&agrave; Nội năm 2010&rdquo; của Cục Thống k&ecirc; th&agrave;nh phố H&agrave; Nội).</em></p>\r\n\r\n<p><strong>Thủy văn:</strong></p>\r\n\r\n<p>H&agrave; Nội được h&igrave;nh th&agrave;nh từ ch&acirc;u thổ s&ocirc;ng Hồng, n&eacute;t đặc trưng của v&ugrave;ng địa l&iacute; th&agrave;nh phố H&agrave; Nội l&agrave; &ldquo;Th&agrave;nh phố s&ocirc;ng hồ&rdquo; hay &ldquo;Th&agrave;nh phố trong s&ocirc;ng&rdquo;. Nhờ c&aacute;c con s&ocirc;ng lớn nhỏ đ&atilde; chảy miệt m&agrave;i h&agrave;ng vạn năm đem ph&ugrave; sa về bồi đắp n&ecirc;n v&ugrave;ng ch&acirc;u thổ ph&igrave; nhi&ecirc;u n&agrave;y. Hiện nay, c&oacute; 7 s&ocirc;ng chảy qua H&agrave; Nội: s&ocirc;ng Hồng, s&ocirc;ng Đuống, s&ocirc;ng Đ&agrave;, s&ocirc;ng Nhuệ, s&ocirc;ng Cầu, s&ocirc;ng Đ&aacute;y, s&ocirc;ng C&agrave; Lồ. Trong đ&oacute;, đoạn s&ocirc;ng Hồng chảy qua H&agrave; Nội d&agrave;i tới 163km (chiếm 1/3 chiều d&agrave;i của con s&ocirc;ng n&agrave;y chảy qua l&atilde;nh thổ Việt nam). Trong nội đ&ocirc; ngo&agrave;i 2 con s&ocirc;ng T&ocirc; Lịch v&agrave; s&ocirc;ng Kim ngưu c&ograve;n c&oacute; hệ thống hồ đầm l&agrave; những đường ti&ecirc;u tho&aacute;t nước thải của H&agrave; Nội.</p>\r\n\r\n<p><br />\r\n<em>Đường Thanh Ni&ecirc;n ngăn c&aacute;ch giữa Hồ T&acirc;y v&agrave; hồ Tr&uacute;c Bạch</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ở thế kỉ trước c&oacute; tr&ecirc;n 100 hồ lớn nhỏ, phần nhiều l&agrave; hồ đầm tự nhi&ecirc;n, l&agrave; vết t&iacute;ch của những kh&uacute;c s&ocirc;ng chết để lại một số hồ nh&acirc;n tạo, cải tạo c&aacute;c c&aacute;nh đồng lầy thụt th&agrave;nh hồ. Hiện nay, d&ugrave; phần lớn đ&atilde; bị san lấp lấy mặt bằng x&acirc;y dựng, đến nay vẫn c&ograve;n tới h&agrave;ng trăm hồ đầm lớn nhỏ được ph&acirc;n bổ ở khắp c&aacute;c phường, x&atilde; của thủ đ&ocirc; H&agrave; Nội. Nổi tiếng nhất l&agrave; c&aacute;c hồ Ho&agrave;n Kiếm, Hồ T&acirc;y, Quảng B&aacute;,Tr&uacute;c Bạch, Thiền Quang, Bảy Mẫu, Thanh Nh&agrave;n, Linh Đ&agrave;m, Y&ecirc;n Sở, Giảng V&otilde;, Đồng M&ocirc;, Suối Hai&hellip;</p>\r\n\r\n<p>Những hồ đầm n&agrave;y của H&agrave; Nội kh&ocirc;ng những l&agrave; một kho nước lớn m&agrave; c&ograve;n l&agrave; hệ thống điều h&ograve;a nhiệt độ tự nhi&ecirc;n l&agrave;m cho v&ugrave;ng đ&ocirc; thị nội th&agrave;nh giảm bớt sức h&uacute;t nhiệt tỏa n&oacute;ng của khối b&ecirc; t&ocirc;ng, sắt th&eacute;p, nhựa đường v&agrave; c&aacute;c hoạt động của c&aacute;c nh&agrave; m&aacute;y&hellip; Hồ đầm của H&agrave; Nội kh&ocirc;ng những tạo ra cho th&agrave;nh phố kh&iacute; hậu m&aacute;t l&agrave;nh -&nbsp; tiểu kh&iacute; hậu đ&ocirc; thị m&agrave; c&ograve;n l&agrave; những danh lam thắng cảnh, những v&ugrave;ng văn h&oacute;a đặc sắc của Thăng Long -&nbsp; H&agrave; Nội.</p>\r\n\r\n<p><strong>Kh&iacute; hậu - Thời tiết:</strong></p>\r\n\r\n<p>Nằm trong v&ugrave;ng nhiệt đới gi&oacute; m&ugrave;a, kh&iacute; hậu H&agrave; Nội c&oacute; đặc trưng nổi bật l&agrave; gi&oacute; m&ugrave;a ẩm, n&oacute;ng v&agrave; mưa nhiều về m&ugrave;a h&egrave;, lạnh v&agrave; &iacute;t mưa về m&ugrave;a đ&ocirc;ng; được chia th&agrave;nh bốn m&ugrave;a r&otilde; rệt trong năm: Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng. M&ugrave;a xu&acirc;n bắt đầu v&agrave;o th&aacute;ng 2 (hay th&aacute;ng gi&ecirc;ng &acirc;m lịch) k&eacute;o d&agrave;i đến th&aacute;ng 4. M&ugrave;a hạ bắt đầu từ th&aacute;ng 5 đến th&aacute;ng 8, n&oacute;ng bức nhưng lại mưa nhiều. M&ugrave;a thu bắt đầu từ th&aacute;ng 8 đến th&aacute;ng 10, trời dịu m&aacute;t, l&aacute; v&agrave;ng rơi. M&ugrave;a đ&ocirc;ng bắt đầu từ th&aacute;ng 11 đến th&aacute;ng 1 năm sau, thời tiết gi&aacute; lạnh, kh&ocirc; hanh. Ranh giới ph&acirc;n chia bốn m&ugrave;a chỉ c&oacute; t&iacute;nh chất tương đối, v&igrave; H&agrave; Nội c&oacute; năm r&eacute;t sớm, c&oacute; năm r&eacute;t muộn, c&oacute; năm n&oacute;ng k&eacute;o d&agrave;i, nhiệt độ l&ecirc;n tới 40&deg;C, c&oacute; năm nhiệt độ xuống thấp dưới 5&deg;C.</p>\r\n\r\n<p>H&agrave; Nội quanh năm tiếp nhận được lượng bức xạ mặt trời kh&aacute; dồi d&agrave;o. Tổng lượng bức xạ trung b&igrave;nh h&agrave;ng năm khoảng 120 kcal/cm&sup2;, nhiệt độ trung b&igrave;nh năm 24,9&deg;C, độ ẩm trung b&igrave;nh 80 - 82%. Lượng mưa trung b&igrave;nh tr&ecirc;n 1700mm/năm (khoảng 114 ng&agrave;y mưa/năm).</p>\r\n\r\n<p>Trong lịch sử ph&aacute;t triển, H&agrave; Nội cũng đ&atilde; nhiều lần trải qua c&aacute;c biến đổi bất thường của kh&iacute; hậu - thời tiết. Th&aacute;ng 5 năm 1926, H&agrave; Nội chứng kiến một đợt nắng khủng khiếp c&oacute; ng&agrave;y nhiệt độ l&ecirc;n tới 42,8oC. Th&aacute;ng 1 năm 1955, m&ugrave;a đ&ocirc;ng gi&aacute; buốt nhất trong lịch sử, H&agrave; Nội sống trong c&aacute;i gi&aacute; lạnh xuống đến 2,7oC. V&agrave; gần đ&acirc;y nhất th&aacute;ng 11 năm 2008, sau khi vừa mở rộng địa giới h&agrave;nh ch&iacute;nh, H&agrave; Nội hứng chịu một cơn mưa dữ dội chưa từng thấy. Hầu như tất cả c&aacute;c tuyến phố đều ngập ch&igrave;m trong nước, lượng mưa lớn vượt qu&aacute; mọi dự b&aacute;o đ&atilde; g&acirc;y ra một trận lụt lịch sử ở H&agrave; Nội, l&agrave;m nhiều người chết, g&acirc;y thiệt hại vật chất đ&aacute;ng kể.</p>\r\n', '22.jpg', '2017-05-11 16:05:03', '2019-10-05 10:10:01', 1, '', '', '', '', '', '', 'Nhà hàng Hoàng Sa', '', 'nha-hang-hoang-sa-page', 1),
(39, 'Nhà hàng Vịnh Xanh', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !', '<p><strong>HNP - Thủ đ&ocirc; H&agrave; Nội nước Cộng h&ograve;a X&atilde; hội Chủ nghĩa Việt Nam, l&agrave; trung t&acirc;m đầu n&atilde;o về ch&iacute;nh trị, văn ho&aacute; v&agrave; khoa học kĩ thuật, đồng thời l&agrave; trung t&acirc;m lớn về giao dịch kinh tế v&agrave; quốc tế của cả nước. Trải qua 1.000 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, kể từ khi vua L&yacute; Th&aacute;i Tổ chọn khu đất Đại La b&ecirc;n cửa s&ocirc;ng T&ocirc; Lịch l&agrave;m nơi định đ&ocirc; cho mu&ocirc;n đời. H&agrave; Nội đ&atilde; chứng kiến sự thăng trầm của hầu hết c&aacute;c triều đại phong kiến Việt Nam từ L&yacute;- Trần - L&ecirc; - Mạc - Nguyễn&hellip; kinh th&agrave;nh Thăng Long l&agrave; nơi bu&ocirc;n b&aacute;n, trung t&acirc;m văn h&oacute;a, gi&aacute;o dục của cả miền Bắc.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Tượng đ&agrave;i L&yacute; Th&aacute;i Tổ tại hồ Ho&agrave;n Kiếm, H&agrave; Nội</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VỊ TR&Iacute; ĐỊA L&Iacute;</strong></p>\r\n\r\n<p><strong>Tọa độ địa l&iacute;:</strong>&nbsp;H&agrave; Nội hiện nay c&oacute; vị tr&iacute; từ 20&deg;53&#39; đến 21&deg;23&#39; vĩ độ Bắc v&agrave; 105&deg;44&#39; đến 106&deg;02&#39; kinh độ Đ&ocirc;ng, tiếp gi&aacute;p với c&aacute;c tỉnh Th&aacute;i Nguy&ecirc;n - Vĩnh Ph&uacute;c ở ph&iacute;a Bắc; H&agrave; Nam - H&ograve;a B&igrave;nh ở ph&iacute;a Nam; Bắc Giang- Bắc Ninh- Hưng Y&ecirc;n ở ph&iacute;a Đ&ocirc;ng v&agrave; H&ograve;a B&igrave;nh- Ph&uacute; Thọ ở ph&iacute;a T&acirc;y.</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;<br />\r\n<em>Bản đồ địa giới H&agrave;nh ch&iacute;nh H&agrave; Nội</em><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Diện t&iacute;ch tự nhi&ecirc;n:</strong></p>\r\n\r\n<p>Thực hiện kết luận Hội nghị Trung ương 6 (kh&oacute;a X) v&agrave; Nghị quyết của Quốc hội kh&oacute;a XII, kỳ họp thứ 3, số 15/2008/NQ-QH12, ng&agrave;y 29 th&aacute;ng 05 năm 2008 v&agrave; Nghị quyết n&agrave;y c&oacute; hiệu lực thi h&agrave;nh từ ng&agrave;y 01 th&aacute;ng 8 năm 2008, to&agrave;n bộ hệ thống ch&iacute;nh trị của th&agrave;nh phố H&agrave; Nội sau hợp nhất, mở rộng địa giới h&agrave;nh ch&iacute;nh Thủ đ&ocirc;&nbsp; bao gồm: Th&agrave;nh phố H&agrave; Nội, tỉnh H&agrave; T&acirc;y, huyện M&ecirc; Linh - tỉnh Vĩnh Ph&uacute;c v&agrave; bốn x&atilde; thuộc huyện Lương Sơn - tỉnh H&ograve;a B&igrave;nh. Thủ đ&ocirc; H&agrave; Nội sau khi được mở rộng c&oacute; diện t&iacute;ch tự nhi&ecirc;n 334.470,02 ha, lớn gấp hơn 3 lần trước đ&acirc;y v&agrave; đứng v&agrave;o tốp 17 Thủ đ&ocirc; tr&ecirc;n thế giới c&oacute; diện t&iacute;ch rộng nhất; d&acirc;n số tăng hơn gấp rưỡi, hơn 6,2 triệu người, hiện nay l&agrave; hơn 7 triệu người; gồm 30 đơn vị h&agrave;nh ch&iacute;nh cấp quận, huyện, thị x&atilde;, 577 x&atilde;, phường, thị trấn.</p>\r\n\r\n<p>H&agrave; Nội hiện nay vừa c&oacute; n&uacute;i, c&oacute; đồi v&agrave; địa h&igrave;nh thấp dần từ Bắc xuống Nam, từ T&acirc;y sang Đ&ocirc;ng, trong đ&oacute; đồng bằng chiếm tới &frac34; diện t&iacute;ch tự nhi&ecirc;n của th&agrave;nh phố. Độ cao trung b&igrave;nh của H&agrave; Nội từ 5 đến 20 m&eacute;t so với mặt nước biển, c&aacute;c đồi n&uacute;i cao đều tập trung ở ph&iacute;a Bắc v&agrave; T&acirc;y. C&aacute;c đỉnh cao nhất l&agrave; Ba V&igrave; 1.281 m&eacute;t; Gia D&ecirc; 707 m&eacute;t; Ch&acirc;n Chim 462 m&eacute;t; Thanh Lanh 427 m&eacute;t v&agrave; Thi&ecirc;n Tr&ugrave; 378 m&eacute;t&hellip;Khu vực nội đ&ocirc; c&oacute; một số g&ograve; đồi thấp, như g&ograve; Đống Đa, n&uacute;i N&ugrave;ng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; Diện t&iacute;ch đất ph&acirc;n bổ sử dụng (332889,0 ha)</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất n&ocirc;ng, l&acirc;m nghiệp, thủy sản&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 188601,1 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất phi n&ocirc;ng nghiệp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; 134947,4 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất chưa sử dụng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 9340,5 ha&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n<em>(Theo&ldquo;Ni&ecirc;n gi&aacute;m thống k&ecirc; H&agrave; Nội năm 2010&rdquo; của Cục Thống k&ecirc; th&agrave;nh phố H&agrave; Nội).</em></p>\r\n\r\n<p><strong>Thủy văn:</strong></p>\r\n\r\n<p>H&agrave; Nội được h&igrave;nh th&agrave;nh từ ch&acirc;u thổ s&ocirc;ng Hồng, n&eacute;t đặc trưng của v&ugrave;ng địa l&iacute; th&agrave;nh phố H&agrave; Nội l&agrave; &ldquo;Th&agrave;nh phố s&ocirc;ng hồ&rdquo; hay &ldquo;Th&agrave;nh phố trong s&ocirc;ng&rdquo;. Nhờ c&aacute;c con s&ocirc;ng lớn nhỏ đ&atilde; chảy miệt m&agrave;i h&agrave;ng vạn năm đem ph&ugrave; sa về bồi đắp n&ecirc;n v&ugrave;ng ch&acirc;u thổ ph&igrave; nhi&ecirc;u n&agrave;y. Hiện nay, c&oacute; 7 s&ocirc;ng chảy qua H&agrave; Nội: s&ocirc;ng Hồng, s&ocirc;ng Đuống, s&ocirc;ng Đ&agrave;, s&ocirc;ng Nhuệ, s&ocirc;ng Cầu, s&ocirc;ng Đ&aacute;y, s&ocirc;ng C&agrave; Lồ. Trong đ&oacute;, đoạn s&ocirc;ng Hồng chảy qua H&agrave; Nội d&agrave;i tới 163km (chiếm 1/3 chiều d&agrave;i của con s&ocirc;ng n&agrave;y chảy qua l&atilde;nh thổ Việt nam). Trong nội đ&ocirc; ngo&agrave;i 2 con s&ocirc;ng T&ocirc; Lịch v&agrave; s&ocirc;ng Kim ngưu c&ograve;n c&oacute; hệ thống hồ đầm l&agrave; những đường ti&ecirc;u tho&aacute;t nước thải của H&agrave; Nội.</p>\r\n\r\n<p><br />\r\n<em>Đường Thanh Ni&ecirc;n ngăn c&aacute;ch giữa Hồ T&acirc;y v&agrave; hồ Tr&uacute;c Bạch</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ở thế kỉ trước c&oacute; tr&ecirc;n 100 hồ lớn nhỏ, phần nhiều l&agrave; hồ đầm tự nhi&ecirc;n, l&agrave; vết t&iacute;ch của những kh&uacute;c s&ocirc;ng chết để lại một số hồ nh&acirc;n tạo, cải tạo c&aacute;c c&aacute;nh đồng lầy thụt th&agrave;nh hồ. Hiện nay, d&ugrave; phần lớn đ&atilde; bị san lấp lấy mặt bằng x&acirc;y dựng, đến nay vẫn c&ograve;n tới h&agrave;ng trăm hồ đầm lớn nhỏ được ph&acirc;n bổ ở khắp c&aacute;c phường, x&atilde; của thủ đ&ocirc; H&agrave; Nội. Nổi tiếng nhất l&agrave; c&aacute;c hồ Ho&agrave;n Kiếm, Hồ T&acirc;y, Quảng B&aacute;,Tr&uacute;c Bạch, Thiền Quang, Bảy Mẫu, Thanh Nh&agrave;n, Linh Đ&agrave;m, Y&ecirc;n Sở, Giảng V&otilde;, Đồng M&ocirc;, Suối Hai&hellip;</p>\r\n\r\n<p>Những hồ đầm n&agrave;y của H&agrave; Nội kh&ocirc;ng những l&agrave; một kho nước lớn m&agrave; c&ograve;n l&agrave; hệ thống điều h&ograve;a nhiệt độ tự nhi&ecirc;n l&agrave;m cho v&ugrave;ng đ&ocirc; thị nội th&agrave;nh giảm bớt sức h&uacute;t nhiệt tỏa n&oacute;ng của khối b&ecirc; t&ocirc;ng, sắt th&eacute;p, nhựa đường v&agrave; c&aacute;c hoạt động của c&aacute;c nh&agrave; m&aacute;y&hellip; Hồ đầm của H&agrave; Nội kh&ocirc;ng những tạo ra cho th&agrave;nh phố kh&iacute; hậu m&aacute;t l&agrave;nh -&nbsp; tiểu kh&iacute; hậu đ&ocirc; thị m&agrave; c&ograve;n l&agrave; những danh lam thắng cảnh, những v&ugrave;ng văn h&oacute;a đặc sắc của Thăng Long -&nbsp; H&agrave; Nội.</p>\r\n\r\n<p><strong>Kh&iacute; hậu - Thời tiết:</strong></p>\r\n\r\n<p>Nằm trong v&ugrave;ng nhiệt đới gi&oacute; m&ugrave;a, kh&iacute; hậu H&agrave; Nội c&oacute; đặc trưng nổi bật l&agrave; gi&oacute; m&ugrave;a ẩm, n&oacute;ng v&agrave; mưa nhiều về m&ugrave;a h&egrave;, lạnh v&agrave; &iacute;t mưa về m&ugrave;a đ&ocirc;ng; được chia th&agrave;nh bốn m&ugrave;a r&otilde; rệt trong năm: Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng. M&ugrave;a xu&acirc;n bắt đầu v&agrave;o th&aacute;ng 2 (hay th&aacute;ng gi&ecirc;ng &acirc;m lịch) k&eacute;o d&agrave;i đến th&aacute;ng 4. M&ugrave;a hạ bắt đầu từ th&aacute;ng 5 đến th&aacute;ng 8, n&oacute;ng bức nhưng lại mưa nhiều. M&ugrave;a thu bắt đầu từ th&aacute;ng 8 đến th&aacute;ng 10, trời dịu m&aacute;t, l&aacute; v&agrave;ng rơi. M&ugrave;a đ&ocirc;ng bắt đầu từ th&aacute;ng 11 đến th&aacute;ng 1 năm sau, thời tiết gi&aacute; lạnh, kh&ocirc; hanh. Ranh giới ph&acirc;n chia bốn m&ugrave;a chỉ c&oacute; t&iacute;nh chất tương đối, v&igrave; H&agrave; Nội c&oacute; năm r&eacute;t sớm, c&oacute; năm r&eacute;t muộn, c&oacute; năm n&oacute;ng k&eacute;o d&agrave;i, nhiệt độ l&ecirc;n tới 40&deg;C, c&oacute; năm nhiệt độ xuống thấp dưới 5&deg;C.</p>\r\n\r\n<p>H&agrave; Nội quanh năm tiếp nhận được lượng bức xạ mặt trời kh&aacute; dồi d&agrave;o. Tổng lượng bức xạ trung b&igrave;nh h&agrave;ng năm khoảng 120 kcal/cm&sup2;, nhiệt độ trung b&igrave;nh năm 24,9&deg;C, độ ẩm trung b&igrave;nh 80 - 82%. Lượng mưa trung b&igrave;nh tr&ecirc;n 1700mm/năm (khoảng 114 ng&agrave;y mưa/năm).</p>\r\n\r\n<p>Trong lịch sử ph&aacute;t triển, H&agrave; Nội cũng đ&atilde; nhiều lần trải qua c&aacute;c biến đổi bất thường của kh&iacute; hậu - thời tiết. Th&aacute;ng 5 năm 1926, H&agrave; Nội chứng kiến một đợt nắng khủng khiếp c&oacute; ng&agrave;y nhiệt độ l&ecirc;n tới 42,8oC. Th&aacute;ng 1 năm 1955, m&ugrave;a đ&ocirc;ng gi&aacute; buốt nhất trong lịch sử, H&agrave; Nội sống trong c&aacute;i gi&aacute; lạnh xuống đến 2,7oC. V&agrave; gần đ&acirc;y nhất th&aacute;ng 11 năm 2008, sau khi vừa mở rộng địa giới h&agrave;nh ch&iacute;nh, H&agrave; Nội hứng chịu một cơn mưa dữ dội chưa từng thấy. Hầu như tất cả c&aacute;c tuyến phố đều ngập ch&igrave;m trong nước, lượng mưa lớn vượt qu&aacute; mọi dự b&aacute;o đ&atilde; g&acirc;y ra một trận lụt lịch sử ở H&agrave; Nội, l&agrave;m nhiều người chết, g&acirc;y thiệt hại vật chất đ&aacute;ng kể.</p>\r\n', '44.jpg', '2017-07-10 15:07:50', '2019-10-05 10:10:11', 1, '', '', '', '', '', '', 'Nhà hàng Vịnh Xanh', '', 'nha-hang-vinh-xanh-page', 1),
(40, 'Hệ thống Coffee CCCP', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !', '<p><strong>HNP - Thủ đ&ocirc; H&agrave; Nội nước Cộng h&ograve;a X&atilde; hội Chủ nghĩa Việt Nam, l&agrave; trung t&acirc;m đầu n&atilde;o về ch&iacute;nh trị, văn ho&aacute; v&agrave; khoa học kĩ thuật, đồng thời l&agrave; trung t&acirc;m lớn về giao dịch kinh tế v&agrave; quốc tế của cả nước. Trải qua 1.000 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, kể từ khi vua L&yacute; Th&aacute;i Tổ chọn khu đất Đại La b&ecirc;n cửa s&ocirc;ng T&ocirc; Lịch l&agrave;m nơi định đ&ocirc; cho mu&ocirc;n đời. H&agrave; Nội đ&atilde; chứng kiến sự thăng trầm của hầu hết c&aacute;c triều đại phong kiến Việt Nam từ L&yacute;- Trần - L&ecirc; - Mạc - Nguyễn&hellip; kinh th&agrave;nh Thăng Long l&agrave; nơi bu&ocirc;n b&aacute;n, trung t&acirc;m văn h&oacute;a, gi&aacute;o dục của cả miền Bắc.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Tượng đ&agrave;i L&yacute; Th&aacute;i Tổ tại hồ Ho&agrave;n Kiếm, H&agrave; Nội</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VỊ TR&Iacute; ĐỊA L&Iacute;</strong></p>\r\n\r\n<p><strong>Tọa độ địa l&iacute;:</strong>&nbsp;H&agrave; Nội hiện nay c&oacute; vị tr&iacute; từ 20&deg;53&#39; đến 21&deg;23&#39; vĩ độ Bắc v&agrave; 105&deg;44&#39; đến 106&deg;02&#39; kinh độ Đ&ocirc;ng, tiếp gi&aacute;p với c&aacute;c tỉnh Th&aacute;i Nguy&ecirc;n - Vĩnh Ph&uacute;c ở ph&iacute;a Bắc; H&agrave; Nam - H&ograve;a B&igrave;nh ở ph&iacute;a Nam; Bắc Giang- Bắc Ninh- Hưng Y&ecirc;n ở ph&iacute;a Đ&ocirc;ng v&agrave; H&ograve;a B&igrave;nh- Ph&uacute; Thọ ở ph&iacute;a T&acirc;y.</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;<br />\r\n<em>Bản đồ địa giới H&agrave;nh ch&iacute;nh H&agrave; Nội</em><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Diện t&iacute;ch tự nhi&ecirc;n:</strong></p>\r\n\r\n<p>Thực hiện kết luận Hội nghị Trung ương 6 (kh&oacute;a X) v&agrave; Nghị quyết của Quốc hội kh&oacute;a XII, kỳ họp thứ 3, số 15/2008/NQ-QH12, ng&agrave;y 29 th&aacute;ng 05 năm 2008 v&agrave; Nghị quyết n&agrave;y c&oacute; hiệu lực thi h&agrave;nh từ ng&agrave;y 01 th&aacute;ng 8 năm 2008, to&agrave;n bộ hệ thống ch&iacute;nh trị của th&agrave;nh phố H&agrave; Nội sau hợp nhất, mở rộng địa giới h&agrave;nh ch&iacute;nh Thủ đ&ocirc;&nbsp; bao gồm: Th&agrave;nh phố H&agrave; Nội, tỉnh H&agrave; T&acirc;y, huyện M&ecirc; Linh - tỉnh Vĩnh Ph&uacute;c v&agrave; bốn x&atilde; thuộc huyện Lương Sơn - tỉnh H&ograve;a B&igrave;nh. Thủ đ&ocirc; H&agrave; Nội sau khi được mở rộng c&oacute; diện t&iacute;ch tự nhi&ecirc;n 334.470,02 ha, lớn gấp hơn 3 lần trước đ&acirc;y v&agrave; đứng v&agrave;o tốp 17 Thủ đ&ocirc; tr&ecirc;n thế giới c&oacute; diện t&iacute;ch rộng nhất; d&acirc;n số tăng hơn gấp rưỡi, hơn 6,2 triệu người, hiện nay l&agrave; hơn 7 triệu người; gồm 30 đơn vị h&agrave;nh ch&iacute;nh cấp quận, huyện, thị x&atilde;, 577 x&atilde;, phường, thị trấn.</p>\r\n\r\n<p>H&agrave; Nội hiện nay vừa c&oacute; n&uacute;i, c&oacute; đồi v&agrave; địa h&igrave;nh thấp dần từ Bắc xuống Nam, từ T&acirc;y sang Đ&ocirc;ng, trong đ&oacute; đồng bằng chiếm tới &frac34; diện t&iacute;ch tự nhi&ecirc;n của th&agrave;nh phố. Độ cao trung b&igrave;nh của H&agrave; Nội từ 5 đến 20 m&eacute;t so với mặt nước biển, c&aacute;c đồi n&uacute;i cao đều tập trung ở ph&iacute;a Bắc v&agrave; T&acirc;y. C&aacute;c đỉnh cao nhất l&agrave; Ba V&igrave; 1.281 m&eacute;t; Gia D&ecirc; 707 m&eacute;t; Ch&acirc;n Chim 462 m&eacute;t; Thanh Lanh 427 m&eacute;t v&agrave; Thi&ecirc;n Tr&ugrave; 378 m&eacute;t&hellip;Khu vực nội đ&ocirc; c&oacute; một số g&ograve; đồi thấp, như g&ograve; Đống Đa, n&uacute;i N&ugrave;ng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; Diện t&iacute;ch đất ph&acirc;n bổ sử dụng (332889,0 ha)</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất n&ocirc;ng, l&acirc;m nghiệp, thủy sản&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 188601,1 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất phi n&ocirc;ng nghiệp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; 134947,4 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất chưa sử dụng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 9340,5 ha&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n<em>(Theo&ldquo;Ni&ecirc;n gi&aacute;m thống k&ecirc; H&agrave; Nội năm 2010&rdquo; của Cục Thống k&ecirc; th&agrave;nh phố H&agrave; Nội).</em></p>\r\n\r\n<p><strong>Thủy văn:</strong></p>\r\n\r\n<p>H&agrave; Nội được h&igrave;nh th&agrave;nh từ ch&acirc;u thổ s&ocirc;ng Hồng, n&eacute;t đặc trưng của v&ugrave;ng địa l&iacute; th&agrave;nh phố H&agrave; Nội l&agrave; &ldquo;Th&agrave;nh phố s&ocirc;ng hồ&rdquo; hay &ldquo;Th&agrave;nh phố trong s&ocirc;ng&rdquo;. Nhờ c&aacute;c con s&ocirc;ng lớn nhỏ đ&atilde; chảy miệt m&agrave;i h&agrave;ng vạn năm đem ph&ugrave; sa về bồi đắp n&ecirc;n v&ugrave;ng ch&acirc;u thổ ph&igrave; nhi&ecirc;u n&agrave;y. Hiện nay, c&oacute; 7 s&ocirc;ng chảy qua H&agrave; Nội: s&ocirc;ng Hồng, s&ocirc;ng Đuống, s&ocirc;ng Đ&agrave;, s&ocirc;ng Nhuệ, s&ocirc;ng Cầu, s&ocirc;ng Đ&aacute;y, s&ocirc;ng C&agrave; Lồ. Trong đ&oacute;, đoạn s&ocirc;ng Hồng chảy qua H&agrave; Nội d&agrave;i tới 163km (chiếm 1/3 chiều d&agrave;i của con s&ocirc;ng n&agrave;y chảy qua l&atilde;nh thổ Việt nam). Trong nội đ&ocirc; ngo&agrave;i 2 con s&ocirc;ng T&ocirc; Lịch v&agrave; s&ocirc;ng Kim ngưu c&ograve;n c&oacute; hệ thống hồ đầm l&agrave; những đường ti&ecirc;u tho&aacute;t nước thải của H&agrave; Nội.</p>\r\n\r\n<p><br />\r\n<em>Đường Thanh Ni&ecirc;n ngăn c&aacute;ch giữa Hồ T&acirc;y v&agrave; hồ Tr&uacute;c Bạch</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ở thế kỉ trước c&oacute; tr&ecirc;n 100 hồ lớn nhỏ, phần nhiều l&agrave; hồ đầm tự nhi&ecirc;n, l&agrave; vết t&iacute;ch của những kh&uacute;c s&ocirc;ng chết để lại một số hồ nh&acirc;n tạo, cải tạo c&aacute;c c&aacute;nh đồng lầy thụt th&agrave;nh hồ. Hiện nay, d&ugrave; phần lớn đ&atilde; bị san lấp lấy mặt bằng x&acirc;y dựng, đến nay vẫn c&ograve;n tới h&agrave;ng trăm hồ đầm lớn nhỏ được ph&acirc;n bổ ở khắp c&aacute;c phường, x&atilde; của thủ đ&ocirc; H&agrave; Nội. Nổi tiếng nhất l&agrave; c&aacute;c hồ Ho&agrave;n Kiếm, Hồ T&acirc;y, Quảng B&aacute;,Tr&uacute;c Bạch, Thiền Quang, Bảy Mẫu, Thanh Nh&agrave;n, Linh Đ&agrave;m, Y&ecirc;n Sở, Giảng V&otilde;, Đồng M&ocirc;, Suối Hai&hellip;</p>\r\n\r\n<p>Những hồ đầm n&agrave;y của H&agrave; Nội kh&ocirc;ng những l&agrave; một kho nước lớn m&agrave; c&ograve;n l&agrave; hệ thống điều h&ograve;a nhiệt độ tự nhi&ecirc;n l&agrave;m cho v&ugrave;ng đ&ocirc; thị nội th&agrave;nh giảm bớt sức h&uacute;t nhiệt tỏa n&oacute;ng của khối b&ecirc; t&ocirc;ng, sắt th&eacute;p, nhựa đường v&agrave; c&aacute;c hoạt động của c&aacute;c nh&agrave; m&aacute;y&hellip; Hồ đầm của H&agrave; Nội kh&ocirc;ng những tạo ra cho th&agrave;nh phố kh&iacute; hậu m&aacute;t l&agrave;nh -&nbsp; tiểu kh&iacute; hậu đ&ocirc; thị m&agrave; c&ograve;n l&agrave; những danh lam thắng cảnh, những v&ugrave;ng văn h&oacute;a đặc sắc của Thăng Long -&nbsp; H&agrave; Nội.</p>\r\n\r\n<p><strong>Kh&iacute; hậu - Thời tiết:</strong></p>\r\n\r\n<p>Nằm trong v&ugrave;ng nhiệt đới gi&oacute; m&ugrave;a, kh&iacute; hậu H&agrave; Nội c&oacute; đặc trưng nổi bật l&agrave; gi&oacute; m&ugrave;a ẩm, n&oacute;ng v&agrave; mưa nhiều về m&ugrave;a h&egrave;, lạnh v&agrave; &iacute;t mưa về m&ugrave;a đ&ocirc;ng; được chia th&agrave;nh bốn m&ugrave;a r&otilde; rệt trong năm: Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng. M&ugrave;a xu&acirc;n bắt đầu v&agrave;o th&aacute;ng 2 (hay th&aacute;ng gi&ecirc;ng &acirc;m lịch) k&eacute;o d&agrave;i đến th&aacute;ng 4. M&ugrave;a hạ bắt đầu từ th&aacute;ng 5 đến th&aacute;ng 8, n&oacute;ng bức nhưng lại mưa nhiều. M&ugrave;a thu bắt đầu từ th&aacute;ng 8 đến th&aacute;ng 10, trời dịu m&aacute;t, l&aacute; v&agrave;ng rơi. M&ugrave;a đ&ocirc;ng bắt đầu từ th&aacute;ng 11 đến th&aacute;ng 1 năm sau, thời tiết gi&aacute; lạnh, kh&ocirc; hanh. Ranh giới ph&acirc;n chia bốn m&ugrave;a chỉ c&oacute; t&iacute;nh chất tương đối, v&igrave; H&agrave; Nội c&oacute; năm r&eacute;t sớm, c&oacute; năm r&eacute;t muộn, c&oacute; năm n&oacute;ng k&eacute;o d&agrave;i, nhiệt độ l&ecirc;n tới 40&deg;C, c&oacute; năm nhiệt độ xuống thấp dưới 5&deg;C.</p>\r\n\r\n<p>H&agrave; Nội quanh năm tiếp nhận được lượng bức xạ mặt trời kh&aacute; dồi d&agrave;o. Tổng lượng bức xạ trung b&igrave;nh h&agrave;ng năm khoảng 120 kcal/cm&sup2;, nhiệt độ trung b&igrave;nh năm 24,9&deg;C, độ ẩm trung b&igrave;nh 80 - 82%. Lượng mưa trung b&igrave;nh tr&ecirc;n 1700mm/năm (khoảng 114 ng&agrave;y mưa/năm).</p>\r\n\r\n<p>Trong lịch sử ph&aacute;t triển, H&agrave; Nội cũng đ&atilde; nhiều lần trải qua c&aacute;c biến đổi bất thường của kh&iacute; hậu - thời tiết. Th&aacute;ng 5 năm 1926, H&agrave; Nội chứng kiến một đợt nắng khủng khiếp c&oacute; ng&agrave;y nhiệt độ l&ecirc;n tới 42,8oC. Th&aacute;ng 1 năm 1955, m&ugrave;a đ&ocirc;ng gi&aacute; buốt nhất trong lịch sử, H&agrave; Nội sống trong c&aacute;i gi&aacute; lạnh xuống đến 2,7oC. V&agrave; gần đ&acirc;y nhất th&aacute;ng 11 năm 2008, sau khi vừa mở rộng địa giới h&agrave;nh ch&iacute;nh, H&agrave; Nội hứng chịu một cơn mưa dữ dội chưa từng thấy. Hầu như tất cả c&aacute;c tuyến phố đều ngập ch&igrave;m trong nước, lượng mưa lớn vượt qu&aacute; mọi dự b&aacute;o đ&atilde; g&acirc;y ra một trận lụt lịch sử ở H&agrave; Nội, l&agrave;m nhiều người chết, g&acirc;y thiệt hại vật chất đ&aacute;ng kể.</p>\r\n', '33.jpg', '2017-07-10 22:07:44', '2019-10-05 10:10:23', 1, '', '', '', '', '', '', 'Hệ thống Coffee CCCP', '', 'he-thong-coffee-cccp-page', 1);
INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(41, 'Gian hàng chợ đêm', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !', '<p><strong>HNP - Thủ đ&ocirc; H&agrave; Nội nước Cộng h&ograve;a X&atilde; hội Chủ nghĩa Việt Nam, l&agrave; trung t&acirc;m đầu n&atilde;o về ch&iacute;nh trị, văn ho&aacute; v&agrave; khoa học kĩ thuật, đồng thời l&agrave; trung t&acirc;m lớn về giao dịch kinh tế v&agrave; quốc tế của cả nước. Trải qua 1.000 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, kể từ khi vua L&yacute; Th&aacute;i Tổ chọn khu đất Đại La b&ecirc;n cửa s&ocirc;ng T&ocirc; Lịch l&agrave;m nơi định đ&ocirc; cho mu&ocirc;n đời. H&agrave; Nội đ&atilde; chứng kiến sự thăng trầm của hầu hết c&aacute;c triều đại phong kiến Việt Nam từ L&yacute;- Trần - L&ecirc; - Mạc - Nguyễn&hellip; kinh th&agrave;nh Thăng Long l&agrave; nơi bu&ocirc;n b&aacute;n, trung t&acirc;m văn h&oacute;a, gi&aacute;o dục của cả miền Bắc.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Tượng đ&agrave;i L&yacute; Th&aacute;i Tổ tại hồ Ho&agrave;n Kiếm, H&agrave; Nội</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VỊ TR&Iacute; ĐỊA L&Iacute;</strong></p>\r\n\r\n<p><strong>Tọa độ địa l&iacute;:</strong>&nbsp;H&agrave; Nội hiện nay c&oacute; vị tr&iacute; từ 20&deg;53&#39; đến 21&deg;23&#39; vĩ độ Bắc v&agrave; 105&deg;44&#39; đến 106&deg;02&#39; kinh độ Đ&ocirc;ng, tiếp gi&aacute;p với c&aacute;c tỉnh Th&aacute;i Nguy&ecirc;n - Vĩnh Ph&uacute;c ở ph&iacute;a Bắc; H&agrave; Nam - H&ograve;a B&igrave;nh ở ph&iacute;a Nam; Bắc Giang- Bắc Ninh- Hưng Y&ecirc;n ở ph&iacute;a Đ&ocirc;ng v&agrave; H&ograve;a B&igrave;nh- Ph&uacute; Thọ ở ph&iacute;a T&acirc;y.</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;<br />\r\n<em>Bản đồ địa giới H&agrave;nh ch&iacute;nh H&agrave; Nội</em><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Diện t&iacute;ch tự nhi&ecirc;n:</strong></p>\r\n\r\n<p>Thực hiện kết luận Hội nghị Trung ương 6 (kh&oacute;a X) v&agrave; Nghị quyết của Quốc hội kh&oacute;a XII, kỳ họp thứ 3, số 15/2008/NQ-QH12, ng&agrave;y 29 th&aacute;ng 05 năm 2008 v&agrave; Nghị quyết n&agrave;y c&oacute; hiệu lực thi h&agrave;nh từ ng&agrave;y 01 th&aacute;ng 8 năm 2008, to&agrave;n bộ hệ thống ch&iacute;nh trị của th&agrave;nh phố H&agrave; Nội sau hợp nhất, mở rộng địa giới h&agrave;nh ch&iacute;nh Thủ đ&ocirc;&nbsp; bao gồm: Th&agrave;nh phố H&agrave; Nội, tỉnh H&agrave; T&acirc;y, huyện M&ecirc; Linh - tỉnh Vĩnh Ph&uacute;c v&agrave; bốn x&atilde; thuộc huyện Lương Sơn - tỉnh H&ograve;a B&igrave;nh. Thủ đ&ocirc; H&agrave; Nội sau khi được mở rộng c&oacute; diện t&iacute;ch tự nhi&ecirc;n 334.470,02 ha, lớn gấp hơn 3 lần trước đ&acirc;y v&agrave; đứng v&agrave;o tốp 17 Thủ đ&ocirc; tr&ecirc;n thế giới c&oacute; diện t&iacute;ch rộng nhất; d&acirc;n số tăng hơn gấp rưỡi, hơn 6,2 triệu người, hiện nay l&agrave; hơn 7 triệu người; gồm 30 đơn vị h&agrave;nh ch&iacute;nh cấp quận, huyện, thị x&atilde;, 577 x&atilde;, phường, thị trấn.</p>\r\n\r\n<p>H&agrave; Nội hiện nay vừa c&oacute; n&uacute;i, c&oacute; đồi v&agrave; địa h&igrave;nh thấp dần từ Bắc xuống Nam, từ T&acirc;y sang Đ&ocirc;ng, trong đ&oacute; đồng bằng chiếm tới &frac34; diện t&iacute;ch tự nhi&ecirc;n của th&agrave;nh phố. Độ cao trung b&igrave;nh của H&agrave; Nội từ 5 đến 20 m&eacute;t so với mặt nước biển, c&aacute;c đồi n&uacute;i cao đều tập trung ở ph&iacute;a Bắc v&agrave; T&acirc;y. C&aacute;c đỉnh cao nhất l&agrave; Ba V&igrave; 1.281 m&eacute;t; Gia D&ecirc; 707 m&eacute;t; Ch&acirc;n Chim 462 m&eacute;t; Thanh Lanh 427 m&eacute;t v&agrave; Thi&ecirc;n Tr&ugrave; 378 m&eacute;t&hellip;Khu vực nội đ&ocirc; c&oacute; một số g&ograve; đồi thấp, như g&ograve; Đống Đa, n&uacute;i N&ugrave;ng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; Diện t&iacute;ch đất ph&acirc;n bổ sử dụng (332889,0 ha)</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất n&ocirc;ng, l&acirc;m nghiệp, thủy sản&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 188601,1 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất phi n&ocirc;ng nghiệp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; 134947,4 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất chưa sử dụng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 9340,5 ha&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n<em>(Theo&ldquo;Ni&ecirc;n gi&aacute;m thống k&ecirc; H&agrave; Nội năm 2010&rdquo; của Cục Thống k&ecirc; th&agrave;nh phố H&agrave; Nội).</em></p>\r\n\r\n<p><strong>Thủy văn:</strong></p>\r\n\r\n<p>H&agrave; Nội được h&igrave;nh th&agrave;nh từ ch&acirc;u thổ s&ocirc;ng Hồng, n&eacute;t đặc trưng của v&ugrave;ng địa l&iacute; th&agrave;nh phố H&agrave; Nội l&agrave; &ldquo;Th&agrave;nh phố s&ocirc;ng hồ&rdquo; hay &ldquo;Th&agrave;nh phố trong s&ocirc;ng&rdquo;. Nhờ c&aacute;c con s&ocirc;ng lớn nhỏ đ&atilde; chảy miệt m&agrave;i h&agrave;ng vạn năm đem ph&ugrave; sa về bồi đắp n&ecirc;n v&ugrave;ng ch&acirc;u thổ ph&igrave; nhi&ecirc;u n&agrave;y. Hiện nay, c&oacute; 7 s&ocirc;ng chảy qua H&agrave; Nội: s&ocirc;ng Hồng, s&ocirc;ng Đuống, s&ocirc;ng Đ&agrave;, s&ocirc;ng Nhuệ, s&ocirc;ng Cầu, s&ocirc;ng Đ&aacute;y, s&ocirc;ng C&agrave; Lồ. Trong đ&oacute;, đoạn s&ocirc;ng Hồng chảy qua H&agrave; Nội d&agrave;i tới 163km (chiếm 1/3 chiều d&agrave;i của con s&ocirc;ng n&agrave;y chảy qua l&atilde;nh thổ Việt nam). Trong nội đ&ocirc; ngo&agrave;i 2 con s&ocirc;ng T&ocirc; Lịch v&agrave; s&ocirc;ng Kim ngưu c&ograve;n c&oacute; hệ thống hồ đầm l&agrave; những đường ti&ecirc;u tho&aacute;t nước thải của H&agrave; Nội.</p>\r\n\r\n<p><br />\r\n<em>Đường Thanh Ni&ecirc;n ngăn c&aacute;ch giữa Hồ T&acirc;y v&agrave; hồ Tr&uacute;c Bạch</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ở thế kỉ trước c&oacute; tr&ecirc;n 100 hồ lớn nhỏ, phần nhiều l&agrave; hồ đầm tự nhi&ecirc;n, l&agrave; vết t&iacute;ch của những kh&uacute;c s&ocirc;ng chết để lại một số hồ nh&acirc;n tạo, cải tạo c&aacute;c c&aacute;nh đồng lầy thụt th&agrave;nh hồ. Hiện nay, d&ugrave; phần lớn đ&atilde; bị san lấp lấy mặt bằng x&acirc;y dựng, đến nay vẫn c&ograve;n tới h&agrave;ng trăm hồ đầm lớn nhỏ được ph&acirc;n bổ ở khắp c&aacute;c phường, x&atilde; của thủ đ&ocirc; H&agrave; Nội. Nổi tiếng nhất l&agrave; c&aacute;c hồ Ho&agrave;n Kiếm, Hồ T&acirc;y, Quảng B&aacute;,Tr&uacute;c Bạch, Thiền Quang, Bảy Mẫu, Thanh Nh&agrave;n, Linh Đ&agrave;m, Y&ecirc;n Sở, Giảng V&otilde;, Đồng M&ocirc;, Suối Hai&hellip;</p>\r\n\r\n<p>Những hồ đầm n&agrave;y của H&agrave; Nội kh&ocirc;ng những l&agrave; một kho nước lớn m&agrave; c&ograve;n l&agrave; hệ thống điều h&ograve;a nhiệt độ tự nhi&ecirc;n l&agrave;m cho v&ugrave;ng đ&ocirc; thị nội th&agrave;nh giảm bớt sức h&uacute;t nhiệt tỏa n&oacute;ng của khối b&ecirc; t&ocirc;ng, sắt th&eacute;p, nhựa đường v&agrave; c&aacute;c hoạt động của c&aacute;c nh&agrave; m&aacute;y&hellip; Hồ đầm của H&agrave; Nội kh&ocirc;ng những tạo ra cho th&agrave;nh phố kh&iacute; hậu m&aacute;t l&agrave;nh -&nbsp; tiểu kh&iacute; hậu đ&ocirc; thị m&agrave; c&ograve;n l&agrave; những danh lam thắng cảnh, những v&ugrave;ng văn h&oacute;a đặc sắc của Thăng Long -&nbsp; H&agrave; Nội.</p>\r\n\r\n<p><strong>Kh&iacute; hậu - Thời tiết:</strong></p>\r\n\r\n<p>Nằm trong v&ugrave;ng nhiệt đới gi&oacute; m&ugrave;a, kh&iacute; hậu H&agrave; Nội c&oacute; đặc trưng nổi bật l&agrave; gi&oacute; m&ugrave;a ẩm, n&oacute;ng v&agrave; mưa nhiều về m&ugrave;a h&egrave;, lạnh v&agrave; &iacute;t mưa về m&ugrave;a đ&ocirc;ng; được chia th&agrave;nh bốn m&ugrave;a r&otilde; rệt trong năm: Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng. M&ugrave;a xu&acirc;n bắt đầu v&agrave;o th&aacute;ng 2 (hay th&aacute;ng gi&ecirc;ng &acirc;m lịch) k&eacute;o d&agrave;i đến th&aacute;ng 4. M&ugrave;a hạ bắt đầu từ th&aacute;ng 5 đến th&aacute;ng 8, n&oacute;ng bức nhưng lại mưa nhiều. M&ugrave;a thu bắt đầu từ th&aacute;ng 8 đến th&aacute;ng 10, trời dịu m&aacute;t, l&aacute; v&agrave;ng rơi. M&ugrave;a đ&ocirc;ng bắt đầu từ th&aacute;ng 11 đến th&aacute;ng 1 năm sau, thời tiết gi&aacute; lạnh, kh&ocirc; hanh. Ranh giới ph&acirc;n chia bốn m&ugrave;a chỉ c&oacute; t&iacute;nh chất tương đối, v&igrave; H&agrave; Nội c&oacute; năm r&eacute;t sớm, c&oacute; năm r&eacute;t muộn, c&oacute; năm n&oacute;ng k&eacute;o d&agrave;i, nhiệt độ l&ecirc;n tới 40&deg;C, c&oacute; năm nhiệt độ xuống thấp dưới 5&deg;C.</p>\r\n\r\n<p>H&agrave; Nội quanh năm tiếp nhận được lượng bức xạ mặt trời kh&aacute; dồi d&agrave;o. Tổng lượng bức xạ trung b&igrave;nh h&agrave;ng năm khoảng 120 kcal/cm&sup2;, nhiệt độ trung b&igrave;nh năm 24,9&deg;C, độ ẩm trung b&igrave;nh 80 - 82%. Lượng mưa trung b&igrave;nh tr&ecirc;n 1700mm/năm (khoảng 114 ng&agrave;y mưa/năm).</p>\r\n\r\n<p>Trong lịch sử ph&aacute;t triển, H&agrave; Nội cũng đ&atilde; nhiều lần trải qua c&aacute;c biến đổi bất thường của kh&iacute; hậu - thời tiết. Th&aacute;ng 5 năm 1926, H&agrave; Nội chứng kiến một đợt nắng khủng khiếp c&oacute; ng&agrave;y nhiệt độ l&ecirc;n tới 42,8oC. Th&aacute;ng 1 năm 1955, m&ugrave;a đ&ocirc;ng gi&aacute; buốt nhất trong lịch sử, H&agrave; Nội sống trong c&aacute;i gi&aacute; lạnh xuống đến 2,7oC. V&agrave; gần đ&acirc;y nhất th&aacute;ng 11 năm 2008, sau khi vừa mở rộng địa giới h&agrave;nh ch&iacute;nh, H&agrave; Nội hứng chịu một cơn mưa dữ dội chưa từng thấy. Hầu như tất cả c&aacute;c tuyến phố đều ngập ch&igrave;m trong nước, lượng mưa lớn vượt qu&aacute; mọi dự b&aacute;o đ&atilde; g&acirc;y ra một trận lụt lịch sử ở H&agrave; Nội, l&agrave;m nhiều người chết, g&acirc;y thiệt hại vật chất đ&aacute;ng kể.</p>\r\n', '11.jpg', '2017-07-10 22:07:03', '2019-10-05 10:10:34', 1, '', '', '', '', '', '', 'Gian hàng chợ đêm', '', 'gian-hang-cho-dem-page', 1),
(42, 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', 'pa4.jpg', '2017-07-10 22:07:22', '2017-12-03 17:12:52', 1, '', '', '', '', '', '', 'Hệ thống nhà thuốc', '', 'he-thong-nha-thuoc', 1),
(43, 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', 'pa3.jpg', '2017-07-10 22:07:41', '2017-12-03 17:12:42', 1, '', '', '', '', '', '', 'Hình thức giao hàng', '', 'hinh-thuc-giao-hang', 1),
(44, 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt=\"\" src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', 'pa2.jpg', '2017-07-10 22:07:55', '2017-12-03 17:12:31', 1, '', '', '', '', '', '', 'Hình thức thanh toán', '', 'hinh-thuc-thanh-toan', 1),
(45, 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/Hydrangeas.jpg\" width=\"600\" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"221\" src=\"/image/images/Cataloge%20Rem-File%20OK%2003.jpg\" width=\"600\" /></p>\r\n\r\n<p><img alt=\"\" height=\"900\" src=\"/image/images/11___.png\" width=\"900\" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', 'pa1.jpg', '2017-07-10 22:07:51', '2017-12-03 17:12:21', 1, '', '', '', '', '', '', 'Điều khoản sử dụng', '', 'dieu-khoan-su-dung', 1),
(54, 'Chính sách vận chuyển', '', '<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><u><span style=\"font-family:Arial\"><img alt=\"Chính sách giao hàng SPRO\" height=\"284\" src=\"http://spro.vn/image/catalog/bt_products/free%20shipping8.jpg\" style=\"float:left\" width=\"300\" /></span></u></span></span></span></h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>1. PHẠM VI &Aacute;P DỤNG:</strong></span><br />\r\nTất cả c&aacute;c kh&aacute;ch h&agrave;ng mua sản phẩm tại Website;&nbsp;hoặc kh&aacute;ch h&agrave;ng đến trực tiếp xem v&agrave; mua h&agrave;ng tại c&ocirc;ng ty c&oacute; nhu cầu giao h&agrave;ng trực tiếp tại nh&agrave;.&nbsp;<br />\r\n<br />\r\n<span style=\"color:#ff3300\"><strong>2. H&Igrave;NH THỨC &Aacute;P DỤNG:</strong></span><br />\r\n<u>2.1. Giao h&agrave;ng miễn ph&iacute; :</u><br />\r\nGiao h&agrave;ng miễn ph&iacute;<strong>&nbsp;</strong><strong>&aacute;p dụng cho đơn h&agrave;ng gi&aacute; trị từ 1.000.000&nbsp;VNĐ</strong>&nbsp;trở l&ecirc;n, trong&nbsp;<strong>khu vực nội th&agrave;nh th&agrave;nh phố Hồ Ch&iacute; Minh.</strong><br />\r\nVới Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;<strong>mua c&aacute;c sản phẩm cồng kềnh (khối lượng tr&ecirc;n 50kg), hoặc đơn h&agrave;ng c&oacute; gi&aacute; trị tr&ecirc;n 5.000.000 VNĐ</strong>: Qu&yacute; Kh&aacute;ch an t&acirc;m v&igrave; cũng sẽ được SPRO.VN giao h&agrave;ng miễn ph&iacute;&nbsp;trong khu vực l&ecirc;n đến 40km t&iacute;nh từ trụ sở SPRO.VN đến địa chỉ của Qu&yacute; Kh&aacute;ch.<br />\r\n<br />\r\n<u>2.2 . Giao h&agrave;ng t&iacute;nh ph&iacute;:</u></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- Nếu Qu&yacute; Kh&aacute;ch h&agrave;ng ở qu&aacute; xa so với trụ sở SPRO.VN, nhưng c&oacute; đ<strong>ơn h&agrave;ng tr&ecirc;n 5.000.000VNĐ hoặc đơn h&agrave;ng cồng kềnh lớn hơn 50kg</strong>, Qu&yacute; Kh&aacute;ch an t&acirc;m với ch&iacute;nh s&aacute;ch vận chuyển ưu đ&atilde;i của ch&uacute;ng t&ocirc;i:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#0000ff\"><strong><span style=\"font-family:Arial\">Miễn ph&iacute; giao h&agrave;ng cho 40km đầu ti&ecirc;n.</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Với mỗi km tiếp theo, Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;chỉ phải trả mức ph&iacute; rất mềm:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen\" height=\"34\" src=\"http://spro.vn/image/catalog/bt_products/them%2010k.png\" width=\"200\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- C&aacute;c trường hợp giao h&agrave;ng dưới 1.000.000VNĐ hoặc vận chuyển bằng dịch vụ vận chuyển&nbsp;b&ecirc;n thứ 3&nbsp;sẽ t&iacute;nh ph&iacute; giao h&agrave;ng theo bảng ph&iacute; vận chuyển của h&atilde;ng vận chuyển thứ 3 hoặc theo bảng ph&iacute; của c&ocirc;ng ty. Chi ph&iacute; n&agrave;y sẽ được c&ocirc;ng ty th&ocirc;ng b&aacute;o v&agrave; x&aacute;c nhận với Qu&yacute; kh&aacute;ch trước khi Qu&yacute; kh&aacute;ch tiến h&agrave;nh thanh to&aacute;n v&agrave; c&ocirc;ng ty tiến h&agrave;nh gửi h&agrave;ng.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>3. THỜI GIAN GIAO H&Agrave;NG:</strong></span><br />\r\n-&nbsp;<strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;) t&ugrave;y v&agrave;o khoảng c&aacute;ch vận chuyển.<br />\r\n- Trong một số trường hợp kh&aacute;ch quan C&ocirc;ng ty c&oacute; thể giao h&agrave;ng chậm trễ do những điều kiện bất khả kh&aacute;ng như thời tiết xấu, điều kiện giao th&ocirc;ng kh&ocirc;ng thuận lợi, xe hỏng h&oacute;c tr&ecirc;n đường giao h&agrave;ng, trục trặc trong qu&aacute; tr&igrave;nh xuất h&agrave;ng.<br />\r\n- Trong thời gian chờ đợi nhận h&agrave;ng, Qu&yacute; kh&aacute;ch c&oacute; bất cứ thắc mắc g&igrave; về th&ocirc;ng tin vận chuyển xin vui l&ograve;ng li&ecirc;n hệ hotline của ch&uacute;ng t&ocirc;i để nhận trợ gi&uacute;p.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chính sách vận chuyển\" height=\"296\" src=\"http://spro.vn/image/catalog/bt_products/624.jpg\" title=\"Vận chuyển hàng hóa, vận chuyển giá rẻ, vận chuyển toàn quốc, vận chuyển  nhanh\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;)</span></em></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>4. TR&Aacute;CH NHIỆM VỚI H&Agrave;NG H&Oacute;A VẬN CHUYỂN.</strong></span><br />\r\n- C&ocirc;ng ty sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng ch&uacute;ng t&ocirc;i đến Qu&yacute; kh&aacute;ch.<br />\r\n- Qu&yacute; kh&aacute;ch c&oacute; tr&aacute;ch nhiệm kiểm tra h&agrave;ng h&oacute;a khi nhận h&agrave;ng. Khi ph&aacute;t hiện h&agrave;ng h&oacute;a bị hư hại, trầy xước, bể vỡ, m&oacute;p m&eacute;o, hoặc sai h&agrave;ng h&oacute;a th&igrave; k&yacute; x&aacute;c nhận t&igrave;nh trạng h&agrave;ng h&oacute;a với Nh&acirc;n vi&ecirc;n giao nhận v&agrave; th&ocirc;ng b&aacute;o ngay cho Bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng theo số hotline của C&ocirc;ng ty.<br />\r\n- Sau khi Qu&yacute;&nbsp;kh&aacute;ch đ&atilde; k&yacute; nhận h&agrave;ng m&agrave; kh&ocirc;ng ghi ch&uacute; hoặc c&oacute; &yacute; kiến về h&agrave;ng h&oacute;a. C&ocirc;ng ty kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm với những y&ecirc;u cầu đổi trả v&igrave; hư hỏng, trầy xước, bể vỡ, m&oacute;p m&eacute;o, sai h&agrave;ng h&oacute;a,&hellip; từ Qu&yacute; kh&aacute;ch sau n&agrave;y.<br />\r\n- Nếu dịch vụ vận chuyển do Qu&yacute; kh&aacute;ch chỉ định v&agrave; lựa chọn th&igrave; qu&yacute; kh&aacute;ch sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a xảy ra trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng của c&ocirc;ng ty đến Qu&yacute; kh&aacute;ch. Kh&aacute;ch h&agrave;ng sẽ chịu tr&aacute;ch nhiệm cước ph&iacute; v&agrave; tổn thất li&ecirc;n quan.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen SPRO\" height=\"224\" src=\"http://spro.vn/image/catalog/bt_products/free_shipping_0.jpg\" title=\"Chính sách vận chuyển\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Hotline:&nbsp;<strong>0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;</strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>5. C&Aacute;C ĐIỀU KIỆN KH&Aacute;C</strong></span><br />\r\n- Ch&iacute;nh s&aacute;ch giao h&agrave;ng miễn ph&iacute; kh&ocirc;ng &aacute;p dụng đối với những sản phẩm được mua trong chương tr&igrave;nh khuyến mại giờ v&agrave;ng, gi&aacute; sốc&hellip;..<br />\r\n- Chi ph&iacute; cầu đường, ph&iacute; v&agrave;o th&ocirc;n x&atilde; hoặc ph&iacute; đỗ xe tại chung cư do kh&aacute;ch h&agrave;ng tự thanh to&aacute;n.<br />\r\n- C&ocirc;ng ty chỉ giao h&agrave;ng cho đ&uacute;ng người nhận m&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute; khi mua h&agrave;ng. Trong qu&aacute; tr&igrave;nh giao h&agrave;ng nếu c&oacute; sự thay đổi người nhận một c&aacute;ch kh&ocirc;ng r&otilde; r&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối giao h&agrave;ng v&agrave; y&ecirc;u cầu Qu&yacute; kh&aacute;ch h&agrave;ng nhận h&agrave;ng tại địa điểm của b&aacute;n h&agrave;ng của c&ocirc;ng ty.<br />\r\n- Nếu địa chỉ giao h&agrave;ng kh&ocirc;ng r&otilde; r&agrave;ng, nằm trong ng&otilde; ng&aacute;ch, hoặc ở những nơi nguy hiểm, những v&ugrave;ng đồi n&uacute;i hiểm trở, phương tiện giao th&ocirc;ng đi lại kh&oacute; khăn, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối vận chuyển, giao nhận h&agrave;ng trực tiếp.<br />\r\n- Trong c&aacute;c trường hợp bất khả kh&aacute;ng, do thi&ecirc;n tai, lũ lụt, hỏng h&oacute;c cầu ph&agrave; &hellip;, ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu tr&aacute;ch nhiệm bồi thường thiệt hại ph&aacute;t sinh do giao h&agrave;ng kh&ocirc;ng đ&uacute;ng thời gian hoặc kh&ocirc;ng vận chuyển h&agrave;ng h&oacute;a đến địa điểm như đ&atilde; thỏa thuận với kh&aacute;ch h&agrave;ng.<br />\r\n- Trường hợp ch&uacute;ng t&ocirc;i đ&atilde; vận chuyển h&agrave;ng đến địa điểm giao nhận như thỏa thuận l&uacute;c mua h&agrave;ng, nhưng v&igrave; một l&yacute; do n&agrave;o đ&oacute; kh&aacute;ch h&agrave;ng y&ecirc;u cầu trả lại h&agrave;ng th&igrave; l&uacute;c đ&oacute; kh&aacute;ch h&agrave;ng phải chịu chi ph&iacute; vận chuyển theo quy định của c&ocirc;ng ty.<br />\r\n- Đối với những sản phẩm nặng v&agrave; cồng kềnh cần vận chuyển l&ecirc;n tầng m&agrave; kh&ocirc;ng c&oacute; thang m&aacute;y đề nghị kh&aacute;ch h&agrave;ng hỗ trợ trong việc giao nhận.<br />\r\n- Trong những ng&agrave;y đặc biệt hoặc c&aacute;c ng&agrave;y Lễ hội do ch&iacute;nh s&aacute;ch giao th&ocirc;ng chung bị hạn chế (cấm đường đối với một số phương tiện&hellip;) thời gian giao h&agrave;ng c&oacute; thể sẽ thay đổi, Ch&uacute;ng t&ocirc;i sẽ gọi điện cho kh&aacute;ch h&agrave;ng để thống nhất thời gian giao nhận.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Phuong thuc van chuyen SPRO\" height=\"247\" src=\"http://spro.vn/image/catalog/bt_products/phuong-thuc-thanh-toan.jpg\" width=\"300\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>SPRO.VN</strong>&nbsp;- Giao h&agrave;ng tận nơi, đ&uacute;ng h&agrave;ng đ&uacute;ng người</span></em></span></span></span></p>\r\n', NULL, '2017-12-08 14:12:56', '2018-04-02 00:04:08', 1, '', '', '', '', '', '', 'Chính sách vận chuyển', '', 'chinh-sach-van-chuyen', 1);
INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(55, 'Hướng dẫn mua hàng', '', '<h4 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:18px\"><span style=\"color:#444444\"><span style=\"background-color:#ffffff\">Hướng dẫn mua h&agrave;ng</span></span></span></h4>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>SPRO.VN</strong>&nbsp;- L&agrave; 1 giải ph&aacute;p mua h&agrave;ng tuyệt vời đối với qu&yacute; kh&aacute;ch h&agrave;ng xa gần, bởi n&oacute; được đảm bảo t&iacute;nh ph&aacute;p l&yacute; của 1 c&ocirc;ng ty thiết bị l&acirc;u năm trong l&atilde;nh vực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Thị trường rộng lớn đ&atilde; v&agrave; đang li&ecirc;n kết được với nhiều đối t&aacute;c giao h&agrave;ng, tiện lợi, uy t&iacute;nh v&agrave; chuy&ecirc;n nghiệp.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Vận chuyển h&agrave;ng h&oacute;a tận nơi, đối với những sản phẩm kh&oacute; lắp đặt đ&atilde; c&oacute; đội ngũ kỹ thuật lắp đặt hướng dẫn ngay tại nh&agrave; m&agrave; kh&ocirc;ng cần mất th&ecirc;m chi ph&iacute;.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Điều đ&oacute; đồng nghĩa với việc kh&aacute;ch h&agrave;ng c&oacute; thể mua h&agrave;ng ngay khi ngồi tại nh&agrave; m&agrave; vẫn đảm bảo 100% những m&ocirc; tả của ch&uacute;ng t&ocirc;i l&agrave; ch&iacute;nh x&aacute;c, h&igrave;nh ảnh v&agrave; video l&agrave; x&aacute;c thực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>C&Aacute;CH MUA H&Agrave;NG NHƯ THẾ N&Agrave;O?</strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng tại cửa h&agrave;ng:&nbsp;</u>&nbsp;</strong>143 B&igrave;nh Lợi, Phường 13, Quận B&igrave;nh Thạnh</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Li&ecirc;n hệ với số&nbsp;<strong>Hotline</strong>:&nbsp;<strong>028.35.534.298</strong>&nbsp;&nbsp;của cửa h&agrave;ng để biết ch&iacute;nh x&aacute;c về t&igrave;nh trạng h&agrave;ng h&oacute;a &ndash; Địa chỉ x&aacute;c thực v&agrave; t&ecirc;n người phụ tr&aacute;ch b&aacute;n h&agrave;ng.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp;Mua h&agrave;ng + Đặt cọc + l&ecirc;n lịch giao h&agrave;ng (thỏa thuận)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Nhận h&agrave;ng tại nh&agrave;, kiểm tra đầy đủ phụ kiện, thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng số tiền c&ograve;n lại.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng online:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Truy cập v&agrave;o website&nbsp;<strong>SPRO.VN</strong>&nbsp;t&igrave;m sản phẩm tr&ecirc;n menu hoặc tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">V&iacute; dụ: mua m&aacute;y gia xe gia đ&igrave;nh chỉ cần g&otilde; v&agrave;o thanh t&igrave;m kiếm &ldquo;M&aacute;y rửa xe gia đ&igrave;nh&rdquo; hoặc &ldquo;may rua xe gia dinh&rdquo; hoặc &ldquo;gia đ&igrave;nh&rdquo;, &ldquo;gia dinh&rdquo; tuy nhi&ecirc;n t&igrave;m c&agrave;ng chi tiết th&igrave; c&agrave;ng dễ chọn được sản phẩm ph&ugrave; hợp. Hoặc t&igrave;m theo m&atilde; sản phẩm v&iacute; dụ: &ldquo;k2 360&rdquo;...</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp; Gọi điện thoại tr&ecirc;n website để được nh&acirc;n vi&ecirc;n tư vấn v&agrave; mua h&agrave;ng lu&ocirc;n qua điện thoại, hoặc click v&agrave;o n&uacute;t đặt h&agrave;ng l&agrave;m theo hướng dẫn sau đ&acirc;y để mua h&agrave;ng:</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Tiếp nhận điện thoại x&aacute;c nhận đơn h&agrave;ng của c&aacute;c tổng đ&agrave;i vi&ecirc;n &ndash; Thỏa thuận c&aacute;c phương thức vận chuyển thanh to&aacute;n sao cho ph&ugrave; hợp nhất.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 4:</strong>&nbsp;Nhận h&agrave;ng v&agrave; kiểm tra h&agrave;ng h&oacute;a tại nh&agrave;, li&ecirc;n hệ số điện thoại kỹ thuật để nhận được tư vấn khi sử dụng hoặc thắc mắc về sự cố: 0961.958.460 (Mr. Tuấn).</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng qua điện thoại:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Hồ Ch&iacute; Minh:</u></strong><br />\r\n<br />\r\n<strong>&nbsp;Hotline</strong>: 0835.534.298</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Ph&uacute;: 0986.954.423</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Ms.Hường: 0909.115.704</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Biển: 0965.570.643</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Hưng: 0962.073.945 (Tiếp nhận kh&aacute;ch h&agrave;ng c&oacute; nhu cầu l&agrave;m đại l&yacute;)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>H&agrave; Nội:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Hotline</strong>: 0976.666.906 Mr.Hưng</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Đạo: 0964.063.553</span></span></span></p>\r\n', NULL, '2017-12-08 14:12:06', '2018-04-02 00:04:26', 1, '', '', '', '', '', '', 'Hướng dẫn mua hàng', '', 'huong-dan-mua-hang', 1),
(56, 'Phương thức thanh toán', '', '<h3>Phương thức thanh to&aacute;n</h3>\r\n\r\n<p>C&Aacute;C TH&Ocirc;NG TIN CẦN BIẾT KHI THANH TO&Aacute;N</p>\r\n\r\n<h2 style=\"text-align:center\"><u><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO\" height=\"186\" src=\"http://spro.vn/image/catalog/bt_products/payment-options-banner.png\" title=\"phương thức thanh toan, phuong thuc thanh toan, thanh toán tiền hàng, thanh toan tien hang\" width=\"500\" /></a></u><br />\r\n&nbsp;</h2>\r\n\r\n<p>1. Thanh to&aacute;n COD: Nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt<br />\r\n<em>Khi qu&yacute; kh&aacute;ch y&ecirc;u cầu h&igrave;nh thức thanh to&aacute;n COD tức nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt,&nbsp;Qu&yacute; kh&aacute;ch vui l&ograve;ng lưu &yacute; những quy định sau:</em><br />\r\n- Đối với c&aacute;c sản phẩm được giao h&agrave;ng bởi nh&acirc;n vi&ecirc;n c&ocirc;ng ty, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n đầy đủ sau khi nh&acirc;n vi&ecirc;n đ&atilde; giao h&agrave;ng cho Qu&yacute; kh&aacute;ch. Nếu cần hỗ trợ hướng dẫn sử dụng, hoặc kiểm tra m&aacute;y m&oacute;c, thiết bị ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ ngay tại chỗ.<br />\r\n- Đối với h&agrave;ng h&oacute;a được gởi theo đường bưu điện hoặc dịch vụ chuyển ph&aacute;t nhanh. Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước cho nh&acirc;n vi&ecirc;n giao h&agrave;ng rồi mới b&oacute;c mở h&agrave;ng h&oacute;a (Đ&acirc;y l&agrave; quy định bắt buộc của đơn vị vận chuyển). Sau khi b&oacute;c mở h&agrave;ng h&oacute;a, nếu&nbsp;Qu&yacute; kh&aacute;ch cần th&ecirc;m hỗ trợ g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.<br />\r\n<br />\r\n2. Thanh to&aacute;n qua nh&agrave; xe, đơn vị chuyển ph&aacute;t<br />\r\n<em>Đối với c&aacute;c tỉnh ở xa khu vực th&agrave;nh phố Hồ Ch&iacute; Minh hay H&agrave; Nội. Ch&uacute;ng t&ocirc;i thường lựa chọn phương&nbsp;thức vận chuyển bằng xe kh&aacute;ch hoặc ch&agrave;nh xe vận chuyển. Điều n&agrave;y l&agrave;m giảm chi ph&iacute; vận chuyển đ&aacute;ng kể cho kh&aacute;ch h&agrave;ng. V&igrave; những sản phẩm c&oacute; k&iacute;ch thước hoặc trọng lượng lớn gần như kh&ocirc;ng thể gởi bưu điện hoặc c&oacute; gởi cước ph&iacute; sẽ rất cao. Do đ&oacute; Qu&yacute; kh&aacute;ch lưu &yacute; một số vấn đề sau đ&acirc;y:</em><br />\r\n- C&ocirc;ng ty sẽ &aacute;p dụng ch&iacute;nh s&aacute;ch nh&agrave; xe thu tiền hộ c&ocirc;ng ty. Do đ&oacute; nếu được y&ecirc;u cầu thu hộ, Qu&yacute; kh&aacute;ch vui l&ograve;ng chuẩn bị tiền thanh to&aacute;n trực tiếp cho nh&agrave; xe hoặc đơn vị vận chuyển do&nbsp;c&ocirc;ng ty y&ecirc;u cầu.<br />\r\n- Đối với c&aacute;c sản phẩm c&oacute; trọng lượng lớn v&agrave; kỹ thuật sử dụng phức tạp, Qu&yacute; kh&aacute;ch c&oacute; thể y&ecirc;u cầu nh&acirc;n vi&ecirc;n c&ocirc;ng ty đến tận nh&agrave; lắp đặt. V&agrave; sẽ thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng hoặc nh&acirc;n vi&ecirc;n lắp đặt t&ugrave;y theo th&ocirc;ng b&aacute;o của c&ocirc;ng ty.<br />\r\n<br />\r\n3.&nbsp;Thanh to&aacute;n tại c&ocirc;ng ty<br />\r\nQu&yacute; kh&aacute;ch mua h&agrave;ng c&oacute; thể đến địa chỉ c&ocirc;ng ty để xem h&agrave;ng v&agrave; mua h&agrave;ng:</p>\r\n\r\n<p><em>167 - 169 B&igrave;nh Lợi (Nơ Trang Long nối d&agrave;i), P. 13, Quận B&igrave;nh Thạnh, Tp. Hồ Ch&iacute; Minh .</em></p>\r\n\r\n<p><br />\r\n4. Thanh to&aacute;n c&ocirc;ng nợ<br />\r\nĐối với c&aacute;c c&ocirc;ng ty đề nghị thanh to&aacute;n c&ocirc;ng nợ, hai b&ecirc;n cần x&aacute;c nhận đơn đặt h&agrave;ng v&agrave; thời gian c&ocirc;ng nợ hoặc gởi PO đặt h&agrave;ng qua Email:&nbsp;Hotrospro@gmail.com. C&ocirc;ng ty sẽ xem x&eacute;t c&aacute;c trường hợp cụ thể v&agrave; th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng về việc c&oacute; chấp nhận&nbsp;c&ocirc;ng nợ hay kh&ocirc;ng.<br />\r\nLi&ecirc;n hệ trực tiếp qua số điện thoại:&nbsp;0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;<br />\r\n<br />\r\n5. Thanh to&aacute;n Chuyển khoản</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO \" height=\"313\" src=\"http://spro.vn/image/catalog/bt_products/computer-keyboard-and-credit-card.jpg\" title=\"phương thức thanh toán\" width=\"500\" /></a><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Qu&yacute; Kh&aacute;ch vui l&ograve;ng chuyển tiền&nbsp;v&agrave;o một&nbsp;trong c&aacute;c&nbsp;t&agrave;i khoản sau:</strong></p>\r\n\r\n<ul>\r\n	<li>Chủ t&agrave;i khoản: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 060059386363<br />\r\n	-&nbsp;<strong>Tại NH Sacombank</strong>&nbsp;- PGD Phan Đăng Lưu - Chi nh&aacute;nh 8/3<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: CT TNHH C&ocirc;ng Nghiệp v&agrave; TM Nam Việt<br />\r\n	- Số TK: 0531002529891<br />\r\n	-&nbsp;<strong>Tại NH Vietcombank&nbsp;</strong>- Chi nh&aacute;nh Đ&ocirc;ng S&agrave;i G&ograve;n<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 19026579068019<br />\r\n	-&nbsp;<strong>Tại NH Techcombank</strong>&nbsp;- Chi nh&aacute;nh Nguyễn Th&aacute;i Sơn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 100414851047518<br />\r\n	-&nbsp;<strong>Tại NH Eximbank</strong>&nbsp;- Chi nh&aacute;nh Chợ Lớn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 172704070003087<br />\r\n	-&nbsp;<strong>Tại NH HD Bank</strong>&nbsp;- Chi nh&aacute;nh Gia Định<br />\r\n	&nbsp;</li>\r\n	<li>TK c&aacute; nh&acirc;n kế to&aacute;n trưởng. Chủ TK: Phạm Thị&nbsp;Tuyết<br />\r\n	- Số TK: 108004183511<br />\r\n	-&nbsp;<strong>Tại NH Vietinbank</strong>&nbsp;- Chi nh&aacute;nh Vũng T&agrave;u.</li>\r\n</ul>\r\n\r\n<p>Hiện nay, c&ocirc;ng ty ch&uacute;ng t&ocirc;i kh&ocirc;ng &aacute;p dụng h&igrave;nh thức mua h&agrave;ng trả g&oacute;p. Khi mua h&agrave;ng nếu Qu&yacute; kh&aacute;ch c&oacute; thắc mắc về vấn đề thanh to&aacute;n, xin vui l&ograve;ng xem qua c&aacute;c th&ocirc;ng tin ph&iacute;a dưới.</p>\r\n\r\n<p>Sau khi đ&atilde; chuyển tiền, Qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng b&aacute;o ngay để c&ocirc;ng ty ch&uacute;ng t&ocirc;i tiện theo d&otilde;i,&nbsp;ghi nhận v&agrave; chuyển h&agrave;ng ngay cho Qu&yacute; kh&aacute;ch.&nbsp;</p>\r\n\r\n<p>--------------------------------------------------------------------</p>\r\n\r\n<p style=\"text-align:center\">Rất cảm ơn sự ủng hộ của Qu&yacute; kh&aacute;ch!</p>\r\n', NULL, '2017-12-08 14:12:15', '2018-04-02 00:04:15', 1, '', '', '', '', '', '', 'Phương thức thanh toán', '', 'phuong-thuc-thanh-toan', 1),
(57, 'Nguyên liệu', 'Dala Bread Bánh mỳ que Đà Lạt là một trong những món ngon được xếp vào hàng nổi tiếng hiện nay, có thể làm xiêu lòng những thị hiếu khắt khe nhất của con người thời đại.\r\n', '<p dir=\"ltr\" style=\"text-align:justify\">B&aacute;nh mỳ Dala l&agrave; thương hiệu vốn kh&ocirc;ng c&ograve;n xa lạ tr&ecirc;n thị trường ng&agrave;y nay, bởi những ưu điểm tuyệt vời, vị ngon tuyệt diệu m&agrave; kh&ocirc;ng ai c&oacute; thể &ldquo;cưỡng&rdquo; lại khi chỉ một lần được thưởng thức qua. Với chất lượng đi liền với m&ugrave;i vị, Dala Bread B&aacute;nh mỳ que Đ&agrave; Lạt tự h&agrave;o mang đến th&agrave;nh phẩm c&oacute; thể đ&aacute;p ứng tối đa nhu cầu của con người.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Th&agrave;nh phần c&oacute; trong Dala Bread B&aacute;nh mỳ que Đ&agrave; Lạt.</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Để c&oacute; được một phần Dala Bread B&aacute;nh mỳ que Đ&agrave; Lạt thơm nức mũi, tr&ograve;n vị đ&ograve;i hỏi tầm tay nghề cao của người chế biến, b&ecirc;n cạnh đ&oacute; c&ograve;n chứa đựng nền tảng nguy&ecirc;n liệu chất lượng, đảm bảo vệ sinh an to&agrave;n thực phẩm.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Trong khu&ocirc;n khổ bải viết n&agrave;y, ch&uacute;ng t&ocirc;i xin được giới thiệu đến bạn c&aacute;c th&agrave;nh phần chủ đạo c&oacute; trong một ổ b&aacute;nh mỳ Dala ho&agrave;n mỹ.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Nguy&ecirc;n liệu đến từ đơn vị T&acirc;n Vĩnh Ph&aacute;t.</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">T&acirc;n Vĩnh Ph&aacute;t l&agrave; một trong những thương hiệu cung cấp nhiều nguy&ecirc;n liệu chủ đạo cho B&aacute;nh mỳ Dala, c&oacute; thể kể đến như&nbsp;: pate, sốt l&ograve;ng đỏ trứng g&agrave; tươi, ch&agrave; b&ocirc;ng, nước tương, nem nướng, Jam b&ocirc;ng x&ocirc;ng kh&oacute;i, nước tương&hellip;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh3.googleusercontent.com/7HEOhuuqGHxIV94AOJQFlUXzwCSq416MwqNXtvgMcBSi29xvi1WcMizxnIk5afq6Kkj26lCOsd4PL6zsQiG5UMnqvgT2GSAOeJwouVrxfETTatWoP93gcxgnZcHdQK3rGepGPVAS\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Sốt l&ograve;ng đỏ trứng g&agrave; tươi T&acirc;n Vĩnh Ph&aacute;t</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh3.googleusercontent.com/o0CH8zZcrQCiUsQTKCFFWTZtwyAYbFrrqbAVUlJFxUKt1INl36vu2F9x8ae8JhJeFNvDVU0Ajmp7018m2xFd9K1lsYoAp5AtOwx8dVxSAYUHpev--BPubHjXao2U_akv5wWPPpda\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Pate T&acirc;n Vĩnh Ph&aacute;t</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh4.googleusercontent.com/3XdtVRmg1DxXI2c3iQPI5LNjAGfAb-T227Dvp8gCAWHEDb2qVLHtEVCblYucQ-zCZm1OGp_J3vMZlYWzouV0AhHbmrVCbZD4sUdif5Wgzz2MWsjo5ySocbmcSplGdTmIJyyoNwiz\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Ch&agrave; b&ocirc;ng T&acirc;n Vĩnh Ph&aacute;t</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">To&agrave;n bộ những sản phẩm n&agrave;y đều đ&aacute;p ứng đầy đủ những ti&ecirc;u chuẩn khắt khe về mặt chất lượng cũng như được kiểm định thường xuy&ecirc;n bởi c&aacute;c cơ quan an to&agrave;n vệ sinh thực phẩm c&oacute; thẩm quyền, chắc chắn mang lại phần Dala Bread B&aacute;nh mỳ que Đ&agrave; Lạt ngon, bổ m&agrave; kh&ocirc;ng g&acirc;y ra bất kỳ hiểm họa sức khỏe n&agrave;o đối với người thưởng thức.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh3.googleusercontent.com/BOEY0mOrv3wXE1C5fto8bnLDWTgNqqWJ1NSztuoY5rl7bVgEPsDLf7fRiI01xAODsTECF1y3ApY1ctcBUnl_zVrYNdRkMkkMltM7PP2hfpWgPP2J-p6Rl0HToQHnzL7UuifqSEhG\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Jam b&ocirc;ng T&acirc;n Vĩnh Ph&aacute;t</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Nguy&ecirc;n liệu đến từ đơn vị CP. Việt Nam.</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Một trong những th&agrave;nh phần quan trọng tạo n&ecirc;n m&ugrave;i vị đặc trưng của b&aacute;nh mỳ Dala, đ&oacute; ch&iacute;nh l&agrave; x&uacute;c x&iacute;ch CP ngon tuyệt hảo m&agrave; bạn kh&oacute; c&oacute; thể t&igrave;m thấy tại bất kỳ một đơn vị v&agrave;o kh&aacute;c tr&ecirc;n thị trường.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Tập đo&agrave;n CP. (Charoen Pokphand Group) l&agrave; một trong những đơn vị mạnh nhất tại Th&aacute;i Lan trong lĩnh vực c&ocirc;ng &ndash; n&ocirc;ng nghiệp v&agrave; chế biến thực phẩm, đặc biệt l&agrave; những sản phẩm từ thịt động vật v&agrave; hải sản. Tại Việt Nam, Tập đo&agrave;n CP. c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; C&ocirc;ng ty Cổ phần Chăn nu&ocirc;i CP. Việt Nam.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ch&iacute;nh quy m&ocirc; v&agrave; tầm cỡ của đơn vị sản xuất m&agrave; th&agrave;nh phẩm x&uacute;c x&iacute;ch do tập đo&agrave;n cung ứng tr&ecirc;n thị trường đều đảm bảo yếu tố ngon, bổ, sạch, kh&ocirc;ng tồn dư chất bảo quản, qu&yacute; kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m trong qu&aacute; tr&igrave;nh thưởng thức Dala Bread B&aacute;nh mỳ que Đ&agrave; Lạt.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh6.googleusercontent.com/ori-D8Wc4DRg5RjJo6AF5cXAAaP6bDvX-0gocqrHRgBZbgnPPd-dz5YLlgDddaoFqEwjOCQ7TB_v0yAbwD6h3A39Fot8hFNALDPXmrlRlwU7CXKfsqCc0WFrJT2Sr7Vofu8AotdQ\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>X&uacute;c x&iacute;ch CP</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ngo&agrave;i ra, một th&agrave;nh phẩm b&aacute;nh mỳ que Dala c&ograve;n c&oacute; sự g&oacute;p mặt v&agrave; bổ trợ th&ecirc;m của nhiều nguy&ecirc;n liệu cao cấp kh&aacute;c nữa như:</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong>Thịt x&ocirc;ng kh&oacute;i Le Gourmet</strong>: Le Gourmet l&agrave; một trong những thương hiệu thực phẩm h&agrave;ng đầu với sứ mệnh mang đến bữa ăn ngon - bổ - rẻ. C&aacute;c nguy&ecirc;n liệu được tuyển chọn đầu v&agrave;o kỹ lưỡng, chất lượng được kiểm định an to&agrave;n, mang đến sự h&agrave;i l&ograve;ng v&agrave; an t&acirc;m.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh4.googleusercontent.com/x4YwJWFnmkOIGRe0mIma_hrmzLXpnFuViGRKHfngyXZN8CRhspyZkJQHUF8GVyQIx2syXxmoLQW6ZX0cpvXCaTkj3YOIhvLTBAGdiOei3Owp23U1WxIpbuc5-5k5cC23chfqVrFB\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Thịt x&ocirc;ng kh&oacute;i Le Gourmet</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong>Ớt chưng theo c&ocirc;ng thức b&iacute; truyền của người Đ&agrave; Lạt</strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"424\" src=\"https://lh5.googleusercontent.com/EoLbfR_5pcd8ooULokuAHOpOnXTJiIjqGEocU0HteQGKlgWN8jmdJ6eagaKMV9OPJbVBjRJ6Rlh2ZmrUmKmevHOh-st7z5cOAqm0evwNorHCFN8EDWiqrUli8Y1Iv3NT2hdx2-dL\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Ớt chưng Đ&agrave; Lạt</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong>Rau củ quả từ l&agrave;ng rau sạch Đ&agrave; Lạt</strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong>Bơ thơm Meizan</strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Với tinh thần tr&aacute;ch nhiệm cao với kh&aacute;ch h&agrave;ng c&ugrave;ng mục ti&ecirc;u mang đến những sản phẩm b&aacute;nh mỳ Dala chất lượng, sạch, an to&agrave;n, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang kh&ocirc;ng ngừng tuyển chọn những d&ograve;ng nguy&ecirc;n liệu tốt nhất, đảm bảo mỗi lần thưởng thức l&agrave; hương vị tuyệt vời ấy sẽ m&atilde;i kh&ocirc;ng qu&ecirc;n.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">DALA BREAD B&Aacute;NH MỲ QUE Đ&Agrave; LẠT &ndash; ĐẲNG CẤP M&Ugrave;I VỊ, ĐỌNG M&Atilde;I KH&Ocirc;NG PHAI!</p>\r\n', NULL, '2018-11-22 19:11:35', '2018-11-23 11:11:44', 1, '', '', '', '', '', 'Dala Bread Bánh mỳ que Đà Lạt', 'Nguyên liệu', 'Dala Bread Bánh mỳ que Đà Lạt là một trong những món ngon được xếp vào hàng nổi tiếng hiện nay, có thể làm xiêu lòng những thị hiếu khắt khe nhất của con người thời đại.\r\n', 'nguyen-lieu', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'Về chúng tôi', '<p><strong>HOÀNG SA – AMC Co..Ltd</strong><br>\r\n                        <i class=\"fa fa-check-circle\"></i> Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu.<br>\r\n                        <i class=\"fa fa-check-circle\"></i> Mang phong cách hiện đại và sang trọng, tọa lạc tại 52 Trần Phú ngay trung tâm thành phố biển Nha Trang .\r\n                    </p>\r\n\r\n                    <p><strong>Nhà hàng chuyên phục vụ khách đoàn, lẻ</strong><br>\r\n                        <i class=\"fa fa-check-circle\"></i> Nhà Hàng chuyên phục vụ cơm đoàn theo yêu cầu của quý khách.<br>\r\n                        <i class=\"fa fa-check-circle\"></i> Chuyên tổ chức các chương trình như gala, hội thảo, tiệc cưới với chi phí hợp lý nhất!<br>\r\n                    </p>\r\n\r\n                    <p><strong>Chuyên phục vụ các món ăn chuyên về hải sản</strong><br>\r\n                        <i class=\"fa fa-check-circle\"></i> Nguyên liệu tươi sống, chủng loại đa dạng.<br>\r\n                        <i class=\"fa fa-check-circle\"></i> Đồ uống đa dạng từ rượu các loại , nước ngọt các loại cho đến cafe...\r\n                    </p>', '<p><span style=\"font-size:14px\">C&ocirc;ng ty TNHH M&amp;O Foods Việt Nam được th&agrave;nh lập ng&agrave;y 15 th&aacute;ng 10 năm 2018. Hệ thống M&amp;O Foods Việt Nam đang tiến h&agrave;nh hoạt động tr&ecirc;n c&aacute;c lĩnh vực thực phẩm với hy vọng mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm ẩm thực an to&agrave;n, chất lượng h&agrave;ng đầu Việt Nam.</span></p>\r\n\r\n<h2><span style=\"font-size:20px\"><strong>&nbsp;Sứ mệnh cao cả</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Với ch&uacute;ng t&ocirc;i, sứ mệnh thi&ecirc;ng li&ecirc;ng của m&igrave;nh l&agrave; đưa nền văn h&oacute;a ẩm thực Việt Nam l&ecirc;n một tầm cao mới.Văn h&oacute;a ẩm thực l&agrave; n&eacute;t văn h&oacute;a tự nhi&ecirc;n h&igrave;nh th&agrave;nh trong cuộc sống.Nhất l&agrave; đối với người Việt Nam, ẩm thực kh&ocirc;ng chỉ l&agrave; n&eacute;t văn h&oacute;a về vật chất m&agrave; c&ograve;n l&agrave; văn h&oacute;a về tinh thần. Qua ẩm thực người ta c&oacute; thể hiểu được n&eacute;t văn h&oacute;a thể hiện phẩm gi&aacute; con người, tr&igrave;nh độ văn h&oacute;a của d&acirc;n tộc với những đạo l&yacute; , ph&eacute;p tắc, phong tục trong c&aacute;ch ăn uống&hellip; M&amp;O Foods Việt Nam mong muốn n&acirc;ng cao chất lượng v&agrave; khẩu vị cho người ti&ecirc;u d&ugrave;ng Việt, qua đ&oacute; thể hiện được sự đa dạng trong n&eacute;t văn h&oacute;a ẩm thực người Việt. &ldquo;Ngon &ndash; sạch &ndash; Nhanh - chất lượng&rdquo; l&agrave; ti&ecirc;u ch&iacute; m&agrave; ch&uacute;ng t&ocirc;i hướng đến để phục vụ qu&yacute; vị một cảm gi&aacute;c tinh tế nhất trong bữa ăn thường ng&agrave;y.</span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><img alt=\"\" height=\"400\" src=\"/image/images/image3(1).jpg\" width=\"600\" /></p>\r\n\r\n<h2><span style=\"font-size:20px\"><strong>Triết l&yacute; kinh doanh :</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Th&ocirc;ng điệp của ch&uacute;ng t&ocirc;i: &ldquo; Kh&aacute;ch h&agrave;ng l&agrave; người th&acirc;n, tận t&acirc;m tr&ecirc;n từng c&ocirc;ng đoạn.&rdquo; Đ&acirc;y l&agrave; động lực để c&ocirc;ng ty phục vụ kh&aacute;ch h&agrave;ng tốt nhất, l&agrave; kim chỉ nam để mang đến cho thực kh&aacute;ch một trải nghiệm tinh tế nhất.</span></p>\r\n\r\n<h2><span style=\"font-size:20px\"><strong>Gi&aacute; trị cốt l&otilde;i :</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Chất lượng sản phẩm l&agrave; yếu tố then chốt tạo n&ecirc;n vị thế cạnh tranh của c&ocirc;ng ty. Khi chất lượng bảo đảm, sản phẩm được ti&ecirc;u thụ nhiều hơn, tạo điều kiện cho c&ocirc;ng ty chiếm lĩnh thị trường, tăng doanh thu v&agrave; lợi nhuận.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&ldquo;Chất lượng sản phẩm : Gi&aacute; trị cốt l&otilde;i để tồn tại &ldquo;. Đ&oacute; ch&iacute;nh l&agrave; bệ ph&oacute;ng cho nhiều sản phẩm Ngon &ndash; sạch &ndash; Nhanh - chất lượng m&agrave; hệ thống M&amp;O Foods Việt Nam sắp ra mắt phục vụ người ti&ecirc;u d&ugrave;ng VIỆT NAM.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Một trong những sản phẩm tạo n&ecirc;n gi&aacute; trị thương hiệu l&agrave; Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt.</span></p>\r\n\r\n<h2><span style=\"font-size:20px\"><strong>Sản phẩm ch&iacute;nh của Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">B&aacute;nh M&igrave; Que Đ&agrave; Lạt với d&ograve;ng b&aacute;nh m&igrave; ch&iacute;nh l&agrave; Dala Bread sử dụng nguồn nguy&ecirc;n liệu đảm bảo chất lượng an to&agrave;n vệ sinh thực phẩm với quy tr&igrave;nh sản xuất kh&eacute;p k&iacute;n từ nguồn nguy&ecirc;n liệu đầu v&agrave;o đến khi th&agrave;nh phẩm, c&ugrave;ng hương vị thơm ngon mềm mại kh&ocirc;ng cưỡng lại được l&agrave; một bữa ăn kh&ocirc;ng thể thiếu mang lại hương vị tươi mới cho vị gi&aacute;c của bạn.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"\" height=\"401\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image004.jpg\" width=\"601\" /><img alt=\"\" height=\"400\" src=\"/image/images/image3.jpg\" width=\"600\" /></span></p>\r\n\r\n<h2 style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">H&igrave;nh thức kinh doanh</span> của Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt</span></strong></span></h2>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,sans-serif\"><span style=\"background-color:white\"><span style=\"color:black\">Với nhu cầu tiện &iacute;ch hiện nay, việc phục vụ những bữa ăn nhanh gọn v&agrave; tiện lợi được kh&aacute; nhiều người ưa chuộng. Hơn nữa, với sự th&acirc;n thuộc cũng như l&agrave; mặt h&agrave;ng gần gũi với mọi lứa tuổi từ học sinh, sinh vi&ecirc;n hay tới người đi l&agrave;m&hellip; đều biết tới b&aacute;nh m&igrave;. Th&ecirc;m v&agrave;o đ&oacute;, chất lượng v&agrave; hương vị cũng l&agrave; yếu tố quyết định cảm thực của kh&aacute;ch h&agrave;ng. Chắc chắn với thương hiệu vốn c&oacute; truyền thống cộng th&ecirc;m vị ngon của b&aacute;nh mỳ, độ tươi của c&aacute;c nguy&ecirc;n liệu đi k&egrave;m của ch&uacute;ng t&ocirc;i, việc kinh doanh theo phương thức nhượng quyền thương hiệu b&aacute;nh mỳ Dala Bread ho&agrave;n to&agrave;n dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng thu lại lợi nhuận cao.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Ch&iacute;nh v&igrave; vậy, ch&uacute;ng t&ocirc;i sử dụng phương thức kinh doanh <span style=\"background-color:white\">nhượng quyền thương hiệu </span></span><span style=\"background-color:white\">Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt</span><span style=\"color:black\">, c&ugrave;ng với việc hợp t&aacute;c với c&aacute;c đại l&yacute; v&agrave; vốn cần bỏ ra kh&ocirc;ng nhiều m&agrave; l&agrave; sản phẩm c&oacute; chiến lược thị trường ti&ecirc;u thụ tốt. C&aacute;ch chế biến đơn giản m&agrave; bất cứ ai cũng c&oacute; thể l&agrave;m được. Hơn nữa, với m&ocirc; h&igrave;nh kinh doanh n&agrave;y bạn ho&agrave;n to&agrave;n dễ d&agrave;ng t&igrave;m kiếm mặt bằng, kh&ocirc;ng lo lắng như những chi ph&iacute; như mặt tiền qu&aacute; lớn, người coi xe cho kh&aacute;ch, bảo vệ&hellip;kh&ocirc;ng những thế c&ograve;n c&oacute; thời gian kinh doanh linh động.</span></span></span></p>\r\n\r\n<h2 style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Đối t&aacute;c &ndash; kh&aacute;ch h&agrave;ng</span> của Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt</span></strong></span></h2>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,sans-serif\">Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt<span style=\"color:black\">đ&atilde; th&agrave;nh c&ocirc;ng với m&ocirc; h&igrave;nh hợp t&aacute;c kinh doanh tại khu vực th&agrave;nh phố Hồ Ch&iacute; Minh, ở c&aacute;c địa điểm trực thuộc quận 9, Quận B&igrave;nh T&acirc;n, Quận Thủ Đức, Quận G&ograve; Vấp&hellip;V&agrave; một số khu vực tỉnh th&agrave;nh l&acirc;n cận như Phan Thiết, L&acirc;m Đồng&hellip;.. </span>Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt <span style=\"color:black\">mong muốn mang đến cho bạn sự lựa chọn kinh doanh an to&agrave;n, linh hoạt trong đầu tư, ph&ugrave; hợp với nguồn vốn của kh&aacute;ch h&agrave;ng v&agrave; đặc biệt l&agrave; c&oacute; ch&iacute;nh s&aacute;ch hỗ trợ cho kh&aacute;ch h&agrave;ng một c&aacute;ch to&agrave;n diện.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,sans-serif\">Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt <span style=\"color:black\">đảm bảo chất lượng vệ sinh an to&agrave;n thực phẩm v&agrave; c&oacute; giấy chứng nhận nguồn gốc sản phẩm từ đầu đến cuối quy tr&igrave;nh được d&aacute;n trực tiếp tr&ecirc;n tất cả c&aacute;c kiot m&agrave; gi&aacute; cả lại cực kỳ hợp l&yacute;.</span><img alt=\"\" height=\"375\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image006.jpg\" width=\"601\" /></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><img alt=\"\" height=\"400\" src=\"/image/images/image2.jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,sans-serif\">Dala Bread B&aacute;nh m&igrave; que Đ&agrave; Lạt <span style=\"color:black\">sẽ l&agrave; lựa chọn h&igrave;nh thức kinh doanh tốt nhất cho bạn. B&ecirc;n cạnh đ&oacute;, ch&uacute;ng t&ocirc;i sẽ phản hồi th&ocirc;ng tin cho qu&yacute; kh&aacute;ch chậm nhất trong v&ograve;ng 24h. Qu&yacute; kh&aacute;ch n&ecirc;n sử dụng email để tiện cho việc trao đổi được r&otilde; r&agrave;ng, chi tiết hơn.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\">&nbsp;</p>\r\n', '', '', '', '', '', 1, 've-chung-toi', 'Giới thiệu', '', ''),
(36, 35, 'en', 'Giới thiệu en', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" height=\"564\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right\" width=\"670\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1, 'gioi-thieu-en', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(37, 36, 'vn', 'Nhà hàng Hoàng Sa', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !', '<p><strong>HNP - Thủ đ&ocirc; H&agrave; Nội nước Cộng h&ograve;a X&atilde; hội Chủ nghĩa Việt Nam, l&agrave; trung t&acirc;m đầu n&atilde;o về ch&iacute;nh trị, văn ho&aacute; v&agrave; khoa học kĩ thuật, đồng thời l&agrave; trung t&acirc;m lớn về giao dịch kinh tế v&agrave; quốc tế của cả nước. Trải qua 1.000 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, kể từ khi vua L&yacute; Th&aacute;i Tổ chọn khu đất Đại La b&ecirc;n cửa s&ocirc;ng T&ocirc; Lịch l&agrave;m nơi định đ&ocirc; cho mu&ocirc;n đời. H&agrave; Nội đ&atilde; chứng kiến sự thăng trầm của hầu hết c&aacute;c triều đại phong kiến Việt Nam từ L&yacute;- Trần - L&ecirc; - Mạc - Nguyễn&hellip; kinh th&agrave;nh Thăng Long l&agrave; nơi bu&ocirc;n b&aacute;n, trung t&acirc;m văn h&oacute;a, gi&aacute;o dục của cả miền Bắc.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Tượng đ&agrave;i L&yacute; Th&aacute;i Tổ tại hồ Ho&agrave;n Kiếm, H&agrave; Nội</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VỊ TR&Iacute; ĐỊA L&Iacute;</strong></p>\r\n\r\n<p><strong>Tọa độ địa l&iacute;:</strong>&nbsp;H&agrave; Nội hiện nay c&oacute; vị tr&iacute; từ 20&deg;53&#39; đến 21&deg;23&#39; vĩ độ Bắc v&agrave; 105&deg;44&#39; đến 106&deg;02&#39; kinh độ Đ&ocirc;ng, tiếp gi&aacute;p với c&aacute;c tỉnh Th&aacute;i Nguy&ecirc;n - Vĩnh Ph&uacute;c ở ph&iacute;a Bắc; H&agrave; Nam - H&ograve;a B&igrave;nh ở ph&iacute;a Nam; Bắc Giang- Bắc Ninh- Hưng Y&ecirc;n ở ph&iacute;a Đ&ocirc;ng v&agrave; H&ograve;a B&igrave;nh- Ph&uacute; Thọ ở ph&iacute;a T&acirc;y.</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;<br />\r\n<em>Bản đồ địa giới H&agrave;nh ch&iacute;nh H&agrave; Nội</em><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Diện t&iacute;ch tự nhi&ecirc;n:</strong></p>\r\n\r\n<p>Thực hiện kết luận Hội nghị Trung ương 6 (kh&oacute;a X) v&agrave; Nghị quyết của Quốc hội kh&oacute;a XII, kỳ họp thứ 3, số 15/2008/NQ-QH12, ng&agrave;y 29 th&aacute;ng 05 năm 2008 v&agrave; Nghị quyết n&agrave;y c&oacute; hiệu lực thi h&agrave;nh từ ng&agrave;y 01 th&aacute;ng 8 năm 2008, to&agrave;n bộ hệ thống ch&iacute;nh trị của th&agrave;nh phố H&agrave; Nội sau hợp nhất, mở rộng địa giới h&agrave;nh ch&iacute;nh Thủ đ&ocirc;&nbsp; bao gồm: Th&agrave;nh phố H&agrave; Nội, tỉnh H&agrave; T&acirc;y, huyện M&ecirc; Linh - tỉnh Vĩnh Ph&uacute;c v&agrave; bốn x&atilde; thuộc huyện Lương Sơn - tỉnh H&ograve;a B&igrave;nh. Thủ đ&ocirc; H&agrave; Nội sau khi được mở rộng c&oacute; diện t&iacute;ch tự nhi&ecirc;n 334.470,02 ha, lớn gấp hơn 3 lần trước đ&acirc;y v&agrave; đứng v&agrave;o tốp 17 Thủ đ&ocirc; tr&ecirc;n thế giới c&oacute; diện t&iacute;ch rộng nhất; d&acirc;n số tăng hơn gấp rưỡi, hơn 6,2 triệu người, hiện nay l&agrave; hơn 7 triệu người; gồm 30 đơn vị h&agrave;nh ch&iacute;nh cấp quận, huyện, thị x&atilde;, 577 x&atilde;, phường, thị trấn.</p>\r\n\r\n<p>H&agrave; Nội hiện nay vừa c&oacute; n&uacute;i, c&oacute; đồi v&agrave; địa h&igrave;nh thấp dần từ Bắc xuống Nam, từ T&acirc;y sang Đ&ocirc;ng, trong đ&oacute; đồng bằng chiếm tới &frac34; diện t&iacute;ch tự nhi&ecirc;n của th&agrave;nh phố. Độ cao trung b&igrave;nh của H&agrave; Nội từ 5 đến 20 m&eacute;t so với mặt nước biển, c&aacute;c đồi n&uacute;i cao đều tập trung ở ph&iacute;a Bắc v&agrave; T&acirc;y. C&aacute;c đỉnh cao nhất l&agrave; Ba V&igrave; 1.281 m&eacute;t; Gia D&ecirc; 707 m&eacute;t; Ch&acirc;n Chim 462 m&eacute;t; Thanh Lanh 427 m&eacute;t v&agrave; Thi&ecirc;n Tr&ugrave; 378 m&eacute;t&hellip;Khu vực nội đ&ocirc; c&oacute; một số g&ograve; đồi thấp, như g&ograve; Đống Đa, n&uacute;i N&ugrave;ng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; Diện t&iacute;ch đất ph&acirc;n bổ sử dụng (332889,0 ha)</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất n&ocirc;ng, l&acirc;m nghiệp, thủy sản&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 188601,1 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất phi n&ocirc;ng nghiệp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; 134947,4 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất chưa sử dụng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 9340,5 ha&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n<em>(Theo&ldquo;Ni&ecirc;n gi&aacute;m thống k&ecirc; H&agrave; Nội năm 2010&rdquo; của Cục Thống k&ecirc; th&agrave;nh phố H&agrave; Nội).</em></p>\r\n\r\n<p><strong>Thủy văn:</strong></p>\r\n\r\n<p>H&agrave; Nội được h&igrave;nh th&agrave;nh từ ch&acirc;u thổ s&ocirc;ng Hồng, n&eacute;t đặc trưng của v&ugrave;ng địa l&iacute; th&agrave;nh phố H&agrave; Nội l&agrave; &ldquo;Th&agrave;nh phố s&ocirc;ng hồ&rdquo; hay &ldquo;Th&agrave;nh phố trong s&ocirc;ng&rdquo;. Nhờ c&aacute;c con s&ocirc;ng lớn nhỏ đ&atilde; chảy miệt m&agrave;i h&agrave;ng vạn năm đem ph&ugrave; sa về bồi đắp n&ecirc;n v&ugrave;ng ch&acirc;u thổ ph&igrave; nhi&ecirc;u n&agrave;y. Hiện nay, c&oacute; 7 s&ocirc;ng chảy qua H&agrave; Nội: s&ocirc;ng Hồng, s&ocirc;ng Đuống, s&ocirc;ng Đ&agrave;, s&ocirc;ng Nhuệ, s&ocirc;ng Cầu, s&ocirc;ng Đ&aacute;y, s&ocirc;ng C&agrave; Lồ. Trong đ&oacute;, đoạn s&ocirc;ng Hồng chảy qua H&agrave; Nội d&agrave;i tới 163km (chiếm 1/3 chiều d&agrave;i của con s&ocirc;ng n&agrave;y chảy qua l&atilde;nh thổ Việt nam). Trong nội đ&ocirc; ngo&agrave;i 2 con s&ocirc;ng T&ocirc; Lịch v&agrave; s&ocirc;ng Kim ngưu c&ograve;n c&oacute; hệ thống hồ đầm l&agrave; những đường ti&ecirc;u tho&aacute;t nước thải của H&agrave; Nội.</p>\r\n\r\n<p><br />\r\n<em>Đường Thanh Ni&ecirc;n ngăn c&aacute;ch giữa Hồ T&acirc;y v&agrave; hồ Tr&uacute;c Bạch</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ở thế kỉ trước c&oacute; tr&ecirc;n 100 hồ lớn nhỏ, phần nhiều l&agrave; hồ đầm tự nhi&ecirc;n, l&agrave; vết t&iacute;ch của những kh&uacute;c s&ocirc;ng chết để lại một số hồ nh&acirc;n tạo, cải tạo c&aacute;c c&aacute;nh đồng lầy thụt th&agrave;nh hồ. Hiện nay, d&ugrave; phần lớn đ&atilde; bị san lấp lấy mặt bằng x&acirc;y dựng, đến nay vẫn c&ograve;n tới h&agrave;ng trăm hồ đầm lớn nhỏ được ph&acirc;n bổ ở khắp c&aacute;c phường, x&atilde; của thủ đ&ocirc; H&agrave; Nội. Nổi tiếng nhất l&agrave; c&aacute;c hồ Ho&agrave;n Kiếm, Hồ T&acirc;y, Quảng B&aacute;,Tr&uacute;c Bạch, Thiền Quang, Bảy Mẫu, Thanh Nh&agrave;n, Linh Đ&agrave;m, Y&ecirc;n Sở, Giảng V&otilde;, Đồng M&ocirc;, Suối Hai&hellip;</p>\r\n\r\n<p>Những hồ đầm n&agrave;y của H&agrave; Nội kh&ocirc;ng những l&agrave; một kho nước lớn m&agrave; c&ograve;n l&agrave; hệ thống điều h&ograve;a nhiệt độ tự nhi&ecirc;n l&agrave;m cho v&ugrave;ng đ&ocirc; thị nội th&agrave;nh giảm bớt sức h&uacute;t nhiệt tỏa n&oacute;ng của khối b&ecirc; t&ocirc;ng, sắt th&eacute;p, nhựa đường v&agrave; c&aacute;c hoạt động của c&aacute;c nh&agrave; m&aacute;y&hellip; Hồ đầm của H&agrave; Nội kh&ocirc;ng những tạo ra cho th&agrave;nh phố kh&iacute; hậu m&aacute;t l&agrave;nh -&nbsp; tiểu kh&iacute; hậu đ&ocirc; thị m&agrave; c&ograve;n l&agrave; những danh lam thắng cảnh, những v&ugrave;ng văn h&oacute;a đặc sắc của Thăng Long -&nbsp; H&agrave; Nội.</p>\r\n\r\n<p><strong>Kh&iacute; hậu - Thời tiết:</strong></p>\r\n\r\n<p>Nằm trong v&ugrave;ng nhiệt đới gi&oacute; m&ugrave;a, kh&iacute; hậu H&agrave; Nội c&oacute; đặc trưng nổi bật l&agrave; gi&oacute; m&ugrave;a ẩm, n&oacute;ng v&agrave; mưa nhiều về m&ugrave;a h&egrave;, lạnh v&agrave; &iacute;t mưa về m&ugrave;a đ&ocirc;ng; được chia th&agrave;nh bốn m&ugrave;a r&otilde; rệt trong năm: Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng. M&ugrave;a xu&acirc;n bắt đầu v&agrave;o th&aacute;ng 2 (hay th&aacute;ng gi&ecirc;ng &acirc;m lịch) k&eacute;o d&agrave;i đến th&aacute;ng 4. M&ugrave;a hạ bắt đầu từ th&aacute;ng 5 đến th&aacute;ng 8, n&oacute;ng bức nhưng lại mưa nhiều. M&ugrave;a thu bắt đầu từ th&aacute;ng 8 đến th&aacute;ng 10, trời dịu m&aacute;t, l&aacute; v&agrave;ng rơi. M&ugrave;a đ&ocirc;ng bắt đầu từ th&aacute;ng 11 đến th&aacute;ng 1 năm sau, thời tiết gi&aacute; lạnh, kh&ocirc; hanh. Ranh giới ph&acirc;n chia bốn m&ugrave;a chỉ c&oacute; t&iacute;nh chất tương đối, v&igrave; H&agrave; Nội c&oacute; năm r&eacute;t sớm, c&oacute; năm r&eacute;t muộn, c&oacute; năm n&oacute;ng k&eacute;o d&agrave;i, nhiệt độ l&ecirc;n tới 40&deg;C, c&oacute; năm nhiệt độ xuống thấp dưới 5&deg;C.</p>\r\n\r\n<p>H&agrave; Nội quanh năm tiếp nhận được lượng bức xạ mặt trời kh&aacute; dồi d&agrave;o. Tổng lượng bức xạ trung b&igrave;nh h&agrave;ng năm khoảng 120 kcal/cm&sup2;, nhiệt độ trung b&igrave;nh năm 24,9&deg;C, độ ẩm trung b&igrave;nh 80 - 82%. Lượng mưa trung b&igrave;nh tr&ecirc;n 1700mm/năm (khoảng 114 ng&agrave;y mưa/năm).</p>\r\n\r\n<p>Trong lịch sử ph&aacute;t triển, H&agrave; Nội cũng đ&atilde; nhiều lần trải qua c&aacute;c biến đổi bất thường của kh&iacute; hậu - thời tiết. Th&aacute;ng 5 năm 1926, H&agrave; Nội chứng kiến một đợt nắng khủng khiếp c&oacute; ng&agrave;y nhiệt độ l&ecirc;n tới 42,8oC. Th&aacute;ng 1 năm 1955, m&ugrave;a đ&ocirc;ng gi&aacute; buốt nhất trong lịch sử, H&agrave; Nội sống trong c&aacute;i gi&aacute; lạnh xuống đến 2,7oC. V&agrave; gần đ&acirc;y nhất th&aacute;ng 11 năm 2008, sau khi vừa mở rộng địa giới h&agrave;nh ch&iacute;nh, H&agrave; Nội hứng chịu một cơn mưa dữ dội chưa từng thấy. Hầu như tất cả c&aacute;c tuyến phố đều ngập ch&igrave;m trong nước, lượng mưa lớn vượt qu&aacute; mọi dự b&aacute;o đ&atilde; g&acirc;y ra một trận lụt lịch sử ở H&agrave; Nội, l&agrave;m nhiều người chết, g&acirc;y thiệt hại vật chất đ&aacute;ng kể.</p>\r\n', '', '', '', '', '', 1, 'nha-hang-hoang-sa-page', 'Nhà hàng Hoàng Sa', '', ''),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 1, 'chuyen-giao-cong-nghe-en', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(43, 39, 'vn', 'Nhà hàng Vịnh Xanh', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !', '<p><strong>HNP - Thủ đ&ocirc; H&agrave; Nội nước Cộng h&ograve;a X&atilde; hội Chủ nghĩa Việt Nam, l&agrave; trung t&acirc;m đầu n&atilde;o về ch&iacute;nh trị, văn ho&aacute; v&agrave; khoa học kĩ thuật, đồng thời l&agrave; trung t&acirc;m lớn về giao dịch kinh tế v&agrave; quốc tế của cả nước. Trải qua 1.000 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, kể từ khi vua L&yacute; Th&aacute;i Tổ chọn khu đất Đại La b&ecirc;n cửa s&ocirc;ng T&ocirc; Lịch l&agrave;m nơi định đ&ocirc; cho mu&ocirc;n đời. H&agrave; Nội đ&atilde; chứng kiến sự thăng trầm của hầu hết c&aacute;c triều đại phong kiến Việt Nam từ L&yacute;- Trần - L&ecirc; - Mạc - Nguyễn&hellip; kinh th&agrave;nh Thăng Long l&agrave; nơi bu&ocirc;n b&aacute;n, trung t&acirc;m văn h&oacute;a, gi&aacute;o dục của cả miền Bắc.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Tượng đ&agrave;i L&yacute; Th&aacute;i Tổ tại hồ Ho&agrave;n Kiếm, H&agrave; Nội</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VỊ TR&Iacute; ĐỊA L&Iacute;</strong></p>\r\n\r\n<p><strong>Tọa độ địa l&iacute;:</strong>&nbsp;H&agrave; Nội hiện nay c&oacute; vị tr&iacute; từ 20&deg;53&#39; đến 21&deg;23&#39; vĩ độ Bắc v&agrave; 105&deg;44&#39; đến 106&deg;02&#39; kinh độ Đ&ocirc;ng, tiếp gi&aacute;p với c&aacute;c tỉnh Th&aacute;i Nguy&ecirc;n - Vĩnh Ph&uacute;c ở ph&iacute;a Bắc; H&agrave; Nam - H&ograve;a B&igrave;nh ở ph&iacute;a Nam; Bắc Giang- Bắc Ninh- Hưng Y&ecirc;n ở ph&iacute;a Đ&ocirc;ng v&agrave; H&ograve;a B&igrave;nh- Ph&uacute; Thọ ở ph&iacute;a T&acirc;y.</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;<br />\r\n<em>Bản đồ địa giới H&agrave;nh ch&iacute;nh H&agrave; Nội</em><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Diện t&iacute;ch tự nhi&ecirc;n:</strong></p>\r\n\r\n<p>Thực hiện kết luận Hội nghị Trung ương 6 (kh&oacute;a X) v&agrave; Nghị quyết của Quốc hội kh&oacute;a XII, kỳ họp thứ 3, số 15/2008/NQ-QH12, ng&agrave;y 29 th&aacute;ng 05 năm 2008 v&agrave; Nghị quyết n&agrave;y c&oacute; hiệu lực thi h&agrave;nh từ ng&agrave;y 01 th&aacute;ng 8 năm 2008, to&agrave;n bộ hệ thống ch&iacute;nh trị của th&agrave;nh phố H&agrave; Nội sau hợp nhất, mở rộng địa giới h&agrave;nh ch&iacute;nh Thủ đ&ocirc;&nbsp; bao gồm: Th&agrave;nh phố H&agrave; Nội, tỉnh H&agrave; T&acirc;y, huyện M&ecirc; Linh - tỉnh Vĩnh Ph&uacute;c v&agrave; bốn x&atilde; thuộc huyện Lương Sơn - tỉnh H&ograve;a B&igrave;nh. Thủ đ&ocirc; H&agrave; Nội sau khi được mở rộng c&oacute; diện t&iacute;ch tự nhi&ecirc;n 334.470,02 ha, lớn gấp hơn 3 lần trước đ&acirc;y v&agrave; đứng v&agrave;o tốp 17 Thủ đ&ocirc; tr&ecirc;n thế giới c&oacute; diện t&iacute;ch rộng nhất; d&acirc;n số tăng hơn gấp rưỡi, hơn 6,2 triệu người, hiện nay l&agrave; hơn 7 triệu người; gồm 30 đơn vị h&agrave;nh ch&iacute;nh cấp quận, huyện, thị x&atilde;, 577 x&atilde;, phường, thị trấn.</p>\r\n\r\n<p>H&agrave; Nội hiện nay vừa c&oacute; n&uacute;i, c&oacute; đồi v&agrave; địa h&igrave;nh thấp dần từ Bắc xuống Nam, từ T&acirc;y sang Đ&ocirc;ng, trong đ&oacute; đồng bằng chiếm tới &frac34; diện t&iacute;ch tự nhi&ecirc;n của th&agrave;nh phố. Độ cao trung b&igrave;nh của H&agrave; Nội từ 5 đến 20 m&eacute;t so với mặt nước biển, c&aacute;c đồi n&uacute;i cao đều tập trung ở ph&iacute;a Bắc v&agrave; T&acirc;y. C&aacute;c đỉnh cao nhất l&agrave; Ba V&igrave; 1.281 m&eacute;t; Gia D&ecirc; 707 m&eacute;t; Ch&acirc;n Chim 462 m&eacute;t; Thanh Lanh 427 m&eacute;t v&agrave; Thi&ecirc;n Tr&ugrave; 378 m&eacute;t&hellip;Khu vực nội đ&ocirc; c&oacute; một số g&ograve; đồi thấp, như g&ograve; Đống Đa, n&uacute;i N&ugrave;ng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; Diện t&iacute;ch đất ph&acirc;n bổ sử dụng (332889,0 ha)</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất n&ocirc;ng, l&acirc;m nghiệp, thủy sản&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 188601,1 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất phi n&ocirc;ng nghiệp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; 134947,4 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất chưa sử dụng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 9340,5 ha&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n<em>(Theo&ldquo;Ni&ecirc;n gi&aacute;m thống k&ecirc; H&agrave; Nội năm 2010&rdquo; của Cục Thống k&ecirc; th&agrave;nh phố H&agrave; Nội).</em></p>\r\n\r\n<p><strong>Thủy văn:</strong></p>\r\n\r\n<p>H&agrave; Nội được h&igrave;nh th&agrave;nh từ ch&acirc;u thổ s&ocirc;ng Hồng, n&eacute;t đặc trưng của v&ugrave;ng địa l&iacute; th&agrave;nh phố H&agrave; Nội l&agrave; &ldquo;Th&agrave;nh phố s&ocirc;ng hồ&rdquo; hay &ldquo;Th&agrave;nh phố trong s&ocirc;ng&rdquo;. Nhờ c&aacute;c con s&ocirc;ng lớn nhỏ đ&atilde; chảy miệt m&agrave;i h&agrave;ng vạn năm đem ph&ugrave; sa về bồi đắp n&ecirc;n v&ugrave;ng ch&acirc;u thổ ph&igrave; nhi&ecirc;u n&agrave;y. Hiện nay, c&oacute; 7 s&ocirc;ng chảy qua H&agrave; Nội: s&ocirc;ng Hồng, s&ocirc;ng Đuống, s&ocirc;ng Đ&agrave;, s&ocirc;ng Nhuệ, s&ocirc;ng Cầu, s&ocirc;ng Đ&aacute;y, s&ocirc;ng C&agrave; Lồ. Trong đ&oacute;, đoạn s&ocirc;ng Hồng chảy qua H&agrave; Nội d&agrave;i tới 163km (chiếm 1/3 chiều d&agrave;i của con s&ocirc;ng n&agrave;y chảy qua l&atilde;nh thổ Việt nam). Trong nội đ&ocirc; ngo&agrave;i 2 con s&ocirc;ng T&ocirc; Lịch v&agrave; s&ocirc;ng Kim ngưu c&ograve;n c&oacute; hệ thống hồ đầm l&agrave; những đường ti&ecirc;u tho&aacute;t nước thải của H&agrave; Nội.</p>\r\n\r\n<p><br />\r\n<em>Đường Thanh Ni&ecirc;n ngăn c&aacute;ch giữa Hồ T&acirc;y v&agrave; hồ Tr&uacute;c Bạch</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ở thế kỉ trước c&oacute; tr&ecirc;n 100 hồ lớn nhỏ, phần nhiều l&agrave; hồ đầm tự nhi&ecirc;n, l&agrave; vết t&iacute;ch của những kh&uacute;c s&ocirc;ng chết để lại một số hồ nh&acirc;n tạo, cải tạo c&aacute;c c&aacute;nh đồng lầy thụt th&agrave;nh hồ. Hiện nay, d&ugrave; phần lớn đ&atilde; bị san lấp lấy mặt bằng x&acirc;y dựng, đến nay vẫn c&ograve;n tới h&agrave;ng trăm hồ đầm lớn nhỏ được ph&acirc;n bổ ở khắp c&aacute;c phường, x&atilde; của thủ đ&ocirc; H&agrave; Nội. Nổi tiếng nhất l&agrave; c&aacute;c hồ Ho&agrave;n Kiếm, Hồ T&acirc;y, Quảng B&aacute;,Tr&uacute;c Bạch, Thiền Quang, Bảy Mẫu, Thanh Nh&agrave;n, Linh Đ&agrave;m, Y&ecirc;n Sở, Giảng V&otilde;, Đồng M&ocirc;, Suối Hai&hellip;</p>\r\n\r\n<p>Những hồ đầm n&agrave;y của H&agrave; Nội kh&ocirc;ng những l&agrave; một kho nước lớn m&agrave; c&ograve;n l&agrave; hệ thống điều h&ograve;a nhiệt độ tự nhi&ecirc;n l&agrave;m cho v&ugrave;ng đ&ocirc; thị nội th&agrave;nh giảm bớt sức h&uacute;t nhiệt tỏa n&oacute;ng của khối b&ecirc; t&ocirc;ng, sắt th&eacute;p, nhựa đường v&agrave; c&aacute;c hoạt động của c&aacute;c nh&agrave; m&aacute;y&hellip; Hồ đầm của H&agrave; Nội kh&ocirc;ng những tạo ra cho th&agrave;nh phố kh&iacute; hậu m&aacute;t l&agrave;nh -&nbsp; tiểu kh&iacute; hậu đ&ocirc; thị m&agrave; c&ograve;n l&agrave; những danh lam thắng cảnh, những v&ugrave;ng văn h&oacute;a đặc sắc của Thăng Long -&nbsp; H&agrave; Nội.</p>\r\n\r\n<p><strong>Kh&iacute; hậu - Thời tiết:</strong></p>\r\n\r\n<p>Nằm trong v&ugrave;ng nhiệt đới gi&oacute; m&ugrave;a, kh&iacute; hậu H&agrave; Nội c&oacute; đặc trưng nổi bật l&agrave; gi&oacute; m&ugrave;a ẩm, n&oacute;ng v&agrave; mưa nhiều về m&ugrave;a h&egrave;, lạnh v&agrave; &iacute;t mưa về m&ugrave;a đ&ocirc;ng; được chia th&agrave;nh bốn m&ugrave;a r&otilde; rệt trong năm: Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng. M&ugrave;a xu&acirc;n bắt đầu v&agrave;o th&aacute;ng 2 (hay th&aacute;ng gi&ecirc;ng &acirc;m lịch) k&eacute;o d&agrave;i đến th&aacute;ng 4. M&ugrave;a hạ bắt đầu từ th&aacute;ng 5 đến th&aacute;ng 8, n&oacute;ng bức nhưng lại mưa nhiều. M&ugrave;a thu bắt đầu từ th&aacute;ng 8 đến th&aacute;ng 10, trời dịu m&aacute;t, l&aacute; v&agrave;ng rơi. M&ugrave;a đ&ocirc;ng bắt đầu từ th&aacute;ng 11 đến th&aacute;ng 1 năm sau, thời tiết gi&aacute; lạnh, kh&ocirc; hanh. Ranh giới ph&acirc;n chia bốn m&ugrave;a chỉ c&oacute; t&iacute;nh chất tương đối, v&igrave; H&agrave; Nội c&oacute; năm r&eacute;t sớm, c&oacute; năm r&eacute;t muộn, c&oacute; năm n&oacute;ng k&eacute;o d&agrave;i, nhiệt độ l&ecirc;n tới 40&deg;C, c&oacute; năm nhiệt độ xuống thấp dưới 5&deg;C.</p>\r\n\r\n<p>H&agrave; Nội quanh năm tiếp nhận được lượng bức xạ mặt trời kh&aacute; dồi d&agrave;o. Tổng lượng bức xạ trung b&igrave;nh h&agrave;ng năm khoảng 120 kcal/cm&sup2;, nhiệt độ trung b&igrave;nh năm 24,9&deg;C, độ ẩm trung b&igrave;nh 80 - 82%. Lượng mưa trung b&igrave;nh tr&ecirc;n 1700mm/năm (khoảng 114 ng&agrave;y mưa/năm).</p>\r\n\r\n<p>Trong lịch sử ph&aacute;t triển, H&agrave; Nội cũng đ&atilde; nhiều lần trải qua c&aacute;c biến đổi bất thường của kh&iacute; hậu - thời tiết. Th&aacute;ng 5 năm 1926, H&agrave; Nội chứng kiến một đợt nắng khủng khiếp c&oacute; ng&agrave;y nhiệt độ l&ecirc;n tới 42,8oC. Th&aacute;ng 1 năm 1955, m&ugrave;a đ&ocirc;ng gi&aacute; buốt nhất trong lịch sử, H&agrave; Nội sống trong c&aacute;i gi&aacute; lạnh xuống đến 2,7oC. V&agrave; gần đ&acirc;y nhất th&aacute;ng 11 năm 2008, sau khi vừa mở rộng địa giới h&agrave;nh ch&iacute;nh, H&agrave; Nội hứng chịu một cơn mưa dữ dội chưa từng thấy. Hầu như tất cả c&aacute;c tuyến phố đều ngập ch&igrave;m trong nước, lượng mưa lớn vượt qu&aacute; mọi dự b&aacute;o đ&atilde; g&acirc;y ra một trận lụt lịch sử ở H&agrave; Nội, l&agrave;m nhiều người chết, g&acirc;y thiệt hại vật chất đ&aacute;ng kể.</p>\r\n', '', '', '', '', '', 0, 'nha-hang-vinh-xanh-page', 'Nhà hàng Vịnh Xanh', '', ''),
(44, 39, 'en', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h2>THẺ H2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(45, 40, 'vn', 'Hệ thống Coffee CCCP', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !', '<p><strong>HNP - Thủ đ&ocirc; H&agrave; Nội nước Cộng h&ograve;a X&atilde; hội Chủ nghĩa Việt Nam, l&agrave; trung t&acirc;m đầu n&atilde;o về ch&iacute;nh trị, văn ho&aacute; v&agrave; khoa học kĩ thuật, đồng thời l&agrave; trung t&acirc;m lớn về giao dịch kinh tế v&agrave; quốc tế của cả nước. Trải qua 1.000 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, kể từ khi vua L&yacute; Th&aacute;i Tổ chọn khu đất Đại La b&ecirc;n cửa s&ocirc;ng T&ocirc; Lịch l&agrave;m nơi định đ&ocirc; cho mu&ocirc;n đời. H&agrave; Nội đ&atilde; chứng kiến sự thăng trầm của hầu hết c&aacute;c triều đại phong kiến Việt Nam từ L&yacute;- Trần - L&ecirc; - Mạc - Nguyễn&hellip; kinh th&agrave;nh Thăng Long l&agrave; nơi bu&ocirc;n b&aacute;n, trung t&acirc;m văn h&oacute;a, gi&aacute;o dục của cả miền Bắc.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Tượng đ&agrave;i L&yacute; Th&aacute;i Tổ tại hồ Ho&agrave;n Kiếm, H&agrave; Nội</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VỊ TR&Iacute; ĐỊA L&Iacute;</strong></p>\r\n\r\n<p><strong>Tọa độ địa l&iacute;:</strong>&nbsp;H&agrave; Nội hiện nay c&oacute; vị tr&iacute; từ 20&deg;53&#39; đến 21&deg;23&#39; vĩ độ Bắc v&agrave; 105&deg;44&#39; đến 106&deg;02&#39; kinh độ Đ&ocirc;ng, tiếp gi&aacute;p với c&aacute;c tỉnh Th&aacute;i Nguy&ecirc;n - Vĩnh Ph&uacute;c ở ph&iacute;a Bắc; H&agrave; Nam - H&ograve;a B&igrave;nh ở ph&iacute;a Nam; Bắc Giang- Bắc Ninh- Hưng Y&ecirc;n ở ph&iacute;a Đ&ocirc;ng v&agrave; H&ograve;a B&igrave;nh- Ph&uacute; Thọ ở ph&iacute;a T&acirc;y.</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;<br />\r\n<em>Bản đồ địa giới H&agrave;nh ch&iacute;nh H&agrave; Nội</em><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Diện t&iacute;ch tự nhi&ecirc;n:</strong></p>\r\n\r\n<p>Thực hiện kết luận Hội nghị Trung ương 6 (kh&oacute;a X) v&agrave; Nghị quyết của Quốc hội kh&oacute;a XII, kỳ họp thứ 3, số 15/2008/NQ-QH12, ng&agrave;y 29 th&aacute;ng 05 năm 2008 v&agrave; Nghị quyết n&agrave;y c&oacute; hiệu lực thi h&agrave;nh từ ng&agrave;y 01 th&aacute;ng 8 năm 2008, to&agrave;n bộ hệ thống ch&iacute;nh trị của th&agrave;nh phố H&agrave; Nội sau hợp nhất, mở rộng địa giới h&agrave;nh ch&iacute;nh Thủ đ&ocirc;&nbsp; bao gồm: Th&agrave;nh phố H&agrave; Nội, tỉnh H&agrave; T&acirc;y, huyện M&ecirc; Linh - tỉnh Vĩnh Ph&uacute;c v&agrave; bốn x&atilde; thuộc huyện Lương Sơn - tỉnh H&ograve;a B&igrave;nh. Thủ đ&ocirc; H&agrave; Nội sau khi được mở rộng c&oacute; diện t&iacute;ch tự nhi&ecirc;n 334.470,02 ha, lớn gấp hơn 3 lần trước đ&acirc;y v&agrave; đứng v&agrave;o tốp 17 Thủ đ&ocirc; tr&ecirc;n thế giới c&oacute; diện t&iacute;ch rộng nhất; d&acirc;n số tăng hơn gấp rưỡi, hơn 6,2 triệu người, hiện nay l&agrave; hơn 7 triệu người; gồm 30 đơn vị h&agrave;nh ch&iacute;nh cấp quận, huyện, thị x&atilde;, 577 x&atilde;, phường, thị trấn.</p>\r\n\r\n<p>H&agrave; Nội hiện nay vừa c&oacute; n&uacute;i, c&oacute; đồi v&agrave; địa h&igrave;nh thấp dần từ Bắc xuống Nam, từ T&acirc;y sang Đ&ocirc;ng, trong đ&oacute; đồng bằng chiếm tới &frac34; diện t&iacute;ch tự nhi&ecirc;n của th&agrave;nh phố. Độ cao trung b&igrave;nh của H&agrave; Nội từ 5 đến 20 m&eacute;t so với mặt nước biển, c&aacute;c đồi n&uacute;i cao đều tập trung ở ph&iacute;a Bắc v&agrave; T&acirc;y. C&aacute;c đỉnh cao nhất l&agrave; Ba V&igrave; 1.281 m&eacute;t; Gia D&ecirc; 707 m&eacute;t; Ch&acirc;n Chim 462 m&eacute;t; Thanh Lanh 427 m&eacute;t v&agrave; Thi&ecirc;n Tr&ugrave; 378 m&eacute;t&hellip;Khu vực nội đ&ocirc; c&oacute; một số g&ograve; đồi thấp, như g&ograve; Đống Đa, n&uacute;i N&ugrave;ng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; Diện t&iacute;ch đất ph&acirc;n bổ sử dụng (332889,0 ha)</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất n&ocirc;ng, l&acirc;m nghiệp, thủy sản&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 188601,1 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất phi n&ocirc;ng nghiệp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; 134947,4 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất chưa sử dụng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 9340,5 ha&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n<em>(Theo&ldquo;Ni&ecirc;n gi&aacute;m thống k&ecirc; H&agrave; Nội năm 2010&rdquo; của Cục Thống k&ecirc; th&agrave;nh phố H&agrave; Nội).</em></p>\r\n\r\n<p><strong>Thủy văn:</strong></p>\r\n\r\n<p>H&agrave; Nội được h&igrave;nh th&agrave;nh từ ch&acirc;u thổ s&ocirc;ng Hồng, n&eacute;t đặc trưng của v&ugrave;ng địa l&iacute; th&agrave;nh phố H&agrave; Nội l&agrave; &ldquo;Th&agrave;nh phố s&ocirc;ng hồ&rdquo; hay &ldquo;Th&agrave;nh phố trong s&ocirc;ng&rdquo;. Nhờ c&aacute;c con s&ocirc;ng lớn nhỏ đ&atilde; chảy miệt m&agrave;i h&agrave;ng vạn năm đem ph&ugrave; sa về bồi đắp n&ecirc;n v&ugrave;ng ch&acirc;u thổ ph&igrave; nhi&ecirc;u n&agrave;y. Hiện nay, c&oacute; 7 s&ocirc;ng chảy qua H&agrave; Nội: s&ocirc;ng Hồng, s&ocirc;ng Đuống, s&ocirc;ng Đ&agrave;, s&ocirc;ng Nhuệ, s&ocirc;ng Cầu, s&ocirc;ng Đ&aacute;y, s&ocirc;ng C&agrave; Lồ. Trong đ&oacute;, đoạn s&ocirc;ng Hồng chảy qua H&agrave; Nội d&agrave;i tới 163km (chiếm 1/3 chiều d&agrave;i của con s&ocirc;ng n&agrave;y chảy qua l&atilde;nh thổ Việt nam). Trong nội đ&ocirc; ngo&agrave;i 2 con s&ocirc;ng T&ocirc; Lịch v&agrave; s&ocirc;ng Kim ngưu c&ograve;n c&oacute; hệ thống hồ đầm l&agrave; những đường ti&ecirc;u tho&aacute;t nước thải của H&agrave; Nội.</p>\r\n\r\n<p><br />\r\n<em>Đường Thanh Ni&ecirc;n ngăn c&aacute;ch giữa Hồ T&acirc;y v&agrave; hồ Tr&uacute;c Bạch</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ở thế kỉ trước c&oacute; tr&ecirc;n 100 hồ lớn nhỏ, phần nhiều l&agrave; hồ đầm tự nhi&ecirc;n, l&agrave; vết t&iacute;ch của những kh&uacute;c s&ocirc;ng chết để lại một số hồ nh&acirc;n tạo, cải tạo c&aacute;c c&aacute;nh đồng lầy thụt th&agrave;nh hồ. Hiện nay, d&ugrave; phần lớn đ&atilde; bị san lấp lấy mặt bằng x&acirc;y dựng, đến nay vẫn c&ograve;n tới h&agrave;ng trăm hồ đầm lớn nhỏ được ph&acirc;n bổ ở khắp c&aacute;c phường, x&atilde; của thủ đ&ocirc; H&agrave; Nội. Nổi tiếng nhất l&agrave; c&aacute;c hồ Ho&agrave;n Kiếm, Hồ T&acirc;y, Quảng B&aacute;,Tr&uacute;c Bạch, Thiền Quang, Bảy Mẫu, Thanh Nh&agrave;n, Linh Đ&agrave;m, Y&ecirc;n Sở, Giảng V&otilde;, Đồng M&ocirc;, Suối Hai&hellip;</p>\r\n\r\n<p>Những hồ đầm n&agrave;y của H&agrave; Nội kh&ocirc;ng những l&agrave; một kho nước lớn m&agrave; c&ograve;n l&agrave; hệ thống điều h&ograve;a nhiệt độ tự nhi&ecirc;n l&agrave;m cho v&ugrave;ng đ&ocirc; thị nội th&agrave;nh giảm bớt sức h&uacute;t nhiệt tỏa n&oacute;ng của khối b&ecirc; t&ocirc;ng, sắt th&eacute;p, nhựa đường v&agrave; c&aacute;c hoạt động của c&aacute;c nh&agrave; m&aacute;y&hellip; Hồ đầm của H&agrave; Nội kh&ocirc;ng những tạo ra cho th&agrave;nh phố kh&iacute; hậu m&aacute;t l&agrave;nh -&nbsp; tiểu kh&iacute; hậu đ&ocirc; thị m&agrave; c&ograve;n l&agrave; những danh lam thắng cảnh, những v&ugrave;ng văn h&oacute;a đặc sắc của Thăng Long -&nbsp; H&agrave; Nội.</p>\r\n\r\n<p><strong>Kh&iacute; hậu - Thời tiết:</strong></p>\r\n\r\n<p>Nằm trong v&ugrave;ng nhiệt đới gi&oacute; m&ugrave;a, kh&iacute; hậu H&agrave; Nội c&oacute; đặc trưng nổi bật l&agrave; gi&oacute; m&ugrave;a ẩm, n&oacute;ng v&agrave; mưa nhiều về m&ugrave;a h&egrave;, lạnh v&agrave; &iacute;t mưa về m&ugrave;a đ&ocirc;ng; được chia th&agrave;nh bốn m&ugrave;a r&otilde; rệt trong năm: Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng. M&ugrave;a xu&acirc;n bắt đầu v&agrave;o th&aacute;ng 2 (hay th&aacute;ng gi&ecirc;ng &acirc;m lịch) k&eacute;o d&agrave;i đến th&aacute;ng 4. M&ugrave;a hạ bắt đầu từ th&aacute;ng 5 đến th&aacute;ng 8, n&oacute;ng bức nhưng lại mưa nhiều. M&ugrave;a thu bắt đầu từ th&aacute;ng 8 đến th&aacute;ng 10, trời dịu m&aacute;t, l&aacute; v&agrave;ng rơi. M&ugrave;a đ&ocirc;ng bắt đầu từ th&aacute;ng 11 đến th&aacute;ng 1 năm sau, thời tiết gi&aacute; lạnh, kh&ocirc; hanh. Ranh giới ph&acirc;n chia bốn m&ugrave;a chỉ c&oacute; t&iacute;nh chất tương đối, v&igrave; H&agrave; Nội c&oacute; năm r&eacute;t sớm, c&oacute; năm r&eacute;t muộn, c&oacute; năm n&oacute;ng k&eacute;o d&agrave;i, nhiệt độ l&ecirc;n tới 40&deg;C, c&oacute; năm nhiệt độ xuống thấp dưới 5&deg;C.</p>\r\n\r\n<p>H&agrave; Nội quanh năm tiếp nhận được lượng bức xạ mặt trời kh&aacute; dồi d&agrave;o. Tổng lượng bức xạ trung b&igrave;nh h&agrave;ng năm khoảng 120 kcal/cm&sup2;, nhiệt độ trung b&igrave;nh năm 24,9&deg;C, độ ẩm trung b&igrave;nh 80 - 82%. Lượng mưa trung b&igrave;nh tr&ecirc;n 1700mm/năm (khoảng 114 ng&agrave;y mưa/năm).</p>\r\n\r\n<p>Trong lịch sử ph&aacute;t triển, H&agrave; Nội cũng đ&atilde; nhiều lần trải qua c&aacute;c biến đổi bất thường của kh&iacute; hậu - thời tiết. Th&aacute;ng 5 năm 1926, H&agrave; Nội chứng kiến một đợt nắng khủng khiếp c&oacute; ng&agrave;y nhiệt độ l&ecirc;n tới 42,8oC. Th&aacute;ng 1 năm 1955, m&ugrave;a đ&ocirc;ng gi&aacute; buốt nhất trong lịch sử, H&agrave; Nội sống trong c&aacute;i gi&aacute; lạnh xuống đến 2,7oC. V&agrave; gần đ&acirc;y nhất th&aacute;ng 11 năm 2008, sau khi vừa mở rộng địa giới h&agrave;nh ch&iacute;nh, H&agrave; Nội hứng chịu một cơn mưa dữ dội chưa từng thấy. Hầu như tất cả c&aacute;c tuyến phố đều ngập ch&igrave;m trong nước, lượng mưa lớn vượt qu&aacute; mọi dự b&aacute;o đ&atilde; g&acirc;y ra một trận lụt lịch sử ở H&agrave; Nội, l&agrave;m nhiều người chết, g&acirc;y thiệt hại vật chất đ&aacute;ng kể.</p>\r\n', '', '', '', '', '', 0, 'he-thong-coffee-cccp-page', 'Hệ thống Coffee CCCP', '', '');
INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(47, 41, 'vn', 'Gian hàng chợ đêm', 'Hệ Thống Nhà hàng Hoàng Sa trực thuộc Công Ty TNHH Ánh Minh Châu NT . Kính chào quý khách !', '<p><strong>HNP - Thủ đ&ocirc; H&agrave; Nội nước Cộng h&ograve;a X&atilde; hội Chủ nghĩa Việt Nam, l&agrave; trung t&acirc;m đầu n&atilde;o về ch&iacute;nh trị, văn ho&aacute; v&agrave; khoa học kĩ thuật, đồng thời l&agrave; trung t&acirc;m lớn về giao dịch kinh tế v&agrave; quốc tế của cả nước. Trải qua 1.000 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, kể từ khi vua L&yacute; Th&aacute;i Tổ chọn khu đất Đại La b&ecirc;n cửa s&ocirc;ng T&ocirc; Lịch l&agrave;m nơi định đ&ocirc; cho mu&ocirc;n đời. H&agrave; Nội đ&atilde; chứng kiến sự thăng trầm của hầu hết c&aacute;c triều đại phong kiến Việt Nam từ L&yacute;- Trần - L&ecirc; - Mạc - Nguyễn&hellip; kinh th&agrave;nh Thăng Long l&agrave; nơi bu&ocirc;n b&aacute;n, trung t&acirc;m văn h&oacute;a, gi&aacute;o dục của cả miền Bắc.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Tượng đ&agrave;i L&yacute; Th&aacute;i Tổ tại hồ Ho&agrave;n Kiếm, H&agrave; Nội</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VỊ TR&Iacute; ĐỊA L&Iacute;</strong></p>\r\n\r\n<p><strong>Tọa độ địa l&iacute;:</strong>&nbsp;H&agrave; Nội hiện nay c&oacute; vị tr&iacute; từ 20&deg;53&#39; đến 21&deg;23&#39; vĩ độ Bắc v&agrave; 105&deg;44&#39; đến 106&deg;02&#39; kinh độ Đ&ocirc;ng, tiếp gi&aacute;p với c&aacute;c tỉnh Th&aacute;i Nguy&ecirc;n - Vĩnh Ph&uacute;c ở ph&iacute;a Bắc; H&agrave; Nam - H&ograve;a B&igrave;nh ở ph&iacute;a Nam; Bắc Giang- Bắc Ninh- Hưng Y&ecirc;n ở ph&iacute;a Đ&ocirc;ng v&agrave; H&ograve;a B&igrave;nh- Ph&uacute; Thọ ở ph&iacute;a T&acirc;y.</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;<br />\r\n<em>Bản đồ địa giới H&agrave;nh ch&iacute;nh H&agrave; Nội</em><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Diện t&iacute;ch tự nhi&ecirc;n:</strong></p>\r\n\r\n<p>Thực hiện kết luận Hội nghị Trung ương 6 (kh&oacute;a X) v&agrave; Nghị quyết của Quốc hội kh&oacute;a XII, kỳ họp thứ 3, số 15/2008/NQ-QH12, ng&agrave;y 29 th&aacute;ng 05 năm 2008 v&agrave; Nghị quyết n&agrave;y c&oacute; hiệu lực thi h&agrave;nh từ ng&agrave;y 01 th&aacute;ng 8 năm 2008, to&agrave;n bộ hệ thống ch&iacute;nh trị của th&agrave;nh phố H&agrave; Nội sau hợp nhất, mở rộng địa giới h&agrave;nh ch&iacute;nh Thủ đ&ocirc;&nbsp; bao gồm: Th&agrave;nh phố H&agrave; Nội, tỉnh H&agrave; T&acirc;y, huyện M&ecirc; Linh - tỉnh Vĩnh Ph&uacute;c v&agrave; bốn x&atilde; thuộc huyện Lương Sơn - tỉnh H&ograve;a B&igrave;nh. Thủ đ&ocirc; H&agrave; Nội sau khi được mở rộng c&oacute; diện t&iacute;ch tự nhi&ecirc;n 334.470,02 ha, lớn gấp hơn 3 lần trước đ&acirc;y v&agrave; đứng v&agrave;o tốp 17 Thủ đ&ocirc; tr&ecirc;n thế giới c&oacute; diện t&iacute;ch rộng nhất; d&acirc;n số tăng hơn gấp rưỡi, hơn 6,2 triệu người, hiện nay l&agrave; hơn 7 triệu người; gồm 30 đơn vị h&agrave;nh ch&iacute;nh cấp quận, huyện, thị x&atilde;, 577 x&atilde;, phường, thị trấn.</p>\r\n\r\n<p>H&agrave; Nội hiện nay vừa c&oacute; n&uacute;i, c&oacute; đồi v&agrave; địa h&igrave;nh thấp dần từ Bắc xuống Nam, từ T&acirc;y sang Đ&ocirc;ng, trong đ&oacute; đồng bằng chiếm tới &frac34; diện t&iacute;ch tự nhi&ecirc;n của th&agrave;nh phố. Độ cao trung b&igrave;nh của H&agrave; Nội từ 5 đến 20 m&eacute;t so với mặt nước biển, c&aacute;c đồi n&uacute;i cao đều tập trung ở ph&iacute;a Bắc v&agrave; T&acirc;y. C&aacute;c đỉnh cao nhất l&agrave; Ba V&igrave; 1.281 m&eacute;t; Gia D&ecirc; 707 m&eacute;t; Ch&acirc;n Chim 462 m&eacute;t; Thanh Lanh 427 m&eacute;t v&agrave; Thi&ecirc;n Tr&ugrave; 378 m&eacute;t&hellip;Khu vực nội đ&ocirc; c&oacute; một số g&ograve; đồi thấp, như g&ograve; Đống Đa, n&uacute;i N&ugrave;ng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; Diện t&iacute;ch đất ph&acirc;n bổ sử dụng (332889,0 ha)</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất n&ocirc;ng, l&acirc;m nghiệp, thủy sản&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 188601,1 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất phi n&ocirc;ng nghiệp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; 134947,4 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất chưa sử dụng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 9340,5 ha&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n<em>(Theo&ldquo;Ni&ecirc;n gi&aacute;m thống k&ecirc; H&agrave; Nội năm 2010&rdquo; của Cục Thống k&ecirc; th&agrave;nh phố H&agrave; Nội).</em></p>\r\n\r\n<p><strong>Thủy văn:</strong></p>\r\n\r\n<p>H&agrave; Nội được h&igrave;nh th&agrave;nh từ ch&acirc;u thổ s&ocirc;ng Hồng, n&eacute;t đặc trưng của v&ugrave;ng địa l&iacute; th&agrave;nh phố H&agrave; Nội l&agrave; &ldquo;Th&agrave;nh phố s&ocirc;ng hồ&rdquo; hay &ldquo;Th&agrave;nh phố trong s&ocirc;ng&rdquo;. Nhờ c&aacute;c con s&ocirc;ng lớn nhỏ đ&atilde; chảy miệt m&agrave;i h&agrave;ng vạn năm đem ph&ugrave; sa về bồi đắp n&ecirc;n v&ugrave;ng ch&acirc;u thổ ph&igrave; nhi&ecirc;u n&agrave;y. Hiện nay, c&oacute; 7 s&ocirc;ng chảy qua H&agrave; Nội: s&ocirc;ng Hồng, s&ocirc;ng Đuống, s&ocirc;ng Đ&agrave;, s&ocirc;ng Nhuệ, s&ocirc;ng Cầu, s&ocirc;ng Đ&aacute;y, s&ocirc;ng C&agrave; Lồ. Trong đ&oacute;, đoạn s&ocirc;ng Hồng chảy qua H&agrave; Nội d&agrave;i tới 163km (chiếm 1/3 chiều d&agrave;i của con s&ocirc;ng n&agrave;y chảy qua l&atilde;nh thổ Việt nam). Trong nội đ&ocirc; ngo&agrave;i 2 con s&ocirc;ng T&ocirc; Lịch v&agrave; s&ocirc;ng Kim ngưu c&ograve;n c&oacute; hệ thống hồ đầm l&agrave; những đường ti&ecirc;u tho&aacute;t nước thải của H&agrave; Nội.</p>\r\n\r\n<p><br />\r\n<em>Đường Thanh Ni&ecirc;n ngăn c&aacute;ch giữa Hồ T&acirc;y v&agrave; hồ Tr&uacute;c Bạch</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ở thế kỉ trước c&oacute; tr&ecirc;n 100 hồ lớn nhỏ, phần nhiều l&agrave; hồ đầm tự nhi&ecirc;n, l&agrave; vết t&iacute;ch của những kh&uacute;c s&ocirc;ng chết để lại một số hồ nh&acirc;n tạo, cải tạo c&aacute;c c&aacute;nh đồng lầy thụt th&agrave;nh hồ. Hiện nay, d&ugrave; phần lớn đ&atilde; bị san lấp lấy mặt bằng x&acirc;y dựng, đến nay vẫn c&ograve;n tới h&agrave;ng trăm hồ đầm lớn nhỏ được ph&acirc;n bổ ở khắp c&aacute;c phường, x&atilde; của thủ đ&ocirc; H&agrave; Nội. Nổi tiếng nhất l&agrave; c&aacute;c hồ Ho&agrave;n Kiếm, Hồ T&acirc;y, Quảng B&aacute;,Tr&uacute;c Bạch, Thiền Quang, Bảy Mẫu, Thanh Nh&agrave;n, Linh Đ&agrave;m, Y&ecirc;n Sở, Giảng V&otilde;, Đồng M&ocirc;, Suối Hai&hellip;</p>\r\n\r\n<p>Những hồ đầm n&agrave;y của H&agrave; Nội kh&ocirc;ng những l&agrave; một kho nước lớn m&agrave; c&ograve;n l&agrave; hệ thống điều h&ograve;a nhiệt độ tự nhi&ecirc;n l&agrave;m cho v&ugrave;ng đ&ocirc; thị nội th&agrave;nh giảm bớt sức h&uacute;t nhiệt tỏa n&oacute;ng của khối b&ecirc; t&ocirc;ng, sắt th&eacute;p, nhựa đường v&agrave; c&aacute;c hoạt động của c&aacute;c nh&agrave; m&aacute;y&hellip; Hồ đầm của H&agrave; Nội kh&ocirc;ng những tạo ra cho th&agrave;nh phố kh&iacute; hậu m&aacute;t l&agrave;nh -&nbsp; tiểu kh&iacute; hậu đ&ocirc; thị m&agrave; c&ograve;n l&agrave; những danh lam thắng cảnh, những v&ugrave;ng văn h&oacute;a đặc sắc của Thăng Long -&nbsp; H&agrave; Nội.</p>\r\n\r\n<p><strong>Kh&iacute; hậu - Thời tiết:</strong></p>\r\n\r\n<p>Nằm trong v&ugrave;ng nhiệt đới gi&oacute; m&ugrave;a, kh&iacute; hậu H&agrave; Nội c&oacute; đặc trưng nổi bật l&agrave; gi&oacute; m&ugrave;a ẩm, n&oacute;ng v&agrave; mưa nhiều về m&ugrave;a h&egrave;, lạnh v&agrave; &iacute;t mưa về m&ugrave;a đ&ocirc;ng; được chia th&agrave;nh bốn m&ugrave;a r&otilde; rệt trong năm: Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng. M&ugrave;a xu&acirc;n bắt đầu v&agrave;o th&aacute;ng 2 (hay th&aacute;ng gi&ecirc;ng &acirc;m lịch) k&eacute;o d&agrave;i đến th&aacute;ng 4. M&ugrave;a hạ bắt đầu từ th&aacute;ng 5 đến th&aacute;ng 8, n&oacute;ng bức nhưng lại mưa nhiều. M&ugrave;a thu bắt đầu từ th&aacute;ng 8 đến th&aacute;ng 10, trời dịu m&aacute;t, l&aacute; v&agrave;ng rơi. M&ugrave;a đ&ocirc;ng bắt đầu từ th&aacute;ng 11 đến th&aacute;ng 1 năm sau, thời tiết gi&aacute; lạnh, kh&ocirc; hanh. Ranh giới ph&acirc;n chia bốn m&ugrave;a chỉ c&oacute; t&iacute;nh chất tương đối, v&igrave; H&agrave; Nội c&oacute; năm r&eacute;t sớm, c&oacute; năm r&eacute;t muộn, c&oacute; năm n&oacute;ng k&eacute;o d&agrave;i, nhiệt độ l&ecirc;n tới 40&deg;C, c&oacute; năm nhiệt độ xuống thấp dưới 5&deg;C.</p>\r\n\r\n<p>H&agrave; Nội quanh năm tiếp nhận được lượng bức xạ mặt trời kh&aacute; dồi d&agrave;o. Tổng lượng bức xạ trung b&igrave;nh h&agrave;ng năm khoảng 120 kcal/cm&sup2;, nhiệt độ trung b&igrave;nh năm 24,9&deg;C, độ ẩm trung b&igrave;nh 80 - 82%. Lượng mưa trung b&igrave;nh tr&ecirc;n 1700mm/năm (khoảng 114 ng&agrave;y mưa/năm).</p>\r\n\r\n<p>Trong lịch sử ph&aacute;t triển, H&agrave; Nội cũng đ&atilde; nhiều lần trải qua c&aacute;c biến đổi bất thường của kh&iacute; hậu - thời tiết. Th&aacute;ng 5 năm 1926, H&agrave; Nội chứng kiến một đợt nắng khủng khiếp c&oacute; ng&agrave;y nhiệt độ l&ecirc;n tới 42,8oC. Th&aacute;ng 1 năm 1955, m&ugrave;a đ&ocirc;ng gi&aacute; buốt nhất trong lịch sử, H&agrave; Nội sống trong c&aacute;i gi&aacute; lạnh xuống đến 2,7oC. V&agrave; gần đ&acirc;y nhất th&aacute;ng 11 năm 2008, sau khi vừa mở rộng địa giới h&agrave;nh ch&iacute;nh, H&agrave; Nội hứng chịu một cơn mưa dữ dội chưa từng thấy. Hầu như tất cả c&aacute;c tuyến phố đều ngập ch&igrave;m trong nước, lượng mưa lớn vượt qu&aacute; mọi dự b&aacute;o đ&atilde; g&acirc;y ra một trận lụt lịch sử ở H&agrave; Nội, l&agrave;m nhiều người chết, g&acirc;y thiệt hại vật chất đ&aacute;ng kể.</p>\r\n', '', '', '', '', '', 0, 'gian-hang-cho-dem-page', 'Gian hàng chợ đêm', '', ''),
(48, 41, 'en', 'Chính sách đổi - trả', '', '<p>Nội dung Ch&iacute;nh s&aacute;ch đổi - trả</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(49, 42, 'vn', 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(50, 42, 'en', 'Hệ thống nhà thuốc', '', '<p>Nội dung&nbsp;Hệ thống nh&agrave; thuốc</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(51, 43, 'vn', 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(52, 43, 'en', 'Hình thức giao hàng', '', '<p>Nội dung H&igrave;nh thức giao h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(53, 44, 'vn', 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt=\"\" src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(54, 44, 'en', 'Hình thức thanh toán', '', '<p>Nội dung&nbsp;H&igrave;nh thức thanh to&aacute;n</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(55, 45, 'vn', 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/Hydrangeas.jpg\" width=\"600\" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"221\" src=\"/image/images/Cataloge%20Rem-File%20OK%2003.jpg\" width=\"600\" /></p>\r\n\r\n<p><img alt=\"\" height=\"900\" src=\"/image/images/11___.png\" width=\"900\" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', '', '', '', '', '', 1, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(56, 45, 'en', 'Điều khoản sử dụng', '', '<p>Nội dung&nbsp;Điều khoản sử dụng</p>\r\n', '', '', '', '', '', 1, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(73, 54, 'vn', 'Chính sách vận chuyển', '', '<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><u><span style=\"font-family:Arial\"><img alt=\"Chính sách giao hàng SPRO\" height=\"284\" src=\"http://spro.vn/image/catalog/bt_products/free%20shipping8.jpg\" style=\"float:left\" width=\"300\" /></span></u></span></span></span></h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>1. PHẠM VI &Aacute;P DỤNG:</strong></span><br />\r\nTất cả c&aacute;c kh&aacute;ch h&agrave;ng mua sản phẩm tại Website;&nbsp;hoặc kh&aacute;ch h&agrave;ng đến trực tiếp xem v&agrave; mua h&agrave;ng tại c&ocirc;ng ty c&oacute; nhu cầu giao h&agrave;ng trực tiếp tại nh&agrave;.&nbsp;<br />\r\n<br />\r\n<span style=\"color:#ff3300\"><strong>2. H&Igrave;NH THỨC &Aacute;P DỤNG:</strong></span><br />\r\n<u>2.1. Giao h&agrave;ng miễn ph&iacute; :</u><br />\r\nGiao h&agrave;ng miễn ph&iacute;<strong>&nbsp;</strong><strong>&aacute;p dụng cho đơn h&agrave;ng gi&aacute; trị từ 1.000.000&nbsp;VNĐ</strong>&nbsp;trở l&ecirc;n, trong&nbsp;<strong>khu vực nội th&agrave;nh th&agrave;nh phố Hồ Ch&iacute; Minh.</strong><br />\r\nVới Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;<strong>mua c&aacute;c sản phẩm cồng kềnh (khối lượng tr&ecirc;n 50kg), hoặc đơn h&agrave;ng c&oacute; gi&aacute; trị tr&ecirc;n 5.000.000 VNĐ</strong>: Qu&yacute; Kh&aacute;ch an t&acirc;m v&igrave; cũng sẽ được SPRO.VN giao h&agrave;ng miễn ph&iacute;&nbsp;trong khu vực l&ecirc;n đến 40km t&iacute;nh từ trụ sở SPRO.VN đến địa chỉ của Qu&yacute; Kh&aacute;ch.<br />\r\n<br />\r\n<u>2.2 . Giao h&agrave;ng t&iacute;nh ph&iacute;:</u></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- Nếu Qu&yacute; Kh&aacute;ch h&agrave;ng ở qu&aacute; xa so với trụ sở SPRO.VN, nhưng c&oacute; đ<strong>ơn h&agrave;ng tr&ecirc;n 5.000.000VNĐ hoặc đơn h&agrave;ng cồng kềnh lớn hơn 50kg</strong>, Qu&yacute; Kh&aacute;ch an t&acirc;m với ch&iacute;nh s&aacute;ch vận chuyển ưu đ&atilde;i của ch&uacute;ng t&ocirc;i:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#0000ff\"><strong><span style=\"font-family:Arial\">Miễn ph&iacute; giao h&agrave;ng cho 40km đầu ti&ecirc;n.</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Với mỗi km tiếp theo, Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;chỉ phải trả mức ph&iacute; rất mềm:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen\" height=\"34\" src=\"http://spro.vn/image/catalog/bt_products/them%2010k.png\" width=\"200\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- C&aacute;c trường hợp giao h&agrave;ng dưới 1.000.000VNĐ hoặc vận chuyển bằng dịch vụ vận chuyển&nbsp;b&ecirc;n thứ 3&nbsp;sẽ t&iacute;nh ph&iacute; giao h&agrave;ng theo bảng ph&iacute; vận chuyển của h&atilde;ng vận chuyển thứ 3 hoặc theo bảng ph&iacute; của c&ocirc;ng ty. Chi ph&iacute; n&agrave;y sẽ được c&ocirc;ng ty th&ocirc;ng b&aacute;o v&agrave; x&aacute;c nhận với Qu&yacute; kh&aacute;ch trước khi Qu&yacute; kh&aacute;ch tiến h&agrave;nh thanh to&aacute;n v&agrave; c&ocirc;ng ty tiến h&agrave;nh gửi h&agrave;ng.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>3. THỜI GIAN GIAO H&Agrave;NG:</strong></span><br />\r\n-&nbsp;<strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;) t&ugrave;y v&agrave;o khoảng c&aacute;ch vận chuyển.<br />\r\n- Trong một số trường hợp kh&aacute;ch quan C&ocirc;ng ty c&oacute; thể giao h&agrave;ng chậm trễ do những điều kiện bất khả kh&aacute;ng như thời tiết xấu, điều kiện giao th&ocirc;ng kh&ocirc;ng thuận lợi, xe hỏng h&oacute;c tr&ecirc;n đường giao h&agrave;ng, trục trặc trong qu&aacute; tr&igrave;nh xuất h&agrave;ng.<br />\r\n- Trong thời gian chờ đợi nhận h&agrave;ng, Qu&yacute; kh&aacute;ch c&oacute; bất cứ thắc mắc g&igrave; về th&ocirc;ng tin vận chuyển xin vui l&ograve;ng li&ecirc;n hệ hotline của ch&uacute;ng t&ocirc;i để nhận trợ gi&uacute;p.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chính sách vận chuyển\" height=\"296\" src=\"http://spro.vn/image/catalog/bt_products/624.jpg\" title=\"Vận chuyển hàng hóa, vận chuyển giá rẻ, vận chuyển toàn quốc, vận chuyển  nhanh\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;)</span></em></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>4. TR&Aacute;CH NHIỆM VỚI H&Agrave;NG H&Oacute;A VẬN CHUYỂN.</strong></span><br />\r\n- C&ocirc;ng ty sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng ch&uacute;ng t&ocirc;i đến Qu&yacute; kh&aacute;ch.<br />\r\n- Qu&yacute; kh&aacute;ch c&oacute; tr&aacute;ch nhiệm kiểm tra h&agrave;ng h&oacute;a khi nhận h&agrave;ng. Khi ph&aacute;t hiện h&agrave;ng h&oacute;a bị hư hại, trầy xước, bể vỡ, m&oacute;p m&eacute;o, hoặc sai h&agrave;ng h&oacute;a th&igrave; k&yacute; x&aacute;c nhận t&igrave;nh trạng h&agrave;ng h&oacute;a với Nh&acirc;n vi&ecirc;n giao nhận v&agrave; th&ocirc;ng b&aacute;o ngay cho Bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng theo số hotline của C&ocirc;ng ty.<br />\r\n- Sau khi Qu&yacute;&nbsp;kh&aacute;ch đ&atilde; k&yacute; nhận h&agrave;ng m&agrave; kh&ocirc;ng ghi ch&uacute; hoặc c&oacute; &yacute; kiến về h&agrave;ng h&oacute;a. C&ocirc;ng ty kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm với những y&ecirc;u cầu đổi trả v&igrave; hư hỏng, trầy xước, bể vỡ, m&oacute;p m&eacute;o, sai h&agrave;ng h&oacute;a,&hellip; từ Qu&yacute; kh&aacute;ch sau n&agrave;y.<br />\r\n- Nếu dịch vụ vận chuyển do Qu&yacute; kh&aacute;ch chỉ định v&agrave; lựa chọn th&igrave; qu&yacute; kh&aacute;ch sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a xảy ra trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng của c&ocirc;ng ty đến Qu&yacute; kh&aacute;ch. Kh&aacute;ch h&agrave;ng sẽ chịu tr&aacute;ch nhiệm cước ph&iacute; v&agrave; tổn thất li&ecirc;n quan.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen SPRO\" height=\"224\" src=\"http://spro.vn/image/catalog/bt_products/free_shipping_0.jpg\" title=\"Chính sách vận chuyển\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Hotline:&nbsp;<strong>0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;</strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>5. C&Aacute;C ĐIỀU KIỆN KH&Aacute;C</strong></span><br />\r\n- Ch&iacute;nh s&aacute;ch giao h&agrave;ng miễn ph&iacute; kh&ocirc;ng &aacute;p dụng đối với những sản phẩm được mua trong chương tr&igrave;nh khuyến mại giờ v&agrave;ng, gi&aacute; sốc&hellip;..<br />\r\n- Chi ph&iacute; cầu đường, ph&iacute; v&agrave;o th&ocirc;n x&atilde; hoặc ph&iacute; đỗ xe tại chung cư do kh&aacute;ch h&agrave;ng tự thanh to&aacute;n.<br />\r\n- C&ocirc;ng ty chỉ giao h&agrave;ng cho đ&uacute;ng người nhận m&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute; khi mua h&agrave;ng. Trong qu&aacute; tr&igrave;nh giao h&agrave;ng nếu c&oacute; sự thay đổi người nhận một c&aacute;ch kh&ocirc;ng r&otilde; r&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối giao h&agrave;ng v&agrave; y&ecirc;u cầu Qu&yacute; kh&aacute;ch h&agrave;ng nhận h&agrave;ng tại địa điểm của b&aacute;n h&agrave;ng của c&ocirc;ng ty.<br />\r\n- Nếu địa chỉ giao h&agrave;ng kh&ocirc;ng r&otilde; r&agrave;ng, nằm trong ng&otilde; ng&aacute;ch, hoặc ở những nơi nguy hiểm, những v&ugrave;ng đồi n&uacute;i hiểm trở, phương tiện giao th&ocirc;ng đi lại kh&oacute; khăn, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối vận chuyển, giao nhận h&agrave;ng trực tiếp.<br />\r\n- Trong c&aacute;c trường hợp bất khả kh&aacute;ng, do thi&ecirc;n tai, lũ lụt, hỏng h&oacute;c cầu ph&agrave; &hellip;, ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu tr&aacute;ch nhiệm bồi thường thiệt hại ph&aacute;t sinh do giao h&agrave;ng kh&ocirc;ng đ&uacute;ng thời gian hoặc kh&ocirc;ng vận chuyển h&agrave;ng h&oacute;a đến địa điểm như đ&atilde; thỏa thuận với kh&aacute;ch h&agrave;ng.<br />\r\n- Trường hợp ch&uacute;ng t&ocirc;i đ&atilde; vận chuyển h&agrave;ng đến địa điểm giao nhận như thỏa thuận l&uacute;c mua h&agrave;ng, nhưng v&igrave; một l&yacute; do n&agrave;o đ&oacute; kh&aacute;ch h&agrave;ng y&ecirc;u cầu trả lại h&agrave;ng th&igrave; l&uacute;c đ&oacute; kh&aacute;ch h&agrave;ng phải chịu chi ph&iacute; vận chuyển theo quy định của c&ocirc;ng ty.<br />\r\n- Đối với những sản phẩm nặng v&agrave; cồng kềnh cần vận chuyển l&ecirc;n tầng m&agrave; kh&ocirc;ng c&oacute; thang m&aacute;y đề nghị kh&aacute;ch h&agrave;ng hỗ trợ trong việc giao nhận.<br />\r\n- Trong những ng&agrave;y đặc biệt hoặc c&aacute;c ng&agrave;y Lễ hội do ch&iacute;nh s&aacute;ch giao th&ocirc;ng chung bị hạn chế (cấm đường đối với một số phương tiện&hellip;) thời gian giao h&agrave;ng c&oacute; thể sẽ thay đổi, Ch&uacute;ng t&ocirc;i sẽ gọi điện cho kh&aacute;ch h&agrave;ng để thống nhất thời gian giao nhận.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Phuong thuc van chuyen SPRO\" height=\"247\" src=\"http://spro.vn/image/catalog/bt_products/phuong-thuc-thanh-toan.jpg\" width=\"300\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>SPRO.VN</strong>&nbsp;- Giao h&agrave;ng tận nơi, đ&uacute;ng h&agrave;ng đ&uacute;ng người</span></em></span></span></span></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-van-chuyen', 'Chính sách vận chuyển', '', ''),
(74, 54, 'en', 'page test 9', '', '', '', '', '', '', '', 0, 'page-test-9', 'page test 9', '', '');
INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(75, 55, 'vn', 'Hướng dẫn mua hàng', '', '<h4 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:18px\"><span style=\"color:#444444\"><span style=\"background-color:#ffffff\">Hướng dẫn mua h&agrave;ng</span></span></span></h4>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>SPRO.VN</strong>&nbsp;- L&agrave; 1 giải ph&aacute;p mua h&agrave;ng tuyệt vời đối với qu&yacute; kh&aacute;ch h&agrave;ng xa gần, bởi n&oacute; được đảm bảo t&iacute;nh ph&aacute;p l&yacute; của 1 c&ocirc;ng ty thiết bị l&acirc;u năm trong l&atilde;nh vực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Thị trường rộng lớn đ&atilde; v&agrave; đang li&ecirc;n kết được với nhiều đối t&aacute;c giao h&agrave;ng, tiện lợi, uy t&iacute;nh v&agrave; chuy&ecirc;n nghiệp.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Vận chuyển h&agrave;ng h&oacute;a tận nơi, đối với những sản phẩm kh&oacute; lắp đặt đ&atilde; c&oacute; đội ngũ kỹ thuật lắp đặt hướng dẫn ngay tại nh&agrave; m&agrave; kh&ocirc;ng cần mất th&ecirc;m chi ph&iacute;.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Điều đ&oacute; đồng nghĩa với việc kh&aacute;ch h&agrave;ng c&oacute; thể mua h&agrave;ng ngay khi ngồi tại nh&agrave; m&agrave; vẫn đảm bảo 100% những m&ocirc; tả của ch&uacute;ng t&ocirc;i l&agrave; ch&iacute;nh x&aacute;c, h&igrave;nh ảnh v&agrave; video l&agrave; x&aacute;c thực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>C&Aacute;CH MUA H&Agrave;NG NHƯ THẾ N&Agrave;O?</strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng tại cửa h&agrave;ng:&nbsp;</u>&nbsp;</strong>143 B&igrave;nh Lợi, Phường 13, Quận B&igrave;nh Thạnh</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Li&ecirc;n hệ với số&nbsp;<strong>Hotline</strong>:&nbsp;<strong>028.35.534.298</strong>&nbsp;&nbsp;của cửa h&agrave;ng để biết ch&iacute;nh x&aacute;c về t&igrave;nh trạng h&agrave;ng h&oacute;a &ndash; Địa chỉ x&aacute;c thực v&agrave; t&ecirc;n người phụ tr&aacute;ch b&aacute;n h&agrave;ng.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp;Mua h&agrave;ng + Đặt cọc + l&ecirc;n lịch giao h&agrave;ng (thỏa thuận)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Nhận h&agrave;ng tại nh&agrave;, kiểm tra đầy đủ phụ kiện, thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng số tiền c&ograve;n lại.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng online:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Truy cập v&agrave;o website&nbsp;<strong>SPRO.VN</strong>&nbsp;t&igrave;m sản phẩm tr&ecirc;n menu hoặc tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">V&iacute; dụ: mua m&aacute;y gia xe gia đ&igrave;nh chỉ cần g&otilde; v&agrave;o thanh t&igrave;m kiếm &ldquo;M&aacute;y rửa xe gia đ&igrave;nh&rdquo; hoặc &ldquo;may rua xe gia dinh&rdquo; hoặc &ldquo;gia đ&igrave;nh&rdquo;, &ldquo;gia dinh&rdquo; tuy nhi&ecirc;n t&igrave;m c&agrave;ng chi tiết th&igrave; c&agrave;ng dễ chọn được sản phẩm ph&ugrave; hợp. Hoặc t&igrave;m theo m&atilde; sản phẩm v&iacute; dụ: &ldquo;k2 360&rdquo;...</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp; Gọi điện thoại tr&ecirc;n website để được nh&acirc;n vi&ecirc;n tư vấn v&agrave; mua h&agrave;ng lu&ocirc;n qua điện thoại, hoặc click v&agrave;o n&uacute;t đặt h&agrave;ng l&agrave;m theo hướng dẫn sau đ&acirc;y để mua h&agrave;ng:</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Tiếp nhận điện thoại x&aacute;c nhận đơn h&agrave;ng của c&aacute;c tổng đ&agrave;i vi&ecirc;n &ndash; Thỏa thuận c&aacute;c phương thức vận chuyển thanh to&aacute;n sao cho ph&ugrave; hợp nhất.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 4:</strong>&nbsp;Nhận h&agrave;ng v&agrave; kiểm tra h&agrave;ng h&oacute;a tại nh&agrave;, li&ecirc;n hệ số điện thoại kỹ thuật để nhận được tư vấn khi sử dụng hoặc thắc mắc về sự cố: 0961.958.460 (Mr. Tuấn).</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng qua điện thoại:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Hồ Ch&iacute; Minh:</u></strong><br />\r\n<br />\r\n<strong>&nbsp;Hotline</strong>: 0835.534.298</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Ph&uacute;: 0986.954.423</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Ms.Hường: 0909.115.704</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Biển: 0965.570.643</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Hưng: 0962.073.945 (Tiếp nhận kh&aacute;ch h&agrave;ng c&oacute; nhu cầu l&agrave;m đại l&yacute;)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>H&agrave; Nội:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Hotline</strong>: 0976.666.906 Mr.Hưng</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Đạo: 0964.063.553</span></span></span></p>\r\n', '', '', '', '', '', 0, 'huong-dan-mua-hang', 'Hướng dẫn mua hàng', '', ''),
(76, 55, 'en', 'page test 10', '', '', '', '', '', '', '', 0, 'page-test-10', 'page test 10', '', ''),
(77, 56, 'vn', 'Phương thức thanh toán', '', '<h3>Phương thức thanh to&aacute;n</h3>\r\n\r\n<p>C&Aacute;C TH&Ocirc;NG TIN CẦN BIẾT KHI THANH TO&Aacute;N</p>\r\n\r\n<h2 style=\"text-align:center\"><u><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO\" height=\"186\" src=\"http://spro.vn/image/catalog/bt_products/payment-options-banner.png\" title=\"phương thức thanh toan, phuong thuc thanh toan, thanh toán tiền hàng, thanh toan tien hang\" width=\"500\" /></a></u><br />\r\n&nbsp;</h2>\r\n\r\n<p>1. Thanh to&aacute;n COD: Nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt<br />\r\n<em>Khi qu&yacute; kh&aacute;ch y&ecirc;u cầu h&igrave;nh thức thanh to&aacute;n COD tức nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt,&nbsp;Qu&yacute; kh&aacute;ch vui l&ograve;ng lưu &yacute; những quy định sau:</em><br />\r\n- Đối với c&aacute;c sản phẩm được giao h&agrave;ng bởi nh&acirc;n vi&ecirc;n c&ocirc;ng ty, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n đầy đủ sau khi nh&acirc;n vi&ecirc;n đ&atilde; giao h&agrave;ng cho Qu&yacute; kh&aacute;ch. Nếu cần hỗ trợ hướng dẫn sử dụng, hoặc kiểm tra m&aacute;y m&oacute;c, thiết bị ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ ngay tại chỗ.<br />\r\n- Đối với h&agrave;ng h&oacute;a được gởi theo đường bưu điện hoặc dịch vụ chuyển ph&aacute;t nhanh. Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước cho nh&acirc;n vi&ecirc;n giao h&agrave;ng rồi mới b&oacute;c mở h&agrave;ng h&oacute;a (Đ&acirc;y l&agrave; quy định bắt buộc của đơn vị vận chuyển). Sau khi b&oacute;c mở h&agrave;ng h&oacute;a, nếu&nbsp;Qu&yacute; kh&aacute;ch cần th&ecirc;m hỗ trợ g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.<br />\r\n<br />\r\n2. Thanh to&aacute;n qua nh&agrave; xe, đơn vị chuyển ph&aacute;t<br />\r\n<em>Đối với c&aacute;c tỉnh ở xa khu vực th&agrave;nh phố Hồ Ch&iacute; Minh hay H&agrave; Nội. Ch&uacute;ng t&ocirc;i thường lựa chọn phương&nbsp;thức vận chuyển bằng xe kh&aacute;ch hoặc ch&agrave;nh xe vận chuyển. Điều n&agrave;y l&agrave;m giảm chi ph&iacute; vận chuyển đ&aacute;ng kể cho kh&aacute;ch h&agrave;ng. V&igrave; những sản phẩm c&oacute; k&iacute;ch thước hoặc trọng lượng lớn gần như kh&ocirc;ng thể gởi bưu điện hoặc c&oacute; gởi cước ph&iacute; sẽ rất cao. Do đ&oacute; Qu&yacute; kh&aacute;ch lưu &yacute; một số vấn đề sau đ&acirc;y:</em><br />\r\n- C&ocirc;ng ty sẽ &aacute;p dụng ch&iacute;nh s&aacute;ch nh&agrave; xe thu tiền hộ c&ocirc;ng ty. Do đ&oacute; nếu được y&ecirc;u cầu thu hộ, Qu&yacute; kh&aacute;ch vui l&ograve;ng chuẩn bị tiền thanh to&aacute;n trực tiếp cho nh&agrave; xe hoặc đơn vị vận chuyển do&nbsp;c&ocirc;ng ty y&ecirc;u cầu.<br />\r\n- Đối với c&aacute;c sản phẩm c&oacute; trọng lượng lớn v&agrave; kỹ thuật sử dụng phức tạp, Qu&yacute; kh&aacute;ch c&oacute; thể y&ecirc;u cầu nh&acirc;n vi&ecirc;n c&ocirc;ng ty đến tận nh&agrave; lắp đặt. V&agrave; sẽ thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng hoặc nh&acirc;n vi&ecirc;n lắp đặt t&ugrave;y theo th&ocirc;ng b&aacute;o của c&ocirc;ng ty.<br />\r\n<br />\r\n3.&nbsp;Thanh to&aacute;n tại c&ocirc;ng ty<br />\r\nQu&yacute; kh&aacute;ch mua h&agrave;ng c&oacute; thể đến địa chỉ c&ocirc;ng ty để xem h&agrave;ng v&agrave; mua h&agrave;ng:</p>\r\n\r\n<p><em>167 - 169 B&igrave;nh Lợi (Nơ Trang Long nối d&agrave;i), P. 13, Quận B&igrave;nh Thạnh, Tp. Hồ Ch&iacute; Minh .</em></p>\r\n\r\n<p><br />\r\n4. Thanh to&aacute;n c&ocirc;ng nợ<br />\r\nĐối với c&aacute;c c&ocirc;ng ty đề nghị thanh to&aacute;n c&ocirc;ng nợ, hai b&ecirc;n cần x&aacute;c nhận đơn đặt h&agrave;ng v&agrave; thời gian c&ocirc;ng nợ hoặc gởi PO đặt h&agrave;ng qua Email:&nbsp;Hotrospro@gmail.com. C&ocirc;ng ty sẽ xem x&eacute;t c&aacute;c trường hợp cụ thể v&agrave; th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng về việc c&oacute; chấp nhận&nbsp;c&ocirc;ng nợ hay kh&ocirc;ng.<br />\r\nLi&ecirc;n hệ trực tiếp qua số điện thoại:&nbsp;0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;<br />\r\n<br />\r\n5. Thanh to&aacute;n Chuyển khoản</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO \" height=\"313\" src=\"http://spro.vn/image/catalog/bt_products/computer-keyboard-and-credit-card.jpg\" title=\"phương thức thanh toán\" width=\"500\" /></a><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Qu&yacute; Kh&aacute;ch vui l&ograve;ng chuyển tiền&nbsp;v&agrave;o một&nbsp;trong c&aacute;c&nbsp;t&agrave;i khoản sau:</strong></p>\r\n\r\n<ul>\r\n	<li>Chủ t&agrave;i khoản: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 060059386363<br />\r\n	-&nbsp;<strong>Tại NH Sacombank</strong>&nbsp;- PGD Phan Đăng Lưu - Chi nh&aacute;nh 8/3<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: CT TNHH C&ocirc;ng Nghiệp v&agrave; TM Nam Việt<br />\r\n	- Số TK: 0531002529891<br />\r\n	-&nbsp;<strong>Tại NH Vietcombank&nbsp;</strong>- Chi nh&aacute;nh Đ&ocirc;ng S&agrave;i G&ograve;n<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 19026579068019<br />\r\n	-&nbsp;<strong>Tại NH Techcombank</strong>&nbsp;- Chi nh&aacute;nh Nguyễn Th&aacute;i Sơn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 100414851047518<br />\r\n	-&nbsp;<strong>Tại NH Eximbank</strong>&nbsp;- Chi nh&aacute;nh Chợ Lớn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 172704070003087<br />\r\n	-&nbsp;<strong>Tại NH HD Bank</strong>&nbsp;- Chi nh&aacute;nh Gia Định<br />\r\n	&nbsp;</li>\r\n	<li>TK c&aacute; nh&acirc;n kế to&aacute;n trưởng. Chủ TK: Phạm Thị&nbsp;Tuyết<br />\r\n	- Số TK: 108004183511<br />\r\n	-&nbsp;<strong>Tại NH Vietinbank</strong>&nbsp;- Chi nh&aacute;nh Vũng T&agrave;u.</li>\r\n</ul>\r\n\r\n<p>Hiện nay, c&ocirc;ng ty ch&uacute;ng t&ocirc;i kh&ocirc;ng &aacute;p dụng h&igrave;nh thức mua h&agrave;ng trả g&oacute;p. Khi mua h&agrave;ng nếu Qu&yacute; kh&aacute;ch c&oacute; thắc mắc về vấn đề thanh to&aacute;n, xin vui l&ograve;ng xem qua c&aacute;c th&ocirc;ng tin ph&iacute;a dưới.</p>\r\n\r\n<p>Sau khi đ&atilde; chuyển tiền, Qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng b&aacute;o ngay để c&ocirc;ng ty ch&uacute;ng t&ocirc;i tiện theo d&otilde;i,&nbsp;ghi nhận v&agrave; chuyển h&agrave;ng ngay cho Qu&yacute; kh&aacute;ch.&nbsp;</p>\r\n\r\n<p>--------------------------------------------------------------------</p>\r\n\r\n<p style=\"text-align:center\">Rất cảm ơn sự ủng hộ của Qu&yacute; kh&aacute;ch!</p>\r\n', '', '', '', '', '', 1, 'phuong-thuc-thanh-toan', 'Phương thức thanh toán', '', ''),
(78, 56, 'en', 'page test 11', '', '<p>2</p>\r\n', '', '', '', '', '', 1, 'page-test-11', 'page test 11', '', ''),
(79, 57, 'vn', 'Nguyên liệu', 'Dala Bread Bánh mỳ que Đà Lạt là một trong những món ngon được xếp vào hàng nổi tiếng hiện nay, có thể làm xiêu lòng những thị hiếu khắt khe nhất của con người thời đại.\r\n', '<p dir=\"ltr\" style=\"text-align:justify\">B&aacute;nh mỳ Dala l&agrave; thương hiệu vốn kh&ocirc;ng c&ograve;n xa lạ tr&ecirc;n thị trường ng&agrave;y nay, bởi những ưu điểm tuyệt vời, vị ngon tuyệt diệu m&agrave; kh&ocirc;ng ai c&oacute; thể &ldquo;cưỡng&rdquo; lại khi chỉ một lần được thưởng thức qua. Với chất lượng đi liền với m&ugrave;i vị, Dala Bread B&aacute;nh mỳ que Đ&agrave; Lạt tự h&agrave;o mang đến th&agrave;nh phẩm c&oacute; thể đ&aacute;p ứng tối đa nhu cầu của con người.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Th&agrave;nh phần c&oacute; trong Dala Bread B&aacute;nh mỳ que Đ&agrave; Lạt.</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Để c&oacute; được một phần Dala Bread B&aacute;nh mỳ que Đ&agrave; Lạt thơm nức mũi, tr&ograve;n vị đ&ograve;i hỏi tầm tay nghề cao của người chế biến, b&ecirc;n cạnh đ&oacute; c&ograve;n chứa đựng nền tảng nguy&ecirc;n liệu chất lượng, đảm bảo vệ sinh an to&agrave;n thực phẩm.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Trong khu&ocirc;n khổ bải viết n&agrave;y, ch&uacute;ng t&ocirc;i xin được giới thiệu đến bạn c&aacute;c th&agrave;nh phần chủ đạo c&oacute; trong một ổ b&aacute;nh mỳ Dala ho&agrave;n mỹ.</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Nguy&ecirc;n liệu đến từ đơn vị T&acirc;n Vĩnh Ph&aacute;t.</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">T&acirc;n Vĩnh Ph&aacute;t l&agrave; một trong những thương hiệu cung cấp nhiều nguy&ecirc;n liệu chủ đạo cho B&aacute;nh mỳ Dala, c&oacute; thể kể đến như&nbsp;: pate, sốt l&ograve;ng đỏ trứng g&agrave; tươi, ch&agrave; b&ocirc;ng, nước tương, nem nướng, Jam b&ocirc;ng x&ocirc;ng kh&oacute;i, nước tương&hellip;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh3.googleusercontent.com/7HEOhuuqGHxIV94AOJQFlUXzwCSq416MwqNXtvgMcBSi29xvi1WcMizxnIk5afq6Kkj26lCOsd4PL6zsQiG5UMnqvgT2GSAOeJwouVrxfETTatWoP93gcxgnZcHdQK3rGepGPVAS\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Sốt l&ograve;ng đỏ trứng g&agrave; tươi T&acirc;n Vĩnh Ph&aacute;t</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh3.googleusercontent.com/o0CH8zZcrQCiUsQTKCFFWTZtwyAYbFrrqbAVUlJFxUKt1INl36vu2F9x8ae8JhJeFNvDVU0Ajmp7018m2xFd9K1lsYoAp5AtOwx8dVxSAYUHpev--BPubHjXao2U_akv5wWPPpda\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Pate T&acirc;n Vĩnh Ph&aacute;t</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh4.googleusercontent.com/3XdtVRmg1DxXI2c3iQPI5LNjAGfAb-T227Dvp8gCAWHEDb2qVLHtEVCblYucQ-zCZm1OGp_J3vMZlYWzouV0AhHbmrVCbZD4sUdif5Wgzz2MWsjo5ySocbmcSplGdTmIJyyoNwiz\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Ch&agrave; b&ocirc;ng T&acirc;n Vĩnh Ph&aacute;t</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">To&agrave;n bộ những sản phẩm n&agrave;y đều đ&aacute;p ứng đầy đủ những ti&ecirc;u chuẩn khắt khe về mặt chất lượng cũng như được kiểm định thường xuy&ecirc;n bởi c&aacute;c cơ quan an to&agrave;n vệ sinh thực phẩm c&oacute; thẩm quyền, chắc chắn mang lại phần Dala Bread B&aacute;nh mỳ que Đ&agrave; Lạt ngon, bổ m&agrave; kh&ocirc;ng g&acirc;y ra bất kỳ hiểm họa sức khỏe n&agrave;o đối với người thưởng thức.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh3.googleusercontent.com/BOEY0mOrv3wXE1C5fto8bnLDWTgNqqWJ1NSztuoY5rl7bVgEPsDLf7fRiI01xAODsTECF1y3ApY1ctcBUnl_zVrYNdRkMkkMltM7PP2hfpWgPP2J-p6Rl0HToQHnzL7UuifqSEhG\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Jam b&ocirc;ng T&acirc;n Vĩnh Ph&aacute;t</em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong>Nguy&ecirc;n liệu đến từ đơn vị CP. Việt Nam.</strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Một trong những th&agrave;nh phần quan trọng tạo n&ecirc;n m&ugrave;i vị đặc trưng của b&aacute;nh mỳ Dala, đ&oacute; ch&iacute;nh l&agrave; x&uacute;c x&iacute;ch CP ngon tuyệt hảo m&agrave; bạn kh&oacute; c&oacute; thể t&igrave;m thấy tại bất kỳ một đơn vị v&agrave;o kh&aacute;c tr&ecirc;n thị trường.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Tập đo&agrave;n CP. (Charoen Pokphand Group) l&agrave; một trong những đơn vị mạnh nhất tại Th&aacute;i Lan trong lĩnh vực c&ocirc;ng &ndash; n&ocirc;ng nghiệp v&agrave; chế biến thực phẩm, đặc biệt l&agrave; những sản phẩm từ thịt động vật v&agrave; hải sản. Tại Việt Nam, Tập đo&agrave;n CP. c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; C&ocirc;ng ty Cổ phần Chăn nu&ocirc;i CP. Việt Nam.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ch&iacute;nh quy m&ocirc; v&agrave; tầm cỡ của đơn vị sản xuất m&agrave; th&agrave;nh phẩm x&uacute;c x&iacute;ch do tập đo&agrave;n cung ứng tr&ecirc;n thị trường đều đảm bảo yếu tố ngon, bổ, sạch, kh&ocirc;ng tồn dư chất bảo quản, qu&yacute; kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m trong qu&aacute; tr&igrave;nh thưởng thức Dala Bread B&aacute;nh mỳ que Đ&agrave; Lạt.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh6.googleusercontent.com/ori-D8Wc4DRg5RjJo6AF5cXAAaP6bDvX-0gocqrHRgBZbgnPPd-dz5YLlgDddaoFqEwjOCQ7TB_v0yAbwD6h3A39Fot8hFNALDPXmrlRlwU7CXKfsqCc0WFrJT2Sr7Vofu8AotdQ\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>X&uacute;c x&iacute;ch CP</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Ngo&agrave;i ra, một th&agrave;nh phẩm b&aacute;nh mỳ que Dala c&ograve;n c&oacute; sự g&oacute;p mặt v&agrave; bổ trợ th&ecirc;m của nhiều nguy&ecirc;n liệu cao cấp kh&aacute;c nữa như:</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong>Thịt x&ocirc;ng kh&oacute;i Le Gourmet</strong>: Le Gourmet l&agrave; một trong những thương hiệu thực phẩm h&agrave;ng đầu với sứ mệnh mang đến bữa ăn ngon - bổ - rẻ. C&aacute;c nguy&ecirc;n liệu được tuyển chọn đầu v&agrave;o kỹ lưỡng, chất lượng được kiểm định an to&agrave;n, mang đến sự h&agrave;i l&ograve;ng v&agrave; an t&acirc;m.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"401\" src=\"https://lh4.googleusercontent.com/x4YwJWFnmkOIGRe0mIma_hrmzLXpnFuViGRKHfngyXZN8CRhspyZkJQHUF8GVyQIx2syXxmoLQW6ZX0cpvXCaTkj3YOIhvLTBAGdiOei3Owp23U1WxIpbuc5-5k5cC23chfqVrFB\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Thịt x&ocirc;ng kh&oacute;i Le Gourmet</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong>Ớt chưng theo c&ocirc;ng thức b&iacute; truyền của người Đ&agrave; Lạt</strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" height=\"424\" src=\"https://lh5.googleusercontent.com/EoLbfR_5pcd8ooULokuAHOpOnXTJiIjqGEocU0HteQGKlgWN8jmdJ6eagaKMV9OPJbVBjRJ6Rlh2ZmrUmKmevHOh-st7z5cOAqm0evwNorHCFN8EDWiqrUli8Y1Iv3NT2hdx2-dL\" width=\"602\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em>Ớt chưng Đ&agrave; Lạt</em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong>Rau củ quả từ l&agrave;ng rau sạch Đ&agrave; Lạt</strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong>Bơ thơm Meizan</strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Với tinh thần tr&aacute;ch nhiệm cao với kh&aacute;ch h&agrave;ng c&ugrave;ng mục ti&ecirc;u mang đến những sản phẩm b&aacute;nh mỳ Dala chất lượng, sạch, an to&agrave;n, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang kh&ocirc;ng ngừng tuyển chọn những d&ograve;ng nguy&ecirc;n liệu tốt nhất, đảm bảo mỗi lần thưởng thức l&agrave; hương vị tuyệt vời ấy sẽ m&atilde;i kh&ocirc;ng qu&ecirc;n.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">DALA BREAD B&Aacute;NH MỲ QUE Đ&Agrave; LẠT &ndash; ĐẲNG CẤP M&Ugrave;I VỊ, ĐỌNG M&Atilde;I KH&Ocirc;NG PHAI!</p>\r\n', '', '', '', '', '', 0, 'nguyen-lieu', 'Nguyên liệu', 'Dala Bread Bánh mỳ que Đà Lạt', 'Dala Bread Bánh mỳ que Đà Lạt là một trong những món ngon được xếp vào hàng nổi tiếng hiện nay, có thể làm xiêu lòng những thị hiếu khắt khe nhất của con người thời đại.\r\n'),
(80, 57, 'en', 'english version Nguyên liệu', 'english version ', 'english version <p>123</p>\r\n', '', '', '', '', '', 0, 'en-nguyen-lieu', 'Nguyên liệu', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `alias` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci,
  `producttag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`) VALUES
(43, 'Súp vi cá', '', '<p><strong>Nh&acirc;n bao gồm:</strong>&nbsp;Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương</p>\r\n', '', '', '', '', '', 10000, 0, 0, 'thumbnail_sup-vi-ca.jpg', '[\"{\\\"image\\\":\\\"x6.jpg\\\"}\"]', '2018-09-11 18:09:02', '2019-10-05 11:10:16', 0, 1, 1, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 1, 'Súp vi cá', '', 'sup-vi-ca', '', 1, '', '', '', NULL, NULL, '108,108', ''),
(44, 'Súp nấm', '', '<p><strong>Nh&acirc;n bao gồm:</strong>&nbsp;Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt&nbsp;chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + X&uacute;c X&iacute;ch</p>\r\n', '', '', '', '', '', 13000, 0, 0, 'thumbnail_sup-nam.jpg', '[]', '2018-09-11 18:09:35', '2019-10-05 13:10:18', 0, 1, 1, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 1, 'Súp nấm', '', 'sup-nam', '', 1, '', '', '', NULL, NULL, '106,105,108,108', ''),
(45, 'Súp cầu gai', '', '<p><strong>Nh&acirc;n bao gồm:</strong>&nbsp;Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + Jam b&ocirc;ng x&ocirc;ng kh&oacute;i</p>\r\n', '', '', '', '', '', 15000, 0, 0, 'thumbnail_sup-cau-gai.jpg', '[\"{\\\"image\\\":\\\"x22.jpg\\\"}\"]', '2018-09-11 18:09:03', '2019-10-05 11:10:04', 0, 1, 1, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 1, 'Súp cầu gai', '', 'sup-cau-gai', '', 1, '', '', '', NULL, NULL, '108,108', ''),
(47, 'Súp hải sản', '', '<p><strong>Nh&acirc;n bao gồm:</strong>&nbsp;Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + Nem nướng</p>\r\n', '', '', '', '', '', 15000, 0, 0, 'thumbnail_soup-hai-san.jpg', '[\"{\\\"image\\\":\\\"x4.jpg\\\"}\"]', '2018-11-02 19:11:15', '2019-10-05 13:10:50', 0, 1, 1, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 1, 'Súp hải sản', '', 'sup-hai-san', '', 1, '', '', '', NULL, NULL, '106,105,108,108', ''),
(48, 'Súp bắp non cua', '', '<p><strong>Nh&acirc;n bao gồm:</strong>&nbsp;Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + Nem nướng</p>\r\n', '', '', '', '', '', 15000, 0, 0, 'thumbnail_sup-bap-cua.jpg', '[\"{\\\"image\\\":\\\"x33.jpg\\\"}\"]', '2018-11-02 19:11:00', '2019-10-05 11:10:48', 0, 1, 1, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 1, 'Súp bắp non cua', '', 'sup-bap-non-cua', '', 1, '', '', '', NULL, NULL, '108,108', ''),
(49, 'Súp măng tây cua', '', '', '', '', '', '', '', 0, 0, 0, 'sup-mang-tay-cua.jpg', '[]', '2019-10-05 11:10:52', '2019-10-05 13:10:42', 0, 0, 0, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'Súp măng tây cua', '', 'sup-mang-tay-cua', '', 1, '', '', '', NULL, NULL, '106,105,108,107,107', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(103, 'Nhà hàng Hoàng Sa', '', '', 0, 0, '', '2019-10-05 10:10:54', NULL, '', '', '', '', '', 1, 'Nhà hàng Hoàng Sa', '', 'nha-hang-hoang-sa', '', 1),
(104, 'Nhà hàng Vịnh Xanh', '', '', 0, 0, '', '2019-10-05 11:10:11', NULL, '', '', '', '', '', 1, 'Nhà hàng Vịnh Xanh', '', 'nha-hang-vinh-xanh', '', 1),
(105, 'Soups', '', '', 104, 0, '', '2019-10-05 11:10:26', NULL, '', '', '', '', '', 1, 'Soups', '', 'soups', '', 1),
(106, 'Các món rau', '', '', 104, 0, '', '2019-10-05 11:10:41', NULL, '', '', '', '', '', 1, 'Các món rau', '', 'cac-mon-rau', '', 1),
(107, 'Soups', '', '', 103, 0, '', '2019-10-05 11:10:51', NULL, '', '', '', '', '', 1, 'Soups', '', 'soups-1', '', 1),
(108, 'Các món rau', '', '', 103, 0, '', '2019-10-05 11:10:06', NULL, '', '', '', '', '', 1, 'Các món rau', '', 'cac-mon-rau-1', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(5, 103, 'Nhà hàng Hoàng Sa', 'vn', '', '', '', '', '', '', '', 0, 'nha-hang-hoang-sa', '', 'Nhà hàng Hoàng Sa', ''),
(6, 103, 'english version Nhà hàng Hoàng Sa', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-nha-hang-hoang-sa', '', 'Nhà hàng Hoàng Sa', ''),
(7, 104, 'Nhà hàng Vịnh Xanh', 'vn', '', '', '', '', '', '', '', 0, 'nha-hang-vinh-xanh', '', 'Nhà hàng Vịnh Xanh', ''),
(8, 104, 'english version Nhà hàng Vịnh Xanh', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-nha-hang-vinh-xanh', '', 'Nhà hàng Vịnh Xanh', ''),
(9, 105, 'Soups', 'vn', '', '', '', '', '', '', '', 0, 'soups', '', 'Soups', ''),
(10, 105, 'english version Soups', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-soups', '', 'Soups', ''),
(11, 106, 'Các món rau', 'vn', '', '', '', '', '', '', '', 0, 'cac-mon-rau', '', 'Các món rau', ''),
(12, 106, 'english version Các món rau', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cac-mon-rau', '', 'Các món rau', ''),
(13, 107, 'Soups', 'vn', '', '', '', '', '', '', '', 0, 'soups-1', '', 'Soups', ''),
(14, 107, 'english version Soups', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-soups-1', '', 'Soups', ''),
(15, 108, 'Các món rau', 'vn', '', '', '', '', '', '', '', 0, 'cac-mon-rau-1', '', 'Các món rau', ''),
(16, 108, 'english version Các món rau', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cac-mon-rau-1', '', 'Các món rau', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag`
--

CREATE TABLE `producttag` (
  `producttag_id` int(11) NOT NULL,
  `producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sort_order` int(11) NOT NULL,
  `producttag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_created_date` datetime NOT NULL,
  `producttag_update_date` datetime NOT NULL,
  `producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag`
--

INSERT INTO `producttag` (`producttag_id`, `producttag_name`, `producttag_des`, `producttag_content`, `producttag_sort_order`, `producttag_img`, `producttag_created_date`, `producttag_update_date`, `producttag_sub_info1`, `producttag_sub_info2`, `producttag_sub_info3`, `producttag_sub_info4`, `producttag_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(5, 'đỏ', '<p>des</p>\r\n', '<p>content1</p>\r\n', 0, '', '2017-12-12 19:12:53', '2017-12-13 12:12:30', '', '', '', '', '', 1, 'đỏ', 'a1', 'do', 'a1', 1),
(7, 'Xanh', '', '', 0, '', '2017-12-13 12:12:49', '2017-12-13 12:12:49', '', '', '', '', '', 1, 'Xanh', '', 'xanh', '', 1),
(8, 'Vàng', '', '', 0, '', '2017-12-13 12:12:04', '2017-12-13 17:12:26', '', '', '', '', '', 1, 'Vàng', '', 'vang', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag_languages`
--

CREATE TABLE `producttag_languages` (
  `id` int(11) NOT NULL,
  `producttag_id` int(11) NOT NULL,
  `lang_producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `languages_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag_languages`
--

INSERT INTO `producttag_languages` (`id`, `producttag_id`, `lang_producttag_name`, `languages_code`, `lang_producttag_des`, `lang_producttag_content`, `lang_producttag_sub_info1`, `lang_producttag_sub_info2`, `lang_producttag_sub_info3`, `lang_producttag_sub_info4`, `lang_producttag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(2, 5, 'đỏ', 'vn', '<p>des</p>\r\n', '<p>content1</p>\r\n', '', '', '', '', '', 1, 'do', 'a1', 'đỏ', 'a1'),
(3, 5, 'tag produnt', 'en', '<p>des</p>\r\n', '<p>content</p>\r\n', '', '', '', '', '', 1, 'tag-produnt', 'a', 'tag produnt', 'a'),
(6, 7, 'Xanh', 'vn', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(7, 7, 'Xanh', 'en', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(8, 8, 'Vàng', 'vn', '<p>1</p>\r\n', '<p>1</p>\r\n', '', '', '', '', '', 1, 'vang', '', 'Vàng', ''),
(9, 8, 'yellow', 'en', '', '', '', '', '', '', '', 1, 'vang', '', 'Vàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(73, 43, 'vn', 'Súp vi cá', '<p><strong>Nh&acirc;n bao gồm:</strong>&nbsp;Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương</p>\r\n', '', '', '', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'sup-vi-ca', 'Súp vi cá', '', ''),
(74, 43, 'en', 'english version Tin bột lá nhuộm đen +', 'english version ', '', '', 'english version ', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'en-tin-bot-la-nhuom-den', 'Tin bột lá nhuộm đen +', '', ''),
(75, 44, 'vn', 'Súp nấm', '<p><strong>Nh&acirc;n bao gồm:</strong>&nbsp;Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt&nbsp;chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + X&uacute;c X&iacute;ch</p>\r\n', '', '', '', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'sup-nam', 'Súp nấm', '', ''),
(76, 44, 'en', 'english version Tin bột lá nhuộm đen - ', 'english version ', '', '', 'english version ', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'en-tin-bot-la-nhuom-den-1', 'Tin bột lá nhuộm đen - ', '', ''),
(77, 45, 'vn', 'Súp cầu gai', '<p><strong>Nh&acirc;n bao gồm:</strong>&nbsp;Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + Jam b&ocirc;ng x&ocirc;ng kh&oacute;i</p>\r\n', '', '', '', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'sup-cau-gai', 'Súp cầu gai', '', ''),
(78, 45, 'en', 'english version Tinh bột lá nhuộm nâu +', 'english version ', '', '', 'english version ', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'en-tinh-bot-la-nhuom-nau', 'Tinh bột lá nhuộm nâu +', '', ''),
(81, 47, 'vn', 'Súp hải sản', '<p><strong>Nh&acirc;n bao gồm:</strong>&nbsp;Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + Nem nướng</p>\r\n', '', '', '', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'sup-hai-san', 'Súp hải sản', '', ''),
(82, 47, 'en', 'english version Pate - Chà bông - Dăm bông', 'english version <p>Được chế biến theo Phương Ph&aacute;p B&iacute; Truyền n&ecirc;n Hương vị thơm ngon đặc trưng. Sản phẩm chất lượng cao của c&ocirc;ng ty TNHH Sản xuất thực phẩm v&agrave; thương mại T&acirc;n Vĩnh Ph&aacute;t.</p>\r\n', '', '', 'english version ', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'en-pate-cha-bong-dam-bong', 'Pate - Chà bông - Dăm bông', '', ''),
(83, 48, 'vn', 'Súp bắp non cua', '<p><strong>Nh&acirc;n bao gồm:</strong>&nbsp;Pate + Ch&agrave; b&ocirc;ng + Sốt trứng g&agrave; tươi + Ớt chưng Đ&agrave; Lạt + Rau ng&ograve; đồ chua + Nước tương + Nem nướng</p>\r\n', '', '', '', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'sup-bap-non-cua', 'Súp bắp non cua', '', ''),
(84, 48, 'en', 'english version Bánh mì que nem nướng', 'english version <p>Nem nướng&nbsp;đều được chế biến theo phương ph&aacute;p b&iacute; truyền của Người gốc Hoa, n&ecirc;n tất cả đều mang hương vị ri&ecirc;ng đặc trưng m&agrave; kh&ocirc;ng c&oacute; bất kỳ sản phẩm n&agrave;o kh&aacute;c c&ugrave;ng t&ecirc;n c&oacute; được.</p>\r\n', '', '', 'english version ', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'en-banh-mi-que-nem-nuong', 'Bánh mì que nem nướng', '', ''),
(85, 49, 'vn', 'Súp măng tây cua', '', '', '', '', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'sup-mang-tay-cua', 'Súp măng tây cua', '', ''),
(86, 49, 'en', 'english version Súp măng tây cua', 'english version ', '', '', 'english version ', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'en-sup-mang-tay-cua', 'Súp măng tây cua', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `servicetag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `servicetag_arr`) VALUES
(57, 'Ảnh số tám', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Automotive Aftermarket Business Division is responsible for our replacement parts business worldwide and delivers innovative repair solutions in original-equipment quality. With our four brands LuK, INA, FAG, and Ruville, we offer clutch and release systems, engine and transmission applications, as well as chassis applications. All components are optimally tuned to work together and allow for fast and professional replacement.</p>\r\n\r\n<p><img alt=\"\" height=\"563\" src=\"/image/images/Ubuntu_wall_4_by_RPMan_Art.png\" style=\"float:left\" width=\"900\" /></p>\r\n\r\n<p>What&rsquo;s more, our REPXPERT brand focuses on comprehensive services for garages, such as conducting practical-oriented training courses, providing support for repair with our hotline, our online garage portal and developing special tools</p>\r\n', '5.jpg', '354', 4, 'Minh Công', '2017-05-22', '2019-10-05', 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số tám', '', 'anh-so-tam', '', NULL, ''),
(58, 'Ảnh số bảy', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', '2.jpg', '354', 3, 'Minh Công', '2017-05-22', '2019-10-05', 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số bảy', '', 'anh-so-bay', '', NULL, ''),
(59, 'Ảnh số sáu', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', '3.jpg', '354', 3, 'Minh Công', '2017-05-22', '2019-10-05', 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số sáu', '', 'anh-so-sau', '', NULL, ''),
(60, 'Ảnh số năm', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', 'thuc-don-6-n.jpg', '354', 4, 'Minh Công', '2017-05-22', '2019-10-05', 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số năm', '', 'anh-so-nam', '', NULL, ''),
(61, 'Ảnh số bốn', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', 'thuc-don-4-n.jpg', '354', 4, 'Minh Công', '2017-05-22', '2019-10-05', 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số bốn', '', 'anh-so-bon', '', NULL, ''),
(62, 'Ảnh số ba', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', 'thuc-don-3-n.jpg', '0', 6, '', '2018-05-03', '2019-10-05', 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số ba', '', 'anh-so-ba', '', 1, ''),
(63, 'Ảnh số hai', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', '10460317_624346931001788_986873438527726986_n.jpg', '0', 6, '', '2018-05-03', '2019-10-05', 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số hai', '', 'anh-so-hai', '', 1, ''),
(64, 'ảnh số một', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng, bạch đàn hương…', '', '170-hai-san-3.jpg', '0', 5, '', '2018-05-03', '2019-10-05', 1, NULL, NULL, NULL, NULL, NULL, 'ảnh số một', '', 'anh-so-mot', '', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Thư viện ảnh 1', '<p>M&ocirc; tả Danh mục dịch vụ 1</p>\r\n', '', 0, 0, '2019-10-05', NULL, 1, '22.jpg', NULL, NULL, NULL, NULL, NULL, 'Thư viện ảnh 1', '', 'thu-vien-anh-1', '', 1),
(4, 'Thư viện ảnh 2', '', '', 0, 0, '2019-10-05', NULL, 1, '3.jpg', NULL, NULL, NULL, NULL, NULL, 'Thư viện ảnh 2', '', 'thu-vien-anh-2', '', 1),
(5, 'Thư viện ảnh 3', '', '', 0, 0, '2019-10-05', NULL, 1, '2.jpg', NULL, NULL, NULL, NULL, NULL, 'Thư viện ảnh 3', '', 'thu-vien-anh-3', '', 1),
(6, 'Thư viện ảnh 4', '', '', 0, 0, '2019-10-05', NULL, 1, '1.jpg', NULL, NULL, NULL, NULL, NULL, 'Thư viện ảnh 4', '', 'thu-vien-anh-4', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Thư viện ảnh 1', '<p>M&ocirc; tả Danh mục dịch vụ 1</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thư viện ảnh 1', '', 'thu-vien-anh-1', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(7, 'Thư viện ảnh 2', '', NULL, 1, '', '', '', '', '', 'Thư viện ảnh 2', '', 'thu-vien-anh-2', '', NULL, 'vn', 4),
(8, 'category service 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', '1', 1, '', '', '', '', '', 'Danh mục dịch vụ 2', '', 'category-service-2', '', NULL, 'en', 4),
(9, 'Thư viện ảnh 3', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thư viện ảnh 3', '', 'thu-vien-anh-3', '', NULL, 'vn', 5),
(10, 'english version Massage Trị Liệu', 'english version ', 'english version ', 1, NULL, NULL, NULL, NULL, NULL, 'Massage Trị Liệu', '', 'en-massage-tri-lieu', '', NULL, 'en', 5),
(11, 'Thư viện ảnh 4', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thư viện ảnh 4', '', 'thu-vien-anh-4', '', NULL, 'vn', 6),
(12, 'english version Thư viện ảnh 4', 'english version ', 'english version ', 1, NULL, NULL, NULL, NULL, NULL, 'Thư viện ảnh 4', '', 'en-thu-vien-anh-4', '', NULL, 'en', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag`
--

CREATE TABLE `servicetag` (
  `servicetag_id` int(11) NOT NULL,
  `servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sort_order` int(11) NOT NULL,
  `servicetag_created_date` datetime NOT NULL,
  `servicetag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `servicetag_img` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag`
--

INSERT INTO `servicetag` (`servicetag_id`, `servicetag_name`, `servicetag_des`, `servicetag_content`, `servicetag_sort_order`, `servicetag_created_date`, `servicetag_update_date`, `state`, `servicetag_img`, `servicetag_sub_info1`, `servicetag_sub_info2`, `servicttag_sub_info3`, `servicetag_sub_info4`, `servicetag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(4, 'hot', '', '', 0, '2017-12-13 15:12:00', '2017-12-13 15:12:00', 1, '', '', '', '', '', '', 'hot', '', 'hot', '', 1),
(5, 'sale', '', '', 0, '2017-12-13 15:12:12', '2017-12-13 15:12:12', 1, '', '', '', '', '', '', 'sale', '', 'sale', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag_languages`
--

CREATE TABLE `servicetag_languages` (
  `id` int(11) NOT NULL,
  `servicetag_id` int(11) NOT NULL,
  `languages_code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag_languages`
--

INSERT INTO `servicetag_languages` (`id`, `servicetag_id`, `languages_code`, `lang_servicetag_name`, `lang_servicetag_des`, `lang_servicetag_content`, `lang_servicetag_sub_info1`, `lang_servicetag_sub_info2`, `lang_servicetag_sub_info3`, `lang_servicetag_sub_info4`, `lang_servicetag_sub_info5`, `title_seo`, `des_seo`, `keyword`, `friendly_url`, `state`) VALUES
(4, 4, 'vn', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(5, 4, 'en', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(6, 5, 'vn', 'sale', '<p>1</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1),
(7, 5, 'en', 'sale', '<p>2</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(69, 'vn', 'Ảnh số tám', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Automotive Aftermarket Business Division is responsible for our replacement parts business worldwide and delivers innovative repair solutions in original-equipment quality. With our four brands LuK, INA, FAG, and Ruville, we offer clutch and release systems, engine and transmission applications, as well as chassis applications. All components are optimally tuned to work together and allow for fast and professional replacement.</p>\r\n\r\n<p><img alt=\"\" height=\"563\" src=\"/image/images/Ubuntu_wall_4_by_RPMan_Art.png\" style=\"float:left\" width=\"900\" /></p>\r\n\r\n<p>What&rsquo;s more, our REPXPERT brand focuses on comprehensive services for garages, such as conducting practical-oriented training courses, providing support for repair with our hotline, our online garage portal and developing special tools</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số tám', '', 'anh-so-tam', '', NULL, 57),
(70, 'en', 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-roal-city', 'Thi công rèm', NULL, 57),
(71, 'vn', 'Ảnh số bảy', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số bảy', '', 'anh-so-bay', '', NULL, 58),
(72, 'en', 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-vimcom-ba-trieu', 'Thi công rèm', NULL, 58),
(73, 'vn', 'Ảnh số sáu', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', NULL, 1, '', '', '', '', '', 'Ảnh số sáu', '', 'anh-so-sau', '', NULL, 59),
(74, 'en', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khu-do-thi-ecopark', 'Thi công rèm', NULL, 59),
(75, 'vn', 'Ảnh số năm', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số năm', '', 'anh-so-nam', '', NULL, 60),
(76, 'en', 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khach-san-thang-loi', 'Thi công rèm', NULL, 60),
(77, 'vn', 'Ảnh số bốn', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', NULL, 1, '', '', '', '', '', 'Ảnh số bốn', '', 'anh-so-bon', '', NULL, 61),
(78, 'en', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-keangnam', 'Thi công rèm', NULL, 61),
(79, 'vn', 'Ảnh số ba', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số ba', '', 'anh-so-ba', '', NULL, 62),
(80, 'en', 'english version Điều trị nám và tàn nhang', 'english version Điều trị nám tàn nhang chuyên sâu với mặt nạ đánh thức giác quan và da chai sạn, giúp làm sạch chuyển hóa trao đổi chất tốt, hấp thụ nhanh sản phẩm và đưa dưỡng chất vào sâu tận trong da, ức chế sự hội tụ melanin dưới da, đem lại cho da một làn da trắng sáng.', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Điều trị nám và tàn nhang', '', 'en-dieu-tri-nam-va-tan-nhang', '', NULL, 62),
(81, 'vn', 'Ảnh số hai', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Ảnh số hai', '', 'anh-so-hai', '', NULL, 63),
(82, 'en', 'english version Massage với tinh dầu', 'english version Massage với tinh dầu là dùng tinh dầu nguyên chất để massage tạo cảm giác thư giãn.', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage với tinh dầu', '', 'en-massage-voi-tinh-dau', '', NULL, 63),
(83, 'vn', 'ảnh số một', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng, bạch đàn hương…', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'ảnh số một', '', 'anh-so-mot', '', NULL, 64),
(84, 'en', 'english version Massage với thảo dược', 'english version Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng, bạch đàn hương…', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage với thảo dược', '', 'en-massage-voi-thao-duoc', '', NULL, 64);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `time` date NOT NULL,
  `ask` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_identify` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_token` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`, `time`, `ask`, `remember_me_identify`, `remember_me_token`) VALUES
(10, 'hung', 'hung71483@gmail.com', NULL, NULL, '$2y$10$K1pWsDER5UHre0zaC5IYyOZFnYSXYA34OO7M7Yu3wG/LzFaiXaN6O', NULL, 1, '0000-00-00', '$2y$10$agH2TActbd84Z7FltVwgYuuls12k7kwo4nIKTwYTF9NwaoD/B6Z8a', 'Ub9dhdrbOub9AnPESARe', 'zcZMIcNMkrAeVbLqbPIueU4x0JS3Q5'),
(11, 'Việt Hưng', 'viethung95cute@gmail.com', NULL, NULL, '$2y$10$H/oRwht13lj1/tnj.VEIVO58qvIvEIjfTDt4HByWikd/e15e0CD2G', NULL, 1, '0000-00-00', '$2y$10$nEdTTn2WO1lwvkii8gfgpuwf9TRz72.ypUNmDUUGlVJvuR2ZC.idy', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `content`, `image`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GwJTntEwBR4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product1.jpg'),
(2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GwJTntEwBR4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product2.jpg'),
(3, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GwJTntEwBR4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product3.jpg'),
(4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GwJTntEwBR4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `cho_dem`
--
ALTER TABLE `cho_dem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `he_thong`
--
ALTER TABLE `he_thong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `newstag`
--
ALTER TABLE `newstag`
  ADD PRIMARY KEY (`newstag_id`);

--
-- Chỉ mục cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `producttag`
--
ALTER TABLE `producttag`
  ADD PRIMARY KEY (`producttag_id`);

--
-- Chỉ mục cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  ADD PRIMARY KEY (`servicetag_id`);

--
-- Chỉ mục cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `cho_dem`
--
ALTER TABLE `cho_dem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `he_thong`
--
ALTER TABLE `he_thong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `map`
--
ALTER TABLE `map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newstag`
--
ALTER TABLE `newstag`
  MODIFY `newstag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `producttag`
--
ALTER TABLE `producttag`
  MODIFY `producttag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  MODIFY `servicetag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
