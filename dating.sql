/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.87
Source Server Version : 50518
Source Host           : 192.168.0.87:3306
Source Database       : dating

Target Server Type    : MYSQL
Target Server Version : 50518
File Encoding         : 65001

Date: 2016-10-27 16:05:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address_switch
-- ----------------------------
DROP TABLE IF EXISTS `address_switch`;
CREATE TABLE `address_switch` (
  `appver` varchar(50) NOT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `ver` varchar(20) DEFAULT NULL,
  `itunes_key` varchar(50) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`appver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for android_pay_vip_info
-- ----------------------------
DROP TABLE IF EXISTS `android_pay_vip_info`;
CREATE TABLE `android_pay_vip_info` (
  `userid` int(11) NOT NULL,
  `b_time` bigint(20) DEFAULT NULL,
  `e_time` bigint(20) DEFAULT NULL,
  `orderid` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for android_pay_vip_info_detail
-- ----------------------------
DROP TABLE IF EXISTS `android_pay_vip_info_detail`;
CREATE TABLE `android_pay_vip_info_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `b_time` bigint(20) DEFAULT NULL,
  `e_time` bigint(20) DEFAULT NULL,
  `orderid` varchar(50) DEFAULT NULL,
  `productId` varchar(50) DEFAULT NULL,
  `channel` int(11) DEFAULT NULL,
  `date_time` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for block_user
-- ----------------------------
DROP TABLE IF EXISTS `block_user`;
CREATE TABLE `block_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plat` int(11) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `userid1` int(11) DEFAULT NULL,
  `userid2` int(11) DEFAULT NULL,
  `url_big2` varchar(255) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cacel_matching_user
-- ----------------------------
DROP TABLE IF EXISTS `cacel_matching_user`;
CREATE TABLE `cacel_matching_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid1` int(11) DEFAULT NULL,
  `userid2` int(11) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for country_info
-- ----------------------------
DROP TABLE IF EXISTS `country_info`;
CREATE TABLE `country_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dating_request_info
-- ----------------------------
DROP TABLE IF EXISTS `dating_request_info`;
CREATE TABLE `dating_request_info` (
  `requestid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `url_small` varchar(250) DEFAULT NULL,
  `url_big` varchar(250) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `b_time` bigint(20) DEFAULT NULL,
  `e_time` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestid`)
) ENGINE=InnoDB AUTO_INCREMENT=1999 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for like_request
-- ----------------------------
DROP TABLE IF EXISTS `like_request`;
CREATE TABLE `like_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requestid1` int(11) DEFAULT NULL,
  `userid1` int(11) DEFAULT NULL,
  `gender1` int(11) DEFAULT NULL,
  `url_small1` varchar(250) DEFAULT NULL,
  `url_big1` varchar(250) DEFAULT NULL,
  `requestid2` int(11) DEFAULT NULL,
  `userid2` int(11) DEFAULT NULL,
  `gender2` int(11) DEFAULT NULL,
  `url_small2` varchar(250) DEFAULT NULL,
  `url_big2` varchar(250) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `l_time` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_request1_request2` (`requestid1`,`requestid2`)
) ENGINE=InnoDB AUTO_INCREMENT=2006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for like_user
-- ----------------------------
DROP TABLE IF EXISTS `like_user`;
CREATE TABLE `like_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid1` int(11) DEFAULT NULL,
  `gender1` int(11) DEFAULT NULL,
  `url_small1` varchar(250) DEFAULT NULL,
  `url_big1` varchar(250) DEFAULT NULL,
  `userid2` int(11) DEFAULT NULL,
  `gender2` int(11) DEFAULT NULL,
  `url_small2` varchar(250) DEFAULT NULL,
  `url_big2` varchar(250) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for matching_request
-- ----------------------------
DROP TABLE IF EXISTS `matching_request`;
CREATE TABLE `matching_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requestid1` int(11) DEFAULT NULL,
  `userid1` int(11) DEFAULT NULL,
  `gender1` int(11) DEFAULT NULL,
  `url_small1` varchar(250) DEFAULT NULL,
  `url_big1` varchar(250) DEFAULT NULL,
  `requestid2` int(11) DEFAULT NULL,
  `userid2` int(11) DEFAULT NULL,
  `gender2` int(11) DEFAULT NULL,
  `url_small2` varchar(250) DEFAULT NULL,
  `url_big2` varchar(250) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `b_time` bigint(20) DEFAULT NULL,
  `e_time` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=637 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for matching_user
-- ----------------------------
DROP TABLE IF EXISTS `matching_user`;
CREATE TABLE `matching_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid1` int(11) DEFAULT NULL,
  `gender1` int(11) DEFAULT NULL,
  `url_small1` varchar(250) DEFAULT NULL,
  `url_big1` varchar(250) DEFAULT NULL,
  `userid2` int(11) DEFAULT NULL,
  `gender2` int(11) DEFAULT NULL,
  `url_small2` varchar(250) DEFAULT NULL,
  `url_big2` varchar(250) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pay_vip_info
