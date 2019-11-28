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

 Date: 28/11/2019 09:03:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
INSERT INTO `menu_right` VALUES (11, 3, '待处理异常', 0, 0, 'wait_process_exception', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (12, 3, '已处理异常', 0, 1, 'processed_exception', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (13, 4, '规则管理', 0, 0, 'rule_manage', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (14, 4, '车场关联', 0, 1, 'parking_rule_mapping', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (15, 5, '数据报表', 0, 0, 'diagram_show', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (16, 6, '黑名单', 0, 0, 'black_list', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (17, 6, '白名单', 0, 1, 'white_list', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (18, 7, '角色管理', 0, 0, 'role_manage', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);
INSERT INTO `menu_right` VALUES (19, 7, '用户管理', 0, 1, 'user_manage', '2019-11-26 11:30:47', '2019-11-26 11:30:47', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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

SET FOREIGN_KEY_CHECKS = 1;
