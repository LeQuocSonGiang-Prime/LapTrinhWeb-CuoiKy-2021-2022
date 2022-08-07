-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 02:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `name`, `username`, `password`, `avatar`) VALUES
('', '', '', '', NULL),
('ADMIN00001', 'SƠN GIANG', 'lequocsongiang@gmail.com', '12', NULL),
('ADMIN00002', 'CÔNG DANH', 'congdanh456', '12', NULL),
('ADMIN00003', 'ĐÌNH DANH', 'dinhdanh789', '12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id_bill` char(10) NOT NULL,
  `id_user` char(10) NOT NULL,
  `id_house` char(10) NOT NULL,
  `time_checkin` date NOT NULL,
  `time_checkout` date NOT NULL,
  `time_order` datetime NOT NULL,
  `confirm` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id_bill`, `id_user`, `id_house`, `time_checkin`, `time_checkout`, `time_order`, `confirm`) VALUES
('BILL000001', 'USER000001', 'HOUSE00001', '2022-07-10', '2022-07-15', '2022-06-25 00:00:00', 0),
('BILL000002', 'USER000002', 'HOUSE00002', '2022-06-24', '2022-06-30', '2022-06-15 13:21:12', 0),
('BILL000003', 'USER000003', 'HOUSE00003', '2022-06-23', '2022-07-01', '2022-06-01 00:00:00', 0),
('BILL000004', 'USER000004', 'HOUSE00001', '2022-07-16', '2022-07-19', '2022-05-16 00:00:00', 0),
('BILL000005', 'USER000005', 'HOUSE00001', '2022-07-22', '2022-07-28', '2022-05-29 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` varchar(15) NOT NULL,
  `id_house` char(10) DEFAULT NULL COMMENT 'null: comment for us, có nghĩa là đánh giá trang web',
  `id_user` char(10) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `star` tinyint(4) NOT NULL,
  `time_cmt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_comment`, `id_house`, `id_user`, `comment`, `star`, `time_cmt`) VALUES