-- ----------------------------
DROP TABLE IF EXISTS `pay_vip_info`;
CREATE TABLE `pay_vip_info` (
  `userid` int(11) NOT NULL,
  `b_time` bigint(20) DEFAULT NULL,
  `e_time` bigint(20) DEFAULT NULL,
  `original_transaction_id` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `receipt_data` mediumtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pay_vip_info_detail
-- ----------------------------
DROP TABLE IF EXISTS `pay_vip_info_detail`;
CREATE TABLE `pay_vip_info_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `b_time` bigint(20) DEFAULT NULL,
  `e_time` bigint(20) DEFAULT NULL,
  `original_transaction_id` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `productid` varchar(50) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `channel` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for purchase_detail
-- ----------------------------
DROP TABLE IF EXISTS `purchase_detail`;
CREATE TABLE `purchase_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plat` int(11) DEFAULT NULL,
  `appid` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `b_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `e_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `productid` varchar(50) DEFAULT NULL,
  `transactionid` varchar(50) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for report_detail
-- ----------------------------
DROP TABLE IF EXISTS `report_detail`;
CREATE TABLE `report_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plat` int(11) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `userid1` int(11) DEFAULT NULL,
  `requestid1` int(11) DEFAULT NULL,
  `usertoken1` varchar(100) DEFAULT NULL,
  `userid2` int(11) DEFAULT NULL,
  `requestid2` int(11) DEFAULT NULL,
  `url_big2` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  `date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `l_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for report_pic
-- ----------------------------
DROP TABLE IF EXISTS `report_pic`;
CREATE TABLE `report_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plat` int(11) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `userid1` int(11) DEFAULT NULL,
  `pic_url` varchar(250) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_userid_picurl` (`userid1`,`pic_url`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for report_user
-- ----------------------------
DROP TABLE IF EXISTS `report_user`;
CREATE TABLE `report_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plat` int(11) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `userid1` int(11) DEFAULT NULL,
  `userid2` int(11) DEFAULT NULL,
  `url_big2` varchar(255) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for room_country
-- ----------------------------
DROP TABLE IF EXISTS `room_country`;
CREATE TABLE `room_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` varchar(50) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1933 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for room_info
-- ----------------------------
DROP TABLE IF EXISTS `room_info`;
CREATE TABLE `room_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(50) DEFAULT NULL,
  `countryid` varchar(20) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `is_force_add` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sortid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for room_user
-- ----------------------------
DROP TABLE IF EXISTS `room_user`;
CREATE TABLE `room_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for system_configure
-- ----------------------------
DROP TABLE IF EXISTS `system_configure`;
CREATE TABLE `system_configure` (
  `id` int(11) DEFAULT NULL,
  `l_t` int(11) DEFAULT NULL,
  `m_t` int(11) DEFAULT NULL,
  `total_t` int(11) DEFAULT NULL,
  `rate_t` int(11) DEFAULT NULL,
  `page_size` int(11) DEFAULT NULL,
  `fill_size` int(11) DEFAULT NULL,
  `user_report_num` int(11) DEFAULT NULL,
  `pic_report_num` int(11) DEFAULT NULL,
  `user_freez_len` int(11) DEFAULT NULL,
  `unfreezetime` int(11) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `imflag` int(11) DEFAULT '0',
  `reg_vip_days` int(11) DEFAULT NULL,
  `comment_vip_days` int(11) DEFAULT NULL,
  `isreview` int(11) DEFAULT '0',
  `mode` int(11) DEFAULT NULL,
  `limit_l_num` int(11) DEFAULT NULL,
  `active_day` int(11) DEFAULT NULL,
  `im_page_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users_chat
-- ----------------------------
DROP TABLE IF EXISTS `users_chat`;
CREATE TABLE `users_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid1` int(11) DEFAULT NULL,
  `userid2` int(11) DEFAULT NULL,
  `channel` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users_chat_detail
-- ----------------------------
DROP TABLE IF EXISTS `users_chat_detail`;
CREATE TABLE `users_chat_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid1` int(11) DEFAULT NULL,
  `userid2` int(11) DEFAULT NULL,
  `channel` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users_temp
-- ----------------------------
DROP TABLE IF EXISTS `users_temp`;
CREATE TABLE `users_temp` (
  `id` int(11) NOT NULL,
  `userids` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_frozen
-- ----------------------------
DROP TABLE IF EXISTS `user_frozen`;
CREATE TABLE `user_frozen` (
  `userid` int(11) NOT NULL,
  `b_time` bigint(20) DEFAULT NULL,
  `e_time` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(10) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `plat` int(11) DEFAULT NULL,
  `deviceid` varchar(100) DEFAULT NULL,
  `icloudtoken` varchar(100) DEFAULT NULL,
  `usertoken` varchar(100) DEFAULT NULL,
  `pushtoken` varchar(200) DEFAULT NULL,
  `countryid` varchar(50) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `timezone` int(11) DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `isfee` int(11) DEFAULT NULL,
  `last_login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `register_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url_small` varchar(250) DEFAULT NULL,
  `url_big` varchar(250) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vip_info
-- ----------------------------
DROP TABLE IF EXISTS `vip_info`;
CREATE TABLE `vip_info` (
  `userid` int(11) NOT NULL,
  `b_time` bigint(20) DEFAULT NULL,
  `e_time` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vip_info_detail
-- ----------------------------
DROP TABLE IF EXISTS `vip_info_detail`;
CREATE TABLE `vip_info_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plat` int(11) DEFAULT NULL,
  `appid` varchar(10) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `b_time` bigint(20) DEFAULT NULL,
  `e_time` bigint(20) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
