-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 11:21 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameloft`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id_acc` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_acc`, `name`, `email`, `password`, `phone`, `address`, `image`, `date_create`, `level`) VALUES
(1, 'Administator', 'admin@gameloft.com', '202cb962ac59075b964b07152d234b70', '09090909099', 'KTX P412', '1646760063.gif', '2021-09-30 08:09:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date_upload` datetime NOT NULL,
  `author` int(11) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `view` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `content`, `date_create`) VALUES
(1, '390 Hoàng Văn Thụ, Phường 4, T.P Hồ Chí Minh', '2019-07-23 11:36:34'),
(2, 'Hotline: 19008198', '2019-07-23 11:37:02'),
(5, ' Email: lttc@edu.vn', '2019-07-23 11:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `detail_invoice`
--

CREATE TABLE `detail_invoice` (
  `id_detail_invoice` int(11) NOT NULL,
  `code_invoice` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `detail_invoice`
--

INSERT INTO `detail_invoice` (`id_detail_invoice`, `code_invoice`, `sku_product`, `qty`) VALUES
(3, 'INV01', 'S13', 1),
(4, 'INV01', 'S01', 2),
(5, 'INV01', 'S11', 1),
(6, 'INV01', 'S14', 1),
(14, 'INV02', 'S14', 1),
(17, 'INV03', 'S14', 3),
(18, 'INV03', 'S13', 1),
(19, 'INV04', 'S12', 1),
(20, 'INV04', 'S10', 1),
(21, 'INV05', 'S13', 1),
(22, 'INV06', 'S14', 1),
(23, 'INV07', 'S13', 1),
(27, 'INV08', 'S14', 1),
(29, 'INV09', 'S14', 1),
(30, 'INV10', 'S14', 1),
(31, 'INV11', 'S14', 2),
(34, 'INV12', 'S14', 1),
(35, 'INV12', 'S13', 2),
(36, 'INV12', 'S07', 1),
(37, 'INV13', 'S13', 1),
(38, 'INV14', 'S12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `id_acc` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_history`, `text`, `time`, `id_acc`, `flag`) VALUES
(435, ' đã xóa loại sản phẩm <b>gameGIRL</b>', '2022-03-09 00:49:33', 1, 0),
(436, ' đã xóa loại sản phẩm <b>gameBOY</b>', '2022-03-09 00:49:37', 1, 0),
(437, ' đã xóa loại sản phẩm <b>game sơ sinh</b>', '2022-03-09 00:49:39', 1, 0),
(438, ' đã tạo loại sản phẩm <b>Hành động</b>', '2022-03-09 00:49:43', 1, 0),
(439, ' đã tạo loại sản phẩm <b>Phiêu lưu</b>', '2022-03-09 00:49:53', 1, 0),
(440, ' đã tạo loại sản phẩm <b>Nhập vai</b>', '2022-03-09 00:49:58', 1, 0),
(441, ' đã tạo loại sản phẩm <b>Mô phỏng</b>', '2022-03-09 00:50:03', 1, 0),
(442, ' đã tạo loại sản phẩm <b>Chiến thuật</b>', '2022-03-09 00:50:07', 1, 0),
(443, ' đã tạo loại sản phẩm <b>18+</b>', '2022-03-09 00:50:14', 1, 0),
(444, ' đã đăng sản phẩm <b>Genshin Impact</b>', '2022-03-09 00:56:42', 1, 0),
(445, ' đã duyệt sản phẩm <b>Genshin Impact</b>', '2022-03-09 00:56:45', 1, 0),
(446, ' đã xóa slider', '2022-03-09 00:58:04', 1, 0),
(447, ' đã xóa slider', '2022-03-09 00:58:08', 1, 0),
(448, ' đã tạo slider', '2022-03-09 00:58:16', 1, 0),
(449, ' đã tạo slider', '2022-03-09 00:58:25', 1, 0),
(450, ' đã tạo slider', '2022-03-09 00:58:30', 1, 0),
(451, ' đã xóa loại bài viết <b>Liên hệ</b>', '2022-03-09 16:29:40', 1, 0),
(452, ' đã xóa loại bài viết <b>Giới thiệu</b>', '2022-03-09 16:29:48', 1, 0),
(453, ' đã chỉnh sửa loại bài viết <b>Chia sẽ kinh nghiệm</b> thành <b>Chia sẻ kinh nghiệm</b>', '2022-03-09 16:30:51', 1, 0),
(454, ' đã chỉnh sửa slider', '2022-03-09 17:14:18', 1, 0),
(455, ' đã chỉnh sửa slider', '2022-03-09 17:14:26', 1, 0),
(456, ' đã chỉnh sửa slider', '2022-03-09 17:14:35', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `name_image` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id_image`, `sku_product`, `name_image`) VALUES
(6, 'S09', 'm_1563443021.jpg'),
(7, 'S09', 'm_1563443028.jpg'),
(18, 'S08', 'm_1563443769.jpg'),
(19, 'S08', 'm_1563443778.jpg'),
(20, 'S07', 'm_1563443822.jpg'),
(21, 'S07', 'm_1563443838.jpg'),
(22, 'S06', 'm_1563443898.jpg'),
(23, 'S06', 'm_1563443905.jpg'),
(24, 'S03', 'm_1563443977.jpg'),
(25, 'S03', 'm_1563443985.jpg'),
(26, 'S03', 'm_1563444001.jpg'),
(27, 'S01', 'm_1563444068.jpg'),
(28, 'S01', 'm_1563444083.jpg'),
(29, 'S01', 'm_1563444096.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `code_invoice` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_customer` int(11) NOT NULL,
  `info_receive` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `info_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_lg` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_upload` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_lg`, `image`, `link`, `date_upload`) VALUES
(1, '1646759550.jpg', 'trang-chu.html', '2022-03-09 00:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date_upload` datetime NOT NULL,
  `author` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `view` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`sku_product`, `image`, `name_product`, `slug`, `summary`, `content`, `date_upload`, `author`, `qty`, `price`, `highlight`, `view`, `id_type`, `flag`) VALUES
('S01', '1646762202.jpg', 'Genshin Impact', 'Genshin-Impact', 'Game nhập vai thế giới mở', '<p>Lục địa Teyvat rộng lớn, nơi v&ocirc; số sinh vật sinh s&ocirc;i v&agrave; hội tụ.<br />\r\nĐấy l&agrave; thế giới do bảy vị Thần thống trị, cũng l&agrave; nơi bảy loại nguy&ecirc;n tố tụ hội...<br />\r\n<br />\r\nDưới bầu trời xa lạ, c&oacute; người thiếu ni&ecirc;n v&agrave; thiếu nữ đang đứng trong gi&oacute; bụi.<br />\r\nC&aacute;c bạn ch&iacute;nh l&agrave; cặp song sinh đến từ v&ugrave;ng đất xa lạ. Người th&acirc;n của bạn bị vị Thần lạ mặt bắt đi, v&agrave; bạn cũng bị Thần phong ấn ch&igrave;m v&agrave;o giấc ngủ s&acirc;u...<br />\r\nĐến khi tỉnh lại, mọi thứ xung quanh đều đ&atilde; thay đổi ...<br />\r\n<br />\r\nGenshin Impact l&agrave; một game nhập vai phi&ecirc;u lưu thế giới mở mới được ph&aacute;t triển bởi miHoYo. Bạn sẽ kh&aacute;m ph&aacute; một thế giới giả tưởng c&oacute; t&ecirc;n l&agrave; &quot;Lục địa Teyvat&quot; trong tr&ograve; chơi.<br />\r\nTrong thế giới rộng lớn n&agrave;y, bạn c&oacute; thể du h&agrave;nh qua bảy vương quốc, gặp gỡ những người bạn đồng h&agrave;nh với những t&iacute;nh c&aacute;ch v&agrave; năng lực độc đ&aacute;o kh&aacute;c nhau, c&ugrave;ng chiến đấu chống lại kẻ th&ugrave; mạnh v&agrave; bước v&agrave;o con đường t&igrave;m kiếm người th&acirc;n, hoặc bạn c&oacute; thể đi lang thang kh&ocirc;ng mục đ&iacute;ch v&agrave; đắm m&igrave;nh trong một thế giới đầy sức sống. H&atilde;y để sự t&ograve; m&ograve; th&uacute;c đẩy bản th&acirc;n kh&aacute;m ph&aacute; mọi b&iacute; mật trong thế giới n&agrave;y n&agrave;o...<br />\r\nCho đến khi bạn đo&agrave;n tụ với người th&acirc;n v&agrave; chứng kiến sự lắng đọng của mọi thứ ở điểm đến cuối c&ugrave;ng.<br />\r\n<br />\r\n〓Thế giới mở, tự do kh&aacute;m ph&aacute;〓<br />\r\n<br />\r\nGenshin Impact l&agrave; một game nhập vai phi&ecirc;u lưu thế giới mở, chỉ cần bạn sử dụng thể lực hợp l&yacute;, th&igrave; sẽ c&oacute; thể chu du đến mọi v&ugrave;ng n&uacute;i cao biển rộng, kh&aacute;m ph&aacute; những cảnh vật kỳ b&iacute;. H&atilde;y c&ugrave;ng nhau th&aacute;m hiểm xem sẽ c&oacute; những g&igrave; đang đợi bạn ph&iacute;a trước n&agrave;o!<br />\r\n<br />\r\n〓Phản ứng nguy&ecirc;n tố, chiến đấu chiến lược〓<br />\r\n<br />\r\nThế giới trong game được h&igrave;nh th&agrave;nh bởi bảy loại nguy&ecirc;n tố: Phong, L&ocirc;i, Thủy, Hỏa, Băng, Thảo, Nham. Nh&acirc;n vật c&oacute; Vision sẽ c&oacute; thể d&ugrave;ng sức mạnh của nguy&ecirc;n tố để chiến đấu v&agrave; th&aacute;m hiểm. Thủy gặp Hỏa sẽ bốc hơi, Hỏa gặp L&ocirc;i sẽ qu&aacute; tải, L&ocirc;i gặp Thủy sẽ nhiễm điện... Đối mặt với kẻ địch kh&aacute;c nhau, c&oacute; thể d&ugrave;ng kỹ năng kh&aacute;c nhau để k&iacute;ch hoạt nguy&ecirc;n tố khắc chế gi&agrave;nh chiến thắng.<br />\r\n<br />\r\n〓Đồ họa v&agrave; &acirc;m nhạc chất lượng cao〓<br />\r\n<br />\r\nGenshin Impact c&oacute; phong c&aacute;ch nghệ thuật mới mẻ, chuyển động của nh&acirc;n vật được thực hiện th&ocirc;ng qua việc nắm bắt cử động v&agrave; điều chỉnh chi tiết, mang đến hiệu ứng tr&igrave;nh diễn chất lượng cao. Ng&agrave;y đ&ecirc;m thay đổi 24 giờ, thời tiết v&agrave; &acirc;m nhạc cũng thay đổi linh hoạt, d&ugrave; bạn ở đ&acirc;u, bạn cũng sẽ lu&ocirc;n nghe thấy những m&agrave;n tr&igrave;nh diễn đặc trưng của d&agrave;n nhạc giao hưởng h&agrave;ng đầu thế giới như London Philharmonic Orchestra v&agrave; Shanghai Symphony Orchestra.<br />\r\n<br />\r\n〓Tập hợp đồng đội, c&ugrave;ng nhau th&aacute;m hiểm〓<br />\r\n<br />\r\nTrong qu&aacute; tr&igrave;nh th&aacute;m hiểm, c&ograve;n c&oacute; thể kết giao được với những đồng đội c&oacute; khả năng đặc biệt, h&atilde;y thử kết hợp đội h&igrave;nh mạnh nhất, thu thập nguy&ecirc;n liệu cường h&oacute;a nh&acirc;n vật để chinh phục b&iacute; cảnh n&agrave;o. Rất nhiều điều mới mẻ đang chờ bạn kh&aacute;m ph&aacute;, c&ugrave;ng bắt đầu th&ocirc;i n&agrave;o.<br />\r\n<br />\r\nSUPPORT<br />\r\nNếu gặp bất cứ vấn đề n&agrave;o, vui l&ograve;ng phản hồi th&ocirc;ng qua trung t&acirc;m CSKH trong game.<br />\r\nEmail CSKH: Genshin_cs@mihoyo.com<br />\r\nTrang chủ ch&iacute;nh thức: https://genshin.mihoyo.com/<br />\r\nDiễn đ&agrave;n ch&iacute;nh thức: https://forums.mihoyo.com/genshin/<br />\r\nFacebook: https://www.facebook.com/Genshinimpact/<br />\r\nInstagram: https://www.instagram.com/genshinimpact/<br />\r\nTwitter: https://twitter.com/GenshinImpact<br />\r\nYouTube: http://www.youtube.com/c/GenshinImpact<br />\r\nDiscord: https://discord.gg/genshinimpact<br />\r\nReddit: https://www.reddit.com/r/Genshin_Impact/<br />\r\nGenshin Impact khu vực Việt Nam được ph&aacute;t h&agrave;nh độc quyền bởi C&ocirc;ng ty cổ phần dịch vụ S.PAY Việt Nam.</p>\r\n', '2022-03-09 00:56:42', 1, 1000, 1234000, 1, 1, 33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `image`, `link`, `date_create`) VALUES
(8, '1646820875.jpg', '', '2022-03-09 00:58:16'),
(9, '1646820866.jpg', '', '2022-03-09 00:58:25'),
(10, '1646820858.jpg', '', '2022-03-09 00:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `type_blog`
--

CREATE TABLE `type_blog` (
  `id_type` int(11) NOT NULL,
  `typename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_blog`
--

INSERT INTO `type_blog` (`id_type`, `typename`, `slug_type`, `date_create`) VALUES
(1, 'Khuyến mãi', 'Khuyen-mai', '2019-07-12 13:13:23'),
(2, 'Tin tức mới', 'Tin-tuc-moi', '2019-07-12 13:17:04'),
(8, 'Chia sẻ kinh nghiệm', 'Chia-se-kinh-nghiem', '2019-07-12 20:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
--

CREATE TABLE `type_product` (
  `id_type` int(11) NOT NULL,
  `typename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`id_type`, `typename`, `slug_type`, `date_create`) VALUES
(33, 'Hành động', 'Hanh-dong', '2022-03-09 00:49:43'),
(34, 'Phiêu lưu', 'Phieu-luu', '2022-03-09 00:49:53'),
(35, 'Nhập vai', 'Nhap-vai', '2022-03-09 00:49:58'),
(36, 'Mô phỏng', 'Mo-phong', '2022-03-09 00:50:03'),
(37, 'Chiến thuật', 'Chien-thuat', '2022-03-09 00:50:07'),
(38, '18+', '18+', '2022-03-09 00:50:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_acc`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `detail_invoice`
--
ALTER TABLE `detail_invoice`
  ADD PRIMARY KEY (`id_detail_invoice`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`code_invoice`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_lg`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`sku_product`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `type_blog`
--
ALTER TABLE `type_blog`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id_acc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_invoice`
--
ALTER TABLE `detail_invoice`
  MODIFY `id_detail_invoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_lg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `type_blog`
--
ALTER TABLE `type_blog`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