('COMMENT001', 'HOUSE00001', 'USER000001', 'Nhà đẹp, giá phải chăng, rất tuyệt', 5, '2022-04-12 00:00:00'),
('COMMENT002', 'HOUSE00001', 'USER000003', 'cung oke day', 4, '2022-05-23 00:00:00'),
('COMMENT003', 'HOUSE00001', 'USER000002', 'nha dep oke', 2, '2022-04-02 00:00:00'),
('COMMENT005', 'HOUSE00001', 'USER000005', 'ngon ngon', 4, '2022-04-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `id_favor` char(10) NOT NULL,
  `id_house` char(10) NOT NULL,
  `id_user` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `id_house` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(1) NOT NULL COMMENT 'loại phòng , loại nhà',
  `tutorial` varchar(255) NOT NULL COMMENT 'Đặc biệt, đây là HomeStay duy nhất có thiết kế giường Dorm đôi độc nhất vô nhị, phù hợp với các bạn trẻ, nhóm bạn phượt hoặc đi trăng mật.',
  `address` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL COMMENT 'chi tiết căn phòng',
  `foryou` varchar(500) NOT NULL COMMENT 'xem chi tiet trong file rules',
  `price` int(11) NOT NULL,
  `saleprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`id_house`, `name`, `type`, `tutorial`, `address`, `detail`, `foryou`, `price`, `saleprice`) VALUES
('HOUSE00000', 'Phú Thuận', '4', 'Phú Thuận là HomeStay rất đặc biệt, căn nhà gỗ bên làng đại học', 'tp.Thủ Đức, tp.Hồ Chí Minh', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 279, NULL),
('HOUSE00001', 'An Nhiên ', '1', 'Là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', ' Vũng Tàu', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 200, NULL),
('HOUSE00002', 'Jubiter Long An', '2', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 199, NULL),
('HOUSE00003', 'APPS Hà Nội', '3', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Hà Nội', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 299, NULL),
('HOUSE00004', 'TURAL Bình Định', '2', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Bình Định', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 349, NULL),
('HOUSE00005', 'DIUQWGDIQWG', '2', 'CIJQAWGDIYUASGDCIASB', 'ICHWUICGHQWUICG', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 564, NULL),
('HOUSE00006', 'Lá Phong', '4', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00007', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00008', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00009', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00010', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00011', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00012', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00013', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00014', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00015', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00016', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00017', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00018', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00019', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00020', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00021', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00022', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00023', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00024', 'Lá Phong', '1', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00025', 'Lá Phong', '4', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00026', 'Lá Phong', '4', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00027', 'Lá Phong', '4', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00028', 'Lá Phong', '4', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL),
('HOUSE00029', 'APPS Hà Nội', '3', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Hà Nội', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 299, NULL),
('HOUSE00030', 'APPS Hà Nội', '3', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Hà Nội', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 299, NULL),
('HOUSE00031', 'APPS Hà Nội', '3', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Hà Nội', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 299, NULL),
('HOUSE00032', 'Cù lao ', '3', 'Căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Q.12 TP.HCM', ' 80M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 220, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_house`
--

CREATE TABLE `image_house` (
  `id_image` char(10) NOT NULL,
  `id_house` char(10) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `alt` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `image_house`
--

INSERT INTO `image_house` (`id_image`, `id_house`, `image`, `alt`) VALUES
('', '', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2FLamarStorm_', NULL),
('IMAGE00001', 'HOUSE00000', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(33).jpg?alt=media&token=1e70fb0f-02cf-46f4-8db9-d38586796ab3', 'TUYET'),
('IMAGE10001', 'HOUSE00001', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(1).jpeg?alt=media&token=7c05eced-afb8-4b7e-ba70-8300cbdec810', 'img1'),
('IMAGE20001', 'HOUSE00002', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(2).jpeg?alt=media&token=7eb02244-2a1d-483c-af42-59d1f88b049b', 'QWEDQWD'),
('IMAGE30001', 'HOUSE00003', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(3).jpeg?alt=media&token=551e6e92-f964-4757-8957-bb833f1a07b7', 'RGE'),
('IMAGE40001', 'HOUSE00004', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(4).jpg?alt=media&token=1a97565c-f615-4e9f-9015-c564a61362bf', 'GIANG'),
('IMAGE50001', 'HOUSE00005', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(5).jpg?alt=media&token=5bc3f0e8-b8ac-4d52-93d3-2bdc93da9489', 'DGWUI\\'),
('IMAGE60001', 'HOUSE00006', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(6).jpg?alt=media&token=36f64748-b4c6-403e-bd50-ed3fa29d5f1f', 'TUYET'),
('IMAGE70001', 'HOUSE00007', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(7).jpg?alt=media&token=0aea2f8d-364e-4db4-935d-496a1f8132fd', 'img1'),
('IMAGE80001', 'HOUSE00008', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(8).jpg?alt=media&token=b32b51f3-0de5-4200-bde4-bf935208dd97', 'QWEDQWD'),
('IMAGE90001', 'HOUSE00009', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(9).jpg?alt=media&token=7fcc9a20-8ba7-4358-bef0-05fc328cb559', 'RGE'),
('IMAGE10001', 'HOUSE00010', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(10).jpg?alt=media&token=6d7c804f-c0f1-4a9d-b56a-cfea54cd25bb', 'GIANG'),
('IMAGE11001', 'HOUSE00011', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(11).jpg?alt=media&token=5f190375-c50b-4627-9610-eceb320413e7', 'DGWUI\\'),
('IMAGE12001', 'HOUSE00012', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(12).jpg?alt=media&token=6d911c97-7026-4c15-9214-9f4ea976fa57', 'TUYET'),
('IMAGE13001', 'HOUSE00013', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(13).jpg?alt=media&token=949032ac-b219-4bb9-8ce0-093a5b304e4a', 'img1'),
('IMAGE14001', 'HOUSE00014', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(14).jpg?alt=media&token=d6402f41-c0f8-458b-9568-17f6f51a21ec', 'QWEDQWD'),
('IMAGE15001', 'HOUSE00015', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(15).jpg?alt=media&token=d88ad768-99c5-4af0-bf33-4e97602beac9', 'RGE'),
('IMAGE16001', 'HOUSE00016', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(16).jpg?alt=media&token=def4422c-0fab-4844-865c-e37eb188f5d4', 'GIANG'),
('IMAGE17001', 'HOUSE00017', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(17).jpg?alt=media&token=bb236d96-546b-4405-a189-19344175d597', 'DGWUI\\'),
('IMAGE18001', 'HOUSE00018', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(18).jpg?alt=media&token=09ded845-bc70-422d-b441-404d2975860d', 'TUYET'),
('IMAGE19001', 'HOUSE00019', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(19).jpg?alt=media&token=78a8b3b5-f82a-45b7-b116-5179fa62bda4', 'img1'),
('IMAGE20001', 'HOUSE00020', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(20).jpg?alt=media&token=c04c6832-351d-4c7e-a578-2d91a69b6975', 'QWEDQWD'),
('IMAGE21001', 'HOUSE00021', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(21).jpg?alt=media&token=cb57df48-f7c6-4c8c-9d0f-7a2d5477295c', 'RGE'),
('IMAGE22001', 'HOUSE00022', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(22).jpg?alt=media&token=efe6decb-8e8e-4d10-8dca-f234bb815801', 'GIANG'),
('IMAGE23001', 'HOUSE00023', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(23).jpg?alt=media&token=49662dc6-905b-468c-8bff-27f34c282a34', 'DGWUI\\'),
('IMAGE24001', 'HOUSE00024', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(24).jpg?alt=media&token=74673baa-f715-4c95-a7e8-e5dd2a7aba10', 'RGE'),
('IMAGE25001', 'HOUSE00025', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(25).jpg?alt=media&token=2c169401-be83-4d89-8182-12bd0d50473f', 'GIANG'),
('IMAGE26001', 'HOUSE00026', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(26).jpg?alt=media&token=e184b27a-e706-41d9-a717-cb86457e818c', 'DGWUI\\'),
('IMAGE27001', 'HOUSE00027', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(27).jpg?alt=media&token=fd786766-94e1-47c1-8be9-cfac9610259e', 'TUYET'),
('IMAGE28001', 'HOUSE00028', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(28).jpg?alt=media&token=ccd59475-bdc2-44db-9c33-c56eb728f747', 'img1'),
('IMAGE29001', 'HOUSE00029', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(29).jpg?alt=media&token=bda43451-23af-4ec4-a275-c3c1b789a932', 'QWEDQWD'),
('IMAGE30001', 'HOUSE00030', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(30).jpg?alt=media&token=cc7e2d3e-f98f-48ad-b4f8-e15dcb5f41fe', 'RGE'),
('IMAGE31001', 'HOUSE00031', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(31).jpg?alt=media&token=52a8a5ff-e187-41b2-8b95-b18d8b45f98c', 'GIANG'),
('IMAGE32001', 'HOUSE00032', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(32).jpg?alt=media&token=b81c194f-7858-4973-85fa-aaef5cf60593', 'DGWUI\\'),



-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id_place` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id_place`, `name`, `image`) VALUES
('PLACE00001', 'ẨM THỰC ĐƯỜNG PHỐ ĐI BỘ HÀ NỘI', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_01.webp?alt=media&token=ebabb8c9-61a5-4f22-9d80-69beb87e39ff'),
('PLACE00002', 'Lớp học nấu ăn tại Hà Nội tại Biệt thự Pháp', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_02.webp?alt=media&token=c555bd9d-262e-467f-9a97-d66f2e463c74'),
('PLACE00003', 'Lê la khắp các quán bar trong khu phố cổ tuyệt vời', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_03.webp?alt=media&token=12ff0be9-2b9b-4167-9ea8-c3ae14361b94'),
('PLACE00004', 'Tận hưởng Hà Nội với một nhiếp ảnh gia', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_04.webp?alt=media&token=5f822f16-c404-4a91-80f8-e0012f6a38ee'),
('PLACE00005', 'Tonkin Adventure - Hidden Hanoi with Local', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_05.webp?alt=media&token=ac930c17-9e48-4f08-a27b-f4622f4bc1c6'),
('PLACE00006', 'The Famous Ha Giang Loop Adventure', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_06.webp?alt=media&token=c4ef82aa-321c-49ad-aaaf-9caa2da56780'),
('PLACE00007', 'Buổi chụp hình đêm tại Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_07.webp?alt=media&token=063d129b-316e-4e19-986b-374a0f8b493f'),
('PLACE00008', 'UNIQUE LOCAL BEER ADVENTURER', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_08.webp?alt=media&token=13d27c68-5302-49da-9e70-e5c36cfe9233'),
('PLACE00009', 'HanoiSoul-Street Food With Local Guide', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_09.webp?alt=media&token=c9e82f74-5d53-426b-8e49-757bad6973a9'),
('PLACE00010', 'Học chụp ảnh với máy ảnh phim tại Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_10.webp?alt=media&token=1af136bf-ea8b-4132-8d92-9db175e1c94d'),
('PLACE00011', 'Biking & Foodie Tour around Old Quarter', ''),
('PLACE00012', 'Hanoi Street Food Tour with Real Foodie', ''),
('PLACE00013', 'Street Foodtour with Expert Tourguide', ''),
('PLACE00014', 'FOOD WALKING TOUR THROUGH BACK ALLEYS', ''),
('PLACE00015', 'Touching Hanoi - veg/vegan food tour', ''),
('PLACE00016', 'ULTIMATE STREET FOOD & HIDDEN MUSIC', ''),
('PLACE00017', 'DragonSails Luxury Halong Day Trip', ''),
('PLACE00018', 'Khám phá sáng sớm Hà Nội bằng xe máy', ''),
('PLACE00019', 'Hoa Lu- Mua Cave-Tam Coc Luxury Trip', ''),
('PLACE00020', 'Bai Dinh Pagoda- Trang An Boat Cave Tour', ''),
('PLACE00021', 'Ultimate Street Tour on a Motorbike', ''),
('PLACE00022', 'Hanois Vegan Culinary Treasures', ''),
('PLACE00023', 'French culture & Maison Centrale', ''),
('PLACE00024', 'Ultimate Street Tour on a Motorbike', '');

-- --------------------------------------------------------

--
-- Table structure for table `request_booking`
--

CREATE TABLE `request_booking` (
  `id_request` char(10) NOT NULL,
  `id_house` char(10) NOT NULL,
  `id_user` char(10) NOT NULL,
  `time_checkin` datetime NOT NULL,
  `time_checkout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` char(10) NOT NULL,
  `username` varchar(30) NOT NULL COMMENT 'Tai Khoan',
  `password` varchar(100) NOT NULL COMMENT 'Mat Khau',
  `fullname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `avatar` varchar(1000) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `fullname`, `email`, `address`, `phone`, `avatar`, `status`) VALUES
('USER000001', 'Lê Quốc Sơn Giang', '847dc0f7420f7d9b30abccf8729bd028', 'Lê Quốc Sơn Giang', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F02a66ffeddcc6c983e5d9782346c5b7f.jpg?alt=media&token=a9de87bd-be63-4096-ac9f-77211d9285fb', 0),
('USER000002', 'Phạm Công Danh', '847dc0f7420f7d9b30abccf8729bd028', 'Phạm Công Danh', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F05a56e54fd8fdcfd8182d908a1a97699.jpg?alt=media&token=59fdc8e9-5312-4c08-99e3-150e57b4455b', 0),
('USER000003', 'Trần Đình Danh', '847dc0f7420f7d9b30abccf8729bd028', 'Trần Đình Danh', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F0a4c49c117a8ffb10d3fad0a42bd3a7c.jpg?alt=media&token=53c49beb-15c6-4a32-99b1-cb1b259cfeae', 0),
('USER000004', 'Nguyễn Công Khải', '847dc0f7420f7d9b30abccf8729bd028', 'Nguyễn Công Khải', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F1abc37176324c9c531ef88e3accf2f62.jpg?alt=media&token=5fdb2d3f-5958-4863-8f4d-b63c79ef5ab5', 0),
('USER000005', 'Nguyễn Minh Thi', '847dc0f7420f7d9b30abccf8729bd028', 'Nguyễn Minh Thi', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F2f5ae2dbd1ad3df364bc.jpg?alt=media&token=30e264fa-845b-4d1f-8b1d-03f216967174', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`) USING BTREE;

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`) USING BTREE;

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`) USING BTREE;

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`id_favor`) USING BTREE;

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id_house`) USING BTREE;

--
-- Indexes for table `image_house`
--
ALTER TABLE `image_house`
  ADD PRIMARY KEY (`id_image`) USING BTREE;

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id_place`) USING BTREE;

--
-- Indexes for table `request_booking`
--
ALTER TABLE `request_booking`
  ADD PRIMARY KEY (`id_request`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
