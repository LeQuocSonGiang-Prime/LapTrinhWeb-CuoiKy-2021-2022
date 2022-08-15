-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 15, 2022 lúc 10:13 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_admin`, `name`, `username`, `password`, `avatar`) VALUES
('', '', '', '', NULL),
('ADMIN00001', 'SƠN GIANG', 'lequocsongiang@gmail.com', '12', NULL),
('ADMIN00002', 'CÔNG DANH', 'congdanh456', '12', NULL),
('ADMIN00003', 'ĐÌNH DANH', 'dinhdanh789', '12', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
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
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id_bill`, `id_user`, `id_house`, `time_checkin`, `time_checkout`, `time_order`, `confirm`) VALUES
('BILL000001', 'USER000001', 'HOUSE00001', '2022-07-10', '2022-07-15', '2022-06-25 00:00:00', 0),
('BILL000002', 'USER000002', 'HOUSE00002', '2022-06-24', '2022-06-30', '2022-06-15 13:21:12', 0),
('BILL000003', 'USER000003', 'HOUSE00003', '2022-06-23', '2022-07-01', '2022-06-01 00:00:00', 0),
('BILL000004', 'USER000004', 'HOUSE00001', '2022-07-16', '2022-07-19', '2022-05-16 00:00:00', 0),
('BILL000005', 'USER000005', 'HOUSE00001', '2022-07-22', '2022-07-28', '2022-05-29 00:00:00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
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
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id_comment`, `id_house`, `id_user`, `comment`, `star`, `time_cmt`) VALUES
('COMMENT001', 'HOUSE00001', 'USER000001', 'Nhà đẹp, giá phải chăng, rất tuyệt', 5, '2022-04-12 00:00:00'),
('COMMENT002', 'HOUSE00001', 'USER000003', 'cung oke day', 4, '2022-05-23 00:00:00'),
('COMMENT003', 'HOUSE00001', 'USER000002', 'nha dep oke', 2, '2022-04-02 00:00:00'),
('COMMENT005', 'HOUSE00001', 'USER000005', 'ngon ngon', 4, '2022-04-23 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favourite`
--

CREATE TABLE `favourite` (
  `id_favor` char(10) NOT NULL,
  `id_house` char(10) NOT NULL,
  `id_user` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `house`
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
-- Đang đổ dữ liệu cho bảng `house`
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
-- Cấu trúc bảng cho bảng `image_house`
--

CREATE TABLE `image_house` (
  `id_image` char(10) NOT NULL,
  `id_house` char(10) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `alt` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `image_house`
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
('IMAGE32001', 'HOUSE00032', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse-2%2Fhouse%20(32).jpg?alt=media&token=b81c194f-7858-4973-85fa-aaef5cf60593', 'DGWUI\\');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `place`
--

CREATE TABLE `place` (
  `id_place` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `place`
--

INSERT INTO `place` (`id_place`, `name`, `image`, `link`) VALUES
('PLACE00001', 'ẨM THỰC ĐƯỜNG PHỐ ĐI BỘ HÀ NỘI', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_01.webp?alt=media&token=ebabb8c9-61a5-4f22-9d80-69beb87e39ff', 'https://vietnammoi.vn/nguoi-dan-ha-noi-hao-huc-thuong-thuc-am-thuc-truyen-thong-cua-han-quoc-tai-pho-di-bo-20191108133223644.htm'),
('PLACE00002', 'Lớp học nấu ăn tại Hà Nội tại Biệt thự Pháp', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_02.webp?alt=media&token=c555bd9d-262e-467f-9a97-d66f2e463c74', 'https://www.huongnghiepaau.com/hoc-nau-an?gclid=Cj0KCQjw3eeXBhD7ARIsAHjssr9Fy62TnjFPyIPdAD5nAmFB3qp9eALKsY-gEpjicYwmp482KCBV98waAqMIEALw_wcB'),
('PLACE00003', 'Lê la khắp các quán bar trong khu phố cổ tuyệt vời', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_03.webp?alt=media&token=12ff0be9-2b9b-4167-9ea8-c3ae14361b94', 'https://www.tripadvisor.com.vn/Attractions-g293924-Activities-c20-t99-Hanoi.html'),
('PLACE00004', 'Tận hưởng Hà Nội với một nhiếp ảnh gia', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_04.webp?alt=media&token=5f822f16-c404-4a91-80f8-e0012f6a38ee', 'https://tokyometro.vn/ha-noi-thap-nien-90-qua-ong-kinh-cua-cua-nhiep-anh-gia-nhat-ban-yuichi-kobayashi-s287526-html/'),
('PLACE00005', 'Tonkin Adventure - Hidden Hanoi with Local', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_05.webp?alt=media&token=ac930c17-9e48-4f08-a27b-f4622f4bc1c6', 'https://tonkintravel.com/en/tours_post/hanoi/'),
('PLACE00006', 'The Famous Ha Giang Loop Adventure', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_06.webp?alt=media&token=c4ef82aa-321c-49ad-aaaf-9caa2da56780', 'https://hagianglooptours.com/?gclid=Cj0KCQjw3eeXBhD7ARIsAHjssr_wwexAIaJchcqr4lHOAuDdYG7r2ch8ShK8tGmFl3VC2Nu_wHBEfuMaArB8EALw_wcB'),
('PLACE00007', 'Buổi chụp hình đêm tại Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_07.webp?alt=media&token=063d129b-316e-4e19-986b-374a0f8b493f', 'https://vietnammoi.vn/nhung-diem-check-in-dep-buoi-toi-khong-nen-bo-qua-khi-du-lich-ha-noi-vao-dip-20-10-20191016135451416.htm'),
('PLACE00008', 'UNIQUE LOCAL BEER ADVENTURER', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_08.webp?alt=media&token=13d27c68-5302-49da-9e70-e5c36cfe9233', 'https://digifood.vn/blog/quan-bia-craft/'),
('PLACE00009', 'HanoiSoul-Street Food With Local Guide', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_09.webp?alt=media&token=c9e82f74-5d53-426b-8e49-757bad6973a9', 'https://www.wheregoesrose.com/hanoi-street-food/'),
('PLACE00010', 'Học chụp ảnh với máy ảnh phim tại Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_10.webp?alt=media&token=1af136bf-ea8b-4132-8d92-9db175e1c94d', 'https://mimosawedding.net/hoc-chup-anh-o-dau-ha-noi/'),
('PLACE00011', 'Tour khám phá ẩm thực và lịch sử ăn chay Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_11.webp?alt=media&token=5364a7c4-881a-484c-9aaa-3ff9a16856fe', 'https://mytour.vn/location/8515-mot-ngay-kham-pha-am-thuc-ha-noi.html'),
('PLACE00012', 'Tour ẩm thực đường phố địa phương với người Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_12.webp?alt=media&token=cc30aff9-0dd6-4a17-895d-0bbaa3248c49', 'https://www.traveloka.com/vi-vn/activities/vietnam/product/hanoi-street-food-by-night-1000772735270'),
('PLACE00013', 'Thích làm gốm ở Phố cổ!', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_13.webp?alt=media&token=ac173b44-2398-443e-b6dd-34a12115fb26', 'https://www.kkday.com/vi/product/119140-bat-trang-pottery-workshop-in-ha-noi-old-quarter'),
('PLACE00014', 'Tour tham quan khu phố Pháp - Quá khứ và hiện tại', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_14.webp?alt=media&token=d4ca8c22-43bd-4c84-b9f3-6a9c7409cb39', 'https://8trip.vn/tourdetail.jsp?destination=2&tour_id=664'),
('PLACE00015', 'Tour khám phá ẩm thực khi đi bộ với hướng dẫn viên riêng', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_15.webp?alt=media&token=8b62e92c-a9bb-4d6e-ac30-d241cccd8ce0', 'https://tcdulichtphcm.vn/chuyen-hay/dan-khach-tay-di-food-tour-quanh-pho-co-c17a31876.html'),
('PLACE00016', 'Chuyến phiêu lưu bằng xe máy Hà Giang nổi tiếng', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_16.webp?alt=media&token=44f936e9-2a79-47ad-8574-53bda1170405', 'https://motogo.vn/phuot-ha-giang/'),
('PLACE00017', 'NHÀ TƯ VẤN BIA ĐỊA PHƯƠNG ĐỘC ĐÁO', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_17.webp?alt=media&token=4125d484-1063-4ecc-bc85-b35c6e490136', 'https://www.sabeco.com.vn/nha-may-bia-sai-gon--nguyen-chi-thanh'),
('PLACE00018', 'Lớp học nấu ăn chay đích thực của Việt Nam', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_18.webp?alt=media&token=e32a20ea-e37e-41e2-9a1f-ba7e5791eb93', 'https://www.huongnghiepaau.com/hoc-nau-an/mon-chay?gclid=Cj0KCQjw3eeXBhD7ARIsAHjssr_aOZvYsjZ9IQsk7ymK4U3Ds94zK3zl3GYZiz0vPD-b0AJ4Ny8FC7saAqaWEALw_wcB'),
('PLACE00019', 'Lớp học nấu ăn Hà Nội và tham quan chợ địa phương', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_19.webp?alt=media&token=2d4ead2e-e635-4ed5-bf26-9355853f6182', 'https://vn.alongwalker.co/10-trung-tam-day-nau-an-uy-tin-nhat-o-ha-noi-s89305.html'),
('PLACE00020', 'Ẩm thực đường phố và âm nhạc ẩn tối ưu', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_20.webp?alt=media&token=cce7f744-64cf-42dc-a525-a3535c1c1d9a', 'https://tastykitchen.vn/kham-pha-am-thuc/diem-an-tuong-ve-am-thuc-viet-nam-trong-mat-ban-be-quoc-te-p493'),
('PLACE00021', 'Chuyến đi Sapa2day1nite (homestay) từ Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_21.webp?alt=media&token=fb610fe6-9abf-42a3-bd1b-7deb03c4a619', 'https://www.klook.com/vi/activity/10459-2d1n-sapa-tour-hanoi-halong-bay/'),
('PLACE00022', 'Bốn làng thủ công bí mật của Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_22.webp?alt=media&token=49a8c2e2-6cf1-499f-b49d-505343b61d98', 'https://vegiagoc.com/nhung-lang-nghe-thu-cong-noi-tieng-o-viet-nam.html'),
('PLACE00023', 'Ninh Bình - Tam Cốc - Xe buýt Limo hang động Mua', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_23.webp?alt=media&token=c7a81120-8b81-4d5f-b688-9a7ea39b45f9', ''),
('PLACE00024', 'Chuyến đi DragonSails Luxury Hạ Long Day', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_24.webp?alt=media&token=754c5e64-d194-4a53-bfad-b9a04f55dc16', ''),
('PLACE00025', 'NYNA Coffee_Lớp học cà phê trứng độc đáo với người dân địa phương', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_25.webp?alt=media&token=33485762-2ac2-40b0-8178-ebd836467582', ''),
('PLACE00026', 'Đi xe đạp đường trường hoặc đi xe đạp đường trường với tour đi bộ khám phá ẩm thực tuyệt vời', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_26.webp?alt=media&token=3caa6ca1-233e-482d-9cf6-1a6e78398505', ''),
('PLACE00027', 'Các phòng trưng bày nghệ thuật đô thị của Hà Nội và Phở ngon nhất', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_27.webp?alt=media&token=bc13eaa2-fb3d-4b9e-a3d1-a981e95d8f24', ''),
('PLACE00028', 'Chuyến tham quan Hoa Lư - Tam Cốc cổ điển trong ngày', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_28.webp?alt=media&token=0e6e4354-befb-4a37-9c92-fe02b9f7c8b3', ''),
('PLACE00029', 'TOUR ĐI BỘ KHÁM PHÁ ẨM THỰC QUA CÁC CON HẺM PHÍA SAU', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_29.jpeg?alt=media&token=ccee40fd-a566-4cf8-aff8-48c2f14c5a0e', ''),
('PLACE00030', 'Tour đi bộ Khu phố cổ Hà Nội nửa ngày', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_30.webp?alt=media&token=7d1b1ee7-1fce-41c6-8273-2a59416d7d8a', ''),
('PLACE00031', 'Tìm hiểu cách quay phim tại Hà Nội với một người dân địa phương', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_31.webp?alt=media&token=0e51e022-802d-42b9-aed0-4e3acb663ca1', ''),
('PLACE00032', 'Chuyến du lịch Vịnh Hạ Long cả ngày', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_32.webp?alt=media&token=60e639c5-d3c3-477a-8867-2353dad445ad', ''),
('PLACE00033', 'Chuyến phiêu lưu trong ngày tùy chỉnh', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_33.webp?alt=media&token=50b15eec-ce53-4922-b330-86627afb8cf0', ''),
('PLACE00034', 'Nấu các món ăn Việt Nam đích thực', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_34.webp?alt=media&token=3e1b3e02-6ebf-4ebd-ae0f-721832226f6c', ''),
('PLACE00035', 'Tour tham quan Hoa Lư, Tam Cốc, Hang Mua một ngày', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_35.webp?alt=media&token=aec11718-fa81-459c-8e56-d3400f28e53b', ''),
('PLACE00036', 'Trà đạo Việt Nam do bậc thầy trà cung cấp', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_36.webp?alt=media&token=3387f1d5-5e04-4a8c-b39a-4d4b65dcad85', ''),
('PLACE00037', 'Ẩm thực đường phố Hà Nội với hướng dẫn viên địa phương', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_37.webp?alt=media&token=1a660aae-838e-4c32-985f-e42d4cf7cd0d', ''),
('PLACE00038', 'Bài học Việt Nam hữu ích cho du khách', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_38.webp?alt=media&token=1457acf9-c2a9-4e50-80fd-7c157a0903da', ''),
('PLACE00039', 'Chụp ảnh ban ngày và khám phá Hà Nội với người dân địa phương', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_39.webp?alt=media&token=a2885c23-20fe-4564-9119-2c752fc8db2e', ''),
('PLACE00040', 'N Y N A Coffee_Cách làm cà phê dừa theo cách của địa phương', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_40.webp?alt=media&token=4abc688f-f559-4f0f-945e-97aba3fa88f6', ''),
('PLACE00041', 'HanoiSoul-Street Food với Hướng dẫn địa phương', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_41.webp?alt=media&token=04be3f54-4143-40bc-af3e-79d796aec99f', ''),
('PLACE00042', 'Tour ẩm thực ba giờ và tham quan thành phố ở phía sau xe máy', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_42.webp?alt=media&token=611e70c1-e51e-4965-84ac-d1bbe2962139', ''),
('PLACE00043', 'Tự tay làm các hoạt động tại làng địa phương từ Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_43.webp?alt=media&token=d9504db4-d221-4a92-bbb9-9164c81024cc', ''),
('PLACE00044', 'Chuyến tham quan đường phố tối ưu trên xe máy', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_44.webp?alt=media&token=c474a759-392a-4058-9697-9ae0d713a482', ''),
('PLACE00045', 'Tour khám phá ẩm thực đường phố với tâm hồn Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_45.webp?alt=media&token=38610677-18b1-4cd0-8b4a-16915e37d6d2', ''),
('PLACE00046', 'Nấu ăn tại nhà tươi ngon và nhiều cây xanh', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_46.webp?alt=media&token=7c9e9116-2867-4cbf-b67a-0bddf1c33c81', ''),
('PLACE00047', 'Vịnh Hạ Long, chèo thuyền kayak, ngắm đỉnh Titop với Arcady Cruise', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_47.webp?alt=media&token=53335f48-23c2-4168-b573-76b7b9949386', ''),
('PLACE00048', 'Chùa Bái Đính - Tour tham quan hang động Tràng An', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_48.webp?alt=media&token=4d01e3e4-171b-4604-b88e-cf2052328a65', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `request_booking`
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
-- Cấu trúc bảng cho bảng `user`
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
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `fullname`, `email`, `address`, `phone`, `avatar`, `status`) VALUES
('USER000001', 'Lê Quốc Sơn Giang', '847dc0f7420f7d9b30abccf8729bd028', 'Lê Quốc Sơn Giang', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F02a66ffeddcc6c983e5d9782346c5b7f.jpg?alt=media&token=a9de87bd-be63-4096-ac9f-77211d9285fb', 0),
('USER000002', 'Phạm Công Danh', '847dc0f7420f7d9b30abccf8729bd028', 'Phạm Công Danh', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F05a56e54fd8fdcfd8182d908a1a97699.jpg?alt=media&token=59fdc8e9-5312-4c08-99e3-150e57b4455b', 0),
('USER000003', 'Trần Đình Danh', '847dc0f7420f7d9b30abccf8729bd028', 'Trần Đình Danh', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F0a4c49c117a8ffb10d3fad0a42bd3a7c.jpg?alt=media&token=53c49beb-15c6-4a32-99b1-cb1b259cfeae', 0),
('USER000004', 'Nguyễn Công Khải', '847dc0f7420f7d9b30abccf8729bd028', 'Nguyễn Công Khải', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F1abc37176324c9c531ef88e3accf2f62.jpg?alt=media&token=5fdb2d3f-5958-4863-8f4d-b63c79ef5ab5', 0),
('USER000005', 'Nguyễn Minh Thi', '847dc0f7420f7d9b30abccf8729bd028', 'Nguyễn Minh Thi', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F2f5ae2dbd1ad3df364bc.jpg?alt=media&token=30e264fa-845b-4d1f-8b1d-03f216967174', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`) USING BTREE;

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`) USING BTREE;

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`) USING BTREE;

--
-- Chỉ mục cho bảng `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`id_favor`) USING BTREE;

--
-- Chỉ mục cho bảng `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id_house`) USING BTREE;

--
-- Chỉ mục cho bảng `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id_place`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
