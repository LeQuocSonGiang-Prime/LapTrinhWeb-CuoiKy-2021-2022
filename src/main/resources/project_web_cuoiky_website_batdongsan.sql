/*
 Navicat Premium Data Transfer

 Source Server         : Project_Web_CuoiKy_WebSite_BatDongSan
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : project_web_cuoiky_website_batdongsan

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 07/01/2022 08:45:48
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `time_checkin` datetime NOT NULL,
  `time_checkout` datetime NOT NULL,
  PRIMARY KEY (`id_bill`) USING BTREE,
  INDEX `fk_billuser`(`id_user`) USING BTREE,
  INDEX `fk_billhouse`(`id_house`) USING BTREE,
  CONSTRAINT `fk_billhouse` FOREIGN KEY (`id_house`) REFERENCES `house` (`id_house`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_billuser` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `timecmt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_comment`) USING BTREE,
  INDEX `FK_cmt`(`id_user`) USING BTREE,
  INDEX `fk_placecomment`(`id_house`) USING BTREE,
  CONSTRAINT `FK_cmt` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_comment` FOREIGN KEY (`id_house`) REFERENCES `house` (`id_house`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_placecomment` FOREIGN KEY (`id_house`) REFERENCES `place` (`id_place`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  PRIMARY KEY (`id_favor`) USING BTREE,
  INDEX `fk_favo_user`(`id_user`) USING BTREE,
  INDEX `fk_favo_place`(`id_house`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'loại phòng , loại nhà',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'chi tiết căn phòng',
  `foryou` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'NƠI NÀY CÓ NHỮNG GÌ CHO BẠN',
  `price` int NOT NULL,
  `saleprice` int NULL DEFAULT NULL,
  `time_checkin` datetime NULL DEFAULT NULL,
  `time_checkout` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_house`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('HOUSE10001', '', '', '', '', '', 0, NULL, NULL, NULL);
INSERT INTO `house` VALUES ('HOUSE10002', '', '', '', '', '', 0, NULL, NULL, NULL);
INSERT INTO `house` VALUES ('HOUSE20001', 'DFDFDFDFD', '', '', '', '', 0, NULL, NULL, NULL);
INSERT INTO `house` VALUES ('LHM0000001', 'Zanic Atula New 2021', '1', 'Quận 1, Hồ Chí Minh, Việt Nam', '100M², 4 Người, 2 Phòng Ngủ, 2 Giường, 1 Phòng Tắm', 'Dầu gội đầu;Tiện nghi thiết yếu:Khăn tắm, khăn trải giường, xà phòng và giấy vệ sinh;Wi-fi;Lối vào riêng:Đường hoặc lối vào tòa nhà riêng;Sân sau:Không gian ngoài trời tại chỗ ở thường có cỏ bao phủ;Chỗ đỗ xe miễn phí tại nơi ở; Bể bơi; ; ; ; ; ; ; ; ; ', 50, 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for image_house
-- ----------------------------
DROP TABLE IF EXISTS `image_house`;
CREATE TABLE `image_house`  (
  `id_image` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_house` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_image`) USING BTREE,
  INDEX `fk_imageplace`(`id_house`) USING BTREE,
  CONSTRAINT `FK_house` FOREIGN KEY (`id_house`) REFERENCES `house` (`id_house`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_house
-- ----------------------------
INSERT INTO `image_house` VALUES ('IMAGED1001', 'HOUSE10002', 'efded', 'dsdsdsd');

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place`  (
  `id_place` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_place`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES ('PLACE00001', 'HSUDGSHUDGSUGDSUD');

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
  PRIMARY KEY (`id_request`) USING BTREE,
  INDEX `fk_req_user`(`id_user`) USING BTREE,
  INDEX `fk_req_house`(`id_house`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Mat Khau',
  `fullname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
