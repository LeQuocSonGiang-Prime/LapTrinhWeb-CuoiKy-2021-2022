/*
 Navicat Premium Data Transfer

 Source Server         : Web
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : database

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 17/06/2022 00:28:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id_admin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_admin`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('', '', '');
INSERT INTO `admin` VALUES ('ADMIN00001', 'songiang123', '123456789');
INSERT INTO `admin` VALUES ('ADMIN00002', 'congdanh456', '123456789');
INSERT INTO `admin` VALUES ('ADMIN00003', 'dinhdanh789', '123456789');

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `id_bill` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_house` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time_checkin` datetime(0) NOT NULL,
  `time_checkout` datetime(0) NOT NULL,
  PRIMARY KEY (`id_bill`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bill
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id_comment` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_house` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'null: comment for us, có nghĩa là đánh giá trang web',
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `comment` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `star` tinyint NOT NULL,
  `timecmt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_comment`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for favourite
-- ----------------------------
DROP TABLE IF EXISTS `favourite`;
CREATE TABLE `favourite`  (
  `id_favor` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_house` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_favor`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of favourite
-- ----------------------------

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `id_house` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'loại phòng , loại nhà',
  `tutorial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Đặc biệt, đây là HomeStay duy nhất có thiết kế giường Dorm đôi độc nhất vô nhị, phù hợp với các bạn trẻ, nhóm bạn phượt hoặc đi trăng mật.',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'chi tiết căn phòng',
  `foryou` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'xem chi tiet trong file rules',
  `price` int NOT NULL,
  `saleprice` int NULL DEFAULT NULL,
  `time_checkin` datetime(0) NULL DEFAULT NULL,
  `time_checkout` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_house`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('', '', '', '', '', '', '', 0, NULL, NULL, NULL);
INSERT INTO `house` VALUES ('HOUSE00000', 'Phú Thuận', '4', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên làng đại học', 'tp.Thủ Đức, tp.Hồ Chí Minh', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '', 279, NULL, '2022-04-10 03:33:37', '2022-04-10 03:33:37');
INSERT INTO `house` VALUES ('HOUSE00001', 'An Nhiên ', '1', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', ' Vũng Tàu', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '', 200, NULL, NULL, NULL);
INSERT INTO `house` VALUES ('HOUSE00002', 'Jubiter Long An', '2', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '', 199, NULL, NULL, NULL);
INSERT INTO `house` VALUES ('HOUSE00003', 'APPS Hà Nội', '3', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Hà Nội', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '', 299, NULL, NULL, NULL);
INSERT INTO `house` VALUES ('HOUSE00004', 'TURAL Bình Định', '2', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Bình Định', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '', 349, NULL, NULL, NULL);
INSERT INTO `house` VALUES ('HOUSE00005', 'DIUQWGDIQWG', '2', 'CIJQAWGDIYUASGDCIASB', 'ICHWUICGHQWUICG', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '', 564, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for image_house
-- ----------------------------
DROP TABLE IF EXISTS `image_house`;
CREATE TABLE `image_house`  (
  `id_image` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_house` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_image`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of image_house
-- ----------------------------
INSERT INTO `image_house` VALUES ('', '', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2FLamarStorm_', NULL);
INSERT INTO `image_house` VALUES ('IMAGE10002', 'HOUSE00002', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2Fbuy-10.jpg?alt=media&token=25579f33-b3dc-42b0-b7a1-6beba295edcd', 'QWEDQWD');
INSERT INTO `image_house` VALUES ('IMAGE10003', 'HOUSE00003', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2Fbuy-item3.jpg?alt=media&token=c46d5ab8-fcac-45d0-8b3f-b824906c08bc', 'RGE');
INSERT INTO `image_house` VALUES ('IMAGE10043', 'HOUSE00005', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2Fbuy-26.jpg?alt=media&token=85b072d2-2064-42e2-9523-28c4480bc416', 'GIANG');
INSERT INTO `image_house` VALUES ('IMAGE20004', 'HOUSE00004', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2Fbuy-12.jpg?alt=media&token=61e24745-e494-400b-9c1c-3469eae48f2f', 'DGWUI\\');
INSERT INTO `image_house` VALUES ('IMAGE20398', 'HOUSE00000', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2Fbuy-11.jpg?alt=media&token=c7d9b314-5346-486b-8518-9ea8fdc8608a', 'TUYET');
INSERT INTO `image_house` VALUES ('IMAGED1001', 'HOUSE00001', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fhouse%2Fbuy-1.jpg?alt=media&token=3f06eab3-0a46-4e02-9b5b-b0937fec96ff', 'img1');

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place`  (
  `id_place` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_place`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES ('PLACE00001', 'Nhiếp ảnh gia cá nhân của bạn tại Hà Nội');
INSERT INTO `place` VALUES ('PLACE00002', 'Hanoi\'s urban art galleries&best Pho');
INSERT INTO `place` VALUES ('PLACE00003', 'HaLong Bay One Day Tour From Hanoi');
INSERT INTO `place` VALUES ('PLACE00004', 'Chuyến đi đến những khu vực hẻo lánh nhất của Hà Giang');
INSERT INTO `place` VALUES ('PLACE00005', 'Tonkin Adventure - Hidden Hanoi with Local');
INSERT INTO `place` VALUES ('PLACE00006', 'The Famous Ha Giang Loop Adventure');
INSERT INTO `place` VALUES ('PLACE00007', 'Buổi chụp hình đêm tại Hà Nội');
INSERT INTO `place` VALUES ('PLACE00008', 'UNIQUE LOCAL BEER ADVENTURER');
INSERT INTO `place` VALUES ('PLACE00009', 'HanoiSoul-Street Food With Local Guide');
INSERT INTO `place` VALUES ('PLACE00010', 'Học chụp ảnh với máy ảnh phim tại Hà Nội');
INSERT INTO `place` VALUES ('PLACE00011', 'Biking & Foodie Tour around Old Quarter');
INSERT INTO `place` VALUES ('PLACE00012', 'Hanoi Street Food Tour with Real Foodie');
INSERT INTO `place` VALUES ('PLACE00013', 'Street Foodtour with Expert Tourguide');
INSERT INTO `place` VALUES ('PLACE00014', 'FOOD WALKING TOUR THROUGH BACK ALLEYS');
INSERT INTO `place` VALUES ('PLACE00015', 'Touching Hanoi - veg/vegan food tour');
INSERT INTO `place` VALUES ('PLACE00016', 'ULTIMATE STREET FOOD & HIDDEN MUSIC');
INSERT INTO `place` VALUES ('PLACE00017', 'DragonSails Luxury Halong Day Trip');
INSERT INTO `place` VALUES ('PLACE00018', 'Khám phá sáng sớm Hà Nội bằng xe máy');
INSERT INTO `place` VALUES ('PLACE00019', 'Hoa Lu- Mua Cave-Tam Coc Luxury Trip');
INSERT INTO `place` VALUES ('PLACE00020', 'Bai Dinh Pagoda- Trang An Boat Cave Tour');
INSERT INTO `place` VALUES ('PLACE00021', 'Ultimate Street Tour on a Motorbike');
INSERT INTO `place` VALUES ('PLACE00022', 'Hanoi\'s Vegan Culinary Treasures');
INSERT INTO `place` VALUES ('PLACE00023', 'French culture & Maison Centrale');
INSERT INTO `place` VALUES ('PLACE00024', 'Ultimate Street Tour on a Motorbike');

-- ----------------------------
-- Table structure for request_booking
-- ----------------------------
DROP TABLE IF EXISTS `request_booking`;
CREATE TABLE `request_booking`  (
  `id_request` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_house` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time_checkin` datetime(0) NOT NULL,
  `time_checkout` datetime(0) NOT NULL,
  PRIMARY KEY (`id_request`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of request_booking
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Tai Khoan',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Mat Khau',
  `fullname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('USER000001', 'ewfwefwe', '847dc0f7420f7d9b30abccf8729bd028', 'efe', 'fwef', NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES ('USER000002', 'ewfwefwe', '847dc0f7420f7d9b30abccf8729bd028', 'efe', 'fwef', NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES ('USER000003', 'ewfwefwe', '847dc0f7420f7d9b30abccf8729bd028', 'efe', 'fwef', NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES ('USER000004', 'ewfwefwe', '847dc0f7420f7d9b30abccf8729bd028', 'efe', 'fwef', NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES ('USER000005', 'ewfwefwe', '847dc0f7420f7d9b30abccf8729bd028', 'efe', 'fwef', NULL, NULL, NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
