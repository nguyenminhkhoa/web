-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th3 30, 2019 lúc 03:41 PM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `name`) VALUES
(1, 'admin', 'b4b892e5418149867c8d0b3592b813cd', 'nguyễn thành hậu'),
(2, 'phongphong', 'fcea920f7412b5da7be0cf42b8c93759', 'phong lu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

DROP TABLE IF EXISTS `catalog`;
CREATE TABLE IF NOT EXISTS `catalog` (
  `id_catalog` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id_catalog`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id_catalog`, `name`, `parent_id`) VALUES
(1, 'DELL', 0),
(2, 'HP', 0),
(3, 'MACBOOK\r\n', 0),
(4, 'ASUS', 0),
(5, 'ACER', 0),
(6, 'LENOVO', 0),
(7, 'XIAOMI', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaction` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(4) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id_order`, `id_transaction`, `id_product`, `qty`, `amount`, `data`, `status`) VALUES
(1, 1, 28, 1, '180000.0000', '', 0),
(2, 1, 20, 1, '190000.0000', '', 0),
(3, 1, 14, 1, '410000.0000', '', 0),
(4, 2, 26, 1, '270000.0000', '', 0),
(5, 2, 22, 3, '210000.0000', '', 0),
(6, 3, 28, 1, '180000.0000', '', 0),
(7, 3, 26, 1, '270000.0000', '', 0),
(8, 4, 28, 1, '180000.0000', '', 0),
(9, 4, 11, 1, '314000.0000', '', 0),
(10, 5, 27, 1, '300000.0000', '', 0),
(11, 6, 28, 1, '180000.0000', '', 0),
(12, 7, 23, 1, '85000.0000', '', 0),
(13, 7, 26, 1, '270000.0000', '', 0),
(14, 8, 27, 1, '300000.0000', '', 0),
(15, 9, 21, 1, '90000.0000', '', 0),
(16, 10, 20, 1, '190000.0000', '', 0),
(17, 10, 19, 1, '320000.0000', '', 0),
(18, 11, 28, 1, '180000.0000', '', 0),
(19, 12, 27, 1, '300000.0000', '', 0),
(20, 13, 27, 1, '300000.0000', '', 0),
(21, 14, 28, 1, '180000.0000', '', 0),
(22, 15, 28, 1, '180000.0000', '', 0),
(23, 16, 28, 1, '180000.0000', '', 0),
(24, 17, 27, 1, '300000.0000', '', 0),
(25, 18, 28, 1, '180000.0000', '', 0),
(26, 19, 28, 1, '180000.0000', '', 0),
(27, 20, 27, 1, '300000.0000', '', 0),
(28, 21, 27, 1, '300000.0000', '', 0),
(29, 22, 28, 1, '180000.0000', '', 0),
(30, 23, 28, 1, '180000.0000', '', 0),
(31, 24, 28, 1, '180000.0000', '', 0),
(32, 25, 28, 1, '180000.0000', '', 0),
(33, 26, 28, 1, '180000.0000', '', 0),
(34, 27, 28, 1, '180000.0000', '', 0),
(35, 28, 28, 1, '180000.0000', '', 0),
(36, 29, 27, 1, '300000.0000', '', 0),
(37, 30, 28, 1, '180000.0000', '', 0),
(38, 31, 28, 1, '180000.0000', '', 0),
(39, 32, 28, 1, '180000.0000', '', 0),
(40, 33, 27, 1, '300000.0000', '', 0),
(41, 34, 28, 1, '180000.0000', '', 0),
(42, 35, 28, 2, '360000.0000', '', 0),
(43, 35, 23, 1, '85000.0000', '', 0),
(44, 36, 28, 1, '180000.0000', '', 0),
(45, 37, 28, 1, '180000.0000', '', 0),
(46, 38, 28, 1, '180000.0000', '', 0),
(47, 39, 28, 1, '180000.0000', '', 0),
(48, 40, 28, 1, '180000.0000', '', 0),
(49, 41, 28, 1, '180000.0000', '', 0),
(50, 42, 26, 1, '270000.0000', '', 0),
(51, 43, 28, 1, '180000.0000', '', 0),
(52, 44, 26, 1, '270000.0000', '', 0),
(53, 45, 26, 12, '3240000.0000', '', 0),
(54, 44, 28, 2, '360000.0000', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `id_catalog` int(11) NOT NULL,
  `name_catalog` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image_link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `view` int(11) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `warranty` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(255) NOT NULL,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL,
  `rate_count` int(255) NOT NULL,
  `gifts` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_product`, `id_catalog`, `name_catalog`, `name`, `price`, `content`, `discount`, `image_link`, `image_list`, `created`, `view`, `meta_key`, `site_title`, `warranty`, `total`, `buyed`, `rate_total`, `rate_count`, `gifts`, `meta_desc`) VALUES
(1, 1, 'DELL', 'Laptop Dell Inspiron 14 3476', '30000000.0000', '<p>- Đồ họa: Intel UHD Graphics 620 </br>\r\n- Lưu trữ: 1TB HDD 5400RPM </br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit </br>\r\n- Pin: 4 cell 40 Wh Pin rời , khối lượng: 2.2 kg\"></p>\r\n', 10000, 'file_1545381179.jpg', '[\"dell-list-1.png\",\"dell-list-2.jpg\",\"dell-list-3.jpg\"]', '2016-07-09', 10, '', '', '2 thang', 0, 0, 0, 0, '', ''),
(2, 1, 'DELL', 'Laptop Dell Vostro 15-3578', '14390000.0000', '<p>- RAM: 1 x 4GB DDR4 2400MHz </br>\r\n- Đồ họa: Intel UHD Graphics 620 </br>\r\n- Lưu trữ: 1TB HDD 5400RPM </br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit </br>\r\n- Pin: 4 cell 40 Wh Pin rời , khối lượng: 2.2 kg</p>\r\n', 100000, 'file_1545380732.jpg', '[\"dell-list-4.jpg\",\"dell-list-5.jpg\",\"dell-list-6.jpg\"]', '2016-07-09', 20, '', '', '2 tuan', 0, 0, 0, 0, '', ''),
(3, 1, 'DELL', 'Laptop Dell Inspiron 15 5570', '21990000.0000', '<p>- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) </br>\r\n- Màn hình: 15.6\" ( 1920 x 1080 ) , không cảm ứng </br>\r\n- RAM: 1 x 8GB DDR4 2400MHz </br>\r\n- Đồ họa: Intel UHD Graphics 620 / AMD Radeon 530 2GB GDDR5 </br>\r\n- Lưu trữ: 2TB HDD 5400RPM </br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit</br> \r\n- Pin: 3 cell 42 Wh Pin liền , khối lượng: 2.2 kg</p>\r\n', 100000, 'file_1545380745.jpg', '[\"dell-list-7.jpg\",\"dell-list-8.jpg\",\"dell-list-9.jpg\"]', '2016-07-09', 30, '', '', '1 tuan', 0, 0, 0, 0, '', ''),
(4, 1, 'DELL', 'Laptop Dell Inspiron T7373-T7373A', '30290000.0000', '<p>- CPU: Intel Core i7-8550U ( 1.8 GHz - 4.0 GHz / 8MB / 4 nhân, 8 luồng ) </br>\r\n- Màn hình: 13.3\" IPS ( 1920 x 1080 ) , cảm ứng </br>\r\n- RAM: 1 x 8GB Onboard DDR4 2400MHz </br>\r\n- Đồ họa: Intel UHD Graphics 620 </br>\r\n- Lưu trữ: 256GB SSD M.2 SATA </br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit </br>\r\n- Pin: 3 cell 38 Wh Pin liền , khối lượng: 1.6 kg</p>\r\n', 100000, 'file_1545380756.jpg', '[\"dell-list-10.jpg\",\"dell-list-11.jpg\",\"dell-list-12.png\"]', '2016-07-09', 22, '', '', '1 tuan', 0, 0, 0, 0, '', ''),
(5, 1, 'DELL', 'Laptop Dell Inspiron 5482-C4TI7007W', '26000000.0000', '<p>- CPU: Intel Core i7-8565U ( 1.8 GHz - 4.6 GHz / 8MB / 4 nhân, 8 luồng ) </br>\r\n- Màn hình: 14\" IPS ( 1920 x 1080 ) , cảm ứng </br>\r\n- RAM: 1 x 8GB DDR4 2666MHz </br>\r\n- Đồ họa: Intel UHD Graphics 620 </br>\r\n- Lưu trữ: 256GB SSD M.2 SATA </br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit </br>\r\n- Pin: 3 cell 42 Wh Pin liền , khối lượng: 1.9 kg</p>\r\n', 100000, 'file_1545380767.jpg', '[\"dell-list-4.jpg\",\"dell-list-5.jpg\",\"dell-list-6.jpg\"]', '2016-07-09', 33, '', '', '2 tuần', 0, 0, 0, 0, '', ''),
(6, 1, 'DELL', 'Laptop Dell Inspiron 13 5379-JYN0N2', '19990000.0000', '<p>- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) </br>\r\n- Màn hình: 13.3\" IPS ( 1920 x 1080 ) , không cảm ứng </br>\r\n- RAM: 1 x 4GB DDR4 2400MHz </br>\r\n- Đồ họa: Intel UHD Graphics 620 </br>\r\n- Lưu trữ: 256GB SSD M.2 SATA </br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit </br>\r\n- Pin: 3 cell 42 Wh Pin liền , khối lượng: 1.6 kg</p>\r\n', 100000, 'file_1545381310.jpg', '[\"dell-list-1.png\",\"dell-list-2.jpg\",\"dell-list-3.jpg\"]', '2016-07-09', 50, '', '', '1 tuần', 0, 0, 0, 0, '', ''),
(7, 2, 'HP', 'Laptop HP Pavilion 14-ce0024TU', '14590000.0000', '<p>\r\n	<span style=\"color: rgb(29, 33, 41); font-family: Arial; font-size: 14px; line-height: 19.32px;\">T&uacute;i gucci</span></p>\r\n', 100000, 'file_1545381424.jpg', '[]', '2016-07-09', 90, '', '', '1 tuần', 0, 0, 0, 0, '', ''),
(8, 2, 'HP', 'Laptop HP 260 G7', '23790000.0000', '<p>\r\n	<span style=\"color: rgb(29, 33, 41); font-family: Arial; font-size: 14px; line-height: 19.32px;\">clutch&nbsp;</span></p>\r\n', 100000, 'file_1545381435.jpg', '[\"13590513_298570180492366_2492956343426419367_n.jpg\",\"13592408_298570147159036_8685869898076639971_n.jpg\",\"13645307_298570100492374_1223246558300991758_n.jpg\"]', '2016-07-09', 60, 'tui,  xach, nu', 'Túi xách nữ | Clutch Cầm Tay giá rẻ tại đà nẵng', '2 tuần', 0, 0, 0, 0, '', ''),
(9, 2, 'HP', 'Laptop HP 250 G6', '9790000.0000', '<p>\r\n	<span style=\"color: rgb(29, 33, 41); font-family: Arial; font-size: 14px; line-height: 19.32px;\">Chanel katun F1 full box</span></p>\r\n', 100000, 'file_1545381447.jpg', '[\"13567209_298174860531898_7615003385079743382_n.jpg\",\"13590432_298174873865230_8528988660007920678_n.jpg\",\"13619795_298174837198567_6246125812867267035_n.jpg\"]', '2016-07-09', 70, '', '', '1 tuần', 0, 0, 0, 0, '', ''),
(10, 2, 'HP', 'Laptop HP ProBook 440 G5', '12390000.0000', '<p>\r\n	<span style=\"color: rgb(29, 33, 41); font-family: Arial; font-size: 14px; line-height: 19.32px;\">Phấn mắt Sivanna Th&aacute;i Lan</span></p>\r\n', 10000, 'file_1545381459.jpg', '[\"13620924_290802884643784_2615715308299908547_n.jpg\",\"13627215_290802924643780_7695910339187221835_n.jpg\",\"13645166_290802944643778_1461184177608036818_n.jpg\"]', '2016-07-09', 80, '', '', '2 tuần', 0, 0, 0, 0, '', ''),
(11, 3, 'MACBOOK', 'Laptop MacBook Air MQD32HN/A', '23890000.0000', '<p>\r\n	<span style=\"color: rgb(29, 33, 41); font-family: Arial; font-size: 14px; line-height: 19.32px;\">Sữa tắm Aloe Ha</span></p>\r\n', 100000, 'file_1545381472.jpg', '[]', '2016-07-09', 55, '', '', '1 tuần', 0, 0, 0, 0, '', ''),
(12, 3, 'MACBOOK', 'Laptop MacBook 12', '38300000.0000', '<p>\r\n	Magic Baby</p>\r\n', 5000, 'file_1545381482.jpg', '[]', '2016-07-09', 23, '', '', '1 tuần', 0, 0, 0, 0, '', ''),
(13, 3, 'MACBOOK', 'Laptop MacBook 13.3', '31700000.0000', '<p>\r\n	<span style=\"color: rgb(29, 33, 41); font-family: Arial; font-size: 14px; line-height: 19.32px;\">READY 2 WHITE MILKY WHITE</span></p>\r\n', 100000, 'file_1545381472.jpg', '[]', '2016-07-09', 92, '', '', '1 tháng', 0, 0, 0, 0, '', ''),
(14, 4, 'ASUS', 'Laptop Asus X507UA-EJ483T', '10000000.0000', '<p>\r\n	<span style=\"color: rgb(29, 33, 41); font-family: Arial; font-size: 14px; line-height: 18px;\">Sữa tắm Shena</span></p>\r\n', 100000, 'file_1545381323.jpg', '[]', '2016-07-09', 66, '', '', '1 tuần', 0, 0, 0, 0, '', ''),
(15, 4, 'ASUS', 'Laptop Asus A510UN-EJ463T', '15590000.0000', '<p>\r\n	<span style=\"color: rgb(29, 33, 41); font-family: Arial; font-size: 14px; line-height: 18px;\">Balo Chiếc L&aacute;</span></p>\r\n', 10000, 'file_1545381342.jpg', '[\"13599889_287169968340409_1943356769194407325_n.jpg\"]', '2016-07-09', 55, '', '', '2 tuần', 0, 0, 0, 0, '', ''),
(16, 4, 'ASUS', 'Laptop Asus TP410UA-EC227T', '12990000.0000', '<h1 class=\"product_title entry-title\" itemprop=\"name\" style=\"font-family: Arial; box-sizing: border-box; margin: 0px 0px 10px; font-size: 20px; font-weight: 500; line-height: 1.1; clear: none; padding: 0px; background-color: rgb(252, 252, 252);\">\r\n	K&iacute;nh Porsche Design 8632</h1>\r\n', 20000, 'file_1545381352.jpg', '[]', '2016-07-09', 44, '', '', '2 tháng', 0, 0, 0, 0, '', ''),
(17, 4, 'ASUS', 'Laptop Asus X407UB-BV147T', '16090000.0000', '<p>\r\n	channal t&uacute;i hồng</p>\r\n', 10000, 'file_1545381361.jpg', '[\"13626504_301084130240971_5216208883844769367_n.jpg\",\"13631453_301084183574299_5910913077681429500_n.jpg\",\"13686504_301084150240969_5957793359577683372_n.jpg\"]', '2016-07-13', 0, 'tui, xach, nam, nu, da, nang', 'Túi xách nữ, Chanel Da Hồng Nhạt , tại đà nẵng,', '2 tuần', 0, 0, 0, 0, '', ''),
(18, 4, 'ASUS', 'Laptop Asus S530UN-BQ255T', '19090000.0000', '<p>\r\n	<span style=\"color: rgb(29, 33, 41); font-family: Arial; font-size: 14px; line-height: 18px;\">Balo Chiếc L&aacute;</span></p>\r\n', 10000, 'file_1545381380.jpg', '[\"13599889_287169968340409_1943356769194407325_n.jpg\"]', '2016-07-09', 55, '', '', '2 tuần', 0, 0, 0, 0, '', ''),
(19, 4, 'ASUS', 'Laptop Asus UX331UAL-EG020TS', '27490000.0000', '<h1 class=\"product_title entry-title\" itemprop=\"name\" style=\"font-family: Arial; box-sizing: border-box; margin: 0px 0px 10px; font-size: 20px; font-weight: 500; line-height: 1.1; clear: none; padding: 0px; background-color: rgb(252, 252, 252);\">\r\n	K&iacute;nh Porsche Design 8632</h1>\r\n', 20000, 'file_1545381394.jpg', '[]', '2016-07-09', 44, '', '', '2 tháng', 0, 0, 0, 0, '', ''),
(20, 4, 'ASUS', 'Laptop Asus UX391UA-EG030T', '39990000.0000', '<p>\r\n	channal t&uacute;i hồng</p>\r\n', 10000, 'file_1545381410.jpg', '[\"13626504_301084130240971_5216208883844769367_n.jpg\",\"13631453_301084183574299_5910913077681429500_n.jpg\",\"13686504_301084150240969_5957793359577683372_n.jpg\"]', '2016-07-13', 0, 'tui, xach, nam, nu, da, nang', 'Túi xách nữ, Chanel Da Hồng Nhạt , tại đà nẵng,', '2 tuần', 0, 0, 0, 0, '', ''),
(21, 5, 'ACER', 'Laptop Acer Swift 3 SF315-51G-535X', '19490000.0000', '<p>\r\n	channal t&uacute;i hồng</p>\r\n', 10000, 'file_1545381508.jpg', '[\"13626504_301084130240971_5216208883844769367_n.jpg\",\"13631453_301084183574299_5910913077681429500_n.jpg\",\"13686504_301084150240969_5957793359577683372_n.jpg\"]', '2016-07-13', 0, 'tui, xach, nam, nu, da, nang', 'Túi xách nữ, Chanel Da Hồng Nhạt , tại đà nẵng,', '2 tuần', 0, 0, 0, 0, '', ''),
(22, 6, 'LENOVO', 'Laptop Lenovo Ideapad Y520', '26000000.0000', '<p>\r\n	channal t&uacute;i hồng</p>\r\n', 10000, 'file_1545381520.jpg', '[\"13626504_301084130240971_5216208883844769367_n.jpg\",\"13631453_301084183574299_5910913077681429500_n.jpg\",\"13686504_301084150240969_5957793359577683372_n.jpg\"]', '2016-07-13', 0, 'tui, xach, nam, nu, da, nang', 'Túi xách nữ, Chanel Da Hồng Nhạt , tại đà nẵng,', '2 tuần', 0, 0, 0, 0, '', ''),
(23, 6, 'LENOVO', 'Laptop Lenovo Yoga 520', '14350000.0000', '<p>\r\n	channal t&uacute;i hồng</p>\r\n', 10000, 'file_1545381532.jpg', '[\"13626504_301084130240971_5216208883844769367_n.jpg\",\"13631453_301084183574299_5910913077681429500_n.jpg\",\"13686504_301084150240969_5957793359577683372_n.jpg\"]', '2016-07-13', 0, 'tui, xach, nam, nu, da, nang', 'Túi xách nữ, Chanel Da Hồng Nhạt , tại đà nẵng,', '2 tuần', 0, 0, 0, 0, '', ''),
(24, 7, 'XIAOMI', 'Laptop Xiaomi Mi Air 13.3', '25000000.0000', '<p>- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) </br>\r\n- Màn hình: 13.3\" ( 1920 x 1080 ) , không cảm ứng </br>\r\n- RAM: 1 x 8GB Onboard DDR4 2400MHz</br> \r\n- Đồ họa: Intel UHD Graphics 620 / NVIDIA GeForce MX150 2GB GDDR5 </br>\r\n- Lưu trữ: 256GB SSD M.2 NVMe </br>\r\n- Hệ điều hành: Windows 10 Home SL 64-bit</br> \r\n- Pin: 41 Wh Pin liền , khối lượng: 1.3 kg</p>\r\n', 100000, 'file_1545381544.jpg', '[\"13626504_301084130240971_5216208883844769367_n.jpg\",\"13631453_301084183574299_5910913077681429500_n.jpg\",\"13686504_301084150240969_5957793359577683372_n.jpg\"]', '2016-07-13', 0, 'tui, xach, nam, nu, da, nang', 'Túi xách nữ, Chanel Da Hồng Nhạt , tại đà nẵng,', '2 tuần', 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `id_transaction` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `payment` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_info` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `security` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id_transaction`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id_transaction`, `type`, `status`, `id_user`, `name`, `email`, `phone`, `amount`, `payment`, `payment_info`, `message`, `security`, `created`) VALUES
(1, 0, 0, 1, 'Nguyễn Thành Hậu', 'sohuyn1996@gmail.com', '01674717919', 780000, 'offline', '', '                       gui hang cho toi vao ngay mai     ', '', '2016-07-19'),
(2, 0, 0, 0, 'nguyen thanh hau', 'sohuyn1996@gmail.com', '01674717919', 480000, 'offline', '', 'thanh toan khi nhan hang                            ', '', '2016-07-21'),
(3, 0, 1, 0, 'nguyen thanh hau', 'sohuyn1996@gmail.com', '01674717919', 450000, 'baokim', '', 'abc                            ', '', '2016-07-21'),
(4, 0, 0, 0, 'nguyen thanh hau', 'sohuyn1996@gmail.com', '01674717919', 494000, 'baokim', '', 'abc                            ', '', '2016-07-21'),
(5, 0, 1, 0, 'Nguyễn Thành Hậu1', 'sohuyn1996@gmail.com', '01674717919', 300000, 'baokim', '', 'aabc                            ', '', '2016-07-21'),
(7, 0, 1, 0, 'nguyen thanh hau', 'sohuyn1996@gmail.com', '01674717919', 355000, 'baokim', '', '          asdad                  ', '', '2016-07-21'),
(8, 0, 0, 1, 'Nguyễn Thành Hậu', 'sohuyn1996@gmail.com', '01674717919', 300000, 'baokim', '', '            sad                ', '', '2016-07-21'),
(9, 0, 0, 1, 'Nguyễn Thành Hậu', 'sohuyn1996@gmail.com', '01674717919', 90000, 'baokim', '', '          sds                  ', '', '2016-07-21'),
(10, 0, 1, 0, 'hoang van tuyen', 'meo@gmail.com', '01674717919', 510000, 'baokim', '', 'sadsadasd                            ', '', '2016-07-30'),
(11, 0, 0, 0, 'hoang van tuyen', 'sohuyn1996@gmail.com', '098097', 180000, 'baokim', '', 'ssadasd                            ', '', '2016-07-30'),
(12, 0, 2, 0, 'nguyen thanh hau', 'sohuyns1996@gmail.com', '1674717919', 300000, 'baokim', '', '             asdsad               ', '', '2016-07-30'),
(13, 0, 0, 0, 'hoang van tuyen', 'sohuyn1996@gmail.com', 'sad', 300000, 'baokim', '', '        sadsad                    ', '', '2016-07-30'),
(14, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '   sadsadsad                         ', '', '2016-07-30'),
(16, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '                    asdsad        ', '', '2016-07-30'),
(26, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '           sadsad                 ', '', '2016-07-30'),
(27, 0, 1, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '     asdasd                       ', '', '2016-07-30'),
(28, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '         sadsad                   ', '', '2016-07-30'),
(29, 0, 1, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 300000, 'baokim', '', '              adsdsa              ', '', '2016-07-30'),
(30, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '                    sadsad        ', '', '2016-07-30'),
(31, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '               sadsad             ', '', '2016-07-30'),
(32, 0, 1, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '               asdsad             ', '', '2016-07-30'),
(33, 0, 2, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 300000, 'baokim', '', '                         sadsad   ', '', '2016-07-30'),
(34, 0, 1, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '               asdsad             ', '', '2016-07-30'),
(35, 0, 1, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 445000, 'baokim', '', '        sadsadsad                    ', '', '2016-07-30'),
(36, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '                sadasd            ', '', '2016-07-30'),
(40, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '                        sadsad    ', '', '2016-07-30'),
(41, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '     sadsad                       ', '', '2016-07-30'),
(42, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 270000, 'baokim', '', '             sadsad              ', '', '2016-07-30'),
(43, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 180000, 'baokim', '', '                 sadsad           ', '', '2016-07-30'),
(44, 0, 0, 9, 'hoang van tuyen', 'tuyen@gmail.com', '01674717919', 360000, 'baokim', '', '          ádsad                  ', '', '2016-08-08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `adress` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `password`, `phone`, `adress`, `created`) VALUES
(1, 'Nguyễn Thành Hậu', 'sohuyn1996@gmail.com', 'b4b892e5418149867c8d0b3592b813cd', '01674717919', '78 vo nhu hung', 0),
(9, 'hoang van tuyen', 'tuyen@gmail.com', 'b4b892e5418149867c8d0b3592b813cd', '01674717919', '69 vo nhu hung', 0),
(10, 'nguyen thanh phuong', 'phuong@gmail.com', 'b4b892e5418149867c8d0b3592b813cd', '01674717919', 'lao bao', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
