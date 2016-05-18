/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : localhost
 Source Database       : shop

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : utf-8

 Date: 05/08/2016 16:27:08 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_cart`
-- ----------------------------
DROP TABLE IF EXISTS `t_cart`;
CREATE TABLE `t_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) DEFAULT NULL,
  `prod_num` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `prod_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_cart`
-- ----------------------------
BEGIN;
INSERT INTO `t_cart` VALUES ('1', '1', '5', '1', '6');
COMMIT;

-- ----------------------------
--  Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` varchar(100) NOT NULL,
  `order_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_pk` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item`;
CREATE TABLE `t_order_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) DEFAULT NULL,
  `prod_num` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_product`
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(255) DEFAULT NULL,
  `prod_price` float(6,2) DEFAULT NULL,
  `prod_desc` text,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_product`
-- ----------------------------
BEGIN;
INSERT INTO `t_product` VALUES ('1', '蛋糕1', '100.00', '好好吃'), ('2', '蛋糕2', '90.00', '好好吃吃'), ('3', '蛋糕3', '80.00', '好好吃吃吃'), ('4', '蛋糕4', '70.00', '好好吃吃吃吃'), ('5', '蛋糕5', '60.00', '好好吃吃吃吃吃'), ('6', '蛋糕6', '50.00', '十分好吃');
COMMIT;

-- ----------------------------
--  Table structure for `t_product_img`
-- ----------------------------
DROP TABLE IF EXISTS `t_product_img`;
CREATE TABLE `t_product_img` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_src` varchar(255) DEFAULT NULL,
  `img_title` varchar(255) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_product_img`
-- ----------------------------
BEGIN;
INSERT INTO `t_product_img` VALUES ('1', 'uploads/1.jpg', null, '1'), ('2', 'uploads/2.jpg', null, '1'), ('3', 'uploads/3.jpg', null, '2'), ('4', 'uploads/4.jpg', null, '3'), ('5', 'uploads/5.jpg', null, '4'), ('6', 'uploads/6.jpg', null, '5'), ('7', 'uploads/7.jpg', null, '6'), ('8', 'uploads/8.jpg', null, '6'), ('9', 'uploads/9.jpg', null, '4'), ('10', 'uploads/10.jpg', null, '5');
COMMIT;

-- ----------------------------
--  Table structure for `t_product_size`
-- ----------------------------
DROP TABLE IF EXISTS `t_product_size`;
CREATE TABLE `t_product_size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `size_num` int(11) DEFAULT NULL,
  `size_price` float(6,2) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_product_size`
-- ----------------------------
BEGIN;
INSERT INTO `t_product_size` VALUES ('1', '4', '100.00', '1'), ('2', '6', '150.00', '1'), ('3', '8', '180.00', '1'), ('4', '8', null, '2');
COMMIT;

-- ----------------------------
--  Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sex` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('1', 'lisi', '123', '2016-04-27 16:06:26', '男'), ('2', 'lisi11', '123', '2016-04-27 16:06:27', '男'), ('3', 'wangwu', '1234', '2016-04-27 16:07:53', '女');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
