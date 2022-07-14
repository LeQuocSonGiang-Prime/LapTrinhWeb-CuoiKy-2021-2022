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

 Date: 08/07/2022 07:27:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id_admin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_admin`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('', '', '', '', NULL);
INSERT INTO `admin` VALUES ('ADMIN00001', 'SƠN GIANG', 'lequocsongiang@gmail.com', '12', NULL);
INSERT INTO `admin` VALUES ('ADMIN00002', 'CÔNG DANH', 'congdanh456', '12', NULL);
INSERT INTO `admin` VALUES ('ADMIN00003', 'ĐÌNH DANH', 'dinhdanh789', '12', NULL);

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `id_bill` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_house` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time_checkin` date NOT NULL,
  `time_checkout` date NOT NULL,
  `time_order` datetime NOT NULL,
  PRIMARY KEY (`id_bill`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('BILL000001', 'USER000001', 'HOUSE00001', '2022-07-10', '2022-07-15', '2022-06-25 00:00:00');
INSERT INTO `bill` VALUES ('BILL000002', 'USER000002', 'HOUSE00002', '2022-06-24', '2022-06-30', '2022-06-15 13:21:12');
INSERT INTO `bill` VALUES ('BILL000003', 'USER000003', 'HOUSE00003', '2022-06-23', '2022-07-01', '2022-06-01 00:00:00');
INSERT INTO `bill` VALUES ('BILL000004', 'USER000004', 'HOUSE00001', '2022-07-16', '2022-07-19', '2022-05-16 00:00:00');
INSERT INTO `bill` VALUES ('BILL000005', 'USER000005', 'HOUSE00001', '2022-07-22', '2022-07-28', '2022-05-29 00:00:00');

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
  `time_cmt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_comment`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('COMMENT001', 'HOUSE00001', 'USER000001', 'Nhà đẹp, giá phải chăng, rất tuyệt', 5, '2022-04-12 00:00:00');
INSERT INTO `comment` VALUES ('COMMENT002', 'HOUSE00001', 'USER000003', 'cung oke day', 4, '2022-05-23 00:00:00');
INSERT INTO `comment` VALUES ('COMMENT003', 'HOUSE00001', 'USER000002', 'nha dep oke', 2, '2022-04-02 00:00:00');
INSERT INTO `comment` VALUES ('COMMENT005', 'HOUSE00001', 'USER000005', 'ngon ngon', 4, '2022-04-23 00:00:00');

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
  PRIMARY KEY (`id_house`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('HOUSE00000', 'Phú Thuận', '4', 'Phú Thuận là HomeStay rất đặc biệt, căn nhà gỗ bên làng đại học', 'tp.Thủ Đức, tp.Hồ Chí Minh', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 279, NULL);
INSERT INTO `house` VALUES ('HOUSE00001', 'An Nhiên ', '1', 'Là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', ' Vũng Tàu', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 200, NULL);
INSERT INTO `house` VALUES ('HOUSE00002', 'Jubiter Long An', '2', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 199, NULL);
INSERT INTO `house` VALUES ('HOUSE00003', 'APPS Hà Nội', '3', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Hà Nội', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 299, NULL);
INSERT INTO `house` VALUES ('HOUSE00004', 'TURAL Bình Định', '2', 'Pink là HomeStay rất đặc biệt, căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Bình Định', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 349, NULL);
INSERT INTO `house` VALUES ('HOUSE00005', 'DIUQWGDIQWG', '2', 'CIJQAWGDIYUASGDCIASB', 'ICHWUICGHQWUICG', ' 100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 564, NULL);
INSERT INTO `house` VALUES ('HOUSE00006', 'Lá Phong', '4', 'Mang đến cơ hội duy nhất để sống trong khung cảnh công viên quốc gia và tận hưởng những khu dân cư yên tĩnh.', 'Bình Định ', '100M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,3 Người', '1,1,1,1,1,1,1,1,1,1', 229, NULL);
INSERT INTO `house` VALUES ('HOUSE00007', 'Cù lao ', '3', 'Căn nhà gỗ bên mảnh vườn nhỏ, mọi thứ đều tạo cho ta cảm giác an nhiên và bình yên vô cùng.', 'Q.12 TP.HCM', ' 80M², 4 Phòng Ngủ, 6 Giường, 1 Phòng Tắm,4 Người', '1,1,1,1,1,1,1,1,1,1', 220, NULL);

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
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_place`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES ('PLACE00001', 'ẨM THỰC ĐƯỜNG PHỐ ĐI BỘ HÀ NỘI', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_01.webp?alt=media&token=ebabb8c9-61a5-4f22-9d80-69beb87e39ff');
INSERT INTO `place` VALUES ('PLACE00002', 'Lớp học nấu ăn tại Hà Nội tại Biệt thự Pháp', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_02.webp?alt=media&token=c555bd9d-262e-467f-9a97-d66f2e463c74');
INSERT INTO `place` VALUES ('PLACE00003', 'Lê la khắp các quán bar trong khu phố cổ tuyệt vời', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_03.webp?alt=media&token=12ff0be9-2b9b-4167-9ea8-c3ae14361b94');
INSERT INTO `place` VALUES ('PLACE00004', 'Tận hưởng Hà Nội với một nhiếp ảnh gia', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_04.webp?alt=media&token=5f822f16-c404-4a91-80f8-e0012f6a38ee');
INSERT INTO `place` VALUES ('PLACE00005', 'Tonkin Adventure - Hidden Hanoi with Local', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_05.webp?alt=media&token=ac930c17-9e48-4f08-a27b-f4622f4bc1c6');
INSERT INTO `place` VALUES ('PLACE00006', 'The Famous Ha Giang Loop Adventure', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_06.webp?alt=media&token=c4ef82aa-321c-49ad-aaaf-9caa2da56780');
INSERT INTO `place` VALUES ('PLACE00007', 'Buổi chụp hình đêm tại Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_07.webp?alt=media&token=063d129b-316e-4e19-986b-374a0f8b493f');
INSERT INTO `place` VALUES ('PLACE00008', 'UNIQUE LOCAL BEER ADVENTURER', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_08.webp?alt=media&token=13d27c68-5302-49da-9e70-e5c36cfe9233');
INSERT INTO `place` VALUES ('PLACE00009', 'HanoiSoul-Street Food With Local Guide', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_09.webp?alt=media&token=c9e82f74-5d53-426b-8e49-757bad6973a9');
INSERT INTO `place` VALUES ('PLACE00010', 'Học chụp ảnh với máy ảnh phim tại Hà Nội', 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Fplace%2Fplace_10.webp?alt=media&token=1af136bf-ea8b-4132-8d92-9db175e1c94d');
INSERT INTO `place` VALUES ('PLACE00011', 'Biking & Foodie Tour around Old Quarter', '');
INSERT INTO `place` VALUES ('PLACE00012', 'Hanoi Street Food Tour with Real Foodie', '');
INSERT INTO `place` VALUES ('PLACE00013', 'Street Foodtour with Expert Tourguide', '');
INSERT INTO `place` VALUES ('PLACE00014', 'FOOD WALKING TOUR THROUGH BACK ALLEYS', '');
INSERT INTO `place` VALUES ('PLACE00015', 'Touching Hanoi - veg/vegan food tour', '');
INSERT INTO `place` VALUES ('PLACE00016', 'ULTIMATE STREET FOOD & HIDDEN MUSIC', '');
INSERT INTO `place` VALUES ('PLACE00017', 'DragonSails Luxury Halong Day Trip', '');
INSERT INTO `place` VALUES ('PLACE00018', 'Khám phá sáng sớm Hà Nội bằng xe máy', '');
INSERT INTO `place` VALUES ('PLACE00019', 'Hoa Lu- Mua Cave-Tam Coc Luxury Trip', '');
INSERT INTO `place` VALUES ('PLACE00020', 'Bai Dinh Pagoda- Trang An Boat Cave Tour', '');
INSERT INTO `place` VALUES ('PLACE00021', 'Ultimate Street Tour on a Motorbike', '');
INSERT INTO `place` VALUES ('PLACE00022', 'Hanois Vegan Culinary Treasures', '');
INSERT INTO `place` VALUES ('PLACE00023', 'French culture & Maison Centrale', '');
INSERT INTO `place` VALUES ('PLACE00024', 'Ultimate Street Tour on a Motorbike', '');

-- ----------------------------
-- Table structure for request_booking
-- ----------------------------
DROP TABLE IF EXISTS `request_booking`;
CREATE TABLE `request_booking`  (
  `id_request` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_house` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time_checkin` datetime NOT NULL,
  `time_checkout` datetime NOT NULL,
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
  `avatar` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('USER000001', 'Lê Quốc Sơn Giang', '847dc0f7420f7d9b30abccf8729bd028', 'Lê Quốc Sơn Giang', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F02a66ffeddcc6c983e5d9782346c5b7f.jpg?alt=media&token=a9de87bd-be63-4096-ac9f-77211d9285fb', 0);
INSERT INTO `user` VALUES ('USER000002', 'Phạm Công Danh', '847dc0f7420f7d9b30abccf8729bd028', 'Phạm Công Danh', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F05a56e54fd8fdcfd8182d908a1a97699.jpg?alt=media&token=59fdc8e9-5312-4c08-99e3-150e57b4455b', 0);
INSERT INTO `user` VALUES ('USER000003', 'Trần Đình Danh', '847dc0f7420f7d9b30abccf8729bd028', 'Trần Đình Danh', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F0a4c49c117a8ffb10d3fad0a42bd3a7c.jpg?alt=media&token=53c49beb-15c6-4a32-99b1-cb1b259cfeae', 0);
INSERT INTO `user` VALUES ('USER000004', 'Nguyễn Công Khải', '847dc0f7420f7d9b30abccf8729bd028', 'Nguyễn Công Khải', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F1abc37176324c9c531ef88e3accf2f62.jpg?alt=media&token=5fdb2d3f-5958-4863-8f4d-b63c79ef5ab5', 0);
INSERT INTO `user` VALUES ('USER000005', 'Nguyễn Minh Thi', '847dc0f7420f7d9b30abccf8729bd028', 'Nguyễn Minh Thi', 'fwef', NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/web-batdongsan.appspot.com/o/image%2Favatar%2Fuser%2F2f5ae2dbd1ad3df364bc.jpg?alt=media&token=30e264fa-845b-4d1f-8b1d-03f216967174', 0);

SET FOREIGN_KEY_CHECKS = 1;
