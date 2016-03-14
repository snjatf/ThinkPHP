/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2016-03-14 22:37:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_users
-- ----------------------------
DROP TABLE IF EXISTS `tp_users`;
CREATE TABLE `tp_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_code` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `user_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `user_phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `user_pwd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user_role` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `user_birth` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_users
-- ----------------------------
INSERT INTO `tp_users` VALUES ('1', 'wonder4', '庄少东', 'wonder4@163.com', '13125158412', '123', '1', '0', '1', null, null);
