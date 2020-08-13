/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 13/08/2020 11:43:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for testing
-- ----------------------------
DROP TABLE IF EXISTS `testing`;
CREATE TABLE `testing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `email` text,
  `phone` text,
  `city` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testing
-- ----------------------------
BEGIN;
INSERT INTO `testing` VALUES (5, 'prash', 'sads@gmail.com', '3454354', 'asdas');
INSERT INTO `testing` VALUES (15, 'prashant', 'prashant@gmail.com', '832434234', 'erwerw');
INSERT INTO `testing` VALUES (16, '', 'Praashant@gmail.com', '8277206221', 'bangalore');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
