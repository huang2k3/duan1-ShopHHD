-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2024 at 12:03 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `da1_hhd`
--

-- --------------------------------------------------------

--
-- Table structure for table `anhsp`
--

CREATE TABLE `anhsp` (
  `id` int NOT NULL,
  `ten_anh` varchar(255) NOT NULL,
  `id_sanpham` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `anhsp`
--

INSERT INTO `anhsp` (`id`, `ten_anh`, `id_sanpham`) VALUES
(122, 'upload/produc/1722331976-1721109655-1721055533-1.1.jpg', 83),
(123, 'upload/produc/1722331976-1721109655-1721055533-1.2.jpg', 83),
(124, 'upload/produc/1722331976-1721109655-1721055533-1.3.jpg', 83),
(125, 'upload/produc/1722332116-1721109777-ss1.png', 84),
(126, 'upload/produc/1722332116-1721109777-ss2.png', 84),
(127, 'upload/produc/1722332116-1721109777-ss3.png', 84),
(128, 'upload/produc/1722332200-1721110445-h - Copy.jpg', 85),
(129, 'upload/produc/1722332200-1721110445-h1.jpg', 85),
(130, 'upload/produc/1722332200-1721110445-h2.jpg', 85),
(131, 'upload/produc/1722332200-1721110445-h3.jpg', 85),
(132, 'upload/produc/1722332369-1721055533-1.2.jpg', 86),
(133, 'upload/produc/1722332369-1721055533-1.3.jpg', 86),
(134, 'upload/produc/1722332369-1721055533-ip15.jpg', 86),
(135, 'upload/produc/1722332470-1721056014-x1.png', 87),
(136, 'upload/produc/1722332470-1721056014-x2.png', 87),
(137, 'upload/produc/1722332470-1721056014-x3.png', 87);

-- --------------------------------------------------------

--
-- Table structure for table `bien_the`
--

CREATE TABLE `bien_the` (
  `id` int NOT NULL,
  `id_thuoctinh` int NOT NULL,
  `value` varchar(255) NOT NULL,
  `gia` decimal(20,0) DEFAULT NULL,
  `anh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bien_the`
--

INSERT INTO `bien_the` (`id`, `id_thuoctinh`, `value`, `gia`, `anh`) VALUES
(19, 17, '256 GB', NULL, NULL),
(20, 17, '512 GB', NULL, NULL),
(21, 17, '1 TB', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int NOT NULL,
  `id_sanpham` int NOT NULL,
  `ten` varchar(255) NOT NULL,
  `ngay` datetime NOT NULL,
  `text` text NOT NULL,
  `id_taikhoan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_sanpham`, `ten`, `ngay`, `text`, `id_taikhoan`) VALUES
(19, 86, 'Member 1', '2024-08-06 09:49:40', 'Sản phẩm này còn thông tin không ạ !', 14),
(27, 83, 'Huáng', '2024-08-13 11:12:46', 'ALE\r\n', 13),
(28, 83, 'Huáng', '2024-08-13 11:12:49', 'qưeqwe', 13);

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `id` int NOT NULL,
  `id_donhang` int NOT NULL,
  `id_sanpham` int NOT NULL,
  `soluong` int NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id`, `id_donhang`, `id_sanpham`, `soluong`, `price`) VALUES
(30, 41, 83, 1, 29290000),
(31, 41, 87, 1, 27990000),
(32, 42, 83, 1, 29290000),
(33, 42, 87, 1, 27990000),
(34, 43, 83, 1, 29290000),
(35, 43, 87, 1, 27990000),
(36, 44, 83, 5, 29290000),
(37, 44, 87, 4, 27990000),
(38, 44, 84, 1, 15990000),
(39, 44, 86, 1, 14490000),
(40, 45, 83, 5, 29290000),
(41, 45, 87, 4, 27990000),
(42, 45, 84, 1, 15990000),
(43, 45, 86, 1, 14490000),
(44, 46, 87, 2, 27990000),
(45, 46, 84, 1, 15990000),
(46, 47, 87, 1, 27990000),
(47, 47, 84, 1, 15990000),
(48, 48, 86, 1, 14490000),
(49, 48, 87, 1, 27990000),
(52, 51, 83, 1, 29290000),
(53, 52, 83, 1, 29290000),
(54, 53, 84, 1, 15990000),
(55, 53, 86, 1, 14490000),
(56, 54, 84, 1, 15990000),
(57, 54, 86, 1, 14490000),
(58, 55, 86, 4, 14490000),
(59, 55, 84, 1, 15990000),
(60, 56, 83, 2, 29290000),
(61, 57, 83, 1, 29290000),
(62, 58, 83, 1, 29290000),
(63, 58, 87, 1, 27990000),
(64, 58, 84, 1, 15990000),
(65, 59, 83, 4, 29290000),
(66, 59, 87, 1, 27990000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int NOT NULL,
  `ten_danhmuc` varchar(255) NOT NULL,
  `anh_danhmuc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten_danhmuc`, `anh_danhmuc`) VALUES
(1, 'Iphone', 'upload/cate/1721109413-1721054786-cat-1.jpg'),
(2, 'Samsung', 'upload/cate/1721109424-1720668292-cat-3.jpg'),
(6, 'Oppo', 'upload/cate/1721109444-1721054804-cat-2.jpg'),
(7, 'Huawei', 'upload/cate/1721109453-1720670193-1720636205-cat-6.jpg'),
(8, 'Nokia', 'upload/cate/1721109463-1721054820-cat-5.jpg'),
(9, 'Xiaomi', 'upload/cate/1721109483-1721054828-cat-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int NOT NULL,
  `ngaydathang` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tongtien` float NOT NULL,
  `id_trangthai` int NOT NULL,
  `id_sanpham` int NOT NULL,
  `id_thanhtoan` int NOT NULL,
  `id_taikhoan` int NOT NULL,
  `id_trangthaithanhtoan` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `sodienthoai` varchar(10) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `ngaydathang`, `tongtien`, `id_trangthai`, `id_sanpham`, `id_thanhtoan`, `id_taikhoan`, `id_trangthaithanhtoan`, `email`, `ten`, `sodienthoai`, `diachi`, `deleted_at`) VALUES
(41, '2024-08-01 05:42:00', 57280000, 7, 83, 3, 17, 1, 'mem4@gmail.com', 'Nguyễn Văn A', '976336251', 'Hà Nội', '2024-08-14 11:50:23'),
(42, '2024-08-13 20:33:00', 57280000, 7, 83, 3, 17, 1, 'mem4@gmail.com', 'Nguyễn Văn A', '976336251', 'Hà Nội', NULL),
(43, '2024-08-13 20:06:19', 57280000, 2, 83, 3, 17, 1, 'mem4@gmail.com', 'Nguyễn Văn A', '976336251', 'Hà Nội', NULL),
(44, '2024-08-03 09:44:00', 288890000, 7, 83, 3, 14, 1, 'mem1@gmail.com', 'Member 1', '865532501', 'Tổ 17, Định Công Hạ, Hà Nội', '2024-08-14 10:47:28'),
(45, '2024-08-13 21:47:57', 288890000, 2, 83, 3, 14, 1, 'mem1@gmail.com', 'Member 1', '865532501', 'Tổ 17, Định Công Hạ, Hà Nội', NULL),
(46, '2024-08-13 21:50:46', 71970000, 2, 87, 3, 14, 1, 'mem1@gmail.com', 'Member 1', '865532501', 'Tổ 17, Định Công Hạ, Hà Nội', NULL),
(47, '2024-08-06 10:22:00', 43980000, 7, 87, 3, 13, 1, 'admin@gmail.com', 'Huáng', '976336256', '170 Bùi Xương Trạch, Hà Nội', '2024-08-14 11:53:31'),
(48, '2024-08-13 20:09:50', 42480000, 7, 86, 3, 13, 1, 'admin@gmail.com', 'Huáng', '976336256', '170 Bùi Xương Trạch, Hà Nội', '2024-08-14 11:48:47'),
(51, '2024-08-13 06:28:00', 29290000, 7, 83, 3, 48, 1, '123@gmail.com', 'Hoàng', '865532501', 'Hà Nội', '2024-08-14 10:47:33'),
(52, '2024-08-13 21:51:18', 29290000, 2, 83, 3, 48, 1, '123@gmail.com', 'Hoàng', '865532501', 'Hà Nội', NULL),
(53, '2024-08-13 21:57:00', 30480000, 1, 84, 3, 48, 1, '123@gmail.com', 'Hoàng', '865532500', '170 Bùi Xương Trạch, Hà Nội', NULL),
(54, '2024-08-14 05:01:26', 30480000, 7, 84, 3, 13, 1, 'admin@gmail.com', 'Huáng', '0976336256', '170 Bùi Xương Trạch, Hà Nội', NULL),
(55, '2024-08-14 05:12:28', 73950000, 6, 86, 3, 13, 2, 'admin@gmail.com', 'Huáng', '0976336256', '170 Bùi Xương Trạch, Hà Nội', NULL),
(56, '2024-08-15 05:55:54', 58580000, 1, 83, 3, 13, 1, 'admin@gmail.com', 'Huáng', '0976336256', '170 Bùi Xương Trạch, Hà Nội', NULL),
(57, '2024-08-15 06:05:37', 29290000, 1, 83, 4, 13, 1, 'admin@gmail.com', 'Huáng', '0976336256', '170 Bùi Xương Trạch, Hà Nội', NULL),
(58, '2024-08-15 09:33:14', 73270000, 1, 83, 3, 50, 1, 'h@gmail.com', 'Hoàng1', '0865532500', '170 Bùi Xương Trạch, Hà Nội', NULL),
(59, '2024-08-15 09:52:43', 145150000, 1, 83, 3, 50, 1, 'h@gmail.com', 'Hoàng1', '0865532500', '170 Bùi Xương Trạch, Hà Nội', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id` int NOT NULL,
  `id_taikhoan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id`, `id_taikhoan`) VALUES
(24, 13);

-- --------------------------------------------------------

--
-- Table structure for table `giohang_item`
--

CREATE TABLE `giohang_item` (
  `id` int NOT NULL,
  `id_giohang` int NOT NULL,
  `id_sanpham` int NOT NULL,
  `soluong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `giohang_item`
--

INSERT INTO `giohang_item` (`id`, `id_giohang`, `id_sanpham`, `soluong`) VALUES
(85, 24, 83, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gia` float NOT NULL,
  `gia_sale` float DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `mota` text NOT NULL,
  `id_danhmuc` int NOT NULL,
  `id_hinhanh_chinh` int DEFAULT NULL,
  `anh_chinh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `xuatban` datetime DEFAULT NULL,
  `mota_ngan` text NOT NULL,
  `bien_the` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten`, `gia`, `gia_sale`, `soluong`, `mota`, `id_danhmuc`, `id_hinhanh_chinh`, `anh_chinh`, `xuatban`, `mota_ngan`, `bien_the`) VALUES
(83, 'iPhone 15 Pro Max', 34990000, 29290000, 10, 'iPhone 15 Pro Max là chiếc iPhone cao cấp nhất với màn hình lớn nhất, thời lượng pin tốt nhất, cấu hình mạnh nhất và thiết kế khung Titan chuẩn hàng không vũ trụ siêu bền, siêu nhẹ. iPhone 15 Pro Max sở hữu những điểm vượt trội nhất nhà Apple. Theo đó, người dùng sẽ trải nghiệm chiếc iPhone cao cấp với hiệu năng “khủng” chip A17 Pro, khung titan, khả năng zoom nâng cấp, nút tác vụ mới,…  iPhone 15 Pro Max (ảnh 1)  iPhone 15 Pro Max có gì mới? Thiết kế titan chuẩn hàng không vũ trụ iPhone 15 Pro Max thể hiện đẳng cấp ngay từ vẻ bề ngoài với khung viền bằng titan bóng bẩy, tinh tế, đẹp một cách sang trọng. Apple đã mất rất nhiều quy trình gia công cơ khí, chà nhám, đánh bóng và phun mài để tạo nên một chất liệu vừa đẹp, vừa bền, lại rất nhẹ. Phần khung iPhone 15 Pro Max còn được uốn cong, kết hợp với kiểu dáng siêu mỏng giúp hoàn hảo trong lòng bàn tay.', 1, NULL, 'upload/user/1722331976-1721109655-1721055533-ip15.jpg', '2024-07-30 09:32:56', 'Kích thước màn hình  6.7 inch, Chip  Apple A17 Pro', NULL),
(84, 'Samsung Galaxy Z Flip5 5G 256GB', 25990000, 15990000, 10, 'Nhập hội linh hoạt cùng Samsung Galaxy Z Flip 5, bạn sẽ trải nghiệm loạt công nghệ đột phá đầy thú vị và thiết kế độc đáo hoàn toàn mới. Nơi bạn có thể thỏa thích khám phá và tự tin thể hiện gu cá tính. Sự nhỏ gọn, vừa vặn và tính thời trang của Z Flip 5 còn giúp bạn thật nổi bật và sẵn sàng “cân” mọi phong cách yêu thích.  Samsung Galaxy Z Flip5 (ảnh 1)  Màn hình ngoài lớn nhất từ trước đến nay Gặp gỡ thế hệ Samsung Galaxy Z Flip thứ 5, bạn sẽ bất ngờ với màn hình ngoài được nâng cấp mạnh mẽ. Samsung đã cải tiến màn hình ngoài từ 1.9 inch lên tới 3.4 inch, mở rộng không gian tối đa, đảm bảo tính đa năng và tiện lợi. Các chi tiết hiển thị rõ ràng, xem được nhiều thông tin và thực hiện nhiều tác vụ ngay trong tầm tay mà không cần mở điện thoại.', 2, NULL, 'upload/user/1722332116-1721109777-ss.png', '2024-07-30 09:35:16', 'Kích thước màn hình  6.7 inch, Camera  12.0 MP, RAM  8 GB', NULL),
(85, 'Xiaomi Poco M6 6GB 128GB', 3890000, 4290000, 10, 'Là phiên bản thấp hơn so với POCO M6 Pro, Xiaomi POCO M6 vẫn được thừa hưởng nhiều thứ từ “người đàn anh”. Định hướng giá bán ở phân khúc trên dưới 4 triệu đồng sẽ giúp cho điện thoại POCO mới này thu hút người dùng nhờ cấu hình mạnh mẽ, thiết kế ấn tượng và hơn thế nữa.   POCO M6 Cụm camera đẳng cấp, đóng dấu mọi khoảnh khắc Việc trang bị cụm camera 108MP chuyên nghiệp, Xiaomi POCO M6 series đem đến cuộc cách mạng cho phân khúc giá rẻ. POCO M6 là một công cụ tối ưu với sự đẳng cấp, giúp người dùng ghi lại đầy đủ mọi khoảnh khắc quý giá với độ rõ nét, chi tiết đáng kinh ngạc. Nếu bạn là một người đam mê nhiếp ảnh hoặc đơn giản là thích sự sáng tạo trên mạng xã hội, Xiaomi POCO M6 là thiết bị bạn nên lựa chọn. ', 9, NULL, 'upload/user/1722332200-1721110445-h.jpg', '2024-07-30 09:36:40', 'Kích thước màn hình  6.79 inch, Camera  108.0 MP, RAM  6 GB', NULL),
(86, 'iPhone 13 128GB', 18990000, 14490000, 10, 'iPhone 13 sở hữu hệ thống camera kép xuất sắc nhất từ trước đến nay, bộ vi xử lý Apple A15 nhanh nhất thế giới smartphone cùng thời lượng pin cực khủng, sẵn sàng đồng hành cùng bạn suốt cả ngày.  Điện thoại iPhone 13  Thiết kế sang trọng và bền bỉ iPhone 13 là chiếc điện thoại toát lên sự đẳng cấp ngay từ cái nhìn đầu tiên nhờ thiết kế sang trọng với ngôn ngữ thiết kế phẳng và chất lượng hoàn thiện tuyệt vời. Khung nhôm cao cấp kết hợp cùng kính bảo vệ Ceramic Shield siêu cứng tạo nên chiếc điện thoại vừa thời trang, lại vô cùng bền bỉ. Khả năng chống nước chuẩn IP68 của iPhone 13 giúp bạn hoàn toàn yên tâm trước mọi nguy cơ từ nước trong quá trình sử dụng thường ngày.  thiết kế iPhone 13  iPhone 13 màu xanh lá độc đáo Sang trọng hơn và độc đáo hơn, phiên bản màu xanh lá hoàn toàn mới đã góp mặt trên iPhone 13 tiêu chuẩn. Sự trầm lặng, nét cao cấp và vẻ ngoài bóng bẩy của chiếc điện thoại như được tôn vinh và mang tới cảm nhận hoàn toàn khác biệt về cấu trúc thẩm mỹ.', 1, NULL, 'upload/user/1722332369-2021_9_15_637673230236166189_iphone-13-mini-hong-1.jpg', '2024-07-30 09:39:29', 'Kích thước màn hình  6.1 inch, Chip  Apple A15 Bionic', NULL),
(87, 'Samsung Galaxy S24 Ultra 5G 256GB', 33990000, 27990000, 10, 'Samsung Galaxy S24 Ultra là chiếc điện thoại Galaxy thông minh nhất từ trước đến nay với quyền năng kết nối, quyền năng sáng tạo và quyền năng giải trí đều được hỗ trợ bởi trí tuệ nhân tạo Galaxy AI. Thiết kế hoàn toàn mới từ bộ khung Titan đẳng cấp, siêu camera độ phân giải lên tới 200MP và bộ vi xử lý Snapdragon 8 Gen 3 for Galaxy sẽ mang đến trải nghiệm thú vị chưa từng có dành cho bạn.  Samsung Galaxy S24 Ultra  Galaxy S24 Ultra có gì mới? Kết nối không giới hạn cùng Galaxy AI Với quyền năng kết nối trên Samsung Galaxy S24 Ultra, bạn có thể kết nối với thế giới dễ dàng hơn bao giờ hết, vượt qua mọi rào cản ngôn ngữ khi giao tiếp. Không chỉ dịch thuật thông thường, S24 Ultra còn có khả năng phiên dịch trực tiếp cuộc gọi hai chiều theo thời gian thực. Thậm chí bạn không cần phải kết nối Internet cũng có thể hiểu đối phương đang nói gì và ngược lại. Tính năng này giúp bạn có thể giao tiếp xuyên biên giới. Dù là giọng nói hay tin nhắn văn bản, S24 Ultra cũng sẽ dịch nhanh chóng qua tiếng Việt và gửi lại thông điệp bằng ngôn ngữ của phía đối diện.  Samsung Galaxy S24 Ultra kết nối không giới hạn cùng Galaxy AI  Bút S Pen quyền năng nay còn năng suất hơn nữa trên Galaxy S24 Ultra. Kết hợp giữa khả năng ghi âm và dịch thuật, bạn sẽ có thể tham gia các buổi họp đa ngôn ngữ dễ dàng. Điện thoại ghi âm lại toàn bộ những điều đối tác nói, dịch sang tiếng Việt và tóm tắt ý chính để bạn có thể ghi chú hiệu quả. Cách lưu ghi chú cũng hết sức trực quan với các nhãn màu khác nhau. Ấn tượng hơn, Bút S Pen còn cho phép bạn tìm kiếm theo cách thú vị và dễ dàng chưa từng thấy. Ở bất cứ hình ảnh hay văn bản nào, đơn giản bạn chỉ cần khoanh tròn khu vực tìm kiếm, Galaxy AI sẽ tự động phân tích và tìm kiếm thông tin trên Google cho bạn ngay lập tức.  Samsung Galaxy S24 Ultra ảnh 3  Việc duyệt web giờ đây trở nên thông minh hơn bao giờ hết trên S24 Ultra. Điện thoại có thể tóm tắt nội dung bạn đang xem, dịch thuật chính xác sang ngôn ngữ khác. Ví dụ bạn đang đọc một bài báo nước ngoài, Samsung S24 Ultra không chỉ có thể dịch sang tiếng Việt mà còn tóm tắt thông minh ý chính của bài báo để bạn tiết kiệm thời gian hơn. Hay ngược lại, bạn hoàn toàn có thể dịch một nội dung trên trang web đang xem từ tiếng Việt sang tiếng Anh để gửi cho đối tác với tính năng trình duyệt thông minh.', 1, NULL, 'upload/user/1722332470-1721056014-x.png', '2024-07-30 09:41:10', 'Kích thước màn hình  6.8 inch, Camera  200.0 MP, RAM  12 GB', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_thuoctinh`
--

CREATE TABLE `sanpham_thuoctinh` (
  `id_sanpham` int NOT NULL,
  `id_thuoctinh` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sanpham_thuoctinh`
--

INSERT INTO `sanpham_thuoctinh` (`id_sanpham`, `id_thuoctinh`) VALUES
(83, 17),
(87, 17);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int NOT NULL,
  `email` varchar(20) NOT NULL,
  `matkhau` varchar(20) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `anh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `diachi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sodienthoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'true(1): admin, false(0): member  '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `email`, `matkhau`, `ten`, `anh`, `diachi`, `sodienthoai`, `ngaysinh`, `trangthai`) VALUES
(13, 'admin@gmail.com', '123', 'Huáng', 'upload/user/1721029602-tải xuống.png', '170 Bùi Xương Trạch, Hà Nội', '0976336256', '2003-08-29', 1),
(14, 'mem1@gmail.com', '123', 'Member 1', 'upload/user/1721029643-91f827e7080f8e96149acf5ea12631ba.jpg', 'Tổ 17, Định Công Hạ, Hà Nội', '0865532501', '2005-07-15', 0),
(15, 'mem2@gmail.com', '123', 'Member 2', 'upload/user/1721029676-79717cb31f0395b521fece11f660f19f.jpg', 'Hà Nội', '0865532500', '2024-07-11', 0),
(17, 'mem4@gmail.com', '123456', 'Nguyễn Văn A', 'upload/user/1722490666-779.jpg', 'Hà Nội', '0976336251', '2024-08-02', 0),
(48, '123@gmail.com', '123456', 'Hoàng', NULL, NULL, NULL, NULL, 0),
(50, 'h@gmail.com', '123456', 'Hoàng1', 'upload/user/1723631177-favicon.png', '170 Bùi Xương Trạch, Hà Nội', '0865532500', '2024-08-14', 0),
(51, 'h1@gmail.com', '123456', 'Hoàng', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `id` int NOT NULL,
  `phuongthuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `thanhtoan`
--

INSERT INTO `thanhtoan` (`id`, `phuongthuc`) VALUES
(3, 'Tiền mặt'),
(4, 'Chuyển khoản');

-- --------------------------------------------------------

--
-- Table structure for table `thuoctinh`
--

CREATE TABLE `thuoctinh` (
  `id` int NOT NULL,
  `ten_thuoctinh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `thuoctinh`
--

INSERT INTO `thuoctinh` (`id`, `ten_thuoctinh`) VALUES
(17, 'Dung lượng'),
(18, 'Màu sắc ');

-- --------------------------------------------------------

--
-- Table structure for table `trangthai_donhang`
--

CREATE TABLE `trangthai_donhang` (
  `id` int NOT NULL,
  `ten_trangthai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trangthai_donhang`
--

INSERT INTO `trangthai_donhang` (`id`, `ten_trangthai`) VALUES
(1, 'chưa xác nhận'),
(2, 'xác nhận'),
(5, 'đang giao'),
(6, 'đã giao'),
(7, 'hủy'),
(8, 'thành công'),
(9, 'thất bại');

-- --------------------------------------------------------

--
-- Table structure for table `trangthai_thanhtoan`
--

CREATE TABLE `trangthai_thanhtoan` (
  `id` int NOT NULL,
  `trangthai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trangthai_thanhtoan`
--

INSERT INTO `trangthai_thanhtoan` (`id`, `trangthai`) VALUES
(1, 'Chưa thanh toán'),
(2, 'Đã thanh toán'),
(3, 'Đã hủy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanphamanh` (`id_sanpham`);

--
-- Indexes for table `bien_the`
--
ALTER TABLE `bien_the`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_thuoctinh` (`id_thuoctinh`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_binhluan_sanpham` (`id_sanpham`),
  ADD KEY `ld_binhluan_taikhoan` (`id_taikhoan`);

--
-- Indexes for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_donhang` (`id_donhang`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_trangthai` (`id_trangthai`),
  ADD KEY `lk_thanhtoan` (`id_thanhtoan`),
  ADD KEY `lk_taikhoan` (`id_taikhoan`),
  ADD KEY `lk_sanpham1` (`id_sanpham`),
  ADD KEY `lk_trangthaithanhtoan` (`id_trangthaithanhtoan`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_taikhoan1` (`id_taikhoan`);

--
-- Indexes for table `giohang_item`
--
ALTER TABLE `giohang_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham` (`id_sanpham`),
  ADD KEY `lk_giohang` (`id_giohang`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_dm` (`id_danhmuc`),
  ADD KEY `lk_anhsp` (`id_hinhanh_chinh`);

--
-- Indexes for table `sanpham_thuoctinh`
--
ALTER TABLE `sanpham_thuoctinh`
  ADD PRIMARY KEY (`id_sanpham`,`id_thuoctinh`),
  ADD KEY `id_thuoctinh` (`id_thuoctinh`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thuoctinh`
--
ALTER TABLE `thuoctinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trangthai_donhang`
--
ALTER TABLE `trangthai_donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trangthai_thanhtoan`
--
ALTER TABLE `trangthai_thanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anhsp`
--
ALTER TABLE `anhsp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `bien_the`
--
ALTER TABLE `bien_the`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `giohang_item`
--
ALTER TABLE `giohang_item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `thuoctinh`
--
ALTER TABLE `thuoctinh`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `trangthai_donhang`
--
ALTER TABLE `trangthai_donhang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `trangthai_thanhtoan`
--
ALTER TABLE `trangthai_thanhtoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anhsp`
--
ALTER TABLE `anhsp`
  ADD CONSTRAINT `lk_sanphamanh` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `bien_the`
--
ALTER TABLE `bien_the`
  ADD CONSTRAINT `bien_the_ibfk_2` FOREIGN KEY (`id_thuoctinh`) REFERENCES `thuoctinh` (`id`);

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `ld_binhluan_taikhoan` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lk_binhluan_sanpham` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD CONSTRAINT `chitiet_donhang_ibfk_1` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiet_donhang_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `lk_sanpham1` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lk_taikhoan` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lk_thanhtoan` FOREIGN KEY (`id_thanhtoan`) REFERENCES `thanhtoan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lk_trangthai` FOREIGN KEY (`id_trangthai`) REFERENCES `trangthai_donhang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lk_trangthaithanhtoan` FOREIGN KEY (`id_trangthaithanhtoan`) REFERENCES `trangthai_thanhtoan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `lk_taikhoan1` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `giohang_item`
--
ALTER TABLE `giohang_item`
  ADD CONSTRAINT `lk_giohang` FOREIGN KEY (`id_giohang`) REFERENCES `giohang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lk_sanpham` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_anhsp` FOREIGN KEY (`id_hinhanh_chinh`) REFERENCES `sanpham` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lk_dm` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `sanpham_thuoctinh`
--
ALTER TABLE `sanpham_thuoctinh`
  ADD CONSTRAINT `sanpham_thuoctinh_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `sanpham_thuoctinh_ibfk_2` FOREIGN KEY (`id_thuoctinh`) REFERENCES `thuoctinh` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
