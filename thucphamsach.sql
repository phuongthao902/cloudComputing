-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 14, 2023 at 02:37 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thucphamsach`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Lê Phương Thảo', 'admin@gmail.com', '$2y$10$7VLRCZIgkY4I3Vfg7edih.MEBBc..kbS3SM4B8l6mxJLOst5bcpK.', '0235259321', NULL, 'IT0504', 'Ha Noi', '2023-05-26__avatar5.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'CÁCH LÀM CÁ BỐNG KHO THỊT BA CHỈ', 'cach-lam-ca-bong-kho-thit-ba-chi', 1, 1, 1, 0, 'Cá bống kho thịt ba chỉ là món ăn dân dã mang đậm bản sắc dân tộc Việt Nam. Từng con cá bống nhỏ nhắn nhưng chắc thịt được bao phủ bởi nước kho đậm đà màu cánh gián, vị cay the của ớt và tiêu hoà trộn vào nước kho rất bắt cơm, ăn bao nhiêu cũng không biết ngán.', '2020-11-21__1.jpg', '<h1>Nguy&ecirc;n liệu</h1>\r\n\r\n<ul>\r\n	<li>\r\n	<h4>C&aacute; bống m&uacute; Ph&uacute; Quốc - 500g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Thịt ba rọi hữu cơ 500g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Nước dừa organic đ&oacute;ng hộp Vietcoco</h4>\r\n	</li>\r\n	<li>\r\n	<h4>H&agrave;nh l&aacute; hữu cơ - 100g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>H&agrave;nh T&iacute;m Hữu Cơ - 500g 500gram</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Đường Củ Cải Hữu Cơ Naturata 500g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Hạt N&ecirc;m Hữu Cơ Rau Củ Alce Nero</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Muối Iot Tự Nhi&ecirc;n Hain 737g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Ti&ecirc;u Sọ Hữu Cơ Farmer&#39;s Organic 50g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Nước mắm Ph&uacute; Quốc nh&atilde;n hiệu Quốc Hương loại 750ML</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Ớt hiểm hữu cơ - 100g</h4>\r\n	</li>\r\n</ul>\r\n\r\n<h2>C&aacute;c bước thực hiện</h2>', '2023-06-22 16:44:50', 1, 1, '2023-06-23 04:13:55'),
(4, 'Bà Nội Mách 5 Cách Kho Cá Trắm Ngon Mềm “Bất Bại', 'ba-noi-mach-5-cach-kho-ca-tram-ngon-mem-bat-bai', 0, 1, 3, 0, 'KHO CA NGON', '2022-01-07__6.jpg', '<p>C&aacute; trắm kho riềng<br />\r\nC&aacute; trắm kho riềng l&agrave; m&oacute;n ăn đặc trưng của người miền Bắc. Riềng l&agrave; gia vị c&oacute; t&iacute;nh ấm n&oacute;ng, kh&ocirc;ng chỉ gi&uacute;p khử tanh c&aacute; m&agrave; c&ograve;n tốt cho hệ ti&ecirc;u h&oacute;a, gi&uacute;p điều trị c&aacute;c chứng kh&oacute; ti&ecirc;u. C&aacute;ch kho c&aacute; trắm với riềng cũng đơn giản như bao m&oacute;n c&aacute; kho kh&aacute;c. Sự kết hợp nguy&ecirc;n liệu đơn giản, kh&ocirc;ng cầu k&igrave; trong chế biến, ấy vậy m&agrave; hương vị hấp dẫn v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>c&aacute;ch l&agrave;m c&aacute; trắm kho riềng</p>\r\n\r\n<p>&nbsp;<br />\r\nNguy&ecirc;n liệu</p>\r\n\r\n<p>+ C&aacute; trắm đen: 1,5kg<br />\r\n+ Thịt ba chỉ: 500g<br />\r\n+ Riềng: 1 củ to<br />\r\n+ Sả: 3 c&acirc;y<br />\r\n+ H&agrave;nh t&iacute;m: 3 củ<br />\r\n+ Ớt: 3-4 quả t&ugrave;y khả năng ăn cay<br />\r\n+ Ti&ecirc;u xanh: v&agrave;i nh&aacute;nh<br />\r\n+ Nước mắm ngon: 2 th&igrave;a<br />\r\n+ Dầu h&agrave;o: 2 th&igrave;a<br />\r\n+ Nước tương: 2 th&igrave;a<br />\r\n+ Bột n&ecirc;m: 1 th&igrave;a<br />\r\n+ Bột canh: 1 th&igrave;a<br />\r\n+ Đường: 3 th&igrave;a</p>\r\n\r\n<p>nguy&ecirc;n liệu l&agrave;m c&aacute; trắm kho riềng</p>\r\n\r\n<p>&nbsp;<br />\r\nThực hiện</p>\r\n\r\n<p>Bước 1: Sơ chế nguy&ecirc;n liệu</p>\r\n\r\n<p>&ndash; C&aacute; trắm ngon nhất l&agrave; sử dụng c&aacute; trắm đen. C&aacute; trắm đen c&oacute; gi&aacute; th&agrave;nh cao hơn trắm cỏ hay trắm hoa nhưng thịt c&aacute; chắc, thơm ngọt v&agrave; nhiều dinh dưỡng hơn. Con c&aacute; trắm đen k&iacute;ch thước kh&aacute; lớn, c&oacute; thể l&ecirc;n đến 7-10kg/con. Bạn n&ecirc;n chọn mua kh&uacute;c c&aacute; giữa sẽ ngon v&agrave; vừa ăn hơn.</p>\r\n\r\n<p><img src=\"/ckfinder/userfiles/images/1.jpg\" style=\"height:680px; width:1020px\" /></p>\r\n\r\n<p>&ndash; C&aacute; đem rửa sạch với nước muối lo&atilde;ng, cạo sạch m&agrave;ng đen b&ecirc;n trong bởi n&oacute; l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ra m&ugrave;i tanh. Sau đ&oacute; rửa lại cho sạch rồi để r&aacute;o nước.<br />\r\n&ndash; Thịt ba chỉ rửa sạch, để r&aacute;o nước rồi th&aacute;i th&agrave;nh miếng vu&ocirc;ng vừa ăn.<br />\r\n&ndash; Riềng cạo sạch vỏ, một nửa đem th&aacute;i l&aacute;t mỏng, một nửa cho v&agrave;o m&aacute;y xay nhỏ<br />\r\n&ndash; Sả đập dập rồi cắt kh&uacute;c<br />\r\n&ndash; Ớt để nguy&ecirc;n quả hoặc th&aacute;i l&aacute;t<br />\r\n&ndash; H&agrave;nh t&iacute;m th&aacute;i l&aacute;t</p>\r\n\r\n<p>Bước 2: Thắng nước h&agrave;ng</p>\r\n\r\n<p>Cho 3 th&igrave;a đường v&agrave; khoảng 3 th&igrave;a nước v&agrave;o chảo. Đun tr&ecirc;n lửa nhỏ cho đường tan chảy từ từ. Lưu &yacute; kh&ocirc;ng được d&ugrave;ng đũa khuấy sẽ l&agrave;m đường bị kết tinh lại. Chỉ lắc nhẹ chảo cho đường tan hết. Đến khi đường ch&aacute;y c&oacute; m&agrave;u n&acirc;u c&aacute;nh gi&aacute;n đẹp mắt th&igrave; th&ecirc;m 1 th&igrave;a nước v&agrave;o khuấy đều l&agrave; được.</p>\r\n\r\n<p>Bước 3: Kho c&aacute; trắm với riềng</p>\r\n\r\n<p>&ndash; Sử dụng nồi đất, nồi s&agrave;nh, nồi gang hoặc một c&aacute;i nồi inox đế d&agrave;y. Xếp riềng v&agrave; sả xuống dưới đ&aacute;y nồi.<br />\r\n&ndash; Xếp c&aacute; trắm v&agrave; thịt ba chỉ v&agrave;o xen kẽ nhau. Cho tất cả gia vị v&agrave; nguy&ecirc;n liệu c&ograve;n lại v&agrave;o</p>\r\n\r\n<p>ướp c&aacute; trắm kho riềng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ndash; Đổ nước lọc hoặc nước đun s&ocirc;i v&agrave;o, xăm xắp mặt c&aacute;. Đặt l&ecirc;n bếp đun s&ocirc;i th&igrave; hạ nhỏ lửa. Kho c&aacute; liu riu lửa &iacute;t nhất 60 ph&uacute;t<br />\r\n&ndash; C&aacute; kho ngon nhất l&agrave; kho 2 lửa. Tức l&agrave; kho lần 1 cho gần cạn hết nước th&igrave; tắt bếp, để nguội rồi kho tiếp lần 2. L&uacute;c n&agrave;y bạn c&oacute; thể điều chỉnh m&agrave;u c&aacute; kho đẹp như &yacute; bằng c&aacute;ch chế th&ecirc;m nước h&agrave;ng v&agrave;o nh&eacute;. Kho c&aacute; lần 2 th&ecirc;m 30 ph&uacute;t l&agrave; được.</p>\r\n\r\n<p>c&aacute; trắm đen kho riềng</p>\r\n\r\n<p>&nbsp;<br />\r\nC&aacute; trắm kho riềng th&agrave;nh phẩm c&oacute; m&agrave;u n&acirc;u &oacute;ng đẹp mắt. Miếng c&aacute; b&ecirc;n ngo&agrave;i nh&iacute;n b&oacute;ng, b&eacute;o đậm đ&agrave;. Thịt c&aacute; mềm nhừ, xương cũng được kho mềm rục, c&aacute; kh&ocirc;ng hề bị kh&ocirc;. Gắp một miếng c&aacute;, miếng thịt ba chỉ rồi ăn c&ugrave;ng cơm trắng th&igrave; đ&aacute;nh bay cả nồi cơm.</p>\r\n\r\n<p>C&aacute; trắm kho dưa<br />\r\nNguy&ecirc;n liệu</p>\r\n\r\n<p>+ C&aacute; trắm: 1,5kg<br />\r\n+ Thịt ba chỉ: 500g<br />\r\n+ Dưa cải chua: 500g<br />\r\n+ H&agrave;nh t&iacute;m: 5 củ<br />\r\n+ Sả: 4 c&acirc;y<br />\r\n+ Nước m&agrave;u: 3 th&igrave;a<br />\r\n+ Ớt cay: 3 quả<br />\r\n+ Gia vị: nước mắm, dầu h&agrave;o, nước tương, bột n&ecirc;m,&hellip;</p>\r\n\r\n<p>nguy&ecirc;n liệu l&agrave;m c&aacute; trắm kho dưa</p>\r\n\r\n<p>&nbsp;<br />\r\nThực hiện</p>\r\n\r\n<p>&ndash; C&aacute; trắm rửa sạch, cạo hết m&agrave;ng đen b&ecirc;n trong. Sau đ&oacute; cắt kh&uacute;c d&agrave;y vừa ăn rồi để r&aacute;o nước<br />\r\n&ndash; Thịt ba chỉ rửa sạch, th&aacute;i miếng vu&ocirc;ng khoảng bằng nửa bao di&ecirc;m<br />\r\n&ndash; Dưa cải rửa cho bớt vị mặn.<br />\r\n&ndash; H&agrave;nh t&iacute;m rửa sạch, bạn c&oacute; thể để cả vỏ h&agrave;nh kh&ocirc;, ch&uacute;ng vừa tạo m&agrave;u đẹp mắt cho c&aacute; vừa c&oacute; m&ugrave;i thơm đặc biệt<br />\r\n&ndash; Sả đập dập, cắt kh&uacute;c.<br />\r\n&ndash; Xếp sả v&agrave;o xuống đ&aacute;y nồi. Xếp tiếp một lượt c&aacute;, xen kẽ với thịt, đến một lượt dưa rồi lại tiếp lượt c&aacute;, lượt dưa. Cho nốt h&agrave;nh t&iacute;m, ớt cay l&ecirc;n tr&ecirc;n</p>\r\n\r\n<p>l&agrave;m c&aacute; trắm kho dưa</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ndash; Cho 2 th&igrave;a dầu h&agrave;o, 3 th&igrave;a nước mắm ngon, 2 th&igrave;a nước tương, 1 th&igrave;a bột n&ecirc;m, 3 th&igrave;a nước m&agrave;u, 300ml nước v&agrave;o chảo đun s&ocirc;i. Khuấy nhẹ cho nguy&ecirc;n liệu tan hết. Sau đ&oacute; đổ nước kho n&agrave;y v&agrave;o nồi c&aacute;.<br />\r\n&ndash; Kho c&aacute; cho s&ocirc;i b&ugrave;ng khoảng 5 ph&uacute;t th&igrave; hạ nhỏ lửa liu riu. Kho &iacute;t nhất 2 giờ đến khi cạn nước, c&aacute; mềm rục l&agrave; được.</p>\r\n\r\n<p>c&aacute; trắm kho dưa</p>\r\n\r\n<p>&nbsp;<br />\r\nC&aacute; trắm kho tr&aacute;m<br />\r\nMột c&aacute;ch kho c&aacute; trắm ngon nổi tiếng của người v&ugrave;ng cao miền Bắc, đ&oacute; l&agrave; kho c&aacute; với quả tr&aacute;m. Quả tr&aacute;m c&oacute; 2 loại l&agrave; tr&aacute;m đen v&agrave; tr&aacute;m trắng. &Iacute;t ai nghĩ rằng, thứ quả nhọn nhọn, đen x&igrave; n&agrave;y lại được chị em nội trợ đua nhau mua nhiều đến vậy, mặc d&ugrave; gi&aacute; kh&aacute; cao. Thừng khi v&agrave;o m&ugrave;a, người ta mua cả v&agrave;i c&acirc;n tr&aacute;m về để d&agrave;nh ăn dần. Tr&aacute;m d&ugrave;ng kho thịt, kho c&aacute;, đồ x&ocirc;i, ng&acirc;m muối,&hellip;. đều rất ngon.</p>\r\n\r\n<p>quả tr&aacute;m</p>\r\n\r\n<p>&nbsp;<br />\r\nC&aacute; trắm kho tr&aacute;m c&oacute; một hương vị rất lạ m&agrave; ai từng nếm thử sẽ nhớ m&atilde;i kh&ocirc;ng qu&ecirc;n. Tr&aacute;m c&oacute; đủ c&aacute;c vị, hơi chua chua, ch&aacute;t ch&aacute;t, b&ugrave;i, ngậy quện v&agrave;o thịt c&aacute; v&agrave; thịt ba chỉ, mang đến m&oacute;n ăn hấp dẫn.</p>\r\n\r\n<p>Quả tr&aacute;m mua về sẽ được kh&iacute;a tr&ograve;n rồi ng&acirc;m v&agrave;o nước muối 20 ph&uacute;t cho ra bớt vị ch&aacute;t. Sau đ&oacute;, trần qua nước s&ocirc;i, tắt bếp, đậy vung om 20 ph&uacute;t để t&aacute;ch hạt ra dễ d&agrave;ng. D&ugrave;ng con dao nhọn, t&aacute;ch đ&ocirc;i quả tr&aacute;m, bỏ hạt.</p>\r\n\r\n<p>l&agrave;m c&aacute; trắm kho tr&aacute;m</p>\r\n\r\n<p>&nbsp;<br />\r\nC&aacute; trắm được sơ chế sạch, xếp v&agrave;o nồi c&ugrave;ng với tr&aacute;m. Dưới đ&aacute;y nồi xếp một lớp riềng th&aacute;i l&aacute;t v&agrave; v&agrave;i l&aacute; ch&egrave; xanh. C&aacute;, thịt ba chỉ v&agrave; tr&aacute;m xếp xen kẽ nhau. N&ecirc;m gia vị gồm nước mắm ngon, dầu h&agrave;o, nước m&agrave;u, bột n&ecirc;m, ớt tươi. Đổ ngập nước rồi kho nhỏ lửa cho đến khi mềm nhừ.</p>\r\n\r\n<p>c&aacute; trắm kho tr&aacute;m</p>\r\n\r\n<p>&nbsp;<br />\r\nC&aacute; trắm kho l&aacute; chanh th&aacute;i<br />\r\nBạn đ&atilde; bao giờ kho c&aacute; trắm với l&aacute; chanh th&aacute;i chưa? L&aacute; chanh Th&aacute;i hay c&ograve;n c&oacute; t&ecirc;n l&agrave; l&aacute; Kaffir lime, một loại c&acirc;y gia vị c&ugrave;ng họ với chanh rất nổi tiếng ở v&ugrave;ng Bảy N&uacute;i An Giang. L&aacute; chanh Th&aacute;i vị the như chanh ta nhưng thơm hơn, m&ugrave;i gắt hơn, nồng hơn. L&aacute; non được d&ugrave;ng cho c&aacute;c m&oacute;n salad, c&ograve;n l&aacute; b&aacute;nh tẻ v&agrave; l&aacute; gi&agrave; d&ugrave;ng chế biến c&aacute;c m&oacute;n c&aacute; hấp, c&aacute; kho, lẩu Th&aacute;i, sốt ướp thịt,&hellip; L&aacute; chanh Th&aacute;i kho c&aacute;, kh&ocirc;ng chỉ c&oacute; t&aacute;c dụng khử tanh hiệu quả m&agrave; n&oacute; mang đến một hương vị rất đặc biệt, kh&ocirc;ng thể diễn tả bằng lời. C&aacute; kho thơm nức, chỉ cần nh&igrave;n th&ocirc;i đ&atilde; muốn thưởng thức ngay lập tức.</p>\r\n\r\n<p>c&aacute; trắm kho l&aacute; chanh Th&aacute;i</p>\r\n\r\n<p>&nbsp;<br />\r\n(Tham khảo: FB Th&acirc;n Hồng Nam)</p>\r\n\r\n<p>Nguy&ecirc;n liệu chuẩn bị</p>\r\n\r\n<p>+ C&aacute; trắm đen: 2kg.<br />\r\n+ H&agrave;nh t&iacute;m: 5 củ<br />\r\n+ Sả: 10 c&acirc;y<br />\r\n+ Riềng: 1 củ<br />\r\n+ Gừng:1. củ nhỏ<br />\r\n+ Thịt ba chỉ: 400g<br />\r\n+ Ớt cay: 3 quả<br />\r\n+ Ớt bột: 1 th&igrave;a<br />\r\n+ Ti&ecirc;u xanh: 1 nắm hoặc sử dụng ti&ecirc;u đen nguy&ecirc;n hạt<br />\r\n+ Hạt dổi: 5 hạt (kh&ocirc;ng bắt buộc)<br />\r\n+ L&aacute; chanh Th&aacute;i: 10 l&aacute;<br />\r\n+ Tỏi: 5 t&eacute;p<br />\r\n+ Nước mắm độ đạm cao: 100g<br />\r\n+ Sốt Teriyaki: 1 th&igrave;a<br />\r\n+ Đường ph&egrave;n: 1 th&igrave;a<br />\r\n+ Nước h&agrave;ng: 3 th&igrave;a<br />\r\n+ Sa tế: 1 th&igrave;a<br />\r\n+ Nước cốt dừa: 4 th&igrave;a<br />\r\n+ Bột n&ecirc;m: 1 th&igrave;a<br />\r\n+ Bột canh: 1 th&igrave;a</p>\r\n\r\n<p>L&agrave;m c&aacute; trắm kho l&aacute; chanh Th&aacute;i</p>\r\n\r\n<p>Bước 1: Sơ chế nguy&ecirc;n liệu</p>\r\n\r\n<p>&ndash; C&aacute; trắm chọn mua kh&uacute;c giữa. Chọn c&aacute; trắm đen, con c&agrave;ng to th&igrave; c&agrave;ng ngon. Cắt c&aacute; th&agrave;nh từng khoanh d&agrave;y khoảng 3cm, nếu to c&oacute; thể chẻ đ&ocirc;i theo đường xương sống nh&eacute;. Rửa c&aacute; với nước muối lo&atilde;ng, cạo hết m&agrave;ng đen b&ecirc;n trong để khử m&ugrave;i tanh. Sau đ&oacute; để c&aacute; r&aacute;o nước.<br />\r\n&ndash; Thịt ba chỉ rửa với nước muối lo&atilde;ng để khử m&ugrave;i h&ocirc;i. Th&aacute;i thịt th&agrave;nh những miếng vu&ocirc;ng, to bằng nửa bao di&ecirc;m l&agrave; được.<br />\r\n&ndash; Sả đập dập, cắt kh&uacute;c<br />\r\n&ndash; Gừng th&aacute;i l&aacute;t. Riềng cạo sạch vỏ rồi c&ugrave;ng th&aacute;i l&aacute;t mỏng<br />\r\n&ndash; Tỏi băm nhỏ. H&agrave;nh t&iacute;m rửa sạch, để nguy&ecirc;n củ</p>\r\n\r\n<p>Bước 2: Nấu nước kho c&aacute;</p>\r\n\r\n<p>&ndash; Nước h&agrave;ng bạn c&oacute; thể mua lọ b&aacute;n sẵn. Nếu c&oacute; thời gian h&atilde;y tự nấu nước h&agrave;ng để c&oacute; m&agrave;u đẹp nhất. C&aacute;ch thắng nước h&agrave;ng cũng rất đơn giản. Cho 3 th&igrave;a đường v&agrave; 3 th&igrave;a nước v&agrave;o chảo rồi đặt tr&ecirc;n lửa nhỏ. Kh&ocirc;ng được d&ugrave;ng đũa khuấy, thi thoảng lắc nhẹ chảo để đường tan hết. Khi đường tan, bắt đầu ch&aacute;y th&agrave;nh caramel. Khi c&oacute; m&agrave;u c&aacute;nh gi&aacute;n đẹp mắt th&igrave; th&ecirc;m v&agrave;o nửa th&igrave;a nước đảo đều l&agrave; được.</p>\r\n\r\n<p>&ndash; Trong một nồi nhỏ, cho nước mắm, sốt Teriyaki, đường ph&egrave;n, nước h&agrave;ng, sa tế, bột n&ecirc;m, bột canh, nước cốt dừa v&agrave; nửa l&iacute;t nước khuấy đều. Đun tr&ecirc;n lửa đến khi hỗn hợp tan ho&agrave;n to&agrave;n, bắt đầu sủi tăm th&igrave; tắt bếp.</p>', '2023-06-22 13:44:50', 1, 0, '2023-06-22 13:45:50'),
(5, 'cách nấu canh chua', 'cach-nau-canh-chua', 0, 1, 4, 0, 'hướng dẫn nấu canh', '2022-01-08__6.jpg', '<p>nội dung hướng dẫn nấu canh</p>', '2023-06-19 13:44:50', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type_id`, `created_at`, `updated_at`) VALUES
(1, '500 gram', '500-gram', 1, '2023-05-20 05:45:10', '2023-05-20 05:45:10'),
(2, '1 Kg', '1-kg', 1, '2023-05-20 05:45:10', '2023-08-02 03:00:23'),
(3, '2 Kg', '2-kg', 1, '2023-05-20 05:45:10', '2023-08-02 03:00:50'),
(4, '3 kg', '3-kg', 1, '2023-05-20 05:45:10', '2023-08-01 23:54:28'),
(5, '5 kg', '5-kg', 1, '2023-05-20 05:45:10', '2023-08-01 23:53:59'),
(6, 'Gói', 'goi', 2, '2023-05-20 05:45:10', '2023-05-20 05:45:10'),
(7, 'Hộp', 'hop', 2, '2023-05-20 05:45:10', '2023-05-20 05:45:10'),
(8, 'Thùng', 'thung', 2, '2023-05-20 05:45:10', '2023-05-20 05:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Rau củ quả', 0, 'rau-cu-qua', '2020-11-20__raucuqua.png', NULL, NULL, 1, 1, '2023-06-16 13:45:26', '2023-06-16 13:45:26'),
(2, 'Củ - Quả Hữu Cơ', 1, 'cu-qua-huu-co', '2023-07-12__icon.jpg', NULL, NULL, 1, 1, '2023-06-16 13:48:26', '2023-07-11 19:26:55'),
(3, 'Nấm - Rau mầm', 1, 'nam-rau-mam', '2023-07-12__icon1.jpg', NULL, NULL, 1, 1, '2023-06-17 16:45:26', '2023-07-11 19:18:26'),
(4, 'Rau gia vị', 1, 'rau-gia-vi', '2023-07-12__gao1ab.png', NULL, NULL, 1, 1, '2023-06-17 13:48:26', '2023-07-11 19:27:00'),
(5, 'Rau hữu cơ', 1, 'rau-huu-co', '2023-07-12__kisspng-organic-food-market-garden-vegetable-agriculture-vegetable-icon-5b28d10176b2915496321615294016014862.jpg', NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-07-11 19:23:33'),
(6, 'Trái Cây Hữu Cơ', 0, 'trai-cay-huu-co', '2020-11-20__traicayhuco.png', NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-06-17 13:48:26'),
(7, 'Trái cây khô', 6, 'trai-cay-kho', '2023-07-12__food-nuts.png', NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-07-11 19:25:51'),
(8, 'Trái cây nhập khẩu', 6, 'trai-cay-nhap-khau', '2023-07-12__traicay1a.png', NULL, NULL, 1, 1, '2023-06-17 13:48:26', '2023-07-11 19:27:07'),
(9, 'Trái cây Việt', 6, 'trai-cay-viet', '2023-07-12__3081883.png', NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-07-11 19:22:33'),
(11, 'Kem hữu cơ', 0, 'kem-huu-co', '2023-07-12__pngtree-natural-organic-cosmetic-products-with-useful-components-and-ingredients-for-moisturizing-png-image-6045233.png', NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-07-11 19:26:43'),
(12, 'Cà phê & Trà hữu cơ', 10, 'ca-phe-tra-huu-co', NULL, NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-06-17 13:48:26'),
(13, 'Mật ong và Detox', 10, 'mat-ong-va-detox', NULL, NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-06-17 13:48:26'),
(14, 'Nước khoáng - Đồ uống có cồn', 10, 'nuoc-khoang-do-uong-co-con', NULL, NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-06-17 13:48:26'),
(15, 'Nước trái cây hữu cơ', 10, 'nuoc-trai-cay-huu-co', NULL, NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-06-17 13:48:26'),
(16, 'Thịt - Trứng', 0, 'thit-trung', '2020-11-20__thit.png', NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-06-17 13:48:26'),
(17, 'Thủy - Hải sản', 0, 'thuy-hai-san', '2020-11-20__ca.png', NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-06-17 13:48:26'),
(18, 'Đồ chế biến sẵn', 0, 'do-che-bien-san', '2020-11-20__wool.png', NULL, NULL, 0, 1, '2023-06-17 13:48:26', '2023-06-17 13:48:26'),
(23, 'Test', 0, 'test', NULL, NULL, NULL, 0, 1, '2023-05-26 15:52:54', NULL),
(24, 'Đồ uống hữu cơ', 0, 'do-uong-huu-co', '2023-07-11__pngtree-drink-icon-image-1344694.jpg', NULL, NULL, 0, 1, '2023-07-11 10:28:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Sản phẩm rất tuyệt vời', 0, 11, 0, 2, 0, 0, '2023-06-26 16:45:44', '2023-06-26 16:45:44'),
(2, NULL, NULL, '@Nguyen Quang Duc: cám ơn shop', 1, 11, 0, 2, 0, 0, '2023-06-26 16:45:44', '2023-06-26 16:45:44'),
(5, NULL, NULL, 'sản phẩm này còn hàng không ?', 0, 10, 0, 35, 0, 0, '2023-06-26 16:45:44', NULL),
(6, NULL, NULL, '@Minh Lan: còn ạ', 5, 10, 0, 35, 0, 0, '2023-06-28 04:32:44', NULL),
(8, NULL, NULL, 'OK', 0, 11, 0, 42, 0, 0, '2023-06-28 08:18:05', NULL),
(9, NULL, NULL, 'Ngon', 0, 5, 0, 43, 0, 0, '2023-06-28 08:41:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(2, 'abc', 10, '2023-05-27 22:49:00', '2023-05-31 22:50:00', 10, '2023-05-26 08:50:05', '2023-05-26 08:50:13'),
(3, 'abce', 10, '2023-06-01 05:54:00', '2023-06-30 05:54:00', 10, '2023-05-26 15:54:34', '2023-05-26 15:54:34'),
(4, '4', 20, '2023-07-24 23:10:00', '2023-07-26 23:10:00', 20, '2023-07-24 09:10:47', '2023-07-24 09:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `e_detail_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_detail_2` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `e_detail_1`, `e_detail_2`, `created_at`, `updated_at`) VALUES
(1, 'sale 1', '2020-11-20__cua-hang-bach-hoa-xanh-tai-quang-son-ninh-son-2-1211x1713.jpg', '/', 1, 0, 0, 0, 0, 0, '2023-06-20 14:36:41', '2023-06-20 14:36:41'),
(2, 'sale 2', '2020-11-20__smart-food-banner.jpg', '/', 0, 1, 0, 0, 0, 0, '2023-06-20 14:36:41', '2023-06-20 14:36:41'),
(3, 'sale 3', '2020-11-20__11e93518327abdd246ba92c0d900162d.jpg', '/', 0, 0, 1, 0, 0, 0, '2023-06-21 05:25:39', '2023-06-21 05:25:39'),
(4, 'sale 4', '2020-11-21__cong-thuc-banner.jpg', '/', 0, 0, 0, 0, 1, 0, '2023-06-21 05:25:39', '2023-06-21 05:25:39'),
(5, 'sale 5', '2020-11-21__follow-nhan-uu-dai.jpg', '/', 0, 0, 0, 0, 0, 1, '2023-06-21 05:25:39', '2023-06-21 05:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(1, 'Thực phẩm sạch', 'thuc-pham-sach', NULL, 0, '2023-06-21 15:01:02', '2023-06-21 15:01:02'),
(2, 'Rau quả hữu cơ', 'rau-qua-huu-co', NULL, 0, '2023-06-21 15:02:25', '2023-06-21 15:02:25'),
(3, 'Thực phẩm sạch vietgap', 'thuc-pham-sach-vietgap', NULL, 0, '2023-06-21 15:02:25', '2023-06-21 15:02:25'),
(4, 'Thực phẩm vietfoods', 'thuc-pham-vietfoods', NULL, 0, '2023-06-21 15:02:25', '2023-06-21 15:02:25'),
(5, 'Organicfood', 'organicfood', NULL, 0, '2023-06-21 15:02:25', '2023-06-21 15:02:25'),
(6, 'Rau quả thực phẩm sạch chuẩn VietGrap', 'rau-qua-thuc-pham-sach-chuan-vietgrap', NULL, 0, '2023-06-21 15:02:25', '2023-06-21 15:02:25'),
(7, 'Nông sản sạch', 'nong-san-sach', NULL, 0, '2023-06-21 15:02:25', '2023-06-21 15:02:25'),
(8, 'Mì Ly Cao Cấp', 'mi-ly-cao-cap', 'mì nhập khẩu cao cấp', 0, '2023-06-21 15:02:25', '2023-07-11 20:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 0, 1, '2023-06-20 03:46:44', '2023-06-20 03:46:44'),
(2, 'Sự Kiện', 'su-kien', NULL, NULL, NULL, 0, 1, '2023-06-20 03:46:44', '2023-06-20 03:46:44'),
(3, 'Tin nổi bậc', 'tin-noi-bac', NULL, NULL, NULL, 0, 1, '2023-06-20 03:46:44', NULL),
(4, 'Tin Xem Nhiều', 'tin-xem-nhieu', NULL, NULL, NULL, 0, 1, '2023-06-20 03:46:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_02_02_041429_create_categories_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_04_09_231820_create_producer_table', 1),
(31, '2020_04_11_010440_create_types_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(8, 10, 11, 0, 1, 33000, NULL, NULL),
(9, 10, 9, 0, 1, 42000, NULL, NULL),
(10, 10, 8, 0, 1, 65000, NULL, NULL),
(11, 11, 11, 0, 1, 33000, NULL, NULL),
(12, 11, 8, 0, 1, 65000, NULL, NULL),
(13, 12, 9, 0, 3, 42000, NULL, NULL),
(14, 12, 10, 0, 2, 16000, NULL, NULL),
(15, 13, 10, 0, 4, 16000, NULL, NULL),
(16, 14, 7, 0, 1, 33000, NULL, NULL),
(17, 14, 9, 0, 1, 42000, NULL, NULL),
(18, 15, 11, 0, 3, 33000, NULL, NULL),
(19, 15, 7, 0, 2, 33000, NULL, NULL),
(20, 15, 10, 0, 1, 16000, NULL, NULL),
(21, 15, 9, 0, 1, 42000, NULL, NULL),
(22, 15, 5, 0, 1, 50000, NULL, NULL),
(23, 16, 10, 0, 2, 16000, NULL, NULL),
(24, 16, 9, 0, 1, 42000, NULL, NULL),
(25, 16, 8, 0, 1, 65000, NULL, NULL),
(26, 16, 11, 0, 1, 33000, NULL, NULL),
(27, 16, 7, 0, 1, 33000, NULL, NULL),
(28, 16, 3, 0, 1, 1700000, NULL, NULL),
(29, 17, 16, 5, 1, 38950, NULL, NULL),
(30, 18, 16, 5, 1, 38950, NULL, NULL),
(31, 19, 16, 5, 2, 38950, NULL, NULL),
(32, 20, 45, 0, 1, 279000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('duocnvoit@gmail.com', '$2y$10$pbrzwKceNbJ/t6ay5uJODOz4bweHblK6bPysnuctlVyCFO58YkoSq', '2020-05-03 15:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_vnp_response_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdr_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`id`, `pdr_name`, `pdr_slug`, `pdr_email`, `pdr_phone`, `created_at`, `updated_at`) VALUES
(1, 'Nông sản nhật bản', 'nong-san-nhat-ban', 'nongsannhat@gmail.com', '19001907', '2023-06-20 05:47:15', '2023-06-20 05:47:15'),
(2, 'Hợ tác xã nông sản sạch', 'ho-tac-xa-nong-san-sach', 'hoptacnongsansach@gmail.com', '18008989', '2023-06-20 05:47:15', '2023-06-20 05:47:15'),
(3, 'Everyday Organic', 'everyday-organic', 'everydayorganic@gmail.com', '028 38 753 443', '2023-06-20 05:47:15', '2023-06-20 05:47:15'),
(4, 'Organicfood.vn', 'organicfoodvn', 'organicfood@gmail.com', '0928817228', '2023-06-20 05:47:15', '2023-06-20 05:47:15'),
(5, 'Thực phẩm sạch VietGrap', 'thuc-pham-sach-vietgrap', 'vietgap@fsi.org.vn', '02436341933', '2023-06-20 05:47:15', '2023-06-20 05:47:15'),
(6, 'Thực phẩm sạch vietfoods', 'thuc-pham-sach-vietfoods', 'vietfoods@gmail.com', '0243201075', '2023-06-20 05:47:15', '2023-06-20 05:47:15'),
(7, 'Acicook Mi hảo Hảo', 'acicook-mi-hao-hao', 'haohao@gmail.com', '03764641313', '2023-06-20 05:47:15', '2023-06-20 05:47:15'),
(8, 'Omachi', 'omachi', 'congtyomachi@gmail.com', '0333333333', '2023-06-20 05:47:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(3, 'Biến hình', 'bien-hinh', 123000, 0, 15, 0, 5, '2023-08-13__13.jpg', 1, 0, 1, 0, '<p>ngon</p>', '<p>ok</p>', 0, 0, 0, '2023-08-03 23:12:06', 135, 5, '2023-08-13 03:22:35'),
(4, 'Robot vui nhộn', 'robot-vui-nhon', 450000, 0, 4, 0, 0, '2023-08-13__10.jpg', 0, 0, 1, 0, '<p>Local means&nbsp;<strong>existing in or belonging to the area where you live, or to the area that you are talking about</strong>.</p>', '<p>Local means&nbsp;<strong>existing in or belonging to the area where you live, or to the area that you are talking about</strong>.</p>', 0, 0, 0, '2023-08-06 19:25:21', 90, 4, '2023-08-13 03:03:15'),
(16, 'Xe tăng biến hình', 'xe-tang-bien-hinh', 41000, 0, 5, 0, 5, '2023-08-13__20.jpg', 8, 1, 1, 3, '<p>Sau khi mua sản phẩm rau sắc m&agrave;u hỗn hợp nh&agrave; Đ&ocirc;i Đũa V&agrave;ng về, bạn kh&ocirc;ng cần r&atilde; đ&ocirc;ng sản phẩm m&agrave; c&oacute; thể sử dụng được ngay. Đầu ti&ecirc;n, bạn cắt bỏ lớp bao b&igrave; t&uacute;i PA b&ecirc;n ngo&agrave;i cho bớt lạnh.</p>', '<p style=\"text-align:justify\"><strong>Th&agrave;nh phần:</strong>&nbsp;C&agrave; rốt, đậu H&agrave; Lan, ng&ocirc;, khoai t&acirc;y&nbsp;<strong>Chỉ ti&ecirc;u chất lượng chủ yếu</strong></p>', 1, 3, 3, '2023-07-11 00:57:59', 25, 6, '2023-08-13 03:20:23'),
(17, 'Robot Deerc', 'robot-deerc', 1500000, 0, 8, 0, 7, '2023-08-13__16.jpg', 1, 1, 1, 0, '<p><strong>&nbsp;</strong><strong>T&aacute;o Taylor</strong>&nbsp;l&agrave; một trong những giống t&aacute;o số một tại New Zealand. Nổi tiếng thế với về m&agrave;u sắc bắt mắt, h&agrave;m lượng chất dinh dưỡng cao, hương vị ngọt ng&agrave;o, m&ugrave;i thơm nhẹ</p>', '<p><strong>&nbsp;</strong><strong>T&aacute;o Taylor</strong>&nbsp;l&agrave; một trong những giống t&aacute;o số một tại New Zealand. Nổi tiếng thế với về m&agrave;u sắc bắt mắt, h&agrave;m lượng chất dinh dưỡng cao, hương vị ngọt ng&agrave;o, m&ugrave;i thơm nhẹ</p>', 0, 0, 0, '2023-07-11 01:15:46', 28, 5, '2023-08-13 03:12:13'),
(18, 'Robot khủng long', 'robot-khung-long', 550000, 0, 8, 0, 10, '2023-08-13__15.jpg', 1, 0, 1, 0, '<p>NHO AIR CHIEF&nbsp;tr&ograve;n, đầy đặn v&agrave; ngon ngọt c&oacute; ba loại; nho xanh, đỏ v&agrave; đen.</p>\r\n\r\n<p>Loại Air Chief xanh ngọt v&agrave; ngon v&agrave; ph&ugrave; hợp với phần lớn kh&aacute;ch h&agrave;ng Việt.</p>\r\n\r\n<p>Air Chief&nbsp; chứa nhiều vitamin tốt cho sức khoẻ như C, Kv&agrave; kho&aacute;ng chất kali, sắt.</p>\r\n\r\n<p>Air Chief đỏ v&agrave; đen cũng được kh&aacute;ch h&agrave;ng kh&aacute; y&ecirc;u th&iacute;ch&nbsp;<a href=\"https://tungluxury.com/cac-mau-giay-prada-ngoc-trinh/\">mẫu gi&agrave;y Prada Ngọc Trinh</a>&nbsp;do cung cấp một nh&oacute;m c&aacute;c chất chống oxy h&oacute;a.</p>', '<p>NHO AIR CHIEF&nbsp;tr&ograve;n, đầy đặn v&agrave; ngon ngọt c&oacute; ba loại; nho xanh, đỏ v&agrave; đen.</p>\r\n\r\n<p>Loại Air Chief xanh ngọt v&agrave; ngon v&agrave; ph&ugrave; hợp với phần lớn kh&aacute;ch h&agrave;ng Việt.</p>\r\n\r\n<p>Air Chief&nbsp; chứa nhiều vitamin tốt cho sức khoẻ như C, Kv&agrave; kho&aacute;ng chất kali, sắt.</p>\r\n\r\n<p>Air Chief đỏ v&agrave; đen cũng được kh&aacute;ch h&agrave;ng kh&aacute; y&ecirc;u th&iacute;ch&nbsp;<a href=\"https://tungluxury.com/cac-mau-giay-prada-ngoc-trinh/\">mẫu gi&agrave;y Prada Ngọc Trinh</a>&nbsp;do cung cấp một nh&oacute;m c&aacute;c chất chống oxy h&oacute;a.</p>', 1, 4, 4, '2023-07-11 01:22:29', 50, 6, '2023-08-13 03:10:08'),
(19, 'Robot phát sáng', 'robot-phat-sang', 3500000, 0, 8, 0, 0, '2023-08-13__14.png', 1, 0, 1, 0, '<p>Những quả kiwi thượng hạng gi&agrave;u dinh dưỡng v&agrave; tươi ngon được nhập khẩu từ New Zealand &ndash; một trong những nh&agrave; ph&acirc;n phối h&agrave;ng đầu thế giới.</p>', '<p>Những quả kiwi thượng hạng gi&agrave;u dinh dưỡng v&agrave; tươi ngon được nhập khẩu từ New Zealand &ndash; một trong những nh&agrave; ph&acirc;n phối h&agrave;ng đầu thế giới.</p>', 0, 0, 0, '2023-07-11 01:24:54', 59, 4, '2023-08-13 03:08:50'),
(20, 'Robot từ', 'robot-tu', 700000, 0, 8, 0, 0, '2023-08-13__13.jpg', 1, 0, 1, 0, '<p><strong>T&aacute;o Rockit New Zealnd</strong>&nbsp;c&oacute; vỏ ngo&agrave;i m&agrave;u đỏ hồng mỏng rất rực r&otilde;, phần l&otilde;i nhỏ, thịt gi&ograve;n đanh v&agrave; ngọt ng&agrave;o mang hương vị ho&agrave;n to&agrave;n kh&aacute;c biệt so với c&aacute;c loại t&aacute;o kh&aacute;c</p>', '<p><strong>T&aacute;o Rockit New Zealnd</strong>&nbsp;c&oacute; vỏ ngo&agrave;i m&agrave;u đỏ hồng mỏng rất rực r&otilde;, phần l&otilde;i nhỏ, thịt gi&ograve;n đanh v&agrave; ngọt ng&agrave;o mang hương vị ho&agrave;n to&agrave;n kh&aacute;c biệt so với c&aacute;c loại t&aacute;o kh&aacute;c</p>', 1, 5, 5, '2023-07-11 01:26:37', 52, 3, '2023-08-13 03:06:27'),
(21, 'Robot cảnh sát', 'robot-canh-sat', 1200000, 0, 8, 0, 6, '2023-08-13__12.jpg', 0, 1, 1, 0, '<p>Cherry &Uacute;c l&agrave; một trong những loại tr&aacute;i c&acirc;y c&oacute; nhiều chất dinh dưỡng nhất, c&oacute; hương vị ngon đặc trưng n&ecirc;n được ưa chuộng tr&ecirc;n khắp thế giới</p>\r\n\r\n<ul>\r\n	<li>Hương vị thơm ngon, m&agrave;u sắc bắt mắt</li>\r\n	<li>C&oacute; nhiều lợi &iacute;ch cho sức khỏe</li>\r\n	<li>Đảm bảo tươi ngon</li>\r\n</ul>', '<p>Cherry &Uacute;c l&agrave; một trong những loại tr&aacute;i c&acirc;y c&oacute; nhiều chất dinh dưỡng nhất, c&oacute; hương vị ngon đặc trưng n&ecirc;n được ưa chuộng tr&ecirc;n khắp thế giới</p>\r\n\r\n<ul>\r\n	<li>Hương vị thơm ngon, m&agrave;u sắc bắt mắt</li>\r\n	<li>C&oacute; nhiều lợi &iacute;ch cho sức khỏe</li>\r\n	<li>Đảm bảo tươi ngon</li>\r\n</ul>', 0, 0, 0, '2023-07-11 01:30:00', 91, 4, '2023-08-13 03:05:32'),
(22, 'Mô hình toys', 'mo-hinh-toys', 250000, 0, 8, 0, 0, '2023-08-13__11.jpg', 0, 0, 1, 0, '<p>Tận hưởng vị ngọt mọng nước thơm ngon với những giống Cam được tuyển chọn nhập khẩu từ Mỹ.</p>', '<p>Tận hưởng vị ngọt mọng nước thơm ngon với những giống Cam được tuyển chọn nhập khẩu từ Mỹ.</p>', 0, 0, 0, '2023-07-11 01:31:28', 87, 4, '2023-08-13 03:04:30'),
(23, 'Mô hình 14', 'mo-hinh-14', 10000, 0, 1, 0, 4, '2023-08-13__21.jpg', 0, 1, 1, 0, '<p><a href=\"https://www.bachhoaxanh.com/cu/ca-phao-vi-200g\">C&agrave; ph&aacute;o</a>&nbsp;l&agrave; m&oacute;n ăn truyền thống trong mỗi m&acirc;m cơm gia đ&igrave;nh Việt Nam từ thời xa xư. Loại quả n&agrave;y kh&ocirc;ng những ngon, m&agrave; c&ograve;n c&oacute; thể l&agrave;m th&agrave;nh thuốc gi&uacute;p nhuận tr&agrave;ng, lợi tiểu, trị thũng thấp độc, trừ h&ograve;n cục trong bụng, ho lao... C&agrave; ph&aacute;o được chế biến nhiều nhất l&agrave; m&oacute;n c&agrave; ph&aacute;o muối, chấm mắm t&ocirc;m.</p>', '<h3><strong>Ưu điểm khi mua c&agrave; ph&aacute;p tại B&aacute;ch ho&aacute; XANH</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&agrave; ph&aacute;o tươi ngon, gi&ograve;n, l&agrave; loại c&agrave; ph&aacute;o trắng. Đ&acirc;y l&agrave; loại thực phẩm được biết đến l&agrave; m&oacute;n ăn quen thuộc của người d&acirc;n Việt Nam. Quả c&oacute; d&aacute;ng tr&ograve;n, c&oacute; m&agrave;u trắng đục, c&oacute; cuống m&agrave;u xanh l&aacute;, b&ecirc;n trong c&oacute; nhiều hạt nhỏ, dẹt như hạt ớt</p>\r\n	</li>\r\n	<li>\r\n	<p>C&agrave; ph&aacute;o được đảm bảo nguồn gốc, xuất xứ r&otilde; r&agrave;ng</p>\r\n	</li>\r\n	<li>\r\n	<p>Đặt giao h&agrave;ng nhanh</p>\r\n	</li>\r\n</ul>', 0, 0, 0, '2023-07-11 01:38:32', 120, 2, '2023-08-13 03:21:36'),
(24, 'Sả xay', 'sa-xay', 43000, 0, 1, 0, 0, '2023-07-11__sa-xay-an-lac-hu-50g-202303040942094974.jpg', 0, 0, 1, 0, '<p><a href=\"https://www.bachhoaxanh.com/rau-sach/sa-xay-an-lac-hu-50g\">Sả xay hũ </a>&nbsp;sạch, tươi, xanh ngon v&agrave; l&agrave;m sẵn hợp vệ sinh. L&agrave; loại&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach-rau-nem-cac-loai\">rau gia vị</a>&nbsp;thơm ngon, gi&uacute;p c&aacute;c m&oacute;n ăn th&ecirc;m bắt vị cay nhẹ thơm nồng đậm đ&agrave;, k&iacute;ch th&iacute;ch vị gi&aacute;c tốt, c&ograve;n chứa v&agrave;i dưỡng chất thiết yếu cần thiết cho cơ thể.</p>', '<p><a href=\"https://www.bachhoaxanh.com/rau-sach/sa-xay-an-lac-hu-50g\">Sả xay hũ </a>&nbsp;sạch, tươi, xanh ngon v&agrave; l&agrave;m sẵn hợp vệ sinh. L&agrave; loại&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach-rau-nem-cac-loai\">rau gia vị</a>&nbsp;thơm ngon, gi&uacute;p c&aacute;c m&oacute;n ăn th&ecirc;m bắt vị cay nhẹ thơm nồng đậm đ&agrave;, k&iacute;ch th&iacute;ch vị gi&aacute;c tốt, c&ograve;n chứa v&agrave;i dưỡng chất thiết yếu cần thiết cho cơ thể.</p>', 0, 0, 0, '2023-07-11 01:41:02', 42, 1, NULL),
(25, 'Robot 360', 'robot-360', 11000, 0, 2, 0, 0, '2023-08-13__19.jpg', 0, 0, 1, 0, '<p><a href=\"https://www.bachhoaxanh.com/rau-sach\">Rau</a>&nbsp;x&agrave; l&aacute;ch b&uacute;p mỡ&nbsp;của B&aacute;ch h&oacute;a Xanh được nu&ocirc;i trồng tại L&acirc;m Đồng v&agrave; đ&oacute;ng g&oacute;i theo những ti&ecirc;u chuẩn nghi&ecirc;m ngặt, bảo đảm c&aacute;c ti&ecirc;u chuẩn xanh - sach, chất lượng v&agrave; an to&agrave;n với người d&ugrave;ng.&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach/xa-lach-bup-mo\">X&agrave; l&aacute;ch mỡ</a>&nbsp;gi&ograve;n, thơm, tươi m&aacute;t n&ecirc;n rất th&iacute;ch hợp l&agrave;m rau ăn k&egrave;m cho c&aacute;c m&oacute;n cuốn.</p>', '<p><a href=\"https://www.bachhoaxanh.com/rau-sach\">Rau</a>&nbsp;x&agrave; l&aacute;ch b&uacute;p mỡ&nbsp;của B&aacute;ch h&oacute;a Xanh được nu&ocirc;i trồng tại L&acirc;m Đồng v&agrave; đ&oacute;ng g&oacute;i theo những ti&ecirc;u chuẩn nghi&ecirc;m ngặt, bảo đảm c&aacute;c ti&ecirc;u chuẩn xanh - sach, chất lượng v&agrave; an to&agrave;n với người d&ugrave;ng.&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach/xa-lach-bup-mo\">X&agrave; l&aacute;ch mỡ</a>&nbsp;gi&ograve;n, thơm, tươi m&aacute;t n&ecirc;n rất th&iacute;ch hợp l&agrave;m rau ăn k&egrave;m cho c&aacute;c m&oacute;n cuốn.</p>', 0, 0, 0, '2023-07-11 01:44:25', 65, 1, '2023-08-13 03:17:39'),
(26, 'Khoai mì làm sạch', 'khoai-mi-lam-sach', 22000, 0, 1, 0, 0, '2023-07-11__khoai-mi-lam-sach-an-lac-goi-300g-202303040903197347.jpg', 0, 0, 1, 0, '<p>Khoai m&igrave; l&agrave; một trong những loại củ được trồng nhiều tại c&aacute;c v&ugrave;ng n&ocirc;ng th&ocirc;n miền n&uacute;i, củ m&igrave; thon d&agrave;i, nhiều tinh bột v&agrave; chế biến được nhiều m&oacute;n như khoai m&igrave; hấp cốt dừa, b&aacute;nh khoai m&igrave;, b&aacute;nh tầm, b&aacute;nh &iacute;t, canh khoai m&igrave;, khoai m&igrave; nướng,...<a href=\"https://www.bachhoaxanh.com/cu/khoai-mi-lam-sach-an-lac-goi-300g\">Khoai m&igrave;</a>&nbsp;được l&agrave;m sạch tiện lợi, dễ sử dụng</p>', '<p>Khoai m&igrave; l&agrave; một trong những loại củ được trồng nhiều tại c&aacute;c v&ugrave;ng n&ocirc;ng th&ocirc;n miền n&uacute;i, củ m&igrave; thon d&agrave;i, nhiều tinh bột v&agrave; chế biến được nhiều m&oacute;n như khoai m&igrave; hấp cốt dừa, b&aacute;nh khoai m&igrave;, b&aacute;nh tầm, b&aacute;nh &iacute;t, canh khoai m&igrave;, khoai m&igrave; nướng,...<a href=\"https://www.bachhoaxanh.com/cu/khoai-mi-lam-sach-an-lac-goi-300g\">Khoai m&igrave;</a>&nbsp;được l&agrave;m sạch tiện lợi, dễ sử dụng</p>', 0, 0, 0, '2023-07-11 01:46:42', 34, 4, '2023-07-11 02:09:47'),
(27, 'Đồ chơi lắp ráp', 'do-choi-lap-rap', 1200000, 0, 1, 0, 5, '2023-08-13__17.jpg', 1, 1, 1, 0, '<p>L&agrave; một loại thực phẩm v&ocirc; c&ugrave;ng quen thuộc, c&oacute; m&agrave;u sắc v&ocirc; c&ugrave;ng bắt mắt, rất dễ mua v&agrave; chế biến th&agrave;nh nhiều m&oacute;n ăn đa dạng kh&aacute;c nhau trong bữa cơm hằng ng&agrave;y.&nbsp;&nbsp;<a href=\"https://www.bachhoaxanh.com/cu/bap-cai-tim-tui-500gr\">Bắp cải t&iacute;m</a>&nbsp;đặc biệt mang đến lợi &iacute;ch trong việc hỗ trợ ph&ograve;ng chống ung thư, gi&uacute;p cơ thể khỏe mạnh to&agrave;n diện.</p>', '<p>L&agrave; một loại thực phẩm v&ocirc; c&ugrave;ng quen thuộc, c&oacute; m&agrave;u sắc v&ocirc; c&ugrave;ng bắt mắt, rất dễ mua v&agrave; chế biến th&agrave;nh nhiều m&oacute;n ăn đa dạng kh&aacute;c nhau trong bữa cơm hằng ng&agrave;y.&nbsp;&nbsp;<a href=\"https://www.bachhoaxanh.com/cu/bap-cai-tim-tui-500gr\">Bắp cải t&iacute;m</a>&nbsp;đặc biệt mang đến lợi &iacute;ch trong việc hỗ trợ ph&ograve;ng chống ung thư, gi&uacute;p cơ thể khỏe mạnh to&agrave;n diện.</p>', 0, 0, 0, '2023-07-11 01:49:16', 89, 1, '2023-08-13 03:13:53'),
(28, 'Xe robot', 'xe-robot', 23000, 0, 3, 0, 0, '2023-08-13__18.jpg', 0, 0, 1, 0, '<p><a href=\"https://www.bachhoaxanh.com/cu/mang-tay-bo\">Măng t&acirc;y</a>&nbsp;được nu&ocirc;i trồng tại L&acirc;m Đồng v&agrave; đ&oacute;ng g&oacute;i theo những ti&ecirc;u chuẩn nghi&ecirc;m ngặt, bảo đảm c&aacute;c ti&ecirc;u chuẩn xanh - sạch, chất lượng v&agrave; an to&agrave;n với người d&ugrave;ng. Măng gi&ograve;n, ngọt, h&agrave;m lượng dinh dưỡng cao n&ecirc;n thường được chế bi&ecirc;n bằng hấp, luộc hoặc nướng để c&oacute; thể giữ được độ tươi ngon.</p>', '<p><a href=\"https://www.bachhoaxanh.com/cu/mang-tay-bo\">Măng t&acirc;y</a>&nbsp;được nu&ocirc;i trồng tại L&acirc;m Đồng v&agrave; đ&oacute;ng g&oacute;i theo những ti&ecirc;u chuẩn nghi&ecirc;m ngặt, bảo đảm c&aacute;c ti&ecirc;u chuẩn xanh - sạch, chất lượng v&agrave; an to&agrave;n với người d&ugrave;ng. Măng gi&ograve;n, ngọt, h&agrave;m lượng dinh dưỡng cao n&ecirc;n thường được chế bi&ecirc;n bằng hấp, luộc hoặc nướng để c&oacute; thể giữ được độ tươi ngon.</p>', 0, 0, 0, '2023-07-11 01:52:13', 122, 1, '2023-08-13 03:15:49'),
(29, 'Robot 12', 'robot-12', 19000, 0, 3, 0, 0, '2023-08-13__14.png', 0, 0, 1, 0, '<p><a href=\"https://www.bachhoaxanh.com/rau-sach/nam-bao-ngu-xam-bich-300g\">Nấm b&agrave;o ngư x&aacute;m</a>&nbsp;được nu&ocirc;i trồng v&agrave; đ&oacute;ng g&oacute;i theo những ti&ecirc;u chuẩn nghi&ecirc;m ngặt, bảo đảm c&aacute;c ti&ecirc;u chuẩn xanh - sạch, chất lượng v&agrave; an to&agrave;n với người d&ugrave;ng. Vị ngọt, nhiều chất dinh dưỡng n&ecirc;n thường được d&ugrave;ng để lăn bột chi&ecirc;n x&ugrave;, nấu s&uacute;p&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach-nam-cac-loai\">nấm</a>&nbsp;hoặc l&agrave;m rau ăn k&egrave;m nh&uacute;ng lẩu.</p>', '<p><a href=\"https://www.bachhoaxanh.com/rau-sach/nam-bao-ngu-xam-bich-300g\">Nấm b&agrave;o ngư x&aacute;m</a>&nbsp;được nu&ocirc;i trồng v&agrave; đ&oacute;ng g&oacute;i theo những ti&ecirc;u chuẩn nghi&ecirc;m ngặt, bảo đảm c&aacute;c ti&ecirc;u chuẩn xanh - sạch, chất lượng v&agrave; an to&agrave;n với người d&ugrave;ng. Vị ngọt, nhiều chất dinh dưỡng n&ecirc;n thường được d&ugrave;ng để lăn bột chi&ecirc;n x&ugrave;, nấu s&uacute;p&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach-nam-cac-loai\">nấm</a>&nbsp;hoặc l&agrave;m rau ăn k&egrave;m nh&uacute;ng lẩu.</p>', 0, 0, 0, '2023-07-11 01:54:15', 109, 1, '2023-08-13 03:14:48'),
(30, 'Robot thông minh', 'robot-thong-minh', 15000, 0, 3, 0, 0, '2023-08-13__7.jpg', 0, 1, 1, 0, '<p><a href=\"https://www.bachhoaxanh.com/rau-sach\">Nấm</a>&nbsp;b&agrave;o ngư trắng g&oacute;i 300g l&agrave; một lọai nấm thơm ngon, dễ ăn, được rất nhiều người ưa chuộng.&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach/nam-bao-ngu-trang-bich-300g\">Nấm b&agrave;o ngư trắng</a>&nbsp;l&agrave; một nguy&ecirc;n liệu quen thuộc cho c&aacute;c bữa cơm trong gia đ&igrave;nh với nhiều m&oacute;n ăn ngon như nấm b&agrave;o ngư x&agrave;o sả ớt, nấm b&agrave;o ngư x&agrave;o thịt,...</p>', '<p><a href=\"https://www.bachhoaxanh.com/rau-sach\">Nấm</a>&nbsp;b&agrave;o ngư trắng g&oacute;i 300g l&agrave; một lọai nấm thơm ngon, dễ ăn, được rất nhiều người ưa chuộng.&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach/nam-bao-ngu-trang-bich-300g\">Nấm b&agrave;o ngư trắng</a>&nbsp;l&agrave; một nguy&ecirc;n liệu quen thuộc cho c&aacute;c bữa cơm trong gia đ&igrave;nh với nhiều m&oacute;n ăn ngon như nấm b&agrave;o ngư x&agrave;o sả ớt, nấm b&agrave;o ngư x&agrave;o thịt,...</p>', 0, 0, 0, '2023-07-11 01:55:59', 52, 3, '2023-08-13 03:02:07'),
(31, 'Điều khiển từ xa', 'dieu-khien-tu-xa', 23000, 0, 3, 0, 0, '2023-08-13__8.png', 3, 1, 1, 0, '<p><a href=\"https://www.bachhoaxanh.com/rau-sach/nam-notaly-vi-200g\">Nấm Notaly</a>&nbsp;rất được c&aacute;c chị em nội trợ ưa chuộng bởi v&igrave;&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach-nam-cac-loai\">nấm</a>&nbsp;tuy nhỏ nhưng c&oacute; vị ngọt tự nhi&ecirc;n v&ocirc; c&ugrave;ng ngon, nấm c&ograve;n chứa nhiều acid amin glutamate, b&ecirc;n cạnh đ&oacute; nấm c&ograve;n chứa nhiều chất xơ v&agrave; gi&ograve;n, ăn đ&atilde; miệng v&ocirc; c&ugrave;ng. Nấm Notaly x&agrave;o với thịt hay ăn c&ugrave;ng lẩu đảm bảo thơm ngon kh&oacute; cưỡng</p>', '<p><a href=\"https://www.bachhoaxanh.com/rau-sach/nam-notaly-vi-200g\">Nấm Notaly</a>&nbsp;rất được c&aacute;c chị em nội trợ ưa chuộng bởi v&igrave;&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach-nam-cac-loai\">nấm</a>&nbsp;tuy nhỏ nhưng c&oacute; vị ngọt tự nhi&ecirc;n v&ocirc; c&ugrave;ng ngon, nấm c&ograve;n chứa nhiều acid amin glutamate, b&ecirc;n cạnh đ&oacute; nấm c&ograve;n chứa nhiều chất xơ v&agrave; gi&ograve;n, ăn đ&atilde; miệng v&ocirc; c&ugrave;ng. Nấm Notaly x&agrave;o với thịt hay ăn c&ugrave;ng lẩu đảm bảo thơm ngon kh&oacute; cưỡng</p>', 1, 2, 2, '2023-07-11 01:57:31', 45, 2, '2023-08-13 02:59:29'),
(32, 'Robot cảm biến', 'robot-cam-bien', 18000, 0, 4, 0, 0, '2023-08-13__9.jpeg', 0, 0, 1, 0, '<p>Ng&ograve; r&iacute; l&agrave; loại&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach\">rau</a>&nbsp;n&ecirc;m c&oacute; nhiều c&ocirc;ng dụng tuyệt vời trong lĩnh vực nấu nướng, l&agrave;m đẹp v&agrave; sức khỏe con người.&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach/ngo-ri-goi-100g\">Ng&ograve; r&iacute;</a>&nbsp;tại B&aacute;ch ho&aacute; XANH l&agrave; một trong những nguy&ecirc;n liệu tươi ngon v&agrave; kh&ocirc;ng thể thiếu trong việc l&agrave;m tăng hương vị của m&oacute;n ăn.</p>', '<h3><strong>Ưu điểm khi mua ng&ograve; r&iacute; tại B&aacute;ch ho&aacute; XANH</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Ng&ograve; gai tươi xanh, rau ngon</strong>. Rau ng&ograve; gai c&oacute; m&ugrave;i thơm, tươi ngon.</li>\r\n	<li>Rau được đảm bảo nguồn gốc xuất xứ r&otilde; r&agrave;ng, được đ&oacute;ng t&uacute;i kh&iacute; khi giao để đảm bảo rau kh&ocirc;ng bị dập khi tới tay kh&aacute;ch h&agrave;ng.</li>\r\n	<li>Đặt giao h&agrave;ng nhanh.</li>\r\n</ul>', 0, 0, 0, '2023-07-11 02:01:33', 68, 7, '2023-08-13 03:01:57'),
(33, 'Robot điều khiển', 'robot-dieu-khien', 2000000, 0, 4, 0, 0, '2023-08-13__6.jpg', 1, 1, 1, 0, '<p>H&agrave;nh t&iacute;m l&agrave; loại củ gia vị quen thuộc trong mỗi gia đ&igrave;nh, h&agrave;ng qu&aacute;n gi&uacute;p gia tăng hương vị cho c&aacute;c m&oacute;n ăn như l&agrave;m h&agrave;nh phi, x&agrave;o, h&agrave;nh ng&acirc;m chua,..hoặc d&ugrave;ng ướp k&egrave;m c&aacute;c loại thịt c&aacute;.&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach/hanh-tim-xay-an-lac-hu-50g\">H&agrave;nh t&iacute;m xay hũ </a>&nbsp; tiện lợi, đảm bảo sạch sẽ với hũ nắp đậy, dễ bảo quản</p>', '<p>H&agrave;nh t&iacute;m l&agrave; loại củ gia vị quen thuộc trong mỗi gia đ&igrave;nh, h&agrave;ng qu&aacute;n gi&uacute;p gia tăng hương vị cho c&aacute;c m&oacute;n ăn như l&agrave;m h&agrave;nh phi, x&agrave;o, h&agrave;nh ng&acirc;m chua,..hoặc d&ugrave;ng ướp k&egrave;m c&aacute;c loại thịt c&aacute;.&nbsp;<a href=\"https://www.bachhoaxanh.com/rau-sach/hanh-tim-xay-an-lac-hu-50g\">H&agrave;nh t&iacute;m xay hũ </a>&nbsp; tiện lợi, đảm bảo sạch sẽ với hũ nắp đậy, dễ bảo quản</p>', 1, 5, 5, '2023-07-11 02:05:04', 111, 4, '2023-08-13 02:56:30'),
(37, 'Robot bay', 'robot-bay', 76000, 0, 11, 0, 0, '2023-08-13__5.jpg', 0, 1, 1, 0, '<p>Kem Cam V&agrave; Hạt S&ocirc;c&ocirc;la Hữu Cơ OOB Organic 120ml</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&agrave;nh phần:&nbsp;</p>\r\n\r\n<p>Sữa nguy&ecirc;n chất hữu cơ</p>\r\n\r\n<p>Kem hữu cơ hoặc kem t&aacute;i tạo hữu cơ</p>\r\n\r\n<p>S&ocirc;c&ocirc;la hạt hữu cơ (7%): Cocoa mass hữu cơ, đường m&iacute;a hữu cơ, chất nhũ h&oacute;a, bơ cocoa hữu cơ</p>\r\n\r\n<p>Nước</p>\r\n\r\n<p>Sữa bột kh&ocirc;ng kem hữu cơ</p>\r\n\r\n<p>Siro glucose hữu cơ</p>\r\n\r\n<p>Dầu hoa hướng dương hữu cơ&nbsp;</p>\r\n\r\n<p>&nbsp;Chất nhũ h&oacute;a</p>\r\n\r\n<p>Bột cam tự nhi&ecirc;n</p>\r\n\r\n<p>Chất ổn định: Đậu locust hữu cơ, g&ocirc;m gua hữu cơ</p>', '<p>Th&agrave;nh phần:&nbsp;</p>\r\n\r\n<p>Sữa nguy&ecirc;n chất hữu cơ</p>\r\n\r\n<p>Kem hữu cơ hoặc kem t&aacute;i tạo hữu cơ</p>\r\n\r\n<p>S&ocirc;c&ocirc;la hạt hữu cơ (7%): Cocoa mass hữu cơ, đường m&iacute;a hữu cơ, chất nhũ h&oacute;a, bơ cocoa hữu cơ</p>\r\n\r\n<p>Nước</p>\r\n\r\n<p>Sữa bột kh&ocirc;ng kem hữu cơ</p>\r\n\r\n<p>Siro glucose hữu cơ</p>\r\n\r\n<p>Dầu hoa hướng dương hữu cơ&nbsp;</p>\r\n\r\n<p>&nbsp;Chất nhũ h&oacute;a</p>\r\n\r\n<p>Bột cam tự nhi&ecirc;n</p>\r\n\r\n<p>Chất ổn định: Đậu locust hữu cơ, g&ocirc;m gua hữu cơ</p>', 0, 0, 0, '2023-07-11 19:42:45', 98, 4, '2023-08-13 02:54:21'),
(38, 'Robot chó săn', 'robot-cho-san', 198000, 0, 16, 0, 0, '2023-08-13__4.jpg', 0, 0, 1, 0, '<p>Th&ocirc;ng tin sản phẩm đang được cập nhật</p>', '<p>Th&ocirc;ng tin sản phẩm đang được cập nhật</p>', 0, 0, 0, '2023-07-11 19:47:56', 231, 5, '2023-08-13 02:52:54'),
(39, 'Máy bay lắp ghép', 'may-bay-lap-ghep', 165000, 0, 16, 0, 0, '2023-08-13__2.jpg', 0, 1, 1, 0, '<p>Thịt bắp heo r&uacute;t xương hữu cơ l&agrave; loại thực phẩm chứa h&agrave;m lượng protein v&agrave; vitamin, kho&aacute;ng chất cao. Loại thực phẩm tuyệt vời v&agrave; phổ biến trong thực đơn h&agrave;ng ng&agrave;y. &nbsp;&nbsp;</p>', '<p>Thịt Heo Hữu Cơ tại Organicfood.vn l&agrave; loại thịt heo đ&aacute;p ứng c&aacute;c ti&ecirc;u chuẩn khắt khe của Hiệp hội hữu cơ Canada, bởi quy tr&igrave;nh chăn nu&ocirc;i kh&eacute;p k&iacute;n từ thức ăn, chăn nu&ocirc;i chọn lọc, đến giết mổ v&agrave; vận chuyển. &nbsp;&nbsp;</p>\r\n\r\n<p>Thịt Heo Hữu Cơ kh&ocirc;ng sử dụng chất tạo nạc, kh&ocirc;ng chất kh&aacute;ng sinh, kh&ocirc;ng chất bảo quản v&agrave; kh&ocirc;ng kim loại nặng.</p>', 0, 0, 0, '2023-07-11 19:52:19', 123, 6, '2023-08-13 02:51:05'),
(40, 'Oto robot', 'oto-robot', 114000, 0, 16, 0, 0, '2023-08-13__1.jpg', 0, 1, 1, 0, '<p>Cật heo hữu cơ (thận heo) l&agrave; một cơ quan trong hệ tiết niệu của heo, c&oacute; hai quả, mang nhiều chức năng. Ch&uacute;ng l&agrave; một bộ phận quan, duy tr&igrave; sự ổn định của bazo, cật heo đ&oacute;ng vai tr&ograve; l&agrave; bộ lọc m&aacute;u tự nhi&ecirc;n trong cơ thể heo, v&agrave; c&aacute;c chất thải theo niệu quản được dẫn đến bang quang để thải ra ngo&agrave;i. Cật heo hữu cơ c&oacute; vị mặn, c&oacute; chứa nhiều th&agrave;nh phần dinh dưỡng như đạm, chất b&eacute;o v&agrave; c&aacute;c vitamin, c&ocirc;ng dụng bồi bổ sức khỏe v&agrave; hỗ trợ nhiều chứng bệnh kh&aacute;c nhau như đau lưng, mỏi gối,&hellip; đặc biệt những người đ&aacute;i th&aacute;o đường ăn cật heo rất tốt. Ngo&agrave;i ra, bệnh nh&acirc;n khi mắc bệnh sỏi thận c&oacute; thể d&ugrave;ng cật heo để khống chế bệnh. Cật heo được d&ugrave;ng phổ biến trong c&aacute;c m&oacute;n ăn thường ng&agrave;y, đem đến nguồn dưỡng chất cần thiết cho người ti&ecirc;u d&ugrave;ng.</p>', '<p>&nbsp;Cật heo hữu cơ c&oacute; vị mặn, c&oacute; chứa nhiều th&agrave;nh phần dinh dưỡng như đạm, chất b&eacute;o v&agrave; c&aacute;c vitamin, c&ocirc;ng dụng bồi bổ sức khỏe v&agrave; hỗ trợ nhiều chứng bệnh kh&aacute;c nhau như đau lưng, mỏi gối,&hellip; đặc biệt những người đ&aacute;i th&aacute;o đường ăn cật heo rất tốt.&nbsp;</p>', 0, 0, 0, '2023-07-11 19:56:34', 167, 5, '2023-08-13 02:50:00'),
(41, 'Combo robot biến hình', 'combo-robot-bien-hinh', 892000, 0, 16, 0, 10, '2023-08-13__o-to-bien-hinh-robot-transformer-2-1024x934.jpg', 0, 1, 1, 0, '<p>Combo Bao gồm:&nbsp;</p>\r\n\r\n<p>0.5kg nạc dăm hữu cơ&nbsp;</p>\r\n\r\n<p>0.5kg nạc xay hữu cơ&nbsp;</p>\r\n\r\n<p>0.5kg xương ống hữu cơ&nbsp;</p>\r\n\r\n<p>0.5kg chả lụa hữu cơ 250g ch&agrave; b&ocirc;ng</p>', '<p>Gi&aacute; c&oacute; thể ch&ecirc;nh lệch v&igrave; c&acirc;n nặng sản phẩm</p>', 0, 0, 0, '2023-07-11 20:01:23', 320, 4, '2023-08-13 02:45:08'),
(42, 'Đàn piano ốc sên', 'dan-piano-oc-sen', 294000, 0, 17, 0, 0, '2023-08-13__dc-dan-piano-oc-sen-223-208-104710-1-1.jpg', 0, 1, 1, 0, '<p>B&agrave;o Ngư đ&ocirc;ng lạnh nhập khẩu l&agrave; d&ograve;ng sản phẩm thủy hải sản cao cấp.</p>', '<p>Th&ocirc;ng tin sản phẩm đang được cập nhật</p>', 0, 0, 0, '2023-07-11 20:05:35', 129, 4, '2023-08-13 02:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(153, 11, 1),
(154, 11, 2),
(155, 11, 3),
(157, 9, 1),
(158, 9, 2),
(159, 9, 3),
(160, 8, 1),
(161, 8, 2),
(162, 6, 1),
(163, 6, 2),
(164, 6, 3),
(165, 6, 4),
(166, 6, 5),
(167, 5, 6),
(168, 5, 7),
(172, 2, 6),
(175, 1, 1),
(182, 7, 2),
(189, 12, 5),
(190, 12, 6),
(191, 13, 5),
(192, 13, 7),
(195, 14, 5),
(196, 14, 8),
(197, 15, 1),
(198, 15, 6),
(208, 10, 4),
(209, 10, 5),
(210, 10, 6),
(230, 24, 4),
(231, 24, 7),
(251, 26, 5),
(252, 26, 6),
(253, 34, 4),
(254, 34, 7),
(255, 35, 4),
(256, 35, 7),
(257, 36, 4),
(258, 36, 7),
(274, 43, 5),
(275, 43, 6),
(276, 44, 5),
(277, 44, 6),
(278, 45, 1),
(279, 45, 6),
(280, 46, 1),
(281, 46, 6),
(292, 42, 5),
(293, 42, 6),
(294, 41, 3),
(295, 41, 7),
(296, 41, 8),
(297, 40, 5),
(298, 40, 6),
(299, 39, 2),
(300, 39, 6),
(301, 39, 7),
(305, 38, 1),
(306, 38, 6),
(307, 38, 7),
(308, 37, 4),
(309, 37, 7),
(310, 33, 4),
(311, 30, 5),
(312, 30, 6),
(313, 31, 4),
(314, 31, 6),
(315, 32, 4),
(316, 32, 6),
(317, 4, 1),
(318, 22, 1),
(319, 22, 7),
(320, 21, 1),
(321, 21, 3),
(322, 21, 7),
(323, 21, 8),
(324, 20, 1),
(325, 20, 2),
(326, 20, 7),
(327, 20, 8),
(328, 19, 1),
(329, 19, 3),
(330, 19, 7),
(331, 19, 8),
(332, 18, 1),
(333, 18, 3),
(334, 18, 8),
(335, 17, 1),
(336, 17, 2),
(337, 17, 7),
(338, 17, 8),
(339, 27, 1),
(340, 27, 6),
(341, 29, 5),
(342, 29, 6),
(343, 28, 4),
(344, 28, 6),
(345, 25, 5),
(346, 25, 6),
(347, 16, 5),
(348, 16, 6),
(349, 23, 4),
(350, 23, 6),
(351, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(63, 11, 1),
(64, 11, 2),
(65, 11, 3),
(72, 9, 1),
(73, 9, 3),
(74, 9, 6),
(75, 8, 3),
(76, 8, 5),
(77, 8, 6),
(81, 6, 3),
(82, 5, 3),
(83, 5, 4),
(84, 5, 5),
(106, 7, 3),
(107, 7, 4),
(108, 7, 5),
(115, 12, 5),
(116, 12, 8),
(117, 13, 2),
(119, 14, 8),
(120, 15, 2),
(121, 15, 4),
(127, 10, 2),
(128, 10, 6),
(129, 10, 7),
(144, 24, 4),
(145, 24, 7),
(162, 26, 2),
(163, 26, 5),
(164, 34, 5),
(165, 35, 5),
(166, 36, 5),
(178, 43, 1),
(179, 43, 5),
(183, 45, 1),
(184, 45, 5),
(185, 46, 1),
(186, 2, 1),
(187, 2, 3),
(188, 1, 1),
(192, 44, 3),
(193, 44, 4),
(194, 44, 5),
(204, 42, 1),
(205, 42, 5),
(206, 41, 1),
(207, 41, 5),
(208, 40, 1),
(209, 40, 3),
(210, 39, 1),
(211, 39, 4),
(214, 38, 1),
(215, 38, 3),
(216, 37, 5),
(217, 30, 5),
(218, 30, 6),
(219, 31, 2),
(220, 31, 3),
(221, 31, 5),
(222, 32, 1),
(223, 32, 2),
(224, 4, 3),
(225, 22, 4),
(226, 22, 5),
(227, 21, 4),
(228, 21, 5),
(229, 21, 6),
(230, 20, 3),
(231, 20, 4),
(232, 20, 5),
(233, 19, 3),
(234, 19, 5),
(235, 18, 4),
(236, 18, 5),
(237, 17, 6),
(238, 27, 2),
(239, 27, 6),
(240, 27, 7),
(241, 29, 7),
(242, 28, 7),
(243, 16, 1),
(244, 23, 1),
(245, 23, 7),
(246, 3, 1),
(247, 3, 2),
(248, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(3, 37, 11, 2, 0, 'Sản phẩm rất tốt', '2023-07-01 14:53:54', '2023-07-01 14:53:54'),
(4, 38, 12, 5, 0, 'Sản phẩm rất tuyệt', '2023-07-01 14:53:54', '2023-07-01 14:53:54'),
(9, 45, 10, 5, 0, NULL, '2023-07-11 00:39:19', '2023-07-11 00:39:19'),
(10, 46, 20, 5, 0, 'ngon ngot', '2023-07-11 02:07:16', '2023-07-11 02:07:16'),
(11, 46, 18, 4, 0, NULL, '2023-07-11 02:07:50', '2023-07-11 02:07:50'),
(12, 46, 16, 3, 0, NULL, '2023-07-11 02:08:08', '2023-07-11 02:08:08'),
(13, 46, 33, 5, 0, NULL, '2023-07-11 02:08:40', '2023-07-11 02:08:40'),
(14, 46, 31, 2, 0, NULL, '2023-07-11 02:08:57', '2023-07-11 02:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'slide 1', '/', '2020-11-20__giai-phap-mo-cua-hang-thuc-pham-sach.jpg', 1, 1, 1, '2023-07-04 16:48:00', '2022-07-05 14:33:19'),
(2, 'slide 2', '/', '2020-11-20__vi-sao-mo-cua-hang-kinh-doanh-thuc-pham-sach-chua-hieu-qua-2-min.jpg', 1, 1, 0, '2023-07-02 16:48:00', '2023-07-02 16:48:00'),
(3, 'slide 5', '/', '2020-11-20__organic-food.jpg', 1, 1, 0, '2023-07-02 16:48:00', '2023-07-02 16:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<p>Khi mua h&agrave;ng bạn k&iacute;ch chọn size sản phẩm</p>\r\n\r\n<p>Tiếp theo đ&oacute; k&iacute;ch v&agrave;o mua ngay&nbsp;</p>', '2023-07-02 16:48:17', '2023-07-02 16:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tst_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_code`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(17, 46, 38950, 'thu thao', 'wdE6nwvoa0HAMVe', 'thao@email.com', '0396843730', '30 cầu giấy hà nội', 'số 7', 1, 1, '2023-07-11 04:33:15', NULL),
(18, 46, 38950, 'thu thao', 'GRg91Khy43GO8dh', 'thao@email.com', '0396843730', '30 cầu giấy hà nội', NULL, 2, 1, '2023-07-12 02:50:09', '2023-07-24 07:20:18'),
(19, 46, 77900, 'thu thao', '3h0K9fdVyiYidXC', 'thao@email.com', '0396843730', '30 cầu giấy hà nội', 'ok', 2, 1, '2023-07-12 04:33:46', '2023-07-24 07:20:09'),
(20, 48, 279000, 'phuongthao8', 'SHIqIVevcGQkRZu', 'thao405@email.com', '8767867676', 'jj', NULL, 1, 1, '2023-07-30 21:11:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `t_name`, `t_slug`, `created_at`, `updated_at`) VALUES
(1, 'Khối lượng', 'khoi-luong', '2023-07-02 16:48:00', '2023-07-02 16:48:00'),
(2, 'Đơn vị', 'don-vi', '2023-07-02 16:48:00', '2023-07-02 16:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `google_id`, `facebook_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(45, 'phuongthao', 'email@email.com', NULL, '$2y$10$cRkxNseQDAcWJ4jTSp6Kv.4ltTt1zopPZRZnGNUMdobToCVw1pSce', '123456789', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"114.0.0.0\",\"time\":\"2023-07-11T07:38:39.472211Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"115.0.0.0\",\"time\":\"2023-07-24T16:08:26.633303Z\"}]', 0, NULL, NULL, NULL, NULL, NULL, '2023-07-10 23:53:12', NULL),
(46, 'thu thao', 'thao@email.com', NULL, '$2y$10$oHSzCIsFnY1T3kRcrlkioeVKTmN127MqW5adMJkBtR6xUxWy4cTzO', '0396843730', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"114.0.0.0\",\"time\":\"2023-07-12T09:49:53.605190Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"114.0.0.0\",\"time\":\"2023-07-12T09:55:45.849297Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"115.0.0.0\",\"time\":\"2023-07-26T12:12:59.404867Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"115.0.0.0\",\"time\":\"2023-08-02T10:19:05.426358Z\"}]', 0, NULL, NULL, NULL, NULL, NULL, '2023-07-11 00:43:51', NULL),
(47, 'tt', 'rt@gmail.com', NULL, '$2y$10$hrauSCIB2agfvBveddNHc.asnymcWS5WPa9Rb9P1hcsR21meLT1F2', '0987655344', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-07-12 04:35:17', NULL),
(48, 'phuongthao8', 'thao405@email.com', NULL, '$2y$10$.cX25n.EskgFamfwTaq/ceXc2IMAjWJ2/AtkifrtIqMmy0CZbjZKK', '8767867676', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-07-30 21:11:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(4, 5, 44),
(5, 10, 45);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_type_id_index` (`atb_type_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producer_pdr_slug_unique` (`pdr_slug`),
  ADD UNIQUE KEY `producer_pdr_email_unique` (`pdr_email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_t_name_unique` (`t_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `types`
--
ALTER TABLE `types`
  ADD CONSTRAINT `types_ibfk_1` FOREIGN KEY (`id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
