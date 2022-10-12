-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 05:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flower_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminId` int(10) NOT NULL,
  `adminName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AdminPass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminId`, `adminName`, `adminEmail`, `adminUser`, `AdminPass`, `Level`) VALUES
(0, 'minh', 'minh@mail.com', 'minhadmin', 'admin', 2),
(1, 'minh', 'minh@mail.com', 'minhadmin', 'admin', 0),
(1, 'minh', 'minh@mail.com', 'minhadmin', 'admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ngày Sinh Nhật', '2022-02-12 08:26:34', '2022-02-12 08:26:34'),
(2, 'Hoa Chúc Mừng', '2022-02-12 08:26:34', '2022-02-12 08:26:34'),
(3, 'Lễ Tình Nhân', '2022-02-12 08:26:34', '2022-02-12 08:26:34'),
(4, 'Quốc Tế Phụ Nữ', '2022-02-12 08:26:34', '2022-02-12 08:26:34'),
(5, 'Nhà Giáo Việt Nam', '2022-02-12 08:26:34', '2022-02-12 08:26:34'),
(6, 'Bán Chạy Nhất', '2022-02-12 08:26:34', '2022-02-12 08:26:34'),
(7, 'Hộp Hoa Độc Đáo', '2022-02-12 08:26:34', '2022-02-12 08:26:34'),
(8, 'Giỏ Hoa Thanh Lịch', '2022-02-12 08:26:34', '2022-02-12 08:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id_orderDetails` int(11) NOT NULL,
  `id_order` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `id_category`, `title`, `price`, `content`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 6, 'Beautiful You', 519000, 'Bó hoa hồng đỏ đơn giản được gói rất trẻ trung và thanh lịch là một trong những mẫu Best Seller của chúng tôi.\r\n</br>\r\nLà lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Hồng Beautiful You gồm:\r\n</br>\r\n- 12 bông Hoa Hồng đỏ\r\n</br>\r\n- Các loại hoa & lá khác', 'BeautifulYou6.png', '2022-02-12 08:31:56', '2022-02-12 08:31:56'),
