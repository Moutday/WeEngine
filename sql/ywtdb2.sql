/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ywtdb2

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-03 15:04:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_dance
-- ----------------------------
DROP TABLE IF EXISTS `base_dance`;
CREATE TABLE `base_dance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(20) NOT NULL COMMENT '舞种名称',
  `sort_weight` int(11) DEFAULT '0' COMMENT '排序权重，值越大排名越高',
  `state` smallint(1) NOT NULL DEFAULT '0' COMMENT '状态：-1 - 删除；1 - 正常',
  `create_user` int(11) NOT NULL COMMENT '创建用户',
  `last_update_user` int(11) DEFAULT NULL COMMENT '最后更新用户',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='舞种';

-- ----------------------------
-- Records of base_dance
-- ----------------------------
INSERT INTO `base_dance` VALUES ('1', '0', '流行', '100', '1', '1', null, '2018-11-12 16:47:16', null);
INSERT INTO `base_dance` VALUES ('2', '1', '爵士舞', '3', '1', '1', '1', '2018-11-12 16:47:27', '2018-11-16 10:24:49');
INSERT INTO `base_dance` VALUES ('3', '1', 'breaking', '2', '1', '1', '1', '2018-11-12 16:47:34', '2018-11-16 10:24:44');
INSERT INTO `base_dance` VALUES ('4', '1', 'poping', '0', '1', '1', '1', '2018-11-12 16:47:39', '2018-11-12 16:51:06');
INSERT INTO `base_dance` VALUES ('5', '1', 'locking', '50', '1', '1', '1', '2018-11-12 16:48:16', '2018-11-12 16:48:21');
INSERT INTO `base_dance` VALUES ('6', '1', 'hiphop', '49', '1', '1', '1', '2018-11-12 16:48:34', '2018-11-12 16:48:44');
INSERT INTO `base_dance` VALUES ('7', '1', '其他流行舞', '48', '1', '1', '1', '2018-11-12 16:49:18', '2018-11-20 18:37:00');
INSERT INTO `base_dance` VALUES ('8', '0', '其他', '47', '1', '1', '1', '2018-11-12 16:49:32', '2018-12-06 14:37:02');
INSERT INTO `base_dance` VALUES ('9', '8', '民族舞', '46', '1', '1', null, '2018-11-12 16:50:12', null);
INSERT INTO `base_dance` VALUES ('10', '8', '现代舞', '45', '1', '1', '1', '2018-11-12 16:50:26', '2018-11-21 09:54:32');
INSERT INTO `base_dance` VALUES ('11', '8', '其他舞种', '44', '1', '1', '1', '2018-11-12 16:50:40', '2018-11-21 09:58:38');

-- ----------------------------
-- Table structure for hire_activity
-- ----------------------------
DROP TABLE IF EXISTS `hire_activity`;
CREATE TABLE `hire_activity` (
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
  `remark` varchar(1000) DEFAULT NULL COMMENT '要求描述',
  `group_code_url` varchar(256) DEFAULT NULL COMMENT '微信群二维码URL',
  `state` smallint(1) NOT NULL DEFAULT '0' COMMENT '状态：1 - 发布中；2 - 满人；3 - 已结束；4 - 取消活动',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `broken_promises` int(11) DEFAULT '0' COMMENT '失约人数',
  `longitude` double(5,2) DEFAULT '361.00' COMMENT '演出经度',
  `latitude` double(5,2) DEFAULT '361.00' COMMENT '演出纬度',
  `plongitude` double(5,2) DEFAULT '361.00' COMMENT '排练经度',
  `platitude` double(5,2) DEFAULT '361.00' COMMENT '排练纬度',
  `ivrequire` varchar(255) DEFAULT NULL COMMENT '面试要求',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='活动';

-- ----------------------------
-- Records of hire_activity
-- ----------------------------
INSERT INTO `hire_activity` VALUES ('1', '1', '旅游', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '0', '0.00', '300.00', '45.00', '38.00', '吃吃吃次', null, '4', '2018-11-21 11:44:53', '2018-11-21 11:44:53', '0', '113.36', '23.12', '113.36', '23.12', null);
INSERT INTO `hire_activity` VALUES ('2', '1', '江南烟雨', '151', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '1', '0.00', '300.00', '45.00', '50.00', '江南的雨好大呀，淅沥淅沥的下着，让人的心灵感到格外的安心', null, '1', '2018-11-21 14:26:59', '2018-11-30 19:52:43', '0', '113.37', '23.13', '113.36', '23.12', '要求这种东西，不要也罢，太短了，加长点，我有最好的身材吧。');
INSERT INTO `hire_activity` VALUES ('3', '1', '张学友演唱会', '15', '1500.00', '福建省', '福州市', '晋安区', '福建省福州市晋安区东浦路', '福建省', '福州市', '晋安区', '福建省福州市晋安区华林路508号', '0', '0.00', '300.00', '45.00', '0.00', '志愿者', null, '4', '2018-11-22 14:03:45', '2018-11-22 14:03:45', '0', '119.32', '26.11', '119.32', '26.11', null);
INSERT INTO `hire_activity` VALUES ('4', '1', '张学友演唱会', '15', '1500.00', '福建省', '泉州市', '鲤城区', '福建省泉州市鲤城区九一街8-12号', '福建省', '福州市', '晋安区', '福建省福州市晋安区沁河路', '0', '0.00', '300.00', '45.00', '40.00', '嘉宾', null, '4', '2018-11-22 14:16:45', '2018-11-22 14:16:45', '0', '118.59', '24.91', '119.32', '26.11', null);
INSERT INTO `hire_activity` VALUES ('5', '1', '张学友', '15', '1500.00', '福建省', '泉州市', '鲤城区', '福建省泉州市鲤城区九一街8-12号', '福建省', '福州市', '晋安区', '福建省福州市晋安区沁河路', '1', '0.00', '300.00', '45.00', '0.00', '嘉宾看', 'u1/act+5-qr-f17336549b8a4c5d9c5a4b97178c8665.png', '1', '2018-11-22 14:20:39', '2018-11-29 17:11:39', '0', '118.59', '24.91', '119.32', '26.11', null);
INSERT INTO `hire_activity` VALUES ('6', '3', '阿德', '12', '25.00', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中988号', '0', '0.00', '300.00', '45.00', '38.00', '乐民路', null, '1', '2018-11-27 18:46:03', '2018-11-27 18:46:03', '0', '113.32', '23.14', '113.32', '23.14', '');
INSERT INTO `hire_activity` VALUES ('7', '1', '北京鸟巢', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '1', '0.00', '300.00', '45.00', '0.00', '2050年北京超级奥运会', null, '1', '2018-11-28 15:28:01', '2018-11-29 17:13:16', '0', '113.36', '23.12', '113.36', '23.12', '');
INSERT INTO `hire_activity` VALUES ('8', '1', '广州图书馆', '15', '150.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '2', '0.00', '300.00', '45.00', '50.00', '看书', 'u1/m-4f2d97c3d5ba4fb8b78f6987d9780d87.jpg', '1', '2018-11-28 15:30:08', '2018-11-28 15:30:08', '0', '113.36', '23.12', '113.37', '23.13', '');
INSERT INTO `hire_activity` VALUES ('9', '1', '决赛', '15', '1550.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河路228号', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '0', '0.00', '300.00', '45.00', '0.00', '唱跳', null, '1', '2018-11-30 15:27:13', '2018-11-30 15:27:13', '0', '113.33', '23.13', '113.37', '23.13', '');
INSERT INTO `hire_activity` VALUES ('10', '1', '决赛', '15', '1550.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河路228号', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '0', '0.00', '300.00', '45.00', '0.00', '唱跳', null, '1', '2018-11-30 15:27:45', '2018-11-30 19:43:49', '0', '113.33', '23.13', '113.37', '23.13', '');
INSERT INTO `hire_activity` VALUES ('11', '1', '易简年会', '15', '155000.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '', '', '', '', '0', '0.00', '300.00', '45.00', '0.00', '圣诞节party', 'u1/act+11-qr-6a21da2a818543fcae297b1f00551f5a.jpg', '1', '2018-11-30 15:33:59', '2018-11-30 15:33:59', '0', '113.36', '23.12', '-360.00', '-360.00', '');
INSERT INTO `hire_activity` VALUES ('12', '3', '阿里吧', '5533', '555.00', '广东省', '深圳市', '龙华区', '广东省深圳市龙华区龙华隧道', '', '', '', '', '0', '160.00', '0.00', '45.00', '0.00', '提交了', null, '1', '2018-11-30 19:31:33', '2018-11-30 19:39:41', '0', '114.03', '22.61', '-360.00', '-360.00', '');
INSERT INTO `hire_activity` VALUES ('13', '1', '易简读书会', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河直街1-87号', '广东省', '广州市', '天河区', '广东省广州市天河区天河直街1-87号', '0', '160.00', '0.00', '45.00', '0.00', '读书好', 'u1/act+13-qr-906cc1f741544b1a87834b47d2e3dd6a.jpg', '1', '2018-11-30 20:00:23', '2018-11-30 20:00:23', '0', '113.32', '23.14', '113.32', '23.14', '');
INSERT INTO `hire_activity` VALUES ('14', '1', '厦门学校舞蹈表演', '10', '5000.00', '福建省', '厦门市', '思明区', '福建省厦门市思明区安海路44号', '', '', '', '', '0', '160.00', '0.00', '45.00', '0.00', '给学校领导表演', 'u1/act+14-qr-69401490175a4e9b904e309d93713adc.png', '1', '2018-12-03 15:09:34', '2018-12-03 15:09:34', '0', '118.07', '24.44', '-360.00', '-360.00', '');
INSERT INTO `hire_activity` VALUES ('15', '1', '易简读书进500强庆祝会', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '', '', '', '', '0', '160.00', '230.00', '45.00', '150.00', '吃喝玩乐', null, '1', '2018-12-05 10:22:59', '2018-12-05 10:22:59', '0', '113.32', '23.14', '-360.00', '-360.00', '');
INSERT INTO `hire_activity` VALUES ('16', '6', '此时此刻', '5', '1100.00', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '1', '160.00', '0.00', '45.00', '0.00', 'gjj', 'u6/act+16-qr-01bc95bff1d84dfa970e9d35b83650f9.jpg', '1', '2018-12-06 10:58:38', '2018-12-06 10:58:38', '0', '113.32', '23.14', '113.32', '23.14', '');
INSERT INTO `hire_activity` VALUES ('17', '7', '模特吉他手', '10', '1000.00', '广东省', '广州市', '天河区', '广东省广州市天河区棠东毓南路1号', '广东省', '广州市', '天河区', '广东省广州市天河区棠东东路4号', '2', '160.00', '163.00', '45.00', '47.00', '你在家门口就业绩的提升与你有能力度左右开弓……这种族维生素及时雨及其他相关维生素都匀也不能勉强可以不必备胎心有些紧张？这些天后来个人全能够意思后才说出汗', 'u7/act+17-qr-b5ac6883f09b472e83f5ee021d0e1c7e.jpg', '1', '2018-12-06 13:49:07', '2018-12-18 11:44:35', '0', '113.39', '23.13', '113.39', '23.13', '');
INSERT INTO `hire_activity` VALUES ('18', '6', '舞蹈花开盛世', '10', '100.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河路208号', '广东省', '广州市', '天河区', '广东省广州市天河区天河路208号', '1', '160.00', '0.00', '45.00', '0.00', '需要舞蹈人员', null, '1', '2018-12-18 11:52:37', '2018-12-18 11:52:37', '0', '113.32', '23.13', '113.32', '23.13', '');

-- ----------------------------
-- Table structure for hire_activity_copy
-- ----------------------------
DROP TABLE IF EXISTS `hire_activity_copy`;
CREATE TABLE `hire_activity_copy` (
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
  `remark` varchar(1000) DEFAULT NULL COMMENT '要求描述',
  `group_code_url` varchar(256) DEFAULT NULL COMMENT '微信群二维码URL',
  `state` smallint(1) NOT NULL DEFAULT '0' COMMENT '状态：1 - 发布中；2 - 满人；3 - 已结束；4 - 取消活动',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `broken_promises` int(11) DEFAULT '0' COMMENT '失约人数',
  `longitude` double(5,2) DEFAULT '361.00' COMMENT '演出经度',
  `latitude` double(5,2) DEFAULT '361.00' COMMENT '演出纬度',
  `plongitude` double(5,2) DEFAULT '361.00' COMMENT '排练经度',
  `platitude` double(5,2) DEFAULT '361.00' COMMENT '排练纬度',
  `ivrequire` varchar(255) DEFAULT NULL COMMENT '面试要求',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='活动';

-- ----------------------------
-- Records of hire_activity_copy
-- ----------------------------
INSERT INTO `hire_activity_copy` VALUES ('1', '1', '旅游', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '0', '0.00', '300.00', '45.00', '38.00', '吃吃吃次', null, '4', '2018-11-21 11:44:53', '2018-11-21 11:44:53', '0', '113.36', '23.12', '113.36', '23.12', null);
INSERT INTO `hire_activity_copy` VALUES ('2', '1', '江南烟雨', '151', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '1', '0.00', '300.00', '45.00', '50.00', '江南的雨好大呀，淅沥淅沥的下着，让人的心灵感到格外的安心', null, '1', '2018-11-21 14:26:59', '2018-11-30 19:52:43', '0', '113.37', '23.13', '113.36', '23.12', '要求这种东西，不要也罢，太短了，加长点，我有最好的身材吧。');
INSERT INTO `hire_activity_copy` VALUES ('3', '1', '张学友演唱会', '15', '1500.00', '福建省', '福州市', '晋安区', '福建省福州市晋安区东浦路', '福建省', '福州市', '晋安区', '福建省福州市晋安区华林路508号', '0', '0.00', '300.00', '45.00', '0.00', '志愿者', null, '4', '2018-11-22 14:03:45', '2018-11-22 14:03:45', '0', '119.32', '26.11', '119.32', '26.11', null);
INSERT INTO `hire_activity_copy` VALUES ('4', '1', '张学友演唱会', '15', '1500.00', '福建省', '泉州市', '鲤城区', '福建省泉州市鲤城区九一街8-12号', '福建省', '福州市', '晋安区', '福建省福州市晋安区沁河路', '0', '0.00', '300.00', '45.00', '40.00', '嘉宾', null, '4', '2018-11-22 14:16:45', '2018-11-22 14:16:45', '0', '118.59', '24.91', '119.32', '26.11', null);
INSERT INTO `hire_activity_copy` VALUES ('5', '1', '张学友', '15', '1500.00', '福建省', '泉州市', '鲤城区', '福建省泉州市鲤城区九一街8-12号', '福建省', '福州市', '晋安区', '福建省福州市晋安区沁河路', '1', '0.00', '300.00', '45.00', '0.00', '嘉宾看', 'u1/act+5-qr-f17336549b8a4c5d9c5a4b97178c8665.png', '1', '2018-11-22 14:20:39', '2018-11-29 17:11:39', '0', '118.59', '24.91', '119.32', '26.11', null);
INSERT INTO `hire_activity_copy` VALUES ('6', '3', '阿德', '12', '25.00', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中988号', '0', '0.00', '300.00', '45.00', '38.00', '乐民路', null, '1', '2018-11-27 18:46:03', '2018-11-27 18:46:03', '0', '113.32', '23.14', '113.32', '23.14', '');
INSERT INTO `hire_activity_copy` VALUES ('7', '1', '北京鸟巢', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '1', '0.00', '300.00', '45.00', '0.00', '2050年北京超级奥运会', null, '1', '2018-11-28 15:28:01', '2018-11-29 17:13:16', '0', '113.36', '23.12', '113.36', '23.12', '');
INSERT INTO `hire_activity_copy` VALUES ('8', '1', '广州图书馆', '15', '150.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '2', '0.00', '300.00', '45.00', '50.00', '看书', 'u1/m-4f2d97c3d5ba4fb8b78f6987d9780d87.jpg', '1', '2018-11-28 15:30:08', '2018-11-28 15:30:08', '0', '113.36', '23.12', '113.37', '23.13', '');
INSERT INTO `hire_activity_copy` VALUES ('9', '1', '决赛', '15', '1550.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河路228号', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '0', '0.00', '300.00', '45.00', '0.00', '唱跳', null, '1', '2018-11-30 15:27:13', '2018-11-30 15:27:13', '0', '113.33', '23.13', '113.37', '23.13', '');
INSERT INTO `hire_activity_copy` VALUES ('10', '1', '决赛', '15', '1550.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河路228号', '广东省', '广州市', '天河区', '广东省广州市天河区中山大道270号', '0', '0.00', '300.00', '45.00', '0.00', '唱跳', null, '1', '2018-11-30 15:27:45', '2018-11-30 19:43:49', '0', '113.33', '23.13', '113.37', '23.13', '');
INSERT INTO `hire_activity_copy` VALUES ('11', '1', '易简年会', '15', '155000.00', '广东省', '广州市', '天河区', '广东省广州市天河区天府路1号', '', '', '', '', '0', '0.00', '300.00', '45.00', '0.00', '圣诞节party', 'u1/act+11-qr-6a21da2a818543fcae297b1f00551f5a.jpg', '1', '2018-11-30 15:33:59', '2018-11-30 15:33:59', '0', '113.36', '23.12', '-360.00', '-360.00', '');
INSERT INTO `hire_activity_copy` VALUES ('12', '3', '阿里吧', '5533', '555.00', '广东省', '深圳市', '龙华区', '广东省深圳市龙华区龙华隧道', '', '', '', '', '0', '160.00', '0.00', '45.00', '0.00', '提交了', null, '1', '2018-11-30 19:31:33', '2018-11-30 19:39:41', '0', '114.03', '22.61', '-360.00', '-360.00', '');
INSERT INTO `hire_activity_copy` VALUES ('13', '1', '易简读书会', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河直街1-87号', '广东省', '广州市', '天河区', '广东省广州市天河区天河直街1-87号', '0', '160.00', '0.00', '45.00', '0.00', '读书好', 'u1/act+13-qr-906cc1f741544b1a87834b47d2e3dd6a.jpg', '1', '2018-11-30 20:00:23', '2018-11-30 20:00:23', '0', '113.32', '23.14', '113.32', '23.14', '');
INSERT INTO `hire_activity_copy` VALUES ('14', '1', '厦门学校舞蹈表演', '10', '5000.00', '福建省', '厦门市', '思明区', '福建省厦门市思明区安海路44号', '', '', '', '', '0', '160.00', '0.00', '45.00', '0.00', '给学校领导表演', 'u1/act+14-qr-69401490175a4e9b904e309d93713adc.png', '1', '2018-12-03 15:09:34', '2018-12-03 15:09:34', '0', '118.07', '24.44', '-360.00', '-360.00', '');
INSERT INTO `hire_activity_copy` VALUES ('15', '1', '易简读书进500强庆祝会', '15', '1500.00', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '', '', '', '', '0', '160.00', '230.00', '45.00', '150.00', '吃喝玩乐', null, '1', '2018-12-05 10:22:59', '2018-12-05 10:22:59', '0', '113.32', '23.14', '-360.00', '-360.00', '');
INSERT INTO `hire_activity_copy` VALUES ('16', '6', '此时此刻', '5', '1100.00', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '广东省', '广州市', '天河区', '广东省广州市天河区广州大道中900号', '1', '160.00', '0.00', '45.00', '0.00', 'gjj', 'u6/act+16-qr-01bc95bff1d84dfa970e9d35b83650f9.jpg', '1', '2018-12-06 10:58:38', '2018-12-06 10:58:38', '0', '113.32', '23.14', '113.32', '23.14', '');
INSERT INTO `hire_activity_copy` VALUES ('17', '7', '模特吉他手', '10', '1000.00', '广东省', '广州市', '天河区', '广东省广州市天河区棠东毓南路1号', '广东省', '广州市', '天河区', '广东省广州市天河区棠东东路4号', '2', '160.00', '163.00', '45.00', '47.00', '你在家门口就业绩的提升与你有能力度左右开弓……这种族维生素及时雨及其他相关维生素都匀也不能勉强可以不必备胎心有些紧张？这些天后来个人全能够意思后才说出汗', 'u7/act+17-qr-b5ac6883f09b472e83f5ee021d0e1c7e.jpg', '1', '2018-12-06 13:49:07', '2018-12-18 11:44:35', '0', '113.39', '23.13', '113.39', '23.13', '');
INSERT INTO `hire_activity_copy` VALUES ('18', '6', '舞蹈花开盛世', '10', '100.00', '广东省', '广州市', '天河区', '广东省广州市天河区天河路208号', '广东省', '广州市', '天河区', '广东省广州市天河区天河路208号', '1', '160.00', '0.00', '45.00', '0.00', '需要舞蹈人员', null, '1', '2018-12-18 11:52:37', '2018-12-18 11:52:37', '0', '113.32', '23.13', '113.32', '23.13', '');

-- ----------------------------
-- Table structure for hire_activity_dance_rel
-- ----------------------------
DROP TABLE IF EXISTS `hire_activity_dance_rel`;
CREATE TABLE `hire_activity_dance_rel` (
  `activity_id` int(11) NOT NULL COMMENT '活动ID',
  `dance_id` int(11) NOT NULL COMMENT '舞种ID',
  PRIMARY KEY (`activity_id`,`dance_id`),
  UNIQUE KEY `activity_id` (`activity_id`,`dance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='活动舞种';

