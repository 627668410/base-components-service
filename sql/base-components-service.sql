/*
 Navicat Premium Data Transfer

 Source Server         : lu
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : base-components-service

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 03/12/2019 09:34:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for echart
-- ----------------------------
DROP TABLE IF EXISTS `echart`;
CREATE TABLE `echart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `price` bigint(20) NULL DEFAULT NULL,
  `ratio` float NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  `date` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of echart
-- ----------------------------
INSERT INTO `echart` VALUES (1, '微波炉', 3044, 0.162, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.01');
INSERT INTO `echart` VALUES (2, '洗衣机', 9991, -0.3045, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.01');
INSERT INTO `echart` VALUES (3, '空调', 5253, 0.7129, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.01');
INSERT INTO `echart` VALUES (4, '冰箱', 9886, 0.8041, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.01');
INSERT INTO `echart` VALUES (5, '风扇', 548, -0.8619, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.01');
INSERT INTO `echart` VALUES (6, '小家电', 1451, 0.1397, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.01');
INSERT INTO `echart` VALUES (7, '微波炉', 5445, 0.265, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.02');
INSERT INTO `echart` VALUES (8, '洗衣机', 7292, -0.1619, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.02');
INSERT INTO `echart` VALUES (9, '空调', 124, 0.0146, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.02');
INSERT INTO `echart` VALUES (10, '冰箱', 8746, 0.5871, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.02');
INSERT INTO `echart` VALUES (11, '风扇', 3356, 0.8919, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.02');
INSERT INTO `echart` VALUES (12, '小家电', 544, 0.698, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.02');
INSERT INTO `echart` VALUES (13, '微波炉', 1365, -0.8146, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.03');
INSERT INTO `echart` VALUES (14, '洗衣机', 2041, 0.9788, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.03');
INSERT INTO `echart` VALUES (15, '空调', 6109, 0.4501, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.03');
INSERT INTO `echart` VALUES (16, '冰箱', 4420, 0.3141, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.03');
INSERT INTO `echart` VALUES (17, '风扇', 3773, 0.2204, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.03');
INSERT INTO `echart` VALUES (18, '小家电', 5605, 0.1595, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '19.03');

-- ----------------------------
-- Table structure for menu_right
-- ----------------------------
DROP TABLE IF EXISTS `menu_right`;
CREATE TABLE `menu_right`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `sequence` int(11) NULL DEFAULT NULL,
  `value` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu_right
-- ----------------------------
INSERT INTO `menu_right` VALUES (1, 0, '组件', 0, 0, 'components', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (2, 0, 'echarts图表', 0, 1, 'echarts', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (3, 0, '错误页面', 0, 2, 'error_page', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (4, 0, '收费规则', 0, 3, 'charge_rule', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (5, 0, '数据报表', 0, 4, 'diagram', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (6, 0, '黑白名单', 0, 5, 'bw_list', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (7, 0, '用户权限', 0, 6, 'upms', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (8, 1, '表格', 0, 0, 'table', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (9, 1, '表单', 0, 1, 'form', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (10, 2, '地图', 0, 0, 'echart_map', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (11, 2, '折线图', 0, 1, 'echart_line', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (12, 2, '柱状图', 0, 2, 'echart_bar', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (13, 2, '堆叠图', 0, 3, 'echart_stack', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (14, 4, '车场关联', 0, 1, 'parking_rule_mapping', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (15, 5, '数据报表', 0, 0, 'diagram_show', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (16, 6, '黑名单', 0, 0, 'black_list', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (17, 6, '白名单', 0, 1, 'white_list', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (18, 7, '角色管理', 0, 0, 'role_manage', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (19, 7, '用户管理', 0, 1, 'user_manage', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);

-- ----------------------------
-- Table structure for table
-- ----------------------------
DROP TABLE IF EXISTS `table`;
CREATE TABLE `table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `value` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of table
-- ----------------------------
INSERT INTO `table` VALUES (1, '组件', 'components', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (2, 'echarts图表', 'echarts', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (3, '错误页面', 'error_page', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (4, '收费规则', 'charge_rule', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (5, '数据报表', 'diagram', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (6, '黑白名单', 'bw_list', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (7, '用户权限', 'upms', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (8, '表格', 'table', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (9, '表单', 'form', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (10, '地图', 'echart_map', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (11, '待处理异常', 'wait_process_exception', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (12, '已处理异常', 'processed_exception', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (13, '规则管理', 'rule_manage', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (14, '车场关联', 'parking_rule_mapping', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (15, '数据报表', 'diagram_show', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (16, '黑名单', 'black_list', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (17, '白名单', 'white_list', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (18, '角色管理', 'role_manage', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `table` VALUES (19, '用户管理', 'user_manage', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- ----------------------------
-- Table structure for user_menu_mapping
-- ----------------------------
DROP TABLE IF EXISTS `user_menu_mapping`;
CREATE TABLE `user_menu_mapping`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `menu_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_menu_mapping
-- ----------------------------
INSERT INTO `user_menu_mapping` VALUES (2, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (3, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (4, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (5, 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (6, 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (7, 1, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (8, 1, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (9, 1, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (10, 1, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (11, 1, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (12, 1, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (13, 1, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user_menu_mapping` VALUES (14, 1, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

SET FOREIGN_KEY_CHECKS = 1;
