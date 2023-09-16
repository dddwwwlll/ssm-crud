/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80025 (8.0.25)
 Source Host           : localhost:3306
 Source Schema         : ssm_crud

 Target Server Type    : MySQL
 Target Server Version : 80025 (8.0.25)
 File Encoding         : 65001

 Date: 15/09/2023 22:51:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `dept_id` int NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '部门名称',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '前端开发');
INSERT INTO `dept` VALUES (2, '测试');
INSERT INTO `dept` VALUES (3, '实施');
INSERT INTO `dept` VALUES (4, '运维');
INSERT INTO `dept` VALUES (5, '后端开发');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `emp_id` int NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `emp_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '员工姓名',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `d_id` int NULL DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`emp_id`) USING BTREE,
  INDEX `fk_emp_dept`(`d_id` ASC) USING BTREE,
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`d_id`) REFERENCES `dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '员工表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, '张三', 'M', '123456789@qq.com', 1);
INSERT INTO `emp` VALUES (2, '李四', 'N', '123456789@qq.com', 2);
INSERT INTO `emp` VALUES (3, '王五', 'M', '123456789@qq.com', 3);
INSERT INTO `emp` VALUES (4, '赵六', 'M', '123456789@qq.com', 4);
INSERT INTO `emp` VALUES (5, '麻子', 'M', '123456789@qq.com', 5);
INSERT INTO `emp` VALUES (6, '小米', 'M', '123456789@qq.com', 5);
INSERT INTO `emp` VALUES (7, '小明', 'N', '123456789@qq.com', 4);
INSERT INTO `emp` VALUES (8, '小红', 'N', '123456789@qq.com', 3);
INSERT INTO `emp` VALUES (9, '小黑', 'N', '123456789@qq.com', 2);
INSERT INTO `emp` VALUES (10, '小小', 'M', '123456789@qq.com', 1);
INSERT INTO `emp` VALUES (11, '嗷嗷', 'M', '123456789@qq.com', 2);
INSERT INTO `emp` VALUES (12, 'kk', 'N', '123456789@qq.com', 1);
INSERT INTO `emp` VALUES (13, 'aa', 'N', '123456789@qq.com', 4);
INSERT INTO `emp` VALUES (14, 'bb', 'N', '123456789@qq.com', 5);
INSERT INTO `emp` VALUES (15, 'cc', 'M', '123456789@qq.com', 4);
INSERT INTO `emp` VALUES (16, 'dd', 'N', '123456789@qq.com', 3);
INSERT INTO `emp` VALUES (17, 'ee', 'M', '123456789@qq.com', 1);
INSERT INTO `emp` VALUES (18, 'ff', 'N', '123456789@qq.com', 5);
INSERT INTO `emp` VALUES (19, 'hh', 'M', '123456789@qq.com', 3);
INSERT INTO `emp` VALUES (20, 'll', 'M', '123456789@qq.com', 1);
INSERT INTO `emp` VALUES (21, 'uu', 'N', '123456789@qq.com', 5);
INSERT INTO `emp` VALUES (22, 'rr', 'N', '123456789@qq.com', 1);
INSERT INTO `emp` VALUES (23, 'mm', 'N', '123456789@qq.com', 3);
INSERT INTO `emp` VALUES (24, 'oo', 'M', '123456789@qq.com', 2);
INSERT INTO `emp` VALUES (25, 'yy', 'N', ' 123456789@qq.com', 1);

SET FOREIGN_KEY_CHECKS = 1;