-- ----------------------------
-- Records of hire_activity_dance_rel
-- ----------------------------
INSERT INTO `hire_activity_dance_rel` VALUES ('1', '4');
INSERT INTO `hire_activity_dance_rel` VALUES ('1', '6');
INSERT INTO `hire_activity_dance_rel` VALUES ('2', '4');
INSERT INTO `hire_activity_dance_rel` VALUES ('2', '6');
INSERT INTO `hire_activity_dance_rel` VALUES ('2', '7');
INSERT INTO `hire_activity_dance_rel` VALUES ('3', '4');
INSERT INTO `hire_activity_dance_rel` VALUES ('3', '7');
INSERT INTO `hire_activity_dance_rel` VALUES ('4', '7');
INSERT INTO `hire_activity_dance_rel` VALUES ('4', '10');
INSERT INTO `hire_activity_dance_rel` VALUES ('5', '4');
INSERT INTO `hire_activity_dance_rel` VALUES ('5', '6');
INSERT INTO `hire_activity_dance_rel` VALUES ('5', '7');
INSERT INTO `hire_activity_dance_rel` VALUES ('6', '2');
INSERT INTO `hire_activity_dance_rel` VALUES ('7', '4');
INSERT INTO `hire_activity_dance_rel` VALUES ('7', '6');
INSERT INTO `hire_activity_dance_rel` VALUES ('7', '7');
INSERT INTO `hire_activity_dance_rel` VALUES ('8', '2');
INSERT INTO `hire_activity_dance_rel` VALUES ('8', '7');
INSERT INTO `hire_activity_dance_rel` VALUES ('9', '2');
INSERT INTO `hire_activity_dance_rel` VALUES ('9', '3');
INSERT INTO `hire_activity_dance_rel` VALUES ('9', '4');
INSERT INTO `hire_activity_dance_rel` VALUES ('9', '5');
INSERT INTO `hire_activity_dance_rel` VALUES ('9', '6');
INSERT INTO `hire_activity_dance_rel` VALUES ('9', '7');
INSERT INTO `hire_activity_dance_rel` VALUES ('9', '9');
INSERT INTO `hire_activity_dance_rel` VALUES ('9', '10');
INSERT INTO `hire_activity_dance_rel` VALUES ('9', '11');
INSERT INTO `hire_activity_dance_rel` VALUES ('10', '4');
INSERT INTO `hire_activity_dance_rel` VALUES ('10', '6');
INSERT INTO `hire_activity_dance_rel` VALUES ('10', '7');
INSERT INTO `hire_activity_dance_rel` VALUES ('11', '6');
INSERT INTO `hire_activity_dance_rel` VALUES ('11', '7');
INSERT INTO `hire_activity_dance_rel` VALUES ('12', '7');
INSERT INTO `hire_activity_dance_rel` VALUES ('12', '10');
INSERT INTO `hire_activity_dance_rel` VALUES ('13', '4');
INSERT INTO `hire_activity_dance_rel` VALUES ('13', '6');
INSERT INTO `hire_activity_dance_rel` VALUES ('13', '10');
INSERT INTO `hire_activity_dance_rel` VALUES ('14', '3');
INSERT INTO `hire_activity_dance_rel` VALUES ('14', '4');
INSERT INTO `hire_activity_dance_rel` VALUES ('14', '7');
INSERT INTO `hire_activity_dance_rel` VALUES ('14', '10');
INSERT INTO `hire_activity_dance_rel` VALUES ('15', '5');
INSERT INTO `hire_activity_dance_rel` VALUES ('15', '9');
INSERT INTO `hire_activity_dance_rel` VALUES ('16', '6');
INSERT INTO `hire_activity_dance_rel` VALUES ('17', '9');
INSERT INTO `hire_activity_dance_rel` VALUES ('18', '2');
INSERT INTO `hire_activity_dance_rel` VALUES ('18', '4');
INSERT INTO `hire_activity_dance_rel` VALUES ('18', '5');

