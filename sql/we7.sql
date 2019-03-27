/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : we7

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-27 11:01:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ims_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_account`;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account
-- ----------------------------
INSERT INTO `ims_account` VALUES ('1', '1', 'uRr8qvQV', '1', '0', '0', '0');
INSERT INTO `ims_account` VALUES ('2', '2', 'SSGSLXET', '4', '0', '0', '0');
INSERT INTO `ims_account` VALUES ('3', '3', 'Qm1iJfD1', '4', '0', '0', '0');

-- ----------------------------
-- Table structure for ims_account_phoneapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_phoneapp`;
CREATE TABLE `ims_account_phoneapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_phoneapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_account_webapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_webapp`;
CREATE TABLE `ims_account_webapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_webapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_account_wechats
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wechats`;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_wechats
-- ----------------------------
INSERT INTO `ims_account_wechats` VALUES ('1', '1', 'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP', 'YEee9NP1cvyY7lq8v78M97WSmkFO6JEyOvHOOnO60ze', '1', 'we7team', '', '', '', '', '', '', '', '', '0', 'wx4d54c72265fb75bc', 'f99fd4759e61712b8f9c9f675810826e', '1', '', '');

-- ----------------------------
-- Table structure for ims_account_wxapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wxapp`;
CREATE TABLE `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appdomain` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_wxapp
-- ----------------------------
INSERT INTO `ims_account_wxapp` VALUES ('2', '2', 'IjFZdbA1df9X1MFDOG9h19MxAVSjo7mM', 'Rfoj1Bo2Z1SVPmFG2HhFVo1gPMmoGWxm2O19sg1pMm1', '1', '', 'gh_ba42281b8d63', 'wxa5a1cce830046e02', '046b7fef5e1a6ae799cf95d539f20c06', '活动猴', '');
INSERT INTO `ims_account_wxapp` VALUES ('3', '3', 'R5R18rpOpyn0k1PsR8555c1PggJpzSPu', 'QwS3g4YSupU35Q0Q48kw10rkUR0nQP3NR5jyr5OPj0p', '1', '', 'gh_ba42281b8d63', 'wxa5a1cce830046e02', '046b7fef5e1a6ae799cf95d539f20c06', '演舞台', '');

-- ----------------------------
-- Table structure for ims_account_xzapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_xzapp`;
CREATE TABLE `ims_account_xzapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `original` varchar(50) NOT NULL,
  `lastupdate` int(10) NOT NULL,
  `styleid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `xzapp_id` varchar(30) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `key` varchar(80) NOT NULL,
  `secret` varchar(80) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_xzapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_activity
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity`;
CREATE TABLE `ims_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `name` varchar(100) NOT NULL COMMENT '活动名称',
  `population` int(11) NOT NULL COMMENT '演出人数',
  `reward` decimal(11,2) NOT NULL COMMENT '薪资(元)',
  `show_province` varchar(20) DEFAULT NULL COMMENT '演出省',
  `show_city` varchar(20) DEFAULT NULL COMMENT '演出市',
  `show_county` varchar(20) DEFAULT NULL COMMENT '演出区',
  `show_detail_address` varchar(100) DEFAULT NULL COMMENT '演出详细地址',
  `rehearsal_province` varchar(20) DEFAULT NULL COMMENT '排练省',
  `rehearsal_city` varchar(20) DEFAULT NULL COMMENT '排练市',
  `rehearsal_county` varchar(20) DEFAULT NULL COMMENT '排练区',
  `rehearsal_detail_address` varchar(100) DEFAULT NULL COMMENT '排练详细地址',
  `gender` smallint(1) DEFAULT '0' COMMENT '性别：0 - 不限；1 - 男 ；2 - 女；',
  `min_stature` decimal(5,2) DEFAULT '0.00' COMMENT '最小身高',
  `max_stature` decimal(5,2) DEFAULT '0.00' COMMENT '最大身高',
  `min_weight` decimal(5,2) DEFAULT '0.00' COMMENT '最小体重',
  `max_weight` decimal(5,2) DEFAULT '0.00' COMMENT '最大体重',
  `mark` varchar(1000) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL COMMENT '要求描述',
  `group_code_url` varchar(256) DEFAULT NULL COMMENT '微信群二维码URL',
  `state` smallint(1) NOT NULL DEFAULT '0' COMMENT '状态：1 - 发布中；2 - 满人；3 - 已结束；4 - 取消活动',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `broken_promises` int(11) DEFAULT '0' COMMENT '失约人数',
  `longitude` varchar(10) DEFAULT '' COMMENT '演出经度',
  `latitude` varchar(10) DEFAULT '' COMMENT '演出纬度',
  `plongitude` varchar(10) DEFAULT '361.00' COMMENT '排练经度',
  `platitude` varchar(10) DEFAULT '' COMMENT '排练纬度',
  `ivrequire` varchar(255) DEFAULT NULL COMMENT '面试要求',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='活动';