(2, 6, 'Pretty Glory', 849000, 'Hộp hoa gỗ hoành tráng với sự góp mặt của đồng tiền và hướng dương - những loài hoa mang ý nghĩa vô cùng tốt lành để bạn gửi tặng trong bất kỳ dịp quan trọng nào. \r\n</br>\r\nHộp Hoa Pretty Glory gồm:\r\n</br>\r\n- 15 Bông Hướng Dương\r\n</br>\r\n- 10 Bông Đồng Tiền\r\n</br>\r\n- Hoa Lan cùng các loại hoa và lá khác', 'PrettyGlory.png', '2022-02-12 08:31:56', '2022-02-12 08:31:56'),
(3, 6, 'Under The Blue Sky', 199000, 'Bó hoa ngọt ngào và thanh khiết với hoa Cẩm Tú Cầu được gói xinh xắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Under The Blue Sky gồm:\r\n</br>\r\n- 02 bông Cẩm Tú Cầu\r\n</br>\r\n- Hoa Cúc\r\n</br>\r\n- Các loại hoa và lá khác', 'UnderTheBlueSky.png', '2022-02-12 08:31:56', '2022-02-12 08:31:56'),
(4, 6, 'Mon Bel Amour', 349000, 'Bó Hoa Mon Bel Amour mang gam màu hồng đầy trang nhã và duyên dáng của hoa hồng với sự kết hợp của màu xanh lá tai lừa và màu tím của hoa sao. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Mon Bel Amour bao gồm:\r\n</br>\r\n- 10 Bông Hoa Hồng\r\n</br>\r\n- Cành Tai Lừa & Các loại Hoa và Lá khác', 'MonBelAmour.png', '2022-02-12 08:31:56', '2022-02-12 08:31:56'),
(5, 6, 'Pink Moon', 499000, 'Bó hoa là sự kết hợp giữa màu sắc hồng pastel trang nhã và thanh lịch.\r\n</br>\r\nĐây sẽ là món quà xinh xắn để dành tặng người bạn yêu thương.\r\n</br>\r\nBó Hoa Pink Moon gồm:\r\n</br>\r\n- 12 Bông Hoa Hồng\r\n</br>\r\n- Hoa Cúc Tana\r\n</br>\r\n- Các loại hoa & lá khác', 'PinkMoon.png', '2022-02-12 08:31:56', '2022-02-12 08:31:56'),
(6, 6, 'Sunny Smile', 249000, 'Bó hoa được gói đẹp mắt và hiện đại với sự kết hợp của Hướng Dương và Salem tím xinh xắn là lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Sunny Smile gồm:\r\n</br>\r\n- 03 bông Hướng Dương\r\n</br>\r\n- Các loại hoa & lá khác', 'SunnySmile.png', '2022-02-12 08:31:56', '2022-02-12 08:31:56'),
(7, 6, 'Mindful Soul', 349000, 'Bó hoa nhỏ nhắn đáng yêu với hoa Hướng Dương cùng Cẩm Tú Cầu được gói xinh xắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Mindful Soul gồm:\r\n</br>\r\n- 03 bông Hướng Dương\r\n</br>\r\n- 03 bông Cẩm Tú Cầu\r\n</br>\r\n- Các loại hoa và lá khác', 'MindfulSoul.png', '2022-02-12 08:31:56', '2022-02-12 08:31:56'),
(8, 6, 'Young And Beautiful', 449000, 'Bó hoa Baby trắng mang vẻ nhẹ nhàng và trong sáng sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.', 'YoungBeautiful.png', '2022-02-12 08:31:56', '2022-02-12 08:31:56'),
(9, 6, 'Carla', 599000, 'Bó hoa thanh lịch và độc đáo gồm Cẩm chướng 2 màu, Violet và Cúc hồng. Lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Cẩm Chướng Carla gồm:\r\n</br>\r\n- 8 bông Cúc\r\n</br>\r\n- 15 bông Cầm Chướng\r\n</br>\r\n- Các loại Hoa và Lá khác', 'Carla.png', '2022-02-12 08:31:56', '2022-02-12 08:31:56'),
(10, 6, 'Tana Pure Joy', 299000, 'Bó hoa nhẹ nhàng và thanh khiết với hoa Cúc Tana được gói xinh xắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.', 'TanaPureJoy.png', '2022-02-12 08:31:56', '2022-02-12 08:31:56'),
(11, 6, 'Joyful Life', 249000, 'Bó hoa rực rỡ và tươi tắn với hoa Hướng Dương được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\n Bó Hoa Joyful Life gồm:\r\n</br>\r\n - 06 bông Hoa Hướng Dương\r\n</br>\r\n- Các loại hoa và lá khác', 'JoyfulLife.png', '2022-02-12 08:59:11', '2022-02-12 08:59:11'),
(12, 6, 'Green Garden', 349000, 'Bó hoa mộc mạc và lạ mắt với hoa Hướng Dương rực rỡ. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Green Garden gồm:\r\n</br>\r\n- 9 bông Hoa Hướng Dương\r\n</br>\r\n- Các loại hoa và lá khác', 'GreenGarden.png', '2022-02-12 08:59:11', '2022-02-12 08:59:11'),
(13, 6, 'Ecuador Red Romance', 499000, 'Bó hoa Hồng đỏ Ecuador nồng nàn sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Ecuador Red Romance gồm:\r\n</br>\r\n- 2 bông hoa Hồng Ecuador\r\n</br>\r\n- 12 bông Hoa Hồng', 'EcuadorRedRomance.png', '2022-02-12 08:59:11', '2022-02-12 08:59:11'),
(14, 6, 'Sway Into Love', 449000, 'Bó hoa sang trọng và thanh lịch với các loại hoa Hồng được gói xinh xắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Sway Into Love gồm:\r\n</br>\r\n- 10 bông Hoa Hồng\r\n</br>\r\n- 04 bông Cẩm Chướng\r\n</br>\r\n- Các loại hoa và lá khác', 'SwayIntoLove.png', '2022-02-12 08:59:11', '2022-02-12 08:59:11'),
(15, 6, 'When We Touch', 749000, 'Bó hoa Hồng với gam màu nhã nhặn, thanh lịch và đầy nữ tính sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. \r\n</br>\r\nBó Hoa When We Touch gồm:\r\n</br>\r\n- 20 bông Hoa Hồng\r\n</br>\r\n- Hoa Bibi\r\n</br>\r\n- Các loại Hoa và Lá khác', 'WhenWeTouch.png', '2022-02-12 08:59:11', '2022-02-12 08:59:11'),
(16, 6, 'Oralie', 249000, 'Bó hoa mang màu đỏ lãng mạn là một trong lựa chọn hoàn hảo cho những dịp đặc biệt để dành tặng cho người mình yêu thương.\r\n</br>\r\nBó Hoa Oralie gồm:\r\n</br>\r\n- 9 Bông Hồng Đỏ\r\n</br>\r\n- Các loại lá khác', 'Oralie.png', '2022-02-12 08:59:11', '2022-02-12 08:59:11'),
(17, 6, 'Gorgeous You', 499000, 'Bó hoa hồng đỏ được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp quan trọng như ngày hẹn hò, ngày Valentine, Sinh nhật,.....\r\n</br>\r\nBó Hoa Hồng Gorgeous You gồm:\r\n</br>\r\n- 12 bông Hoa Hồng đỏ\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại hoa & lá khác ', 'GorgeousYou.png', '2022-02-12 08:59:11', '2022-02-12 08:59:11'),
(18, 6, 'Fabulously Red', 599000, 'Bó hoa sang trọng và thanh khiết với hoa Hồng đỏ được gói xinh xắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. \r\n</br>\r\nBó Hoa Fabulously Red gồm:\r\n</br>\r\n- 12 bông Hoa Hồng\r\n</br>\r\n- 06 bông Cẩm Chướng\r\n</br>\r\n- Các loại hoa và lá khác', 'FabulouslyRed.png', '2022-02-12 08:59:11', '2022-02-12 08:59:11'),
(19, 6, 'Combo Floralpunk Thank you', 1199000, 'Combo Thanks Mom là sự kết hợp giữa Flowerstore và Floralpunk - nhãn hàng về thời trang và phụ kiện hàng đầu Việt Nam, sở hữu các sản phẩm đề cao sự tinh tế, sang trọng.\r\n</br>\r\nĐây chắc chắn sẽ là món quà hoàn hảo cho bất kỳ dịp quan trọng nào, đặc biệt là khi được gửi kèm lời yêu thương và sự quan tâm của bạn.\r\n</br>\r\nCombo Thank You bao gồm:\r\n</br>\r\n- Dây chuyền Evelyn Necklace (Floralpunk)\r\n</br>\r\nChất liệu: Kim loại mạ bạc 925.\r\n</br>\r\nKèm theo: Hạt ngọc trai.\r\n</br>\r\n- Bó hoa Carla (8 bông cúc; 15 bông cẩm chướng cùng các loại hoa & lá khác)', 'ComboFloralpunk.png', '2022-02-12 08:59:11', '2022-02-12 08:59:11'),
(20, 6, 'Glenda', 749000, 'Bó hoa được gói theo phong cách Hàn Quốc, mang màu cam vàng nhẹ nhàng và thanh nhã, là một trong lựa chọn hoàn hảo cho những dịp đặc biệt để dành tặng cho người mình yêu thương.\r\n</br>\r\nBó Hoa Glenda gồm:\r\n</br>\r\n- 6 Bông Hồng David\r\n</br>\r\n- Cúc Tana\r\n</br>\r\n- Các loại hoa & lá khác', 'Glenda.png', '2022-02-12 08:59:11', '2022-02-12 08:59:11'),
(21, 7, 'City Of Stars', 599000, 'Hộp hoa bằng gỗ kết hợp các loại hoa tươi như hoa Hồng tím, Cẩm Chướng và Cúc tím đầy trang nhã, lãng mạn sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nHộp Hoa Gỗ City Of Stars bao gồm:\r\n</br>\r\n- 8 bông Hoa Hồng\r\n</br>\r\n- 3 bông Cát Tường\r\n</br>\r\n- 4 Hoa Cúc tím\r\n</br>\r\n- Các loại Hoa và Lá khác', 'CityOfStars.png', '2022-02-12 09:12:06', '2022-02-12 09:12:06'),
(22, 7, 'Coral Pink', 599000, 'Các loại hoa tông màu hồng pastel kết hợp với hộp hoa gỗ vintage là món quà xinh xắn cho bất kỳ ai bạn yêu mến. \r\n</br>\r\nHộp Hoa Coral Pink gồm:\r\n</br>\r\n- 18 Bông Hoa Hồng\r\n</br>\r\n- Hoa Cúc Tana\r\n</br>\r\n- Các loại hoa và lá khác', 'CoralPink.png', '2022-02-12 09:12:06', '2022-02-12 09:12:06'),
(23, 7, 'Have A Sweet Day', 549000, 'Hộp hoa bằng gỗ màu xanh da trời kết hợp các loại hoa tươi như hoa Hồng, Cát Tường và Cúc trắng đầy thanh lịch và ngọt ngào sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nHộp Hoa Hồng Have A Sweet Day bao gồm:\r\n</br>\r\n- 10 bông Hoa Hồng\r\n</br>\r\n- 5 Hoa Cát Tường\r\n</br>\r\n- Các loại Hoa và Lá khác', 'HaveASweetDay.png', '2022-02-12 09:12:06', '2022-02-12 09:12:06'),
(24, 7, 'Secret Lover', 799000, 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nHộp Hoa Secret Lover gồm:\r\n</br>\r\n- 24 bông Hoa Hồng\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n* Hộp gỗ có đường kính 16cm.', 'SecretLover.png', '2022-02-12 09:12:06', '2022-02-12 09:12:06'),
(25, 7, 'Poetic Lover', 749000, 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nHộp Hoa Poetic Lover gồm:\r\n</br>\r\n- 24 bông Hoa Hồng\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n* Hộp gỗ có đường kính 16cm.', 'PoeticLover.png', '2022-02-12 09:12:06', '2022-02-12 09:12:06'),
(26, 7, 'Daniel', 899000, 'Hộp hoa tông màu tím pastel vừa trang nhã vừa ngọt ngào với sự kết hợp của các loại hoa như hoa hồng, hoa cẩm chướng, hoa cúc.\r\n</br>\r\nGiỏ hoa Daniel thích hợp để tặng cho người thân hay cho bất kỳ ai bạn yêu mến. \r\n</br>\r\nHộp Hoa Daniel gồm:\r\n</br>\r\n- 15 Bông Hoa Hồng Tím\r\n</br>\r\n- 12 Bông Hoa Hồng Ecuado\r\n</br>\r\n- 10 Hoa Cẩm Chướng Tím\r\n</br>\r\n- Các loại hoa và lá khác', 'Daniel.png', '2022-02-12 09:12:06', '2022-02-12 09:12:06'),
(27, 7, 'California Lover', 749000, 'Hộp hoa xinh xắn với chất liệu chính là hoa hồng màu mật ong, điểm cúc tana và các loại lá bạc vừa lạ mắt vừa ngát hương.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nHộp Hoa Gỗ California Lover gồm:\r\n</br>\r\n- 24 bông Hoa Hồng\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n* Hộp gỗ có đường kính 16cm.', 'CaliforniaLover.png', '2022-02-12 09:12:06', '2022-02-12 09:12:06'),
(28, 7, 'Pretty Glory', 849000, 'Hộp hoa gỗ hoành tráng với sự góp mặt của đồng tiền và hướng dương - những loài hoa mang ý nghĩa vô cùng tốt lành để bạn gửi tặng trong bất kỳ dịp quan trọng nào. \r\n</br>\r\nHộp Hoa Pretty Glory gồm:\r\n</br>\r\n- 15 Bông Hướng Dương\r\n</br>\r\n- 10 Bông Đồng Tiền\r\n</br>\r\n- Hoa Lan cùng các loại hoa và lá khác', 'PrettyGlory1.png', '2022-02-12 09:12:06', '2022-02-12 09:12:06'),
(29, 7, 'Cupid\'s Kisses', 599000, 'Các loại hoa tông màu đỏ rực rỡ cắm hình trái tim kết hợp với hộp hoa gỗ vintage cổ điển, là món quà sang trọng thích hợp để tặng nhân dịp khai trương hoặc cho bất kỳ dịp đặc biệt. \r\n</br>\r\nHộp Hoa Cupid\'s Kisses gồm:\r\n</br>\r\n- 18 Bông Hoa Hồng Đỏ\r\n</br>\r\n- Hoa Cúc Tana\r\n</br>\r\n- Các loại hoa và lá khác', 'CupidKisses.png', '2022-02-12 09:12:06', '2022-02-12 09:12:06'),
(30, 7, 'Hermosa', 749000, 'Hộp hoa gỗ xinh xắn với chất liệu chính là hoa hồng đỏ và bibi trắng\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br> \r\nHộp Hoa Gỗ Hermosa gồm:\r\n</br>\r\n- 24 bông Hoa Hồng đỏ\r\n</br>\r\n- Hoa Bibi\r\n</br>\r\n- Hoa và lá khác', 'Hermosa.png', '2022-02-12 09:12:06', '2022-02-12 09:12:06'),
(31, 7, 'Dreamy', 1049000, 'Hộp Hoa Gỗ Dreamy thể hiện nhiều sắc thái của tông màu Tím là món quà sang trọng thích hợp dành tặng người bạn yêu thương.\r\n</br>\r\nHộp hoa Dreamy bao gồm:\r\n</br>\r\n- 20 Bông Hoa Hồng\r\n</br>\r\n- 10 Bông Cúc Pingpong\r\n</br>\r\n- 10 Cành Cẩm Chướng\r\n</br>\r\n- 10 Cành Mõm Sói\r\n</br>\r\n- Các loại hoa và lá khác', 'Dreamy.png', '2022-02-12 09:23:27', '2022-02-12 09:23:27'),
(32, 7, 'Flaming Heart', 1299000, 'Hộp hoa siêu to rực rỡ với sự kết hợp của các loại hoa mang tông màu đỏ rực sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè, đặc biệt trong những dịp quan trọng như sinh nhật hay khai trương.\r\n</br>\r\nHộp Hoa gỗ Flaming Heart gồm:\r\n</br>\r\n- 25 Bông Hồng Đỏ\r\n</br>\r\n- 19 Cành Cẩm Chướng\r\n</br>\r\n- Các loại hoa và lá khác', 'FlamingHeart.png', '2022-02-12 09:23:27', '2022-02-12 09:23:27'),
(33, 7, 'Violet Lover', 599000, 'Hộp hoa mang gam màu đầy trang nhã và duyên dáng với sự kết hợp của hoa Hồng pastel & hoa Hồng Tím lãng mạn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nHộp Hoa Violet Lover gồm:\r\n</br>\r\n- 20 bông Hoa Hồng\r\n</br>\r\n- Các loại Hoa và Lá khác', 'VioletLover.png', '2022-02-12 09:23:27', '2022-02-12 09:23:27'),
(34, 7, 'Moon River', 1249000, 'Hộp Hoa Gỗ Moon River với 20 cành hoa hồng xinh xắn, rạng rỡ cùng với hoa hướng dương vàng được cắm cao và xoè, do đó vô cùng phù hợp để dành tặng cho người bạn yêu mến vào những dịp đặc biệt như chúc mừng hay khai trương.\r\n</br>\r\n Hộp Hoa Gỗ Moon River gồm:\r\n</br>\r\n- 8 bông Hoa Hồng\r\n</br>\r\n- 8 bông Hướng Dương\r\n</br>\r\n- 10 cành lan mokara\r\n</br>\r\n- Các loại hoa & lá khác', 'MoonRiver.png', '2022-02-12 09:23:27', '2022-02-12 09:23:27'),
(35, 7, 'Moonlight Lover', 599000, 'Hộp hoa sang trọng và thanh lịch với các loại hoa Hồng được gói xinh xắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nHộp Hoa Moonlight Lover gồm:\r\n</br>\r\n- 24 bông Hoa Hồng\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n* Hộp gỗ có đường kính 12cm.', 'MoonlightLover.png', '2022-02-12 09:23:27', '2022-02-12 09:23:27'),
(36, 7, 'Majestic', 949000, 'Hộp Hoa Gỗ Majestic thể hiện nhiều sắc thái của tông màu Tím là món quà sang trọng thích hợp dành tặng người bạn yêu thương.\r\n</br>\r\nHộp Hoa Majestic gồm:\r\n</br>\r\n- 20 Bông Hoa Hồng\r\n</br>\r\n- 10 Bông Cúc Pingpong\r\n</br>\r\n- 10 Cành Cẩm Chướng\r\n</br>\r\n- 10 Cành Mõm Sói\r\n</br>\r\n- Các loại hoa và lá khác', 'Majestic.png', '2022-02-12 09:23:27', '2022-02-12 09:23:27'),
(37, 7, 'Come And Kiss Me', 549000, 'Các loại hoa tông màu đỏ rực rỡ kết hợp với hộp hoa gỗ vintage cổ điển, là món quà sang trọng thích hợp để tặng nhân dịp khai trương hoặc cho bất kỳ dịp đặc biệt. \r\n</br>\r\nHộp Hoa Come And Kiss Me gồm:\r\n</br>\r\n- 15 Bông Hoa Hồng \r\n</br>\r\n- 5 Bông Cẩm Chướng\r\n</br>\r\n- 2 Bông Cẩm tú cầu\r\n</br>\r\n- Các loại hoa và lá khác', 'ComeAnd.png', '2022-02-12 09:23:27', '2022-02-12 09:23:27'),
(38, 7, 'Rosie Lover', 549000, 'Rosie Lover là sự kết hợp đầy thanh lịch giữa hộp tròn cùng với hồng pastel và hồng sen. Cùng Flowerstore gửi tặng món quà tinh tế này đến người bạn thương nhé!  \r\n</br>\r\nHộp Hoa Gỗ Tròn Rosie Lover gồm:\r\n</br>\r\n- 20 bông Hoa Hồng\r\n</br>\r\n- Các loại Hoa và Lá khác', 'RosieLover.png', '2022-02-12 09:23:27', '2022-02-12 09:23:27'),
(39, 7, 'Blooming Garden', 919000, 'Hộp Hoa Blooming Garden gồm:\r\n</br>\r\n- 28 bông hồng\r\n</br>\r\n- 12 cành Cẩm Chướng\r\n</br>\r\n- 12 cành Chuỗi Ngọc\r\n</br>\r\n- Các loại hoa & lá khác', 'BloomingGarden.png', '2022-02-12 09:23:27', '2022-02-12 09:23:27'),
(40, 7, 'Sunshine Box', 549000, 'Hộp hoa bằng gỗ kết hợp các loại hoa tươi như hoa Hướng Dương và Cát Tường tươi tắn sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nHộp Hoa Gỗ Sunshine Box bao gồm:\r\n</br>\r\n- 4 bông Hoa Hướng Dương\r\n</br>\r\n- 7 cành Hoa Cát Tường\r\n</br>\r\n- Các loại Hoa và Lá khác', 'SunshineBox.png', '2022-02-12 09:23:27', '2022-02-12 09:23:27'),
(41, 8, 'Be Happy', 349000, 'Giỏ hoa rực rỡ và đầy sức sống với hoa Hướng Dương và Cúc vàng tươi tắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. \r\n</br>\r\nGiỏ Hoa Be Happy gồm:\r\n</br>\r\n- 5 bông Hoa Hướng Dương\r\n</br>\r\n- Các loại hoa và lá khác', 'BeHappy.png', '2022-02-12 09:34:05', '2022-02-12 09:34:05'),
(42, 8, 'Darling Darling', 549000, 'Làm người nhận bất ngờ với 24 bông hồng cổ điển được cắm ngẫu hứng trong chiếc túi đen. Vừa sang trọng, vừa trẻ trung!\r\n</br>\r\n Giỏ Hoa Darling Darling gồm:\r\n</br>\r\n- 24 bông Hồng đỏ\r\n</br>\r\n- Các loại hoa và lá khác', 'DarlingDarling.png', '2022-02-12 09:34:05', '2022-02-12 09:34:05'),
(43, 8, 'Periwinkle', 599000, 'Giỏ hoa Periwinkle với sự kết hợp của những bông hoa màu tím lạ mắt, dễ thương, lại có phần sang trọng sẽ là món quà tuyệt vời dành cho người bạn yêu mến.\r\n</br>\r\nGiỏ Hoa Periwinkle gồm:\r\n</br>\r\n- 6 Bông Hoa Hồng\r\n</br>\r\n- 13 Cành Cúc \r\n</br>\r\n- Các loại hoa và lá khác', 'Periwinkle.png', '2022-02-12 09:34:05', '2022-02-12 09:34:05'),
(44, 8, 'Intimate Amber', 1049000, 'Những loại hoa màu đỏ kết hợp với giỏ hoa kim loại là món quà cổ điển, sang trọng cho bất kỳ ai bạn yêu mến. \r\n</br>\r\nGIỏ Hoa Intimate Amber gồm:\r\n</br>\r\n- 32 Bông Hoa Hồng\r\n</br>\r\n- 4 Cành Cẩm Chướng\r\n</br>\r\n- Các loại hoa và lá khác', 'IntimateAmber.png', '2022-02-12 09:34:05', '2022-02-12 09:34:05'),
(45, 8, 'Dreamlike', 1299000, 'Giỏ hoa rực rỡ và đầy sức sống với hoa Hồng, Đồng Tiền & Cẩm Chướng tươi tắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nGiỏ Hoa Dreamlike gồm:\r\n</br>\r\n- 15 Bông Hồng \r\n</br>\r\n- 10 Bông Cát Tường\r\n</br>\r\n- 8 Bông Đồng Tiền\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại hoa và lá khác', 'Dreamlike.png', '2022-02-12 09:34:05', '2022-02-12 09:34:05'),
(46, 8, 'Enchanting Romance', 999000, 'Giỏ hoa tông màu hồng pastel vừa trang nhã vừa ngọt ngào với sự kết hợp của các loại hoa như hoa hồng, hoa đồng tiền, hoa cát tường và hoa cẩm chướng.\r\n</br>\r\nGiỏ hoa Enchanting Romance thích hợp để tặng cho người thân hay cho bất kỳ ai bạn yêu mến. \r\n</br>\r\nGIỏ Hoa Enchanting Romance gồm:\r\n</br>\r\n- 12 Bông Hoa Hồng\r\n</br>\r\n- 5 Bông Đồng Tiền\r\n</br>\r\n- 4 Bông Cẩm Chướng\r\n</br>\r\n- Hoa Cát Tường\r\n</br>\r\n- Các loại hoa và lá khác', 'Enchanting.png', '2022-02-12 09:34:05', '2022-02-12 09:34:05'),
(47, 8, 'Love Paradise', 349000, 'Giỏ hoa rực rỡ cùng màu sắc đỏ tươi của hoa hồng là món quà tuyệt vời để thể hiện tình yêu vừa chân thật, vừa mãnh liệt của bạn với người ấy.\r\n</br>\r\nGiỏ Hoa Love Paradise gồm: \r\n</br>\r\n- 11 bông Hồng đỏ\r\n</br>\r\n- Hoa nhím nhập khẩu\r\n</br>\r\n- Các loại hoa và lá khác', 'LoveParadise.png', '2022-02-12 09:34:05', '2022-02-12 09:34:05'),
(48, 8, 'Anna\'s Garden', 449000, 'Giỏ hoa rực rỡ và đầy sức sống với hoa Hồng, Đồng Tiền & Cẩm Chướng tươi tắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nGiỏ Hoa Anna\'s Garden gồm:\r\n</br>\r\n- 6 bông Hoa Hồng\r\n</br>\r\n- 4 bông Hoa Đồng Tiền\r\n</br>\r\n- 7 bông Hoa Cẩm Chướng ', 'AnnaGarden.png', '2022-02-12 09:34:05', '2022-02-12 09:34:05'),
(49, 8, 'Spring Field', 349000, 'Giỏ hoa rực rỡ và đầy sức sống với hoa Hồng, Đồng Tiền & Cẩm Chướng tươi tắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nGiỏ Hoa Spring Garden gồm:\r\n</br>\r\n- 6 bông Hoa Hồng\r\n</br>\r\n- 7 bông Hoa Đồng Tiền\r\n</br>\r\n- 4 bông Hoa Cẩm Chướng ', 'SpringField.png', '2022-02-12 09:34:05', '2022-02-12 09:34:05'),
(50, 8, 'Be Bright', 349000, 'Giỏ hoa rực rỡ và đầy sức sống với hoa Hướng Dương và Cúc vàng tươi tắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. \r\n</br>\r\nGiỏ Hoa Be Happy gồm:\r\n</br>\r\n- 5 bông Hoa Hướng Dương\r\n</br>\r\n- Các loại hoa và lá khác', 'BeBright.png', '2022-02-12 09:34:05', '2022-02-12 09:34:05'),
(51, 8, 'Rose Field', 599000, 'Giỏ hoa rực rỡ và đầy sức sống với các loại Hoa Hồng nhiều màu sắc.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nGiỏ Hoa Rose Land gồm:\r\n</br>\r\n- 10 bông Hoa Hồng\r\n</br>\r\n- 3 bông Cẩm Chướng\r\n</br>\r\n- Các loại hoa và lá khác', 'RoseField.png', '2022-02-12 09:43:49', '2022-02-12 09:43:49'),
(52, 8, 'Rose Land', 449000, 'Giỏ hoa rực rỡ và đầy sức sống với các loại Hoa Hồng nhiều màu sắc.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nGiỏ Hoa Rose Land gồm:\r\n</br>\r\n- 10 bông Hoa Hồng\r\n</br>\r\n- 3 bông Cẩm Chướng\r\n</br>\r\n- Các loại hoa và lá khác', 'RoseLand.png', '2022-02-12 09:43:49', '2022-02-12 09:43:49'),
(53, 8, 'Endless Love', 549000, 'Giỏ hoa hồng trắng thanh lịch dành tặng cho người bạn yêu màu trắng.\r\n</br>\r\nGiỏ Hoa Eternal Love gồm:\r\n</br>\r\n- 12 Bông Hồng Trắng\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại Hoa và Lá khác', 'EndlessLove.png', '2022-02-12 09:43:49', '2022-02-12 09:43:49'),
(54, 8, 'Jane\'s Garden', 399000, 'Giỏ hoa rực rỡ và đầy sức sống với hoa Hồng, Đồng Tiền & Cẩm Chướng tươi tắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nGiỏ Hoa Jane\'s Garden gồm:\r\n</br>\r\n- 6 bông Hoa Hồng\r\n</br>\r\n- 7 bông Hoa Đồng Tiền\r\n</br>\r\n- 4 bông Hoa Cẩm Chướng ', 'JaneGarden.png', '2022-02-12 09:43:49', '2022-02-12 09:43:49'),
(55, 8, 'Baby Rose', 449000, 'Giỏ hoa rực rỡ và đầy sức sống với các loại Hoa Hồng nhiều màu sắc.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nGiỏ Hoa Baby Rose\r\n</br>\r\n- 6 bông Hồng Kem\r\n</br>\r\n- 4 bông Hồng Cánh Sen\r\n</br>\r\n- Hoa Bibi\r\n</br>\r\n- Các loại hoa và lá khác', 'BabyRose.png', '2022-02-12 09:43:49', '2022-02-12 09:43:49'),
(56, 8, 'Eternal Love', 399000, 'Giỏ hoa hồng trắng thanh lịch dành tặng cho người bạn yêu màu trắng.\r\n</br>\r\nGiỏ Hoa Eternal Love gồm:\r\n</br>\r\n- 8 Bông Hồng Trắng\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại Hoa và Lá khác', 'EternalLove.png', '2022-02-12 09:43:49', '2022-02-12 09:43:49'),
(57, 8, 'Spring Garden', 449000, 'Giỏ hoa rực rỡ và đầy sức sống với hoa Hồng, Đồng Tiền & Cẩm Chướng tươi tắn.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nGiỏ Hoa Spring Garden gồm:\r\n</br>\r\n- 6 bông Hoa Hồng\r\n</br>\r\n- 7 bông Hoa Đồng Tiền\r\n</br>\r\n- 4 bông Hoa Cẩm Chướng ', 'SpringGarden.png', '2022-02-12 09:43:49', '2022-02-12 09:43:49'),
(58, 8, 'Rose Choco', 749000, 'Giỏ hoa giấy thanh lịch là sự kết hợp giữa màu hồng phấn nhàng của hoa Hồng cùng và ánh kim lấp lánh của những viên chocolate đậm vị độc đáo. Sẽ là món quà vô cùng đặc biệt và ngọt ngào gửi đến người bạn thương.\r\n</br>\r\nGiỏ hoa Rose Choco gồm: \r\n</br>\r\n- 6 Hoa Hồng Phấn\r\n</br>\r\n- 10 viên Chocolate Ferrero\r\n</br>\r\n- Các loại hoa và là khác ', 'RoseChoco.png', '2022-02-12 09:43:49', '2022-02-12 09:43:49'),
(59, 8, 'Diamond Love', 399000, 'Những bông hoa xinh đẹp được cắm trên chiếc giỏ với màu đen quyền quý mang đến cảm giác mới lạ và tràn đầy sự ấm áp.\r\n</br>\r\nDiamond Love tượng trưng cho tình yêu trong sáng ngây thơ luôn bền vững theo năm tháng như vẻ đẹp vĩnh cửu của viên kim cương vậy. Diamond Love - Tình yêu bền vững theo thời gian.\r\n</br>\r\nGiỏ Hoa Diamond Love gồm:\r\n</br>\r\n- 8 bông Hoa Hồng\r\n</br>\r\n- 1 bông Cẩm Tú Cầu\r\n</br>\r\n- 5 bông Cát Tường\r\n</br>\r\n- 1 bông Cúc\r\n</br>\r\n- Các loại Hoa và Lá khác', 'DiamondLove.png', '2022-02-12 09:43:49', '2022-02-12 09:43:49'),
(60, 8, 'My Beloved Sunnies', 549000, 'Giỏ hoa My Beloved Sunnies là sự kết hợp của những bông hoa hướng dương rực rỡ, đầy sức sống cùng với những nhánh đồng tiền trắng muốt, vừa tinh tế vừa nhã nhặn. Cả hai đều bung xoè như những bông mặt trời nhỏ vô cùng dễ thương. \r\n</br>\r\nBó Hoa My Beloved Sunnies gồm:\r\n</br>\r\n- 5 Bông Hướng Dương\r\n</br>\r\n- 5 Bông Đồng Tiền\r\n</br>\r\n- Các loại hoa và lá khác', 'MyBeloved.png', '2022-02-12 09:43:49', '2022-02-12 09:43:49'),
(61, 1, 'Crystal Pearl', 499000, 'Bó hoa nhẹ nhàng và thanh khiết với hoa Cẩm Tú Cầu đan xen với những đóa hoa Cúc Tana được gói xinh xắn bằng giấy Kraft. Đây sẽ là món quà xinh xắn và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\n Bó Hoa Crystal Pearl bao gồm:\r\n</br>\r\n- 3 Bông Cẩm Tú Cầu\r\n</br>\r\n- Hoa Cúc Tana\r\n</br>\r\n- Các loại hoa và lá khác', 'CrystalPearl.png', '2022-02-12 09:55:26', '2022-02-12 09:55:26'),
(62, 1, 'Combo Reply Me', 859000, 'Bắt đầu tuổi mới bằng toàn sự đáng yêu? Lựa chọn thấu đáo cho người bạn yêu quý!\r\n</br>\r\nCombo Reply Me bao gồm:\r\n</br>\r\n- Bó Hoa Best Seller Tana Pure Joy\r\n</br>\r\n- Bánh Kem Cam\r\n</br>\r\n- Thiệp Tình Yêu', 'ComboReply.png', '2022-02-12 09:55:26', '2022-02-12 09:55:26'),
(63, 1, 'Combo Fly With Me', 849000, 'Bắt đầu tuổi mới bằng toàn sự đáng yêu? Lựa chọn thấu đáo cho người bạn yêu quý!\r\n</br>\r\nCombo Fly With Me bao gồm:\r\n</br>\r\n- Bó Hoa Best-seller Pink Moon\r\n</br>\r\n- Bánh Kem Cam', 'ComboFly.png', '2022-02-12 09:55:26', '2022-02-12 09:55:26'),
(64, 1, 'Combo Love Me', 799000, 'Bắt đầu tuổi mới bằng toàn sự đáng yêu? Lựa chọn thấu đáo cho người bạn yêu quý!\r\n</br>\r\nCombo Love Me bao gồm:\r\n</br>\r\n- Bó Hoa Best-seller Beautiful You\r\n</br>\r\n- Bánh Kem Chocolate ', 'ComboLoveMe.png', '2022-02-12 09:55:26', '2022-02-12 09:55:26'),
(65, 1, 'For The Beautiful', 599000, 'Những đóa hoa hồng phấn được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp đặc biệt.\r\n</br>\r\nBó Hoa For The Beautiful gồm:\r\n</br>\r\n- 10 Bông Hoa Hồng\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Các loại hoa và lá khác ', 'ForTheBeautiful.png', '2022-02-12 09:55:26', '2022-02-12 09:55:26'),
(66, 1, 'Dream Of You', 349000, 'Những đóa hoa hồng đan xen với hoa cát tường và hoa đồng tiền xinh đẹp được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp đặc biệt.\r\n</br>\r\nBó Hoa Dream Of You gồm:\r\n</br>\r\n- 10 Bông Hoa Hồng\r\n</br>\r\n- 3 Bông Hoa Đồng Tiền\r\n</br>\r\n- Các loại hoa và lá khác ', 'DreamOfYou.png', '2022-02-12 09:55:26', '2022-02-12 09:55:26'),
(67, 1, 'Roseanne', 449000, 'Bó Hoa Roseanne gồm:\r\n</br>\r\n- 10 Bông Hoa Hồng Phấn\r\n</br>\r\n- 3 Bông Hoa Cát Tường\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại hoa và lá khác ', 'Roseanne.png', '2022-02-12 09:55:26', '2022-02-12 09:55:26'),
(68, 1, 'First Date', 249000, 'Bó hoa Cúc Tana được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp đặc biệt.\r\n</br>\r\nBó Hoa First Date gồm:\r\n</br>\r\n- 12 Cành Hoa Cúc Tana\r\n</br>\r\n- Các loại lá khác ', 'FirstDate.png', '2022-02-12 09:55:26', '2022-02-12 09:55:26'),
(69, 1, 'Combo Moonlight', 949000, 'Bắt đầu tuổi mới bằng toàn sự đáng yêu? Lựa chọn thấu đáo cho người bạn yêu quý!\r\n</br>\r\nCombo Moonlight bao gồm:\r\n</br>\r\n- Bó Hoa Best-seller Pink Moon\r\n</br>\r\n- Nến Thơm Adore (200gr)\r\n</br>\r\n- Hộp Chocolate Ferrero Rocher (5 viên)', 'ComboMoonlight.png', '2022-02-12 09:55:26', '2022-02-12 09:55:26'),
(70, 1, 'Mandarine Garden', 499000, 'Bó hoa  Mandarine Garden rực rỡ và đầy sức sống với hoa Hồng và Cẩm Chướng tươi tắn, là một phiên bản bó hoa của Spring Garden - sản phẩm bán chạy nhất tại Flowerstore. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Mandarine Garden gồm:\r\n</br>\r\n- 9 bông Hoa Hồng\r\n</br>\r\n- 6 bông Hoa Cẩm Chướng \r\n</br>\r\n- Các loại hoa & lá khác', 'MandarineGarden.png', '2022-02-12 09:55:26', '2022-02-12 09:55:26'),
(71, 1, 'Timeless Elegance', 399000, 'Bó Hoa Timeless Elegance của nhà Flowerstore mang phong cách Hàn Quốc nhẹ nhàng tươi tắn.\r\n</br>\r\nĐây chắc chắn sẽ là món quà ngọt ngào và tinh tế dành tặng người thương, gia đình hoặc bạn bè thân yêu!\r\n</br>\r\nBó Hoa Timeless Elegance gồm:\r\n</br>\r\n- 3 Hoa Hồng \r\n</br>\r\n- 2 Hoa Cát Tường\r\n</br>\r\n- Hoa Bốn Mùa\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Bông Đuôi Thỏ', 'TimelessElegance.png', '2022-02-12 10:04:44', '2022-02-12 10:04:44'),
(72, 1, 'Love Maze', 399000, 'Bó Hoa Love Maze của nhà Flowerstore mang phong cách Hàn Quốc nhẹ nhàng tươi tắn. Đây chắc chắn sẽ là món quà ngọt ngào và tinh tế dành tặng người thương, gia đình hoặc bạn bè thân yêu!\r\n</br>\r\nBó Hoa Love Maze gồm:\r\n</br>\r\n- 5 Hoa Hồng\r\n</br>\r\n- Hoa Thanh Liễu\r\n</br>\r\n- Hoa Bách Nhật', 'LoveMaze.png', '2022-02-12 10:04:44', '2022-02-12 10:04:44'),
(73, 1, 'Love Me Tender', 399000, 'Bó Hoa Love Me Tender của nhà Flowerstore mang phong cách Hàn Quốc nhẹ nhàng tươi tắn. Đây chắc chắn sẽ là món quà ngọt ngào và tinh tế dành tặng người thương, gia đình hoặc bạn bè thân yêu!\r\n</br>\r\nBó Hoa Love Me Tender gồm:\r\n</br>\r\n- 3 Hoa Hồng Đỏ\r\n</br>\r\n- Hoa Baby', 'LoveMe.png', '2022-02-12 10:04:44', '2022-02-12 10:04:44'),
(74, 1, 'The Myze', 349000, 'Bó Hoa The Myze của nhà Flowerstore mang phong cách Hàn Quốc nhẹ nhàng tươi tắn. Đây chắc chắn sẽ là món quà ngọt ngào và tinh tế dành tặng người thương, gia đình hoặc bạn bè!\r\n</br>\r\nBó Hoa The Myze gồm:\r\n</br>\r\n- 3 Hoa Hồng Phấn\r\n</br>\r\n- Hoa Bách Nhật\r\n</br>\r\n- Hoa Sao\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Các loại hoa và lá khác', 'TheMyze.png', '2022-02-12 10:04:44', '2022-02-12 10:04:44'),
(75, 1, 'Combo Be Lovely', 699000, 'Có gì quý giá hơn dành tặng cho người bạn yêu thương, ngoài tình cảm và tấm lòng chân thành của bạn? \r\n</br>\r\nCombo Be Lovely bao gồm:\r\n</br>\r\n- Bó Hoa Cẩm Chướng Carla\r\n</br>\r\n- Thỏ Đan Len\r\n</br>\r\n- Thiệp Sinh Nhật', 'ComboBe.png', '2022-02-12 10:04:44', '2022-02-12 10:04:44'),
(76, 1, 'Sweet Desire', 399000, 'Bó hoa pastel được gói theo phong cách Hàn Quốc, mang màu sắc rất trẻ trung và thanh lịch.\r\n</br>\r\nSự kết hợp giữa Hoa hồng da, Cẩm tú cầu và hoa Cẩm chướng là một trong lựa chọn hoàn hảo cho ngày đặc biệt hoặc bất kỳ dịp nào để dành tặng cho người mình yêu thương.\r\n</br>\r\nBó Hoa Sweet Desire gồm:\r\n</br>\r\n- 12 Hoa Hồng da\r\n</br>\r\n- Hoa Cẩm Tú Cầu\r\n</br>\r\n- Hoa Cẩm Chướng\r\n</br>\r\n- Các loại hoa & lá khác', 'SweetDesire.png', '2022-02-12 10:04:44', '2022-02-12 10:04:44'),
(77, 1, 'Combo All For You', 1099000, 'Lựa chọn hoàn hảo dành cho người bạn yêu thương với toàn điều ngọt ngào, lãng mạn. \r\n</br>\r\nSẵn sàng đốn tim người nhận chưa?\r\n</br>\r\nCombo All For You bao gồm:\r\n</br>\r\n- Bó Hoa Best-seller Fall For You\r\n</br>\r\n- Nến Thơm Jasmint loại 200 gr\r\n</br>\r\n- Thiệp Tình Yêu \r\n</br>\r\n- Hộp Chocolate Ferrero Rocher (5 viên)', 'ComboAll.png', '2022-02-12 10:04:44', '2022-02-12 10:04:44'),
(78, 1, 'Be My Fiance', 549000, 'Món quà ngọt ngào và tinh tế dành tặng người thương, gia đình hoặc bạn bè. \r\n</br>\r\nBó Hoa Be My Fiancée gồm:\r\n</br>\r\n- 24 Hoa Hồng Da \r\n</br>\r\n- Hoa Đồng Tiền\r\n</br>\r\n- Các loại hoa và lá khác', 'BeMy.png', '2022-02-12 10:04:44', '2022-02-12 10:04:44'),
(79, 1, 'Intense Love', 449000, 'Bó hoa hồng kết hợp cùng cẩm tú cầu đơn giản ngọt ngào và thanh khiết sẽ là một món quà bất ngờ và hoàn hảo đanh tặng cho người thân, gia đình và bạn bè. \r\n</br>\r\nBó Hoa Intense Love gồm:\r\n</br>\r\n- 16 bông Hoa Hồng đỏ\r\n</br>\r\n- Hoa Cẩm Tú Cầu\r\n</br>\r\n- Các loại hoa & lá khác ', 'IntenseLove.png', '2022-02-12 10:04:44', '2022-02-12 10:04:44'),
(80, 1, 'Passionate Love', 549000, 'Bó hoa hồng kết hợp cùng cẩm tú cầu đơn giản được gói rất trẻ trung và thanh lịch là một trong lựa chọn hoàn hảo cho ngày đặc biết hoặc bất kỳ dịp nào để dành tặng cho người mình yêu thương.\r\n</br>\r\nBó Hoa Passionate Love gồm:\r\n</br>\r\n- 16 bông Hoa Hồng da\r\n</br>\r\n- Hoa Cẩm Tú Cầu\r\n</br>\r\n- Các loại hoa & lá khác', 'PassionateLove.png', '2022-02-12 10:04:44', '2022-02-12 10:04:44'),
(81, 2, 'Urban Success', 1299000, 'Kệ hoa to, rực rỡ và sang trọng với sự kết hợp của các loại hoa màu đỏ.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Urban Success gồm:\r\n</br>\r\n- 25 Hoa Hồng Đỏ\r\n</br>\r\n- 10 Hồng Môn\r\n</br>\r\n- 10 Hoa Lan Mokara \r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Giấy gói trắng trong mờ\r\n</br>\r\n- Băng rôn/ banner đính kèm', 'UrbanSuccess.png', '2022-02-13 09:28:25', '2022-02-13 09:28:25'),
(82, 2, 'Jubilant', 1689000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Jubilant gồm:\r\n</br>\r\n- Cẩm Tú Cầu Hồng\r\n</br>\r\n- Hoa Đồng Tiền Hồng\r\n</br>\r\n- Hoa Cát Tường Hồng\r\n</br>\r\n- Hoa Hồng Tím\r\n</br>\r\n- Hoa Sao Hồng\r\n</br>\r\n- Lá Huyết Dụ \r\n</br>\r\n- Lá Đinh Lăng\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm', 'Jubilant.png', '2022-02-13 09:28:25', '2022-02-13 09:28:25'),
(83, 2, 'Glamorous', 1149000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n </br>\r\nKệ Hoa Glamorous gồm:\r\n</br>\r\n- 10 cành Cẩm Tú Cầu\r\n</br>\r\n- 20 Bông hồng \r\n</br>\r\n- 6 Hoa Cẩm Chướng\r\n</br>\r\n- Hoa Sao Tím\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm', 'Glamorous.png', '2022-02-13 09:28:25', '2022-02-13 09:28:25'),
(84, 2, 'Glorious', 2259000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của các loại hoa màu vàng và tông giấy xanh dịu mắt.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Glorious gồm:\r\n</br>\r\n- Đồng Tiền\r\n</br>\r\n- Lan Mokara\r\n</br>\r\n- Hoa Hồng\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm', 'Glorious.png', '2022-02-13 09:28:25', '2022-02-13 09:28:25'),
(85, 2, 'Blissful', 2559000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\n Kệ Hoa Blissful gồm:\r\n</br>\r\n- Hoa Hồng\r\n</br>\r\n- Lan Hồ Điệp\r\n</br>\r\n- Hướng Dương\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm', 'Blissful.png', '2022-02-13 09:28:25', '2022-02-13 09:28:25'),
(86, 2, 'Blooming Success', 4759000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của các loại hoa tông màu hồng.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Blooming Success gồm:\r\n</br>\r\n- Hoa Hồng\r\n</br>\r\n- Đồng Tiền\r\n</br>\r\n- Cát Tường\r\n</br>\r\n- Mõm Sói\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm', 'BloomingSuccess.png', '2022-02-13 09:28:25', '2022-02-13 09:28:25'),
(87, 2, 'Triumph', 2449000, 'Kệ hoa to, tươi tắn và sang trọng với hướng dương, và các loại hoa lan.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Triumph gồm:\r\n</br>\r\n- 15 Hoa Hướng Dương\r\n</br>\r\n- Lan Hồ Điệp\r\n</br>\r\n- 10 Lan Moraka\r\n</br>\r\n- 5 Hoa Ly Vàng\r\n</br>\r\n- 15 Hoa Đồng Tiền\r\n</br>\r\n- 20 Hoa Hồng Kem \r\n</br>\r\n- Hoa Bibi\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm', 'Triumph.png', '2022-02-13 09:28:25', '2022-02-13 09:28:25'),
(88, 2, 'Chậu Hoa Lan Break Of Dawn', 899000, 'Chậu hoa lan hồ điệp Break Of Dawn với dải màu đôi mượt mà như thời điểm chuyển giao giữa đêm và ngày mới, phù hợp để bạn dành tặng cho người mình yêu thương.\r\n</br>\r\nChậu Hoa Break Of Dawn gồm:\r\n</br>\r\n- 1 cành Lan Hồ Điệp hai màu\r\n</br>\r\n* Giá đã bao gồm chậu', 'BreakOfDawn.png', '2022-02-13 09:28:25', '2022-02-13 09:28:25'),
(89, 2, 'Chậu Hoa Lan Morning Dew', 5999000, 'Chậu hoa lan hồ điệp Morning Dew với những bông hoa trắng muốt tinh khôi như những giọt sương ban mai.\r\n</br>\r\nChậu Hoa Morning Dew gồm:\r\n</br>\r\n- 9 cành Lan Hồ Điệp màu trắng\r\n</br>\r\n- Giá đã bao gồm chậu', 'MorningDew.png', '2022-02-13 09:28:25', '2022-02-13 09:28:25'),
(90, 2, 'Chậu Hoa Lan Vanilla Butterfly', 6999000, 'Chậu hoa lan hồ điệp Vanilla Butterfly với cánh hoa màu tím nhạt dập dìu như những cánh bướm trong buổi chiều tà, vừa sang trọng lại vừa vô cùng nên thơ.\r\n</br>\r\nChậu Hoa Vanilla Butterfly gồm:\r\n</br>\r\n- 10 cành Lan Hồ Điệp màu tím\r\n</br>\r\n- Giá đã bao gồm chậu', 'Vanilla.png', '2022-02-13 09:28:25', '2022-02-13 09:28:25'),
(91, 2, 'The Pinnacle Of Success', 1249000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa The Pinnacle Of Success gồm:\r\n</br>\r\n- 20 Bông Hoa Hồng Đỏ\r\n</br>\r\n- 10 Bông Đồng Tiền\r\n</br>\r\n- 10 Bông Cúc Tím\r\n</br>\r\n- 10 Lá Huyết Dụ\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm\r\n</br>\r\n- Kệ', 'Pinnacle.png', '2022-02-13 09:43:49', '2022-02-13 09:43:49'),
(92, 2, 'Infinite Fortune', 1379000, 'Đây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Infinite Fortune gồm:\r\n</br>\r\n-3 Bông Cẩm Tú Cầu\r\n</br>\r\n- 5 Bông Cúc Xanh \r\n</br>\r\n- Bông Cát Tường Trắng\r\n</br>\r\n- 5 Bông Hột Gà\r\n</br>\r\n- 5 Bông Đồng Tiền Hồng\r\n</br>\r\n- 3 Bông Hồng Đỏ\r\n</br>\r\n- 5 Cành Trầu Bà Lá Rách\r\n</br>\r\n- 5 Cành Lá Cau\r\n</br>\r\n- 10 Cành Sỉ Pháp\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm\r\n</br>\r\n- Kệ', 'Infinite.png', '2022-02-13 09:43:49', '2022-02-13 09:43:49'),
(93, 2, 'Lavish Lustre', 1529000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Lavish Lustre gồm:\r\n</br>\r\n- 5 Bông Thạch Thảo Tím \r\n</br>\r\n- 20 Bông Đồng Tiền Hồng\r\n</br>\r\n- 20 Bông Hồng Sen\r\n</br>\r\n- 6 Cành Hoa Baby\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm\r\n</br>\r\n- Kệ', 'LavishLustre.png', '2022-02-13 09:43:49', '2022-02-13 09:43:49'),
(94, 2, 'Mighty Joy', 1819000, 'Đây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Mighty Joy gồm:\r\n</br>\r\n- 3 Bông Tú Cầu Hồng\r\n</br>\r\n- 2 Bông Địa Lan Hồng\r\n</br>\r\n- Bông Cát Tường Hồng\r\n</br>\r\n- 10 Bông Hồng Tím\r\n</br>\r\n- Lá Cau\r\n</br>\r\n- Lá Chanh\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm\r\n</br>\r\n- Kệ', 'MightyJoy.png', '2022-02-13 09:43:49', '2022-02-13 09:43:49'),
(95, 2, 'Golden Times', 1969000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Golden Times gồm:\r\n</br>\r\n- 5 Bông Hướng Dương\r\n</br>\r\n- 15 Bông Hồng Da\r\n</br>\r\n- 10 Bông Hồng Cam\r\n</br>\r\n- Bông Cát Tường Trắng\r\n</br>\r\n- Chuỗi Ngọc\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm\r\n</br>\r\n- Kệ', 'Golden.png', '2022-02-13 09:43:49', '2022-02-13 09:43:49'),
(96, 2, 'Shining Glory', 1299000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Shining Glory gồm:\r\n</br>\r\n- 10 Bông Đồng Tiền Cam\r\n</br>\r\n- 10 Bông Đồng Tiền Kem\r\n</br>\r\n- 20 Bông Hồng Vàng\r\n</br>\r\n- 10 Bông Cát Tường Trắng\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm\r\n</br>\r\n- Kệ', 'ShiningGlory.png', '2022-02-13 09:43:49', '2022-02-13 09:43:49'),
(97, 2, 'Summer Shine', 1329000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Summer Shine gồm:\r\n</br>\r\n- 1 Bông Cẩm Tú Cầu\r\n</br>\r\n- 5 Bông Đồng Tiền Hồng\r\n</br>\r\n- 5 Bông Hướng Dương\r\n</br>\r\n- 4 Bông Cẩm Chướng Tím\r\n</br>\r\n- 10 Bông Cát Tường Trắng\r\n</br>\r\n- 10 Bông Phi Yến Hồng Kem\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm\r\n</br>\r\n- Kệ', 'Summer.png', '2022-02-13 09:43:49', '2022-02-13 09:43:49'),
(98, 2, 'Blushing Blossoms', 1079000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\nKệ Hoa Blushing Blossoms gồm:\r\n</br>\r\n- 10 Bông Đồng Tiền Hồng\r\n</br>\r\n- 10 Bông Đồng Tiền Hồng Nhạt\r\n</br>\r\n- 10 Bông Cẩm Chướng Hồng\r\n</br>\r\n- 10 Bông Hồng Phấn\r\n</br>\r\n- Cành Dương Sỉ\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm\r\n</br>\r\n- Kệ', 'Blushing.png', '2022-02-13 09:43:49', '2022-02-13 09:43:49'),
(99, 2, 'Sunny Achievement', 1249000, 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa.\r\n</br>\r\nĐây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại.\r\n</br>\r\n Kệ Hoa Sunny Achievement gồm:\r\n</br>\r\n- Cẩm Tú Cầu\r\n</br>\r\n- Hoa Hồng Tím\r\n</br>\r\n- Hoa Hồng Da\r\n</br>\r\n- Hoa Sao Tím \r\n</br>\r\n- Hoa Cẩm Chướng Trắng\r\n</br>\r\n- Các loại hoa và lá khác\r\n</br>\r\n- Băng rôn/ banner đính kèm', 'Achievement.png', '2022-02-13 09:43:49', '2022-02-13 09:43:49'),
(100, 2, 'Spring Day Khổng Lồ', 1999000, 'Bó hoa hồng khổng lồ chen lẫn với thật nhiều sao trắng là món quà đáng yêu dành tặng cho bất kỳ ai bạn yêu thương.\r\n</br>\r\nBó Hoa Spring Day Khổng Lồ bao gồm:\r\n</br>\r\n- 109 Bông Hồng\r\n</br>\r\n- Các loại Hoa và Lá khác', 'Spring.png', '2022-02-13 09:43:49', '2022-02-13 09:43:49'),
(101, 3, 'Intense Love', 449000, 'Bó hoa hồng kết hợp cùng cẩm tú cầu đơn giản ngọt ngào và thanh khiết sẽ là một món quà bất ngờ và hoàn hảo đanh tặng cho người thân, gia đình và bạn bè. \r\n</br>\r\nBó Hoa Intense Love gồm:\r\n</br>\r\n- 16 bông Hoa Hồng đỏ\r\n</br>\r\n- Hoa Cẩm Tú Cầu\r\n</br>\r\n- Các loại hoa & lá khác ', 'Intense.png', '2022-02-13 09:56:53', '2022-02-13 09:56:53'),
(102, 3, 'Passionate Love', 549000, 'Bó hoa hồng kết hợp cùng cẩm tú cầu đơn giản được gói rất trẻ trung và thanh lịch là một trong lựa chọn hoàn hảo cho ngày đặc biết hoặc bất kỳ dịp nào để dành tặng cho người mình yêu thương.\r\n</br>\r\nBó Hoa Passionate Love gồm:\r\n</br>\r\n- 16 bông Hoa Hồng da\r\n</br>\r\n- Hoa Cẩm Tú Cầu\r\n</br>\r\n- Các loại hoa & lá khác', 'Passionate.png', '2022-02-13 09:56:53', '2022-02-13 09:56:53'),
(103, 3, 'Simple Charm', 199000, 'Bó hoa Hồng đỏ đầy lãng mạn kết hợp cùng với giấy gói màu trắng là món quà hoàn hảo thay lời muốn nói gửi đến người thương của bạn vào Valentine hoặc ngày kỷ niệm, sinh nhật.\r\n</br>\r\nBó Hoa Hồng Simple Charm gồm:\r\n</br>\r\n- 8 cành Hoa Hồng', 'SimpleCharm.png', '2022-02-13 09:56:53', '2022-02-13 09:56:53'),
(104, 3, 'My Princess', 399000, 'Bó hoa ngọt ngào và thanh khiết với hoa Cẩm Tú Cầu, Hoa Cúc và 12 bông hồng da được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa My Princess gồm:\r\n</br>\r\n- 1 Bông Hoa Cẩm Tú Cầu\r\n</br>\r\n- 12 Hoa Hồng \r\n</br>\r\n- Hoa Cúc\r\n</br>\r\n- 2 Hoa Đồng Tiền\r\n</br>\r\n- Các loại hoa và lá khác', 'MyPrincess.png', '2022-02-13 09:56:53', '2022-02-13 09:56:53'),
(105, 3, 'Love At First Sight', 749000, 'Love At First Sight là lời thú nhận ngọt ngào về tình yêu của bạn dành tặng cho người mình luôn thương mến!\r\n</br>\r\nBó Hoa Love At First Sight gồm:\r\n</br>\r\n- 12 bông Hồng đỏ\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại hoa và lá khác', 'FirstSight.png', '2022-02-13 09:56:53', '2022-02-13 09:56:53'),
(106, 3, 'Million Little Things', 999000, 'Bó hoa Million Little Things là món quà đáng yêu với Cẩm Tú Cầu vây quanh bởi vô vàn những bông hoa Baby bé li ti nhưng lại rất đỗi xinh xắn, cũng như vô vàn những điều nhỏ bé làm nên chuyện tình cảm tươi đẹp giữa bạn và người nhận vậy đó.\r\n</br>\r\nBó Hoa Million Little Things gồm:\r\n</br>\r\n- 10 cành Cẩm Tú Cầu\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại hoa và lá khác', 'MillionLittle.png', '2022-02-13 09:56:53', '2022-02-13 09:56:53'),
(107, 3, 'My Beautiful', 199000, 'Ba cành hoa hồng được gói thành bó hoa đẹp mắt, thanh lịch. Lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Hồng My Darling gồm:\r\n</br>\r\n- 03 Bông Hoa Hồng Đỏ\r\n</br>\r\n- Các loại hoa & lá khác', 'MyBeautiful.png', '2022-02-13 09:56:53', '2022-02-13 09:56:53'),
(108, 3, 'Gorgeous You', 499000, 'Bó hoa hồng đỏ được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp quan trọng như ngày hẹn hò, ngày Valentine, Sinh nhật,.....\r\n</br>\r\nBó Hoa Hồng Gorgeous You gồm:\r\n</br>\r\n- 12 bông Hoa Hồng đỏ\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại hoa & lá khác ', 'Gorgeous.png', '2022-02-13 09:56:53', '2022-02-13 09:56:53'),
(109, 3, 'My Darling', 199000, 'Bó hoa hồng đỏ được gói rất đẹp mắt và thanh lịch. Lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Hồng My Darling gồm:\r\n</br>\r\n- 06 bông hoa Hồng\r\n</br>\r\n- Các loại hoa & lá khác', 'MyDarling.png', '2022-02-13 09:56:53', '2022-02-13 09:56:53'),
(110, 3, 'Enchanted', 1199000, 'Bó hoa Enchanted là khu vườn lộng lẫy sắc thắm đang khoe mình trong ánh nắng chiều xuân có chút lãng mạn, tô điểm bởi hai gam màu pastel và hồng đỏ của những nhành Hồng, Cẩm Chướng, Đồng Tiền, Cẩm Tú Cầu, Phi Yến, và thật nhiều hoa Baby, đủ sức mê hoặc bất kỳ ai.\r\n</br>\r\nBó Hoa Enchanted gồm:\r\n</br>\r\n- 10 bông Hồng Kem\r\n</br>\r\n- 10 bông Hồng Tím\r\n</br>\r\n- 8 bông Đồng tiền hồng\r\n</br>\r\n- 10 bông Cẩm chướng đỏ\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại hoa và lá khác', 'Enchanted.png', '2022-02-13 09:56:53', '2022-02-13 09:56:53'),
(111, 3, 'Pinky Promise', 649000, 'Bó hoa Pinky Promise xinh xắn và đáng yêu với sự kết hợp của hoa Hồng, Cúc Tana và Cát Tường tượng trưng cho lời hứa ngọt ngào giữa hai người. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Pinky Promise gồm:\r\n</br>\r\n- 4 bông Hoa Hồng\r\n</br>\r\n- Bông Cát Tường\r\n</br>\r\n- Bông Cúc\r\n</br>\r\n- Các loại hoa & lá khác', 'PinkyPromise.png', '2022-02-13 10:11:15', '2022-02-13 10:11:15'),
(112, 3, 'Stay Golden', 629000, 'Bó hoa hồng vàng được gói rất sang trọng và thanh lịch, là lựa chọn hoàn hảo cho ngày sinh nhật hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Hồng Stay Golden gồm:\r\n</br>\r\n- 25 bông Hoa Hồng vàng\r\n</br>\r\n- Các loại hoa & lá khác', 'StayGolden.png', '2022-02-13 10:11:15', '2022-02-13 10:11:15'),
(113, 3, 'Summer Made', 399000, 'Bó hoa tông màu cam pastel nhẹ nhàng, kết hợp cùng giấy gói màu xanh nhạt vô cùng mát mắt sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Summer Made gồm:\r\n</br>\r\n- 8 Bông Hồng \r\n</br>\r\n- Thuỷ Tiên, Scabiosa cùng các loại hoa và lá khác', 'SummerMade.png', '2022-02-13 10:11:15', '2022-02-13 10:11:15'),
(114, 3, 'Pink Princess', 1149000, 'Bó hoa Pink Princess với sự kết hợp hài hòa giữa hai tông màu hồng và xanh lá của Cát Tường, Hoa Hồng, Cẩm Chướng và Lily. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Pink Princess (Phiên Bản Cơ Bản) gồm:\r\n</br>\r\n- 2 Bông LiLy\r\n</br>\r\n- 6 Bông Hồng\r\n</br>\r\n- 10 Bông Cẩm Chướng\r\n</br>\r\n- Các loại hoa và lá khác', 'PinkPrincess.png', '2022-02-13 10:11:15', '2022-02-13 10:11:15'),
(115, 3, 'A Million Dreams', 1149000, 'Bó hoa siêu to rực rỡ với sự kết hợp của các loại hoa mang tông màu hồng, điểm xuyến với một nhánh Scabiosa.\r\n</br>\r\nĐây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa A Million Dreams gồm:\r\n</br>\r\n- 60 bông Cẩm Chướng\r\n</br>\r\n- 12 Bông Hồng\r\n</br>\r\n- Các loại hoa và lá khác', 'AMillionDreams.png', '2022-02-13 10:11:15', '2022-02-13 10:11:15'),
(116, 3, 'Love On Fire', 649000, 'Bó hoa rực rỡ, nồng nhiệt ắt hẳn sẽ tiếp thêm thật nhiều niềm vui và nhiệt huyết cho người bạn yêu mến.\r\n</br>\r\nBó Hoa Love On Fire gồm:\r\n</br>\r\n- 20 bông Hoa Hồng\r\n</br>\r\n- 10 bông Mõm Sói\r\n</br>\r\n- Các loại hoa và lá khác', 'LoveOnFire.png', '2022-02-13 10:11:15', '2022-02-13 10:11:15'),
(117, 3, 'My Love Reply', 649000, 'Vừa hoa vừa chocolate, ai nỡ nói không? \r\n</br>\r\nBó Hoa My Love Reply gồm:\r\n</br>\r\n- 10 bông Hoa Hồng\r\n</br>\r\n- 10 Viên Chocolate Ferrero Rocher\r\n</br>\r\n- Các loại hoa và lá khác', 'MyLoveReply.png', '2022-02-13 10:11:15', '2022-02-13 10:11:15');
INSERT INTO `products` (`id_product`, `id_category`, `title`, `price`, `content`, `thumbnail`, `created_at`, `updated_at`) VALUES
(118, 3, 'Be Mine', 749000, 'Bó hoa Be Mine không chỉ là sự kết hợp của hoa hồng đỏ nồng nàn, mà còn của cả những bông hồng bạc lấp lánh, như tình cảm của bạn dành cho đối phương, vừa thắm thiết, dạt dào, lại vừa trân quý, nâng niu.\r\n</br>\r\nBó Hoa Be Mine  gồm:\r\n</br>\r\n- 36 bông Hoa Hồng gồm đỏ và bạc\r\n</br>\r\n- Các loại hoa và lá khác', 'BeMine.png', '2022-02-13 10:11:15', '2022-02-13 10:11:15'),
(119, 3, 'Passionate Heart', 449000, 'Bó hoa sang trọng và thanh khiết với các loại hoa màu đỏ được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Passionate Heart gồm:\r\n</br>\r\n- 06 bông Hoa Hồng\r\n</br>\r\n- 06 bông Đồng Tiền\r\n</br>\r\n- 06 bông Cẩm Chướng\r\n</br>\r\n- Các loại hoa và lá khác', 'Passionate1.png', '2022-02-13 10:11:15', '2022-02-13 10:11:15'),
(120, 3, 'Ecuador Deeply In Love', 499000, 'Làm không khí hôm nay thêm phần lãng mạn với bông hồng Ecuador nhập khẩu vô cùng lộng lẫy, kết hợp cùng hoa nhím màu xanh sâu thẳm như biển xanh, cũng là tình cảm của bạn dành cho người ta, vừa sôi nổi, vừa chìm đắm đầy đam mê. \r\n</br>\r\nBó Hoa Deeply In Love gồm:\r\n</br>\r\n- 9 bông Hoa Hồng Ecuador nhập khẩu\r\n</br>\r\n- Các loại hoa và lá khác', 'EcuadorDeeply.png', '2022-02-13 10:11:15', '2022-02-13 10:11:15'),
(121, 4, 'For The Beautiful', 599000, 'Những đóa hoa hồng phấn được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp đặc biệt.\r\n</br>\r\nBó Hoa For The Beautiful gồm:\r\n</br>\r\n- 10 Bông Hoa Hồng\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Các loại hoa và lá khác ', 'ForTheBeautiful.png', '2022-02-13 10:20:56', '2022-02-13 10:20:56'),
(122, 4, 'Dream Of You', 349000, 'Những đóa hoa hồng đan xen với hoa cát tường và hoa đồng tiền xinh đẹp được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp đặc biệt.\r\n</br>\r\nBó Hoa Dream Of You gồm:\r\n</br>\r\n- 10 Bông Hoa Hồng\r\n</br>\r\n- 3 Bông Hoa Đồng Tiền\r\n</br>\r\n- Các loại hoa và lá khác ', 'DreamOfYou.png', '2022-02-13 10:20:56', '2022-02-13 10:20:56'),
(123, 4, 'Sweet Desire', 399000, 'Bó hoa pastel được gói theo phong cách Hàn Quốc, mang màu sắc rất trẻ trung và thanh lịch.\r\n</br>\r\nSự kết hợp giữa Hoa hồng da, Cẩm tú cầu và hoa Cẩm chướng là một trong lựa chọn hoàn hảo cho ngày đặc biệt hoặc bất kỳ dịp nào để dành tặng cho người mình yêu thương.\r\n</br>\r\nBó Hoa Sweet Desire gồm:\r\n</br>\r\n- 12 Hoa Hồng da\r\n</br>\r\n- Hoa Cẩm Tú Cầu\r\n</br>\r\n- Hoa Cẩm Chướng\r\n</br>\r\n- Các loại hoa & lá khác', 'SweetDesire.png', '2022-02-13 10:20:56', '2022-02-13 10:20:56'),
(124, 4, 'Roseanne', 449000, 'Bó Hoa Roseanne gồm:\r\n</br>\r\n- 10 Bông Hoa Hồng Phấn\r\n</br>\r\n- 3 Bông Hoa Cát Tường\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại hoa và lá khác ', 'Roseanne.png', '2022-02-13 10:20:56', '2022-02-13 10:20:56'),
(125, 4, 'The Myze', 349000, 'Bó Hoa The Myze của nhà Flowerstore mang phong cách Hàn Quốc nhẹ nhàng tươi tắn. Đây chắc chắn sẽ là món quà ngọt ngào và tinh tế dành tặng người thương, gia đình hoặc bạn bè!\r\n</br>\r\nBó Hoa The Myze gồm:\r\n</br>\r\n- 3 Hoa Hồng Phấn\r\n</br>\r\n- Hoa Bách Nhật\r\n</br>\r\n- Hoa Sao\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Các loại hoa và lá khác', 'TheMyze.png', '2022-02-13 10:20:56', '2022-02-13 10:20:56'),
(126, 4, 'Burning Love', 719000, 'Bó hoa Burning Love là sự kết hợp của hoa hồng cam nồng nàn, hoa hồng trắng tinh khôi và cả những bông nhím biển tím huyền bí. Như lời khen ngợi của bạn dành cho đối phương, vừa quyến rũ lại vừa xinh đẹp.\r\n</br>\r\nBó Hoa gồm:\r\n</br>\r\n- 10 bông Hoa Hồng Cam (Nhập khẩu)\r\n</br>\r\n- 4 bông Hoa Hồng Trắng\r\n</br>\r\n- Nhím Biển (Nhập khẩu)\r\n</br>\r\n- Các loại hoa và lá khác', 'BurningLove.png', '2022-02-13 10:20:56', '2022-02-13 10:20:56'),
(127, 4, 'My Darling', 199000, 'Bó hoa hồng đỏ được gói rất đẹp mắt và thanh lịch. Lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Hồng My Darling gồm:\r\n</br>\r\n- 06 bông hoa Hồng\r\n</br>\r\n- Các loại hoa & lá khác', 'MyDarling.png', '2022-02-13 10:20:56', '2022-02-13 10:20:56'),
(128, 4, 'My Beautiful', 199000, 'Ba cành hoa hồng được gói thành bó hoa đẹp mắt, thanh lịch. Lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Hồng My Darling gồm:\r\n</br>\r\n- 03 Bông Hoa Hồng Đỏ\r\n</br>\r\n- Các loại hoa & lá khác', 'MyBeautiful.png', '2022-02-13 10:20:56', '2022-02-13 10:20:56'),
(129, 4, 'Gorgeous You', 499000, 'Bó hoa hồng đỏ được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp quan trọng như ngày hẹn hò, ngày Valentine, Sinh nhật,.....\r\n</br>\r\nBó Hoa Hồng Gorgeous You gồm:\r\n</br>\r\n- 12 bông Hoa Hồng đỏ\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại hoa & lá khác ', 'GorgeousYou.png', '2022-02-13 10:20:56', '2022-02-13 10:20:56'),
(130, 4, 'Summer Made', 399000, 'Bó hoa tông màu cam pastel nhẹ nhàng, kết hợp cùng giấy gói màu xanh nhạt vô cùng mát mắt sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Summer Made gồm:\r\n</br>\r\n- 8 Bông Hồng \r\n</br>\r\n- Thuỷ Tiên, Scabiosa cùng các loại hoa và lá khác', 'SummerMade.png', '2022-02-13 10:20:56', '2022-02-13 10:20:56'),
(131, 5, 'Summer Made', 399000, 'Bó hoa tông màu cam pastel nhẹ nhàng, kết hợp cùng giấy gói màu xanh nhạt vô cùng mát mắt sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Summer Made gồm:\r\n</br>\r\n- 8 Bông Hồng \r\n</br>\r\n- Thuỷ Tiên, Scabiosa cùng các loại hoa và lá khác', 'SummerMade.png', '2022-02-13 10:34:10', '2022-02-13 10:34:10'),
(132, 5, 'Gorgeous You', 499000, 'Bó hoa hồng đỏ được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp quan trọng như ngày hẹn hò, ngày Valentine, Sinh nhật,.....\r\n</br>\r\nBó Hoa Hồng Gorgeous You gồm:\r\n</br>\r\n- 12 bông Hoa Hồng đỏ\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại hoa & lá khác ', 'GorgeousYou.png', '2022-02-13 10:34:10', '2022-02-13 10:34:10'),
(133, 5, 'My Beautiful', 199000, 'Ba cành hoa hồng được gói thành bó hoa đẹp mắt, thanh lịch. Lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Hồng My Darling gồm:\r\n</br>\r\n- 03 Bông Hoa Hồng Đỏ\r\n</br>\r\n- Các loại hoa & lá khác', 'MyBeautiful.png', '2022-02-13 10:34:10', '2022-02-13 10:34:10'),
(134, 5, 'My Darling', 199000, 'Bó hoa hồng đỏ được gói rất đẹp mắt và thanh lịch. Lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Hồng My Darling gồm:\r\n</br>\r\n- 06 bông hoa Hồng\r\n</br>\r\n- Các loại hoa & lá khác', 'MyDarling.png', '2022-02-13 10:34:10', '2022-02-13 10:34:10'),
(135, 5, 'Burning Love', 719000, 'Bó hoa Burning Love là sự kết hợp của hoa hồng cam nồng nàn, hoa hồng trắng tinh khôi và cả những bông nhím biển tím huyền bí. Như lời khen ngợi của bạn dành cho đối phương, vừa quyến rũ lại vừa xinh đẹp.\r\n</br>\r\nBó Hoa gồm:\r\n</br>\r\n- 10 bông Hoa Hồng Cam (Nhập khẩu)\r\n</br>\r\n- 4 bông Hoa Hồng Trắng\r\n</br>\r\n- Nhím Biển (Nhập khẩu)\r\n</br>\r\n- Các loại hoa và lá khác', 'BurningLove.png', '2022-02-13 10:34:10', '2022-02-13 10:34:10'),
(136, 5, 'The Myze', 349000, 'Bó Hoa The Myze của nhà Flowerstore mang phong cách Hàn Quốc nhẹ nhàng tươi tắn. Đây chắc chắn sẽ là món quà ngọt ngào và tinh tế dành tặng người thương, gia đình hoặc bạn bè!\r\n</br>\r\nBó Hoa The Myze gồm:\r\n</br>\r\n- 3 Hoa Hồng Phấn\r\n</br>\r\n- Hoa Bách Nhật\r\n</br>\r\n- Hoa Sao\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Các loại hoa và lá khác', 'TheMyze.png', '2022-02-13 10:34:10', '2022-02-13 10:34:10'),
(137, 5, 'Roseanne', 449000, 'Bó Hoa Roseanne gồm:\r\n</br>\r\n- 10 Bông Hoa Hồng Phấn\r\n</br>\r\n- 3 Bông Hoa Cát Tường\r\n</br>\r\n- Hoa Baby\r\n</br>\r\n- Các loại hoa và lá khác ', 'Roseanne.png', '2022-02-13 10:34:10', '2022-02-13 10:34:10'),
(138, 5, 'Sweet Desire', 399000, 'Bó hoa pastel được gói theo phong cách Hàn Quốc, mang màu sắc rất trẻ trung và thanh lịch.\r\n</br>\r\nSự kết hợp giữa Hoa hồng da, Cẩm tú cầu và hoa Cẩm chướng là một trong lựa chọn hoàn hảo cho ngày đặc biệt hoặc bất kỳ dịp nào để dành tặng cho người mình yêu thương.\r\n</br>\r\nBó Hoa Sweet Desire gồm:\r\n</br>\r\n- 12 Hoa Hồng da\r\n</br>\r\n- Hoa Cẩm Tú Cầu\r\n</br>\r\n- Hoa Cẩm Chướng\r\n</br>\r\n- Các loại hoa & lá khác', 'SweetDesire.png', '2022-02-13 10:34:10', '2022-02-13 10:34:10'),
(139, 5, 'Dream Of You', 349000, 'Những đóa hoa hồng đan xen với hoa cát tường và hoa đồng tiền xinh đẹp được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp đặc biệt.\r\n</br>\r\nBó Hoa Dream Of You gồm:\r\n</br>\r\n- 10 Bông Hoa Hồng\r\n</br>\r\n- 3 Bông Hoa Đồng Tiền\r\n</br>\r\n- Các loại hoa và lá khác ', 'DreamOfYou.png', '2022-02-13 10:34:10', '2022-02-13 10:34:10'),
(140, 5, 'For The Beautiful', 599000, 'Những đóa hoa hồng phấn được gói đặc biệt bằng giấy kraft với dòng chữ \"Gorgeous You - For The Beautiful\" thể hiện thông điệp một cách tinh tế cho người thương yêu của bạn, phù hợp để bạn gửi tặng vào những dịp đặc biệt.\r\n</br>\r\nBó Hoa For The Beautiful gồm:\r\n</br>\r\n- 10 Bông Hoa Hồng\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Các loại hoa và lá khác ', 'ForTheBeautiful.png', '2022-02-13 10:34:10', '2022-02-13 10:34:10'),
(141, 4, 'Combo Love Me', 799000, 'Bắt đầu tuổi mới bằng toàn sự đáng yêu? Lựa chọn thấu đáo cho người bạn yêu quý!\r\n</br>\r\nCombo Love Me bao gồm:\r\n</br>\r\n- Bó Hoa Best-seller Beautiful You\r\n</br>\r\n- Bánh Kem Chocolate ', 'ComboLoveMe.png', '2022-02-13 10:41:53', '2022-02-13 10:41:53'),
(142, 4, 'Aphrodite', 599000, 'Bó hoa mang gam màu pastel nhẹ nhàng đầy trang nhã điểm xuyến vài bông hồng đỏ thu hút mọi ánh nhìn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Hồng Aphrodite bao gồm:\r\n</br>\r\n- 20 bông Hoa Hồng\r\n</br>\r\n- Các loại Hoa và Lá khác', 'Aphrodite.png', '2022-02-13 10:41:53', '2022-02-13 10:41:53'),
(143, 4, 'Combo All For You', 1099000, 'Lựa chọn hoàn hảo dành cho người bạn yêu thương với toàn điều ngọt ngào, lãng mạn. Sẵn sàng đốn tim người nhận chưa?\r\n</br>\r\nCombo All For You bao gồm:\r\n</br>\r\n- Bó Hoa Best-seller Fall For You\r\n</br>\r\n- Nến Thơm Jasmint loại 200 gr\r\n</br>\r\n- Thiệp Tình Yêu \r\n</br>\r\n- Hộp Chocolate Ferrero Rocher (5 viên)', 'ComboAll.png', '2022-02-13 10:41:53', '2022-02-13 10:41:53'),
(144, 4, 'Timeless Elegance', 399000, 'Bó Hoa Timeless Elegance của nhà Flowerstore mang phong cách Hàn Quốc nhẹ nhàng tươi tắn.\r\n</br>\r\nĐây chắc chắn sẽ là món quà ngọt ngào và tinh tế dành tặng người thương, gia đình hoặc bạn bè thân yêu!\r\n</br>\r\nBó Hoa Timeless Elegance gồm:\r\n</br>\r\n- 3 Hoa Hồng \r\n</br>\r\n- 2 Hoa Cát Tường\r\n</br>\r\n- Hoa Bốn Mùa\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Bông Đuôi Thỏ', 'TimelessElegance.png', '2022-02-13 10:41:53', '2022-02-13 10:41:53'),
(145, 4, 'Mandarine Garden', 499000, 'Bó hoa  Mandarine Garden rực rỡ và đầy sức sống với hoa Hồng và Cẩm Chướng tươi tắn, là một phiên bản bó hoa của Spring Garden - sản phẩm bán chạy nhất tại Flowerstore. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Mandarine Garden gồm:\r\n</br>\r\n- 9 bông Hoa Hồng\r\n</br>\r\n- 6 bông Hoa Cẩm Chướng \r\n</br>\r\n- Các loại hoa & lá khác', 'MandarineGarden.png', '2022-02-13 10:41:53', '2022-02-13 10:41:53'),
(146, 4, 'Intense Love', 449000, 'Bó hoa hồng kết hợp cùng cẩm tú cầu đơn giản ngọt ngào và thanh khiết sẽ là một món quà bất ngờ và hoàn hảo đanh tặng cho người thân, gia đình và bạn bè. \r\n</br>\r\nBó Hoa Intense Love gồm:\r\n</br>\r\n- 16 bông Hoa Hồng đỏ\r\n</br>\r\n- Hoa Cẩm Tú Cầu\r\n</br>\r\n- Các loại hoa & lá khác ', 'IntenseLove.png', '2022-02-13 10:41:53', '2022-02-13 10:41:53'),
(147, 4, 'Passionate Love', 549000, 'Bó hoa hồng kết hợp cùng cẩm tú cầu đơn giản được gói rất trẻ trung và thanh lịch là một trong lựa chọn hoàn hảo cho ngày đặc biết hoặc bất kỳ dịp nào để dành tặng cho người mình yêu thương.\r\n</br>\r\nBó Hoa Passionate Love gồm:\r\n</br>\r\n- 16 bông Hoa Hồng da\r\n</br>\r\n- Hoa Cẩm Tú Cầu\r\n</br>\r\n- Các loại hoa & lá khác', 'PassionateLove.png', '2022-02-13 10:41:53', '2022-02-13 10:41:53'),
(148, 4, 'Simple Charm', 199000, 'Bó hoa Hồng đỏ đầy lãng mạn kết hợp cùng với giấy gói màu trắng là món quà hoàn hảo thay lời muốn nói gửi đến người thương của bạn vào Valentine hoặc ngày kỷ niệm, sinh nhật.\r\n</br>\r\nBó Hoa Hồng Simple Charm gồm:\r\n</br>\r\n- 8 cành Hoa Hồng', 'SimpleCharm.png', '2022-02-13 10:41:53', '2022-02-13 10:41:53'),
(149, 4, 'Combo Red and Gold', 699000, 'Làm ai đó mỉm cười hạnh phúc với bó hoa Fabulously Red đầy rực rỡ và hộp chocolate trứ danh ngọt ngào từ Ferrero Rocher!\r\n</br>\r\nCombo Red & Gold gồm:\r\n</br>\r\n- Bó Hoa Best-seller Fabulously Red\r\n</br>\r\n- Hộp Chocolate Ferrero Rocher 5 viên', 'ComboRedAndGold.png', '2022-02-13 10:41:53', '2022-02-13 10:41:53'),
(150, 4, 'My Darling', 199000, 'Bó hoa hồng đỏ được gói rất đẹp mắt và thanh lịch. Lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Hồng My Darling gồm:\r\n</br>\r\n- 06 bông hoa Hồng\r\n</br>\r\n- Các loại hoa & lá khác', 'MyDarling.png', '2022-02-13 10:41:53', '2022-02-13 10:41:53'),
(151, 5, 'My Darling', 199000, 'Bó hoa hồng đỏ được gói rất đẹp mắt và thanh lịch. Lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n</br>\r\nBó Hoa Hồng My Darling gồm:\r\n</br>\r\n- 06 bông hoa Hồng\r\n</br>\r\n- Các loại hoa & lá khác', 'MyDarling.png', '2022-02-13 10:52:40', '2022-02-13 10:52:40'),
(152, 5, 'Simple Charm', 199000, 'Bó hoa Hồng đỏ đầy lãng mạn kết hợp cùng với giấy gói màu trắng là món quà hoàn hảo thay lời muốn nói gửi đến người thương của bạn vào Valentine hoặc ngày kỷ niệm, sinh nhật.\r\n</br>\r\nBó Hoa Hồng Simple Charm gồm:\r\n</br>\r\n- 8 cành Hoa Hồng', 'SimpleCharm.png', '2022-02-13 10:52:40', '2022-02-13 10:52:40'),
(153, 5, 'Passionate Love', 549000, 'Bó hoa hồng kết hợp cùng cẩm tú cầu đơn giản được gói rất trẻ trung và thanh lịch là một trong lựa chọn hoàn hảo cho ngày đặc biết hoặc bất kỳ dịp nào để dành tặng cho người mình yêu thương.\r\n</br>\r\nBó Hoa Passionate Love gồm:\r\n</br>\r\n- 16 bông Hoa Hồng da\r\n</br>\r\n- Hoa Cẩm Tú Cầu\r\n</br>\r\n- Các loại hoa & lá khác', 'PassionateLove.png', '2022-02-13 10:52:40', '2022-02-13 10:52:40'),
(154, 5, 'Intense Love', 449000, 'Bó hoa hồng kết hợp cùng cẩm tú cầu đơn giản ngọt ngào và thanh khiết sẽ là một món quà bất ngờ và hoàn hảo đanh tặng cho người thân, gia đình và bạn bè. \r\n</br>\r\nBó Hoa Intense Love gồm:\r\n</br>\r\n- 16 bông Hoa Hồng đỏ\r\n</br>\r\n- Hoa Cẩm Tú Cầu\r\n</br>\r\n- Các loại hoa & lá khác ', 'IntenseLove.png', '2022-02-13 10:52:40', '2022-02-13 10:52:40'),
(155, 5, 'Mandarine Garden', 499000, 'Bó hoa  Mandarine Garden rực rỡ và đầy sức sống với hoa Hồng và Cẩm Chướng tươi tắn, là một phiên bản bó hoa của Spring Garden - sản phẩm bán chạy nhất tại Flowerstore. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Mandarine Garden gồm:\r\n</br>\r\n- 9 bông Hoa Hồng\r\n</br>\r\n- 6 bông Hoa Cẩm Chướng \r\n</br>\r\n- Các loại hoa & lá khác', 'MandarineGarden.png', '2022-02-13 10:52:40', '2022-02-13 10:52:40'),
(156, 5, 'Timeless Elegance', 399000, 'Bó Hoa Timeless Elegance của nhà Flowerstore mang phong cách Hàn Quốc nhẹ nhàng tươi tắn.\r\n</br>\r\nĐây chắc chắn sẽ là món quà ngọt ngào và tinh tế dành tặng người thương, gia đình hoặc bạn bè thân yêu!\r\n</br>\r\nBó Hoa Timeless Elegance gồm:\r\n</br>\r\n- 3 Hoa Hồng \r\n</br>\r\n- 2 Hoa Cát Tường\r\n</br>\r\n- Hoa Bốn Mùa\r\n</br>\r\n- Lá Bạc\r\n</br>\r\n- Bông Đuôi Thỏ', 'TimelessElegance.png', '2022-02-13 10:52:40', '2022-02-13 10:52:40'),
(157, 5, 'Combo All For You', 1099000, 'Lựa chọn hoàn hảo dành cho người bạn yêu thương với toàn điều ngọt ngào, lãng mạn. Sẵn sàng đốn tim người nhận chưa?\r\n</br>\r\nCombo All For You bao gồm:\r\n</br>\r\n- Bó Hoa Best-seller Fall For You\r\n</br>\r\n- Nến Thơm Jasmint loại 200 gr', 'ComboAll.png', '2022-02-13 10:52:40', '2022-02-13 10:52:40'),
(158, 5, 'Aphrodite', 599000, 'Bó hoa mang gam màu pastel nhẹ nhàng đầy trang nhã điểm xuyến vài bông hồng đỏ thu hút mọi ánh nhìn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.\r\n</br>\r\nBó Hoa Hồng Aphrodite bao gồm:\r\n</br>\r\n- 20 bông Hoa Hồng\r\n</br>\r\n- Các loại Hoa và Lá khác', 'Aphrodite.png', '2022-02-13 10:52:40', '2022-02-13 10:52:40'),
(159, 5, 'Combo Me', 799000, 'Combo Love Me bao gồm:\r\n</br>\r\n- Bó Hoa Best-seller Beautiful You\r\n</br>\r\n- Bánh Kem Chocolate ', 'ComboLoveMe.png', '2022-02-13 10:52:40', '2022-02-13 10:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass_word` varchar(20) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `user_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id_orderDetails`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id_orderDetails` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