-- ----------------------------
-- Table structure for hire_activity_date_rel
-- ----------------------------
DROP TABLE IF EXISTS `hire_activity_date_rel`;
CREATE TABLE `hire_activity_date_rel` (
  `activity_id` int(11) NOT NULL COMMENT '活动ID',
  `date` date NOT NULL COMMENT '日期',
  `type` smallint(1) NOT NULL COMMENT '类型：1 - 演出 ；2 - 排练；',
  PRIMARY KEY (`activity_id`,`date`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='活动日期';

-- ----------------------------
-- Records of hire_activity_date_rel
-- ----------------------------
INSERT INTO `hire_activity_date_rel` VALUES ('1', '2018-11-01', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('1', '2018-11-02', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('1', '2018-11-03', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('1', '2018-11-04', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('2', '2018-11-02', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('2', '2018-11-02', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('2', '2018-11-03', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('2', '2018-11-03', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('2', '2018-11-17', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('3', '2018-11-23', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('3', '2018-11-24', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('4', '2018-11-24', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('4', '2018-11-29', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('4', '2018-11-30', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('5', '2018-11-23', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('5', '2018-11-24', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('6', '2018-11-01', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('6', '2018-11-09', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('6', '2018-11-15', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('7', '2018-11-29', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('7', '2018-11-29', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('7', '2018-11-30', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('7', '2018-11-30', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('8', '2018-11-29', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('8', '2018-11-30', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('8', '2018-12-08', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('8', '2018-12-09', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('9', '2018-11-29', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('9', '2018-11-30', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('9', '2018-12-01', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('9', '2018-12-02', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('10', '2018-12-01', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('10', '2018-12-02', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('10', '2018-12-08', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('10', '2018-12-09', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('11', '2018-12-01', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('11', '2018-12-02', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('12', '2018-11-07', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('12', '2018-11-30', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('12', '2018-12-13', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('12', '2018-12-14', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('13', '2018-12-13', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('13', '2018-12-14', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('13', '2018-12-15', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('13', '2018-12-16', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('14', '2018-12-29', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('14', '2018-12-30', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('15', '2018-12-05', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('15', '2018-12-06', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('16', '2018-12-07', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('16', '2018-12-14', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('16', '2018-12-22', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('17', '2018-12-06', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('17', '2018-12-06', '2');
INSERT INTO `hire_activity_date_rel` VALUES ('17', '2018-12-07', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('18', '2018-12-18', '1');
INSERT INTO `hire_activity_date_rel` VALUES ('18', '2018-12-18', '2');

-- ----------------------------
-- Table structure for hire_message
-- ----------------------------
DROP TABLE IF EXISTS `hire_message`;
CREATE TABLE `hire_message` (
  `id` int(11) NOT NULL,
  `send_id` int(11) DEFAULT NULL COMMENT '发送用户ID',
  `user_id` int(11) NOT NULL COMMENT '消息接收用户ID',
  `activity_id` int(11) NOT NULL COMMENT '活动ID',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `state` smallint(1) NOT NULL DEFAULT '0' COMMENT '状态：0 - 未读；1 - 已读；',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息';

-- ----------------------------
-- Records of hire_message
-- ----------------------------

-- ----------------------------
-- Table structure for resume_dance_rel
-- ----------------------------
DROP TABLE IF EXISTS `resume_dance_rel`;
CREATE TABLE `resume_dance_rel` (
  `resume_id` int(11) NOT NULL COMMENT '简历ID',
  `dance_id` int(11) NOT NULL COMMENT '舞种ID',
  PRIMARY KEY (`resume_id`,`dance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户简历舞种';

-- ----------------------------
-- Records of resume_dance_rel
-- ----------------------------
INSERT INTO `resume_dance_rel` VALUES ('1', '2');
INSERT INTO `resume_dance_rel` VALUES ('1', '3');
INSERT INTO `resume_dance_rel` VALUES ('1', '4');
INSERT INTO `resume_dance_rel` VALUES ('1', '5');
INSERT INTO `resume_dance_rel` VALUES ('1', '6');
INSERT INTO `resume_dance_rel` VALUES ('1', '7');
INSERT INTO `resume_dance_rel` VALUES ('1', '9');
INSERT INTO `resume_dance_rel` VALUES ('1', '10');
INSERT INTO `resume_dance_rel` VALUES ('1', '11');
INSERT INTO `resume_dance_rel` VALUES ('2', '2');
INSERT INTO `resume_dance_rel` VALUES ('2', '3');
INSERT INTO `resume_dance_rel` VALUES ('2', '4');
INSERT INTO `resume_dance_rel` VALUES ('2', '5');
INSERT INTO `resume_dance_rel` VALUES ('2', '6');
INSERT INTO `resume_dance_rel` VALUES ('2', '7');
INSERT INTO `resume_dance_rel` VALUES ('2', '9');
INSERT INTO `resume_dance_rel` VALUES ('2', '10');
INSERT INTO `resume_dance_rel` VALUES ('2', '11');
INSERT INTO `resume_dance_rel` VALUES ('3', '2');
INSERT INTO `resume_dance_rel` VALUES ('3', '3');
INSERT INTO `resume_dance_rel` VALUES ('3', '4');
INSERT INTO `resume_dance_rel` VALUES ('3', '5');
INSERT INTO `resume_dance_rel` VALUES ('3', '6');
INSERT INTO `resume_dance_rel` VALUES ('3', '7');
INSERT INTO `resume_dance_rel` VALUES ('3', '9');
INSERT INTO `resume_dance_rel` VALUES ('3', '10');
INSERT INTO `resume_dance_rel` VALUES ('3', '11');
INSERT INTO `resume_dance_rel` VALUES ('4', '2');
INSERT INTO `resume_dance_rel` VALUES ('4', '9');
INSERT INTO `resume_dance_rel` VALUES ('4', '10');
INSERT INTO `resume_dance_rel` VALUES ('4', '11');
INSERT INTO `resume_dance_rel` VALUES ('5', '4');
INSERT INTO `resume_dance_rel` VALUES ('5', '5');
INSERT INTO `resume_dance_rel` VALUES ('5', '6');
INSERT INTO `resume_dance_rel` VALUES ('5', '10');
INSERT INTO `resume_dance_rel` VALUES ('6', '4');
INSERT INTO `resume_dance_rel` VALUES ('6', '5');
INSERT INTO `resume_dance_rel` VALUES ('6', '6');
INSERT INTO `resume_dance_rel` VALUES ('6', '10');
INSERT INTO `resume_dance_rel` VALUES ('7', '6');
INSERT INTO `resume_dance_rel` VALUES ('8', '5');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级ID',
  `name` varchar(50) DEFAULT NULL COMMENT '权限名',
  `type` smallint(6) DEFAULT NULL COMMENT '类型 0、菜单 1、功能',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `url` varchar(100) DEFAULT NULL COMMENT '地址',
  `perm_code` varchar(50) DEFAULT NULL COMMENT '权限编码',
  `icon` varchar(30) DEFAULT NULL COMMENT '图标',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `status` smallint(6) DEFAULT NULL COMMENT '状态 0、禁用 1、正常',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='permission 权限表';

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '0', '系统管理', '0', '100', '', '', 'fa fa-cog', '系统管理员目录', '1', '2017-09-12 16:48:53', '2018-11-14 18:32:35');
INSERT INTO `sys_permission` VALUES ('2', '1', '用户管理', '1', '110', '/admin/user/list', 'user:show', 'fa fa-user', '用户管理', '1', '2017-09-12 16:52:28', '2017-09-21 16:57:31');
INSERT INTO `sys_permission` VALUES ('3', '1', '角色管理', '1', '120', '/admin/role/list', 'role:show', 'fa fa-circle', '角色管理', '1', '2017-09-12 16:52:34', '2018-11-09 10:20:21');
INSERT INTO `sys_permission` VALUES ('4', '1', '权限管理', '1', '130', '/admin/permission/list', 'permission:show', 'fa fa-shirtsinbulk', '权限管理', '1', '2017-09-12 16:52:40', '2017-09-21 16:58:40');
INSERT INTO `sys_permission` VALUES ('17', '2', '添加用户', '2', '110', '-', 'user:add', '-', '-', '1', '2017-10-12 00:58:21', '2018-11-09 12:14:38');
INSERT INTO `sys_permission` VALUES ('18', '2', '修改用户', '2', '110', '-', 'user:update', '-', '-', '1', '2017-10-12 00:58:21', null);
INSERT INTO `sys_permission` VALUES ('19', '2', '分配角色', '2', '115', '-', 'role:modifyUserRole', '-', '-', '1', '2017-10-12 00:58:21', '2018-11-13 16:03:48');
INSERT INTO `sys_permission` VALUES ('21', '2', '删除用户', '2', '114', '-', 'user:delete', '-', '-', '1', '2017-10-12 00:58:21', '2018-11-13 16:03:55');
INSERT INTO `sys_permission` VALUES ('23', '4', '添加权限', '2', '130', '-', 'permission:add', '-', '-', '1', '2018-11-09 15:00:22', '2018-11-09 15:09:39');
INSERT INTO `sys_permission` VALUES ('24', '4', '修改权限', '2', '130', '-', 'permission:update', '-', '-', '1', '2018-11-09 15:01:33', null);
INSERT INTO `sys_permission` VALUES ('25', '4', '删除权限', '2', '130', '-', 'permission:delete', '-', '-', '1', '2018-11-09 15:02:55', null);
INSERT INTO `sys_permission` VALUES ('26', '3', '添加角色', '2', '120', '-', 'role:add', '-', '-', '1', '2018-11-09 15:08:58', null);
INSERT INTO `sys_permission` VALUES ('27', '3', '修改角色', '2', '120', '-', 'role:update', '-', '-', '1', '2018-11-09 15:09:27', null);
INSERT INTO `sys_permission` VALUES ('28', '3', '删除角色', '2', '120', '-', 'role:delete', '-', '-', '1', '2018-11-09 15:10:32', '2018-11-09 15:10:42');
INSERT INTO `sys_permission` VALUES ('29', '3', '分配权限', '2', '121', '-', 'permission:modifyRolePermission', '-', '-', '1', '2018-11-09 15:15:15', null);
INSERT INTO `sys_permission` VALUES ('30', '0', '基础设置', '0', '200', '', '', 'fa fa-cog', '', '1', '2018-11-09 17:40:14', '2018-11-14 18:32:39');
INSERT INTO `sys_permission` VALUES ('31', '30', '舞种管理', '1', '200', '/base/dance/list', 'dance:show', '-', '-', '1', '2018-11-09 17:41:58', '2018-11-12 15:34:22');
INSERT INTO `sys_permission` VALUES ('32', '31', '添加舞种', '2', '200', '-', 'dance:add', '-', '-', '1', '2018-11-12 10:58:07', null);
INSERT INTO `sys_permission` VALUES ('33', '31', '修改舞种', '2', '200', '-', 'dance:update', '-', '-', '1', '2018-11-12 10:58:24', null);
INSERT INTO `sys_permission` VALUES ('34', '31', '删除舞种', '2', '200', '-', 'dance:delete', '-', '-', '1', '2018-11-12 10:58:50', null);
INSERT INTO `sys_permission` VALUES ('35', '2', '修改密码', '2', '113', '', 'user:updatePassword', '', '', '1', '2018-11-13 16:04:27', null);
INSERT INTO `sys_permission` VALUES ('37', '0', '用户管理', '0', '300', '', '', 'fa fa-user', '', '1', '2018-11-14 10:17:35', '2018-11-14 11:16:56');
INSERT INTO `sys_permission` VALUES ('38', '37', '用户信息', '1', '300', '/user/info/list', 'user:info:show', '', '', '1', '2018-11-14 10:19:38', '2018-11-14 18:33:08');
INSERT INTO `sys_permission` VALUES ('39', '38', '查看简历', '2', '300', '', 'user:resume:view', '', '', '1', '2018-11-15 15:20:24', '2018-11-15 15:20:24');
INSERT INTO `sys_permission` VALUES ('40', '0', '活动管理', '0', '400', '', '', 'fa fa-users', '', '1', '2018-11-15 17:40:00', '2018-11-16 11:46:00');
INSERT INTO `sys_permission` VALUES ('41', '40', '活动信息', '1', '400', '/hire/activity/list', 'hire:activity:show', '', '', '1', '2018-11-15 17:40:35', '2018-11-15 18:26:27');
INSERT INTO `sys_permission` VALUES ('42', '38', '查看模卡', '2', '300', '', 'user:mocard:view', '', '', '1', '2018-11-19 11:05:36', '2018-11-19 11:55:51');
INSERT INTO `sys_permission` VALUES ('43', '38', '查看作品', '2', '300', '', 'user:production:view', '', '', '1', '2018-11-20 10:06:20', '2018-11-20 17:02:52');
INSERT INTO `sys_permission` VALUES ('44', '41', '查看活动详情', '2', '400', '', 'hire:activity:detail', '', '', '1', '2018-11-20 15:07:49', '2018-11-20 17:02:54');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) DEFAULT NULL COMMENT '角色名',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `description` varchar(60) DEFAULT NULL COMMENT '描述',
  `status` smallint(5) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='role 角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '0', '超级管理员', '1', '2017-09-12 17:04:33', '2018-11-21 11:48:29');
INSERT INTO `sys_role` VALUES ('13', '管理员', '0', '', '1', '2018-11-21 11:34:07', '2018-11-21 11:48:34');

-- ----------------------------
-- Table structure for sys_role_permission_rel
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission_rel`;
CREATE TABLE `sys_role_permission_rel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rid` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `pid` bigint(20) unsigned DEFAULT NULL COMMENT '权限ID',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=605 DEFAULT CHARSET=utf8 COMMENT='role_permission 角色权限表';

-- ----------------------------
-- Records of sys_role_permission_rel
-- ----------------------------
INSERT INTO `sys_role_permission_rel` VALUES ('563', '1', '1', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('564', '1', '2', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('565', '1', '17', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('566', '1', '18', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('567', '1', '35', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('568', '1', '21', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('569', '1', '19', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('570', '1', '3', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('571', '1', '26', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('572', '1', '27', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('573', '1', '28', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('574', '1', '29', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('575', '1', '4', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('576', '1', '23', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('577', '1', '24', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('578', '1', '25', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('579', '1', '30', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('580', '1', '31', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('581', '1', '32', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('582', '1', '33', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('583', '1', '34', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('584', '1', '37', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('585', '1', '38', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('586', '1', '39', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('587', '1', '42', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('588', '1', '43', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('589', '1', '40', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('590', '1', '41', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('591', '1', '44', '2018-11-20 17:09:57', null);
INSERT INTO `sys_role_permission_rel` VALUES ('592', '13', '30', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('593', '13', '31', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('594', '13', '32', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('595', '13', '33', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('596', '13', '34', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('597', '13', '37', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('598', '13', '38', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('599', '13', '39', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('600', '13', '42', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('601', '13', '43', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('602', '13', '40', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('603', '13', '41', '2018-11-21 11:34:30', null);
INSERT INTO `sys_role_permission_rel` VALUES ('604', '13', '44', '2018-11-21 11:34:30', null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) DEFAULT NULL COMMENT '盐',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` smallint(6) DEFAULT NULL COMMENT '0、禁用 1、正常',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='user 用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '超级管理员', '7cd6ffe819060f9b1aacad415dbe25ce', '1541728314150', '', '1', '2017-09-13 09:40:18', '2018-12-05 15:41:20');
INSERT INTO `sys_user` VALUES ('123', 'admin2', '管理员', '72ca6fbb961399fec241bd3a8fb2aee4', '1542771697420', '', '1', '2018-11-12 16:41:29', '2018-11-21 11:41:37');

-- ----------------------------
-- Table structure for sys_user_role_rel
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role_rel`;
CREATE TABLE `sys_user_role_rel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` bigint(20) unsigned DEFAULT NULL COMMENT '用户ID',
  `rid` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='user_role 用户角色关联表';

-- ----------------------------
-- Records of sys_user_role_rel
-- ----------------------------
INSERT INTO `sys_user_role_rel` VALUES ('20', '1', '1', '2017-09-21 17:07:07', null);
INSERT INTO `sys_user_role_rel` VALUES ('29', '123', '13', '2018-11-21 11:41:15', null);

-- ----------------------------
-- Table structure for t_properties
-- ----------------------------
DROP TABLE IF EXISTS `t_properties`;
CREATE TABLE `t_properties` (
  `key_` varchar(255) NOT NULL,
  `value_` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`key_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_properties
-- ----------------------------
INSERT INTO `t_properties` VALUES ('api.aop.regexp', '^com\\\\.ywt\\\\.hotload\\\\.auxiliary\\\\.aop\\\\..+Aspect$', 'aop切面路径正则');
INSERT INTO `t_properties` VALUES ('api.job.regexp', '^com\\\\.ywt\\\\.hotload\\\\.auxiliary\\\\.job\\\\.J.+$', '任务路径正则');
INSERT INTO `t_properties` VALUES ('api.returnDebug', 'true', '是否有返回debug日志给客户端');
INSERT INTO `t_properties` VALUES ('api.register.servelts', '1', '是否注册动态接口');
INSERT INTO `t_properties` VALUES ('api.inter.auth', '3', '接口访问授权:第一位(1)interAction权限,第二位(2):syncAction权限');
INSERT INTO `t_properties` VALUES ('api.admin.manager.ips', '127.0.0.1;14.18.236.79;172.16.90.95;192.168.1.232;183.63.87.235;183.6.120.251;113.111.54.117;183.3.138.132;39.108.70.175;192.168.80.108', 'admin接口访问的ip白名单');
INSERT INTO `t_properties` VALUES ('api.project.id', '8', '接口项目平台id(固定)');
INSERT INTO `t_properties` VALUES ('third.cache.global.prefix', 'YWT2_API_', '第三方缓存key前缀');
INSERT INTO `t_properties` VALUES ('api.resources.upload', '/home/www/ywt-api/resources/v2/', null);
INSERT INTO `t_properties` VALUES ('api.resources.download', 'http://soure.chudianad.com/ywt/v2/', null);
INSERT INTO `t_properties` VALUES ('zk.server.connectstr', '172.18.67.180:2181,172.18.67.182:2181', 'zookeeper集群的路径');
INSERT INTO `t_properties` VALUES ('zk.session.timeout', '10000', '会话超时时间ms');
INSERT INTO `t_properties` VALUES ('zk.connect.timeout', '5000', '连接超时时间ms');
INSERT INTO `t_properties` VALUES ('zk.namespace', 'api-myj-jk', 'zk命名空间');
INSERT INTO `t_properties` VALUES ('test.session', '1', '测试session');
INSERT INTO `t_properties` VALUES ('ip.data.path', '/home/www/ywt-api/resources/ipdata/17monipdb.dat', null);

-- ----------------------------
-- Table structure for t_wx_app
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_app`;
CREATE TABLE `t_wx_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(50) DEFAULT NULL COMMENT '小程序名称',
  `gh_id` varchar(50) DEFAULT NULL,
  `appId` varchar(30) NOT NULL COMMENT 'appId',
  `secret` varchar(50) NOT NULL COMMENT '密钥',
  `mchId` varchar(30) DEFAULT NULL COMMENT '商户号',
  `msecret` varchar(50) DEFAULT NULL COMMENT '商户密钥',
  `paySyncUrl` varchar(255) DEFAULT NULL COMMENT '支付同步路径',
  `adAppId` varchar(30) DEFAULT NULL COMMENT '广告appId',
  `isDel` varchar(2) DEFAULT '0' COMMENT '1:删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `appId` (`appId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_wx_app
-- ----------------------------
INSERT INTO `t_wx_app` VALUES ('5', '演舞台', null, 'wx2e8ecb29fac93105', 'e38cbfefed3515393a19b0bae1f546cd', null, null, null, null, '0');
INSERT INTO `t_wx_app` VALUES ('6', '演舞台2', null, 'wxa5a1cce830046e02 ', '046b7fef5e1a6ae799cf95d539f20c06', null, null, null, null, '0');

-- ----------------------------
-- Table structure for user_activity_rel
-- ----------------------------
DROP TABLE IF EXISTS `user_activity_rel`;
CREATE TABLE `user_activity_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `resume_id` int(11) DEFAULT NULL COMMENT '简历ID',
  `real_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `activity_id` int(11) NOT NULL COMMENT '活动ID',
  `activity_name` varchar(100) DEFAULT NULL COMMENT '活动名称',
  `state` smallint(1) NOT NULL COMMENT '状态：1 - 已申请；2 - 未通过；3 - 待确认(甲方已通过等待乙方确认)；4 - 已加入',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COMMENT='用户活动';

-- ----------------------------
-- Records of user_activity_rel
-- ----------------------------
INSERT INTO `user_activity_rel` VALUES ('1', '1', '1', '陈小渣?', '2', '江南烟雨', '2', '2018-11-27 18:00:33');
INSERT INTO `user_activity_rel` VALUES ('2', '1', '1', '陈小渣?', '8', '广州图书馆', '2', '2018-11-28 17:33:37');
INSERT INTO `user_activity_rel` VALUES ('3', '3', '2', '-bedlamite_', '5', '张学友', '1', '2018-11-28 22:44:51');
INSERT INTO `user_activity_rel` VALUES ('4', '3', '2', '-bedlamite_', '8', '广州图书馆', '1', '2018-11-28 22:45:25');
INSERT INTO `user_activity_rel` VALUES ('5', '1', '1', '陈小渣?', '5', '张学友', '4', '2018-11-30 16:10:37');
INSERT INTO `user_activity_rel` VALUES ('6', '3', '2', '-bedlamite_', '11', '易简年会', '3', '2018-11-30 18:30:06');
INSERT INTO `user_activity_rel` VALUES ('7', '1', '1', '陈小渣?', '6', '阿德', '1', '2018-11-30 19:10:08');
INSERT INTO `user_activity_rel` VALUES ('8', '1', '1', '陈小渣?', '11', '易简年会', '4', '2018-11-30 19:15:51');
INSERT INTO `user_activity_rel` VALUES ('9', '3', '2', '-bedlamite_', '13', '易简读书会', '4', '2018-11-30 20:00:46');
INSERT INTO `user_activity_rel` VALUES ('10', '3', '2', '-bedlamite_', '9', '决赛', '1', '2018-12-03 09:49:52');
INSERT INTO `user_activity_rel` VALUES ('11', '3', '2', '-bedlamite_', '6', '阿德', '1', '2018-12-03 10:24:00');
INSERT INTO `user_activity_rel` VALUES ('12', '1', '1', '陈小渣?', '14', '厦门学校舞蹈表演', '3', '2018-12-03 16:00:26');
INSERT INTO `user_activity_rel` VALUES ('13', '1', '1', '陈小渣?', '15', '易简读书进500强庆祝会', '4', '2018-12-05 14:04:07');
INSERT INTO `user_activity_rel` VALUES ('14', '6', '3', 'vincent', '15', '易简读书进500强庆祝会', '1', '2018-12-06 10:53:53');
INSERT INTO `user_activity_rel` VALUES ('15', '7', '4', '黎明清', '9', '决赛', '1', '2018-12-06 11:04:43');
INSERT INTO `user_activity_rel` VALUES ('16', '7', '4', '黎明清', '17', '米度', '2', '2018-12-06 13:49:56');
INSERT INTO `user_activity_rel` VALUES ('17', '8', '5', '黎明-米度广告', '17', '米度', '3', '2018-12-06 13:52:43');
INSERT INTO `user_activity_rel` VALUES ('18', '11', '6', '初点广告.芷夏', '15', '易简读书进500强庆祝会', '1', '2018-12-18 10:29:35');
INSERT INTO `user_activity_rel` VALUES ('19', '6', '3', 'vincent', '16', '此时此刻', '3', '2018-12-18 11:46:49');
INSERT INTO `user_activity_rel` VALUES ('20', '6', '3', 'vincent', '10', '决赛', '1', '2018-12-18 12:15:30');
INSERT INTO `user_activity_rel` VALUES ('21', '6', '3', 'vincent', '17', '模特吉他手', '3', '2018-12-18 12:56:37');
INSERT INTO `user_activity_rel` VALUES ('22', '11', '6', '初点广告.芷夏', '17', '模特吉他手', '4', '2018-12-18 12:56:38');
INSERT INTO `user_activity_rel` VALUES ('23', '6', '3', 'vincent', '18', '舞蹈花开盛世', '1', '2019-03-08 16:16:41');

-- ----------------------------
-- Table structure for user_formid
-- ----------------------------
DROP TABLE IF EXISTS `user_formid`;
CREATE TABLE `user_formid` (
  `id` int(11) NOT NULL COMMENT '主键ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `form_id` varchar(64) NOT NULL COMMENT 'formId',
  `time` datetime NOT NULL COMMENT '获取时间',
  `open_id` varchar(64) NOT NULL COMMENT '用户唯一标识',
  `union_id` varchar(64) NOT NULL COMMENT '用户平台唯一标识',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户formId记录';

-- ----------------------------
-- Records of user_formid
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
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
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'wx2e8ecb29fac93105', 'oPlWH5N9QnUoltzAaTksmxODjzvE', '', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKlWWPohjMpI9cUBMONa4LuzHcdrp8od1WnMLRUibiaiaPqpvcOrsJUvJtNPhAHmDxV2l8PrQydEmOAg/132', '陈小渣?', '1', '2018-11-20 17:17:49', null);
INSERT INTO `user_info` VALUES ('3', 'wx2e8ecb29fac93105', 'oPlWH5EZ8Lpzy6SJIOafeQ-npInM', '', 'https://wx.qlogo.cn/mmopen/vi_32/1af0zjQSqCEHYA1iciadKVSr6F7Kv0jhkDtvjsMwKODu6B8AdFBiaqxkuGDkhSuVpNXoyWEbnib9NaYgI71qInuHeA/132', '-bedlamite_', '1', '2018-11-20 18:11:14', null);
INSERT INTO `user_info` VALUES ('4', 'wx2e8ecb29fac93105', 'oPlWH5NNQK343PHHQf84_16YTtPc', '', 'https://wx.qlogo.cn/mmopen/vi_32/eyOjq0P0IibLHfhibRV8CrRXFC0GM2CibC6AYzcXnktc2SyNHuB2dvzplgvxZhcrsS8bmyXLI88nlRPxDBYg6nxGQ/132', '小精灵', '2', '2018-11-20 18:28:46', null);
INSERT INTO `user_info` VALUES ('5', 'wx2e8ecb29fac93105', 'oPlWH5AzylM-7heJcQiaR2MoBos0', '', 'https://wx.qlogo.cn/mmopen/vi_32/JTxKRzYa8m0lG3jA3BQ8HlXm7rpweNdOTPtnicPFMibCwjm8AGOiaiaoSh8umouRPWmGSjCib0Rbc3u7VW9qRgYQeug/132', 'vincent', '1', '2018-11-22 11:04:06', null);
INSERT INTO `user_info` VALUES ('6', 'wxa5a1cce830046e02', 'oAONN5QQFU_hyuaK2T1Ult7Uyw9c', '', 'https://wx.qlogo.cn/mmopen/vi_32/xxbUPeglgNmwyxBrBhYQgvJVT70bw4v8v1Rwa4nxYPsL0iagFMqGZz8v5aqz0SgJF5m6sVtGBY9YDNsPeCuDqCg/132', 'vincent', '1', '2018-12-06 10:33:17', null);
INSERT INTO `user_info` VALUES ('7', 'wxa5a1cce830046e02', 'oAONN5YcoaKRyx5g3oXhMAsCFzy4', '', 'https://wx.qlogo.cn/mmopen/vi_32/Nz86M1iaDPkVM3HRnMdWDMM6uRUJZvH5UvACDsfO4SaXEw0wiajg5JGqnoSnstmmia75mvV7mCtTLLoaicFiczYAE2Q/132', '黎明清', '1', '2018-12-06 10:53:07', null);
INSERT INTO `user_info` VALUES ('8', 'wxa5a1cce830046e02', 'oAONN5W_HAUP8r_2zGxlyMWDw7tU', '', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKkhNjHTojF2KZXrHMLR0IFs5w9Y0XiaxhgGsh11zfWAiaxyQDxUiaHgkLWtLzYytoIQjHWudgZlwxWA/132', '黎明-米度广告', '1', '2018-12-06 13:50:16', null);
INSERT INTO `user_info` VALUES ('9', 'wxa5a1cce830046e02', 'oAONN5Y2w2kaKF8dlyJ2sltGZX2g', '', 'https://wx.qlogo.cn/mmhead/Q3auHgzwzM5e7zoGwzbStibbUYEyvzA1M5Aa9K2tdcribjaxV7B8C5GQ/0/132', '张横', '0', '2018-12-10 11:24:25', null);
INSERT INTO `user_info` VALUES ('10', 'wxa5a1cce830046e02', 'oAONN5Y7z7s0kcgGVmEMT62xjTY4', '', 'https://wx.qlogo.cn/mmopen/vi_32/icLAWkJCK7qhmb0MDSNvssNV0Hm7j4Yw8pgIx6oNicicpal0ic1kn0CjNCuFQAjIC7CaCNeHsiah7FrdZb6TsBGzOPA/132', 'Singularity', '1', '2018-12-11 09:50:20', null);
INSERT INTO `user_info` VALUES ('11', 'wxa5a1cce830046e02', 'oAONN5VGWG76XkB2ZoysTbcQj-js', '', 'https://wx.qlogo.cn/mmopen/vi_32/cY6h7Hp8VNztfMzWoqM7fniaiaHkRic366hJ92wE4HcodyPEMgpAFRGbQNH3VFaeXUe4yHydTh9xywqXoAzk0fS6A/132', '初点广告.芷夏', '2', '2018-12-17 19:10:17', null);
INSERT INTO `user_info` VALUES ('12', 'wxa5a1cce830046e02', 'oAONN5f-nRx_HzRi4TYxp92PbQZc', '', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLxa6As8blDABlcKa1CKPGuukqRTVgEsCmjbNZbyFO4xUph613PE6VUPaibtmYkKMmibglsJ0ZRt9Zg/132', '零成本营销策划～姜开慧', '2', '2018-12-18 18:32:03', null);
INSERT INTO `user_info` VALUES ('13', 'wxa5a1cce830046e02', 'oAONN5f6odnbA8m8w7acr_crfVE0', '', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqjOgvHWRzTgJcZSpMHJIO0xgpPxLd4S4okPqWUNCNaYk677nwNRibicoeL31X2u1STicPRpWLiaxLG3w/132', 'A辉广州物料搭建与出租13713293866', '1', '2018-12-19 01:49:37', null);
INSERT INTO `user_info` VALUES ('14', 'wxa5a1cce830046e02', 'oAONN5f2Hwj7EbX9NGgtF7Q8sk5E', '', 'https://wx.qlogo.cn/mmhead/ibN3VFtnkSDiasNuWlCf1WNzTSF5HNgzfPolEbBTyFKBU/132', '姜盈秀', '0', '2018-12-19 13:56:43', null);
INSERT INTO `user_info` VALUES ('15', 'wxa5a1cce830046e02', 'oAONN5TNDRT5K6FvTy2WQKAZeZ3U', '', 'https://wx.qlogo.cn/mmhead/abC06YVEI6clJkqJXOLRVib2ASXZOKxMFzlSn1clo3J8/132', '王子齐', '0', '2018-12-19 14:31:48', null);
INSERT INTO `user_info` VALUES ('16', 'wxa5a1cce830046e02', 'oAONN5Ro_BJmqR7ZXT8YzBV_I3bI', '', 'https://wx.qlogo.cn/mmhead/O5Iric47vxnbuzhYicLy4c09zqpsUfqoxGCqKLNJGo2rQ/132', '高承翰', '0', '2018-12-19 17:33:38', null);
INSERT INTO `user_info` VALUES ('17', 'wxa5a1cce830046e02', 'oAONN5ULR3WJYmYEpIGmQqSIBwKY', '', 'https://wx.qlogo.cn/mmhead/DAStBzzFoWlhSu73NrXx6rlzeqp4riacLTQQBwsic56p0/132', '吴佩芝', '0', '2018-12-20 19:47:23', null);
INSERT INTO `user_info` VALUES ('18', 'wxa5a1cce830046e02', 'oAONN5RNNnQwHFlL4OCrPT66j-xU', '', 'https://wx.qlogo.cn/mmhead/539HRfwmGg9H4wqmUnxwvBIhDXJ9ic4r0PPuKY3pgru4/132', '陈雅云', '0', '2018-12-21 22:00:07', null);
INSERT INTO `user_info` VALUES ('19', 'wxa5a1cce830046e02', 'oAONN5SSVN6Ve_pLWmnMMqDjaSXU', '', 'https://wx.qlogo.cn/mmhead/0qicblDsWeooTI3k2OndNuLwFvVWCFYzWXKhx1C8qzck/132', '涂昀琬', '0', '2018-12-21 23:48:55', null);
INSERT INTO `user_info` VALUES ('20', 'wxa5a1cce830046e02', 'oAONN5Y4-uT9pYvOZ-iWBhT-GbRU', '', 'https://wx.qlogo.cn/mmhead/7Z0CVz9Tfibmvtd03Cib5USiaPSxtY6rbxjtict7S8MhZHw/132', '陈蓉育', '0', '2018-12-23 14:13:42', null);
INSERT INTO `user_info` VALUES ('21', 'wxa5a1cce830046e02', 'oAONN5QyQd6naMpJvu48IVT-7pFU', '', 'https://wx.qlogo.cn/mmopen/vi_32/0njTiaunZxtYcDHOVN1Sr8Agy2Na1fvIaydh7w8aOfM6VvxFJFlRqXDuY2ONdmm66vKGju7WbSXMnI1BZUXdkxg/132', '我叫想肥先生。??', '1', '2019-03-07 17:08:54', null);

-- ----------------------------
-- Table structure for user_mocard
-- ----------------------------
DROP TABLE IF EXISTS `user_mocard`;
CREATE TABLE `user_mocard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `resume_id` int(11) DEFAULT '0' COMMENT '简历ID',
  `url` varchar(255) DEFAULT NULL COMMENT '对应url',
  `state` int(2) DEFAULT '1' COMMENT '0:删除,1:待用,2:已用',
  `addtime` char(15) DEFAULT NULL COMMENT 'yyyyMMddHHmmss',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `resume_id` (`resume_id`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_mocard
-- ----------------------------
INSERT INTO `user_mocard` VALUES ('19', '1', '0', 'u1/m-c706ade78d544e259a821ca6db68e5fe.jpg', '0', '20181126095221');
INSERT INTO `user_mocard` VALUES ('14', '1', '1', 'u1/m-4f2d97c3d5ba4fb8b78f6987d9780d87.jpg', '0', '20181120173454');
INSERT INTO `user_mocard` VALUES ('13', '1', '1', 'u1/m-0d31c8344ed840acb360849a9a4a4328.jpg', '0', '20181120173446');
INSERT INTO `user_mocard` VALUES ('15', '3', '2', 'u3/m-76e05a84a6514429b26947b310b29728.jpg', '0', '20181120185758');
INSERT INTO `user_mocard` VALUES ('12', '1', '1', 'u1/m-4497d1b0a24d499c9657b442bd7b0d78.jpg', '0', '20181120173422');
INSERT INTO `user_mocard` VALUES ('10', '1', '0', 'u1/m-c3f3a0e2751c40d48a0541e02fd18160.jpg', '0', '20181120173202');
INSERT INTO `user_mocard` VALUES ('11', '1', '1', 'u1/m-ec525ca3da20480695978080e3359c42.jpg', '0', '20181120173422');
INSERT INTO `user_mocard` VALUES ('9', '1', '0', 'u1/m-b84c0bff53b5429f9a1588933b738899.jpg', '0', '20181120173156');
INSERT INTO `user_mocard` VALUES ('16', '1', '0', 'u1/m-edb2a31e95a047169a2883d189d459e6.jpg', '1', '20181125160820');
INSERT INTO `user_mocard` VALUES ('17', '1', '1', 'u1/m-bd02736627df4849a800254584c7cb1c.png', '0', '20181126094744');
INSERT INTO `user_mocard` VALUES ('18', '1', '1', 'u1/m-03b5d9166f994cfdba25dcdcb3f2e560.jpg', '0', '20181126095149');
INSERT INTO `user_mocard` VALUES ('20', '1', '1', 'u1/m-6782c0025dfe4709ae21ea46edaa4504.jpg', '0', '20181129154958');
INSERT INTO `user_mocard` VALUES ('21', '3', '2', 'u3/m-bc3425b95a004af69a0df5487dd7c992.jpg', '2', '20181130181440');
INSERT INTO `user_mocard` VALUES ('22', '1', '1', 'u1/m-f124d3106ff44d29a7ccf6c3fc4e035d.jpg', '2', '20181205102647');
INSERT INTO `user_mocard` VALUES ('23', '6', '3', 'u6/m-d891e269efa24e79b95211efb7d8ea3c.png', '0', '20181206113313');
INSERT INTO `user_mocard` VALUES ('24', '6', '3', 'u6/m-9acdb58aa13540a981ac336912c89489.jpg', '2', '20181206113415');
INSERT INTO `user_mocard` VALUES ('25', '7', '4', 'u7/m-43dc0c81bdc542eab4af23710638d8cf.jpg', '2', '20181206113641');
INSERT INTO `user_mocard` VALUES ('26', '11', '6', 'u11/m-5e1b1e2826334b399438ea2a7829d870.jpg', '2', '20181218094330');
INSERT INTO `user_mocard` VALUES ('27', '7', '0', 'u7/m-9827f063aeb64ec7b464f1d631d2f03f.jpg', '0', '20181218123018');
INSERT INTO `user_mocard` VALUES ('28', '7', '0', 'u7/m-6b09f57b76af437092205c40403362ac.jpg', '1', '20181218123045');
INSERT INTO `user_mocard` VALUES ('29', '7', '0', 'u7/m-bdb45bcd153e46048d572eaf81afaf0d.jpg', '1', '20181218123234');
INSERT INTO `user_mocard` VALUES ('30', '7', '0', 'u7/m-ca607a7cdeed4b97995279d0e4670d7f.jpg', '1', '20181218123239');

-- ----------------------------
-- Table structure for user_production
-- ----------------------------
DROP TABLE IF EXISTS `user_production`;
CREATE TABLE `user_production` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `resume_id` int(11) DEFAULT '0' COMMENT '简历ID',
  `url` varchar(256) NOT NULL COMMENT '作品',
  `state` int(2) DEFAULT '0' COMMENT '0:删除,1:待用,2:已用',
  `addtime` char(15) DEFAULT NULL COMMENT 'yyyyMMddHHmmss',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `resume_id` (`resume_id`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户作品';

-- ----------------------------
-- Records of user_production
-- ----------------------------
INSERT INTO `user_production` VALUES ('1', '1', '1', 'u1/p-3aa472d0e70243099966b0a6d99cd4d7.mp4', '0', '20181120171849');
INSERT INTO `user_production` VALUES ('2', '1', '1', 'u1/p-30814b7ca3ff438daeb167491274cf4c.mp4', '0', '20181120173608');
INSERT INTO `user_production` VALUES ('3', '1', '1', 'u1/p-5057ac3a09184f1880dba0e41aa433d8.mp4', '0', '20181120173626');
INSERT INTO `user_production` VALUES ('7', '1', '1', 'u1/p-3da0dc761ed744e5bff369855bce5c5d.mp4', '2', '20181129155030');
INSERT INTO `user_production` VALUES ('4', '1', '1', 'u1/p-ccdec7efe1464ee09d4d3d7e08214281.mp4', '0', '20181120174238');
INSERT INTO `user_production` VALUES ('5', '1', '1', 'u1/p-ae098ec3de7c4c3a8d9b0066438d2f38.mp4', '0', '20181120174251');
INSERT INTO `user_production` VALUES ('6', '1', '1', 'u1/p-d3f5f570237a4d7cb6cc02d043f8bb34.mp4', '0', '20181122181820');
INSERT INTO `user_production` VALUES ('8', '3', '2', 'u3/p-bd6866e7ff164efd89cf654b46b3db13.mp4', '2', '20181130181448');
INSERT INTO `user_production` VALUES ('9', '6', '3', 'u6/p-e3b153487fc042eab0c9176a0f264dcb.mp4', '2', '20181206113439');
INSERT INTO `user_production` VALUES ('10', '7', '4', 'u7/p-d9b0a942965c4f22bd2ff5f5bbf6041f.mp4', '2', '20181206113747');

-- ----------------------------
-- Table structure for user_resume
-- ----------------------------
DROP TABLE IF EXISTS `user_resume`;
CREATE TABLE `user_resume` (
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
-- Records of user_resume
-- ----------------------------
INSERT INTO `user_resume` VALUES ('1', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKlWWPohjMpI9cUBMONa4LuzHcdrp8od1WnMLRUibiaiaPqpvcOrsJUvJtNPhAHmDxV2l8PrQydEmOAg/132', '陈小渣?', '1', '', '', '1997-11-16', '170.00', '50.00', '50.00', '50.00', '50.00', '1', '', '广东省', '广州市', '天河区', '2018-11-20 17:18:52');
INSERT INTO `user_resume` VALUES ('2', '3', 'https://wx.qlogo.cn/mmopen/vi_32/1af0zjQSqCEHYA1iciadKVSr6F7Kv0jhkDtvjsMwKODu6B8AdFBiaqxkuGDkhSuVpNXoyWEbnib9NaYgI71qInuHeA/132', '-bedlamite_', '1', '', '', '2018-11-30', '172.00', '50.00', '50.00', '50.00', '50.00', '1', '', '北京市', '北京市', '东城区', '2018-11-20 18:52:18');
INSERT INTO `user_resume` VALUES ('3', '6', 'https://wx.qlogo.cn/mmopen/vi_32/xxbUPeglgNmwyxBrBhYQgvJVT70bw4v8v1Rwa4nxYPsL0iagFMqGZz8v5aqz0SgJF5m6sVtGBY9YDNsPeCuDqCg/132', 'vincent', '1', '', '', '2018-12-06', '173.00', '77.00', '83.00', '54.00', '63.00', '4', '', '内蒙古自治区', '呼和浩特市', '新城区', '2018-12-06 10:53:44');
INSERT INTO `user_resume` VALUES ('4', '7', 'https://wx.qlogo.cn/mmopen/vi_32/Nz86M1iaDPkVM3HRnMdWDMM6uRUJZvH5UvACDsfO4SaXEw0wiajg5JGqnoSnstmmia75mvV7mCtTLLoaicFiczYAE2Q/132', '黎明清', '1', '', '', '2018-12-06', '170.00', '51.00', '50.00', '50.00', '50.00', '1', '', '北京市', '北京市', '东城区', '2018-12-06 11:02:44');
INSERT INTO `user_resume` VALUES ('5', '8', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKkhNjHTojF2KZXrHMLR0IFs5w9Y0XiaxhgGsh11zfWAiaxyQDxUiaHgkLWtLzYytoIQjHWudgZlwxWA/132', '黎明-米度广告', '1', '', '', '2018-12-06', '150.00', '36.00', '50.00', '50.00', '50.00', '5', '', '广东省', '广州市', '天河区', '2018-12-06 13:52:39');
INSERT INTO `user_resume` VALUES ('6', '11', 'https://wx.qlogo.cn/mmopen/vi_32/cY6h7Hp8VNztfMzWoqM7fniaiaHkRic366hJ92wE4HcodyPEMgpAFRGbQNH3VFaeXUe4yHydTh9xywqXoAzk0fS6A/132', '初点广告.芷夏', '2', '', '', '1993-12-18', '168.00', '52.00', '50.00', '50.00', '50.00', '3', '', '广东省', '广州市', '越秀区', '2018-12-18 09:43:41');