-- ----------------------------
-- Records of ims_activity
-- ----------------------------
INSERT INTO `ims_activity` VALUES ('1', '1', '旅游', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '0', '0.00', '300.00', '45.00', '38.00', null, '吃吃吃次', null, '4', '2018-11-21 11:44:53', '2018-11-21 11:44:53', '0', '113.36', '23.12', '113.36', '23.12', null);
INSERT INTO `ims_activity` VALUES ('2', '1', '江南烟雨', '151', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '1', '0.00', '300.00', '45.00', '50.00', null, '江南的雨好大呀，淅沥淅沥的下着，让人的心灵感到格外的安心', null, '1', '2018-11-21 14:26:59', '2018-11-30 19:52:43', '0', '113.37', '23.13', '113.36', '23.12', '要求这种东西，不要也罢，太短了，加长点，我有最好的身材吧。');
INSERT INTO `ims_activity` VALUES ('3', '1', '张学友演唱会', '15', '1500.00', '福建省', '福州市', '晋安区', '福建省福州市晋安区东浦路', '福建省', '福州市', '晋安区', '福建省福州市晋安区华林路508号', '0', '0.00', '300.00', '45.00', '0.00', null, '志愿者', null, '4', '2018-11-22 14:03:45', '2018-11-22 14:03:45', '0', '119.32', '26.11', '119.32', '26.11', null);
INSERT INTO `ims_activity` VALUES ('4', '1', '张学友演唱会', '15', '1500.00', '福建省', '泉州市', '鲤城区', '福建省泉州市鲤城区九一街8-12号', '福建省', '福州市', '晋安区', '福建省福州市晋安区沁河路', '0', '0.00', '300.00', '45.00', '40.00', null, '嘉宾', null, '4', '2018-11-22 14:16:45', '2018-11-22 14:16:45', '0', '118.59', '24.91', '119.32', '26.11', null);
INSERT INTO `ims_activity` VALUES ('5', '1', '张学友', '15', '1500.00', '福建省', '泉州市', '鲤城区', '福建省泉州市鲤城区九一街8-12号', '福建省', '福州市', '晋安区', '福建省福州市晋安区沁河路', '1', '0.00', '300.00', '45.00', '0.00', null, '嘉宾看', 'u1/act+5-qr-f17336549b8a4c5d9c5a4b97178c8665.png', '1', '2018-11-22 14:20:39', '2018-11-29 17:11:39', '0', '118.59', '24.91', '119.32', '26.11', null);
INSERT INTO `ims_activity` VALUES ('6', '3', '阿德', '12', '25.00', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中988号', '0', '0.00', '300.00', '45.00', '38.00', null, '乐民路', null, '1', '2018-11-27 18:46:03', '2018-11-27 18:46:03', '0', '113.32', '23.14', '113.32', '23.14', '');
INSERT INTO `ims_activity` VALUES ('7', '1', '北京鸟巢', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '1', '0.00', '300.00', '45.00', '0.00', null, '2050年北京超级奥运会', null, '1', '2018-11-28 15:28:01', '2018-11-29 17:13:16', '0', '113.36', '23.12', '113.36', '23.12', '');
INSERT INTO `ims_activity` VALUES ('8', '1', '广州图书馆', '15', '150.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '2', '0.00', '300.00', '45.00', '50.00', null, '看书', 'u1/m-4f2d97c3d5ba4fb8b78f6987d9780d87.jpg', '1', '2018-11-28 15:30:08', '2018-11-28 15:30:08', '0', '113.36', '23.12', '113.37', '23.13', '');
INSERT INTO `ims_activity` VALUES ('9', '1', '决赛', '15', '1550.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河路228号', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '0', '0.00', '300.00', '45.00', '0.00', null, '唱跳', null, '1', '2018-11-30 15:27:13', '2018-11-30 15:27:13', '0', '113.33', '23.13', '113.37', '23.13', '');
INSERT INTO `ims_activity` VALUES ('10', '1', '决赛', '15', '1550.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河路228号', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '0', '0.00', '300.00', '45.00', '0.00', null, '唱跳', null, '1', '2018-11-30 15:27:45', '2018-11-30 19:43:49', '0', '113.33', '23.13', '113.37', '23.13', '');
INSERT INTO `ims_activity` VALUES ('11', '1', '易简年会', '15', '155000.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '', '', '', '', '0', '0.00', '300.00', '45.00', '0.00', null, '圣诞节party', 'u1/act+11-qr-6a21da2a818543fcae297b1f00551f5a.jpg', '1', '2018-11-30 15:33:59', '2018-11-30 15:33:59', '0', '113.36', '23.12', '-360.00', '-360.00', '');
INSERT INTO `ims_activity` VALUES ('12', '3', '阿里吧', '5533', '555.00', '广东省', '深圳市', '龙华区', '广东省深圳市龙华区龙华隧道', '', '', '', '', '0', '160.00', '0.00', '45.00', '0.00', null, '提交了', null, '1', '2018-11-30 19:31:33', '2018-11-30 19:39:41', '0', '114.03', '22.61', '-360.00', '-360.00', '');
INSERT INTO `ims_activity` VALUES ('13', '1', '易简读书会', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河直街1-87号', '广东省', '广州市', '天河区', '广东省广州市天河区天河直街1-87号', '0', '160.00', '0.00', '45.00', '0.00', null, '读书好', 'u1/act+13-qr-906cc1f741544b1a87834b47d2e3dd6a.jpg', '1', '2018-11-30 20:00:23', '2018-11-30 20:00:23', '0', '113.32', '23.14', '113.32', '23.14', '');
INSERT INTO `ims_activity` VALUES ('14', '1', '厦门学校舞蹈表演', '10', '5000.00', '福建省', '厦门市', '思明区', '福建省厦门市思明区安海路44号', '', '', '', '', '0', '160.00', '0.00', '45.00', '0.00', null, '给学校领导表演', 'u1/act+14-qr-69401490175a4e9b904e309d93713adc.png', '1', '2018-12-03 15:09:34', '2018-12-03 15:09:34', '0', '118.07', '24.44', '-360.00', '-360.00', '');
INSERT INTO `ims_activity` VALUES ('15', '1', '易简读书进500强庆祝会', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '', '', '', '', '0', '160.00', '230.00', '45.00', '150.00', null, '吃喝玩乐', null, '1', '2018-12-05 10:22:59', '2018-12-05 10:22:59', '0', '113.32', '23.14', '-360.00', '-360.00', '');
INSERT INTO `ims_activity` VALUES ('16', '6', '此时此刻', '5', '1100.00', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '1', '160.00', '0.00', '45.00', '0.00', null, 'gjj', 'u6/act+16-qr-01bc95bff1d84dfa970e9d35b83650f9.jpg', '1', '2018-12-06 10:58:38', '2018-12-06 10:58:38', '0', '113.32', '23.14', '113.32', '23.14', '');
INSERT INTO `ims_activity` VALUES ('17', '7', '模特吉他手', '10', '1000.00', '广东省', '广州市', '天河区', '广东省广州市天河区棠东毓南路1号', '广东省', '广州市', '天河区', '广东省广州市天河区棠东东路4号', '2', '160.00', '163.00', '45.00', '47.00', null, '你在家门口就业绩的提升与你有能力度左右开弓……这种族维生素及时雨及其他相关维生素都匀也不能勉强可以不必备胎心有些紧张？这些天后来个人全能够意思后才说出汗', 'u7/act+17-qr-b5ac6883f09b472e83f5ee021d0e1c7e.jpg', '1', '2018-12-06 13:49:07', '2018-12-18 11:44:35', '0', '113.39', '23.13', '113.39', '23.13', '');
INSERT INTO `ims_activity` VALUES ('18', '6', '舞蹈花开盛世', '10', '100.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河路208号', '广东省', '广州市', '天河区', '广东省广州市天河区天河路208号', '1', '160.00', '0.00', '45.00', '0.00', null, '需要舞蹈人员', null, '1', '2018-12-18 11:52:37', '2018-12-18 11:52:37', '0', '113.32', '23.13', '113.32', '23.13', '');
INSERT INTO `ims_activity` VALUES ('19', '1111', '跳舞', '10', '100.00', null, null, null, '广东省广州市海珠区同福东路640号', null, null, null, '广东省广州市海珠区广州大道南', '2', '160.00', '53.00', '45.00', '0.00', null, '工作内容', null, '1', '0000-00-00 00:00:00', null, '0', '113.32', '23.08', '113.32', '23.08', null);
INSERT INTO `ims_activity` VALUES ('20', '1111', '跳舞', '10', '100.00', null, null, null, '广东省广州市海珠区同福东路640号', null, null, null, '广东省广州市海珠区广州大道南', '2', '160.00', '53.00', '45.00', '0.00', '工作内容', '工作内容', null, '1', '0000-00-00 00:00:00', null, '0', '113.32', '23.08', '113.32', '23.08', null);
INSERT INTO `ims_activity` VALUES ('21', '1111', '跳舞', '10', '100.00', null, null, null, '广东省广州市海珠区同福东路640号', null, null, null, '广东省广州市海珠区广州大道南', '2', '160.00', '53.00', '45.00', '0.00', '工作内容', '工作内容', null, '1', '2019-03-25 20:02:46', null, '0', '113.32', '23.08', '113.32', '23.08', null);

-- ----------------------------
-- Table structure for ims_activity_date_rel
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_date_rel`;
CREATE TABLE `ims_activity_date_rel` (
  `activity_id` int(11) NOT NULL COMMENT '活动ID',
  `date` date NOT NULL COMMENT '日期',
  `type` smallint(1) NOT NULL COMMENT '类型：1 - 演出 ；2 - 排练；',
  PRIMARY KEY (`activity_id`,`date`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='活动日期';

-- ----------------------------
-- Records of ims_activity_date_rel
-- ----------------------------
INSERT INTO `ims_activity_date_rel` VALUES ('0', '0000-00-00', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('0', '2019-03-28', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('0', '2019-03-29', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('0', '2019-03-30', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('1', '2018-11-01', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('1', '2018-11-02', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('1', '2018-11-03', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('1', '2018-11-04', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('2', '2018-11-02', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('2', '2018-11-02', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('2', '2018-11-03', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('2', '2018-11-03', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('2', '2018-11-17', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('3', '2018-11-23', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('3', '2018-11-24', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('4', '2018-11-24', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('4', '2018-11-29', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('4', '2018-11-30', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('5', '2018-11-23', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('5', '2018-11-24', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('6', '2018-11-01', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('6', '2018-11-09', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('6', '2018-11-15', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('7', '2018-11-29', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('7', '2018-11-29', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('7', '2018-11-30', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('7', '2018-11-30', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('8', '2018-11-29', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('8', '2018-11-30', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('8', '2018-12-08', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('8', '2018-12-09', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('9', '2018-11-29', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('9', '2018-11-30', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('9', '2018-12-01', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('9', '2018-12-02', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('10', '2018-12-01', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('10', '2018-12-02', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('10', '2018-12-08', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('10', '2018-12-09', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('11', '2018-12-01', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('11', '2018-12-02', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('12', '2018-11-07', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('12', '2018-11-30', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('12', '2018-12-13', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('12', '2018-12-14', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('13', '2018-12-13', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('13', '2018-12-14', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('13', '2018-12-15', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('13', '2018-12-16', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('14', '2018-12-29', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('14', '2018-12-30', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('15', '2018-12-05', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('15', '2018-12-06', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('16', '2018-12-07', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('16', '2018-12-14', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('16', '2018-12-22', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('17', '2018-12-06', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('17', '2018-12-06', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('17', '2018-12-07', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('18', '2018-12-18', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('18', '2018-12-18', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('21', '0000-00-00', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('21', '2019-03-28', '1');
INSERT INTO `ims_activity_date_rel` VALUES ('21', '2019-03-29', '2');
INSERT INTO `ims_activity_date_rel` VALUES ('21', '2019-03-30', '2');

-- ----------------------------
-- Table structure for ims_activity_work_rel
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_work_rel`;
CREATE TABLE `ims_activity_work_rel` (
  `activity_id` int(11) NOT NULL COMMENT '活动ID',
  `dance_id` int(11) NOT NULL COMMENT '舞种ID',
  PRIMARY KEY (`activity_id`,`dance_id`),
  UNIQUE KEY `activity_id` (`activity_id`,`dance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='活动舞种';

-- ----------------------------
-- Records of ims_activity_work_rel
-- ----------------------------
INSERT INTO `ims_activity_work_rel` VALUES ('0', '2');
INSERT INTO `ims_activity_work_rel` VALUES ('0', '5');
INSERT INTO `ims_activity_work_rel` VALUES ('1', '4');
INSERT INTO `ims_activity_work_rel` VALUES ('1', '6');
INSERT INTO `ims_activity_work_rel` VALUES ('2', '4');
INSERT INTO `ims_activity_work_rel` VALUES ('2', '6');
INSERT INTO `ims_activity_work_rel` VALUES ('2', '7');
INSERT INTO `ims_activity_work_rel` VALUES ('3', '4');
INSERT INTO `ims_activity_work_rel` VALUES ('3', '7');
INSERT INTO `ims_activity_work_rel` VALUES ('4', '7');
INSERT INTO `ims_activity_work_rel` VALUES ('4', '10');
INSERT INTO `ims_activity_work_rel` VALUES ('5', '4');
INSERT INTO `ims_activity_work_rel` VALUES ('5', '6');
INSERT INTO `ims_activity_work_rel` VALUES ('5', '7');
INSERT INTO `ims_activity_work_rel` VALUES ('6', '2');
INSERT INTO `ims_activity_work_rel` VALUES ('7', '4');
INSERT INTO `ims_activity_work_rel` VALUES ('7', '6');
INSERT INTO `ims_activity_work_rel` VALUES ('7', '7');
INSERT INTO `ims_activity_work_rel` VALUES ('8', '2');
INSERT INTO `ims_activity_work_rel` VALUES ('8', '7');
INSERT INTO `ims_activity_work_rel` VALUES ('9', '2');
INSERT INTO `ims_activity_work_rel` VALUES ('9', '3');
INSERT INTO `ims_activity_work_rel` VALUES ('9', '4');
INSERT INTO `ims_activity_work_rel` VALUES ('9', '5');
INSERT INTO `ims_activity_work_rel` VALUES ('9', '6');
INSERT INTO `ims_activity_work_rel` VALUES ('9', '7');
INSERT INTO `ims_activity_work_rel` VALUES ('9', '9');
INSERT INTO `ims_activity_work_rel` VALUES ('9', '10');
INSERT INTO `ims_activity_work_rel` VALUES ('9', '11');
INSERT INTO `ims_activity_work_rel` VALUES ('10', '4');
INSERT INTO `ims_activity_work_rel` VALUES ('10', '6');
INSERT INTO `ims_activity_work_rel` VALUES ('10', '7');
INSERT INTO `ims_activity_work_rel` VALUES ('11', '6');
INSERT INTO `ims_activity_work_rel` VALUES ('11', '7');
INSERT INTO `ims_activity_work_rel` VALUES ('12', '7');
INSERT INTO `ims_activity_work_rel` VALUES ('12', '10');
INSERT INTO `ims_activity_work_rel` VALUES ('13', '4');
INSERT INTO `ims_activity_work_rel` VALUES ('13', '6');
INSERT INTO `ims_activity_work_rel` VALUES ('13', '10');
INSERT INTO `ims_activity_work_rel` VALUES ('14', '3');
INSERT INTO `ims_activity_work_rel` VALUES ('14', '4');
INSERT INTO `ims_activity_work_rel` VALUES ('14', '7');
INSERT INTO `ims_activity_work_rel` VALUES ('14', '10');
INSERT INTO `ims_activity_work_rel` VALUES ('15', '5');
INSERT INTO `ims_activity_work_rel` VALUES ('15', '9');
INSERT INTO `ims_activity_work_rel` VALUES ('16', '6');
INSERT INTO `ims_activity_work_rel` VALUES ('17', '9');
INSERT INTO `ims_activity_work_rel` VALUES ('18', '2');
INSERT INTO `ims_activity_work_rel` VALUES ('18', '4');
INSERT INTO `ims_activity_work_rel` VALUES ('18', '5');
INSERT INTO `ims_activity_work_rel` VALUES ('21', '2');
INSERT INTO `ims_activity_work_rel` VALUES ('21', '5');

-- ----------------------------
-- Table structure for ims_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_category`;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_news`;
CREATE TABLE `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_news
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_notice`;
CREATE TABLE `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `style` varchar(200) NOT NULL,
  `group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_unread_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_unread_notice`;
CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_unread_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_attachment_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_attachment_group`;
CREATE TABLE `ims_attachment_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_attachment_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_basic_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_basic_reply`;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_basic_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_business
-- ----------------------------
DROP TABLE IF EXISTS `ims_business`;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_business
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_attachment`;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cache`;
CREATE TABLE `ims_core_cache` (
  `key` varchar(100) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cache
-- ----------------------------
INSERT INTO `ims_core_cache` VALUES ('we7:account_ticket', 's:0:\"\";');
INSERT INTO `ims_core_cache` VALUES ('we7:userbasefields', 'a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:usersfields', 'a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:setting', 'a:6:{s:9:\"copyright\";a:9:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";s:3:\"icp\";s:0:\"\";s:13:\"mobile_status\";s:1:\"0\";s:10:\"login_type\";s:1:\"0\";s:10:\"log_status\";i:1;s:14:\"develop_status\";i:1;s:4:\"bind\";s:0:\"\";s:12:\"welcome_link\";i:9;}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:8:\"platform\";a:5:{s:5:\"token\";s:32:\"i11Rxqxj89cVkk5qr88C888005x89Ttb\";s:14:\"encodingaeskey\";s:43:\"O0081cT6yxz50Y886CR6Bz5Vqx88K9c88xt00QR8q88\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}s:10:\"thirdlogin\";a:4:{s:6:\"system\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:2:\"qq\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:6:\"wechat\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:6:\"mobile\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_receive_enable', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:unisetting:3', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:uniaccount:3', 'a:26:{s:4:\"acid\";s:1:\"3\";s:7:\"uniacid\";s:1:\"3\";s:5:\"token\";s:32:\"R5R18rpOpyn0k1PsR8555c1PggJpzSPu\";s:14:\"encodingaeskey\";s:43:\"QwS3g4YSupU35Q0Q48kw10rkUR0nQP3NR5jyr5OPj0p\";s:5:\"level\";s:1:\"1\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:15:\"gh_ba42281b8d63\";s:3:\"key\";s:18:\"wxa5a1cce830046e02\";s:6:\"secret\";s:32:\"046b7fef5e1a6ae799cf95d539f20c06\";s:4:\"name\";s:9:\"演舞台\";s:9:\"appdomain\";s:0:\"\";s:11:\"encrypt_key\";s:18:\"wxa5a1cce830046e02\";s:4:\"type\";s:1:\"4\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"3\";s:9:\"starttime\";s:10:\"1552530654\";s:6:\"groups\";a:0:{}s:7:\"setting\";a:0:{}s:10:\"grouplevel\";N;s:4:\"logo\";s:56:\"http://we.local/attachment/headimg_3.jpg?time=1553566248\";s:6:\"qrcode\";s:55:\"http://we.local/attachment/qrcode_3.jpg?time=1553566248\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=3\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";s:1:\"3\";s:8:\"username\";s:6:\"test11\";s:7:\"groupid\";s:1:\"1\";s:9:\"groupname\";s:5:\"admin\";s:9:\"timelimit\";s:22:\"2019-03-14 ~ 无限制\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:hc_doudou', 'a:30:{s:3:\"mid\";s:2:\"17\";s:4:\"name\";s:9:\"hc_doudou\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:15:\"抖抖赢口红\";s:7:\"version\";s:5:\"1.2.0\";s:7:\"ability\";s:15:\"抖抖赢口红\";s:11:\"description\";s:15:\"抖抖赢口红\";s:6:\"author\";s:0:\"\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:13:\"title_initial\";s:1:\"D\";s:13:\"wxapp_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"1\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:54:\"http://we.local/addons/hc_doudou/icon.jpg?v=1553566248\";s:7:\"preview\";s:44:\"http://we.local/addons/hc_doudou/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:hc_doudou:3', 'a:1:{s:6:\"module\";s:9:\"hc_doudou\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:user_modules:1', 'a:15:{i:0;s:11:\"nx_activity\";i:1;s:9:\"hc_doudou\";i:2;s:11:\"nx_livecode\";i:3;s:5:\"store\";i:4;s:6:\"wxcard\";i:5;s:5:\"chats\";i:6;s:5:\"voice\";i:7;s:5:\"video\";i:8;s:6:\"images\";i:9;s:6:\"custom\";i:10;s:8:\"recharge\";i:11;s:7:\"userapi\";i:12;s:5:\"music\";i:13;s:4:\"news\";i:14;s:5:\"basic\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:nx_activity', 'a:30:{s:3:\"mid\";s:2:\"19\";s:4:\"name\";s:11:\"nx_activity\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"活动猴\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:27:\"完美的活动管理工具\";s:11:\"description\";s:27:\"完美的活动管理工具\";s:6:\"author\";s:18:\"APP程序员论坛\";s:3:\"url\";s:21:\"http://bbs.appcxy.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:15:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";i:12;s:13:\"user_get_card\";i:13;s:13:\"user_del_card\";i:14;s:17:\"user_consume_card\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"H\";s:13:\"wxapp_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"1\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"http://we.local/addons/nx_activity/icon.jpg?v=1553590669\";s:7:\"preview\";s:46:\"http://we.local/addons/nx_activity/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:nx_livecode', 'a:30:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:11:\"nx_livecode\";s:4:\"type\";s:10:\"enterprise\";s:5:\"title\";s:12:\"微信活码\";s:7:\"version\";s:5:\"3.2.0\";s:7:\"ability\";s:138:\"二维码图案不变，内容可随时变更，极大提高营销效率基于活码技术，二维码图案更简单，扫描更容易。\";s:11:\"description\";s:141:\"实时统计二维码扫描数据，传播效果一目了然；根据地域、网络、设备等多维度分析数据，提升管理效率。\";s:6:\"author\";s:18:\"APP程序员论坛\";s:3:\"url\";s:21:\"http://bbs.appcxy.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:15:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";i:12;s:13:\"user_get_card\";i:13;s:13:\"user_del_card\";i:14;s:17:\"user_consume_card\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"W\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"http://we.local/addons/nx_livecode/icon.jpg?v=1553566249\";s:7:\"preview\";s:46:\"http://we.local/addons/nx_livecode/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:nx_livecode:3', 'a:1:{s:6:\"module\";s:11:\"nx_livecode\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:store', 'a:30:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:50:\"http://we.local/addons/store/icon.jpg?v=1553566249\";s:7:\"preview\";s:40:\"http://we.local/addons/store/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:store:3', 'a:1:{s:6:\"module\";s:5:\"store\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:wxcard', 'a:30:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:51:\"http://we.local/addons/wxcard/icon.jpg?v=1553566249\";s:7:\"preview\";s:41:\"http://we.local/addons/wxcard/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:wxcard:3', 'a:1:{s:6:\"module\";s:6:\"wxcard\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:chats', 'a:30:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:50:\"http://we.local/addons/chats/icon.jpg?v=1553566249\";s:7:\"preview\";s:40:\"http://we.local/addons/chats/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:chats:3', 'a:1:{s:6:\"module\";s:5:\"chats\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:voice', 'a:30:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:50:\"http://we.local/addons/voice/icon.jpg?v=1553566249\";s:7:\"preview\";s:40:\"http://we.local/addons/voice/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:voice:3', 'a:1:{s:6:\"module\";s:5:\"voice\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:video', 'a:30:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:50:\"http://we.local/addons/video/icon.jpg?v=1553566249\";s:7:\"preview\";s:40:\"http://we.local/addons/video/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:video:3', 'a:1:{s:6:\"module\";s:5:\"video\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:images', 'a:30:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:51:\"http://we.local/addons/images/icon.jpg?v=1553566249\";s:7:\"preview\";s:41:\"http://we.local/addons/images/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:images:3', 'a:1:{s:6:\"module\";s:6:\"images\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:custom', 'a:30:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:51:\"http://we.local/addons/custom/icon.jpg?v=1553566249\";s:7:\"preview\";s:41:\"http://we.local/addons/custom/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:custom:3', 'a:1:{s:6:\"module\";s:6:\"custom\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:recharge', 'a:30:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:53:\"http://we.local/addons/recharge/icon.jpg?v=1553566249\";s:7:\"preview\";s:43:\"http://we.local/addons/recharge/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:recharge:3', 'a:1:{s:6:\"module\";s:8:\"recharge\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:userapi', 'a:30:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:52:\"http://we.local/addons/userapi/icon.jpg?v=1553566249\";s:7:\"preview\";s:42:\"http://we.local/addons/userapi/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:userapi:3', 'a:1:{s:6:\"module\";s:7:\"userapi\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:music', 'a:30:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:50:\"http://we.local/addons/music/icon.jpg?v=1553566249\";s:7:\"preview\";s:40:\"http://we.local/addons/music/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:music:3', 'a:1:{s:6:\"module\";s:5:\"music\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:news', 'a:30:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:49:\"http://we.local/addons/news/icon.jpg?v=1553566249\";s:7:\"preview\";s:39:\"http://we.local/addons/news/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:news:3', 'a:1:{s:6:\"module\";s:4:\"news\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:basic', 'a:30:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:50:\"http://we.local/addons/basic/icon.jpg?v=1553566249\";s:7:\"preview\";s:40:\"http://we.local/addons/basic/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:basic:3', 'a:1:{s:6:\"module\";s:5:\"basic\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:system_frame:3', 'a:11:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:5:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:33:\"./index.php?c=profile&a=passport&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:3:\"app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:9:\"小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:3:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";b:1;}s:12:\"wxapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:3:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"phoneapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:13:{s:7:\"install\";a:2:{s:5:\"title\";s:15:\"云模块安装\";s:4:\"menu\";a:2:{s:9:\"mkinstall\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"应用安装\";s:3:\"url\";s:32:\"./index.php?c=cloud&a=mkinstall&\";s:15:\"permission_name\";s:9:\"mkinstall\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:10:\"xcxinstall\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序安装\";s:3:\"url\";s:33:\"./index.php?c=cloud&a=xcxinstall&\";s:15:\"permission_name\";s:10:\"xcxinstall\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=account_support\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=wxapp_support\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=welcome_support\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=webapp_support\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:61:\"./index.php?c=module&a=manage-system&support=phoneapp_support\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"xzapp\";a:2:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"menu\";a:2:{s:12:\"system_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"熊掌号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=9\";s:15:\"permission_name\";s:12:\"system_xzapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"system_module_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"熊掌号应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=xzapp_support\";s:15:\"permission_name\";s:19:\"system_module_xzapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:4:{s:5:\"cloud\";a:2:{s:10:\"is_display\";i:0;s:4:\"menu\";a:0:{}}s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:21:\"第三方登录配置\";s:3:\"url\";s:34:\"./index.php?c=system&a=thirdlogin&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:16:\"wi wi-thirdlogin\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:12;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:site_store_buy:4:3', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:3:', 'a:15:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:11:\"nx_livecode\";a:1:{s:4:\"name\";s:11:\"nx_livecode\";}s:9:\"hc_doudou\";a:1:{s:4:\"name\";s:9:\"hc_doudou\";}s:11:\"nx_activity\";a:1:{s:4:\"name\";s:11:\"nx_activity\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:user_modules:3', 'a:15:{i:0;s:9:\"hc_doudou\";i:1;s:11:\"nx_activity\";i:2;s:11:\"nx_livecode\";i:3;s:5:\"store\";i:4;s:6:\"wxcard\";i:5;s:5:\"chats\";i:6;s:5:\"voice\";i:7;s:5:\"video\";i:8;s:6:\"images\";i:9;s:6:\"custom\";i:10;s:8:\"recharge\";i:11;s:7:\"userapi\";i:12;s:5:\"music\";i:13;s:4:\"news\";i:14;s:5:\"basic\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:unisetting:1', 'a:27:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:site_store_buy:1:2', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:user_modules:2', 'a:15:{i:0;s:9:\"hc_doudou\";i:1;s:11:\"nx_activity\";i:2;s:11:\"nx_livecode\";i:3;s:5:\"store\";i:4;s:6:\"wxcard\";i:5;s:5:\"chats\";i:6;s:5:\"voice\";i:7;s:5:\"video\";i:8;s:6:\"images\";i:9;s:6:\"custom\";i:10;s:8:\"recharge\";i:11;s:7:\"userapi\";i:12;s:5:\"music\";i:13;s:4:\"news\";i:14;s:5:\"basic\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:site_store_buy:1:3', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:unisetting:2', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:uniaccount:2', 'a:26:{s:4:\"acid\";s:1:\"2\";s:7:\"uniacid\";s:1:\"2\";s:5:\"token\";s:32:\"IjFZdbA1df9X1MFDOG9h19MxAVSjo7mM\";s:14:\"encodingaeskey\";s:43:\"Rfoj1Bo2Z1SVPmFG2HhFVo1gPMmoGWxm2O19sg1pMm1\";s:5:\"level\";s:1:\"1\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:15:\"gh_ba42281b8d63\";s:3:\"key\";s:18:\"wxa5a1cce830046e02\";s:6:\"secret\";s:32:\"046b7fef5e1a6ae799cf95d539f20c06\";s:4:\"name\";s:9:\"活动猴\";s:9:\"appdomain\";s:0:\"\";s:11:\"encrypt_key\";s:18:\"wxa5a1cce830046e02\";s:4:\"type\";s:1:\"4\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"2\";s:9:\"starttime\";s:10:\"1552440970\";s:6:\"groups\";a:0:{}s:7:\"setting\";a:0:{}s:10:\"grouplevel\";N;s:4:\"logo\";s:56:\"http://we.local/attachment/headimg_2.jpg?time=1553566250\";s:6:\"qrcode\";s:55:\"http://we.local/attachment/qrcode_2.jpg?time=1553566250\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=2\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";s:1:\"2\";s:8:\"username\";s:4:\"test\";s:7:\"groupid\";s:1:\"1\";s:9:\"groupname\";s:5:\"admin\";s:9:\"timelimit\";s:22:\"2019-03-13 ~ 无限制\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:site_store_buy:4:2', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:2:1', 'a:15:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:11:\"nx_livecode\";a:1:{s:4:\"name\";s:11:\"nx_livecode\";}s:9:\"hc_doudou\";a:1:{s:4:\"name\";s:9:\"hc_doudou\";}s:11:\"nx_activity\";a:1:{s:4:\"name\";s:11:\"nx_activity\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:wxapp_version:1', 'a:16:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:7:\"multiid\";s:1:\"0\";s:7:\"version\";s:5:\"1.0.0\";s:11:\"description\";s:9:\"活动猴\";s:7:\"modules\";s:0:\"\";s:13:\"design_method\";s:1:\"3\";s:8:\"template\";s:1:\"0\";s:9:\"quickmenu\";a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}s:10:\"createtime\";s:10:\"1552444555\";s:4:\"type\";s:1:\"0\";s:8:\"entry_id\";s:1:\"0\";s:7:\"appjson\";s:0:\"\";s:15:\"default_appjson\";s:0:\"\";s:11:\"use_default\";s:1:\"0\";s:12:\"cover_entrys\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:wxapp_version:2', 'a:16:{s:2:\"id\";s:1:\"2\";s:7:\"uniacid\";s:1:\"3\";s:7:\"multiid\";s:1:\"0\";s:7:\"version\";s:5:\"1.0.1\";s:11:\"description\";s:9:\"演舞台\";s:7:\"modules\";a:1:{i:0;a:38:{s:3:\"mid\";s:2:\"16\";s:4:\"name\";s:11:\"nx_activity\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:9:\"活动猴\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:27:\"完美的活动管理工具\";s:11:\"description\";s:27:\"完美的活动管理工具\";s:6:\"author\";s:18:\"APP程序员论坛\";s:3:\"url\";s:21:\"http://bbs.appcxy.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:15:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";i:12;s:13:\"user_get_card\";i:13;s:13:\"user_del_card\";i:14;s:17:\"user_consume_card\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"H\";s:13:\"wxapp_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"1\";s:13:\"xzapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"http://we.local/addons/nx_activity/icon.jpg?v=1553566248\";s:7:\"preview\";s:46:\"http://we.local/addons/nx_activity/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:6:\"config\";a:0:{}s:7:\"enabled\";i:1;s:12:\"displayorder\";N;s:8:\"shortcut\";N;s:7:\"account\";N;s:12:\"cover_entrys\";a:0:{}s:12:\"defaultentry\";N;s:7:\"newicon\";N;}}s:13:\"design_method\";s:1:\"3\";s:8:\"template\";s:1:\"0\";s:9:\"quickmenu\";a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}s:10:\"createtime\";s:10:\"1552530821\";s:4:\"type\";s:1:\"0\";s:8:\"entry_id\";s:1:\"0\";s:7:\"appjson\";s:0:\"\";s:15:\"default_appjson\";s:0:\"\";s:11:\"use_default\";s:1:\"0\";s:12:\"cover_entrys\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:QJ00v', 'a:3:{i:0;s:0:\"\";s:11:\"nx_activity\";a:3:{s:11:\"module_name\";s:11:\"nx_activity\";s:7:\"uniacid\";s:1:\"3\";s:10:\"version_id\";s:1:\"2\";}s:5:\"wxapp\";s:1:\"3\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account_type', 's:5:\"wxapp\";');
INSERT INTO `ims_core_cache` VALUES ('we7:unicount:3', 's:1:\"0\";');
INSERT INTO `ims_core_cache` VALUES ('upgrade', 'a:3:{s:7:\"upgrade\";b:0;s:4:\"data\";a:5:{s:5:\"errno\";N;s:7:\"message\";s:14:\"发生错误: \";s:5:\"files\";a:0:{}s:7:\"schemas\";a:0:{}s:7:\"upgrade\";b:0;}s:10:\"lastupdate\";i:1553590645;}');
INSERT INTO `ims_core_cache` VALUES ('cloud:transtoken', 's:39:\"fc78dOpGYnLTtZK3ikbK/yvOXGVn4Mbk7bdGwnA\";');
INSERT INTO `ims_core_cache` VALUES ('we7:uniaccount:1', 'a:35:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:43:\"YEee9NP1cvyY7lq8v78M97WSmkFO6JEyOvHOOnO60ze\";s:5:\"level\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:18:\"wx4d54c72265fb75bc\";s:6:\"secret\";s:32:\"f99fd4759e61712b8f9c9f675810826e\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:18:\"wx4d54c72265fb75bc\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:27:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:56:\"http://we.local/attachment/headimg_1.jpg?time=1553590621\";s:6:\"qrcode\";s:55:\"http://we.local/attachment/qrcode_1.jpg?time=1553590621\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:nx_activity:3', 'a:1:{s:6:\"module\";s:11:\"nx_activity\";}');

-- ----------------------------
-- Table structure for ims_core_cron
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron`;
CREATE TABLE `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cron
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_cron_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron_record`;
CREATE TABLE `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cron_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_job
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_job`;
CREATE TABLE `ims_core_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_job
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_menu`;
CREATE TABLE `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_menu
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_paylog`;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_performance
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_performance`;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_performance
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_queue
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_queue`;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_queue
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_refundlog
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_refundlog`;
CREATE TABLE `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_uniontid` (`refund_uniontid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_refundlog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_resource
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_resource`;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_resource
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_sendsms_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sendsms_log`;
CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_sendsms_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sessions`;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_settings`;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_settings
-- ----------------------------
INSERT INTO `ims_core_settings` VALUES ('copyright', 'a:9:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";s:3:\"icp\";s:0:\"\";s:13:\"mobile_status\";s:1:\"0\";s:10:\"login_type\";s:1:\"0\";s:10:\"log_status\";i:1;s:14:\"develop_status\";i:1;s:4:\"bind\";s:0:\"\";s:12:\"welcome_link\";i:9;}');
INSERT INTO `ims_core_settings` VALUES ('authmode', 'i:1;');
INSERT INTO `ims_core_settings` VALUES ('close', 'a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}');
INSERT INTO `ims_core_settings` VALUES ('register', 'a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}');
INSERT INTO `ims_core_settings` VALUES ('platform', 'a:5:{s:5:\"token\";s:32:\"i11Rxqxj89cVkk5qr88C888005x89Ttb\";s:14:\"encodingaeskey\";s:43:\"O0081cT6yxz50Y886CR6Bz5Vqx88K9c88xt00QR8q88\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}');
INSERT INTO `ims_core_settings` VALUES ('thirdlogin', 'a:4:{s:6:\"system\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:2:\"qq\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:6:\"wechat\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:6:\"mobile\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}}');

-- ----------------------------
-- Table structure for ims_coupon_location
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_location`;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_location
-- ----------------------------

-- ----------------------------
-- Table structure for ims_cover_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_cover_reply`;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_cover_reply
-- ----------------------------
INSERT INTO `ims_cover_reply` VALUES ('1', '1', '0', '7', 'mc', '', '进入个人中心', '', '', './index.php?c=mc&a=home&i=1');
INSERT INTO `ims_cover_reply` VALUES ('2', '1', '1', '8', 'site', '', '进入首页', '', '', './index.php?c=home&i=1&t=1');

-- ----------------------------
-- Table structure for ims_custom_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_custom_reply`;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_custom_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_address`;
CREATE TABLE `ims_hcdoudou_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `weid` (`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_address
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_cash
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_cash`;
CREATE TABLE `ims_hcdoudou_cash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `transid` varchar(20) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `createtime` char(10) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `weid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_cash
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_checkgoods
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_checkgoods`;
CREATE TABLE `ims_hcdoudou_checkgoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `model` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `thumb` varchar(300) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_checkgoods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_commission
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_commission`;
CREATE TABLE `ims_hcdoudou_commission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `trade_no` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `rate` int(11) NOT NULL,
  `profit` decimal(10,2) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `freeze` tinyint(1) NOT NULL DEFAULT '0',
  `createtime` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_commission
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_goods`;
CREATE TABLE `ims_hcdoudou_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `model` varchar(200) NOT NULL,
  `storeprice` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `thumb` varchar(300) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_guan
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_guan`;
CREATE TABLE `ims_hcdoudou_guan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `loadpic` varchar(300) NOT NULL,
  `rollpic` varchar(300) NOT NULL,
  `proppic` varchar(300) NOT NULL,
  `gamebgm` varchar(300) NOT NULL,
  `passbgm` varchar(300) NOT NULL,
  `losebgm` varchar(300) NOT NULL,
  `times` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_guan
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_nexus
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_nexus`;
CREATE TABLE `ims_hcdoudou_nexus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pppid` int(11) NOT NULL,
  `ppid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `pppid` (`pppid`),
  KEY `ppid` (`ppid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_nexus
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_order`;
CREATE TABLE `ims_hcdoudou_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `gid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `openid` varchar(30) NOT NULL,
  `title` varchar(300) NOT NULL,
  `trade_no` varchar(30) DEFAULT NULL COMMENT '订单编号',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `level` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '1中奖2未中奖',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `passtime` char(10) NOT NULL,
  `expresn` varchar(30) DEFAULT NULL COMMENT '快递编号',
  `expretime` char(10) NOT NULL,
  `createtime` char(10) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`),
  KEY `uid` (`uid`),
  KEY `trade_no` (`trade_no`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_paylog`;
CREATE TABLE `ims_hcdoudou_paylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `uid` int(11) NOT NULL,
  `openid` varchar(30) NOT NULL,
  `trade_no` varchar(18) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `total_fee` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `createtime` char(10) NOT NULL,
  `paytime` char(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `weid` (`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_setting
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_setting`;
CREATE TABLE `ims_hcdoudou_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL DEFAULT '0',
  `only` varchar(20) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `only` (`only`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_setting
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_upgrade
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_upgrade`;
CREATE TABLE `ims_hcdoudou_upgrade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `trade_no` varchar(20) NOT NULL,
  `uid` int(11) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `createtime` char(10) NOT NULL,
  `paytime` char(10) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `weid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_upgrade
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hcdoudou_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_hcdoudou_users`;
CREATE TABLE `ims_hcdoudou_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `createtime` char(10) DEFAULT NULL,
  `sessionkey` varchar(50) NOT NULL,
  `unionid` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT '1',
  `level` tinyint(1) NOT NULL DEFAULT '1',
  `promo_code` varchar(300) NOT NULL,
  `receipt_code` varchar(300) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid` (`uid`),
  KEY `weid` (`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hcdoudou_users
-- ----------------------------

-- ----------------------------
-- Table structure for ims_images_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_images_reply`;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_images_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_job
-- ----------------------------
DROP TABLE IF EXISTS `ims_job`;
CREATE TABLE `ims_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_job
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_cash_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_cash_record`;
CREATE TABLE `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `trade_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_cash_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_chats_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_chats_record`;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_chats_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_credits_recharge
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_credits_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_credits_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_record`;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  `real_uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_credits_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_fans_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_groups`;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_fans_groups
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_fans_tag_mapping
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_fans_tag_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_groups`;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_groups
-- ----------------------------
INSERT INTO `ims_mc_groups` VALUES ('1', '1', '默认会员组', '0', '1');

-- ----------------------------
-- Table structure for ims_mc_handsel
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_handsel`;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_handsel
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mapping_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(30) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`),
  UNIQUE KEY `openid_2` (`openid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `nickname` (`nickname`),
  KEY `updatetime` (`updatetime`),
  KEY `uid` (`uid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mapping_fans
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mapping_ucenter
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;
CREATE TABLE `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mapping_ucenter
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mass_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mass_record`;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mass_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_members
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_members`;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `pay_password` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_members
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_address`;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_fields`;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_fields
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_property
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_property`;
CREATE TABLE `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_property
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_oauth_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_oauth_fans
-- ----------------------------

-- ----------------------------
-- Table structure for ims_menu_event
-- ----------------------------
DROP TABLE IF EXISTS `ims_menu_event`;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_menu_event
-- ----------------------------

-- ----------------------------
-- Table structure for ims_message_notice_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_message_notice_log`;
CREATE TABLE `ims_message_notice_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `sign` varchar(22) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_message_notice_log
-- ----------------------------
INSERT INTO `ims_message_notice_log` VALUES ('1', 'test2019-03-13 09:36:10注册成功', '1', '2', '2', '4', '2', '1552440970', '0');
INSERT INTO `ims_message_notice_log` VALUES ('2', 'test112019-03-14 10:30:54注册成功', '1', '3', '3', '4', '2', '1552530654', '0');

-- ----------------------------
-- Table structure for ims_mobilenumber
-- ----------------------------
DROP TABLE IF EXISTS `ims_mobilenumber`;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mobilenumber
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules`;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `welcome_support` int(2) NOT NULL,
  `oauth_type` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  `account_support` tinyint(1) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules
-- ----------------------------
INSERT INTO `ims_modules` VALUES ('1', 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('2', 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('3', 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('4', 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('5', 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '0', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('6', 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'WeEngine Team', 'http://bbs.we7.cc', '0', 'a:0:{}', 'a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('7', 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('8', 'video', 'system', '基本视频回复', '1.0', '提供图片回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('9', 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('10', 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '0', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('11', 'wxcard', 'system', '微信卡券回复', '1.0', '微信卡券回复', '微信卡券回复', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('12', 'store', 'business', '站内商城', '1.0', '站内商城', '站内商城', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '0', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0');
INSERT INTO `ims_modules` VALUES ('13', 'nx_livecode', 'enterprise', '微信活码', '3.2.0', '二维码图案不变，内容可随时变更，极大提高营销效率基于活码技术，二维码图案更简单，扫描更容易。', '实时统计二维码扫描数据，传播效果一目了然；根据地域、网络、设备等多维度分析数据，提升管理效率。', 'APP程序员论坛', 'http://bbs.appcxy.com', '0', 'a:0:{}', 'a:15:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";i:12;s:13:\"user_get_card\";i:13;s:13:\"user_del_card\";i:14;s:17:\"user_consume_card\";}', '1', '0', '0', '0', 'N;', 'W', '1', '1', '1', '1', '1', '2', '0');
INSERT INTO `ims_modules` VALUES ('17', 'hc_doudou', 'activity', '抖抖赢口红', '1.2.0', '抖抖赢口红', '抖抖赢口红', '', '', '0', 'a:0:{}', 'a:0:{}', '0', '0', '0', '0', 'a:0:{}', 'D', '2', '1', '1', '1', '1', '1', '0');
INSERT INTO `ims_modules` VALUES ('19', 'nx_activity', 'activity', '活动猴', '1.0.0', '完美的活动管理工具', '完美的活动管理工具', 'APP程序员论坛', 'http://bbs.appcxy.com', '0', 'a:0:{}', 'a:15:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";i:12;s:13:\"user_get_card\";i:13;s:13:\"user_del_card\";i:14;s:17:\"user_consume_card\";}', '1', '0', '0', '0', 'N;', 'H', '2', '1', '1', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for ims_modules_bindings
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_bindings`;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `entry` varchar(30) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_bindings
-- ----------------------------
INSERT INTO `ims_modules_bindings` VALUES ('1', 'nx_livecode', 'cover', '', '三码合一(用户入口)', 'user', '', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('2', 'nx_livecode', 'cover', '', '微信活码', 'home', '', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('3', 'nx_livecode', 'cover', '', '三码合一', 'pay', '', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('4', 'nx_livecode', 'menu', '', '微信活码', 'code', '', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('5', 'nx_livecode', 'menu', '', '广告管理', 'ad', '', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('6', 'nx_livecode', 'menu', '', '三码合一', 'pay', '', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('7', 'nx_livecode', 'menu', '', '系统设置', 'setup', '', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('8', 'nx_livecode', 'menu', '', '应用推荐', 'app', '', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('29', 'hc_doudou', 'menu', '', '基础设置', 'setting', '1', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('28', 'hc_doudou', 'menu', '', '用户管理', 'users', '2', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('27', 'hc_doudou', 'menu', '', '商品管理', 'goods', '3', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('26', 'hc_doudou', 'menu', '', '参与记录', 'count', '4', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('25', 'hc_doudou', 'menu', '', '发货管理', 'order', '5', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('24', 'hc_doudou', 'menu', '', '充值记录', 'recharge', '5', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('23', 'hc_doudou', 'menu', '', '审核设置', 'checkgoods', '7', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('22', 'hc_doudou', 'menu', '', '升级记录', 'upgrade', '8', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('36', 'nx_activity', 'menu', '', '工作分类', 'work', '', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('35', 'nx_activity', 'menu', '', '活动用户', 'user', '', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('30', 'hc_doudou', 'menu', '', '提现管理', 'cash', '9', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('34', 'nx_activity', 'menu', '', '活动管理', 'news', '', '0', '', 'fa fa-puzzle-piece', '0');

-- ----------------------------
-- Table structure for ims_modules_cloud
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_cloud`;
CREATE TABLE `ims_modules_cloud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `install_status` tinyint(4) NOT NULL,
  `account_support` tinyint(4) NOT NULL,
  `wxapp_support` tinyint(4) NOT NULL,
  `webapp_support` tinyint(4) NOT NULL,
  `phoneapp_support` tinyint(4) NOT NULL,
  `welcome_support` tinyint(4) NOT NULL,
  `main_module_name` varchar(50) NOT NULL,
  `main_module_logo` varchar(100) NOT NULL,
  `has_new_version` tinyint(1) NOT NULL,
  `has_new_branch` tinyint(1) NOT NULL,
  `is_ban` tinyint(4) NOT NULL,
  `lastupdatetime` int(11) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `lastupdatetime` (`lastupdatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_cloud
-- ----------------------------
INSERT INTO `ims_modules_cloud` VALUES ('9', 'nx_activity - 副本', '活动猴', 'H', 'http://we.local/addons/nx_activity - 副本/icon.jpg', '1.0.0', '2', '1', '2', '1', '1', '1', '', '', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for ims_modules_ignore
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_ignore`;
CREATE TABLE `ims_modules_ignore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_ignore
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_plugin`;
CREATE TABLE `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `main_module` (`main_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_rank
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_rank`;
CREATE TABLE `ims_modules_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_rank
-- ----------------------------
INSERT INTO `ims_modules_rank` VALUES ('1', 'nx_activity', '1', '1');

-- ----------------------------
-- Table structure for ims_modules_recycle
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_recycle`;
CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_recycle
-- ----------------------------

-- ----------------------------
-- Table structure for ims_music_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_music_reply`;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_music_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_news_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_news_reply`;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_news_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_nx_code_ad
-- ----------------------------
DROP TABLE IF EXISTS `ims_nx_code_ad`;
CREATE TABLE `ims_nx_code_ad` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `adimg` varchar(255) DEFAULT NULL,
  `adurl` varchar(255) DEFAULT NULL,
  `time` int(32) DEFAULT NULL,
  `switch` int(11) NOT NULL DEFAULT '1',
  `endtime` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_nx_code_ad
-- ----------------------------

-- ----------------------------
-- Table structure for ims_nx_code_content
-- ----------------------------
DROP TABLE IF EXISTS `ims_nx_code_content`;
CREATE TABLE `ims_nx_code_content` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `url` text,
  `time` int(16) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `see` int(11) DEFAULT '0' COMMENT '是否查看',
  `code_uid` int(11) DEFAULT NULL,
  `content_uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_nx_code_content
-- ----------------------------

-- ----------------------------
-- Table structure for ims_nx_code_counter
-- ----------------------------
DROP TABLE IF EXISTS `ims_nx_code_counter`;
CREATE TABLE `ims_nx_code_counter` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `code_uid` int(11) DEFAULT NULL,
  `content_uid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_nx_code_counter
-- ----------------------------

-- ----------------------------
-- Table structure for ims_nx_code_list
-- ----------------------------
DROP TABLE IF EXISTS `ims_nx_code_list`;
CREATE TABLE `ims_nx_code_list` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL COMMENT '网址',
  `name` varchar(255) DEFAULT NULL COMMENT '备注',
  `time` int(16) DEFAULT NULL COMMENT '添加时间',
  `number` int(11) DEFAULT NULL COMMENT '闽值',
  `type` int(11) DEFAULT NULL COMMENT '类型1 链接 2图片',
  `scan` int(11) DEFAULT '0' COMMENT '内容ID',
  `scanning` int(11) DEFAULT NULL,
  `scanningmax` int(11) DEFAULT NULL COMMENT '扫码总数',
  `radio` int(11) DEFAULT '1' COMMENT '展示模式',
  `uniacid` int(11) DEFAULT NULL COMMENT '公众号ID',
  `endint` int(11) DEFAULT '0',
  `qrcode` varchar(255) DEFAULT NULL COMMENT '二维码',
  `switch` int(11) DEFAULT '1' COMMENT '开关 1 活动开启 2活动结束',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_nx_code_list
-- ----------------------------

-- ----------------------------
-- Table structure for ims_nx_code_pay
-- ----------------------------
DROP TABLE IF EXISTS `ims_nx_code_pay`;
CREATE TABLE `ims_nx_code_pay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `wechat` varchar(255) DEFAULT NULL COMMENT '微信',
  `wechaturl` varchar(255) DEFAULT NULL COMMENT '微信图片上传地址',
  `alipay` varchar(255) DEFAULT NULL COMMENT '支付宝',
  `alipayurl` varchar(255) DEFAULT NULL COMMENT '支付宝图片上传地址',
  `qq` varchar(255) DEFAULT NULL COMMENT 'qq',
  `qqurl` varchar(255) DEFAULT NULL COMMENT 'qq图片上传',
  `title` varchar(255) DEFAULT NULL COMMENT '海报标题',
  `uniacid` varchar(255) DEFAULT NULL COMMENT '公众号ID',
  `template` int(11) DEFAULT '1',
  `time` int(11) DEFAULT NULL COMMENT '添加时间',
  `on` int(11) DEFAULT NULL COMMENT '审核 0 通过 1 拒绝',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `userurl` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `username` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `codeurl` varchar(255) DEFAULT NULL COMMENT '二维码地址',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `posterurl` varchar(255) DEFAULT NULL COMMENT '海报地址',
  `scanningmax` int(11) DEFAULT NULL COMMENT '扫码次数',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_nx_code_pay
-- ----------------------------

-- ----------------------------
-- Table structure for ims_nx_code_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_nx_code_settings`;
CREATE TABLE `ims_nx_code_settings` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(255) DEFAULT NULL COMMENT '网站标题',
  `sitedomain` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_nx_code_settings
-- ----------------------------

-- ----------------------------
-- Table structure for ims_phoneapp_versions
-- ----------------------------
DROP TABLE IF EXISTS `ims_phoneapp_versions`;
CREATE TABLE `ims_phoneapp_versions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `version` varchar(20) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `modules` text,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_phoneapp_versions
-- ----------------------------

-- ----------------------------
-- Table structure for ims_profile_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_profile_fields`;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_profile_fields
-- ----------------------------
INSERT INTO `ims_profile_fields` VALUES ('1', 'realname', '1', '真实姓名', '', '0', '1', '1', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('2', 'nickname', '1', '昵称', '', '1', '1', '0', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('3', 'avatar', '1', '头像', '', '1', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('4', 'qq', '1', 'QQ号', '', '0', '0', '0', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('5', 'mobile', '1', '手机号码', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('6', 'vip', '1', 'VIP级别', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('7', 'gender', '1', '性别', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('8', 'birthyear', '1', '出生生日', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('9', 'constellation', '1', '星座', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('10', 'zodiac', '1', '生肖', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('11', 'telephone', '1', '固定电话', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('12', 'idcard', '1', '证件号码', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('13', 'studentid', '1', '学号', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('14', 'grade', '1', '班级', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('15', 'address', '1', '邮寄地址', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('16', 'zipcode', '1', '邮编', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('17', 'nationality', '1', '国籍', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('18', 'resideprovince', '1', '居住地址', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('19', 'graduateschool', '1', '毕业学校', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('20', 'company', '1', '公司', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('21', 'education', '1', '学历', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('22', 'occupation', '1', '职业', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('23', 'position', '1', '职位', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('24', 'revenue', '1', '年收入', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('25', 'affectivestatus', '1', '情感状态', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('26', 'lookingfor', '1', ' 交友目的', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('27', 'bloodtype', '1', '血型', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('28', 'height', '1', '身高', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('29', 'weight', '1', '体重', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('30', 'alipay', '1', '支付宝帐号', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('31', 'msn', '1', 'MSN', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('32', 'email', '1', '电子邮箱', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('33', 'taobao', '1', '阿里旺旺', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('34', 'site', '1', '主页', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('35', 'bio', '1', '自我介绍', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('36', 'interest', '1', '兴趣爱好', '', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for ims_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode`;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for ims_qrcode_stat
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode_stat`;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode_stat
-- ----------------------------

-- ----------------------------
-- Table structure for ims_resume_work_rel
-- ----------------------------
DROP TABLE IF EXISTS `ims_resume_work_rel`;
CREATE TABLE `ims_resume_work_rel` (
  `resume_id` int(11) NOT NULL COMMENT '简历ID',
  `dance_id` int(11) NOT NULL COMMENT '舞种ID',
  PRIMARY KEY (`resume_id`,`dance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户简历舞种';

-- ----------------------------
-- Records of ims_resume_work_rel
-- ----------------------------
INSERT INTO `ims_resume_work_rel` VALUES ('1', '4');
INSERT INTO `ims_resume_work_rel` VALUES ('1', '10');
INSERT INTO `ims_resume_work_rel` VALUES ('2', '2');
INSERT INTO `ims_resume_work_rel` VALUES ('2', '3');
INSERT INTO `ims_resume_work_rel` VALUES ('2', '4');
INSERT INTO `ims_resume_work_rel` VALUES ('2', '5');
INSERT INTO `ims_resume_work_rel` VALUES ('2', '6');
INSERT INTO `ims_resume_work_rel` VALUES ('2', '7');
INSERT INTO `ims_resume_work_rel` VALUES ('2', '9');
INSERT INTO `ims_resume_work_rel` VALUES ('2', '10');
INSERT INTO `ims_resume_work_rel` VALUES ('2', '11');
INSERT INTO `ims_resume_work_rel` VALUES ('3', '2');
INSERT INTO `ims_resume_work_rel` VALUES ('3', '3');
INSERT INTO `ims_resume_work_rel` VALUES ('3', '4');
INSERT INTO `ims_resume_work_rel` VALUES ('3', '5');
INSERT INTO `ims_resume_work_rel` VALUES ('3', '6');
INSERT INTO `ims_resume_work_rel` VALUES ('3', '7');
INSERT INTO `ims_resume_work_rel` VALUES ('3', '9');
INSERT INTO `ims_resume_work_rel` VALUES ('3', '10');
INSERT INTO `ims_resume_work_rel` VALUES ('3', '11');
INSERT INTO `ims_resume_work_rel` VALUES ('4', '2');
INSERT INTO `ims_resume_work_rel` VALUES ('4', '9');
INSERT INTO `ims_resume_work_rel` VALUES ('4', '10');
INSERT INTO `ims_resume_work_rel` VALUES ('4', '11');
INSERT INTO `ims_resume_work_rel` VALUES ('5', '4');
INSERT INTO `ims_resume_work_rel` VALUES ('5', '5');
INSERT INTO `ims_resume_work_rel` VALUES ('5', '6');
INSERT INTO `ims_resume_work_rel` VALUES ('5', '10');
INSERT INTO `ims_resume_work_rel` VALUES ('6', '4');
INSERT INTO `ims_resume_work_rel` VALUES ('6', '5');
INSERT INTO `ims_resume_work_rel` VALUES ('6', '6');
INSERT INTO `ims_resume_work_rel` VALUES ('6', '10');
INSERT INTO `ims_resume_work_rel` VALUES ('7', '6');
INSERT INTO `ims_resume_work_rel` VALUES ('8', '5');

-- ----------------------------
-- Table structure for ims_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule`;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule
-- ----------------------------
INSERT INTO `ims_rule` VALUES ('1', '0', '城市天气', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('2', '0', '百度百科', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('3', '0', '即时翻译', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('4', '0', '今日老黄历', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('5', '0', '看新闻', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('6', '0', '快递查询', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('7', '1', '个人中心入口设置', 'cover', '0', '1', '');
INSERT INTO `ims_rule` VALUES ('8', '1', '微擎团队入口设置', 'cover', '0', '1', '');

-- ----------------------------
-- Table structure for ims_rule_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule_keyword`;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `rid` (`rid`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule_keyword
-- ----------------------------
INSERT INTO `ims_rule_keyword` VALUES ('1', '1', '0', 'userapi', '^.+天气$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('2', '2', '0', 'userapi', '^百科.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('3', '2', '0', 'userapi', '^定义.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('4', '3', '0', 'userapi', '^@.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('5', '4', '0', 'userapi', '日历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('6', '4', '0', 'userapi', '万年历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('7', '4', '0', 'userapi', '黄历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('8', '4', '0', 'userapi', '几号', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('9', '5', '0', 'userapi', '新闻', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('10', '6', '0', 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('11', '7', '1', 'cover', '个人中心', '1', '0', '1');
INSERT INTO `ims_rule_keyword` VALUES ('12', '8', '1', 'cover', '首页', '1', '0', '1');

-- ----------------------------
-- Table structure for ims_site_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article`;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_article
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article_comment`;
CREATE TABLE `ims_site_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `content` text,
  `is_read` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_category`;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_multi
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_multi`;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_multi
-- ----------------------------
INSERT INTO `ims_site_multi` VALUES ('1', '1', '微擎团队', '1', '', '1', '');

-- ----------------------------
-- Table structure for ims_site_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_nav`;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_nav
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_page
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_page`;
CREATE TABLE `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `multipage` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_page
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_slide
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_slide`;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_slide
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_create_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_create_account`;
CREATE TABLE `ims_site_store_create_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `endtime` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_create_account
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_goods`;
CREATE TABLE `ims_site_store_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `module` varchar(50) NOT NULL,
  `account_num` int(10) NOT NULL,
  `wxapp_num` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `slide` varchar(1000) NOT NULL,
  `category_id` int(10) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `module_group` int(10) NOT NULL,
  `api_num` int(10) NOT NULL,
  `user_group` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `category_id` (`category_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_order`;
CREATE TABLE `ims_site_store_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(28) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `buyerid` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `changeprice` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `endtime` int(15) NOT NULL,
  `wxapp` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goodid` (`goodsid`),
  KEY `buyerid` (`buyerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_styles
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles`;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles
-- ----------------------------
INSERT INTO `ims_site_styles` VALUES ('1', '1', '1', '微站默认模板_gC5C');

-- ----------------------------
-- Table structure for ims_site_styles_vars
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles_vars`;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles_vars
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_templates
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_templates`;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_templates
-- ----------------------------
INSERT INTO `ims_site_templates` VALUES ('1', 'default', '微站默认模板', '', '由微擎提供默认微站模板套系', '微擎团队', 'http://we7.cc', '1', '0');

-- ----------------------------
-- Table structure for ims_stat_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_fans`;
CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_fans
-- ----------------------------
INSERT INTO `ims_stat_fans` VALUES ('1', '1', '0', '0', '0', '20181209');
INSERT INTO `ims_stat_fans` VALUES ('2', '1', '0', '0', '0', '20181208');
INSERT INTO `ims_stat_fans` VALUES ('3', '1', '0', '0', '0', '20181207');
INSERT INTO `ims_stat_fans` VALUES ('4', '1', '0', '0', '0', '20181206');
INSERT INTO `ims_stat_fans` VALUES ('5', '1', '0', '0', '0', '20181205');
INSERT INTO `ims_stat_fans` VALUES ('6', '1', '0', '0', '0', '20181204');
INSERT INTO `ims_stat_fans` VALUES ('7', '1', '0', '0', '0', '20181203');
INSERT INTO `ims_stat_fans` VALUES ('8', '1', '0', '0', '0', '20190312');
INSERT INTO `ims_stat_fans` VALUES ('9', '1', '0', '0', '0', '20190311');
INSERT INTO `ims_stat_fans` VALUES ('10', '1', '0', '0', '0', '20190310');
INSERT INTO `ims_stat_fans` VALUES ('11', '1', '0', '0', '0', '20190309');
INSERT INTO `ims_stat_fans` VALUES ('12', '1', '0', '0', '0', '20190308');
INSERT INTO `ims_stat_fans` VALUES ('13', '1', '0', '0', '0', '20190307');
INSERT INTO `ims_stat_fans` VALUES ('14', '1', '0', '0', '0', '20190306');
INSERT INTO `ims_stat_fans` VALUES ('15', '1', '0', '0', '0', '20190313');

-- ----------------------------
-- Table structure for ims_stat_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_keyword`;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_msg_history
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_msg_history`;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_msg_history
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_rule`;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_rule
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_visit
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_visit`;
CREATE TABLE `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `module` (`module`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_visit
-- ----------------------------
INSERT INTO `ims_stat_visit` VALUES ('1', '1', 'we7_account', '8', '20181210', 'web');
INSERT INTO `ims_stat_visit` VALUES ('2', '1', 'we7_account', '29', '20190313', 'web');
INSERT INTO `ims_stat_visit` VALUES ('3', '1', 'we7_account', '25', '20190314', 'web');
INSERT INTO `ims_stat_visit` VALUES ('4', '3', 'we7_account', '3', '20190314', 'web');
INSERT INTO `ims_stat_visit` VALUES ('5', '0', 'we7_api', '4', '20190319', 'web');
INSERT INTO `ims_stat_visit` VALUES ('6', '3', 'we7_account', '106', '20190326', 'web');

-- ----------------------------
-- Table structure for ims_system_stat_visit
-- ----------------------------
DROP TABLE IF EXISTS `ims_system_stat_visit`;
CREATE TABLE `ims_system_stat_visit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_system_stat_visit
-- ----------------------------
INSERT INTO `ims_system_stat_visit` VALUES ('1', '0', 'nx_livecode', '2', '0', '1552530033', '1552530033');
INSERT INTO `ims_system_stat_visit` VALUES ('2', '0', 'nx_activity', '3', '1', '1552534448', '1552620461');

-- ----------------------------
-- Table structure for ims_uni_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account`;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account
-- ----------------------------
INSERT INTO `ims_uni_account` VALUES ('1', '-1', '微擎团队', '一个朝气蓬勃的团队', '1', null, 'W');
INSERT INTO `ims_uni_account` VALUES ('2', '0', '活动猴', '活动猴', '2', null, 'H');
INSERT INTO `ims_uni_account` VALUES ('3', '0', '演舞台', '演舞台', '3', null, 'Y');

-- ----------------------------
-- Table structure for ims_uni_account_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_group`;
CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account_menus
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_menus`;
CREATE TABLE `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_menus
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_modules`;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_modules
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_users`;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_users
-- ----------------------------
INSERT INTO `ims_uni_account_users` VALUES ('1', '1', '2', 'manager', '0');
INSERT INTO `ims_uni_account_users` VALUES ('2', '2', '2', 'owner', '0');
INSERT INTO `ims_uni_account_users` VALUES ('3', '3', '3', 'owner', '0');

-- ----------------------------
-- Table structure for ims_uni_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_group`;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` text NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_group
-- ----------------------------
INSERT INTO `ims_uni_group` VALUES ('2', '0', '我的权限', 'a:2:{i:0;s:11:\"nx_activity\";i:1;s:9:\"hc_doudou\";}', '', '0', '0');

-- ----------------------------
-- Table structure for ims_uni_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_settings`;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `payment` text NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  `statistics` varchar(100) NOT NULL,
  `bind_domain` varchar(200) NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
  `reply_setting` tinyint(4) NOT NULL,
  `default_module` varchar(100) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_settings
-- ----------------------------
INSERT INTO `ims_uni_settings` VALUES ('1', 'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}', 'a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}', '0', 'a:1:{s:6:\"status\";i:0;}', 'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}', 'a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', 'a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}', '', '1', '0', '', '', '0', '', '0', '0', '', '', '', '0', '0', '');

-- ----------------------------
-- Table structure for ims_uni_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_verifycode`;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_verifycode
-- ----------------------------

-- ----------------------------
-- Table structure for ims_userapi_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_cache`;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_cache
-- ----------------------------

-- ----------------------------
-- Table structure for ims_userapi_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_reply`;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_reply
-- ----------------------------
INSERT INTO `ims_userapi_reply` VALUES ('1', '1', '\"城市名+天气\", 如: \"北京天气\"', 'weather.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('2', '2', '\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"', 'baike.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('3', '3', '\"@查询内容(中文或英文)\"', 'translate.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('4', '4', '\"日历\", \"万年历\", \"黄历\"或\"几号\"', 'calendar.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('5', '5', '\"新闻\"', 'news.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('6', '6', '\"快递+单号\", 如: \"申通1200041125\"', 'express.php', '', '', '0');

-- ----------------------------
-- Table structure for ims_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_users`;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `register_type` tinyint(3) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `welcome_link` tinyint(4) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users
-- ----------------------------
INSERT INTO `ims_users` VALUES ('1', '0', '1', '0', 'admin', 'b30fb3e9613defd5046e377a0fa2687f5269321f', 'FQN11q6K', '0', '0', '1544257590', '', '1553514986', '127.0.0.1', '', '0', '0', '0', '', '0');
INSERT INTO `ims_users` VALUES ('2', '0', '1', '0', 'test', 'b30fb3e9613defd5046e377a0fa2687f5269321f', 'FQN11q6K', '1', '2', '1552440970', '127.0.0.1', '1552530016', '127.0.0.1', '', '1552440970', '0', '0', '', '0');
INSERT INTO `ims_users` VALUES ('3', '0', '1', '0', 'test11', 'aa806c7bbeec8e347b7957d017a79c3c3e8450ca', 't11HzVI1', '1', '2', '1552530654', '127.0.0.1', '1552545485', '127.0.0.1', '', '1552530654', '0', '0', '', '0');

-- ----------------------------
-- Table structure for ims_users_bind
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_bind`;
CREATE TABLE `ims_users_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `bind_sign` (`bind_sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_bind
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_failed_login
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_failed_login`;
CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_failed_login
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_founder_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_founder_group`;
CREATE TABLE `ims_users_founder_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_founder_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_group`;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_group
-- ----------------------------
INSERT INTO `ims_users_group` VALUES ('1', '0', 'admin', 'a:3:{i:0;i:-1;i:1;i:3;i:2;i:2;}', '1111', '0', '0', '111', '111', '111', '111');

-- ----------------------------
-- Table structure for ims_users_invitation
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_invitation`;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_invitation
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_permission
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_permission`;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_permission
-- ----------------------------
INSERT INTO `ims_users_permission` VALUES ('1', '1', '2', 'nx_livecode', 'nx_livecode_rule|nx_livecode_cover_user|nx_livecode_cover_home|nx_livecode_cover_pay|nx_livecode_menu_code|nx_livecode_menu_ad|nx_livecode_menu_pay|nx_livecode_menu_setup|nx_livecode_menu_app', '');

-- ----------------------------
-- Table structure for ims_users_profile
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_profile`;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  `is_send_mobile_status` tinyint(3) NOT NULL,
  `send_expire_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_profile
-- ----------------------------
INSERT INTO `ims_users_profile` VALUES ('1', '2', '1552440970', '0', '3333', '3333', '', '393154740', '', '', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for ims_user_info
-- ----------------------------
DROP TABLE IF EXISTS `ims_user_info`;
CREATE TABLE `ims_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `app_id` varchar(64) DEFAULT NULL COMMENT '小程序的APPID',
  `open_id` varchar(64) NOT NULL COMMENT '用户唯一标识',
  `union_id` varchar(64) DEFAULT NULL COMMENT '用户平台唯一标识',
  `headimgurl` varchar(256) DEFAULT NULL COMMENT '头像，微信头像地址',
  `nick_name` varchar(100) DEFAULT NULL COMMENT '微信昵称',
  `gender` int(2) DEFAULT '0' COMMENT '1-男，2-女，0-未知',
  `reg_time` datetime DEFAULT NULL COMMENT '注册时间',
  `last_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_id` (`app_id`,`open_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息';

-- ----------------------------
-- Records of ims_user_info
-- ----------------------------
INSERT INTO `ims_user_info` VALUES ('1', 'wx2e8ecb29fac93105', 'oPlWH5N9QnUoltzAaTksmxODjzvE', '', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKlWWPohjMpI9cUBMONa4LuzHcdrp8od1WnMLRUibiaiaPqpvcOrsJUvJtNPhAHmDxV2l8PrQydEmOAg/132', '陈小渣?', '1', '2018-11-20 17:17:49', null);
INSERT INTO `ims_user_info` VALUES ('3', 'wx2e8ecb29fac93105', 'oPlWH5EZ8Lpzy6SJIOafeQ-npInM', '', 'https://wx.qlogo.cn/mmopen/vi_32/1af0zjQSqCEHYA1iciadKVSr6F7Kv0jhkDtvjsMwKODu6B8AdFBiaqxkuGDkhSuVpNXoyWEbnib9NaYgI71qInuHeA/132', '-bedlamite_', '1', '2018-11-20 18:11:14', null);
INSERT INTO `ims_user_info` VALUES ('4', 'wx2e8ecb29fac93105', 'oPlWH5NNQK343PHHQf84_16YTtPc', '', 'https://wx.qlogo.cn/mmopen/vi_32/eyOjq0P0IibLHfhibRV8CrRXFC0GM2CibC6AYzcXnktc2SyNHuB2dvzplgvxZhcrsS8bmyXLI88nlRPxDBYg6nxGQ/132', '小精灵', '2', '2018-11-20 18:28:46', null);
INSERT INTO `ims_user_info` VALUES ('5', 'wx2e8ecb29fac93105', 'oPlWH5AzylM-7heJcQiaR2MoBos0', '', 'https://wx.qlogo.cn/mmopen/vi_32/JTxKRzYa8m0lG3jA3BQ8HlXm7rpweNdOTPtnicPFMibCwjm8AGOiaiaoSh8umouRPWmGSjCib0Rbc3u7VW9qRgYQeug/132', 'vincent', '1', '2018-11-22 11:04:06', null);
INSERT INTO `ims_user_info` VALUES ('6', 'wxa5a1cce830046e02', 'oAONN5QQFU_hyuaK2T1Ult7Uyw9c', '', 'https://wx.qlogo.cn/mmopen/vi_32/xxbUPeglgNmwyxBrBhYQgvJVT70bw4v8v1Rwa4nxYPsL0iagFMqGZz8v5aqz0SgJF5m6sVtGBY9YDNsPeCuDqCg/132', 'vincent', '1', '2018-12-06 10:33:17', null);
INSERT INTO `ims_user_info` VALUES ('7', 'wxa5a1cce830046e02', 'oAONN5YcoaKRyx5g3oXhMAsCFzy4', '', 'https://wx.qlogo.cn/mmopen/vi_32/Nz86M1iaDPkVM3HRnMdWDMM6uRUJZvH5UvACDsfO4SaXEw0wiajg5JGqnoSnstmmia75mvV7mCtTLLoaicFiczYAE2Q/132', '黎明清', '1', '2018-12-06 10:53:07', null);
INSERT INTO `ims_user_info` VALUES ('8', 'wxa5a1cce830046e02', 'oAONN5W_HAUP8r_2zGxlyMWDw7tU', '', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKkhNjHTojF2KZXrHMLR0IFs5w9Y0XiaxhgGsh11zfWAiaxyQDxUiaHgkLWtLzYytoIQjHWudgZlwxWA/132', '黎明-米度广告', '1', '2018-12-06 13:50:16', null);
INSERT INTO `ims_user_info` VALUES ('9', 'wxa5a1cce830046e02', 'oAONN5Y2w2kaKF8dlyJ2sltGZX2g', '', 'https://wx.qlogo.cn/mmhead/Q3auHgzwzM5e7zoGwzbStibbUYEyvzA1M5Aa9K2tdcribjaxV7B8C5GQ/0/132', '张横', '0', '2018-12-10 11:24:25', null);
INSERT INTO `ims_user_info` VALUES ('10', 'wxa5a1cce830046e02', 'oAONN5Y7z7s0kcgGVmEMT62xjTY4', '', 'https://wx.qlogo.cn/mmopen/vi_32/icLAWkJCK7qhmb0MDSNvssNV0Hm7j4Yw8pgIx6oNicicpal0ic1kn0CjNCuFQAjIC7CaCNeHsiah7FrdZb6TsBGzOPA/132', 'Singularity', '1', '2018-12-11 09:50:20', null);
INSERT INTO `ims_user_info` VALUES ('11', 'wxa5a1cce830046e02', 'oAONN5VGWG76XkB2ZoysTbcQj-js', '', 'https://wx.qlogo.cn/mmopen/vi_32/cY6h7Hp8VNztfMzWoqM7fniaiaHkRic366hJ92wE4HcodyPEMgpAFRGbQNH3VFaeXUe4yHydTh9xywqXoAzk0fS6A/132', '初点广告.芷夏', '2', '2018-12-17 19:10:17', null);
INSERT INTO `ims_user_info` VALUES ('12', 'wxa5a1cce830046e02', 'oAONN5f-nRx_HzRi4TYxp92PbQZc', '', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLxa6As8blDABlcKa1CKPGuukqRTVgEsCmjbNZbyFO4xUph613PE6VUPaibtmYkKMmibglsJ0ZRt9Zg/132', '零成本营销策划～姜开慧', '2', '2018-12-18 18:32:03', null);
INSERT INTO `ims_user_info` VALUES ('13', 'wxa5a1cce830046e02', 'oAONN5f6odnbA8m8w7acr_crfVE0', '', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqjOgvHWRzTgJcZSpMHJIO0xgpPxLd4S4okPqWUNCNaYk677nwNRibicoeL31X2u1STicPRpWLiaxLG3w/132', 'A辉广州物料搭建与出租13713293866', '1', '2018-12-19 01:49:37', null);
INSERT INTO `ims_user_info` VALUES ('14', 'wxa5a1cce830046e02', 'oAONN5f2Hwj7EbX9NGgtF7Q8sk5E', '', 'https://wx.qlogo.cn/mmhead/ibN3VFtnkSDiasNuWlCf1WNzTSF5HNgzfPolEbBTyFKBU/132', '姜盈秀', '0', '2018-12-19 13:56:43', null);
INSERT INTO `ims_user_info` VALUES ('15', 'wxa5a1cce830046e02', 'oAONN5TNDRT5K6FvTy2WQKAZeZ3U', '', 'https://wx.qlogo.cn/mmhead/abC06YVEI6clJkqJXOLRVib2ASXZOKxMFzlSn1clo3J8/132', '王子齐', '0', '2018-12-19 14:31:48', null);
INSERT INTO `ims_user_info` VALUES ('16', 'wxa5a1cce830046e02', 'oAONN5Ro_BJmqR7ZXT8YzBV_I3bI', '', 'https://wx.qlogo.cn/mmhead/O5Iric47vxnbuzhYicLy4c09zqpsUfqoxGCqKLNJGo2rQ/132', '高承翰', '0', '2018-12-19 17:33:38', null);
INSERT INTO `ims_user_info` VALUES ('17', 'wxa5a1cce830046e02', 'oAONN5ULR3WJYmYEpIGmQqSIBwKY', '', 'https://wx.qlogo.cn/mmhead/DAStBzzFoWlhSu73NrXx6rlzeqp4riacLTQQBwsic56p0/132', '吴佩芝', '0', '2018-12-20 19:47:23', null);
INSERT INTO `ims_user_info` VALUES ('18', 'wxa5a1cce830046e02', 'oAONN5RNNnQwHFlL4OCrPT66j-xU', '', 'https://wx.qlogo.cn/mmhead/539HRfwmGg9H4wqmUnxwvBIhDXJ9ic4r0PPuKY3pgru4/132', '陈雅云', '0', '2018-12-21 22:00:07', null);
INSERT INTO `ims_user_info` VALUES ('19', 'wxa5a1cce830046e02', 'oAONN5SSVN6Ve_pLWmnMMqDjaSXU', '', 'https://wx.qlogo.cn/mmhead/0qicblDsWeooTI3k2OndNuLwFvVWCFYzWXKhx1C8qzck/132', '涂昀琬', '0', '2018-12-21 23:48:55', null);
INSERT INTO `ims_user_info` VALUES ('20', 'wxa5a1cce830046e02', 'oAONN5Y4-uT9pYvOZ-iWBhT-GbRU', '', 'https://wx.qlogo.cn/mmhead/7Z0CVz9Tfibmvtd03Cib5USiaPSxtY6rbxjtict7S8MhZHw/132', '陈蓉育', '0', '2018-12-23 14:13:42', null);
INSERT INTO `ims_user_info` VALUES ('21', 'wxa5a1cce830046e02', 'oAONN5QyQd6naMpJvu48IVT-7pFU', '', 'https://wx.qlogo.cn/mmopen/vi_32/0njTiaunZxtYcDHOVN1Sr8Agy2Na1fvIaydh7w8aOfM6VvxFJFlRqXDuY2ONdmm66vKGju7WbSXMnI1BZUXdkxg/132', '我叫想肥先生。??', '1', '2019-03-07 17:08:54', null);

-- ----------------------------
-- Table structure for ims_user_resume
-- ----------------------------
DROP TABLE IF EXISTS `ims_user_resume`;
CREATE TABLE `ims_user_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int(11) DEFAULT '0' COMMENT '用户ID',
  `headimgurl` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '头像',
  `real_name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '真实姓名',
  `gender` smallint(1) DEFAULT '0' COMMENT '性别：0 - 未知；1 - 男；2 - 女；',
  `phone` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '邮箱',
  `birthday` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '生日',
  `stature` decimal(5,2) DEFAULT NULL COMMENT '身高',
  `weight` decimal(5,2) DEFAULT NULL COMMENT '体重',
  `bust` decimal(5,2) DEFAULT NULL COMMENT '胸围',
  `waist` decimal(5,2) DEFAULT NULL COMMENT '腰围',
  `hip` decimal(5,2) DEFAULT NULL COMMENT '臀围',
  `dance_age` int(2) DEFAULT '0' COMMENT '舞龄',
  `country` varchar(56) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '国家',
  `province` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '省份',
  `city` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '城市',
  `county` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '区县',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户简历';

-- ----------------------------
-- Records of ims_user_resume
-- ----------------------------
INSERT INTO `ims_user_resume` VALUES ('1', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKlWWPohjMpI9cUBMONa4LuzHcdrp8od1WnMLRUibiaiaPqpvcOrsJUvJtNPhAHmDxV2l8PrQydEmOAg/132', '哈哈', '1', '', '', '2019-03-26', '154.00', '36.00', '50.00', '50.00', '50.00', '7', '', '北京市', '北京市', '东城区', '2018-11-20 17:18:52');
INSERT INTO `ims_user_resume` VALUES ('2', '3', 'https://wx.qlogo.cn/mmopen/vi_32/1af0zjQSqCEHYA1iciadKVSr6F7Kv0jhkDtvjsMwKODu6B8AdFBiaqxkuGDkhSuVpNXoyWEbnib9NaYgI71qInuHeA/132', '-bedlamite_', '1', '', '', '2018-11-30', '172.00', '50.00', '50.00', '50.00', '50.00', '1', '', '北京市', '北京市', '东城区', '2018-11-20 18:52:18');
INSERT INTO `ims_user_resume` VALUES ('3', '6', 'https://wx.qlogo.cn/mmopen/vi_32/xxbUPeglgNmwyxBrBhYQgvJVT70bw4v8v1Rwa4nxYPsL0iagFMqGZz8v5aqz0SgJF5m6sVtGBY9YDNsPeCuDqCg/132', 'vincent', '1', '', '', '2018-12-06', '173.00', '77.00', '83.00', '54.00', '63.00', '4', '', '内蒙古自治区', '呼和浩特市', '新城区', '2018-12-06 10:53:44');
INSERT INTO `ims_user_resume` VALUES ('4', '7', 'https://wx.qlogo.cn/mmopen/vi_32/Nz86M1iaDPkVM3HRnMdWDMM6uRUJZvH5UvACDsfO4SaXEw0wiajg5JGqnoSnstmmia75mvV7mCtTLLoaicFiczYAE2Q/132', '黎明清', '1', '', '', '2018-12-06', '170.00', '51.00', '50.00', '50.00', '50.00', '1', '', '北京市', '北京市', '东城区', '2018-12-06 11:02:44');
INSERT INTO `ims_user_resume` VALUES ('5', '8', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKkhNjHTojF2KZXrHMLR0IFs5w9Y0XiaxhgGsh11zfWAiaxyQDxUiaHgkLWtLzYytoIQjHWudgZlwxWA/132', '黎明-米度广告', '1', '', '', '2018-12-06', '150.00', '36.00', '50.00', '50.00', '50.00', '5', '', '广东省', '广州市', '天河区', '2018-12-06 13:52:39');
INSERT INTO `ims_user_resume` VALUES ('6', '11', 'https://wx.qlogo.cn/mmopen/vi_32/cY6h7Hp8VNztfMzWoqM7fniaiaHkRic366hJ92wE4HcodyPEMgpAFRGbQNH3VFaeXUe4yHydTh9xywqXoAzk0fS6A/132', '初点广告.芷夏', '2', '', '', '1993-12-18', '168.00', '52.00', '50.00', '50.00', '50.00', '3', '', '广东省', '广州市', '越秀区', '2018-12-18 09:43:41');

-- ----------------------------
-- Table structure for ims_video_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_video_reply`;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_video_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_voice_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_voice_reply`;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_voice_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wechat_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_attachment`;
CREATE TABLE `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wechat_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wechat_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_news`;
CREATE TABLE `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `displayorder` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wechat_news
-- ----------------------------

-- ----------------------------
-- Table structure for ims_work
-- ----------------------------
DROP TABLE IF EXISTS `ims_work`;
CREATE TABLE `ims_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(20) NOT NULL COMMENT '工作名称',
  `sort_weight` int(11) DEFAULT '0' COMMENT '排序权重，值越大排名越高',
  `state` smallint(1) NOT NULL DEFAULT '0' COMMENT '状态：-1 - 删除；1 - 正常',
  `create_user` int(11) NOT NULL COMMENT '创建用户',
  `last_update_user` int(11) DEFAULT NULL COMMENT '最后更新用户',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='舞种';

-- ----------------------------
-- Records of ims_work
-- ----------------------------
INSERT INTO `ims_work` VALUES ('1', '0', '流行', '100', '1', '1', null, '2018-11-12 16:47:16', null);
INSERT INTO `ims_work` VALUES ('2', '1', '爵士舞', '3', '1', '1', '1', '2018-11-12 16:47:27', '2018-11-16 10:24:49');
INSERT INTO `ims_work` VALUES ('3', '1', 'breaking', '2', '1', '1', '1', '2018-11-12 16:47:34', '2018-11-16 10:24:44');
INSERT INTO `ims_work` VALUES ('4', '1', 'poping', '0', '1', '1', '1', '2018-11-12 16:47:39', '2018-11-12 16:51:06');
INSERT INTO `ims_work` VALUES ('5', '1', 'locking', '50', '1', '1', '1', '2018-11-12 16:48:16', '2018-11-12 16:48:21');
INSERT INTO `ims_work` VALUES ('6', '1', 'hiphop', '49', '1', '1', '1', '2018-11-12 16:48:34', '2018-11-12 16:48:44');
INSERT INTO `ims_work` VALUES ('7', '1', '其他流行舞', '48', '1', '1', '1', '2018-11-12 16:49:18', '2018-11-20 18:37:00');
INSERT INTO `ims_work` VALUES ('8', '0', '其他', '47', '1', '1', '1', '2018-11-12 16:49:32', '2018-12-06 14:37:02');
INSERT INTO `ims_work` VALUES ('9', '8', '民族舞', '46', '1', '1', null, '2018-11-12 16:50:12', null);
INSERT INTO `ims_work` VALUES ('10', '8', '现代舞', '45', '1', '1', '1', '2018-11-12 16:50:26', '2018-11-21 09:54:32');
INSERT INTO `ims_work` VALUES ('11', '8', '其他舞种', '44', '1', '1', '1', '2018-11-12 16:50:40', '2018-11-21 09:58:38');

-- ----------------------------
-- Table structure for ims_wxapp_general_analysis
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_general_analysis`;
CREATE TABLE `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `ref_date` (`ref_date`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxapp_general_analysis
-- ----------------------------
INSERT INTO `ims_wxapp_general_analysis` VALUES ('1', '2', '0', '0', '0', '0', '2', '0', '0', '0', '20190312');
INSERT INTO `ims_wxapp_general_analysis` VALUES ('2', '2', '0', '0', '0', '0', '2', '0', '0', '0', '20190313');
INSERT INTO `ims_wxapp_general_analysis` VALUES ('3', '3', '0', '0', '0', '0', '2', '0', '0', '0', '20190313');
INSERT INTO `ims_wxapp_general_analysis` VALUES ('4', '3', '0', '0', '0', '0', '2', '0', '0', '0', '20190314');

-- ----------------------------
-- Table structure for ims_wxapp_versions
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_versions`;
CREATE TABLE `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `modules` varchar(1000) NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `quickmenu` varchar(2500) NOT NULL,
  `createtime` int(10) NOT NULL,
  `type` int(2) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `appjson` text NOT NULL,
  `default_appjson` text NOT NULL,
  `use_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxapp_versions
-- ----------------------------
INSERT INTO `ims_wxapp_versions` VALUES ('1', '2', '0', '1.0.0', '活动猴', '', '3', '0', 'a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}', '1552444555', '0', '0', '', '', '0');
INSERT INTO `ims_wxapp_versions` VALUES ('2', '3', '0', '1.0.1', '演舞台', 'a:1:{s:11:\"nx_activity\";a:4:{s:4:\"name\";s:11:\"nx_activity\";s:7:\"newicon\";N;s:7:\"version\";s:5:\"1.0.0\";s:12:\"defaultentry\";N;}}', '3', '0', 'a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}', '1552530821', '0', '0', '', '', '0');

-- ----------------------------
-- Table structure for ims_wxcard_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxcard_reply`;
CREATE TABLE `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxcard_reply
-- ----------------------------
