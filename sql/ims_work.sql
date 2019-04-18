/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : we7

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-18 14:00:45
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='舞种';

-- ----------------------------
-- Records of ims_work
-- ----------------------------
INSERT INTO `ims_work` VALUES ('1', '0', '兼职', '100', '1', '1', null, '2018-11-12 16:47:16', null);
INSERT INTO `ims_work` VALUES ('2', '1', '派单', '3', '1', '1', '1', '2018-11-12 16:47:27', '2018-11-16 10:24:49');
INSERT INTO `ims_work` VALUES ('3', '1', '车展小蜜蜂', '2', '1', '1', '1', '2018-11-12 16:47:34', '2018-11-16 10:24:44');
INSERT INTO `ims_work` VALUES ('4', '1', '人偶', '0', '1', '1', '1', '2018-11-12 16:47:39', '2018-11-12 16:51:06');
INSERT INTO `ims_work` VALUES ('5', '1', '导购', '50', '1', '1', '1', '2018-11-12 16:48:16', '2018-11-12 16:48:21');
INSERT INTO `ims_work` VALUES ('6', '1', '安保', '49', '1', '1', '1', '2018-11-12 16:48:34', '2018-11-12 16:48:44');
INSERT INTO `ims_work` VALUES ('7', '1', '促销', '48', '1', '1', '1', '2018-11-12 16:49:18', '2018-11-20 18:37:00');
INSERT INTO `ims_work` VALUES ('8', '0', '其他', '47', '1', '1', '1', '2018-11-12 16:49:32', '2018-12-06 14:37:02');
INSERT INTO `ims_work` VALUES ('9', '1', '车美', '46', '1', '1', null, '2018-11-12 16:50:12', null);
INSERT INTO `ims_work` VALUES ('10', '1', '群演', '45', '1', '1', '1', '2018-11-12 16:50:26', '2018-11-21 09:54:32');
INSERT INTO `ims_work` VALUES ('11', '0', '礼仪', '44', '1', '1', '1', '2018-11-12 16:50:40', '2018-11-21 09:58:38');
INSERT INTO `ims_work` VALUES ('14', '11', '会议', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('15', '11', '开业', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('16', '11', '年会', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('17', '11', '路演', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('18', '11', '地推', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('19', '11', '音乐节', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('20', '11', '暖场', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('21', '11', '酒会', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('22', '0', '模特', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('23', '22', '展示', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('24', '22', '走秀', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('25', '22', '平面', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('26', '22', '影视', '0', '0', '0', null, '0000-00-00 00:00:00', null);
INSERT INTO `ims_work` VALUES ('27', '22', '试衣', '0', '0', '0', null, '0000-00-00 00:00:00', null);
