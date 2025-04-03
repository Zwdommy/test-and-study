/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : system-book

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2024-08-03 10:41:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(255) NOT NULL COMMENT '类型名称',
  `feature` varchar(255) NOT NULL COMMENT '类型特征',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '文学类', '文学是以语言文字为工具,比较形象化地反映客观现实、表现作家心灵..dadsadsdsdasdsadsaddsdsssssssssssssssssda.');
INSERT INTO `type` VALUES ('2', '科技类', '专业性是科技类图书*为突出的特点。随着科学技术的不断发展,学科的专业不断分化,科技类图书的内容多表现为某一专业或领域的理论知识和应用技术等');
INSERT INTO `type` VALUES ('4', '军事类', '了解军事知识');
INSERT INTO `type` VALUES ('8', '传记类', '记录个人成长史');
INSERT INTO `type` VALUES ('9', '艺术类', '培养艺术家');
INSERT INTO `type` VALUES ('10', '生活类', '记录美好生活');
INSERT INTO `type` VALUES ('11', '教育类', '刷题刷题刷题');
INSERT INTO `type` VALUES ('12', '儿童类', '儿童启蒙书籍');
INSERT INTO `type` VALUES ('13', '杂志类', '休闲必看书籍');
INSERT INTO `type` VALUES ('14', '历史类', '了解学习历史');
INSERT INTO `type` VALUES ('15', '漫画类', '图开心');
INSERT INTO `type` VALUES ('16', '哲学类', '看不懂');
INSERT INTO `type` VALUES ('20', 'eqweeqwe', '');
INSERT INTO `type` VALUES ('21', '儿童类', '12312311231231231');
