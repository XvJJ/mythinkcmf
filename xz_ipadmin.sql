/*
 Navicat Premium Data Transfer

 Source Server         : wampLocalhost
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : xz

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 22/03/2018 14:59:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for xz_ipadmin
-- ----------------------------
DROP TABLE IF EXISTS `xz_ipadmin`;
CREATE TABLE `xz_ipadmin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ipremark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xz_ipadmin
-- ----------------------------
INSERT INTO `xz_ipadmin` VALUES (2, '121.42.156.42', '华北1');
INSERT INTO `xz_ipadmin` VALUES (3, '114.55.144.40', '华东1');
INSERT INTO `xz_ipadmin` VALUES (4, '121.40.190.243', '华东1');
INSERT INTO `xz_ipadmin` VALUES (5, '115.29.223.185', '华东1');
INSERT INTO `xz_ipadmin` VALUES (6, '114.215.190.152', '华东1');
INSERT INTO `xz_ipadmin` VALUES (7, '139.196.15.49', '华东2');
INSERT INTO `xz_ipadmin` VALUES (8, '139.196.46.31', '华东2');
INSERT INTO `xz_ipadmin` VALUES (9, '139.196.15.119', '华东2');
INSERT INTO `xz_ipadmin` VALUES (10, '139.196.240.149', '华东2');
INSERT INTO `xz_ipadmin` VALUES (11, '139.196.188.241', '华东2');
INSERT INTO `xz_ipadmin` VALUES (12, '139.224.24.200', '华东2');
INSERT INTO `xz_ipadmin` VALUES (13, '139.196.49.198', '华东2');
INSERT INTO `xz_ipadmin` VALUES (14, '47.90.79.92', '香港');
INSERT INTO `xz_ipadmin` VALUES (15, '47.90.79.63', '香港');
INSERT INTO `xz_ipadmin` VALUES (16, '47.90.79.121', '香港');
INSERT INTO `xz_ipadmin` VALUES (17, '47.90.78.199', '');
INSERT INTO `xz_ipadmin` VALUES (18, '121.40.133.174', '亚韩--华东1');
INSERT INTO `xz_ipadmin` VALUES (19, '27.255.77.82', '');
INSERT INTO `xz_ipadmin` VALUES (20, '27.288.83.77', '');
INSERT INTO `xz_ipadmin` VALUES (21, '49.213.8.38', '');
INSERT INTO `xz_ipadmin` VALUES (22, '49.213.8.126', '');
INSERT INTO `xz_ipadmin` VALUES (23, '49.213.9.99', '');
INSERT INTO `xz_ipadmin` VALUES (24, '58.96.177.191', '');
INSERT INTO `xz_ipadmin` VALUES (25, '58.218.199.37', '');
INSERT INTO `xz_ipadmin` VALUES (26, '61.155.194.43', '');
INSERT INTO `xz_ipadmin` VALUES (27, '61.160.249.39', '');
INSERT INTO `xz_ipadmin` VALUES (28, '61.160.251.49', '');
INSERT INTO `xz_ipadmin` VALUES (29, '103.28.44.187', '');
INSERT INTO `xz_ipadmin` VALUES (30, '103.28.45.116', '');
INSERT INTO `xz_ipadmin` VALUES (31, '103.28.45.130', '');
INSERT INTO `xz_ipadmin` VALUES (32, '103.28.46.227', '');
INSERT INTO `xz_ipadmin` VALUES (33, '106.185.40.25', '');
INSERT INTO `xz_ipadmin` VALUES (34, '106.185.41.236', '');
INSERT INTO `xz_ipadmin` VALUES (35, '106.185.43.8', '');
INSERT INTO `xz_ipadmin` VALUES (36, '106.185.47.171', '');
INSERT INTO `xz_ipadmin` VALUES (37, '106.186.121.75', '');
INSERT INTO `xz_ipadmin` VALUES (38, '106.187.36.198', '');
INSERT INTO `xz_ipadmin` VALUES (39, '119.28.2.250', '香港服务器，修改网站需打开Serv-U');
INSERT INTO `xz_ipadmin` VALUES (40, '119.28.17.249', '');
INSERT INTO `xz_ipadmin` VALUES (41, '203.88.163.96', '');
INSERT INTO `xz_ipadmin` VALUES (42, '203.124.12.114', '');
INSERT INTO `xz_ipadmin` VALUES (43, '203.124.12.131', '');
INSERT INTO `xz_ipadmin` VALUES (44, '203.124.12.159', '');
INSERT INTO `xz_ipadmin` VALUES (45, '203.124.12.196', '');
INSERT INTO `xz_ipadmin` VALUES (46, '203.124.12.215', '');
INSERT INTO `xz_ipadmin` VALUES (47, '203.124.12.229', '');
INSERT INTO `xz_ipadmin` VALUES (48, '211.42.249.47', '');
INSERT INTO `xz_ipadmin` VALUES (49, '211.152.51.148', '');
INSERT INTO `xz_ipadmin` VALUES (50, '218.98.35.181', '');
INSERT INTO `xz_ipadmin` VALUES (51, '222.186.9.77', '');
INSERT INTO `xz_ipadmin` VALUES (52, '222.186.41.70', '');
INSERT INTO `xz_ipadmin` VALUES (53, '223.4.204.214', '');
INSERT INTO `xz_ipadmin` VALUES (54, '223.4.208.52', '');
INSERT INTO `xz_ipadmin` VALUES (55, '223.4.211.196', '');
INSERT INTO `xz_ipadmin` VALUES (56, '14.17.81.26', '');
INSERT INTO `xz_ipadmin` VALUES (57, '47.90.79.154', '');
INSERT INTO `xz_ipadmin` VALUES (58, '47.90.79.166', '');
INSERT INTO `xz_ipadmin` VALUES (59, '49.213.8.85', '');
INSERT INTO `xz_ipadmin` VALUES (60, '49.213.8.95', '');
INSERT INTO `xz_ipadmin` VALUES (61, '58.211.73.248', '');
INSERT INTO `xz_ipadmin` VALUES (62, '61.155.150.192', '');
INSERT INTO `xz_ipadmin` VALUES (63, '61.155.161.243', '');
INSERT INTO `xz_ipadmin` VALUES (64, '61.155.173.250', '');
INSERT INTO `xz_ipadmin` VALUES (65, '61.155.202.41', '');
INSERT INTO `xz_ipadmin` VALUES (66, '61.155.214.33', '');
INSERT INTO `xz_ipadmin` VALUES (67, '119.28.20.97', '');
INSERT INTO `xz_ipadmin` VALUES (68, '180.150.227.9', '');
INSERT INTO `xz_ipadmin` VALUES (69, '43.227.196.97', '');
INSERT INTO `xz_ipadmin` VALUES (70, '116.255.169.119', '');
INSERT INTO `xz_ipadmin` VALUES (71, '59.188.233.148', '');
INSERT INTO `xz_ipadmin` VALUES (72, '222.189.239.151', '');
INSERT INTO `xz_ipadmin` VALUES (73, '103.28.46.117', '');
INSERT INTO `xz_ipadmin` VALUES (74, '103.6.222.49', '');
INSERT INTO `xz_ipadmin` VALUES (75, '112.85.219.131', '');
INSERT INTO `xz_ipadmin` VALUES (76, '58.218.211.197', '');
INSERT INTO `xz_ipadmin` VALUES (77, '27.255.83.77', '');
INSERT INTO `xz_ipadmin` VALUES (78, '61.160.251.46', '');
INSERT INTO `xz_ipadmin` VALUES (79, '218.65.30.68', '');
INSERT INTO `xz_ipadmin` VALUES (80, '118.244.168.44', '');
INSERT INTO `xz_ipadmin` VALUES (81, '58.68.254.21', '');
INSERT INTO `xz_ipadmin` VALUES (82, '211.149.236.231', '');
INSERT INTO `xz_ipadmin` VALUES (83, '121.40.254.10', '');
INSERT INTO `xz_ipadmin` VALUES (84, '58.211.137.222', '');
INSERT INTO `xz_ipadmin` VALUES (85, '106.14.238.14', '');
INSERT INTO `xz_ipadmin` VALUES (87, '60.174.237.174', '');
INSERT INTO `xz_ipadmin` VALUES (88, '60.174.237.163', '');
INSERT INTO `xz_ipadmin` VALUES (89, '43.277.196.97', NULL);

SET FOREIGN_KEY_CHECKS = 1;
